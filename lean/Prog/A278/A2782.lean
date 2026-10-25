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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
# A278200: 

The programs for A278200, there is no canonical definition to state claims against.
-/

/-! ## A278200.P6162384812316636838

`A000041(A278783(n+1))`
-/

namespace A278200.P6162384812316636838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278783 (n + 1)).toNat

end

end A278200.P6162384812316636838

/-!
# A278201: 

The programs for A278201, there is no canonical definition to state claims against.
-/

/-! ## A278201.P9798982724531217319

`A000041(A278784(n+1))`
-/

namespace A278201.P9798982724531217319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A278784 (n + 1)).toNat

end

end A278201.P9798982724531217319

/-! ## A278201.P8337399188908971815

`A035363(2*A278784(n+1))`
-/

namespace A278201.P8337399188908971815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A278784 (n + 1)).toNat

end

end A278201.P8337399188908971815

/-! ## A278201.P56027454768367391

`A035444(4*A278784(n+1))`
-/

namespace A278201.P56027454768367391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A278784 (n + 1)).toNat

end

end A278201.P56027454768367391

/-!
# A278202: Number of n X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1), (-1,0), (-1,1), (0,-1), (0,1), (1,-1), (1,0) or (1,1), with upper left element zero.

The programs for A278202, there is no canonical definition to state claims against.
-/

/-! ## A278202.P15952249134033692478

`A278208(∑[4*n]+1)`
-/

namespace A278202.P15952249134033692478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278202.P15952249134033692478

/-! ## A278202.P13301855834033379096

`record[A003982(n)*A278208(n+1)]`
-/

namespace A278202.P13301855834033379096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A278208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278202.P13301855834033379096

/-! ## A278202.P7460296250376175096

`record[A203994(n+1)*A278208(n+1)]`
-/

namespace A278202.P7460296250376175096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A278208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278202.P7460296250376175096

/-! ## A278202.P12388941413748670137

`record[A204177(n+1)*A278208(n+1)]`
-/

namespace A278202.P12388941413748670137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A278208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278202.P12388941413748670137

/-! ## A278202.P8401298461897389314

`A278208(A001844(n))*A304779(n+1)`
-/

namespace A278202.P8401298461897389314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A001844 n).toNat * A304779 (n + 1)

end

end A278202.P8401298461897389314

/-!
# A278203: Number of n X 3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278203, there is no canonical definition to state claims against.
-/

/-! ## A278203.P2252843805395077817

`A278208(∑[n+2]+4)`
-/

namespace A278203.P2252843805395077817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278203.P2252843805395077817

/-! ## A278203.P5932785617136340766

`A278208(A167614(n+1))+A025439(n)`
-/

namespace A278203.P5932785617136340766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A167614 (n + 1)).toNat + A025439 n

end

end A278203.P5932785617136340766

/-! ## A278203.P972799037465666284

`A057427(n)*A278208(A167614(n+1))`
-/

namespace A278203.P972799037465666284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A278208 (A167614 (n + 1)).toNat

end

end A278203.P972799037465666284

/-! ## A278203.P6411364412130646959

`A158388(n)*A278208(A167614(n+1))`
-/

namespace A278203.P6411364412130646959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A278208 (A167614 (n + 1)).toNat

end

end A278203.P6411364412130646959

/-! ## A278203.P9021549083937253517

`A278208(A167614(n+1))%A028217(n)`
-/

namespace A278203.P9021549083937253517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278208 (A167614 (n + 1)).toNat) (A028217 n)

end

end A278203.P9021549083937253517

/-!
# A278204: Number of nX4 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278204, there is no canonical definition to state claims against.
-/

/-! ## A278204.P3896092385057108548

`A278208(A374004(n+1))`
-/

namespace A278204.P3896092385057108548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A374004 (n + 1)).toNat

end

end A278204.P3896092385057108548

/-! ## A278204.P9222976575074549465

`A278208(A141214(n)+7)`
-/

namespace A278204.P9222976575074549465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A141214 n + 7).toNat

end

end A278204.P9222976575074549465

/-! ## A278204.P8348058150000140172

`A278208(A052905(n)+9)`
-/

namespace A278204.P8348058150000140172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A052905 n + 9).toNat

end

end A278204.P8348058150000140172

/-! ## A278204.P15118152631851424879

`A278208(A055999(n)+10)`
-/

namespace A278204.P15118152631851424879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A055999 n + 10).toNat

end

end A278204.P15118152631851424879

/-! ## A278204.P11118048157204325493

`A278208(A167614(n+2)+1)`
-/

namespace A278204.P11118048157204325493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A167614 (n + 2) + 1).toNat

end

end A278204.P11118048157204325493

/-!
# A278205: Number of nX5 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278205, there is no canonical definition to state claims against.
-/

/-! ## A278205.P9315506661054539270

`A278208(A374005(n+1))`
-/

namespace A278205.P9315506661054539270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A374005 (n + 1)).toNat

end

end A278205.P9315506661054539270

/-! ## A278205.P1536300909106607849

`A278208(A155212(n)+13)`
-/

namespace A278205.P1536300909106607849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A155212 n + 13).toNat

end

end A278205.P1536300909106607849

/-! ## A278205.P17937451439250859602

`A278208(eq[6, A131818(n+1)])`
-/

namespace A278205.P17937451439250859602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278205.P17937451439250859602

/-! ## A278205.P5799465479717908825

`A278208(eq[4, A193592(n)])`
-/

namespace A278205.P5799465479717908825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278205.P5799465479717908825

/-! ## A278205.P4052934745268367558

`A278208(Δ[A023545(n+1)])`
-/

namespace A278205.P4052934745268367558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (f1 (n + 1) - f1 n).toNat

end

end A278205.P4052934745268367558

/-!
# A278206: Number of nX6 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278206, there is no canonical definition to state claims against.
-/

/-! ## A278206.P11818592414253822009

`A278208(A374007(n+1))`
-/

namespace A278206.P11818592414253822009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A374007 (n + 1)).toNat

end

end A278206.P11818592414253822009

/-! ## A278206.P13654384331682477029

`A278208(A134869(n+5)+5)`
-/

namespace A278206.P13654384331682477029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A134869 (n + 5) + 5).toNat

end

end A278206.P13654384331682477029

/-! ## A278206.P12974384946774958514

`A278208(eq[7, A131818(n+1)])`
-/

namespace A278206.P12974384946774958514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278206.P12974384946774958514

/-! ## A278206.P3688048661905549938

`A278208(A052905(n+3))`
-/

namespace A278206.P3688048661905549938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A052905 (n + 3)).toNat

end

end A278206.P3688048661905549938

/-! ## A278206.P6772403791792370407

`A278208(eq[3, A219347(n)])`
-/

namespace A278206.P6772403791792370407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278206.P6772403791792370407

/-!
# A278207: Number of nX7 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278207, there is no canonical definition to state claims against.
-/

/-! ## A278207.P13754083373926549825

`A278208(A374008(n+1))`
-/

namespace A278207.P13754083373926549825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A374008 (n + 1)).toNat

end

end A278207.P13754083373926549825

/-! ## A278207.P4080497392627302845

`A278208(eq[11, A066657(n)])`
-/

namespace A278207.P4080497392627302845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278207.P4080497392627302845

/-! ## A278207.P10304078614179258853

`A278208(eq[8, A131818(n+1)])`
-/

namespace A278207.P10304078614179258853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278207.P10304078614179258853

/-! ## A278207.P15854360807708340485

`A278208(A055999(n+4))`
-/

namespace A278207.P15854360807708340485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A055999 (n + 4)).toNat

end

end A278207.P15854360807708340485

/-! ## A278207.P8089760401243614881

`A278208(eq[4, A219347(n)])`
-/

namespace A278207.P8089760401243614881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278207.P8089760401243614881

/-!
# A278208: T(n,k)=Number of nXk 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278208, there is no canonical definition to state claims against.
-/

/-! ## A278208.P6704533572672694687

`A073719(A155467(n))`
-/

namespace A278208.P6704533572672694687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A155467 n).toNat

end

end A278208.P6704533572672694687

/-! ## A278208.P13925216771261913253

`A123576(A178619(n))`
-/

namespace A278208.P13925216771261913253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A178619 n).toNat

end

end A278208.P13925216771261913253

/-! ## A278208.P6958887921507427776

`A241321(A081581(n))`
-/

namespace A278208.P6958887921507427776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241321 (A081581 n).toNat

end

end A278208.P6958887921507427776

/-! ## A278208.P3702323375110063419

`A071804(A257608(n))`
-/

namespace A278208.P3702323375110063419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071804 (A257608 n).toNat

end

end A278208.P3702323375110063419

/-! ## A278208.P296196170178708513

`A221178(A157221(n))`
-/

namespace A278208.P296196170178708513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221178 (A157221 n).toNat

end

end A278208.P296196170178708513

/-!
# A278210: Last residue class to appear in the partition numbers mod n.

The programs for A278210, there is no canonical definition to state claims against.
-/

/-! ## A278210.P12704179870346861715

`A000041(A278209(n+1))%(n+1)`
-/

namespace A278210.P12704179870346861715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A278209 (n + 1)).toNat) (n + 1 : ℤ)

end

end A278210.P12704179870346861715

/-!
# A278211: Maximum total number of possible moves that any number of rooks of the same color can make on an n X n chessboard.

The programs for A278211, there is no canonical definition to state claims against.
-/

/-! ## A278211.P11074730935664686186

`∑[∑[A078458(A082044(n))]]`
-/

namespace A278211.P11074730935664686186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A082044 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278211.P11074730935664686186

/-! ## A278211.P8307962837997773209

`∑[∑[A275812(A000583(n+1))]]`
-/

namespace A278211.P8307962837997773209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A000583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278211.P8307962837997773209

/-! ## A278211.P17600926859582382116

`A158411(A003398(n+1))*A303279(n+1)`
-/

namespace A278211.P17600926859582382116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 (A003398 (n + 1)).toNat * A303279 (n + 1)

end

end A278211.P17600926859582382116

/-! ## A278211.P10502506144205344831

`A158411(A015128(2*(n+1)))*A303279(n+1)`
-/

namespace A278211.P10502506144205344831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 (A015128 (2 * (n + 1))).toNat * A303279 (n + 1)

end

end A278211.P10502506144205344831

/-! ## A278211.P9987706148292314878

`∑[4*∑{e}[(n+1)!, #]]`
-/

namespace A278211.P9987706148292314878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278211.P9987706148292314878

/-!
# A278212: Maximum total number of possible moves that any number of bishops of the same color can make on an n X n chessboard.

The programs for A278212, there is no canonical definition to state claims against.
-/

/-! ## A278212.P7844337413056860910

`floor(A275815(n+1)/2)`
-/

namespace A278212.P7844337413056860910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275815 (n + 1) : ℚ) / 2⌋

end

end A278212.P7844337413056860910

/-! ## A278212.P13191371899499295412

`A004524(A275815(n+1))`
-/

namespace A278212.P13191371899499295412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A275815 (n + 1)).toNat

end

end A278212.P13191371899499295412

/-! ## A278212.P11064595906111025817

`∑[A156726((n+1)²+n)]`
-/

namespace A278212.P11064595906111025817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278212.P11064595906111025817

/-! ## A278212.P16648356661414541414

`∑[∑[A335881(A005899(n)²)]]`
-/

namespace A278212.P16648356661414541414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335881 (A005899 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278212.P16648356661414541414

/-!
# A278216: Number of children that node n has in the tree defined by the edge relation A255131(child) = parent, "the least squares beanstalk".

The programs for A278216, there is no canonical definition to state claims against.
-/

/-! ## A278216.P10106883553134675123

`A102342(A094361(n))%6`
-/

namespace A278216.P10106883553134675123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102342 (A094361 n).toNat) 6

end

end A278216.P10106883553134675123

/-!
# A278217: Filter-sequence related to base-2 run-length encoding: a(n) = A046523(A075159(1+n)) = A046523(1+A075157(n)).

The programs for A278217, the canonical program `A278217.P18098798803773817655` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278217 has offset 0).

The definition of A278217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A075159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278217.P18098798803773817655

`A046523(A075159(1+n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A278217

/-- `A046523(A075159(1+n))` -/
def P18098798803773817655.Spec : Prop :=
  ∀ n, P18098798803773817655.a n = A278217 n

theorem P18098798803773817655.correct : P18098798803773817655.Spec := by
  intro n
  simp only [A278217]

end A278217

/-! ## A278217.P4360592861629059899

`A046523(1+A075157(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278217.P4360592861629059899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + A075157 n).toNat

end

end A278217.P4360592861629059899

namespace A278217

/-- `A046523(1+A075157(n))` -/
def P4360592861629059899.Spec : Prop :=
  ∀ n, P4360592861629059899.a n = A278217 n

end A278217

/-! ## A278217.P12425554836074424218

`A278222(A180201(n))`
-/

namespace A278217.P12425554836074424218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A180201 n).toNat

end

end A278217.P12425554836074424218

namespace A278217

/-- `A278222(A180201(n))` -/
def P12425554836074424218.Spec : Prop :=
  ∀ n, P12425554836074424218.a n = A278217 n

end A278217

/-! ## A278217.P14748990061918855355

`A278222(xor(1, A281499(n)))`
-/

namespace A278217.P14748990061918855355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.xor 1 (A281499 n)).toNat

end

end A278217.P14748990061918855355

namespace A278217

/-- `A278222(xor(1, A281499(n)))` -/
def P14748990061918855355.Spec : Prop :=
  ∀ n, P14748990061918855355.a n = A278217 n

end A278217

/-! ## A278217.P16157720236537703169

`A278533(A341915(n))`
-/

namespace A278217.P16157720236537703169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A341915 n).toNat

end

end A278217.P16157720236537703169

namespace A278217

/-- `A278533(A341915(n))` -/
def P16157720236537703169.Spec : Prop :=
  ∀ n, P16157720236537703169.a n = A278217 n

end A278217

/-! ## A278217.P1764553663187671224

`A278531(A003188(n))`
-/

namespace A278217.P1764553663187671224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A003188 n).toNat

end

end A278217.P1764553663187671224

namespace A278217

/-- `A278531(A003188(n))` -/
def P1764553663187671224.Spec : Prop :=
  ∀ n, P1764553663187671224.a n = A278217 n

end A278217

/-! ## A278217.P5036816525467108522

`A278531(xor(n, A004526(n)))`
-/

namespace A278217.P5036816525467108522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A278217.P5036816525467108522

namespace A278217

/-- `A278531(xor(n, A004526(n)))` -/
def P5036816525467108522.Spec : Prop :=
  ∀ n, P5036816525467108522.a n = A278217 n

end A278217

/-! ## A278217.P1250997700017972697

`A278531(A229763(n)+A004526(n))`
-/

namespace A278217.P1250997700017972697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A229763 n + A004526 n).toNat

end

end A278217.P1250997700017972697

namespace A278217

/-- `A278531(A229763(n)+A004526(n))` -/
def P1250997700017972697.Spec : Prop :=
  ∀ n, P1250997700017972697.a n = A278217 n

end A278217

/-! ## A278217.P16820960299470083614

`A278531(xor(n, A188134(2*n)))`
-/

namespace A278217.P16820960299470083614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (Int.xor (n : ℤ) (A188134 (2 * n))).toNat

end

end A278217.P16820960299470083614

namespace A278217

/-- `A278531(xor(n, A188134(2*n)))` -/
def P16820960299470083614.Spec : Prop :=
  ∀ n, P16820960299470083614.a n = A278217 n

end A278217

/-! ## A278217.P16379968684562444480

`A278219(A165199(n))`
-/

namespace A278217.P16379968684562444480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A165199 n).toNat

end

end A278217.P16379968684562444480

namespace A278217

/-- `A278219(A165199(n))` -/
def P16379968684562444480.Spec : Prop :=
  ∀ n, P16379968684562444480.a n = A278217 n

end A278217

/-! ## A278217.P16477596523836150918

`A046523(A122111(A241916(A243353(n))))`
-/

namespace A278217.P16477596523836150918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A122111 (A241916 (A243353 n).toNat).toNat).toNat

end

end A278217.P16477596523836150918

namespace A278217

/-- `A046523(A122111(A241916(A243353(n))))` -/
def P16477596523836150918.Spec : Prop :=
  ∀ n, P16477596523836150918.a n = A278217 n

end A278217

/-!
# A278218: Triangle read by rows: T(n,k) = Least number with the prime signature of binomial(n,k).

The programs for A278218, the canonical program `A278218.P4539860133460328469` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278218 has offset 0).

The definition of A278218 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278218.P4539860133460328469

`A046523(A007318(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278218

/-- `A046523(A007318(n))` -/
def P4539860133460328469.Spec : Prop :=
  ∀ n, P4539860133460328469.a n = A278218 n

theorem P4539860133460328469.correct : P4539860133460328469.Spec := by
  intro n
  simp only [A278218]

end A278218

/-! ## A278218.P9467480505366132573

`A181821(∏{e}[A007318(n), A000040(#)])`
-/

namespace A278218.P9467480505366132573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278218.P9467480505366132573

namespace A278218

/-- `A181821(∏{e}[A007318(n), A000040(#)])` -/
def P9467480505366132573.Spec : Prop :=
  ∀ n, P9467480505366132573.a n = A278218 n

end A278218

/-! ## A278218.P4302397469878797324

`A181821(∏{e}[A007318(n), A181821(#)+1])`
-/

namespace A278218.P4302397469878797324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A181821 (Nat.factorization (f1 n).natAbs p) + 1)).toNat

end

end A278218.P4302397469878797324

namespace A278218

/-- `A181821(∏{e}[A007318(n), A181821(#)+1])` -/
def P4302397469878797324.Spec : Prop :=
  ∀ n, P4302397469878797324.a n = A278218 n

end A278218

/-! ## A278218.P16076386051813050006

`A046523(A071364(Δ[A102363(n)]))`
-/

namespace A278218.P16076386051813050006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (f1 (n + 1) - f1 n).toNat).toNat

end

end A278218.P16076386051813050006

namespace A278218

/-- `A046523(A071364(Δ[A102363(n)]))` -/
def P16076386051813050006.Spec : Prop :=
  ∀ n, P16076386051813050006.a n = A278218 n

end A278218

/-! ## A278218.P13533430304324850518

`A046523(abs(A108086(n)))`
-/

namespace A278218.P13533430304324850518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 |A108086 n|.toNat

end

end A278218.P13533430304324850518

namespace A278218

/-- `A046523(abs(A108086(n)))` -/
def P13533430304324850518.Spec : Prop :=
  ∀ n, P13533430304324850518.a n = A278218 n

end A278218

/-! ## A278218.P6036065156050622684

`A046523(abs(A117440(n)))`
-/

namespace A278218.P6036065156050622684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 |A117440 n|.toNat

end

end A278218.P6036065156050622684

namespace A278218

/-- `A046523(abs(A117440(n)))` -/
def P6036065156050622684.Spec : Prop :=
  ∀ n, P6036065156050622684.a n = A278218 n

end A278218

/-! ## A278218.P12227538275509740600

`A046523(abs(A130595(n)))`
-/

namespace A278218.P12227538275509740600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 |A130595 n|.toNat

end

end A278218.P12227538275509740600

namespace A278218

/-- `A046523(abs(A130595(n)))` -/
def P12227538275509740600.Spec : Prop :=
  ∀ n, P12227538275509740600.a n = A278218 n

end A278218

/-! ## A278218.P577975577123723543

`A046523(sqrt(A008459(n)))`
-/

namespace A278218.P577975577123723543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A278218.P577975577123723543

namespace A278218

/-- `A046523(sqrt(A008459(n)))` -/
def P577975577123723543.Spec : Prop :=
  ∀ n, P577975577123723543.a n = A278218 n

end A278218

/-! ## A278218.P9001391907178222748

`A046523(Δ[A102363(n)])`
-/

namespace A278218.P9001391907178222748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n).toNat

end

end A278218.P9001391907178222748

namespace A278218

/-- `A046523(Δ[A102363(n)])` -/
def P9001391907178222748.Spec : Prop :=
  ∀ n, P9001391907178222748.a n = A278218 n

end A278218

/-! ## A278218.P4084669287316980787

`A046523(A014473(n)+1)`
-/

namespace A278218.P4084669287316980787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A014473 n + 1).toNat

end

end A278218.P4084669287316980787

namespace A278218

/-- `A046523(A014473(n)+1)` -/
def P4084669287316980787.Spec : Prop :=
  ∀ n, P4084669287316980787.a n = A278218 n

theorem P4084669287316980787.correct : P4084669287316980787.Spec := by
  intro n
  simp only [A278218, Nat.add_sub_cancel, A278218.P4084669287316980787.a, A278218.P4539860133460328469.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A001511, A001511.P17146462531039486101.a, A003056, A003056.P5318256527314048597.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A002262, A002262.P12129691700837801527.a, A006519, A006519.P10435570611646570274.a, A010054, A010054.P18347828677204923252.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A278218

/-! ## A278218.P13065191191388228366

`A046523(A028326(n)/2)`
-/

namespace A278218.P13065191191388228366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A278218.P13065191191388228366

namespace A278218

/-- `A046523(A028326(n)/2)` -/
def P13065191191388228366.Spec : Prop :=
  ∀ n, P13065191191388228366.a n = A278218 n

end A278218

/-! ## A278218.P2280946584878246545

`A046523(ceil(A124927(n)/2))`
-/

namespace A278218.P2280946584878246545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ⌈(A124927 n : ℚ) / 2⌉.toNat

end

end A278218.P2280946584878246545

namespace A278218

/-- `A046523(ceil(A124927(n)/2))` -/
def P2280946584878246545.Spec : Prop :=
  ∀ n, P2280946584878246545.a n = A278218 n

end A278218

/-! ## A278218.P5735008282050285408

`A046523((A131063(n)+4)/5)`
-/

namespace A278218.P5735008282050285408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A131063 n + 4 : ℚ) / 5)).toNat

end

end A278218.P5735008282050285408

namespace A278218

/-- `A046523((A131063(n)+4)/5)` -/
def P5735008282050285408.Spec : Prop :=
  ∀ n, P5735008282050285408.a n = A278218 n

end A278218

/-! ## A278218.P8158478925433207967

`A046523(abs(ceil(A134059(n)/3)-1)+1)`
-/

namespace A278218.P8158478925433207967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (|⌈(A134059 n : ℚ) / 3⌉ - 1| + 1).toNat

end

end A278218.P8158478925433207967

namespace A278218

/-- `A046523(abs(ceil(A134059(n)/3)-1)+1)` -/
def P8158478925433207967.Spec : Prop :=
  ∀ n, P8158478925433207967.a n = A278218 n

end A278218

/-! ## A278218.P5082186943365361783

`A046523(A285118(n)+A285116(n))`
-/

namespace A278218.P5082186943365361783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A285118 n + A285116 n).toNat

end

end A278218.P5082186943365361783

namespace A278218

/-- `A046523(A285118(n)+A285116(n))` -/
def P5082186943365361783.Spec : Prop :=
  ∀ n, P5082186943365361783.a n = A278218 n

theorem P5082186943365361783.correct : P5082186943365361783.Spec := by
  intro n
  simp only [A278218, Nat.add_sub_cancel, A278218.P5082186943365361783.a, A278218.P4539860133460328469.a, A007318, A007318.P302227728145965961.a, A046523, A046523.P3407874444772092792.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A097805, A097805.P1755176267250853107.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A001511, A001511.P17146462531039486101.a, A003056, A003056.P5318256527314048597.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A002262, A002262.P12129691700837801527.a, A006519, A006519.P10435570611646570274.a, A010054, A010054.P18347828677204923252.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A278218

/-! ## A278218.P1085888957524318593

`A046523(gcd(A124927(n), A124928(n)))`
-/

namespace A278218.P1085888957524318593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.gcd (A124927 n) (A124928 n))

end

end A278218.P1085888957524318593

namespace A278218

/-- `A046523(gcd(A124927(n), A124928(n)))` -/
def P1085888957524318593.Spec : Prop :=
  ∀ n, P1085888957524318593.a n = A278218 n

end A278218

/-! ## A278218.P8178068335236535840

`A046523(C(A003056(n), A025581(n)))`
-/

namespace A278218.P8178068335236535840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (A003056 n).toNat (A025581 n).toNat)

end

end A278218.P8178068335236535840

namespace A278218

/-- `A046523(C(A003056(n), A025581(n)))` -/
def P8178068335236535840.Spec : Prop :=
  ∀ n, P8178068335236535840.a n = A278218 n

end A278218

/-! ## A278218.P1363453371679786917

`A046523(A097805(n+1)+A097805(n))`
-/

namespace A278218.P1363453371679786917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097805 (n + 1) + A097805 n).toNat

end

end A278218.P1363453371679786917

namespace A278218

/-- `A046523(A097805(n+1)+A097805(n))` -/
def P1363453371679786917.Spec : Prop :=
  ∀ n, P1363453371679786917.a n = A278218 n

end A278218

/-! ## A278218.P10360864546662754829

`A046523(A102363(n+1)-A102363(n))`
-/

namespace A278218.P10360864546662754829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A102363 (n + 1) - A102363 n).toNat

end

end A278218.P10360864546662754829

namespace A278218

/-- `A046523(A102363(n+1)-A102363(n))` -/
def P10360864546662754829.Spec : Prop :=
  ∀ n, P10360864546662754829.a n = A278218 n

end A278218

/-! ## A278218.P12619576810420061789

`A046523(2*A124927(n)-A124928(n))`
-/

namespace A278218.P12619576810420061789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 * A124927 n - A124928 n).toNat

end

end A278218.P12619576810420061789

namespace A278218

/-- `A046523(2*A124927(n)-A124928(n))` -/
def P12619576810420061789.Spec : Prop :=
  ∀ n, P12619576810420061789.a n = A278218 n

theorem P12619576810420061789.correct : P12619576810420061789.Spec := by
  intro n
  simp only [A278218, Nat.add_sub_cancel, A278218.P12619576810420061789.a, A278218.P4539860133460328469.a, A007318, A007318.P302227728145965961.a, A046523, A046523.P3407874444772092792.a, A124927, A124927.P15291283991733962265.a, A124928, A124928.P9795992396165051059.a, A080233, A080233.P15572603627752373411.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A325191, A325191.P1948114789834443761.a, A001511, A001511.P17146462531039486101.a, A003056, A003056.P5318256527314048597.a, A008578, A008578.P3639467937083264764.a, A010054, A010054.P18347828677204923252.a, A056943, A056943.P2657344456391598982.a, A064989, A064989.P13349672914146769936.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A002262, A002262.P12129691700837801527.a, A005369, A005369.P10796159359873341658.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A278218

/-!
# A278219: Filter-sequence related to base-2 run-length encoding: a(n) = A046523(A243353(n)).

The programs for A278219, the canonical program `A278219.P3825217007817809804` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278219 has offset 0).

The definition of A278219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278219.P14313078600227858588

`A278222(A003188(n))`
-/

namespace A278219.P14313078600227858588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A003188 n).toNat

end

end A278219.P14313078600227858588

namespace A278219

/-- `A278222(A003188(n))` -/
def P14313078600227858588.Spec : Prop :=
  ∀ n, P14313078600227858588.a n = A278219 n

end A278219

/-! ## A278219.P3825217007817809804

`A046523(A243353(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278219

/-- `A046523(A243353(n))` -/
def P3825217007817809804.Spec : Prop :=
  ∀ n, P3825217007817809804.a n = A278219 n

theorem P3825217007817809804.correct : P3825217007817809804.Spec := by
  intro n
  simp only [A278219]

end A278219

/-! ## A278219.P1828103973381884885

`A278220(1+A075157(n))`
-/

namespace A278219.P1828103973381884885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (1 + A075157 n).toNat

end

end A278219.P1828103973381884885

namespace A278219

/-- `A278220(1+A075157(n))` -/
def P1828103973381884885.Spec : Prop :=
  ∀ n, P1828103973381884885.a n = A278219 n

end A278219

/-! ## A278219.P7706072815024988676

`A278222(xor(n, floor(n/2)))`
-/

namespace A278219.P7706072815024988676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A278219.P7706072815024988676

namespace A278219

/-- `A278222(xor(n, floor(n/2)))` -/
def P7706072815024988676.Spec : Prop :=
  ∀ n, P7706072815024988676.a n = A278219 n

end A278219

/-! ## A278219.P3712123236600608154

`A278222(xor(n, 2*n)-n%2)`
-/

namespace A278219.P3712123236600608154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Nat.xor n (2 * n) - n % 2)

end

end A278219.P3712123236600608154

namespace A278219

/-- `A278222(xor(n, 2*n)-n%2)` -/
def P3712123236600608154.Spec : Prop :=
  ∀ n, P3712123236600608154.a n = A278219 n

end A278219

/-! ## A278219.P7832967017552258512

`A278222(2*xor(n, ∑[char[2*(n+1)]]))`
-/

namespace A278219.P7832967017552258512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (2 * Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A278219.P7832967017552258512

namespace A278219

/-- `A278222(2*xor(n, ∑[char[2*(n+1)]]))` -/
def P7832967017552258512.Spec : Prop :=
  ∀ n, P7832967017552258512.a n = A278219 n

end A278219

/-! ## A278219.P9124123630928863566

`A278222(A280995(n))`
-/

namespace A278219.P9124123630928863566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A280995 n).toNat

end

end A278219.P9124123630928863566

namespace A278219

/-- `A278222(A280995(n))` -/
def P9124123630928863566.Spec : Prop :=
  ∀ n, P9124123630928863566.a n = A278219 n

end A278219

/-! ## A278219.P9125639515550763146

`A278222(A395535(n))`
-/

namespace A278219.P9125639515550763146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A395535 n).toNat

end

end A278219.P9125639515550763146

namespace A278219

/-- `A278222(A395535(n))` -/
def P9125639515550763146.Spec : Prop :=
  ∀ n, P9125639515550763146.a n = A278219 n

end A278219

/-! ## A278219.P14690248653455101471

`A278222(A163617(n)-A007494(n))`
-/

namespace A278219.P14690248653455101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A163617 n - A007494 n).toNat

end

end A278219.P14690248653455101471

namespace A278219

/-- `A278222(A163617(n)-A007494(n))` -/
def P14690248653455101471.Spec : Prop :=
  ∀ n, P14690248653455101471.a n = A278219 n

end A278219

/-! ## A278219.P2566440858160539713

`A286601(A234613(n))`
-/

namespace A278219.P2566440858160539713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A234613 n).toNat

end

end A278219.P2566440858160539713

namespace A278219

/-- `A286601(A234613(n))` -/
def P2566440858160539713.Spec : Prop :=
  ∀ n, P2566440858160539713.a n = A278219 n

end A278219

/-! ## A278219.P180292493178358176

`A278535(A341915(n))`
-/

namespace A278219.P180292493178358176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278535 (A341915 n).toNat

end

end A278219.P180292493178358176

namespace A278219

/-- `A278535(A341915(n))` -/
def P180292493178358176.Spec : Prop :=
  ∀ n, P180292493178358176.a n = A278219 n

end A278219

/-! ## A278219.P17112815077456974032

`A278531(A180201(n))`
-/

namespace A278219.P17112815077456974032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A180201 n).toNat

end

end A278219.P17112815077456974032

namespace A278219

/-- `A278531(A180201(n))` -/
def P17112815077456974032.Spec : Prop :=
  ∀ n, P17112815077456974032.a n = A278219 n

end A278219

/-! ## A278219.P1107401881109062807

`A278222(A193231(A006068(A193231(n))))`
-/

namespace A278219.P1107401881109062807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A193231 (A006068 (A193231 n).toNat).toNat).toNat

end

end A278219.P1107401881109062807

namespace A278219

/-- `A278222(A193231(A006068(A193231(n))))` -/
def P1107401881109062807.Spec : Prop :=
  ∀ n, P1107401881109062807.a n = A278219 n

end A278219

/-! ## A278219.P18399551448578799259

`A278524(A286555(n))`
-/

namespace A278219.P18399551448578799259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A286555 n).toNat

end

end A278219.P18399551448578799259

namespace A278219

/-- `A278524(A286555(n))` -/
def P18399551448578799259.Spec : Prop :=
  ∀ n, P18399551448578799259.a n = A278219 n

end A278219

/-! ## A278219.P17301907099553563334

`A278217(A165199(n))`
-/

namespace A278219.P17301907099553563334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 (A165199 n).toNat

end

end A278219.P17301907099553563334

namespace A278219

/-- `A278217(A165199(n))` -/
def P17301907099553563334.Spec : Prop :=
  ∀ n, P17301907099553563334.a n = A278219 n

end A278219

/-! ## A278219.P8221562982538442508

`A046523(A005940(1+A003188(n)))`
-/

namespace A278219.P8221562982538442508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005940 (1 + A003188 n).toNat).toNat

end

end A278219.P8221562982538442508

namespace A278219

/-- `A046523(A005940(1+A003188(n)))` -/
def P8221562982538442508.Spec : Prop :=
  ∀ n, P8221562982538442508.a n = A278219 n

end A278219

/-!
# A278220: Filtering sequence (related to prime factorization): a(n) = A046523(A241909(n)).

The programs for A278220, there is no canonical definition to state claims against.
-/

/-! ## A278220.P2887719944419192411

`A278219(A075158(n))`
-/

namespace A278220.P2887719944419192411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A075158 n).toNat

end

end A278220.P2887719944419192411

/-! ## A278220.P17046912882363567133

`A046523(A241909(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278220.P17046912882363567133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A241909 (n + 1)).toNat

end

end A278220.P17046912882363567133

/-! ## A278220.P17342437453506305844

`A279354((n+1)*a((n+1)%2))` with `a(0)=1`
-/

namespace A278220.P17342437453506305844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A279354 ((n + 1 : ℤ) * a ((n + 1) % 2)).toNat

end

end A278220.P17342437453506305844

/-! ## A278220.P6418848156104947188

`A279354(A066043(n+1))`
-/

namespace A278220.P6418848156104947188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A066043 (n + 1)).toNat

end

end A278220.P6418848156104947188

/-! ## A278220.P3610209802240454551

`A279354(record[n-a(n-2)]+1)` with `a(0)=0, a(1)=3`
-/

namespace A278220.P3610209802240454551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A278220.P3610209802240454551

/-! ## A278220.P10260468645071531904

`A279354(A103517(n))`
-/

namespace A278220.P10260468645071531904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A103517 n).toNat

end

end A278220.P10260468645071531904

/-! ## A278220.P14249081606550145978

`A279354(A057543(n+1))`
-/

namespace A278220.P14249081606550145978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A057543 (n + 1)).toNat

end

end A278220.P14249081606550145978

/-! ## A278220.P9536976986604235365

`A279354((n+1)*gcd(2, A093891(n+1)))`
-/

namespace A278220.P9536976986604235365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 ((n + 1) * Int.gcd 2 (A093891 (n + 1)))

end

end A278220.P9536976986604235365

/-! ## A278220.P16209730375486738318

`A279354(A120511(2*n+1)-A120511(n+1)+1)`
-/

namespace A278220.P16209730375486738318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A120511 (2 * n + 1) - A120511 (n + 1) + 1).toNat

end

end A278220.P16209730375486738318

/-! ## A278220.P14276549804717015536

`A279354(A249817(n+1))`
-/

namespace A278220.P14276549804717015536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A249817 (n + 1)).toNat

end

end A278220.P14276549804717015536

/-! ## A278220.P11982041483459938718

`A279354(A084351(n+1))`
-/

namespace A278220.P11982041483459938718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279354 (A084351 (n + 1)).toNat

end

end A278220.P11982041483459938718

/-!
# A278221: Filtering sequence (related to prime factorization): a(n) = A046523(A122111(n)).

The programs for A278221, the canonical program `A278221.P14007966457786942325` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278221 has offset 1).

The definition of A278221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278221.P14007966457786942325

`A046523(A122111(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278221

/-- `A046523(A122111(n+1))` -/
def P14007966457786942325.Spec : Prop :=
  ∀ n, P14007966457786942325.a n = A278221 (n + 1)

theorem P14007966457786942325.correct : P14007966457786942325.Spec := by
  intro n
  simp only [A278221, Nat.add_sub_cancel]

end A278221

/-! ## A278221.P17890751314237615228

`A279350(A249817(n+1))`
-/

namespace A278221.P17890751314237615228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279350 (A249817 (n + 1)).toNat

end

end A278221.P17890751314237615228

namespace A278221

/-- `A279350(A249817(n+1))` -/
def P17890751314237615228.Spec : Prop :=
  ∀ n, P17890751314237615228.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P8789514155331271728

`A279350(A020639(n+1)*A280497(n+1))`
-/

namespace A278221.P8789514155331271728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279350 (A020639 (n + 1) * A280497 (n + 1)).toNat

end

end A278221.P8789514155331271728

namespace A278221

/-- `A279350(A020639(n+1)*A280497(n+1))` -/
def P8789514155331271728.Spec : Prop :=
  ∀ n, P8789514155331271728.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P4648081857745296229

`A279350(A249818(n+1)*A280497(n+1)/A280498(n+1))`
-/

namespace A278221.P4648081857745296229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279350 (SequenceMachineLib.roundAway ((A249818 (n + 1) * A280497 (n + 1) : ℚ) / (A280498 (n + 1) : ℚ))).toNat

end

end A278221.P4648081857745296229

namespace A278221

/-- `A279350(A249818(n+1)*A280497(n+1)/A280498(n+1))` -/
def P4648081857745296229.Spec : Prop :=
  ∀ n, P4648081857745296229.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P3047398754397993220

`A285334(A048673(n+1))`
-/

namespace A278221.P3047398754397993220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285334 (A048673 (n + 1)).toNat

end

end A278221.P3047398754397993220

namespace A278221

/-- `A285334(A048673(n+1))` -/
def P3047398754397993220.Spec : Prop :=
  ∀ n, P3047398754397993220.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P10054452658787325088

`A285334(A108228(n+1)+1)`
-/

namespace A278221.P10054452658787325088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285334 (A108228 (n + 1) + 1).toNat

end

end A278221.P10054452658787325088

namespace A278221

/-- `A285334(A108228(n+1)+1)` -/
def P10054452658787325088.Spec : Prop :=
  ∀ n, P10054452658787325088.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P12670992563357870547

`A285334((A003961(n+1)+1)/2)`
-/

namespace A278221.P12670992563357870547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285334 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A278221.P12670992563357870547

namespace A278221

/-- `A285334((A003961(n+1)+1)/2)` -/
def P12670992563357870547.Spec : Prop :=
  ∀ n, P12670992563357870547.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P8905353231588294263

`A285334(A008619(A003961(n+1)))`
-/

namespace A278221.P8905353231588294263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285334 (A008619 (A003961 (n + 1)).toNat).toNat

end

end A278221.P8905353231588294263

namespace A278221

/-- `A285334(A008619(A003961(n+1)))` -/
def P8905353231588294263.Spec : Prop :=
  ∀ n, P8905353231588294263.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P9186520840630013353

`A181821(A383535(n+1))`
-/

namespace A278221.P9186520840630013353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A383535 (n + 1)).toNat

end

end A278221.P9186520840630013353

namespace A278221

/-- `A181821(A383535(n+1))` -/
def P9186520840630013353.Spec : Prop :=
  ∀ n, P9186520840630013353.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P15325864411836255243

`A181821(∏{e}[A122111(n+1), A000040(#)])`
-/

namespace A278221.P15325864411836255243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278221.P15325864411836255243

namespace A278221

/-- `A181821(∏{e}[A122111(n+1), A000040(#)])` -/
def P15325864411836255243.Spec : Prop :=
  ∀ n, P15325864411836255243.a n = A278221 (n + 1)

end A278221

/-!
# A278222: The least number with the same prime signature as A005940(n+1).

The programs for A278222, the canonical program `A278222.P17157169249717672707` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278222 has offset 0).

The definition of A278222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124859, A278159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278222.P17984582888025768899

`A278219(A006068(n))`
-/

namespace A278222.P17984582888025768899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A006068 n).toNat

end

end A278222.P17984582888025768899

namespace A278222

/-- `A278219(A006068(n))` -/
def P17984582888025768899.Spec : Prop :=
  ∀ n, P17984582888025768899.a n = A278222 n

end A278222

/-! ## A278222.P6568287055787349200

`A046523(A005940(1+n))`
-/

namespace A278222.P6568287055787349200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005940 (1 + n)).toNat

end

end A278222.P6568287055787349200

namespace A278222

/-- `A046523(A005940(1+n))` -/
def P6568287055787349200.Spec : Prop :=
  ∀ n, P6568287055787349200.a n = A278222 n

end A278222

/-! ## A278222.P17157169249717672707

`A124859(A278159(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278222

/-- `A124859(A278159(n))` -/
def P17157169249717672707.Spec : Prop :=
  ∀ n, P17157169249717672707.a n = A278222 n

theorem P17157169249717672707.correct : P17157169249717672707.Spec := by
  intro n
  simp only [A278222]

end A278222

/-! ## A278222.P7829466929941854523

`A181821(A246029(n))`
-/

namespace A278222.P7829466929941854523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A246029 n).toNat

end

end A278222.P7829466929941854523

namespace A278222

/-- `A181821(A246029(n))` -/
def P7829466929941854523.Spec : Prop :=
  ∀ n, P7829466929941854523.a n = A278222 n

end A278222

/-! ## A278222.P3475103994566972750

`A278217(A180200(n))`
-/

namespace A278222.P3475103994566972750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 (A180200 n).toNat

end

end A278222.P3475103994566972750

namespace A278222

/-- `A278217(A180200(n))` -/
def P3475103994566972750.Spec : Prop :=
  ∀ n, P3475103994566972750.a n = A278222 n

end A278222

/-! ## A278222.P17182718640732978995

`A286588(A246200(n))`
-/

namespace A278222.P17182718640732978995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286588 (A246200 n).toNat

end

end A278222.P17182718640732978995

namespace A278222

/-- `A286588(A246200(n))` -/
def P17182718640732978995.Spec : Prop :=
  ∀ n, P17182718640732978995.a n = A278222 n

end A278222

/-! ## A278222.P5548645690495187836

`A278219(A066194(n+1)-1)`
-/

namespace A278222.P5548645690495187836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A066194 (n + 1) - 1).toNat

end

end A278222.P5548645690495187836

namespace A278222

/-- `A278219(A066194(n+1)-1)` -/
def P5548645690495187836.Spec : Prop :=
  ∀ n, P5548645690495187836.a n = A278222 n

end A278222

/-! ## A278222.P6856575485968858068

`A278535(A145342(n+1)-1)`
-/

namespace A278222.P6856575485968858068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278535 (A145342 (n + 1) - 1).toNat

end

end A278222.P6856575485968858068

namespace A278222

/-- `A278535(A145342(n+1)-1)` -/
def P6856575485968858068.Spec : Prop :=
  ∀ n, P6856575485968858068.a n = A278222 n

end A278222

/-! ## A278222.P15808315709927453465

`A286601(A193231(n))`
-/

namespace A278222.P15808315709927453465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A193231 n).toNat

end

end A278222.P15808315709927453465

namespace A278222

/-- `A286601(A193231(n))` -/
def P15808315709927453465.Spec : Prop :=
  ∀ n, P15808315709927453465.a n = A278222 n

end A278222

/-! ## A278222.P10777013049027263691

`A286580(A233276(n))`
-/

namespace A278222.P10777013049027263691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286580 (A233276 n).toNat

end

end A278222.P10777013049027263691

namespace A278222

/-- `A286580(A233276(n))` -/
def P10777013049027263691.Spec : Prop :=
  ∀ n, P10777013049027263691.a n = A278222 n

end A278222

/-! ## A278222.P6847642467803784233

`A278502(A279344(n))`
-/

namespace A278222.P6847642467803784233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278502 (A279344 n).toNat

end

end A278222.P6847642467803784233

namespace A278222

/-- `A278502(A279344(n))` -/
def P6847642467803784233.Spec : Prop :=
  ∀ n, P6847642467803784233.a n = A278222 n

end A278222

/-! ## A278222.P18205261604588911074

`A286601(A234613(2*n)/2)`
-/

namespace A278222.P18205261604588911074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (SequenceMachineLib.roundAway ((A234613 (2 * n) : ℚ) / 2)).toNat

end

end A278222.P18205261604588911074

namespace A278222

/-- `A286601(A234613(2*n)/2)` -/
def P18205261604588911074.Spec : Prop :=
  ∀ n, P18205261604588911074.a n = A278222 n

end A278222

/-! ## A278222.P623161817472238088

`A286598(A153141(n))`
-/

namespace A278222.P623161817472238088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A153141 n).toNat

end

end A278222.P623161817472238088

namespace A278222

/-- `A286598(A153141(n))` -/
def P623161817472238088.Spec : Prop :=
  ∀ n, P623161817472238088.a n = A278222 n

end A278222

/-! ## A278222.P5977174263382251267

`A286596(A153142(n))`
-/

namespace A278222.P5977174263382251267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A153142 n).toNat

end

end A278222.P5977174263382251267

namespace A278222

/-- `A286596(A153142(n))` -/
def P5977174263382251267.Spec : Prop :=
  ∀ n, P5977174263382251267.a n = A278222 n

end A278222

/-! ## A278222.P16403331149926925484

`A286598(A154442(A154443(n)))`
-/

namespace A278222.P16403331149926925484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A154442 (A154443 n).toNat).toNat

end

end A278222.P16403331149926925484

namespace A278222

/-- `A286598(A154442(A154443(n)))` -/
def P16403331149926925484.Spec : Prop :=
  ∀ n, P16403331149926925484.a n = A278222 n

end A278222

/-! ## A278222.P2749456601304207318

`A278524(A252753(n))`
-/

namespace A278222.P2749456601304207318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A252753 n).toNat

end

end A278222.P2749456601304207318

namespace A278222

/-- `A278524(A252753(n))` -/
def P2749456601304207318.Spec : Prop :=
  ∀ n, P2749456601304207318.a n = A278222 n

end A278222

/-! ## A278222.P7412222422379401500

`A278524(A286555(A006068(2*n)))`
-/

namespace A278222.P7412222422379401500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A286555 (A006068 (2 * n)).toNat).toNat

end

end A278222.P7412222422379401500

namespace A278222

/-- `A278524(A286555(A006068(2*n)))` -/
def P7412222422379401500.Spec : Prop :=
  ∀ n, P7412222422379401500.a n = A278222 n

end A278222

/-! ## A278222.P5505836808434375187

`A286631(A254103(n))`
-/

namespace A278222.P5505836808434375187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286631 (A254103 n).toNat

end

end A278222.P5505836808434375187

namespace A278222

/-- `A286631(A254103(n))` -/
def P5505836808434375187.Spec : Prop :=
  ∀ n, P5505836808434375187.a n = A278222 n

end A278222

/-! ## A278222.P2875180493515206812

`A290091(A005836(n+1))`
-/

namespace A278222.P2875180493515206812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A005836 (n + 1)).toNat

end

end A278222.P2875180493515206812

namespace A278222

/-- `A290091(A005836(n+1))` -/
def P2875180493515206812.Spec : Prop :=
  ∀ n, P2875180493515206812.a n = A278222 n

end A278222

/-! ## A278222.P13024271091097357195

`A290091(lt[A290092(n), 2])`
-/

namespace A278222.P13024271091097357195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A278222.P13024271091097357195

namespace A278222

/-- `A290091(lt[A290092(n), 2])` -/
def P13024271091097357195.Spec : Prop :=
  ∀ n, P13024271091097357195.a n = A278222 n

end A278222

/-!
# A278223: Least number with the same prime signature as the n-th odd number: a(n) = A046523(2n-1).

The programs for A278223, the canonical program `A278223.P16809219306814208596` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278223 has offset 1).

The definition of A278223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278223.P16809219306814208596

`A046523(2*n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278223

/-- `A046523(2*n+1)` -/
def P16809219306814208596.Spec : Prop :=
  ∀ n, P16809219306814208596.a n = A278223 (n + 1)

theorem P16809219306814208596.correct : P16809219306814208596.Spec := by
  intro n
  simp only [A278223, Nat.add_sub_cancel]

end A278223

/-! ## A278223.P4473619037377272536

`A046523(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278223.P4473619037377272536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 * (n + 1) - 1)

end

end A278223.P4473619037377272536

namespace A278223

/-- `A046523(2*(n+1)-1)` -/
def P4473619037377272536.Spec : Prop :=
  ∀ n, P4473619037377272536.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P829378114413605228

`A278222(A244153(n+1))`
-/

namespace A278223.P829378114413605228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A244153 (n + 1)).toNat

end

end A278223.P829378114413605228

namespace A278223

/-- `A278222(A244153(n+1))` -/
def P829378114413605228.Spec : Prop :=
  ∀ n, P829378114413605228.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P8923284928429024985

`A278531(A245611(n+1))`
-/

namespace A278223.P8923284928429024985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A245611 (n + 1)).toNat

end

end A278223.P8923284928429024985

namespace A278223

/-- `A278531(A245611(n+1))` -/
def P8923284928429024985.Spec : Prop :=
  ∀ n, P8923284928429024985.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P12606958934117104739

`A336158(Δ[n²])`
-/

namespace A278223.P12606958934117104739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278223.P12606958934117104739

namespace A278223

/-- `A336158(Δ[n²])` -/
def P12606958934117104739.Spec : Prop :=
  ∀ n, P12606958934117104739.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P17551666425439991485

`A336158(2*n+1)%(n+2)`
-/

namespace A278223.P17551666425439991485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336158 (2 * n + 1)) (n + 2 : ℤ)

end

end A278223.P17551666425439991485

namespace A278223

/-- `A336158(2*n+1)%(n+2)` -/
def P17551666425439991485.Spec : Prop :=
  ∀ n, P17551666425439991485.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P5030536373076416469

`A025487(A101296(record[xor(1, n)]))`
-/

namespace A278223.P5030536373076416469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A278223.P5030536373076416469

namespace A278223

/-- `A025487(A101296(record[xor(1, n)]))` -/
def P5030536373076416469.Spec : Prop :=
  ∀ n, P5030536373076416469.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P619497935609717854

`A025487(A101296(2*n+1))`
-/

namespace A278223.P619497935609717854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (2 * n + 1)).toNat

end

end A278223.P619497935609717854

namespace A278223

/-- `A025487(A101296(2*n+1))` -/
def P619497935609717854.Spec : Prop :=
  ∀ n, P619497935609717854.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P18279701509190912813

`gcd(A175564(n), A336158(A004277(n)+1))`
-/

namespace A278223.P18279701509190912813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175564 n) (A336158 (A004277 n + 1).toNat)

end

end A278223.P18279701509190912813

namespace A278223

/-- `gcd(A175564(n), A336158(A004277(n)+1))` -/
def P18279701509190912813.Spec : Prop :=
  ∀ n, (P18279701509190912813.a n : ℤ) = A278223 (n + 1)

end A278223

/-! ## A278223.P7089075454258660471

`and(1, A119859(n+2))*A336158(2*n+1)`
-/

namespace A278223.P7089075454258660471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A119859 (n + 2)) * A336158 (2 * n + 1)

end

end A278223.P7089075454258660471

namespace A278223

/-- `and(1, A119859(n+2))*A336158(2*n+1)` -/
def P7089075454258660471.Spec : Prop :=
  ∀ n, P7089075454258660471.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P14541636345423596695

`A278237(A264983(n))`
-/

namespace A278223.P14541636345423596695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (A264983 n).toNat

end

end A278223.P14541636345423596695

namespace A278223

/-- `A278237(A264983(n))` -/
def P14541636345423596695.Spec : Prop :=
  ∀ n, P14541636345423596695.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P2991616468385255015

`sqrt(A278254(2*n+1))`
-/

namespace A278223.P2991616468385255015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (2 * n + 1) : ℝ)

end

end A278223.P2991616468385255015

namespace A278223

/-- `sqrt(A278254(2*n+1))` -/
def P2991616468385255015.Spec : Prop :=
  ∀ n, P2991616468385255015.a n = (A278223 (n + 1) : ℝ)

end A278223

/-! ## A278223.P8413884867570630085

`A069877(A037916(2*n+1))`
-/

namespace A278223.P8413884867570630085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A037916 (2 * n + 1)).toNat

end

end A278223.P8413884867570630085

namespace A278223

/-- `A069877(A037916(2*n+1))` -/
def P8413884867570630085.Spec : Prop :=
  ∀ n, P8413884867570630085.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P17132384344360141700

`A051444(A083262(2*n+1))`
-/

namespace A278223.P17132384344360141700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A083262 (2 * n + 1)).toNat

end

end A278223.P17132384344360141700

namespace A278223

/-- `A051444(A083262(2*n+1))` -/
def P17132384344360141700.Spec : Prop :=
  ∀ n, P17132384344360141700.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P1408479204370547483

`A083260(A089247(2*n+1))`
-/

namespace A278223.P1408479204370547483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (A089247 (2 * n + 1)).toNat

end

end A278223.P1408479204370547483

namespace A278223

/-- `A083260(A089247(2*n+1))` -/
def P1408479204370547483.Spec : Prop :=
  ∀ n, P1408479204370547483.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P4335893984147997798

`A004736(A286465(n+1))`
-/

namespace A278223.P4335893984147997798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286465 (n + 1)).toNat

end

end A278223.P4335893984147997798

namespace A278223

/-- `A004736(A286465(n+1))` -/
def P4335893984147997798.Spec : Prop :=
  ∀ n, P4335893984147997798.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P18413245756403972073

`A004736(A286362(2*n+1))`
-/

namespace A278223.P18413245756403972073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286362 (2 * n + 1)).toNat

end

end A278223.P18413245756403972073

namespace A278223

/-- `A004736(A286362(2*n+1))` -/
def P18413245756403972073.Spec : Prop :=
  ∀ n, P18413245756403972073.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P13106817482710987428

`A124859(A124859(2*n+1))`
-/

namespace A278223.P13106817482710987428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A124859 (2 * n + 1)).toNat

end

end A278223.P13106817482710987428

namespace A278223

/-- `A124859(A124859(2*n+1))` -/
def P13106817482710987428.Spec : Prop :=
  ∀ n, P13106817482710987428.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P9482373901904485684

`sqrt(A336158((2*n+1)²))`
-/

namespace A278223.P9482373901904485684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A336158 ((2 * n + 1) ^ 2) : ℝ)

end

end A278223.P9482373901904485684

namespace A278223

/-- `sqrt(A336158((2*n+1)²))` -/
def P9482373901904485684.Spec : Prop :=
  ∀ n, P9482373901904485684.a n = (A278223 (n + 1) : ℝ)

end A278223

/-! ## A278223.P16276070357486914037

`A004736(A286257(n+1))`
-/

namespace A278223.P16276070357486914037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286257 (n + 1)).toNat

end

end A278223.P16276070357486914037

namespace A278223

/-- `A004736(A286257(n+1))` -/
def P16276070357486914037.Spec : Prop :=
  ∀ n, P16276070357486914037.a n = A278223 (n + 1)

end A278223

/-!
# A278224: a(n) = A046523(A048673(n)).

The programs for A278224, the canonical program `A278224.P4475416140857214934` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278224 has offset 1).

The definition of A278224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278224.P4475416140857214934

`A046523(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A278224

/-- `A046523(A048673(n+1))` -/
def P4475416140857214934.Spec : Prop :=
  ∀ n, P4475416140857214934.a n = A278224 (n + 1)

theorem P4475416140857214934.correct : P4475416140857214934.Spec := by
  intro n
  simp only [A278224, Nat.add_sub_cancel]

end A278224

/-! ## A278224.P16519039179263698837

`A046523(A249810(2*(n+1)))`
-/

namespace A278224.P16519039179263698837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A249810 (2 * (n + 1))).toNat

end

end A278224.P16519039179263698837

namespace A278224

/-- `A046523(A249810(2*(n+1)))` -/
def P16519039179263698837.Spec : Prop :=
  ∀ n, P16519039179263698837.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P1604608961410709611

`A046523(A283464(2*(n+1)))`
-/

namespace A278224.P1604608961410709611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A283464 (2 * (n + 1))).toNat

end

end A278224.P1604608961410709611

namespace A278224

/-- `A046523(A283464(2*(n+1)))` -/
def P1604608961410709611.Spec : Prop :=
  ∀ n, P1604608961410709611.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P4235247835679986630

`A046523(A243501(n+1)/2)`
-/

namespace A278224.P4235247835679986630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A278224.P4235247835679986630

namespace A278224

/-- `A046523(A243501(n+1)/2)` -/
def P4235247835679986630.Spec : Prop :=
  ∀ n, P4235247835679986630.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P18422029365427991794

`A046523((A003961(n+1)+1)/2)`
-/

namespace A278224.P18422029365427991794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A278224.P18422029365427991794

namespace A278224

/-- `A046523((A003961(n+1)+1)/2)` -/
def P18422029365427991794.Spec : Prop :=
  ∀ n, P18422029365427991794.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P15606439944380487864

`A278223(A245447(n+1))`
-/

namespace A278224.P15606439944380487864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A245447 (n + 1)).toNat

end

end A278224.P15606439944380487864

namespace A278224

/-- `A278223(A245447(n+1))` -/
def P15606439944380487864.Spec : Prop :=
  ∀ n, P15606439944380487864.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P8850050335164134661

`A278223(A048673(A048673(A048673(A064216(n+1)))))`
-/

namespace A278224.P8850050335164134661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A048673 (A048673 (A048673 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A278224.P8850050335164134661

namespace A278224

/-- `A278223(A048673(A048673(A048673(A064216(n+1)))))` -/
def P8850050335164134661.Spec : Prop :=
  ∀ n, P8850050335164134661.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P5527728445723805727

`A046523(A266646(2*(n+1))/2)`
-/

namespace A278224.P5527728445723805727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A266646 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278224.P5527728445723805727

namespace A278224

/-- `A046523(A266646(2*(n+1))/2)` -/
def P5527728445723805727.Spec : Prop :=
  ∀ n, P5527728445723805727.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P17105733526914367525

`A046523(A032742(A003961(n+1)+1))`
-/

namespace A278224.P17105733526914367525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A032742 (A003961 (n + 1) + 1).toNat).toNat

end

end A278224.P17105733526914367525

namespace A278224

/-- `A046523(A032742(A003961(n+1)+1))` -/
def P17105733526914367525.Spec : Prop :=
  ∀ n, P17105733526914367525.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P7427438295773309160

`A046523(A032742(A266646(2*(n+1))))`
-/

namespace A278224.P7427438295773309160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A032742 (A266646 (2 * (n + 1))).toNat).toNat

end

end A278224.P7427438295773309160

namespace A278224

/-- `A046523(A032742(A266646(2*(n+1))))` -/
def P7427438295773309160.Spec : Prop :=
  ∀ n, P7427438295773309160.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P12873400310748399300

`A046523(A003961(A283464(n+2+n)))`
-/

namespace A278224.P12873400310748399300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003961 (A283464 (n + 2 + n)).toNat).toNat

end

end A278224.P12873400310748399300

namespace A278224

/-- `A046523(A003961(A283464(n+2+n)))` -/
def P12873400310748399300.Spec : Prop :=
  ∀ n, P12873400310748399300.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P10724150624106284469

`A286250(A245447(A245447(A064216(n+1))))`
-/

namespace A278224.P10724150624106284469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286250 (A245447 (A245447 (A064216 (n + 1)).toNat).toNat).toNat

end

end A278224.P10724150624106284469

namespace A278224

/-- `A286250(A245447(A245447(A064216(n+1))))` -/
def P10724150624106284469.Spec : Prop :=
  ∀ n, P10724150624106284469.a n = A278224 (n + 1)

end A278224

/-!
# A278225: Filter-sequence for factorial base (cycles in A060117/A060118-permutations): Least number with the same prime signature as A275725.

The programs for A278225, there is no canonical definition to state claims against.
-/

/-! ## A278225.P2925892156616213163

`A046523(A275725(n))`
-/

namespace A278225.P2925892156616213163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A275725 n).toNat

end

end A278225.P2925892156616213163

/-! ## A278225.P7776997863683729426

`A290096(A060119(n))`
-/

namespace A278225.P7776997863683729426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290096 (A060119 n).toNat

end

end A278225.P7776997863683729426

/-! ## A278225.P1013565348743714799

`A290096(A060120(n))`
-/

namespace A278225.P1013565348743714799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290096 (A060120 n).toNat

end

end A278225.P1013565348743714799

/-! ## A278225.P6332400937003289728

`A046523(2*A275807(n))`
-/

namespace A278225.P6332400937003289728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (2 * A275807 n).toNat

end

end A278225.P6332400937003289728

/-! ## A278225.P10439017935584130574

`A278523(2*A275807(n))`
-/

namespace A278225.P10439017935584130574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (2 * A275807 n).toNat

end

end A278225.P10439017935584130574

/-! ## A278225.P2199050075991083349

`A278525(7*A275807(n))`
-/

namespace A278225.P2199050075991083349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (7 * A275807 n).toNat

end

end A278225.P2199050075991083349

/-! ## A278225.P12643470703788136195

`A278523(lcm(2, A275725(n)))`
-/

namespace A278225.P12643470703788136195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (Int.lcm 2 (A275725 n))

end

end A278225.P12643470703788136195

/-! ## A278225.P10479073350135071125

`A046523(A005843(A275807(n)))`
-/

namespace A278225.P10479073350135071125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005843 (A275807 n).toNat).toNat

end

end A278225.P10479073350135071125

/-!
# A278226: Filter-sequence for primorial base: least number with the same prime signature as A276086(n).

The programs for A278226, there is no canonical definition to state claims against.
-/

/-! ## A278226.P14461492764368505067

`A046523(A276086(n))`
-/

namespace A278226.P14461492764368505067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276086 n).toNat

end

end A278226.P14461492764368505067

/-! ## A278226.P10353631545097882359

`A181821(A328835(n))`
-/

namespace A278226.P10353631545097882359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A328835 n).toNat

end

end A278226.P10353631545097882359

/-! ## A278226.P12582325908369592390

`A278222(A277022(n))`
-/

namespace A278226.P12582325908369592390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277022 n).toNat

end

end A278226.P12582325908369592390

/-! ## A278226.P12686586175945741948

`A069877(A049345(n))`
-/

namespace A278226.P12686586175945741948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A049345 n).toNat

end

end A278226.P12686586175945741948

/-! ## A278226.P11493453058044054956

`A292586(A328571(n))*A336158(A328572(n))`
-/

namespace A278226.P11493453058044054956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (A328571 n).toNat * A336158 (A328572 n).toNat

end

end A278226.P11493453058044054956

/-! ## A278226.P7997956224874151874

`A181821(∏{e}[A276086(n), A000040(#)])`
-/

namespace A278226.P7997956224874151874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278226.P7997956224874151874

/-! ## A278226.P5181515019772797327

`A046523(A328572(n))*A292586(A346101(n))`
-/

namespace A278226.P5181515019772797327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A328572 n).toNat * A292586 (A346101 n).toNat

end

end A278226.P5181515019772797327

/-!
# A278227: Least number with the prime signature of prime(n)-1.

The programs for A278227, the canonical program `A278227.P14688174075192204745` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278227 has offset 1).

The definition of A278227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278227.P14688174075192204745

`A046523(A000040(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278227

/-- `A046523(A000040(n+1)-1)` -/
def P14688174075192204745.Spec : Prop :=
  ∀ n, P14688174075192204745.a n = A278227 (n + 1)

theorem P14688174075192204745.correct : P14688174075192204745.Spec := by
  intro n
  simp only [A278227, Nat.add_sub_cancel]

end A278227

/-! ## A278227.P8211746851740156244

`A046523(record[A037225(n)])`
-/

namespace A278227.P8211746851740156244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P8211746851740156244

namespace A278227

/-- `A046523(record[A037225(n)])` -/
def P8211746851740156244.Spec : Prop :=
  ∀ n, P8211746851740156244.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P4108924208459726400

`A046523(A006093(n+1))`
-/

namespace A278227.P4108924208459726400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A006093 (n + 1)).toNat

end

end A278227.P4108924208459726400

namespace A278227

/-- `A046523(A006093(n+1))` -/
def P4108924208459726400.Spec : Prop :=
  ∀ n, P4108924208459726400.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P17856759467407712202

`A277906(A000040(n+1))`
-/

namespace A278227.P17856759467407712202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A000040 (n + 1)).toNat

end

end A278227.P17856759467407712202

namespace A278227

/-- `A277906(A000040(n+1))` -/
def P17856759467407712202.Spec : Prop :=
  ∀ n, P17856759467407712202.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P10162369098648725417

`A277906(A006005(n+1))`
-/

namespace A278227.P10162369098648725417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A006005 (n + 1)).toNat

end

end A278227.P10162369098648725417

namespace A278227

/-- `A277906(A006005(n+1))` -/
def P10162369098648725417.Spec : Prop :=
  ∀ n, P10162369098648725417.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P4580029088788490985

`A277906(A008578(n+2))`
-/

namespace A278227.P4580029088788490985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A008578 (n + 2)).toNat

end

end A278227.P4580029088788490985

namespace A278227

/-- `A277906(A008578(n+2))` -/
def P4580029088788490985.Spec : Prop :=
  ∀ n, P4580029088788490985.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P16553842888181573045

`A277906(A075643(n+2))`
-/

namespace A278227.P16553842888181573045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A075643 (n + 2)).toNat

end

end A278227.P16553842888181573045

namespace A278227

/-- `A277906(A075643(n+2))` -/
def P16553842888181573045.Spec : Prop :=
  ∀ n, P16553842888181573045.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P325318510502079565

`A277906(A182986(n+2))`
-/

namespace A278227.P325318510502079565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (A182986 (n + 2)).toNat

end

end A278227.P325318510502079565

namespace A278227

/-- `A277906(A182986(n+2))` -/
def P325318510502079565.Spec : Prop :=
  ∀ n, P325318510502079565.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P1275064776562394251

`A046523(record[A000010(n+1)])`
-/

namespace A278227.P1275064776562394251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P1275064776562394251

namespace A278227

/-- `A046523(record[A000010(n+1)])` -/
def P1275064776562394251.Spec : Prop :=
  ∀ n, P1275064776562394251.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P16073839031720712694

`A046523(record[A002322(n+1)])`
-/

namespace A278227.P16073839031720712694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P16073839031720712694

namespace A278227

/-- `A046523(record[A002322(n+1)])` -/
def P16073839031720712694.Spec : Prop :=
  ∀ n, P16073839031720712694.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P1707203753734358619

`A046523(record[A173557(n+1)])`
-/

namespace A278227.P1707203753734358619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P1707203753734358619

namespace A278227

/-- `A046523(record[A173557(n+1)])` -/
def P1707203753734358619.Spec : Prop :=
  ∀ n, P1707203753734358619.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P17365062902313292776

`A278523(record[A000010(n+1)])`
-/

namespace A278227.P17365062902313292776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P17365062902313292776

namespace A278227

/-- `A278523(record[A000010(n+1)])` -/
def P17365062902313292776.Spec : Prop :=
  ∀ n, P17365062902313292776.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P11379464218911931230

`A277906(record[A006530(n+2)])`
-/

namespace A278227.P11379464218911931230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P11379464218911931230

namespace A278227

/-- `A277906(record[A006530(n+2)])` -/
def P11379464218911931230.Spec : Prop :=
  ∀ n, P11379464218911931230.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P14431501446732623178

`A277906(record[A014963(n+2)])`
-/

namespace A278227.P14431501446732623178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P14431501446732623178

namespace A278227

/-- `A277906(record[A014963(n+2)])` -/
def P14431501446732623178.Spec : Prop :=
  ∀ n, P14431501446732623178.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P5528431066802332643

`A277906(record[A020639(n+2)])`
-/

namespace A278227.P5528431066802332643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278227.P5528431066802332643

namespace A278227

/-- `A277906(record[A020639(n+2)])` -/
def P5528431066802332643.Spec : Prop :=
  ∀ n, P5528431066802332643.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P13946244980949880988

`A278523(A000040(n+1)-1)`
-/

namespace A278227.P13946244980949880988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A000040 (n + 1) - 1).toNat

end

end A278227.P13946244980949880988

namespace A278227

/-- `A278523(A000040(n+1)-1)` -/
def P13946244980949880988.Spec : Prop :=
  ∀ n, P13946244980949880988.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P12436111864184198397

`A046523(A008578(n+2)-1)`
-/

namespace A278227.P12436111864184198397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A008578 (n + 2) - 1).toNat

end

end A278227.P12436111864184198397

namespace A278227

/-- `A046523(A008578(n+2)-1)` -/
def P12436111864184198397.Spec : Prop :=
  ∀ n, P12436111864184198397.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P6810803719474909931

`A046523(A008864(n+1)-2)`
-/

namespace A278227.P6810803719474909931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A008864 (n + 1) - 2).toNat

end

end A278227.P6810803719474909931

namespace A278227

/-- `A046523(A008864(n+1)-2)` -/
def P6810803719474909931.Spec : Prop :=
  ∀ n, P6810803719474909931.a n = A278227 (n + 1)

theorem P6810803719474909931.correct : P6810803719474909931.Spec := by
  intro n
  simp only [A278227, Nat.add_sub_cancel, A278227.P6810803719474909931.a, A278227.P14688174075192204745.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278227

/-! ## A278227.P5050970028871583871

`A046523(A028815(n+1)-2)`
-/

namespace A278227.P5050970028871583871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A028815 (n + 1) - 2).toNat

end

end A278227.P5050970028871583871

namespace A278227

/-- `A046523(A028815(n+1)-2)` -/
def P5050970028871583871.Spec : Prop :=
  ∀ n, P5050970028871583871.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P13651788717038196725

`A046523(A182986(n+2)-1)`
-/

namespace A278227.P13651788717038196725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A182986 (n + 2) - 1).toNat

end

end A278227.P13651788717038196725

namespace A278227

/-- `A046523(A182986(n+2)-1)` -/
def P13651788717038196725.Spec : Prop :=
  ∀ n, P13651788717038196725.a n = A278227 (n + 1)

end A278227

/-!
# A278228: Least number with the prime signature of prime(n)+1.

The programs for A278228, the canonical program `A278228.P13770631218730897616` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278228 has offset 1).

The definition of A278228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278228.P13770631218730897616

`A046523(A000040(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278228

/-- `A046523(A000040(n+1)+1)` -/
def P13770631218730897616.Spec : Prop :=
  ∀ n, P13770631218730897616.a n = A278228 (n + 1)

theorem P13770631218730897616.correct : P13770631218730897616.Spec := by
  intro n
  simp only [A278228, Nat.add_sub_cancel]

end A278228

/-! ## A278228.P1544105380869372190

`A276528(A296375(n+1))`
-/

namespace A278228.P1544105380869372190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (A296375 (n + 1)).toNat

end

end A278228.P1544105380869372190

namespace A278228

/-- `A276528(A296375(n+1))` -/
def P1544105380869372190.Spec : Prop :=
  ∀ n, P1544105380869372190.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P246805772433299813

`A046523(p?[comp[n²]]+1)`
-/

namespace A278228.P246805772433299813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A278228.P246805772433299813

namespace A278228

/-- `A046523(p?[comp[n²]]+1)` -/
def P246805772433299813.Spec : Prop :=
  ∀ n, P246805772433299813.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P1993586970005395311

`A046523(A008864(n+1))`
-/

namespace A278228.P1993586970005395311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A008864 (n + 1)).toNat

end

end A278228.P1993586970005395311

namespace A278228

/-- `A046523(A008864(n+1))` -/
def P1993586970005395311.Spec : Prop :=
  ∀ n, P1993586970005395311.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P4527305164035939992

`A046523(A028815(n+1))`
-/

namespace A278228.P4527305164035939992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A028815 (n + 1)).toNat

end

end A278228.P4527305164035939992

namespace A278228

/-- `A046523(A028815(n+1))` -/
def P4527305164035939992.Spec : Prop :=
  ∀ n, P4527305164035939992.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P8576654067145988404

`A276528(A000040(n+1))`
-/

namespace A278228.P8576654067145988404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (A000040 (n + 1)).toNat

end

end A278228.P8576654067145988404

namespace A278228

/-- `A276528(A000040(n+1))` -/
def P8576654067145988404.Spec : Prop :=
  ∀ n, P8576654067145988404.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P11438283702452987157

`A276528(A008578(n+2))`
-/

namespace A278228.P11438283702452987157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (A008578 (n + 2)).toNat

end

end A278228.P11438283702452987157

namespace A278228

/-- `A276528(A008578(n+2))` -/
def P11438283702452987157.Spec : Prop :=
  ∀ n, P11438283702452987157.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P505807276755761478

`A046523(A299763(n+2))`
-/

namespace A278228.P505807276755761478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A299763 (n + 2)).toNat

end

end A278228.P505807276755761478

namespace A278228

/-- `A046523(A299763(n+2))` -/
def P505807276755761478.Spec : Prop :=
  ∀ n, P505807276755761478.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P11698651621847479007

`A276528(A182986(n+2))`
-/

namespace A278228.P11698651621847479007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (A182986 (n + 2)).toNat

end

end A278228.P11698651621847479007

namespace A278228

/-- `A276528(A182986(n+2))` -/
def P11698651621847479007.Spec : Prop :=
  ∀ n, P11698651621847479007.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P14085136335611059920

`A046523(record[A037225(n)+2])`
-/

namespace A278228.P14085136335611059920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P14085136335611059920

namespace A278228

/-- `A046523(record[A037225(n)+2])` -/
def P14085136335611059920.Spec : Prop :=
  ∀ n, P14085136335611059920.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P5007492286882167810

`A276528(record[A006530(n+2)])`
-/

namespace A278228.P5007492286882167810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P5007492286882167810

namespace A278228

/-- `A276528(record[A006530(n+2)])` -/
def P5007492286882167810.Spec : Prop :=
  ∀ n, P5007492286882167810.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P10396780429786143797

`A276528(record[A020639(n+2)])`
-/

namespace A278228.P10396780429786143797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P10396780429786143797

namespace A278228

/-- `A276528(record[A020639(n+2)])` -/
def P10396780429786143797.Spec : Prop :=
  ∀ n, P10396780429786143797.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P7360616439517364418

`A278523(A000040(n+1)+1)`
-/

namespace A278228.P7360616439517364418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A000040 (n + 1) + 1).toNat

end

end A278228.P7360616439517364418

namespace A278228

/-- `A278523(A000040(n+1)+1)` -/
def P7360616439517364418.Spec : Prop :=
  ∀ n, P7360616439517364418.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P8001450928804379034

`A046523(A006093(n+1)+2)`
-/

namespace A278228.P8001450928804379034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A006093 (n + 1) + 2).toNat

end

end A278228.P8001450928804379034

namespace A278228

/-- `A046523(A006093(n+1)+2)` -/
def P8001450928804379034.Spec : Prop :=
  ∀ n, P8001450928804379034.a n = A278228 (n + 1)

theorem P8001450928804379034.correct : P8001450928804379034.Spec := by
  intro n
  simp only [A278228, Nat.add_sub_cancel, A278228.P8001450928804379034.a, A278228.P13770631218730897616.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278228

/-! ## A278228.P2701993376566225528

`A046523(A008578(n+2)+1)`
-/

namespace A278228.P2701993376566225528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A008578 (n + 2) + 1).toNat

end

end A278228.P2701993376566225528

namespace A278228

/-- `A046523(A008578(n+2)+1)` -/
def P2701993376566225528.Spec : Prop :=
  ∀ n, P2701993376566225528.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P9081228185868042747

`A046523(A182986(n+2)+1)`
-/

namespace A278228.P9081228185868042747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A182986 (n + 2) + 1).toNat

end

end A278228.P9081228185868042747

namespace A278228

/-- `A046523(A182986(n+2)+1)` -/
def P9081228185868042747.Spec : Prop :=
  ∀ n, P9081228185868042747.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P14008670591297290596

`A046523(record[A000010(n+1)+2])`
-/

namespace A278228.P14008670591297290596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P14008670591297290596

namespace A278228

/-- `A046523(record[A000010(n+1)+2])` -/
def P14008670591297290596.Spec : Prop :=
  ∀ n, P14008670591297290596.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P8141303575741096206

`A046523(record[A002322(n+1)+2])`
-/

namespace A278228.P8141303575741096206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P8141303575741096206

namespace A278228

/-- `A046523(record[A002322(n+1)+2])` -/
def P8141303575741096206.Spec : Prop :=
  ∀ n, P8141303575741096206.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P13386741736802667146

`A046523(record[A006530(n+2)+1])`
-/

namespace A278228.P13386741736802667146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P13386741736802667146

namespace A278228

/-- `A046523(record[A006530(n+2)+1])` -/
def P13386741736802667146.Spec : Prop :=
  ∀ n, P13386741736802667146.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P2374412784485967826

`A046523(record[A173557(n+1)+2])`
-/

namespace A278228.P2374412784485967826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278228.P2374412784485967826

namespace A278228

/-- `A046523(record[A173557(n+1)+2])` -/
def P2374412784485967826.Spec : Prop :=
  ∀ n, P2374412784485967826.a n = A278228 (n + 1)

end A278228

/-!
# A278229: Least number with the prime signature of 2*prime(n) - 1.

The programs for A278229, the canonical program `A278229.P3746984698967317917` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278229 has offset 1).

The definition of A278229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278229.P3746984698967317917

`A046523(2*A000040(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278229

/-- `A046523(2*A000040(n+1)-1)` -/
def P3746984698967317917.Spec : Prop :=
  ∀ n, P3746984698967317917.a n = A278229 (n + 1)

theorem P3746984698967317917.correct : P3746984698967317917.Spec := by
  intro n
  simp only [A278229, Nat.add_sub_cancel]

end A278229

/-! ## A278229.P7281429924884826177

`A278223(Δ[A007504(n)])`
-/

namespace A278229.P7281429924884826177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (n + 1) - f1 n).toNat

end

end A278229.P7281429924884826177

namespace A278229

/-- `A278223(Δ[A007504(n)])` -/
def P7281429924884826177.Spec : Prop :=
  ∀ n, P7281429924884826177.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P897199177776726182

`A278223(A000040(n+1))`
-/

namespace A278229.P897199177776726182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A000040 (n + 1)).toNat

end

end A278229.P897199177776726182

namespace A278229

/-- `A278223(A000040(n+1))` -/
def P897199177776726182.Spec : Prop :=
  ∀ n, P897199177776726182.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P11518954559514938360

`A278223(A008578(n+2))`
-/

namespace A278229.P11518954559514938360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A008578 (n + 2)).toNat

end

end A278229.P11518954559514938360

namespace A278229

/-- `A278223(A008578(n+2))` -/
def P11518954559514938360.Spec : Prop :=
  ∀ n, P11518954559514938360.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P10458698799347177911

`A278223(A175787(n+2))`
-/

namespace A278229.P10458698799347177911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A175787 (n + 2)).toNat

end

end A278229.P10458698799347177911

namespace A278229

/-- `A278223(A175787(n+2))` -/
def P10458698799347177911.Spec : Prop :=
  ∀ n, P10458698799347177911.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P15319750403651511981

`A278223(abs(Δ[A022837(n)]))`
-/

namespace A278229.P15319750403651511981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 |f1 (n + 1) - f1 n|.toNat

end

end A278229.P15319750403651511981

namespace A278229

/-- `A278223(abs(Δ[A022837(n)]))` -/
def P15319750403651511981.Spec : Prop :=
  ∀ n, P15319750403651511981.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P9824826062291290913

`A278223(sqrt(A001248(n+1)))`
-/

namespace A278229.P9824826062291290913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A278229.P9824826062291290913

namespace A278229

/-- `A278223(sqrt(A001248(n+1)))` -/
def P9824826062291290913.Spec : Prop :=
  ∀ n, P9824826062291290913.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P9039960728710853830

`A278223(∑[A054541(n+1)])`
-/

namespace A278229.P9039960728710853830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278229.P9039960728710853830

namespace A278229

/-- `A278223(∑[A054541(n+1)])` -/
def P9039960728710853830.Spec : Prop :=
  ∀ n, P9039960728710853830.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P9493421796841556963

`A278223(record[A006530(n+2)])`
-/

namespace A278229.P9493421796841556963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278229.P9493421796841556963

namespace A278229

/-- `A278223(record[A006530(n+2)])` -/
def P9493421796841556963.Spec : Prop :=
  ∀ n, P9493421796841556963.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P4998538737803933724

`A278223(record[A020639(n+2)])`
-/

namespace A278229.P4998538737803933724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278229.P4998538737803933724

namespace A278229

/-- `A278223(record[A020639(n+2)])` -/
def P4998538737803933724.Spec : Prop :=
  ∀ n, P4998538737803933724.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P10568312768147717018

`A278223(A008864(n+1)-1)`
-/

namespace A278229.P10568312768147717018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A008864 (n + 1) - 1).toNat

end

end A278229.P10568312768147717018

namespace A278229

/-- `A278223(A008864(n+1)-1)` -/
def P10568312768147717018.Spec : Prop :=
  ∀ n, P10568312768147717018.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P9441996391978082214

`A278223(A028815(n+1)-1)`
-/

namespace A278229.P9441996391978082214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A028815 (n + 1) - 1).toNat

end

end A278229.P9441996391978082214

namespace A278229

/-- `A278223(A028815(n+1)-1)` -/
def P9441996391978082214.Spec : Prop :=
  ∀ n, P9441996391978082214.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P16269113379423136992

`A278223(A175216(n+1)-1)`
-/

namespace A278229.P16269113379423136992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A175216 (n + 1) - 1).toNat

end

end A278229.P16269113379423136992

namespace A278229

/-- `A278223(A175216(n+1)-1)` -/
def P16269113379423136992.Spec : Prop :=
  ∀ n, P16269113379423136992.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P15802940513545149281

`A336158(A161344(n+2)-1)`
-/

namespace A278229.P15802940513545149281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A161344 (n + 2) - 1).toNat

end

end A278229.P15802940513545149281

namespace A278229

/-- `A336158(A161344(n+2)-1)` -/
def P15802940513545149281.Spec : Prop :=
  ∀ n, P15802940513545149281.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P13593226165002251729

`A278223(A299763(n+2)-1)`
-/

namespace A278229.P13593226165002251729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A299763 (n + 2) - 1).toNat

end

end A278229.P13593226165002251729

namespace A278229

/-- `A278223(A299763(n+2)-1)` -/
def P13593226165002251729.Spec : Prop :=
  ∀ n, P13593226165002251729.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P744610689670743049

`A336158(2*A006093(n+1)+1)`
-/

namespace A278229.P744610689670743049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (2 * A006093 (n + 1) + 1).toNat

end

end A278229.P744610689670743049

namespace A278229

/-- `A336158(2*A006093(n+1)+1)` -/
def P744610689670743049.Spec : Prop :=
  ∀ n, P744610689670743049.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P3242891684781473261

`A336158(2*A000040(n+1)-1)`
-/

namespace A278229.P3242891684781473261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (2 * A000040 (n + 1) - 1).toNat

end

end A278229.P3242891684781473261

namespace A278229

/-- `A336158(2*A000040(n+1)-1)` -/
def P3242891684781473261.Spec : Prop :=
  ∀ n, P3242891684781473261.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P10131192382324965705

`A278223(eq[1, A001222(n+1)]+1)`
-/

namespace A278229.P10131192382324965705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A278229.P10131192382324965705

namespace A278229

/-- `A278223(eq[1, A001222(n+1)]+1)` -/
def P10131192382324965705.Spec : Prop :=
  ∀ n, P10131192382324965705.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P1352207486901298185

`A278223(eq[2, A000005(n+1)]+1)`
-/

namespace A278229.P1352207486901298185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A278229.P1352207486901298185

namespace A278229

/-- `A278223(eq[2, A000005(n+1)]+1)` -/
def P1352207486901298185.Spec : Prop :=
  ∀ n, P1352207486901298185.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P7390860332085026374

`A336158(A006093(n+1)+A006093(n+1)+1)`
-/

namespace A278229.P7390860332085026374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A006093 (n + 1) + (A006093 (n + 1) + 1)).toNat

end

end A278229.P7390860332085026374

namespace A278229

/-- `A336158(A006093(n+1)+A006093(n+1)+1)` -/
def P7390860332085026374.Spec : Prop :=
  ∀ n, P7390860332085026374.a n = A278229 (n + 1)

end A278229

/-!
# A278230: Least number with the prime signature of 2*prime(n) + 1.

The programs for A278230, the canonical program `A278230.P13727141212484867497` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278230 has offset 1).

The definition of A278230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A072055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278230.P13727141212484867497

`A046523(A072055(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278230

/-- `A046523(A072055(n+1))` -/
def P13727141212484867497.Spec : Prop :=
  ∀ n, P13727141212484867497.a n = A278230 (n + 1)

theorem P13727141212484867497.correct : P13727141212484867497.Spec := by
  intro n
  simp only [A278230, Nat.add_sub_cancel]

end A278230

/-! ## A278230.P1402733240175096559

`A046523(1+2*A000040(n+1))`
-/

namespace A278230.P1402733240175096559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + 2 * A000040 (n + 1)).toNat

end

end A278230.P1402733240175096559

namespace A278230

/-- `A046523(1+2*A000040(n+1))` -/
def P1402733240175096559.Spec : Prop :=
  ∀ n, P1402733240175096559.a n = A278230 (n + 1)

theorem P1402733240175096559.correct : P1402733240175096559.Spec := by
  intro n
  simp only [A278230, Nat.add_sub_cancel, A278230.P1402733240175096559.a, A278230.P13727141212484867497.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046523, A046523.P3407874444772092792.a, A072055, A072055.P6834316123461544049.a, A089241, A089241.P4698073971912800570.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A008864, A008864.P9177617808325052279.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278230

/-! ## A278230.P2653464862114861162

`A278223(A008864(n+1))`
-/

namespace A278230.P2653464862114861162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A008864 (n + 1)).toNat

end

end A278230.P2653464862114861162

namespace A278230

/-- `A278223(A008864(n+1))` -/
def P2653464862114861162.Spec : Prop :=
  ∀ n, P2653464862114861162.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P10953200854403206410

`A278223(A028815(n+1))`
-/

namespace A278230.P10953200854403206410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A028815 (n + 1)).toNat

end

end A278230.P10953200854403206410

namespace A278230

/-- `A278223(A028815(n+1))` -/
def P10953200854403206410.Spec : Prop :=
  ∀ n, P10953200854403206410.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P2815494447746601161

`A278223(A175216(n+1))`
-/

namespace A278230.P2815494447746601161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A175216 (n + 1)).toNat

end

end A278230.P2815494447746601161

namespace A278230

/-- `A278223(A175216(n+1))` -/
def P2815494447746601161.Spec : Prop :=
  ∀ n, P2815494447746601161.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P9278472640005839034

`A336158(A166496(n+1))`
-/

namespace A278230.P9278472640005839034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A166496 (n + 1)).toNat

end

end A278230.P9278472640005839034

namespace A278230

/-- `A336158(A166496(n+1))` -/
def P9278472640005839034.Spec : Prop :=
  ∀ n, P9278472640005839034.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P836345953231733677

`A278223(A299763(n+2))`
-/

namespace A278230.P836345953231733677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A299763 (n + 2)).toNat

end

end A278230.P836345953231733677

namespace A278230

/-- `A278223(A299763(n+2))` -/
def P836345953231733677.Spec : Prop :=
  ∀ n, P836345953231733677.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P6986386739503076756

`A278223(Δ[A007504(n)]+1)`
-/

namespace A278230.P6986386739503076756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (n + 1) - f1 n + 1).toNat

end

end A278230.P6986386739503076756

namespace A278230

/-- `A278223(Δ[A007504(n)]+1)` -/
def P6986386739503076756.Spec : Prop :=
  ∀ n, P6986386739503076756.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P15323889718427991957

`A278223(A000040(n+1)+1)`
-/

namespace A278230.P15323889718427991957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A000040 (n + 1) + 1).toNat

end

end A278230.P15323889718427991957

namespace A278230

/-- `A278223(A000040(n+1)+1)` -/
def P15323889718427991957.Spec : Prop :=
  ∀ n, P15323889718427991957.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P16668907085542963419

`A278223(A008578(n+2)+1)`
-/

namespace A278230.P16668907085542963419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A008578 (n + 2) + 1).toNat

end

end A278230.P16668907085542963419

namespace A278230

/-- `A278223(A008578(n+2)+1)` -/
def P16668907085542963419.Spec : Prop :=
  ∀ n, P16668907085542963419.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P1450866841629903164

`A278223(sqrt(A001248(n+1))+1)`
-/

namespace A278230.P1450866841629903164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + 1)).toNat

end

end A278230.P1450866841629903164

namespace A278230

/-- `A278223(sqrt(A001248(n+1))+1)` -/
def P1450866841629903164.Spec : Prop :=
  ∀ n, P1450866841629903164.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P5846778963947548881

`A278223(∑[A054541(n+1)]+1)`
-/

namespace A278230.P5846778963947548881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A278230.P5846778963947548881

namespace A278230

/-- `A278223(∑[A054541(n+1)]+1)` -/
def P5846778963947548881.Spec : Prop :=
  ∀ n, P5846778963947548881.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P1580266843316941004

`A278223(record[A006530(n+2)+1])`
-/

namespace A278230.P1580266843316941004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278230.P1580266843316941004

namespace A278230

/-- `A278223(record[A006530(n+2)+1])` -/
def P1580266843316941004.Spec : Prop :=
  ∀ n, P1580266843316941004.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P6147117941458786111

`A278223(record[A020639(n+2)+1])`
-/

namespace A278230.P6147117941458786111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278230.P6147117941458786111

namespace A278230

/-- `A278223(record[A020639(n+2)+1])` -/
def P6147117941458786111.Spec : Prop :=
  ∀ n, P6147117941458786111.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P3679715094119884838

`A336158(2*A000040(n+1)+1)`
-/

namespace A278230.P3679715094119884838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (2 * A000040 (n + 1) + 1).toNat

end

end A278230.P3679715094119884838

namespace A278230

/-- `A336158(2*A000040(n+1)+1)` -/
def P3679715094119884838.Spec : Prop :=
  ∀ n, P3679715094119884838.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P14634255258205403416

`A336158(lcm(2, A000040(n+1))+1)`
-/

namespace A278230.P14634255258205403416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.lcm 2 (A000040 (n + 1)) + 1)

end

end A278230.P14634255258205403416

namespace A278230

/-- `A336158(lcm(2, A000040(n+1))+1)` -/
def P14634255258205403416.Spec : Prop :=
  ∀ n, P14634255258205403416.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P12589663123105307403

`A278223(eq[1, A001222(n+1)]+2)`
-/

namespace A278230.P12589663123105307403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A278230.P12589663123105307403

namespace A278230

/-- `A278223(eq[1, A001222(n+1)]+2)` -/
def P12589663123105307403.Spec : Prop :=
  ∀ n, P12589663123105307403.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P7149810724783905610

`A278223(eq[2, A000005(n+1)]+2)`
-/

namespace A278230.P7149810724783905610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A278230.P7149810724783905610

namespace A278230

/-- `A278223(eq[2, A000005(n+1)]+2)` -/
def P7149810724783905610.Spec : Prop :=
  ∀ n, P7149810724783905610.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P3040069512144582081

`A278223(A000203(A008578(n+2)))`
-/

namespace A278230.P3040069512144582081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A000203 (A008578 (n + 2)).toNat).toNat

end

end A278230.P3040069512144582081

namespace A278230

/-- `A278223(A000203(A008578(n+2)))` -/
def P3040069512144582081.Spec : Prop :=
  ∀ n, P3040069512144582081.a n = A278230 (n + 1)

end A278230

/-! ## A278230.P4185634409938350288

`A336158(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A278230.P4185634409938350288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A278230.P4185634409938350288

namespace A278230

/-- `A336158(A000040(n+1)+A000040(n+1)+1)` -/
def P4185634409938350288.Spec : Prop :=
  ∀ n, P4185634409938350288.a n = A278230 (n + 1)

end A278230

/-!
# A278231: Least number with the same prime signature as the n-th number in Blue-code: a(n) = A046523(A193231(n)).

The programs for A278231, there is no canonical definition to state claims against.
-/

/-! ## A278231.P10685859153057880192

`A046523(A193231(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278231.P10685859153057880192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A193231 (n + 1)).toNat

end

end A278231.P10685859153057880192

/-! ## A278231.P7648841051539296168

`A046523(A234613(2*(n+1))/2)`
-/

namespace A278231.P7648841051539296168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A234613 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A278231.P7648841051539296168

/-! ## A278231.P13794995334345730486

`A350062(A366263(n+1))`
-/

namespace A278231.P13794995334345730486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (A366263 (n + 1)).toNat

end

end A278231.P13794995334345730486

/-! ## A278231.P6691894601329580468

`A071364(A193231(n+1)%A326908(n))`
-/

namespace A278231.P6691894601329580468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.tmod (A193231 (n + 1)) (A326908 n)).toNat

end

end A278231.P6691894601329580468

/-!
# A278232: a(n) = Least number with the prime signature of A259934(n).

The programs for A278232, there is no canonical definition to state claims against.
-/

/-! ## A278232.P2831343554139712254

`A046523(A259934(n+1))`
-/

namespace A278232.P2831343554139712254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A259934 (n + 1)).toNat

end

end A278232.P2831343554139712254

/-! ## A278232.P18287415693128881485

`A089247(A071364(∑[A259935(n+1)]))`
-/

namespace A278232.P18287415693128881485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278232.P18287415693128881485

/-! ## A278232.P4797865249367041157

`A046523(∑[A259935(n+1)])`
-/

namespace A278232.P4797865249367041157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278232.P4797865249367041157

/-! ## A278232.P16421386573816383

`A046523(record[A262679(n+2)])`
-/

namespace A278232.P16421386573816383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278232.P16421386573816383

/-! ## A278232.P12807337469800028494

`A046523(A261103(n+1)+A261089(n+1))`
-/

namespace A278232.P12807337469800028494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A261103 (n + 1) + A261089 (n + 1)).toNat

end

end A278232.P12807337469800028494

/-! ## A278232.P16221313665862560007

`A046523(A263255(∑[n+1]))`
-/

namespace A278232.P16221313665862560007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A263255 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278232.P16221313665862560007

/-! ## A278232.P6945212958485700293

`A046523(A263256(∑[n+2]))`
-/

namespace A278232.P6945212958485700293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A263256 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278232.P6945212958485700293

/-!
# A278233: Filter-sequence for GF(2)[X]-factorization: sequence that gives the least natural number with the same prime signature that (0, 1)-polynomial encoded in the binary expansion of n has when it is factored over GF(2).

The programs for A278233, there is no canonical definition to state claims against.
-/

/-! ## A278233.P8488329411577891109

`A046523(A091203(n+1))`
-/

namespace A278233.P8488329411577891109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A091203 (n + 1)).toNat

end

end A278233.P8488329411577891109

/-! ## A278233.P1043480075738589596

`A046523(A091205(n+1))`
-/

namespace A278233.P1043480075738589596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A091205 (n + 1)).toNat

end

end A278233.P1043480075738589596

/-! ## A278233.P17884435287395058196

`A046523(A235042(n+1))`
-/

namespace A278233.P17884435287395058196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A235042 (n + 1)).toNat

end

end A278233.P17884435287395058196

/-! ## A278233.P16033325103200260865

`A286384(A003188(n+1))`
-/

namespace A278233.P16033325103200260865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A003188 (n + 1)).toNat

end

end A278233.P16033325103200260865

/-! ## A278233.P8649791506630624560

`A286383(A006068(n+1))`
-/

namespace A278233.P8649791506630624560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A006068 (n + 1)).toNat

end

end A278233.P8649791506630624560

/-! ## A278233.P13088966076177457572

`A286384(A234612(n+1))`
-/

namespace A278233.P13088966076177457572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A234612 (n + 1)).toNat

end

end A278233.P13088966076177457572

/-! ## A278233.P11107425720055830534

`A286383(A234613(n+1))`
-/

namespace A278233.P11107425720055830534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A234613 (n + 1)).toNat

end

end A278233.P11107425720055830534

/-! ## A278233.P620996773212638494

`A286383(A292600(2*(n+1)))`
-/

namespace A278233.P620996773212638494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A292600 (2 * (n + 1))).toNat

end

end A278233.P620996773212638494

/-! ## A278233.P5652076773645990143

`A286383(A193231(A003188(A193231(n+1))))`
-/

namespace A278233.P5652076773645990143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A193231 (A003188 (A193231 (n + 1)).toNat).toNat).toNat

end

end A278233.P5652076773645990143

/-! ## A278233.P10422343676944124078

`sqrt(A278238(n+1))`
-/

namespace A278233.P10422343676944124078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278238 (n + 1) : ℝ)

end

end A278233.P10422343676944124078

/-!
# A278234: Filter-sequence for factorial base (digit slopes): Least number with the same prime signature as A275734(n).

The programs for A278234, there is no canonical definition to state claims against.
-/

/-! ## A278234.P9095069733562185271

`A278235(A225901(n))`
-/

namespace A278234.P9095069733562185271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278235 (A225901 n).toNat

end

end A278234.P9095069733562185271

/-! ## A278234.P2678746064192749069

`A046523(A275734(n))`
-/

namespace A278234.P2678746064192749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A275734 n).toNat

end

end A278234.P2678746064192749069

/-! ## A278234.P14070798562199596712

`A278235(A255411(n)-(A153880(n)+n))`
-/

namespace A278234.P14070798562199596712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278235 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A278234.P14070798562199596712

/-! ## A278234.P12154136089171700372

`A278235(A255411(n)-n-A153880(n))`
-/

namespace A278234.P12154136089171700372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278235 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A278234.P12154136089171700372

/-! ## A278234.P14579068786381295217

`A278235(A343042(∑[n+3])-n)`
-/

namespace A278234.P14579068786381295217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278235 (A343042 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)).toNat

end

end A278234.P14579068786381295217

/-!
# A278235: Filter-sequence for factorial base (digit levels): Least number with the same prime signature as A275735(n).

The programs for A278235, there is no canonical definition to state claims against.
-/

/-! ## A278235.P1442797969542564591

`A278234(A225901(n))`
-/

namespace A278235.P1442797969542564591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 (A225901 n).toNat

end

end A278235.P1442797969542564591

/-! ## A278235.P17095255412897891155

`A046523(A275735(n))`
-/

namespace A278235.P17095255412897891155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A275735 n).toNat

end

end A278235.P17095255412897891155

/-! ## A278235.P12829416427686823610

`A278236(A348138(n))`
-/

namespace A278235.P12829416427686823610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A348138 n).toNat

end

end A278235.P12829416427686823610

/-! ## A278235.P2890021704636220809

`A046523(∏{e}[A278236(n), A000040(#)])`
-/

namespace A278235.P2890021704636220809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278235.P2890021704636220809

/-! ## A278235.P15693507389800191934

`A046523(∏{e}[A278236(n), A007500(#)])`
-/

namespace A278235.P15693507389800191934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007500 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278235.P15693507389800191934

/-! ## A278235.P7293950193931381393

`A046523(∏{e}[A278236(n), A024678(#)])`
-/

namespace A278235.P7293950193931381393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024678 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278235.P7293950193931381393

/-! ## A278235.P3166975974260896581

`A046523(∏{e}[A276076(n), A000040(#)])`
-/

namespace A278235.P3166975974260896581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278235.P3166975974260896581

/-!
# A278236: Filter-sequence for factorial base (digit values): least number with the same prime signature as A276076(n).

The programs for A278236, there is no canonical definition to state claims against.
-/

/-! ## A278236.P18438500632436968152

`A046523(A276076(n))`
-/

namespace A278236.P18438500632436968152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276076 n).toNat

end

end A278236.P18438500632436968152

/-! ## A278236.P16202472521680666179

`A278226(A351576(n))`
-/

namespace A278236.P16202472521680666179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A351576 n).toNat

end

end A278236.P16202472521680666179

/-! ## A278236.P11126149604389597939

`A181821(A275735(n))`
-/

namespace A278236.P11126149604389597939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A275735 n).toNat

end

end A278236.P11126149604389597939

/-! ## A278236.P15069891503518815187

`A181821(∏{digits}[A007623(n), A052955(#)])`
-/

namespace A278236.P15069891503518815187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A052955 x).prod.toNat

end

end A278236.P15069891503518815187

/-! ## A278236.P1663524228710757765

`A278222(A277012(n))`
-/

namespace A278236.P1663524228710757765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277012 n).toNat

end

end A278236.P1663524228710757765

/-! ## A278236.P7378141855235397066

`A069877(A007623(n))`
-/

namespace A278236.P7378141855235397066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A007623 n).toNat

end

end A278236.P7378141855235397066

/-! ## A278236.P5463033318110459614

`A278226(A328770(n+1))%p?[A002522(n)]`
-/

namespace A278236.P5463033318110459614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278226 (A328770 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A278236.P5463033318110459614

/-! ## A278236.P2158039858001260940

`A278226(A328770(n+1)%A230949(n+1))`
-/

namespace A278236.P2158039858001260940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (Int.tmod (A328770 (n + 1)) (A230949 (n + 1))).toNat

end

end A278236.P2158039858001260940

/-! ## A278236.P8795003501945726214

`filter[A278226(n), A260397(#)]`
-/

namespace A278236.P8795003501945726214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A278236.P8795003501945726214

/-! ## A278236.P682475470757979793

`filter[A278226(n), A307430(#)]`
-/

namespace A278236.P682475470757979793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A278236.P682475470757979793

/-!
# A278237: a(n) = A046523(A263273(n)).

The programs for A278237, there is no canonical definition to state claims against.
-/

/-! ## A278237.P15318815198991973322

`A046523(A263273(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278237.P15318815198991973322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A263273 (n + 1)).toNat

end

end A278237.P15318815198991973322

/-! ## A278237.P6415684605142222564

`A046523(A030102(n+1)*A038500(n+1))`
-/

namespace A278237.P6415684605142222564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A030102 (n + 1) * A038500 (n + 1)).toNat

end

end A278237.P6415684605142222564

/-! ## A278237.P15472562682567703433

`A046523(lcm(A030102(n+1), A038500(n+1)))`
-/

namespace A278237.P15472562682567703433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.lcm (A030102 (n + 1)) (A038500 (n + 1)))

end

end A278237.P15472562682567703433

/-! ## A278237.P7265539998919626648

`A046523(A264965(A264965(A265369(n+1))))`
-/

namespace A278237.P7265539998919626648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A264965 (A264965 (A265369 (n + 1)).toNat).toNat).toNat

end

end A278237.P7265539998919626648

/-! ## A278237.P11023423521948564577

`A284011(n+1)^A197250(A343132(n+1))`
-/

namespace A278237.P11023423521948564577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284011 (n + 1) : ℚ) ^ (A197250 (A343132 (n + 1)).toNat : ℤ)

end

end A278237.P11023423521948564577

/-!
# A278238: a(n) = A278233(A000695(n)) = A278233(n)^2.

The programs for A278238, there is no canonical definition to state claims against.
-/

/-! ## A278238.P17938150983761636705

`A278233(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278238.P17938150983761636705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) ^ 2

end

end A278238.P17938150983761636705

/-! ## A278238.P12766052398491245997

`A278233(A000695(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278238.P12766052398491245997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A000695 (n + 1)).toNat

end

end A278238.P12766052398491245997

/-! ## A278238.P14512660718626073580

`A278254(A091203(n+1))`
-/

namespace A278238.P14512660718626073580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A091203 (n + 1)).toNat

end

end A278238.P14512660718626073580

/-! ## A278238.P15010463725600166224

`A278254(A091205(n+1))`
-/

namespace A278238.P15010463725600166224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A091205 (n + 1)).toNat

end

end A278238.P15010463725600166224

/-! ## A278238.P17475112024100781007

`A278254(A235042(n+1))`
-/

namespace A278238.P17475112024100781007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A235042 (n + 1)).toNat

end

end A278238.P17475112024100781007

/-! ## A278238.P1989645067785332030

`A286384(A003188(n+1))²`
-/

namespace A278238.P1989645067785332030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A003188 (n + 1)).toNat ^ 2

end

end A278238.P1989645067785332030

/-! ## A278238.P7640001841051686681

`A286383(A006068(n+1))²`
-/

namespace A278238.P7640001841051686681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A006068 (n + 1)).toNat ^ 2

end

end A278238.P7640001841051686681

/-! ## A278238.P4019458139748332047

`A286384(A234612(n+1))²`
-/

namespace A278238.P4019458139748332047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (A234612 (n + 1)).toNat ^ 2

end

end A278238.P4019458139748332047

/-! ## A278238.P6706276271330114416

`A286383(A234613(n+1))²`
-/

namespace A278238.P6706276271330114416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (A234613 (n + 1)).toNat ^ 2

end

end A278238.P6706276271330114416

/-! ## A278238.P1023981426475952127

`A278259(2*A278233(n+1))`
-/

namespace A278238.P1023981426475952127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (2 * A278233 (n + 1)).toNat

end

end A278238.P1023981426475952127

/-! ## A278238.P12369291735305258115

`A278254(A278233(2*n+1-n))`
-/

namespace A278238.P12369291735305258115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A278233 (2 * n + 1 - n)).toNat

end

end A278238.P12369291735305258115

/-! ## A278238.P11899578550968053775

`A278233(n+1)*A286384(A003188(n+1))`
-/

namespace A278238.P11899578550968053775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) * A286384 (A003188 (n + 1)).toNat

end

end A278238.P11899578550968053775

/-! ## A278238.P7240827852391096935

`A278233(n+1)*A286383(A006068(n+1))`
-/

namespace A278238.P7240827852391096935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) * A286383 (A006068 (n + 1)).toNat

end

end A278238.P7240827852391096935

/-! ## A278238.P6306402025119335433

`A278233(A193231(n+1))*A278233(n+1)`
-/

namespace A278238.P6306402025119335433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A193231 (n + 1)).toNat * A278233 (n + 1)

end

end A278238.P6306402025119335433

/-! ## A278238.P7428553395721681773

`A278233(n+1)*A278233(A331166(n+1))`
-/

namespace A278238.P7428553395721681773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1) * A278233 (A331166 (n + 1)).toNat

end

end A278238.P7428553395721681773

/-! ## A278238.P7738037873074780478

`A278233(n+1)^A323116(Δ[A216345(n+1)])`
-/

namespace A278238.P7738037873074780478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278233 (n + 1) : ℚ) ^ (A323116 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A278238.P7738037873074780478

/-! ## A278238.P17008972066158016362

`A000290(2*A278233(n+1)-A278233(n+1))`
-/

namespace A278238.P17008972066158016362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A278233 (n + 1) - A278233 (n + 1)).toNat

end

end A278238.P17008972066158016362

/-!
# A278239: a(n) = A278233(A277699(n)).

The programs for A278239, there is no canonical definition to state claims against.
-/

/-! ## A278239.P8246240357810722258

`A278233(A277699(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278239.P8246240357810722258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A277699 (n + 1)).toNat

end

end A278239.P8246240357810722258

/-! ## A278239.P6557779460297120214

`A278233(A277320(∑[4*n]+1))`
-/

namespace A278239.P6557779460297120214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A277320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A278239.P6557779460297120214

/-!
# A278240: Least number with the prime signature of 2^n - 1.

The programs for A278240, the canonical program `A278240.P12126906436291017831` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278240 has offset 1).

The definition of A278240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278240.P12126906436291017831

`A046523(2^(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278240

/-- `A046523(2^(n+1)-1)` -/
def P12126906436291017831.Spec : Prop :=
  ∀ n, P12126906436291017831.a n = A278240 (n + 1)

theorem P12126906436291017831.correct : P12126906436291017831.Spec := by
  intro n
  simp only [A278240, Nat.add_sub_cancel]

end A278240

/-!
# A278241: Least number with the same prime signature as the n-th partition number: a(n) = A046523(A000041(n)).

The programs for A278241, there is no canonical definition to state claims against.
-/

/-! ## A278241.P1313631039222594188

`A046523(A000041(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278241.P1313631039222594188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000041 n).toNat

end

end A278241.P1313631039222594188

/-! ## A278241.P14682822516721351682

`A181821(∏{e}[A000041(n), A000040(#)])`
-/

namespace A278241.P14682822516721351682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278241.P14682822516721351682

/-! ## A278241.P16931542471798993474

`A046523(A071364(A213598(n)))`
-/

namespace A278241.P16931542471798993474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (A213598 n).toNat).toNat

end

end A278241.P16931542471798993474

/-! ## A278241.P11659469669689584127

`A025487(A101296(∑[A002865(n)]))`
-/

namespace A278241.P11659469669689584127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278241.P11659469669689584127

/-! ## A278241.P1461609691137740322

`A278263(∑{d}[A000041(n), A304526(#)])`
-/

namespace A278241.P1461609691137740322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d).toNat

end

end A278241.P1461609691137740322

/-!
# A278242: Least number with the prime signature of 2^n + 1.

The programs for A278242, there is no canonical definition to state claims against.
-/

/-! ## A278242.P11606585322668229950

`A350063(A074845(n+1))`
-/

namespace A278242.P11606585322668229950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A074845 (n + 1)).toNat

end

end A278242.P11606585322668229950

/-! ## A278242.P18416815789336011943

`A350063(A161344(n+1))`
-/

namespace A278242.P18416815789336011943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A161344 (n + 1)).toNat

end

end A278242.P18416815789336011943

/-! ## A278242.P1298287573783369303

`A350063(A001748(n+1))`
-/

namespace A278242.P1298287573783369303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A001748 (n + 1)).toNat

end

end A278242.P1298287573783369303

/-! ## A278242.P12181731703487468203

`A350063(A063534(n+1))`
-/

namespace A278242.P12181731703487468203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A063534 (n + 1)).toNat

end

end A278242.P12181731703487468203

/-! ## A278242.P15931491710950088289

`A350063(A112773(n+2))`
-/

namespace A278242.P15931491710950088289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A112773 (n + 2)).toNat

end

end A278242.P15931491710950088289

/-! ## A278242.P1716893085898452871

`A350063(A288313(n+2))`
-/

namespace A278242.P1716893085898452871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A288313 (n + 2)).toNat

end

end A278242.P1716893085898452871

/-! ## A278242.P3480030164495318538

`A350063(A001750(n+2))`
-/

namespace A278242.P3480030164495318538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A001750 (n + 2)).toNat

end

end A278242.P3480030164495318538

/-!
# A278243: Filter-sequence for Stern polynomials: Least number with the same prime signature as A260443(n).

The programs for A278243, there is no canonical definition to state claims against.
-/

/-! ## A278243.P9879650249985056164

`A046523(A260443(n))`
-/

namespace A278243.P9879650249985056164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A260443 n).toNat

end

end A278243.P9879650249985056164

/-! ## A278243.P6991517328656372145

`A278222(A277020(n))`
-/

namespace A278243.P6991517328656372145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277020 n).toNat

end

end A278243.P6991517328656372145

/-! ## A278243.P13693520485352584750

`A046523(∑[A277197(abs(1-n))])`
-/

namespace A278243.P13693520485352584750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278243.P13693520485352584750

/-! ## A278243.P2084462867462381388

`A046523(A277330(n)*A283989(n))`
-/

namespace A278243.P2084462867462381388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A277330 n * A283989 n).toNat

end

end A278243.P2084462867462381388

/-! ## A278243.P5731918223898421539

`A046523(A284553(n)*A284554(n))`
-/

namespace A278243.P5731918223898421539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A284553 n * A284554 n).toNat

end

end A278243.P5731918223898421539

/-!
# A278244: Least number with the prime signature of the n-th centered square number (A001844(n)).

The programs for A278244, the canonical program `A278244.P9296179218065933584` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278244 has offset 0).

The definition of A278244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278244.P9296179218065933584

`A046523(A001844(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278244

/-- `A046523(A001844(n))` -/
def P9296179218065933584.Spec : Prop :=
  ∀ n, P9296179218065933584.a n = A278244 n

theorem P9296179218065933584.correct : P9296179218065933584.Spec := by
  intro n
  simp only [A278244]

end A278244

/-! ## A278244.P7080496146865610524

`A278162(2*n+1)/A006530(A278162(2*n+1))`
-/

namespace A278244.P7080496146865610524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278162 (2 * n + 1) : ℚ) / (A006530 (A278162 (2 * n + 1)).toNat : ℚ)

end

end A278244.P7080496146865610524

namespace A278244

/-- `A278162(2*n+1)/A006530(A278162(2*n+1))` -/
def P7080496146865610524.Spec : Prop :=
  ∀ n, P7080496146865610524.a n = (A278244 n : ℚ)

end A278244

/-! ## A278244.P4808236522683029663

`A051119(A278162(2*n+1))`
-/

namespace A278244.P4808236522683029663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A278162 (2 * n + 1)).toNat

end

end A278244.P4808236522683029663

namespace A278244

/-- `A051119(A278162(2*n+1))` -/
def P4808236522683029663.Spec : Prop :=
  ∀ n, P4808236522683029663.a n = A278244 n

end A278244

/-! ## A278244.P3870229155966531189

`A052126(A278162(n+1+n))`
-/

namespace A278244.P3870229155966531189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A278162 (n + 1 + n)).toNat

end

end A278244.P3870229155966531189

namespace A278244

/-- `A052126(A278162(n+1+n))` -/
def P3870229155966531189.Spec : Prop :=
  ∀ n, P3870229155966531189.a n = A278244 n

end A278244

/-! ## A278244.P10950229319316896506

`A046523(A071364(∑[4*n]+1))`
-/

namespace A278244.P10950229319316896506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A278244.P10950229319316896506

namespace A278244

/-- `A046523(A071364(∑[4*n]+1))` -/
def P10950229319316896506.Spec : Prop :=
  ∀ n, P10950229319316896506.a n = A278244 n

end A278244

/-! ## A278244.P15339751035875724265

`A025487(A101296(∑[4*n]+1))`
-/

namespace A278244.P15339751035875724265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A278244.P15339751035875724265

namespace A278244

/-- `A025487(A101296(∑[4*n]+1))` -/
def P15339751035875724265.Spec : Prop :=
  ∀ n, P15339751035875724265.a n = A278244 n

end A278244

/-! ## A278244.P78382600554254863

`A089247(A071364((n+1)*2*n+1))`
-/

namespace A278244.P78382600554254863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 ((n + 1) * (2 * n) + 1)).toNat

end

end A278244.P78382600554254863

namespace A278244

/-- `A089247(A071364((n+1)*2*n+1))` -/
def P78382600554254863.Spec : Prop :=
  ∀ n, P78382600554254863.a n = A278244 n

end A278244

/-! ## A278244.P1642013673040310235

`A278223(∑[2*n]+1)`
-/

namespace A278244.P1642013673040310235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278244.P1642013673040310235

namespace A278244

/-- `A278223(∑[2*n]+1)` -/
def P1642013673040310235.Spec : Prop :=
  ∀ n, P1642013673040310235.a n = A278244 n

end A278244

/-! ## A278244.P17361979362932752831

`A336158(∑[4*n]+1)`
-/

namespace A278244.P17361979362932752831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278244.P17361979362932752831

namespace A278244

/-- `A336158(∑[4*n]+1)` -/
def P17361979362932752831.Spec : Prop :=
  ∀ n, P17361979362932752831.a n = A278244 n

end A278244

/-! ## A278244.P14941779528242462182

`A336158(∑[A004277(2*n)])%A016969(n)`
-/

namespace A278244.P14941779528242462182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A016969 n)

end

end A278244.P14941779528242462182

namespace A278244

/-- `A336158(∑[A004277(2*n)])%A016969(n)` -/
def P14941779528242462182.Spec : Prop :=
  ∀ n, P14941779528242462182.a n = A278244 n

end A278244

/-!
# A278245: Least number with the same prime signature as the n-th Fibonacci number: a(n) = A046523(A000045(n)).

The programs for A278245, the canonical program `A278245.P2465173959509167705` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278245 has offset 1).

The definition of A278245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278245.P2465173959509167705

`A046523(A000045(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278245

/-- `A046523(A000045(n+1))` -/
def P2465173959509167705.Spec : Prop :=
  ∀ n, P2465173959509167705.a n = A278245 (n + 1)

theorem P2465173959509167705.correct : P2465173959509167705.Spec := by
  intro n
  simp only [A278245, Nat.add_sub_cancel]

end A278245

/-! ## A278245.P5073208242877174271

`A181821(∏{e}[A000045(n+1), A000040(#)])`
-/

namespace A278245.P5073208242877174271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A278245.P5073208242877174271

namespace A278245

/-- `A181821(∏{e}[A000045(n+1), A000040(#)])` -/
def P5073208242877174271.Spec : Prop :=
  ∀ n, P5073208242877174271.a n = A278245 (n + 1)

end A278245

/-!
# A278246: a(n) = least number with the same prime signature as n*(n+3)/2.

The programs for A278246, the canonical program `A278246.P6871050853620334944` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278246 has offset 1).

The definition of A278246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278246.P6871050853620334944

`A046523((n+1)*(n+4)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278246

/-- `A046523((n+1)*(n+4)/2)` -/
def P6871050853620334944.Spec : Prop :=
  ∀ n, P6871050853620334944.a n = A278246 (n + 1)

theorem P6871050853620334944.correct : P6871050853620334944.Spec := by
  intro n
  simp only [A278246, Nat.add_sub_cancel]

end A278246

/-! ## A278246.P9849506551340597315

`A025487(A101296(∑[n+2]))`
-/

namespace A278246.P9849506551340597315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P9849506551340597315

namespace A278246

/-- `A025487(A101296(∑[n+2]))` -/
def P9849506551340597315.Spec : Prop :=
  ∀ n, P9849506551340597315.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P12102710139830945364

`A089247(A071364(∑[n+1]+1+n))`
-/

namespace A278246.P12102710139830945364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)).toNat

end

end A278246.P12102710139830945364

namespace A278246

/-- `A089247(A071364(∑[n+1]+1+n))` -/
def P12102710139830945364.Spec : Prop :=
  ∀ n, P12102710139830945364.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P11248733554215655049

`A278523(A071364(∑[n+1]+n+1))`
-/

namespace A278246.P11248733554215655049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A278246.P11248733554215655049

namespace A278246

/-- `A278523(A071364(∑[n+1]+n+1))` -/
def P11248733554215655049.Spec : Prop :=
  ∀ n, P11248733554215655049.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P4183716008359484199

`sqrt(A278254(∑[n+2]))`
-/

namespace A278246.P4183716008359484199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A278246.P4183716008359484199

namespace A278246

/-- `sqrt(A278254(∑[n+2]))` -/
def P4183716008359484199.Spec : Prop :=
  ∀ n, P4183716008359484199.a n = (A278246 (n + 1) : ℝ)

end A278246

/-! ## A278246.P6002879496034266384

`A278263(A064664(∑[n+2]))`
-/

namespace A278246.P6002879496034266384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P6002879496034266384

namespace A278246

/-- `A278263(A064664(∑[n+2]))` -/
def P6002879496034266384.Spec : Prop :=
  ∀ n, P6002879496034266384.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P3490608596645141558

`A181821(A181819(∑[n+2]))`
-/

namespace A278246.P3490608596645141558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P3490608596645141558

namespace A278246

/-- `A181821(A181819(∑[n+2]))` -/
def P3490608596645141558.Spec : Prop :=
  ∀ n, P3490608596645141558.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P17489245371229745574

`A278231(A193231(∑[n+2]))`
-/

namespace A278246.P17489245371229745574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P17489245371229745574

namespace A278246

/-- `A278231(A193231(∑[n+2]))` -/
def P17489245371229745574.Spec : Prop :=
  ∀ n, P17489245371229745574.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P12310849192468686500

`A278237(A263273(∑[n+2]))`
-/

namespace A278246.P12310849192468686500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (A263273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P12310849192468686500

namespace A278246

/-- `A278237(A263273(∑[n+2]))` -/
def P12310849192468686500.Spec : Prop :=
  ∀ n, P12310849192468686500.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P9626963537029759038

`A278264(A064413(∑[n+2]))`
-/

namespace A278246.P9626963537029759038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P9626963537029759038

namespace A278246

/-- `A278264(A064413(∑[n+2]))` -/
def P9626963537029759038.Spec : Prop :=
  ∀ n, P9626963537029759038.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P13074488287255255419

`A278233(A235041(∑[n+2]))`
-/

namespace A278246.P13074488287255255419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A235041 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P13074488287255255419

namespace A278246

/-- `A278233(A235041(∑[n+2]))` -/
def P13074488287255255419.Spec : Prop :=
  ∀ n, P13074488287255255419.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P771447527543255638

`A278224(A064216(∑[n+2]))`
-/

namespace A278246.P771447527543255638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A064216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P771447527543255638

namespace A278246

/-- `A278224(A064216(∑[n+2]))` -/
def P771447527543255638.Spec : Prop :=
  ∀ n, P771447527543255638.a n = A278246 (n + 1)

end A278246

/-!
# A278247: a(n) = least number with the same prime signature as n + (n+1)^2.

The programs for A278247, the canonical program `A278247.P8748823670060240895` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278247 has offset 0).

The definition of A278247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278247.P8748823670060240895

`A046523(A028387(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278247

/-- `A046523(A028387(n))` -/
def P8748823670060240895.Spec : Prop :=
  ∀ n, P8748823670060240895.a n = A278247 n

theorem P8748823670060240895.correct : P8748823670060240895.Spec := by
  intro n
  simp only [A278247]

end A278247

/-! ## A278247.P7843408236784869319

`A046523(A071364((n+1)²+n))`
-/

namespace A278247.P7843408236784869319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 ((n + 1) ^ 2 + n)).toNat

end

end A278247.P7843408236784869319

namespace A278247

/-- `A046523(A071364((n+1)²+n))` -/
def P7843408236784869319.Spec : Prop :=
  ∀ n, P7843408236784869319.a n = A278247 n

end A278247

/-! ## A278247.P6735336564525391008

`A025487(A101296((n+1)²+n))`
-/

namespace A278247.P6735336564525391008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 ((n + 1) ^ 2 + n)).toNat

end

end A278247.P6735336564525391008

namespace A278247

/-- `A025487(A101296((n+1)²+n))` -/
def P6735336564525391008.Spec : Prop :=
  ∀ n, P6735336564525391008.a n = A278247 n

end A278247

/-! ## A278247.P14299932295421282367

`A089247(A071364(∑[2*n]+2*n+1))`
-/

namespace A278247.P14299932295421282367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n + 1)).toNat

end

end A278247.P14299932295421282367

namespace A278247

/-- `A089247(A071364(∑[2*n]+2*n+1))` -/
def P14299932295421282367.Spec : Prop :=
  ∀ n, P14299932295421282367.a n = A278247 n

end A278247

/-! ## A278247.P5790380748508827454

`A278223(∑[n+1])`
-/

namespace A278247.P5790380748508827454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278247.P5790380748508827454

namespace A278247

/-- `A278223(∑[n+1])` -/
def P5790380748508827454.Spec : Prop :=
  ∀ n, P5790380748508827454.a n = A278247 n

end A278247

/-! ## A278247.P13923759203129099138

`A275468((n+1)²+n)`
-/

namespace A278247.P13923759203129099138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 ((n + 1) ^ 2 + n)

end

end A278247.P13923759203129099138

namespace A278247

/-- `A275468((n+1)²+n)` -/
def P13923759203129099138.Spec : Prop :=
  ∀ n, P13923759203129099138.a n = A278247 n

end A278247

/-! ## A278247.P9446267439946843932

`A336158((n+1)²+n)`
-/

namespace A278247.P9446267439946843932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 ((n + 1) ^ 2 + n)

end

end A278247.P9446267439946843932

namespace A278247

/-- `A336158((n+1)²+n)` -/
def P9446267439946843932.Spec : Prop :=
  ∀ n, P9446267439946843932.a n = A278247 n

end A278247

/-! ## A278247.P2283107739005251422

`A046523((n+1)²+n)`
-/

namespace A278247.P2283107739005251422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1) ^ 2 + n)

end

end A278247.P2283107739005251422

namespace A278247

/-- `A046523((n+1)²+n)` -/
def P2283107739005251422.Spec : Prop :=
  ∀ n, P2283107739005251422.a n = A278247 n

end A278247

/-! ## A278247.P17326092484989649321

`A278540((n+1)²+n)`
-/

namespace A278247.P17326092484989649321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 ((n + 1) ^ 2 + n)

end

end A278247.P17326092484989649321

namespace A278247

/-- `A278540((n+1)²+n)` -/
def P17326092484989649321.Spec : Prop :=
  ∀ n, P17326092484989649321.a n = A278247 n

end A278247

/-! ## A278247.P6118871676743920161

`A016017(A018892((n+1)²+n))`
-/

namespace A278247.P6118871676743920161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (A018892 ((n + 1) ^ 2 + n)).toNat

end

end A278247.P6118871676743920161

namespace A278247

/-- `A016017(A018892((n+1)²+n))` -/
def P6118871676743920161.Spec : Prop :=
  ∀ n, P6118871676743920161.a n = A278247 n

end A278247

/-!
# A278248: Least number with the same prime signature as the n-th number in Perrin sequence: a(n) = A046523(A001608(n)), a(1) = 0.

The programs for A278248, there is no canonical definition to state claims against.
-/

/-! ## A278248.P7536642217636403623

`∑{d}[A001608(n), A294787(#)]`
-/

namespace A278248.P7536642217636403623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294787 d

end

end A278248.P7536642217636403623

/-! ## A278248.P16201868963885140663

`∑{d}[A001608(n), A294788(#)]`
-/

namespace A278248.P16201868963885140663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294788 d

end

end A278248.P16201868963885140663

/-! ## A278248.P3516001902949444887

`∑{d}[A141038(n)+A078027(n), A294788(#)]`
-/

namespace A278248.P3516001902949444887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n + A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294788 d

end

end A278248.P3516001902949444887

/-! ## A278248.P4155723489356816

`∑{d}[A000931(n)+2*A182097(n), A294788(#)]`
-/

namespace A278248.P4155723489356816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + 2 * A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294788 d

end

end A278248.P4155723489356816

/-! ## A278248.P6282179048210230857

`∑{d}[A276477(n+3)-A007307(n+3), A294787(#)]`
-/

namespace A278248.P6282179048210230857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (n + 3) - A007307 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294787 d

end

end A278248.P6282179048210230857

/-!
# A278249: Least number with the prime signature of A000123(n), the number of partitions of 2n into powers of 2.

The programs for A278249, the canonical program `A278249.P17845378470646488298` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278249 has offset 0).

The definition of A278249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278249.P17845378470646488298

`A046523(A000123(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278249

/-- `A046523(A000123(n))` -/
def P17845378470646488298.Spec : Prop :=
  ∀ n, P17845378470646488298.a n = A278249 n

theorem P17845378470646488298.correct : P17845378470646488298.Spec := by
  intro n
  simp only [A278249]

end A278249

/-! ## A278249.P16329267548364726178

`A046523(∑[A008645(n)])`
-/

namespace A278249.P16329267548364726178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278249.P16329267548364726178

namespace A278249

/-- `A046523(∑[A008645(n)])` -/
def P16329267548364726178.Spec : Prop :=
  ∀ n, P16329267548364726178.a n = A278249 n

end A278249

/-! ## A278249.P16399918123920797687

`A046523(∑[A018819(n)])`
-/

namespace A278249.P16399918123920797687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278249.P16399918123920797687

namespace A278249

/-- `A046523(∑[A018819(n)])` -/
def P16399918123920797687.Spec : Prop :=
  ∀ n, P16399918123920797687.a n = A278249 n

end A278249

/-! ## A278249.P9737930173808174829

`A278523(∑[A008645(n)])`
-/

namespace A278249.P9737930173808174829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278249.P9737930173808174829

namespace A278249

/-- `A278523(∑[A008645(n)])` -/
def P9737930173808174829.Spec : Prop :=
  ∀ n, P9737930173808174829.a n = A278249 n

end A278249

/-! ## A278249.P537942394874510348

`A278523(∑[A018819(n)])`
-/

namespace A278249.P537942394874510348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278249.P537942394874510348

namespace A278249

/-- `A278523(∑[A018819(n)])` -/
def P537942394874510348.Spec : Prop :=
  ∀ n, P537942394874510348.a n = A278249 n

end A278249

/-! ## A278249.P9676276255278621300

`A046523(A018819(2*n))`
-/

namespace A278249.P9676276255278621300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A018819 (2 * n)).toNat

end

end A278249.P9676276255278621300

namespace A278249

/-- `A046523(A018819(2*n))` -/
def P9676276255278621300.Spec : Prop :=
  ∀ n, P9676276255278621300.a n = A278249 n

end A278249

/-!
# A278250: Least number with the prime signature of the n-th Wedderburn-Etherington number (A001190).

The programs for A278250, there is no canonical definition to state claims against.
-/

/-! ## A278250.P16273023740708516947

`A046523(A001190(n+1))`
-/

namespace A278250.P16273023740708516947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001190 (n + 1)).toNat

end

end A278250.P16273023740708516947

/-! ## A278250.P7540388837648373614

`A046523(A241555(∑[n]))`
-/

namespace A278250.P7540388837648373614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A241555 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278250.P7540388837648373614

/-! ## A278250.P14916620589925693916

`A046523(∑[A036657(n)]+1)`
-/

namespace A278250.P14916620589925693916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A278250.P14916620589925693916

/-! ## A278250.P1630661897145334920

`A046523(A292085(∑[n+2]))`
-/

namespace A278250.P1630661897145334920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A292085 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278250.P1630661897145334920

/-! ## A278250.P16253719825462665520

`A046523(A299038(∑[n+3]))`
-/

namespace A278250.P16253719825462665520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A299038 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278250.P16253719825462665520

/-!
# A278251: Least number with the prime signature of the n-th central polygonal number.

The programs for A278251, the canonical program `A278251.P15108954614653064395` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278251 has offset 0).

The definition of A278251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278251.P15108954614653064395

`A046523(A002061(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278251

/-- `A046523(A002061(n))` -/
def P15108954614653064395.Spec : Prop :=
  ∀ n, P15108954614653064395.a n = A278251 n

theorem P15108954614653064395.correct : P15108954614653064395.Spec := by
  intro n
  simp only [A278251]

end A278251

/-! ## A278251.P5529395441742311312

`A278260(or(1, comp[2*(n+1)]))`
-/

namespace A278251.P5529395441742311312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A278251.P5529395441742311312

namespace A278251

/-- `A278260(or(1, comp[2*(n+1)]))` -/
def P5529395441742311312.Spec : Prop :=
  ∀ n, P5529395441742311312.a n = A278251 n

end A278251

/-! ## A278251.P7540206020827646043

`A278223(C(n, 2)+1)`
-/

namespace A278251.P7540206020827646043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (Nat.choose n 2 + 1)

end

end A278251.P7540206020827646043

namespace A278251

/-- `A278223(C(n, 2)+1)` -/
def P7540206020827646043.Spec : Prop :=
  ∀ n, P7540206020827646043.a n = A278251 n

end A278251

/-! ## A278251.P574090158879762747

`A278223(∑[abs(1-n)])`
-/

namespace A278251.P574090158879762747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278251.P574090158879762747

namespace A278251

/-- `A278223(∑[abs(1-n)])` -/
def P574090158879762747.Spec : Prop :=
  ∀ n, P574090158879762747.a n = A278251 n

end A278251

/-! ## A278251.P13496921041747956249

`A275468((1-n)²+n)`
-/

namespace A278251.P13496921041747956249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275468 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A278251.P13496921041747956249

namespace A278251

/-- `A275468((1-n)²+n)` -/
def P13496921041747956249.Spec : Prop :=
  ∀ n, P13496921041747956249.a n = A278251 n

end A278251

/-! ## A278251.P13726597685304736820

`A336158((1-n)²+n)`
-/

namespace A278251.P13726597685304736820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A278251.P13726597685304736820

namespace A278251

/-- `A336158((1-n)²+n)` -/
def P13726597685304736820.Spec : Prop :=
  ∀ n, P13726597685304736820.a n = A278251 n

end A278251

/-! ## A278251.P11880452073994432612

`gcd(A000038(n), A278223(A152947(n+1)))`
-/

namespace A278251.P11880452073994432612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A278223 (A152947 (n + 1)).toNat)

end

end A278251.P11880452073994432612

namespace A278251

/-- `gcd(A000038(n), A278223(A152947(n+1)))` -/
def P11880452073994432612.Spec : Prop :=
  ∀ n, (P11880452073994432612.a n : ℤ) = A278251 n

end A278251

/-! ## A278251.P3969329214027967004

`A278223(A152947(n+1))+A000038(A278223(n+1))`
-/

namespace A278251.P3969329214027967004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A152947 (n + 1)).toNat + A000038 (A278223 (n + 1)).toNat

end

end A278251.P3969329214027967004

namespace A278251

/-- `A278223(A152947(n+1))+A000038(A278223(n+1))` -/
def P3969329214027967004.Spec : Prop :=
  ∀ n, P3969329214027967004.a n = A278251 n

end A278251

/-! ## A278251.P12007538284999224888

`A046523((1-n)²+n)`
-/

namespace A278251.P12007538284999224888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A278251.P12007538284999224888

namespace A278251

/-- `A046523((1-n)²+n)` -/
def P12007538284999224888.Spec : Prop :=
  ∀ n, P12007538284999224888.a n = A278251 n

theorem P12007538284999224888.correct : P12007538284999224888.Spec := by
  intro n
  simp only [A278251, Nat.add_sub_cancel, A278251.P12007538284999224888.a, A278251.P15108954614653064395.a, A002061, A002061.P13016590216674735232.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278251

/-! ## A278251.P4577666985980039863

`A124859(A124859((1-n)²+n))`
-/

namespace A278251.P4577666985980039863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A124859 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat).toNat

end

end A278251.P4577666985980039863

namespace A278251

/-- `A124859(A124859((1-n)²+n))` -/
def P4577666985980039863.Spec : Prop :=
  ∀ n, P4577666985980039863.a n = A278251 n

end A278251

/-!
# A278252: Least number with the prime signature of the n-th tetrahedral number, binomial(n+2,3).

The programs for A278252, the canonical program `A278252.P13602657929554570656` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278252 has offset 1).

The definition of A278252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278252.P17997048673305072733

`A046523(C(n+3, 3))`
-/

namespace A278252.P17997048673305072733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (n + 3) 3)

end

end A278252.P17997048673305072733

namespace A278252

/-- `A046523(C(n+3, 3))` -/
def P17997048673305072733.Spec : Prop :=
  ∀ n, P17997048673305072733.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P13602657929554570656

`A046523(A000292(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278252

/-- `A046523(A000292(n+1))` -/
def P13602657929554570656.Spec : Prop :=
  ∀ n, P13602657929554570656.a n = A278252 (n + 1)

theorem P13602657929554570656.correct : P13602657929554570656.Spec := by
  intro n
  simp only [A278252, Nat.add_sub_cancel]

end A278252

/-! ## A278252.P8044153123349910263

`A278218(A167614(n+2))`
-/

namespace A278252.P8044153123349910263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 (A167614 (n + 2)).toNat

end

end A278252.P8044153123349910263

namespace A278252

/-- `A278218(A167614(n+2))` -/
def P8044153123349910263.Spec : Prop :=
  ∀ n, P8044153123349910263.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P14259133005675566799

`A278218(∑[n+4]+2)`
-/

namespace A278252.P14259133005675566799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278252.P14259133005675566799

namespace A278252

/-- `A278218(∑[n+4]+2)` -/
def P14259133005675566799.Spec : Prop :=
  ∀ n, P14259133005675566799.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P550204268874282913

`A025487(A101296(C(n+3, 3)))`
-/

namespace A278252.P550204268874282913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (Nat.choose (n + 3) 3)).toNat

end

end A278252.P550204268874282913

namespace A278252

/-- `A025487(A101296(C(n+3, 3)))` -/
def P550204268874282913.Spec : Prop :=
  ∀ n, P550204268874282913.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P10954575052269778777

`A025487(A101296(∑[∑[n+1]]))`
-/

namespace A278252.P10954575052269778777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278252.P10954575052269778777

namespace A278252

/-- `A025487(A101296(∑[∑[n+1]]))` -/
def P10954575052269778777.Spec : Prop :=
  ∀ n, P10954575052269778777.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P12909330025227819306

`A046523(A071364(∑[∑[n+1]]))`
-/

namespace A278252.P12909330025227819306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278252.P12909330025227819306

namespace A278252

/-- `A046523(A071364(∑[∑[n+1]]))` -/
def P12909330025227819306.Spec : Prop :=
  ∀ n, P12909330025227819306.a n = A278252 (n + 1)

end A278252

/-! ## A278252.P6288187619742012066

`A046523(A097272(∑[∑[n+1]]))`
-/

namespace A278252.P6288187619742012066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097272 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278252.P6288187619742012066

namespace A278252

/-- `A046523(A097272(∑[∑[n+1]]))` -/
def P6288187619742012066.Spec : Prop :=
  ∀ n, P6288187619742012066.a n = A278252 (n + 1)

end A278252

/-!
# A278253: Least number with the prime signature of the n-th triangular number.

The programs for A278253, the canonical program `A278253.P9301696300299043387` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278253 has offset 1).

The definition of A278253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278253.P9301696300299043387

`A046523(A000217(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278253

/-- `A046523(A000217(n+1))` -/
def P9301696300299043387.Spec : Prop :=
  ∀ n, P9301696300299043387.a n = A278253 (n + 1)

theorem P9301696300299043387.correct : P9301696300299043387.Spec := by
  intro n
  simp only [A278253, Nat.add_sub_cancel]

end A278253

/-! ## A278253.P2455511792963852313

`A181821(∏{e}[∑[n+1], A000040(#)])`
-/

namespace A278253.P2455511792963852313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A278253.P2455511792963852313

namespace A278253

/-- `A181821(∏{e}[∑[n+1], A000040(#)])` -/
def P2455511792963852313.Spec : Prop :=
  ∀ n, P2455511792963852313.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P2748722875569053777

`A025487(A101296(∑[n+1]))`
-/

namespace A278253.P2748722875569053777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P2748722875569053777

namespace A278253

/-- `A025487(A101296(∑[n+1]))` -/
def P2748722875569053777.Spec : Prop :=
  ∀ n, P2748722875569053777.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P7358112371569328427

`A046523(A071364(∑[n+1]))`
-/

namespace A278253.P7358112371569328427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P7358112371569328427

namespace A278253

/-- `A046523(A071364(∑[n+1]))` -/
def P7358112371569328427.Spec : Prop :=
  ∀ n, P7358112371569328427.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P9525494124446088853

`A089247(A071364(∑[n]+1+n))`
-/

namespace A278253.P9525494124446088853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)).toNat

end

end A278253.P9525494124446088853

namespace A278253

/-- `A089247(A071364(∑[n]+1+n))` -/
def P9525494124446088853.Spec : Prop :=
  ∀ n, P9525494124446088853.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P1925812534129467748

`A278523(A071364(∑[n]+n+1))`
-/

namespace A278253.P1925812534129467748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A278253.P1925812534129467748

namespace A278253

/-- `A278523(A071364(∑[n]+n+1))` -/
def P1925812534129467748.Spec : Prop :=
  ∀ n, P1925812534129467748.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P17586706068911356434

`A046523(A097272(∑[n+1]))`
-/

namespace A278253.P17586706068911356434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097272 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P17586706068911356434

namespace A278253

/-- `A046523(A097272(∑[n+1]))` -/
def P17586706068911356434.Spec : Prop :=
  ∀ n, P17586706068911356434.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P6356338363186972952

`A046523(∑[n+1])`
-/

namespace A278253.P6356338363186972952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278253.P6356338363186972952

namespace A278253

/-- `A046523(∑[n+1])` -/
def P6356338363186972952.Spec : Prop :=
  ∀ n, P6356338363186972952.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P6657437763447044516

`sqrt(A278254(∑[n+1]))`
-/

namespace A278253.P6657437763447044516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A278253.P6657437763447044516

namespace A278253

/-- `sqrt(A278254(∑[n+1]))` -/
def P6657437763447044516.Spec : Prop :=
  ∀ n, P6657437763447044516.a n = (A278253 (n + 1) : ℝ)

end A278253

/-! ## A278253.P7384543566877843145

`A278263(A064664(∑[n+1]))`
-/

namespace A278253.P7384543566877843145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P7384543566877843145

namespace A278253

/-- `A278263(A064664(∑[n+1]))` -/
def P7384543566877843145.Spec : Prop :=
  ∀ n, P7384543566877843145.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P2232113789095866264

`A181821(A181819(∑[n+1]))`
-/

namespace A278253.P2232113789095866264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P2232113789095866264

namespace A278253

/-- `A181821(A181819(∑[n+1]))` -/
def P2232113789095866264.Spec : Prop :=
  ∀ n, P2232113789095866264.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P708362739054827885

`A278231(A193231(∑[n+1]))`
-/

namespace A278253.P708362739054827885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P708362739054827885

namespace A278253

/-- `A278231(A193231(∑[n+1]))` -/
def P708362739054827885.Spec : Prop :=
  ∀ n, P708362739054827885.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P2794698536692386044

`A278237(A263273(∑[n+1]))`
-/

namespace A278253.P2794698536692386044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278237 (A263273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P2794698536692386044

namespace A278253

/-- `A278237(A263273(∑[n+1]))` -/
def P2794698536692386044.Spec : Prop :=
  ∀ n, P2794698536692386044.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P7720516062128192367

`A278218(A167614(n+1)-1)`
-/

namespace A278253.P7720516062128192367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 (A167614 (n + 1) - 1).toNat

end

end A278253.P7720516062128192367

namespace A278253

/-- `A278218(A167614(n+1)-1)` -/
def P7720516062128192367.Spec : Prop :=
  ∀ n, P7720516062128192367.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P15900210729311276423

`A278218(∑[n+3])`
-/

namespace A278253.P15900210729311276423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278253.P15900210729311276423

namespace A278253

/-- `A278218(∑[n+3])` -/
def P15900210729311276423.Spec : Prop :=
  ∀ n, P15900210729311276423.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P11688599552849969791

`A278264(A064413(∑[n+1]))`
-/

namespace A278253.P11688599552849969791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P11688599552849969791

namespace A278253

/-- `A278264(A064413(∑[n+1]))` -/
def P11688599552849969791.Spec : Prop :=
  ∀ n, P11688599552849969791.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P18035757875346816295

`A278224(A064216(∑[n+1]))`
-/

namespace A278253.P18035757875346816295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A064216 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P18035757875346816295

namespace A278253

/-- `A278224(A064216(∑[n+1]))` -/
def P18035757875346816295.Spec : Prop :=
  ∀ n, P18035757875346816295.a n = A278253 (n + 1)

end A278253

/-!
# A278254: Least number with the prime signature of n^2; square of the least number with the prime signature of n.

The programs for A278254, the canonical program `A278254.P3842333853700545452` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278254 has offset 1).

The definition of A278254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278254.P3842333853700545452

`A046523(n+1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278254

/-- `A046523(n+1)²` -/
def P3842333853700545452.Spec : Prop :=
  ∀ n, P3842333853700545452.a n = A278254 (n + 1)

theorem P3842333853700545452.correct : P3842333853700545452.Spec := by
  intro n
  simp only [A278254, Nat.add_sub_cancel]

end A278254

/-! ## A278254.P18373653207682153454

`A278259(2*(n+1))`
-/

namespace A278254.P18373653207682153454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (2 * (n + 1))

end

end A278254.P18373653207682153454

namespace A278254

/-- `A278259(2*(n+1))` -/
def P18373653207682153454.Spec : Prop :=
  ∀ n, P18373653207682153454.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P18220926516673684283

`A025487(A101296(n+1))²`
-/

namespace A278254.P18220926516673684283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (n + 1)).toNat ^ 2

end

end A278254.P18220926516673684283

namespace A278254

/-- `A025487(A101296(n+1))²` -/
def P18220926516673684283.Spec : Prop :=
  ∀ n, P18220926516673684283.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P16232090912250176194

`A089247(A071364(n+1))²`
-/

namespace A278254.P16232090912250176194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (n + 1)).toNat ^ 2

end

end A278254.P16232090912250176194

namespace A278254

/-- `A089247(A071364(n+1))²` -/
def P16232090912250176194.Spec : Prop :=
  ∀ n, P16232090912250176194.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P3812161478372487385

`A083260(A089247(n+1))²`
-/

namespace A278254.P3812161478372487385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (A089247 (n + 1)).toNat ^ 2

end

end A278254.P3812161478372487385

namespace A278254

/-- `A083260(A089247(n+1))²` -/
def P3812161478372487385.Spec : Prop :=
  ∀ n, P3812161478372487385.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P8431300006411931102

`A181821(A181819(n+1))²`
-/

namespace A278254.P8431300006411931102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1)).toNat ^ 2

end

end A278254.P8431300006411931102

namespace A278254

/-- `A181821(A181819(n+1))²` -/
def P8431300006411931102.Spec : Prop :=
  ∀ n, P8431300006411931102.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P16818715952268239191

`A000290(A046523(abs(xor(n, -1))))`
-/

namespace A278254.P16818715952268239191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A046523 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A278254.P16818715952268239191

namespace A278254

/-- `A000290(A046523(abs(xor(n, -1))))` -/
def P16818715952268239191.Spec : Prop :=
  ∀ n, P16818715952268239191.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P613073855770941133

`A046523(A000027(n+1))^2`
-/

namespace A278254.P613073855770941133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000027 (n + 1)).toNat ^ 2

end

end A278254.P613073855770941133

namespace A278254

/-- `A046523(A000027(n+1))^2` -/
def P613073855770941133.Spec : Prop :=
  ∀ n, P613073855770941133.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P3003735850000086247

`A000290(and(-1, A046523(n+1)))`
-/

namespace A278254.P3003735850000086247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.land (-1) (A046523 (n + 1))).toNat

end

end A278254.P3003735850000086247

namespace A278254

/-- `A000290(and(-1, A046523(n+1)))` -/
def P3003735850000086247.Spec : Prop :=
  ∀ n, P3003735850000086247.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P7133882248968675615

`A005563(A046523(n+1)-1)+1`
-/

namespace A278254.P7133882248968675615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A046523 (n + 1) - 1).toNat + 1

end

end A278254.P7133882248968675615

namespace A278254

/-- `A005563(A046523(n+1)-1)+1` -/
def P7133882248968675615.Spec : Prop :=
  ∀ n, P7133882248968675615.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P16554428332422281314

`lcm(A083260(n+1), A212173(n+1))²`
-/

namespace A278254.P16554428332422281314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083260 (n + 1)) (A212173 (n + 1)) ^ 2

end

end A278254.P16554428332422281314

namespace A278254

/-- `lcm(A083260(n+1), A212173(n+1))²` -/
def P16554428332422281314.Spec : Prop :=
  ∀ n, (P16554428332422281314.a n : ℤ) = A278254 (n + 1)

end A278254

/-! ## A278254.P6496552916348549531

`A046523(n+1)^A323236(2*(n+2))`
-/

namespace A278254.P6496552916348549531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) ^ (A323236 (2 * (n + 2)) : ℤ)

end

end A278254.P6496552916348549531

namespace A278254

/-- `A046523(n+1)^A323236(2*(n+2))` -/
def P6496552916348549531.Spec : Prop :=
  ∀ n, P6496552916348549531.a n = (A278254 (n + 1) : ℚ)

end A278254

/-! ## A278254.P10961678679434612597

`A000290(A046523(n+1)%A004767(n))`
-/

namespace A278254.P10961678679434612597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A046523 (n + 1)) (A004767 n)).toNat

end

end A278254.P10961678679434612597

namespace A278254

/-- `A000290(A046523(n+1)%A004767(n))` -/
def P10961678679434612597.Spec : Prop :=
  ∀ n, P10961678679434612597.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P856973085365107160

`A046523(A000027(n+1))*A046523(n+1)`
-/

namespace A278254.P856973085365107160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000027 (n + 1)).toNat * A046523 (n + 1)

end

end A278254.P856973085365107160

namespace A278254

/-- `A046523(A000027(n+1))*A046523(n+1)` -/
def P856973085365107160.Spec : Prop :=
  ∀ n, P856973085365107160.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P5093354896555828942

`A278231(A193231(n+1))²`
-/

namespace A278254.P5093354896555828942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (n + 1)).toNat ^ 2

end

end A278254.P5093354896555828942

namespace A278254

/-- `A278231(A193231(n+1))²` -/
def P5093354896555828942.Spec : Prop :=
  ∀ n, P5093354896555828942.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P8217105628041069147

`A046523(n+1)^A046523(A151800(n))`
-/

namespace A278254.P8217105628041069147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) ^ (A046523 (A151800 n).toNat : ℤ)

end

end A278254.P8217105628041069147

namespace A278254

/-- `A046523(n+1)^A046523(A151800(n))` -/
def P8217105628041069147.Spec : Prop :=
  ∀ n, P8217105628041069147.a n = (A278254 (n + 1) : ℚ)

end A278254

/-! ## A278254.P14492905012298707567

`A278233(A091202(n+1))²`
-/

namespace A278254.P14492905012298707567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A091202 (n + 1)).toNat ^ 2

end

end A278254.P14492905012298707567

namespace A278254

/-- `A278233(A091202(n+1))²` -/
def P14492905012298707567.Spec : Prop :=
  ∀ n, P14492905012298707567.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P13027015976354949231

`A278264(A064413(n+1))²`
-/

namespace A278254.P13027015976354949231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (n + 1)).toNat ^ 2

end

end A278254.P13027015976354949231

namespace A278254

/-- `A278264(A064413(n+1))²` -/
def P13027015976354949231.Spec : Prop :=
  ∀ n, P13027015976354949231.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P5801199407407060344

`A046523(n+1)^A020639(A278222(n))`
-/

namespace A278254.P5801199407407060344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) ^ (A020639 (A278222 n).toNat : ℤ)

end

end A278254.P5801199407407060344

namespace A278254

/-- `A046523(n+1)^A020639(A278222(n))` -/
def P5801199407407060344.Spec : Prop :=
  ∀ n, P5801199407407060344.a n = (A278254 (n + 1) : ℚ)

end A278254

/-! ## A278254.P5033866714458248244

`A278224(A064216(n+1))²`
-/

namespace A278254.P5033866714458248244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A064216 (n + 1)).toNat ^ 2

end

end A278254.P5033866714458248244

namespace A278254

/-- `A278224(A064216(n+1))²` -/
def P5033866714458248244.Spec : Prop :=
  ∀ n, P5033866714458248244.a n = A278254 (n + 1)

end A278254

/-!
# A278255: Least number with the prime signature of the n-th pentagonal number.

The programs for A278255, the canonical program `A278255.P2717760955972654274` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278255 has offset 1).

The definition of A278255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278255.P2717760955972654274

`A046523(A000326(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278255

/-- `A046523(A000326(n+1))` -/
def P2717760955972654274.Spec : Prop :=
  ∀ n, P2717760955972654274.a n = A278255 (n + 1)

theorem P2717760955972654274.correct : P2717760955972654274.Spec := by
  intro n
  simp only [A278255, Nat.add_sub_cancel]

end A278255

/-! ## A278255.P17011903978468398618

`A025487(A101296(∑[3*n+1]))`
-/

namespace A278255.P17011903978468398618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P17011903978468398618

namespace A278255

/-- `A025487(A101296(∑[3*n+1]))` -/
def P17011903978468398618.Spec : Prop :=
  ∀ n, P17011903978468398618.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P10098595605637962420

`A046523(A071364(∑[3*n+1]))`
-/

namespace A278255.P10098595605637962420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P10098595605637962420

namespace A278255

/-- `A046523(A071364(∑[3*n+1]))` -/
def P10098595605637962420.Spec : Prop :=
  ∀ n, P10098595605637962420.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P2531255351785040052

`A089247(A071364(∑[n+1]+n²+n))`
-/

namespace A278255.P2531255351785040052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 + n))).toNat

end

end A278255.P2531255351785040052

namespace A278255

/-- `A089247(A071364(∑[n+1]+n²+n))` -/
def P2531255351785040052.Spec : Prop :=
  ∀ n, P2531255351785040052.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P1394439856569965198

`A046523(A097272(∑[2*n+1+n]))`
-/

namespace A278255.P1394439856569965198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097272 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P1394439856569965198

namespace A278255

/-- `A046523(A097272(∑[2*n+1+n]))` -/
def P1394439856569965198.Spec : Prop :=
  ∀ n, P1394439856569965198.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P9978359444025181096

`A046523(Δ[n*∑[n]])`
-/

namespace A278255.P9978359444025181096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278255.P9978359444025181096

namespace A278255

/-- `A046523(Δ[n*∑[n]])` -/
def P9978359444025181096.Spec : Prop :=
  ∀ n, P9978359444025181096.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P15316503294204220705

`sqrt(A278254(∑[3*n+1]))`
-/

namespace A278255.P15316503294204220705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A278255.P15316503294204220705

namespace A278255

/-- `sqrt(A278254(∑[3*n+1]))` -/
def P15316503294204220705.Spec : Prop :=
  ∀ n, P15316503294204220705.a n = (A278255 (n + 1) : ℝ)

end A278255

/-! ## A278255.P15418823468525017870

`A071364(A089247(∑[3*n+1]))`
-/

namespace A278255.P15418823468525017870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A089247 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P15418823468525017870

namespace A278255

/-- `A071364(A089247(∑[3*n+1]))` -/
def P15418823468525017870.Spec : Prop :=
  ∀ n, P15418823468525017870.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P16598813517200968657

`A181821(A181819(∑[3*n+1]))`
-/

namespace A278255.P16598813517200968657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P16598813517200968657

namespace A278255

/-- `A181821(A181819(∑[3*n+1]))` -/
def P16598813517200968657.Spec : Prop :=
  ∀ n, P16598813517200968657.a n = A278255 (n + 1)

end A278255

/-!
# A278256: Least number with the same prime signature as the n-th oblong number (A002378).

The programs for A278256, the canonical program `A278256.P17598573142483079167` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278256 has offset 1).

The definition of A278256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278256.P17598573142483079167

`A278259(2*(n+1)+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278256

/-- `A278259(2*(n+1)+1)` -/
def P17598573142483079167.Spec : Prop :=
  ∀ n, P17598573142483079167.a n = A278256 (n + 1)

theorem P17598573142483079167.correct : P17598573142483079167.Spec := by
  intro n
  simp only [A278256, Nat.add_sub_cancel]

end A278256

/-! ## A278256.P14385106071762839496

`A046523(A002378(n+1))`
-/

namespace A278256.P14385106071762839496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A002378 (n + 1)).toNat

end

end A278256.P14385106071762839496

namespace A278256

/-- `A046523(A002378(n+1))` -/
def P14385106071762839496.Spec : Prop :=
  ∀ n, P14385106071762839496.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P5022269048925968980

`A181821(A181819(n+1)*A181819(n+2))`
-/

namespace A278256.P5022269048925968980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (n + 1) * A181819 (n + 2)).toNat

end

end A278256.P5022269048925968980

namespace A278256

/-- `A181821(A181819(n+1)*A181819(n+2))` -/
def P5022269048925968980.Spec : Prop :=
  ∀ n, P5022269048925968980.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P4137345913039251644

`lcm(A040001(n), A278259(Δ[(n+1)²]))`
-/

namespace A278256.P4137345913039251644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A278259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A278256.P4137345913039251644

namespace A278256

/-- `lcm(A040001(n), A278259(Δ[(n+1)²]))` -/
def P4137345913039251644.Spec : Prop :=
  ∀ n, (P4137345913039251644.a n : ℤ) = A278256 (n + 1)

end A278256

/-! ## A278256.P9078004389586701595

`A278259(Δ[(n+1)²])%Δ[A006000(n)]`
-/

namespace A278256.P9078004389586701595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (f2 (n + 1) - f2 n)

end

end A278256.P9078004389586701595

namespace A278256

/-- `A278259(Δ[(n+1)²])%Δ[A006000(n)]` -/
def P9078004389586701595.Spec : Prop :=
  ∀ n, P9078004389586701595.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P18197912603831092763

`A000027(A278259(Δ[(n+1)²]))`
-/

namespace A278256.P18197912603831092763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A278259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A278256.P18197912603831092763

namespace A278256

/-- `A000027(A278259(Δ[(n+1)²]))` -/
def P18197912603831092763.Spec : Prop :=
  ∀ n, P18197912603831092763.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P9526845247738980451

`A025487(A101296((n+1)*(n+2)))`
-/

namespace A278256.P9526845247738980451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 ((n + 1) * (n + 2))).toNat

end

end A278256.P9526845247738980451

namespace A278256

/-- `A025487(A101296((n+1)*(n+2)))` -/
def P9526845247738980451.Spec : Prop :=
  ∀ n, P9526845247738980451.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P10523929846849670700

`filter[A278259(n+2), A049240(#)]`
-/

namespace A278256.P10523929846849670700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A278256.P10523929846849670700

namespace A278256

/-- `filter[A278259(n+2), A049240(#)]` -/
def P10523929846849670700.Spec : Prop :=
  ∀ n, P10523929846849670700.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P13106668176851806659

`A028310(A278259(n+3+n))`
-/

namespace A278256.P13106668176851806659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A278259 (n + 3 + n)).toNat

end

end A278256.P13106668176851806659

namespace A278256

/-- `A028310(A278259(n+3+n))` -/
def P13106668176851806659.Spec : Prop :=
  ∀ n, P13106668176851806659.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P534032731320227178

`A046523(A097272(∑[2*(n+1)]))`
-/

namespace A278256.P534032731320227178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097272 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278256.P534032731320227178

namespace A278256

/-- `A046523(A097272(∑[2*(n+1)]))` -/
def P534032731320227178.Spec : Prop :=
  ∀ n, P534032731320227178.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P11354831732348660914

`A046523(A071364(∑[2*(n+1)]))`
-/

namespace A278256.P11354831732348660914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278256.P11354831732348660914

namespace A278256

/-- `A046523(A071364(∑[2*(n+1)]))` -/
def P11354831732348660914.Spec : Prop :=
  ∀ n, P11354831732348660914.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P10468476845129262901

`A089247(A071364((n+1)*(n+2)))`
-/

namespace A278256.P10468476845129262901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 ((n + 1) * (n + 2))).toNat

end

end A278256.P10468476845129262901

namespace A278256

/-- `A089247(A071364((n+1)*(n+2)))` -/
def P10468476845129262901.Spec : Prop :=
  ∀ n, P10468476845129262901.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P8798836970948587554

`filter[A278259(n+2), A263804(#)]`
-/

namespace A278256.P8798836970948587554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263804 (f1 j).toNat = 1) n)

end

end A278256.P8798836970948587554

namespace A278256

/-- `filter[A278259(n+2), A263804(#)]` -/
def P8798836970948587554.Spec : Prop :=
  ∀ n, P8798836970948587554.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P14260918670195221884

`filter[A278259(n+2), A267525(#)]`
-/

namespace A278256.P14260918670195221884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267525 (f1 j).toNat = 1) n)

end

end A278256.P14260918670195221884

namespace A278256

/-- `filter[A278259(n+2), A267525(#)]` -/
def P14260918670195221884.Spec : Prop :=
  ∀ n, P14260918670195221884.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P10444208104217434295

`filter[A278259(n+2), A267594(#)]`
-/

namespace A278256.P10444208104217434295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A278256.P10444208104217434295

namespace A278256

/-- `filter[A278259(n+2), A267594(#)]` -/
def P10444208104217434295.Spec : Prop :=
  ∀ n, P10444208104217434295.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P17425842727717413961

`filter[A278259(n+2), A267635(#)]`
-/

namespace A278256.P17425842727717413961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A278256.P17425842727717413961

namespace A278256

/-- `filter[A278259(n+2), A267635(#)]` -/
def P17425842727717413961.Spec : Prop :=
  ∀ n, P17425842727717413961.a n = A278256 (n + 1)

end A278256

/-! ## A278256.P13466320080272399715

`filter[A278259(n+3), A132350(#)]`
-/

namespace A278256.P13466320080272399715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A278256.P13466320080272399715

namespace A278256

/-- `filter[A278259(n+3), A132350(#)]` -/
def P13466320080272399715.Spec : Prop :=
  ∀ n, P13466320080272399715.a n = A278256 (n + 1)

end A278256

/-!
# A278257: Least number with the prime signature of A005187(n).

The programs for A278257, the canonical program `A278257.P2631083577688483102` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278257 has offset 1).

The definition of A278257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278257.P2631083577688483102

`A046523(A005187(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278257

/-- `A046523(A005187(n+1))` -/
def P2631083577688483102.Spec : Prop :=
  ∀ n, P2631083577688483102.a n = A278257 (n + 1)

theorem P2631083577688483102.correct : P2631083577688483102.Spec := by
  intro n
  simp only [A278257, Nat.add_sub_cancel]

end A278257

/-! ## A278257.P8962909753494131613

`A046523(∑[val(n+1, 2)+1])`
-/

namespace A278257.P8962909753494131613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278257.P8962909753494131613

namespace A278257

/-- `A046523(∑[val(n+1, 2)+1])` -/
def P8962909753494131613.Spec : Prop :=
  ∀ n, P8962909753494131613.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P2045033109398434361

`A046523(∑[A001511(n+1)])`
-/

namespace A278257.P2045033109398434361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P2045033109398434361

namespace A278257

/-- `A046523(∑[A001511(n+1)])` -/
def P2045033109398434361.Spec : Prop :=
  ∀ n, P2045033109398434361.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P12553101451484140349

`A046523(∑[A007814(n+1)+1])`
-/

namespace A278257.P12553101451484140349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P12553101451484140349

namespace A278257

/-- `A046523(∑[A007814(n+1)+1])` -/
def P12553101451484140349.Spec : Prop :=
  ∀ n, P12553101451484140349.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P16941176430627817731

`A046523(∑[A089309(2*n+1)])`
-/

namespace A278257.P16941176430627817731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P16941176430627817731

namespace A278257

/-- `A046523(∑[A089309(2*n+1)])` -/
def P16941176430627817731.Spec : Prop :=
  ∀ n, P16941176430627817731.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P12361181071513483662

`A046523(A011371(n+1)+n+1)`
-/

namespace A278257.P12361181071513483662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A011371 (n + 1) + (n + 1 : ℤ)).toNat

end

end A278257.P12361181071513483662

namespace A278257

/-- `A046523(A011371(n+1)+n+1)` -/
def P12361181071513483662.Spec : Prop :=
  ∀ n, P12361181071513483662.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P12493738510695678723

`A046523(A004134(n+1)-(n+1))`
-/

namespace A278257.P12493738510695678723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A004134 (n + 1) - (n + 1 : ℤ)).toNat

end

end A278257.P12493738510695678723

namespace A278257

/-- `A046523(A004134(n+1)-(n+1))` -/
def P12493738510695678723.Spec : Prop :=
  ∀ n, P12493738510695678723.a n = A278257 (n + 1)

theorem P12493738510695678723.correct : P12493738510695678723.Spec := by
  intro n
  simp only [A278257, Nat.add_sub_cancel, A278257.P12493738510695678723.a, A278257.P2631083577688483102.a, A004134, A004134.P15858984416175637375.a, A005187, A005187.P3874015513960485494.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278257

/-! ## A278257.P3357529008699409249

`A181821(A181819(∑[val(n+1, 2)+1]))`
-/

namespace A278257.P3357529008699409249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181819 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278257.P3357529008699409249

namespace A278257

/-- `A181821(A181819(∑[val(n+1, 2)+1]))` -/
def P3357529008699409249.Spec : Prop :=
  ∀ n, P3357529008699409249.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P6272823844943770078

`A046523(Δ[n²]-A000120(n+1)+1)`
-/

namespace A278257.P6272823844943770078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000120 (n + 1) + 1).toNat

end

end A278257.P6272823844943770078

namespace A278257

/-- `A046523(Δ[n²]-A000120(n+1)+1)` -/
def P6272823844943770078.Spec : Prop :=
  ∀ n, P6272823844943770078.a n = A278257 (n + 1)

theorem P6272823844943770078.correct : P6272823844943770078.Spec := by
  intro n
  simp only [A278257, Nat.add_sub_cancel, A278257.P6272823844943770078.f1, A278257.P6272823844943770078.a, A278257.P2631083577688483102.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278257

/-! ## A278257.P4251220812115137771

`A046523(∑[A291766(A007814(n+1))])`
-/

namespace A278257.P4251220812115137771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P4251220812115137771

namespace A278257

/-- `A046523(∑[A291766(A007814(n+1))])` -/
def P4251220812115137771.Spec : Prop :=
  ∀ n, P4251220812115137771.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P5061846294550751509

`A046523(∑[A291769(A007814(n+1))])`
-/

namespace A278257.P5061846294550751509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P5061846294550751509

namespace A278257

/-- `A046523(∑[A291769(A007814(n+1))])` -/
def P5061846294550751509.Spec : Prop :=
  ∀ n, P5061846294550751509.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P8894957852951934432

`A046523(A005843(n+1)-A000120(n+1))`
-/

namespace A278257.P8894957852951934432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005843 (n + 1) - A000120 (n + 1)).toNat

end

end A278257.P8894957852951934432

namespace A278257

/-- `A046523(A005843(n+1)-A000120(n+1))` -/
def P8894957852951934432.Spec : Prop :=
  ∀ n, P8894957852951934432.a n = A278257 (n + 1)

theorem P8894957852951934432.correct : P8894957852951934432.Spec := by
  intro n
  simp only [A278257, Nat.add_sub_cancel, A278257.P8894957852951934432.a, A278257.P2631083577688483102.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278257

/-! ## A278257.P12078972407735786846

`A046523(A011371(2*(n+1)))`
-/

namespace A278257.P12078972407735786846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A011371 (2 * (n + 1))).toNat

end

end A278257.P12078972407735786846

namespace A278257

/-- `A046523(A011371(2*(n+1)))` -/
def P12078972407735786846.Spec : Prop :=
  ∀ n, P12078972407735786846.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P3597451254153174392

`A046523(A227361(2*n+3))`
-/

namespace A278257.P3597451254153174392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A227361 (2 * n + 3)).toNat

end

end A278257.P3597451254153174392

namespace A278257

/-- `A046523(A227361(2*n+3))` -/
def P3597451254153174392.Spec : Prop :=
  ∀ n, P3597451254153174392.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P4828946600865274053

`A046523(∑[A055396(A005940(n+2))])`
-/

namespace A278257.P4828946600865274053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A005940 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P4828946600865274053

namespace A278257

/-- `A046523(∑[A055396(A005940(n+2))])` -/
def P4828946600865274053.Spec : Prop :=
  ∀ n, P4828946600865274053.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P7031204509304820167

`A046523(∑[A302786(A052330(n+1))])`
-/

namespace A278257.P7031204509304820167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (A052330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P7031204509304820167

namespace A278257

/-- `A046523(∑[A302786(A052330(n+1))])` -/
def P7031204509304820167.Spec : Prop :=
  ∀ n, P7031204509304820167.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P8788745820559783778

`A046523(∑[A051064(A005940(2*n+1))])`
-/

namespace A278257.P8788745820559783778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A005940 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278257.P8788745820559783778

namespace A278257

/-- `A046523(∑[A051064(A005940(2*n+1))])` -/
def P8788745820559783778.Spec : Prop :=
  ∀ n, P8788745820559783778.a n = A278257 (n + 1)

end A278257

/-!
# A278258: Least number with the prime signature of the n-th Catalan number.

The programs for A278258, the canonical program `A278258.P12544185363711312694` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278258 has offset 0).

The definition of A278258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278258.P12544185363711312694

`A046523(A000108(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278258

/-- `A046523(A000108(n))` -/
def P12544185363711312694.Spec : Prop :=
  ∀ n, P12544185363711312694.a n = A278258 n

theorem P12544185363711312694.correct : P12544185363711312694.Spec := by
  intro n
  simp only [A278258]

end A278258

/-!
# A278259: Least number with the prime signature of the n-th quarter-square, a(1) = 0.

The programs for A278259, the canonical program `A278259.P6707205437516840504` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278259 has offset 1).

The definition of A278259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278259.P9497037415308364030

`A046523(floor(cosh(log(n+1))²))%((2*n)²-1)`
-/

namespace A278259.P9497037415308364030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋.toNat) (((2 * n) ^ 2 : ℤ) - 1)

end

end A278259.P9497037415308364030

namespace A278259

/-- `A046523(floor(cosh(log(n+1))²))%((2*n)²-1)` -/
def P9497037415308364030.Spec : Prop :=
  ∀ n, P9497037415308364030.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P6707205437516840504

`A046523(A076921(n+1))%(n+1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278259

/-- `A046523(A076921(n+1))%(n+1)²` -/
def P6707205437516840504.Spec : Prop :=
  ∀ n, P6707205437516840504.a n = A278259 (n + 1)

theorem P6707205437516840504.correct : P6707205437516840504.Spec := by
  intro n
  simp only [A278259, Nat.add_sub_cancel]

end A278259

/-! ## A278259.P9371958189439467385

`A046523(floor(cosh(log(n+1))²))*A057427(n)`
-/

namespace A278259.P9371958189439467385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋.toNat * A057427 n

end

end A278259.P9371958189439467385

namespace A278259

/-- `A046523(floor(cosh(log(n+1))²))*A057427(n)` -/
def P9371958189439467385.Spec : Prop :=
  ∀ n, P9371958189439467385.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P14235732372799475270

`A046523(A076921(n+1))-A000007(n)`
-/

namespace A278259.P14235732372799475270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat - A000007 n

end

end A278259.P14235732372799475270

namespace A278259

/-- `A046523(A076921(n+1))-A000007(n)` -/
def P14235732372799475270.Spec : Prop :=
  ∀ n, P14235732372799475270.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P2860625053986902518

`A046523(A076921(n+1))*A057427(n)`
-/

namespace A278259.P2860625053986902518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat * A057427 n

end

end A278259.P2860625053986902518

namespace A278259

/-- `A046523(A076921(n+1))*A057427(n)` -/
def P2860625053986902518.Spec : Prop :=
  ∀ n, P2860625053986902518.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P7477868274639691759

`lcm(A046523(A076921(n+1)), A165471(n))`
-/

namespace A278259.P7477868274639691759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046523 (A076921 (n + 1)).toNat) (A165471 n)

end

end A278259.P7477868274639691759

namespace A278259

/-- `lcm(A046523(A076921(n+1)), A165471(n))` -/
def P7477868274639691759.Spec : Prop :=
  ∀ n, (P7477868274639691759.a n : ℤ) = A278259 (n + 1)

end A278259

/-! ## A278259.P13041955203303509530

`and(A000225(n), A046523(A076921(n+1)))`
-/

namespace A278259.P13041955203303509530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A046523 (A076921 (n + 1)).toNat)

end

end A278259.P13041955203303509530

namespace A278259

/-- `and(A000225(n), A046523(A076921(n+1)))` -/
def P13041955203303509530.Spec : Prop :=
  ∀ n, P13041955203303509530.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P12586673652987787882

`and(A046523(A076921(n+1)), A196305(n))`
-/

namespace A278259.P12586673652987787882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (A076921 (n + 1)).toNat) (A196305 n)

end

end A278259.P12586673652987787882

namespace A278259

/-- `and(A046523(A076921(n+1)), A196305(n))` -/
def P12586673652987787882.Spec : Prop :=
  ∀ n, P12586673652987787882.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P7443374201176594203

`A046523(A076921(n+1))*A165471(n²)`
-/

namespace A278259.P7443374201176594203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat * A165471 (n ^ 2)

end

end A278259.P7443374201176594203

namespace A278259

/-- `A046523(A076921(n+1))*A165471(n²)` -/
def P7443374201176594203.Spec : Prop :=
  ∀ n, P7443374201176594203.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P705309728714016636

`A159075(n+1)+A046523(A076921(n+1))`
-/

namespace A278259.P705309728714016636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) + A046523 (A076921 (n + 1)).toNat

end

end A278259.P705309728714016636

namespace A278259

/-- `A159075(n+1)+A046523(A076921(n+1))` -/
def P705309728714016636.Spec : Prop :=
  ∀ n, P705309728714016636.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P9656774615378436441

`A046523(A076921(n+1))-A008683((n+1)²)`
-/

namespace A278259.P9656774615378436441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A278259.P9656774615378436441

namespace A278259

/-- `A046523(A076921(n+1))-A008683((n+1)²)` -/
def P9656774615378436441.Spec : Prop :=
  ∀ n, P9656774615378436441.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P7787894918660392884

`A000040(n+1)%2*A046523(A076921(n+1))`
-/

namespace A278259.P7787894918660392884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A046523 (A076921 (n + 1)).toNat

end

end A278259.P7787894918660392884

namespace A278259

/-- `A000040(n+1)%2*A046523(A076921(n+1))` -/
def P7787894918660392884.Spec : Prop :=
  ∀ n, P7787894918660392884.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P12692537468067909361

`A046523(A076921(n+1))-and(1, A046523(n+1))`
-/

namespace A278259.P12692537468067909361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat - Int.land 1 (A046523 (n + 1))

end

end A278259.P12692537468067909361

namespace A278259

/-- `A046523(A076921(n+1))-and(1, A046523(n+1))` -/
def P12692537468067909361.Spec : Prop :=
  ∀ n, P12692537468067909361.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P16054963483474664072

`A046523(A076921(n+1))-A000045(C(2, n+2))`
-/

namespace A278259.P16054963483474664072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076921 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A278259.P16054963483474664072

namespace A278259

/-- `A046523(A076921(n+1))-A000045(C(2, n+2))` -/
def P16054963483474664072.Spec : Prop :=
  ∀ n, P16054963483474664072.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P4774759374055134940

`ceil(n/A000203(n+1))*A046523(A076921(n+1))`
-/

namespace A278259.P4774759374055134940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000203 (n + 1) : ℚ)⌉ * A046523 (A076921 (n + 1)).toNat

end

end A278259.P4774759374055134940

namespace A278259

/-- `ceil(n/A000203(n+1))*A046523(A076921(n+1))` -/
def P4774759374055134940.Spec : Prop :=
  ∀ n, P4774759374055134940.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P11587508574281766893

`A001221(A000961(n+1))*A046523(A076921(n+1))`
-/

namespace A278259.P11587508574281766893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A046523 (A076921 (n + 1)).toNat

end

end A278259.P11587508574281766893

namespace A278259

/-- `A001221(A000961(n+1))*A046523(A076921(n+1))` -/
def P11587508574281766893.Spec : Prop :=
  ∀ n, P11587508574281766893.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P1977624826836726774

`A001222(A008578(n+1))*A046523(A076921(n+1))`
-/

namespace A278259.P1977624826836726774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A046523 (A076921 (n + 1)).toNat

end

end A278259.P1977624826836726774

namespace A278259

/-- `A001222(A008578(n+1))*A046523(A076921(n+1))` -/
def P1977624826836726774.Spec : Prop :=
  ∀ n, P1977624826836726774.a n = A278259 (n + 1)

end A278259

/-! ## A278259.P8871680363653468453

`and(1, A014963(n²+2))*A046523(A076921(n+1))`
-/

namespace A278259.P8871680363653468453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014963 (n ^ 2 + 2)) * A046523 (A076921 (n + 1)).toNat

end

end A278259.P8871680363653468453

namespace A278259

/-- `and(1, A014963(n²+2))*A046523(A076921(n+1))` -/
def P8871680363653468453.Spec : Prop :=
  ∀ n, P8871680363653468453.a n = A278259 (n + 1)

end A278259

/-!
# A278260: Least number with the same prime signature as {the n-th quarter-square}+1.

The programs for A278260, the canonical program `A278260.P15623927489454411209` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278260 has offset 1).

The definition of A278260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278260.P15623927489454411209

`A046523(A033638(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278260

/-- `A046523(A033638(n+1))` -/
def P15623927489454411209.Spec : Prop :=
  ∀ n, P15623927489454411209.a n = A278260 (n + 1)

theorem P15623927489454411209.correct : P15623927489454411209.Spec := by
  intro n
  simp only [A278260, Nat.add_sub_cancel]

end A278260

/-! ## A278260.P11240876830285932059

`A025487(A101296(∑[round(cosh(log(acot(n))))]))`
-/

namespace A278260.P11240876830285932059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P11240876830285932059

namespace A278260

/-- `A025487(A101296(∑[round(cosh(log(acot(n))))]))` -/
def P11240876830285932059.Spec : Prop :=
  ∀ n, P11240876830285932059.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P18419087590512324385

`A046523(A071364(∑[A065033(n)]))`
-/

namespace A278260.P18419087590512324385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P18419087590512324385

namespace A278260

/-- `A046523(A071364(∑[A065033(n)]))` -/
def P18419087590512324385.Spec : Prop :=
  ∀ n, P18419087590512324385.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P2920209287762456401

`A025487(A101296(∑[A065033(n)]))`
-/

namespace A278260.P2920209287762456401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P2920209287762456401

namespace A278260

/-- `A025487(A101296(∑[A065033(n)]))` -/
def P2920209287762456401.Spec : Prop :=
  ∀ n, P2920209287762456401.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P9146072524872803034

`A046523(A097272(∑[A065033(n)]))`
-/

namespace A278260.P9146072524872803034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A097272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P9146072524872803034

namespace A278260

/-- `A046523(A097272(∑[A065033(n)]))` -/
def P9146072524872803034.Spec : Prop :=
  ∀ n, P9146072524872803034.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P9503748548319861200

`A046523(A320389(∑[A065033(n)]))`
-/

namespace A278260.P9503748548319861200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A320389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P9503748548319861200

namespace A278260

/-- `A046523(A320389(∑[A065033(n)]))` -/
def P9503748548319861200.Spec : Prop :=
  ∀ n, P9503748548319861200.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P5833901621664365052

`A046523(A316437(∑[A065033(n)]))`
-/

namespace A278260.P5833901621664365052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A316437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278260.P5833901621664365052

namespace A278260

/-- `A046523(A316437(∑[A065033(n)]))` -/
def P5833901621664365052.Spec : Prop :=
  ∀ n, P5833901621664365052.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P13209341164385552936

`A336158(A253885(∑[∑[n%2]])+1)`
-/

namespace A278260.P13209341164385552936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A253885 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A278260.P13209341164385552936

namespace A278260

/-- `A336158(A253885(∑[∑[n%2]])+1)` -/
def P13209341164385552936.Spec : Prop :=
  ∀ n, P13209341164385552936.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P2511573286431371843

`A046523(∑[A292579(A065033(n))])`
-/

namespace A278260.P2511573286431371843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278260.P2511573286431371843

namespace A278260

/-- `A046523(∑[A292579(A065033(n))])` -/
def P2511573286431371843.Spec : Prop :=
  ∀ n, P2511573286431371843.a n = A278260 (n + 1)

end A278260

/-! ## A278260.P5207105021227055060

`A046523(∑[round(n/2)]+1)`
-/

namespace A278260.P5207105021227055060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A278260.P5207105021227055060

namespace A278260

/-- `A046523(∑[round(n/2)]+1)` -/
def P5207105021227055060.Spec : Prop :=
  ∀ n, P5207105021227055060.a n = A278260 (n + 1)

end A278260

/-!
# A278261: a(n) = A046523(A273671(n)).

The programs for A278261, there is no canonical definition to state claims against.
-/

/-! ## A278261.P4182935939581493227

`A046523(A273671(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278261.P4182935939581493227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A273671 (n + 1)).toNat

end

end A278261.P4182935939581493227

/-!
# A278262: a(n) = A278222(A179016(n)).

The programs for A278262, there is no canonical definition to state claims against.
-/

/-! ## A278262.P12027881887553820843

`A278222(A179016(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278262.P12027881887553820843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A179016 (n + 1)).toNat

end

end A278262.P12027881887553820843

/-! ## A278262.P340548595011816762

`A278222(∑[A213712(n+1)])`
-/

namespace A278262.P340548595011816762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278262.P340548595011816762

/-! ## A278262.P5238592238001708079

`A278222(eq[A000007(n), A213725(n)])`
-/

namespace A278262.P5238592238001708079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278262.P5238592238001708079

/-! ## A278262.P7410123817730176256

`A278222(eq[A000038(n), A213725(n)])`
-/

namespace A278262.P7410123817730176256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A278262.P7410123817730176256

/-!
# A278263: Least number with the same prime signature as the n-th term of EKG-sequence: a(n) = A046523(A064413(n)).

The programs for A278263, there is no canonical definition to state claims against.
-/

/-! ## A278263.P18273153587506120750

`A046523(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278263.P18273153587506120750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064413 (n + 1)).toNat

end

end A278263.P18273153587506120750

/-! ## A278263.P17167709651475632302

`A046523(Δ[A065057(n)])`
-/

namespace A278263.P17167709651475632302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f1 (n + 1) - f1 n).toNat

end

end A278263.P17167709651475632302

/-! ## A278263.P1098140601281639251

`A046523(sqrt(A104125(n+1)))`
-/

namespace A278263.P1098140601281639251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A278263.P1098140601281639251

/-! ## A278263.P2329477170715606391

`A046523(A065519(n+1)+1+n)`
-/

namespace A278263.P2329477170715606391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A278263.P2329477170715606391

/-! ## A278263.P15741003361645128149

`A046523(A065057(n+1)-A065057(n))`
-/

namespace A278263.P15741003361645128149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A065057 (n + 1) - A065057 n).toNat

end

end A278263.P15741003361645128149

/-! ## A278263.P12623835390067916306

`A278264(A064413(A064413(A064421(A064413(n+2)))))`
-/

namespace A278263.P12623835390067916306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (A064413 (A064421 (A064413 (n + 2)).toNat).toNat).toNat).toNat

end

end A278263.P12623835390067916306

/-! ## A278263.P303311121211063852

`A278264(A064413(A064413(A064413(A064664(n+1)))))`
-/

namespace A278263.P303311121211063852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (A064413 (A064413 (A064664 (n + 1)).toNat).toNat).toNat).toNat

end

end A278263.P303311121211063852

/-! ## A278263.P10959392197985362675

`A278264(A064413(A064413(A304754(A304753(n+1)))))`
-/

namespace A278263.P10959392197985362675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (A064413 (A304754 (A304753 (n + 1)).toNat).toNat).toNat).toNat

end

end A278263.P10959392197985362675

/-! ## A278263.P15216421933762209067

`A278264(A064413(A064413(A305293(n+1))))`
-/

namespace A278263.P15216421933762209067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (A064413 (A305293 (n + 1)).toNat).toNat).toNat

end

end A278263.P15216421933762209067

/-!
# A278264: Least number with the same prime signature as the n-th term in the inverse of EKG-sequence: a(n) = A046523(A064664(n)).

The programs for A278264, there is no canonical definition to state claims against.
-/

/-! ## A278264.P9170680562834623480

`A046523(A064664(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278264.P9170680562834623480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064664 (n + 1)).toNat

end

end A278264.P9170680562834623480

/-! ## A278264.P12137364063680906369

`A046523(A064421(n+1)+1)`
-/

namespace A278264.P12137364063680906369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064421 (n + 1) + 1).toNat

end

end A278264.P12137364063680906369

/-! ## A278264.P10770430114825305039

`A046523(∑{d}[n+1, #*A349617((n+1)/#)])`
-/

namespace A278264.P10770430114825305039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A278264.P10770430114825305039

/-! ## A278264.P6985701070339521987

`A046523(A255482(n+1)+A255479(n+1))`
-/

namespace A278264.P6985701070339521987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A255482 (n + 1) + A255479 (n + 1)).toNat

end

end A278264.P6985701070339521987

/-! ## A278264.P3592679480064901981

`A046523(A304527(n+1)+A304526(n+1))`
-/

namespace A278264.P3592679480064901981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A304527 (n + 1) + A304526 (n + 1)).toNat

end

end A278264.P3592679480064901981

/-! ## A278264.P9284781386464411036

`A046523(A323412(n+1)-A323411(n+1))`
-/

namespace A278264.P9284781386464411036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A323412 (n + 1) - A323411 (n + 1)).toNat

end

end A278264.P9284781386464411036

/-! ## A278264.P14793504087415196391

`A046523(∑{d}[n+1, A064413(#)*A349614((n+1)/#)])`
-/

namespace A278264.P14793504087415196391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ d ∈ Nat.divisors (f1 n), A064413 d * A349614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A278264.P14793504087415196391

/-! ## A278264.P552329153685240926

`A278263(A064664(A064664(A064664(A064413(n+1)))))`
-/

namespace A278264.P552329153685240926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (A064664 (A064664 (A064413 (n + 1)).toNat).toNat).toNat).toNat

end

end A278264.P552329153685240926

/-!
# A278265: a(n) = A278509(A276573(n)).

The programs for A278265, there is no canonical definition to state claims against.
-/

/-! ## A278265.P6979153652628170617

`A000265(A278498(n+1))`
-/

namespace A278265.P6979153652628170617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A278498 (n + 1)).toNat

end

end A278265.P6979153652628170617

/-! ## A278265.P7423751251280693655

`A278509(A276573(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278265.P7423751251280693655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A276573 (n + 1)).toNat

end

end A278265.P7423751251280693655

/-! ## A278265.P2423345023808187161

`A278509(A278498(2*n+1-n))`
-/

namespace A278265.P2423345023808187161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A278498 (2 * n + 1 - n)).toNat

end

end A278265.P2423345023808187161

/-! ## A278265.P743548520723690602

`A065338(A000265(∑[A276575(n+1)]))`
-/

namespace A278265.P743548520723690602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A278265.P743548520723690602

/-! ## A278265.P14952055503376448716

`A278509(∑[A276575(n+1)])`
-/

namespace A278265.P14952055503376448716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278265.P14952055503376448716

/-! ## A278265.P7806164286472952748

`A278509(A276574(A276572(n+1)))`
-/

namespace A278265.P7806164286472952748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A276574 (A276572 (n + 1)).toNat).toNat

end

end A278265.P7806164286472952748

/-! ## A278265.P13375916414782881865

`A278509(A276574(A260731(A276574(n+1))))`
-/

namespace A278265.P13375916414782881865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A276574 (A260731 (A276574 (n + 1)).toNat).toNat).toNat

end

end A278265.P13375916414782881865

/-! ## A278265.P15360949606760228870

`A278509(2*A278498(n+1))`
-/

namespace A278265.P15360949606760228870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (2 * A278498 (n + 1)).toNat

end

end A278265.P15360949606760228870

/-! ## A278265.P14066585485623227733

`A278509(A278498(n+1)+A278498(n+1))`
-/

namespace A278265.P14066585485623227733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (A278498 (n + 1) + A278498 (n + 1)).toNat

end

end A278265.P14066585485623227733

/-! ## A278265.P3461394990683917300

`gcd(A278498(n+1), A335843(n+1))`
-/

namespace A278265.P3461394990683917300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278498 (n + 1)) (A335843 (n + 1))

end

end A278265.P3461394990683917300

/-! ## A278265.P2548878623731268169

`gcd(A229277(n), A278498(n+1))`
-/

namespace A278265.P2548878623731268169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229277 n) (A278498 (n + 1))

end

end A278265.P2548878623731268169

/-!
# A278266: a(n) = A046523(A026477(n)).

The programs for A278266, there is no canonical definition to state claims against.
-/

/-! ## A278266.P3107345663227791224

`A046523(A026477(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278266.P3107345663227791224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A026477 (n + 1)).toNat

end

end A278266.P3107345663227791224

/-! ## A278266.P17847869022338886928

`A071364(A026477(n+1))%A262849(n+2)`
-/

namespace A278266.P17847869022338886928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (A026477 (n + 1)).toNat) (A262849 (n + 2))

end

end A278266.P17847869022338886928

/-! ## A278266.P10163030170523372062

`A071364(A026477(n+1))+C(n, A348744(n+1))`
-/

namespace A278266.P10163030170523372062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A026477 (n + 1)).toNat + (Nat.choose n (A348744 (n + 1)).toNat : ℤ)

end

end A278266.P10163030170523372062

/-! ## A278266.P637845587471948688

`A071364(A026477(n+1))%A007367(A008000(n))`
-/

namespace A278266.P637845587471948688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (A026477 (n + 1)).toNat) (A007367 (A008000 n).toNat)

end

end A278266.P637845587471948688

/-! ## A278266.P11127148455317963318

`A071364(A026477(n+1))/A067558(A014753(3*(n+1)))`
-/

namespace A278266.P11127148455317963318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (A026477 (n + 1)).toNat : ℚ) / (A067558 (A014753 (3 * (n + 1))).toNat : ℚ)

end

end A278266.P11127148455317963318

/-! ## A278266.P13354478508758904924

`A140635(A026477(n+1))%A216467(n+1)`
-/

namespace A278266.P13354478508758904924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140635 (A026477 (n + 1)).toNat) (A216467 (n + 1))

end

end A278266.P13354478508758904924

/-! ## A278266.P7161488819373615854

`A071364(A026477(n+1)%A298687(n+1))`
-/

namespace A278266.P7161488819373615854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.tmod (A026477 (n + 1)) (A298687 (n + 1))).toNat

end

end A278266.P7161488819373615854

/-! ## A278266.P4357671790063316491

`A140635(A026477(n+1))/A014963(A216467(n+1)+1)`
-/

namespace A278266.P4357671790063316491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140635 (A026477 (n + 1)).toNat : ℚ) / (A014963 (A216467 (n + 1) + 1).toNat : ℚ)

end

end A278266.P4357671790063316491

/-! ## A278266.P9854504773337926368

`A140635(A026477(n+1))*A165471(A000040(n+1)²)`
-/

namespace A278266.P9854504773337926368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A026477 (n + 1)).toNat * A165471 (A000040 (n + 1) ^ 2).toNat

end

end A278266.P9854504773337926368

/-!
# A278267: Number of n X 2 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278267, there is no canonical definition to state claims against.
-/

/-! ## A278267.P312580639992954554

`A278272(∑[n+1]+2)`
-/

namespace A278267.P312580639992954554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278267.P312580639992954554

/-! ## A278267.P18445957071882785666

`record[A278272(A133263(n))-char[1]]`
-/

namespace A278267.P18445957071882785666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A133263 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278267.P18445957071882785666

/-! ## A278267.P18417995929705025205

`record[A278272(n+2)/A156602(n)]`
-/

namespace A278267.P18417995929705025205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278272 (n + 2) : ℚ) / (A156602 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278267.P18417995929705025205

/-! ## A278267.P13776651342123344742

`record[Δ[A278272(n+1)]/A350729(n+1)]`
-/

namespace A278267.P13776651342123344742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A350729 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278267.P13776651342123344742

/-! ## A278267.P3510139835429969531

`record[(2-A192517(n+1))*A278272(n+1)]`
-/

namespace A278267.P3510139835429969531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A192517 (n + 1)) * A278272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278267.P3510139835429969531

/-!
# A278268: Number of nX3 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278268, there is no canonical definition to state claims against.
-/

/-! ## A278268.P7571024156455869347

`A278272(∑[n+2]+4)`
-/

namespace A278268.P7571024156455869347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278268.P7571024156455869347

/-! ## A278268.P2635600205014398683

`record[char[A133263(n)]*A278272(n+1)]`
-/

namespace A278268.P2635600205014398683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A278272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278268.P2635600205014398683

/-! ## A278268.P16799815029018826641

`ceil(acot(n))*A278272(A167614(n+1))`
-/

namespace A278268.P16799815029018826641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A278272 (A167614 (n + 1)).toNat

end

end A278268.P16799815029018826641

/-! ## A278268.P7905988242293264232

`A178334(n)*A278272(A167614(n+1))`
-/

namespace A278268.P7905988242293264232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A278272 (A167614 (n + 1)).toNat

end

end A278268.P7905988242293264232

/-! ## A278268.P2050459852276642454

`A278272(A167614(n+1))+A161319(n+1)`
-/

namespace A278268.P2050459852276642454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A167614 (n + 1)).toNat + A161319 (n + 1)

end

end A278268.P2050459852276642454

/-!
# A278269: Number of n X 4 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278269, there is no canonical definition to state claims against.
-/

/-! ## A278269.P8812657173592020184

`A278272(A374004(n+1))`
-/

namespace A278269.P8812657173592020184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A374004 (n + 1)).toNat

end

end A278269.P8812657173592020184

/-! ## A278269.P16448992497607047791

`A278272(A141214(n)+7)`
-/

namespace A278269.P16448992497607047791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A141214 n + 7).toNat

end

end A278269.P16448992497607047791

/-! ## A278269.P13595334863416918856

`A278272(A052905(n)+9)`
-/

namespace A278269.P13595334863416918856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A052905 n + 9).toNat

end

end A278269.P13595334863416918856

/-! ## A278269.P14356900461774324984

`A278272(A167614(n+2)+1)`
-/

namespace A278269.P14356900461774324984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A167614 (n + 2) + 1).toNat

end

end A278269.P14356900461774324984

/-! ## A278269.P7196086145957859710

`A278272(A056000(n)+7)`
-/

namespace A278269.P7196086145957859710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A056000 n + 7).toNat

end

end A278269.P7196086145957859710

/-!
# A278270: Number of nX5 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278270, there is no canonical definition to state claims against.
-/

/-! ## A278270.P14211911558346262808

`A278272(A374005(n+1))`
-/

namespace A278270.P14211911558346262808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A374005 (n + 1)).toNat

end

end A278270.P14211911558346262808

/-! ## A278270.P14389242914105625553

`A278272(eq[4, A193592(n)])`
-/

namespace A278270.P14389242914105625553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278270.P14389242914105625553

/-! ## A278270.P340656296010352314

`A278272(Δ[A023545(n+1)])`
-/

namespace A278270.P340656296010352314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (f1 (n + 1) - f1 n).toNat

end

end A278270.P340656296010352314

/-! ## A278270.P9784403400757034043

`A278272(A141214(n+2)-1)`
-/

namespace A278270.P9784403400757034043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A141214 (n + 2) - 1).toNat

end

end A278270.P9784403400757034043

/-!
# A278271: Number of nX6 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278271, there is no canonical definition to state claims against.
-/

/-! ## A278271.P161238481775931346

`A278272(A374007(n+1))`
-/

namespace A278271.P161238481775931346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A374007 (n + 1)).toNat

end

end A278271.P161238481775931346

/-! ## A278271.P16446815067905468496

`A278272(eq[3, A219347(n)])`
-/

namespace A278271.P16446815067905468496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278271.P16446815067905468496

/-! ## A278271.P5056295283635816669

`A278272(eq[5, A193592(n)])`
-/

namespace A278271.P5056295283635816669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278271.P5056295283635816669

/-!
# A278272: T(n,k)=Number of nXk 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278272, there is no canonical definition to state claims against.
-/

/-! ## A278272.P2486227139213596035

`A054900(A276777(n)^6)`
-/

namespace A278272.P2486227139213596035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A276777 n ^ 6).toNat

end

end A278272.P2486227139213596035

/-! ## A278272.P11125365341040893192

`A004772(A276777(n)!²)`
-/

namespace A278272.P11125365341040893192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (Nat.factorial (A276777 n).toNat ^ 2)

end

end A278272.P11125365341040893192

/-! ## A278272.P11858663961696609540

`A042965(A276777(n)!²)`
-/

namespace A278272.P11858663961696609540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (Nat.factorial (A276777 n).toNat ^ 2)

end

end A278272.P11858663961696609540

/-! ## A278272.P14842755754065275906

`A247210(or(1, A247268(n+1)))`
-/

namespace A278272.P14842755754065275906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247210 (Int.lor 1 (A247268 (n + 1))).toNat

end

end A278272.P14842755754065275906

/-! ## A278272.P8055391567115954014

`p?[A328300(n)]%A328300(n)²`
-/

namespace A278272.P8055391567115954014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A328300 n ^ 2)

end

end A278272.P8055391567115954014

/-!
# A278273: Number of n X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278273, there is no canonical definition to state claims against.
-/

/-! ## A278273.P15280409009481698559

`A278280(∑[4*n]+1)`
-/

namespace A278273.P15280409009481698559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278273.P15280409009481698559

/-! ## A278273.P16009451039338828144

`record[A278280(n+1)/A205545(n+1)]`
-/

namespace A278273.P16009451039338828144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278280 (n + 1) : ℚ) / (A205545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278273.P16009451039338828144

/-! ## A278273.P136804371843073585

`A000041(C(2, 2*n))*A278280(A001844(n))`
-/

namespace A278273.P136804371843073585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A278280 (A001844 n).toNat

end

end A278273.P136804371843073585

/-! ## A278273.P2251485622591262525

`A000010(abs((-1)^n))*A278280(A001844(n))`
-/

namespace A278273.P2251485622591262525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |(-1) ^ n|.toNat * A278280 (A001844 n).toNat

end

end A278273.P2251485622591262525

/-! ## A278273.P16917728660263986348

`A000045(ceil(2/(n+1)))*A278280(A001844(n))`
-/

namespace A278273.P16917728660263986348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat * A278280 (A001844 n).toNat

end

end A278273.P16917728660263986348

/-!
# A278274: Number of n X 2 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278274, the canonical program `A278274.P2485728162986905032` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278274 has offset 1).

The definition of A278274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278274.P17786641663545401139

`ogf((-2x+x^2+x^3)/(-1+3x+x^2-2x^3))`
-/

namespace A278274.P17786641663545401139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -1] [1, -3, -1, 2] n

end

end A278274.P17786641663545401139

namespace A278274

/-- `ogf((-2x+x^2+x^3)/(-1+3x+x^2-2x^3))` -/
def P17786641663545401139.Spec : Prop :=
  ∀ n, P17786641663545401139.a n = A278274 (n + 1)

end A278274

/-! ## A278274.P2485728162986905032

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278274

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P2485728162986905032.Spec : Prop :=
  ∀ n, P2485728162986905032.a n = A278274 (n + 1)

theorem P2485728162986905032.correct : P2485728162986905032.Spec := by
  intro n
  simp only [A278274, Nat.add_sub_cancel]

end A278274

/-! ## A278274.P495000924800235244

`A278280(∑[n+2])`
-/

namespace A278274.P495000924800235244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278274.P495000924800235244

namespace A278274

/-- `A278280(∑[n+2])` -/
def P495000924800235244.Spec : Prop :=
  ∀ n, P495000924800235244.a n = A278274 (n + 1)

end A278274

/-! ## A278274.P3591616602197407757

`record[A278280(∑[A152271(n)])]`
-/

namespace A278274.P3591616602197407757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278274.P3591616602197407757

namespace A278274

/-- `record[A278280(∑[A152271(n)])]` -/
def P3591616602197407757.Spec : Prop :=
  ∀ n, P3591616602197407757.a n = A278274 (n + 1)

end A278274

/-! ## A278274.P18252601914583175456

`record[A097806(n)*A278280(n+1)]`
-/

namespace A278274.P18252601914583175456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A278280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278274.P18252601914583175456

namespace A278274

/-- `record[A097806(n)*A278280(n+1)]` -/
def P18252601914583175456.Spec : Prop :=
  ∀ n, P18252601914583175456.a n = A278274 (n + 1)

end A278274

/-!
# A278275: Number of n X 3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278275, there is no canonical definition to state claims against.
-/

/-! ## A278275.P1638558298935828518

`A278280(∑[n+3]+1)`
-/

namespace A278275.P1638558298935828518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278275.P1638558298935828518

/-! ## A278275.P16201142699704079205

`record[char[A141214(n)]*A278280(n+1)]`
-/

namespace A278275.P16201142699704079205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A278280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278275.P16201142699704079205

/-! ## A278275.P8287809321828817813

`A049076(3*(n+1))*A278280(A165157(2*n+3))`
-/

namespace A278275.P8287809321828817813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (3 * (n + 1)) * A278280 (A165157 (2 * n + 3)).toNat

end

end A278275.P8287809321828817813

/-! ## A278275.P1431963204757369207

`record[A174820(n+3)*A278280(n+1)]`
-/

namespace A278275.P1431963204757369207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174820 (n + 3) * A278280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278275.P1431963204757369207

/-!
# A278276: Number of nX4 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278276, there is no canonical definition to state claims against.
-/

/-! ## A278276.P2097535678744554392

`A278280(A141214(n+1))`
-/

namespace A278276.P2097535678744554392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A141214 (n + 1)).toNat

end

end A278276.P2097535678744554392

/-! ## A278276.P18031810764179616617

`A278280(A155212(n)+5)`
-/

namespace A278276.P18031810764179616617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A155212 n + 5).toNat

end

end A278276.P18031810764179616617

/-! ## A278276.P15926322730932900958

`A278280(A056000(n)+7)`
-/

namespace A278276.P15926322730932900958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A056000 n + 7).toNat

end

end A278276.P15926322730932900958

/-! ## A278276.P2580225996372192505

`A278280(eq[2, A054123(n)])`
-/

namespace A278276.P2580225996372192505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278276.P2580225996372192505

/-! ## A278276.P11046614256379028251

`A278280(eq[3, A193592(n)])`
-/

namespace A278276.P11046614256379028251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278276.P11046614256379028251

/-!
# A278277: Number of nX5 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278277, there is no canonical definition to state claims against.
-/

/-! ## A278277.P2651399276235893042

`A278280(Δ[A264443(n)])`
-/

namespace A278277.P2651399276235893042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (f1 (n + 1) - f1 n).toNat

end

end A278277.P2651399276235893042

/-! ## A278277.P8322739030587031814

`A278280(eq[2, A092921(n)])`
-/

namespace A278277.P8322739030587031814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278277.P8322739030587031814

/-! ## A278277.P4927840178333206112

`A278280(eq[4, A054123(n)])`
-/

namespace A278277.P4927840178333206112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278277.P4927840178333206112

/-! ## A278277.P5361741531199110928

`A278280(eq[4, A193592(n)])`
-/

namespace A278277.P5361741531199110928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278277.P5361741531199110928

/-! ## A278277.P17434717715761405369

`A278280(Δ[A023545(n+1)])`
-/

namespace A278277.P17434717715761405369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (f1 (n + 1) - f1 n).toNat

end

end A278277.P17434717715761405369

/-!
# A278278: Number of nX6 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278278, there is no canonical definition to state claims against.
-/

/-! ## A278278.P9248231949835050635

`A278280(A052905(n+3))`
-/

namespace A278278.P9248231949835050635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A052905 (n + 3)).toNat

end

end A278278.P9248231949835050635

/-! ## A278278.P11985713496734883754

`A278280(eq[3, A219347(n)])`
-/

namespace A278278.P11985713496734883754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278278.P11985713496734883754

/-! ## A278278.P13478472881948944957

`A278280(eq[5, A193592(n)])`
-/

namespace A278278.P13478472881948944957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278278.P13478472881948944957

/-! ## A278278.P613592760428781259

`A278280(eq[8, A258709(n)])`
-/

namespace A278278.P613592760428781259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278278.P613592760428781259

/-! ## A278278.P924345857335953959

`A278280(A000124(n+6)-6)`
-/

namespace A278278.P924345857335953959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A000124 (n + 6) - 6).toNat

end

end A278278.P924345857335953959

/-!
# A278279: Number of nX7 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278279, there is no canonical definition to state claims against.
-/

/-! ## A278279.P18390344102777131953

`A278280(A055999(n+4))`
-/

namespace A278279.P18390344102777131953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A055999 (n + 4)).toNat

end

end A278279.P18390344102777131953

/-! ## A278279.P1017585080611167003

`A278280(eq[4, A219347(n)])`
-/

namespace A278279.P1017585080611167003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278279.P1017585080611167003

/-! ## A278279.P2240871334759904410

`A278280(eq[6, A193592(n)])`
-/

namespace A278279.P2240871334759904410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278279.P2240871334759904410

/-! ## A278279.P10230759946989821648

`A278280(Δ[A023551(n+2)])`
-/

namespace A278279.P10230759946989821648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (f1 (n + 1) - f1 n).toNat

end

end A278279.P10230759946989821648

/-! ## A278279.P7896027781012340297

`A278280(∑[A020719(n)]+15)`
-/

namespace A278279.P7896027781012340297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A278279.P7896027781012340297

/-!
# A278281: Number of 2 X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278281, the canonical program `A278281.P2468313917339139431` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278281 has offset 1).

The definition of A278281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278281.P14364797376776358931

`ogf((-2x+x^3)/(-1+2x+3x^2-x^3+x^4))`
-/

namespace A278281.P14364797376776358931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, -1] [1, -2, -3, 1, -1] n

end

end A278281.P14364797376776358931

namespace A278281

/-- `ogf((-2x+x^3)/(-1+2x+3x^2-x^3+x^4))` -/
def P14364797376776358931.Spec : Prop :=
  ∀ n, P14364797376776358931.a n = A278281 (n + 1)

end A278281

/-! ## A278281.P2468313917339139431

`2*a(n-1)+3*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278281

/-- `2*a(n-1)+3*a(n-2)-a(n-3)+a(n-4)` -/
def P2468313917339139431.Spec : Prop :=
  ∀ n, P2468313917339139431.a n = A278281 (n + 1)

theorem P2468313917339139431.correct : P2468313917339139431.Spec := by
  intro n
  simp only [A278281, Nat.add_sub_cancel]

end A278281

/-! ## A278281.P6542909156826046883

`A278280(∑[n+1]+2)`
-/

namespace A278281.P6542909156826046883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278281.P6542909156826046883

namespace A278281

/-- `A278280(∑[n+1]+2)` -/
def P6542909156826046883.Spec : Prop :=
  ∀ n, P6542909156826046883.a n = A278281 (n + 1)

end A278281

/-! ## A278281.P3631852623559615243

`record[A278280(n+1)%A140303(n)]`
-/

namespace A278281.P3631852623559615243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278280 (n + 1)) (A140303 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278281.P3631852623559615243

namespace A278281

/-- `record[A278280(n+1)%A140303(n)]` -/
def P3631852623559615243.Spec : Prop :=
  ∀ n, P3631852623559615243.a n = A278281 (n + 1)

end A278281

/-! ## A278281.P4426697969513779519

`record[lcm(A059778(n), A278280(n+1))]`
-/

namespace A278281.P4426697969513779519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059778 n) (A278280 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278281.P4426697969513779519

namespace A278281

/-- `record[lcm(A059778(n), A278280(n+1))]` -/
def P4426697969513779519.Spec : Prop :=
  ∀ n, (P4426697969513779519.a n : ℤ) = A278281 (n + 1)

end A278281

/-!
# A278282: Number of 3Xn 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278282, there is no canonical definition to state claims against.
-/

/-! ## A278282.P375573370850215674

`A278280(∑[n+2]+4)`
-/

namespace A278282.P375573370850215674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278282.P375573370850215674

/-! ## A278282.P3121129508535557012

`A278280(A167614(n+1))%(6^n)`
-/

namespace A278282.P3121129508535557012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278280 (A167614 (n + 1)).toNat) (6 ^ n : ℤ)

end

end A278282.P3121129508535557012

/-! ## A278282.P2212601917547706600

`A054977(n)*A278280(A167614(n+1))`
-/

namespace A278282.P2212601917547706600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A278280 (A167614 (n + 1)).toNat

end

end A278282.P2212601917547706600

/-! ## A278282.P14609821688707503037

`A178334(n)*A278280(A167614(n+1))`
-/

namespace A278282.P14609821688707503037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A278280 (A167614 (n + 1)).toNat

end

end A278282.P14609821688707503037

/-! ## A278282.P15744905092381205426

`A014963(40*(n+1))*A278280(A167614(n+1))`
-/

namespace A278282.P15744905092381205426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (40 * (n + 1)) * A278280 (A167614 (n + 1)).toNat

end

end A278282.P15744905092381205426

/-!
# A278283: Number of 4Xn 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278283, there is no canonical definition to state claims against.
-/

/-! ## A278283.P14523855103428145565

`A278280(A141214(n)+7)`
-/

namespace A278283.P14523855103428145565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A141214 n + 7).toNat

end

end A278283.P14523855103428145565

/-! ## A278283.P4856822454985086123

`A278280(A052905(n)+9)`
-/

namespace A278283.P4856822454985086123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A052905 n + 9).toNat

end

end A278283.P4856822454985086123

/-! ## A278283.P17853420796548678229

`A278280(A055999(n)+10)`
-/

namespace A278283.P17853420796548678229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A055999 n + 10).toNat

end

end A278283.P17853420796548678229

/-! ## A278283.P7989624857718383409

`A278280(A167614(n+2)+1)`
-/

namespace A278283.P7989624857718383409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A167614 (n + 2) + 1).toNat

end

end A278283.P7989624857718383409

/-! ## A278283.P12586213424325022155

`A278280(A112355(n+1)+4)`
-/

namespace A278283.P12586213424325022155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A112355 (n + 1) + 4).toNat

end

end A278283.P12586213424325022155

/-!
# A278284: Number of 5 X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278284, there is no canonical definition to state claims against.
-/

/-! ## A278284.P16564992997954986404

`A278280(A155212(n)+13)`
-/

namespace A278284.P16564992997954986404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A155212 n + 13).toNat

end

end A278284.P16564992997954986404

/-! ## A278284.P9970229194701801037

`A278280(A056000(n)+15)`
-/

namespace A278284.P9970229194701801037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A056000 n + 15).toNat

end

end A278284.P9970229194701801037

/-! ## A278284.P7701615567754009862

`A278280(eq[7, A066657(n)])`
-/

namespace A278284.P7701615567754009862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278284.P7701615567754009862

/-! ## A278284.P15409853917137712286

`A278280(A167614(n+3)+2)`
-/

namespace A278284.P15409853917137712286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A167614 (n + 3) + 2).toNat

end

end A278284.P15409853917137712286

/-! ## A278284.P4368436157309851077

`A278280(A046691(n+2)+9)`
-/

namespace A278284.P4368436157309851077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A046691 (n + 2) + 9).toNat

end

end A278284.P4368436157309851077

/-!
# A278285: Number of 6Xn 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278285, there is no canonical definition to state claims against.
-/

/-! ## A278285.P16961992483945140698

`A278280(A056115(n)+21)`
-/

namespace A278285.P16961992483945140698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A056115 n + 21).toNat

end

end A278285.P16961992483945140698

/-! ## A278285.P14912323718122575425

`A278280(eq[7, A131818(n+1)])`
-/

namespace A278285.P14912323718122575425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278285.P14912323718122575425

/-! ## A278285.P13969231809582922854

`A278280(eq[4, A025581(n)]+11)`
-/

namespace A278285.P13969231809582922854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 11)

end

end A278285.P13969231809582922854

/-! ## A278285.P7937558225478366328

`A278280(A000124(n+6)-(n+1))`
-/

namespace A278285.P7937558225478366328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A278285.P7937558225478366328

/-! ## A278285.P16076898043280017781

`A278280(∑[A020719(n)]+15-A005408(n))`
-/

namespace A278285.P16076898043280017781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (∑ j ∈ Finset.range (n + 1), f1 j + 15 - A005408 n).toNat

end

end A278285.P16076898043280017781

/-!
# A278286: Number of 7Xn 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278286, there is no canonical definition to state claims against.
-/

/-! ## A278286.P11440551830657315667

`A278280(eq[11, A066657(n)])`
-/

namespace A278286.P11440551830657315667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278286.P11440551830657315667

/-! ## A278286.P16291548192969152026

`A278280(A167614(n+5)+4)`
-/

namespace A278286.P16291548192969152026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A167614 (n + 5) + 4).toNat

end

end A278286.P16291548192969152026

/-! ## A278286.P3888528728426637241

`A278280(A000124(n+6)+6)`
-/

namespace A278286.P3888528728426637241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A000124 (n + 6) + 6).toNat

end

end A278286.P3888528728426637241

/-! ## A278286.P14089389774931781194

`A278280(eq[8, A131818(n+1)])`
-/

namespace A278286.P14089389774931781194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278286.P14089389774931781194

/-! ## A278286.P6368460865209235756

`A278280(A155212(n+4)+1-A005408(n))`
-/

namespace A278286.P6368460865209235756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A155212 (n + 4) + 1 - A005408 n).toNat

end

end A278286.P6368460865209235756

/-!
# A278287: Number of primes of the form 4k+3 such that 4(n - k) - 3 is 1 or prime where (4k+3)/3 >= n.

The programs for A278287, there is no canonical definition to state claims against.
-/

/-! ## A278287.P5377747200013263452

`A261612(n)+A010054(A139199(n+1))`
-/

namespace A278287.P5377747200013263452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261612 n + A010054 (A139199 (n + 1)).toNat

end

end A278287.P5377747200013263452

/-! ## A278287.P10368422285466739953

`A051731(A320924(3*n+4))+(n%3)^(n%2)`
-/

namespace A278287.P10368422285466739953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A320924 (3 * n + 4)).toNat + (((n % 3) ^ (n % 2) : ℕ) : ℤ)

end

end A278287.P10368422285466739953

/-! ## A278287.P816125669435487193

`A261612(n)+A254379(A104882(n))`
-/

namespace A278287.P816125669435487193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261612 n + A254379 (A104882 n).toNat

end

end A278287.P816125669435487193

/-! ## A278287.P5480845733465485795

`A167746(A240757(n+1)+A001248(n+1))`
-/

namespace A278287.P5480845733465485795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (A240757 (n + 1) + A001248 (n + 1)).toNat

end

end A278287.P5480845733465485795

/-! ## A278287.P10123067687386991621

`A093718(A000579(n)+n)`
-/

namespace A278287.P10123067687386991621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093718 (A000579 n + (n : ℤ)).toNat

end

end A278287.P10123067687386991621

/-!
# A278290: Number of neighbors of each new term in a square array read by antidiagonals.

The programs for A278290, the canonical program `A278290.P9198290756917287821` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278290 has offset 1).

The definition of A278290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278290.P9198290756917287821

`a(n-floor(sqrt(2*n+1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A278290

/-- `a(n-floor(sqrt(2*n+1)))` -/
def P9198290756917287821.Spec : Prop :=
  ∀ n, (P9198290756917287821.a n : ℤ) = A278290 (n + 1)

theorem P9198290756917287821.correct : P9198290756917287821.Spec := by
  intro n
  simp only [A278290, Nat.add_sub_cancel]

end A278290

/-! ## A278290.P11643553858271695639

`(2-char[∑[n]])²-A136521(n)`
-/

namespace A278290.P11643553858271695639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 - A136521 n

end

end A278290.P11643553858271695639

namespace A278290

/-- `(2-char[∑[n]])²-A136521(n)` -/
def P11643553858271695639.Spec : Prop :=
  ∀ n, P11643553858271695639.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P17188441420746089784

`ceil(abs(sin(n)))+3%A029618(n)`
-/

namespace A278290.P17188441420746089784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + Int.tmod 3 (A029618 n)

end

end A278290.P17188441420746089784

namespace A278290

/-- `ceil(abs(sin(n)))+3%A029618(n)` -/
def P17188441420746089784.Spec : Prop :=
  ∀ n, P17188441420746089784.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P1931817161787691879

`and(A278597(n+1)+1, 6-char[∑[n]])`
-/

namespace A278290.P1931817161787691879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278597 (n + 1) + 1) (6 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A278290.P1931817161787691879

namespace A278290

/-- `and(A278597(n+1)+1, 6-char[∑[n]])` -/
def P1931817161787691879.Spec : Prop :=
  ∀ n, P1931817161787691879.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P1949847752647294280

`A261787(a(n-1))^(2-char[∑[n-1]])` with `a(0)=0, a(1)=1`
-/

namespace A278290.P1949847752647294280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A261787 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A278290.P1949847752647294280

namespace A278290

/-- `A261787(a(n-1))^(2-char[∑[n-1]])` -/
def P1949847752647294280.Spec : Prop :=
  ∀ n, P1949847752647294280.a n = (A278290 (n + 1) : ℚ)

end A278290

/-! ## A278290.P14414709874008127621

`A068067(A087112(n+1))`
-/

namespace A278290.P14414709874008127621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (A087112 (n + 1)).toNat

end

end A278290.P14414709874008127621

namespace A278290

/-- `A068067(A087112(n+1))` -/
def P14414709874008127621.Spec : Prop :=
  ∀ n, P14414709874008127621.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P9990072825438054348

`A273170(a(A271439(n)))` with `a(0)=0`
-/

namespace A278290.P9990072825438054348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A273170 (a (A271439 n).toNat).toNat

end

end A278290.P9990072825438054348

namespace A278290

/-- `A273170(a(A271439(n)))` -/
def P9990072825438054348.Spec : Prop :=
  ∀ n, P9990072825438054348.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P13715030154783006369

`A278219(a(A271439(n)))` with `a(0)=0`
-/

namespace A278290.P13715030154783006369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A278219 (a (A271439 n).toNat).toNat

end

end A278290.P13715030154783006369

namespace A278290

/-- `A278219(a(A271439(n)))` -/
def P13715030154783006369.Spec : Prop :=
  ∀ n, P13715030154783006369.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P15829201378198706720

`A286598(a(A271439(n)))` with `a(0)=0`
-/

namespace A278290.P15829201378198706720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A286598 (a (A271439 n).toNat).toNat

end

end A278290.P15829201378198706720

namespace A278290

/-- `A286598(a(A271439(n)))` -/
def P15829201378198706720.Spec : Prop :=
  ∀ n, P15829201378198706720.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P9181938191673769056

`A302707(a(A271439(n)))` with `a(0)=0`
-/

namespace A278290.P9181938191673769056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302707 (a (A271439 n).toNat).toNat

end

end A278290.P9181938191673769056

namespace A278290

/-- `A302707(a(A271439(n)))` -/
def P9181938191673769056.Spec : Prop :=
  ∀ n, P9181938191673769056.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P3718677491901949948

`A004531(a(A271439(n))²)` with `a(0)=0`
-/

namespace A278290.P3718677491901949948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004531 (a (A271439 n).toNat ^ 2).toNat

end

end A278290.P3718677491901949948

namespace A278290

/-- `A004531(a(A271439(n))²)` -/
def P3718677491901949948.Spec : Prop :=
  ∀ n, P3718677491901949948.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P8040205865731142853

`A057427(n)+3%A029618(n)`
-/

namespace A278290.P8040205865731142853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.tmod 3 (A029618 n)

end

end A278290.P8040205865731142853

namespace A278290

/-- `A057427(n)+3%A029618(n)` -/
def P8040205865731142853.Spec : Prop :=
  ∀ n, P8040205865731142853.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P13512804899899040783

`∑{d}[A087112(n+1), A100073(#)]`
-/

namespace A278290.P13512804899899040783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100073 d

end

end A278290.P13512804899899040783

namespace A278290

/-- `∑{d}[A087112(n+1), A100073(#)]` -/
def P13512804899899040783.Spec : Prop :=
  ∀ n, P13512804899899040783.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P998631989023295048

`and(gcd(4, A023758(n+1)), A003817(n))`
-/

namespace A278290.P998631989023295048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.gcd 4 (A023758 (n + 1)) : ℤ) (A003817 n)

end

end A278290.P998631989023295048

namespace A278290

/-- `and(gcd(4, A023758(n+1)), A003817(n))` -/
def P998631989023295048.Spec : Prop :=
  ∀ n, P998631989023295048.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P957790017062784016

`gcd(lcm(4, A001221(n+1)), A136960(n+1))`
-/

namespace A278290.P957790017062784016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 4 (A001221 (n + 1)) : ℤ) (A136960 (n + 1))

end

end A278290.P957790017062784016

namespace A278290

/-- `gcd(lcm(4, A001221(n+1)), A136960(n+1))` -/
def P957790017062784016.Spec : Prop :=
  ∀ n, (P957790017062784016.a n : ℤ) = A278290 (n + 1)

end A278290

/-! ## A278290.P6776260141420799561

`A013942(a(n-1))^(A023532(n)+1)` with `a(0)=0, a(1)=1`
-/

namespace A278290.P6776260141420799561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A013942 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A023532 n + 1 : ℤ)

end

end A278290.P6776260141420799561

namespace A278290

/-- `A013942(a(n-1))^(A023532(n)+1)` -/
def P6776260141420799561.Spec : Prop :=
  ∀ n, P6776260141420799561.a n = (A278290 (n + 1) : ℚ)

end A278290

/-! ## A278290.P7245437233563743310

`A000010(A080036(a(A271439(n))))` with `a(0)=0`
-/

namespace A278290.P7245437233563743310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (A080036 (a (A271439 n).toNat).toNat).toNat

end

end A278290.P7245437233563743310

namespace A278290

/-- `A000010(A080036(a(A271439(n))))` -/
def P7245437233563743310.Spec : Prop :=
  ∀ n, P7245437233563743310.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P4396577471163158775

`A001222(A001227(A087112(n+1))!)`
-/

namespace A278290.P4396577471163158775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A001227 (A087112 (n + 1)).toNat).toNat)

end

end A278290.P4396577471163158775

namespace A278290

/-- `A001222(A001227(A087112(n+1))!)` -/
def P4396577471163158775.Spec : Prop :=
  ∀ n, P4396577471163158775.a n = A278290 (n + 1)

end A278290

/-!
# A278291: Numbers n such that n-1 has the same number of prime factors as n (with multiplicity).

The programs for A278291, the canonical program `A278291.P6818731943962716287` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278291 has offset 1).

The definition of A278291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278291.P6818731943962716287

`A045920(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278291

/-- `A045920(n+1)+1` -/
def P6818731943962716287.Spec : Prop :=
  ∀ n, P6818731943962716287.a n = A278291 (n + 1)

theorem P6818731943962716287.correct : P6818731943962716287.Spec := by
  intro n
  simp only [A278291, Nat.add_sub_cancel]

end A278291

/-! ## A278291.P4257652974218685371

`ceil(A115167(n+1)/2)`
-/

namespace A278291.P4257652974218685371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115167 (n + 1) : ℚ) / 2⌉

end

end A278291.P4257652974218685371

namespace A278291

/-- `ceil(A115167(n+1)/2)` -/
def P4257652974218685371.Spec : Prop :=
  ∀ n, P4257652974218685371.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P11087888982828592025

`A273943(A115167(n+1)+1)`
-/

namespace A278291.P11087888982828592025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A115167 (n + 1) + 1).toNat

end

end A278291.P11087888982828592025

namespace A278291

/-- `A273943(A115167(n+1)+1)` -/
def P11087888982828592025.Spec : Prop :=
  ∀ n, P11087888982828592025.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P5132811415572289255

`eq[A001222(n+1), A001222(n+2)]+2`
-/

namespace A278291.P5132811415572289255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A278291.P5132811415572289255

namespace A278291

/-- `eq[A001222(n+1), A001222(n+2)]+2` -/
def P5132811415572289255.Spec : Prop :=
  ∀ n, (P5132811415572289255.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P2803826112864334228

`lt[Δ[∑{e}[n+1, #]]²+1, 2]+2`
-/

namespace A278291.P2803826112864334228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 2

end

end A278291.P2803826112864334228

namespace A278291

/-- `lt[Δ[∑{e}[n+1, #]]²+1, 2]+2` -/
def P2803826112864334228.Spec : Prop :=
  ∀ n, (P2803826112864334228.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P11825226898506708712

`eq[1, A068796(n+1)]+2`
-/

namespace A278291.P11825226898506708712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A278291.P11825226898506708712

namespace A278291

/-- `eq[1, A068796(n+1)]+2` -/
def P11825226898506708712.Spec : Prop :=
  ∀ n, (P11825226898506708712.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P17533398023002909396

`eq[0, Δ[A001222(n+1)]]+2`
-/

namespace A278291.P17533398023002909396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A278291.P17533398023002909396

namespace A278291

/-- `eq[0, Δ[A001222(n+1)]]+2` -/
def P17533398023002909396.Spec : Prop :=
  ∀ n, (P17533398023002909396.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P6607050380700098326

`record[gcd(n+3, Δ[A001222(n+2)])]`
-/

namespace A278291.P6607050380700098326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278291.P6607050380700098326

namespace A278291

/-- `record[gcd(n+3, Δ[A001222(n+2)])]` -/
def P6607050380700098326.Spec : Prop :=
  ∀ n, (P6607050380700098326.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P3020349414248679796

`A020725(A045920(n+1))`
-/

namespace A278291.P3020349414248679796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A045920 (n + 1)).toNat

end

end A278291.P3020349414248679796

namespace A278291

/-- `A020725(A045920(n+1))` -/
def P3020349414248679796.Spec : Prop :=
  ∀ n, P3020349414248679796.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P9546212528566942737

`eq[A073093(n+2), A073093(n+1)]+2`
-/

namespace A278291.P9546212528566942737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A278291.P9546212528566942737

namespace A278291

/-- `eq[A073093(n+2), A073093(n+1)]+2` -/
def P9546212528566942737.Spec : Prop :=
  ∀ n, (P9546212528566942737.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P584857824254885543

`eq[A001222(A028310(n)), A086436(n+1)]+1`
-/

namespace A278291.P584857824254885543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A278291.P584857824254885543

namespace A278291

/-- `eq[A001222(A028310(n)), A086436(n+1)]+1` -/
def P584857824254885543.Spec : Prop :=
  ∀ n, (P584857824254885543.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P14939763412168354712

`lt[A077655(n+1), A077655(A028310(n))]+1`
-/

namespace A278291.P14939763412168354712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A278291.P14939763412168354712

namespace A278291

/-- `lt[A077655(n+1), A077655(A028310(n))]+1` -/
def P14939763412168354712.Spec : Prop :=
  ∀ n, (P14939763412168354712.a n : ℤ) = A278291 (n + 1)

end A278291

/-! ## A278291.P11798657372540571265

`A000027(eq[A165825(n+1), A165825(n+2)]+1)+1`
-/

namespace A278291.P11798657372540571265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A278291.P11798657372540571265

namespace A278291

/-- `A000027(eq[A165825(n+1), A165825(n+2)]+1)+1` -/
def P11798657372540571265.Spec : Prop :=
  ∀ n, P11798657372540571265.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P5667460516458825541

`A000027(eq[A165826(n+1), A165826(n+2)]+1)+1`
-/

namespace A278291.P5667460516458825541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A278291.P5667460516458825541

namespace A278291

/-- `A000027(eq[A165826(n+1), A165826(n+2)]+1)+1` -/
def P5667460516458825541.Spec : Prop :=
  ∀ n, P5667460516458825541.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P8003169245435259408

`A028310(eq[A165825(n+1), A165825(n+2)]+1)+1`
-/

namespace A278291.P8003169245435259408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A278291.P8003169245435259408

namespace A278291

/-- `A028310(eq[A165825(n+1), A165825(n+2)]+1)+1` -/
def P8003169245435259408.Spec : Prop :=
  ∀ n, P8003169245435259408.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P9170342228998063598

`A028310(eq[A165826(n+1), A165826(n+2)]+1)+1`
-/

namespace A278291.P9170342228998063598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A278291.P9170342228998063598

namespace A278291

/-- `A028310(eq[A165826(n+1), A165826(n+2)]+1)+1` -/
def P9170342228998063598.Spec : Prop :=
  ∀ n, P9170342228998063598.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P11170098047921796594

`A000463(A115167(n+1))`
-/

namespace A278291.P11170098047921796594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A115167 (n + 1)).toNat

end

end A278291.P11170098047921796594

namespace A278291

/-- `A000463(A115167(n+1))` -/
def P11170098047921796594.Spec : Prop :=
  ∀ n, P11170098047921796594.a n = A278291 (n + 1)

end A278291

/-! ## A278291.P17543880718678312636

`lt[A276116(n+1), 2]+2`
-/

namespace A278291.P17543880718678312636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276116 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A278291.P17543880718678312636

namespace A278291

/-- `lt[A276116(n+1), 2]+2` -/
def P17543880718678312636.Spec : Prop :=
  ∀ n, (P17543880718678312636.a n : ℤ) = A278291 (n + 1)

end A278291

/-!
# A278292: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A278292, there is no canonical definition to state claims against.
-/

/-! ## A278292.P16446262390318648654

`A281520(n)-A379668(A338130(n+4))`
-/

namespace A278292.P16446262390318648654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281520 n - A379668 (A338130 (n + 4)).toNat

end

end A278292.P16446262390318648654

/-! ## A278292.P9325576131754090650

`∏{e}[7^n, A281634(#)]-A039982(A094716(2*(n+2)))`
-/

namespace A278292.P9325576131754090650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A281634 (Nat.factorization (f1 n) p) - A039982 (A094716 (2 * (n + 2))).toNat

end

end A278292.P9325576131754090650

/-!
# A278293: a(n) is the number of prime factors of A278291(n) (with multiplicity).

The programs for A278293, the canonical program `A278293.P6110886121231310369` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278293 has offset 1).

The definition of A278293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A045920, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278293.P6110886121231310369

`A001222(A045920(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278293

/-- `A001222(A045920(n+1))` -/
def P6110886121231310369.Spec : Prop :=
  ∀ n, P6110886121231310369.a n = A278293 (n + 1)

theorem P6110886121231310369.correct : P6110886121231310369.Spec := by
  intro n
  simp only [A278293, Nat.add_sub_cancel]

end A278293

/-! ## A278293.P1824046209498892042

`A001222(A278291(n+1))`
-/

namespace A278293.P1824046209498892042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278291 (n + 1)).toNat

end

end A278293.P1824046209498892042

namespace A278293

/-- `A001222(A278291(n+1))` -/
def P1824046209498892042.Spec : Prop :=
  ∀ n, P1824046209498892042.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P6903304472810578014

`A001222((A115167(n+1)+1)/2)`
-/

namespace A278293.P6903304472810578014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A115167 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A278293.P6903304472810578014

namespace A278293

/-- `A001222((A115167(n+1)+1)/2)` -/
def P6903304472810578014.Spec : Prop :=
  ∀ n, P6903304472810578014.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P6847365429577239242

`A001222(A115167(n+1)+1)-1`
-/

namespace A278293.P6847365429577239242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115167 (n + 1) + 1).toNat - 1

end

end A278293.P6847365429577239242

namespace A278293

/-- `A001222(A115167(n+1)+1)-1` -/
def P6847365429577239242.Spec : Prop :=
  ∀ n, P6847365429577239242.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P1460831334536514346

`A001222(eq[A001222(n+1), A001222(n+2)]+1)`
-/

namespace A278293.P1460831334536514346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A278293.P1460831334536514346

namespace A278293

/-- `A001222(eq[A001222(n+1), A001222(n+2)]+1)` -/
def P1460831334536514346.Spec : Prop :=
  ∀ n, P1460831334536514346.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P6993876169664070111

`A086436(A045920(n+1)+1)`
-/

namespace A278293.P6993876169664070111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A045920 (n + 1) + 1).toNat

end

end A278293.P6993876169664070111

namespace A278293

/-- `A086436(A045920(n+1)+1)` -/
def P6993876169664070111.Spec : Prop :=
  ∀ n, P6993876169664070111.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P5712163865816184700

`A086436(A278291(n+1)-1)`
-/

namespace A278293.P5712163865816184700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A278291 (n + 1) - 1).toNat

end

end A278293.P5712163865816184700

namespace A278293

/-- `A086436(A278291(n+1)-1)` -/
def P5712163865816184700.Spec : Prop :=
  ∀ n, P5712163865816184700.a n = A278293 (n + 1)

end A278293

/-! ## A278293.P13536703067910369325

`A001222(A000463(A115167(n+1)))`
-/

namespace A278293.P13536703067910369325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000463 (A115167 (n + 1)).toNat).toNat

end

end A278293.P13536703067910369325

namespace A278293

/-- `A001222(A000463(A115167(n+1)))` -/
def P13536703067910369325.Spec : Prop :=
  ∀ n, P13536703067910369325.a n = A278293 (n + 1)

end A278293

/-!
# A278294: a(n) = first term in A278291 with n prime factors.

The programs for A278294, there is no canonical definition to state claims against.
-/

/-! ## A278294.P5667271846868855580

`A115186(n+1)+1`
-/

namespace A278294.P5667271846868855580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115186 (n + 1) + 1

end

end A278294.P5667271846868855580

/-! ## A278294.P13729012091266356229

`ceil(A154704(n+2)/2)`
-/

namespace A278294.P13729012091266356229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154704 (n + 2) : ℚ) / 2⌉

end

end A278294.P13729012091266356229

/-! ## A278294.P6135210611991888699

`A178334(n+4)+floor(A154704(n+2)/2)`
-/

namespace A278294.P6135210611991888699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 4) + ⌊(A154704 (n + 2) : ℚ) / 2⌋

end

end A278294.P6135210611991888699

/-! ## A278294.P1756204610112310586

`A001222(A007918(n))+floor(A154704(n+2)/2)`
-/

namespace A278294.P1756204610112310586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat + ⌊(A154704 (n + 2) : ℚ) / 2⌋

end

end A278294.P1756204610112310586

/-! ## A278294.P5373155463027522144

`A001222(A007529(n+1))+floor(A154704(n+2)/2)`
-/

namespace A278294.P5373155463027522144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007529 (n + 1)).toNat + ⌊(A154704 (n + 2) : ℚ) / 2⌋

end

end A278294.P5373155463027522144

/-!
# A278295: Number of n X n X n triangular 0..1 arrays with horizontal row sums nondecreasing from top to bottom.

The programs for A278295, there is no canonical definition to state claims against.
-/

/-! ## A278295.P1527859393954518281

`A248173(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A278295.P1527859393954518281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A248173 (a (n - 1)).toNat + (n : ℤ)

end

end A278295.P1527859393954518281

/-!
# A278296: Expansion of ((sqrt(2)-1)*(-sqrt(2);x)_inf - (sqrt(2)+1)*(sqrt(2);x)_inf)/2, where (a;q)_inf is the q-Pochhammer symbol.

The programs for A278296, there is no canonical definition to state claims against.
-/

/-! ## A278296.P1929464622724591642

`A278297(n)+A238132(n)`
-/

namespace A278296.P1929464622724591642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278297 n + A238132 n

end

end A278296.P1929464622724591642

/-! ## A278296.P11899863866250394274

`A238131(n)+A278297(n)-A238133(n)`
-/

namespace A278296.P11899863866250394274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n + (A278297 n - A238133 n)

end

end A278296.P11899863866250394274

/-! ## A278296.P15219473205337606534

`A278297(n)+A210485(∑[n]+1)-A238131(n)`
-/

namespace A278296.P15219473205337606534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278297 n + (A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A238131 n)

end

end A278296.P15219473205337606534

/-! ## A278296.P2575437307862738539

`A213177(A000124(n))+A278297(n)-A238131(n)`
-/

namespace A278296.P2575437307862738539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A000124 n).toNat + (A278297 n - A238131 n)

end

end A278296.P2575437307862738539

/-! ## A278296.P6921239637835719507

`A327622(A034856(n+1))+A278297(n)-A238131(n)`
-/

namespace A278296.P6921239637835719507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A034856 (n + 1)).toNat + (A278297 n - A238131 n)

end

end A278296.P6921239637835719507

/-! ## A278296.P3931802339113901752

`A278297(n)+A067588(n)-(A238131(n)+A090867(n))`
-/

namespace A278296.P3931802339113901752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278297 n + (A067588 n - (A238131 n + A090867 n))

end

end A278296.P3931802339113901752

/-! ## A278296.P3066966879183717016

`A278297(n)+A116676(n)+A116680(n)-A238131(n)`
-/

namespace A278296.P3066966879183717016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278297 n + (A116676 n + (A116680 n - A238131 n))

end

end A278296.P3066966879183717016

/-!
# A278297: a(n) = A278296(n) - A238132(n).

The programs for A278297, there is no canonical definition to state claims against.
-/

/-! ## A278297.P16098947630654325662

`A278296(n)-A238132(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A278297.P16098947630654325662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278296 n - A238132 n

end

end A278297.P16098947630654325662

/-! ## A278297.P12897655082168623346

`A238133(n)+A278296(n)-A238131(n)`
-/

namespace A278297.P12897655082168623346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238133 n + (A278296 n - A238131 n)

end

end A278297.P12897655082168623346

/-! ## A278297.P8666820420989536048

`A278296(n)-(A210485(∑[n]+1)-A238131(n))`
-/

namespace A278297.P8666820420989536048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278296 n - (A210485 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A238131 n)

end

end A278297.P8666820420989536048

/-! ## A278297.P3132069053698166684

`A238131(n)+A278296(n)-A213177(A000124(n))`
-/

namespace A278297.P3132069053698166684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238131 n + (A278296 n - A213177 (A000124 n).toNat)

end

end A278297.P3132069053698166684

/-! ## A278297.P11347223597540462690

`A278296(n)-(A067588(n)-(A238131(n)+A090867(n)))`
-/

namespace A278297.P11347223597540462690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278296 n - (A067588 n - (A238131 n + A090867 n))

end

end A278297.P11347223597540462690

/-! ## A278297.P11353704953591216134

`A278296(n)-(A116676(n)+A116680(n)-A238131(n))`
-/

namespace A278297.P11353704953591216134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278296 n - (A116676 n + (A116680 n - A238131 n))

end

end A278297.P11353704953591216134

/-!
# A278298: Expansion of ((sqrt(2);x)_inf + (-sqrt(2);x)_inf - 2)/4, where(a;q)_inf is the q-Pochhammer symbol.

The programs for A278298, there is no canonical definition to state claims against.
-/

/-! ## A278298.P1691878861446162781

`A339183(A267008(n+1))`
-/

namespace A278298.P1691878861446162781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A267008 (n + 1)).toNat

end

end A278298.P1691878861446162781

/-! ## A278298.P5080509569644554568

`A118399(n+1)+A025466(A000055(n))`
-/

namespace A278298.P5080509569644554568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118399 (n + 1) + A025466 (A000055 n).toNat

end

end A278298.P5080509569644554568

/-! ## A278298.P833311230323990109

`A178798(A158780(n))+A118399(n+1)`
-/

namespace A278298.P833311230323990109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A158780 n).toNat + A118399 (n + 1)

end

end A278298.P833311230323990109

/-! ## A278298.P11019439437844453191

`A185284(A284827(n+1))+A118399(n+1)`
-/

namespace A278298.P11019439437844453191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A284827 (n + 1)).toNat + A118399 (n + 1)

end

end A278298.P11019439437844453191

/-!
# A278299: a(n) is the tile count of the smallest polyomino with an n-coloring such that every color is adjacent to every other distinct color at least once.

The programs for A278299, there is no canonical definition to state claims against.
-/

/-! ## A278299.P10984588922800076401

`A107324(A081515(n+2))`
-/

namespace A278299.P10984588922800076401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A081515 (n + 2)).toNat

end

end A278299.P10984588922800076401

/-! ## A278299.P11954928997303667533

`eq[A018783(2*n+1), A057226(A195073(2*n+1)+1)]+1`
-/

namespace A278299.P11954928997303667533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (A195073 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A278299.P11954928997303667533

/-! ## A278299.P1310243261199115912

`A181672(A075552(n+1))`
-/

namespace A278299.P1310243261199115912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A075552 (n + 1)).toNat

end

end A278299.P1310243261199115912

/-! ## A278299.P464094369154187587

`A383709(A077128(n+2))`
-/

namespace A278299.P464094369154187587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 (A077128 (n + 2)).toNat

end

end A278299.P464094369154187587

/-! ## A278299.P6656574413134703552

`A195918(A024531(n+3))`
-/

namespace A278299.P6656574413134703552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195918 (A024531 (n + 3)).toNat

end

end A278299.P6656574413134703552

