import SequenceMachineLib.Basic
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C011
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A250700: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250700, there is no canonical definition to state claims against.
-/

/-! ## A250700.P12205771651197610200

`A250707(∑[n+1])`
-/

namespace A250700.P12205771651197610200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250700.P12205771651197610200

/-! ## A250700.P13437294685633419678

`record[A250707(n+1)/A027466(n)]`
-/

namespace A250700.P13437294685633419678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250707 (n + 1) : ℚ) / (A027466 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250700.P13437294685633419678

/-! ## A250700.P410591481775190641

`record[gcd(A025581(n), A250707(n+1))]`
-/

namespace A250700.P410591481775190641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A250707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250700.P410591481775190641

/-! ## A250700.P1964694155357240975

`record[A250707(A057944(n^(n%2)))]`
-/

namespace A250700.P1964694155357240975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A057944 (n ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250700.P1964694155357240975

/-! ## A250700.P3233420842099762140

`record[A010054(n+1)*A250707(n+1)]`
-/

namespace A250700.P3233420842099762140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A250707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250700.P3233420842099762140

/-!
# A250701: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250701, there is no canonical definition to state claims against.
-/

/-! ## A250701.P5283751265160534641

`A250707(∑[n+2])`
-/

namespace A250701.P5283751265160534641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250701.P5283751265160534641

/-! ## A250701.P16347012077985427659

`record[A250707(A000096(A028920(n)))]`
-/

namespace A250701.P16347012077985427659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250701.P16347012077985427659

/-! ## A250701.P6995831424468332683

`record[A250707(A000096(A053261(n)))]`
-/

namespace A250701.P6995831424468332683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000096 (A053261 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250701.P6995831424468332683

/-! ## A250701.P18164635086254075926

`record[A250707(A000096(A003963(n+1)))]`
-/

namespace A250701.P18164635086254075926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250701.P18164635086254075926

/-! ## A250701.P3614869673083255519

`record[A250707(A000096(A097285(n+1)))]`
-/

namespace A250701.P3614869673083255519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000096 (A097285 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250701.P3614869673083255519

/-!
# A250702: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250702, there is no canonical definition to state claims against.
-/

/-! ## A250702.P14724426253263545673

`A250707(∑[n+3]+1)`
-/

namespace A250702.P14724426253263545673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250702.P14724426253263545673

/-!
# A250703: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250703, there is no canonical definition to state claims against.
-/

/-! ## A250703.P8599766752496602089

`A250707(A141214(n+1))`
-/

namespace A250703.P8599766752496602089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A141214 (n + 1)).toNat

end

end A250703.P8599766752496602089

/-! ## A250703.P13076555152040746890

`A250707(A027379(n+2))`
-/

namespace A250703.P13076555152040746890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A027379 (n + 2)).toNat

end

end A250703.P13076555152040746890

/-! ## A250703.P13300721260472554722

`A250707(A055998(n+2))`
-/

namespace A250703.P13300721260472554722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A055998 (n + 2)).toNat

end

end A250703.P13300721260472554722

/-! ## A250703.P18108365114118422198

`A250707(A155212(n)+5)`
-/

namespace A250703.P18108365114118422198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A155212 n + 5).toNat

end

end A250703.P18108365114118422198

/-! ## A250703.P10731991211682458017

`A250707(A056000(n)+7)`
-/

namespace A250703.P10731991211682458017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A056000 n + 7).toNat

end

end A250703.P10731991211682458017

/-!
# A250704: Number of (n+1) X (5+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250704, there is no canonical definition to state claims against.
-/

/-! ## A250704.P17700733194699243800

`A250707(Δ[A264443(n)])`
-/

namespace A250704.P17700733194699243800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (f1 (n + 1) - f1 n).toNat

end

end A250704.P17700733194699243800

/-! ## A250704.P8246215933050193778

`A250707(A046691(n+3))`
-/

namespace A250704.P8246215933050193778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A046691 (n + 3)).toNat

end

end A250704.P8246215933050193778

/-! ## A250704.P12895412453918133609

`A250707(eq[4, A193592(n)])`
-/

namespace A250704.P12895412453918133609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250704.P12895412453918133609

/-! ## A250704.P13225369668512651558

`A250707(eq[8, A140996(n)])`
-/

namespace A250704.P13225369668512651558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250704.P13225369668512651558

/-! ## A250704.P303093232259614423

`A250707(Δ[A023545(n+1)])`
-/

namespace A250704.P303093232259614423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (f1 (n + 1) - f1 n).toNat

end

end A250704.P303093232259614423

/-!
# A250705: Number of (n+1) X (6+1) 0..3 arrays with nondecreasing x(i,j) + x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250705, there is no canonical definition to state claims against.
-/

/-! ## A250705.P14131405945174206427

`A250707(A052905(n+3))`
-/

namespace A250705.P14131405945174206427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A052905 (n + 3)).toNat

end

end A250705.P14131405945174206427

/-! ## A250705.P2636179323035670057

`A250707(A056119(n)+16)`
-/

namespace A250705.P2636179323035670057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A056119 n + 16).toNat

end

end A250705.P2636179323035670057

/-! ## A250705.P5448370321954780724

`A250707(eq[3, A219347(n)])`
-/

namespace A250705.P5448370321954780724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250705.P5448370321954780724

/-! ## A250705.P13966780330509358635

`A250707(eq[5, A193592(n)])`
-/

namespace A250705.P13966780330509358635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250705.P13966780330509358635

/-! ## A250705.P6200420489443417103

`A250707(A155212(n+2)+3)`
-/

namespace A250705.P6200420489443417103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A155212 (n + 2) + 3).toNat

end

end A250705.P6200420489443417103

/-!
# A250706: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250706, there is no canonical definition to state claims against.
-/

/-! ## A250706.P9232300621092890514

`A250707(A055999(n+4))`
-/

namespace A250706.P9232300621092890514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A055999 (n + 4)).toNat

end

end A250706.P9232300621092890514

/-! ## A250706.P9955084328019351416

`A250707(eq[4, A219347(n)])`
-/

namespace A250706.P9955084328019351416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250706.P9955084328019351416

/-! ## A250706.P14114666614210943928

`A250707(eq[6, A193592(n)])`
-/

namespace A250706.P14114666614210943928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250706.P14114666614210943928

/-! ## A250706.P10894559340410150385

`A250707(eq[7, A200370(n+1)])`
-/

namespace A250706.P10894559340410150385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250706.P10894559340410150385

/-! ## A250706.P6861533609736901539

`A250707(eq[10, A185782(n+1)])`
-/

namespace A250706.P6861533609736901539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250706.P6861533609736901539

/-!
# A250708: Number of (1+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250708, there is no canonical definition to state claims against.
-/

/-! ## A250708.P6188494562644656481

`A250707(∑[n]+1)`
-/

namespace A250708.P6188494562644656481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250708.P6188494562644656481

/-! ## A250708.P7797489190545249078

`record[A250707(∑[A057979(n)])]`
-/

namespace A250708.P7797489190545249078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250708.P7797489190545249078

/-! ## A250708.P1541311689401013675

`record[A010054(n)*A250707(n+1)]`
-/

namespace A250708.P1541311689401013675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250708.P1541311689401013675

/-! ## A250708.P10680288406515341582

`record[A250707(n+1)/A007318(n)]`
-/

namespace A250708.P10680288406515341582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250707 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250708.P10680288406515341582

/-! ## A250708.P9517141373073172787

`record[A250707(n+1)/A008288(n)]`
-/

namespace A250708.P9517141373073172787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250707 (n + 1) : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250708.P9517141373073172787

/-!
# A250709: Number of (2+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250709, there is no canonical definition to state claims against.
-/

/-! ## A250709.P16210042783133139666

`A250707(∑[n+1]+2)`
-/

namespace A250709.P16210042783133139666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250709.P16210042783133139666

/-! ## A250709.P7185883913844869688

`record[A250707(n+3)/A055905(n)]`
-/

namespace A250709.P7185883913844869688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250707 (n + 3) : ℚ) / (A055905 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250709.P7185883913844869688

/-! ## A250709.P15821513987643259094

`record[A250707(n+3)/A008275(n+1)]`
-/

namespace A250709.P15821513987643259094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250707 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250709.P15821513987643259094

/-! ## A250709.P3020744535944448700

`A250707(A133263(n+1))+A059841(2*n+1)`
-/

namespace A250709.P3020744535944448700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A133263 (n + 1)).toNat + A059841 (2 * n + 1)

end

end A250709.P3020744535944448700

/-!
# A250710: Number of (3+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250710, there is no canonical definition to state claims against.
-/

/-! ## A250710.P714203019026959725

`A250707(∑[n+2]+4)`
-/

namespace A250710.P714203019026959725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250710.P714203019026959725

/-! ## A250710.P6573591192018294680

`A250707(A167614(n+1))+A185237(n)`
-/

namespace A250710.P6573591192018294680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A167614 (n + 1)).toNat + A185237 n

end

end A250710.P6573591192018294680

/-! ## A250710.P15896093102384839801

`lcm(A020985(n), A250707(A167614(n+1)))`
-/

namespace A250710.P15896093102384839801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A250707 (A167614 (n + 1)).toNat)

end

end A250710.P15896093102384839801

/-! ## A250710.P16735522731458953741

`or(A000007(n), A250707(A167614(n+1)))`
-/

namespace A250710.P16735522731458953741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250707 (A167614 (n + 1)).toNat)

end

end A250710.P16735522731458953741

/-! ## A250710.P8123455028821441352

`or(A000038(n), A250707(A167614(n+1)))`
-/

namespace A250710.P8123455028821441352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250707 (A167614 (n + 1)).toNat)

end

end A250710.P8123455028821441352

/-!
# A250711: Number of (4+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250711, there is no canonical definition to state claims against.
-/

/-! ## A250711.P6156874859465516292

`A250707(A141214(n)+7)`
-/

namespace A250711.P6156874859465516292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A141214 n + 7).toNat

end

end A250711.P6156874859465516292

/-! ## A250711.P2798587898576755939

`A250707(A052905(n)+9)`
-/

namespace A250711.P2798587898576755939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A052905 n + 9).toNat

end

end A250711.P2798587898576755939

/-! ## A250711.P17025343855767082354

`A250707(A055999(n)+10)`
-/

namespace A250711.P17025343855767082354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A055999 n + 10).toNat

end

end A250711.P17025343855767082354

/-! ## A250711.P4192555177029489924

`A250707(A167614(n+2)+1)`
-/

namespace A250711.P4192555177029489924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A167614 (n + 2) + 1).toNat

end

end A250711.P4192555177029489924

/-! ## A250711.P1825782476670468571

`A250707(A166136(n+2)-2)`
-/

namespace A250711.P1825782476670468571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A166136 (n + 2) - 2).toNat

end

end A250711.P1825782476670468571

/-!
# A250712: Number of (5+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250712, there is no canonical definition to state claims against.
-/

/-! ## A250712.P2908230469451381473

`A250707(A167499(n+3))`
-/

namespace A250712.P2908230469451381473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A167499 (n + 3)).toNat

end

end A250712.P2908230469451381473

/-! ## A250712.P6954356009020911570

`A250707(A155212(n)+13)`
-/

namespace A250712.P6954356009020911570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A155212 n + 13).toNat

end

end A250712.P6954356009020911570

/-! ## A250712.P8075509052755932032

`A250707(eq[7, A066657(n)])`
-/

namespace A250712.P8075509052755932032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250712.P8075509052755932032

/-! ## A250712.P1365788786196924182

`A250707(A051936(n+4)+14)`
-/

namespace A250712.P1365788786196924182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A051936 (n + 4) + 14).toNat

end

end A250712.P1365788786196924182

/-! ## A250712.P15217356575425882669

`A250707(eq[6, A131818(n+1)])`
-/

namespace A250712.P15217356575425882669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250712.P15217356575425882669

/-!
# A250713: Number of (6+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250713, there is no canonical definition to state claims against.
-/

/-! ## A250713.P5773511481321933564

`A250707(A166136(n+4))`
-/

namespace A250713.P5773511481321933564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A166136 (n + 4)).toNat

end

end A250713.P5773511481321933564

/-! ## A250713.P12809818239891236344

`A250707(A000217(n+5)+6)`
-/

namespace A250713.P12809818239891236344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000217 (n + 5) + 6).toNat

end

end A250713.P12809818239891236344

/-! ## A250713.P6424140739673593556

`A250707(A155212(n+1)+14)`
-/

namespace A250713.P6424140739673593556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A155212 (n + 1) + 14).toNat

end

end A250713.P6424140739673593556

/-! ## A250713.P8311083333046661186

`A250707(eq[7, A131818(n+1)])`
-/

namespace A250713.P8311083333046661186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250713.P8311083333046661186

/-! ## A250713.P5533626984883622346

`A250707(Δ[A023545(n+1)]+10)`
-/

namespace A250713.P5533626984883622346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (f1 (n + 1) - f1 n + 10).toNat

end

end A250713.P5533626984883622346

/-!
# A250714: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250714, there is no canonical definition to state claims against.
-/

/-! ## A250714.P9041182472238988645

`A250707(A167487(n+5))`
-/

namespace A250714.P9041182472238988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A167487 (n + 5)).toNat

end

end A250714.P9041182472238988645

/-! ## A250714.P16745350822142238035

`A250707(eq[11, A066657(n)])`
-/

namespace A250714.P16745350822142238035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250714.P16745350822142238035

/-! ## A250714.P16628663898511427609

`A250707(A133263(n+6)+5)`
-/

namespace A250714.P16628663898511427609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A133263 (n + 6) + 5).toNat

end

end A250714.P16628663898511427609

/-! ## A250714.P137565777362928436

`A250707(A000124(n+6)+6)`
-/

namespace A250714.P137565777362928436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (A000124 (n + 6) + 6).toNat

end

end A250714.P137565777362928436

/-! ## A250714.P15420964528135505639

`A250707(eq[8, A131818(n+1)])`
-/

namespace A250714.P15420964528135505639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250714.P15420964528135505639

/-!
# A250716: Primes of the form 3^x + y^3 with x, y >0.

The programs for A250716, there is no canonical definition to state claims against.
-/

/-! ## A250716.P5828974119648817765

`p?[A250483(n+4)]`
-/

namespace A250716.P5828974119648817765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250716.P5828974119648817765

/-! ## A250716.P6885815672612499395

`∩[A157996(n+1), A250483(n+1)]`
-/

namespace A250716.P6885815672612499395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250716.P6885815672612499395

/-! ## A250716.P10446318718916477545

`∩[A215848(n+1), A250483(n+1)]`
-/

namespace A250716.P10446318718916477545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250716.P10446318718916477545

/-! ## A250716.P8013697711957574086

`∩[A216495(n+1), A250483(n+1)]`
-/

namespace A250716.P8013697711957574086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250716.P8013697711957574086

/-! ## A250716.P14178191971703690383

`∩[A217090(n+1), A250483(n+1)]`
-/

namespace A250716.P14178191971703690383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250716.P14178191971703690383

/-!
# A250717: Primes of the form 4^x + y^4 with x, y > 0.

The programs for A250717, there is no canonical definition to state claims against.
-/

/-! ## A250717.P6617281609217149238

`A092525(A002645(n+1))`
-/

namespace A250717.P6617281609217149238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092525 (A002645 (n + 1)).toNat

end

end A250717.P6617281609217149238

/-! ## A250717.P9724564607485878006

`A006530(80*A002645(n+1))`
-/

namespace A250717.P9724564607485878006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (80 * A002645 (n + 1)).toNat

end

end A250717.P9724564607485878006

/-!
# A250722: Number of (n+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250722, there is no canonical definition to state claims against.
-/

/-! ## A250722.P914641102417966571

`A250729(∑[4*n]+1)`
-/

namespace A250722.P914641102417966571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250722.P914641102417966571

/-! ## A250722.P6197637169603171338

`record[A003982(n)*A250729(n+1)]`
-/

namespace A250722.P6197637169603171338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250722.P6197637169603171338

/-! ## A250722.P8664904603207327220

`record[gcd(A037012(n), A250729(n+1))]`
-/

namespace A250722.P8664904603207327220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A250729 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250722.P8664904603207327220

/-! ## A250722.P15360581358614111012

`or(A000007(n), A250729(A001844(n)))`
-/

namespace A250722.P15360581358614111012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250729 (A001844 n).toNat)

end

end A250722.P15360581358614111012

/-! ## A250722.P573567583392279201

`record[A250729(A016813(n))/A076112(n+1)]`
-/

namespace A250722.P573567583392279201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250729 (A016813 n).toNat : ℚ) / (A076112 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250722.P573567583392279201

/-!
# A250723: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250723, the canonical program `A250723.P16667113063916796021` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250723 has offset 1).

The definition of A250723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250723.P16667113063916796021

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=22, a(1)=46, a(2)=85, a(3)=144, a(4)=230, a(5)=350`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250723

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P16667113063916796021.Spec : Prop :=
  ∀ n, P16667113063916796021.a n = A250723 (n + 1)

theorem P16667113063916796021.correct : P16667113063916796021.Spec := by
  intro n
  simp only [A250723, Nat.add_sub_cancel]

end A250723

/-! ## A250723.P10397126117216315960

`A133263(n+4)+∑[A173154(n+2)]`
-/

namespace A250723.P10397126117216315960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250723.P10397126117216315960

namespace A250723

/-- `A133263(n+4)+∑[A173154(n+2)]` -/
def P10397126117216315960.Spec : Prop :=
  ∀ n, P10397126117216315960.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P14952638210398704174

`A014206(n+3)+∑[A005232(2*(n+2))]`
-/

namespace A250723.P14952638210398704174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250723.P14952638210398704174

namespace A250723

/-- `A014206(n+3)+∑[A005232(2*(n+2))]` -/
def P14952638210398704174.Spec : Prop :=
  ∀ n, P14952638210398704174.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P17635138414491241810

`A250729(∑[n+2])`
-/

namespace A250723.P17635138414491241810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250723.P17635138414491241810

namespace A250723

/-- `A250729(∑[n+2])` -/
def P17635138414491241810.Spec : Prop :=
  ∀ n, P17635138414491241810.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P15256722922885312893

`xor(2, xor(2, A250729(A000217(n+1)+n+1)))`
-/

namespace A250723.P15256722922885312893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A250729 (A000217 (n + 1) + (n + 1 : ℤ)).toNat))

end

end A250723.P15256722922885312893

namespace A250723

/-- `xor(2, xor(2, A250729(A000217(n+1)+n+1)))` -/
def P15256722922885312893.Spec : Prop :=
  ∀ n, P15256722922885312893.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P16495116368214966544

`record[A250729(A000096(A003963(n+1)))]`
-/

namespace A250723.P16495116368214966544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250723.P16495116368214966544

namespace A250723

/-- `record[A250729(A000096(A003963(n+1)))]` -/
def P16495116368214966544.Spec : Prop :=
  ∀ n, P16495116368214966544.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P7669329704508805373

`record[A250729(A000096(A079643(n+1)))]`
-/

namespace A250723.P7669329704508805373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (A079643 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250723.P7669329704508805373

namespace A250723

/-- `record[A250729(A000096(A079643(n+1)))]` -/
def P7669329704508805373.Spec : Prop :=
  ∀ n, P7669329704508805373.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P11523550286706286660

`record[A250729(A000096(A220603(n+1)))]`
-/

namespace A250723.P11523550286706286660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (A220603 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250723.P11523550286706286660

namespace A250723

/-- `record[A250729(A000096(A220603(n+1)))]` -/
def P11523550286706286660.Spec : Prop :=
  ∀ n, P11523550286706286660.a n = A250723 (n + 1)

end A250723

/-! ## A250723.P14457266282830844470

`record[A250729(A000096(A290103(n+1)))]`
-/

namespace A250723.P14457266282830844470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (A290103 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250723.P14457266282830844470

namespace A250723

/-- `record[A250729(A000096(A290103(n+1)))]` -/
def P14457266282830844470.Spec : Prop :=
  ∀ n, P14457266282830844470.a n = A250723 (n + 1)

end A250723

/-!
# A250724: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250724, the canonical program `A250724.P14495835719039274925` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250724 has offset 1).

The definition of A250724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250724.P14495835719039274925

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=50, a(1)=110, a(2)=208, a(3)=365, a(4)=600, a(5)=942`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250724

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P14495835719039274925.Spec : Prop :=
  ∀ n, P14495835719039274925.a n = A250724 (n + 1)

theorem P14495835719039274925.correct : P14495835719039274925.Spec := by
  intro n
  simp only [A250724, Nat.add_sub_cancel]

end A250724

/-! ## A250724.P9578326484604928936

`A250729(∑[n+3]+1)`
-/

namespace A250724.P9578326484604928936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250724.P9578326484604928936

namespace A250724

/-- `A250729(∑[n+3]+1)` -/
def P9578326484604928936.Spec : Prop :=
  ∀ n, P9578326484604928936.a n = A250724 (n + 1)

end A250724

/-! ## A250724.P3585314300441305729

`(A250729(A034856(n+2))^(-1))^(-1)`
-/

namespace A250724.P3585314300441305729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A250729 (A034856 (n + 2)).toNat : ℚ) ^ (-1 : ℤ)) ^ (-1 : ℤ)

end

end A250724.P3585314300441305729

namespace A250724

/-- `(A250729(A034856(n+2))^(-1))^(-1)` -/
def P3585314300441305729.Spec : Prop :=
  ∀ n, P3585314300441305729.a n = (A250724 (n + 1) : ℚ)

end A250724

/-! ## A250724.P4052537991942587112

`A250729(A034856(n+2))+A000007(n+1)`
-/

namespace A250724.P4052537991942587112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A250724.P4052537991942587112

namespace A250724

/-- `A250729(A034856(n+2))+A000007(n+1)` -/
def P4052537991942587112.Spec : Prop :=
  ∀ n, P4052537991942587112.a n = A250724 (n + 1)

end A250724

/-! ## A250724.P16095289881512899340

`A250729(A034856(n+2))%A130812(n+6)`
-/

namespace A250724.P16095289881512899340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250729 (A034856 (n + 2)).toNat) (A130812 (n + 6))

end

end A250724.P16095289881512899340

namespace A250724

/-- `A250729(A034856(n+2))%A130812(n+6)` -/
def P16095289881512899340.Spec : Prop :=
  ∀ n, P16095289881512899340.a n = A250724 (n + 1)

end A250724

/-! ## A250724.P5126828832261053769

`A008836(n+1)²*A250729(A034856(n+2))`
-/

namespace A250724.P5126828832261053769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A250729 (A034856 (n + 2)).toNat

end

end A250724.P5126828832261053769

namespace A250724

/-- `A008836(n+1)²*A250729(A034856(n+2))` -/
def P5126828832261053769.Spec : Prop :=
  ∀ n, P5126828832261053769.a n = A250724 (n + 1)

end A250724

/-! ## A250724.P12457215070340482105

`gcd(A058043(n+2)%2, A250729(A034856(n+2)))`
-/

namespace A250724.P12457215070340482105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A058043 (n + 2)) 2) (A250729 (A034856 (n + 2)).toNat)

end

end A250724.P12457215070340482105

namespace A250724

/-- `gcd(A058043(n+2)%2, A250729(A034856(n+2)))` -/
def P12457215070340482105.Spec : Prop :=
  ∀ n, (P12457215070340482105.a n : ℤ) = A250724 (n + 1)

end A250724

/-! ## A250724.P5417071875050862185

`A308066(A058043(n+2)+1)+A250729(A034856(n+2))`
-/

namespace A250724.P5417071875050862185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A058043 (n + 2) + 1).toNat + A250729 (A034856 (n + 2)).toNat

end

end A250724.P5417071875050862185

namespace A250724

/-- `A308066(A058043(n+2)+1)+A250729(A034856(n+2))` -/
def P5417071875050862185.Spec : Prop :=
  ∀ n, P5417071875050862185.a n = A250724 (n + 1)

end A250724

/-!
# A250725: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250725, there is no canonical definition to state claims against.
-/

/-! ## A250725.P9235991665930455230

`A250729(∑[n+4]+3)`
-/

namespace A250725.P9235991665930455230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250725.P9235991665930455230

/-! ## A250725.P4746625200308639489

`C(n, n²)!*A250729(A052905(n+1)+2)`
-/

namespace A250725.P4746625200308639489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose n (n ^ 2)) : ℤ) * A250729 (A052905 (n + 1) + 2).toNat

end

end A250725.P4746625200308639489

/-! ## A250725.P1577784200015109434

`A250729(A027379(n+2))+A022352(n)%2`
-/

namespace A250725.P1577784200015109434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A027379 (n + 2)).toNat + Int.tmod (A022352 n) 2

end

end A250725.P1577784200015109434

/-! ## A250725.P8998816456627765564

`A250729(A027379(n+2))+A005872(2*(n+2))`
-/

namespace A250725.P8998816456627765564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A027379 (n + 2)).toNat + A005872 (2 * (n + 2))

end

end A250725.P8998816456627765564

/-! ## A250725.P1861475216255878246

`A000035(2*n+1)*A250729(A027379(n+2))`
-/

namespace A250725.P1861475216255878246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A250729 (A027379 (n + 2)).toNat

end

end A250725.P1861475216255878246

/-! ## A250725.P17688262798851602180

`A006519(2*n+1)*A250729(A027379(n+2))`
-/

namespace A250725.P17688262798851602180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A250729 (A027379 (n + 2)).toNat

end

end A250725.P17688262798851602180

/-! ## A250725.P9148673360092621854

`A250729(A052905(n+1)+2)%(A017498(n)^3)`
-/

namespace A250725.P9148673360092621854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250729 (A052905 (n + 1) + 2).toNat) (A017498 n ^ 3)

end

end A250725.P9148673360092621854

/-! ## A250725.P5084781726488659507

`lcm(A014963(20*n+48), A250729(A027379(n+2)))`
-/

namespace A250725.P5084781726488659507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (20 * n + 48)) (A250729 (A027379 (n + 2)).toNat)

end

end A250725.P5084781726488659507

/-! ## A250725.P15240466848416681911

`A250729(A027379(n+2))+(n%2)%A010131(n)`
-/

namespace A250725.P15240466848416681911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A027379 (n + 2)).toNat + Int.tmod ((n % 2 : ℕ) : ℤ) (A010131 n)

end

end A250725.P15240466848416681911

/-! ## A250725.P17204237454497705746

`A000010(A290105(n+1))*A250729(A052905(n+1)+2)`
-/

namespace A250725.P17204237454497705746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A290105 (n + 1)).toNat * A250729 (A052905 (n + 1) + 2).toNat

end

end A250725.P17204237454497705746

/-!
# A250726: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250726, there is no canonical definition to state claims against.
-/

/-! ## A250726.P11639938853199544925

`A250729(∑[n+5]+6)`
-/

namespace A250726.P11639938853199544925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250726.P11639938853199544925

/-! ## A250726.P7990930379847605041

`A250729(A046691(n+3))+A000007(n+1)`
-/

namespace A250726.P7990930379847605041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A250726.P7990930379847605041

/-! ## A250726.P11387555446134659463

`A250729(A046691(n+3))+A000038(n+1)`
-/

namespace A250726.P11387555446134659463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A046691 (n + 3)).toNat + A000038 (n + 1)

end

end A250726.P11387555446134659463

/-! ## A250726.P10178119027835922113

`A000034(2*n)*A250729(A046691(n+3))`
-/

namespace A250726.P10178119027835922113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A250729 (A046691 (n + 3)).toNat

end

end A250726.P10178119027835922113

/-! ## A250726.P18239397339833131586

`A047040(C(n, 2))*A250729(A046691(n+3))`
-/

namespace A250726.P18239397339833131586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047040 (Nat.choose n 2) * A250729 (A046691 (n + 3)).toNat

end

end A250726.P18239397339833131586

/-! ## A250726.P1748458541618997043

`A250729(A046691(n+3))%A043515(n+1)²`
-/

namespace A250726.P1748458541618997043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250729 (A046691 (n + 3)).toNat) (A043515 (n + 1) ^ 2)

end

end A250726.P1748458541618997043

/-! ## A250726.P8530715172779460533

`A250729(Δ[A023545(n+1)])/A007318((n+2)%(n+1))`
-/

namespace A250726.P8530715172779460533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250729 (f1 (n + 1) - f1 n).toNat : ℚ) / (A007318 ((n + 2) % (n + 1)) : ℚ)

end

end A250726.P8530715172779460533

/-! ## A250726.P3043909548796582302

`A007318(A000217(n))*A250729(A046691(n+3))`
-/

namespace A250726.P3043909548796582302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A250729 (A046691 (n + 3)).toNat

end

end A250726.P3043909548796582302

/-! ## A250726.P5109088360743580866

`A014963(A008458(n))*A250729(A046691(n+3))`
-/

namespace A250726.P5109088360743580866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A250729 (A046691 (n + 3)).toNat

end

end A250726.P5109088360743580866

/-!
# A250727: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250727, there is no canonical definition to state claims against.
-/

/-! ## A250727.P7258584027578981792

`A250729(A052905(n+3))`
-/

namespace A250727.P7258584027578981792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A052905 (n + 3)).toNat

end

end A250727.P7258584027578981792

/-! ## A250727.P7403816660896657156

`A250729(A046691(n+4)-1)`
-/

namespace A250727.P7403816660896657156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A046691 (n + 4) - 1).toNat

end

end A250727.P7403816660896657156

/-! ## A250727.P5465800758338639293

`A250729(A000096(n+5)-4)`
-/

namespace A250727.P5465800758338639293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (n + 5) - 4).toNat

end

end A250727.P5465800758338639293

/-! ## A250727.P3091690884988895590

`A250729(A000217(n+6)-5)`
-/

namespace A250727.P3091690884988895590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000217 (n + 6) - 5).toNat

end

end A250727.P3091690884988895590

/-! ## A250727.P15657686295104559448

`A250729(Δ[A023551(n+1)]+1)`
-/

namespace A250727.P15657686295104559448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (f1 (n + 1) - f1 n + 1).toNat

end

end A250727.P15657686295104559448

/-! ## A250727.P6302100127528270120

`A250729(Δ[A023545(n+2)]-1)`
-/

namespace A250727.P6302100127528270120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (f1 (n + 1) - f1 n - 1).toNat

end

end A250727.P6302100127528270120

/-! ## A250727.P12187028206681169406

`A250729(Δ[A000292(n+4)]+n+1)`
-/

namespace A250727.P12187028206681169406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A250727.P12187028206681169406

/-!
# A250728: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250728, there is no canonical definition to state claims against.
-/

/-! ## A250728.P478177431690591687

`A250729(A055999(n+4))`
-/

namespace A250728.P478177431690591687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A055999 (n + 4)).toNat

end

end A250728.P478177431690591687

/-! ## A250728.P3640018615834368700

`A250729(Δ[A023551(n+2)])`
-/

namespace A250728.P3640018615834368700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (f1 (n + 1) - f1 n).toNat

end

end A250728.P3640018615834368700

/-! ## A250728.P9647804053325595736

`A250729(A000096(n+6)-5)`
-/

namespace A250728.P9647804053325595736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000096 (n + 6) - 5).toNat

end

end A250728.P9647804053325595736

/-! ## A250728.P9749455842194522562

`A250729(A000124(n+7)-7)`
-/

namespace A250728.P9749455842194522562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000124 (n + 7) - 7).toNat

end

end A250728.P9749455842194522562

/-! ## A250728.P11731925791406987460

`A250729(A000217(n+6)+n+1)`
-/

namespace A250728.P11731925791406987460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A250728.P11731925791406987460

/-!
# A250730: Number of (1+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250730, the canonical program `A250730.P6095042262793482170` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250730 has offset 1).

The definition of A250730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250730.P6095042262793482170

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=9, a(1)=22, a(2)=50, a(3)=114`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250730

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` -/
def P6095042262793482170.Spec : Prop :=
  ∀ n, P6095042262793482170.a n = A250730 (n + 1)

theorem P6095042262793482170.correct : P6095042262793482170.Spec := by
  intro n
  simp only [A250730, Nat.add_sub_cancel]

end A250730

/-! ## A250730.P7349045073981542722

`A077850(n+2)+A006356(n)`
-/

namespace A250730.P7349045073981542722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 2) + A006356 n

end

end A250730.P7349045073981542722

namespace A250730

/-- `A077850(n+2)+A006356(n)` -/
def P7349045073981542722.Spec : Prop :=
  ∀ n, P7349045073981542722.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P15149913178455116262

`A250576(n+1)-A106805(n)`
-/

namespace A250730.P15149913178455116262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250576 (n + 1) - A106805 n

end

end A250730.P15149913178455116262

namespace A250730

/-- `A250576(n+1)-A106805(n)` -/
def P15149913178455116262.Spec : Prop :=
  ∀ n, P15149913178455116262.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P3456993638529797586

`A077998(n+1)+A077850(n+2)`
-/

namespace A250730.P3456993638529797586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + A077850 (n + 2)

end

end A250730.P3456993638529797586

namespace A250730

/-- `A077998(n+1)+A077850(n+2)` -/
def P3456993638529797586.Spec : Prop :=
  ∀ n, P3456993638529797586.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P3534050542444584179

`A033304(n+2)-A052949(n+1)`
-/

namespace A250730.P3534050542444584179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 (n + 2) - A052949 (n + 1)

end

end A250730.P3534050542444584179

namespace A250730

/-- `A033304(n+2)-A052949(n+1)` -/
def P3534050542444584179.Spec : Prop :=
  ∀ n, P3534050542444584179.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P11758863156185431649

`A106803(n+2)+A077850(n+2)`
-/

namespace A250730.P11758863156185431649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 2) + A077850 (n + 2)

end

end A250730.P11758863156185431649

namespace A250730

/-- `A106803(n+2)+A077850(n+2)` -/
def P11758863156185431649.Spec : Prop :=
  ∀ n, P11758863156185431649.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P15735733352379263733

`A106805(n+3)-(A106805(n)+1)`
-/

namespace A250730.P15735733352379263733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 3) - (A106805 n + 1)

end

end A250730.P15735733352379263733

namespace A250730

/-- `A106805(n+3)-(A106805(n)+1)` -/
def P15735733352379263733.Spec : Prop :=
  ∀ n, P15735733352379263733.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P1673866806024236593

`A077850(n+1)+Δ[Δ[A077850(n+1)]]`
-/

namespace A250730.P1673866806024236593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 1) + (f1 (n + 1) - f1 n)

end

end A250730.P1673866806024236593

namespace A250730

/-- `A077850(n+1)+Δ[Δ[A077850(n+1)]]` -/
def P1673866806024236593.Spec : Prop :=
  ∀ n, P1673866806024236593.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P13619348911011533418

`A250729(∑[n]+1)`
-/

namespace A250730.P13619348911011533418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250730.P13619348911011533418

namespace A250730

/-- `A250729(∑[n]+1)` -/
def P13619348911011533418.Spec : Prop :=
  ∀ n, P13619348911011533418.a n = A250730 (n + 1)

end A250730

/-! ## A250730.P1851994095263046147

`record[A250729(n+1)/A007318(n)]`
-/

namespace A250730.P1851994095263046147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250729 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250730.P1851994095263046147

namespace A250730

/-- `record[A250729(n+1)/A007318(n)]` -/
def P1851994095263046147.Spec : Prop :=
  ∀ n, P1851994095263046147.a n = (A250730 (n + 1) : ℚ)

end A250730

/-!
# A250731: Number of (2+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250731, the canonical program `A250731.P7677101849927175857` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250731 has offset 1).

The definition of A250731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250731.P7677101849927175857

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=18, a(1)=46, a(2)=110, a(3)=257`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250731

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P7677101849927175857.Spec : Prop :=
  ∀ n, P7677101849927175857.a n = A250731 (n + 1)

theorem P7677101849927175857.correct : P7677101849927175857.Spec := by
  intro n
  simp only [A250731, Nat.add_sub_cancel]

end A250731

/-! ## A250731.P3633162106424443444

`A250729(∑[n+1]+2)`
-/

namespace A250731.P3633162106424443444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250731.P3633162106424443444

namespace A250731

/-- `A250729(∑[n+1]+2)` -/
def P3633162106424443444.Spec : Prop :=
  ∀ n, P3633162106424443444.a n = A250731 (n + 1)

end A250731

/-! ## A250731.P12603033309270684099

`or(char[3], A250729(A000217(n+1)+2))`
-/

namespace A250731.P12603033309270684099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250729 (A000217 (n + 1) + 2).toNat)

end

end A250731.P12603033309270684099

namespace A250731

/-- `or(char[3], A250729(A000217(n+1)+2))` -/
def P12603033309270684099.Spec : Prop :=
  ∀ n, P12603033309270684099.a n = A250731 (n + 1)

end A250731

/-! ## A250731.P11009313830731645329

`char[A061579(n)]*A250729(A000217(n+1)+2)`
-/

namespace A250731.P11009313830731645329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250729 (A000217 (n + 1) + 2).toNat

end

end A250731.P11009313830731645329

namespace A250731

/-- `char[A061579(n)]*A250729(A000217(n+1)+2)` -/
def P11009313830731645329.Spec : Prop :=
  ∀ n, P11009313830731645329.a n = A250731 (n + 1)

end A250731

/-! ## A250731.P17846685425504602747

`A007318(A000217(n))*A250729(A000217(n+1)+2)`
-/

namespace A250731.P17846685425504602747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A250729 (A000217 (n + 1) + 2).toNat

end

end A250731.P17846685425504602747

namespace A250731

/-- `A007318(A000217(n))*A250729(A000217(n+1)+2)` -/
def P17846685425504602747.Spec : Prop :=
  ∀ n, P17846685425504602747.a n = A250731 (n + 1)

end A250731

/-! ## A250731.P3037468024685278318

`A250729(A000217(n+1)+2)/A007318(A000217(n+7))`
-/

namespace A250731.P3037468024685278318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250729 (A000217 (n + 1) + 2).toNat : ℚ) / (A007318 (A000217 (n + 7)).toNat : ℚ)

end

end A250731.P3037468024685278318

namespace A250731

/-- `A250729(A000217(n+1)+2)/A007318(A000217(n+7))` -/
def P3037468024685278318.Spec : Prop :=
  ∀ n, P3037468024685278318.a n = (A250731 (n + 1) : ℚ)

end A250731

/-!
# A250732: Number of (3+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250732, there is no canonical definition to state claims against.
-/

/-! ## A250732.P14888697907159862348

`A250729(∑[n+2]+4)`
-/

namespace A250732.P14888697907159862348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250732.P14888697907159862348

/-! ## A250732.P2396976161759477387

`or(char[1], A250729(A167614(n+1)))`
-/

namespace A250732.P2396976161759477387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250729 (A167614 (n + 1)).toNat)

end

end A250732.P2396976161759477387

/-! ## A250732.P2287864894800217784

`or(A000007(n), A250729(A034856(n+1)+5))`
-/

namespace A250732.P2287864894800217784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250729 (A034856 (n + 1) + 5).toNat)

end

end A250732.P2287864894800217784

/-! ## A250732.P12367947250802047894

`abs(A033999(n)*A250729(A034856(n+1)+5))`
-/

namespace A250732.P12367947250802047894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A250729 (A034856 (n + 1) + 5).toNat|

end

end A250732.P12367947250802047894

/-! ## A250732.P14477356027579294147

`char[A060119(n)]*A250729(A034856(n+1)+5)`
-/

namespace A250732.P14477356027579294147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250729 (A034856 (n + 1) + 5).toNat

end

end A250732.P14477356027579294147

/-! ## A250732.P13564008719111569996

`A000034(2*n)*A250729(A000096(n+1)+4)`
-/

namespace A250732.P13564008719111569996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A250729 (A000096 (n + 1) + 4).toNat

end

end A250732.P13564008719111569996

/-! ## A250732.P11135842899002415036

`and(A057428(n+1), A250729(A034856(n+1)+5))`
-/

namespace A250732.P11135842899002415036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A250729 (A034856 (n + 1) + 5).toNat)

end

end A250732.P11135842899002415036

/-! ## A250732.P7700490116458763203

`A250729(A034856(n+1)+5)+char[A031781(n+1)]`
-/

namespace A250732.P7700490116458763203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250732.P7700490116458763203

/-! ## A250732.P16240177598409241167

`A250729(A034856(n+1)+5)+char[A046092(n+7)]`
-/

namespace A250732.P16240177598409241167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250732.P16240177598409241167

/-! ## A250732.P13769772799354975761

`A062157(2*n+1)*A250729(A034856(n+1)+5)`
-/

namespace A250732.P13769772799354975761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n + 1) * A250729 (A034856 (n + 1) + 5).toNat

end

end A250732.P13769772799354975761

/-!
# A250733: Number of (4+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250733, there is no canonical definition to state claims against.
-/

/-! ## A250733.P6839760110940267442

`A250729(∑[n+3]+7)`
-/

namespace A250733.P6839760110940267442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250733.P6839760110940267442

/-! ## A250733.P15963737840041031890

`or(A000038(n), A250729(A055999(n)+10))`
-/

namespace A250733.P15963737840041031890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250729 (A055999 n + 10).toNat)

end

end A250733.P15963737840041031890

/-! ## A250733.P3505128610970191282

`lcm(A033999(n), A250729(A167614(n+2)+1))`
-/

namespace A250733.P3505128610970191282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250729 (A167614 (n + 2) + 1).toNat)

end

end A250733.P3505128610970191282

/-! ## A250733.P4516127536709093902

`lcm(A034947(n²+5), A250729(A055999(n)+10))`
-/

namespace A250733.P4516127536709093902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n ^ 2 + 5)) (A250729 (A055999 n + 10).toNat)

end

end A250733.P4516127536709093902

/-! ## A250733.P11962194190505039467

`A250729(Δ[A008778(n)]+6)%A250734(n+1)`
-/

namespace A250733.P11962194190505039467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250729 (f1 (n + 1) - f1 n + 6).toNat) (A250734 (n + 1))

end

end A250733.P11962194190505039467

/-! ## A250733.P8345210683051276730

`A250729(A000217(n+3)+4)%A250735(n+1)`
-/

namespace A250733.P8345210683051276730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250729 (A000217 (n + 3) + 4).toNat) (A250735 (n + 1))

end

end A250733.P8345210683051276730

/-!
# A250734: Number of (5+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250734, there is no canonical definition to state claims against.
-/

/-! ## A250734.P850631276013338523

`A250729(A167499(n+3))`
-/

namespace A250734.P850631276013338523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A167499 (n + 3)).toNat

end

end A250734.P850631276013338523

/-! ## A250734.P8662624424774569368

`A250729(A155212(n)+13)`
-/

namespace A250734.P8662624424774569368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A155212 n + 13).toNat

end

end A250734.P8662624424774569368

/-! ## A250734.P2913482064882463852

`A250729(A056000(n)+15)`
-/

namespace A250734.P2913482064882463852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A056000 n + 15).toNat

end

end A250734.P2913482064882463852

/-! ## A250734.P11340364903466688743

`A250729(A000124(n+4)+4)`
-/

namespace A250734.P11340364903466688743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000124 (n + 4) + 4).toNat

end

end A250734.P11340364903466688743

/-! ## A250734.P11653116824369234123

`A250729(A000217(n+4)+5)`
-/

namespace A250734.P11653116824369234123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000217 (n + 4) + 5).toNat

end

end A250734.P11653116824369234123

/-! ## A250734.P11515973061554623216

`A250729(A027379(n+2)+8)`
-/

namespace A250734.P11515973061554623216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A027379 (n + 2) + 8).toNat

end

end A250734.P11515973061554623216

/-! ## A250734.P8803322875804973256

`A250729(A133263(n+5)-(n+2))`
-/

namespace A250734.P8803322875804973256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A133263 (n + 5) - (n + 2 : ℤ)).toNat

end

end A250734.P8803322875804973256

/-! ## A250734.P38790562048617229

`A250729(A046691(n+4)-2*(n+1))`
-/

namespace A250734.P38790562048617229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A046691 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A250734.P38790562048617229

/-! ## A250734.P16865876677638285113

`A250729(A038722(Δ[A023545(n+1)]))`
-/

namespace A250734.P16865876677638285113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A250734.P16865876677638285113

/-!
# A250735: Number of (6+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250735, there is no canonical definition to state claims against.
-/

/-! ## A250735.P9094704309121246092

`A250729(A167499(n+4)+1)`
-/

namespace A250735.P9094704309121246092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A167499 (n + 4) + 1).toNat

end

end A250735.P9094704309121246092

/-! ## A250735.P14858408867088558540

`A250729(A167614(n+4)+3)`
-/

namespace A250735.P14858408867088558540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A167614 (n + 4) + 3).toNat

end

end A250735.P14858408867088558540

/-! ## A250735.P17537336625069734116

`A250729(A000217(n+5)+6)`
-/

namespace A250735.P17537336625069734116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000217 (n + 5) + 6).toNat

end

end A250735.P17537336625069734116

/-! ## A250735.P16806777306486730675

`A250729(A000124(n+6)-(n+1))`
-/

namespace A250735.P16806777306486730675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A250735.P16806777306486730675

/-! ## A250735.P17573938985245891709

`A250729(A008587(n+4)+A000124(n))`
-/

namespace A250735.P17573938985245891709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A008587 (n + 4) + A000124 n).toNat

end

end A250735.P17573938985245891709

/-! ## A250735.P13200307042638671938

`A250729(A267872(n+10)+A055999(n))`
-/

namespace A250735.P13200307042638671938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A267872 (n + 10) + A055999 n).toNat

end

end A250735.P13200307042638671938

/-! ## A250735.P15997966307079912394

`A250729(A002620(n+2)+A002620(n+9))`
-/

namespace A250735.P15997966307079912394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250735.P15997966307079912394

/-!
# A250736: Number of (7+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250736, there is no canonical definition to state claims against.
-/

/-! ## A250736.P4887731254156209125

`A250729(A167499(n+5)+2)`
-/

namespace A250736.P4887731254156209125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A167499 (n + 5) + 2).toNat

end

end A250736.P4887731254156209125

/-! ## A250736.P12819463766328189868

`A250729(A000124(n+6)+6)`
-/

namespace A250736.P12819463766328189868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000124 (n + 6) + 6).toNat

end

end A250736.P12819463766328189868

/-! ## A250736.P16018705978528364289

`A250729(A000217(n+6)+7)`
-/

namespace A250736.P16018705978528364289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A000217 (n + 6) + 7).toNat

end

end A250736.P16018705978528364289

/-! ## A250736.P3911146959702840962

`A250729(A005408(n+9)+A000096(n+3))`
-/

namespace A250736.P3911146959702840962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250729 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A250736.P3911146959702840962

/-!
# A250737: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250737, the canonical program `A250737.P17497338391346816911` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250737 has offset 1).

The definition of A250737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250737.P17497338391346816911

`2^(2+n)+14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250737

/-- `2^(2+n)+14` -/
def P17497338391346816911.Spec : Prop :=
  ∀ n, (P17497338391346816911.a n : ℤ) = A250737 (n + 1)

theorem P17497338391346816911.correct : P17497338391346816911.Spec := by
  intro n
  simp only [A250737, Nat.add_sub_cancel]

end A250737

/-! ## A250737.P9946186348281729124

`2*(a(n-1)-7)` with `a(0)=18`
-/

namespace A250737.P9946186348281729124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  2 * (a (n - 1) - 7)

end

end A250737.P9946186348281729124

namespace A250737

/-- `2*(a(n-1)-7)` -/
def P9946186348281729124.Spec : Prop :=
  ∀ n, P9946186348281729124.a n = A250737 (n + 1)

theorem P9946186348281729124.correct : P9946186348281729124.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250737, Nat.add_sub_cancel, A250737.P9946186348281729124.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250737, Nat.add_sub_cancel, A250737.P9946186348281729124.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250737

/-! ## A250737.P736211089717444156

`lcm(2, 7-a(n-1))` with `a(0)=18`
-/

namespace A250737.P736211089717444156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  Int.lcm 2 (7 - (a (n - 1) : ℤ))

end

end A250737.P736211089717444156

namespace A250737

/-- `lcm(2, 7-a(n-1))` -/
def P736211089717444156.Spec : Prop :=
  ∀ n, (P736211089717444156.a n : ℤ) = A250737 (n + 1)

end A250737

/-! ## A250737.P8806377821666089037

`∑[a(n-1)+a(n-1)]` with `a(0)=18, a(1)=4`
-/

namespace A250737.P8806377821666089037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250737.P8806377821666089037

namespace A250737

/-- `∑[a(n-1)+a(n-1)]` -/
def P8806377821666089037.Spec : Prop :=
  ∀ n, (P8806377821666089037.a n : ℤ) = A250737 (n + 1)

end A250737

/-! ## A250737.P3010204888926556792

`2*(∑[ogf((1-2x)/(1-4x+4x^2))]+8)`
-/

namespace A250737.P3010204888926556792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A250737.P3010204888926556792

namespace A250737

/-- `2*(∑[ogf((1-2x)/(1-4x+4x^2))]+8)` -/
def P3010204888926556792.Spec : Prop :=
  ∀ n, P3010204888926556792.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P14940498187517921484

`floor(a(n-1)+a(n-1)-14)` with `a(0)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A250737.P14940498187517921484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  a (n - 1) + (a (n - 1) - 14)

end

end A250737.P14940498187517921484

namespace A250737

/-- `floor(a(n-1)+a(n-1)-14)` -/
def P14940498187517921484.Spec : Prop :=
  ∀ n, P14940498187517921484.a n = A250737 (n + 1)

theorem P14940498187517921484.correct : P14940498187517921484.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250737, Nat.add_sub_cancel, A250737.P14940498187517921484.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250737, Nat.add_sub_cancel, A250737.P14940498187517921484.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250737

/-! ## A250737.P17265785205572447897

`floor(a(n-1)-(14-a(n-1)))` with `a(0)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A250737.P17265785205572447897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  a (n - 1) - (14 - a (n - 1))

end

end A250737.P17265785205572447897

namespace A250737

/-- `floor(a(n-1)-(14-a(n-1)))` -/
def P17265785205572447897.Spec : Prop :=
  ∀ n, P17265785205572447897.a n = A250737 (n + 1)

theorem P17265785205572447897.correct : P17265785205572447897.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250737, Nat.add_sub_cancel, A250737.P17265785205572447897.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250737, Nat.add_sub_cancel, A250737.P17265785205572447897.a, A250737.P17497338391346816911.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250737

/-! ## A250737.P9761456371649610922

`record[A112032(n)+14]`
-/

namespace A250737.P9761456371649610922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250737.P9761456371649610922

namespace A250737

/-- `record[A112032(n)+14]` -/
def P9761456371649610922.Spec : Prop :=
  ∀ n, P9761456371649610922.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P1219386439242692522

`2*A168415(n+1)`
-/

namespace A250737.P1219386439242692522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168415 (n + 1)

end

end A250737.P1219386439242692522

namespace A250737

/-- `2*A168415(n+1)` -/
def P1219386439242692522.Spec : Prop :=
  ∀ n, P1219386439242692522.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P12087796743988023126

`A209726(2*n+3)`
-/

namespace A250737.P12087796743988023126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209726 (2 * n + 3)

end

end A250737.P12087796743988023126

namespace A250737

/-- `A209726(2*n+3)` -/
def P12087796743988023126.Spec : Prop :=
  ∀ n, P12087796743988023126.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P16299883270488792220

`2*(A153972(n+1)+1)`
-/

namespace A250737.P16299883270488792220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153972 (n + 1) + 1)

end

end A250737.P16299883270488792220

namespace A250737

/-- `2*(A153972(n+1)+1)` -/
def P16299883270488792220.Spec : Prop :=
  ∀ n, P16299883270488792220.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P7004630933456485416

`2*(A168614(n+1)+2)`
-/

namespace A250737.P7004630933456485416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168614 (n + 1) + 2)

end

end A250737.P7004630933456485416

namespace A250737

/-- `2*(A168614(n+1)+2)` -/
def P7004630933456485416.Spec : Prop :=
  ∀ n, P7004630933456485416.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P7831786541481507624

`2*(A242475(n+1)-1)`
-/

namespace A250737.P7831786541481507624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A242475 (n + 1) - 1)

end

end A250737.P7831786541481507624

namespace A250737

/-- `2*(A242475(n+1)-1)` -/
def P7831786541481507624.Spec : Prop :=
  ∀ n, P7831786541481507624.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P3778269078160271750

`2*(A140504(n+1)+3)`
-/

namespace A250737.P3778269078160271750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140504 (n + 1) + 3)

end

end A250737.P3778269078160271750

namespace A250737

/-- `2*(A140504(n+1)+3)` -/
def P3778269078160271750.Spec : Prop :=
  ∀ n, P3778269078160271750.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P12888945249452591794

`2*(A146528(n+1)+3)`
-/

namespace A250737.P12888945249452591794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A146528 (n + 1) + 3)

end

end A250737.P12888945249452591794

namespace A250737

/-- `2*(A146528(n+1)+3)` -/
def P12888945249452591794.Spec : Prop :=
  ∀ n, P12888945249452591794.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P3991140612249216758

`2*(A188165(n+1)-2)`
-/

namespace A250737.P3991140612249216758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A188165 (n + 1) - 2)

end

end A250737.P3991140612249216758

namespace A250737

/-- `2*(A188165(n+1)-2)` -/
def P3991140612249216758.Spec : Prop :=
  ∀ n, P3991140612249216758.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P8868397209026151788

`2*(2*A062709(n)+1)`
-/

namespace A250737.P8868397209026151788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A062709 n + 1)

end

end A250737.P8868397209026151788

namespace A250737

/-- `2*(2*A062709(n)+1)` -/
def P8868397209026151788.Spec : Prop :=
  ∀ n, P8868397209026151788.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P3897423986094789928

`2*(A246139(n+1)-3)`
-/

namespace A250737.P3897423986094789928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246139 (n + 1) - 3)

end

end A250737.P3897423986094789928

namespace A250737

/-- `2*(A246139(n+1)-3)` -/
def P3897423986094789928.Spec : Prop :=
  ∀ n, P3897423986094789928.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P10304984362167274755

`2*(A052548(n+1)+5)`
-/

namespace A250737.P10304984362167274755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052548 (n + 1) + 5)

end

end A250737.P10304984362167274755

namespace A250737

/-- `2*(A052548(n+1)+5)` -/
def P10304984362167274755.Spec : Prop :=
  ∀ n, P10304984362167274755.a n = A250737 (n + 1)

end A250737

/-! ## A250737.P4171743769829160521

`2*(A153973(n+1)-A000225(n))`
-/

namespace A250737.P4171743769829160521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153973 (n + 1) - A000225 n)

end

end A250737.P4171743769829160521

namespace A250737

/-- `2*(A153973(n+1)-A000225(n))` -/
def P4171743769829160521.Spec : Prop :=
  ∀ n, P4171743769829160521.a n = A250737 (n + 1)

end A250737

/-!
# A250738: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250738, the canonical program `A250738.P2644938546744848395` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250738 has offset 1).

The definition of A250738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250738.P2644938546744848395

`2^(n+2)+30`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250738

/-- `2^(n+2)+30` -/
def P2644938546744848395.Spec : Prop :=
  ∀ n, (P2644938546744848395.a n : ℤ) = A250738 (n + 1)

theorem P2644938546744848395.correct : P2644938546744848395.Spec := by
  intro n
  simp only [A250738, Nat.add_sub_cancel]

end A250738

/-! ## A250738.P3236170495105131997

`2*(a(n-1)-15)` with `a(0)=34`
-/

namespace A250738.P3236170495105131997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  2 * (a (n - 1) - 15)

end

end A250738.P3236170495105131997

namespace A250738

/-- `2*(a(n-1)-15)` -/
def P3236170495105131997.Spec : Prop :=
  ∀ n, P3236170495105131997.a n = A250738 (n + 1)

theorem P3236170495105131997.correct : P3236170495105131997.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250738, Nat.add_sub_cancel, A250738.P3236170495105131997.a, A250738.P2644938546744848395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250738, Nat.add_sub_cancel, A250738.P3236170495105131997.a, A250738.P2644938546744848395.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250738

/-! ## A250738.P1212642005914121428

`∑[n-xor(n-a(n-1), a(n-1))]` with `a(0)=34`
-/

namespace A250738.P1212642005914121428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [34] fun n f1 =>
  (n : ℤ) - Int.xor ((n : ℤ) - f1 (n - 1)) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250738.P1212642005914121428

namespace A250738

/-- `∑[n-xor(n-a(n-1), a(n-1))]` -/
def P1212642005914121428.Spec : Prop :=
  ∀ n, P1212642005914121428.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P17284314680776942038

`2*(∑[A000079(n)]+16)`
-/

namespace A250738.P17284314680776942038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250738.P17284314680776942038

namespace A250738

/-- `2*(∑[A000079(n)]+16)` -/
def P17284314680776942038.Spec : Prop :=
  ∀ n, P17284314680776942038.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P4771953625450489222

`2*(2*A153972(n)+3)`
-/

namespace A250738.P4771953625450489222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A153972 n + 3)

end

end A250738.P4771953625450489222

namespace A250738

/-- `2*(2*A153972(n)+3)` -/
def P4771953625450489222.Spec : Prop :=
  ∀ n, P4771953625450489222.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P11414271971450531391

`2*(2*A062709(n)+9)`
-/

namespace A250738.P11414271971450531391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A062709 n + 9)

end

end A250738.P11414271971450531391

namespace A250738

/-- `2*(2*A062709(n)+9)` -/
def P11414271971450531391.Spec : Prop :=
  ∀ n, P11414271971450531391.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P1470150582922719646

`2*(A011782(n+2)+15)`
-/

namespace A250738.P1470150582922719646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 2) + 15)

end

end A250738.P1470150582922719646

namespace A250738

/-- `2*(A011782(n+2)+15)` -/
def P1470150582922719646.Spec : Prop :=
  ∀ n, P1470150582922719646.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P16536824759655281242

`record[A122111(2*n+3)+30]`
-/

namespace A250738.P16536824759655281242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (2 * n + 3) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250738.P16536824759655281242

namespace A250738

/-- `record[A122111(2*n+3)+30]` -/
def P16536824759655281242.Spec : Prop :=
  ∀ n, P16536824759655281242.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P9098935118787178218

`2*(A209726(2*n+1)+1)`
-/

namespace A250738.P9098935118787178218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A209726 (2 * n + 1) + 1)

end

end A250738.P9098935118787178218

namespace A250738

/-- `2*(A209726(2*n+1)+1)` -/
def P9098935118787178218.Spec : Prop :=
  ∀ n, P9098935118787178218.a n = A250738 (n + 1)

end A250738

/-! ## A250738.P13844827981227177883

`2*((8/2)²+A000225(n+1))`
-/

namespace A250738.P13844827981227177883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((8 : ℚ) / 2) ^ 2 + (A000225 (n + 1) : ℚ))

end

end A250738.P13844827981227177883

namespace A250738

/-- `2*((8/2)²+A000225(n+1))` -/
def P13844827981227177883.Spec : Prop :=
  ∀ n, P13844827981227177883.a n = (A250738 (n + 1) : ℚ)

end A250738

/-! ## A250738.P8398617131018018393

`2*(A316742(2*n)+(8/2)²)`
-/

namespace A250738.P8398617131018018393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A316742 (2 * n) : ℚ) + ((8 : ℚ) / 2) ^ 2)

end

end A250738.P8398617131018018393

namespace A250738

/-- `2*(A316742(2*n)+(8/2)²)` -/
def P8398617131018018393.Spec : Prop :=
  ∀ n, P8398617131018018393.a n = (A250738 (n + 1) : ℚ)

end A250738

/-! ## A250738.P14539659640608895567

`record[A090988(n+2)+30]`
-/

namespace A250738.P14539659640608895567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 2) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250738.P14539659640608895567

namespace A250738

/-- `record[A090988(n+2)+30]` -/
def P14539659640608895567.Spec : Prop :=
  ∀ n, P14539659640608895567.a n = A250738 (n + 1)

end A250738

/-!
# A250739: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250739, the canonical program `A250739.P13781935133921581158` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250739 has offset 1).

The definition of A250739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250739.P13781935133921581158

`2^(2+n)+62`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250739

/-- `2^(2+n)+62` -/
def P13781935133921581158.Spec : Prop :=
  ∀ n, (P13781935133921581158.a n : ℤ) = A250739 (n + 1)

theorem P13781935133921581158.correct : P13781935133921581158.Spec := by
  intro n
  simp only [A250739, Nat.add_sub_cancel]

end A250739

/-! ## A250739.P16642468485489817493

`2*(a(n-1)-31)` with `a(0)=66`
-/

namespace A250739.P16642468485489817493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [66] fun n a =>
  2 * (a (n - 1) - 31)

end

end A250739.P16642468485489817493

namespace A250739

/-- `2*(a(n-1)-31)` -/
def P16642468485489817493.Spec : Prop :=
  ∀ n, P16642468485489817493.a n = A250739 (n + 1)

theorem P16642468485489817493.correct : P16642468485489817493.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250739, Nat.add_sub_cancel, A250739.P16642468485489817493.a, A250739.P13781935133921581158.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250739, Nat.add_sub_cancel, A250739.P16642468485489817493.a, A250739.P13781935133921581158.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250739

/-! ## A250739.P14134655938948213039

`record[A112032(n)+62]`
-/

namespace A250739.P14134655938948213039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n + 62

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250739.P14134655938948213039

namespace A250739

/-- `record[A112032(n)+62]` -/
def P14134655938948213039.Spec : Prop :=
  ∀ n, P14134655938948213039.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P5468537871630730771

`2*(A048578(n)+30)`
-/

namespace A250739.P5468537871630730771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048578 n + 30)

end

end A250739.P5468537871630730771

namespace A250739

/-- `2*(A048578(n)+30)` -/
def P5468537871630730771.Spec : Prop :=
  ∀ n, P5468537871630730771.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P16714965888768771472

`2*(A000079(n+1)+31)`
-/

namespace A250739.P16714965888768771472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (n + 1) + 31)

end

end A250739.P16714965888768771472

namespace A250739

/-- `2*(A000079(n+1)+31)` -/
def P16714965888768771472.Spec : Prop :=
  ∀ n, P16714965888768771472.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P9064418982326451293

`2*xor(1, A000225(n+1)+31)`
-/

namespace A250739.P9064418982326451293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 1 (A000225 (n + 1) + 31)

end

end A250739.P9064418982326451293

namespace A250739

/-- `2*xor(1, A000225(n+1)+31)` -/
def P9064418982326451293.Spec : Prop :=
  ∀ n, P9064418982326451293.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P7058775622140736376

`2*(A040240(n+1)+A000225(n+1))`
-/

namespace A250739.P7058775622140736376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040240 (n + 1) + A000225 (n + 1))

end

end A250739.P7058775622140736376

namespace A250739

/-- `2*(A040240(n+1)+A000225(n+1))` -/
def P7058775622140736376.Spec : Prop :=
  ∀ n, P7058775622140736376.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P10370528750921741733

`Δ[A126646(n+1)+A304839(n+1)+n]`
-/

namespace A250739.P10370528750921741733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) + (A304839 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250739.P10370528750921741733

namespace A250739

/-- `Δ[A126646(n+1)+A304839(n+1)+n]` -/
def P10370528750921741733.Spec : Prop :=
  ∀ n, P10370528750921741733.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P15918111715866813000

`Δ[Δ[A250775(n+1)-A250774(n+1)]]`
-/

namespace A250739.P15918111715866813000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250775 (n + 1) - A250774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250739.P15918111715866813000

namespace A250739

/-- `Δ[Δ[A250775(n+1)-A250774(n+1)]]` -/
def P15918111715866813000.Spec : Prop :=
  ∀ n, P15918111715866813000.a n = A250739 (n + 1)

end A250739

/-! ## A250739.P2619600908665764153

`A250742(A167499(n+3))`
-/

namespace A250739.P2619600908665764153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250742 (A167499 (n + 3)).toNat

end

end A250739.P2619600908665764153

namespace A250739

/-- `A250742(A167499(n+3))` -/
def P2619600908665764153.Spec : Prop :=
  ∀ n, P2619600908665764153.a n = A250739 (n + 1)

end A250739

/-!
# A250740: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250740, the canonical program `A250740.P12736213861167451840` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250740 has offset 1).

The definition of A250740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250740.P12736213861167451840

`2^(n+2)+126`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250740

/-- `2^(n+2)+126` -/
def P12736213861167451840.Spec : Prop :=
  ∀ n, (P12736213861167451840.a n : ℤ) = A250740 (n + 1)

theorem P12736213861167451840.correct : P12736213861167451840.Spec := by
  intro n
  simp only [A250740, Nat.add_sub_cancel]

end A250740

/-! ## A250740.P64695950326271049

`A250742(A374007(n+1))`
-/

namespace A250740.P64695950326271049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250742 (A374007 (n + 1)).toNat

end

end A250740.P64695950326271049

namespace A250740

/-- `A250742(A374007(n+1))` -/
def P64695950326271049.Spec : Prop :=
  ∀ n, P64695950326271049.a n = A250740 (n + 1)

end A250740

/-! ## A250740.P3766837963682729116

`A346807(A250739(n+1))`
-/

namespace A250740.P3766837963682729116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346807 (A250739 (n + 1)).toNat

end

end A250740.P3766837963682729116

namespace A250740

/-- `A346807(A250739(n+1))` -/
def P3766837963682729116.Spec : Prop :=
  ∀ n, P3766837963682729116.a n = A250740 (n + 1)

end A250740

/-! ## A250740.P2395835269495185758

`A185048(A250741(n+2))`
-/

namespace A250740.P2395835269495185758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A250741 (n + 2)).toNat

end

end A250740.P2395835269495185758

namespace A250740

/-- `A185048(A250741(n+2))` -/
def P2395835269495185758.Spec : Prop :=
  ∀ n, P2395835269495185758.a n = A250740 (n + 1)

end A250740

/-!
# A250741: Number of (n+1) X (7+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250741, the canonical program `A250741.P13739462172187105390` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250741 has offset 1).

The definition of A250741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250741.P13739462172187105390

`2^(2+n)+254`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250741

/-- `2^(2+n)+254` -/
def P13739462172187105390.Spec : Prop :=
  ∀ n, (P13739462172187105390.a n : ℤ) = A250741 (n + 1)

theorem P13739462172187105390.correct : P13739462172187105390.Spec := by
  intro n
  simp only [A250741, Nat.add_sub_cancel]

end A250741

/-! ## A250741.P14199855768618921066

`or(2, 4*∑[2*a(n-1)])` with `a(0)=64, a(1)=1`
-/

namespace A250741.P14199855768618921066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [64, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A250741.P14199855768618921066

namespace A250741

/-- `or(2, 4*∑[2*a(n-1)])` -/
def P14199855768618921066.Spec : Prop :=
  ∀ n, (P14199855768618921066.a n : ℤ) = A250741 (n + 1)

end A250741

/-! ## A250741.P11847494770284519328

`lcm(2, 4*(A000051(n)+50)+50)`
-/

namespace A250741.P11847494770284519328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (4 * (A000051 n + 50) + 50)

end

end A250741.P11847494770284519328

namespace A250741

/-- `lcm(2, 4*(A000051(n)+50)+50)` -/
def P11847494770284519328.Spec : Prop :=
  ∀ n, (P11847494770284519328.a n : ℤ) = A250741 (n + 1)

end A250741

/-! ## A250741.P11937010776478884488

`∑[(2-A000038(n))*a(n-1)]` with `a(0)=258, a(1)=4`
-/

namespace A250741.P11937010776478884488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [258, 4] fun n f1 =>
  (2 - A000038 n) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250741.P11937010776478884488

namespace A250741

/-- `∑[(2-A000038(n))*a(n-1)]` -/
def P11937010776478884488.Spec : Prop :=
  ∀ n, P11937010776478884488.a n = A250741 (n + 1)

end A250741

/-! ## A250741.P5760652512780923624

`record[A252754(2*n+5)+254]`
-/

namespace A250741.P5760652512780923624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (2 * n + 5) + 254

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250741.P5760652512780923624

namespace A250741

/-- `record[A252754(2*n+5)+254]` -/
def P5760652512780923624.Spec : Prop :=
  ∀ n, P5760652512780923624.a n = A250741 (n + 1)

end A250741

/-!
# A250742: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nonincreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250742, the canonical program `A250742.P16714809823875082383` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250742 has offset 1).

The definition of A250742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250742.P16714809823875082383

`4*A131816(n)+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A250742

/-- `4*A131816(n)+2` -/
def P16714809823875082383.Spec : Prop :=
  ∀ n, P16714809823875082383.a n = A250742 (n + 1)

theorem P16714809823875082383.correct : P16714809823875082383.Spec := by
  intro n
  simp only [A250742, Nat.add_sub_cancel]

end A250742

/-! ## A250742.P1730206583694333243

`4*A271709(n)-2`
-/

namespace A250742.P1730206583694333243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A271709 n - 2

end

end A250742.P1730206583694333243

namespace A250742

/-- `4*A271709(n)-2` -/
def P1730206583694333243.Spec : Prop :=
  ∀ n, P1730206583694333243.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P13248678237986696536

`lcm(2, A271709(n)+A131816(n))`
-/

namespace A250742.P13248678237986696536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271709 n + A131816 n)

end

end A250742.P13248678237986696536

namespace A250742

/-- `lcm(2, A271709(n)+A131816(n))` -/
def P13248678237986696536.Spec : Prop :=
  ∀ n, (P13248678237986696536.a n : ℤ) = A250742 (n + 1)

end A250742

/-! ## A250742.P16842552345618977342

`A126646(A002260(n+1))+A126646(A004736(n+1))`
-/

namespace A250742.P16842552345618977342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A002260 (n + 1)).toNat + A126646 (A004736 (n + 1)).toNat

end

end A250742.P16842552345618977342

namespace A250742

/-- `A126646(A002260(n+1))+A126646(A004736(n+1))` -/
def P16842552345618977342.Spec : Prop :=
  ∀ n, P16842552345618977342.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P11514254083934789176

`A130330(A007401(n+1))+A126646(A002260(n+1))`
-/

namespace A250742.P11514254083934789176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A007401 (n + 1)).toNat + A126646 (A002260 (n + 1)).toNat

end

end A250742.P11514254083934789176

namespace A250742

/-- `A130330(A007401(n+1))+A126646(A002260(n+1))` -/
def P11514254083934789176.Spec : Prop :=
  ∀ n, P11514254083934789176.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P1988143809060407406

`A016825(A131816(n))`
-/

namespace A250742.P1988143809060407406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A131816 n).toNat

end

end A250742.P1988143809060407406

namespace A250742

/-- `A016825(A131816(n))` -/
def P1988143809060407406.Spec : Prop :=
  ∀ n, P1988143809060407406.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P10847312954630274737

`A016825(A271709(n)-1)`
-/

namespace A250742.P10847312954630274737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A271709 n - 1).toNat

end

end A250742.P10847312954630274737

namespace A250742

/-- `A016825(A271709(n)-1)` -/
def P10847312954630274737.Spec : Prop :=
  ∀ n, P10847312954630274737.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P13800174535991966115

`A016825(A059268(n)+A173787(n)/A059268(n))`
-/

namespace A250742.P13800174535991966115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.roundAway ((A059268 n : ℚ) + (A173787 n : ℚ) / (A059268 n : ℚ))).toNat

end

end A250742.P13800174535991966115

namespace A250742

/-- `A016825(A059268(n)+A173787(n)/A059268(n))` -/
def P13800174535991966115.Spec : Prop :=
  ∀ n, P13800174535991966115.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P4741498992233458385

`A113127(A271709(n))`
-/

namespace A250742.P4741498992233458385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (A271709 n).toNat

end

end A250742.P4741498992233458385

namespace A250742

/-- `A113127(A271709(n))` -/
def P4741498992233458385.Spec : Prop :=
  ∀ n, P4741498992233458385.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P18131370900134769227

`A130824(A131816(n)+1)`
-/

namespace A250742.P18131370900134769227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A131816 n + 1).toNat

end

end A250742.P18131370900134769227

namespace A250742

/-- `A130824(A131816(n)+1)` -/
def P18131370900134769227.Spec : Prop :=
  ∀ n, P18131370900134769227.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P4884738668188755069

`A111284(A131816(n)+2)`
-/

namespace A250742.P4884738668188755069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A131816 n + 2).toNat

end

end A250742.P4884738668188755069

namespace A250742

/-- `A111284(A131816(n)+2)` -/
def P4884738668188755069.Spec : Prop :=
  ∀ n, P4884738668188755069.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P4121335849876671618

`A271709(n)+A016777(A271709(n)-1)`
-/

namespace A250742.P4121335849876671618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A016777 (A271709 n - 1).toNat

end

end A250742.P4121335849876671618

namespace A250742

/-- `A271709(n)+A016777(A271709(n)-1)` -/
def P4121335849876671618.Spec : Prop :=
  ∀ n, P4121335849876671618.a n = A250742 (n + 1)

end A250742

/-! ## A250742.P4854509125158920367

`A130824(A183986(n+1)-A209727(n+1))`
-/

namespace A250742.P4854509125158920367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A183986 (n + 1) - A209727 (n + 1)).toNat

end

end A250742.P4854509125158920367

namespace A250742

/-- `A130824(A183986(n+1)-A209727(n+1))` -/
def P4854509125158920367.Spec : Prop :=
  ∀ n, P4854509125158920367.a n = A250742 (n + 1)

end A250742

/-!
# A250743: Numerator of the harmonic mean of the first n positive Fibonacci numbers.

The programs for A250743, there is no canonical definition to state claims against.
-/

/-! ## A250743.P9589873785968790265

`A110657(Δ[∏[A102730(n)]])`
-/

namespace A250743.P9589873785968790265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (f1 (n + 1) - f1 n).toNat

end

end A250743.P9589873785968790265

/-!
# A250744: Denominator of the harmonic mean of the first n positive Fibonacci numbers.

The programs for A250744, there is no canonical definition to state claims against.
-/

/-! ## A250744.P9910103451310263171

`lcm(n+1, A059248(n+1))/(n+1)`
-/

namespace A250744.P9910103451310263171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A059248 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A250744.P9910103451310263171

/-! ## A250744.P5853325588889915321

`A059248(n+1)/gcd(A059247(n+1), A059248(n+1))`
-/

namespace A250744.P5853325588889915321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059248 (n + 1) : ℚ) / (Int.gcd (A059247 (n + 1)) (A059248 (n + 1)) : ℚ)

end

end A250744.P5853325588889915321

/-! ## A250744.P15052327825105297745

`A000265(∏{p}[A059248(n+1), #])`
-/

namespace A250744.P15052327825105297745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A250744.P15052327825105297745

/-! ## A250744.P5085630409918268402

`∏{p}[A059248(n+1), A026741(#)]`
-/

namespace A250744.P5085630409918268402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p

end

end A250744.P5085630409918268402

/-!
# A250746: Start with a(0) = 0; then a(n) = smallest number > a(n-1) such that a(n) divides concat(a(n), a(n-1), ..., a(0)).

The programs for A250746, there is no canonical definition to state claims against.
-/

/-! ## A250746.P6491776826736101262

`eq[A247505(n), A323846(A058933(n+1))]`
-/

namespace A250746.P6491776826736101262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A058933 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250746.P6491776826736101262

/-! ## A250746.P16706093542879766970

`eq[A126168(A096858(n+5)), A156144(2*n+5)]`
-/

namespace A250746.P16706093542879766970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A096858 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156144 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250746.P16706093542879766970

/-!
# A250748: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250748, there is no canonical definition to state claims against.
-/

/-! ## A250748.P1511269942798267215

`A250755(∑[4*n]+1)`
-/

namespace A250748.P1511269942798267215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250748.P1511269942798267215

/-! ## A250748.P6389549423188456671

`or(val(n+1, 2), A250755(n²+(n+1)²))`
-/

namespace A250748.P6389549423188456671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A250755 (n ^ 2 + (n + 1) ^ 2))

end

end A250748.P6389549423188456671

/-! ## A250748.P17140270365640335448

`record[A250755(Δ[A235355(n)])]`
-/

namespace A250748.P17140270365640335448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250748.P17140270365640335448

/-! ## A250748.P18389981159504625448

`record[A250755(A178218(n+1))]`
-/

namespace A250748.P18389981159504625448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250748.P18389981159504625448

/-! ## A250748.P17097893681479295065

`record[A003982(n)*A250755(n+1)]`
-/

namespace A250748.P17097893681479295065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250748.P17097893681479295065

/-!
# A250749: Number of (n+1) X (2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250749, the canonical program `A250749.P8795832410189814382` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250749 has offset 1).

The definition of A250749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250749.P8795832410189814382

`A122695(n+5)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250749

/-- `A122695(n+5)+1` -/
def P8795832410189814382.Spec : Prop :=
  ∀ n, P8795832410189814382.a n = A250749 (n + 1)

theorem P8795832410189814382.correct : P8795832410189814382.Spec := by
  intro n
  simp only [A250749, Nat.add_sub_cancel]

end A250749

/-! ## A250749.P17590362511947579811

`A199109(n+3)-A052940(n+3)`
-/

namespace A250749.P17590362511947579811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 (n + 3) - A052940 (n + 3)

end

end A250749.P17590362511947579811

namespace A250749

/-- `A199109(n+3)-A052940(n+3)` -/
def P17590362511947579811.Spec : Prop :=
  ∀ n, P17590362511947579811.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P3756611808875093220

`Δ[A108765(n+3)-A050488(n+3)]`
-/

namespace A250749.P3756611808875093220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 (n + 3) - A050488 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250749.P3756611808875093220

namespace A250749

/-- `Δ[A108765(n+3)-A050488(n+3)]` -/
def P3756611808875093220.Spec : Prop :=
  ∀ n, P3756611808875093220.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P17733904992541731848

`A002783(n+3)+A002783(n+3)-A000392(n+4)`
-/

namespace A250749.P17733904992541731848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 (n + 3) + (A002783 (n + 3) - A000392 (n + 4))

end

end A250749.P17733904992541731848

namespace A250749

/-- `A002783(n+3)+A002783(n+3)-A000392(n+4)` -/
def P17733904992541731848.Spec : Prop :=
  ∀ n, P17733904992541731848.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P6247732210910502529

`A000051(n+3)+A000392(n+6)-A000244(n+3)`
-/

namespace A250749.P6247732210910502529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 3) + (A000392 (n + 6) - A000244 (n + 3))

end

end A250749.P6247732210910502529

namespace A250749

/-- `A000051(n+3)+A000392(n+6)-A000244(n+3)` -/
def P6247732210910502529.Spec : Prop :=
  ∀ n, P6247732210910502529.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P12653572400011173598

`A000244(n+4)+A000392(n+4)-A000225(n+4)`
-/

namespace A250749.P12653572400011173598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 4) + (A000392 (n + 4) - A000225 (n + 4))

end

end A250749.P12653572400011173598

namespace A250749

/-- `A000244(n+4)+A000392(n+4)-A000225(n+4)` -/
def P12653572400011173598.Spec : Prop :=
  ∀ n, P12653572400011173598.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P1588875567539572838

`A000392(n+4)+A007051(n+4)+A000392(n+5)`
-/

namespace A250749.P1588875567539572838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 4) + (A007051 (n + 4) + A000392 (n + 5))

end

end A250749.P1588875567539572838

namespace A250749

/-- `A000392(n+4)+A007051(n+4)+A000392(n+5)` -/
def P1588875567539572838.Spec : Prop :=
  ∀ n, P1588875567539572838.a n = A250749 (n + 1)

end A250749

/-! ## A250749.P9100285704135790981

`(63*3^(n+1)-24*2^(n+1)+3)/2`
-/

namespace A250749.P9100285704135790981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((63 * 3 ^ (n + 1) : ℤ) - (24 * 2 ^ (n + 1) : ℤ) + 3 : ℚ) / 2

end

end A250749.P9100285704135790981

namespace A250749

/-- `(63*3^(n+1)-24*2^(n+1)+3)/2` -/
def P9100285704135790981.Spec : Prop :=
  ∀ n, P9100285704135790981.a n = (A250749 (n + 1) : ℚ)

end A250749

/-! ## A250749.P3595182213224234341

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=72, a(1)=237, a(2)=756`
-/

namespace A250749.P3595182213224234341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [72, 237, 756] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A250749.P3595182213224234341

namespace A250749

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P3595182213224234341.Spec : Prop :=
  ∀ n, P3595182213224234341.a n = A250749 (n + 1)

end A250749

/-!
# A250750: Number of (n+1) X (3+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250750, the canonical program `A250750.P5781967349436499343` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250750 has offset 1).

The definition of A250750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250750.P5781967349436499343

`(114*3^(n+1)-48*2^(n+1)+12)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250750

/-- `(114*3^(n+1)-48*2^(n+1)+12)/2` -/
def P5781967349436499343.Spec : Prop :=
  ∀ n, P5781967349436499343.a n = (A250750 (n + 1) : ℚ)

end A250750

/-! ## A250750.P17595131404532015018

`A250754(n+1)%(A250751(n+1)-A250753(n+1))`
-/

namespace A250750.P17595131404532015018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250754 (n + 1)) (A250751 (n + 1) - A250753 (n + 1))

end

end A250750.P17595131404532015018

namespace A250750

/-- `A250754(n+1)%(A250751(n+1)-A250753(n+1))` -/
def P17595131404532015018.Spec : Prop :=
  ∀ n, P17595131404532015018.a n = A250750 (n + 1)

end A250750

/-! ## A250750.P8620053652633344110

`A250755(∑[n+3]+1)`
-/

namespace A250750.P8620053652633344110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250750.P8620053652633344110

namespace A250750

/-- `A250755(∑[n+3]+1)` -/
def P8620053652633344110.Spec : Prop :=
  ∀ n, P8620053652633344110.a n = A250750 (n + 1)

end A250750

/-! ## A250750.P7970188273794567445

`record[A250755(A198464(n+1))]`
-/

namespace A250750.P7970188273794567445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250750.P7970188273794567445

namespace A250750

/-- `record[A250755(A198464(n+1))]` -/
def P7970188273794567445.Spec : Prop :=
  ∀ n, P7970188273794567445.a n = A250750 (n + 1)

end A250750

/-! ## A250750.P1783417858874297842

`lcm(3, A250755(A034856(n+2)))`
-/

namespace A250750.P1783417858874297842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A250755 (A034856 (n + 2)).toNat)

end

end A250750.P1783417858874297842

namespace A250750

/-- `lcm(3, A250755(A034856(n+2)))` -/
def P1783417858874297842.Spec : Prop :=
  ∀ n, (P1783417858874297842.a n : ℤ) = A250750 (n + 1)

end A250750

/-!
# A250751: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250751, the canonical program `A250751.P8916526449828887815` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250751 has offset 1).

The definition of A250751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250751.P8916526449828887815

`5*A056182(n+3)+13`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250751

/-- `5*A056182(n+3)+13` -/
def P8916526449828887815.Spec : Prop :=
  ∀ n, P8916526449828887815.a n = A250751 (n + 1)

theorem P8916526449828887815.correct : P8916526449828887815.Spec := by
  intro n
  simp only [A250751, Nat.add_sub_cancel]

end A250751

/-! ## A250751.P12326105422614647350

`10*(A001047(n+3)+1)+3`
-/

namespace A250751.P12326105422614647350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A001047 (n + 3) + 1) + 3

end

end A250751.P12326105422614647350

namespace A250751

/-- `10*(A001047(n+3)+1)+3` -/
def P12326105422614647350.Spec : Prop :=
  ∀ n, P12326105422614647350.a n = A250751 (n + 1)

end A250751

/-! ## A250751.P626832652160132310

`(180*3^(n+1)-80*2^(n+1)+26)/2`
-/

namespace A250751.P626832652160132310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((180 * 3 ^ (n + 1) : ℤ) - (80 * 2 ^ (n + 1) : ℤ) + 26 : ℚ) / 2

end

end A250751.P626832652160132310

namespace A250751

/-- `(180*3^(n+1)-80*2^(n+1)+26)/2` -/
def P626832652160132310.Spec : Prop :=
  ∀ n, P626832652160132310.a n = (A250751 (n + 1) : ℚ)

end A250751

/-! ## A250751.P3456965025033681851

`A250755(∑[n+4]+3)`
-/

namespace A250751.P3456965025033681851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250751.P3456965025033681851

namespace A250751

/-- `A250755(∑[n+4]+3)` -/
def P3456965025033681851.Spec : Prop :=
  ∀ n, P3456965025033681851.a n = A250751 (n + 1)

end A250751

/-! ## A250751.P1991521635052229924

`or(1, A250755(A055998(n+2)))`
-/

namespace A250751.P1991521635052229924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250755 (A055998 (n + 2)).toNat)

end

end A250751.P1991521635052229924

namespace A250751

/-- `or(1, A250755(A055998(n+2)))` -/
def P1991521635052229924.Spec : Prop :=
  ∀ n, P1991521635052229924.a n = A250751 (n + 1)

end A250751

/-!
# A250752: Number of (n+1) X (5+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250752, the canonical program `A250752.P12853245527406702776` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250752 has offset 1).

The definition of A250752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250752.P12853245527406702776

`(261*3^(n+1)-120*2^(n+1)+45)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250752

/-- `(261*3^(n+1)-120*2^(n+1)+45)/2` -/
def P12853245527406702776.Spec : Prop :=
  ∀ n, P12853245527406702776.a n = (A250752 (n + 1) : ℚ)

end A250752

/-! ## A250752.P12622699609643879560

`A250755(∑[n+5]+6)`
-/

namespace A250752.P12622699609643879560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250752.P12622699609643879560

namespace A250752

/-- `A250755(∑[n+5]+6)` -/
def P12622699609643879560.Spec : Prop :=
  ∀ n, P12622699609643879560.a n = A250752 (n + 1)

end A250752

/-! ## A250752.P15901136835492473170

`A250755(A060577(n+4))%A053923(n+4)`
-/

namespace A250752.P15901136835492473170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250755 (A060577 (n + 4)).toNat) (A053923 (n + 4))

end

end A250752.P15901136835492473170

namespace A250752

/-- `A250755(A060577(n+4))%A053923(n+4)` -/
def P15901136835492473170.Spec : Prop :=
  ∀ n, P15901136835492473170.a n = A250752 (n + 1)

end A250752

/-! ## A250752.P14522538582592565000

`A250755(A060577(n+4))+A010054(3*n+2)`
-/

namespace A250752.P14522538582592565000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A060577 (n + 4)).toNat + A010054 (3 * n + 2)

end

end A250752.P14522538582592565000

namespace A250752

/-- `A250755(A060577(n+4))+A010054(3*n+2)` -/
def P14522538582592565000.Spec : Prop :=
  ∀ n, P14522538582592565000.a n = A250752 (n + 1)

end A250752

/-!
# A250753: Number of (n+1) X (6+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250753, the canonical program `A250753.P15052760425637825093` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250753 has offset 1).

The definition of A250753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250753.P15052760425637825093

`(357*3^(n+1)-168*2^(n+1)+69)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250753

/-- `(357*3^(n+1)-168*2^(n+1)+69)/2` -/
def P15052760425637825093.Spec : Prop :=
  ∀ n, P15052760425637825093.a n = (A250753 (n + 1) : ℚ)

end A250753

/-! ## A250753.P7382769285799512190

`A250755(A052905(n+3))`
-/

namespace A250753.P7382769285799512190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A052905 (n + 3)).toNat

end

end A250753.P7382769285799512190

namespace A250753

/-- `A250755(A052905(n+3))` -/
def P7382769285799512190.Spec : Prop :=
  ∀ n, P7382769285799512190.a n = A250753 (n + 1)

end A250753

/-! ## A250753.P17033788613018627925

`A250755(eq[3, A219347(n)])`
-/

namespace A250753.P17033788613018627925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250753.P17033788613018627925

namespace A250753

/-- `A250755(eq[3, A219347(n)])` -/
def P17033788613018627925.Spec : Prop :=
  ∀ n, P17033788613018627925.a n = A250753 (n + 1)

end A250753

/-! ## A250753.P3402043344370200458

`A250755(eq[5, A193592(n)])`
-/

namespace A250753.P3402043344370200458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250753.P3402043344370200458

namespace A250753

/-- `A250755(eq[5, A193592(n)])` -/
def P3402043344370200458.Spec : Prop :=
  ∀ n, P3402043344370200458.a n = A250753 (n + 1)

end A250753

/-! ## A250753.P2041523391536038805

`A250755(eq[8, A258709(n)])`
-/

namespace A250753.P2041523391536038805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250753.P2041523391536038805

namespace A250753

/-- `A250755(eq[8, A258709(n)])` -/
def P2041523391536038805.Spec : Prop :=
  ∀ n, P2041523391536038805.a n = A250753 (n + 1)

end A250753

/-!
# A250754: Number of (n+1) X (7+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250754, the canonical program `A250754.P5653804530437022732` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250754 has offset 1).

The definition of A250754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250754.P5653804530437022732

`(468*3^(n+1)-224*2^(n+1)+98)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250754

/-- `(468*3^(n+1)-224*2^(n+1)+98)/2` -/
def P5653804530437022732.Spec : Prop :=
  ∀ n, P5653804530437022732.a n = (A250754 (n + 1) : ℚ)

end A250754

/-! ## A250754.P9866090730544422275

`A250755(A055999(n+4))`
-/

namespace A250754.P9866090730544422275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A055999 (n + 4)).toNat

end

end A250754.P9866090730544422275

namespace A250754

/-- `A250755(A055999(n+4))` -/
def P9866090730544422275.Spec : Prop :=
  ∀ n, P9866090730544422275.a n = A250754 (n + 1)

end A250754

/-! ## A250754.P8264542079203298207

`A250755(eq[4, A219347(n)])`
-/

namespace A250754.P8264542079203298207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250754.P8264542079203298207

namespace A250754

/-- `A250755(eq[4, A219347(n)])` -/
def P8264542079203298207.Spec : Prop :=
  ∀ n, P8264542079203298207.a n = A250754 (n + 1)

end A250754

/-! ## A250754.P13289194447631226243

`A250755(eq[6, A193592(n)])`
-/

namespace A250754.P13289194447631226243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250754.P13289194447631226243

namespace A250754

/-- `A250755(eq[6, A193592(n)])` -/
def P13289194447631226243.Spec : Prop :=
  ∀ n, P13289194447631226243.a n = A250754 (n + 1)

end A250754

/-! ## A250754.P16654493203289422383

`A250755(Δ[A023551(n+2)])`
-/

namespace A250754.P16654493203289422383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (f1 (n + 1) - f1 n).toNat

end

end A250754.P16654493203289422383

namespace A250754

/-- `A250755(Δ[A023551(n+2)])` -/
def P16654493203289422383.Spec : Prop :=
  ∀ n, P16654493203289422383.a n = A250754 (n + 1)

end A250754

/-!
# A250756: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250756, the canonical program `A250756.P5494801936160761394` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250756 has offset 1).

The definition of A250756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250756.P5494801936160761394

`∑[17*n+23]+9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250756

/-- `∑[17*n+23]+9` -/
def P5494801936160761394.Spec : Prop :=
  ∀ n, (P5494801936160761394.a n : ℤ) = A250756 (n + 1)

theorem P5494801936160761394.correct : P5494801936160761394.Spec := by
  intro n
  simp only [A250756, Nat.add_sub_cancel]

end A250756

/-! ## A250756.P14585302463217742409

`∑[a(n-1)+17]` with `a(0)=32, a(1)=40`
-/

namespace A250756.P14585302463217742409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32, 40] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250756.P14585302463217742409

namespace A250756

/-- `∑[a(n-1)+17]` -/
def P14585302463217742409.Spec : Prop :=
  ∀ n, (P14585302463217742409.a n : ℤ) = A250756 (n + 1)

end A250756

/-! ## A250756.P11276202863060912596

`Δ[A103145(n)+A102860(n+2)]`
-/

namespace A250756.P11276202863060912596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n + A102860 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250756.P11276202863060912596

namespace A250756

/-- `Δ[A103145(n)+A102860(n+2)]` -/
def P11276202863060912596.Spec : Prop :=
  ∀ n, P11276202863060912596.a n = A250756 (n + 1)

end A250756

/-! ## A250756.P3592288963819003840

`Δ[A092185(n)+A005898(n+1)]`
-/

namespace A250756.P3592288963819003840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n + A005898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250756.P3592288963819003840

namespace A250756

/-- `Δ[A092185(n)+A005898(n+1)]` -/
def P3592288963819003840.Spec : Prop :=
  ∀ n, P3592288963819003840.a n = A250756 (n + 1)

end A250756

/-! ## A250756.P3119440077421761008

`Δ[A051662(n+1)+A050509(n)]`
-/

namespace A250756.P3119440077421761008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 (n + 1) + A050509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250756.P3119440077421761008

namespace A250756

/-- `Δ[A051662(n+1)+A050509(n)]` -/
def P3119440077421761008.Spec : Prop :=
  ∀ n, P3119440077421761008.a n = A250756 (n + 1)

end A250756

/-! ## A250756.P2931372308863967124

`A000027(A005570(n+1)+Δ[A023551(n+1)])`
-/

namespace A250756.P2931372308863967124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005570 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A250756.P2931372308863967124

namespace A250756

/-- `A000027(A005570(n+1)+Δ[A023551(n+1)])` -/
def P2931372308863967124.Spec : Prop :=
  ∀ n, P2931372308863967124.a n = A250756 (n + 1)

end A250756

/-! ## A250756.P12088971449899642965

`A000027(A132209(2*n+3)+A000217(n+3)+3)`
-/

namespace A250756.P12088971449899642965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A132209 (2 * n + 3) + (A000217 (n + 3) + 3)).toNat

end

end A250756.P12088971449899642965

namespace A250756

/-- `A000027(A132209(2*n+3)+A000217(n+3)+3)` -/
def P12088971449899642965.Spec : Prop :=
  ∀ n, P12088971449899642965.a n = A250756 (n + 1)

end A250756

/-!
# A250757: Number of (2+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250757, the canonical program `A250757.P17124313586648198409` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250757 has offset 1).

The definition of A250757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250757.P16057200839376401079

`3*((3*(n+2))²-(n+1))`
-/

namespace A250757.P16057200839376401079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((3 * (n + 2)) ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A250757.P16057200839376401079

namespace A250757

/-- `3*((3*(n+2))²-(n+1))` -/
def P16057200839376401079.Spec : Prop :=
  ∀ n, P16057200839376401079.a n = A250757 (n + 1)

theorem P16057200839376401079.correct : P16057200839376401079.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A250757, Nat.add_sub_cancel, A250757.P16057200839376401079.a, A250757.P17124313586648198409.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A250757, Nat.add_sub_cancel, A250757.P16057200839376401079.a, A250757.P17124313586648198409.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250757

/-! ## A250757.P17124313586648198409

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=105, a(1)=237, a(2)=423`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250757

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17124313586648198409.Spec : Prop :=
  ∀ n, P17124313586648198409.a n = A250757 (n + 1)

theorem P17124313586648198409.correct : P17124313586648198409.Spec := by
  intro n
  simp only [A250757, Nat.add_sub_cancel]

end A250757

/-! ## A250757.P2721150520397522264

`Δ[((n+2)²+1)*3*A016777(n)]`
-/

namespace A250757.P2721150520397522264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 + 1 : ℤ) * (3 * A016777 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250757.P2721150520397522264

namespace A250757

/-- `Δ[((n+2)²+1)*3*A016777(n)]` -/
def P2721150520397522264.Spec : Prop :=
  ∀ n, P2721150520397522264.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P5686695623158649642

`A277991(n+2)/3+3`
-/

namespace A250757.P5686695623158649642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277991 (n + 2) : ℚ) / 3 + 3

end

end A250757.P5686695623158649642

namespace A250757

/-- `A277991(n+2)/3+3` -/
def P5686695623158649642.Spec : Prop :=
  ∀ n, P5686695623158649642.a n = (A250757 (n + 1) : ℚ)

end A250757

/-! ## A250757.P18284265868063461926

`A158549(n+2)+∑[2*n]`
-/

namespace A250757.P18284265868063461926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158549 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A250757.P18284265868063461926

namespace A250757

/-- `A158549(n+2)+∑[2*n]` -/
def P18284265868063461926.Spec : Prop :=
  ∀ n, P18284265868063461926.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P13779695564372453037

`A158551(n+2)+2*A000124(n)`
-/

namespace A250757.P13779695564372453037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158551 (n + 2) + 2 * A000124 n

end

end A250757.P13779695564372453037

namespace A250757

/-- `A158551(n+2)+2*A000124(n)` -/
def P13779695564372453037.Spec : Prop :=
  ∀ n, P13779695564372453037.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P17143844824050210632

`A154377(n+2)+A000217(2*n+1)`
-/

namespace A250757.P17143844824050210632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154377 (n + 2) + A000217 (2 * n + 1)

end

end A250757.P17143844824050210632

namespace A250757

/-- `A154377(n+2)+A000217(2*n+1)` -/
def P17143844824050210632.Spec : Prop :=
  ∀ n, P17143844824050210632.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P14759804986753968570

`2*A268351(n+2)+3`
-/

namespace A250757.P14759804986753968570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268351 (n + 2) + 3

end

end A250757.P14759804986753968570

namespace A250757

/-- `2*A268351(n+2)+3` -/
def P14759804986753968570.Spec : Prop :=
  ∀ n, P14759804986753968570.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P2132989626343733441

`6*A022266(n+2)+3`
-/

namespace A250757.P2132989626343733441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022266 (n + 2) + 3

end

end A250757.P2132989626343733441

namespace A250757

/-- `6*A022266(n+2)+3` -/
def P2132989626343733441.Spec : Prop :=
  ∀ n, P2132989626343733441.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P15030449715881302436

`A244634(n+2)-3*(n+1)`
-/

namespace A250757.P15030449715881302436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244634 (n + 2) - (3 * (n + 1) : ℤ)

end

end A250757.P15030449715881302436

namespace A250757

/-- `A244634(n+2)-3*(n+1)` -/
def P15030449715881302436.Spec : Prop :=
  ∀ n, P15030449715881302436.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P16083609481344315390

`A244633(n+2)+A002061(n+1)`
-/

namespace A250757.P16083609481344315390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244633 (n + 2) + A002061 (n + 1)

end

end A250757.P16083609481344315390

namespace A250757

/-- `A244633(n+2)+A002061(n+1)` -/
def P16083609481344315390.Spec : Prop :=
  ∀ n, P16083609481344315390.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P8812694849993707634

`Δ[A003215(n+1)*A016777(n+1)]`
-/

namespace A250757.P8812694849993707634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1) * A016777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250757.P8812694849993707634

namespace A250757

/-- `Δ[A003215(n+1)*A016777(n+1)]` -/
def P8812694849993707634.Spec : Prop :=
  ∀ n, P8812694849993707634.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P3311327005509752187

`Δ[3*A226450(n+2)]`
-/

namespace A250757.P3311327005509752187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A226450 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250757.P3311327005509752187

namespace A250757

/-- `Δ[3*A226450(n+2)]` -/
def P3311327005509752187.Spec : Prop :=
  ∀ n, P3311327005509752187.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P14437537158727086354

`Δ[3*(n+1)*A056105(n+2)]`
-/

namespace A250757.P14437537158727086354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A056105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250757.P14437537158727086354

namespace A250757

/-- `Δ[3*(n+1)*A056105(n+2)]` -/
def P14437537158727086354.Spec : Prop :=
  ∀ n, P14437537158727086354.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P13666990588472915141

`A198442(2*n+1)+A158549(n+2)`
-/

namespace A250757.P13666990588472915141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (2 * n + 1) + A158549 (n + 2)

end

end A250757.P13666990588472915141

namespace A250757

/-- `A198442(2*n+1)+A158549(n+2)` -/
def P13666990588472915141.Spec : Prop :=
  ∀ n, P13666990588472915141.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P3529206620706597195

`A219258(2*(n+2))-(n-1)`
-/

namespace A250757.P3529206620706597195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219258 (2 * (n + 2)) - ((n : ℤ) - 1)

end

end A250757.P3529206620706597195

namespace A250757

/-- `A219258(2*(n+2))-(n-1)` -/
def P3529206620706597195.Spec : Prop :=
  ∀ n, P3529206620706597195.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P2116381992632022165

`Δ[Δ[A001318(2*n+1)]*A003215(n+1)]`
-/

namespace A250757.P2116381992632022165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A003215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250757.P2116381992632022165

namespace A250757

/-- `Δ[Δ[A001318(2*n+1)]*A003215(n+1)]` -/
def P2116381992632022165.Spec : Prop :=
  ∀ n, P2116381992632022165.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P17593181829198321739

`A056106(3*(n+2))+2`
-/

namespace A250757.P17593181829198321739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (3 * (n + 2)) + 2

end

end A250757.P17593181829198321739

namespace A250757

/-- `A056106(3*(n+2))+2` -/
def P17593181829198321739.Spec : Prop :=
  ∀ n, P17593181829198321739.a n = A250757 (n + 1)

end A250757

/-! ## A250757.P425479851754847696

`A049450(3*(n+2))+3`
-/

namespace A250757.P425479851754847696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 (3 * (n + 2)) + 3

end

end A250757.P425479851754847696

namespace A250757

/-- `A049450(3*(n+2))+3` -/
def P425479851754847696.Spec : Prop :=
  ∀ n, P425479851754847696.a n = A250757 (n + 1)

end A250757

/-!
# A250758: Number of (3+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250758, the canonical program `A250758.P1813629752524972964` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250758 has offset 1).

The definition of A250758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250758.P1813629752524972964

`173/2*(n+1)²+329/2*(n+1)+81`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250758

/-- `173/2*(n+1)²+329/2*(n+1)+81` -/
def P1813629752524972964.Spec : Prop :=
  ∀ n, P1813629752524972964.a n = (A250758 (n + 1) : ℚ)

end A250758

/-! ## A250758.P5944384373564285406

`A250755(∑[n+2]+4)`
-/

namespace A250758.P5944384373564285406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250758.P5944384373564285406

namespace A250758

/-- `A250755(∑[n+2]+4)` -/
def P5944384373564285406.Spec : Prop :=
  ∀ n, P5944384373564285406.a n = A250758 (n + 1)

end A250758

/-! ## A250758.P17072390608750280423

`∑{d}[A250755(A167614(n+1)), A000010(#)]`
-/

namespace A250758.P17072390608750280423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A250758.P17072390608750280423

namespace A250758

/-- `∑{d}[A250755(A167614(n+1)), A000010(#)]` -/
def P17072390608750280423.Spec : Prop :=
  ∀ n, P17072390608750280423.a n = A250758 (n + 1)

end A250758

/-!
# A250759: Number of (4+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250759, the canonical program `A250759.P15217952855537019018` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250759 has offset 1).

The definition of A250759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250759.P15217952855537019018

`273*(n+1)²+513*(n+1)+243`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250759

/-- `273*(n+1)²+513*(n+1)+243` -/
def P15217952855537019018.Spec : Prop :=
  ∀ n, (P15217952855537019018.a n : ℤ) = A250759 (n + 1)

theorem P15217952855537019018.correct : P15217952855537019018.Spec := by
  intro n
  simp only [A250759, Nat.add_sub_cancel]

end A250759

/-! ## A250759.P13736844680298792924

`A250755(∑[n+3]+7)`
-/

namespace A250759.P13736844680298792924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250759.P13736844680298792924

namespace A250759

/-- `A250755(∑[n+3]+7)` -/
def P13736844680298792924.Spec : Prop :=
  ∀ n, P13736844680298792924.a n = A250759 (n + 1)

end A250759

/-! ## A250759.P8545449755304457675

`lcm(3, A250755(A141214(n)+7))`
-/

namespace A250759.P8545449755304457675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A250755 (A141214 n + 7).toNat)

end

end A250759.P8545449755304457675

namespace A250759

/-- `lcm(3, A250755(A141214(n)+7))` -/
def P8545449755304457675.Spec : Prop :=
  ∀ n, (P8545449755304457675.a n : ℤ) = A250759 (n + 1)

end A250759

/-! ## A250759.P2765390278853217567

`or(1, A250755(A000124(n+3)+3))`
-/

namespace A250759.P2765390278853217567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250755 (A000124 (n + 3) + 3).toNat)

end

end A250759.P2765390278853217567

namespace A250759

/-- `or(1, A250755(A000124(n+3)+3))` -/
def P2765390278853217567.Spec : Prop :=
  ∀ n, P2765390278853217567.a n = A250759 (n + 1)

end A250759

/-! ## A250759.P13718044760023042591

`A007318(C(2, n))*A250755(A141214(n)+7)`
-/

namespace A250759.P13718044760023042591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250755 (A141214 n + 7).toNat

end

end A250759.P13718044760023042591

namespace A250759

/-- `A007318(C(2, n))*A250755(A141214(n)+7)` -/
def P13718044760023042591.Spec : Prop :=
  ∀ n, P13718044760023042591.a n = A250759 (n + 1)

end A250759

/-!
# A250760: Number of (5+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250760, there is no canonical definition to state claims against.
-/

/-! ## A250760.P6353577981705055937

`A250755(∑[n+4]+11)`
-/

namespace A250760.P6353577981705055937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250760.P6353577981705055937

/-! ## A250760.P3186222372358646543

`A250755(A000217(n+4)+5)+char[24]`
-/

namespace A250760.P3186222372358646543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250760.P3186222372358646543

/-! ## A250760.P7055693264494321518

`A250755(A000096(n+3)+6)+C(n, 64)`
-/

namespace A250760.P7055693264494321518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A000096 (n + 3) + 6).toNat + (Nat.choose n 64 : ℤ)

end

end A250760.P7055693264494321518

/-! ## A250760.P17130428437895710139

`A007318(C(2, n))²*A250755(A000217(n+4)+5)`
-/

namespace A250760.P17130428437895710139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) ^ 2 * A250755 (A000217 (n + 4) + 5).toNat

end

end A250760.P17130428437895710139

/-! ## A250760.P11327541105845662564

`A000041(C(2, 2*n))*A250755(A000217(n+4)+5)`
-/

namespace A250760.P11327541105845662564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A250755 (A000217 (n + 4) + 5).toNat

end

end A250760.P11327541105845662564

/-!
# A250761: Number of (6+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250761, there is no canonical definition to state claims against.
-/

/-! ## A250761.P9838491227987610645

`A250755(A166136(n+4))`
-/

namespace A250761.P9838491227987610645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A166136 (n + 4)).toNat

end

end A250761.P9838491227987610645

/-! ## A250761.P3518373123051494973

`A250755(A056115(n)+21)`
-/

namespace A250761.P3518373123051494973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A056115 n + 21).toNat

end

end A250761.P3518373123051494973

/-! ## A250761.P7648968355695377289

`A250755(A167499(n+4)+1)`
-/

namespace A250761.P7648968355695377289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A167499 (n + 4) + 1).toNat

end

end A250761.P7648968355695377289

/-! ## A250761.P5732154401923605313

`A250755(A167614(n+4)+3)`
-/

namespace A250761.P5732154401923605313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A167614 (n + 4) + 3).toNat

end

end A250761.P5732154401923605313

/-! ## A250761.P3515963522485132466

`A250755(A000124(n+5)+5)`
-/

namespace A250761.P3515963522485132466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A000124 (n + 5) + 5).toNat

end

end A250761.P3515963522485132466

/-!
# A250762: Number of (7+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

The programs for A250762, there is no canonical definition to state claims against.
-/

/-! ## A250762.P5788666316583792074

`A250755(∑[n+6]+22)`
-/

namespace A250762.P5788666316583792074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A250762.P5788666316583792074

/-! ## A250762.P1848726125399824834

`A250755(A046691(n+4)+11)+char[16]`
-/

namespace A250762.P1848726125399824834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250755 (A046691 (n + 4) + 11).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250762.P1848726125399824834

/-! ## A250762.P7339965190895040009

`A007318(C(2, n))*A250755(A046691(n+4)+11)`
-/

namespace A250762.P7339965190895040009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250755 (A046691 (n + 4) + 11).toNat

end

end A250762.P7339965190895040009

/-! ## A250762.P12181153614143404394

`A250755(A046691(n+4)+11)^A007318(C(n, 2))`
-/

namespace A250762.P12181153614143404394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250755 (A046691 (n + 4) + 11).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A250762.P12181153614143404394

/-! ## A250762.P12083047949005908466

`A000041(and(1, 1-n))*A250755(A046691(n+4)+11)`
-/

namespace A250762.P12083047949005908466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (1 - (n : ℤ))).toNat * A250755 (A046691 (n + 4) + 11).toNat

end

end A250762.P12083047949005908466

/-!
# A250763: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250763, there is no canonical definition to state claims against.
-/

/-! ## A250763.P12341798385475756888

`A250769(∑[4*n]+1)`
-/

namespace A250763.P12341798385475756888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250763.P12341798385475756888

/-! ## A250763.P725332459736576764

`A250769(A001844(n))+char[17]`
-/

namespace A250763.P725332459736576764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250763.P725332459736576764

/-! ## A250763.P5824033302469720046

`A326548(n)+A250769(A001844(n))`
-/

namespace A250763.P5824033302469720046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326548 n + A250769 (A001844 n).toNat

end

end A250763.P5824033302469720046

/-! ## A250763.P3740131695420948863

`A369054(n)+A250769(A001844(n))`
-/

namespace A250763.P3740131695420948863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A250769 (A001844 n).toNat

end

end A250763.P3740131695420948863

/-! ## A250763.P5156417580280489988

`lcm(A230643(n), A250769(A001844(n)))`
-/

namespace A250763.P5156417580280489988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A230643 n) (A250769 (A001844 n).toNat)

end

end A250763.P5156417580280489988

/-!
# A250764: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250764, the canonical program `A250764.P13357156074516246930` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250764 has offset 1).

The definition of A250764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250764.P13357156074516246930

`2*(a(n-1)-(n+3))` with `a(0)=35`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250764

/-- `2*(a(n-1)-(n+3))` -/
def P13357156074516246930.Spec : Prop :=
  ∀ n, P13357156074516246930.a n = A250764 (n + 1)

theorem P13357156074516246930.correct : P13357156074516246930.Spec := by
  intro n
  simp only [A250764, Nat.add_sub_cancel]

end A250764

/-! ## A250764.P9313493018450843225

`2*(a(n-1)-3-n)` with `a(0)=35`
-/

namespace A250764.P9313493018450843225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [35] fun n a =>
  2 * (a (n - 1) - 3 - (n : ℤ))

end

end A250764.P9313493018450843225

namespace A250764

/-- `2*(a(n-1)-3-n)` -/
def P9313493018450843225.Spec : Prop :=
  ∀ n, P9313493018450843225.a n = A250764 (n + 1)

theorem P9313493018450843225.correct : P9313493018450843225.Spec := by
  intro n
  simp only [A250764, Nat.add_sub_cancel, A250764.P9313493018450843225.a, A250764.P13357156074516246930.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A250764

/-! ## A250764.P10411743373665859807

`25*2^n+2*(n+1)+8`
-/

namespace A250764.P10411743373665859807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * 2 ^ n + 2 * (n + 1) + 8

end

end A250764.P10411743373665859807

namespace A250764

/-- `25*2^n+2*(n+1)+8` -/
def P10411743373665859807.Spec : Prop :=
  ∀ n, (P10411743373665859807.a n : ℤ) = A250764 (n + 1)

theorem P10411743373665859807.correct : P10411743373665859807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250764, Nat.add_sub_cancel, A250764.P10411743373665859807.a, A250764.P13357156074516246930.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250764, Nat.add_sub_cancel, A250764.P10411743373665859807.a, A250764.P13357156074516246930.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250764

/-! ## A250764.P10718076729116738771

`Δ[A250777(n+1)+A028569(n)]`
-/

namespace A250764.P10718076729116738771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250777 (n + 1) + A028569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250764.P10718076729116738771

namespace A250764

/-- `Δ[A250777(n+1)+A028569(n)]` -/
def P10718076729116738771.Spec : Prop :=
  ∀ n, P10718076729116738771.a n = A250764 (n + 1)

end A250764

/-! ## A250764.P10728939584651223214

`A250769(A034856(n+2))`
-/

namespace A250764.P10728939584651223214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A034856 (n + 2)).toNat

end

end A250764.P10728939584651223214

namespace A250764

/-- `A250769(A034856(n+2))` -/
def P10728939584651223214.Spec : Prop :=
  ∀ n, P10728939584651223214.a n = A250764 (n + 1)

end A250764

/-!
# A250765: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250765, the canonical program `A250765.P12194201720444158958` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250765 has offset 1).

The definition of A250765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250765.P12194201720444158958

`36*2^n+10*(n+1)+22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250765

/-- `36*2^n+10*(n+1)+22` -/
def P12194201720444158958.Spec : Prop :=
  ∀ n, (P12194201720444158958.a n : ℤ) = A250765 (n + 1)

theorem P12194201720444158958.correct : P12194201720444158958.Spec := by
  intro n
  simp only [A250765, Nat.add_sub_cancel]

end A250765

/-! ## A250765.P12301117563916304616

`A250769(A141214(n+1))`
-/

namespace A250765.P12301117563916304616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A141214 (n + 1)).toNat

end

end A250765.P12301117563916304616

namespace A250765

/-- `A250769(A141214(n+1))` -/
def P12301117563916304616.Spec : Prop :=
  ∀ n, P12301117563916304616.a n = A250765 (n + 1)

end A250765

/-!
# A250766: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250766, the canonical program `A250766.P17093485705429607255` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250766 has offset 1).

The definition of A250766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250766.P17093485705429607255

`49*2^n+32*(n+1)+52`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250766

/-- `49*2^n+32*(n+1)+52` -/
def P17093485705429607255.Spec : Prop :=
  ∀ n, (P17093485705429607255.a n : ℤ) = A250766 (n + 1)

theorem P17093485705429607255.correct : P17093485705429607255.Spec := by
  intro n
  simp only [A250766, Nat.add_sub_cancel]

end A250766

/-! ## A250766.P16954512903712353467

`A250769(∑[n+5]+6)`
-/

namespace A250766.P16954512903712353467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250766.P16954512903712353467

namespace A250766

/-- `A250769(∑[n+5]+6)` -/
def P16954512903712353467.Spec : Prop :=
  ∀ n, P16954512903712353467.a n = A250766 (n + 1)

end A250766

/-!
# A250767: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250767, the canonical program `A250767.P7715521530717182210` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250767 has offset 1).

The definition of A250767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250767.P7715521530717182210

`64*2^n+84*(n+1)+114`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250767

/-- `64*2^n+84*(n+1)+114` -/
def P7715521530717182210.Spec : Prop :=
  ∀ n, (P7715521530717182210.a n : ℤ) = A250767 (n + 1)

theorem P7715521530717182210.correct : P7715521530717182210.Spec := by
  intro n
  simp only [A250767, Nat.add_sub_cancel]

end A250767

/-! ## A250767.P9039504867121459607

`A250769(A052905(n+3))`
-/

namespace A250767.P9039504867121459607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A052905 (n + 3)).toNat

end

end A250767.P9039504867121459607

namespace A250767

/-- `A250769(A052905(n+3))` -/
def P9039504867121459607.Spec : Prop :=
  ∀ n, P9039504867121459607.a n = A250767 (n + 1)

end A250767

/-! ## A250767.P15322536002702528826

`A250769(A056119(n)+16)`
-/

namespace A250767.P15322536002702528826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A056119 n + 16).toNat

end

end A250767.P15322536002702528826

namespace A250767

/-- `A250769(A056119(n)+16)` -/
def P15322536002702528826.Spec : Prop :=
  ∀ n, P15322536002702528826.a n = A250767 (n + 1)

end A250767

/-! ## A250767.P8401042831165195321

`A250769(eq[3, A219347(n)])`
-/

namespace A250767.P8401042831165195321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250767.P8401042831165195321

namespace A250767

/-- `A250769(eq[3, A219347(n)])` -/
def P8401042831165195321.Spec : Prop :=
  ∀ n, P8401042831165195321.a n = A250767 (n + 1)

end A250767

/-!
# A250768: Number of (n+1) X (7+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250768, the canonical program `A250768.P13792721307174129848` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250768 has offset 1).

The definition of A250768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250768.P13792721307174129848

`81*2^n+198*(n+1)+240`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250768

/-- `81*2^n+198*(n+1)+240` -/
def P13792721307174129848.Spec : Prop :=
  ∀ n, (P13792721307174129848.a n : ℤ) = A250768 (n + 1)

theorem P13792721307174129848.correct : P13792721307174129848.Spec := by
  intro n
  simp only [A250768, Nat.add_sub_cancel]

end A250768

/-! ## A250768.P12562686258841127079

`A250769(A055999(n+4))`
-/

namespace A250768.P12562686258841127079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A055999 (n + 4)).toNat

end

end A250768.P12562686258841127079

namespace A250768

/-- `A250769(A055999(n+4))` -/
def P12562686258841127079.Spec : Prop :=
  ∀ n, P12562686258841127079.a n = A250768 (n + 1)

end A250768

/-! ## A250768.P2938563793966752640

`A250769(eq[4, A219347(n)])`
-/

namespace A250768.P2938563793966752640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250768.P2938563793966752640

namespace A250768

/-- `A250769(eq[4, A219347(n)])` -/
def P2938563793966752640.Spec : Prop :=
  ∀ n, P2938563793966752640.a n = A250768 (n + 1)

end A250768

/-! ## A250768.P13003661236380280617

`A250769(eq[6, A193592(n)])`
-/

namespace A250768.P13003661236380280617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250768.P13003661236380280617

namespace A250768

/-- `A250769(eq[6, A193592(n)])` -/
def P13003661236380280617.Spec : Prop :=
  ∀ n, P13003661236380280617.a n = A250768 (n + 1)

end A250768

/-! ## A250768.P10644882601235052303

`A250769(Δ[A023551(n+2)])`
-/

namespace A250768.P10644882601235052303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (f1 (n + 1) - f1 n).toNat

end

end A250768.P10644882601235052303

namespace A250768

/-- `A250769(Δ[A023551(n+2)])` -/
def P10644882601235052303.Spec : Prop :=
  ∀ n, P10644882601235052303.a n = A250768 (n + 1)

end A250768

/-!
# A250770: Number of (2+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250770, the canonical program `A250770.P11711785560282477937` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250770 has offset 1).

The definition of A250770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250770.P11711785560282477937

`4*(3*2^n+n+1)+2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250770

/-- `4*(3*2^n+n+1)+2` -/
def P11711785560282477937.Spec : Prop :=
  ∀ n, (P11711785560282477937.a n : ℤ) = A250770 (n + 1)

theorem P11711785560282477937.correct : P11711785560282477937.Spec := by
  intro n
  simp only [A250770, Nat.add_sub_cancel]

end A250770

/-! ## A250770.P1816739917855559077

`2*(a(n-1)-2*n+1)` with `a(0)=18`
-/

namespace A250770.P1816739917855559077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  2 * (a (n - 1) - (2 * n : ℤ) + 1)

end

end A250770.P1816739917855559077

namespace A250770

/-- `2*(a(n-1)-2*n+1)` -/
def P1816739917855559077.Spec : Prop :=
  ∀ n, P1816739917855559077.a n = A250770 (n + 1)

theorem P1816739917855559077.correct : P1816739917855559077.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250770, Nat.add_sub_cancel, A250770.P1816739917855559077.a, A250770.P11711785560282477937.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250770, Nat.add_sub_cancel, A250770.P1816739917855559077.a, A250770.P11711785560282477937.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250770

/-! ## A250770.P13579891803493533580

`2*(A381790(n+1)+3)`
-/

namespace A250770.P13579891803493533580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A381790 (n + 1) + 3)

end

end A250770.P13579891803493533580

namespace A250770

/-- `2*(A381790(n+1)+3)` -/
def P13579891803493533580.Spec : Prop :=
  ∀ n, P13579891803493533580.a n = A250770 (n + 1)

end A250770

/-! ## A250770.P16757752524727331660

`2*(∑[A007283(n)+2]+4)`
-/

namespace A250770.P16757752524727331660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250770.P16757752524727331660

namespace A250770

/-- `2*(∑[A007283(n)+2]+4)` -/
def P16757752524727331660.Spec : Prop :=
  ∀ n, P16757752524727331660.a n = A250770 (n + 1)

end A250770

/-! ## A250770.P17637821886294255388

`2*(A004273(n+2)+6*2^n)`
-/

namespace A250770.P17637821886294255388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004273 (n + 2) + (6 * 2 ^ n : ℤ))

end

end A250770.P17637821886294255388

namespace A250770

/-- `2*(A004273(n+2)+6*2^n)` -/
def P17637821886294255388.Spec : Prop :=
  ∀ n, P17637821886294255388.a n = A250770 (n + 1)

end A250770

/-! ## A250770.P12804834700446703006

`2*(A007283(n+1)+A005408(n+1))`
-/

namespace A250770.P12804834700446703006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007283 (n + 1) + A005408 (n + 1))

end

end A250770.P12804834700446703006

namespace A250770

/-- `2*(A007283(n+1)+A005408(n+1))` -/
def P12804834700446703006.Spec : Prop :=
  ∀ n, P12804834700446703006.a n = A250770 (n + 1)

end A250770

/-!
# A250771: Number of (3+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250771, the canonical program `A250771.P14598735092237578230` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250771 has offset 1).

The definition of A250771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250771.P14598735092237578230

`16*2^n+(n+1)²+11*(n+1)+8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250771

/-- `16*2^n+(n+1)²+11*(n+1)+8` -/
def P14598735092237578230.Spec : Prop :=
  ∀ n, (P14598735092237578230.a n : ℤ) = A250771 (n + 1)

theorem P14598735092237578230.correct : P14598735092237578230.Spec := by
  intro n
  simp only [A250771, Nat.add_sub_cancel]

end A250771

/-! ## A250771.P8515757723277975228

`A250769(A167614(n+1))`
-/

namespace A250771.P8515757723277975228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A167614 (n + 1)).toNat

end

end A250771.P8515757723277975228

namespace A250771

/-- `A250769(A167614(n+1))` -/
def P8515757723277975228.Spec : Prop :=
  ∀ n, P8515757723277975228.a n = A250771 (n + 1)

end A250771

/-!
# A250772: Number of (4+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250772, the canonical program `A250772.P12980680831821456109` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250772 has offset 1).

The definition of A250772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250772.P12980680831821456109

`20*2^n+4*(n+1)²+26*(n+1)+22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250772

/-- `20*2^n+4*(n+1)²+26*(n+1)+22` -/
def P12980680831821456109.Spec : Prop :=
  ∀ n, (P12980680831821456109.a n : ℤ) = A250772 (n + 1)

theorem P12980680831821456109.correct : P12980680831821456109.Spec := by
  intro n
  simp only [A250772, Nat.add_sub_cancel]

end A250772

/-! ## A250772.P2330896695654601443

`A250769(∑[n+3]+7)`
-/

namespace A250772.P2330896695654601443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250772.P2330896695654601443

namespace A250772

/-- `A250769(∑[n+3]+7)` -/
def P2330896695654601443.Spec : Prop :=
  ∀ n, P2330896695654601443.a n = A250772 (n + 1)

end A250772

/-! ## A250772.P5585062770843080224

`lcm(2, A250769(A141214(n)+7))`
-/

namespace A250772.P5585062770843080224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250769 (A141214 n + 7).toNat)

end

end A250772.P5585062770843080224

namespace A250772

/-- `lcm(2, A250769(A141214(n)+7))` -/
def P5585062770843080224.Spec : Prop :=
  ∀ n, (P5585062770843080224.a n : ℤ) = A250772 (n + 1)

end A250772

/-! ## A250772.P9069231678512189111

`lcm((-1)^n, A250769(A055999(n)+10))`
-/

namespace A250772.P9069231678512189111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A250769 (A055999 n + 10).toNat)

end

end A250772.P9069231678512189111

namespace A250772

/-- `lcm((-1)^n, A250769(A055999(n)+10))` -/
def P9069231678512189111.Spec : Prop :=
  ∀ n, (P9069231678512189111.a n : ℤ) = A250772 (n + 1)

end A250772

/-!
# A250773: Number of (5+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250773, the canonical program `A250773.P16906098203670606465` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250773 has offset 1).

The definition of A250773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250773.P16906098203670606465

`24*2^n+11*(n+1)²+57*(n+1)+52`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250773

/-- `24*2^n+11*(n+1)²+57*(n+1)+52` -/
def P16906098203670606465.Spec : Prop :=
  ∀ n, (P16906098203670606465.a n : ℤ) = A250773 (n + 1)

theorem P16906098203670606465.correct : P16906098203670606465.Spec := by
  intro n
  simp only [A250773, Nat.add_sub_cancel]

end A250773

/-! ## A250773.P5335885088316063186

`A250769(∑[n+4]+11)`
-/

namespace A250773.P5335885088316063186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250773.P5335885088316063186

namespace A250773

/-- `A250769(∑[n+4]+11)` -/
def P5335885088316063186.Spec : Prop :=
  ∀ n, P5335885088316063186.a n = A250773 (n + 1)

end A250773

/-! ## A250773.P16909828720687501973

`lcm(2, A250769(A155212(n)+13))`
-/

namespace A250773.P16909828720687501973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250769 (A155212 n + 13).toNat)

end

end A250773.P16909828720687501973

namespace A250773

/-- `lcm(2, A250769(A155212(n)+13))` -/
def P16909828720687501973.Spec : Prop :=
  ∀ n, (P16909828720687501973.a n : ℤ) = A250773 (n + 1)

end A250773

/-! ## A250773.P14656687584531187432

`A007318(C(2, n))*A250769(A155212(n)+13)`
-/

namespace A250773.P14656687584531187432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250769 (A155212 n + 13).toNat

end

end A250773.P14656687584531187432

namespace A250773

/-- `A007318(C(2, n))*A250769(A155212(n)+13)` -/
def P14656687584531187432.Spec : Prop :=
  ∀ n, P14656687584531187432.a n = A250773 (n + 1)

end A250773

/-!
# A250774: Number of (6+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250774, the canonical program `A250774.P12307096143092108397` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250774 has offset 1).

The definition of A250774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250774.P12307096143092108397

`28*2^n+26*(n+1)²+120*(n+1)+114`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250774

/-- `28*2^n+26*(n+1)²+120*(n+1)+114` -/
def P12307096143092108397.Spec : Prop :=
  ∀ n, (P12307096143092108397.a n : ℤ) = A250774 (n + 1)

theorem P12307096143092108397.correct : P12307096143092108397.Spec := by
  intro n
  simp only [A250774, Nat.add_sub_cancel]

end A250774

/-! ## A250774.P13505509255218029875

`A250769(∑[n+5]+16)`
-/

namespace A250774.P13505509255218029875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250774.P13505509255218029875

namespace A250774

/-- `A250769(∑[n+5]+16)` -/
def P13505509255218029875.Spec : Prop :=
  ∀ n, P13505509255218029875.a n = A250774 (n + 1)

end A250774

/-! ## A250774.P8869978928473859987

`lcm(2, A250769(A000124(n+5)+5))`
-/

namespace A250774.P8869978928473859987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250769 (A000124 (n + 5) + 5).toNat)

end

end A250774.P8869978928473859987

namespace A250774

/-- `lcm(2, A250769(A000124(n+5)+5))` -/
def P8869978928473859987.Spec : Prop :=
  ∀ n, (P8869978928473859987.a n : ℤ) = A250774 (n + 1)

end A250774

/-! ## A250774.P4753576380253227858

`A007318(C(2, n))*A250769(A000124(n+5)+5)`
-/

namespace A250774.P4753576380253227858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250769 (A000124 (n + 5) + 5).toNat

end

end A250774.P4753576380253227858

namespace A250774

/-- `A007318(C(2, n))*A250769(A000124(n+5)+5)` -/
def P4753576380253227858.Spec : Prop :=
  ∀ n, P4753576380253227858.a n = A250774 (n + 1)

end A250774

/-! ## A250774.P11260717576348234659

`A007318(C(3, n))*A250769(A000217(n+5)+6)`
-/

namespace A250774.P11260717576348234659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A250769 (A000217 (n + 5) + 6).toNat

end

end A250774.P11260717576348234659

namespace A250774

/-- `A007318(C(3, n))*A250769(A000217(n+5)+6)` -/
def P11260717576348234659.Spec : Prop :=
  ∀ n, P11260717576348234659.a n = A250774 (n + 1)

end A250774

/-!
# A250775: Number of (7+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250775, the canonical program `A250775.P14904877870145572157` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250775 has offset 1).

The definition of A250775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250775.P14904877870145572157

`32*2^n+57*(n+1)²+247*(n+1)+240`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250775

/-- `32*2^n+57*(n+1)²+247*(n+1)+240` -/
def P14904877870145572157.Spec : Prop :=
  ∀ n, (P14904877870145572157.a n : ℤ) = A250775 (n + 1)

theorem P14904877870145572157.correct : P14904877870145572157.Spec := by
  intro n
  simp only [A250775, Nat.add_sub_cancel]

end A250775

/-! ## A250775.P1119703231374564300

`A250769(A056119(n)+28)`
-/

namespace A250775.P1119703231374564300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A056119 n + 28).toNat

end

end A250775.P1119703231374564300

namespace A250775

/-- `A250769(A056119(n)+28)` -/
def P1119703231374564300.Spec : Prop :=
  ∀ n, P1119703231374564300.a n = A250775 (n + 1)

end A250775

/-! ## A250775.P16050397406466612063

`A250769(A167499(n+5)+2)`
-/

namespace A250775.P16050397406466612063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A167499 (n + 5) + 2).toNat

end

end A250775.P16050397406466612063

namespace A250775

/-- `A250769(A167499(n+5)+2)` -/
def P16050397406466612063.Spec : Prop :=
  ∀ n, P16050397406466612063.a n = A250775 (n + 1)

end A250775

/-! ## A250775.P16890399155781015994

`A250769(A167614(n+5)+4)`
-/

namespace A250775.P16890399155781015994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A167614 (n + 5) + 4).toNat

end

end A250775.P16890399155781015994

namespace A250775

/-- `A250769(A167614(n+5)+4)` -/
def P16890399155781015994.Spec : Prop :=
  ∀ n, P16890399155781015994.a n = A250775 (n + 1)

end A250775

/-! ## A250775.P249581756792644204

`A250769(A000124(n+6)+6)`
-/

namespace A250775.P249581756792644204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250769 (A000124 (n + 6) + 6).toNat

end

end A250775.P249581756792644204

namespace A250775

/-- `A250769(A000124(n+6)+6)` -/
def P249581756792644204.Spec : Prop :=
  ∀ n, P249581756792644204.a n = A250775 (n + 1)

end A250775

/-!
# A250776: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250776, there is no canonical definition to state claims against.
-/

/-! ## A250776.P2298566818975130672

`A250783(∑[4*n]+1)`
-/

namespace A250776.P2298566818975130672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250776.P2298566818975130672

/-! ## A250776.P15098343109049086674

`record[A250783(Δ[A235355(n)])]`
-/

namespace A250776.P15098343109049086674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250776.P15098343109049086674

/-! ## A250776.P10574458360856354762

`A250783(A001844(n))+char[16]`
-/

namespace A250776.P10574458360856354762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250776.P10574458360856354762

/-! ## A250776.P3563218743955611927

`record[gcd(A114327(n), A250783(n+1))]`
-/

namespace A250776.P3563218743955611927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A250783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250776.P3563218743955611927

/-! ## A250776.P2708309809303260168

`A369054(n)+A250783(A001844(n))`
-/

namespace A250776.P2708309809303260168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n + A250783 (A001844 n).toNat

end

end A250776.P2708309809303260168

/-!
# A250777: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250777, the canonical program `A250777.P17477242451036941458` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250777 has offset 1).

The definition of A250777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250777.P17477242451036941458

`25*2^n-4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250777

/-- `25*2^n-4` -/
def P17477242451036941458.Spec : Prop :=
  ∀ n, P17477242451036941458.a n = A250777 (n + 1)

theorem P17477242451036941458.correct : P17477242451036941458.Spec := by
  intro n
  simp only [A250777, Nat.add_sub_cancel]

end A250777

/-! ## A250777.P5468469006739728570

`ogf((21-17x)/(1-3x+2x^2))`
-/

namespace A250777.P5468469006739728570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -17] [1, -3, 2] n

end

end A250777.P5468469006739728570

namespace A250777

/-- `ogf((21-17x)/(1-3x+2x^2))` -/
def P5468469006739728570.Spec : Prop :=
  ∀ n, P5468469006739728570.a n = A250777 (n + 1)

end A250777

/-! ## A250777.P2247864696786827733

`2*(a(n-1)+2)` with `a(0)=21`
-/

namespace A250777.P2247864696786827733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  2 * (a (n - 1) + 2)

end

end A250777.P2247864696786827733

namespace A250777

/-- `2*(a(n-1)+2)` -/
def P2247864696786827733.Spec : Prop :=
  ∀ n, (P2247864696786827733.a n : ℤ) = A250777 (n + 1)

theorem P2247864696786827733.correct : P2247864696786827733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250777, Nat.add_sub_cancel, A250777.P2247864696786827733.a, A250777.P17477242451036941458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250777, Nat.add_sub_cancel, A250777.P2247864696786827733.a, A250777.P17477242451036941458.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250777

/-! ## A250777.P4247564420220358896

`∑[2*a(n-1)]` with `a(0)=21, a(1)=25`
-/

namespace A250777.P4247564420220358896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 25] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250777.P4247564420220358896

namespace A250777

/-- `∑[2*a(n-1)]` -/
def P4247564420220358896.Spec : Prop :=
  ∀ n, (P4247564420220358896.a n : ℤ) = A250777 (n + 1)

end A250777

/-! ## A250777.P14089039080096151449

`Δ[A139698(n+1)-4*n]`
-/

namespace A250777.P14089039080096151449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139698 (n + 1) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250777.P14089039080096151449

namespace A250777

/-- `Δ[A139698(n+1)-4*n]` -/
def P14089039080096151449.Spec : Prop :=
  ∀ n, P14089039080096151449.a n = A250777 (n + 1)

end A250777

/-! ## A250777.P8736209558567564093

`(A182461(n)+A140504(n))%A235891(n+1)`
-/

namespace A250777.P8736209558567564093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182461 n + A140504 n) (A235891 (n + 1))

end

end A250777.P8736209558567564093

namespace A250777

/-- `(A182461(n)+A140504(n))%A235891(n+1)` -/
def P8736209558567564093.Spec : Prop :=
  ∀ n, P8736209558567564093.a n = A250777 (n + 1)

end A250777

/-!
# A250778: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250778, the canonical program `A250778.P5723308156067218095` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250778 has offset 1).

The definition of A250778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250778.P5723308156067218095

`A247618(n+3)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250778

/-- `A247618(n+3)+1` -/
def P5723308156067218095.Spec : Prop :=
  ∀ n, P5723308156067218095.a n = A250778 (n + 1)

theorem P5723308156067218095.correct : P5723308156067218095.Spec := by
  intro n
  simp only [A250778, Nat.add_sub_cancel]

end A250778

/-! ## A250778.P10478081150031906919

`A258547(n+2)+2`
-/

namespace A250778.P10478081150031906919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258547 (n + 2) + 2

end

end A250778.P10478081150031906919

namespace A250778

/-- `A258547(n+2)+2` -/
def P10478081150031906919.Spec : Prop :=
  ∀ n, P10478081150031906919.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P6604067931985449089

`4*A000295(n+4)+2`
-/

namespace A250778.P6604067931985449089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000295 (n + 4) + 2

end

end A250778.P6604067931985449089

namespace A250778

/-- `4*A000295(n+4)+2` -/
def P6604067931985449089.Spec : Prop :=
  ∀ n, P6604067931985449089.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P1547496253175700545

`A249453(n+5)-(n+5)`
-/

namespace A250778.P1547496253175700545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249453 (n + 5) - (n + 5 : ℤ)

end

end A250778.P1547496253175700545

namespace A250778

/-- `A249453(n+5)-(n+5)` -/
def P1547496253175700545.Spec : Prop :=
  ∀ n, P1547496253175700545.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P14135556459534169978

`2*(A249453(n+4)+n+1)`
-/

namespace A250778.P14135556459534169978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A249453 (n + 4) + (n + 1 : ℤ))

end

end A250778.P14135556459534169978

namespace A250778

/-- `2*(A249453(n+4)+n+1)` -/
def P14135556459534169978.Spec : Prop :=
  ∀ n, P14135556459534169978.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P7976598636887578424

`A166118(n+2)-(4*n+1)`
-/

namespace A250778.P7976598636887578424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166118 (n + 2) - (4 * n + 1 : ℤ)

end

end A250778.P7976598636887578424

namespace A250778

/-- `A166118(n+2)-(4*n+1)` -/
def P7976598636887578424.Spec : Prop :=
  ∀ n, P7976598636887578424.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P7622788157106157671

`A320661(n+3)+2*n+7`
-/

namespace A250778.P7622788157106157671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320661 (n + 3) + (2 * n + 7 : ℤ)

end

end A250778.P7622788157106157671

namespace A250778

/-- `A320661(n+3)+2*n+7` -/
def P7622788157106157671.Spec : Prop :=
  ∀ n, P7622788157106157671.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P629811026660293220

`2*(A159741(n+2)-(2*n+1))`
-/

namespace A250778.P629811026660293220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159741 (n + 2) - (2 * n + 1 : ℤ))

end

end A250778.P629811026660293220

namespace A250778

/-- `2*(A159741(n+2)-(2*n+1))` -/
def P629811026660293220.Spec : Prop :=
  ∀ n, P629811026660293220.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P17837178855078579708

`A097810(n+3)+A000325(n+3)`
-/

namespace A250778.P17837178855078579708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097810 (n + 3) + A000325 (n + 3)

end

end A250778.P17837178855078579708

namespace A250778

/-- `A097810(n+3)+A000325(n+3)` -/
def P17837178855078579708.Spec : Prop :=
  ∀ n, P17837178855078579708.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P15033789294592710679

`A304517(n+2)+2-A004766(n+2)`
-/

namespace A250778.P15033789294592710679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304517 (n + 2) + (2 - A004766 (n + 2))

end

end A250778.P15033789294592710679

namespace A250778

/-- `A304517(n+2)+2-A004766(n+2)` -/
def P15033789294592710679.Spec : Prop :=
  ∀ n, P15033789294592710679.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P9774235296175729948

`A167614(n+2)+A272352(n+7)+2`
-/

namespace A250778.P9774235296175729948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 2) + (A272352 (n + 7) + 2)

end

end A250778.P9774235296175729948

namespace A250778

/-- `A167614(n+2)+A272352(n+7)+2` -/
def P9774235296175729948.Spec : Prop :=
  ∀ n, P9774235296175729948.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P14632779277578189675

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=46, a(1)=106, a(2)=230`
-/

namespace A250778.P14632779277578189675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [46, 106, 230] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A250778.P14632779277578189675

namespace A250778

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P14632779277578189675.Spec : Prop :=
  ∀ n, P14632779277578189675.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P3849391175471734559

`A258554(A000124(n+1))+2`
-/

namespace A250778.P3849391175471734559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000124 (n + 1)).toNat + 2

end

end A250778.P3849391175471734559

namespace A250778

/-- `A258554(A000124(n+1))+2` -/
def P3849391175471734559.Spec : Prop :=
  ∀ n, P3849391175471734559.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P4186391987201222497

`A258554(A000096(n)+2)+2`
-/

namespace A250778.P4186391987201222497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A000096 n + 2).toNat + 2

end

end A250778.P4186391987201222497

namespace A250778

/-- `A258554(A000096(n)+2)+2` -/
def P4186391987201222497.Spec : Prop :=
  ∀ n, P4186391987201222497.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P2211510890229652691

`A258554(A253145(n+1))+2`
-/

namespace A250778.P2211510890229652691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A253145 (n + 1)).toNat + 2

end

end A250778.P2211510890229652691

namespace A250778

/-- `A258554(A253145(n+1))+2` -/
def P2211510890229652691.Spec : Prop :=
  ∀ n, P2211510890229652691.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P1214337883286475936

`A258554(Δ[A000292(n+1)])+2`
-/

namespace A250778.P1214337883286475936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (f1 (n + 1) - f1 n).toNat + 2

end

end A250778.P1214337883286475936

namespace A250778

/-- `A258554(Δ[A000292(n+1)])+2` -/
def P1214337883286475936.Spec : Prop :=
  ∀ n, P1214337883286475936.a n = A250778 (n + 1)

end A250778

/-! ## A250778.P7194065549984321400

`A258554(A034856(n+1)+2)+2`
-/

namespace A250778.P7194065549984321400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A034856 (n + 1) + 2).toNat + 2

end

end A250778.P7194065549984321400

namespace A250778

/-- `A258554(A034856(n+1)+2)+2` -/
def P7194065549984321400.Spec : Prop :=
  ∀ n, P7194065549984321400.a n = A250778 (n + 1)

end A250778

/-!
# A250779: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250779, there is no canonical definition to state claims against.
-/

/-! ## A250779.P10715236552041036832

`A250783(∑[n+4]+3)`
-/

namespace A250779.P10715236552041036832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250779.P10715236552041036832

/-! ## A250779.P5887877820471179152

`A250783(A055998(n+2))+char[32]`
-/

namespace A250779.P5887877820471179152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250779.P5887877820471179152

/-! ## A250779.P11269972125693481968

`gcd(A008683(4*(n+1)), A250783(A055998(n+2)))`
-/

namespace A250779.P11269972125693481968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (A250783 (A055998 (n + 2)).toNat)

end

end A250779.P11269972125693481968

/-! ## A250779.P2597540438196625796

`A250783(A027379(n+2))%A004633(3*n+5)`
-/

namespace A250779.P2597540438196625796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250783 (A027379 (n + 2)).toNat) (A004633 (3 * n + 5))

end

end A250779.P2597540438196625796

/-! ## A250779.P15919269547925769675

`A007318(C(2, n+2))*A250783(A055998(n+2))`
-/

namespace A250779.P15919269547925769675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A250783 (A055998 (n + 2)).toNat

end

end A250779.P15919269547925769675

/-!
# A250780: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250780, there is no canonical definition to state claims against.
-/

/-! ## A250780.P1840255366499893437

`A250783(∑[n+5]+6)`
-/

namespace A250780.P1840255366499893437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250780.P1840255366499893437

/-! ## A250780.P1378992207210397224

`xor(1, xor(1, A250783(A000124(n+5)-5)))`
-/

namespace A250780.P1378992207210397224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A250783 (A000124 (n + 5) - 5).toNat))

end

end A250780.P1378992207210397224

/-! ## A250780.P17339571988535226140

`A250783(Δ[A023545(n+1)])%A250788(n+1)`
-/

namespace A250780.P17339571988535226140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250783 (f1 (n + 1) - f1 n).toNat) (A250788 (n + 1))

end

end A250780.P17339571988535226140

/-! ## A250780.P11451960551766782345

`A007318(C(2, n))*A250783(A000124(n+5)-5)`
-/

namespace A250780.P11451960551766782345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250783 (A000124 (n + 5) - 5).toNat

end

end A250780.P11451960551766782345

/-! ## A250780.P11156325423449530125

`A250783(A000124(n+5)-5)/A007318(C(3, n))`
-/

namespace A250780.P11156325423449530125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250783 (A000124 (n + 5) - 5).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A250780.P11156325423449530125

/-!
# A250781: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250781, there is no canonical definition to state claims against.
-/

/-! ## A250781.P465879136021408650

`A250783(A052905(n+3))`
-/

namespace A250781.P465879136021408650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A052905 (n + 3)).toNat

end

end A250781.P465879136021408650

/-! ## A250781.P156404350269894398

`A250783(A056119(n)+16)`
-/

namespace A250781.P156404350269894398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A056119 n + 16).toNat

end

end A250781.P156404350269894398

/-! ## A250781.P18026788929387337915

`A250783(eq[3, A219347(n)])`
-/

namespace A250781.P18026788929387337915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250781.P18026788929387337915

/-! ## A250781.P16538130829662069180

`A250783(eq[5, A193592(n)])`
-/

namespace A250781.P16538130829662069180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250781.P16538130829662069180

/-! ## A250781.P16415846331057349286

`A250783(A046691(n+4)-1)`
-/

namespace A250781.P16415846331057349286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A046691 (n + 4) - 1).toNat

end

end A250781.P16415846331057349286

/-!
# A250782: Number of (n+1) X (7+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250782, there is no canonical definition to state claims against.
-/

/-! ## A250782.P16755517853366175126

`A250783(A055999(n+4))`
-/

namespace A250782.P16755517853366175126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A055999 (n + 4)).toNat

end

end A250782.P16755517853366175126

/-! ## A250782.P8799003366660603604

`A250783(eq[4, A219347(n)])`
-/

namespace A250782.P8799003366660603604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250782.P8799003366660603604

/-! ## A250782.P10725121795066892541

`A250783(eq[6, A193592(n)])`
-/

namespace A250782.P10725121795066892541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250782.P10725121795066892541

/-! ## A250782.P9644084582243676717

`A250783(A046691(n+5)-2)`
-/

namespace A250782.P9644084582243676717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A046691 (n + 5) - 2).toNat

end

end A250782.P9644084582243676717

/-! ## A250782.P10274339306682210194

`A250783(A000096(n+6)-5)`
-/

namespace A250782.P10274339306682210194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A000096 (n + 6) - 5).toNat

end

end A250782.P10274339306682210194

/-!
# A250784: Number of (2+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250784, the canonical program `A250784.P7071197143879259351` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250784 has offset 1).

The definition of A250784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250784.P7071197143879259351

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=18, a(1)=46, a(2)=106, a(3)=238`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250784

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P7071197143879259351.Spec : Prop :=
  ∀ n, P7071197143879259351.a n = A250784 (n + 1)

theorem P7071197143879259351.correct : P7071197143879259351.Spec := by
  intro n
  simp only [A250784, Nat.add_sub_cancel]

end A250784

/-! ## A250784.P11530302426251672055

`A250783(∑[n+1]+2)`
-/

namespace A250784.P11530302426251672055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250784.P11530302426251672055

namespace A250784

/-- `A250783(∑[n+1]+2)` -/
def P11530302426251672055.Spec : Prop :=
  ∀ n, P11530302426251672055.a n = A250784 (n + 1)

end A250784

/-! ## A250784.P17215025163919805183

`lcm(2, A250783(A000096(n)+3))`
-/

namespace A250784.P17215025163919805183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250783 (A000096 n + 3).toNat)

end

end A250784.P17215025163919805183

namespace A250784

/-- `lcm(2, A250783(A000096(n)+3))` -/
def P17215025163919805183.Spec : Prop :=
  ∀ n, (P17215025163919805183.a n : ℤ) = A250784 (n + 1)

end A250784

/-! ## A250784.P7468586001049700582

`A007318(C(2, n))*A250783(A000096(n)+3)`
-/

namespace A250784.P7468586001049700582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250783 (A000096 n + 3).toNat

end

end A250784.P7468586001049700582

namespace A250784

/-- `A007318(C(2, n))*A250783(A000096(n)+3)` -/
def P7468586001049700582.Spec : Prop :=
  ∀ n, P7468586001049700582.a n = A250784 (n + 1)

end A250784

/-! ## A250784.P14147009200835932420

`A007318(and(3, -n))*A250783(A000096(n)+3)`
-/

namespace A250784.P14147009200835932420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A250783 (A000096 n + 3).toNat

end

end A250784.P14147009200835932420

namespace A250784

/-- `A007318(and(3, -n))*A250783(A000096(n)+3)` -/
def P14147009200835932420.Spec : Prop :=
  ∀ n, P14147009200835932420.a n = A250784 (n + 1)

end A250784

/-!
# A250785: Number of (3+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250785, there is no canonical definition to state claims against.
-/

/-! ## A250785.P10961739526313573778

`A250783(∑[n+2]+4)`
-/

namespace A250785.P10961739526313573778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250785.P10961739526313573778

/-! ## A250785.P11383287095051431261

`lcm(2, A250783(A167614(n+1)))`
-/

namespace A250785.P11383287095051431261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250783 (A167614 (n + 1)).toNat)

end

end A250785.P11383287095051431261

/-! ## A250785.P4414779795408367596

`A036225(n)*A250783(A167614(n+1))`
-/

namespace A250785.P4414779795408367596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A250783 (A167614 (n + 1)).toNat

end

end A250785.P4414779795408367596

/-! ## A250785.P10872380871377929928

`A250783(A167614(n+1))*A304042(n)`
-/

namespace A250785.P10872380871377929928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A167614 (n + 1)).toNat * A304042 n

end

end A250785.P10872380871377929928

/-! ## A250785.P14747581741198527473

`A250783(A167614(n+1))%A250780(n+1)`
-/

namespace A250785.P14747581741198527473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250783 (A167614 (n + 1)).toNat) (A250780 (n + 1))

end

end A250785.P14747581741198527473

/-!
# A250786: Number of (4+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250786, there is no canonical definition to state claims against.
-/

/-! ## A250786.P14145528231952636646

`A250783(∑[n+3]+7)`
-/

namespace A250786.P14145528231952636646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250786.P14145528231952636646

/-! ## A250786.P921003598704837143

`lcm(2, A250783(A052905(n)+9))`
-/

namespace A250786.P921003598704837143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250783 (A052905 n + 9).toNat)

end

end A250786.P921003598704837143

/-! ## A250786.P15756965761732374303

`and(-2, A250783(Δ[A006503(n)]+7))`
-/

namespace A250786.P15756965761732374303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A250783 (f1 (n + 1) - f1 n + 7).toNat)

end

end A250786.P15756965761732374303

/-! ## A250786.P2788943192684467807

`A007318(C(n, 2))*A250783(A052905(n)+9)`
-/

namespace A250786.P2788943192684467807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A250783 (A052905 n + 9).toNat

end

end A250786.P2788943192684467807

/-! ## A250786.P12809177301573778080

`A250783(A052905(n)+9)^A007318(C(n, 64))`
-/

namespace A250786.P12809177301573778080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250783 (A052905 n + 9).toNat : ℚ) ^ (A007318 (Nat.choose n 64) : ℤ)

end

end A250786.P12809177301573778080

/-!
# A250787: Number of (5+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250787, there is no canonical definition to state claims against.
-/

/-! ## A250787.P4313331962168121856

`A250783(∑[n+4]+11)`
-/

namespace A250787.P4313331962168121856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250787.P4313331962168121856

/-! ## A250787.P5524053444458493326

`A250783(A155212(n)+13)%A227494(n)`
-/

namespace A250787.P5524053444458493326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250783 (A155212 n + 13).toNat) (A227494 n)

end

end A250787.P5524053444458493326

/-! ## A250787.P5175734995974586287

`A256480(2*n)+A250783(A167499(n+3))`
-/

namespace A250787.P5175734995974586287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (2 * n) + A250783 (A167499 (n + 3)).toNat

end

end A250787.P5175734995974586287

/-!
# A250788: Number of (6+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250788, there is no canonical definition to state claims against.
-/

/-! ## A250788.P15579381669299574203

`A250783(∑[n+5]+16)`
-/

namespace A250788.P15579381669299574203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250788.P15579381669299574203

/-! ## A250788.P64783759724152573

`lcm(2, A250783(A000124(n+5)+5))`
-/

namespace A250788.P64783759724152573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250783 (A000124 (n + 5) + 5).toNat)

end

end A250788.P64783759724152573

/-! ## A250788.P5456050500763607000

`gcd(n, n+1)*A250783(A000217(n+5)+6)`
-/

namespace A250788.P5456050500763607000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A250783 (A000217 (n + 5) + 6).toNat

end

end A250788.P5456050500763607000

/-! ## A250788.P17056302692765004306

`A007318(C(n, 2))²*A250783(A000124(n+5)+5)`
-/

namespace A250788.P17056302692765004306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A250783 (A000124 (n + 5) + 5).toNat

end

end A250788.P17056302692765004306

/-! ## A250788.P11008892083827843272

`A007318(C(2, n+2))*A250783(A000124(n+5)+5)`
-/

namespace A250788.P11008892083827843272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A250783 (A000124 (n + 5) + 5).toNat

end

end A250788.P11008892083827843272

/-!
# A250789: Number of (7+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250789, there is no canonical definition to state claims against.
-/

/-! ## A250789.P16162735982798851498

`A250783(A167487(n+5))`
-/

namespace A250789.P16162735982798851498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A167487 (n + 5)).toNat

end

end A250789.P16162735982798851498

/-! ## A250789.P7326883964224192110

`A250783(A166136(n+5)+1)`
-/

namespace A250789.P7326883964224192110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A166136 (n + 5) + 1).toNat

end

end A250789.P7326883964224192110

/-! ## A250789.P18347570706711949186

`A250783(A167499(n+5)+2)`
-/

namespace A250789.P18347570706711949186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A167499 (n + 5) + 2).toNat

end

end A250789.P18347570706711949186

/-! ## A250789.P9624472898327228997

`A250783(A000124(n+6)+6)`
-/

namespace A250789.P9624472898327228997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A000124 (n + 6) + 6).toNat

end

end A250789.P9624472898327228997

/-! ## A250789.P624495820671490198

`A250783(A000217(n+6)+7)`
-/

namespace A250789.P624495820671490198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250783 (A000217 (n + 6) + 7).toNat

end

end A250789.P624495820671490198

/-!
# A250790: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250790, there is no canonical definition to state claims against.
-/

/-! ## A250790.P5556034605771159979

`A250797(∑[4*n]+1)`
-/

namespace A250790.P5556034605771159979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250790.P5556034605771159979

/-! ## A250790.P13900381917277887682

`lcm(2, A250797((n+1)²+n²))`
-/

namespace A250790.P13900381917277887682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250797 ((n + 1) ^ 2 + n ^ 2))

end

end A250790.P13900381917277887682

/-! ## A250790.P3643946182960043421

`record[A250797(Δ[A235355(n)])]`
-/

namespace A250790.P3643946182960043421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250790.P3643946182960043421

/-! ## A250790.P16559545954763187131

`record[A003982(n)*A250797(n+1)]`
-/

namespace A250790.P16559545954763187131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250790.P16559545954763187131

/-! ## A250790.P3397388607298665698

`record[A214505(n)*A250797(n+1)]`
-/

namespace A250790.P3397388607298665698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A250797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250790.P3397388607298665698

/-!
# A250791: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250791, the canonical program `A250791.P7129204390112644737` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250791 has offset 1).

The definition of A250791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250791.P7129204390112644737

`4*a(n-1)-3*a(n-2)-2*a(n-3)+2*a(n-4)` with `a(0)=24, a(1)=66, a(2)=180, a(3)=490`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250791

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+2*a(n-4)` -/
def P7129204390112644737.Spec : Prop :=
  ∀ n, P7129204390112644737.a n = A250791 (n + 1)

theorem P7129204390112644737.correct : P7129204390112644737.Spec := by
  intro n
  simp only [A250791, Nat.add_sub_cancel]

end A250791

/-! ## A250791.P17771176600606277237

`A250797(∑[n+2])`
-/

namespace A250791.P17771176600606277237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250791.P17771176600606277237

namespace A250791

/-- `A250797(∑[n+2])` -/
def P17771176600606277237.Spec : Prop :=
  ∀ n, P17771176600606277237.a n = A250791 (n + 1)

end A250791

/-! ## A250791.P14589710648451961557

`record[A250797(A101881(n)+1)]`
-/

namespace A250791.P14589710648451961557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250791.P14589710648451961557

namespace A250791

/-- `record[A250797(A101881(n)+1)]` -/
def P14589710648451961557.Spec : Prop :=
  ∀ n, P14589710648451961557.a n = A250791 (n + 1)

end A250791

/-! ## A250791.P15333119146077741775

`record[A250797(A000096(A286552(n)))]`
-/

namespace A250791.P15333119146077741775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000096 (A286552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250791.P15333119146077741775

namespace A250791

/-- `record[A250797(A000096(A286552(n)))]` -/
def P15333119146077741775.Spec : Prop :=
  ∀ n, P15333119146077741775.a n = A250791 (n + 1)

end A250791

/-! ## A250791.P9734785402669796773

`record[A250797(A000096(A002260(n+1)))]`
-/

namespace A250791.P9734785402669796773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250791.P9734785402669796773

namespace A250791

/-- `record[A250797(A000096(A002260(n+1)))]` -/
def P9734785402669796773.Spec : Prop :=
  ∀ n, P9734785402669796773.a n = A250791 (n + 1)

end A250791

/-!
# A250792: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250792, there is no canonical definition to state claims against.
-/

/-! ## A250792.P9560171943162124176

`A250797(∑[n+3]+1)`
-/

namespace A250792.P9560171943162124176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250792.P9560171943162124176

/-! ## A250792.P18050827777462419217

`and(-1, A250797(A034856(n+2)))`
-/

namespace A250792.P18050827777462419217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A250797 (A034856 (n + 2)).toNat)

end

end A250792.P18050827777462419217

/-! ## A250792.P2499537426618446030

`A250797(A034856(n+2))%A250806(n+1)`
-/

namespace A250792.P2499537426618446030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250797 (A034856 (n + 2)).toNat) (A250806 (n + 1))

end

end A250792.P2499537426618446030

/-! ## A250792.P17880666375366404065

`A250797(Δ[A008778(n)])+A077957(2*n+3)`
-/

namespace A250792.P17880666375366404065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (f1 (n + 1) - f1 n).toNat + A077957 (2 * n + 3)

end

end A250792.P17880666375366404065

/-! ## A250792.P11639017253644219078

`A294889(2*n+1)+A250797(A101881(2*(n+1)))`
-/

namespace A250792.P11639017253644219078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (2 * n + 1) + A250797 (A101881 (2 * (n + 1))).toNat

end

end A250792.P11639017253644219078

/-!
# A250793: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250793, there is no canonical definition to state claims against.
-/

/-! ## A250793.P13946456550219342666

`A250797(A141214(n+1))`
-/

namespace A250793.P13946456550219342666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A141214 (n + 1)).toNat

end

end A250793.P13946456550219342666

/-! ## A250793.P13178704817635097857

`A250797(A027379(n+2))`
-/

namespace A250793.P13178704817635097857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A027379 (n + 2)).toNat

end

end A250793.P13178704817635097857

/-! ## A250793.P494308865439042052

`A250797(A055998(n+2))`
-/

namespace A250793.P494308865439042052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A055998 (n + 2)).toNat

end

end A250793.P494308865439042052

/-! ## A250793.P59846508298926041

`A250797(A052905(n+1)+2)`
-/

namespace A250793.P59846508298926041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A052905 (n + 1) + 2).toNat

end

end A250793.P59846508298926041

/-! ## A250793.P14655553905440457354

`A250797(A000124(n+4)-4)`
-/

namespace A250793.P14655553905440457354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000124 (n + 4) - 4).toNat

end

end A250793.P14655553905440457354

/-!
# A250794: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250794, there is no canonical definition to state claims against.
-/

/-! ## A250794.P7382736645638572587

`A250797(∑[n+5]+6)`
-/

namespace A250794.P7382736645638572587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250794.P7382736645638572587

/-! ## A250794.P10917890242180036925

`lcm(2, A250797(A046691(n+3)))`
-/

namespace A250794.P10917890242180036925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250797 (A046691 (n + 3)).toNat)

end

end A250794.P10917890242180036925

/-! ## A250794.P2899260145091868420

`A250797(A046691(n+3))+A008683(A016934(n))`
-/

namespace A250794.P2899260145091868420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A046691 (n + 3)).toNat + A008683 (A016934 n).toNat

end

end A250794.P2899260145091868420

/-! ## A250794.P16667908142172413185

`A001511(A004525(2*n+1))*A250797(A046691(n+3))`
-/

namespace A250794.P16667908142172413185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004525 (2 * n + 1)).toNat * A250797 (A046691 (n + 3)).toNat

end

end A250794.P16667908142172413185

/-!
# A250795: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing min(x(i,j), x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250795, there is no canonical definition to state claims against.
-/

/-! ## A250795.P7166707804385882637

`A250797(A052905(n+3))`
-/

namespace A250795.P7166707804385882637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A052905 (n + 3)).toNat

end

end A250795.P7166707804385882637

/-! ## A250795.P4170035392493315214

`A250797(A027379(n+4)-2)`
-/

namespace A250795.P4170035392493315214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A027379 (n + 4) - 2).toNat

end

end A250795.P4170035392493315214

/-! ## A250795.P15592318028601231123

`A250797(A000124(n+6)-6)`
-/

namespace A250795.P15592318028601231123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000124 (n + 6) - 6).toNat

end

end A250795.P15592318028601231123

/-! ## A250795.P16867086537079507668

`A250797(Δ[Δ[A006504(n+1)]])`
-/

namespace A250795.P16867086537079507668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (f1 (n + 1) - f1 n).toNat

end

end A250795.P16867086537079507668

/-! ## A250795.P12885750142794298844

`A250797(A000096(n+4)+n+2)`
-/

namespace A250795.P12885750142794298844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A250795.P12885750142794298844

/-!
# A250796: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250796, there is no canonical definition to state claims against.
-/

/-! ## A250796.P3326979024105637710

`A250797(A055999(n+4))`
-/

namespace A250796.P3326979024105637710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A055999 (n + 4)).toNat

end

end A250796.P3326979024105637710

/-! ## A250796.P117159948222596585

`A250797(A052905(n+4)-1)`
-/

namespace A250796.P117159948222596585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A052905 (n + 4) - 1).toNat

end

end A250796.P117159948222596585

/-! ## A250796.P3836299285065437866

`A250797(A000217(n+7)-6)`
-/

namespace A250796.P3836299285065437866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000217 (n + 7) - 6).toNat

end

end A250796.P3836299285065437866

/-! ## A250796.P8111621929388935165

`A250797(A000124(n+7)-7)`
-/

namespace A250796.P8111621929388935165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A000124 (n + 7) - 7).toNat

end

end A250796.P8111621929388935165

/-! ## A250796.P9093893426090860980

`A250797((n+10)²%A000217(n+12))`
-/

namespace A250796.P9093893426090860980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (Int.tmod ((n + 10) ^ 2 : ℤ) (A000217 (n + 12))).toNat

end

end A250796.P9093893426090860980

/-!
# A250798: Number of (1+1) X (n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250798, the canonical program `A250798.P2164197667263413643` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250798 has offset 1).

The definition of A250798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250798.P13120957668286577208

`ogf((10-6x-8x^2)/(1-3x+x^2+2x^3))`
-/

namespace A250798.P13120957668286577208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6, -8] [1, -3, 1, 2] n

end

end A250798.P13120957668286577208

namespace A250798

/-- `ogf((10-6x-8x^2)/(1-3x+x^2+2x^3))` -/
def P13120957668286577208.Spec : Prop :=
  ∀ n, P13120957668286577208.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P2164197667263413643

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=10, a(1)=24, a(2)=54`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250798

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P2164197667263413643.Spec : Prop :=
  ∀ n, P2164197667263413643.a n = A250798 (n + 1)

theorem P2164197667263413643.correct : P2164197667263413643.Spec := by
  intro n
  simp only [A250798, Nat.add_sub_cancel]

end A250798

/-! ## A250798.P7907465221465712038

`A316528(n+2)`
-/

namespace A250798.P7907465221465712038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 (n + 2)

end

end A250798.P7907465221465712038

namespace A250798

/-- `A316528(n+2)` -/
def P7907465221465712038.Spec : Prop :=
  ∀ n, P7907465221465712038.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P5837275041574270475

`2*A116712(n+3)`
-/

namespace A250798.P5837275041574270475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116712 (n + 3)

end

end A250798.P5837275041574270475

namespace A250798

/-- `2*A116712(n+3)` -/
def P5837275041574270475.Spec : Prop :=
  ∀ n, P5837275041574270475.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P13940835671754663850

`record[A316528(abs(2-n))]`
-/

namespace A250798.P13940835671754663850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250798.P13940835671754663850

namespace A250798

/-- `record[A316528(abs(2-n))]` -/
def P13940835671754663850.Spec : Prop :=
  ∀ n, P13940835671754663850.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P18331975111670919943

`2*(A000045(n+2)+a(n-1))` with `a(0)=10`
-/

namespace A250798.P18331975111670919943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  2 * (A000045 (n + 2) + a (n - 1))

end

end A250798.P18331975111670919943

namespace A250798

/-- `2*(A000045(n+2)+a(n-1))` -/
def P18331975111670919943.Spec : Prop :=
  ∀ n, P18331975111670919943.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P12297795159781343936

`a(n-1)+A078642(n)+a(n-1)` with `a(0)=10`
-/

namespace A250798.P12297795159781343936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (A078642 n + a (n - 1))

end

end A250798.P12297795159781343936

namespace A250798

/-- `a(n-1)+A078642(n)+a(n-1)` -/
def P12297795159781343936.Spec : Prop :=
  ∀ n, P12297795159781343936.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P11739185682257602730

`A316937(n)+A005009(n)`
-/

namespace A250798.P11739185682257602730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316937 n + A005009 n

end

end A250798.P11739185682257602730

namespace A250798

/-- `A316937(n)+A005009(n)` -/
def P11739185682257602730.Spec : Prop :=
  ∀ n, P11739185682257602730.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P17124222730152008880

`A027973(n+2)+A008466(n+2)`
-/

namespace A250798.P17124222730152008880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 2) + A008466 (n + 2)

end

end A250798.P17124222730152008880

namespace A250798

/-- `A027973(n+2)+A008466(n+2)` -/
def P17124222730152008880.Spec : Prop :=
  ∀ n, P17124222730152008880.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P11456698389665370479

`A099166(n+2)+A000045(n+2)`
-/

namespace A250798.P11456698389665370479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099166 (n + 2) + A000045 (n + 2)

end

end A250798.P11456698389665370479

namespace A250798

/-- `A099166(n+2)+A000045(n+2)` -/
def P11456698389665370479.Spec : Prop :=
  ∀ n, P11456698389665370479.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P12317158542642182683

`A020714(n+2)-A090991(n+2)`
-/

namespace A250798.P12317158542642182683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 (n + 2) - A090991 (n + 2)

end

end A250798.P12317158542642182683

namespace A250798

/-- `A020714(n+2)-A090991(n+2)` -/
def P12317158542642182683.Spec : Prop :=
  ∀ n, P12317158542642182683.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P12766326883381016317

`A104004(n+2)+A008466(n+3)`
-/

namespace A250798.P12766326883381016317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 (n + 2) + A008466 (n + 3)

end

end A250798.P12766326883381016317

namespace A250798

/-- `A104004(n+2)+A008466(n+3)` -/
def P12766326883381016317.Spec : Prop :=
  ∀ n, P12766326883381016317.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P4186306402346672210

`A175657(n+2)+A167821(n+3)`
-/

namespace A250798.P4186306402346672210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 (n + 2) + A167821 (n + 3)

end

end A250798.P4186306402346672210

namespace A250798

/-- `A175657(n+2)+A167821(n+3)` -/
def P4186306402346672210.Spec : Prop :=
  ∀ n, P4186306402346672210.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P13590777337567367672

`A175661(n+2)-A227200(n+2)`
-/

namespace A250798.P13590777337567367672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175661 (n + 2) - A227200 (n + 2)

end

end A250798.P13590777337567367672

namespace A250798

/-- `A175661(n+2)-A227200(n+2)` -/
def P13590777337567367672.Spec : Prop :=
  ∀ n, P13590777337567367672.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P13442010419369203055

`A167821(n+4)+A000079(n+2)`
-/

namespace A250798.P13442010419369203055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 4) + A000079 (n + 2)

end

end A250798.P13442010419369203055

namespace A250798

/-- `A167821(n+4)+A000079(n+2)` -/
def P13442010419369203055.Spec : Prop :=
  ∀ n, P13442010419369203055.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P12335773642009993674

`A175660(n+3)-A104004(n+2)`
-/

namespace A250798.P12335773642009993674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 (n + 3) - A104004 (n + 2)

end

end A250798.P12335773642009993674

namespace A250798

/-- `A175660(n+3)-A104004(n+2)` -/
def P12335773642009993674.Spec : Prop :=
  ∀ n, P12335773642009993674.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P17027352769850262705

`A074878(n+4)-A000079(n+2)`
-/

namespace A250798.P17027352769850262705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 4) - A000079 (n + 2)

end

end A250798.P17027352769850262705

namespace A250798

/-- `A074878(n+4)-A000079(n+2)` -/
def P17027352769850262705.Spec : Prop :=
  ∀ n, P17027352769850262705.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P7538593958712179788

`2*(A099036(n+1)+A027973(n+1))`
-/

namespace A250798.P7538593958712179788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099036 (n + 1) + A027973 (n + 1))

end

end A250798.P7538593958712179788

namespace A250798

/-- `2*(A099036(n+1)+A027973(n+1))` -/
def P7538593958712179788.Spec : Prop :=
  ∀ n, P7538593958712179788.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P2668099936450223051

`2*(A020714(n+1)-A020701(n+1))`
-/

namespace A250798.P2668099936450223051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020714 (n + 1) - A020701 (n + 1))

end

end A250798.P2668099936450223051

namespace A250798

/-- `2*(A020714(n+1)-A020701(n+1))` -/
def P2668099936450223051.Spec : Prop :=
  ∀ n, P2668099936450223051.a n = A250798 (n + 1)

end A250798

/-! ## A250798.P13705836130927008028

`A027973(n+1)+A175661(n+1)+A175661(n)`
-/

namespace A250798.P13705836130927008028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 1) + (A175661 (n + 1) + A175661 n)

end

end A250798.P13705836130927008028

namespace A250798

/-- `A027973(n+1)+A175661(n+1)+A175661(n)` -/
def P13705836130927008028.Spec : Prop :=
  ∀ n, P13705836130927008028.a n = A250798 (n + 1)

end A250798

/-!
# A250799: Number of (2+1) X (n+1) 0..1 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250799, the canonical program `A250799.P6081854670383327626` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250799 has offset 1).

The definition of A250799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250799.P6081854670383327626

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=24, a(1)=66, a(2)=162, a(3)=376`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250799

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P6081854670383327626.Spec : Prop :=
  ∀ n, P6081854670383327626.a n = A250799 (n + 1)

theorem P6081854670383327626.correct : P6081854670383327626.Spec := by
  intro n
  simp only [A250799, Nat.add_sub_cancel]

end A250799

/-! ## A250799.P6569714120871572191

`A250797(∑[n+1]+2)`
-/

namespace A250799.P6569714120871572191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250799.P6569714120871572191

namespace A250799

/-- `A250797(∑[n+1]+2)` -/
def P6569714120871572191.Spec : Prop :=
  ∀ n, P6569714120871572191.a n = A250799 (n + 1)

end A250799

/-! ## A250799.P6387586943460145022

`record[A250797(A278504(n+1)+2)]`
-/

namespace A250799.P6387586943460145022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (A278504 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250799.P6387586943460145022

namespace A250799

/-- `record[A250797(A278504(n+1)+2)]` -/
def P6387586943460145022.Spec : Prop :=
  ∀ n, P6387586943460145022.a n = A250799 (n + 1)

end A250799

/-! ## A250799.P16857988762483815797

`record[A250797(2-A271439(n)+n)]`
-/

namespace A250799.P16857988762483815797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250797 (2 - A271439 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250799.P16857988762483815797

namespace A250799

/-- `record[A250797(2-A271439(n)+n)]` -/
def P16857988762483815797.Spec : Prop :=
  ∀ n, P16857988762483815797.a n = A250799 (n + 1)

end A250799

/-! ## A250799.P9265937559656789855

`gcd(n+1, A000040(n+1))*A250797(A000217(n+1)+2)`
-/

namespace A250799.P9265937559656789855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℤ) * A250797 (A000217 (n + 1) + 2).toNat

end

end A250799.P9265937559656789855

namespace A250799

/-- `gcd(n+1, A000040(n+1))*A250797(A000217(n+1)+2)` -/
def P9265937559656789855.Spec : Prop :=
  ∀ n, P9265937559656789855.a n = A250799 (n + 1)

end A250799

