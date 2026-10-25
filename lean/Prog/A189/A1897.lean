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
# A189700: Number of 7Xn binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189700, there is no canonical definition to state claims against.
-/

/-! ## A189700.P9651881321746398603

`A189696(A056119(n)+28)`
-/

namespace A189700.P9651881321746398603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056119 n + 28).toNat

end

end A189700.P9651881321746398603

/-! ## A189700.P14959796409208965749

`A189696(eq[11, A066657(n)])`
-/

namespace A189700.P14959796409208965749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189700.P14959796409208965749

/-! ## A189700.P5569653322907704216

`A189696(A056000(n+2)+17)`
-/

namespace A189700.P5569653322907704216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A056000 (n + 2) + 17).toNat

end

end A189700.P5569653322907704216

/-! ## A189700.P10105504309736370984

`A189696(eq[8, A131818(n+1)])`
-/

namespace A189700.P10105504309736370984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189700.P10105504309736370984

/-! ## A189700.P18146436452586403457

`A189696(A167499(n+4)+n+8)`
-/

namespace A189700.P18146436452586403457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167499 (n + 4) + (n + 8 : ℤ)).toNat

end

end A189700.P18146436452586403457

/-!
# A189701: Number of 8Xn binary arrays without the pattern 0 0 1 diagonally, vertically or antidiagonally.

The programs for A189701, there is no canonical definition to state claims against.
-/

/-! ## A189701.P4283929542055739090

`A189696(eq[13, A066657(n)])`
-/

namespace A189701.P4283929542055739090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189701.P4283929542055739090

/-! ## A189701.P4580255751498676004

`A189696(A000096(n+6)+9)`
-/

namespace A189701.P4580255751498676004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A000096 (n + 6) + 9).toNat

end

end A189701.P4580255751498676004

/-! ## A189701.P9080654565153119554

`A189696(A161680(n+8)+8)`
-/

namespace A189701.P9080654565153119554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A161680 (n + 8) + 8).toNat

end

end A189701.P9080654565153119554

/-! ## A189701.P7993432337275681945

`A189696(A055999(n+4)+14)`
-/

namespace A189701.P7993432337275681945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A055999 (n + 4) + 14).toNat

end

end A189701.P7993432337275681945

/-! ## A189701.P15148232303378009366

`A189696(eq[9, A131818(n+1)])`
-/

namespace A189701.P15148232303378009366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189701.P15148232303378009366

/-!
# A189702: Fixed point of the morphism 0->011, 1->10.

The programs for A189702, there is no canonical definition to state claims against.
-/

/-! ## A189702.P5273005291367600237

`char[A189704(n+1)-1]`
-/

namespace A189702.P5273005291367600237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189704 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189702.P5273005291367600237

/-! ## A189702.P2543216817660011174

`1-char[A189703(n+1)-1]`
-/

namespace A189702.P2543216817660011174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189702.P2543216817660011174

/-! ## A189702.P6576014259319247876

`floor(A189703(n+1)/A003151(n+1))`
-/

namespace A189702.P6576014259319247876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189703 (n + 1) : ℚ) / (A003151 (n + 1) : ℚ)⌋

end

end A189702.P6576014259319247876

/-! ## A189702.P16244880215190233569

`A189705(n+1)-A189705(A028310(n))`
-/

namespace A189702.P16244880215190233569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189705 (n + 1) - A189705 (A028310 n).toNat

end

end A189702.P16244880215190233569

/-! ## A189702.P9303361214625192963

`A116980(Δ[A189703(n+1)])`
-/

namespace A189702.P9303361214625192963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116980 (f1 (n + 1) - f1 n).toNat

end

end A189702.P9303361214625192963

/-! ## A189702.P1354149540536948305

`A285345(Δ[A189703(n+1)])`
-/

namespace A189702.P1354149540536948305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (f1 (n + 1) - f1 n).toNat

end

end A189702.P1354149540536948305

/-! ## A189702.P6470476741402277390

`2-A108087(Δ[A189703(n+1)])`
-/

namespace A189702.P6470476741402277390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108087 (f1 (n + 1) - f1 n).toNat

end

end A189702.P6470476741402277390

/-! ## A189702.P3747726633741992773

`A038722(Δ[A189703(n+1)])%2`
-/

namespace A189702.P3747726633741992773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (f1 (n + 1) - f1 n).toNat) 2

end

end A189702.P3747726633741992773

/-! ## A189702.P14063111341817804825

`A189706(A189703(n+1)-2*A189705(n+1))`
-/

namespace A189702.P14063111341817804825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189703 (n + 1) - 2 * A189705 (n + 1)).toNat

end

end A189702.P14063111341817804825

/-! ## A189702.P1029106146759675529

`A189706(A189703(n+1)-A189705(n+1)-A189705(n+1))`
-/

namespace A189702.P1029106146759675529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189703 (n + 1) - A189705 (n + 1) - A189705 (n + 1)).toNat

end

end A189702.P1029106146759675529

/-! ## A189702.P16813171985802273107

`Δ[A189705(A008619(A004273(n)))]`
-/

namespace A189702.P16813171985802273107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189705 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189702.P16813171985802273107

/-! ## A189702.P13734990354520451110

`A189706(A189705(n+1)+A189703(n+1))`
-/

namespace A189702.P13734990354520451110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189705 (n + 1) + A189703 (n + 1)).toNat

end

end A189702.P13734990354520451110

/-! ## A189702.P18118627049882172783

`Δ[A189705(A003056(A000124(n)))]`
-/

namespace A189702.P18118627049882172783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189705 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189702.P18118627049882172783

/-!
# A189703: Positions of 0 in A189702; complement of A189704.

The programs for A189703, there is no canonical definition to state claims against.
-/

/-! ## A189703.P5483276920793124827

`eq[0, A189702(n+1)]+1`
-/

namespace A189703.P5483276920793124827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189703.P5483276920793124827

/-! ## A189703.P14649283326708522957

`lt[n*char[A189704(n+1)], n]`
-/

namespace A189703.P14649283326708522957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189704 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189703.P14649283326708522957

/-! ## A189703.P3690909359414229632

`eq[0, A189702(A000038(n)+n)]`
-/

namespace A189703.P3690909359414229632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189703.P3690909359414229632

/-! ## A189703.P14882660253411743565

`eq[0, A189702(or(n, A000038(n)))]`
-/

namespace A189703.P14882660253411743565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189703.P14882660253411743565

/-! ## A189703.P4363804148534412076

`lt[n*A189702(A028310(n)), n]`
-/

namespace A189703.P4363804148534412076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189702 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189703.P4363804148534412076

/-! ## A189703.P3506136054117126203

`lt[char[A189704(n+1)], A057427(n)]`
-/

namespace A189703.P3506136054117126203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189704 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189703.P3506136054117126203

/-! ## A189703.P2344168749636701563

`record[(1-A189702(n+1))*A000027(n+1)]`
-/

namespace A189703.P2344168749636701563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189702 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P2344168749636701563

/-! ## A189703.P8949015303276502198

`record[n+1-A004956(n*A189702(n+1))]`
-/

namespace A189703.P8949015303276502198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004956 ((n : ℤ) * A189702 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P8949015303276502198

/-! ## A189703.P7787987103580345849

`record[n+1-A052330(n)*A189702(n+1)]`
-/

namespace A189703.P7787987103580345849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052330 n * A189702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P7787987103580345849

/-! ## A189703.P5102863854347965893

`record[n+1-A040976(n*A189702(n+1)+1)]`
-/

namespace A189703.P5102863854347965893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A040976 ((n : ℤ) * A189702 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P5102863854347965893

/-! ## A189703.P7134129251021560201

`lt[A189702(A028310(n)), A057427(n)]`
-/

namespace A189703.P7134129251021560201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189703.P7134129251021560201

/-! ## A189703.P8266889053616445806

`A189704(A289037(n+1))-A289037(n+1)`
-/

namespace A189703.P8266889053616445806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189704 (A289037 (n + 1)).toNat - A289037 (n + 1)

end

end A189703.P8266889053616445806

/-! ## A189703.P10679821450103265166

`record[A008619(2*n)-n*A189702(n+1)]`
-/

namespace A189703.P10679821450103265166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) * A189702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P10679821450103265166

/-! ## A189703.P12050990476399798867

`record[A000463(A005408(n))-n*A189702(n+1)]`
-/

namespace A189703.P12050990476399798867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A005408 n).toNat - (n : ℤ) * A189702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P12050990476399798867

/-! ## A189703.P1569930482471407222

`record[A004525(A103517(n))-n*A189702(n+1)]`
-/

namespace A189703.P1569930482471407222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A103517 n).toNat - (n : ℤ) * A189702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189703.P1569930482471407222

/-!
# A189704: Positions of 1 in A189702; complement of A189703.

The programs for A189704, there is no canonical definition to state claims against.
-/

/-! ## A189704.P8395173152865586401

`comp[A189703(n+1)-1]+1`
-/

namespace A189704.P8395173152865586401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189704.P8395173152865586401

/-! ## A189704.P9522892614726067446

`filter[n+1, A189702(#)]`
-/

namespace A189704.P9522892614726067446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189702 (f1 j) = 1) n)

end

end A189704.P9522892614726067446

/-! ## A189704.P7215848691294112057

`eq[1, A189702(n+1)]+1`
-/

namespace A189704.P7215848691294112057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189704.P7215848691294112057

/-! ## A189704.P10707311733667975380

`eq[1, Δ[A189705(n+1)]]+2`
-/

namespace A189704.P10707311733667975380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A189704.P10707311733667975380

/-! ## A189704.P942791164572722930

`record[2*A189702(n+2)+n]`
-/

namespace A189704.P942791164572722930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189702 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189704.P942791164572722930

/-! ## A189704.P14888835307614331658

`lt[0, A189702(A028310(n))]`
-/

namespace A189704.P14888835307614331658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189704.P14888835307614331658

/-! ## A189704.P5691851137800695899

`lt[char[A189703(n+1)], A057427(n)]`
-/

namespace A189704.P5691851137800695899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189704.P5691851137800695899

/-! ## A189704.P7148534532323691397

`eq[1, A189702(A065033(2*n))]`
-/

namespace A189704.P7148534532323691397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189704.P7148534532323691397

/-!
# A189705: Partial sums of A189702.

The programs for A189705, there is no canonical definition to state claims against.
-/

/-! ## A189705.P13641741176605834955

`∑[A189702(n+1)]`
-/

namespace A189705.P13641741176605834955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189705.P13641741176605834955

/-! ## A189705.P10240383767462621087

`∑[char[A189704(n+1)-1]]`
-/

namespace A189705.P10240383767462621087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189704 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189705.P10240383767462621087

/-! ## A189705.P11400511491406814438

`∑[1-char[A189703(n+1)-1]]`
-/

namespace A189705.P11400511491406814438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189705.P11400511491406814438

/-! ## A189705.P17534063626117403672

`A189702(n*A189702(n+1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A189705.P17534063626117403672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189702 ((n : ℤ) * A189702 (n + 1) + 1).toNat + a (n - 1)

end

end A189705.P17534063626117403672

/-! ## A189705.P18344156947238579999

`∑[A116980(Δ[A189703(n+1)])]`
-/

namespace A189705.P18344156947238579999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116980 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189705.P18344156947238579999

/-! ## A189705.P17199944061924222382

`∑[A285345(Δ[A189703(n+1)])]`
-/

namespace A189705.P17199944061924222382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189703 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189705.P17199944061924222382

/-!
# A189706: Fixed point of the morphism 0->011, 1->001.

The programs for A189706, the canonical program `A189706.P18258736543789234630` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189706 has offset 1).

The definition of A189706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189706.P953627921483201248

`∑[A321091(n)]%2`
-/

namespace A189706.P953627921483201248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A189706.P953627921483201248

namespace A189706

/-- `∑[A321091(n)]%2` -/
def P953627921483201248.Spec : Prop :=
  ∀ n, P953627921483201248.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P5267770084802725411

`and(1, Δ[A060373(n)])`
-/

namespace A189706.P5267770084802725411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A189706.P5267770084802725411

namespace A189706

/-- `and(1, Δ[A060373(n)])` -/
def P5267770084802725411.Spec : Prop :=
  ∀ n, P5267770084802725411.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P6110965152914502806

`and(1, Δ[A134022(n)])`
-/

namespace A189706.P6110965152914502806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A189706.P6110965152914502806

namespace A189706

/-- `and(1, Δ[A134022(n)])` -/
def P6110965152914502806.Spec : Prop :=
  ∀ n, P6110965152914502806.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P10665877082780087323

`log2(gcd(2, Δ[A060372(n)]))`
-/

namespace A189706.P10665877082780087323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (f1 (n + 1) - f1 n) : ℝ)

end

end A189706.P10665877082780087323

namespace A189706

/-- `log2(gcd(2, Δ[A060372(n)]))` -/
def P10665877082780087323.Spec : Prop :=
  ∀ n, P10665877082780087323.a n = (A189706 (n + 1) : ℝ)

end A189706

/-! ## A189706.P376411307206239556

`∑[1-A321090(n)]+1`
-/

namespace A189706.P376411307206239556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A321090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189706.P376411307206239556

namespace A189706

/-- `∑[1-A321090(n)]+1` -/
def P376411307206239556.Spec : Prop :=
  ∀ n, P376411307206239556.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P8098903340987985145

`char[A189708(n+1)-1]`
-/

namespace A189706.P8098903340987985145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189706.P8098903340987985145

namespace A189706

/-- `char[A189708(n+1)-1]` -/
def P8098903340987985145.Spec : Prop :=
  ∀ n, (P8098903340987985145.a n : ℤ) = A189706 (n + 1)

end A189706

/-! ## A189706.P4445115435167311879

`1-char[A189707(n+1)-1]`
-/

namespace A189706.P4445115435167311879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189706.P4445115435167311879

namespace A189706

/-- `1-char[A189707(n+1)-1]` -/
def P4445115435167311879.Spec : Prop :=
  ∀ n, P4445115435167311879.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P551707760880301075

`A321095(n)%A010882(n)`
-/

namespace A189706.P551707760880301075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321095 n) (A010882 n)

end

end A189706.P551707760880301075

namespace A189706

/-- `A321095(n)%A010882(n)` -/
def P551707760880301075.Spec : Prop :=
  ∀ n, P551707760880301075.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P1574667624841036416

`A321093(n)%A130784(n)`
-/

namespace A189706.P1574667624841036416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321093 n) (A130784 n)

end

end A189706.P1574667624841036416

namespace A189706

/-- `A321093(n)%A130784(n)` -/
def P1574667624841036416.Spec : Prop :=
  ∀ n, P1574667624841036416.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P806787001143361522

`A321097(n)%A130815(n)`
-/

namespace A189706.P806787001143361522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321097 n) (A130815 n)

end

end A189706.P806787001143361522

namespace A189706

/-- `A321097(n)%A130815(n)` -/
def P806787001143361522.Spec : Prop :=
  ∀ n, P806787001143361522.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P18258736543789234630

`xor(A116178(n), A356982(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189706

/-- `xor(A116178(n), A356982(n+1))` -/
def P18258736543789234630.Spec : Prop :=
  ∀ n, P18258736543789234630.a n = A189706 (n + 1)

theorem P18258736543789234630.correct : P18258736543789234630.Spec := by
  intro n
  simp only [A189706, Nat.add_sub_cancel]

end A189706

/-! ## A189706.P15723535913020299646

`and(1, A004488(2*n+1)+A004488(2*n))`
-/

namespace A189706.P15723535913020299646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 (2 * n + 1) + A004488 (2 * n))

end

end A189706.P15723535913020299646

namespace A189706

/-- `and(1, A004488(2*n+1)+A004488(2*n))` -/
def P15723535913020299646.Spec : Prop :=
  ∀ n, P15723535913020299646.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P10943409508455099456

`A156595(A004488(n))`
-/

namespace A189706.P10943409508455099456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A004488 n).toNat

end

end A189706.P10943409508455099456

namespace A189706

/-- `A156595(A004488(n))` -/
def P10943409508455099456.Spec : Prop :=
  ∀ n, P10943409508455099456.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P9208520075201772514

`A156595(A004519(n))`
-/

namespace A189706.P9208520075201772514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A004519 n).toNat

end

end A189706.P9208520075201772514

namespace A189706

/-- `A156595(A004519(n))` -/
def P9208520075201772514.Spec : Prop :=
  ∀ n, P9208520075201772514.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P18125377704439469556

`Δ[A010060(A343229(n))]²`
-/

namespace A189706.P18125377704439469556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A343229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A189706.P18125377704439469556

namespace A189706

/-- `Δ[A010060(A343229(n))]²` -/
def P18125377704439469556.Spec : Prop :=
  ∀ n, P18125377704439469556.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P5297680729609839297

`A078979(A098486(n+1))`
-/

namespace A189706.P5297680729609839297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (A098486 (n + 1)).toNat

end

end A189706.P5297680729609839297

namespace A189706

/-- `A078979(A098486(n+1))` -/
def P5297680729609839297.Spec : Prop :=
  ∀ n, P5297680729609839297.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P8842512902560215811

`A156595(2*n)`
-/

namespace A189706.P8842512902560215811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (2 * n)

end

end A189706.P8842512902560215811

namespace A189706

/-- `A156595(2*n)` -/
def P8842512902560215811.Spec : Prop :=
  ∀ n, P8842512902560215811.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P2115940934265466837

`abs(floor(acot(A113421(2*n+1))))`
-/

namespace A189706.P2115940934265466837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (A113421 (2 * n + 1) : ℝ)⌋|

end

end A189706.P2115940934265466837

namespace A189706

/-- `abs(floor(acot(A113421(2*n+1))))` -/
def P2115940934265466837.Spec : Prop :=
  ∀ n, P2115940934265466837.a n = A189706 (n + 1)

end A189706

/-! ## A189706.P8374137304123460599

`floor(1/A260301(2*n+1))²`
-/

namespace A189706.P8374137304123460599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A260301 (2 * n + 1) : ℚ)⌋ ^ 2

end

end A189706.P8374137304123460599

namespace A189706

/-- `floor(1/A260301(2*n+1))²` -/
def P8374137304123460599.Spec : Prop :=
  ∀ n, P8374137304123460599.a n = A189706 (n + 1)

end A189706

/-!
# A189707: Positions of 0 in A189706; complement of A189708.

The programs for A189707, the canonical program `A189707.P8858125208000123597` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189707 has offset 1).

The definition of A189707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189707.P8858125208000123597

`comp[A189708(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A189707

/-- `comp[A189708(n+1)-1]+1` -/
def P8858125208000123597.Spec : Prop :=
  ∀ n, (P8858125208000123597.a n : ℤ) = A189707 (n + 1)

theorem P8858125208000123597.correct : P8858125208000123597.Spec := by
  intro n
  simp only [A189707, Nat.add_sub_cancel]

end A189707

/-! ## A189707.P2145703089923948386

`record[A321090(a(n-2))+n-1]` with `a(0)=1, a(1)=0`
-/

namespace A189707.P2145703089923948386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A321090 (f1 (n - 2)).toNat + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P2145703089923948386

namespace A189707

/-- `record[A321090(a(n-2))+n-1]` -/
def P2145703089923948386.Spec : Prop :=
  ∀ n, P2145703089923948386.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P16338776637612424370

`comp[A189708(round((n+1)/(xor(n, n+1)+1)))%(12*n+1)]`
-/

namespace A189707.P16338776637612424370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189708 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat) (12 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189707.P16338776637612424370

namespace A189707

/-- `comp[A189708(round((n+1)/(xor(n, n+1)+1)))%(12*n+1)]` -/
def P16338776637612424370.Spec : Prop :=
  ∀ n, (P16338776637612424370.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P11659084365272311657

`record[A321090(A064429(n+1))+n]`
-/

namespace A189707.P11659084365272311657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A064429 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P11659084365272311657

namespace A189707

/-- `record[A321090(A064429(n+1))+n]` -/
def P11659084365272311657.Spec : Prop :=
  ∀ n, P11659084365272311657.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P6286011196984643256

`record[A064429(n)-(1-A321090(n))]`
-/

namespace A189707.P6286011196984643256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n - (1 - A321090 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P6286011196984643256

namespace A189707

/-- `record[A064429(n)-(1-A321090(n))]` -/
def P6286011196984643256.Spec : Prop :=
  ∀ n, P6286011196984643256.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P1938870608875144800

`lt[1, A260301(2*n+1)]+1`
-/

namespace A189707.P1938870608875144800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189707.P1938870608875144800

namespace A189707

/-- `lt[1, A260301(2*n+1)]+1` -/
def P1938870608875144800.Spec : Prop :=
  ∀ n, (P1938870608875144800.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P424966829055855281

`record[A001057(A189715(n+1))]`
-/

namespace A189707.P424966829055855281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P424966829055855281

namespace A189707

/-- `record[A001057(A189715(n+1))]` -/
def P424966829055855281.Spec : Prop :=
  ∀ n, P424966829055855281.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P16562212942699604772

`record[A110514(A278996(n+1))]`
-/

namespace A189707.P16562212942699604772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A278996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P16562212942699604772

namespace A189707

/-- `record[A110514(A278996(n+1))]` -/
def P16562212942699604772.Spec : Prop :=
  ∀ n, P16562212942699604772.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P14603063149454917920

`lt[1, A260301(A004277(n)-1)]`
-/

namespace A189707.P14603063149454917920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (A004277 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189707.P14603063149454917920

namespace A189707

/-- `lt[1, A260301(A004277(n)-1)]` -/
def P14603063149454917920.Spec : Prop :=
  ∀ n, (P14603063149454917920.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P3100222107115365427

`eq[A064990(2*n+1), A064990(2*n)]+1`
-/

namespace A189707.P3100222107115365427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189707.P3100222107115365427

namespace A189707

/-- `eq[A064990(2*n+1), A064990(2*n)]+1` -/
def P3100222107115365427.Spec : Prop :=
  ∀ n, (P3100222107115365427.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P2933324354550875568

`eq[A051064(2*n+1), A087088(2*n+1)]+1`
-/

namespace A189707.P2933324354550875568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189707.P2933324354550875568

namespace A189707

/-- `eq[A051064(2*n+1), A087088(2*n+1)]+1` -/
def P2933324354550875568.Spec : Prop :=
  ∀ n, (P2933324354550875568.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P4625462761096548993

`eq[A080846(2*n+1), A182581(2*n+1)]+1`
-/

namespace A189707.P4625462761096548993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189707.P4625462761096548993

namespace A189707

/-- `eq[A080846(2*n+1), A182581(2*n+1)]+1` -/
def P4625462761096548993.Spec : Prop :=
  ∀ n, (P4625462761096548993.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P7837571683229339233

`lt[A321090(n), A321090(2*(n+2))!]`
-/

namespace A189707.P7837571683229339233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A321090 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189707.P7837571683229339233

namespace A189707

/-- `lt[A321090(n), A321090(2*(n+2))!]` -/
def P7837571683229339233.Spec : Prop :=
  ∀ n, (P7837571683229339233.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P4979006805404359659

`eq[A007949(2*n+1), A072340(2*n+3)]+1`
-/

namespace A189707.P4979006805404359659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072340 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189707.P4979006805404359659

namespace A189707

/-- `eq[A007949(2*n+1), A072340(2*n+3)]+1` -/
def P4979006805404359659.Spec : Prop :=
  ∀ n, (P4979006805404359659.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P6265166421833597228

`record[lcm(1-A321090(n), A157128(n))]`
-/

namespace A189707.P6265166421833597228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A321090 n) (A157128 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P6265166421833597228

namespace A189707

/-- `record[lcm(1-A321090(n), A157128(n))]` -/
def P6265166421833597228.Spec : Prop :=
  ∀ n, (P6265166421833597228.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P14131314647140732565

`eq[A136693(2*n+1), A136693(2*n)]+1`
-/

namespace A189707.P14131314647140732565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136693 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136693 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189707.P14131314647140732565

namespace A189707

/-- `eq[A136693(2*n+1), A136693(2*n)]+1` -/
def P14131314647140732565.Spec : Prop :=
  ∀ n, (P14131314647140732565.a n : ℤ) = A189707 (n + 1)

end A189707

/-! ## A189707.P6347441851343531832

`record[A038502(A321104(n)+n)]`
-/

namespace A189707.P6347441851343531832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A321104 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P6347441851343531832

namespace A189707

/-- `record[A038502(A321104(n)+n)]` -/
def P6347441851343531832.Spec : Prop :=
  ∀ n, P6347441851343531832.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P6537983879207010879

`record[A321102(n+1)+n]`
-/

namespace A189707.P6537983879207010879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P6537983879207010879

namespace A189707

/-- `record[A321102(n+1)+n]` -/
def P6537983879207010879.Spec : Prop :=
  ∀ n, P6537983879207010879.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P7923069357267153833

`record[1-A321101(n)+n]`
-/

namespace A189707.P7923069357267153833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A321101 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189707.P7923069357267153833

namespace A189707

/-- `record[1-A321101(n)+n]` -/
def P7923069357267153833.Spec : Prop :=
  ∀ n, P7923069357267153833.a n = A189707 (n + 1)

end A189707

/-! ## A189707.P16760553173731945783

`eq[A189706(n+1), A321102(n)]`
-/

namespace A189707.P16760553173731945783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189707.P16760553173731945783

namespace A189707

/-- `eq[A189706(n+1), A321102(n)]` -/
def P16760553173731945783.Spec : Prop :=
  ∀ n, (P16760553173731945783.a n : ℤ) = A189707 (n + 1)

end A189707

/-!
# A189708: Positions of 1 in A189706; complement of A189707.

The programs for A189708, the canonical program `A189708.P1850673420903285968` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189708 has offset 1).

The definition of A189708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189708.P4923844175568855845

`comp[A189707(n+1)-1]+1`
-/

namespace A189708.P4923844175568855845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189708.P4923844175568855845

namespace A189708

/-- `comp[A189707(n+1)-1]+1` -/
def P4923844175568855845.Spec : Prop :=
  ∀ n, (P4923844175568855845.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P3353058968254551223

`comp[A189707(round((n+1)/(xor(n, n+1)+1)))%(12*n+1)]`
-/

namespace A189708.P3353058968254551223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat) (12 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189708.P3353058968254551223

namespace A189708

/-- `comp[A189707(round((n+1)/(xor(n, n+1)+1)))%(12*n+1)]` -/
def P3353058968254551223.Spec : Prop :=
  ∀ n, (P3353058968254551223.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P1850673420903285968

`filter[n+1, A189706(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189708

/-- `filter[n+1, A189706(#)]` -/
def P1850673420903285968.Spec : Prop :=
  ∀ n, (P1850673420903285968.a n : ℤ) = A189708 (n + 1)

theorem P1850673420903285968.correct : P1850673420903285968.Spec := by
  intro n
  simp only [A189708, Nat.add_sub_cancel]

end A189708

/-! ## A189708.P6453816652271277927

`eq[A164360(n), A321093(n)]`
-/

namespace A189708.P6453816652271277927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189708.P6453816652271277927

namespace A189708

/-- `eq[A164360(n), A321093(n)]` -/
def P6453816652271277927.Spec : Prop :=
  ∀ n, (P6453816652271277927.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P7559085431640709325

`lt[A120223(∑[A321090(n)]-n), 3]+1`
-/

namespace A189708.P7559085431640709325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120223 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A189708.P7559085431640709325

namespace A189708

/-- `lt[A120223(∑[A321090(n)]-n), 3]+1` -/
def P7559085431640709325.Spec : Prop :=
  ∀ n, (P7559085431640709325.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P18133210381136254322

`eq[A040001(A004523(n)), A321090(n)]`
-/

namespace A189708.P18133210381136254322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004523 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189708.P18133210381136254322

namespace A189708

/-- `eq[A040001(A004523(n)), A321090(n)]` -/
def P18133210381136254322.Spec : Prop :=
  ∀ n, (P18133210381136254322.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P10940637102640420377

`eq[A189718(2*n+1), A189718(2*n)]+1`
-/

namespace A189708.P10940637102640420377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189708.P10940637102640420377

namespace A189708

/-- `eq[A189718(2*n+1), A189718(2*n)]+1` -/
def P10940637102640420377.Spec : Prop :=
  ∀ n, (P10940637102640420377.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P3492412708123878340

`lt[A260301(abs(1-2*n)), 3]`
-/

namespace A189708.P3492412708123878340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 |1 - (2 * n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189708.P3492412708123878340

namespace A189708

/-- `lt[A260301(abs(1-2*n)), 3]` -/
def P3492412708123878340.Spec : Prop :=
  ∀ n, (P3492412708123878340.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P16112680603813457163

`lt[A260301(2*n+1), 1]+1`
-/

namespace A189708.P16112680603813457163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189708.P16112680603813457163

namespace A189708

/-- `lt[A260301(2*n+1), 1]+1` -/
def P16112680603813457163.Spec : Prop :=
  ∀ n, (P16112680603813457163.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P17322401742197237967

`record[A001057(A189716(n+2))]`
-/

namespace A189708.P17322401742197237967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189716 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189708.P17322401742197237967

namespace A189708

/-- `record[A001057(A189716(n+2))]` -/
def P17322401742197237967.Spec : Prop :=
  ∀ n, P17322401742197237967.a n = A189708 (n + 1)

end A189708

/-! ## A189708.P11610018962074594049

`record[A028242(A278997(n+2))]`
-/

namespace A189708.P11610018962074594049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A278997 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189708.P11610018962074594049

namespace A189708

/-- `record[A028242(A278997(n+2))]` -/
def P11610018962074594049.Spec : Prop :=
  ∀ n, P11610018962074594049.a n = A189708 (n + 1)

end A189708

/-! ## A189708.P1665755756023015430

`A000027(lt[A260301(n+1+n), 3]+1)`
-/

namespace A189708.P1665755756023015430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (n + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A189708.P1665755756023015430

namespace A189708

/-- `A000027(lt[A260301(n+1+n), 3]+1)` -/
def P1665755756023015430.Spec : Prop :=
  ∀ n, P1665755756023015430.a n = A189708 (n + 1)

end A189708

/-! ## A189708.P4216444126367032878

`eq[A137893(2*n+1), A182581(2*n+1)]+1`
-/

namespace A189708.P4216444126367032878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189708.P4216444126367032878

namespace A189708

/-- `eq[A137893(2*n+1), A182581(2*n+1)]+1` -/
def P4216444126367032878.Spec : Prop :=
  ∀ n, (P4216444126367032878.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P4511767968165976701

`record[lcm(A157128(n), A321090(n))]`
-/

namespace A189708.P4511767968165976701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157128 n) (A321090 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189708.P4511767968165976701

namespace A189708

/-- `record[lcm(A157128(n), A321090(n))]` -/
def P4511767968165976701.Spec : Prop :=
  ∀ n, (P4511767968165976701.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P17158518219783305772

`record[A321104(A330396(n))+n]`
-/

namespace A189708.P17158518219783305772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321104 (A330396 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189708.P17158518219783305772

namespace A189708

/-- `record[A321104(A330396(n))+n]` -/
def P17158518219783305772.Spec : Prop :=
  ∀ n, P17158518219783305772.a n = A189708 (n + 1)

end A189708

/-! ## A189708.P5901382721935530668

`record[A321103(n+1)+n]`
-/

namespace A189708.P5901382721935530668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321103 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189708.P5901382721935530668

namespace A189708

/-- `record[A321103(n+1)+n]` -/
def P5901382721935530668.Spec : Prop :=
  ∀ n, P5901382721935530668.a n = A189708 (n + 1)

end A189708

/-! ## A189708.P12829202771732179818

`lt[Δ[gcd(4, A321104(n))], 1]+1`
-/

namespace A189708.P12829202771732179818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A321104 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A189708.P12829202771732179818

namespace A189708

/-- `lt[Δ[gcd(4, A321104(n))], 1]+1` -/
def P12829202771732179818.Spec : Prop :=
  ∀ n, (P12829202771732179818.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P11400892798736025941

`eq[A101825(n), A321104(n)]`
-/

namespace A189708.P11400892798736025941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189708.P11400892798736025941

namespace A189708

/-- `eq[A101825(n), A321104(n)]` -/
def P11400892798736025941.Spec : Prop :=
  ∀ n, (P11400892798736025941.a n : ℤ) = A189708 (n + 1)

end A189708

/-! ## A189708.P12288688592995207135

`eq[A163804(n), A321100(n)]`
-/

namespace A189708.P12288688592995207135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189708.P12288688592995207135

namespace A189708

/-- `eq[A163804(n), A321100(n)]` -/
def P12288688592995207135.Spec : Prop :=
  ∀ n, (P12288688592995207135.a n : ℤ) = A189708 (n + 1)

end A189708

/-!
# A189709: Partial sums of A189706.

The programs for A189709, the canonical program `A189709.P16099882615266385270` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189709 has offset 1).

The definition of A189709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189709.P2445688688418407982

`floor((n+2)/3)-a(floor((n+2)/3)-1)+floor((n+1)/3)` with `a(0)=0`
-/

namespace A189709.P2445688688418407982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 2 : ℚ) / 3⌋ - a (⌊(n + 2 : ℚ) / 3⌋ - 1).toNat + ⌊(n + 1 : ℚ) / 3⌋

end

end A189709.P2445688688418407982

namespace A189709

/-- `floor((n+2)/3)-a(floor((n+2)/3)-1)+floor((n+1)/3)` -/
def P2445688688418407982.Spec : Prop :=
  ∀ n, P2445688688418407982.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P16099882615266385270

`∑[A189706(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189709

/-- `∑[A189706(n+1)]` -/
def P16099882615266385270.Spec : Prop :=
  ∀ n, P16099882615266385270.a n = A189709 (n + 1)

theorem P16099882615266385270.correct : P16099882615266385270.Spec := by
  intro n
  simp only [A189709, Nat.add_sub_cancel]

end A189709

/-! ## A189709.P12337106376225292745

`∑[∑[A321091(n)]%2]`
-/

namespace A189709.P12337106376225292745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P12337106376225292745

namespace A189709

/-- `∑[∑[A321091(n)]%2]` -/
def P12337106376225292745.Spec : Prop :=
  ∀ n, P12337106376225292745.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P12737083296672633995

`∑[and(1, Δ[A060373(n)])]`
-/

namespace A189709.P12737083296672633995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P12737083296672633995

namespace A189709

/-- `∑[and(1, Δ[A060373(n)])]` -/
def P12737083296672633995.Spec : Prop :=
  ∀ n, P12737083296672633995.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P16896788554199335328

`∑[and(1, Δ[A134022(n)])]`
-/

namespace A189709.P16896788554199335328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P16896788554199335328

namespace A189709

/-- `∑[and(1, Δ[A134022(n)])]` -/
def P16896788554199335328.Spec : Prop :=
  ∀ n, P16896788554199335328.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P12565900599291675561

`∑[char[A189708(n+1)-1]]`
-/

namespace A189709.P12565900599291675561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P12565900599291675561

namespace A189709

/-- `∑[char[A189708(n+1)-1]]` -/
def P12565900599291675561.Spec : Prop :=
  ∀ n, (P12565900599291675561.a n : ℤ) = A189709 (n + 1)

end A189709

/-! ## A189709.P2387313726586625632

`∑[1-char[A189707(n+1)-1]]`
-/

namespace A189709.P2387313726586625632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P2387313726586625632

namespace A189709

/-- `∑[1-char[A189707(n+1)-1]]` -/
def P2387313726586625632.Spec : Prop :=
  ∀ n, P2387313726586625632.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P12943858895552720985

`∑[(∑[A321090(n)+17]+1)%2]`
-/

namespace A189709.P12943858895552720985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + 17

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P12943858895552720985

namespace A189709

/-- `∑[(∑[A321090(n)+17]+1)%2]` -/
def P12943858895552720985.Spec : Prop :=
  ∀ n, P12943858895552720985.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P17516246187679840374

`∑[((∑[A321097(n)]%5)^n)^(n-1)]-1`
-/

namespace A189709.P17516246187679840374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321097 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 5 ^ n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189709.P17516246187679840374

namespace A189709

/-- `∑[((∑[A321097(n)]%5)^n)^(n-1)]-1` -/
def P17516246187679840374.Spec : Prop :=
  ∀ n, P17516246187679840374.a n = (A189709 (n + 1) : ℚ)

end A189709

/-! ## A189709.P766196338048159804

`∑[A156595(2*n)]`
-/

namespace A189709.P766196338048159804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P766196338048159804

namespace A189709

/-- `∑[A156595(2*n)]` -/
def P766196338048159804.Spec : Prop :=
  ∀ n, P766196338048159804.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P6547339143822868359

`A156595(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A189709.P6547339143822868359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A156595 (n + n) + a (n - 1)

end

end A189709.P6547339143822868359

namespace A189709

/-- `A156595(n+n)+a(n-1)` -/
def P6547339143822868359.Spec : Prop :=
  ∀ n, P6547339143822868359.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P7599094222976323335

`∑[abs(A064990(2*n+1)-A064990(2*n))]`
-/

namespace A189709.P7599094222976323335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064990 (2 * n + 1) - A064990 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P7599094222976323335

namespace A189709

/-- `∑[abs(A064990(2*n+1)-A064990(2*n))]` -/
def P7599094222976323335.Spec : Prop :=
  ∀ n, P7599094222976323335.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P11904676659703307520

`∑[A000035(∑[A321091(n)]-2)]`
-/

namespace A189709.P11904676659703307520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P11904676659703307520

namespace A189709

/-- `∑[A000035(∑[A321091(n)]-2)]` -/
def P11904676659703307520.Spec : Prop :=
  ∀ n, P11904676659703307520.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P11892724440657995299

`∑[A000035(∑[A321091(n)])]`
-/

namespace A189709.P11892724440657995299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P11892724440657995299

namespace A189709

/-- `∑[A000035(∑[A321091(n)])]` -/
def P11892724440657995299.Spec : Prop :=
  ∀ n, P11892724440657995299.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P13039492216728720535

`∑[A321090(3*n+1)]`
-/

namespace A189709.P13039492216728720535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P13039492216728720535

namespace A189709

/-- `∑[A321090(3*n+1)]` -/
def P13039492216728720535.Spec : Prop :=
  ∀ n, P13039492216728720535.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P3006932871012286483

`∑[A321091(3*n+1)-1]`
-/

namespace A189709.P3006932871012286483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (3 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P3006932871012286483

namespace A189709

/-- `∑[A321091(3*n+1)-1]` -/
def P3006932871012286483.Spec : Prop :=
  ∀ n, P3006932871012286483.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P4688144316107771662

`∑[char[A098046(2*n+1)]]`
-/

namespace A189709.P4688144316107771662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098046 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P4688144316107771662

namespace A189709

/-- `∑[char[A098046(2*n+1)]]` -/
def P4688144316107771662.Spec : Prop :=
  ∀ n, (P4688144316107771662.a n : ℤ) = A189709 (n + 1)

end A189709

/-! ## A189709.P5839227397320517063

`∑[A116178(A343231(3*n+2)+A343231(n))]`
-/

namespace A189709.P5839227397320517063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (A343231 (3 * n + 2) + A343231 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P5839227397320517063

namespace A189709

/-- `∑[A116178(A343231(3*n+2)+A343231(n))]` -/
def P5839227397320517063.Spec : Prop :=
  ∀ n, P5839227397320517063.a n = A189709 (n + 1)

end A189709

/-! ## A189709.P16200830926321955386

`∑[A000035(A004488(2*n+1)+A004488(2*n))]`
-/

namespace A189709.P16200830926321955386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 (2 * n + 1) + A004488 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189709.P16200830926321955386

namespace A189709

/-- `∑[A000035(A004488(2*n+1)+A004488(2*n))]` -/
def P16200830926321955386.Spec : Prop :=
  ∀ n, P16200830926321955386.a n = A189709 (n + 1)

end A189709

/-!
# A189710: Numbers m such that m'' = m'-1 where m' and m'' are respectively the first and the second arithmetic derivative of m (A003415).

The programs for A189710, there is no canonical definition to state claims against.
-/

/-! ## A189710.P18005230053038459632

`∪[A000040(n+1), A189803(n+1)]`
-/

namespace A189710.P18005230053038459632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189710.P18005230053038459632

/-! ## A189710.P2287159338062922787

`eq[1, A368921(n)]`
-/

namespace A189710.P2287159338062922787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189710.P2287159338062922787

/-! ## A189710.P4230026148150961354

`eq[A068346(n)+1, A003415(n)]`
-/

namespace A189710.P4230026148150961354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189710.P4230026148150961354

/-! ## A189710.P4484202412073601800

`eq[A003415(A003415(n)%(n+1))+1, A003415(n)]`
-/

namespace A189710.P4484202412073601800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.tmod (A003415 n) (n + 1 : ℤ)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189710.P4484202412073601800

/-! ## A189710.P11436778093537794559

`eq[-1, A168036(A003415(n))]`
-/

namespace A189710.P11436778093537794559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189710.P11436778093537794559

/-! ## A189710.P3448013563164576529

`eq[1, A168036(A168036(n)+n)+2]`
-/

namespace A189710.P3448013563164576529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A168036 n + (n : ℤ)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189710.P3448013563164576529

/-! ## A189710.P14351980061238306706

`eq[A003415(A003415(n))+1+n, A129283(n)]`
-/

namespace A189710.P14351980061238306706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189710.P14351980061238306706

/-! ## A189710.P2962654071582572867

`eq[A003415(A003415(n+1))+1, A003415(n+1)]+1`
-/

namespace A189710.P2962654071582572867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189710.P2962654071582572867

/-!
# A189712: Numbers m such that for each prime p that divides m, there is a k(p) such that k(p) == 1 (mod p), k(p) divides m evenly, and m divides k(p)!/2 evenly.

The programs for A189712, there is no canonical definition to state claims against.
-/

/-! ## A189712.P7930549466915526043

`filter[A325593(n+3), A103583(#)]`
-/

namespace A189712.P7930549466915526043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325593 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A189712.P7930549466915526043

/-! ## A189712.P15051334274702931922

`A325593(n+4)^A059024(n+5)`
-/

namespace A189712.P15051334274702931922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325593 (n + 4) : ℚ) ^ (A059024 (n + 5) : ℤ)

end

end A189712.P15051334274702931922

/-!
# A189713: Central terms of Zorach additive triangle (cf. A035312).

The programs for A189713, there is no canonical definition to state claims against.
-/

/-! ## A189713.P9445653728246882058

`A035312(∑[4*n])`
-/

namespace A189713.P9445653728246882058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189713.P9445653728246882058

/-! ## A189713.P12006786106240827903

`A035312(A046092(n))%(6*3^n)`
-/

namespace A189713.P12006786106240827903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035312 (A046092 n).toNat) (6 * 3 ^ n : ℤ)

end

end A189713.P12006786106240827903

/-! ## A189713.P14802723967140150471

`gcd(A000038(n), A035312(A046092(n)))`
-/

namespace A189713.P14802723967140150471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035312 (A046092 n).toNat)

end

end A189713.P14802723967140150471

/-! ## A189713.P6054464632477344940

`or(A000007(n), A035312(A046092(n)))`
-/

namespace A189713.P6054464632477344940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A035312 (A046092 n).toNat)

end

end A189713.P6054464632477344940

/-! ## A189713.P3397446280512498861

`A035312(A046092(n))+A000007(A028387(n))`
-/

namespace A189713.P3397446280512498861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A046092 n).toNat + A000007 (A028387 n).toNat

end

end A189713.P3397446280512498861

/-!
# A189714: Sums of rows of Zorach additive triangle (cf. A035312).

The programs for A189714, there is no canonical definition to state claims against.
-/

/-! ## A189714.P11789589655143222624

`A035313(n+1)-A035311(n+1)`
-/

namespace A189714.P11789589655143222624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035313 (n + 1) - A035311 (n + 1)

end

end A189714.P11789589655143222624

/-! ## A189714.P16719298889796192928

`record[Δ[A035312(A117142(n+1))]]`
-/

namespace A189714.P16719298889796192928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A117142 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189714.P16719298889796192928

/-! ## A189714.P7403292062436561797

`A035313(n+1)-A035312(∑[n+1])`
-/

namespace A189714.P7403292062436561797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035313 (n + 1) - A035312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189714.P7403292062436561797

/-! ## A189714.P5620949627045571992

`A035312(∑[n+2])-A035311(n+1)`
-/

namespace A189714.P5620949627045571992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (∑ j ∈ Finset.range (n + 1), f1 j) - A035311 (n + 1)

end

end A189714.P5620949627045571992

/-! ## A189714.P2505190530812112170

`A035312(A117142(2*(n+1)))-A035312(A117142(2*n+1))`
-/

namespace A189714.P2505190530812112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A117142 (2 * (n + 1))).toNat - A035312 (A117142 (2 * n + 1)).toNat

end

end A189714.P2505190530812112170

/-!
# A189715: Numbers k such that A156595(k-1) = 0; complement of A189716.

The programs for A189715, the canonical program `A189715.P10799637755699722149` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189715 has offset 1).

The definition of A189715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189715.P5044284701326533211

`A278996(n+1)+1`
-/

namespace A189715.P5044284701326533211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1) + 1

end

end A189715.P5044284701326533211

namespace A189715

/-- `A278996(n+1)+1` -/
def P5044284701326533211.Spec : Prop :=
  ∀ n, P5044284701326533211.a n = A189715 (n + 1)

theorem P5044284701326533211.correct : P5044284701326533211.Spec := by
  intro n
  simp only [A189715, Nat.add_sub_cancel, A189715.P5044284701326533211.a, A189715.P10799637755699722149.f1, A189715.P10799637755699722149.a, A189718, A189718.P15203452740860815567.a, A278996, A278996.P4006759836835331074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189715

/-! ## A189715.P9822824845179432701

`∪[A055040(n+1), A055047(n+1)]`
-/

namespace A189715.P9822824845179432701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189715.P9822824845179432701

namespace A189715

/-- `∪[A055040(n+1), A055047(n+1)]` -/
def P9822824845179432701.Spec : Prop :=
  ∀ n, (P9822824845179432701.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P10799637755699722149

`record[(n+1)*xor(A189718(n+1), A189718(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189715

/-- `record[(n+1)*xor(A189718(n+1), A189718(n))]` -/
def P10799637755699722149.Spec : Prop :=
  ∀ n, P10799637755699722149.a n = A189715 (n + 1)

theorem P10799637755699722149.correct : P10799637755699722149.Spec := by
  intro n
  simp only [A189715, Nat.add_sub_cancel]

end A189715

/-! ## A189715.P1809440098854334631

`eq[0, A156595(n)]+1`
-/

namespace A189715.P1809440098854334631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189715.P1809440098854334631

namespace A189715

/-- `eq[0, A156595(n)]+1` -/
def P1809440098854334631.Spec : Prop :=
  ∀ n, (P1809440098854334631.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P18313342091687164323

`A061800(A278996(n+1))`
-/

namespace A189715.P18313342091687164323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A278996 (n + 1)).toNat

end

end A189715.P18313342091687164323

namespace A189715

/-- `A061800(A278996(n+1))` -/
def P18313342091687164323.Spec : Prop :=
  ∀ n, P18313342091687164323.a n = A189715 (n + 1)

end A189715

/-! ## A189715.P16065714614211880805

`eq[A051064(n+1), A087088(n+1)]+1`
-/

namespace A189715.P16065714614211880805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189715.P16065714614211880805

namespace A189715

/-- `eq[A051064(n+1), A087088(n+1)]+1` -/
def P16065714614211880805.Spec : Prop :=
  ∀ n, (P16065714614211880805.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P14218105553259818591

`eq[A080846(n+1), A182581(n+1)]+1`
-/

namespace A189715.P14218105553259818591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189715.P14218105553259818591

namespace A189715

/-- `eq[A080846(n+1), A182581(n+1)]+1` -/
def P14218105553259818591.Spec : Prop :=
  ∀ n, (P14218105553259818591.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P7779558569180647190

`eq[A007949(n+1), A074078(n+3)]+1`
-/

namespace A189715.P7779558569180647190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074078 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189715.P7779558569180647190

namespace A189715

/-- `eq[A007949(n+1), A074078(n+3)]+1` -/
def P7779558569180647190.Spec : Prop :=
  ∀ n, (P7779558569180647190.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P18403115170827615835

`eq[1-A137893(n+1), A182581(n+1)]+1`
-/

namespace A189715.P18403115170827615835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189715.P18403115170827615835

namespace A189715

/-- `eq[1-A137893(n+1), A182581(n+1)]+1` -/
def P18403115170827615835.Spec : Prop :=
  ∀ n, (P18403115170827615835.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P5534541722172454127

`lt[A087088(2*n+1), A087088(2*(n+1))]+1`
-/

namespace A189715.P5534541722172454127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189715.P5534541722172454127

namespace A189715

/-- `lt[A087088(2*n+1), A087088(2*(n+1))]+1` -/
def P5534541722172454127.Spec : Prop :=
  ∀ n, (P5534541722172454127.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P12846943751391780922

`A189717(A189717(a(n-1)+1)+n+1)+n+1` with `a(0)=1`
-/

namespace A189715.P12846943751391780922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189717 (A189717 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat + (n + 1 : ℤ)

end

end A189715.P12846943751391780922

namespace A189715

/-- `A189717(A189717(a(n-1)+1)+n+1)+n+1` -/
def P12846943751391780922.Spec : Prop :=
  ∀ n, P12846943751391780922.a n = A189715 (n + 1)

end A189715

/-! ## A189715.P17351611847799438074

`lt[n*char[A189716(n+1)], n]`
-/

namespace A189715.P17351611847799438074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189715.P17351611847799438074

namespace A189715

/-- `lt[n*char[A189716(n+1)], n]` -/
def P17351611847799438074.Spec : Prop :=
  ∀ n, (P17351611847799438074.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P9741808686684023539

`eq[A007949(n+1), A072340(n+3)]+1`
-/

namespace A189715.P9741808686684023539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072340 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189715.P9741808686684023539

namespace A189715

/-- `eq[A007949(n+1), A072340(n+3)]+1` -/
def P9741808686684023539.Spec : Prop :=
  ∀ n, (P9741808686684023539.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P15416247162830081428

`lt[1, A260301(2*n)]`
-/

namespace A189715.P15416247162830081428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189715.P15416247162830081428

namespace A189715

/-- `lt[1, A260301(2*n)]` -/
def P15416247162830081428.Spec : Prop :=
  ∀ n, (P15416247162830081428.a n : ℤ) = A189715 (n + 1)

end A189715

/-! ## A189715.P3571028892524548393

`record[A001057(A189716(n+1)-1)]`
-/

namespace A189715.P3571028892524548393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189716 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189715.P3571028892524548393

namespace A189715

/-- `record[A001057(A189716(n+1)-1)]` -/
def P3571028892524548393.Spec : Prop :=
  ∀ n, P3571028892524548393.a n = A189715 (n + 1)

end A189715

/-! ## A189715.P7764084441866947812

`record[A028242(A278997(n+1)-1)]`
-/

namespace A189715.P7764084441866947812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A278997 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189715.P7764084441866947812

namespace A189715

/-- `record[A028242(A278997(n+1)-1)]` -/
def P7764084441866947812.Spec : Prop :=
  ∀ n, P7764084441866947812.a n = A189715 (n + 1)

end A189715

/-! ## A189715.P11408964922978370144

`lt[0, A260301(A004277(n+1))]+1`
-/

namespace A189715.P11408964922978370144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (A004277 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189715.P11408964922978370144

namespace A189715

/-- `lt[0, A260301(A004277(n+1))]+1` -/
def P11408964922978370144.Spec : Prop :=
  ∀ n, (P11408964922978370144.a n : ℤ) = A189715 (n + 1)

end A189715

/-!
# A189716: Numbers k such that A156595(k-1) = 1; complement of A189715.

The programs for A189716, the canonical program `A189716.P8656559037271871482` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189716 has offset 1).

The definition of A189716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189716.P8069408172106629693

`A278997(n+1)+1`
-/

namespace A189716.P8069408172106629693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278997 (n + 1) + 1

end

end A189716.P8069408172106629693

namespace A189716

/-- `A278997(n+1)+1` -/
def P8069408172106629693.Spec : Prop :=
  ∀ n, P8069408172106629693.a n = A189716 (n + 1)

theorem P8069408172106629693.correct : P8069408172106629693.Spec := by
  intro n
  simp only [A189716, Nat.add_sub_cancel, A189716.P8069408172106629693.a, A189716.P8656559037271871482.f2, A189716.P8656559037271871482.f3, A189716.P8656559037271871482.f1, A189716.P8656559037271871482.a, A189715, A189715.P10799637755699722149.f1, A189715.P10799637755699722149.a, A278997, A278997.P18380770767987263801.a, A189718, A189718.P15203452740860815567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189716

/-! ## A189716.P3117446083558478724

`comp[A278996(n+1)]+1`
-/

namespace A189716.P3117446083558478724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189716.P3117446083558478724

namespace A189716

/-- `comp[A278996(n+1)]+1` -/
def P3117446083558478724.Spec : Prop :=
  ∀ n, (P3117446083558478724.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P8656559037271871482

`comp[∪[A189715(n+1), n²]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189716

/-- `comp[∪[A189715(n+1), n²]]` -/
def P8656559037271871482.Spec : Prop :=
  ∀ n, (P8656559037271871482.a n : ℤ) = A189716 (n + 1)

theorem P8656559037271871482.correct : P8656559037271871482.Spec := by
  intro n
  simp only [A189716, Nat.add_sub_cancel]

end A189716

/-! ## A189716.P1234733499383405590

`∪[A055041(n+1), A055048(n+1)]`
-/

namespace A189716.P1234733499383405590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189716.P1234733499383405590

namespace A189716

/-- `∪[A055041(n+1), A055048(n+1)]` -/
def P1234733499383405590.Spec : Prop :=
  ∀ n, (P1234733499383405590.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P695019112693220765

`eq[A189718(n+1), A189718(n)]+1`
-/

namespace A189716.P695019112693220765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189716.P695019112693220765

namespace A189716

/-- `eq[A189718(n+1), A189718(n)]+1` -/
def P695019112693220765.Spec : Prop :=
  ∀ n, (P695019112693220765.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P3433552138247243449

`A020725(A278997(n+1))`
-/

namespace A189716.P3433552138247243449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A278997 (n + 1)).toNat

end

end A189716.P3433552138247243449

namespace A189716

/-- `A020725(A278997(n+1))` -/
def P3433552138247243449.Spec : Prop :=
  ∀ n, P3433552138247243449.a n = A189716 (n + 1)

end A189716

/-! ## A189716.P14879151988903936896

`lt[0, A156595(n)]+1`
-/

namespace A189716.P14879151988903936896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189716.P14879151988903936896

namespace A189716

/-- `lt[0, A156595(n)]+1` -/
def P14879151988903936896.Spec : Prop :=
  ∀ n, (P14879151988903936896.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P10121849747149509829

`eq[A137893(n+1), A182581(n+1)]+1`
-/

namespace A189716.P10121849747149509829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189716.P10121849747149509829

namespace A189716

/-- `eq[A137893(n+1), A182581(n+1)]+1` -/
def P10121849747149509829.Spec : Prop :=
  ∀ n, (P10121849747149509829.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P9177996035315697740

`eq[1-A080846(n+1), A182581(n+1)]+1`
-/

namespace A189716.P9177996035315697740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189716.P9177996035315697740

namespace A189716

/-- `eq[1-A080846(n+1), A182581(n+1)]+1` -/
def P9177996035315697740.Spec : Prop :=
  ∀ n, (P9177996035315697740.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P5899944204753368009

`eq[A051064(n+1), A087088(2*(n+1))]+1`
-/

namespace A189716.P5899944204753368009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189716.P5899944204753368009

namespace A189716

/-- `eq[A051064(n+1), A087088(2*(n+1))]+1` -/
def P5899944204753368009.Spec : Prop :=
  ∀ n, (P5899944204753368009.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P8964210589233178980

`lt[A087088(2*(n+1)), A087088(2*n+1)]+1`
-/

namespace A189716.P8964210589233178980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189716.P8964210589233178980

namespace A189716

/-- `lt[A087088(2*(n+1)), A087088(2*n+1)]+1` -/
def P8964210589233178980.Spec : Prop :=
  ∀ n, (P8964210589233178980.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P14889756636776955682

`record[A001057(A189715(n+2)-1)]`
-/

namespace A189716.P14889756636776955682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189715 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189716.P14889756636776955682

namespace A189716

/-- `record[A001057(A189715(n+2)-1)]` -/
def P14889756636776955682.Spec : Prop :=
  ∀ n, P14889756636776955682.a n = A189716 (n + 1)

end A189716

/-! ## A189716.P17979570428856134473

`record[A110514(A278996(n+2)-1)]`
-/

namespace A189716.P17979570428856134473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A278996 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189716.P17979570428856134473

namespace A189716

/-- `record[A110514(A278996(n+2)-1)]` -/
def P17979570428856134473.Spec : Prop :=
  ∀ n, P17979570428856134473.a n = A189716 (n + 1)

end A189716

/-! ## A189716.P8313005677873350069

`eq[A080846(2*(n+1)), A182581(2*(n+1))]+1`
-/

namespace A189716.P8313005677873350069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189716.P8313005677873350069

namespace A189716

/-- `eq[A080846(2*(n+1)), A182581(2*(n+1))]+1` -/
def P8313005677873350069.Spec : Prop :=
  ∀ n, (P8313005677873350069.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P7126216024031354434

`lt[A163491(2*n+1), A163491(2*(n+1))]+1`
-/

namespace A189716.P7126216024031354434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189716.P7126216024031354434

namespace A189716

/-- `lt[A163491(2*n+1), A163491(2*(n+1))]+1` -/
def P7126216024031354434.Spec : Prop :=
  ∀ n, (P7126216024031354434.a n : ℤ) = A189716 (n + 1)

end A189716

/-! ## A189716.P6583431193768002128

`lt[A260301(2*n), 0]`
-/

namespace A189716.P6583431193768002128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189716.P6583431193768002128

namespace A189716

/-- `lt[A260301(2*n), 0]` -/
def P6583431193768002128.Spec : Prop :=
  ∀ n, (P6583431193768002128.a n : ℤ) = A189716 (n + 1)

end A189716

/-!
# A189717: Partial sums of A156595.

The programs for A189717, the canonical program `A189717.P3306920372483353035` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189717 has offset 1).

The definition of A189717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189717.P3306920372483353035

`floor((n+2)/3)+floor((n+1)/3)-a(floor((n+1)/3)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189717

/-- `floor((n+2)/3)+floor((n+1)/3)-a(floor((n+1)/3)-1)` -/
def P3306920372483353035.Spec : Prop :=
  ∀ n, P3306920372483353035.a n = A189717 (n + 1)

theorem P3306920372483353035.correct : P3306920372483353035.Spec := by
  intro n
  simp only [A189717, Nat.add_sub_cancel]

end A189717

/-! ## A189717.P172169761651832299

`∑[A156595(n)]`
-/

namespace A189717.P172169761651832299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P172169761651832299

namespace A189717

/-- `∑[A156595(n)]` -/
def P172169761651832299.Spec : Prop :=
  ∀ n, P172169761651832299.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P6146749202970815231

`∑[char[A278997(n+1)]]`
-/

namespace A189717.P6146749202970815231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278997 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P6146749202970815231

namespace A189717

/-- `∑[char[A278997(n+1)]]` -/
def P6146749202970815231.Spec : Prop :=
  ∀ n, (P6146749202970815231.a n : ℤ) = A189717 (n + 1)

end A189717

/-! ## A189717.P1361774957817983729

`∑[and(1, Δ[A081603(n)])]`
-/

namespace A189717.P1361774957817983729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P1361774957817983729

namespace A189717

/-- `∑[and(1, Δ[A081603(n)])]` -/
def P1361774957817983729.Spec : Prop :=
  ∀ n, P1361774957817983729.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P6346869162293100485

`∑[char[comp[A278996(n+1)]]]`
-/

namespace A189717.P6346869162293100485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P6346869162293100485

namespace A189717

/-- `∑[char[comp[A278996(n+1)]]]` -/
def P6346869162293100485.Spec : Prop :=
  ∀ n, (P6346869162293100485.a n : ℤ) = A189717 (n + 1)

end A189717

/-! ## A189717.P13726452169194076835

`∑[char[A189716(n+1)-1]]`
-/

namespace A189717.P13726452169194076835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P13726452169194076835

namespace A189717

/-- `∑[char[A189716(n+1)-1]]` -/
def P13726452169194076835.Spec : Prop :=
  ∀ n, (P13726452169194076835.a n : ℤ) = A189717 (n + 1)

end A189717

/-! ## A189717.P6787587668459773672

`∑[abs(1-Δ[A327252(n)])%2]`
-/

namespace A189717.P6787587668459773672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |1 - (f2 (n + 1) - f2 n)| 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P6787587668459773672

namespace A189717

/-- `∑[abs(1-Δ[A327252(n)])%2]` -/
def P6787587668459773672.Spec : Prop :=
  ∀ n, P6787587668459773672.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P9776607628031603894

`∑[abs(Δ[A064990(n)])]`
-/

namespace A189717.P9776607628031603894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P9776607628031603894

namespace A189717

/-- `∑[abs(Δ[A064990(n)])]` -/
def P9776607628031603894.Spec : Prop :=
  ∀ n, P9776607628031603894.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P17820204166754613097

`∑[A189706(A338246(n+1))]`
-/

namespace A189717.P17820204166754613097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A338246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P17820204166754613097

namespace A189717

/-- `∑[A189706(A338246(n+1))]` -/
def P17820204166754613097.Spec : Prop :=
  ∀ n, P17820204166754613097.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P10011977356937201032

`∑[A189706(A338243(n+1))]`
-/

namespace A189717.P10011977356937201032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A338243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P10011977356937201032

namespace A189717

/-- `∑[A189706(A338243(n+1))]` -/
def P10011977356937201032.Spec : Prop :=
  ∀ n, P10011977356937201032.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P3279734283304333155

`∑[Δ[A064990(3*n)]²]`
-/

namespace A189717.P3279734283304333155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P3279734283304333155

namespace A189717

/-- `∑[Δ[A064990(3*n)]²]` -/
def P3279734283304333155.Spec : Prop :=
  ∀ n, P3279734283304333155.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P7790675070225703483

`∑[A000035(A004488(n+1)+A004488(n))]`
-/

namespace A189717.P7790675070225703483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 (n + 1) + A004488 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P7790675070225703483

namespace A189717

/-- `∑[A000035(A004488(n+1)+A004488(n))]` -/
def P7790675070225703483.Spec : Prop :=
  ∀ n, P7790675070225703483.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P1982751625550611479

`∑[A321090(A297251(n+1))]`
-/

namespace A189717.P1982751625550611479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A297251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P1982751625550611479

namespace A189717

/-- `∑[A321090(A297251(n+1))]` -/
def P1982751625550611479.Spec : Prop :=
  ∀ n, P1982751625550611479.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P9882148080687215483

`∑[A298341(n+1)%2]`
-/

namespace A189717.P9882148080687215483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298341 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P9882148080687215483

namespace A189717

/-- `∑[A298341(n+1)%2]` -/
def P9882148080687215483.Spec : Prop :=
  ∀ n, P9882148080687215483.a n = A189717 (n + 1)

end A189717

/-! ## A189717.P11233591347695866121

`∑[A292077(A037456(n+1))]`
-/

namespace A189717.P11233591347695866121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (A037456 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189717.P11233591347695866121

namespace A189717

/-- `∑[A292077(A037456(n+1))]` -/
def P11233591347695866121.Spec : Prop :=
  ∀ n, P11233591347695866121.a n = A189717 (n + 1)

end A189717

/-!
# A189718: Fixed point of the morphism 0->011, 1->100.

The programs for A189718, the canonical program `A189718.P15203452740860815567` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189718 has offset 0).

The definition of A189718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189718.P15203452740860815567

`(a(floor(n/3))+n²%3)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189718

/-- `(a(floor(n/3))+n²%3)%2` -/
def P15203452740860815567.Spec : Prop :=
  ∀ n, (P15203452740860815567.a n : ℤ) = A189718 n

theorem P15203452740860815567.correct : P15203452740860815567.Spec := by
  intro n
  simp only [A189718]

end A189718

/-! ## A189718.P10020824974072417180

`A160384(n)%2`
-/

namespace A189718.P10020824974072417180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160384 n) 2

end

end A189718.P10020824974072417180

namespace A189718

/-- `A160384(n)%2` -/
def P10020824974072417180.Spec : Prop :=
  ∀ n, P10020824974072417180.a n = A189718 n

end A189718

/-! ## A189718.P9885980513120586933

`A319497(n)%2`
-/

namespace A189718.P9885980513120586933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319497 n) 2

end

end A189718.P9885980513120586933

namespace A189718

/-- `A319497(n)%2` -/
def P9885980513120586933.Spec : Prop :=
  ∀ n, P9885980513120586933.a n = A189718 n

end A189718

/-! ## A189718.P15047702048879361763

`and(1, A117966(n))`
-/

namespace A189718.P15047702048879361763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117966 n)

end

end A189718.P15047702048879361763

namespace A189718

/-- `and(1, A117966(n))` -/
def P15047702048879361763.Spec : Prop :=
  ∀ n, P15047702048879361763.a n = A189718 n

end A189718

/-! ## A189718.P14211569459551068746

`and(1, A327252(n))`
-/

namespace A189718.P14211569459551068746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327252 n)

end

end A189718.P14211569459551068746

namespace A189718

/-- `and(1, A327252(n))` -/
def P14211569459551068746.Spec : Prop :=
  ∀ n, P14211569459551068746.a n = A189718 n

end A189718

/-! ## A189718.P13739180118042094699

`and(1, A333773(n))`
-/

namespace A189718.P13739180118042094699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A333773 n)

end

end A189718.P13739180118042094699

namespace A189718

/-- `and(1, A333773(n))` -/
def P13739180118042094699.Spec : Prop :=
  ∀ n, P13739180118042094699.a n = A189718 n

end A189718

/-! ## A189718.P8157665311685230131

`and(1, A338241(n))`
-/

namespace A189718.P8157665311685230131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338241 n)

end

end A189718.P8157665311685230131

namespace A189718

/-- `and(1, A338241(n))` -/
def P8157665311685230131.Spec : Prop :=
  ∀ n, P8157665311685230131.a n = A189718 n

end A189718

/-! ## A189718.P17033173934885323756

`(A064990(n)+n)%2`
-/

namespace A189718.P17033173934885323756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064990 n + (n : ℤ)) 2

end

end A189718.P17033173934885323756

namespace A189718

/-- `(A064990(n)+n)%2` -/
def P17033173934885323756.Spec : Prop :=
  ∀ n, P17033173934885323756.a n = A189718 n

end A189718

/-! ## A189718.P17066331481665279672

`(A081603(n)+n)%2`
-/

namespace A189718.P17066331481665279672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 n + (n : ℤ)) 2

end

end A189718.P17066331481665279672

namespace A189718

/-- `(A081603(n)+n)%2` -/
def P17066331481665279672.Spec : Prop :=
  ∀ n, P17066331481665279672.a n = A189718 n

end A189718

/-! ## A189718.P12907256120547782067

`and(1, A004488(n)+n)`
-/

namespace A189718.P12907256120547782067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004488 n + (n : ℤ))

end

end A189718.P12907256120547782067

namespace A189718

/-- `and(1, A004488(n)+n)` -/
def P12907256120547782067.Spec : Prop :=
  ∀ n, P12907256120547782067.a n = A189718 n

end A189718

/-! ## A189718.P15557312372527525810

`and(1, A256184(n)+n)`
-/

namespace A189718.P15557312372527525810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256184 n + (n : ℤ))

end

end A189718.P15557312372527525810

namespace A189718

/-- `and(1, A256184(n)+n)` -/
def P15557312372527525810.Spec : Prop :=
  ∀ n, P15557312372527525810.a n = A189718 n

end A189718

/-! ## A189718.P1266894508951221170

`and(1, A274107(n)+n)`
-/

namespace A189718.P1266894508951221170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A274107 n + (n : ℤ))

end

end A189718.P1266894508951221170

namespace A189718

/-- `and(1, A274107(n)+n)` -/
def P1266894508951221170.Spec : Prop :=
  ∀ n, P1266894508951221170.a n = A189718 n

end A189718

/-! ## A189718.P4412002935510364266

`and(1, A300956(n)+n)`
-/

namespace A189718.P4412002935510364266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A300956 n + (n : ℤ))

end

end A189718.P4412002935510364266

namespace A189718

/-- `and(1, A300956(n)+n)` -/
def P4412002935510364266.Spec : Prop :=
  ∀ n, P4412002935510364266.a n = A189718 n

end A189718

/-! ## A189718.P17943893387526422647

`and(1, A061436(n+1)+n)`
-/

namespace A189718.P17943893387526422647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061436 (n + 1) + (n : ℤ))

end

end A189718.P17943893387526422647

namespace A189718

/-- `and(1, A061436(n+1)+n)` -/
def P17943893387526422647.Spec : Prop :=
  ∀ n, P17943893387526422647.a n = A189718 n

end A189718

/-! ## A189718.P8700951602373337356

`A066829(A006047(n))`
-/

namespace A189718.P8700951602373337356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A006047 n).toNat

end

end A189718.P8700951602373337356

namespace A189718

/-- `A066829(A006047(n))` -/
def P8700951602373337356.Spec : Prop :=
  ∀ n, P8700951602373337356.a n = A189718 n

end A189718

/-! ## A189718.P14722744245539446098

`A066829(A120879(n))`
-/

namespace A189718.P14722744245539446098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A120879 n).toNat

end

end A189718.P14722744245539446098

namespace A189718

/-- `A066829(A120879(n))` -/
def P14722744245539446098.Spec : Prop :=
  ∀ n, P14722744245539446098.a n = A189718 n

end A189718

/-! ## A189718.P12261645815363542980

`A010060(A289831(n))`
-/

namespace A189718.P12261645815363542980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A289831 n).toNat

end

end A189718.P12261645815363542980

namespace A189718

/-- `A010060(A289831(n))` -/
def P12261645815363542980.Spec : Prop :=
  ∀ n, P12261645815363542980.a n = A189718 n

end A189718

/-! ## A189718.P8197961516289307666

`A244992(A331279(n))`
-/

namespace A189718.P8197961516289307666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (A331279 n).toNat

end

end A189718.P8197961516289307666

namespace A189718

/-- `A244992(A331279(n))` -/
def P8197961516289307666.Spec : Prop :=
  ∀ n, P8197961516289307666.a n = A189718 n

end A189718

/-! ## A189718.P5716673460061668217

`A000035(n-A064990(n))`
-/

namespace A189718.P5716673460061668217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A064990 n).toNat

end

end A189718.P5716673460061668217

namespace A189718

/-- `A000035(n-A064990(n))` -/
def P5716673460061668217.Spec : Prop :=
  ∀ n, P5716673460061668217.a n = A189718 n

end A189718

/-!
# A189719: Positions of 0 in A189718; complement of A189720.

The programs for A189719, the canonical program `A189719.P15456910898771424589` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189719 has offset 1).

The definition of A189719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189719.P8038038815748085274

`eq[2, gcd(2, A117966(n))]+1`
-/

namespace A189719.P8038038815748085274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A117966 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P8038038815748085274

namespace A189719

/-- `eq[2, gcd(2, A117966(n))]+1` -/
def P8038038815748085274.Spec : Prop :=
  ∀ n, (P8038038815748085274.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P15456910898771424589

`eq[0, A189718(n)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189719

/-- `eq[0, A189718(n)]+1` -/
def P15456910898771424589.Spec : Prop :=
  ∀ n, (P15456910898771424589.a n : ℤ) = A189719 (n + 1)

theorem P15456910898771424589.correct : P15456910898771424589.Spec := by
  intro n
  simp only [A189719, Nat.add_sub_cancel]

end A189719

/-! ## A189719.P1571640944414518931

`eq[0, A189718(abs(1-n))]`
-/

namespace A189719.P1571640944414518931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189719.P1571640944414518931

namespace A189719

/-- `eq[0, A189718(abs(1-n))]` -/
def P1571640944414518931.Spec : Prop :=
  ∀ n, (P1571640944414518931.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P13620498752491705285

`eq[abs(A117942(n)), A117942(n)]+1`
-/

namespace A189719.P13620498752491705285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P13620498752491705285

namespace A189719

/-- `eq[abs(A117942(n)), A117942(n)]+1` -/
def P13620498752491705285.Spec : Prop :=
  ∀ n, (P13620498752491705285.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P1329864373270725854

`lt[A319497(n)%2, 1]+1`
-/

namespace A189719.P1329864373270725854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319497 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189719.P1329864373270725854

namespace A189719

/-- `lt[A319497(n)%2, 1]+1` -/
def P1329864373270725854.Spec : Prop :=
  ∀ n, (P1329864373270725854.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P12195138828383574964

`lt[4*A319497(abs(1-n))%2, 2]`
-/

namespace A189719.P12195138828383574964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A319497 |1 - (n : ℤ)|.toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189719.P12195138828383574964

namespace A189719

/-- `lt[4*A319497(abs(1-n))%2, 2]` -/
def P12195138828383574964.Spec : Prop :=
  ∀ n, (P12195138828383574964.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P17894505389346865799

`1-A001489(eq[0, A189718(n)])`
-/

namespace A189719.P17894505389346865799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189719.P17894505389346865799

namespace A189719

/-- `1-A001489(eq[0, A189718(n)])` -/
def P17894505389346865799.Spec : Prop :=
  ∀ n, P17894505389346865799.a n = A189719 (n + 1)

theorem P17894505389346865799.correct : P17894505389346865799.Spec := by
  intro n
  simp only [A189719, Nat.add_sub_cancel, A189719.P17894505389346865799.f1, A189719.P17894505389346865799.f2, A189719.P17894505389346865799.a, A189719.P15456910898771424589.f1, A189719.P15456910898771424589.f2, A189719.P15456910898771424589.a, A001489, A001489.P15233530513763566776.a, A189718, A189718.P15203452740860815567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189719

/-! ## A189719.P11499698305101447890

`eq[A117592(n), A117942(n)]+1`
-/

namespace A189719.P11499698305101447890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P11499698305101447890

namespace A189719

/-- `eq[A117592(n), A117942(n)]+1` -/
def P11499698305101447890.Spec : Prop :=
  ∀ n, (P11499698305101447890.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P17129329877975260508

`lt[A035464(A061436(n+1)+n+1), 1]+1`
-/

namespace A189719.P17129329877975260508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (A061436 (n + 1) + (n : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189719.P17129329877975260508

namespace A189719

/-- `lt[A035464(A061436(n+1)+n+1), 1]+1` -/
def P17129329877975260508.Spec : Prop :=
  ∀ n, (P17129329877975260508.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P12090433472769044224

`eq[1, A163538(A023717(n))]`
-/

namespace A189719.P12090433472769044224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189719.P12090433472769044224

namespace A189719

/-- `eq[1, A163538(A023717(n))]` -/
def P12090433472769044224.Spec : Prop :=
  ∀ n, (P12090433472769044224.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P12696499811630410798

`eq[A000007(n), A163539(A023717(n))]`
-/

namespace A189719.P12696499811630410798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189719.P12696499811630410798

namespace A189719

/-- `eq[A000007(n), A163539(A023717(n))]` -/
def P12696499811630410798.Spec : Prop :=
  ∀ n, (P12696499811630410798.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P16743966223783656937

`eq[A000038(n), A163539(A023717(n))]`
-/

namespace A189719.P16743966223783656937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189719.P16743966223783656937

namespace A189719

/-- `eq[A000038(n), A163539(A023717(n))]` -/
def P16743966223783656937.Spec : Prop :=
  ∀ n, (P16743966223783656937.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P4764745578638493756

`eq[A000034(n), A000034(A004488(n))]+1`
-/

namespace A189719.P4764745578638493756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P4764745578638493756

namespace A189719

/-- `eq[A000034(n), A000034(A004488(n))]+1` -/
def P4764745578638493756.Spec : Prop :=
  ∀ n, (P4764745578638493756.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P5597911834388207869

`eq[A000035(n), A000035(A004488(n))]+1`
-/

namespace A189719.P5597911834388207869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P5597911834388207869

namespace A189719

/-- `eq[A000035(n), A000035(A004488(n))]+1` -/
def P5597911834388207869.Spec : Prop :=
  ∀ n, (P5597911834388207869.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P5808661892559886754

`eq[A000035(n), A000035(A137305(n))]+1`
-/

namespace A189719.P5808661892559886754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189719.P5808661892559886754

namespace A189719

/-- `eq[A000035(n), A000035(A137305(n))]+1` -/
def P5808661892559886754.Spec : Prop :=
  ∀ n, (P5808661892559886754.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P4379140454095467928

`A008619(2*eq[0, A189718(n)])`
-/

namespace A189719.P4379140454095467928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189719.P4379140454095467928

namespace A189719

/-- `A008619(2*eq[0, A189718(n)])` -/
def P4379140454095467928.Spec : Prop :=
  ∀ n, P4379140454095467928.a n = A189719 (n + 1)

end A189719

/-! ## A189719.P10694388857265366602

`A008611(3*eq[0, A189718(n)])`
-/

namespace A189719.P10694388857265366602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189719.P10694388857265366602

namespace A189719

/-- `A008611(3*eq[0, A189718(n)])` -/
def P10694388857265366602.Spec : Prop :=
  ∀ n, P10694388857265366602.a n = A189719 (n + 1)

end A189719

/-! ## A189719.P8591919192958431669

`lt[A117942(lt[A117909(n), 2]), 1]`
-/

namespace A189719.P8591919192958431669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A189719.P8591919192958431669

namespace A189719

/-- `lt[A117942(lt[A117909(n), 2]), 1]` -/
def P8591919192958431669.Spec : Prop :=
  ∀ n, (P8591919192958431669.a n : ℤ) = A189719 (n + 1)

end A189719

/-! ## A189719.P8243999625673692010

`record[A157128(n)/A157128(A004488(n))]`
-/

namespace A189719.P8243999625673692010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157128 n : ℚ) / (A157128 (A004488 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189719.P8243999625673692010

namespace A189719

/-- `record[A157128(n)/A157128(A004488(n))]` -/
def P8243999625673692010.Spec : Prop :=
  ∀ n, P8243999625673692010.a n = (A189719 (n + 1) : ℚ)

end A189719

/-!
# A189720: Positions of 1 in A189718; complement of A189719.

The programs for A189720, the canonical program `A189720.P18273419159078696727` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189720 has offset 1).

The definition of A189720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189720.P2016823042556657500

`eq[1, gcd(2, A117966(n))]+1`
-/

namespace A189720.P2016823042556657500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A117966 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189720.P2016823042556657500

namespace A189720

/-- `eq[1, gcd(2, A117966(n))]+1` -/
def P2016823042556657500.Spec : Prop :=
  ∀ n, (P2016823042556657500.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P18273419159078696727

`lt[A117942(n), 0]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189720

/-- `lt[A117942(n), 0]+1` -/
def P18273419159078696727.Spec : Prop :=
  ∀ n, (P18273419159078696727.a n : ℤ) = A189720 (n + 1)

theorem P18273419159078696727.correct : P18273419159078696727.Spec := by
  intro n
  simp only [A189720, Nat.add_sub_cancel]

end A189720

/-! ## A189720.P3553970052122404154

`eq[1, A189718(n)]+1`
-/

namespace A189720.P3553970052122404154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189720.P3553970052122404154

namespace A189720

/-- `eq[1, A189718(n)]+1` -/
def P3553970052122404154.Spec : Prop :=
  ∀ n, (P3553970052122404154.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P16155880003406439912

`lt[0, A189718(n+1)]+2`
-/

namespace A189720.P16155880003406439912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A189720.P16155880003406439912

namespace A189720

/-- `lt[0, A189718(n+1)]+2` -/
def P16155880003406439912.Spec : Prop :=
  ∀ n, (P16155880003406439912.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P13070877365349174682

`eq[1, A319497(n)%2]+1`
-/

namespace A189720.P13070877365349174682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319497 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189720.P13070877365349174682

namespace A189720

/-- `eq[1, A319497(n)%2]+1` -/
def P13070877365349174682.Spec : Prop :=
  ∀ n, (P13070877365349174682.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P8724307297235265539

`eq[1, A010060(A289831(n))]+1`
-/

namespace A189720.P8724307297235265539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189720.P8724307297235265539

namespace A189720

/-- `eq[1, A010060(A289831(n))]+1` -/
def P8724307297235265539.Spec : Prop :=
  ∀ n, (P8724307297235265539.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P13518471145754021794

`1-A001489(eq[1, A189718(n)])`
-/

namespace A189720.P13518471145754021794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189720.P13518471145754021794

namespace A189720

/-- `1-A001489(eq[1, A189718(n)])` -/
def P13518471145754021794.Spec : Prop :=
  ∀ n, P13518471145754021794.a n = A189720 (n + 1)

end A189720

/-! ## A189720.P13261731008404430900

`eq[1, A163539(A023717(n))]`
-/

namespace A189720.P13261731008404430900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189720.P13261731008404430900

namespace A189720

/-- `eq[1, A163539(A023717(n))]` -/
def P13261731008404430900.Spec : Prop :=
  ∀ n, (P13261731008404430900.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P177831018415783869

`eq[A000007(n), A163538(A023717(n))]`
-/

namespace A189720.P177831018415783869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189720.P177831018415783869

namespace A189720

/-- `eq[A000007(n), A163538(A023717(n))]` -/
def P177831018415783869.Spec : Prop :=
  ∀ n, (P177831018415783869.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P9390903316528784567

`eq[A000038(n), A163538(A023717(n))]`
-/

namespace A189720.P9390903316528784567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189720.P9390903316528784567

namespace A189720

/-- `eq[A000038(n), A163538(A023717(n))]` -/
def P9390903316528784567.Spec : Prop :=
  ∀ n, (P9390903316528784567.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P1984332385914364924

`A008619(2*eq[1, A189718(n)])`
-/

namespace A189720.P1984332385914364924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189720.P1984332385914364924

namespace A189720

/-- `A008619(2*eq[1, A189718(n)])` -/
def P1984332385914364924.Spec : Prop :=
  ∀ n, P1984332385914364924.a n = A189720 (n + 1)

end A189720

/-! ## A189720.P14346362644978271220

`A008619(A005843(eq[1, A189718(n)]))`
-/

namespace A189720.P14346362644978271220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A189720.P14346362644978271220

namespace A189720

/-- `A008619(A005843(eq[1, A189718(n)]))` -/
def P14346362644978271220.Spec : Prop :=
  ∀ n, P14346362644978271220.a n = A189720 (n + 1)

end A189720

/-! ## A189720.P8430436907467065128

`A008611(3*eq[1, A189718(n)])`
-/

namespace A189720.P8430436907467065128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189720.P8430436907467065128

namespace A189720

/-- `A008611(3*eq[1, A189718(n)])` -/
def P8430436907467065128.Spec : Prop :=
  ∀ n, P8430436907467065128.a n = A189720 (n + 1)

end A189720

/-! ## A189720.P16217187766941618604

`lt[1, A117942(lt[A117909(n), 2])]`
-/

namespace A189720.P16217187766941618604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189720.P16217187766941618604

namespace A189720

/-- `lt[1, A117942(lt[A117909(n), 2])]` -/
def P16217187766941618604.Spec : Prop :=
  ∀ n, (P16217187766941618604.a n : ℤ) = A189720 (n + 1)

end A189720

/-! ## A189720.P2559369815015663519

`A008611(A008486(eq[1, A189718(n)]))`
-/

namespace A189720.P2559369815015663519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A189720.P2559369815015663519

namespace A189720

/-- `A008611(A008486(eq[1, A189718(n)]))` -/
def P2559369815015663519.Spec : Prop :=
  ∀ n, P2559369815015663519.a n = A189720 (n + 1)

end A189720

/-! ## A189720.P10441072686174522467

`eq[0, A189718(A122709(n))]`
-/

namespace A189720.P10441072686174522467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (A122709 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189720.P10441072686174522467

namespace A189720

/-- `eq[0, A189718(A122709(n))]` -/
def P10441072686174522467.Spec : Prop :=
  ∀ n, (P10441072686174522467.a n : ℤ) = A189720 (n + 1)

end A189720

/-!
# A189721: Partial sums of A189718.

The programs for A189721, the canonical program `A189721.P12776135164093552095` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189721 has offset 1).

The definition of A189721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189721.P12776135164093552095

`∑[A189718(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189721

/-- `∑[A189718(n)]` -/
def P12776135164093552095.Spec : Prop :=
  ∀ n, P12776135164093552095.a n = A189721 (n + 1)

theorem P12776135164093552095.correct : P12776135164093552095.Spec := by
  intro n
  simp only [A189721, Nat.add_sub_cancel]

end A189721

/-! ## A189721.P7607996889333393999

`∑[A319497(n)%2]`
-/

namespace A189721.P7607996889333393999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319497 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P7607996889333393999

namespace A189721

/-- `∑[A319497(n)%2]` -/
def P7607996889333393999.Spec : Prop :=
  ∀ n, P7607996889333393999.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P922687154855190182

`∑[and(1, A117966(n))]`
-/

namespace A189721.P922687154855190182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117966 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P922687154855190182

namespace A189721

/-- `∑[and(1, A117966(n))]` -/
def P922687154855190182.Spec : Prop :=
  ∀ n, P922687154855190182.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P17327645918614862191

`∑[and(1, A327252(n))]`
-/

namespace A189721.P17327645918614862191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327252 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P17327645918614862191

namespace A189721

/-- `∑[and(1, A327252(n))]` -/
def P17327645918614862191.Spec : Prop :=
  ∀ n, P17327645918614862191.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P9551830725365106790

`∑[and(1, A333773(n))]`
-/

namespace A189721.P9551830725365106790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A333773 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P9551830725365106790

namespace A189721

/-- `∑[and(1, A333773(n))]` -/
def P9551830725365106790.Spec : Prop :=
  ∀ n, P9551830725365106790.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P12650851134103693393

`∑[(A004488(n)+n)%2]`
-/

namespace A189721.P12650851134103693393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P12650851134103693393

namespace A189721

/-- `∑[(A004488(n)+n)%2]` -/
def P12650851134103693393.Spec : Prop :=
  ∀ n, P12650851134103693393.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P15450201242021294788

`∑[(A081603(n)+n)%2]`
-/

namespace A189721.P15450201242021294788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081603 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P15450201242021294788

namespace A189721

/-- `∑[(A081603(n)+n)%2]` -/
def P15450201242021294788.Spec : Prop :=
  ∀ n, P15450201242021294788.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P5321080126934566237

`∑[(A300956(n)+n)%2]`
-/

namespace A189721.P5321080126934566237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300956 n + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P5321080126934566237

namespace A189721

/-- `∑[(A300956(n)+n)%2]` -/
def P5321080126934566237.Spec : Prop :=
  ∀ n, P5321080126934566237.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P6298377762808227153

`∑[and(1, A256184(n)+n)]`
-/

namespace A189721.P6298377762808227153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256184 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P6298377762808227153

namespace A189721

/-- `∑[and(1, A256184(n)+n)]` -/
def P6298377762808227153.Spec : Prop :=
  ∀ n, P6298377762808227153.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P14350821838420087166

`∑[and(1, A274107(n)+n)]`
-/

namespace A189721.P14350821838420087166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A274107 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P14350821838420087166

namespace A189721

/-- `∑[and(1, A274107(n)+n)]` -/
def P14350821838420087166.Spec : Prop :=
  ∀ n, P14350821838420087166.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P234134915731986045

`∑[A001222(A006047(n))%2]`
-/

namespace A189721.P234134915731986045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A006047 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P234134915731986045

namespace A189721

/-- `∑[A001222(A006047(n))%2]` -/
def P234134915731986045.Spec : Prop :=
  ∀ n, P234134915731986045.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P16577828173577685463

`∑[∑{d}[A117966(n), A000010(#)]%2]`
-/

namespace A189721.P16577828173577685463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P16577828173577685463

namespace A189721

/-- `∑[∑{d}[A117966(n), A000010(#)]%2]` -/
def P16577828173577685463.Spec : Prop :=
  ∀ n, P16577828173577685463.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P16104335348936312871

`∑[and(n-A081603(n), A057427(n))]`
-/

namespace A189721.P16104335348936312871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A081603 n) (A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P16104335348936312871

namespace A189721

/-- `∑[and(n-A081603(n), A057427(n))]` -/
def P16104335348936312871.Spec : Prop :=
  ∀ n, P16104335348936312871.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P1420890203379816161

`∑[(A333773(n)+4*A004277(n))%2]`
-/

namespace A189721.P1420890203379816161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333773 n + 4 * A004277 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P1420890203379816161

namespace A189721

/-- `∑[(A333773(n)+4*A004277(n))%2]` -/
def P1420890203379816161.Spec : Prop :=
  ∀ n, P1420890203379816161.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P11396398908201907399

`∑[A303534(A064990(n)+A006519(n+1))]`
-/

namespace A189721.P11396398908201907399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (A064990 n + A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P11396398908201907399

namespace A189721

/-- `∑[A303534(A064990(n)+A006519(n+1))]` -/
def P11396398908201907399.Spec : Prop :=
  ∀ n, P11396398908201907399.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P10610931799261950733

`∑[A300958(n+1)%2]`
-/

namespace A189721.P10610931799261950733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300958 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P10610931799261950733

namespace A189721

/-- `∑[A300958(n+1)%2]` -/
def P10610931799261950733.Spec : Prop :=
  ∀ n, P10610931799261950733.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P4125460056512570410

`∑[A000035(A004488(n)+n)]`
-/

namespace A189721.P4125460056512570410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004488 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P4125460056512570410

namespace A189721

/-- `∑[A000035(A004488(n)+n)]` -/
def P4125460056512570410.Spec : Prop :=
  ∀ n, P4125460056512570410.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P3960454479029019180

`∑[gcd(2, A333773(A016777(n)))-1]`
-/

namespace A189721.P3960454479029019180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A333773 (A016777 n).toNat) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P3960454479029019180

namespace A189721

/-- `∑[gcd(2, A333773(A016777(n)))-1]` -/
def P3960454479029019180.Spec : Prop :=
  ∀ n, P3960454479029019180.a n = A189721 (n + 1)

end A189721

/-! ## A189721.P11435260267699431990

`∑[A000120(A023717(n))%2]`
-/

namespace A189721.P11435260267699431990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A023717 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189721.P11435260267699431990

namespace A189721

/-- `∑[A000120(A023717(n))%2]` -/
def P11435260267699431990.Spec : Prop :=
  ∀ n, P11435260267699431990.a n = A189721 (n + 1)

end A189721

/-!
# A189722: Number of self-avoiding walks of length n on square lattice such that at each point the angle turns 90 degrees (the first turn is assumed to be to the left - otherwise the number must be doubled).

The programs for A189722, there is no canonical definition to state claims against.
-/

/-! ## A189722.P1392838853416128125

`A336662(n+1)/2`
-/

namespace A189722.P1392838853416128125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336662 (n + 1) : ℚ) / 2

end

end A189722.P1392838853416128125

/-! ## A189722.P1359205074395796311

`A322419(n+2)/4`
-/

namespace A189722.P1359205074395796311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 (n + 2) : ℚ) / 4

end

end A189722.P1359205074395796311

/-! ## A189722.P253606430928344902

`Δ[∑[A336662(n)]/2]`
-/

namespace A189722.P253606430928344902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336662 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189722.P253606430928344902

/-! ## A189722.P16855776739154441715

`record[A322419(n)/A123932(n)]`
-/

namespace A189722.P16855776739154441715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 n : ℚ) / (A123932 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189722.P16855776739154441715

/-! ## A189722.P14169334662686288947

`record[A322419(n)/A151798(2*n)]`
-/

namespace A189722.P14169334662686288947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 n : ℚ) / (A151798 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189722.P14169334662686288947

/-!
# A189723: Fixed point of the morphism 0->011, 1->101.

The programs for A189723, the canonical program `A189723.P17700089988259517662` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189723 has offset 1).

The definition of A189723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189723.P17700089988259517662

`floor(sqrt((n-a(floor(n/3)))%3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189723

/-- `floor(sqrt((n-a(floor(n/3)))%3))` -/
def P17700089988259517662.Spec : Prop :=
  ∀ n, P17700089988259517662.a n = A189723 (n + 1)

theorem P17700089988259517662.correct : P17700089988259517662.Spec := by
  intro n
  simp only [A189723, Nat.add_sub_cancel]

end A189723

/-! ## A189723.P959462317962816924

`char[A320928(n+1)]`
-/

namespace A189723.P959462317962816924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189723.P959462317962816924

namespace A189723

/-- `char[A320928(n+1)]` -/
def P959462317962816924.Spec : Prop :=
  ∀ n, (P959462317962816924.a n : ℤ) = A189723 (n + 1)

end A189723

/-! ## A189723.P16478656445495153820

`floor(sqrt(A287447(n+1)))`
-/

namespace A189723.P16478656445495153820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287447 (n + 1))

end

end A189723.P16478656445495153820

namespace A189723

/-- `floor(sqrt(A287447(n+1)))` -/
def P16478656445495153820.Spec : Prop :=
  ∀ n, P16478656445495153820.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P13093950089427730557

`floor(sqrt(A287524(n+1)))`
-/

namespace A189723.P13093950089427730557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287524 (n + 1))

end

end A189723.P13093950089427730557

namespace A189723

/-- `floor(sqrt(A287524(n+1)))` -/
def P13093950089427730557.Spec : Prop :=
  ∀ n, P13093950089427730557.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P12415585835813226192

`a(1-A320927(n))` with `a(0)=0, a(1)=1`
-/

namespace A189723.P12415585835813226192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A320927 n).toNat

end

end A189723.P12415585835813226192

namespace A189723

/-- `a(1-A320927(n))` -/
def P12415585835813226192.Spec : Prop :=
  ∀ n, (P12415585835813226192.a n : ℤ) = A189723 (n + 1)

end A189723

/-! ## A189723.P13873739499815588396

`char[A189725(n+1)-1]`
-/

namespace A189723.P13873739499815588396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189723.P13873739499815588396

namespace A189723

/-- `char[A189725(n+1)-1]` -/
def P13873739499815588396.Spec : Prop :=
  ∀ n, (P13873739499815588396.a n : ℤ) = A189723 (n + 1)

end A189723

/-! ## A189723.P13595415766098616399

`1-char[A189724(n+1)-1]`
-/

namespace A189723.P13595415766098616399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189723.P13595415766098616399

namespace A189723

/-- `1-char[A189724(n+1)-1]` -/
def P13595415766098616399.Spec : Prop :=
  ∀ n, P13595415766098616399.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P12669691062621948730

`A000045(abs(n%3-a(floor(n/3))))` with `a(0)=0`
-/

namespace A189723.P12669691062621948730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 |((n % 3 : ℕ) : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat|.toNat

end

end A189723.P12669691062621948730

namespace A189723

/-- `A000045(abs(n%3-a(floor(n/3))))` -/
def P12669691062621948730.Spec : Prop :=
  ∀ n, P12669691062621948730.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P4465714408439393400

`A189724(n+1)-A016777(n)`
-/

namespace A189723.P4465714408439393400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1) - A016777 n

end

end A189723.P4465714408439393400

namespace A189723

/-- `A189724(n+1)-A016777(n)` -/
def P4465714408439393400.Spec : Prop :=
  ∀ n, P4465714408439393400.a n = A189723 (n + 1)

theorem P4465714408439393400.correct : P4465714408439393400.Spec := by
  intro n
  simp only [A189723, Nat.add_sub_cancel, A189723.P4465714408439393400.a, A189723.P17700089988259517662.a, A016777, A016777.P9931792138852554157.a, A189724, A189724.P13620854690515914303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189723

/-! ## A189723.P7623494732802907625

`A016778(n)%A189724(n+1)`
-/

namespace A189723.P7623494732802907625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016778 n) (A189724 (n + 1))

end

end A189723.P7623494732802907625

namespace A189723

/-- `A016778(n)%A189724(n+1)` -/
def P7623494732802907625.Spec : Prop :=
  ∀ n, P7623494732802907625.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P8591531119050608195

`A016780(n)%A189724(n+1)`
-/

namespace A189723.P8591531119050608195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016780 n) (A189724 (n + 1))

end

end A189723.P8591531119050608195

namespace A189723

/-- `A016780(n)%A189724(n+1)` -/
def P8591531119050608195.Spec : Prop :=
  ∀ n, P8591531119050608195.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P5073708098684244668

`A016782(n)%A189724(n+1)`
-/

namespace A189723.P5073708098684244668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016782 n) (A189724 (n + 1))

end

end A189723.P5073708098684244668

namespace A189723

/-- `A016782(n)%A189724(n+1)` -/
def P5073708098684244668.Spec : Prop :=
  ∀ n, P5073708098684244668.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P15775071326321433198

`A016784(n)%A189724(n+1)`
-/

namespace A189723.P15775071326321433198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016784 n) (A189724 (n + 1))

end

end A189723.P15775071326321433198

namespace A189723

/-- `A016784(n)%A189724(n+1)` -/
def P15775071326321433198.Spec : Prop :=
  ∀ n, P15775071326321433198.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P15806805452996451238

`A016792(n)%A287449(n+1)`
-/

namespace A189723.P15806805452996451238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016792 n) (A287449 (n + 1))

end

end A189723.P15806805452996451238

namespace A189723

/-- `A016792(n)%A287449(n+1)` -/
def P15806805452996451238.Spec : Prop :=
  ∀ n, P15806805452996451238.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P141670370284017036

`A016794(n)%A287449(n+1)`
-/

namespace A189723.P141670370284017036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016794 n) (A287449 (n + 1))

end

end A189723.P141670370284017036

namespace A189723

/-- `A016794(n)%A287449(n+1)` -/
def P141670370284017036.Spec : Prop :=
  ∀ n, P141670370284017036.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P7058409354656309946

`A016796(n)%A287449(n+1)`
-/

namespace A189723.P7058409354656309946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016796 n) (A287449 (n + 1))

end

end A189723.P7058409354656309946

namespace A189723

/-- `A016796(n)%A287449(n+1)` -/
def P7058409354656309946.Spec : Prop :=
  ∀ n, P7058409354656309946.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P3657966107856950112

`A287524(n+1)-A189632(n+1)`
-/

namespace A189723.P3657966107856950112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1) - A189632 (n + 1)

end

end A189723.P3657966107856950112

namespace A189723

/-- `A287524(n+1)-A189632(n+1)` -/
def P3657966107856950112.Spec : Prop :=
  ∀ n, P3657966107856950112.a n = A189723 (n + 1)

theorem P3657966107856950112.correct : P3657966107856950112.Spec := by
  intro n
  simp only [A189723, Nat.add_sub_cancel, A189723.P3657966107856950112.a, A189723.P17700089988259517662.a, A189632, A189632.P15931714177452615149.a, A287524, A287524.P2131839873874398650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189723

/-! ## A189723.P1706711693866656455

`xor(A189668(n+1), A189820(n+1))`
-/

namespace A189723.P1706711693866656455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189668 (n + 1)) (A189820 (n + 1))

end

end A189723.P1706711693866656455

namespace A189723

/-- `xor(A189668(n+1), A189820(n+1))` -/
def P1706711693866656455.Spec : Prop :=
  ∀ n, P1706711693866656455.a n = A189723 (n + 1)

end A189723

/-! ## A189723.P5674830399551049741

`(1-(A189668(n+1)+A039966(n)))²`
-/

namespace A189723.P5674830399551049741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A189668 (n + 1) + A039966 n)) ^ 2

end

end A189723.P5674830399551049741

namespace A189723

/-- `(1-(A189668(n+1)+A039966(n)))²` -/
def P5674830399551049741.Spec : Prop :=
  ∀ n, P5674830399551049741.a n = A189723 (n + 1)

end A189723

/-!
# A189724: Positions of 0 in A189723; complement of A189725.

The programs for A189724, the canonical program `A189724.P13620854690515914303` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189724 has offset 1).

The definition of A189724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189724.P13620854690515914303

`A189723(n+1)+3*n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189724

/-- `A189723(n+1)+3*n+1` -/
def P13620854690515914303.Spec : Prop :=
  ∀ n, P13620854690515914303.a n = A189724 (n + 1)

theorem P13620854690515914303.correct : P13620854690515914303.Spec := by
  intro n
  simp only [A189724, Nat.add_sub_cancel]

end A189724

/-! ## A189724.P7433860561516221058

`char[A320928(n+1)]+3*n+1`
-/

namespace A189724.P7433860561516221058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (3 * n + 1)

end

end A189724.P7433860561516221058

namespace A189724

/-- `char[A320928(n+1)]+3*n+1` -/
def P7433860561516221058.Spec : Prop :=
  ∀ n, (P7433860561516221058.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P14807077684735376618

`A320927(3*n+1)+3*n+1`
-/

namespace A189724.P14807077684735376618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (3 * n + 1) + (3 * n + 1 : ℤ)

end

end A189724.P14807077684735376618

namespace A189724

/-- `A320927(3*n+1)+3*n+1` -/
def P14807077684735376618.Spec : Prop :=
  ∀ n, P14807077684735376618.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P5991978713555180360

`A284913(Δ[n²])-n`
-/

namespace A189724.P5991978713555180360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A189724.P5991978713555180360

namespace A189724

/-- `A284913(Δ[n²])-n` -/
def P5991978713555180360.Spec : Prop :=
  ∀ n, P5991978713555180360.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P4676776994963786924

`ceil(A189728(2*n+1)/2)`
-/

namespace A189724.P4676776994963786924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189728 (2 * n + 1) : ℚ) / 2⌉

end

end A189724.P4676776994963786924

namespace A189724

/-- `ceil(A189728(2*n+1)/2)` -/
def P4676776994963786924.Spec : Prop :=
  ∀ n, P4676776994963786924.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P11333013568873609690

`abs(A284913(2*n+1)-n)`
-/

namespace A189724.P11333013568873609690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284913 (2 * n + 1) - (n : ℤ)|

end

end A189724.P11333013568873609690

namespace A189724

/-- `abs(A284913(2*n+1)-n)` -/
def P11333013568873609690.Spec : Prop :=
  ∀ n, P11333013568873609690.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P3440689443871351074

`xor(3, A284914(2*n+1))-n`
-/

namespace A189724.P3440689443871351074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A284914 (2 * n + 1)) - (n : ℤ)

end

end A189724.P3440689443871351074

namespace A189724

/-- `xor(3, A284914(2*n+1))-n` -/
def P3440689443871351074.Spec : Prop :=
  ∀ n, P3440689443871351074.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P8162274027280820101

`A189727(2*n+1)+3*n+1`
-/

namespace A189724.P8162274027280820101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (2 * n + 1) + (3 * n + 1 : ℤ)

end

end A189724.P8162274027280820101

namespace A189724

/-- `A189727(2*n+1)+3*n+1` -/
def P8162274027280820101.Spec : Prop :=
  ∀ n, P8162274027280820101.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P17305686193654205400

`A008486(n+1)-gcd(2, A284914(2*n+1))`
-/

namespace A189724.P17305686193654205400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - (Int.gcd 2 (A284914 (2 * n + 1)) : ℤ)

end

end A189724.P17305686193654205400

namespace A189724

/-- `A008486(n+1)-gcd(2, A284914(2*n+1))` -/
def P17305686193654205400.Spec : Prop :=
  ∀ n, P17305686193654205400.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P10056121643466998709

`A004767(2*n)-(A284914(2*n+1)+n)`
-/

namespace A189724.P10056121643466998709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n) - (A284914 (2 * n + 1) + (n : ℤ))

end

end A189724.P10056121643466998709

namespace A189724

/-- `A004767(2*n)-(A284914(2*n+1)+n)` -/
def P10056121643466998709.Spec : Prop :=
  ∀ n, P10056121643466998709.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P4966573154899591128

`A189726(3*n+1)+n+1`
-/

namespace A189724.P4966573154899591128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189726 (3 * n + 1) + (n + 1 : ℤ)

end

end A189724.P4966573154899591128

namespace A189724

/-- `A189726(3*n+1)+n+1` -/
def P4966573154899591128.Spec : Prop :=
  ∀ n, P4966573154899591128.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P15150726212046796945

`A287524(A189633(2*n+1))+A189633(2*n+1)`
-/

namespace A189724.P15150726212046796945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A189633 (2 * n + 1)).toNat + A189633 (2 * n + 1)

end

end A189724.P15150726212046796945

namespace A189724

/-- `A287524(A189633(2*n+1))+A189633(2*n+1)` -/
def P15150726212046796945.Spec : Prop :=
  ∀ n, P15150726212046796945.a n = A189724 (n + 1)

end A189724

/-! ## A189724.P11109612578010105096

`eq[0, A287524(n+1)]+1`
-/

namespace A189724.P11109612578010105096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189724.P11109612578010105096

namespace A189724

/-- `eq[0, A287524(n+1)]+1` -/
def P11109612578010105096.Spec : Prop :=
  ∀ n, (P11109612578010105096.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P4750927779627563228

`lt[A287447(n+1), 1]+1`
-/

namespace A189724.P4750927779627563228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189724.P4750927779627563228

namespace A189724

/-- `lt[A287447(n+1), 1]+1` -/
def P4750927779627563228.Spec : Prop :=
  ∀ n, (P4750927779627563228.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P1533189172577689591

`eq[1, a(A287524(n))-2]` with `a(0)=3`
-/

namespace A189724.P1533189172577689591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (A287524 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189724.P1533189172577689591

namespace A189724

/-- `eq[1, a(A287524(n))-2]` -/
def P1533189172577689591.Spec : Prop :=
  ∀ n, (P1533189172577689591.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P15916089719350236055

`lt[char[A320928(n+1)], 1]+1`
-/

namespace A189724.P15916089719350236055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A189724.P15916089719350236055

namespace A189724

/-- `lt[char[A320928(n+1)], 1]+1` -/
def P15916089719350236055.Spec : Prop :=
  ∀ n, (P15916089719350236055.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P3170749817121555701

`lt[char[A189723(n+1)+n], 1]`
-/

namespace A189724.P3170749817121555701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189724.P3170749817121555701

namespace A189724

/-- `lt[char[A189723(n+1)+n], 1]` -/
def P3170749817121555701.Spec : Prop :=
  ∀ n, (P3170749817121555701.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P5003613553335487064

`lt[n*char[A189725(n+1)], n]`
-/

namespace A189724.P5003613553335487064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189724.P5003613553335487064

namespace A189724

/-- `lt[n*char[A189725(n+1)], n]` -/
def P5003613553335487064.Spec : Prop :=
  ∀ n, (P5003613553335487064.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P11634834651014941260

`record[gcd(n+1, A287449(n+1)+1)]`
-/

namespace A189724.P11634834651014941260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A287449 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189724.P11634834651014941260

namespace A189724

/-- `record[gcd(n+1, A287449(n+1)+1)]` -/
def P11634834651014941260.Spec : Prop :=
  ∀ n, (P11634834651014941260.a n : ℤ) = A189724 (n + 1)

end A189724

/-! ## A189724.P10136099563456535798

`A014681(A284914(2*n+1))-n`
-/

namespace A189724.P10136099563456535798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284914 (2 * n + 1)).toNat - (n : ℤ)

end

end A189724.P10136099563456535798

namespace A189724

/-- `A014681(A284914(2*n+1))-n` -/
def P10136099563456535798.Spec : Prop :=
  ∀ n, P10136099563456535798.a n = A189724 (n + 1)

end A189724

/-!
# A189725: Positions of 1 in A189723; complement of A189724.

The programs for A189725, the canonical program `A189725.P7436048816723822181` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189725 has offset 1).

The definition of A189725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189725.P7436048816723822181

`A320928(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A189725

/-- `A320928(n+1)+1` -/
def P7436048816723822181.Spec : Prop :=
  ∀ n, P7436048816723822181.a n = A189725 (n + 1)

theorem P7436048816723822181.correct : P7436048816723822181.Spec := by
  intro n
  simp only [A189725, Nat.add_sub_cancel]

end A189725

/-! ## A189725.P15512959438173448878

`ceil((A284914(n+1)+n+1)/2)`
-/

namespace A189725.P15512959438173448878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284914 (n + 1) + (n + 1 : ℤ) : ℚ) / 2⌉

end

end A189725.P15512959438173448878

namespace A189725

/-- `ceil((A284914(n+1)+n+1)/2)` -/
def P15512959438173448878.Spec : Prop :=
  ∀ n, P15512959438173448878.a n = A189725 (n + 1)

end A189725

/-! ## A189725.P13406865798687826365

`∪[A026232(n+1), A287526(n+1)]`
-/

namespace A189725.P13406865798687826365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189725.P13406865798687826365

namespace A189725

/-- `∪[A026232(n+1), A287526(n+1)]` -/
def P13406865798687826365.Spec : Prop :=
  ∀ n, (P13406865798687826365.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P8566606749732482396

`∪[A189634(n+1), A287526(n+1)]`
-/

namespace A189725.P8566606749732482396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189725.P8566606749732482396

namespace A189725

/-- `∪[A189634(n+1), A287526(n+1)]` -/
def P8566606749732482396.Spec : Prop :=
  ∀ n, (P8566606749732482396.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P3802406049558386198

`∪[A287449(n+1), A287450(n+1)]`
-/

namespace A189725.P3802406049558386198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189725.P3802406049558386198

namespace A189725

/-- `∪[A287449(n+1), A287450(n+1)]` -/
def P3802406049558386198.Spec : Prop :=
  ∀ n, (P3802406049558386198.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P8543895679306535103

`A008619(A284914(n+1)-n)+n`
-/

namespace A189725.P8543895679306535103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A284914 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A189725.P8543895679306535103

namespace A189725

/-- `A008619(A284914(n+1)-n)+n` -/
def P8543895679306535103.Spec : Prop :=
  ∀ n, P8543895679306535103.a n = A189725 (n + 1)

end A189725

/-! ## A189725.P13498082545346730764

`filter[n+1, A189723(#)]`
-/

namespace A189725.P13498082545346730764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189723 (f1 j) = 1) n)

end

end A189725.P13498082545346730764

namespace A189725

/-- `filter[n+1, A189723(#)]` -/
def P13498082545346730764.Spec : Prop :=
  ∀ n, (P13498082545346730764.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P716859181899819472

`record[n/a(A287524(n))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A189725.P716859181899819472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  (n : ℚ) / f1 (A287524 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189725.P716859181899819472

namespace A189725

/-- `record[n/a(A287524(n))]` -/
def P716859181899819472.Spec : Prop :=
  ∀ n, P716859181899819472.a n = (A189725 (n + 1) : ℚ)

end A189725

/-! ## A189725.P7694339185973836498

`lt[char[3]+char[11], A287447(n+1)]+1`
-/

namespace A189725.P7694339185973836498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n + 1

end

end A189725.P7694339185973836498

namespace A189725

/-- `lt[char[3]+char[11], A287447(n+1)]+1` -/
def P7694339185973836498.Spec : Prop :=
  ∀ n, (P7694339185973836498.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P13202196794631529287

`A020725(A320928(n+1))`
-/

namespace A189725.P13202196794631529287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A320928 (n + 1)).toNat

end

end A189725.P13202196794631529287

namespace A189725

/-- `A020725(A320928(n+1))` -/
def P13202196794631529287.Spec : Prop :=
  ∀ n, P13202196794631529287.a n = A189725 (n + 1)

end A189725

/-! ## A189725.P13715202814291569543

`lt[0, A287447(A028310(n))]`
-/

namespace A189725.P13715202814291569543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287447 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189725.P13715202814291569543

namespace A189725

/-- `lt[0, A287447(A028310(n))]` -/
def P13715202814291569543.Spec : Prop :=
  ∀ n, (P13715202814291569543.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P14270308292531552905

`eq[1, A067760(a(A287524(n)))]` with `a(0)=3`
-/

namespace A189725.P14270308292531552905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A067760 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189725.P14270308292531552905

namespace A189725

/-- `eq[1, A067760(a(A287524(n)))]` -/
def P14270308292531552905.Spec : Prop :=
  ∀ n, (P14270308292531552905.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P7259514997669666637

`eq[1, A071490(a(A287524(n)))]` with `a(0)=20`
-/

namespace A189725.P7259514997669666637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f2 =>
  A071490 (f2 (A287524 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189725.P7259514997669666637

namespace A189725

/-- `eq[1, A071490(a(A287524(n)))]` -/
def P7259514997669666637.Spec : Prop :=
  ∀ n, (P7259514997669666637.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P16231936446578882860

`eq[A039966(n), A189668(n+1)]+1`
-/

namespace A189725.P16231936446578882860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A189725.P16231936446578882860

namespace A189725

/-- `eq[A039966(n), A189668(n+1)]+1` -/
def P16231936446578882860.Spec : Prop :=
  ∀ n, (P16231936446578882860.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P13908889684702824597

`lt[A189632(n+1), A287524(n+1)]+1`
-/

namespace A189725.P13908889684702824597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A189725.P13908889684702824597

namespace A189725

/-- `lt[A189632(n+1), A287524(n+1)]+1` -/
def P13908889684702824597.Spec : Prop :=
  ∀ n, (P13908889684702824597.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P17121403192922010856

`lt[n*char[A189724(n+1)], n]`
-/

namespace A189725.P17121403192922010856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A189725.P17121403192922010856

namespace A189725

/-- `lt[n*char[A189724(n+1)], n]` -/
def P17121403192922010856.Spec : Prop :=
  ∀ n, (P17121403192922010856.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P14485447974629805192

`lt[char[A189724(n+1)], A057427(n)]`
-/

namespace A189725.P14485447974629805192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189724 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A189725.P14485447974629805192

namespace A189725

/-- `lt[char[A189724(n+1)], A057427(n)]` -/
def P14485447974629805192.Spec : Prop :=
  ∀ n, (P14485447974629805192.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P2444235570502778595

`lt[A189723(n+1), n*A189723(A028310(n))]`
-/

namespace A189725.P2444235570502778595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189723 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189725.P2444235570502778595

namespace A189725

/-- `lt[A189723(n+1), n*A189723(A028310(n))]` -/
def P2444235570502778595.Spec : Prop :=
  ∀ n, (P2444235570502778595.a n : ℤ) = A189725 (n + 1)

end A189725

/-! ## A189725.P8556533600062254699

`A189723(A001651(n+1)+1)+A001651(n+1)`
-/

namespace A189725.P8556533600062254699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (A001651 (n + 1) + 1).toNat + A001651 (n + 1)

end

end A189725.P8556533600062254699

namespace A189725

/-- `A189723(A001651(n+1)+1)+A001651(n+1)` -/
def P8556533600062254699.Spec : Prop :=
  ∀ n, P8556533600062254699.a n = A189725 (n + 1)

end A189725

/-!
# A189726: Partial sums of A189723.

The programs for A189726, the canonical program `A189726.P12332784523187162366` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189726 has offset 1).

The definition of A189726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189726.P12332784523187162366

`∑[A189723(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189726

/-- `∑[A189723(n+1)]` -/
def P12332784523187162366.Spec : Prop :=
  ∀ n, P12332784523187162366.a n = A189726 (n + 1)

theorem P12332784523187162366.correct : P12332784523187162366.Spec := by
  intro n
  simp only [A189726, Nat.add_sub_cancel]

end A189726

/-! ## A189726.P15135168481557357153

`∑[char[A320928(n+1)]]`
-/

namespace A189726.P15135168481557357153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P15135168481557357153

namespace A189726

/-- `∑[char[A320928(n+1)]]` -/
def P15135168481557357153.Spec : Prop :=
  ∀ n, (P15135168481557357153.a n : ℤ) = A189726 (n + 1)

end A189726

/-! ## A189726.P9431346475150981732

`∑[floor(sqrt(A287447(n+1)))]`
-/

namespace A189726.P9431346475150981732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287447 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P9431346475150981732

namespace A189726

/-- `∑[floor(sqrt(A287447(n+1)))]` -/
def P9431346475150981732.Spec : Prop :=
  ∀ n, P9431346475150981732.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P14566742929680120885

`∑[floor(sqrt(A287524(n+1)))]`
-/

namespace A189726.P14566742929680120885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287524 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P14566742929680120885

namespace A189726

/-- `∑[floor(sqrt(A287524(n+1)))]` -/
def P14566742929680120885.Spec : Prop :=
  ∀ n, P14566742929680120885.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P17855957588254038765

`∑[char[A189725(n+1)-1]]`
-/

namespace A189726.P17855957588254038765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189725 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P17855957588254038765

namespace A189726

/-- `∑[char[A189725(n+1)-1]]` -/
def P17855957588254038765.Spec : Prop :=
  ∀ n, (P17855957588254038765.a n : ℤ) = A189726 (n + 1)

end A189726

/-! ## A189726.P8214254630897279657

`a(n-1)+1-A320927(n)` with `a(0)=0`
-/

namespace A189726.P8214254630897279657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A320927 n)

end

end A189726.P8214254630897279657

namespace A189726

/-- `a(n-1)+1-A320927(n)` -/
def P8214254630897279657.Spec : Prop :=
  ∀ n, P8214254630897279657.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P17997054461305861847

`∑[A287524(n+1)-A189632(n+1)]`
-/

namespace A189726.P17997054461305861847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1) - A189632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P17997054461305861847

namespace A189726

/-- `∑[A287524(n+1)-A189632(n+1)]` -/
def P17997054461305861847.Spec : Prop :=
  ∀ n, P17997054461305861847.a n = A189726 (n + 1)

theorem P17997054461305861847.correct : P17997054461305861847.Spec := by
  intro n
  simp only [A189726, Nat.add_sub_cancel, A189726.P17997054461305861847.f1, A189726.P17997054461305861847.a, A189726.P12332784523187162366.f1, A189726.P12332784523187162366.a, A189632, A189632.P15931714177452615149.a, A189723, A189723.P17700089988259517662.a, A287524, A287524.P2131839873874398650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189726

/-! ## A189726.P9593136968308685442

`∑[A287524(n+1)]-A189635(n+1)`
-/

namespace A189726.P9593136968308685442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189635 (n + 1)

end

end A189726.P9593136968308685442

namespace A189726

/-- `∑[A287524(n+1)]-A189635(n+1)` -/
def P9593136968308685442.Spec : Prop :=
  ∀ n, P9593136968308685442.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P6953975988325470319

`A320927(n+1)-∑[A320927(n+1)]+n`
-/

namespace A189726.P6953975988325470319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A189726.P6953975988325470319

namespace A189726

/-- `A320927(n+1)-∑[A320927(n+1)]+n` -/
def P6953975988325470319.Spec : Prop :=
  ∀ n, P6953975988325470319.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P11925066374266195892

`∑[A320927(3*n+1)]`
-/

namespace A189726.P11925066374266195892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P11925066374266195892

namespace A189726

/-- `∑[A320927(3*n+1)]` -/
def P11925066374266195892.Spec : Prop :=
  ∀ n, P11925066374266195892.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P13663679113894532870

`∑[A189727(2*n+1)]`
-/

namespace A189726.P13663679113894532870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P13663679113894532870

namespace A189726

/-- `∑[A189727(2*n+1)]` -/
def P13663679113894532870.Spec : Prop :=
  ∀ n, P13663679113894532870.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P3873456591577779146

`∑[val(A284913(Δ[n²]), 2)]`
-/

namespace A189726.P3873456591577779146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284913 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P3873456591577779146

namespace A189726

/-- `∑[val(A284913(Δ[n²]), 2)]` -/
def P3873456591577779146.Spec : Prop :=
  ∀ n, (P3873456591577779146.a n : ℤ) = A189726 (n + 1)

end A189726

/-! ## A189726.P1263400162399503711

`∑[A284914(2*n+1)%2]`
-/

namespace A189726.P1263400162399503711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284914 (2 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P1263400162399503711

namespace A189726

/-- `∑[A284914(2*n+1)%2]` -/
def P1263400162399503711.Spec : Prop :=
  ∀ n, P1263400162399503711.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P12898046233010549360

`∑[floor(sqrt(A287401(2*n+1)))]`
-/

namespace A189726.P12898046233010549360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287401 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P12898046233010549360

namespace A189726

/-- `∑[floor(sqrt(A287401(2*n+1)))]` -/
def P12898046233010549360.Spec : Prop :=
  ∀ n, P12898046233010549360.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P6368398227098422291

`∑[floor(sqrt(A287438(2*n+1)))]`
-/

namespace A189726.P6368398227098422291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287438 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P6368398227098422291

namespace A189726

/-- `∑[floor(sqrt(A287438(2*n+1)))]` -/
def P6368398227098422291.Spec : Prop :=
  ∀ n, P6368398227098422291.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P2095220403082716503

`∑[A284913(2*n+1)]%(n+1)`
-/

namespace A189726.P2095220403082716503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A189726.P2095220403082716503

namespace A189726

/-- `∑[A284913(2*n+1)]%(n+1)` -/
def P2095220403082716503.Spec : Prop :=
  ∀ n, P2095220403082716503.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P6154844560991813667

`A004526(A189730(2*(n+1)))`
-/

namespace A189726.P6154844560991813667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189730 (2 * (n + 1))).toNat

end

end A189726.P6154844560991813667

namespace A189726

/-- `A004526(A189730(2*(n+1)))` -/
def P6154844560991813667.Spec : Prop :=
  ∀ n, P6154844560991813667.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P13820434460560942470

`A189671(A320927(n+1)+2*n+1)`
-/

namespace A189726.P13820434460560942470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A320927 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A189726.P13820434460560942470

namespace A189726

/-- `A189671(A320927(n+1)+2*n+1)` -/
def P13820434460560942470.Spec : Prop :=
  ∀ n, P13820434460560942470.a n = A189726 (n + 1)

end A189726

/-! ## A189726.P15764844421863922368

`∑[A189640(A320928(2*n+1))]`
-/

namespace A189726.P15764844421863922368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A320928 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189726.P15764844421863922368

namespace A189726

/-- `∑[A189640(A320928(2*n+1))]` -/
def P15764844421863922368.Spec : Prop :=
  ∀ n, P15764844421863922368.a n = A189726 (n + 1)

end A189726

/-!
# A189727: Fixed point of the morphism 0->011, 1->110.

The programs for A189727, the canonical program `A189727.P1262965098094579088` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189727 has offset 1).

The definition of A189727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189727.P1262965098094579088

`floor(sqrt((a(floor(n/3))+n)%3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189727

/-- `floor(sqrt((a(floor(n/3))+n)%3))` -/
def P1262965098094579088.Spec : Prop :=
  ∀ n, (P1262965098094579088.a n : ℤ) = A189727 (n + 1)

theorem P1262965098094579088.correct : P1262965098094579088.Spec := by
  intro n
  simp only [A189727, Nat.add_sub_cancel]

end A189727

/-! ## A189727.P10057058857063906560

`a((20*n-a(floor(n/3)))%3)` with `a(0)=0, a(1)=1`
-/

namespace A189727.P10057058857063906560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.tmod ((20 * n : ℤ) - (a ⌊(n : ℚ) / 3⌋.toNat : ℤ)) 3).toNat

end

end A189727.P10057058857063906560

namespace A189727

/-- `a((20*n-a(floor(n/3)))%3)` -/
def P10057058857063906560.Spec : Prop :=
  ∀ n, (P10057058857063906560.a n : ℤ) = A189727 (n + 1)

end A189727

/-! ## A189727.P4313564524978222288

`A284914(n+1)%2`
-/

namespace A189727.P4313564524978222288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284914 (n + 1)) 2

end

end A189727.P4313564524978222288

namespace A189727

/-- `A284914(n+1)%2` -/
def P4313564524978222288.Spec : Prop :=
  ∀ n, P4313564524978222288.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P13531135628153525009

`floor(sqrt(A287401(n+1)))`
-/

namespace A189727.P13531135628153525009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287401 (n + 1))

end

end A189727.P13531135628153525009

namespace A189727

/-- `floor(sqrt(A287401(n+1)))` -/
def P13531135628153525009.Spec : Prop :=
  ∀ n, P13531135628153525009.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P8497946648435686222

`floor(sqrt(A287438(n+1)))`
-/

namespace A189727.P8497946648435686222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287438 (n + 1))

end

end A189727.P8497946648435686222

namespace A189727

/-- `floor(sqrt(A287438(n+1)))` -/
def P8497946648435686222.Spec : Prop :=
  ∀ n, P8497946648435686222.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P2186701632536056768

`gcd(2, A284913(n+1))-1`
-/

namespace A189727.P2186701632536056768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A284913 (n + 1)) : ℤ) - 1

end

end A189727.P2186701632536056768

namespace A189727

/-- `gcd(2, A284913(n+1))-1` -/
def P2186701632536056768.Spec : Prop :=
  ∀ n, P2186701632536056768.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P18016089261804490747

`A284913(n+1)-A005408(n)`
-/

namespace A189727.P18016089261804490747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284913 (n + 1) - A005408 n

end

end A189727.P18016089261804490747

namespace A189727

/-- `A284913(n+1)-A005408(n)` -/
def P18016089261804490747.Spec : Prop :=
  ∀ n, P18016089261804490747.a n = A189727 (n + 1)

theorem P18016089261804490747.correct : P18016089261804490747.Spec := by
  intro n
  simp only [A189727, Nat.add_sub_cancel, A189727.P18016089261804490747.a, A189727.P1262965098094579088.a, A005408, A005408.P17437947328870227736.a, A284913, A284913.P15008075159223114751.f1, A284913.P15008075159223114751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189727

/-! ## A189727.P4910039753634998345

`A016754(n)%A284913(n+1)`
-/

namespace A189727.P4910039753634998345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A284913 (n + 1))

end

end A189727.P4910039753634998345

namespace A189727

/-- `A016754(n)%A284913(n+1)` -/
def P4910039753634998345.Spec : Prop :=
  ∀ n, P4910039753634998345.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P6099221670486915132

`A016756(n)%A284913(n+1)`
-/

namespace A189727.P6099221670486915132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A284913 (n + 1))

end

end A189727.P6099221670486915132

namespace A189727

/-- `A016756(n)%A284913(n+1)` -/
def P6099221670486915132.Spec : Prop :=
  ∀ n, P6099221670486915132.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P10048707051940109129

`A016758(n)%A284913(n+1)`
-/

namespace A189727.P10048707051940109129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016758 n) (A284913 (n + 1))

end

end A189727.P10048707051940109129

namespace A189727

/-- `A016758(n)%A284913(n+1)` -/
def P10048707051940109129.Spec : Prop :=
  ∀ n, P10048707051940109129.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P8220896693034217886

`A016760(n)%A284913(n+1)`
-/

namespace A189727.P8220896693034217886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A284913 (n + 1))

end

end A189727.P8220896693034217886

namespace A189727

/-- `A016760(n)%A284913(n+1)` -/
def P8220896693034217886.Spec : Prop :=
  ∀ n, P8220896693034217886.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P1565442238263484165

`A272850(n)%A284913(n+1)`
-/

namespace A189727.P1565442238263484165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272850 n) (A284913 (n + 1))

end

end A189727.P1565442238263484165

namespace A189727

/-- `A272850(n)%A284913(n+1)` -/
def P1565442238263484165.Spec : Prop :=
  ∀ n, P1565442238263484165.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P16837958590080860772

`and(A057427(n), A284914(n+1))`
-/

namespace A189727.P16837958590080860772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A284914 (n + 1))

end

end A189727.P16837958590080860772

namespace A189727

/-- `and(A057427(n), A284914(n+1))` -/
def P16837958590080860772.Spec : Prop :=
  ∀ n, P16837958590080860772.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P11802023746682665264

`xor(A189632(n+1), A316829(n))`
-/

namespace A189727.P11802023746682665264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189632 (n + 1)) (A316829 n)

end

end A189727.P11802023746682665264

namespace A189727

/-- `xor(A189632(n+1), A316829(n))` -/
def P11802023746682665264.Spec : Prop :=
  ∀ n, P11802023746682665264.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P9227460797049640997

`A284912(A284913(n+1)-2*n)`
-/

namespace A189727.P9227460797049640997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A284913 (n + 1) - (2 * n : ℤ)).toNat

end

end A189727.P9227460797049640997

namespace A189727

/-- `A284912(A284913(n+1)-2*n)` -/
def P9227460797049640997.Spec : Prop :=
  ∀ n, P9227460797049640997.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P3570644774391193031

`A001222(A189728(n+1)-3*n)`
-/

namespace A189727.P3570644774391193031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A189728 (n + 1) - (3 * n : ℤ)).toNat

end

end A189727.P3570644774391193031

namespace A189727

/-- `A001222(A189728(n+1)-3*n)` -/
def P3570644774391193031.Spec : Prop :=
  ∀ n, P3570644774391193031.a n = A189727 (n + 1)

end A189727

/-! ## A189727.P5356856436176710947

`A000045(2*(n+1)-A284914(n+1))`
-/

namespace A189727.P5356856436176710947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * (n + 1) : ℤ) - A284914 (n + 1)).toNat

end

end A189727.P5356856436176710947

namespace A189727

/-- `A000045(2*(n+1)-A284914(n+1))` -/
def P5356856436176710947.Spec : Prop :=
  ∀ n, P5356856436176710947.a n = A189727 (n + 1)

end A189727

/-!
# A189728: Positions of 0 in A189727; complement of A189729.

The programs for A189728, the canonical program `A189728.P17289738787874107893` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189728 has offset 1).

The definition of A189728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189728.P17289738787874107893

`or(1, A284913(n+1))+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A189728

/-- `or(1, A284913(n+1))+n` -/
def P17289738787874107893.Spec : Prop :=
  ∀ n, P17289738787874107893.a n = A189728 (n + 1)

theorem P17289738787874107893.correct : P17289738787874107893.Spec := by
  intro n
  simp only [A189728, Nat.add_sub_cancel]

end A189728

/-! ## A189728.P5214889313502419274

`C(3, A287438(n+1))+3*n`
-/

namespace A189728.P5214889313502419274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A287438 (n + 1)).toNat + 3 * n

end

end A189728.P5214889313502419274

namespace A189728

/-- `C(3, A287438(n+1))+3*n` -/
def P5214889313502419274.Spec : Prop :=
  ∀ n, (P5214889313502419274.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P2496773827067740385

`A189727(n+1)+A284913(n+1)+n`
-/

namespace A189728.P2496773827067740385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1) + (A284913 (n + 1) + (n : ℤ))

end

end A189728.P2496773827067740385

namespace A189728

/-- `A189727(n+1)+A284913(n+1)+n` -/
def P2496773827067740385.Spec : Prop :=
  ∀ n, P2496773827067740385.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P16099094744625394229

`A005408(A284913(n+1)-1)-n`
-/

namespace A189728.P16099094744625394229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A284913 (n + 1) - 1).toNat - (n : ℤ)

end

end A189728.P16099094744625394229

namespace A189728

/-- `A005408(A284913(n+1)-1)-n` -/
def P16099094744625394229.Spec : Prop :=
  ∀ n, P16099094744625394229.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P13031276276808066095

`A026137(A284913(n+1))`
-/

namespace A189728.P13031276276808066095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (A284913 (n + 1)).toNat

end

end A189728.P13031276276808066095

namespace A189728

/-- `A026137(A284913(n+1))` -/
def P13031276276808066095.Spec : Prop :=
  ∀ n, P13031276276808066095.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P9607967197989066364

`A189669(A189727(n+1)+2*n+1)`
-/

namespace A189728.P9607967197989066364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (A189727 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A189728.P9607967197989066364

namespace A189728

/-- `A189669(A189727(n+1)+2*n+1)` -/
def P9607967197989066364.Spec : Prop :=
  ∀ n, P9607967197989066364.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P4663959292081511874

`A287438(n+1)+A189669(2*n+1)`
-/

namespace A189728.P4663959292081511874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1) + A189669 (2 * n + 1)

end

end A189728.P4663959292081511874

namespace A189728

/-- `A287438(n+1)+A189669(2*n+1)` -/
def P4663959292081511874.Spec : Prop :=
  ∀ n, P4663959292081511874.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P10667145194752098700

`eq[0, A189727(n+1)]+1`
-/

namespace A189728.P10667145194752098700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189728.P10667145194752098700

namespace A189728

/-- `eq[0, A189727(n+1)]+1` -/
def P10667145194752098700.Spec : Prop :=
  ∀ n, (P10667145194752098700.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P15852187425726394427

`lt[A287401(n+1), 1]+1`
-/

namespace A189728.P15852187425726394427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189728.P15852187425726394427

namespace A189728

/-- `lt[A287401(n+1), 1]+1` -/
def P15852187425726394427.Spec : Prop :=
  ∀ n, (P15852187425726394427.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P13308125406230038163

`lt[A287438(n+1), 1]+1`
-/

namespace A189728.P13308125406230038163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189728.P13308125406230038163

namespace A189728

/-- `lt[A287438(n+1), 1]+1` -/
def P13308125406230038163.Spec : Prop :=
  ∀ n, (P13308125406230038163.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P11151418005401575093

`record[gcd(n+1, A284914(n+1))]`
-/

namespace A189728.P11151418005401575093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A284914 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189728.P11151418005401575093

namespace A189728

/-- `record[gcd(n+1, A284914(n+1))]` -/
def P11151418005401575093.Spec : Prop :=
  ∀ n, (P11151418005401575093.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P12686907351818323042

`lt[n*A189727(A028310(n)), n]`
-/

namespace A189728.P12686907351818323042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189727 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189728.P12686907351818323042

namespace A189728

/-- `lt[n*A189727(A028310(n)), n]` -/
def P12686907351818323042.Spec : Prop :=
  ∀ n, (P12686907351818323042.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P5954275152647825238

`record[gcd(A284907(n+1), A287441(n+1))]`
-/

namespace A189728.P5954275152647825238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284907 (n + 1)) (A287441 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189728.P5954275152647825238

namespace A189728

/-- `record[gcd(A284907(n+1), A287441(n+1))]` -/
def P5954275152647825238.Spec : Prop :=
  ∀ n, (P5954275152647825238.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P1228283175030311780

`record[n+1-A006881(n+1)*A287401(n+1)]`
-/

namespace A189728.P1228283175030311780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006881 (n + 1) * A287401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189728.P1228283175030311780

namespace A189728

/-- `record[n+1-A006881(n+1)*A287401(n+1)]` -/
def P1228283175030311780.Spec : Prop :=
  ∀ n, P1228283175030311780.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P13868434373032084454

`eq[A000007(n), A287401(A000007(n)+n)]`
-/

namespace A189728.P13868434373032084454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189728.P13868434373032084454

namespace A189728

/-- `eq[A000007(n), A287401(A000007(n)+n)]` -/
def P13868434373032084454.Spec : Prop :=
  ∀ n, (P13868434373032084454.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P2024071843880142806

`A008486(n+1)-A287401(A008486(n+1))`
-/

namespace A189728.P2024071843880142806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - A287401 (A008486 (n + 1)).toNat

end

end A189728.P2024071843880142806

namespace A189728

/-- `A008486(n+1)-A287401(A008486(n+1))` -/
def P2024071843880142806.Spec : Prop :=
  ∀ n, P2024071843880142806.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P15402061059870707555

`A014681(2*A284913(n+1))-n`
-/

namespace A189728.P15402061059870707555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A284913 (n + 1)).toNat - (n : ℤ)

end

end A189728.P15402061059870707555

namespace A189728

/-- `A014681(2*A284913(n+1))-n` -/
def P15402061059870707555.Spec : Prop :=
  ∀ n, P15402061059870707555.a n = A189728 (n + 1)

end A189728

/-! ## A189728.P9794219860717528812

`eq[1, A284912(2*(n+1))]+1`
-/

namespace A189728.P9794219860717528812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189728.P9794219860717528812

namespace A189728

/-- `eq[1, A284912(2*(n+1))]+1` -/
def P9794219860717528812.Spec : Prop :=
  ∀ n, (P9794219860717528812.a n : ℤ) = A189728 (n + 1)

end A189728

/-! ## A189728.P8453512221344779882

`lt[A284912(2*n+1), 1]+1`
-/

namespace A189728.P8453512221344779882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189728.P8453512221344779882

namespace A189728

/-- `lt[A284912(2*n+1), 1]+1` -/
def P8453512221344779882.Spec : Prop :=
  ∀ n, (P8453512221344779882.a n : ℤ) = A189728 (n + 1)

end A189728

/-!
# A189729: Positions of 1 in A189727; complement of A189728.

The programs for A189729, the canonical program `A189729.P3541793079639853341` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189729 has offset 1).

The definition of A189729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189729.P3541793079639853341

`comp[A189728(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A189729

/-- `comp[A189728(n+1)-1]+1` -/
def P3541793079639853341.Spec : Prop :=
  ∀ n, (P3541793079639853341.a n : ℤ) = A189729 (n + 1)

theorem P3541793079639853341.correct : P3541793079639853341.Spec := by
  intro n
  simp only [A189729, Nat.add_sub_cancel]

end A189729

/-! ## A189729.P15238876831895135886

`∪[A189670(n+1), A287441(n+1)]`
-/

namespace A189729.P15238876831895135886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189729.P15238876831895135886

namespace A189729

/-- `∪[A189670(n+1), A287441(n+1)]` -/
def P15238876831895135886.Spec : Prop :=
  ∀ n, (P15238876831895135886.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P799219883221603931

`∪[A287403(n+1), A287404(n+1)]`
-/

namespace A189729.P799219883221603931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189729.P799219883221603931

namespace A189729

/-- `∪[A287403(n+1), A287404(n+1)]` -/
def P799219883221603931.Spec : Prop :=
  ∀ n, (P799219883221603931.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P12644456764079352163

`filter[n+1, A189727(#)]`
-/

namespace A189729.P12644456764079352163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j) = 1) n)

end

end A189729.P12644456764079352163

namespace A189729

/-- `filter[n+1, A189727(#)]` -/
def P12644456764079352163.Spec : Prop :=
  ∀ n, (P12644456764079352163.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P5883096285129407075

`eq[1, A189727(n+1)]+1`
-/

namespace A189729.P5883096285129407075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189729.P5883096285129407075

namespace A189729

/-- `eq[1, A189727(n+1)]+1` -/
def P5883096285129407075.Spec : Prop :=
  ∀ n, (P5883096285129407075.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P1722681152037410123

`lt[0, A287401(n+1)]+1`
-/

namespace A189729.P1722681152037410123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189729.P1722681152037410123

namespace A189729

/-- `lt[0, A287401(n+1)]+1` -/
def P1722681152037410123.Spec : Prop :=
  ∀ n, (P1722681152037410123.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P5003901713938405699

`record[gcd(n+2, A284913(n+2))]`
-/

namespace A189729.P5003901713938405699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A284913 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189729.P5003901713938405699

namespace A189729

/-- `record[gcd(n+2, A284913(n+2))]` -/
def P5003901713938405699.Spec : Prop :=
  ∀ n, (P5003901713938405699.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P15962627718257330896

`eq[A284914(n+1)%2, 1]+1`
-/

namespace A189729.P15962627718257330896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284914 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A189729.P15962627718257330896

namespace A189729

/-- `eq[A284914(n+1)%2, 1]+1` -/
def P15962627718257330896.Spec : Prop :=
  ∀ n, (P15962627718257330896.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P8985721626666265045

`lt[0, A189727(A028310(n))]`
-/

namespace A189729.P8985721626666265045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189729.P8985721626666265045

namespace A189729

/-- `lt[0, A189727(A028310(n))]` -/
def P8985721626666265045.Spec : Prop :=
  ∀ n, (P8985721626666265045.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P17608860129711845285

`eq[2, A020639(A284913(n+1))]+1`
-/

namespace A189729.P17608860129711845285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189729.P17608860129711845285

namespace A189729

/-- `eq[2, A020639(A284913(n+1))]+1` -/
def P17608860129711845285.Spec : Prop :=
  ∀ n, (P17608860129711845285.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P5477124264298210219

`eq[1, A189727(A000007(n)+n)]`
-/

namespace A189729.P5477124264298210219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189729.P5477124264298210219

namespace A189729

/-- `eq[1, A189727(A000007(n)+n)]` -/
def P5477124264298210219.Spec : Prop :=
  ∀ n, (P5477124264298210219.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P5965989097257941554

`A284914(A110655(2*n+1))+A110655(2*n)`
-/

namespace A189729.P5965989097257941554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284914 (A110655 (2 * n + 1)).toNat + A110655 (2 * n)

end

end A189729.P5965989097257941554

namespace A189729

/-- `A284914(A110655(2*n+1))+A110655(2*n)` -/
def P5965989097257941554.Spec : Prop :=
  ∀ n, P5965989097257941554.a n = A189729 (n + 1)

end A189729

/-! ## A189729.P3875465189951809180

`eq[1, A284912(2*n+1)]+1`
-/

namespace A189729.P3875465189951809180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189729.P3875465189951809180

namespace A189729

/-- `eq[1, A284912(2*n+1)]+1` -/
def P3875465189951809180.Spec : Prop :=
  ∀ n, (P3875465189951809180.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P12327607822720649926

`lt[A284912(2*(n+1)), 1]+1`
-/

namespace A189729.P12327607822720649926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189729.P12327607822720649926

namespace A189729

/-- `lt[A284912(2*(n+1)), 1]+1` -/
def P12327607822720649926.Spec : Prop :=
  ∀ n, (P12327607822720649926.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P7692322288057631162

`record[A338295(A284914(n+1))]`
-/

namespace A189729.P7692322288057631162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A284914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189729.P7692322288057631162

namespace A189729

/-- `record[A338295(A284914(n+1))]` -/
def P7692322288057631162.Spec : Prop :=
  ∀ n, P7692322288057631162.a n = A189729 (n + 1)

end A189729

/-! ## A189729.P3121424590840943571

`record[A001057(A284914(n+2))]`
-/

namespace A189729.P3121424590840943571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A284914 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189729.P3121424590840943571

namespace A189729

/-- `record[A001057(A284914(n+2))]` -/
def P3121424590840943571.Spec : Prop :=
  ∀ n, P3121424590840943571.a n = A189729 (n + 1)

end A189729

/-! ## A189729.P8877332956561678006

`record[A025480(A284913(n+2))]`
-/

namespace A189729.P8877332956561678006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A284913 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189729.P8877332956561678006

namespace A189729

/-- `record[A025480(A284913(n+2))]` -/
def P8877332956561678006.Spec : Prop :=
  ∀ n, P8877332956561678006.a n = A189729 (n + 1)

end A189729

/-! ## A189729.P12978691935437369773

`lt[n*A284912(A004277(n)), n]`
-/

namespace A189729.P12978691935437369773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284912 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189729.P12978691935437369773

namespace A189729

/-- `lt[n*A284912(A004277(n)), n]` -/
def P12978691935437369773.Spec : Prop :=
  ∀ n, (P12978691935437369773.a n : ℤ) = A189729 (n + 1)

end A189729

/-! ## A189729.P11187884863835227338

`lt[A284912(A004277(n)), A057427(n)]`
-/

namespace A189729.P11187884863835227338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189729.P11187884863835227338

namespace A189729

/-- `lt[A284912(A004277(n)), A057427(n)]` -/
def P11187884863835227338.Spec : Prop :=
  ∀ n, (P11187884863835227338.a n : ℤ) = A189729 (n + 1)

end A189729

/-!
# A189730: Partial sums of A189727.

The programs for A189730, the canonical program `A189730.P8400185696208639322` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189730 has offset 1).

The definition of A189730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189730.P8400185696208639322

`∑[A189727(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189730

/-- `∑[A189727(n+1)]` -/
def P8400185696208639322.Spec : Prop :=
  ∀ n, P8400185696208639322.a n = A189730 (n + 1)

theorem P8400185696208639322.correct : P8400185696208639322.Spec := by
  intro n
  simp only [A189730, Nat.add_sub_cancel]

end A189730

/-! ## A189730.P9766033561221589228

`∑[A284914(n+1)%2]`
-/

namespace A189730.P9766033561221589228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284914 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P9766033561221589228

namespace A189730

/-- `∑[A284914(n+1)%2]` -/
def P9766033561221589228.Spec : Prop :=
  ∀ n, P9766033561221589228.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P2489921336567219095

`∑[floor(sqrt(A287401(n+1)))]`
-/

namespace A189730.P2489921336567219095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287401 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P2489921336567219095

namespace A189730

/-- `∑[floor(sqrt(A287401(n+1)))]` -/
def P2489921336567219095.Spec : Prop :=
  ∀ n, P2489921336567219095.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P17514270606200883500

`∑[floor(sqrt(A287438(n+1)))]`
-/

namespace A189730.P17514270606200883500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A287438 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P17514270606200883500

namespace A189730

/-- `∑[floor(sqrt(A287438(n+1)))]` -/
def P17514270606200883500.Spec : Prop :=
  ∀ n, P17514270606200883500.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P16492309249404464539

`∑[(A284913(n+1)+1)%2]`
-/

namespace A189730.P16492309249404464539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284913 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P16492309249404464539

namespace A189730

/-- `∑[(A284913(n+1)+1)%2]` -/
def P16492309249404464539.Spec : Prop :=
  ∀ n, P16492309249404464539.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P12735837676302622112

`∑[1-A189728(n+1)%3]`
-/

namespace A189730.P12735837676302622112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A189728 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P12735837676302622112

namespace A189730

/-- `∑[1-A189728(n+1)%3]` -/
def P12735837676302622112.Spec : Prop :=
  ∀ n, P12735837676302622112.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P13452680599217889139

`∑[A284912(Δ[n²])]`
-/

namespace A189730.P13452680599217889139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P13452680599217889139

namespace A189730

/-- `∑[A284912(Δ[n²])]` -/
def P13452680599217889139.Spec : Prop :=
  ∀ n, P13452680599217889139.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P14735988335086430120

`∑[1-A284912(2*(n+1))]`
-/

namespace A189730.P14735988335086430120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284912 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P14735988335086430120

namespace A189730

/-- `∑[1-A284912(2*(n+1))]` -/
def P14735988335086430120.Spec : Prop :=
  ∀ n, P14735988335086430120.a n = A189730 (n + 1)

end A189730

/-! ## A189730.P1952543261763725145

`∑[A189706(A189728(n+1))]`
-/

namespace A189730.P1952543261763725145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189706 (A189728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189730.P1952543261763725145

namespace A189730

/-- `∑[A189706(A189728(n+1))]` -/
def P1952543261763725145.Spec : Prop :=
  ∀ n, P1952543261763725145.a n = A189730 (n + 1)

end A189730

/-!
# A189731: a(n) = numerator of B(0,n) where B(n,n) = 0, B(n-1,n) = 1/n, and B(m,n) = B(m-1,n+1) - B(m-1,n).

The programs for A189731, the canonical program `A189731.P16100471784912095812` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189731 has offset 0).

The definition of A189731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189731.P7684517062639047799

`A001610(n)/A242947(n+1)`
-/

namespace A189731.P7684517062639047799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001610 n : ℚ) / (A242947 (n + 1) : ℚ)

end

end A189731.P7684517062639047799

namespace A189731

/-- `A001610(n)/A242947(n+1)` -/
def P7684517062639047799.Spec : Prop :=
  ∀ n, P7684517062639047799.a n = (A189731 n : ℚ)

end A189731

/-! ## A189731.P11654489172081658647

`A001610(n)/ceil((n+1)/A242926(n))`
-/

namespace A189731.P11654489172081658647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001610 n : ℚ) / (⌈(n + 1 : ℚ) / (A242926 n : ℚ)⌉ : ℚ)

end

end A189731.P11654489172081658647

namespace A189731

/-- `A001610(n)/ceil((n+1)/A242926(n))` -/
def P11654489172081658647.Spec : Prop :=
  ∀ n, P11654489172081658647.a n = (A189731 n : ℚ)

end A189731

/-! ## A189731.P18438107044745148423

`(A329723(n+3)-1)/ceil((n+1)/A242926(n))`
-/

namespace A189731.P18438107044745148423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329723 (n + 3) - 1 : ℚ) / (⌈(n + 1 : ℚ) / (A242926 n : ℚ)⌉ : ℚ)

end

end A189731.P18438107044745148423

namespace A189731

/-- `(A329723(n+3)-1)/ceil((n+1)/A242926(n))` -/
def P18438107044745148423.Spec : Prop :=
  ∀ n, P18438107044745148423.a n = (A189731 n : ℚ)

end A189731

/-! ## A189731.P16100471784912095812

`A001610(n)/gcd(A000027(n+1), A001610(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189731

/-- `A001610(n)/gcd(A000027(n+1), A001610(n))` -/
def P16100471784912095812.Spec : Prop :=
  ∀ n, P16100471784912095812.a n = (A189731 n : ℚ)

end A189731

/-! ## A189731.P9123751381832616822

`A168674(n)/gcd(A103517(n), A168674(n))`
-/

namespace A189731.P9123751381832616822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168674 n : ℚ) / (Int.gcd (A103517 n) (A168674 n) : ℚ)

end

end A189731.P9123751381832616822

namespace A189731

/-- `A168674(n)/gcd(A103517(n), A168674(n))` -/
def P9123751381832616822.Spec : Prop :=
  ∀ n, P9123751381832616822.a n = (A189731 n : ℚ)

end A189731

/-! ## A189731.P5207734243456544355

`lcm(n+1, 1-A000032(n+1))/(n+1)`
-/

namespace A189731.P5207734243456544355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (1 - A000032 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A189731.P5207734243456544355

namespace A189731

/-- `lcm(n+1, 1-A000032(n+1))/(n+1)` -/
def P5207734243456544355.Spec : Prop :=
  ∀ n, P5207734243456544355.a n = (A189731 n : ℚ)

end A189731

/-!
# A189732: a(1)=1, a(2)=5, a(n) = a(n-1) + 5*a(n-2).

The programs for A189732, the canonical program `A189732.P11948807372699072561` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189732 has offset 1).

The definition of A189732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+5*a(n-2)` (program `A189732.P11948807372699072561`, by `A189732.P11948807372699072561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189732.P11948807372699072561

`a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189732

/-- `a(n-1)+5*a(n-2)` -/
def P11948807372699072561.Spec : Prop :=
  ∀ n, (P11948807372699072561.a n : ℤ) = A189732 (n + 1)

theorem P11948807372699072561.correct : P11948807372699072561.Spec := by
  intro n
  simp only [A189732, Nat.add_sub_cancel]

end A189732

/-! ## A189732.P14599690792102894834

`ogf((1+4x)/(1-x-5x^2))`
-/

namespace A189732.P14599690792102894834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -1, -5] n

end

end A189732.P14599690792102894834

namespace A189732

/-- `ogf((1+4x)/(1-x-5x^2))` -/
def P14599690792102894834.Spec : Prop :=
  ∀ n, P14599690792102894834.a n = A189732 (n + 1)

end A189732

/-! ## A189732.P6549404771772560901

`Δ[a(n-1)+lcm(5, a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A189732.P6549404771772560901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + Nat.lcm 5 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A189732.P6549404771772560901

namespace A189732

/-- `Δ[a(n-1)+lcm(5, a(n-2))]` -/
def P6549404771772560901.Spec : Prop :=
  ∀ n, P6549404771772560901.a n = A189732 (n + 1)

end A189732

/-! ## A189732.P12655195008260089647

`6*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A189732.P12655195008260089647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A189732.P12655195008260089647

namespace A189732

/-- `6*a(n-2)-(a(n-2)-a(n-1))` -/
def P12655195008260089647.Spec : Prop :=
  ∀ n, P12655195008260089647.a n = A189732 (n + 1)

end A189732

/-! ## A189732.P4665508722431057104

`Δ[A133407(n)]`
-/

namespace A189732.P4665508722431057104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189732.P4665508722431057104

namespace A189732

/-- `Δ[A133407(n)]` -/
def P4665508722431057104.Spec : Prop :=
  ∀ n, P4665508722431057104.a n = A189732 (n + 1)

end A189732

/-! ## A189732.P14388543825455476506

`A365824(n+1)+A365824(n)`
-/

namespace A189732.P14388543825455476506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365824 (n + 1) + A365824 n

end

end A189732.P14388543825455476506

namespace A189732

/-- `A365824(n+1)+A365824(n)` -/
def P14388543825455476506.Spec : Prop :=
  ∀ n, P14388543825455476506.a n = A189732 (n + 1)

end A189732

/-! ## A189732.P8075887492480200299

`A133407(n+1)-A133407(n)`
-/

namespace A189732.P8075887492480200299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133407 (n + 1) - A133407 n

end

end A189732.P8075887492480200299

namespace A189732

/-- `A133407(n+1)-A133407(n)` -/
def P8075887492480200299.Spec : Prop :=
  ∀ n, P8075887492480200299.a n = A189732 (n + 1)

end A189732

/-!
# A189733: Denominator of B(0,n) where B(n,n)=0, B(n-1,n) = (-1)^(n+1)/n, and B(m,n) = B(m+1,n-1) + B(m,n-1), n >= 0, m >= 0, is an array of fractions.

The programs for A189733, the canonical program `A189733.P13977796338572445448` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189733 has offset 0).

The definition of A189733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189733.P758925260123583317

`(n+1)/A267068(n)`
-/

namespace A189733.P758925260123583317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A267068 n : ℚ)

end

end A189733.P758925260123583317

namespace A189733

/-- `(n+1)/A267068(n)` -/
def P758925260123583317.Spec : Prop :=
  ∀ n, P758925260123583317.a n = (A189733 n : ℚ)

end A189733

/-! ## A189733.P13977796338572445448

`(n+1)/gcd(xor(1, n), A100219(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189733

/-- `(n+1)/gcd(xor(1, n), A100219(n+1))` -/
def P13977796338572445448.Spec : Prop :=
  ∀ n, P13977796338572445448.a n = (A189733 n : ℚ)

end A189733

/-! ## A189733.P9192957966273102016

`lcm(A003417(n), A133265(n))/2`
-/

namespace A189733.P9192957966273102016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003417 n) (A133265 n) : ℚ) / 2

end

end A189733.P9192957966273102016

namespace A189733

/-- `lcm(A003417(n), A133265(n))/2` -/
def P9192957966273102016.Spec : Prop :=
  ∀ n, P9192957966273102016.a n = (A189733 n : ℚ)

end A189733

/-! ## A189733.P14437111522254520868

`gcd(A010762(n+2), n+1)`
-/

namespace A189733.P14437111522254520868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010762 (n + 2)) (n + 1 : ℤ)

end

end A189733.P14437111522254520868

namespace A189733

/-- `gcd(A010762(n+2), n+1)` -/
def P14437111522254520868.Spec : Prop :=
  ∀ n, (P14437111522254520868.a n : ℤ) = A189733 n

end A189733

/-! ## A189733.P2817960365751406525

`gcd(Δ[n²]-n, A213033(n+2))`
-/

namespace A189733.P2817960365751406525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A213033 (n + 2))

end

end A189733.P2817960365751406525

namespace A189733

/-- `gcd(Δ[n²]-n, A213033(n+2))` -/
def P2817960365751406525.Spec : Prop :=
  ∀ n, (P2817960365751406525.a n : ℤ) = A189733 n

end A189733

/-! ## A189733.P5204250523242918824

`gcd(A008619(n)*A008620(2*n), A000027(n+1))`
-/

namespace A189733.P5204250523242918824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n * A008620 (2 * n)) (A000027 (n + 1))

end

end A189733.P5204250523242918824

namespace A189733

/-- `gcd(A008619(n)*A008620(2*n), A000027(n+1))` -/
def P5204250523242918824.Spec : Prop :=
  ∀ n, (P5204250523242918824.a n : ℤ) = A189733 n

end A189733

/-! ## A189733.P3734036994875693687

`gcd(A065033(n+1)*A275580(2*n), A065033(2*n+1))`
-/

namespace A189733.P3734036994875693687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 (n + 1) * A275580 (2 * n)) (A065033 (2 * n + 1))

end

end A189733.P3734036994875693687

namespace A189733

/-- `gcd(A065033(n+1)*A275580(2*n), A065033(2*n+1))` -/
def P3734036994875693687.Spec : Prop :=
  ∀ n, (P3734036994875693687.a n : ℤ) = A189733 n

end A189733

/-! ## A189733.P619222402934589408

`(n+1)/ceil(ratio[A347304(n)])`
-/

namespace A189733.P619222402934589408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347304 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ : ℚ)

end

end A189733.P619222402934589408

namespace A189733

/-- `(n+1)/ceil(ratio[A347304(n)])` -/
def P619222402934589408.Spec : Prop :=
  ∀ n, P619222402934589408.a n = (A189733 n : ℚ)

end A189733

/-! ## A189733.P3916642697855831197

`A051537(A267068(n)+∑[n])`
-/

namespace A189733.P3916642697855831197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A267068 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A189733.P3916642697855831197

namespace A189733

/-- `A051537(A267068(n)+∑[n])` -/
def P3916642697855831197.Spec : Prop :=
  ∀ n, P3916642697855831197.a n = A189733 n

end A189733

/-!
# A189734: a(1)=2, a(2)=5, a(n)=2*a(n-1) + 5*a(n-2).

The programs for A189734, the canonical program `A189734.P14707890262312406596` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189734 has offset 1).

The definition of A189734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A189734.P14707890262312406596`, by `A189734.P14707890262312406596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189734.P14707890262312406596

`2*a(n-1)+5*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189734

/-- `2*a(n-1)+5*a(n-2)` -/
def P14707890262312406596.Spec : Prop :=
  ∀ n, (P14707890262312406596.a n : ℤ) = A189734 (n + 1)

theorem P14707890262312406596.correct : P14707890262312406596.Spec := by
  intro n
  simp only [A189734, Nat.add_sub_cancel]

end A189734

/-! ## A189734.P2108789750033054449

`ogf((2+x)/(1-2x-5x^2))`
-/

namespace A189734.P2108789750033054449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -2, -5] n

end

end A189734.P2108789750033054449

namespace A189734

/-- `ogf((2+x)/(1-2x-5x^2))` -/
def P2108789750033054449.Spec : Prop :=
  ∀ n, P2108789750033054449.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P11765889954103416085

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A189734.P11765889954103416085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A189734.P11765889954103416085

namespace A189734

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P11765889954103416085.Spec : Prop :=
  ∀ n, P11765889954103416085.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P8613338060670094712

`A180168(n)+∑[A002533(n)]`
-/

namespace A189734.P8613338060670094712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189734.P8613338060670094712

namespace A189734

/-- `A180168(n)+∑[A002533(n)]` -/
def P8613338060670094712.Spec : Prop :=
  ∀ n, P8613338060670094712.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P856464072477870538

`A083695(n)+Δ[A083694(n)]`
-/

namespace A189734.P856464072477870538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + (f1 (n + 1) - f1 n)

end

end A189734.P856464072477870538

namespace A189734

/-- `A083695(n)+Δ[A083694(n)]` -/
def P856464072477870538.Spec : Prop :=
  ∀ n, P856464072477870538.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P847423181487474674

`Δ[A180168(n)]-A083695(n)`
-/

namespace A189734.P847423181487474674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083695 n

end

end A189734.P847423181487474674

namespace A189734

/-- `Δ[A180168(n)]-A083695(n)` -/
def P847423181487474674.Spec : Prop :=
  ∀ n, P847423181487474674.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P13594901263418031164

`A083694(n+1)+A002532(n)`
-/

namespace A189734.P13594901263418031164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 (n + 1) + A002532 n

end

end A189734.P13594901263418031164

namespace A189734

/-- `A083694(n+1)+A002532(n)` -/
def P13594901263418031164.Spec : Prop :=
  ∀ n, P13594901263418031164.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P2132204772997524073

`A180168(n)+A002532(n+1)`
-/

namespace A189734.P2132204772997524073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n + A002532 (n + 1)

end

end A189734.P2132204772997524073

namespace A189734

/-- `A180168(n)+A002532(n+1)` -/
def P2132204772997524073.Spec : Prop :=
  ∀ n, P2132204772997524073.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P4527725336708966477

`A083695(n+1)-A002533(n)`
-/

namespace A189734.P4527725336708966477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 (n + 1) - A002533 n

end

end A189734.P4527725336708966477

namespace A189734

/-- `A083695(n+1)-A002533(n)` -/
def P4527725336708966477.Spec : Prop :=
  ∀ n, P4527725336708966477.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P18127764694842502033

`A083695(n)+2*A002533(n)`
-/

namespace A189734.P18127764694842502033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + 2 * A002533 n

end

end A189734.P18127764694842502033

namespace A189734

/-- `A083695(n)+2*A002533(n)` -/
def P18127764694842502033.Spec : Prop :=
  ∀ n, P18127764694842502033.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P1879470048390445999

`2*A180168(n)-A002532(n)`
-/

namespace A189734.P1879470048390445999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180168 n - A002532 n

end

end A189734.P1879470048390445999

namespace A189734

/-- `2*A180168(n)-A002532(n)` -/
def P1879470048390445999.Spec : Prop :=
  ∀ n, P1879470048390445999.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P11468931575185765778

`A002532(n)+∑[2*A002533(n)]`
-/

namespace A189734.P11468931575185765778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189734.P11468931575185765778

namespace A189734

/-- `A002532(n)+∑[2*A002533(n)]` -/
def P11468931575185765778.Spec : Prop :=
  ∀ n, P11468931575185765778.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P16547055851013479809

`A002532(n)+2*A002532(n+1)`
-/

namespace A189734.P16547055851013479809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + 2 * A002532 (n + 1)

end

end A189734.P16547055851013479809

namespace A189734

/-- `A002532(n)+2*A002532(n+1)` -/
def P16547055851013479809.Spec : Prop :=
  ∀ n, P16547055851013479809.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P2914434204190190134

`Δ[A002532(n)]+A123011(n)-A002532(n)`
-/

namespace A189734.P2914434204190190134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A123011 n - A002532 n)

end

end A189734.P2914434204190190134

namespace A189734

/-- `Δ[A002532(n)]+A123011(n)-A002532(n)` -/
def P2914434204190190134.Spec : Prop :=
  ∀ n, P2914434204190190134.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P1519077800493707087

`A083695(n+1)+A002532(n)-A002532(n+1)`
-/

namespace A189734.P1519077800493707087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 (n + 1) + A002532 n - A002532 (n + 1)

end

end A189734.P1519077800493707087

namespace A189734

/-- `A083695(n+1)+A002532(n)-A002532(n+1)` -/
def P1519077800493707087.Spec : Prop :=
  ∀ n, P1519077800493707087.a n = A189734 (n + 1)

end A189734

/-! ## A189734.P15736538896054699575

`Δ[A123011(n)/2]`
-/

namespace A189734.P15736538896054699575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123011 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189734.P15736538896054699575

namespace A189734

/-- `Δ[A123011(n)/2]` -/
def P15736538896054699575.Spec : Prop :=
  ∀ n, P15736538896054699575.a n = (A189734 (n + 1) : ℚ)

end A189734

/-! ## A189734.P14775753458503336602

`Δ[A002533(n+1)/2-A002532(n)]`
-/

namespace A189734.P14775753458503336602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002533 (n + 1) : ℚ) / 2 - (A002532 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189734.P14775753458503336602

namespace A189734

/-- `Δ[A002533(n+1)/2-A002532(n)]` -/
def P14775753458503336602.Spec : Prop :=
  ∀ n, P14775753458503336602.a n = (A189734 (n + 1) : ℚ)

end A189734

/-! ## A189734.P15352866583971043922

`Δ[A002533(n+1)/2]-A002533(n)`
-/

namespace A189734.P15352866583971043922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002533 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A002533 n : ℚ)

end

end A189734.P15352866583971043922

namespace A189734

/-- `Δ[A002533(n+1)/2]-A002533(n)` -/
def P15352866583971043922.Spec : Prop :=
  ∀ n, P15352866583971043922.a n = (A189734 (n + 1) : ℚ)

end A189734

/-!
# A189735: a(1)=3, a(2)=1, a(n) = 3*a(n-1) + a(n-2).

The programs for A189735, the canonical program `A189735.P13860861591301041264` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189735 has offset 1).

The definition of A189735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A189735.P13860861591301041264`, by `A189735.P13860861591301041264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189735.P13860861591301041264

`3*a(n-1)+a(n-2)` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189735

/-- `3*a(n-1)+a(n-2)` -/
def P13860861591301041264.Spec : Prop :=
  ∀ n, (P13860861591301041264.a n : ℤ) = A189735 (n + 1)

theorem P13860861591301041264.correct : P13860861591301041264.Spec := by
  intro n
  simp only [A189735, Nat.add_sub_cancel]

end A189735

/-! ## A189735.P2184563826515555682

`ogf((-3+8x)/(-1+3x+x^2))`
-/

namespace A189735.P2184563826515555682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -3, -1] n

end

end A189735.P2184563826515555682

namespace A189735

/-- `ogf((-3+8x)/(-1+3x+x^2))` -/
def P2184563826515555682.Spec : Prop :=
  ∀ n, P2184563826515555682.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P1667961427445225266

`3*a(n-1)-floor(-a(n-2))` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A189735.P1667961427445225266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  3 * a (n - 1) - (-a (n - 2))

end

end A189735.P1667961427445225266

namespace A189735

/-- `3*a(n-1)-floor(-a(n-2))` -/
def P1667961427445225266.Spec : Prop :=
  ∀ n, P1667961427445225266.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P4265136087361846064

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A189735.P4265136087361846064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A189735.P4265136087361846064

namespace A189735

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P4265136087361846064.Spec : Prop :=
  ∀ n, P4265136087361846064.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P6565888242618577177

`a(n-2)+a(n-1)/(1-2/3)` with `a(0)=3, a(1)=1`
-/

namespace A189735.P6565888242618577177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A189735.P6565888242618577177

namespace A189735

/-- `a(n-2)+a(n-1)/(1-2/3)` -/
def P6565888242618577177.Spec : Prop :=
  ∀ n, P6565888242618577177.a n = (A189735 (n + 1) : ℚ)

end A189735

/-! ## A189735.P3323983203683308116

`lcm(3, a(n-1)+1)+a(n-2)-3` with `a(0)=3, a(1)=1`
-/

namespace A189735.P3323983203683308116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  (Int.lcm 3 (a (n - 1) + 1) : ℤ) + (a (n - 2) - 3)

end

end A189735.P3323983203683308116

namespace A189735

/-- `lcm(3, a(n-1)+1)+a(n-2)-3` -/
def P3323983203683308116.Spec : Prop :=
  ∀ n, P3323983203683308116.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P3843689165288794016

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A189735.P3843689165288794016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A189735.P3843689165288794016

namespace A189735

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P3843689165288794016.Spec : Prop :=
  ∀ n, (P3843689165288794016.a n : ℤ) = A189735 (n + 1)

theorem P3843689165288794016.correct : P3843689165288794016.Spec := by
  intro n
  simp only [A189735, Nat.add_sub_cancel, A189735.P3843689165288794016.a, A189735.P13860861591301041264.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189735

/-! ## A189735.P7460559020534340099

`A332060(n+2)+a(n-1)` with `a(0)=3, a(1)=1`
-/

namespace A189735.P7460559020534340099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A332060 (n + 2) + a (n - 1)

end

end A189735.P7460559020534340099

namespace A189735

/-- `A332060(n+2)+a(n-1)` -/
def P7460559020534340099.Spec : Prop :=
  ∀ n, P7460559020534340099.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P11805935614198439646

`A018186(xor(1, A004273(n)))`
-/

namespace A189735.P11805935614198439646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (Int.xor 1 (A004273 n)).toNat

end

end A189735.P11805935614198439646

namespace A189735

/-- `A018186(xor(1, A004273(n)))` -/
def P11805935614198439646.Spec : Prop :=
  ∀ n, P11805935614198439646.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P6455122451618668836

`2*A006497(n)-A108300(n)`
-/

namespace A189735.P6455122451618668836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006497 n - A108300 n

end

end A189735.P6455122451618668836

namespace A189735

/-- `2*A006497(n)-A108300(n)` -/
def P6455122451618668836.Spec : Prop :=
  ∀ n, P6455122451618668836.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P7772945956154066703

`A107855(2*(n+1))+Δ[Δ[A107855(2*(n+1))]]`
-/

namespace A189735.P7772945956154066703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A189735.P7772945956154066703

namespace A189735

/-- `A107855(2*(n+1))+Δ[Δ[A107855(2*(n+1))]]` -/
def P7772945956154066703.Spec : Prop :=
  ∀ n, P7772945956154066703.a n = A189735 (n + 1)

end A189735

/-! ## A189735.P15491186223317028921

`A018186(A114327(A000124(n))+n)`
-/

namespace A189735.P15491186223317028921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (A114327 (A000124 n).toNat + (n : ℤ)).toNat

end

end A189735.P15491186223317028921

namespace A189735

/-- `A018186(A114327(A000124(n))+n)` -/
def P15491186223317028921.Spec : Prop :=
  ∀ n, P15491186223317028921.a n = A189735 (n + 1)

end A189735

/-!
# A189736: a(1)=3, a(2)=2, a(n)=3*a(n-1) + 2*a(n-2).

The programs for A189736, the canonical program `A189736.P2213471092382747631` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189736 has offset 1).

The definition of A189736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)` (program `A189736.P2213471092382747631`, by `A189736.P2213471092382747631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189736.P2213471092382747631

`3*a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189736

/-- `3*a(n-1)+2*a(n-2)` -/
def P2213471092382747631.Spec : Prop :=
  ∀ n, (P2213471092382747631.a n : ℤ) = A189736 (n + 1)

theorem P2213471092382747631.correct : P2213471092382747631.Spec := by
  intro n
  simp only [A189736, Nat.add_sub_cancel]

end A189736

/-! ## A189736.P6295738945664945864

`ogf((-3+7x)/(-1+3x+2x^2))`
-/

namespace A189736.P6295738945664945864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -3, -2] n

end

end A189736.P6295738945664945864

namespace A189736

/-- `ogf((-3+7x)/(-1+3x+2x^2))` -/
def P6295738945664945864.Spec : Prop :=
  ∀ n, P6295738945664945864.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P12054456147220392535

`lcm(3, a(n-1)+a(n-2))-a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A189736.P12054456147220392535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  (Int.lcm 3 (a (n - 1) + a (n - 2)) : ℤ) - a (n - 2)

end

end A189736.P12054456147220392535

namespace A189736

/-- `lcm(3, a(n-1)+a(n-2))-a(n-2)` -/
def P12054456147220392535.Spec : Prop :=
  ∀ n, P12054456147220392535.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P12868714094539508484

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A189736.P12868714094539508484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A189736.P12868714094539508484

namespace A189736

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P12868714094539508484.Spec : Prop :=
  ∀ n, P12868714094539508484.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P2509904056977342317

`a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A189736.P2509904056977342317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A189736.P2509904056977342317

namespace A189736

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P2509904056977342317.Spec : Prop :=
  ∀ n, (P2509904056977342317.a n : ℤ) = A189736 (n + 1)

theorem P2509904056977342317.correct : P2509904056977342317.Spec := by
  intro n
  simp only [A189736, Nat.add_sub_cancel, A189736.P2509904056977342317.a, A189736.P2213471092382747631.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189736

/-! ## A189736.P150249807338603633

`A000038(n)+Δ[A322940(n)]`
-/

namespace A189736.P150249807338603633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A189736.P150249807338603633

namespace A189736

/-- `A000038(n)+Δ[A322940(n)]` -/
def P150249807338603633.Spec : Prop :=
  ∀ n, P150249807338603633.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P8374109381888656778

`A206776(n)+A206776(n)-A055099(n)`
-/

namespace A189736.P8374109381888656778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + (A206776 n - A055099 n)

end

end A189736.P8374109381888656778

namespace A189736

/-- `A206776(n)+A206776(n)-A055099(n)` -/
def P8374109381888656778.Spec : Prop :=
  ∀ n, P8374109381888656778.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P12257402735628898256

`Δ[A007483(n)-A206776(n)]`
-/

namespace A189736.P12257402735628898256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A206776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189736.P12257402735628898256

namespace A189736

/-- `Δ[A007483(n)-A206776(n)]` -/
def P12257402735628898256.Spec : Prop :=
  ∀ n, P12257402735628898256.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P1841870801937528137

`2*A206776(n)-A055099(n)`
-/

namespace A189736.P1841870801937528137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206776 n - A055099 n

end

end A189736.P1841870801937528137

namespace A189736

/-- `2*A206776(n)-A055099(n)` -/
def P1841870801937528137.Spec : Prop :=
  ∀ n, P1841870801937528137.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P4931394375779931200

`5*A104934(n)-A104934(n+1)`
-/

namespace A189736.P4931394375779931200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A104934 n - A104934 (n + 1)

end

end A189736.P4931394375779931200

namespace A189736

/-- `5*A104934(n)-A104934(n+1)` -/
def P4931394375779931200.Spec : Prop :=
  ∀ n, P4931394375779931200.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P758436916751859778

`Δ[Δ[A206776(n)-A007482(n)]]`
-/

namespace A189736.P758436916751859778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A007482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189736.P758436916751859778

namespace A189736

/-- `Δ[Δ[A206776(n)-A007482(n)]]` -/
def P758436916751859778.Spec : Prop :=
  ∀ n, P758436916751859778.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P10570821002716727783

`Δ[Δ[A052986(n)]-A206776(n)]`
-/

namespace A189736.P10570821002716727783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A206776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189736.P10570821002716727783

namespace A189736

/-- `Δ[Δ[A052986(n)]-A206776(n)]` -/
def P10570821002716727783.Spec : Prop :=
  ∀ n, P10570821002716727783.a n = A189736 (n + 1)

end A189736

/-! ## A189736.P15957245323293590148

`Δ[A189604(n+1)]-2*A189604(n+1)`
-/

namespace A189736.P15957245323293590148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A189604 (n + 1)

end

end A189736.P15957245323293590148

namespace A189736

/-- `Δ[A189604(n+1)]-2*A189604(n+1)` -/
def P15957245323293590148.Spec : Prop :=
  ∀ n, P15957245323293590148.a n = A189736 (n + 1)

end A189736

/-!
# A189737: a(1)=3, a(2)=3, a(n)=3*a(n-1) + 3*a(n-2).

The programs for A189737, the canonical program `A189737.P971851253199739709` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189737 has offset 1).

The definition of A189737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)` (program `A189737.P971851253199739709`, by `A189737.P971851253199739709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189737.P971851253199739709

`3*a(n-1)+3*a(n-2)` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189737

/-- `3*a(n-1)+3*a(n-2)` -/
def P971851253199739709.Spec : Prop :=
  ∀ n, (P971851253199739709.a n : ℤ) = A189737 (n + 1)

theorem P971851253199739709.correct : P971851253199739709.Spec := by
  intro n
  simp only [A189737, Nat.add_sub_cancel]

end A189737

/-! ## A189737.P7574351257127587724

`ogf((-3+6x)/(-1+3x+3x^2))`
-/

namespace A189737.P7574351257127587724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -3, -3] n

end

end A189737.P7574351257127587724

namespace A189737

/-- `ogf((-3+6x)/(-1+3x+3x^2))` -/
def P7574351257127587724.Spec : Prop :=
  ∀ n, P7574351257127587724.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P16504952403623249888

`3*(a(n-1)+a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A189737.P16504952403623249888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A189737.P16504952403623249888

namespace A189737

/-- `3*(a(n-1)+a(n-2))` -/
def P16504952403623249888.Spec : Prop :=
  ∀ n, (P16504952403623249888.a n : ℤ) = A189737 (n + 1)

theorem P16504952403623249888.correct : P16504952403623249888.Spec := by
  intro n
  simp only [A189737, Nat.add_sub_cancel, A189737.P16504952403623249888.a, A189737.P971851253199739709.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189737

/-! ## A189737.P11426060195449716032

`Δ[3*(a(n-1)-(1-a(n-2)))]` with `a(0)=0, a(1)=3`
-/

namespace A189737.P11426060195449716032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  3 * (f1 (n - 1) - (1 - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189737.P11426060195449716032

namespace A189737

/-- `Δ[3*(a(n-1)-(1-a(n-2)))]` -/
def P11426060195449716032.Spec : Prop :=
  ∀ n, P11426060195449716032.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P1533108642022708924

`3-3*(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A189737.P1533108642022708924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  3 - 3 * (1 - a (n - 1) - a (n - 2))

end

end A189737.P1533108642022708924

namespace A189737

/-- `3-3*(1-a(n-1)-a(n-2))` -/
def P1533108642022708924.Spec : Prop :=
  ∀ n, P1533108642022708924.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P3187642792822912428

`(a(n-1)+a(n-2))/(1-2/3)` with `a(0)=3, a(1)=3`
-/

namespace A189737.P3187642792822912428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (2 : ℚ) / 3)

end

end A189737.P3187642792822912428

namespace A189737

/-- `(a(n-1)+a(n-2))/(1-2/3)` -/
def P3187642792822912428.Spec : Prop :=
  ∀ n, P3187642792822912428.a n = (A189737 (n + 1) : ℚ)

end A189737

/-! ## A189737.P1707109657844536618

`3*A134927(n)`
-/

namespace A189737.P1707109657844536618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134927 n

end

end A189737.P1707109657844536618

namespace A189737

/-- `3*A134927(n)` -/
def P1707109657844536618.Spec : Prop :=
  ∀ n, P1707109657844536618.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P11238812272043018733

`A108306(n)-a(n-1)` with `a(0)=3`
-/

namespace A189737.P11238812272043018733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A108306 n - a (n - 1)

end

end A189737.P11238812272043018733

namespace A189737

/-- `A108306(n)-a(n-1)` -/
def P11238812272043018733.Spec : Prop :=
  ∀ n, P11238812272043018733.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P10288427887499009469

`A134927(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A189737.P10288427887499009469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A134927 (n + 1) - a (n - 1)

end

end A189737.P10288427887499009469

namespace A189737

/-- `A134927(n+1)-a(n-1)` -/
def P10288427887499009469.Spec : Prop :=
  ∀ n, P10288427887499009469.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P6571482361661100628

`Δ[A106435(n)]-A106435(n)`
-/

namespace A189737.P6571482361661100628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106435 n

end

end A189737.P6571482361661100628

namespace A189737

/-- `Δ[A106435(n)]-A106435(n)` -/
def P6571482361661100628.Spec : Prop :=
  ∀ n, P6571482361661100628.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P12626857467209296455

`3*(Δ[A030195(n)]-A030195(n))`
-/

namespace A189737.P12626857467209296455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n - A030195 n)

end

end A189737.P12626857467209296455

namespace A189737

/-- `3*(Δ[A030195(n)]-A030195(n))` -/
def P12626857467209296455.Spec : Prop :=
  ∀ n, P12626857467209296455.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P12533375818441941183

`A106435(n+1)-2*A106435(n)`
-/

namespace A189737.P12533375818441941183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 1) - 2 * A106435 n

end

end A189737.P12533375818441941183

namespace A189737

/-- `A106435(n+1)-2*A106435(n)` -/
def P12533375818441941183.Spec : Prop :=
  ∀ n, P12533375818441941183.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P654403667586534490

`A172012(n)+A172012(n)-A030195(n+1)`
-/

namespace A189737.P654403667586534490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172012 n + (A172012 n - A030195 (n + 1))

end

end A189737.P654403667586534490

namespace A189737

/-- `A172012(n)+A172012(n)-A030195(n+1)` -/
def P654403667586534490.Spec : Prop :=
  ∀ n, P654403667586534490.a n = A189737 (n + 1)

end A189737

/-! ## A189737.P15930476754198479777

`A125145(n+1)+A172012(n)-A172012(n+1)`
-/

namespace A189737.P15930476754198479777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125145 (n + 1) + (A172012 n - A172012 (n + 1))

end

end A189737.P15930476754198479777

namespace A189737

/-- `A125145(n+1)+A172012(n)-A172012(n+1)` -/
def P15930476754198479777.Spec : Prop :=
  ∀ n, P15930476754198479777.a n = A189737 (n + 1)

end A189737

/-!
# A189738: a(1)=3, a(2)=4, a(n) = 3*a(n-1) + 4*a(n-2).

The programs for A189738, the canonical program `A189738.P3636328894951579195` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189738 has offset 1).

The definition of A189738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A189738.P3636328894951579195`, by `A189738.P3636328894951579195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189738.P3636328894951579195

`3*a(n-1)+4*a(n-2)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189738

/-- `3*a(n-1)+4*a(n-2)` -/
def P3636328894951579195.Spec : Prop :=
  ∀ n, (P3636328894951579195.a n : ℤ) = A189738 (n + 1)

theorem P3636328894951579195.correct : P3636328894951579195.Spec := by
  intro n
  simp only [A189738, Nat.add_sub_cancel]

end A189738

/-! ## A189738.P15984444242475852717

`ogf((-3+5x)/(-1+3x+4x^2))`
-/

namespace A189738.P15984444242475852717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -3, -4] n

end

end A189738.P15984444242475852717

namespace A189738

/-- `ogf((-3+5x)/(-1+3x+4x^2))` -/
def P15984444242475852717.Spec : Prop :=
  ∀ n, P15984444242475852717.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P7715600540580320820

`abs(Δ[4*(2*n-a(n-1))])` with `a(0)=1`
-/

namespace A189738.P7715600540580320820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A189738.P7715600540580320820

namespace A189738

/-- `abs(Δ[4*(2*n-a(n-1))])` -/
def P7715600540580320820.Spec : Prop :=
  ∀ n, P7715600540580320820.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P16145000647367170934

`4*a(n-1)-(a(n-1)-4*a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A189738.P16145000647367170934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 4 * a (n - 2))

end

end A189738.P16145000647367170934

namespace A189738

/-- `4*a(n-1)-(a(n-1)-4*a(n-2))` -/
def P16145000647367170934.Spec : Prop :=
  ∀ n, P16145000647367170934.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P14867464491239865366

`A002042(n-1)-a(n-1)` with `a(0)=3`
-/

namespace A189738.P14867464491239865366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002042 (n - 1) - a (n - 1)

end

end A189738.P14867464491239865366

namespace A189738

/-- `A002042(n-1)-a(n-1)` -/
def P14867464491239865366.Spec : Prop :=
  ∀ n, P14867464491239865366.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P68870724943766436

`A004171(n)-(a(n-1)+4^(n-1))` with `a(0)=3`
-/

namespace A189738.P68870724943766436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A004171 n : ℚ) - (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A189738.P68870724943766436

namespace A189738

/-- `A004171(n)-(a(n-1)+4^(n-1))` -/
def P68870724943766436.Spec : Prop :=
  ∀ n, P68870724943766436.a n = (A189738 (n + 1) : ℚ)

end A189738

/-! ## A189738.P3351973691380465831

`A201455(n)+A102900(n)`
-/

namespace A189738.P3351973691380465831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201455 n + A102900 n

end

end A189738.P3351973691380465831

namespace A189738

/-- `A201455(n)+A102900(n)` -/
def P3351973691380465831.Spec : Prop :=
  ∀ n, P3351973691380465831.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P15812873432210320604

`Δ[A020988(n)-A109499(n)]`
-/

namespace A189738.P15812873432210320604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n - A109499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189738.P15812873432210320604

namespace A189738

/-- `Δ[A020988(n)-A109499(n)]` -/
def P15812873432210320604.Spec : Prop :=
  ∀ n, P15812873432210320604.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P4641755352772261919

`A330795(n+1)-A247281(n)`
-/

namespace A189738.P4641755352772261919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330795 (n + 1) - A247281 n

end

end A189738.P4641755352772261919

namespace A189738

/-- `A330795(n+1)-A247281(n)` -/
def P4641755352772261919.Spec : Prop :=
  ∀ n, P4641755352772261919.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P2003495791428393188

`A122117(n)+2*A102900(n)`
-/

namespace A189738.P2003495791428393188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122117 n + 2 * A102900 n

end

end A189738.P2003495791428393188

namespace A189738

/-- `A122117(n)+2*A102900(n)` -/
def P2003495791428393188.Spec : Prop :=
  ∀ n, P2003495791428393188.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P10285053750973235756

`2*A201455(n)-A122117(n)`
-/

namespace A189738.P10285053750973235756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201455 n - A122117 n

end

end A189738.P10285053750973235756

namespace A189738

/-- `2*A201455(n)-A122117(n)` -/
def P10285053750973235756.Spec : Prop :=
  ∀ n, P10285053750973235756.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P11427148596121354275

`A122803(n)²+2*A109499(n)`
-/

namespace A189738.P11427148596121354275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 + 2 * A109499 n

end

end A189738.P11427148596121354275

namespace A189738

/-- `A122803(n)²+2*A109499(n)` -/
def P11427148596121354275.Spec : Prop :=
  ∀ n, P11427148596121354275.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P12332482652381304313

`Δ[or(2*A015521(n), A015521(n))]`
-/

namespace A189738.P12332482652381304313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A015521 n) (A015521 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189738.P12332482652381304313

namespace A189738

/-- `Δ[or(2*A015521(n), A015521(n))]` -/
def P12332482652381304313.Spec : Prop :=
  ∀ n, P12332482652381304313.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P11215574030681187125

`A122803(n)²+2*A118405(2*n)`
-/

namespace A189738.P11215574030681187125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 + 2 * A118405 (2 * n)

end

end A189738.P11215574030681187125

namespace A189738

/-- `A122803(n)²+2*A118405(2*n)` -/
def P11215574030681187125.Spec : Prop :=
  ∀ n, P11215574030681187125.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P16274763409531712283

`A139800(2*n)+A139763(2*n+1)`
-/

namespace A189738.P16274763409531712283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (2 * n) + A139763 (2 * n + 1)

end

end A189738.P16274763409531712283

namespace A189738

/-- `A139800(2*n)+A139763(2*n+1)` -/
def P16274763409531712283.Spec : Prop :=
  ∀ n, P16274763409531712283.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P519150739367584031

`A100088(2*n)+2*A007909(2*n)`
-/

namespace A189738.P519150739367584031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100088 (2 * n) + 2 * A007909 (2 * n)

end

end A189738.P519150739367584031

namespace A189738

/-- `A100088(2*n)+2*A007909(2*n)` -/
def P519150739367584031.Spec : Prop :=
  ∀ n, P519150739367584031.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P5937991302576436434

`A122803(2*n)+2*A118405(2*n)`
-/

namespace A189738.P5937991302576436434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n) + 2 * A118405 (2 * n)

end

end A189738.P5937991302576436434

namespace A189738

/-- `A122803(2*n)+2*A118405(2*n)` -/
def P5937991302576436434.Spec : Prop :=
  ∀ n, P5937991302576436434.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P2222422807998980712

`A011782(n+1)²+2*A118405(2*n)`
-/

namespace A189738.P2222422807998980712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + 2 * A118405 (2 * n)

end

end A189738.P2222422807998980712

namespace A189738

/-- `A011782(n+1)²+2*A118405(2*n)` -/
def P2222422807998980712.Spec : Prop :=
  ∀ n, P2222422807998980712.a n = A189738 (n + 1)

end A189738

/-! ## A189738.P5371778136610219886

`A118405(2*n)-Δ[A118405(2*n+1)]`
-/

namespace A189738.P5371778136610219886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 (2 * n) - (f1 (n + 1) - f1 n)

end

end A189738.P5371778136610219886

namespace A189738

/-- `A118405(2*n)-Δ[A118405(2*n+1)]` -/
def P5371778136610219886.Spec : Prop :=
  ∀ n, P5371778136610219886.a n = A189738 (n + 1)

end A189738

/-!
# A189739: a(1)=3, a(2)=5, a(n)=3*a(n-1) + 5*a(n-2).

The programs for A189739, the canonical program `A189739.P16976739166208936787` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189739 has offset 1).

The definition of A189739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+5*a(n-2)` (program `A189739.P16976739166208936787`, by `A189739.P16976739166208936787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189739.P16976739166208936787

`3*a(n-1)+5*a(n-2)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189739

/-- `3*a(n-1)+5*a(n-2)` -/
def P16976739166208936787.Spec : Prop :=
  ∀ n, (P16976739166208936787.a n : ℤ) = A189739 (n + 1)

theorem P16976739166208936787.correct : P16976739166208936787.Spec := by
  intro n
  simp only [A189739, Nat.add_sub_cancel]

end A189739

/-! ## A189739.P1544698244702423715

`ogf((-3+4x)/(-1+3x+5x^2))`
-/

namespace A189739.P1544698244702423715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -3, -5] n

end

end A189739.P1544698244702423715

namespace A189739

/-- `ogf((-3+4x)/(-1+3x+5x^2))` -/
def P1544698244702423715.Spec : Prop :=
  ∀ n, P1544698244702423715.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P4664454797486796008

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A189739.P4664454797486796008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A189739.P4664454797486796008

namespace A189739

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P4664454797486796008.Spec : Prop :=
  ∀ n, P4664454797486796008.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P16512089664545007027

`A197189(n)+A072263(n)`
-/

namespace A189739.P16512089664545007027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197189 n + A072263 n

end

end A189739.P16512089664545007027

namespace A189739

/-- `A197189(n)+A072263(n)` -/
def P16512089664545007027.Spec : Prop :=
  ∀ n, P16512089664545007027.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P9287019217135417767

`A072263(n)+Δ[A015523(n)]`
-/

namespace A189739.P9287019217135417767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 n + (f1 (n + 1) - f1 n)

end

end A189739.P9287019217135417767

namespace A189739

/-- `A072263(n)+Δ[A015523(n)]` -/
def P9287019217135417767.Spec : Prop :=
  ∀ n, P9287019217135417767.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P2551442475071852176

`A072264(n)+2*A197189(n)`
-/

namespace A189739.P2551442475071852176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n + 2 * A197189 n

end

end A189739.P2551442475071852176

namespace A189739

/-- `A072264(n)+2*A197189(n)` -/
def P2551442475071852176.Spec : Prop :=
  ∀ n, P2551442475071852176.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P11742510507834029067

`2*A072263(n)-A072264(n)`
-/

namespace A189739.P11742510507834029067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072263 n - A072264 n

end

end A189739.P11742510507834029067

namespace A189739

/-- `2*A072263(n)-A072264(n)` -/
def P11742510507834029067.Spec : Prop :=
  ∀ n, P11742510507834029067.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P12120993676709513364

`A015523(n+1)+2*A072264(n)`
-/

namespace A189739.P12120993676709513364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 (n + 1) + 2 * A072264 n

end

end A189739.P12120993676709513364

namespace A189739

/-- `A015523(n+1)+2*A072264(n)` -/
def P12120993676709513364.Spec : Prop :=
  ∀ n, P12120993676709513364.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P5479007360896343040

`A015523(n)+A072264(n)+A072263(n)`
-/

namespace A189739.P5479007360896343040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 n + (A072264 n + A072263 n)

end

end A189739.P5479007360896343040

namespace A189739

/-- `A015523(n)+A072264(n)+A072263(n)` -/
def P5479007360896343040.Spec : Prop :=
  ∀ n, P5479007360896343040.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P4439717201218691333

`A015523(n+1)+A072263(n)-A015523(n)`
-/

namespace A189739.P4439717201218691333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 (n + 1) + (A072263 n - A015523 n)

end

end A189739.P4439717201218691333

namespace A189739

/-- `A015523(n+1)+A072263(n)-A015523(n)` -/
def P4439717201218691333.Spec : Prop :=
  ∀ n, P4439717201218691333.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P7021141596513219270

`A152187(n+1)+A179606(n)-A072263(n+1)`
-/

namespace A189739.P7021141596513219270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 (n + 1) + (A179606 n - A072263 (n + 1))

end

end A189739.P7021141596513219270

namespace A189739

/-- `A152187(n+1)+A179606(n)-A072263(n+1)` -/
def P7021141596513219270.Spec : Prop :=
  ∀ n, P7021141596513219270.a n = A189739 (n + 1)

end A189739

/-! ## A189739.P1506997199341440536

`A152187(n+1)+A072263(n)-A180140(n+1)`
-/

namespace A189739.P1506997199341440536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 (n + 1) + (A072263 n - A180140 (n + 1))

end

end A189739.P1506997199341440536

namespace A189739

/-- `A152187(n+1)+A072263(n)-A180140(n+1)` -/
def P1506997199341440536.Spec : Prop :=
  ∀ n, P1506997199341440536.a n = A189739 (n + 1)

end A189739

/-!
# A189740: Partial sums of tetranacci numbers (A000288).

The programs for A189740, the canonical program `A189740.P15535423140695463879` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189740 has offset 1).

The definition of A189740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189740.P15535423140695463879

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189740

/-- `2*a(n-1)-a(n-5)` -/
def P15535423140695463879.Spec : Prop :=
  ∀ n, P15535423140695463879.a n = A189740 (n + 1)

theorem P15535423140695463879.correct : P15535423140695463879.Spec := by
  intro n
  simp only [A189740, Nat.add_sub_cancel]

end A189740

/-! ## A189740.P482242806466835346

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=8`
-/

namespace A189740.P482242806466835346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 8] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A189740.P482242806466835346

namespace A189740

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P482242806466835346.Spec : Prop :=
  ∀ n, P482242806466835346.a n = A189740 (n + 1)

theorem P482242806466835346.correct : P482242806466835346.Spec := by
  intro n
  simp only [A189740, Nat.add_sub_cancel, A189740.P482242806466835346.a, A189740.P15535423140695463879.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189740

/-! ## A189740.P5014899593930463856

`∑[A000288(n)]`
-/

namespace A189740.P5014899593930463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P5014899593930463856

namespace A189740

/-- `∑[A000288(n)]` -/
def P5014899593930463856.Spec : Prop :=
  ∀ n, P5014899593930463856.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P6870468793894261059

`∑[A251705(n)+A000078(n)]`
-/

namespace A189740.P6870468793894261059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n + A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P6870468793894261059

namespace A189740

/-- `∑[A251705(n)+A000078(n)]` -/
def P6870468793894261059.Spec : Prop :=
  ∀ n, P6870468793894261059.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P16005537082654301221

`∑[A251704(n)+A001631(n)]`
-/

namespace A189740.P16005537082654301221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n + A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P16005537082654301221

namespace A189740

/-- `∑[A251704(n)+A001631(n)]` -/
def P16005537082654301221.Spec : Prop :=
  ∀ n, P16005537082654301221.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P9924651993184375361

`∑[A251703(n)+∑[A001631(n)]]`
-/

namespace A189740.P9924651993184375361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P9924651993184375361

namespace A189740

/-- `∑[A251703(n)+∑[A001631(n)]]` -/
def P9924651993184375361.Spec : Prop :=
  ∀ n, P9924651993184375361.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P4430650831528691751

`∑[A251656(n)+A001631(n+1)]`
-/

namespace A189740.P4430650831528691751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 n + A001631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P4430650831528691751

namespace A189740

/-- `∑[A251656(n)+A001631(n+1)]` -/
def P4430650831528691751.Spec : Prop :=
  ∀ n, P4430650831528691751.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P12508936601825377828

`∑[A135492(n+1)-A001648(n+1)]`
-/

namespace A189740.P12508936601825377828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 1) - A001648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P12508936601825377828

namespace A189740

/-- `∑[A135492(n+1)-A001648(n+1)]` -/
def P12508936601825377828.Spec : Prop :=
  ∀ n, P12508936601825377828.a n = A189740 (n + 1)

end A189740

/-! ## A189740.P12074323118425432515

`∑[A135492(n+1)-A073817(n+1)]`
-/

namespace A189740.P12074323118425432515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 1) - A073817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189740.P12074323118425432515

namespace A189740

/-- `∑[A135492(n+1)-A073817(n+1)]` -/
def P12074323118425432515.Spec : Prop :=
  ∀ n, P12074323118425432515.a n = A189740 (n + 1)

end A189740

/-!
# A189741: a(1)=4, a(2)=2, a(n) = 4*a(n-1) + 2*a(n-2).

The programs for A189741, the canonical program `A189741.P16514130290615234837` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189741 has offset 1).

The definition of A189741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*a(n-2)` (program `A189741.P16514130290615234837`, by `A189741.P16514130290615234837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189741.P16514130290615234837

`4*a(n-1)+2*a(n-2)` with `a(0)=4, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189741

/-- `4*a(n-1)+2*a(n-2)` -/
def P16514130290615234837.Spec : Prop :=
  ∀ n, (P16514130290615234837.a n : ℤ) = A189741 (n + 1)

theorem P16514130290615234837.correct : P16514130290615234837.Spec := by
  intro n
  simp only [A189741, Nat.add_sub_cancel]

end A189741

/-! ## A189741.P13148374078393888018

`ogf((-4+14x)/(-1+4x+2x^2))`
-/

namespace A189741.P13148374078393888018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -14] [1, -4, -2] n

end

end A189741.P13148374078393888018

namespace A189741

/-- `ogf((-4+14x)/(-1+4x+2x^2))` -/
def P13148374078393888018.Spec : Prop :=
  ∀ n, P13148374078393888018.a n = A189741 (n + 1)

end A189741

/-! ## A189741.P10407877746542163792

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=4, a(1)=2`
-/

namespace A189741.P10407877746542163792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A189741.P10407877746542163792

namespace A189741

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P10407877746542163792.Spec : Prop :=
  ∀ n, P10407877746542163792.a n = A189741 (n + 1)

end A189741

/-! ## A189741.P15225718974698702859

`(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` with `a(0)=4, a(1)=2`
-/

namespace A189741.P15225718974698702859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n a =>
  (a (n - 1) + (a (n - 1) + a (n - 2))) / (1 - (1 : ℚ) / 2)

end

end A189741.P15225718974698702859

namespace A189741

/-- `(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` -/
def P15225718974698702859.Spec : Prop :=
  ∀ n, P15225718974698702859.a n = (A189741 (n + 1) : ℚ)

end A189741

/-! ## A189741.P195188769404440492

`A105397(A004273(n))*A335749(A004273(n)-n)`
-/

namespace A189741.P195188769404440492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 (A004273 n).toNat * A335749 (A004273 n - (n : ℤ)).toNat

end

end A189741.P195188769404440492

namespace A189741

/-- `A105397(A004273(n))*A335749(A004273(n)-n)` -/
def P195188769404440492.Spec : Prop :=
  ∀ n, P195188769404440492.a n = A189741 (n + 1)

end A189741

/-! ## A189741.P6752824195386149304

`5*A084059(n)-A335749(n)`
-/

namespace A189741.P6752824195386149304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A084059 n - A335749 n

end

end A189741.P6752824195386149304

namespace A189741

/-- `5*A084059(n)-A335749(n)` -/
def P6752824195386149304.Spec : Prop :=
  ∀ n, P6752824195386149304.a n = A189741 (n + 1)

end A189741

/-! ## A189741.P12987516549928705840

`(A090017(n+2)+A090017(n+8))%A090017(n+4)`
-/

namespace A189741.P12987516549928705840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090017 (n + 2) + A090017 (n + 8)) (A090017 (n + 4))

end

end A189741.P12987516549928705840

namespace A189741

/-- `(A090017(n+2)+A090017(n+8))%A090017(n+4)` -/
def P12987516549928705840.Spec : Prop :=
  ∀ n, P12987516549928705840.a n = A189741 (n + 1)

end A189741

/-!
# A189742: a(1)=4, a(2)=3, a(n) = 4*a(n-1) + 3*a(n-2).

The programs for A189742, the canonical program `A189742.P12573764571900180431` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189742 has offset 1).

The definition of A189742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A189742.P12573764571900180431`, by `A189742.P12573764571900180431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189742.P12573764571900180431

`4*a(n-1)+3*a(n-2)` with `a(0)=4, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189742

/-- `4*a(n-1)+3*a(n-2)` -/
def P12573764571900180431.Spec : Prop :=
  ∀ n, (P12573764571900180431.a n : ℤ) = A189742 (n + 1)

theorem P12573764571900180431.correct : P12573764571900180431.Spec := by
  intro n
  simp only [A189742, Nat.add_sub_cancel]

end A189742

/-! ## A189742.P264423474777509676

`ogf((-4+13x)/(-1+4x+3x^2))`
-/

namespace A189742.P264423474777509676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -13] [1, -4, -3] n

end

end A189742.P264423474777509676

namespace A189742

/-- `ogf((-4+13x)/(-1+4x+3x^2))` -/
def P264423474777509676.Spec : Prop :=
  ∀ n, P264423474777509676.a n = A189742 (n + 1)

end A189742

/-! ## A189742.P12275000108448035245

`lcm(4, a(n-1)+a(n-2))-a(n-2)` with `a(0)=4, a(1)=3`
-/

namespace A189742.P12275000108448035245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  (Int.lcm 4 (a (n - 1) + a (n - 2)) : ℤ) - a (n - 2)

end

end A189742.P12275000108448035245

namespace A189742

/-- `lcm(4, a(n-1)+a(n-2))-a(n-2)` -/
def P12275000108448035245.Spec : Prop :=
  ∀ n, P12275000108448035245.a n = A189742 (n + 1)

end A189742

/-! ## A189742.P11934642049521508171

`4*a(n-1)-(a(n-2)-4*a(n-2))` with `a(0)=4, a(1)=3`
-/

namespace A189742.P11934642049521508171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  4 * a (n - 1) - (a (n - 2) - 4 * a (n - 2))

end

end A189742.P11934642049521508171

namespace A189742

/-- `4*a(n-1)-(a(n-2)-4*a(n-2))` -/
def P11934642049521508171.Spec : Prop :=
  ∀ n, P11934642049521508171.a n = A189742 (n + 1)

end A189742

/-! ## A189742.P3881300433678484481

`4*A086901(n+1)-A015530(n)`
-/

namespace A189742.P3881300433678484481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086901 (n + 1) - A015530 n

end

end A189742.P3881300433678484481

namespace A189742

/-- `4*A086901(n+1)-A015530(n)` -/
def P3881300433678484481.Spec : Prop :=
  ∀ n, P3881300433678484481.a n = A189742 (n + 1)

end A189742

/-! ## A189742.P7741881716138192634

`5*A086901(n+1)-A108851(n)`
-/

namespace A189742.P7741881716138192634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A086901 (n + 1) - A108851 n

end

end A189742.P7741881716138192634

namespace A189742

/-- `5*A086901(n+1)-A108851(n)` -/
def P7741881716138192634.Spec : Prop :=
  ∀ n, P7741881716138192634.a n = A189742 (n + 1)

end A189742

/-!
# A189743: a(1)=4, a(2)=4, a(n) = 4*a(n-1) + 4*a(n-2).

The programs for A189743, the canonical program `A189743.P17652987816876010608` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189743 has offset 1).

The definition of A189743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A189743.P17652987816876010608`, by `A189743.P17652987816876010608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189743.P17652987816876010608

`4*a(n-1)+4*a(n-2)` with `a(0)=4, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189743

/-- `4*a(n-1)+4*a(n-2)` -/
def P17652987816876010608.Spec : Prop :=
  ∀ n, (P17652987816876010608.a n : ℤ) = A189743 (n + 1)

theorem P17652987816876010608.correct : P17652987816876010608.Spec := by
  intro n
  simp only [A189743, Nat.add_sub_cancel]

end A189743

/-! ## A189743.P566801344144364704

`ogf((-4+12x)/(-1+4x+4x^2))`
-/

namespace A189743.P566801344144364704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -12] [1, -4, -4] n

end

end A189743.P566801344144364704

namespace A189743

/-- `ogf((-4+12x)/(-1+4x+4x^2))` -/
def P566801344144364704.Spec : Prop :=
  ∀ n, P566801344144364704.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P14809685999201622112

`4*(a(n-1)+a(n-2))` with `a(0)=4, a(1)=4`
-/

namespace A189743.P14809685999201622112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A189743.P14809685999201622112

namespace A189743

/-- `4*(a(n-1)+a(n-2))` -/
def P14809685999201622112.Spec : Prop :=
  ∀ n, (P14809685999201622112.a n : ℤ) = A189743 (n + 1)

theorem P14809685999201622112.correct : P14809685999201622112.Spec := by
  intro n
  simp only [A189743, Nat.add_sub_cancel, A189743.P14809685999201622112.a, A189743.P17652987816876010608.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189743

/-! ## A189743.P17903647103530054160

`4*(a(n-1)-round(-a(n-2)))` with `a(0)=4, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A189743.P17903647103530054160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A189743.P17903647103530054160

namespace A189743

/-- `4*(a(n-1)-round(-a(n-2)))` -/
def P17903647103530054160.Spec : Prop :=
  ∀ n, P17903647103530054160.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P3960496206752416179

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=4, a(1)=4`
-/

namespace A189743.P3960496206752416179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A189743.P3960496206752416179

namespace A189743

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P3960496206752416179.Spec : Prop :=
  ∀ n, P3960496206752416179.a n = (A189743 (n + 1) : ℚ)

end A189743

/-! ## A189743.P7096073632356567095

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=4, a(1)=4`
-/

namespace A189743.P7096073632356567095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A189743.P7096073632356567095

namespace A189743

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P7096073632356567095.Spec : Prop :=
  ∀ n, P7096073632356567095.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P6183706326606615718

`Δ[A135532(n)]*A000079(n)`
-/

namespace A189743.P6183706326606615718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A189743.P6183706326606615718

namespace A189743

/-- `Δ[A135532(n)]*A000079(n)` -/
def P6183706326606615718.Spec : Prop :=
  ∀ n, P6183706326606615718.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P4117246457403586940

`2*(A094013(n)+A084128(n))`
-/

namespace A189743.P4117246457403586940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094013 n + A084128 n)

end

end A189743.P4117246457403586940

namespace A189743

/-- `2*(A094013(n)+A084128(n))` -/
def P4117246457403586940.Spec : Prop :=
  ∀ n, P4117246457403586940.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P14001299667696431502

`A170931(n)+2*A094013(n)`
-/

namespace A189743.P14001299667696431502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 n + 2 * A094013 n

end

end A189743.P14001299667696431502

namespace A189743

/-- `A170931(n)+2*A094013(n)` -/
def P14001299667696431502.Spec : Prop :=
  ∀ n, P14001299667696431502.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P1597715844029012326

`A143095(2*(n+1))*A266504(2*n)`
-/

namespace A189743.P1597715844029012326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (2 * (n + 1)) * A266504 (2 * n)

end

end A189743.P1597715844029012326

namespace A189743

/-- `A143095(2*(n+1))*A266504(2*n)` -/
def P1597715844029012326.Spec : Prop :=
  ∀ n, P1597715844029012326.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P17594094575877260475

`A162255(2*(n+1))*A266504(2*n)`
-/

namespace A189743.P17594094575877260475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162255 (2 * (n + 1)) * A266504 (2 * n)

end

end A189743.P17594094575877260475

namespace A189743

/-- `A162255(2*(n+1))*A266504(2*n)` -/
def P17594094575877260475.Spec : Prop :=
  ∀ n, P17594094575877260475.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P4439256147277864293

`2*A143095(2*n)*A266504(2*n)`
-/

namespace A189743.P4439256147277864293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143095 (2 * n) * A266504 (2 * n))

end

end A189743.P4439256147277864293

namespace A189743

/-- `2*A143095(2*n)*A266504(2*n)` -/
def P4439256147277864293.Spec : Prop :=
  ∀ n, P4439256147277864293.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P3018866141689778503

`(A002203(n)-A000129(n))*A000079(n+1)`
-/

namespace A189743.P3018866141689778503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002203 n - A000129 n) * A000079 (n + 1)

end

end A189743.P3018866141689778503

namespace A189743

/-- `(A002203(n)-A000129(n))*A000079(n+1)` -/
def P3018866141689778503.Spec : Prop :=
  ∀ n, P3018866141689778503.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P11432961025337281304

`(A135532(n+1)-A135532(n))*A000079(n)`
-/

namespace A189743.P11432961025337281304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135532 (n + 1) - A135532 n) * A000079 n

end

end A189743.P11432961025337281304

namespace A189743

/-- `(A135532(n+1)-A135532(n))*A000079(n)` -/
def P11432961025337281304.Spec : Prop :=
  ∀ n, P11432961025337281304.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P3163553103554699711

`A164545(n)-a(n-1)` with `a(0)=4`
-/

namespace A189743.P3163553103554699711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A164545 n - a (n - 1)

end

end A189743.P3163553103554699711

namespace A189743

/-- `A164545(n)-a(n-1)` -/
def P3163553103554699711.Spec : Prop :=
  ∀ n, P3163553103554699711.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P8327237690867371646

`Δ[A106568(n)]-2*A106568(n)`
-/

namespace A189743.P8327237690867371646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A106568 n

end

end A189743.P8327237690867371646

namespace A189743

/-- `Δ[A106568(n)]-2*A106568(n)` -/
def P8327237690867371646.Spec : Prop :=
  ∀ n, P8327237690867371646.a n = A189743 (n + 1)

end A189743

/-! ## A189743.P7931378956210287248

`A084128(n)+Δ[A106568(n)-A084128(n)]`
-/

namespace A189743.P7931378956210287248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n - A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n + (f1 (n + 1) - f1 n)

end

end A189743.P7931378956210287248

namespace A189743

/-- `A084128(n)+Δ[A106568(n)-A084128(n)]` -/
def P7931378956210287248.Spec : Prop :=
  ∀ n, P7931378956210287248.a n = A189743 (n + 1)

end A189743

/-!
# A189744: a(1)=4, a(2)=5, a(n) = 4*a(n-1) + 5*a(n-2).

The programs for A189744, the canonical program `A189744.P9779436749627559536` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189744 has offset 1).

The definition of A189744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+5*a(n-2)` (program `A189744.P9779436749627559536`, by `A189744.P9779436749627559536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189744.P9779436749627559536

`4*a(n-1)+5*a(n-2)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189744

/-- `4*a(n-1)+5*a(n-2)` -/
def P9779436749627559536.Spec : Prop :=
  ∀ n, (P9779436749627559536.a n : ℤ) = A189744 (n + 1)

theorem P9779436749627559536.correct : P9779436749627559536.Spec := by
  intro n
  simp only [A189744, Nat.add_sub_cancel]

end A189744

/-! ## A189744.P14334875442896294007

`5/2*(-1)^n+3/2*5^n`
-/

namespace A189744.P14334875442896294007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * ((-1) ^ n : ℚ) + (3 : ℚ) / 2 * (5 ^ n : ℚ)

end

end A189744.P14334875442896294007

namespace A189744

/-- `5/2*(-1)^n+3/2*5^n` -/
def P14334875442896294007.Spec : Prop :=
  ∀ n, P14334875442896294007.a n = (A189744 (n + 1) : ℚ)

theorem P14334875442896294007.correct : P14334875442896294007.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A189744, Nat.add_sub_cancel, A189744.P14334875442896294007.a, A189744.P9779436749627559536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A189744, Nat.add_sub_cancel, A189744.P14334875442896294007.a, A189744.P9779436749627559536.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A189744

/-! ## A189744.P17874259898635976531

`ogf((-4+11x)/(-1+4x+5x^2))`
-/

namespace A189744.P17874259898635976531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -11] [1, -4, -5] n

end

end A189744.P17874259898635976531

namespace A189744

/-- `ogf((-4+11x)/(-1+4x+5x^2))` -/
def P17874259898635976531.Spec : Prop :=
  ∀ n, P17874259898635976531.a n = A189744 (n + 1)

end A189744

/-! ## A189744.P15310279122950449191

`lcm(5, xor(3, -a(n-1)))` with `a(0)=4`
-/

namespace A189744.P15310279122950449191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 5 (Int.xor 3 (-(a (n - 1) : ℤ)))

end

end A189744.P15310279122950449191

namespace A189744

/-- `lcm(5, xor(3, -a(n-1)))` -/
def P15310279122950449191.Spec : Prop :=
  ∀ n, (P15310279122950449191.a n : ℤ) = A189744 (n + 1)

end A189744

/-! ## A189744.P14677978037823196301

`abs(5*xor(3, -a(n-1)))` with `a(0)=4`
-/

namespace A189744.P14677978037823196301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |5 * Int.xor 3 (-a (n - 1))|

end

end A189744.P14677978037823196301

namespace A189744

/-- `abs(5*xor(3, -a(n-1)))` -/
def P14677978037823196301.Spec : Prop :=
  ∀ n, P14677978037823196301.a n = A189744 (n + 1)

end A189744

/-! ## A189744.P4548394888709662887

`-(5*xor(3, -a(n-1)))` with `a(0)=4`
-/

namespace A189744.P4548394888709662887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -(5 * Int.xor 3 (-a (n - 1)))

end

end A189744.P4548394888709662887

namespace A189744

/-- `-(5*xor(3, -a(n-1)))` -/
def P4548394888709662887.Spec : Prop :=
  ∀ n, P4548394888709662887.a n = A189744 (n + 1)

end A189744

/-!
# A189745: a(n) = 5*a(n-1) + a(n-2); with a(1)=5, a(2)=1.

The programs for A189745, the canonical program `A189745.P14280731684269814340` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189745 has offset 1).

The definition of A189745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)` (program `A189745.P14280731684269814340`, by `A189745.P14280731684269814340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189745.P14280731684269814340

`5*a(n-1)+a(n-2)` with `a(0)=5, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189745

/-- `5*a(n-1)+a(n-2)` -/
def P14280731684269814340.Spec : Prop :=
  ∀ n, (P14280731684269814340.a n : ℤ) = A189745 (n + 1)

theorem P14280731684269814340.correct : P14280731684269814340.Spec := by
  intro n
  simp only [A189745, Nat.add_sub_cancel]

end A189745

/-! ## A189745.P1359372703127381313

`ogf((-5+24x)/(-1+5x+x^2))`
-/

namespace A189745.P1359372703127381313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -24] [1, -5, -1] n

end

end A189745.P1359372703127381313

namespace A189745

/-- `ogf((-5+24x)/(-1+5x+x^2))` -/
def P1359372703127381313.Spec : Prop :=
  ∀ n, P1359372703127381313.a n = A189745 (n + 1)

end A189745

/-! ## A189745.P9380017154036901077

`a(n-2)-5*floor(-a(n-1))` with `a(0)=5, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A189745.P9380017154036901077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n a =>
  a (n - 2) - 5 * (-a (n - 1))

end

end A189745.P9380017154036901077

namespace A189745

/-- `a(n-2)-5*floor(-a(n-1))` -/
def P9380017154036901077.Spec : Prop :=
  ∀ n, P9380017154036901077.a n = A189745 (n + 1)

end A189745

/-! ## A189745.P1360206154570196855

`6*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=5, a(1)=1`
-/

namespace A189745.P1360206154570196855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n a =>
  6 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A189745.P1360206154570196855

namespace A189745

/-- `6*a(n-1)-(a(n-1)-a(n-2))` -/
def P1360206154570196855.Spec : Prop :=
  ∀ n, P1360206154570196855.a n = A189745 (n + 1)

end A189745

/-! ## A189745.P5971583375670563077

`a(A289207(n))+5*a(n-1)` with `a(0)=5, a(1)=1`
-/

namespace A189745.P5971583375670563077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n a =>
  a (A289207 n).toNat + 5 * a (n - 1)

end

end A189745.P5971583375670563077

namespace A189745

/-- `a(A289207(n))+5*a(n-1)` -/
def P5971583375670563077.Spec : Prop :=
  ∀ n, (P5971583375670563077.a n : ℤ) = A189745 (n + 1)

end A189745

/-! ## A189745.P1531991224435058550

`6*A015449(n)-A052918(n)`
-/

namespace A189745.P1531991224435058550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015449 n - A052918 n

end

end A189745.P1531991224435058550

namespace A189745

/-- `6*A015449(n)-A052918(n)` -/
def P1531991224435058550.Spec : Prop :=
  ∀ n, P1531991224435058550.a n = A189745 (n + 1)

end A189745

/-!
# A189746: a(1)=5, a(2)=2, a(n) = 5*a(n-1) + 2*a(n-2).

The programs for A189746, the canonical program `A189746.P3647398663826790762` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189746 has offset 1).

The definition of A189746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+2*a(n-2)` (program `A189746.P3647398663826790762`, by `A189746.P3647398663826790762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189746.P3647398663826790762

`5*a(n-1)+2*a(n-2)` with `a(0)=5, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189746

/-- `5*a(n-1)+2*a(n-2)` -/
def P3647398663826790762.Spec : Prop :=
  ∀ n, (P3647398663826790762.a n : ℤ) = A189746 (n + 1)

theorem P3647398663826790762.correct : P3647398663826790762.Spec := by
  intro n
  simp only [A189746, Nat.add_sub_cancel]

end A189746

/-! ## A189746.P9808356983114341885

`ogf((-5+23x)/(-1+5x+2x^2))`
-/

namespace A189746.P9808356983114341885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -23] [1, -5, -2] n

end

end A189746.P9808356983114341885

namespace A189746

/-- `ogf((-5+23x)/(-1+5x+2x^2))` -/
def P9808356983114341885.Spec : Prop :=
  ∀ n, P9808356983114341885.a n = A189746 (n + 1)

end A189746

/-! ## A189746.P5794510851824699254

`7*A124610(n)-A327765(n)`
-/

namespace A189746.P5794510851824699254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A124610 n - A327765 n

end

end A189746.P5794510851824699254

namespace A189746

/-- `7*A124610(n)-A327765(n)` -/
def P5794510851824699254.Spec : Prop :=
  ∀ n, P5794510851824699254.a n = A189746 (n + 1)

end A189746

/-! ## A189746.P13428362720449557620

`A004277(a(n-2))+5*a(n-1)` with `a(0)=5, a(1)=2`
-/

namespace A189746.P13428362720449557620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  A004277 (a (n - 2)).toNat + 5 * a (n - 1)

end

end A189746.P13428362720449557620

namespace A189746

/-- `A004277(a(n-2))+5*a(n-1)` -/
def P13428362720449557620.Spec : Prop :=
  ∀ n, P13428362720449557620.a n = A189746 (n + 1)

end A189746

/-!
# A189747: a(1)=5, a(2)=3, a(n)=5*a(n-1) + 3*a(n-2).

The programs for A189747, the canonical program `A189747.P4322221013339655725` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189747 has offset 1).

The definition of A189747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+3*a(n-2)` (program `A189747.P4322221013339655725`, by `A189747.P4322221013339655725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189747.P4322221013339655725

`5*a(n-1)+3*a(n-2)` with `a(0)=5, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189747

/-- `5*a(n-1)+3*a(n-2)` -/
def P4322221013339655725.Spec : Prop :=
  ∀ n, (P4322221013339655725.a n : ℤ) = A189747 (n + 1)

theorem P4322221013339655725.correct : P4322221013339655725.Spec := by
  intro n
  simp only [A189747, Nat.add_sub_cancel]

end A189747

/-! ## A189747.P12656953974194629786

`ogf((-5+22x)/(-1+5x+3x^2))`
-/

namespace A189747.P12656953974194629786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -22] [1, -5, -3] n

end

end A189747.P12656953974194629786

namespace A189747

/-- `ogf((-5+22x)/(-1+5x+3x^2))` -/
def P12656953974194629786.Spec : Prop :=
  ∀ n, P12656953974194629786.a n = A189747 (n + 1)

end A189747

/-!
# A189748: a(n) = 5*a(n-1) + 4*a(n-2) with a(1)=5, a(2)=4.

The programs for A189748, the canonical program `A189748.P10188341714691911485` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189748 has offset 1).

The definition of A189748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+4*a(n-2)` (program `A189748.P10188341714691911485`, by `A189748.P10188341714691911485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189748.P10188341714691911485

`5*a(n-1)+4*a(n-2)` with `a(0)=5, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189748

/-- `5*a(n-1)+4*a(n-2)` -/
def P10188341714691911485.Spec : Prop :=
  ∀ n, (P10188341714691911485.a n : ℤ) = A189748 (n + 1)

theorem P10188341714691911485.correct : P10188341714691911485.Spec := by
  intro n
  simp only [A189748, Nat.add_sub_cancel]

end A189748

/-! ## A189748.P10352362603555059562

`ogf((-5+21x)/(-1+5x+4x^2))`
-/

namespace A189748.P10352362603555059562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -21] [1, -5, -4] n

end

end A189748.P10352362603555059562

namespace A189748

/-- `ogf((-5+21x)/(-1+5x+4x^2))` -/
def P10352362603555059562.Spec : Prop :=
  ∀ n, P10352362603555059562.a n = A189748 (n + 1)

end A189748

/-! ## A189748.P12141006674927335650

`5*A123270(n)-A015537(n)`
-/

namespace A189748.P12141006674927335650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A123270 n - A015537 n

end

end A189748.P12141006674927335650

namespace A189748

/-- `5*A123270(n)-A015537(n)` -/
def P12141006674927335650.Spec : Prop :=
  ∀ n, P12141006674927335650.a n = A189748 (n + 1)

end A189748

/-!
# A189749: a(1)=5, a(2)=5, a(n)=5*a(n-1) + 5*a(n-2).

The programs for A189749, the canonical program `A189749.P4188229358514167404` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189749 has offset 1).

The definition of A189749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5*a(n-2)` (program `A189749.P4188229358514167404`, by `A189749.P4188229358514167404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189749.P4188229358514167404

`5*a(n-1)+5*a(n-2)` with `a(0)=5, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189749

/-- `5*a(n-1)+5*a(n-2)` -/
def P4188229358514167404.Spec : Prop :=
  ∀ n, (P4188229358514167404.a n : ℤ) = A189749 (n + 1)

theorem P4188229358514167404.correct : P4188229358514167404.Spec := by
  intro n
  simp only [A189749, Nat.add_sub_cancel]

end A189749

/-! ## A189749.P17039973105404110591

`5*A188168(n)`
-/

namespace A189749.P17039973105404110591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A188168 n

end

end A189749.P17039973105404110591

namespace A189749

/-- `5*A188168(n)` -/
def P17039973105404110591.Spec : Prop :=
  ∀ n, P17039973105404110591.a n = A189749 (n + 1)

end A189749

/-! ## A189749.P8914586988595989712

`ogf((-5+20x)/(-1+5x+5x^2))`
-/

namespace A189749.P8914586988595989712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -20] [1, -5, -5] n

end

end A189749.P8914586988595989712

namespace A189749

/-- `ogf((-5+20x)/(-1+5x+5x^2))` -/
def P8914586988595989712.Spec : Prop :=
  ∀ n, P8914586988595989712.a n = A189749 (n + 1)

end A189749

/-! ## A189749.P16810505141071074010

`5*(a(n-1)+a(n-2))` with `a(0)=5, a(1)=5`
-/

namespace A189749.P16810505141071074010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A189749.P16810505141071074010

namespace A189749

/-- `5*(a(n-1)+a(n-2))` -/
def P16810505141071074010.Spec : Prop :=
  ∀ n, (P16810505141071074010.a n : ℤ) = A189749 (n + 1)

theorem P16810505141071074010.correct : P16810505141071074010.Spec := by
  intro n
  simp only [A189749, Nat.add_sub_cancel, A189749.P16810505141071074010.a, A189749.P4188229358514167404.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189749

/-! ## A189749.P164728709581652170

`5*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=5, a(1)=5`
-/

namespace A189749.P164728709581652170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 5] fun n a =>
  5 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A189749.P164728709581652170

namespace A189749

/-- `5*(2-(4/2-a(n-1)-a(n-2)))` -/
def P164728709581652170.Spec : Prop :=
  ∀ n, P164728709581652170.a n = (A189749 (n + 1) : ℚ)

end A189749

/-! ## A189749.P2342323933588449768

`5*(A180033(n)-A106565(n))`
-/

namespace A189749.P2342323933588449768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A180033 n - A106565 n)

end

end A189749.P2342323933588449768

namespace A189749

/-- `5*(A180033(n)-A106565(n))` -/
def P2342323933588449768.Spec : Prop :=
  ∀ n, P2342323933588449768.a n = A189749 (n + 1)

end A189749

/-! ## A189749.P2507105279611921199

`5*A180033(n)%A106565(A028310(n))`
-/

namespace A189749.P2507105279611921199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A180033 n) (A106565 (A028310 n).toNat)

end

end A189749.P2507105279611921199

namespace A189749

/-- `5*A180033(n)%A106565(A028310(n))` -/
def P2507105279611921199.Spec : Prop :=
  ∀ n, P2507105279611921199.a n = A189749 (n + 1)

end A189749

/-! ## A189749.P15309459689879690076

`A106565(n+1)-4*A106565(n)`
-/

namespace A189749.P15309459689879690076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106565 (n + 1) - 4 * A106565 n

end

end A189749.P15309459689879690076

namespace A189749

/-- `A106565(n+1)-4*A106565(n)` -/
def P15309459689879690076.Spec : Prop :=
  ∀ n, P15309459689879690076.a n = A189749 (n + 1)

end A189749

/-!
# A189750: n+[ns/r]+[nt/r]; r=1, s=arctan(1/3), t=arctan(2/3).

The programs for A189750, there is no canonical definition to state claims against.
-/

/-! ## A189750.P8898601404742261814

`4*n+3-A209900(A080754(n+1))`
-/

namespace A189750.P8898601404742261814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A209900 (A080754 (n + 1)).toNat

end

end A189750.P8898601404742261814

/-! ## A189750.P17773988493585448003

`A004767(n)%A209900(A080754(n+1))`
-/

namespace A189750.P17773988493585448003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A209900 (A080754 (n + 1)).toNat)

end

end A189750.P17773988493585448003

/-! ## A189750.P17157958433070510058

`A077467(n+1)+record[A043262(n+1)]`
-/

namespace A189750.P17157958433070510058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189750.P17157958433070510058

/-!
# A189751: n+[nr/s]+[nt/s]; r=1, s=arctan(1/3), t=arctan(2/3).

The programs for A189751, the canonical program `A189751.P285585068629570887` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189751 has offset 1).

The definition of A189751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189751.P285585068629570887

`n+1+floor((n+1)/atan(1/3))+floor((n+1)*atan(2/3)/atan(1/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189751

/-- `n+1+floor((n+1)/atan(1/3))+floor((n+1)*atan(2/3)/atan(1/3))` -/
def P285585068629570887.Spec : Prop :=
  ∀ n, P285585068629570887.a n = A189751 (n + 1)

theorem P285585068629570887.correct : P285585068629570887.Spec := by
  intro n
  simp only [A189751, Nat.add_sub_cancel]

end A189751

/-! ## A189751.P3569547202767480580

`A197878(n+1)+A086707(A016825(n))`
-/

namespace A189751.P3569547202767480580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197878 (n + 1) + A086707 (A016825 n).toNat

end

end A189751.P3569547202767480580

namespace A189751

/-- `A197878(n+1)+A086707(A016825(n))` -/
def P3569547202767480580.Spec : Prop :=
  ∀ n, P3569547202767480580.a n = A189751 (n + 1)

end A189751

/-! ## A189751.P11584238847227310808

`A267417(A173054(n+1))+floor((sqrt(8)+3)*(n+1))`
-/

namespace A189751.P11584238847227310808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (A173054 (n + 1)).toNat + ⌊(Real.sqrt (8 : ℝ) + 3) * (n + 1 : ℝ)⌋

end

end A189751.P11584238847227310808

namespace A189751

/-- `A267417(A173054(n+1))+floor((sqrt(8)+3)*(n+1))` -/
def P11584238847227310808.Spec : Prop :=
  ∀ n, P11584238847227310808.a n = A189751 (n + 1)

end A189751

/-! ## A189751.P7394222505356444418

`A190337(n+1)+A343609(n)^A056040(n)`
-/

namespace A189751.P7394222505356444418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190337 (n + 1) : ℚ) + (A343609 n : ℚ) ^ (A056040 n : ℤ)

end

end A189751.P7394222505356444418

namespace A189751

/-- `A190337(n+1)+A343609(n)^A056040(n)` -/
def P7394222505356444418.Spec : Prop :=
  ∀ n, P7394222505356444418.a n = (A189751 (n + 1) : ℚ)

end A189751

/-! ## A189751.P9930233834052010168

`∑[A276870(A276848(n+1))+A276858(n+1)]`
-/

namespace A189751.P9930233834052010168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (A276848 (n + 1)).toNat + A276858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189751.P9930233834052010168

namespace A189751

/-- `∑[A276870(A276848(n+1))+A276858(n+1)]` -/
def P9930233834052010168.Spec : Prop :=
  ∀ n, P9930233834052010168.a n = A189751 (n + 1)

end A189751

/-!
# A189752: n+[nr/t]+[ns/t]; r=1, s=arctan(1/3), t=arctan(2/3).

The programs for A189752, there is no canonical definition to state claims against.
-/

/-! ## A189752.P4191105885616722837

`A187968(A187829(n+1)+A003152(n+1))`
-/

namespace A189752.P4191105885616722837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A187829 (n + 1) + A003152 (n + 1)).toNat

end

end A189752.P4191105885616722837

/-! ## A189752.P16332570560554212384

`A187968(A003960(A011782(n))*A182769(n+1))`
-/

namespace A189752.P16332570560554212384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A003960 (A011782 n).toNat * A182769 (n + 1)).toNat

end

end A189752.P16332570560554212384

/-! ## A189752.P18091230053822232738

`A380408(2*n+1)+A055640(A177282(n+2))`
-/

namespace A189752.P18091230053822232738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (2 * n + 1) + A055640 (A177282 (n + 2)).toNat

end

end A189752.P18091230053822232738

/-! ## A189752.P2409220086261674149

`A184821(n+1)-A340102(A238620(n+1))`
-/

namespace A189752.P2409220086261674149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) - A340102 (A238620 (n + 1)).toNat

end

end A189752.P2409220086261674149

/-! ## A189752.P12640899088236647721

`A063247(n+1)+A001055(A006720(n))`
-/

namespace A189752.P12640899088236647721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (n + 1) + A001055 (A006720 n).toNat

end

end A189752.P12640899088236647721

/-!
# A189753: n+[ns/r]+[nt/r]; r=1, s=arctan(1/3), t=arctan(3).

The programs for A189753, there is no canonical definition to state claims against.
-/

/-! ## A189753.P12545564952132000042

`A071325(A016116(n))+A047292(n+1)`
-/

namespace A189753.P12545564952132000042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A016116 n).toNat + A047292 (n + 1)

end

end A189753.P12545564952132000042

/-! ## A189753.P16287649634358357740

`A042968(n+1)+∑[A343652(A343652(3*n+4))]`
-/

namespace A189753.P16287649634358357740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (A343652 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189753.P16287649634358357740

/-! ## A189753.P13130214902358813810

`A047201(n+1)+eq[A034526(n+1), A035444(n)]`
-/

namespace A189753.P13130214902358813810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A189753.P13130214902358813810

/-! ## A189753.P3080604377988079654

`A112765(A140730(n))+A061785(n+1)`
-/

namespace A189753.P3080604377988079654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A140730 n).toNat + A061785 (n + 1)

end

end A189753.P3080604377988079654

/-! ## A189753.P9079993857209422169

`A001950(n+1)-A354579(A055647(n))`
-/

namespace A189753.P9079993857209422169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A354579 (A055647 n).toNat

end

end A189753.P9079993857209422169

/-!
# A189754: n+[nr/s]+[nt/s]; r=1, s=arctan(1/3), t=arctan(3).

The programs for A189754, the canonical program `A189754.P16194604097150974104` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189754 has offset 1).

The definition of A189754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189754.P16194604097150974104

`A189534(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189754

/-- `A189534(2*(n+1))` -/
def P16194604097150974104.Spec : Prop :=
  ∀ n, P16194604097150974104.a n = A189754 (n + 1)

theorem P16194604097150974104.correct : P16194604097150974104.Spec := by
  intro n
  simp only [A189754, Nat.add_sub_cancel]

end A189754

/-! ## A189754.P6580761850145626599

`record[A189534(A114112(n+2))]`
-/

namespace A189754.P6580761850145626599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189534 (A114112 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189754.P6580761850145626599

namespace A189754

/-- `record[A189534(A114112(n+2))]` -/
def P6580761850145626599.Spec : Prop :=
  ∀ n, P6580761850145626599.a n = A189754 (n + 1)

end A189754

/-! ## A189754.P12695165404270113763

`A189534(Δ[A014206(n)])%A128468(n)`
-/

namespace A189754.P12695165404270113763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189534 (f1 (n + 1) - f1 n).toNat) (A128468 n)

end

end A189754.P12695165404270113763

namespace A189754

/-- `A189534(Δ[A014206(n)])%A128468(n)` -/
def P12695165404270113763.Spec : Prop :=
  ∀ n, P12695165404270113763.a n = A189754 (n + 1)

end A189754

/-! ## A189754.P15538283445723643526

`A033999(n)²*A189534(Δ[A014206(n)])`
-/

namespace A189754.P15538283445723643526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A189534 (f1 (n + 1) - f1 n).toNat

end

end A189754.P15538283445723643526

namespace A189754

/-- `A033999(n)²*A189534(Δ[A014206(n)])` -/
def P15538283445723643526.Spec : Prop :=
  ∀ n, P15538283445723643526.a n = A189754 (n + 1)

end A189754

/-! ## A189754.P15799382783338095893

`A189534(Δ[A014206(n)])+A063524(n+2)`
-/

namespace A189754.P15799382783338095893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189534 (f1 (n + 1) - f1 n).toNat + A063524 (n + 2)

end

end A189754.P15799382783338095893

namespace A189754

/-- `A189534(Δ[A014206(n)])+A063524(n+2)` -/
def P15799382783338095893.Spec : Prop :=
  ∀ n, P15799382783338095893.a n = A189754 (n + 1)

end A189754

/-! ## A189754.P7635161078212699371

`A189534(Δ[A014206(n)])^(A016813(n)%2)`
-/

namespace A189754.P7635161078212699371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189534 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A016813 n) 2 : ℤ)

end

end A189754.P7635161078212699371

namespace A189754

/-- `A189534(Δ[A014206(n)])^(A016813(n)%2)` -/
def P7635161078212699371.Spec : Prop :=
  ∀ n, P7635161078212699371.a n = (A189754 (n + 1) : ℚ)

end A189754

/-! ## A189754.P15344926632969004135

`A189534(Δ[A014206(n)])+2%A036453(n+1)`
-/

namespace A189754.P15344926632969004135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189534 (f1 (n + 1) - f1 n).toNat + Int.tmod 2 (A036453 (n + 1))

end

end A189754.P15344926632969004135

namespace A189754

/-- `A189534(Δ[A014206(n)])+2%A036453(n+1)` -/
def P15344926632969004135.Spec : Prop :=
  ∀ n, P15344926632969004135.a n = A189754 (n + 1)

end A189754

/-! ## A189754.P271280513290183344

`A189534(Δ[A014206(n)])^(A000265(n+1)%2)`
-/

namespace A189754.P271280513290183344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189534 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A000265 (n + 1)) 2 : ℤ)

end

end A189754.P271280513290183344

namespace A189754

/-- `A189534(Δ[A014206(n)])^(A000265(n+1)%2)` -/
def P271280513290183344.Spec : Prop :=
  ∀ n, P271280513290183344.a n = (A189754 (n + 1) : ℚ)

end A189754

/-!
# A189755: n + floor( nr/t ) + floor( ns/t ), where r=1, s=arctan(1/3), t=arctan(3).

The programs for A189755, the canonical program `A189755.P13982233246086307934` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189755 has offset 1).

The definition of A189755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189755.P13982233246086307934

`n+1+floor((n+1)/atan(3))+floor((n+1)*atan(1/3)/atan(3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189755

/-- `n+1+floor((n+1)/atan(3))+floor((n+1)*atan(1/3)/atan(3))` -/
def P13982233246086307934.Spec : Prop :=
  ∀ n, P13982233246086307934.a n = A189755 (n + 1)

theorem P13982233246086307934.correct : P13982233246086307934.Spec := by
  intro n
  simp only [A189755, Nat.add_sub_cancel]

end A189755

/-! ## A189755.P7822465139043449494

`ceil(A136767(3*n+1)/6)`
-/

namespace A189755.P7822465139043449494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136767 (3 * n + 1) : ℚ) / 6⌉

end

end A189755.P7822465139043449494

namespace A189755

/-- `ceil(A136767(3*n+1)/6)` -/
def P7822465139043449494.Spec : Prop :=
  ∀ n, P7822465139043449494.a n = A189755 (n + 1)

end A189755

/-! ## A189755.P11756239774405479537

`A005408(n)+A000035(A136767(3*n+1))`
-/

namespace A189755.P11756239774405479537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A000035 (A136767 (3 * n + 1)).toNat

end

end A189755.P11756239774405479537

namespace A189755

/-- `A005408(n)+A000035(A136767(3*n+1))` -/
def P11756239774405479537.Spec : Prop :=
  ∀ n, P11756239774405479537.a n = A189755 (n + 1)

end A189755

/-! ## A189755.P13069922821258320389

`record[2-xor(1, -n)]-A285495(A001274(n+1))`
-/

namespace A189755.P13069922821258320389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A285495 (A001274 (n + 1)).toNat

end

end A189755.P13069922821258320389

namespace A189755

/-- `record[2-xor(1, -n)]-A285495(A001274(n+1))` -/
def P13069922821258320389.Spec : Prop :=
  ∀ n, P13069922821258320389.a n = A189755 (n + 1)

end A189755

/-!
# A189756: n+[ns/r]+[nt/r]; r=1, s=sin(1), t=cos(1).

The programs for A189756, there is no canonical definition to state claims against.
-/

/-! ## A189756.P1610859093312978251

`A002264(A330067(n+1))+2*(n+1)-A008621(A094391(n+1))`
-/

namespace A189756.P1610859093312978251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330067 (n + 1)).toNat + (2 * (n + 1) : ℤ) - A008621 (A094391 (n + 1)).toNat

end

end A189756.P1610859093312978251

/-! ## A189756.P10908988001384171754

`A367069(A329840(n+1))`
-/

namespace A189756.P10908988001384171754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A329840 (n + 1)).toNat

end

end A189756.P10908988001384171754

/-! ## A189756.P15880530385487617501

`A195168(n)+A000007(A000579(n))`
-/

namespace A189756.P15880530385487617501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195168 n + A000007 (A000579 n).toNat

end

end A189756.P15880530385487617501

/-! ## A189756.P8830329729267290595

`A184821(n+1)-A000005(A000079(n))`
-/

namespace A189756.P8830329729267290595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184821 (n + 1) - A000005 (A000079 n).toNat

end

end A189756.P8830329729267290595

/-! ## A189756.P10972631892856814186

`A111660(A247783(n+1)-A111660(n))`
-/

namespace A189756.P10972631892856814186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A247783 (n + 1) - A111660 n).toNat

end

end A189756.P10972631892856814186

/-!
# A189757: n+[nr/s]+[nt/s]; r=1, s=sin(1), t=cos(1).

The programs for A189757, the canonical program `A189757.P6330049415454840961` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189757 has offset 1).

The definition of A189757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189757.P6330049415454840961

`floor((cot(1)+1)*(n+1))+floor((n+1)/sin(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189757

/-- `floor((cot(1)+1)*(n+1))+floor((n+1)/sin(1))` -/
def P6330049415454840961.Spec : Prop :=
  ∀ n, P6330049415454840961.a n = A189757 (n + 1)

theorem P6330049415454840961.correct : P6330049415454840961.Spec := by
  intro n
  simp only [A189757, Nat.add_sub_cancel]

end A189757

/-! ## A189757.P12499667721245563027

`A292652(n+1)+A108120(n+1)`
-/

namespace A189757.P12499667721245563027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292652 (n + 1) + A108120 (n + 1)

end

end A189757.P12499667721245563027

namespace A189757

/-- `A292652(n+1)+A108120(n+1)` -/
def P12499667721245563027.Spec : Prop :=
  ∀ n, P12499667721245563027.a n = A189757 (n + 1)

theorem P12499667721245563027.correct : P12499667721245563027.Spec := by
  intro n
  simp only [A189757, Nat.add_sub_cancel, A189757.P12499667721245563027.a, A189757.P6330049415454840961.a, A108120, A108120.P1406995678368216070.a, A292652, A292652.P9827937049489949386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189757

/-! ## A189757.P17215812214954579563

`A108593(A108587(n+1))+floor((cot(1)+1)*(n+1))`
-/

namespace A189757.P17215812214954579563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108593 (A108587 (n + 1)).toNat + ⌊(Real.cot (1 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A189757.P17215812214954579563

namespace A189757

/-- `A108593(A108587(n+1))+floor((cot(1)+1)*(n+1))` -/
def P17215812214954579563.Spec : Prop :=
  ∀ n, P17215812214954579563.a n = A189757 (n + 1)

end A189757

/-! ## A189757.P6112810943723631731

`A292652(n+1)+A108593(A108587(n+1))`
-/

namespace A189757.P6112810943723631731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292652 (n + 1) + A108593 (A108587 (n + 1)).toNat

end

end A189757.P6112810943723631731

namespace A189757

/-- `A292652(n+1)+A108593(A108587(n+1))` -/
def P6112810943723631731.Spec : Prop :=
  ∀ n, P6112810943723631731.a n = A189757 (n + 1)

end A189757

/-! ## A189757.P8034167445655463385

`A228869(3*n+4)-A137512(2*n+3)`
-/

namespace A189757.P8034167445655463385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (3 * n + 4) - A137512 (2 * n + 3)

end

end A189757.P8034167445655463385

namespace A189757

/-- `A228869(3*n+4)-A137512(2*n+3)` -/
def P8034167445655463385.Spec : Prop :=
  ∀ n, P8034167445655463385.a n = A189757 (n + 1)

end A189757

/-!
# A189758: n+[nr/t]+[ns/t]; r=1, s=sin(1), t=cos(1).

The programs for A189758, the canonical program `A189758.P8140171503268255914` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189758 has offset 1).

The definition of A189758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189758.P8140171503268255914

`n+1+floor((n+1)/cos(1))+floor((n+1)*sin(1)/cos(1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189758

/-- `n+1+floor((n+1)/cos(1))+floor((n+1)*sin(1)/cos(1))` -/
def P8140171503268255914.Spec : Prop :=
  ∀ n, P8140171503268255914.a n = A189758 (n + 1)

theorem P8140171503268255914.correct : P8140171503268255914.Spec := by
  intro n
  simp only [A189758, Nat.add_sub_cancel]

end A189758

/-! ## A189758.P4468077719180828031

`floor(A329991(A329825(2*(n+1)))/2)`
-/

namespace A189758.P4468077719180828031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329991 (A329825 (2 * (n + 1))).toNat : ℚ) / 2⌋

end

end A189758.P4468077719180828031

namespace A189758

/-- `floor(A329991(A329825(2*(n+1)))/2)` -/
def P4468077719180828031.Spec : Prop :=
  ∀ n, P4468077719180828031.a n = A189758 (n + 1)

end A189758

/-! ## A189758.P6631436820329245794

`A004773(A028250(n+1))+A001222(2^(n+1))`
-/

namespace A189758.P6631436820329245794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A028250 (n + 1)).toNat + A001222 (2 ^ (n + 1))

end

end A189758.P6631436820329245794

namespace A189758

/-- `A004773(A028250(n+1))+A001222(2^(n+1))` -/
def P6631436820329245794.Spec : Prop :=
  ∀ n, P6631436820329245794.a n = A189758 (n + 1)

end A189758

/-! ## A189758.P3579302670454168954

`A329840(n+1)+A085268(A187829(n+1))`
-/

namespace A189758.P3579302670454168954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329840 (n + 1) + A085268 ((A187829 (n + 1)).toNat + 32)

end

end A189758.P3579302670454168954

namespace A189758

/-- `A329840(n+1)+A085268(A187829(n+1))` -/
def P3579302670454168954.Spec : Prop :=
  ∀ n, P3579302670454168954.a n = A189758 (n + 1)

end A189758

/-! ## A189758.P8182951179943227562

`A286923(n+1)+A189479(A335840(n+1))`
-/

namespace A189758.P8182951179943227562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286923 (n + 1) + A189479 (A335840 (n + 1)).toNat

end

end A189758.P8182951179943227562

namespace A189758

/-- `A286923(n+1)+A189479(A335840(n+1))` -/
def P8182951179943227562.Spec : Prop :=
  ∀ n, P8182951179943227562.a n = A189758 (n + 1)

end A189758

/-!
# A189759: Numbers pqr such that pq + pr + qr is prime, where p, q, and r are primes.

The programs for A189759, the canonical program `A189759.P603312892037158243` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189759 has offset 1).

The definition of A189759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189759.P6234612156088965667

`record[A080305(A227680(n+1))]`
-/

namespace A189759.P6234612156088965667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A227680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189759.P6234612156088965667

namespace A189759

/-- `record[A080305(A227680(n+1))]` -/
def P6234612156088965667.Spec : Prop :=
  ∀ n, P6234612156088965667.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P603312892037158243

`filter[A007304(n+1), A341995(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A189759

/-- `filter[A007304(n+1), A341995(#)]` -/
def P603312892037158243.Spec : Prop :=
  ∀ n, P603312892037158243.a n = A189759 (n + 1)

theorem P603312892037158243.correct : P603312892037158243.Spec := by
  intro n
  simp only [A189759, Nat.add_sub_cancel]

end A189759

/-! ## A189759.P1707879685537770758

`filter[A014612(n+1), A341995(#)]`
-/

namespace A189759.P1707879685537770758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P1707879685537770758

namespace A189759

/-- `filter[A014612(n+1), A341995(#)]` -/
def P1707879685537770758.Spec : Prop :=
  ∀ n, P1707879685537770758.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P6509268736074182508

`filter[A030626(n+1), A341995(#)]`
-/

namespace A189759.P6509268736074182508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P6509268736074182508

namespace A189759

/-- `filter[A030626(n+1), A341995(#)]` -/
def P6509268736074182508.Spec : Prop :=
  ∀ n, P6509268736074182508.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P7365079136613207724

`filter[A033992(n+1), A341995(#)]`
-/

namespace A189759.P7365079136613207724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P7365079136613207724

namespace A189759

/-- `filter[A033992(n+1), A341995(#)]` -/
def P7365079136613207724.Spec : Prop :=
  ∀ n, P7365079136613207724.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P1790504203659226665

`filter[A036456(n+1), A341995(#)]`
-/

namespace A189759.P1790504203659226665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P1790504203659226665

namespace A189759

/-- `filter[A036456(n+1), A341995(#)]` -/
def P1790504203659226665.Spec : Prop :=
  ∀ n, P1790504203659226665.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P18802771833673216

`filter[A111398(n+1), A341995(#)]`
-/

namespace A189759.P18802771833673216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P18802771833673216

namespace A189759

/-- `filter[A111398(n+1), A341995(#)]` -/
def P18802771833673216.Spec : Prop :=
  ∀ n, P18802771833673216.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P11598174649966112195

`filter[A227680(n+1), A252233(#)]`
-/

namespace A189759.P11598174649966112195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A189759.P11598174649966112195

namespace A189759

/-- `filter[A227680(n+1), A252233(#)]` -/
def P11598174649966112195.Spec : Prop :=
  ∀ n, P11598174649966112195.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P10597029896548203205

`filter[A145784(n+1), A341995(#)]`
-/

namespace A189759.P10597029896548203205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P10597029896548203205

namespace A189759

/-- `filter[A145784(n+1), A341995(#)]` -/
def P10597029896548203205.Spec : Prop :=
  ∀ n, P10597029896548203205.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P5803280232232925279

`filter[A157037(n+1), A354926(#)]`
-/

namespace A189759.P5803280232232925279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A189759.P5803280232232925279

namespace A189759

/-- `filter[A157037(n+1), A354926(#)]` -/
def P5803280232232925279.Spec : Prop :=
  ∀ n, P5803280232232925279.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P16915715311687023002

`filter[A157037(n+1), A358753(#)]`
-/

namespace A189759.P16915715311687023002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A189759.P16915715311687023002

namespace A189759

/-- `filter[A157037(n+1), A358753(#)]` -/
def P16915715311687023002.Spec : Prop :=
  ∀ n, P16915715311687023002.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P16818578607871463843

`filter[A182859(n+1), A341995(#)]`
-/

namespace A189759.P16818578607871463843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P16818578607871463843

namespace A189759

/-- `filter[A182859(n+1), A341995(#)]` -/
def P16818578607871463843.Spec : Prop :=
  ∀ n, P16818578607871463843.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P13415751599041906887

`filter[A157037(n+1), A373975(#)]`
-/

namespace A189759.P13415751599041906887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A189759.P13415751599041906887

namespace A189759

/-- `filter[A157037(n+1), A373975(#)]` -/
def P13415751599041906887.Spec : Prop :=
  ∀ n, P13415751599041906887.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P9032134013178691221

`filter[A214195(n+1), A341995(#)]`
-/

namespace A189759.P9032134013178691221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P9032134013178691221

namespace A189759

/-- `filter[A214195(n+1), A341995(#)]` -/
def P9032134013178691221.Spec : Prop :=
  ∀ n, P9032134013178691221.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P17926838649806055390

`filter[A217856(n+1), A341995(#)]`
-/

namespace A189759.P17926838649806055390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P17926838649806055390

namespace A189759

/-- `filter[A217856(n+1), A341995(#)]` -/
def P17926838649806055390.Spec : Prop :=
  ∀ n, P17926838649806055390.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P13679770571569972390

`filter[A225228(n+1), A341995(#)]`
-/

namespace A189759.P13679770571569972390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P13679770571569972390

namespace A189759

/-- `filter[A225228(n+1), A341995(#)]` -/
def P13679770571569972390.Spec : Prop :=
  ∀ n, P13679770571569972390.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P11431185233549359743

`filter[A227680(n+1), A340369(#)]`
-/

namespace A189759.P11431185233549359743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A189759.P11431185233549359743

namespace A189759

/-- `filter[A227680(n+1), A340369(#)]` -/
def P11431185233549359743.Spec : Prop :=
  ∀ n, P11431185233549359743.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P14228920540169370934

`filter[A227680(n+1), A354926(#)]`
-/

namespace A189759.P14228920540169370934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A189759.P14228920540169370934

namespace A189759

/-- `filter[A227680(n+1), A354926(#)]` -/
def P14228920540169370934.Spec : Prop :=
  ∀ n, P14228920540169370934.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P3046570737216843882

`filter[A345382(n+1), A341995(#)]`
-/

namespace A189759.P3046570737216843882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P3046570737216843882

namespace A189759

/-- `filter[A345382(n+1), A341995(#)]` -/
def P3046570737216843882.Spec : Prop :=
  ∀ n, P3046570737216843882.a n = A189759 (n + 1)

end A189759

/-! ## A189759.P4886833862566217409

`filter[A358763(n+1), A341995(#)]`
-/

namespace A189759.P4886833862566217409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A189759.P4886833862566217409

namespace A189759

/-- `filter[A358763(n+1), A341995(#)]` -/
def P4886833862566217409.Spec : Prop :=
  ∀ n, P4886833862566217409.a n = A189759 (n + 1)

end A189759

/-!
# A189760: Least nonnegative number whose n-th arithmetic derivative (A003415) is zero and lower derivatives are nonzero.

The programs for A189760, there is no canonical definition to state claims against.
-/

/-! ## A189760.P80990236510305120

`record[A327967(A094937(n))]`
-/

namespace A189760.P80990236510305120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327967 (A094937 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189760.P80990236510305120

/-! ## A189760.P7193877933405776505

`A327967(n*A152844(n))`
-/

namespace A189760.P7193877933405776505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327967 ((n : ℤ) * A152844 n).toNat

end

end A189760.P7193877933405776505

/-! ## A189760.P18075096907873777443

`A327967(lcm(n, A271838(n)))`
-/

namespace A189760.P18075096907873777443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327967 (Int.lcm (n : ℤ) (A271838 n))

end

end A189760.P18075096907873777443

/-! ## A189760.P8450617143846623552

`∑{d}[A327967(n), A000010(#)]`
-/

namespace A189760.P8450617143846623552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A189760.P8450617143846623552

/-! ## A189760.P660471045511954042

`A151838(n)!*A327967(n)`
-/

namespace A189760.P660471045511954042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151838 n).toNat : ℤ) * A327967 n

end

end A189760.P660471045511954042

/-!
# A189761: Numbers n for which the set of residues {Fibonacci(k) mod n, k=0,1,2,....} is minimal.

The programs for A189761, the canonical program `A189761.P8469729162130385848` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189761 has offset 1).

The definition of A189761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189761.P8469729162130385848

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=8, a(6)=11, a(7)=21, a(8)=29`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189761

/-- `3*a(n-2)-a(n-4)` -/
def P8469729162130385848.Spec : Prop :=
  ∀ n, P8469729162130385848.a n = A189761 (n + 1)

theorem P8469729162130385848.correct : P8469729162130385848.Spec := by
  intro n
  simp only [A189761, Nat.add_sub_cancel]

end A189761

/-! ## A189761.P15773588002133559659

`record[A074049(A075300(n+1))]`
-/

namespace A189761.P15773588002133559659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A075300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189761.P15773588002133559659

namespace A189761

/-- `record[A074049(A075300(n+1))]` -/
def P15773588002133559659.Spec : Prop :=
  ∀ n, P15773588002133559659.a n = A189761 (n + 1)

end A189761

/-! ## A189761.P9416031567326201166

`record[A074049(A254104(n+1))]`
-/

namespace A189761.P9416031567326201166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A254104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189761.P9416031567326201166

namespace A189761

/-- `record[A074049(A254104(n+1))]` -/
def P9416031567326201166.Spec : Prop :=
  ∀ n, P9416031567326201166.a n = A189761 (n + 1)

end A189761

/-! ## A189761.P3310257033989090498

`record[A074049(A060632(n)+A026741(n))]`
-/

namespace A189761.P3310257033989090498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A060632 n + A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189761.P3310257033989090498

namespace A189761

/-- `record[A074049(A060632(n)+A026741(n))]` -/
def P3310257033989090498.Spec : Prop :=
  ∀ n, P3310257033989090498.a n = A189761 (n + 1)

end A189761

/-! ## A189761.P2356688764569891979

`record[A007306(A112387(n))]`
-/

namespace A189761.P2356688764569891979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A112387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189761.P2356688764569891979

namespace A189761

/-- `record[A007306(A112387(n))]` -/
def P2356688764569891979.Spec : Prop :=
  ∀ n, P2356688764569891979.a n = A189761 (n + 1)

end A189761

/-!
# A189762: Greatest integer x such that x' = 2n+1, or 0 if there is no such x, where x' is the arithmetic derivative (A003415).

The programs for A189762, there is no canonical definition to state claims against.
-/

/-! ## A189762.P10738256973794566803

`A099303(2*n+3)`
-/

namespace A189762.P10738256973794566803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * n + 3)

end

end A189762.P10738256973794566803

/-! ## A189762.P13981760316726635383

`A020705(A099303(n+3+n))-4`
-/

namespace A189762.P13981760316726635383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A099303 (n + 3 + n)).toNat - 4

end

end A189762.P13981760316726635383

/-! ## A189762.P5171507029324819187

`A099303(n+3+n)%A167499(n)`
-/

namespace A189762.P5171507029324819187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099303 (n + 3 + n)) (A167499 n)

end

end A189762.P5171507029324819187

/-! ## A189762.P10945044341402353391

`A099303(n+3+n)/A033999(n)²`
-/

namespace A189762.P10945044341402353391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A189762.P10945044341402353391

/-! ## A189762.P2809084619501380028

`A099303(n+3+n)+A000007(n+1)`
-/

namespace A189762.P2809084619501380028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (n + 3 + n) + A000007 (n + 1)

end

end A189762.P2809084619501380028

/-! ## A189762.P6287231318156959754

`A142150(Δ[n²])+A099303(n+3+n)`
-/

namespace A189762.P6287231318156959754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A099303 (n + 3 + n)

end

end A189762.P6287231318156959754

/-! ## A189762.P3595492621391434431

`A099303(n+3+n)/A001222(A007918(n))`
-/

namespace A189762.P3595492621391434431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001222 (A007918 n).toNat : ℚ)

end

end A189762.P3595492621391434431

/-! ## A189762.P11543334392001639963

`A099303(n+3+n)/A001222(A089793(n))`
-/

namespace A189762.P11543334392001639963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001222 (A089793 n).toNat : ℚ)

end

end A189762.P11543334392001639963

/-! ## A189762.P7819968626600340906

`A099303(n+3+n)/A001222(A151800(n))`
-/

namespace A189762.P7819968626600340906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001222 (A151800 n).toNat : ℚ)

end

end A189762.P7819968626600340906

/-! ## A189762.P9454349050450697867

`and(A033999(A110091(n)), A099303(n+3+n))`
-/

namespace A189762.P9454349050450697867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A110091 n).toNat) (A099303 (n + 3 + n))

end

end A189762.P9454349050450697867

/-! ## A189762.P3765741325063753975

`A099303(n+3+n)+A011741(A001222(n+1))`
-/

namespace A189762.P3765741325063753975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (n + 3 + n) + A011741 (A001222 (n + 1)).toNat

end

end A189762.P3765741325063753975

/-! ## A189762.P17498076933457086399

`A151878(A000005(n+1))+A099303(n+3+n)`
-/

namespace A189762.P17498076933457086399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A000005 (n + 1)).toNat + A099303 (n + 3 + n)

end

end A189762.P17498076933457086399

/-! ## A189762.P1951798268104000853

`A099303(n+3+n)/A001222(A172287(n+1))`
-/

namespace A189762.P1951798268104000853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001222 (A172287 (n + 1)).toNat : ℚ)

end

end A189762.P1951798268104000853

/-! ## A189762.P1299169808098489495

`A099303(n+3+n)/A001221(A084405(n+2))`
-/

namespace A189762.P1299169808098489495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001221 (A084405 (n + 2)).toNat : ℚ)

end

end A189762.P1299169808098489495

/-! ## A189762.P16667859042652200571

`and(A033999(A000040(n+1)), A099303(n+3+n))`
-/

namespace A189762.P16667859042652200571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A000040 (n + 1)).toNat) (A099303 (n + 3 + n))

end

end A189762.P16667859042652200571

/-! ## A189762.P9335190570248576024

`A151876(Δ[A000069(n+1)])+A099303(n+3+n)`
-/

namespace A189762.P9335190570248576024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151876 (f1 (n + 1) - f1 n).toNat + A099303 (n + 3 + n)

end

end A189762.P9335190570248576024

/-! ## A189762.P5240189173388981838

`A099303(n+3+n)/A000598(Δ[A216345(n+1)])`
-/

namespace A189762.P5240189173388981838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A000598 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A189762.P5240189173388981838

/-! ## A189762.P8244482776275080782

`A099303(n+3+n)/A001065(record[A006530(n+2)])`
-/

namespace A189762.P8244482776275080782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099303 (n + 3 + n) : ℚ) / (A001065 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A189762.P8244482776275080782

/-!
# A189763: Even numbers n such that solutions to x' = n are not all semiprimes, where x' denotes the arithmetic derivative (A003415).

The programs for A189763, there is no canonical definition to state claims against.
-/

/-! ## A189763.P4055405054296199129

`record[A003415(A189764(n+6))]`
-/

namespace A189763.P4055405054296199129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A189764 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189763.P4055405054296199129

/-! ## A189763.P2599285227420682176

`A000005(A080698(n+1))*A080728(n)`
-/

namespace A189763.P2599285227420682176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080698 (n + 1)).toNat * A080728 n

end

end A189763.P2599285227420682176

/-! ## A189763.P6105807621742215542

`A000005(A080701(n+1))*A080728(n)`
-/

namespace A189763.P6105807621742215542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080701 (n + 1)).toNat * A080728 n

end

end A189763.P6105807621742215542

/-! ## A189763.P11524791909365663040

`A080728(n)*A098325(A107813(2*n+3))`
-/

namespace A189763.P11524791909365663040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080728 n * A098325 (A107813 (2 * n + 3)).toNat

end

end A189763.P11524791909365663040

/-! ## A189763.P16125577753785904207

`A080728(n)*A344616(A195323(3*n+2))`
-/

namespace A189763.P16125577753785904207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080728 n * A344616 (A195323 (3 * n + 2)).toNat

end

end A189763.P16125577753785904207

/-!
# A189766: Trace of the inverse of the n-th order Hilbert matrix.

The programs for A189766, there is no canonical definition to state claims against.
-/

/-! ## A189766.P10301968047790409756

`(n+1)*A178790(n+1)`
-/

namespace A189766.P10301968047790409756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178790 (n + 1)

end

end A189766.P10301968047790409756

/-! ## A189766.P17324006576690534678

`∑[Δ[n²]*A005259(n)]`
-/

namespace A189766.P17324006576690534678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A005259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189766.P17324006576690534678

/-! ## A189766.P4006897467532091328

`∑[A005259(n)*A005408(n)]`
-/

namespace A189766.P4006897467532091328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005259 n * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189766.P4006897467532091328

/-!
# A189768: Irregular triangle in which row n contains the set of residues of the sequence Fibonacci(i) mod n for i=0,1,2,....

The programs for A189768, there is no canonical definition to state claims against.
-/

/-! ## A189768.P12886176748322058425

`A002262(lt[0, A128924(n+1)])`
-/

namespace A189768.P12886176748322058425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A189768.P12886176748322058425

/-! ## A189768.P8170748580109594084

`A002262(lt[A163511(n+3), A352540(n+1)])`
-/

namespace A189768.P8170748580109594084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189768.P8170748580109594084

/-! ## A189768.P8941488146891051009

`A002262(lt[A127322(n), A345058(2*(n+1))])`
-/

namespace A189768.P8941488146891051009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345058 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189768.P8941488146891051009

/-! ## A189768.P17596207103127619843

`A002262(lt[A354191(3*n+4), A339842(n+2)])`
-/

namespace A189768.P17596207103127619843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354191 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339842 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A189768.P17596207103127619843

/-! ## A189768.P10068500571896241898

`A002260(lt[A127322(n), A345058(2*(n+1))]+1)-1`
-/

namespace A189768.P10068500571896241898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345058 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) - 1

end

end A189768.P10068500571896241898

/-!
# A189769: Number of one-sided prudent walks from (0,0) to (n,n), with 3+n east steps, 3 west steps and n north steps.

The programs for A189769, the canonical program `A189769.P5701703840364148688` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189769 has offset 1).

The definition of A189769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189769.P13948582964477288223

`(2*n+1)*(n+3)*a(n-1)/∑[n]` with `a(0)=2`
-/

namespace A189769.P13948582964477288223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 1 : ℚ) * ((n + 3 : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)))

end

end A189769.P13948582964477288223

namespace A189769

/-- `(2*n+1)*(n+3)*a(n-1)/∑[n]` -/
def P13948582964477288223.Spec : Prop :=
  ∀ n, P13948582964477288223.a n = (A189769 (n + 1) : ℚ)

end A189769

/-! ## A189769.P5701703840364148688

`2*A085374(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189769

/-- `2*A085374(n)` -/
def P5701703840364148688.Spec : Prop :=
  ∀ n, P5701703840364148688.a n = A189769 (n + 1)

theorem P5701703840364148688.correct : P5701703840364148688.Spec := by
  intro n
  simp only [A189769, Nat.add_sub_cancel]

end A189769

/-! ## A189769.P13476655130213713802

`(n+2)*A328002(2*n)`
-/

namespace A189769.P13476655130213713802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A328002 (2 * n)

end

end A189769.P13476655130213713802

namespace A189769

/-- `(n+2)*A328002(2*n)` -/
def P13476655130213713802.Spec : Prop :=
  ∀ n, P13476655130213713802.a n = A189769 (n + 1)

end A189769

/-! ## A189769.P2769311002535971914

`A000292(n+1)*A000984(n+1)`
-/

namespace A189769.P2769311002535971914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000984 (n + 1)

end

end A189769.P2769311002535971914

namespace A189769

/-- `A000292(n+1)*A000984(n+1)` -/
def P2769311002535971914.Spec : Prop :=
  ∀ n, P2769311002535971914.a n = A189769 (n + 1)

end A189769

/-! ## A189769.P12974196526294456306

`(A001791(n+1)+A000108(n+1))*A000292(n+1)`
-/

namespace A189769.P12974196526294456306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) + A000108 (n + 1)) * A000292 (n + 1)

end

end A189769.P12974196526294456306

namespace A189769

/-- `(A001791(n+1)+A000108(n+1))*A000292(n+1)` -/
def P12974196526294456306.Spec : Prop :=
  ∀ n, P12974196526294456306.a n = A189769 (n + 1)

end A189769

/-! ## A189769.P5143745436859584046

`(A001700(n+1)-A001791(n+1))*A000292(n+1)`
-/

namespace A189769.P5143745436859584046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 (n + 1) - A001791 (n + 1)) * A000292 (n + 1)

end

end A189769.P5143745436859584046

namespace A189769

/-- `(A001700(n+1)-A001791(n+1))*A000292(n+1)` -/
def P5143745436859584046.Spec : Prop :=
  ∀ n, P5143745436859584046.a n = A189769 (n + 1)

end A189769

/-! ## A189769.P14971699606051420446

`2*C(2*n+1, n)*C(n+3, 3)`
-/

namespace A189769.P14971699606051420446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (2 * n + 1) n * Nat.choose (n + 3) 3)

end

end A189769.P14971699606051420446

namespace A189769

/-- `2*C(2*n+1, n)*C(n+3, 3)` -/
def P14971699606051420446.Spec : Prop :=
  ∀ n, (P14971699606051420446.a n : ℤ) = A189769 (n + 1)

theorem P14971699606051420446.correct : P14971699606051420446.Spec := by
  intro n
  simp only [A189769, Nat.add_sub_cancel, A189769.P14971699606051420446.a, A189769.P5701703840364148688.a, A085374, A085374.P1484823377386656750.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189769

/-! ## A189769.P14404842970295328905

`A125091(2*(n+1)²)`
-/

namespace A189769.P14404842970295328905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125091 (2 * (n + 1) ^ 2)

end

end A189769.P14404842970295328905

namespace A189769

/-- `A125091(2*(n+1)²)` -/
def P14404842970295328905.Spec : Prop :=
  ∀ n, P14404842970295328905.a n = A189769 (n + 1)

end A189769

/-!
# A189770: Number of one-sided prudent walks from (0,0) to (n,n), with 4+n east steps, 4 west steps and n north steps.

The programs for A189770, the canonical program `A189770.P292981471477749817` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189770 has offset 1).

The definition of A189770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189770.P292981471477749817

`2*A085375(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189770

/-- `2*A085375(n)` -/
def P292981471477749817.Spec : Prop :=
  ∀ n, P292981471477749817.a n = A189770 (n + 1)

theorem P292981471477749817.correct : P292981471477749817.Spec := by
  intro n
  simp only [A189770, Nat.add_sub_cancel]

end A189770

/-! ## A189770.P3701382171718301092

`∑[∑[∑[n+1]]]*A000984(n+1)`
-/

namespace A189770.P3701382171718301092
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000984 (n + 1)

end

end A189770.P3701382171718301092

namespace A189770

/-- `∑[∑[∑[n+1]]]*A000984(n+1)` -/
def P3701382171718301092.Spec : Prop :=
  ∀ n, P3701382171718301092.a n = A189770 (n + 1)

end A189770

/-! ## A189770.P7940890505226685726

`Δ[A014137(n)]*A006470(n+1)`
-/

namespace A189770.P7940890505226685726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006470 (n + 1)

end

end A189770.P7940890505226685726

namespace A189770

/-- `Δ[A014137(n)]*A006470(n+1)` -/
def P7940890505226685726.Spec : Prop :=
  ∀ n, P7940890505226685726.a n = A189770 (n + 1)

end A189770

/-! ## A189770.P15372485627594704761

`A000108(n+1)*A006470(n+1)`
-/

namespace A189770.P15372485627594704761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A006470 (n + 1)

end

end A189770.P15372485627594704761

namespace A189770

/-- `A000108(n+1)*A006470(n+1)` -/
def P15372485627594704761.Spec : Prop :=
  ∀ n, P15372485627594704761.a n = A189770 (n + 1)

end A189770

/-! ## A189770.P14793230223158297418

`C(2*n+1, n)*∑[∑[(n+1)*(n+2)]]`
-/

namespace A189770.P14793230223158297418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189770.P14793230223158297418

namespace A189770

/-- `C(2*n+1, n)*∑[∑[(n+1)*(n+2)]]` -/
def P14793230223158297418.Spec : Prop :=
  ∀ n, (P14793230223158297418.a n : ℤ) = A189770 (n + 1)

end A189770

/-!
# A189771: Number of simple graphs on n nodes that are Euler (all nodes even) but not Eulerian (single cycle passes through all edges).

The programs for A189771, there is no canonical definition to state claims against.
-/

/-! ## A189771.P8361961623103226990

`A002854(n+1)-A133736(n+1)`
-/

namespace A189771.P8361961623103226990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (n + 1) - A133736 (n + 1)

end

end A189771.P8361961623103226990

/-! ## A189771.P1929586724427278999

`A002854(n+1)-∑[A003049(n+1)]`
-/

namespace A189771.P1929586724427278999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189771.P1929586724427278999

/-! ## A189771.P7243870249486356096

`A002854(n+1)-∑[A001349(n+1)-A158007(n+1)]`
-/

namespace A189771.P7243870249486356096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A158007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002854 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189771.P7243870249486356096

/-! ## A189771.P13717258196028691906

`A003984(floor(n!/(9*n+6)))`
-/

namespace A189771.P13717258196028691906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 ⌊(Nat.factorial n : ℚ) / (9 * n + 6 : ℚ)⌋.toNat

end

end A189771.P13717258196028691906

/-! ## A189771.P7528100537066219840

`A239456(A298414(n))`
-/

namespace A189771.P7528100537066219840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239456 (A298414 n).toNat

end

end A189771.P7528100537066219840

/-!
# A189773: Number of n X n binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189773, there is no canonical definition to state claims against.
-/

/-! ## A189773.P13742266910202490112

`A189779(∑[4*n]+1)`
-/

namespace A189773.P13742266910202490112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189773.P13742266910202490112

/-! ## A189773.P17450290217757948945

`lcm(2, A189779(A001844(n)))`
-/

namespace A189773.P17450290217757948945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189779 (A001844 n).toNat)

end

end A189773.P17450290217757948945

/-! ## A189773.P8762981572502405543

`record[A003982(n)*A189779(n+1)]`
-/

namespace A189773.P8762981572502405543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189773.P8762981572502405543

/-! ## A189773.P728418832408989994

`record[gcd(A189779(n+1), A274650(n))]`
-/

namespace A189773.P728418832408989994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189779 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189773.P728418832408989994

/-! ## A189773.P885344765262576137

`record[root(A189779(n+1), A072030(n+1))]`
-/

namespace A189773.P885344765262576137
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189779 (n + 1) : ℝ) ^ (1 / (A072030 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189773.P885344765262576137

/-!
# A189774: Number of n X 4 binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189774, there is no canonical definition to state claims against.
-/

/-! ## A189774.P7460375282145373646

`A189779(A141214(n)+7)`
-/

namespace A189774.P7460375282145373646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A141214 n + 7).toNat

end

end A189774.P7460375282145373646

/-! ## A189774.P3361951186444166759

`A189779(A055999(n)+10)`
-/

namespace A189774.P3361951186444166759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A055999 n + 10).toNat

end

end A189774.P3361951186444166759

/-! ## A189774.P3031037305464760218

`A189779(A167614(n+2)+1)`
-/

namespace A189774.P3031037305464760218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A167614 (n + 2) + 1).toNat

end

end A189774.P3031037305464760218

/-! ## A189774.P14132912555350703925

`A189779(A167499(n+2)-1)`
-/

namespace A189774.P14132912555350703925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A167499 (n + 2) - 1).toNat

end

end A189774.P14132912555350703925

/-! ## A189774.P6236637443390901542

`A189779(eq[5, A131818(n+1)])`
-/

namespace A189774.P6236637443390901542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189774.P6236637443390901542

/-!
# A189775: Number of nX5 binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189775, there is no canonical definition to state claims against.
-/

/-! ## A189775.P1983666659763107748

`A189779(A167499(n+3))`
-/

namespace A189775.P1983666659763107748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A167499 (n + 3)).toNat

end

end A189775.P1983666659763107748

/-! ## A189775.P4258619439462999656

`A189779(A155212(n)+13)`
-/

namespace A189775.P4258619439462999656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A155212 n + 13).toNat

end

end A189775.P4258619439462999656

/-! ## A189775.P3712627499385033928

`A189779(eq[7, A066657(n)])`
-/

namespace A189775.P3712627499385033928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189775.P3712627499385033928

/-! ## A189775.P15408947107183228690

`A189779(eq[6, A131818(n+1)])`
-/

namespace A189775.P15408947107183228690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189775.P15408947107183228690

/-! ## A189775.P6538141297043493010

`A189779(A374005(n+1))`
-/

namespace A189775.P6538141297043493010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A374005 (n + 1)).toNat

end

end A189775.P6538141297043493010

/-!
# A189776: Number of nX6 binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189776, there is no canonical definition to state claims against.
-/

/-! ## A189776.P11222564971795185307

`A189779(A167614(n+4)+3)`
-/

namespace A189776.P11222564971795185307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A167614 (n + 4) + 3).toNat

end

end A189776.P11222564971795185307

/-! ## A189776.P6244807308028028565

`A189779(eq[7, A131818(n+1)])`
-/

namespace A189776.P6244807308028028565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189776.P6244807308028028565

/-! ## A189776.P6641894613280791590

`A189779(A374007(n+1))`
-/

namespace A189776.P6641894613280791590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A374007 (n + 1)).toNat

end

end A189776.P6641894613280791590

/-! ## A189776.P15716933414096289340

`A189779(A052905(n+3))`
-/

namespace A189776.P15716933414096289340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A052905 (n + 3)).toNat

end

end A189776.P15716933414096289340

/-! ## A189776.P2959546611540524872

`A189779(eq[3, A219347(n)])`
-/

namespace A189776.P2959546611540524872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189776.P2959546611540524872

/-!
# A189777: Number of nX7 binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189777, there is no canonical definition to state claims against.
-/

/-! ## A189777.P13155286962723176249

`A189779(eq[11, A066657(n)])`
-/

namespace A189777.P13155286962723176249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189777.P13155286962723176249

/-! ## A189777.P8957400490180644573

`A189779(eq[8, A131818(n+1)])`
-/

namespace A189777.P8957400490180644573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189777.P8957400490180644573

/-! ## A189777.P13440074200901784

`A189779(A374008(n+1))`
-/

namespace A189777.P13440074200901784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A374008 (n + 1)).toNat

end

end A189777.P13440074200901784

/-! ## A189777.P14344031155289919124

`A189779(eq[4, A219347(n)])`
-/

namespace A189777.P14344031155289919124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189777.P14344031155289919124

/-! ## A189777.P11279441196431354566

`A189779(eq[5, A332954(n)])`
-/

namespace A189777.P11279441196431354566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189777.P11279441196431354566

/-!
# A189778: Number of nX8 binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189778, there is no canonical definition to state claims against.
-/

/-! ## A189778.P4094089398980445441

`A189779(A167499(n+6)+3)`
-/

namespace A189778.P4094089398980445441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A167499 (n + 6) + 3).toNat

end

end A189778.P4094089398980445441

/-! ## A189778.P9726270954603048435

`A189779(eq[9, A131818(n+1)])`
-/

namespace A189778.P9726270954603048435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189778.P9726270954603048435

/-! ## A189778.P4391475289719345206

`A189779(A374009(n+1))`
-/

namespace A189778.P4391475289719345206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (A374009 (n + 1)).toNat

end

end A189778.P4391475289719345206

/-! ## A189778.P12130026837785021822

`A189779(eq[5, A219347(n)])`
-/

namespace A189778.P12130026837785021822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189778.P12130026837785021822

/-! ## A189778.P12723601234428913001

`A189779(eq[7, A193592(n)])`
-/

namespace A189778.P12723601234428913001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189778.P12723601234428913001

/-!
# A189779: T(n,k)=Number of nXk binary arrays without the pattern 1 0 0 1 diagonally, vertically or horizontally.

The programs for A189779, there is no canonical definition to state claims against.
-/

/-! ## A189779.P6673212533159787272

`A355451(A189161(n+4))+A189161(n+1)`
-/

namespace A189779.P6673212533159787272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (A189161 (n + 4)).toNat + A189161 (n + 1)

end

end A189779.P6673212533159787272

/-! ## A189779.P15410783252576185826

`A189161(n+1)+A186746(A035695(n+1)²)`
-/

namespace A189779.P15410783252576185826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (n + 1) + A186746 (A035695 (n + 1) ^ 2).toNat

end

end A189779.P15410783252576185826

/-!
# A189780: Expansion of e.g.f. 1/(1 - arcsin(x)).

The programs for A189780, there is no canonical definition to state claims against.
-/

/-! ## A189780.P8531737282950749988

`A181786(A003149(n))+A006154(n)`
-/

namespace A189780.P8531737282950749988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A003149 n).toNat + A006154 n

end

end A189780.P8531737282950749988

/-! ## A189780.P9287945343497717309

`A195174(A289501(n)+A008980(n))`
-/

namespace A189780.P9287945343497717309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A289501 n + A008980 n).toNat

end

end A189780.P9287945343497717309

/-! ## A189780.P11649560562178226188

`A004526(A331607(n)+A300913(n))`
-/

namespace A189780.P11649560562178226188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331607 n + A300913 n).toNat

end

end A189780.P11649560562178226188

/-!
# A189781: a(n) = n + [nr/s] + [nt/s]; r=Pi/2, s=arcsin(8/17), t=arcsin(15/17).

The programs for A189781, there is no canonical definition to state claims against.
-/

/-! ## A189781.P2079732280682965844

`2*A189783(n+1)`
-/

namespace A189781.P2079732280682965844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189783 (n + 1)

end

end A189781.P2079732280682965844

/-! ## A189781.P12615914091925617682

`A189783(A000027(n+1))+A189783(n+1)`
-/

namespace A189781.P12615914091925617682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189783 (A000027 (n + 1)).toNat + A189783 (n + 1)

end

end A189781.P12615914091925617682

/-! ## A189781.P7790866761434727720

`A189783(n+1)+A189783(n+1)%A110833(n+1)`
-/

namespace A189781.P7790866761434727720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189783 (n + 1) + Int.tmod (A189783 (n + 1)) (A110833 (n + 1))

end

end A189781.P7790866761434727720

/-! ## A189781.P17307719902870391405

`A004277(A189783(n+1))`
-/

namespace A189781.P17307719902870391405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189783 (n + 1)).toNat

end

end A189781.P17307719902870391405

/-! ## A189781.P13816062232761993205

`A004275(A189783(n+1)+1)`
-/

namespace A189781.P13816062232761993205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A189783 (n + 1) + 1).toNat

end

end A189781.P13816062232761993205

/-! ## A189781.P9020201037482375706

`A005843(A189783(2*n-(n-1)))`
-/

namespace A189781.P9020201037482375706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A189783 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A189781.P9020201037482375706

/-! ## A189781.P14757828092753413046

`A005843(or(A000007(n), A189783(n+1)))`
-/

namespace A189781.P14757828092753413046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (A000007 n) (A189783 (n + 1))).toNat

end

end A189781.P14757828092753413046

/-!
# A189782: a(n) = n + [nr/t] + [ns/t]; r=Pi/2, s=arcsin(8/17), t=arcsin(15/17).

The programs for A189782, there is no canonical definition to state claims against.
-/

/-! ## A189782.P8043071082949005850

`2*A189784(n+1)`
-/

namespace A189782.P8043071082949005850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189784 (n + 1)

end

end A189782.P8043071082949005850

/-! ## A189782.P10845214376872665978

`A189784(A000027(n+1))+A189784(n+1)`
-/

namespace A189782.P10845214376872665978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189784 (A000027 (n + 1)).toNat + A189784 (n + 1)

end

end A189782.P10845214376872665978

/-! ## A189782.P10702978251738603252

`A189784(n+1)+A189784(n+1)%A155212(n)`
-/

namespace A189782.P10702978251738603252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189784 (n + 1) + Int.tmod (A189784 (n + 1)) (A155212 n)

end

end A189782.P10702978251738603252

/-! ## A189782.P11265743916848325299

`A004277(A189784(n+1))`
-/

namespace A189782.P11265743916848325299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189784 (n + 1)).toNat

end

end A189782.P11265743916848325299

/-! ## A189782.P10271617900546808372

`A004275(A189784(n+1)+1)`
-/

namespace A189782.P10271617900546808372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A189784 (n + 1) + 1).toNat

end

end A189782.P10271617900546808372

/-!
# A189783: (A189781)/2.

The programs for A189783, there is no canonical definition to state claims against.
-/

/-! ## A189783.P13181944350516323105

`A189781(n+1)/2`
-/

namespace A189783.P13181944350516323105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189781 (n + 1) : ℚ) / 2

end

end A189783.P13181944350516323105

/-! ## A189783.P11658360130799897944

`A008619(A189781(n+1)-2)`
-/

namespace A189783.P11658360130799897944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189781 (n + 1) - 2).toNat

end

end A189783.P11658360130799897944

/-! ## A189783.P12879827841378058454

`A001281(A189781(n+1))`
-/

namespace A189783.P12879827841378058454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189781 (n + 1)).toNat

end

end A189783.P12879827841378058454

/-! ## A189783.P10623868635849337978

`A168230(A189781(n+1)+1)`
-/

namespace A189783.P10623868635849337978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (A189781 (n + 1) + 1).toNat

end

end A189783.P10623868635849337978

/-! ## A189783.P6298064483445217560

`A065033(A189781(n+1)-1)`
-/

namespace A189783.P6298064483445217560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189781 (n + 1) - 1).toNat

end

end A189783.P6298064483445217560

/-! ## A189783.P5369583149737910821

`A080513(A189781(n+1)-2)`
-/

namespace A189783.P5369583149737910821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A189781 (n + 1) - 2).toNat

end

end A189783.P5369583149737910821

/-! ## A189783.P9172419056171805472

`A026741(A189781(n+1)%A139610(n))`
-/

namespace A189783.P9172419056171805472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A189781 (n + 1)) (A139610 n)).toNat

end

end A189783.P9172419056171805472

/-! ## A189783.P2413537229279350980

`A025480(or(A000038(n), A189781(n+1)))`
-/

namespace A189783.P2413537229279350980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor (A000038 n) (A189781 (n + 1))).toNat

end

end A189783.P2413537229279350980

/-! ## A189783.P7178918864563943210

`A065033(or(A000038(n), A189781(n+1)))`
-/

namespace A189783.P7178918864563943210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A000038 n) (A189781 (n + 1))).toNat

end

end A189783.P7178918864563943210

/-! ## A189783.P1024484117509685128

`A026741(A189781(n+1))%A007529(n+1)`
-/

namespace A189783.P1024484117509685128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A189781 (n + 1)).toNat) (A007529 (n + 1))

end

end A189783.P1024484117509685128

/-! ## A189783.P3770714721562337423

`A065033(A189781(n+1))+A000038(A065033(n))`
-/

namespace A189783.P3770714721562337423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189781 (n + 1)).toNat + A000038 (A065033 n).toNat

end

end A189783.P3770714721562337423

/-!
# A189784: (A189782)/2.

The programs for A189784, there is no canonical definition to state claims against.
-/

/-! ## A189784.P3164025179981187445

`A189782(n+1)/2`
-/

namespace A189784.P3164025179981187445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189782 (n + 1) : ℚ) / 2

end

end A189784.P3164025179981187445

/-! ## A189784.P13435032280175332617

`A004525(A189782(n+1))`
-/

namespace A189784.P13435032280175332617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189782 (n + 1)).toNat

end

end A189784.P13435032280175332617

/-! ## A189784.P6445472367605711604

`A008619(A189782(n+1)-1)`
-/

namespace A189784.P6445472367605711604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189782 (n + 1) - 1).toNat

end

end A189784.P6445472367605711604

/-! ## A189784.P8873545808592557521

`A004526(A189782(n+1)+1)`
-/

namespace A189784.P8873545808592557521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189782 (n + 1) + 1).toNat

end

end A189784.P8873545808592557521

/-! ## A189784.P13813352360826734609

`A168230(A189782(n+1)+1)`
-/

namespace A189784.P13813352360826734609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (A189782 (n + 1) + 1).toNat

end

end A189784.P13813352360826734609

/-! ## A189784.P6991874335673082777

`A054576(2*A189782(n+1))`
-/

namespace A189784.P6991874335673082777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A189782 (n + 1)).toNat

end

end A189784.P6991874335673082777

/-! ## A189784.P11972701167919791714

`A152467(A189782(n+1)+2*A189782(n+1))`
-/

namespace A189784.P11972701167919791714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A189782 (n + 1) + 2 * A189782 (n + 1)).toNat

end

end A189784.P11972701167919791714

/-! ## A189784.P9969158780304705825

`A000196(A184873((n+1)²))`
-/

namespace A189784.P9969158780304705825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A184873 ((n + 1) ^ 2)).toNat

end

end A189784.P9969158780304705825

/-!
# A189785: a(n) = n+floor(n*r/s)+floor(nt/s); r=Pi/2, s=arcsin(5/13), t=arcsin(12/13).

The programs for A189785, the canonical program `A189785.P16525094477726922721` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189785 has offset 1).

The definition of A189785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189785.P16525094477726922721

`2*A189787(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189785

/-- `2*A189787(n+1)` -/
def P16525094477726922721.Spec : Prop :=
  ∀ n, P16525094477726922721.a n = A189785 (n + 1)

theorem P16525094477726922721.correct : P16525094477726922721.Spec := by
  intro n
  simp only [A189785, Nat.add_sub_cancel]

end A189785

/-! ## A189785.P3776838957786185137

`A189787(A000027(n+1))+A189787(n+1)`
-/

namespace A189785.P3776838957786185137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189787 (A000027 (n + 1)).toNat + A189787 (n + 1)

end

end A189785.P3776838957786185137

namespace A189785

/-- `A189787(A000027(n+1))+A189787(n+1)` -/
def P3776838957786185137.Spec : Prop :=
  ∀ n, P3776838957786185137.a n = A189785 (n + 1)

end A189785

/-! ## A189785.P9609972470803790467

`A189787(n+1)+A189787(n+1)%A189808(n+1)`
-/

namespace A189785.P9609972470803790467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189787 (n + 1) + Int.tmod (A189787 (n + 1)) (A189808 (n + 1))

end

end A189785.P9609972470803790467

namespace A189785

/-- `A189787(n+1)+A189787(n+1)%A189808(n+1)` -/
def P9609972470803790467.Spec : Prop :=
  ∀ n, P9609972470803790467.a n = A189785 (n + 1)

end A189785

/-! ## A189785.P6014874882622310462

`A004277(A189787(n+1))`
-/

namespace A189785.P6014874882622310462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189787 (n + 1)).toNat

end

end A189785.P6014874882622310462

namespace A189785

/-- `A004277(A189787(n+1))` -/
def P6014874882622310462.Spec : Prop :=
  ∀ n, P6014874882622310462.a n = A189785 (n + 1)

end A189785

/-! ## A189785.P16696186974542341828

`A004275(A189787(n+1)+1)`
-/

namespace A189785.P16696186974542341828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A189787 (n + 1) + 1).toNat

end

end A189785.P16696186974542341828

namespace A189785

/-- `A004275(A189787(n+1)+1)` -/
def P16696186974542341828.Spec : Prop :=
  ∀ n, P16696186974542341828.a n = A189785 (n + 1)

end A189785

/-! ## A189785.P10501453429058806002

`A005843(or(char[4], A189787(n+1)))`
-/

namespace A189785.P10501453429058806002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189787 (n + 1))).toNat

end

end A189785.P10501453429058806002

namespace A189785

/-- `A005843(or(char[4], A189787(n+1)))` -/
def P10501453429058806002.Spec : Prop :=
  ∀ n, P10501453429058806002.a n = A189785 (n + 1)

end A189785

/-! ## A189785.P10753403933723336700

`2*∑[A011592(n²)+3]`
-/

namespace A189785.P10753403933723336700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (n ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189785.P10753403933723336700

namespace A189785

/-- `2*∑[A011592(n²)+3]` -/
def P10753403933723336700.Spec : Prop :=
  ∀ n, P10753403933723336700.a n = A189785 (n + 1)

end A189785

/-!
# A189786: a(n) = n + [nr/t] + [ns/t]; r=Pi/2, s=arcsin(5/13), t=arcsin(12/13).

The programs for A189786, the canonical program `A189786.P10687679129082034515` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189786 has offset 1).

The definition of A189786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189786.P10687679129082034515

`∑[A069705(C(n, 2)+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189786

/-- `∑[A069705(C(n, 2)+1)]` -/
def P10687679129082034515.Spec : Prop :=
  ∀ n, P10687679129082034515.a n = A189786 (n + 1)

theorem P10687679129082034515.correct : P10687679129082034515.Spec := by
  intro n
  simp only [A189786, Nat.add_sub_cancel]

end A189786

/-! ## A189786.P12031605121343612721

`∑[A130784(C(n, 2))+1]`
-/

namespace A189786.P12031605121343612721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (Nat.choose n 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P12031605121343612721

namespace A189786

/-- `∑[A130784(C(n, 2))+1]` -/
def P12031605121343612721.Spec : Prop :=
  ∀ n, P12031605121343612721.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P15324376576010131341

`∑[A169609(C(n, 2))+1]`
-/

namespace A189786.P15324376576010131341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169609 (Nat.choose n 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P15324376576010131341

namespace A189786

/-- `∑[A169609(C(n, 2))+1]` -/
def P15324376576010131341.Spec : Prop :=
  ∀ n, P15324376576010131341.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P6122897563449187680

`∑[gcd(4, A207458(n+3))]`
-/

namespace A189786.P6122897563449187680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A207458 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P6122897563449187680

namespace A189786

/-- `∑[gcd(4, A207458(n+3))]` -/
def P6122897563449187680.Spec : Prop :=
  ∀ n, (P6122897563449187680.a n : ℤ) = A189786 (n + 1)

end A189786

/-! ## A189786.P14599346792319777151

`∑[2*A010882(C(n, 2))]`
-/

namespace A189786.P14599346792319777151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010882 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P14599346792319777151

namespace A189786

/-- `∑[2*A010882(C(n, 2))]` -/
def P14599346792319777151.Spec : Prop :=
  ∀ n, P14599346792319777151.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P2521377960735495773

`∑[3-A049347(C(n, 2))]`
-/

namespace A189786.P2521377960735495773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049347 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P2521377960735495773

namespace A189786

/-- `∑[3-A049347(C(n, 2))]` -/
def P2521377960735495773.Spec : Prop :=
  ∀ n, P2521377960735495773.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P2767625393072044889

`∑[2*A131534(C(n, 2))]`
-/

namespace A189786.P2767625393072044889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131534 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P2767625393072044889

namespace A189786

/-- `∑[2*A131534(C(n, 2))]` -/
def P2767625393072044889.Spec : Prop :=
  ∀ n, P2767625393072044889.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P8695173566023308513

`∑[5-A109007(C(n, 2))]`
-/

namespace A189786.P8695173566023308513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A109007 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P8695173566023308513

namespace A189786

/-- `∑[5-A109007(C(n, 2))]` -/
def P8695173566023308513.Spec : Prop :=
  ∀ n, P8695173566023308513.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P16402991463170078349

`∑[A069705(∑[abs(1-n)])]`
-/

namespace A189786.P16402991463170078349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P16402991463170078349

namespace A189786

/-- `∑[A069705(∑[abs(1-n)])]` -/
def P16402991463170078349.Spec : Prop :=
  ∀ n, P16402991463170078349.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P2060701129807271612

`∑[A167420(∑[abs(1-n)])]`
-/

namespace A189786.P2060701129807271612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167420 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P2060701129807271612

namespace A189786

/-- `∑[A167420(∑[abs(1-n)])]` -/
def P2060701129807271612.Spec : Prop :=
  ∀ n, P2060701129807271612.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P2818407717103838784

`∑[dr(A000124(∑[n-1]+2))]`
-/

namespace A189786.P2818407717103838784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000124 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P2818407717103838784

namespace A189786

/-- `∑[dr(A000124(∑[n-1]+2))]` -/
def P2818407717103838784.Spec : Prop :=
  ∀ n, (P2818407717103838784.a n : ℤ) = A189786 (n + 1)

end A189786

/-! ## A189786.P13048655174508969861

`∑[2*A010125((1-n)²+n)]`
-/

namespace A189786.P13048655174508969861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010125 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P13048655174508969861

namespace A189786

/-- `∑[2*A010125((1-n)²+n)]` -/
def P13048655174508969861.Spec : Prop :=
  ∀ n, P13048655174508969861.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P16164822226601189364

`∑[2*A010135((1-n)²+n)]`
-/

namespace A189786.P16164822226601189364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010135 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P16164822226601189364

namespace A189786

/-- `∑[2*A010135((1-n)²+n)]` -/
def P16164822226601189364.Spec : Prop :=
  ∀ n, P16164822226601189364.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P3351916957881666179

`∑[lcm(2, A010142((1-n)²+n))]`
-/

namespace A189786.P3351916957881666179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A010142 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P3351916957881666179

namespace A189786

/-- `∑[lcm(2, A010142((1-n)²+n))]` -/
def P3351916957881666179.Spec : Prop :=
  ∀ n, (P3351916957881666179.a n : ℤ) = A189786 (n + 1)

end A189786

/-! ## A189786.P711824650422323800

`∑[A038500(∑[abs(1-n)]+1)+1]`
-/

namespace A189786.P711824650422323800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189786.P711824650422323800

namespace A189786

/-- `∑[A038500(∑[abs(1-n)]+1)+1]` -/
def P711824650422323800.Spec : Prop :=
  ∀ n, P711824650422323800.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P8679059946106382389

`A004277(∑[A131534(C(n, 2))])`
-/

namespace A189786.P8679059946106382389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189786.P8679059946106382389

namespace A189786

/-- `A004277(∑[A131534(C(n, 2))])` -/
def P8679059946106382389.Spec : Prop :=
  ∀ n, P8679059946106382389.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P10981052311381916885

`A004277(∑[A010135((1-n)²+n)])`
-/

namespace A189786.P10981052311381916885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189786.P10981052311381916885

namespace A189786

/-- `A004277(∑[A010135((1-n)²+n)])` -/
def P10981052311381916885.Spec : Prop :=
  ∀ n, P10981052311381916885.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P5885291208778127554

`A005843(∑[A010125((1-n)²+n)])`
-/

namespace A189786.P5885291208778127554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189786.P5885291208778127554

namespace A189786

/-- `A005843(∑[A010125((1-n)²+n)])` -/
def P5885291208778127554.Spec : Prop :=
  ∀ n, P5885291208778127554.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P5800920907357188568

`A005843(∑[A010135((1-n)²+n)])`
-/

namespace A189786.P5800920907357188568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189786.P5800920907357188568

namespace A189786

/-- `A005843(∑[A010135((1-n)²+n)])` -/
def P5800920907357188568.Spec : Prop :=
  ∀ n, P5800920907357188568.a n = A189786 (n + 1)

end A189786

/-! ## A189786.P15750576359950105905

`eq[A108357(n), A221075(n)]`
-/

namespace A189786.P15750576359950105905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189786.P15750576359950105905

namespace A189786

/-- `eq[A108357(n), A221075(n)]` -/
def P15750576359950105905.Spec : Prop :=
  ∀ n, (P15750576359950105905.a n : ℤ) = A189786 (n + 1)

end A189786

/-!
# A189787: a(n) = A189785(n)/2.

The programs for A189787, the canonical program `A189787.P3514663501492453649` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189787 has offset 1).

The definition of A189787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189785, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189787.P18272826303171289391

`A189785(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A189787.P18272826303171289391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189785 (n + 1) : ℚ) / 2

end

end A189787.P18272826303171289391

namespace A189787

/-- `A189785(n+1)/2` -/
def P18272826303171289391.Spec : Prop :=
  ∀ n, P18272826303171289391.a n = (A189787 (n + 1) : ℚ)

theorem P18272826303171289391.correct : P18272826303171289391.Spec := by
  intro n
  simp only [A189787, Nat.add_sub_cancel, A189787.P18272826303171289391.a, A189787.P3514663501492453649.a, A189785, A189785.P16525094477726922721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A189787

/-! ## A189787.P3514663501492453649

`floor((n+1)*acot(1)/acot(5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189787

/-- `floor((n+1)*acot(1)/acot(5))` -/
def P3514663501492453649.Spec : Prop :=
  ∀ n, P3514663501492453649.a n = A189787 (n + 1)

theorem P3514663501492453649.correct : P3514663501492453649.Spec := by
  intro n
  simp only [A189787, Nat.add_sub_cancel]

end A189787

/-! ## A189787.P9497952798477266448

`A008619(A189785(n+1)-2)`
-/

namespace A189787.P9497952798477266448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189785 (n + 1) - 2).toNat

end

end A189787.P9497952798477266448

namespace A189787

/-- `A008619(A189785(n+1)-2)` -/
def P9497952798477266448.Spec : Prop :=
  ∀ n, P9497952798477266448.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P14809786081286595405

`A001281(A189785(n+1))`
-/

namespace A189787.P14809786081286595405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189785 (n + 1)).toNat

end

end A189787.P14809786081286595405

namespace A189787

/-- `A001281(A189785(n+1))` -/
def P14809786081286595405.Spec : Prop :=
  ∀ n, P14809786081286595405.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P9274901384716677511

`A065033(A189785(n+1)-1)`
-/

namespace A189787.P9274901384716677511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189785 (n + 1) - 1).toNat

end

end A189787.P9274901384716677511

namespace A189787

/-- `A065033(A189785(n+1)-1)` -/
def P9274901384716677511.Spec : Prop :=
  ∀ n, P9274901384716677511.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P8653943732732940656

`A065033(lcm(2, A189785(n+1)))`
-/

namespace A189787.P8653943732732940656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lcm 2 (A189785 (n + 1)))

end

end A189787.P8653943732732940656

namespace A189787

/-- `A065033(lcm(2, A189785(n+1)))` -/
def P8653943732732940656.Spec : Prop :=
  ∀ n, P8653943732732940656.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P11588740357794118099

`A026741(A189785(n+1)%A139610(n))`
-/

namespace A189787.P11588740357794118099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A189785 (n + 1)) (A139610 n)).toNat

end

end A189787.P11588740357794118099

namespace A189787

/-- `A026741(A189785(n+1)%A139610(n))` -/
def P11588740357794118099.Spec : Prop :=
  ∀ n, P11588740357794118099.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P15675581805463062722

`A025480(or(A000038(n), A189785(n+1)))`
-/

namespace A189787.P15675581805463062722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor (A000038 n) (A189785 (n + 1))).toNat

end

end A189787.P15675581805463062722

namespace A189787

/-- `A025480(or(A000038(n), A189785(n+1)))` -/
def P15675581805463062722.Spec : Prop :=
  ∀ n, P15675581805463062722.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P15103306579800573313

`A076314(5*A189785(n+1))`
-/

namespace A189787.P15103306579800573313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (5 * A189785 (n + 1)).toNat

end

end A189787.P15103306579800573313

namespace A189787

/-- `A076314(5*A189785(n+1))` -/
def P15103306579800573313.Spec : Prop :=
  ∀ n, P15103306579800573313.a n = A189787 (n + 1)

end A189787

/-! ## A189787.P16731563632090792508

`∑[A011592(n²)+3]`
-/

namespace A189787.P16731563632090792508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (n ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189787.P16731563632090792508

namespace A189787

/-- `∑[A011592(n²)+3]` -/
def P16731563632090792508.Spec : Prop :=
  ∀ n, P16731563632090792508.a n = A189787 (n + 1)

end A189787

/-!
# A189788: Base-10 lunar factorials: a(n) = (lunar) Product_{i=1..n} i.

The programs for A189788, there is no canonical definition to state claims against.
-/

/-! ## A189788.P23664349838918732

`A136400(n*a(n-1))` with `a(0)=9`
-/

namespace A189788.P23664349838918732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A136400 ((n : ℤ) * a (n - 1)).toNat

end

end A189788.P23664349838918732

/-! ## A189788.P2551469993947925095

`A136400(a(n-1)/n^(-1))` with `a(0)=9`
-/

namespace A189788.P2551469993947925095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A136400 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

end

end A189788.P2551469993947925095

/-! ## A189788.P7081620019824854187

`A136400(lcm(n, 1-a(n-1))+n)` with `a(0)=9`
-/

namespace A189788.P7081620019824854187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A136400 (Int.lcm (n : ℤ) (1 - a (n - 1)) + n)

end

end A189788.P7081620019824854187

/-! ## A189788.P3336357137929889177

`A136400(abs(n*a(log2(1/2)+n)))` with `a(0)=9, a(1)=1`
-/

namespace A189788.P3336357137929889177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 1] fun n a =>
  A136400 |(n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat|.toNat

end

end A189788.P3336357137929889177

/-! ## A189788.P4302546972108916102

`A136400(floor(n*a(log2(1/2)+n)))` with `a(0)=9, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A189788.P4302546972108916102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 1] fun n a =>
  A136400 ((n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat).toNat

end

end A189788.P4302546972108916102

/-!
# A189789: Number of ways to place 8 nonattacking bishops on an n x n toroidal board.

The programs for A189789, there is no canonical definition to state claims against.
-/

/-! ## A189789.P3106403013344577705

`A185274(A115392(n+1))*A189790(n+1)`
-/

namespace A189789.P3106403013344577705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A115392 (n + 1)).toNat * A189790 (n + 1)

end

end A189789.P3106403013344577705

/-! ## A189789.P1712170704281948617

`A007953(A185274(2*n))*A189790(n+1)`
-/

namespace A189789.P1712170704281948617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A185274 (2 * n)).toNat * A189790 (n + 1)

end

end A189789.P1712170704281948617

/-!
# A189790: Number of ways to place n nonattacking bishops on an n X n toroidal board.

The programs for A189790, the canonical program `A189790.P14606180485409613657` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189790 has offset 1).

The definition of A189790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189790.P14606180485409613657

`(n+1)*(2*(n+1)-3)*a(n-2)-(n-2)*(n+1)*(n-1)²*a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=64`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189790

/-- `(n+1)*(2*(n+1)-3)*a(n-2)-(n-2)*(n+1)*(n-1)²*a(n-4)` -/
def P14606180485409613657.Spec : Prop :=
  ∀ n, P14606180485409613657.a n = A189790 (n + 1)

theorem P14606180485409613657.correct : P14606180485409613657.Spec := by
  intro n
  simp only [A189790, Nat.add_sub_cancel]

end A189790

/-! ## A189790.P13968405594301227074

`a(n-2)*A238411(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A189790.P13968405594301227074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) * A238411 (n + 1)

end

end A189790.P13968405594301227074

namespace A189790

/-- `a(n-2)*A238411(n+1)` -/
def P13968405594301227074.Spec : Prop :=
  ∀ n, P13968405594301227074.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P15688133510855210603

`A006882(n+1)*A037223(n+1)`
-/

namespace A189790.P15688133510855210603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A037223 (n + 1)

end

end A189790.P15688133510855210603

namespace A189790

/-- `A006882(n+1)*A037223(n+1)` -/
def P15688133510855210603.Spec : Prop :=
  ∀ n, P15688133510855210603.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P2137841258359219198

`∏[A124625(n+2)]*A006882(n+1)`
-/

namespace A189790.P2137841258359219198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006882 (n + 1)

end

end A189790.P2137841258359219198

namespace A189790

/-- `∏[A124625(n+2)]*A006882(n+1)` -/
def P2137841258359219198.Spec : Prop :=
  ∀ n, P2137841258359219198.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P16438520657231999107

`A037223(n+1)*A248809(A000217(n))`
-/

namespace A189790.P16438520657231999107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (n + 1) * A248809 (A000217 n).toNat

end

end A189790.P16438520657231999107

namespace A189790

/-- `A037223(n+1)*A248809(A000217(n))` -/
def P16438520657231999107.Spec : Prop :=
  ∀ n, P16438520657231999107.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P16067120663203978726

`A006882(n+1)*A006882(A052928(n+1))`
-/

namespace A189790.P16067120663203978726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A006882 (A052928 (n + 1)).toNat

end

end A189790.P16067120663203978726

namespace A189790

/-- `A006882(n+1)*A006882(A052928(n+1))` -/
def P16067120663203978726.Spec : Prop :=
  ∀ n, P16067120663203978726.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P375567278184373234

`A006882(n+1)*A006882(A131055(n+1))`
-/

namespace A189790.P375567278184373234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A006882 (A131055 (n + 1)).toNat

end

end A189790.P375567278184373234

namespace A189790

/-- `A006882(n+1)*A006882(A131055(n+1))` -/
def P375567278184373234.Spec : Prop :=
  ∀ n, P375567278184373234.a n = A189790 (n + 1)

end A189790

/-! ## A189790.P3881944071486614891

`∪[∏[(2*(n+1))²], (2*n+1)!]`
-/

namespace A189790.P3881944071486614891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A189790.P3881944071486614891

namespace A189790

/-- `∪[∏[(2*(n+1))²], (2*n+1)!]` -/
def P3881944071486614891.Spec : Prop :=
  ∀ n, (P3881944071486614891.a n : ℤ) = A189790 (n + 1)

end A189790

/-! ## A189790.P16665499109218332026

`∪[(2*n+1)!, (2*n)²*a(n-1)]` with `a(0)=1`
-/

namespace A189790.P16665499109218332026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 * n) ^ 2 * f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A189790.P16665499109218332026

namespace A189790

/-- `∪[(2*n+1)!, (2*n)²*a(n-1)]` -/
def P16665499109218332026.Spec : Prop :=
  ∀ n, (P16665499109218332026.a n : ℤ) = A189790 (n + 1)

end A189790

/-!
# A189791: Number of ways to place n nonattacking bishops on an 2n x 2n toroidal board.

The programs for A189791, the canonical program `A189791.P2299159923258994207` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189791 has offset 1).

The definition of A189791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189791.P2299159923258994207

`((14*(n+1)²-14*(n+1)+4)*a(n-1)+32*n^3*a(n-2))/(n+1)` with `a(0)=4, a(1)=80`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189791

/-- `((14*(n+1)²-14*(n+1)+4)*a(n-1)+32*n^3*a(n-2))/(n+1)` -/
def P2299159923258994207.Spec : Prop :=
  ∀ n, P2299159923258994207.a n = (A189791 (n + 1) : ℚ)

end A189791

/-! ## A189791.P15263633638957483509

`∏[2*(n+1)]*A000172(n+1)`
-/

namespace A189791.P15263633638957483509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000172 (n + 1)

end

end A189791.P15263633638957483509

namespace A189791

/-- `∏[2*(n+1)]*A000172(n+1)` -/
def P15263633638957483509.Spec : Prop :=
  ∀ n, P15263633638957483509.a n = A189791 (n + 1)

end A189791

/-! ## A189791.P6329088829786991978

`A000172(n+1)*A006882(2*(n+1))`
-/

namespace A189791.P6329088829786991978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n + 1) * A006882 (2 * (n + 1))

end

end A189791.P6329088829786991978

namespace A189791

/-- `A000172(n+1)*A006882(2*(n+1))` -/
def P6329088829786991978.Spec : Prop :=
  ∀ n, P6329088829786991978.a n = A189791 (n + 1)

end A189791

/-! ## A189791.P10711856410589216219

`A000172(n+1)*A037223(2*(n+1))`
-/

namespace A189791.P10711856410589216219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 (n + 1) * A037223 (2 * (n + 1))

end

end A189791.P10711856410589216219

namespace A189791

/-- `A000172(n+1)*A037223(2*(n+1))` -/
def P10711856410589216219.Spec : Prop :=
  ∀ n, P10711856410589216219.a n = A189791 (n + 1)

end A189791

/-!
# A189792: n + [nr/s] + [nt/s] with r = 1, s = (sin(1))^2, t = (cos(1))^2.

The programs for A189792, the canonical program `A189792.P8081215582414985752` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189792 has offset 1).

The definition of A189792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189792.P8081215582414985752

`2*floor((n+1)/sin(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189792

/-- `2*floor((n+1)/sin(1)²)` -/
def P8081215582414985752.Spec : Prop :=
  ∀ n, P8081215582414985752.a n = A189792 (n + 1)

theorem P8081215582414985752.correct : P8081215582414985752.Spec := by
  intro n
  simp only [A189792, Nat.add_sub_cancel]

end A189792

/-! ## A189792.P4709643306686589359

`2*A189794(n+1)`
-/

namespace A189792.P4709643306686589359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189794 (n + 1)

end

end A189792.P4709643306686589359

namespace A189792

/-- `2*A189794(n+1)` -/
def P4709643306686589359.Spec : Prop :=
  ∀ n, P4709643306686589359.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P1640784749458135456

`A189794(A000027(n+1))+A189794(n+1)`
-/

namespace A189792.P1640784749458135456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189794 (A000027 (n + 1)).toNat + A189794 (n + 1)

end

end A189792.P1640784749458135456

namespace A189792

/-- `A189794(A000027(n+1))+A189794(n+1)` -/
def P1640784749458135456.Spec : Prop :=
  ∀ n, P1640784749458135456.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P15444188571087639827

`A004277(A189794(n+1))`
-/

namespace A189792.P15444188571087639827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189794 (n + 1)).toNat

end

end A189792.P15444188571087639827

namespace A189792

/-- `A004277(A189794(n+1))` -/
def P15444188571087639827.Spec : Prop :=
  ∀ n, P15444188571087639827.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P548787910691637640

`A004523(A189797(n+1))`
-/

namespace A189792.P548787910691637640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A189797 (n + 1)).toNat

end

end A189792.P548787910691637640

namespace A189792

/-- `A004523(A189797(n+1))` -/
def P548787910691637640.Spec : Prop :=
  ∀ n, P548787910691637640.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P3865932384299072232

`A004396(A008585(floor((n+1)/sin(1)²)))`
-/

namespace A189792.P3865932384299072232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008585 ⌊(n + 1 : ℝ) / Real.sin (1 : ℝ) ^ 2⌋.toNat).toNat

end

end A189792.P3865932384299072232

namespace A189792

/-- `A004396(A008585(floor((n+1)/sin(1)²)))` -/
def P3865932384299072232.Spec : Prop :=
  ∀ n, P3865932384299072232.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P6307766746244754553

`A189797(n+1)-A002264(A189797(n+1)+2)`
-/

namespace A189792.P6307766746244754553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189797 (n + 1) - A002264 (A189797 (n + 1) + 2).toNat

end

end A189792.P6307766746244754553

namespace A189792

/-- `A189797(n+1)-A002264(A189797(n+1)+2)` -/
def P6307766746244754553.Spec : Prop :=
  ∀ n, P6307766746244754553.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P12408373839943398914

`A002264(2*A189797(n+1))`
-/

namespace A189792.P12408373839943398914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A189797 (n + 1)).toNat

end

end A189792.P12408373839943398914

namespace A189792

/-- `A002264(2*A189797(n+1))` -/
def P12408373839943398914.Spec : Prop :=
  ∀ n, P12408373839943398914.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P10077376515583207020

`A233583(A005408(floor((n+1)/sin(1)²)))`
-/

namespace A189792.P10077376515583207020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A005408 ⌊(n + 1 : ℝ) / Real.sin (1 : ℝ) ^ 2⌋.toNat).toNat

end

end A189792.P10077376515583207020

namespace A189792

/-- `A233583(A005408(floor((n+1)/sin(1)²)))` -/
def P10077376515583207020.Spec : Prop :=
  ∀ n, P10077376515583207020.a n = A189792 (n + 1)

end A189792

/-! ## A189792.P12154913465560041291

`A008611(A012265(2*n+1)+8*n+4)`
-/

namespace A189792.P12154913465560041291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A012265 (2 * n + 1) + (8 * n + 4 : ℤ)).toNat

end

end A189792.P12154913465560041291

namespace A189792

/-- `A008611(A012265(2*n+1)+8*n+4)` -/
def P12154913465560041291.Spec : Prop :=
  ∀ n, P12154913465560041291.a n = A189792 (n + 1)

end A189792

/-!
# A189793: n+[nr/t]+[ns/t]; r=1, s=(sin(1))^2, t=(cos(1))^2.

The programs for A189793, the canonical program `A189793.P11656514722830353148` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189793 has offset 1).

The definition of A189793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189793.P11656514722830353148

`2*floor((n+1)/cos(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189793

/-- `2*floor((n+1)/cos(1)²)` -/
def P11656514722830353148.Spec : Prop :=
  ∀ n, P11656514722830353148.a n = A189793 (n + 1)

theorem P11656514722830353148.correct : P11656514722830353148.Spec := by
  intro n
  simp only [A189793, Nat.add_sub_cancel]

end A189793

/-! ## A189793.P17095690525613446658

`2*floor((tan(1)²+1)*(n+1))`
-/

namespace A189793.P17095690525613446658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Real.tan (1 : ℝ) ^ 2 + 1) * (n + 1 : ℝ)⌋

end

end A189793.P17095690525613446658

namespace A189793

/-- `2*floor((tan(1)²+1)*(n+1))` -/
def P17095690525613446658.Spec : Prop :=
  ∀ n, P17095690525613446658.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P1752923349148474753

`2*A189795(n+1)`
-/

namespace A189793.P1752923349148474753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189795 (n + 1)

end

end A189793.P1752923349148474753

namespace A189793

/-- `2*A189795(n+1)` -/
def P1752923349148474753.Spec : Prop :=
  ∀ n, P1752923349148474753.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P8819173266475984831

`A189795(A000027(n+1))+A189795(n+1)`
-/

namespace A189793.P8819173266475984831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189795 (A000027 (n + 1)).toNat + A189795 (n + 1)

end

end A189793.P8819173266475984831

namespace A189793

/-- `A189795(A000027(n+1))+A189795(n+1)` -/
def P8819173266475984831.Spec : Prop :=
  ∀ n, P8819173266475984831.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P10737760645782952161

`A189795(n+1)+A189795(A023443(n)+2)`
-/

namespace A189793.P10737760645782952161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189795 (n + 1) + A189795 (A023443 n + 2).toNat

end

end A189793.P10737760645782952161

namespace A189793

/-- `A189795(n+1)+A189795(A023443(n)+2)` -/
def P10737760645782952161.Spec : Prop :=
  ∀ n, P10737760645782952161.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P10185008579781922845

`A005843(floor((n+1)/cos(1)²))`
-/

namespace A189793.P10185008579781922845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌊(n + 1 : ℝ) / Real.cos (1 : ℝ) ^ 2⌋.toNat

end

end A189793.P10185008579781922845

namespace A189793

/-- `A005843(floor((n+1)/cos(1)²))` -/
def P10185008579781922845.Spec : Prop :=
  ∀ n, P10185008579781922845.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P7791337485200886071

`A004277(A189795(n+1))`
-/

namespace A189793.P7791337485200886071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A189795 (n + 1)).toNat

end

end A189793.P7791337485200886071

namespace A189793

/-- `A004277(A189795(n+1))` -/
def P7791337485200886071.Spec : Prop :=
  ∀ n, P7791337485200886071.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P13955134652526770191

`A004523(A189798(n+1))`
-/

namespace A189793.P13955134652526770191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A189798 (n + 1)).toNat

end

end A189793.P13955134652526770191

namespace A189793

/-- `A004523(A189798(n+1))` -/
def P13955134652526770191.Spec : Prop :=
  ∀ n, P13955134652526770191.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P18366259043246940208

`A189798(n+1)-A002264(A189798(n+1)+2)`
-/

namespace A189793.P18366259043246940208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189798 (n + 1) - A002264 (A189798 (n + 1) + 2).toNat

end

end A189793.P18366259043246940208

namespace A189793

/-- `A189798(n+1)-A002264(A189798(n+1)+2)` -/
def P18366259043246940208.Spec : Prop :=
  ∀ n, P18366259043246940208.a n = A189793 (n + 1)

end A189793

/-! ## A189793.P9297677815143040815

`A002264(2*A189798(n+1))`
-/

namespace A189793.P9297677815143040815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A189798 (n + 1)).toNat

end

end A189793.P9297677815143040815

namespace A189793

/-- `A002264(2*A189798(n+1))` -/
def P9297677815143040815.Spec : Prop :=
  ∀ n, P9297677815143040815.a n = A189793 (n + 1)

end A189793

/-!
# A189794: (A189792)/2.

The programs for A189794, the canonical program `A189794.P13187273745090707748` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189794 has offset 1).

The definition of A189794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189794.P13187273745090707748

`comp[floor(n/cos(1)²)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189794

/-- `comp[floor(n/cos(1)²)]` -/
def P13187273745090707748.Spec : Prop :=
  ∀ n, (P13187273745090707748.a n : ℤ) = A189794 (n + 1)

theorem P13187273745090707748.correct : P13187273745090707748.Spec := by
  intro n
  simp only [A189794, Nat.add_sub_cancel]

end A189794

/-! ## A189794.P16550194477745029887

`floor((n+1)/sin(1)²)`
-/

namespace A189794.P16550194477745029887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (1 : ℝ) ^ 2⌋

end

end A189794.P16550194477745029887

namespace A189794

/-- `floor((n+1)/sin(1)²)` -/
def P16550194477745029887.Spec : Prop :=
  ∀ n, P16550194477745029887.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P17620943035786679161

`floor((n+1)/(1-cos(1)²))`
-/

namespace A189794.P17620943035786679161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - Real.cos (1 : ℝ) ^ 2)⌋

end

end A189794.P17620943035786679161

namespace A189794

/-- `floor((n+1)/(1-cos(1)²))` -/
def P17620943035786679161.Spec : Prop :=
  ∀ n, P17620943035786679161.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P6779118816062360029

`ceil((n+1)/sin(1)²)-1`
-/

namespace A189794.P6779118816062360029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ) ^ 2⌉ - 1

end

end A189794.P6779118816062360029

namespace A189794

/-- `ceil((n+1)/sin(1)²)-1` -/
def P6779118816062360029.Spec : Prop :=
  ∀ n, P6779118816062360029.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P8878923878660416604

`floor((cot(1)²+1)*(n+1))`
-/

namespace A189794.P8878923878660416604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cot (1 : ℝ) ^ 2 + 1) * (n + 1 : ℝ)⌋

end

end A189794.P8878923878660416604

namespace A189794

/-- `floor((cot(1)²+1)*(n+1))` -/
def P8878923878660416604.Spec : Prop :=
  ∀ n, P8878923878660416604.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P16999636823944629210

`ceil((n+1)/tan(1)²+n)`
-/

namespace A189794.P16999636823944629210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tan (1 : ℝ) ^ 2 + (n : ℝ)⌉

end

end A189794.P16999636823944629210

namespace A189794

/-- `ceil((n+1)/tan(1)²+n)` -/
def P16999636823944629210.Spec : Prop :=
  ∀ n, P16999636823944629210.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P18359379197717362796

`ceil((n+1)*cot(1)²+n)`
-/

namespace A189794.P18359379197717362796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cot (1 : ℝ) ^ 2 + (n : ℝ)⌉

end

end A189794.P18359379197717362796

namespace A189794

/-- `ceil((n+1)*cot(1)²+n)` -/
def P18359379197717362796.Spec : Prop :=
  ∀ n, P18359379197717362796.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P8390217219384068509

`floor((n+1)/tan(1)²+n+1)`
-/

namespace A189794.P8390217219384068509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tan (1 : ℝ) ^ 2 + (n + 1 : ℝ)⌋

end

end A189794.P8390217219384068509

namespace A189794

/-- `floor((n+1)/tan(1)²+n+1)` -/
def P8390217219384068509.Spec : Prop :=
  ∀ n, P8390217219384068509.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P14874727133298780824

`A189792(n+1)/2`
-/

namespace A189794.P14874727133298780824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189792 (n + 1) : ℚ) / 2

end

end A189794.P14874727133298780824

namespace A189794

/-- `A189792(n+1)/2` -/
def P14874727133298780824.Spec : Prop :=
  ∀ n, P14874727133298780824.a n = (A189794 (n + 1) : ℚ)

end A189794

/-! ## A189794.P781827527446304027

`A004525(A189792(n+1))`
-/

namespace A189794.P781827527446304027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189792 (n + 1)).toNat

end

end A189794.P781827527446304027

namespace A189794

/-- `A004525(A189792(n+1))` -/
def P781827527446304027.Spec : Prop :=
  ∀ n, P781827527446304027.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P262322451609631392

`A065033(A189792(n+1)-1)`
-/

namespace A189794.P262322451609631392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189792 (n + 1) - 1).toNat

end

end A189794.P262322451609631392

namespace A189794

/-- `A065033(A189792(n+1)-1)` -/
def P262322451609631392.Spec : Prop :=
  ∀ n, P262322451609631392.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P10910879339942870294

`A110654(A189792(n+1)-1)`
-/

namespace A189794.P10910879339942870294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A189792 (n + 1) - 1).toNat

end

end A189794.P10910879339942870294

namespace A189794

/-- `A110654(A189792(n+1)-1)` -/
def P10910879339942870294.Spec : Prop :=
  ∀ n, P10910879339942870294.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P3988114492521012540

`A004526(A189792(n+1)-1)+1`
-/

namespace A189794.P3988114492521012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189792 (n + 1) - 1).toNat + 1

end

end A189794.P3988114492521012540

namespace A189794

/-- `A004526(A189792(n+1)-1)+1` -/
def P3988114492521012540.Spec : Prop :=
  ∀ n, P3988114492521012540.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P12465862956682300504

`A004526(A189792(n+1)+1)`
-/

namespace A189794.P12465862956682300504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189792 (n + 1) + 1).toNat

end

end A189794.P12465862956682300504

namespace A189794

/-- `A004526(A189792(n+1)+1)` -/
def P12465862956682300504.Spec : Prop :=
  ∀ n, P12465862956682300504.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P5703019511150984142

`A117818(A189792(n+1)+2)-1`
-/

namespace A189794.P5703019511150984142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A189792 (n + 1) + 2).toNat - 1

end

end A189794.P5703019511150984142

namespace A189794

/-- `A117818(A189792(n+1)+2)-1` -/
def P5703019511150984142.Spec : Prop :=
  ∀ n, P5703019511150984142.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P2721877573577743431

`A001281(A189792(n+1)+2)-1`
-/

namespace A189794.P2721877573577743431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189792 (n + 1) + 2).toNat - 1

end

end A189794.P2721877573577743431

namespace A189794

/-- `A001281(A189792(n+1)+2)-1` -/
def P2721877573577743431.Spec : Prop :=
  ∀ n, P2721877573577743431.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P6502818871840643036

`A002264(A189797(n+1))`
-/

namespace A189794.P6502818871840643036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A189797 (n + 1)).toNat

end

end A189794.P6502818871840643036

namespace A189794

/-- `A002264(A189797(n+1))` -/
def P6502818871840643036.Spec : Prop :=
  ∀ n, P6502818871840643036.a n = A189794 (n + 1)

end A189794

/-! ## A189794.P53944620226489146

`A189797(n+1)-A004523(A189797(n+1)+1)`
-/

namespace A189794.P53944620226489146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189797 (n + 1) - A004523 (A189797 (n + 1) + 1).toNat

end

end A189794.P53944620226489146

namespace A189794

/-- `A189797(n+1)-A004523(A189797(n+1)+1)` -/
def P53944620226489146.Spec : Prop :=
  ∀ n, P53944620226489146.a n = A189794 (n + 1)

end A189794

/-!
# A189795: (A189793)/2.

The programs for A189795, the canonical program `A189795.P12123406086711792807` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189795 has offset 1).

The definition of A189795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189795.P12123406086711792807

`comp[floor(n/sin(1)²)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189795

/-- `comp[floor(n/sin(1)²)]` -/
def P12123406086711792807.Spec : Prop :=
  ∀ n, (P12123406086711792807.a n : ℤ) = A189795 (n + 1)

theorem P12123406086711792807.correct : P12123406086711792807.Spec := by
  intro n
  simp only [A189795, Nat.add_sub_cancel]

end A189795

/-! ## A189795.P9854644672269210754

`floor((n+1)/cos(1)²)`
-/

namespace A189795.P9854644672269210754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (1 : ℝ) ^ 2⌋

end

end A189795.P9854644672269210754

namespace A189795

/-- `floor((n+1)/cos(1)²)` -/
def P9854644672269210754.Spec : Prop :=
  ∀ n, P9854644672269210754.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P9687419169521475828

`comp[floor(n/sin(1)^2)]`
-/

namespace A189795.P9687419169521475828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189795.P9687419169521475828

namespace A189795

/-- `comp[floor(n/sin(1)^2)]` -/
def P9687419169521475828.Spec : Prop :=
  ∀ n, (P9687419169521475828.a n : ℤ) = A189795 (n + 1)

end A189795

/-! ## A189795.P8346131004689532522

`floor((tan(1)²+1)*(n+1))`
-/

namespace A189795.P8346131004689532522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tan (1 : ℝ) ^ 2 + 1) * (n + 1 : ℝ)⌋

end

end A189795.P8346131004689532522

namespace A189795

/-- `floor((tan(1)²+1)*(n+1))` -/
def P8346131004689532522.Spec : Prop :=
  ∀ n, P8346131004689532522.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P11662287745148588295

`floor((n+1)/(1-sin(1)²))`
-/

namespace A189795.P11662287745148588295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - Real.sin (1 : ℝ) ^ 2)⌋

end

end A189795.P11662287745148588295

namespace A189795

/-- `floor((n+1)/(1-sin(1)²))` -/
def P11662287745148588295.Spec : Prop :=
  ∀ n, P11662287745148588295.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P13545958899506877579

`ceil((n+1)/cos(1)²)-1`
-/

namespace A189795.P13545958899506877579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.cos (1 : ℝ) ^ 2⌉ - 1

end

end A189795.P13545958899506877579

namespace A189795

/-- `ceil((n+1)/cos(1)²)-1` -/
def P13545958899506877579.Spec : Prop :=
  ∀ n, P13545958899506877579.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P3207837807002667256

`ceil((n+1)*tan(1)²+n)`
-/

namespace A189795.P3207837807002667256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.tan (1 : ℝ) ^ 2 + (n : ℝ)⌉

end

end A189795.P3207837807002667256

namespace A189795

/-- `ceil((n+1)*tan(1)²+n)` -/
def P3207837807002667256.Spec : Prop :=
  ∀ n, P3207837807002667256.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P17131765965356678728

`ceil((n+1)/cot(1)²+n)`
-/

namespace A189795.P17131765965356678728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.cot (1 : ℝ) ^ 2 + (n : ℝ)⌉

end

end A189795.P17131765965356678728

namespace A189795

/-- `ceil((n+1)/cot(1)²+n)` -/
def P17131765965356678728.Spec : Prop :=
  ∀ n, P17131765965356678728.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P14924553280356846481

`floor((n+1)/cot(1)²+n+1)`
-/

namespace A189795.P14924553280356846481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cot (1 : ℝ) ^ 2 + (n + 1 : ℝ)⌋

end

end A189795.P14924553280356846481

namespace A189795

/-- `floor((n+1)/cot(1)²+n+1)` -/
def P14924553280356846481.Spec : Prop :=
  ∀ n, P14924553280356846481.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P7099062671520948432

`A189793(n+1)/2`
-/

namespace A189795.P7099062671520948432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189793 (n + 1) : ℚ) / 2

end

end A189795.P7099062671520948432

namespace A189795

/-- `A189793(n+1)/2` -/
def P7099062671520948432.Spec : Prop :=
  ∀ n, P7099062671520948432.a n = (A189795 (n + 1) : ℚ)

end A189795

/-! ## A189795.P4157780493513145133

`A001281(A189793(n+1))`
-/

namespace A189795.P4157780493513145133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189793 (n + 1)).toNat

end

end A189795.P4157780493513145133

namespace A189795

/-- `A001281(A189793(n+1))` -/
def P4157780493513145133.Spec : Prop :=
  ∀ n, P4157780493513145133.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P13897750266701590330

`A002264(A189798(n+1))`
-/

namespace A189795.P13897750266701590330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A189798 (n + 1)).toNat

end

end A189795.P13897750266701590330

namespace A189795

/-- `A002264(A189798(n+1))` -/
def P13897750266701590330.Spec : Prop :=
  ∀ n, P13897750266701590330.a n = A189795 (n + 1)

end A189795

/-! ## A189795.P2304385328385405220

`A189798(n+1)-A004523(A189798(n+1)+1)`
-/

namespace A189795.P2304385328385405220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189798 (n + 1) - A004523 (A189798 (n + 1) + 1).toNat

end

end A189795.P2304385328385405220

namespace A189795

/-- `A189798(n+1)-A004523(A189798(n+1)+1)` -/
def P2304385328385405220.Spec : Prop :=
  ∀ n, P2304385328385405220.a n = A189795 (n + 1)

end A189795

/-!
# A189796: n+[ns/r]+[nt/r]; r=2, s=(sin(1))^2, t=(cos(1))^2.

The programs for A189796, there is no canonical definition to state claims against.
-/

/-! ## A189796.P11610885921925558316

`A156261(3*n+2)-A008683(A320196(n+4))`
-/

namespace A189796.P11610885921925558316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (3 * n + 2) - A008683 (A320196 (n + 4)).toNat

end

end A189796.P11610885921925558316

/-! ## A189796.P4176773821746348997

`∑[A025142(∑[A113370(n)])]`
-/

namespace A189796.P4176773821746348997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189796.P4176773821746348997

/-! ## A189796.P4821749443486235933

`A168185(A120478(n))+A032766(n)`
-/

namespace A189796.P4821749443486235933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A120478 n).toNat + A032766 n

end

end A189796.P4821749443486235933

/-! ## A189796.P6451098620577685602

`A168185(A120478(n))+A004526(3*n)`
-/

namespace A189796.P6451098620577685602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A120478 n).toNat + A004526 (3 * n)

end

end A189796.P6451098620577685602

/-! ## A189796.P2694179265125789398

`A030308(A126120(n))+A007494(n)`
-/

namespace A189796.P2694179265125789398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A126120 n).toNat + A007494 n

end

end A189796.P2694179265125789398

/-!
# A189797: n+[nr/s]+[nt/s]; r=2, s=(sin(1))^2, t=(cos(1))^2.

The programs for A189797, the canonical program `A189797.P6730903071987935454` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189797 has offset 1).

The definition of A189797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189797.P6730903071987935454

`n+1+floor(2*(n+1)/sin(1)²)+floor((n+1)*cos(1)²/sin(1)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A189797

/-- `n+1+floor(2*(n+1)/sin(1)²)+floor((n+1)*cos(1)²/sin(1)²)` -/
def P6730903071987935454.Spec : Prop :=
  ∀ n, P6730903071987935454.a n = A189797 (n + 1)

theorem P6730903071987935454.correct : P6730903071987935454.Spec := by
  intro n
  simp only [A189797, Nat.add_sub_cancel]

end A189797

/-! ## A189797.P2961117547633744631

`A189794(2*(n+1))+A189794(n+1)`
-/

namespace A189797.P2961117547633744631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189794 (2 * (n + 1)) + A189794 (n + 1)

end

end A189797.P2961117547633744631

namespace A189797

/-- `A189794(2*(n+1))+A189794(n+1)` -/
def P2961117547633744631.Spec : Prop :=
  ∀ n, P2961117547633744631.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P8040877448766329123

`A032766(A189792(2*(n+1))/2)`
-/

namespace A189797.P8040877448766329123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A189792 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A189797.P8040877448766329123

namespace A189797

/-- `A032766(A189792(2*(n+1))/2)` -/
def P8040877448766329123.Spec : Prop :=
  ∀ n, P8040877448766329123.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P17095251288630567237

`A004525(A189792(2*(n+1))+A189792(n+1))`
-/

namespace A189797.P17095251288630567237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat

end

end A189797.P17095251288630567237

namespace A189797

/-- `A004525(A189792(2*(n+1))+A189792(n+1))` -/
def P17095251288630567237.Spec : Prop :=
  ∀ n, P17095251288630567237.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P3358557439570803518

`A004526(A189792(2*(n+1))+A189792(n+1))`
-/

namespace A189797.P3358557439570803518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat

end

end A189797.P3358557439570803518

namespace A189797

/-- `A004526(A189792(2*(n+1))+A189792(n+1))` -/
def P3358557439570803518.Spec : Prop :=
  ∀ n, P3358557439570803518.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P1782411007489597633

`A065033(A189792(2*(n+1))+A189792(n+1))`
-/

namespace A189797.P1782411007489597633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat

end

end A189797.P1782411007489597633

namespace A189797

/-- `A065033(A189792(2*(n+1))+A189792(n+1))` -/
def P1782411007489597633.Spec : Prop :=
  ∀ n, P1782411007489597633.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P6746604403425740988

`A110654(A189792(2*(n+1))+A189792(n+1))`
-/

namespace A189797.P6746604403425740988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat

end

end A189797.P6746604403425740988

namespace A189797

/-- `A110654(A189792(2*(n+1))+A189792(n+1))` -/
def P6746604403425740988.Spec : Prop :=
  ∀ n, P6746604403425740988.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P4747759283529011185

`A117818(A189792(2*(n+1))+A189792(n+1))`
-/

namespace A189797.P4747759283529011185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat

end

end A189797.P4747759283529011185

namespace A189797

/-- `A117818(A189792(2*(n+1))+A189792(n+1))` -/
def P4747759283529011185.Spec : Prop :=
  ∀ n, P4747759283529011185.a n = A189797 (n + 1)

end A189797

/-! ## A189797.P15892417695553991882

`A049474(A049472(A189792(2*(n+1))+A189792(n+1)))`
-/

namespace A189797.P15892417695553991882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A049472 (A189792 (2 * (n + 1)) + A189792 (n + 1)).toNat).toNat

end

end A189797.P15892417695553991882

namespace A189797

/-- `A049474(A049472(A189792(2*(n+1))+A189792(n+1)))` -/
def P15892417695553991882.Spec : Prop :=
  ∀ n, P15892417695553991882.a n = A189797 (n + 1)

end A189797

/-!
# A189798: n+[nr/t]+[ns/t]; r=2, s=(sin(1))^2, t=(cos(1))^2.

The programs for A189798, the canonical program `A189798.P14132621846478620636` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189798 has offset 1).

The definition of A189798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189798.P14132621846478620636

`A189795(2*(n+1))+A189795(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189798

/-- `A189795(2*(n+1))+A189795(n+1)` -/
def P14132621846478620636.Spec : Prop :=
  ∀ n, P14132621846478620636.a n = A189798 (n + 1)

theorem P14132621846478620636.correct : P14132621846478620636.Spec := by
  intro n
  simp only [A189798, Nat.add_sub_cancel]

end A189798

/-! ## A189798.P15499040797312276754

`A032766(A189795(2*(n+1)))`
-/

namespace A189798.P15499040797312276754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A189795 (2 * (n + 1))).toNat

end

end A189798.P15499040797312276754

namespace A189798

/-- `A032766(A189795(2*(n+1)))` -/
def P15499040797312276754.Spec : Prop :=
  ∀ n, P15499040797312276754.a n = A189798 (n + 1)

end A189798

/-! ## A189798.P4551454331979874703

`A189796(A189795(2*n+2))+1`
-/

namespace A189798.P4551454331979874703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189796 (A189795 (2 * n + 2)).toNat + 1

end

end A189798.P4551454331979874703

namespace A189798

/-- `A189796(A189795(2*n+2))+1` -/
def P4551454331979874703.Spec : Prop :=
  ∀ n, P4551454331979874703.a n = A189798 (n + 1)

end A189798

/-! ## A189798.P3712566400836367484

`A004526(3*A189795(2*(n+1)))`
-/

namespace A189798.P3712566400836367484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A189795 (2 * (n + 1))).toNat

end

end A189798.P3712566400836367484

namespace A189798

/-- `A004526(3*A189795(2*(n+1)))` -/
def P3712566400836367484.Spec : Prop :=
  ∀ n, P3712566400836367484.a n = A189798 (n + 1)

end A189798

/-! ## A189798.P12046696549877364478

`A060681(A189793(2*(n+1))+A189793(n+1))`
-/

namespace A189798.P12046696549877364478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A189793 (2 * (n + 1)) + A189793 (n + 1)).toNat

end

end A189798.P12046696549877364478

namespace A189798

/-- `A060681(A189793(2*(n+1))+A189793(n+1))` -/
def P12046696549877364478.Spec : Prop :=
  ∀ n, P12046696549877364478.a n = A189798 (n + 1)

end A189798

/-! ## A189798.P16876762579662051367

`A289440(A189793(2*(n+1))+A189793(n+1))`
-/

namespace A189798.P16876762579662051367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A189793 (2 * (n + 1)) + A189793 (n + 1)).toNat

end

end A189798.P16876762579662051367

namespace A189798

/-- `A289440(A189793(2*(n+1))+A189793(n+1))` -/
def P16876762579662051367.Spec : Prop :=
  ∀ n, P16876762579662051367.a n = A189798 (n + 1)

end A189798

/-! ## A189798.P17730582694524763451

`A131508(6*A189795(2*(n+1)))`
-/

namespace A189798.P17730582694524763451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (6 * A189795 (2 * (n + 1))).toNat

end

end A189798.P17730582694524763451

namespace A189798

/-- `A131508(6*A189795(2*(n+1)))` -/
def P17730582694524763451.Spec : Prop :=
  ∀ n, P17730582694524763451.a n = A189798 (n + 1)

end A189798

