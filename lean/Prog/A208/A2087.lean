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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A208700: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208700, there is no canonical definition to state claims against.
-/

/-! ## A208700.P8379844394785671760

`A208698(∑[n+3]+n+12)`
-/

namespace A208700.P8379844394785671760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A208700.P8379844394785671760

/-! ## A208700.P368734442331932448

`lcm(A107751(n), A208698(A167499(n+3)))`
-/

namespace A208700.P368734442331932448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107751 n) (A208698 (A167499 (n + 3)).toNat)

end

end A208700.P368734442331932448

/-! ## A208700.P6448157537012734771

`A208698(A167499(n+3))+A034562(n+1)`
-/

namespace A208700.P6448157537012734771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A167499 (n + 3)).toNat + A034562 (n + 1)

end

end A208700.P6448157537012734771

/-! ## A208700.P4444762679330174532

`A208698(A167499(n+3))%A248999(n+1)`
-/

namespace A208700.P4444762679330174532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208698 (A167499 (n + 3)).toNat) (A248999 (n + 1))

end

end A208700.P4444762679330174532

/-! ## A208700.P5867573333004335218

`A208698(A027379(n+2)+8)%A259519(n+1)`
-/

namespace A208700.P5867573333004335218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208698 (A027379 (n + 2) + 8).toNat) (A259519 (n + 1))

end

end A208700.P5867573333004335218

/-!
# A208701: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208701, there is no canonical definition to state claims against.
-/

/-! ## A208701.P1746771710561334735

`A208698(A046691(n+3)+10)`
-/

namespace A208701.P1746771710561334735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A046691 (n + 3) + 10).toNat

end

end A208701.P1746771710561334735

/-! ## A208701.P3453018890493688595

`A208698(Δ[A023545(n+1)]+10)`
-/

namespace A208701.P3453018890493688595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (f1 (n + 1) - f1 n + 10).toNat

end

end A208701.P3453018890493688595

/-! ## A208701.P1058644017884398877

`A208698(A000124(n+6)-(n+1))`
-/

namespace A208701.P1058644017884398877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A208701.P1058644017884398877

/-! ## A208701.P15509704396911035661

`A208698(A167614(n+1)+A008486(n+5))`
-/

namespace A208701.P15509704396911035661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A167614 (n + 1) + A008486 (n + 5)).toNat

end

end A208701.P15509704396911035661

/-!
# A208702: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A208702, there is no canonical definition to state claims against.
-/

/-! ## A208702.P2774276248320556999

`A208698(A056119(n)+28)`
-/

namespace A208702.P2774276248320556999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A056119 n + 28).toNat

end

end A208702.P2774276248320556999

/-! ## A208702.P10228258810518692172

`A208698(eq[11, A066657(n)])`
-/

namespace A208702.P10228258810518692172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208702.P10228258810518692172

/-! ## A208702.P17102459760321839020

`A208698(eq[6, A002262(n)]+1)`
-/

namespace A208702.P17102459760321839020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208702.P17102459760321839020

/-! ## A208702.P5510244575766666510

`A208698(eq[8, A131818(n+1)])`
-/

namespace A208702.P5510244575766666510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208702.P5510244575766666510

/-! ## A208702.P7283597473576880753

`A208698(A347525(n+5)+∑[n])`
-/

namespace A208702.P7283597473576880753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A347525 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A208702.P7283597473576880753

/-!
# A208703: Number of n X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208703, there is no canonical definition to state claims against.
-/

/-! ## A208703.P10894978217400686540

`A208709(∑[4*n]+1)`
-/

namespace A208703.P10894978217400686540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208703.P10894978217400686540

/-! ## A208703.P14930060929882582564

`A208709(A001844(n))+A025444(n)`
-/

namespace A208703.P14930060929882582564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A001844 n).toNat + A025444 n

end

end A208703.P14930060929882582564

/-! ## A208703.P8096101130168944404

`A208709(A001844(n))+A185284(n)`
-/

namespace A208703.P8096101130168944404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A001844 n).toNat + A185284 n

end

end A208703.P8096101130168944404

/-! ## A208703.P500845935981716685

`A139553(n)*A208709(A001844(n))`
-/

namespace A208703.P500845935981716685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A208709 (A001844 n).toNat

end

end A208703.P500845935981716685

/-! ## A208703.P8651702560288250375

`gcd(A000038(n), A208709(A001844(n)))`
-/

namespace A208703.P8651702560288250375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208709 (A001844 n).toNat)

end

end A208703.P8651702560288250375

/-!
# A208704: Number of nX3 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208704, the canonical program `A208704.P8210822804906090689` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208704 has offset 1).

The definition of A208704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208704.P8210822804906090689

`4*7^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208704

/-- `4*7^n` -/
def P8210822804906090689.Spec : Prop :=
  ∀ n, (P8210822804906090689.a n : ℤ) = A208704 (n + 1)

theorem P8210822804906090689.correct : P8210822804906090689.Spec := by
  intro n
  simp only [A208704, Nat.add_sub_cancel]

end A208704

/-!
# A208705: Number of n X 4 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208705, there is no canonical definition to state claims against.
-/

/-! ## A208705.P6301902154842896287

`ogf((8-4x)/(1-13x+4x^2))`
-/

namespace A208705.P6301902154842896287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -4] [1, -13, 4] n

end

end A208705.P6301902154842896287

/-! ## A208705.P7301925362211483747

`13*a(n-1)-4*a(n-2)` with `a(0)=8, a(1)=100`
-/

namespace A208705.P7301925362211483747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 100] fun n a =>
  13 * a (n - 1) - 4 * a (n - 2)

end

end A208705.P7301925362211483747

/-! ## A208705.P6183895795521777715

`Δ[A101604(2*n)]`
-/

namespace A208705.P6183895795521777715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101604 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208705.P6183895795521777715

/-! ## A208705.P13695585272342245458

`A104934(2*(n+1))`
-/

namespace A208705.P13695585272342245458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (2 * (n + 1))

end

end A208705.P13695585272342245458

/-! ## A208705.P11246855855236636905

`4*A007484(2*n)`
-/

namespace A208705.P11246855855236636905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007484 (2 * n)

end

end A208705.P11246855855236636905

/-! ## A208705.P883320171112867065

`2*A055099(Δ[n²])`
-/

namespace A208705.P883320171112867065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A208705.P883320171112867065

/-! ## A208705.P18255255335911222889

`Δ[A230269(2*(n+1))]`
-/

namespace A208705.P18255255335911222889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208705.P18255255335911222889

/-! ## A208705.P472782500116260440

`Δ[A007483(2*n)/2]`
-/

namespace A208705.P472782500116260440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208705.P472782500116260440

/-! ## A208705.P13708899217383552541

`A322940(2*n+3)/2`
-/

namespace A208705.P13708899217383552541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322940 (2 * n + 3) : ℚ) / 2

end

end A208705.P13708899217383552541

/-! ## A208705.P3665239046874119971

`4*A007481(A016813(n))`
-/

namespace A208705.P3665239046874119971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007481 (A016813 n).toNat

end

end A208705.P3665239046874119971

/-!
# A208706: Number of n X 5 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208706, there is no canonical definition to state claims against.
-/

/-! ## A208706.P9995499617492788330

`A208709(Δ[A264443(n)])`
-/

namespace A208706.P9995499617492788330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (f1 (n + 1) - f1 n).toNat

end

end A208706.P9995499617492788330

/-! ## A208706.P15738163514526244249

`A208709(A046691(n+3))`
-/

namespace A208706.P15738163514526244249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A046691 (n + 3)).toNat

end

end A208706.P15738163514526244249

/-! ## A208706.P11789121704553768001

`A208709(eq[4, A193592(n)])`
-/

namespace A208706.P11789121704553768001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208706.P11789121704553768001

/-! ## A208706.P16301832685793482903

`A208709(Δ[A023545(n+1)])`
-/

namespace A208706.P16301832685793482903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (f1 (n + 1) - f1 n).toNat

end

end A208706.P16301832685793482903

/-! ## A208706.P2712970561918192340

`A208709(A052905(n+2)+1)`
-/

namespace A208706.P2712970561918192340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A052905 (n + 2) + 1).toNat

end

end A208706.P2712970561918192340

/-!
# A208707: Number of n X 6 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208707, there is no canonical definition to state claims against.
-/

/-! ## A208707.P3564513889005863185

`A208709(A052905(n+3))`
-/

namespace A208707.P3564513889005863185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A052905 (n + 3)).toNat

end

end A208707.P3564513889005863185

/-! ## A208707.P12640373538040455369

`A208709(eq[3, A219347(n)])`
-/

namespace A208707.P12640373538040455369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208707.P12640373538040455369

/-! ## A208707.P12554443143113485818

`A208709(eq[5, A193592(n)])`
-/

namespace A208707.P12554443143113485818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208707.P12554443143113485818

/-! ## A208707.P12859912776900084755

`A208709(eq[8, A258709(n)])`
-/

namespace A208707.P12859912776900084755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208707.P12859912776900084755

/-! ## A208707.P17054169338099068796

`A208709(Δ[Δ[A006504(n+1)]])`
-/

namespace A208707.P17054169338099068796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (f1 (n + 1) - f1 n).toNat

end

end A208707.P17054169338099068796

/-!
# A208708: Number of nX7 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208708, there is no canonical definition to state claims against.
-/

/-! ## A208708.P12277078890818119155

`A208709(A055999(n+4))`
-/

namespace A208708.P12277078890818119155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A055999 (n + 4)).toNat

end

end A208708.P12277078890818119155

/-! ## A208708.P5552466185013065751

`A208709(eq[4, A219347(n)])`
-/

namespace A208708.P5552466185013065751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208708.P5552466185013065751

/-! ## A208708.P11053490383616443815

`A208709(eq[6, A193592(n)])`
-/

namespace A208708.P11053490383616443815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208708.P11053490383616443815

/-! ## A208708.P7594518566026346200

`A208709(A056115(n+2)+9)`
-/

namespace A208708.P7594518566026346200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A056115 (n + 2) + 9).toNat

end

end A208708.P7594518566026346200

/-! ## A208708.P12082013263652074879

`A208709(A000217(n+6)+n+1)`
-/

namespace A208708.P12082013263652074879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A208708.P12082013263652074879

/-!
# A208709: T(n,k)=Number of nXk 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208709, there is no canonical definition to state claims against.
-/

/-! ## A208709.P12118574797362392717

`gcd(record[A349269(n)], A155637(n))`
-/

namespace A208709.P12118574797362392717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349269 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A155637 n)

end

end A208709.P12118574797362392717

/-! ## A208709.P6557277183873228385

`xor(A302965(n+1), A343660(or(1, (n+1)²)))`
-/

namespace A208709.P6557277183873228385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A302965 (n + 1)) (A343660 (Nat.lor 1 ((n + 1) ^ 2)))

end

end A208709.P6557277183873228385

/-! ## A208709.P8670763953157498083

`A302965(n+1)-A189628(25*2^n-24)`
-/

namespace A208709.P8670763953157498083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (n + 1) - A189628 (25 * 2 ^ n - 24)

end

end A208709.P8670763953157498083

/-! ## A208709.P12457457149958998155

`gcd(A008586(n), A287706(A000045(n)))`
-/

namespace A208709.P12457457149958998155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008586 n) (A287706 (A000045 n).toNat)

end

end A208709.P12457457149958998155

/-! ## A208709.P158189403711649871

`A220497(or(A000389(n), A134457(n)))`
-/

namespace A208709.P158189403711649871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220497 (Int.lor (A000389 n) (A134457 n)).toNat

end

end A208709.P158189403711649871

/-!
# A208710: Number of 3 X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208710, there is no canonical definition to state claims against.
-/

/-! ## A208710.P369144419519359403

`A208709(∑[n+2]+4)`
-/

namespace A208710.P369144419519359403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208710.P369144419519359403

/-! ## A208710.P10864047108023469876

`lcm(2, A208709(A167614(n+1)))`
-/

namespace A208710.P10864047108023469876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208709 (A167614 (n + 1)).toNat)

end

end A208710.P10864047108023469876

/-! ## A208710.P16177213802556428334

`A139553(n)*A208709(A167614(n+1))`
-/

namespace A208710.P16177213802556428334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A208709 (A167614 (n + 1)).toNat

end

end A208710.P16177213802556428334

/-! ## A208710.P13997938615568385044

`A208709(A167614(n+1))%A041146(n)`
-/

namespace A208710.P13997938615568385044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208709 (A167614 (n + 1)).toNat) (A041146 n)

end

end A208710.P13997938615568385044

/-!
# A208711: Number of 4Xn 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208711, there is no canonical definition to state claims against.
-/

/-! ## A208711.P6114487282002467296

`A208709(A141214(n)+7)`
-/

namespace A208711.P6114487282002467296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A141214 n + 7).toNat

end

end A208711.P6114487282002467296

/-! ## A208711.P11188414793299868924

`A208709(A052905(n)+9)`
-/

namespace A208711.P11188414793299868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A052905 n + 9).toNat

end

end A208711.P11188414793299868924

/-! ## A208711.P8306181209771086658

`A208709(A055999(n)+10)`
-/

namespace A208711.P8306181209771086658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A055999 n + 10).toNat

end

end A208711.P8306181209771086658

/-! ## A208711.P14017356955518943366

`A208709(A167614(n+2)+1)`
-/

namespace A208711.P14017356955518943366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A167614 (n + 2) + 1).toNat

end

end A208711.P14017356955518943366

/-! ## A208711.P13234717517719959269

`A208709(eq[5, A131818(n+1)])`
-/

namespace A208711.P13234717517719959269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208711.P13234717517719959269

/-!
# A208712: Number of 5Xn 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208712, there is no canonical definition to state claims against.
-/

/-! ## A208712.P3398881070453381549

`A208709(A167499(n+3))`
-/

namespace A208712.P3398881070453381549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A167499 (n + 3)).toNat

end

end A208712.P3398881070453381549

/-! ## A208712.P16145515211946754981

`A208709(A155212(n)+13)`
-/

namespace A208712.P16145515211946754981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A155212 n + 13).toNat

end

end A208712.P16145515211946754981

/-! ## A208712.P3029766794728788869

`A208709(A167614(n+3)+2)`
-/

namespace A208712.P3029766794728788869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A167614 (n + 3) + 2).toNat

end

end A208712.P3029766794728788869

/-! ## A208712.P679496674240827255

`A208709(A141214(n+1)+8)`
-/

namespace A208712.P679496674240827255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A141214 (n + 1) + 8).toNat

end

end A208712.P679496674240827255

/-! ## A208712.P4179351499411431949

`A208709(A052905(n+1)+10)`
-/

namespace A208712.P4179351499411431949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A052905 (n + 1) + 10).toNat

end

end A208712.P4179351499411431949

/-!
# A208713: Number of 6Xn 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208713, there is no canonical definition to state claims against.
-/

/-! ## A208713.P16308198166713964813

`A208709(A056115(n)+21)`
-/

namespace A208713.P16308198166713964813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A056115 n + 21).toNat

end

end A208713.P16308198166713964813

/-! ## A208713.P13580241241286704741

`A208709(A000124(n+5)+5)`
-/

namespace A208713.P13580241241286704741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A000124 (n + 5) + 5).toNat

end

end A208713.P13580241241286704741

/-! ## A208713.P5447064975382884978

`A208709(A000217(n+5)+6)`
-/

namespace A208713.P5447064975382884978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A000217 (n + 5) + 6).toNat

end

end A208713.P5447064975382884978

/-! ## A208713.P17863212269131203494

`A208709(A141214(n+2)+9)`
-/

namespace A208713.P17863212269131203494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A141214 (n + 2) + 9).toNat

end

end A208713.P17863212269131203494

/-! ## A208713.P6812866597412672266

`A208709(A046691(n+3)+10)`
-/

namespace A208713.P6812866597412672266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A046691 (n + 3) + 10).toNat

end

end A208713.P6812866597412672266

/-!
# A208714: Number of 7Xn 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208714, there is no canonical definition to state claims against.
-/

/-! ## A208714.P238384685524606518

`A208709(A056119(n)+28)`
-/

namespace A208714.P238384685524606518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A056119 n + 28).toNat

end

end A208714.P238384685524606518

/-! ## A208714.P8323351032659572521

`A208709(eq[11, A066657(n)])`
-/

namespace A208714.P8323351032659572521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208714.P8323351032659572521

/-! ## A208714.P15359409950595961568

`A208709(A133263(n+6)+5)`
-/

namespace A208714.P15359409950595961568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A133263 (n + 6) + 5).toNat

end

end A208714.P15359409950595961568

/-! ## A208714.P548804563305131020

`A208709(A000217(n+6)+7)`
-/

namespace A208714.P548804563305131020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (A000217 (n + 6) + 7).toNat

end

end A208714.P548804563305131020

/-! ## A208714.P6051388540445582365

`A208709(eq[8, A131818(n+1)])`
-/

namespace A208714.P6051388540445582365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208714.P6051388540445582365

/-!
# A208715: Number of n-bead necklaces labeled with numbers 1..n allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208715, there is no canonical definition to state claims against.
-/

/-! ## A208715.P7603309766028358550

`A208721(∑[4*n]+1)`
-/

namespace A208715.P7603309766028358550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208715.P7603309766028358550

/-! ## A208715.P8572469240620171276

`record[A208721(∑[ceil(n/2)+n^(n%2)])]`
-/

namespace A208715.P8572469240620171276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (n ^ (n % 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208715.P8572469240620171276

/-! ## A208715.P3032407352043136520

`record[A208721(Δ[A235355(n)])]`
-/

namespace A208715.P3032407352043136520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208715.P3032407352043136520

/-! ## A208715.P1582964737475222508

`A208721(A001844(n))+char[14]`
-/

namespace A208715.P1582964737475222508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208715.P1582964737475222508

/-! ## A208715.P7411520638279471098

`record[A003982(n)*A208721(n+1)]`
-/

namespace A208715.P7411520638279471098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208715.P7411520638279471098

/-!
# A208716: Number of n-bead necklaces labeled with numbers 1..3 allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208716, there is no canonical definition to state claims against.
-/

/-! ## A208716.P10544974832849332524

`A208721(∑[n+3]+1)`
-/

namespace A208716.P10544974832849332524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208716.P10544974832849332524

/-! ## A208716.P4727366871068353216

`A208721(Δ[A008778(n)])+char[27]`
-/

namespace A208716.P4727366871068353216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208716.P4727366871068353216

/-! ## A208716.P5764654480650973613

`or(char[9], A208721(A034856(n+2)))`
-/

namespace A208716.P5764654480650973613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208721 (A034856 (n + 2)).toNat)

end

end A208716.P5764654480650973613

/-! ## A208716.P17384212617026720667

`A208721(A034856(n+2))%A000108(n+3)`
-/

namespace A208716.P17384212617026720667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208721 (A034856 (n + 2)).toNat) (A000108 (n + 3))

end

end A208716.P17384212617026720667

/-! ## A208716.P14650693351688375204

`(A007318(n)%2)!*A208721(Δ[A008778(n)])`
-/

namespace A208716.P14650693351688375204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A208721 (f1 (n + 1) - f1 n).toNat

end

end A208716.P14650693351688375204

/-!
# A208717: Number of n-bead necklaces labeled with numbers 1..4 allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208717, there is no canonical definition to state claims against.
-/

/-! ## A208717.P15976940501407368771

`A208721(∑[n+4]+3)`
-/

namespace A208717.P15976940501407368771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208717.P15976940501407368771

/-! ## A208717.P5391037472002458154

`or(char[1], A208721(A155212(n)+5))`
-/

namespace A208717.P5391037472002458154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208721 (A155212 n + 5).toNat)

end

end A208717.P5391037472002458154

/-! ## A208717.P10014457019441309129

`record[A208721(A027379(abs(1-n)+1))]`
-/

namespace A208717.P10014457019441309129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A027379 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208717.P10014457019441309129

/-! ## A208717.P282798339068189661

`A208721(A155212(n)+5)%A000045(n+4)²`
-/

namespace A208717.P282798339068189661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208721 (A155212 n + 5).toNat) (A000045 (n + 4) ^ 2)

end

end A208717.P282798339068189661

/-! ## A208717.P13551093511223345304

`A000041(val(n+1, 13))*A208721(A155212(n)+5)`
-/

namespace A208717.P13551093511223345304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 13) * A208721 (A155212 n + 5).toNat

end

end A208717.P13551093511223345304

/-!
# A208718: Number of n-bead necklaces labeled with numbers 1..5 allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208718, there is no canonical definition to state claims against.
-/

/-! ## A208718.P3329856598199901058

`A208721(2*(n+1)+∑[n+3]+6)`
-/

namespace A208718.P3329856598199901058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (2 * (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 6))

end

end A208718.P3329856598199901058

/-! ## A208718.P15821632567251404850

`A005843(A208719(n+1))-A208720(n+1)`
-/

namespace A208718.P15821632567251404850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208719 (n + 1)).toNat - A208720 (n + 1)

end

end A208718.P15821632567251404850

/-! ## A208718.P14204635270668317426

`A005843(A208719(n+1))-A208721(A052905(n+4)-1)`
-/

namespace A208718.P14204635270668317426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208719 (n + 1)).toNat - A208721 (A052905 (n + 4) - 1).toNat

end

end A208718.P14204635270668317426

/-! ## A208718.P621502403210201913

`A005843(A208719(n+1))-A208721(A000096(n+6)-5)`
-/

namespace A208718.P621502403210201913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208719 (n + 1)).toNat - A208721 (A000096 (n + 6) - 5).toNat

end

end A208718.P621502403210201913

/-!
# A208719: Number of n-bead necklaces labeled with numbers 1..6 allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208719, there is no canonical definition to state claims against.
-/

/-! ## A208719.P15272611959405106199

`A208721(C(n+6, 2)+n+1)`
-/

namespace A208719.P15272611959405106199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (Nat.choose (n + 6) 2 + (n + 1))

end

end A208719.P15272611959405106199

/-! ## A208719.P10735794434300200369

`A208721(A052905(n+3))`
-/

namespace A208719.P10735794434300200369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A052905 (n + 3)).toNat

end

end A208719.P10735794434300200369

/-! ## A208719.P4884459551277521321

`A208721(A302537(n)+15)`
-/

namespace A208719.P4884459551277521321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A302537 n + 15).toNat

end

end A208719.P4884459551277521321

/-! ## A208719.P9890865787153669074

`A208721(A056119(n)+16)`
-/

namespace A208719.P9890865787153669074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A056119 n + 16).toNat

end

end A208719.P9890865787153669074

/-! ## A208719.P10673308287431999626

`A208721(eq[3, A219347(n)])`
-/

namespace A208719.P10673308287431999626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208719.P10673308287431999626

/-!
# A208720: Number of n-bead necklaces labeled with numbers 1..7 allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208720, there is no canonical definition to state claims against.
-/

/-! ## A208720.P8732910214599008118

`A208721(A055999(n+4))`
-/

namespace A208720.P8732910214599008118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A055999 (n + 4)).toNat

end

end A208720.P8732910214599008118

/-! ## A208720.P3366707895178188343

`A208721(eq[4, A219347(n)])`
-/

namespace A208720.P3366707895178188343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208720.P3366707895178188343

/-! ## A208720.P14537089247524900531

`A208721(eq[6, A193592(n)])`
-/

namespace A208720.P14537089247524900531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208720.P14537089247524900531

/-! ## A208720.P6353125760782736729

`A208721(Δ[A026054(n+4)])`
-/

namespace A208720.P6353125760782736729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (f1 (n + 1) - f1 n).toNat

end

end A208720.P6353125760782736729

/-! ## A208720.P12098532586620710485

`A208721(A052905(n+4)-1)`
-/

namespace A208720.P12098532586620710485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (A052905 (n + 4) - 1).toNat

end

end A208720.P12098532586620710485

/-!
# A208721: T(n,k) = number of n-bead necklaces labeled with numbers 1..k allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208721, there is no canonical definition to state claims against.
-/

/-! ## A208721.P3773690897530874137

`A208777(n+1)+A178798(A059286(n))`
-/

namespace A208721.P3773690897530874137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) + A178798 (A059286 n).toNat

end

end A208721.P3773690897530874137

/-! ## A208721.P1355794499267462631

`A208777(n+1)+A178798(A320902(n))`
-/

namespace A208721.P1355794499267462631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) + A178798 (A320902 n).toNat

end

end A208721.P1355794499267462631

/-! ## A208721.P9318821676984468470

`A208777(n+1)-A011737(A005135(n))`
-/

namespace A208721.P9318821676984468470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) - A011737 (A005135 n).toNat

end

end A208721.P9318821676984468470

/-! ## A208721.P10493434469330879940

`A208777(n+1)-A185264(A185286(n))`
-/

namespace A208721.P10493434469330879940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (n + 1) - A185264 (A185286 n).toNat

end

end A208721.P10493434469330879940

/-! ## A208721.P14359659706463922943

`∏{e}[A007283(A208777(n+1)), #]`
-/

namespace A208721.P14359659706463922943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A208777 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A208721.P14359659706463922943

/-!
# A208722: Number of 2n-bead necklaces labeled with numbers 1..n not allowing reversal, with neighbors differing by exactly 1.

The programs for A208722, there is no canonical definition to state claims against.
-/

/-! ## A208722.P16022414703995644475

`A208727(∑[4*n]+1)`
-/

namespace A208722.P16022414703995644475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208722.P16022414703995644475

/-! ## A208722.P16440927808745780734

`record[A208727(∑[A266981(n)])]`
-/

namespace A208722.P16440927808745780734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208722.P16440927808745780734

/-! ## A208722.P15303095440416868153

`A208727(A001844(n))+char[10]`
-/

namespace A208722.P15303095440416868153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208722.P15303095440416868153

/-! ## A208722.P539060146897891367

`record[A003982(n)*A208727(n+1)]`
-/

namespace A208722.P539060146897891367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208722.P539060146897891367

/-! ## A208722.P13156426419366707562

`A326678(n)+A208727(A001844(n))`
-/

namespace A208722.P13156426419366707562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A208727 (A001844 n).toNat

end

end A208722.P13156426419366707562

/-!
# A208723: Number of 2n-bead necklaces labeled with numbers 1..4 not allowing reversal, with neighbors differing by exactly 1.

The programs for A208723, the canonical program `A208723.P366811269937652845` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208723 has offset 1).

The definition of A208723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208723.P13639028265314281053

`A005594(n+1)+1`
-/

namespace A208723.P13639028265314281053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005594 (n + 1) + 1

end

end A208723.P13639028265314281053

namespace A208723

/-- `A005594(n+1)+1` -/
def P13639028265314281053.Spec : Prop :=
  ∀ n, P13639028265314281053.a n = A208723 (n + 1)

end A208723

/-! ## A208723.P366811269937652845

`A032198(n+1)+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A208723

/-- `A032198(n+1)+2` -/
def P366811269937652845.Spec : Prop :=
  ∀ n, P366811269937652845.a n = A208723 (n + 1)

theorem P366811269937652845.correct : P366811269937652845.Spec := by
  intro n
  simp only [A208723, Nat.add_sub_cancel]

end A208723

/-! ## A208723.P10459904140685793375

`∑{d}[n+1, A032170(#)]+2`
-/

namespace A208723.P10459904140685793375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032170 d + 2

end

end A208723.P10459904140685793375

namespace A208723

/-- `∑{d}[n+1, A032170(#)]+2` -/
def P10459904140685793375.Spec : Prop :=
  ∀ n, P10459904140685793375.a n = A208723 (n + 1)

end A208723

/-! ## A208723.P8509929415620760081

`A208773(n+1)-A000358(n+1)`
-/

namespace A208723.P8509929415620760081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) - A000358 (n + 1)

end

end A208723.P8509929415620760081

namespace A208723

/-- `A208773(n+1)-A000358(n+1)` -/
def P8509929415620760081.Spec : Prop :=
  ∀ n, P8509929415620760081.a n = A208723 (n + 1)

theorem P8509929415620760081.correct : P8509929415620760081.Spec := by
  intro n
  simp only [A208723, Nat.add_sub_cancel, A208723.P8509929415620760081.a, A208723.P366811269937652845.a, A000358, A000358.P7405128074083719582.a, A032198, A032198.P2517312571610842773.a, A208773, A208773.P6564407814693536226.a, A032190, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A003602, A003602.P7612175048291952394.a, A006206, A006206.P821304944829276785.a, A032189, A032189.P10074528383651059138.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, A060280, A060280.P11810905438432272819.a, A063524, A063524.P5631347671191003537.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208723

/-! ## A208723.P11350747418524881703

`A208773(n+1)-(A032190(n+1)+1)`
-/

namespace A208723.P11350747418524881703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) - (A032190 (n + 1) + 1)

end

end A208723.P11350747418524881703

namespace A208723

/-- `A208773(n+1)-(A032190(n+1)+1)` -/
def P11350747418524881703.Spec : Prop :=
  ∀ n, P11350747418524881703.a n = A208723 (n + 1)

theorem P11350747418524881703.correct : P11350747418524881703.Spec := by
  intro n
  simp only [A208723, Nat.add_sub_cancel, A208723.P11350747418524881703.a, A208723.P366811269937652845.a, A032190, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A032198, A032198.P2517312571610842773.a, A208773, A208773.P6564407814693536226.a, A000358, A000358.P7405128074083719582.a, A006206, A006206.P821304944829276785.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A003602, A003602.P7612175048291952394.a, A032189, A032189.P10074528383651059138.a, A060280, A060280.P11810905438432272819.a, A063524, A063524.P5631347671191003537.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, A000007, A000007.P6599383543502402472.a, A031367, A031367.P59529258561244113.f1, A031367.P59529258561244113.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208723

/-!
# A208724: Number of 2n-bead necklaces labeled with numbers 1..5 not allowing reversal, with neighbors differing by exactly 1.

The programs for A208724, there is no canonical definition to state claims against.
-/

/-! ## A208724.P3560577840390416123

`A001867(n+1)+1`
-/

namespace A208724.P3560577840390416123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) + 1

end

end A208724.P3560577840390416123

/-! ## A208724.P3741604186021088655

`∑{d}[n+1, A027376(#)]+1`
-/

namespace A208724.P3741604186021088655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027376 d + 1

end

end A208724.P3741604186021088655

/-! ## A208724.P15378985704133604693

`A054610(n+1)/(n+1)+1`
-/

namespace A208724.P15378985704133604693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054610 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A208724.P15378985704133604693

/-! ## A208724.P6804092900304020000

`A027376(n+1)+A278663(n+1)+1`
-/

namespace A208724.P6804092900304020000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) + (A278663 (n + 1) + 1)

end

end A208724.P6804092900304020000

/-! ## A208724.P540724460052538720

`A075195(∑[n+3]+1)+1`
-/

namespace A208724.P540724460052538720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A208724.P540724460052538720

/-!
# A208725: Number of 2n-bead necklaces labeled with numbers 1..6 not allowing reversal, with neighbors differing by exactly 1.

The programs for A208725, there is no canonical definition to state claims against.
-/

/-! ## A208725.P7419467313056985017

`2*A208669(n+1)-A090990(n+1)`
-/

namespace A208725.P7419467313056985017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208669 (n + 1) - A090990 (n + 1)

end

end A208725.P7419467313056985017

/-! ## A208725.P6588919112129447172

`A208727(A052905(n+3))`
-/

namespace A208725.P6588919112129447172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (A052905 (n + 3)).toNat

end

end A208725.P6588919112129447172

/-! ## A208725.P5285737543568904973

`A208727(A056119(n)+16)`
-/

namespace A208725.P5285737543568904973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (A056119 n + 16).toNat

end

end A208725.P5285737543568904973

/-! ## A208725.P13937065426562761614

`A208727(eq[3, A219347(n)])`
-/

namespace A208725.P13937065426562761614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208725.P13937065426562761614

/-! ## A208725.P691253233069520311

`A208727(eq[5, A193592(n)])`
-/

namespace A208725.P691253233069520311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208725.P691253233069520311

/-!
# A208726: Number of 2n-bead necklaces labeled with numbers 1..7 not allowing reversal, with neighbors differing by exactly 1.

The programs for A208726, there is no canonical definition to state claims against.
-/

/-! ## A208726.P13583157422057830296

`A208727(A055999(n+4))`
-/

namespace A208726.P13583157422057830296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (A055999 (n + 4)).toNat

end

end A208726.P13583157422057830296

/-! ## A208726.P427100201292505422

`A208727(eq[4, A219347(n)])`
-/

namespace A208726.P427100201292505422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208726.P427100201292505422

/-! ## A208726.P9344060339091219778

`A208727(eq[5, A332954(n)])`
-/

namespace A208726.P9344060339091219778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208726.P9344060339091219778

/-! ## A208726.P10319711783170892970

`A208727(eq[6, A193592(n)])`
-/

namespace A208726.P10319711783170892970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208726.P10319711783170892970

/-! ## A208726.P5364722065384967941

`A208727(A141214(n+4)-3)`
-/

namespace A208726.P5364722065384967941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208727 (A141214 (n + 4) - 3).toNat

end

end A208726.P5364722065384967941

/-!
# A208727: T(n,k)=Number of 2n-bead necklaces labeled with numbers 1..k not allowing reversal, with neighbors differing by exactly 1.

The programs for A208727, there is no canonical definition to state claims against.
-/

/-! ## A208727.P16099766775262474493

`A208671(n+1)+A025465(A059922(n))`
-/

namespace A208727.P16099766775262474493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (n + 1) + A025465 (A059922 n).toNat

end

end A208727.P16099766775262474493

/-! ## A208727.P12708006103561199257

`A208671(n+1)+A187081(A208673(n))`
-/

namespace A208727.P12708006103561199257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (n + 1) + A187081 (A208673 n).toNat

end

end A208727.P12708006103561199257

/-! ## A208727.P16876065779174967771

`A335520(A075195(n+1))+A208671(n+1)`
-/

namespace A208727.P16876065779174967771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A075195 (n + 1)).toNat + A208671 (n + 1)

end

end A208727.P16876065779174967771

/-! ## A208727.P14148212110888033552

`A208671(n+1)-A178798(A201375(n+1))`
-/

namespace A208727.P14148212110888033552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (n + 1) - A178798 (A201375 (n + 1)).toNat

end

end A208727.P14148212110888033552

/-! ## A208727.P14444842095161176844

`A208671(n+1)+A178798(A201375(n+1)+2)`
-/

namespace A208727.P14444842095161176844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (n + 1) + A178798 (A201375 (n + 1) + 2).toNat

end

end A208727.P14444842095161176844

/-!
# A208728: Composite numbers n such that b^(n+1) == 1 (mod n) for every b coprime to n.

The programs for A208728, there is no canonical definition to state claims against.
-/

/-! ## A208728.P1936148266716754214

`∩[A187787(n+1), A231811(n+5)]`
-/

namespace A208728.P1936148266716754214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231811 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208728.P1936148266716754214

/-! ## A208728.P8094012856848040321

`filter[A231811(n+1), A380469(#)]`
-/

namespace A208728.P8094012856848040321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A208728.P8094012856848040321

/-! ## A208728.P16439368801813749098

`filter[A231811(n+2), A354819(#)]`
-/

namespace A208728.P16439368801813749098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A208728.P16439368801813749098

/-!
# A208729: Number of Young tableaux with i k-length rows with i,k>=0, i+k=n, increasing entries down the columns and monotonic entries along the rows (first row increasing).

The programs for A208729, there is no canonical definition to state claims against.
-/

/-! ## A208729.P15526656922228621679

`round(log(A063106(n+1)))`
-/

namespace A208729.P15526656922228621679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A063106 (n + 1) : ℝ))

end

end A208729.P15526656922228621679

/-! ## A208729.P10301788845667221027

`A177849((n+1)!)+n`
-/

namespace A208729.P10301788845667221027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (Nat.factorial (n + 1)) + (n : ℤ)

end

end A208729.P10301788845667221027

/-! ## A208729.P13796991846665489639

`A177849(∏[n+1])+n`
-/

namespace A208729.P13796991846665489639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (∏ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A208729.P13796991846665489639

/-!
# A208730: Sequence related to Kashaev's invariant for the (5,2)-torus knot.

The programs for A208730, there is no canonical definition to state claims against.
-/

/-! ## A208730.P17382291922845549981

`A187769(C(∑[∑{d}[n, #]]+1, n))`
-/

namespace A208730.P17382291922845549981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) n)

end

end A208730.P17382291922845549981

/-!
# A208731: Sequence related to Kashaev's invariant for the (7,2)-torus knot.

The programs for A208731, there is no canonical definition to state claims against.
-/

/-! ## A208731.P15240630342717068140

`or(A055456(A171201(n)), A118173(n))`
-/

namespace A208731.P15240630342717068140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055456 (A171201 n).toNat) (A118173 n)

end

end A208731.P15240630342717068140

/-!
# A208733: Sequence related to Kashaev's invariant for the (5,2)-torus knot.

The programs for A208733, there is no canonical definition to state claims against.
-/

/-! ## A208733.P5171743511218467437

`∑[A332295(A001096(n)²)]`
-/

namespace A208733.P5171743511218467437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 (A001096 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208733.P5171743511218467437

/-! ## A208733.P11493128974776544547

`∑[A332295(A007092(n)²)]`
-/

namespace A208733.P11493128974776544547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 (A007092 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208733.P11493128974776544547

/-!
# A208734: Sequence related to Kashaev's invariant for the (7,2)-torus knot.

The programs for A208734, there is no canonical definition to state claims against.
-/

/-! ## A208734.P11839011429459032988

`A000720(A361554(n)+A000142(n))`
-/

namespace A208734.P11839011429459032988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A361554 n + A000142 n).toNat

end

end A208734.P11839011429459032988

/-! ## A208734.P1154500331795639636

`A000720(A361554(n)+A065422(n))`
-/

namespace A208734.P1154500331795639636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A361554 n + A065422 n).toNat

end

end A208734.P1154500331795639636

/-!
# A208735: Sequence related to Kashaev's invariant for the (9,2)-torus knot.

The programs for A208735, there is no canonical definition to state claims against.
-/

/-! ## A208735.P13151093310656528724

`A319700(7^n)+∏[Δ[n²]]`
-/

namespace A208735.P13151093310656528724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (7 ^ n) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A208735.P13151093310656528724

/-!
# A208736: Number of nonisomorphic graded posets with 0 and 1 and non-uniform Hasse graph of rank n, with exactly 2 elements of each rank level between 0 and 1.

The programs for A208736, the canonical program `A208736.P12298099279390497602` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208736 has offset 0).

The definition of A208736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208736.P12298099279390497602

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=5, a(5)=22`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208736

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P12298099279390497602.Spec : Prop :=
  ∀ n, P12298099279390497602.a n = A208736 n

theorem P12298099279390497602.correct : P12298099279390497602.Spec := by
  intro n
  simp only [A208736]

end A208736

/-! ## A208736.P8627739735317954912

`A054900(A390830(n))`
-/

namespace A208736.P8627739735317954912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A390830 n).toNat

end

end A208736.P8627739735317954912

namespace A208736

/-- `A054900(A390830(n))` -/
def P8627739735317954912.Spec : Prop :=
  ∀ n, P8627739735317954912.a n = A208736 n

end A208736

/-! ## A208736.P16459752960526761718

`A194640(floor(n*A104629(n)/26))`
-/

namespace A208736.P16459752960526761718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 ⌊(n : ℚ) * ((A104629 n : ℚ) / 26)⌋.toNat

end

end A208736.P16459752960526761718

namespace A208736

/-- `A194640(floor(n*A104629(n)/26))` -/
def P16459752960526761718.Spec : Prop :=
  ∀ n, P16459752960526761718.a n = A208736 n

end A208736

/-!
# A208737: Number of nonisomorphic graded posets with 0 and 1 and non-uniform Hasse graph of rank n, with no 3-element antichain.

The programs for A208737, the canonical program `A208737.P2602793139901619243` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208737 has offset 0).

The definition of A208737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208737.P2602793139901619243

`A124292(n+1)-A124302(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208737

/-- `A124292(n+1)-A124302(n)` -/
def P2602793139901619243.Spec : Prop :=
  ∀ n, P2602793139901619243.a n = A208737 n

theorem P2602793139901619243.correct : P2602793139901619243.Spec := by
  intro n
  simp only [A208737]

end A208737

/-! ## A208737.P6386178550250794513

`A124292(n+1)+A123183(n+1)`
-/

namespace A208737.P6386178550250794513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + A123183 (n + 1)

end

end A208737.P6386178550250794513

namespace A208737

/-- `A124292(n+1)+A123183(n+1)` -/
def P6386178550250794513.Spec : Prop :=
  ∀ n, P6386178550250794513.a n = A208737 n

end A208737

/-! ## A208737.P144177812095332234

`A124292(n+1)-A007051(log2(A011782(n)))`
-/

namespace A208737.P144177812095332234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) - A007051 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A208737.P144177812095332234

namespace A208737

/-- `A124292(n+1)-A007051(log2(A011782(n)))` -/
def P144177812095332234.Spec : Prop :=
  ∀ n, P144177812095332234.a n = A208737 n

end A208737

/-! ## A208737.P5486679345050173946

`A124292(n+1)-(A011782(n)+A000392(n))`
-/

namespace A208737.P5486679345050173946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) - (A011782 n + A000392 n)

end

end A208737.P5486679345050173946

namespace A208737

/-- `A124292(n+1)-(A011782(n)+A000392(n))` -/
def P5486679345050173946.Spec : Prop :=
  ∀ n, P5486679345050173946.a n = A208737 n

end A208737

/-! ## A208737.P17111469680386057623

`A124292(n+1)+A094388(n)-A115098(n)`
-/

namespace A208737.P17111469680386057623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) + (A094388 n - A115098 n)

end

end A208737.P17111469680386057623

namespace A208737

/-- `A124292(n+1)+A094388(n)-A115098(n)` -/
def P17111469680386057623.Spec : Prop :=
  ∀ n, P17111469680386057623.a n = A208737 n

end A208737

/-! ## A208737.P10632132498224529436

`A124292(n+1)-(A262600(n)+A001519(n))`
-/

namespace A208737.P10632132498224529436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) - (A262600 n + A001519 n)

end

end A208737.P10632132498224529436

namespace A208737

/-- `A124292(n+1)-(A262600(n)+A001519(n))` -/
def P10632132498224529436.Spec : Prop :=
  ∀ n, P10632132498224529436.a n = A208737 n

theorem P10632132498224529436.correct : P10632132498224529436.Spec := by
  intro n
  simp only [A208737, Nat.add_sub_cancel, A208737.P10632132498224529436.a, A208737.P2602793139901619243.a, A001519, A001519.P3024448327137573148.a, A124292, A124292.P3982799112335551492.a, A124302, A124302.P7197067930557024172.a, A262600, A262600.P10697025682239794580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208737

/-!
# A208738: Number of multisets occurring as the peak heights multiset of a Dyck n-path.

The programs for A208738, there is no canonical definition to state claims against.
-/

/-! ## A208738.P17507236840704040863

`∑[A208739(abs(1-n))]`
-/

namespace A208738.P17507236840704040863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208739 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208738.P17507236840704040863

/-! ## A208738.P9332131692874018940

`A208739(n)-A058884(n)`
-/

namespace A208738.P9332131692874018940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208739 n - A058884 n

end

end A208738.P9332131692874018940

/-! ## A208738.P12292723501597622089

`A208740(n+1)+A000041(n)`
-/

namespace A208738.P12292723501597622089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208740 (n + 1) + A000041 n

end

end A208738.P12292723501597622089

/-! ## A208738.P14620206506166104964

`A011782(n+1)-(A058884(n)+A000041(n))`
-/

namespace A208738.P14620206506166104964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A058884 n + A000041 n)

end

end A208738.P14620206506166104964

/-! ## A208738.P3818371711063795862

`A208740(n+1)+A000079(n)-A208739(n)`
-/

namespace A208738.P3818371711063795862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208740 (n + 1) + (A000079 n - A208739 n)

end

end A208738.P3818371711063795862

/-! ## A208738.P2925868385310751677

`A084376(n+1)+A208740(n+2)-A000079(n)`
-/

namespace A208738.P2925868385310751677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 (n + 1) + (A208740 (n + 2) - A000079 n)

end

end A208738.P2925868385310751677

/-!
# A208739: 2^n minus the number of partitions of n.

The programs for A208739, there is no canonical definition to state claims against.
-/

/-! ## A208739.P15875094667255841230

`2^n-A000041(n)`
-/

namespace A208739.P15875094667255841230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000041 n

end

end A208739.P15875094667255841230

/-! ## A208739.P15913121534941220473

`A208738(n+1)-A208738(n)`
-/

namespace A208739.P15913121534941220473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208738 (n + 1) - A208738 n

end

end A208739.P15913121534941220473

/-! ## A208739.P1966815320582595907

`A131577(n)+A056823(n)`
-/

namespace A208739.P1966815320582595907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A056823 n

end

end A208739.P1966815320582595907

/-! ## A208739.P15664606721865461911

`A208738(n)+A058884(n)`
-/

namespace A208739.P15664606721865461911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208738 n + A058884 n

end

end A208739.P15664606721865461911

/-! ## A208739.P12593277712217820214

`A000225(n)-A000065(n)`
-/

namespace A208739.P12593277712217820214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A000065 n

end

end A208739.P12593277712217820214

/-! ## A208739.P8089357666206840179

`A083318(n)-A052810(n)`
-/

namespace A208739.P8089357666206840179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n - A052810 n

end

end A208739.P8089357666206840179

/-! ## A208739.P11407051961726822603

`A006127(n)-A133041(n)`
-/

namespace A208739.P11407051961726822603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A133041 n

end

end A208739.P11407051961726822603

/-! ## A208739.P5018142601795498605

`A112884(n)-A058984(n)`
-/

namespace A208739.P5018142601795498605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112884 n - A058984 n

end

end A208739.P5018142601795498605

/-! ## A208739.P11742131375318932120

`A000079(n)-∑[A002865(n)]`
-/

namespace A208739.P11742131375318932120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208739.P11742131375318932120

/-! ## A208739.P11255461542802345482

`∑[A011782(n)-A002865(n)]`
-/

namespace A208739.P11255461542802345482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208739.P11255461542802345482

/-! ## A208739.P8797035294104718545

`A000051(n)-(A000041(n)+1)`
-/

namespace A208739.P8797035294104718545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000041 n + 1)

end

end A208739.P8797035294104718545

/-! ## A208739.P18367748024794623303

`A000079(n)-(A000065(n)+1)`
-/

namespace A208739.P18367748024794623303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000065 n + 1)

end

end A208739.P18367748024794623303

/-! ## A208739.P7749844025001686303

`A000079(n)-A035363(2*n)`
-/

namespace A208739.P7749844025001686303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A035363 (2 * n)

end

end A208739.P7749844025001686303

/-! ## A208739.P16442943703345399798

`A000079(n)-A100824(2*n)`
-/

namespace A208739.P16442943703345399798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A100824 (2 * n)

end

end A208739.P16442943703345399798

/-! ## A208739.P15604392683334560192

`A000079(n)-A119620(2*n)`
-/

namespace A208739.P15604392683334560192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A119620 (2 * n)

end

end A208739.P15604392683334560192

/-! ## A208739.P16864567333482814037

`A000079(n)-A139582(n)/2`
-/

namespace A208739.P16864567333482814037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) - (A139582 n : ℚ) / 2

end

end A208739.P16864567333482814037

/-!
# A208740: Number of multisets that occurring as the peak heights multiset of a Dyck n-path that are the also the peak heights multiset of a smaller Dyck path.

The programs for A208740, there is no canonical definition to state claims against.
-/

/-! ## A208740.P9746003490308207891

`2^n-A000070(n)`
-/

namespace A208740.P9746003490308207891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000070 n

end

end A208740.P9746003490308207891

/-! ## A208740.P15738670352570941501

`A208738(n+1)-2^n`
-/

namespace A208740.P15738670352570941501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208738 (n + 1) - (2 ^ n : ℤ)

end

end A208740.P15738670352570941501

/-! ## A208740.P8155624510446902765

`∑[A056823(n)]`
-/

namespace A208740.P8155624510446902765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P8155624510446902765

/-! ## A208740.P15377712703214558850

`2^n-∑[A000041(n)]`
-/

namespace A208740.P15377712703214558850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P15377712703214558850

/-! ## A208740.P243231572859009631

`2^n-∑[∑[A002865(n)]]`
-/

namespace A208740.P243231572859009631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P243231572859009631

/-! ## A208740.P5178830375073130802

`A000295(n)-A058682(n)`
-/

namespace A208740.P5178830375073130802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A058682 n

end

end A208740.P5178830375073130802

/-! ## A208740.P7896231325307505514

`∑[A237047(n)+A230441(n)]`
-/

namespace A208740.P7896231325307505514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237047 n + A230441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P7896231325307505514

/-! ## A208740.P2476121903838554317

`∑[A011782(n)-A000041(n)]`
-/

namespace A208740.P2476121903838554317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P2476121903838554317

/-! ## A208740.P1175485576357010588

`A000225(n)+1-A000070(n)`
-/

namespace A208740.P1175485576357010588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A000070 n)

end

end A208740.P1175485576357010588

/-! ## A208740.P3030092480899663273

`A000051(n)-A216053(n+1)`
-/

namespace A208740.P3030092480899663273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A216053 (n + 1)

end

end A208740.P3030092480899663273

/-! ## A208740.P16561440398580960854

`A000079(n)-A025065(2*n)`
-/

namespace A208740.P16561440398580960854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A025065 (2 * n)

end

end A208740.P16561440398580960854

/-! ## A208740.P4352190213023540559

`∑[A011782(n)-∑[A002865(n)]]`
-/

namespace A208740.P4352190213023540559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P4352190213023540559

/-! ## A208740.P10526345184249741127

`A000079(n)-∑[A000065(n)+1]`
-/

namespace A208740.P10526345184249741127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P10526345184249741127

/-! ## A208740.P13982071474931117258

`A000225(n)+1-∑[A000041(n)]`
-/

namespace A208740.P13982071474931117258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208740.P13982071474931117258

/-! ## A208740.P5919301973893762305

`A000079(n)-∑[A035363(2*n)]`
-/

namespace A208740.P5919301973893762305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P5919301973893762305

/-! ## A208740.P14090365238707181570

`A000079(n)-∑[A139582(n)/2]`
-/

namespace A208740.P14090365238707181570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208740.P14090365238707181570

/-! ## A208740.P6661926607287831849

`A000079(n)+1-A216053(n+1)`
-/

namespace A208740.P6661926607287831849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A216053 (n + 1))

end

end A208740.P6661926607287831849

/-! ## A208740.P2355832746451923058

`A011782(n+1)-A025065(2*n)`
-/

namespace A208740.P2355832746451923058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A025065 (2 * n)

end

end A208740.P2355832746451923058

/-! ## A208740.P2843136526971230590

`A000079(n)-A100824(2*n+1)`
-/

namespace A208740.P2843136526971230590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A100824 (2 * n + 1)

end

end A208740.P2843136526971230590

/-! ## A208740.P6177059983055128402

`A016116(2*n)-A025065(2*n)`
-/

namespace A208740.P6177059983055128402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A025065 (2 * n)

end

end A208740.P6177059983055128402

/-!
# A208742: Number of subsets of the set {1,2,...,n} which do not contain two elements whose difference is 5.

The programs for A208742, the canonical program `A208742.P16196260258784021817` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208742 has offset 0).

The definition of A208742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208742.P16196260258784021817

`A000045(floor(n/5)+3)^(n%5)*A000045(floor(n/5)+2)^(5-n%5)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208742

/-- `A000045(floor(n/5)+3)^(n%5)*A000045(floor(n/5)+2)^(5-n%5)` -/
def P16196260258784021817.Spec : Prop :=
  ∀ n, P16196260258784021817.a n = (A208742 n : ℚ)

end A208742

/-! ## A208742.P1942343914028024650

`A209435(A052905(n+2))`
-/

namespace A208742.P1942343914028024650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A052905 (n + 2)).toNat

end

end A208742.P1942343914028024650

namespace A208742

/-- `A209435(A052905(n+2))` -/
def P1942343914028024650.Spec : Prop :=
  ∀ n, P1942343914028024650.a n = A208742 n

end A208742

/-! ## A208742.P12287938948100200973

`A209434(A000124(n+4)+3)`
-/

namespace A208742.P12287938948100200973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A000124 (n + 4) + 3).toNat

end

end A208742.P12287938948100200973

namespace A208742

/-- `A209434(A000124(n+4)+3)` -/
def P12287938948100200973.Spec : Prop :=
  ∀ n, P12287938948100200973.a n = A208742 n

end A208742

/-! ## A208742.P4511837589937021579

`A209435(eq[5, A004736(n+1)])`
-/

namespace A208742.P4511837589937021579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208742.P4511837589937021579

namespace A208742

/-- `A209435(eq[5, A004736(n+1)])` -/
def P4511837589937021579.Spec : Prop :=
  ∀ n, P4511837589937021579.a n = A208742 n

end A208742

/-! ## A208742.P18021386275509062994

`A209435(A000217(n+4)+n)`
-/

namespace A208742.P18021386275509062994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A208742.P18021386275509062994

namespace A208742

/-- `A209435(A000217(n+4)+n)` -/
def P18021386275509062994.Spec : Prop :=
  ∀ n, P18021386275509062994.a n = A208742 n

end A208742

/-! ## A208742.P15165306940051555279

`A209434(A000096(n+4)-n)`
-/

namespace A208742.P15165306940051555279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A000096 (n + 4) - (n : ℤ)).toNat

end

end A208742.P15165306940051555279

namespace A208742

/-- `A209434(A000096(n+4)-n)` -/
def P15165306940051555279.Spec : Prop :=
  ∀ n, P15165306940051555279.a n = A208742 n

end A208742

/-!
# A208743: Number of subsets of the set {1,2,...,n} which do not contain two elements whose difference is 6.

The programs for A208743, the canonical program `A208743.P9352369371654715497` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208743 has offset 1).

The definition of A208743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208743.P9352369371654715497

`A000045(floor((n+1)/6)+3)^((n+1)%6)*A000045(floor((n+1)/6)+2)^(6-(n+1)%6)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208743

/-- `A000045(floor((n+1)/6)+3)^((n+1)%6)*A000045(floor((n+1)/6)+2)^(6-(n+1)%6)` -/
def P9352369371654715497.Spec : Prop :=
  ∀ n, P9352369371654715497.a n = (A208743 (n + 1) : ℚ)

end A208743

/-! ## A208743.P11482266040125979223

`A209435(C(n+7, 2)+n+1)`
-/

namespace A208743.P11482266040125979223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (Nat.choose (n + 7) 2 + (n + 1))

end

end A208743.P11482266040125979223

namespace A208743

/-- `A209435(C(n+7, 2)+n+1)` -/
def P11482266040125979223.Spec : Prop :=
  ∀ n, P11482266040125979223.a n = A208743 (n + 1)

end A208743

/-! ## A208743.P469579985883046117

`A209435(eq[4, A219347(n)])`
-/

namespace A208743.P469579985883046117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208743.P469579985883046117

namespace A208743

/-- `A209435(eq[4, A219347(n)])` -/
def P469579985883046117.Spec : Prop :=
  ∀ n, P469579985883046117.a n = A208743 (n + 1)

end A208743

/-! ## A208743.P5877798499452033269

`A209435(A155212(n+3)+2)`
-/

namespace A208743.P5877798499452033269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A155212 (n + 3) + 2).toNat

end

end A208743.P5877798499452033269

namespace A208743

/-- `A209435(A155212(n+3)+2)` -/
def P5877798499452033269.Spec : Prop :=
  ∀ n, P5877798499452033269.a n = A208743 (n + 1)

end A208743

/-! ## A208743.P10543093930223227635

`2*A208742(A062399(n))`
-/

namespace A208743.P10543093930223227635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208742 (A062399 n).toNat

end

end A208743.P10543093930223227635

namespace A208743

/-- `2*A208742(A062399(n))` -/
def P10543093930223227635.Spec : Prop :=
  ∀ n, P10543093930223227635.a n = A208743 (n + 1)

end A208743

/-!
# A208744: Triangle relating to ordered Bell numbers, A000670.

The programs for A208744, there is no canonical definition to state claims against.
-/

/-! ## A208744.P1610943909941069958

`ceil(A202687(comp[∑[n+1]])/2)`
-/

namespace A208744.P1610943909941069958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202687 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A208744.P1610943909941069958

/-! ## A208744.P12621901556729743646

`round(A202687(comp[∑[n-1]])/2)`
-/

namespace A208744.P12621901556729743646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A202687 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2)

end

end A208744.P12621901556729743646

/-! ## A208744.P1162108267600336415

`A154921(∑[2*n]%comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A208744.P1162108267600336415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A208744.P1162108267600336415

/-! ## A208744.P7689354972926148798

`A154921(A099375(n)+1+n)`
-/

namespace A208744.P7689354972926148798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A099375 n + 1 + (n : ℤ)).toNat

end

end A208744.P7689354972926148798

/-! ## A208744.P7301571941178043005

`A154921(A212012(n+1)+n)`
-/

namespace A208744.P7301571941178043005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A208744.P7301571941178043005

/-! ## A208744.P4220515477844759679

`A154921(A038722(comp[∑[n]]+1))`
-/

namespace A208744.P4220515477844759679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A208744.P4220515477844759679

/-! ## A208744.P15366439166873016929

`A154921(A061579(comp[∑[n]])+1)`
-/

namespace A208744.P15366439166873016929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A208744.P15366439166873016929

/-! ## A208744.P12563010968741144821

`A154921(A061579(comp[∑[n-1]]))`
-/

namespace A208744.P12563010968741144821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A208744.P12563010968741144821

/-! ## A208744.P5889987685154853337

`A154921(A014132(n+1)+round(sqrt(2*(n+1)))²-(2*n+1))`
-/

namespace A208744.P5889987685154853337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (A014132 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))).toNat

end

end A208744.P5889987685154853337

/-! ## A208744.P17952109564185456882

`A000670(A002262(n))*A074909(n)`
-/

namespace A208744.P17952109564185456882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A002262 n).toNat * A074909 n

end

end A208744.P17952109564185456882

/-!
# A208746: Size of largest subset of [1..n] containing no three terms in geometric progression.

The programs for A208746, there is no canonical definition to state claims against.
-/

/-! ## A208746.P11515382375099001689

`∑[A267853(n*A135874(n+1))]`
-/

namespace A208746.P11515382375099001689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267853 ((n : ℤ) * A135874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208746.P11515382375099001689

/-! ## A208746.P1911616891452071794

`∑[A010054(∑[n]*A348271(n+1))]`
-/

namespace A208746.P1911616891452071794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A348271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208746.P1911616891452071794

/-! ## A208746.P11824747032784642380

`∑[A302777(A010737(A051709(n+1)))]`
-/

namespace A208746.P11824747032784642380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A010737 (A051709 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208746.P11824747032784642380

/-! ## A208746.P9070832431136066899

`∑[A010057(A078843(A348271(n+1)))]`
-/

namespace A208746.P9070832431136066899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A078843 (A348271 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208746.P9070832431136066899

/-! ## A208746.P2611911305632040489

`∑[A107846(A208879(n)+9)^A318499(n+1)]`
-/

namespace A208746.P2611911305632040489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 (A208879 n + 9).toNat : ℚ) ^ (A318499 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208746.P2611911305632040489

/-!
# A208747: Triangle of coefficients of polynomials u(n,x) jointly generated with A208748; see the Formula section.

The programs for A208747, the canonical program `A208747.P1926894875507570` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208747 has offset 1).

The definition of A208747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208747.P1926894875507570

`A059268(n)*A208342(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208747

/-- `A059268(n)*A208342(n+1)` -/
def P1926894875507570.Spec : Prop :=
  ∀ n, P1926894875507570.a n = A208747 (n + 1)

theorem P1926894875507570.correct : P1926894875507570.Spec := by
  intro n
  simp only [A208747, Nat.add_sub_cancel]

end A208747

/-! ## A208747.P17134528298908042651

`A053538(A061579(n))*A059268(n)`
-/

namespace A208747.P17134528298908042651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 n).toNat * A059268 n

end

end A208747.P17134528298908042651

namespace A208747

/-- `A053538(A061579(n))*A059268(n)` -/
def P17134528298908042651.Spec : Prop :=
  ∀ n, P17134528298908042651.a n = A208747 (n + 1)

theorem P17134528298908042651.correct : P17134528298908042651.Spec := by
  intro n
  simp only [A208747, Nat.add_sub_cancel, A208747.P17134528298908042651.a, A208747.P1926894875507570.a, A053538, A053538.P796723598825491096.a, A059268, A059268.P15217573790077737885.a, A061579, A061579.P7462537595056690109.a, A208342, A208342.P14721574194746815470.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A208747

/-! ## A208747.P6892899514369312216

`A000079(A002262(n))*A208342(n+1)`
-/

namespace A208747.P6892899514369312216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A208342 (n + 1)

end

end A208747.P6892899514369312216

namespace A208747

/-- `A000079(A002262(n))*A208342(n+1)` -/
def P6892899514369312216.Spec : Prop :=
  ∀ n, P6892899514369312216.a n = A208747 (n + 1)

end A208747

/-! ## A208747.P14136675320641677397

`A011782(A002260(n+1))*A208342(n+1)`
-/

namespace A208747.P14136675320641677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A208342 (n + 1)

end

end A208747.P14136675320641677397

namespace A208747

/-- `A011782(A002260(n+1))*A208342(n+1)` -/
def P14136675320641677397.Spec : Prop :=
  ∀ n, P14136675320641677397.a n = A208747 (n + 1)

end A208747

/-! ## A208747.P7436120601618933284

`A130321(A061579(n))*A208342(n+1)`
-/

namespace A208747.P7436120601618933284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A208342 (n + 1)

end

end A208747.P7436120601618933284

namespace A208747

/-- `A130321(A061579(n))*A208342(n+1)` -/
def P7436120601618933284.Spec : Prop :=
  ∀ n, P7436120601618933284.a n = A208747 (n + 1)

end A208747

/-! ## A208747.P3205771854582701015

`A130321(A286147(n))*A208342(n+1)`
-/

namespace A208747.P3205771854582701015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A286147 n).toNat * A208342 (n + 1)

end

end A208747.P3205771854582701015

namespace A208747

/-- `A130321(A286147(n))*A208342(n+1)` -/
def P3205771854582701015.Spec : Prop :=
  ∀ n, P3205771854582701015.a n = A208747 (n + 1)

end A208747

/-!
# A208748: Triangle of coefficients of polynomials v(n,x) jointly generated with A208747; see the Formula section.

The programs for A208748, there is no canonical definition to state claims against.
-/

/-! ## A208748.P10926817510811251537

`A059268(n)*A208343(n+1)`
-/

namespace A208748.P10926817510811251537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208343 (n + 1)

end

end A208748.P10926817510811251537

/-! ## A208748.P11811934719625429763

`A000079(A002262(n))*A208343(n+1)`
-/

namespace A208748.P11811934719625429763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A208343 (n + 1)

end

end A208748.P11811934719625429763

/-! ## A208748.P2966095450394514143

`A011782(A002260(n+1))*A208343(n+1)`
-/

namespace A208748.P2966095450394514143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A208343 (n + 1)

end

end A208748.P2966095450394514143

/-! ## A208748.P11186827252078565527

`A208343(n+1)/A208342(n+1)*A208747(n+1)`
-/

namespace A208748.P11186827252078565527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208343 (n + 1) : ℚ) / (A208342 (n + 1) : ℚ) * (A208747 (n + 1) : ℚ)

end

end A208748.P11186827252078565527

/-! ## A208748.P14639953116965766408

`A130321(A061579(n))*A208343(n+1)`
-/

namespace A208748.P14639953116965766408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A208343 (n + 1)

end

end A208748.P14639953116965766408

/-! ## A208748.P7671539431206037774

`A130321(A286147(n))*A208343(n+1)`
-/

namespace A208748.P7671539431206037774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A286147 n).toNat * A208343 (n + 1)

end

end A208748.P7671539431206037774

/-! ## A208748.P12775228144301764740

`A001316(A023758(n+1))*A208343(n+1)`
-/

namespace A208748.P12775228144301764740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A023758 (n + 1)).toNat * A208343 (n + 1)

end

end A208748.P12775228144301764740

/-!
# A208749: Triangle of coefficients of polynomials u(n,x) jointly generated with A208750; see the Formula section.

The programs for A208749, there is no canonical definition to state claims against.
-/

/-! ## A208749.P2001434744195022605

`Δ[∑[A208750(n+1)]-A209157(n+1)]`
-/

namespace A208749.P2001434744195022605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A209157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208749.P2001434744195022605

/-! ## A208749.P1673322148475549183

`A198685(2*n+5)%A132813(n)+1`
-/

namespace A208749.P1673322148475549183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198685 (2 * n + 5)) (A132813 n) + 1

end

end A208749.P1673322148475549183

/-! ## A208749.P15785106895407505797

`gcd(A001613(A052762(n)), A063007(n))`
-/

namespace A208749.P15785106895407505797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001613 (A052762 n).toNat) (A063007 n)

end

end A208749.P15785106895407505797

/-! ## A208749.P13828001596996624834

`gcd(A217126(A054886(n)), A331430(n))`
-/

namespace A208749.P13828001596996624834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217126 (A054886 n).toNat) (A331430 n)

end

end A208749.P13828001596996624834

/-! ## A208749.P17002298994337723322

`A208905(n+1)+A070764(A195441(n))`
-/

namespace A208749.P17002298994337723322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208905 (n + 1) + A070764 (A195441 n).toNat

end

end A208749.P17002298994337723322

/-!
# A208751: Triangle of coefficients of polynomials u(n,x) jointly generated with A208752; see the Formula section.

The programs for A208751, the canonical program `A208751.P1152826400079216258` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208751 has offset 1).

The definition of A208751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208751.P1152826400079216258

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208751

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` -/
def P1152826400079216258.Spec : Prop :=
  ∀ n, P1152826400079216258.a n = A208751 (n + 1)

theorem P1152826400079216258.correct : P1152826400079216258.Spec := by
  intro n
  simp only [A208751, Nat.add_sub_cancel]

end A208751

/-! ## A208751.P17553430031310408885

`(A207609(n+1)+A114188(n))/2`
-/

namespace A208751.P17553430031310408885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207609 (n + 1) + A114188 n : ℚ) / 2

end

end A208751.P17553430031310408885

namespace A208751

/-- `(A207609(n+1)+A114188(n))/2` -/
def P17553430031310408885.Spec : Prop :=
  ∀ n, P17553430031310408885.a n = (A208751 (n + 1) : ℚ)

end A208751

/-! ## A208751.P18063744747725047122

`A004277(A207625(n+1)-A207608(n+1))`
-/

namespace A208751.P18063744747725047122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A207625 (n + 1) - A207608 (n + 1)).toNat

end

end A208751.P18063744747725047122

namespace A208751

/-- `A004277(A207625(n+1)-A207608(n+1))` -/
def P18063744747725047122.Spec : Prop :=
  ∀ n, P18063744747725047122.a n = A208751 (n + 1)

end A208751

/-! ## A208751.P10150310463334188239

`A114188(n)+A001281(A207609(n+1)-A114188(n))`
-/

namespace A208751.P10150310463334188239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 n + A001281 (A207609 (n + 1) - A114188 n).toNat

end

end A208751.P10150310463334188239

namespace A208751

/-- `A114188(n)+A001281(A207609(n+1)-A114188(n))` -/
def P10150310463334188239.Spec : Prop :=
  ∀ n, P10150310463334188239.a n = A208751 (n + 1)

end A208751

/-! ## A208751.P16184051139297087613

`A114188(n)-A001057(A207609(n+1)-A114188(n))`
-/

namespace A208751.P16184051139297087613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 n - A001057 (A207609 (n + 1) - A114188 n).toNat

end

end A208751.P16184051139297087613

namespace A208751

/-- `A114188(n)-A001057(A207609(n+1)-A114188(n))` -/
def P16184051139297087613.Spec : Prop :=
  ∀ n, P16184051139297087613.a n = A208751 (n + 1)

end A208751

/-!
# A208752: Triangle of coefficients of polynomials v(n,x) jointly generated with A208751; see the Formula section.

The programs for A208752, the canonical program `A208752.P1549407625724649157` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208752 has offset 1).

The definition of A208752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208752.P1549407625724649157

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208752

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` -/
def P1549407625724649157.Spec : Prop :=
  ∀ n, P1549407625724649157.a n = A208752 (n + 1)

theorem P1549407625724649157.correct : P1549407625724649157.Spec := by
  intro n
  simp only [A208752, Nat.add_sub_cancel]

end A208752

/-! ## A208752.P8478108753071276453

`A338372(n)/A059268(n)`
-/

namespace A208752.P8478108753071276453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338372 n : ℚ) / (A059268 n : ℚ)

end

end A208752.P8478108753071276453

namespace A208752

/-- `A338372(n)/A059268(n)` -/
def P8478108753071276453.Spec : Prop :=
  ∀ n, P8478108753071276453.a n = (A208752 (n + 1) : ℚ)

end A208752

/-! ## A208752.P792135310463266614

`A207608(n+2)-A208751(n+1)`
-/

namespace A208752.P792135310463266614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207608 (n + 2) - A208751 (n + 1)

end

end A208752.P792135310463266614

namespace A208752

/-- `A207608(n+2)-A208751(n+1)` -/
def P792135310463266614.Spec : Prop :=
  ∀ n, P792135310463266614.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P10312391897102369449

`A247645(A195437(n))`
-/

namespace A208752.P10312391897102369449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A195437 n).toNat

end

end A208752.P10312391897102369449

namespace A208752

/-- `A247645(A195437(n))` -/
def P10312391897102369449.Spec : Prop :=
  ∀ n, P10312391897102369449.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P3642592795481650524

`A247645(eq[0, A071028(n)])`
-/

namespace A208752.P3642592795481650524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208752.P3642592795481650524

namespace A208752

/-- `A247645(eq[0, A071028(n)])` -/
def P3642592795481650524.Spec : Prop :=
  ∀ n, P3642592795481650524.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P15302518624193513979

`A247645(A000037(2*n+1))`
-/

namespace A208752.P15302518624193513979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A000037 (2 * n + 1)).toNat

end

end A208752.P15302518624193513979

namespace A208752

/-- `A247645(A000037(2*n+1))` -/
def P15302518624193513979.Spec : Prop :=
  ∀ n, P15302518624193513979.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P11851968336366846833

`A247645(A014132(n+1)+n)`
-/

namespace A208752.P11851968336366846833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A014132 (n + 1) + (n : ℤ)).toNat

end

end A208752.P11851968336366846833

namespace A208752

/-- `A247645(A014132(n+1)+n)` -/
def P11851968336366846833.Spec : Prop :=
  ∀ n, P11851968336366846833.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P2984095747575793737

`A247645(A003057(n+2)+2*n)`
-/

namespace A208752.P2984095747575793737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A003057 (n + 2) + (2 * n : ℤ)).toNat

end

end A208752.P2984095747575793737

namespace A208752

/-- `A247645(A003057(n+2)+2*n)` -/
def P2984095747575793737.Spec : Prop :=
  ∀ n, P2984095747575793737.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P6674256993357780724

`A247645(A003057(n+2)+n+n)`
-/

namespace A208752.P6674256993357780724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A003057 (n + 2) + (n : ℤ) + (n : ℤ)).toNat

end

end A208752.P6674256993357780724

namespace A208752

/-- `A247645(A003057(n+2)+n+n)` -/
def P6674256993357780724.Spec : Prop :=
  ∀ n, P6674256993357780724.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P710668386928036308

`A247645(A002024(n+1)+2*n+1)`
-/

namespace A208752.P710668386928036308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A002024 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A208752.P710668386928036308

namespace A208752

/-- `A247645(A002024(n+1)+2*n+1)` -/
def P710668386928036308.Spec : Prop :=
  ∀ n, P710668386928036308.a n = A208752 (n + 1)

end A208752

/-! ## A208752.P12127725678093698632

`A247645(A005843(n)+A003057(n+2))`
-/

namespace A208752.P12127725678093698632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A005843 n + A003057 (n + 2)).toNat

end

end A208752.P12127725678093698632

namespace A208752

/-- `A247645(A005843(n)+A003057(n+2))` -/
def P12127725678093698632.Spec : Prop :=
  ∀ n, P12127725678093698632.a n = A208752 (n + 1)

end A208752

/-!
# A208754: Triangle of coefficients of polynomials v(n,x) jointly generated with A208753; see the Formula section.

The programs for A208754, the canonical program `A208754.P18207085302697048033` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208754 has offset 1).

The definition of A208754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208754.P18207085302697048033

`A059268(A091018(n))*A208509(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208754

/-- `A059268(A091018(n))*A208509(n+1)` -/
def P18207085302697048033.Spec : Prop :=
  ∀ n, P18207085302697048033.a n = A208754 (n + 1)

theorem P18207085302697048033.correct : P18207085302697048033.Spec := by
  intro n
  simp only [A208754, Nat.add_sub_cancel]

end A208754

/-! ## A208754.P7866596463696808361

`(2*A034867(n)-A034839(n))*A059268(A091018(n))`
-/

namespace A208754.P7866596463696808361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A034867 n - A034839 n) * A059268 (A091018 n).toNat

end

end A208754.P7866596463696808361

namespace A208754

/-- `(2*A034867(n)-A034839(n))*A059268(A091018(n))` -/
def P7866596463696808361.Spec : Prop :=
  ∀ n, P7866596463696808361.a n = A208754 (n + 1)

theorem P7866596463696808361.correct : P7866596463696808361.Spec := by
  intro n
  simp only [A208754, Nat.add_sub_cancel, A208754.P7866596463696808361.a, A208754.P18207085302697048033.a, A034839, A034839.P358419895487710885.a, A034867, A034867.P8941285567894178108.a, A059268, A059268.P15217573790077737885.a, A091018, A091018.P2259398009619809425.a, A208509, A208509.P2453513182842311180.a, A000196, A000196.P15434771586934192083.a, A018900, A018900.P2868698677378612256.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A056536, A056536.P15475188742304027796.a, A074909, A074909.P6402560185863182536.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A137688, A137688.P9746695207037186753.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A003056, A003056.P5318256527314048597.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A208754

/-! ## A208754.P2288816636966993723

`A059268(A091018(n))*A111125(A091018(n))`
-/

namespace A208754.P2288816636966993723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A111125 (A091018 n).toNat

end

end A208754.P2288816636966993723

namespace A208754

/-- `A059268(A091018(n))*A111125(A091018(n))` -/
def P2288816636966993723.Spec : Prop :=
  ∀ n, P2288816636966993723.a n = A208754 (n + 1)

end A208754

/-! ## A208754.P6185948402043901913

`A059268(A091018(n))*A110813(A028391(n)+n)`
-/

namespace A208754.P6185948402043901913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A110813 (A028391 n + (n : ℤ)).toNat

end

end A208754.P6185948402043901913

namespace A208754

/-- `A059268(A091018(n))*A110813(A028391(n)+n)` -/
def P6185948402043901913.Spec : Prop :=
  ∀ n, P6185948402043901913.a n = A208754 (n + 1)

end A208754

/-!
# A208755: Triangle of coefficients of polynomials u(n,x) jointly generated with A208756; see the Formula section.

The programs for A208755, there is no canonical definition to state claims against.
-/

/-! ## A208755.P15928312609482035913

`2*A210555(n+1)-A208907(n+1)`
-/

namespace A208755.P15928312609482035913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210555 (n + 1) - A208907 (n + 1)

end

end A208755.P15928312609482035913

/-! ## A208755.P1267786216458350841

`A208756(comp[∑[n]]+1)-A208756(n+1)`
-/

namespace A208755.P1267786216458350841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A208756 (n + 1)

end

end A208755.P1267786216458350841

/-! ## A208755.P4222742624504468620

`A005843(A210555(n+1))-A208907(n+1)`
-/

namespace A208755.P4222742624504468620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210555 (n + 1)).toNat - A208907 (n + 1)

end

end A208755.P4222742624504468620

/-! ## A208755.P4583219792146335070

`A351831(A307855(n))+A059268(n)`
-/

namespace A208755.P4583219792146335070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A307855 n).toNat + A059268 n

end

end A208755.P4583219792146335070

/-! ## A208755.P14021339756008779441

`A122953(A249027(n+1))`
-/

namespace A208755.P14021339756008779441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122953 (A249027 (n + 1)).toNat

end

end A208755.P14021339756008779441

/-!
# A208756: Triangle of coefficients of polynomials v(n,x) jointly generated with A208755; see the Formula section.

The programs for A208756, there is no canonical definition to state claims against.
-/

/-! ## A208756.P13975709530470754127

`A053827(lcm(6, A057075(n+1)))`
-/

namespace A208756.P13975709530470754127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (Int.lcm 6 (A057075 (n + 1)))

end

end A208756.P13975709530470754127

/-! ## A208756.P13587614007528685351

`Δ[A018900(n+1)]+A008683(A191088(n+1))`
-/

namespace A208756.P13587614007528685351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (A191088 (n + 1)).toNat

end

end A208756.P13587614007528685351

/-! ## A208756.P11596553356002661920

`A046660(2*A329049(n))`
-/

namespace A208756.P11596553356002661920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A329049 n).toNat

end

end A208756.P11596553356002661920

/-! ## A208756.P969217502414659780

`A015940(n+1)%Δ[A018900(n+1)]`
-/

namespace A208756.P969217502414659780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015940 (n + 1)) (f1 (n + 1) - f1 n)

end

end A208756.P969217502414659780

/-! ## A208756.P8769208350932154043

`A375123(A297889(n+1)*A333213(n))`
-/

namespace A208756.P8769208350932154043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (A297889 (n + 1) * A333213 n).toNat

end

end A208756.P8769208350932154043

/-!
# A208757: Triangle of coefficients of polynomials u(n,x) jointly generated with A208758; see the Formula section.

The programs for A208757, there is no canonical definition to state claims against.
-/

/-! ## A208757.P8930850546132954003

`(A208910(n+1)+A208332(n+1))/2`
-/

namespace A208757.P8930850546132954003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208910 (n + 1) + A208332 (n + 1) : ℚ) / 2

end

end A208757.P8930850546132954003

/-! ## A208757.P6907045007587272367

`2*A208910(n+1)-A208527(n+1)`
-/

namespace A208757.P6907045007587272367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208910 (n + 1) - A208527 (n + 1)

end

end A208757.P6907045007587272367

/-! ## A208757.P1617249706046715708

`A208332(n+1)+A208333(n+1)-A208758(n+1)`
-/

namespace A208757.P1617249706046715708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1) + (A208333 (n + 1) - A208758 (n + 1))

end

end A208757.P1617249706046715708

/-! ## A208757.P8122429432656728162

`A208332(n+1)+A208527(n+1)-A208910(n+1)`
-/

namespace A208757.P8122429432656728162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1) + (A208527 (n + 1) - A208910 (n + 1))

end

end A208757.P8122429432656728162

/-! ## A208757.P2053309806889136031

`A208758(n+1)+A208910(n+1)-A208333(n+1)`
-/

namespace A208757.P2053309806889136031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208758 (n + 1) + (A208910 (n + 1) - A208333 (n + 1))

end

end A208757.P2053309806889136031

/-! ## A208757.P14837152996060094150

`A208527(n+1)-A005843(A208527(n+1)-A208910(n+1))`
-/

namespace A208757.P14837152996060094150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208527 (n + 1) - A005843 (A208527 (n + 1) - A208910 (n + 1)).toNat

end

end A208757.P14837152996060094150

/-! ## A208757.P5441992819659412849

`A005843(A208910(n+1))-A208527(n+1)`
-/

namespace A208757.P5441992819659412849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208910 (n + 1)).toNat - A208527 (n + 1)

end

end A208757.P5441992819659412849

/-!
# A208758: Triangle of coefficients of polynomials v(n,x) jointly generated with A208757; see the Formula section.

The programs for A208758, there is no canonical definition to state claims against.
-/

/-! ## A208758.P11666056751450106967

`A208332(n+1)+A208333(n+1)-A208757(n+1)`
-/

namespace A208758.P11666056751450106967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1) + (A208333 (n + 1) - A208757 (n + 1))

end

end A208758.P11666056751450106967

/-! ## A208758.P15925359071609687064

`A208333(n+1)+A208910(n+1)-A208527(n+1)`
-/

namespace A208758.P15925359071609687064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208910 (n + 1) - A208527 (n + 1))

end

end A208758.P15925359071609687064

/-! ## A208758.P8482495777618541332

`A208333(n+1)+A208757(n+1)-A208910(n+1)`
-/

namespace A208758.P8482495777618541332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208757 (n + 1) - A208910 (n + 1))

end

end A208758.P8482495777618541332

/-! ## A208758.P12616449662392052440

`A208757(n+2)-Δ[A208910(n+1)]`
-/

namespace A208758.P12616449662392052440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208758.P12616449662392052440

/-! ## A208758.P13746524694615453499

`A208910(n+1)+A208332(n+2)-A208757(n+2)`
-/

namespace A208758.P13746524694615453499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) + (A208332 (n + 2) - A208757 (n + 2))

end

end A208758.P13746524694615453499

/-! ## A208758.P4687665968157669947

`A208910(n+1)+A208757(n+2)-A208910(n+2)`
-/

namespace A208758.P4687665968157669947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) + (A208757 (n + 2) - A208910 (n + 2))

end

end A208758.P4687665968157669947

/-!
# A208759: Triangle of coefficients of polynomials u(n,x) jointly generated with A208760; see the Formula section.

The programs for A208759, the canonical program `A208759.P11993025466558616853` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208759 has offset 1).

The definition of A208759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208759.P7213971597748299850

`2*A208760(n+1)-A209161(n+1)`
-/

namespace A208759.P7213971597748299850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208760 (n + 1) - A209161 (n + 1)

end

end A208759.P7213971597748299850

namespace A208759

/-- `2*A208760(n+1)-A209161(n+1)` -/
def P7213971597748299850.Spec : Prop :=
  ∀ n, P7213971597748299850.a n = A208759 (n + 1)

end A208759

/-! ## A208759.P11993025466558616853

`A073387(A002378(n)%A080036(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208759

/-- `A073387(A002378(n)%A080036(n))` -/
def P11993025466558616853.Spec : Prop :=
  ∀ n, P11993025466558616853.a n = A208759 (n + 1)

theorem P11993025466558616853.correct : P11993025466558616853.Spec := by
  intro n
  simp only [A208759, Nat.add_sub_cancel]

end A208759

/-! ## A208759.P10635529083752493519

`A073387(∑[2*n]%comp[∑[n]])`
-/

namespace A208759.P10635529083752493519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A208759.P10635529083752493519

namespace A208759

/-- `A073387(∑[2*n]%comp[∑[n]])` -/
def P10635529083752493519.Spec : Prop :=
  ∀ n, P10635529083752493519.a n = A208759 (n + 1)

end A208759

/-! ## A208759.P8765152342824972911

`A073387(∑[char[∑[n]]]²-n-1)`
-/

namespace A208759.P8765152342824972911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A208759.P8765152342824972911

namespace A208759

/-- `A073387(∑[char[∑[n]]]²-n-1)` -/
def P8765152342824972911.Spec : Prop :=
  ∀ n, P8765152342824972911.a n = A208759 (n + 1)

end A208759

/-! ## A208759.P17340585629562320902

`A073387(A061579(n))%A100067(n+1)`
-/

namespace A208759.P17340585629562320902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073387 (A061579 n).toNat) (A100067 (n + 1))

end

end A208759.P17340585629562320902

namespace A208759

/-- `A073387(A061579(n))%A100067(n+1)` -/
def P17340585629562320902.Spec : Prop :=
  ∀ n, P17340585629562320902.a n = A208759 (n + 1)

end A208759

/-! ## A208759.P8097207988266500004

`A004277(A208760(n+1))-A209161(n+1)`
-/

namespace A208759.P8097207988266500004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208760 (n + 1)).toNat - A209161 (n + 1)

end

end A208759.P8097207988266500004

namespace A208759

/-- `A004277(A208760(n+1))-A209161(n+1)` -/
def P8097207988266500004.Spec : Prop :=
  ∀ n, P8097207988266500004.a n = A208759 (n + 1)

end A208759

/-!
# A208760: Triangle of coefficients of polynomials v(n,x) jointly generated with A208759; see the Formula section.

The programs for A208760, there is no canonical definition to state claims against.
-/

/-! ## A208760.P4386697365497267977

`(A209161(n+1)+A208759(n+1))/2`
-/

namespace A208760.P4386697365497267977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209161 (n + 1) + A208759 (n + 1) : ℚ) / 2

end

end A208760.P4386697365497267977

/-! ## A208760.P7320316344372913101

`A208759(n+1)+A004525(A209161(n+1)-A208759(n+1))`
-/

namespace A208760.P7320316344372913101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1) + A004525 (A209161 (n + 1) - A208759 (n + 1)).toNat

end

end A208760.P7320316344372913101

/-! ## A208760.P10628630376457693003

`A208759(n+1)+A004526(A209161(n+1)-A208759(n+1))`
-/

namespace A208760.P10628630376457693003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1) + A004526 (A209161 (n + 1) - A208759 (n + 1)).toNat

end

end A208760.P10628630376457693003

/-! ## A208760.P11481540410514125110

`A208759(n+1)+A026741(A209161(n+1)-A208759(n+1))`
-/

namespace A208760.P11481540410514125110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1) + A026741 (A209161 (n + 1) - A208759 (n + 1)).toNat

end

end A208760.P11481540410514125110

/-! ## A208760.P2282860388209770086

`A208759(n+1)+A029578(A209161(n+1)-A208759(n+1))`
-/

namespace A208760.P2282860388209770086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1) + A029578 (A209161 (n + 1) - A208759 (n + 1)).toNat

end

end A208760.P2282860388209770086

/-!
# A208761: Triangle of coefficients of polynomials u(n,x) jointly generated with A208762; see the Formula section.

The programs for A208761, there is no canonical definition to state claims against.
-/

/-! ## A208761.P18047801864467766927

`2*A208762(n+1)-A208932(n+1)`
-/

namespace A208761.P18047801864467766927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A208932 (n + 1)

end

end A208761.P18047801864467766927

/-! ## A208761.P7735595763921097281

`A209135(n+1)+A209163(n+1)-A208932(n+1)`
-/

namespace A208761.P7735595763921097281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209135 (n + 1) + (A209163 (n + 1) - A208932 (n + 1))

end

end A208761.P7735595763921097281

/-! ## A208761.P2343113320695527250

`A004277(A208762(n+1))-A208932(n+1)`
-/

namespace A208761.P2343113320695527250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A208932 (n + 1)

end

end A208761.P2343113320695527250

/-! ## A208761.P5242953828123920198

`A020639(A192722(n+1))*A212207(n)`
-/

namespace A208761.P5242953828123920198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A192722 (n + 1)).toNat * A212207 n

end

end A208761.P5242953828123920198

/-! ## A208761.P9788993433286628253

`A244361(A167024(n))`
-/

namespace A208761.P9788993433286628253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A167024 n).toNat

end

end A208761.P9788993433286628253

/-!
# A208762: Triangle of coefficients of polynomials v(n,x) jointly generated with A208761; see the Formula section.

The programs for A208762, there is no canonical definition to state claims against.
-/

/-! ## A208762.P10235331456571854203

`(A208932(n+1)+A208761(n+1))/2`
-/

namespace A208762.P10235331456571854203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208932 (n + 1) + A208761 (n + 1) : ℚ) / 2

end

end A208762.P10235331456571854203

/-! ## A208762.P7787976002496509313

`(A209163(n+1)+A209135(n+1))/2`
-/

namespace A208762.P7787976002496509313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209163 (n + 1) + A209135 (n + 1) : ℚ) / 2

end

end A208762.P7787976002496509313

/-! ## A208762.P6265925747479457250

`A209135(n+1)+A004525(A209163(n+1)-A209135(n+1))`
-/

namespace A208762.P6265925747479457250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209135 (n + 1) + A004525 (A209163 (n + 1) - A209135 (n + 1)).toNat

end

end A208762.P6265925747479457250

/-! ## A208762.P1697221809920735263

`A209135(n+1)+A004526(A209163(n+1)-A209135(n+1))`
-/

namespace A208762.P1697221809920735263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209135 (n + 1) + A004526 (A209163 (n + 1) - A209135 (n + 1)).toNat

end

end A208762.P1697221809920735263

/-! ## A208762.P6996435150656905456

`A208761(n+1)+A004525(A208932(n+1)-A208761(n+1))`
-/

namespace A208762.P6996435150656905456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208761 (n + 1) + A004525 (A208932 (n + 1) - A208761 (n + 1)).toNat

end

end A208762.P6996435150656905456

/-!
# A208763: Triangle of coefficients of polynomials u(n,x) jointly generated with A208764; see the Formula section.

The programs for A208763, there is no canonical definition to state claims against.
-/

/-! ## A208763.P8038801606422042998

`A088043(A249027(n+1))`
-/

namespace A208763.P8038801606422042998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088043 (A249027 (n + 1)).toNat

end

end A208763.P8038801606422042998

/-! ## A208763.P4959975111506234771

`A320118(5^A049600(n))`
-/

namespace A208763.P4959975111506234771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320118 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A049600 n : ℤ))).toNat

end

end A208763.P4959975111506234771

/-! ## A208763.P10208804271566992580

`A221474(12*A049600(n))`
-/

namespace A208763.P10208804271566992580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 (12 * A049600 n).toNat

end

end A208763.P10208804271566992580

/-! ## A208763.P6990545143486875102

`A129618(A008305(n+1))-A349053(A145085(n))`
-/

namespace A208763.P6990545143486875102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A008305 (n + 1)).toNat - A349053 (A145085 n).toNat

end

end A208763.P6990545143486875102

/-!
# A208764: Triangle of coefficients of polynomials v(n,x) jointly generated with A208763; see the Formula section.

The programs for A208764, there is no canonical definition to state claims against.
-/

/-! ## A208764.P9164055052640030656

`A337085(n)+A002262(n)%A122539(n+2)`
-/

namespace A208764.P9164055052640030656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 n + Int.tmod (A002262 n) (A122539 (n + 2))

end

end A208764.P9164055052640030656

/-!
# A208765: Triangle of coefficients of polynomials u(n,x) jointly generated with A208766; see the Formula section.

The programs for A208765, the canonical program `A208765.P11377355391354123118` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208765 has offset 1).

The definition of A208765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208765.P11377355391354123118

`C(row(n), col(n))*A026597(col(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208765

/-- `C(row(n), col(n))*A026597(col(n))` -/
def P11377355391354123118.Spec : Prop :=
  ∀ n, P11377355391354123118.a n = A208765 (n + 1)

theorem P11377355391354123118.correct : P11377355391354123118.Spec := by
  intro n
  simp only [A208765, Nat.add_sub_cancel]

end A208765

/-! ## A208765.P12855794489750420101

`A007318(n)*A026597(A002262(n))`
-/

namespace A208765.P12855794489750420101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026597 (A002262 n).toNat

end

end A208765.P12855794489750420101

namespace A208765

/-- `A007318(n)*A026597(A002262(n))` -/
def P12855794489750420101.Spec : Prop :=
  ∀ n, P12855794489750420101.a n = A208765 (n + 1)

end A208765

/-! ## A208765.P6107313242941981020

`abs(A026597(A002262(n))*A108086(n))`
-/

namespace A208765.P6107313242941981020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026597 (A002262 n).toNat * A108086 n|

end

end A208765.P6107313242941981020

namespace A208765

/-- `abs(A026597(A002262(n))*A108086(n))` -/
def P6107313242941981020.Spec : Prop :=
  ∀ n, P6107313242941981020.a n = A208765 (n + 1)

end A208765

/-! ## A208765.P14729528301533966734

`abs(A026597(A002262(n))*A130595(n))`
-/

namespace A208765.P14729528301533966734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026597 (A002262 n).toNat * A130595 n|

end

end A208765.P14729528301533966734

namespace A208765

/-- `abs(A026597(A002262(n))*A130595(n))` -/
def P14729528301533966734.Spec : Prop :=
  ∀ n, P14729528301533966734.a n = A208765 (n + 1)

end A208765

/-! ## A208765.P1636759111098023996

`A026597(A002262(n))/2*A028326(n)`
-/

namespace A208765.P1636759111098023996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 (A002262 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A208765.P1636759111098023996

namespace A208765

/-- `A026597(A002262(n))/2*A028326(n)` -/
def P1636759111098023996.Spec : Prop :=
  ∀ n, P1636759111098023996.a n = (A208765 (n + 1) : ℚ)

end A208765

/-! ## A208765.P11406326153175760620

`(A028263(n)-A014410(n+2))*A026597(A002262(n))`
-/

namespace A208765.P11406326153175760620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028263 n - A014410 (n + 2)) * A026597 (A002262 n).toNat

end

end A208765.P11406326153175760620

namespace A208765

/-- `(A028263(n)-A014410(n+2))*A026597(A002262(n))` -/
def P11406326153175760620.Spec : Prop :=
  ∀ n, P11406326153175760620.a n = A208765 (n + 1)

end A208765

/-! ## A208765.P12832050034233318659

`A026597(A002262(n))*A097805(A014132(n+1))`
-/

namespace A208765.P12832050034233318659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (A002262 n).toNat * A097805 (A014132 (n + 1)).toNat

end

end A208765.P12832050034233318659

namespace A208765

/-- `A026597(A002262(n))*A097805(A014132(n+1))` -/
def P12832050034233318659.Spec : Prop :=
  ∀ n, P12832050034233318659.a n = A208765 (n + 1)

end A208765

/-! ## A208765.P5463842553540276914

`A004525(A028326(n))*A026597(A002262(n))`
-/

namespace A208765.P5463842553540276914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A026597 (A002262 n).toNat

end

end A208765.P5463842553540276914

namespace A208765

/-- `A004525(A028326(n))*A026597(A002262(n))` -/
def P5463842553540276914.Spec : Prop :=
  ∀ n, P5463842553540276914.a n = A208765 (n + 1)

end A208765

/-!
# A208766: Triangle of coefficients of polynomials v(n,x) jointly generated with A208765; see the Formula section.

The programs for A208766, the canonical program `A208766.P11036257821405102068` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208766 has offset 1).

The definition of A208766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208766.P11036257821405102068

`A007318(n)*A026581(A002262(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A208766

/-- `A007318(n)*A026581(A002262(n))` -/
def P11036257821405102068.Spec : Prop :=
  ∀ n, P11036257821405102068.a n = A208766 (n + 1)

theorem P11036257821405102068.correct : P11036257821405102068.Spec := by
  intro n
  simp only [A208766, Nat.add_sub_cancel]

end A208766

/-! ## A208766.P13041702298680640690

`sqrt(A008459(n))*A026581(A002262(n))`
-/

namespace A208766.P13041702298680640690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A026581 (A002262 n).toNat : ℝ)

end

end A208766.P13041702298680640690

namespace A208766

/-- `sqrt(A008459(n))*A026581(A002262(n))` -/
def P13041702298680640690.Spec : Prop :=
  ∀ n, P13041702298680640690.a n = (A208766 (n + 1) : ℝ)

end A208766

/-! ## A208766.P5078648638069422267

`Δ[A102363(n)]*A026581(A002262(n))`
-/

namespace A208766.P5078648638069422267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A026581 (A002262 n).toNat

end

end A208766.P5078648638069422267

namespace A208766

/-- `Δ[A102363(n)]*A026581(A002262(n))` -/
def P5078648638069422267.Spec : Prop :=
  ∀ n, P5078648638069422267.a n = A208766 (n + 1)

end A208766

/-! ## A208766.P17437961318334732756

`A026581(A002262(n))/2*A028326(n)`
-/

namespace A208766.P17437961318334732756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 (A002262 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A208766.P17437961318334732756

namespace A208766

/-- `A026581(A002262(n))/2*A028326(n)` -/
def P17437961318334732756.Spec : Prop :=
  ∀ n, P17437961318334732756.a n = (A208766 (n + 1) : ℚ)

theorem P17437961318334732756.correct : P17437961318334732756.Spec := by
  intro n
  simp only [A208766, Nat.add_sub_cancel, A208766.P17437961318334732756.a, A208766.P11036257821405102068.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A026581, A026581.P1232774146462448162.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208766

/-! ## A208766.P506041298137573406

`(A285118(n)+A285116(n))*A026581(A002262(n))`
-/

namespace A208766.P506041298137573406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A026581 (A002262 n).toNat

end

end A208766.P506041298137573406

namespace A208766

/-- `(A285118(n)+A285116(n))*A026581(A002262(n))` -/
def P506041298137573406.Spec : Prop :=
  ∀ n, P506041298137573406.a n = A208766 (n + 1)

theorem P506041298137573406.correct : P506041298137573406.Spec := by
  intro n
  simp only [A208766, Nat.add_sub_cancel, A208766.P506041298137573406.a, A208766.P11036257821405102068.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, A026581, A026581.P1232774146462448162.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208766

/-! ## A208766.P9474788933983009959

`A004525(A028326(n))*A026581(A002262(n))`
-/

namespace A208766.P9474788933983009959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A026581 (A002262 n).toNat

end

end A208766.P9474788933983009959

namespace A208766

/-- `A004525(A028326(n))*A026581(A002262(n))` -/
def P9474788933983009959.Spec : Prop :=
  ∀ n, P9474788933983009959.a n = A208766 (n + 1)

end A208766

/-!
# A208767: Generalized 2-super abundant numbers.

The programs for A208767, there is no canonical definition to state claims against.
-/

/-! ## A208767.P14221117484631325628

`∪[A136339(2*(n+2)), A095849(n+1)]%A241080(n+1)`
-/

namespace A208767.P14221117484631325628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136339 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A241080 (n + 1))

end

end A208767.P14221117484631325628

/-! ## A208767.P8816543173671671138

`A073348(2*a(n-1))` with `a(0)=1`
-/

namespace A208767.P8816543173671671138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073348 (2 * a (n - 1)).toNat

end

end A208767.P8816543173671671138

/-! ## A208767.P11236893860838912625

`A028310(record[A004394(n+1)%A038224(n)])`
-/

namespace A208767.P11236893860838912625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004394 (n + 1)) (A038224 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208767.P11236893860838912625

/-! ## A208767.P219545355544952229

`record[A002182(n+1)%A198387(A089072(n+1))]`
-/

namespace A208767.P219545355544952229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002182 (n + 1)) (A198387 (A089072 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208767.P219545355544952229

/-!
# A208768: The distinct values of A070198.

The programs for A208768, there is no canonical definition to state claims against.
-/

/-! ## A208768.P13857407943390102041

`∑[record[A119944(n)]]`
-/

namespace A208768.P13857407943390102041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208768.P13857407943390102041

/-! ## A208768.P11330450808768458072

`∑[record[Δ[A003418(n)]]]`
-/

namespace A208768.P11330450808768458072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208768.P11330450808768458072

/-! ## A208768.P13534800031385093481

`A051451(n+1)-1`
-/

namespace A208768.P13534800031385093481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) - 1

end

end A208768.P13534800031385093481

/-! ## A208768.P143884475486958895

`A051452(n+1)-2`
-/

namespace A208768.P143884475486958895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051452 (n + 1) - 2

end

end A208768.P143884475486958895

/-! ## A208768.P5320471794456890523

`∏[A025473(n+1)]-1`
-/

namespace A208768.P5320471794456890523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A208768.P5320471794456890523

/-! ## A208768.P603161197810493182

`record[A069491(n+1)-1]`
-/

namespace A208768.P603161197810493182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069491 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208768.P603161197810493182

/-! ## A208768.P7679499767697110291

`record[A083268(n+1)-1]`
-/

namespace A208768.P7679499767697110291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083268 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208768.P7679499767697110291

/-! ## A208768.P5659762031489465370

`A070198(A181062(n+1))`
-/

namespace A208768.P5659762031489465370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A181062 (n + 1)).toNat

end

end A208768.P5659762031489465370

/-! ## A208768.P9343121606481719104

`record[A003418(A008611(n))-1]`
-/

namespace A208768.P9343121606481719104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208768.P9343121606481719104

/-! ## A208768.P2477529209554133998

`record[A003418(A025480(n))-1]`
-/

namespace A208768.P2477529209554133998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A025480 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208768.P2477529209554133998

/-!
# A208771: Number of n-bead necklaces labeled with numbers 1..n not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208771, there is no canonical definition to state claims against.
-/

/-! ## A208771.P6691668384720323758

`A208777(∑[4*n]+1)`
-/

namespace A208771.P6691668384720323758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208771.P6691668384720323758

/-! ## A208771.P3069533609915511771

`record[A208777(Δ[A235355(n)])]`
-/

namespace A208771.P3069533609915511771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208771.P3069533609915511771

/-! ## A208771.P13051437996965660595

`A208777(A001844(n))+char[15]`
-/

namespace A208771.P13051437996965660595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208771.P13051437996965660595

/-! ## A208771.P4267729211416860693

`record[A003982(n)*A208777(n+1)]`
-/

namespace A208771.P4267729211416860693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208771.P4267729211416860693

/-! ## A208771.P3223097199863499163

`record[gcd(A003987(n), A208777(n+1))]`
-/

namespace A208771.P3223097199863499163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A208777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208771.P3223097199863499163

/-!
# A208772: Number of n-bead necklaces labeled with numbers 1..3 not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208772, there is no canonical definition to state claims against.
-/

/-! ## A208772.P2297137338565958146

`∑{d}[n+1, A215335(#)]`
-/

namespace A208772.P2297137338565958146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215335 d

end

end A208772.P2297137338565958146

/-! ## A208772.P6540287309430114470

`A215327(n+1)+A215335(n+1)-A215328(n+1)`
-/

namespace A208772.P6540287309430114470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215327 (n + 1) + (A215335 (n + 1) - A215328 (n + 1))

end

end A208772.P6540287309430114470

/-! ## A208772.P4824547154195909653

`A208777(∑[n+3]+1)`
-/

namespace A208772.P4824547154195909653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208772.P4824547154195909653

/-! ## A208772.P10927344388358965187

`A208777(A034856(n+2))+char[27]`
-/

namespace A208772.P10927344388358965187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208772.P10927344388358965187

/-! ## A208772.P15491655647749321553

`or(A000007(n), A208777(A034856(n+2)))`
-/

namespace A208772.P15491655647749321553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208777 (A034856 (n + 2)).toNat)

end

end A208772.P15491655647749321553

/-!
# A208773: Number of n-bead necklaces labeled with numbers 1..4 not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208773, the canonical program `A208773.P6564407814693536226` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208773 has offset 1).

The definition of A208773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208773.P14721688714712195029

`∑{d}[n+1, A215336(#)]`
-/

namespace A208773.P14721688714712195029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215336 d

end

end A208773.P14721688714712195029

namespace A208773

/-- `∑{d}[n+1, A215336(#)]` -/
def P14721688714712195029.Spec : Prop :=
  ∀ n, P14721688714712195029.a n = A208773 (n + 1)

end A208773

/-! ## A208773.P6564407814693536226

`A208723(n+1)+A000358(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A208773

/-- `A208723(n+1)+A000358(n+1)` -/
def P6564407814693536226.Spec : Prop :=
  ∀ n, P6564407814693536226.a n = A208773 (n + 1)

theorem P6564407814693536226.correct : P6564407814693536226.Spec := by
  intro n
  simp only [A208773, Nat.add_sub_cancel]

end A208773

/-! ## A208773.P8342310444832732453

`A032190(n+1)+A208723(n+1)+1`
-/

namespace A208773.P8342310444832732453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) + (A208723 (n + 1) + 1)

end

end A208773.P8342310444832732453

namespace A208773

/-- `A032190(n+1)+A208723(n+1)+1` -/
def P8342310444832732453.Spec : Prop :=
  ∀ n, P8342310444832732453.a n = A208773 (n + 1)

theorem P8342310444832732453.correct : P8342310444832732453.Spec := by
  intro n
  simp only [A208773, Nat.add_sub_cancel, A208773.P8342310444832732453.a, A208773.P6564407814693536226.a, A000358, A000358.P7405128074083719582.a, A032190, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A208723, A208723.P366811269937652845.a, A006206, A006206.P821304944829276785.a, A032198, A032198.P2517312571610842773.a, A060280, A060280.P11810905438432272819.a, A063524, A063524.P5631347671191003537.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A000007, A000007.P6599383543502402472.a, A003602, A003602.P7612175048291952394.a, A031367, A031367.P59529258561244113.f1, A031367.P59529258561244113.a, A032189, A032189.P10074528383651059138.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208773

/-! ## A208773.P2358261495411900782

`A000358(n+1)+A032198(n+1)+2`
-/

namespace A208773.P2358261495411900782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1) + (A032198 (n + 1) + 2)

end

end A208773.P2358261495411900782

namespace A208773

/-- `A000358(n+1)+A032198(n+1)+2` -/
def P2358261495411900782.Spec : Prop :=
  ∀ n, P2358261495411900782.a n = A208773 (n + 1)

theorem P2358261495411900782.correct : P2358261495411900782.Spec := by
  intro n
  simp only [A208773, Nat.add_sub_cancel, A208773.P2358261495411900782.a, A208773.P6564407814693536226.a, A000358, A000358.P7405128074083719582.a, A032198, A032198.P2517312571610842773.a, A208723, A208723.P366811269937652845.a, A032190, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A003602, A003602.P7612175048291952394.a, A006206, A006206.P821304944829276785.a, A032189, A032189.P10074528383651059138.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, A060280, A060280.P11810905438432272819.a, A063524, A063524.P5631347671191003537.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208773

/-! ## A208773.P5560196608842065334

`A032190(n+1)+A032198(n+1)+3`
-/

namespace A208773.P5560196608842065334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) + (A032198 (n + 1) + 3)

end

end A208773.P5560196608842065334

namespace A208773

/-- `A032190(n+1)+A032198(n+1)+3` -/
def P5560196608842065334.Spec : Prop :=
  ∀ n, P5560196608842065334.a n = A208773 (n + 1)

theorem P5560196608842065334.correct : P5560196608842065334.Spec := by
  intro n
  simp only [A208773, Nat.add_sub_cancel, A208773.P5560196608842065334.a, A208773.P6564407814693536226.a, A000358, A000358.P7405128074083719582.a, A032190, A032190.P9720883493379732171.f1, A032190.P9720883493379732171.a, A032198, A032198.P2517312571610842773.a, A208723, A208723.P366811269937652845.a, A006206, A006206.P821304944829276785.a, A365857, A365857.P16907715730324159422.a, A365859, A365859.P2106881842117531136.a, A003602, A003602.P7612175048291952394.a, A032189, A032189.P10074528383651059138.a, A060280, A060280.P11810905438432272819.a, A063524, A063524.P5631347671191003537.a, A365858, A365858.P1614978794298170297.f1, A365858.P1614978794298170297.a, A000007, A000007.P6599383543502402472.a, A031367, A031367.P59529258561244113.f1, A031367.P59529258561244113.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208773

/-!
# A208774: Number of n-bead necklaces labeled with numbers 1..5 not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208774, there is no canonical definition to state claims against.
-/

/-! ## A208774.P15233676096132113483

`∑{d}[n+1, A215337(#)]`
-/

namespace A208774.P15233676096132113483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215337 d

end

end A208774.P15233676096132113483

/-! ## A208774.P754892309026969331

`A208777(Δ[A264443(n)])`
-/

namespace A208774.P754892309026969331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (f1 (n + 1) - f1 n).toNat

end

end A208774.P754892309026969331

/-! ## A208774.P1420647291672531388

`A208777(A056115(n)+11)`
-/

namespace A208774.P1420647291672531388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A056115 n + 11).toNat

end

end A208774.P1420647291672531388

/-! ## A208774.P12150960195815484116

`A208777(eq[3, A152157(n)])`
-/

namespace A208774.P12150960195815484116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208774.P12150960195815484116

/-! ## A208774.P17736311814006659009

`A208777(eq[4, A193592(n)])`
-/

namespace A208774.P17736311814006659009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208774.P17736311814006659009

/-!
# A208775: Number of n-bead necklaces labeled with numbers 1..6 not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208775, there is no canonical definition to state claims against.
-/

/-! ## A208775.P13401121468091833937

`A208777(A052905(n+3))`
-/

namespace A208775.P13401121468091833937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A052905 (n + 3)).toNat

end

end A208775.P13401121468091833937

/-! ## A208775.P503981500010174834

`A208777(A302537(n)+15)`
-/

namespace A208775.P503981500010174834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A302537 n + 15).toNat

end

end A208775.P503981500010174834

/-! ## A208775.P9468527203175140413

`A208777(A056119(n)+16)`
-/

namespace A208775.P9468527203175140413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A056119 n + 16).toNat

end

end A208775.P9468527203175140413

/-! ## A208775.P8923191883855367315

`A208777(eq[3, A219347(n)])`
-/

namespace A208775.P8923191883855367315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208775.P8923191883855367315

/-! ## A208775.P7478768847934384139

`A208777(eq[5, A193592(n)])`
-/

namespace A208775.P7478768847934384139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208775.P7478768847934384139

/-!
# A208776: Number of n-bead necklaces labeled with numbers 1..7 not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208776, there is no canonical definition to state claims against.
-/

/-! ## A208776.P12103976666231502713

`∑{d}[n+1, A215338(#)]`
-/

namespace A208776.P12103976666231502713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215338 d

end

end A208776.P12103976666231502713

/-! ## A208776.P14198410501851640557

`A208777(A055999(n+4))`
-/

namespace A208776.P14198410501851640557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A055999 (n + 4)).toNat

end

end A208776.P14198410501851640557

/-! ## A208776.P2843380672332410014

`A208777(A134227(n+5))`
-/

namespace A208776.P2843380672332410014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (A134227 (n + 5)).toNat

end

end A208776.P2843380672332410014

/-! ## A208776.P4126417578403785492

`A208777(eq[4, A219347(n)])`
-/

namespace A208776.P4126417578403785492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208776.P4126417578403785492

/-! ## A208776.P17312738027677225065

`A208777(eq[6, A193592(n)])`
-/

namespace A208776.P17312738027677225065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208776.P17312738027677225065

/-!
# A208777: T(n,k) is the number of n-bead necklaces labeled with numbers 1..k not allowing reversal, with no adjacent beads differing by more than 1.

The programs for A208777, there is no canonical definition to state claims against.
-/

/-! ## A208777.P2565638792706804155

`A208721(n+1)+A011737(A005135(n))`
-/

namespace A208777.P2565638792706804155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (n + 1) + A011737 (A005135 n).toNat

end

end A208777.P2565638792706804155

/-! ## A208777.P1263955434591720907

`A208721(n+1)+A185264(A185286(n))`
-/

namespace A208777.P1263955434591720907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (n + 1) + A185264 (A185286 n).toNat

end

end A208777.P1263955434591720907

/-! ## A208777.P7861105369279599485

`A208721(n+1)-A178798(A059286(n))`
-/

namespace A208777.P7861105369279599485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (n + 1) - A178798 (A059286 n).toNat

end

end A208777.P7861105369279599485

/-! ## A208777.P10667097579229736507

`A208721(n+1)-A178798(A320902(n))`
-/

namespace A208777.P10667097579229736507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208721 (n + 1) - A178798 (A320902 n).toNat

end

end A208777.P10667097579229736507

/-!
# A208778: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 1 vertically.

The programs for A208778, the canonical program `A208778.P14435347369477658477` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208778 has offset 1).

The definition of A208778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208778.P14435347369477658477

`a(n-1)+a(n-2)` with `a(0)=26, a(1)=676, a(2)=156, a(3)=260`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208778

/-- `a(n-1)+a(n-2)` -/
def P14435347369477658477.Spec : Prop :=
  ∀ n, (P14435347369477658477.a n : ℤ) = A208778 (n + 1)

theorem P14435347369477658477.correct : P14435347369477658477.Spec := by
  intro n
  simp only [A208778, Nat.add_sub_cancel]

end A208778

/-! ## A208778.P3212355978988300682

`A208780(A167614(n+4)+3)`
-/

namespace A208778.P3212355978988300682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A167614 (n + 4) + 3).toNat

end

end A208778.P3212355978988300682

namespace A208778

/-- `A208780(A167614(n+4)+3)` -/
def P3212355978988300682.Spec : Prop :=
  ∀ n, P3212355978988300682.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P15078530613687088215

`A208780(A000124(n+5)+5)`
-/

namespace A208778.P15078530613687088215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A000124 (n + 5) + 5).toNat

end

end A208778.P15078530613687088215

namespace A208778

/-- `A208780(A000124(n+5)+5)` -/
def P15078530613687088215.Spec : Prop :=
  ∀ n, P15078530613687088215.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P3618016929005698624

`A208780(A000217(n+5)+6)`
-/

namespace A208778.P3618016929005698624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A000217 (n + 5) + 6).toNat

end

end A208778.P3618016929005698624

namespace A208778

/-- `A208780(A000217(n+5)+6)` -/
def P3618016929005698624.Spec : Prop :=
  ∀ n, P3618016929005698624.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P9651844392411895462

`A208780(A056115(n+2)+8-2*n)`
-/

namespace A208778.P9651844392411895462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A056115 (n + 2) + 8 - (2 * n : ℤ)).toNat

end

end A208778.P9651844392411895462

namespace A208778

/-- `A208780(A056115(n+2)+8-2*n)` -/
def P9651844392411895462.Spec : Prop :=
  ∀ n, P9651844392411895462.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P13601460987638443176

`A208780(A374007(n+1))`
-/

namespace A208778.P13601460987638443176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A374007 (n + 1)).toNat

end

end A208778.P13601460987638443176

namespace A208778

/-- `A208780(A374007(n+1))` -/
def P13601460987638443176.Spec : Prop :=
  ∀ n, P13601460987638443176.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P5650811002084267411

`A208780(A052905(n+3))`
-/

namespace A208778.P5650811002084267411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A052905 (n + 3)).toNat

end

end A208778.P5650811002084267411

namespace A208778

/-- `A208780(A052905(n+3))` -/
def P5650811002084267411.Spec : Prop :=
  ∀ n, P5650811002084267411.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P2265189949945688560

`A208780(A055999(n+3)+1)`
-/

namespace A208778.P2265189949945688560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A055999 (n + 3) + 1).toNat

end

end A208778.P2265189949945688560

namespace A208778

/-- `A208780(A055999(n+3)+1)` -/
def P2265189949945688560.Spec : Prop :=
  ∀ n, P2265189949945688560.a n = A208778 (n + 1)

end A208778

/-! ## A208778.P1161732768458536251

`A208780(Δ[A000125(n+5)]+n)`
-/

namespace A208778.P1161732768458536251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A208778.P1161732768458536251

namespace A208778

/-- `A208780(Δ[A000125(n+5)]+n)` -/
def P1161732768458536251.Spec : Prop :=
  ∀ n, P1161732768458536251.a n = A208778 (n + 1)

end A208778

/-!
# A208779: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 1 vertically.

The programs for A208779, there is no canonical definition to state claims against.
-/

/-! ## A208779.P14690195930681997789

`A208780(A056119(n)+28)`
-/

namespace A208779.P14690195930681997789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A056119 n + 28).toNat

end

end A208779.P14690195930681997789

/-! ## A208779.P2949804058696563267

`A208780(A000217(n+6)+7)`
-/

namespace A208779.P2949804058696563267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A000217 (n + 6) + 7).toNat

end

end A208779.P2949804058696563267

/-! ## A208779.P9026427063479556530

`A208780(A374008(n+1))`
-/

namespace A208779.P9026427063479556530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A374008 (n + 1)).toNat

end

end A208779.P9026427063479556530

/-! ## A208779.P7401623631660628586

`A208780(A055999(n+4))`
-/

namespace A208779.P7401623631660628586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A055999 (n + 4)).toNat

end

end A208779.P7401623631660628586

/-! ## A208779.P4847483254163659267

`A208780(A052905(n+4)-1)`
-/

namespace A208779.P4847483254163659267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A052905 (n + 4) - 1).toNat

end

end A208779.P4847483254163659267

/-! ## A208779.P4670275153688404809

`A208780(A000124(n+7)-7)`
-/

namespace A208779.P4670275153688404809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A000124 (n + 7) - 7).toNat

end

end A208779.P4670275153688404809

/-! ## A208779.P12669960778128563426

`A208780(A167499(n+4)+2*(n+1))`
-/

namespace A208779.P12669960778128563426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208780 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A208779.P12669960778128563426

/-!
# A208780: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 1 vertically.

The programs for A208780, there is no canonical definition to state claims against.
-/

/-! ## A208780.P18185620802552574436

`A207845(n+1)/A111616(A111636(n))`
-/

namespace A208780.P18185620802552574436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207845 (n + 1) : ℚ) / (A111616 (A111636 n).toNat : ℚ)

end

end A208780.P18185620802552574436

/-! ## A208780.P10013070884127005535

`A207845(n+1)/A122826(A208879(n))`
-/

namespace A208780.P10013070884127005535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207845 (n + 1) : ℚ) / (A122826 (A208879 n).toNat : ℚ)

end

end A208780.P10013070884127005535

/-! ## A208780.P629897556700997299

`A207845(n+1)/A284558(A361164(n+1))`
-/

namespace A208780.P629897556700997299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207845 (n + 1) : ℚ) / (A284558 (A361164 (n + 1)).toNat : ℚ)

end

end A208780.P629897556700997299

/-! ## A208780.P9791106077720110966

`A207845(n+1)/A380395(A207845(n+1)²)`
-/

namespace A208780.P9791106077720110966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207845 (n + 1) : ℚ) / (A380395 (A207845 (n + 1) ^ 2).toNat : ℚ)

end

end A208780.P9791106077720110966

/-! ## A208780.P3216979748530720799

`A207845(n+1)/A304118(A248378(n))`
-/

namespace A208780.P3216979748530720799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207845 (n + 1) : ℚ) / (A304118 (A248378 n).toNat : ℚ)

end

end A208780.P3216979748530720799

/-!
# A208781: 

The programs for A208781, there is no canonical definition to state claims against.
-/

/-! ## A208781.P14252169862580769019

`A208788((n+1)²+n²)`
-/

namespace A208781.P14252169862580769019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 ((n + 1) ^ 2 + n ^ 2)

end

end A208781.P14252169862580769019

/-!
# A208782: Number of n X 2 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208782, there is no canonical definition to state claims against.
-/

/-! ## A208782.P6826789586651895156

`A216332(2*(n+1))`
-/

namespace A208782.P6826789586651895156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 (2 * (n + 1))

end

end A208782.P6826789586651895156

/-! ## A208782.P17439275896130675169

`A011971(2*(n+1)²)`
-/

namespace A208782.P17439275896130675169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (2 * (n + 1) ^ 2)

end

end A208782.P17439275896130675169

/-! ## A208782.P8598463582646403554

`A182930(∑[4*(n+1)])`
-/

namespace A208782.P8598463582646403554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208782.P8598463582646403554

/-! ## A208782.P15859780327480857021

`A011972((n+1)²+n²)`
-/

namespace A208782.P15859780327480857021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ((n + 1) ^ 2 + n ^ 2)

end

end A208782.P15859780327480857021

/-! ## A208782.P5132300711406868265

`A095149((n+1)²+(n+2)²)`
-/

namespace A208782.P5132300711406868265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A208782.P5132300711406868265

/-!
# A208783: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208783, there is no canonical definition to state claims against.
-/

/-! ## A208783.P16470501421728099659

`A011971(A276819(n+1))`
-/

namespace A208783.P16470501421728099659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A276819 (n + 1)).toNat

end

end A208783.P16470501421728099659

/-! ## A208783.P799658819185535848

`A182930(A235332(n)+1)`
-/

namespace A208783.P799658819185535848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A235332 n + 1).toNat

end

end A208783.P799658819185535848

/-! ## A208783.P15039160445705663399

`A011972(A164013(n)+n)`
-/

namespace A208783.P15039160445705663399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A164013 n + (n : ℤ)).toNat

end

end A208783.P15039160445705663399

/-! ## A208783.P17374780831869420675

`A011972(A060544(n+1)+2+n)`
-/

namespace A208783.P17374780831869420675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A060544 (n + 1) + 2 + (n : ℤ)).toNat

end

end A208783.P17374780831869420675

/-! ## A208783.P3221993538754191306

`A011971(eq[n, A057028(n+1)+1])`
-/

namespace A208783.P3221993538754191306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208783.P3221993538754191306

/-!
# A208784: Number of nX4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208784, there is no canonical definition to state claims against.
-/

/-! ## A208784.P12917808292715185071

`A208788(A141214(n)+7)`
-/

namespace A208784.P12917808292715185071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A141214 n + 7).toNat

end

end A208784.P12917808292715185071

/-! ## A208784.P14113841276230923553

`A208788(A052905(n)+9)`
-/

namespace A208784.P14113841276230923553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A052905 n + 9).toNat

end

end A208784.P14113841276230923553

/-! ## A208784.P15002490039993914576

`A208788(A055999(n)+10)`
-/

namespace A208784.P15002490039993914576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A055999 n + 10).toNat

end

end A208784.P15002490039993914576

/-! ## A208784.P9063600597007173376

`A208788(A167614(n+2)+1)`
-/

namespace A208784.P9063600597007173376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A167614 (n + 2) + 1).toNat

end

end A208784.P9063600597007173376

/-! ## A208784.P7858736061399453944

`A208788(∑[abs(2*(n+2)-n)]+3)`
-/

namespace A208784.P7858736061399453944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 2) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A208784.P7858736061399453944

/-!
# A208787: 

The programs for A208787, there is no canonical definition to state claims against.
-/

/-! ## A208787.P993925191915914320

`A208788(A087051(n+1)+A000217(n+6))`
-/

namespace A208787.P993925191915914320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (A087051 (n + 1) + A000217 (n + 6)).toNat

end

end A208787.P993925191915914320

/-!
# A208788: T(n,k)=Number of nXk nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208788, there is no canonical definition to state claims against.
-/

/-! ## A208788.P795626183168840467

`A223062(n+1)+A036632(A036640(n))`
-/

namespace A208788.P795626183168840467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (n + 1) + A036632 (A036640 n).toNat

end

end A208788.P795626183168840467

/-! ## A208788.P6146434000035416221

`A223062(n+1)+A086012(A000392(n))`
-/

namespace A208788.P6146434000035416221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (n + 1) + A086012 (A000392 n).toNat

end

end A208788.P6146434000035416221

/-! ## A208788.P12895218155876312674

`A223062(n+1)+A044941(A068875(n))`
-/

namespace A208788.P12895218155876312674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (n + 1) + A044941 (A068875 n).toNat

end

end A208788.P12895218155876312674

/-! ## A208788.P15828749678210743966

`A223062(n+1)+A054908(A097006(n))`
-/

namespace A208788.P15828749678210743966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (n + 1) + A054908 (A097006 n).toNat

end

end A208788.P15828749678210743966

/-!
# A208789: Number of n X n 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208789, there is no canonical definition to state claims against.
-/

/-! ## A208789.P10929331396930005389

`A208796((n+1)²+n²)`
-/

namespace A208789.P10929331396930005389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 ((n + 1) ^ 2 + n ^ 2)

end

end A208789.P10929331396930005389

/-!
# A208790: Number of n X 2 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208790, the canonical program `A208790.P864384592084023907` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208790 has offset 1).

The definition of A208790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208790.P864384592084023907

`2*a(n-1)+16*a(n-2)+10*a(n-3)-4*a(n-4)` with `a(0)=6, a(1)=30, a(2)=160, a(3)=852`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A208790

/-- `2*a(n-1)+16*a(n-2)+10*a(n-3)-4*a(n-4)` -/
def P864384592084023907.Spec : Prop :=
  ∀ n, P864384592084023907.a n = A208790 (n + 1)

theorem P864384592084023907.correct : P864384592084023907.Spec := by
  intro n
  simp only [A208790, Nat.add_sub_cancel]

end A208790

/-! ## A208790.P13329391788513178296

`A208796(∑[n+1]+2)`
-/

namespace A208790.P13329391788513178296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208790.P13329391788513178296

namespace A208790

/-- `A208796(∑[n+1]+2)` -/
def P13329391788513178296.Spec : Prop :=
  ∀ n, P13329391788513178296.a n = A208790 (n + 1)

end A208790

/-! ## A208790.P9433203729517933378

`record[A010054(n)*A208796(n+2)]`
-/

namespace A208790.P9433203729517933378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A208796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208790.P9433203729517933378

namespace A208790

/-- `record[A010054(n)*A208796(n+2)]` -/
def P9433203729517933378.Spec : Prop :=
  ∀ n, P9433203729517933378.a n = A208790 (n + 1)

end A208790

/-! ## A208790.P16429071527127827329

`record[gcd(A002262(n), A208796(n+2))]`
-/

namespace A208790.P16429071527127827329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A208796 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208790.P16429071527127827329

namespace A208790

/-- `record[gcd(A002262(n), A208796(n+2))]` -/
def P16429071527127827329.Spec : Prop :=
  ∀ n, (P16429071527127827329.a n : ℤ) = A208790 (n + 1)

end A208790

/-! ## A208790.P10188312800867201495

`record[root(A208796(n+2), A208751(n+1))]`
-/

namespace A208790.P10188312800867201495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208796 (n + 2) : ℝ) ^ (1 / (A208751 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208790.P10188312800867201495

namespace A208790

/-- `record[root(A208796(n+2), A208751(n+1))]` -/
def P10188312800867201495.Spec : Prop :=
  ∀ n, P10188312800867201495.a n = (A208790 (n + 1) : ℝ)

end A208790

/-!
# A208791: Number of nX3 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208791, there is no canonical definition to state claims against.
-/

/-! ## A208791.P273284262607435159

`A208796(∑[n+2]+4)`
-/

namespace A208791.P273284262607435159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208791.P273284262607435159

/-! ## A208791.P9476511384202699695

`lcm(2, A208796(A167614(n+1)))`
-/

namespace A208791.P9476511384202699695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208796 (A167614 (n + 1)).toNat)

end

end A208791.P9476511384202699695

/-! ## A208791.P4090094074001889862

`A208796(A167614(n+1))+A185284(n)`
-/

namespace A208791.P4090094074001889862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A167614 (n + 1)).toNat + A185284 n

end

end A208791.P4090094074001889862

/-! ## A208791.P16673430817048662832

`A208796(A167614(n+1))%A013719(n)`
-/

namespace A208791.P16673430817048662832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208796 (A167614 (n + 1)).toNat) (A013719 n)

end

end A208791.P16673430817048662832

/-! ## A208791.P10203196908567100512

`A208796(A167614(n+1))+A000038(2*n+1)`
-/

namespace A208791.P10203196908567100512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A167614 (n + 1)).toNat + A000038 (2 * n + 1)

end

end A208791.P10203196908567100512

/-!
# A208792: Number of nX4 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208792, there is no canonical definition to state claims against.
-/

/-! ## A208792.P13819577921259742378

`A208796(A374004(n+1))`
-/

namespace A208792.P13819577921259742378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A374004 (n + 1)).toNat

end

end A208792.P13819577921259742378

/-! ## A208792.P17724115412612094024

`A208796(A141214(n)+7)`
-/

namespace A208792.P17724115412612094024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A141214 n + 7).toNat

end

end A208792.P17724115412612094024

/-! ## A208792.P7488564169157740544

`A208796(A167614(n+2)+1)`
-/

namespace A208792.P7488564169157740544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A167614 (n + 2) + 1).toNat

end

end A208792.P7488564169157740544

/-! ## A208792.P17140197247089707157

`A208796(A055998(n+1)+7)`
-/

namespace A208792.P17140197247089707157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A055998 (n + 1) + 7).toNat

end

end A208792.P17140197247089707157

/-! ## A208792.P10208535084841763477

`A208796(Δ[A023545(n+1)-n²])`
-/

namespace A208792.P10208535084841763477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (f1 (n + 1) - f1 n).toNat

end

end A208792.P10208535084841763477

/-!
# A208793: Number of nX5 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208793, there is no canonical definition to state claims against.
-/

/-! ## A208793.P2272537021382963911

`A208796(A374005(n+1))`
-/

namespace A208793.P2272537021382963911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A374005 (n + 1)).toNat

end

end A208793.P2272537021382963911

/-! ## A208793.P16447965077466621321

`A208796(A167499(n+3))`
-/

namespace A208793.P16447965077466621321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A167499 (n + 3)).toNat

end

end A208793.P16447965077466621321

/-! ## A208793.P17763247521149894171

`A208796(A167614(n+3)+2)`
-/

namespace A208793.P17763247521149894171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A167614 (n + 3) + 2).toNat

end

end A208793.P17763247521149894171

/-! ## A208793.P7795031365670647238

`A208796(Δ[A023545(n+1)])`
-/

namespace A208793.P7795031365670647238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (f1 (n + 1) - f1 n).toNat

end

end A208793.P7795031365670647238

/-! ## A208793.P13097101309224275872

`A208796(A141214(n+2)-1)`
-/

namespace A208793.P13097101309224275872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A141214 (n + 2) - 1).toNat

end

end A208793.P13097101309224275872

/-!
# A208794: Number of n X 6 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208794, there is no canonical definition to state claims against.
-/

/-! ## A208794.P17002739069616173863

`A208796(A374007(n+1))`
-/

namespace A208794.P17002739069616173863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A374007 (n + 1)).toNat

end

end A208794.P17002739069616173863

/-! ## A208794.P5904546687036164710

`A208796(A141214(n+2)+9)`
-/

namespace A208794.P5904546687036164710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A141214 (n + 2) + 9).toNat

end

end A208794.P5904546687036164710

/-! ## A208794.P11654459654502104089

`A208796(A056115(n+2)+8-2*n)`
-/

namespace A208794.P11654459654502104089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A056115 (n + 2) + 8 - (2 * n : ℤ)).toNat

end

end A208794.P11654459654502104089

/-! ## A208794.P16522199916171405030

`A208796(Δ[A023545(n+2)]-1)`
-/

namespace A208794.P16522199916171405030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (f1 (n + 1) - f1 n - 1).toNat

end

end A208794.P16522199916171405030

/-!
# A208795: Number of nX7 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208795, there is no canonical definition to state claims against.
-/

/-! ## A208795.P16799458527620753326

`A208796(A374008(n+1))`
-/

namespace A208795.P16799458527620753326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A374008 (n + 1)).toNat

end

end A208795.P16799458527620753326

/-! ## A208795.P15457829684810457573

`A208796(A056119(n)+28)`
-/

namespace A208795.P15457829684810457573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A056119 n + 28).toNat

end

end A208795.P15457829684810457573

/-! ## A208795.P14077895243800640314

`A208796(A055999(n+4))`
-/

namespace A208795.P14077895243800640314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208796 (A055999 (n + 4)).toNat

end

end A208795.P14077895243800640314

/-!
# A208796: T(n,k)=Number of nXk 0..2 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A208796, there is no canonical definition to state claims against.
-/

/-! ## A208796.P4889585072274313161

`A016014(A001700(n))*A203491(n+1)`
-/

namespace A208796.P4889585072274313161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A001700 n).toNat * A203491 (n + 1)

end

end A208796.P4889585072274313161

/-! ## A208796.P6269849722040484126

`A153403(C(A267957(n+1), A048766(n)²))`
-/

namespace A208796.P6269849722040484126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153403 (Nat.choose (A267957 (n + 1)).toNat (A048766 n ^ 2).toNat)

end

end A208796.P6269849722040484126

/-! ## A208796.P1641439782124460137

`A153403(C(A267957(n+1), A265370(n)²))`
-/

namespace A208796.P1641439782124460137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153403 (Nat.choose (A267957 (n + 1)).toNat (A265370 n ^ 2).toNat)

end

end A208796.P1641439782124460137

/-!
# A208797: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and three times sum of squares <= n^2*(n+1).

The programs for A208797, there is no canonical definition to state claims against.
-/

/-! ## A208797.P9998182958174988660

`A208805(∑[4*n]+1)`
-/

namespace A208797.P9998182958174988660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208797.P9998182958174988660

/-! ## A208797.P121529470259896287

`A208805(n²+(n+1)²)^ceil(n/98)`
-/

namespace A208797.P121529470259896287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208805 (n ^ 2 + (n + 1) ^ 2) : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A208797.P121529470259896287

/-! ## A208797.P9850389520477642109

`record[A208805(A152271(n²))]`
-/

namespace A208797.P9850389520477642109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208797.P9850389520477642109

/-! ## A208797.P18396598734806188038

`record[A208805(A178218(n+1))]`
-/

namespace A208797.P18396598734806188038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208797.P18396598734806188038

/-! ## A208797.P1550556196942959849

`A208805(A001844(n))%(n+5)!`
-/

namespace A208797.P1550556196942959849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208805 (A001844 n).toNat) (Nat.factorial (n + 5) : ℤ)

end

end A208797.P1550556196942959849

/-!
# A208798: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero and three times sum of squares <= n*(1)*(1+1).

The programs for A208798, there is no canonical definition to state claims against.
-/

/-! ## A208798.P9663293842714229513

`A208805(∑[n+1])`
-/

namespace A208798.P9663293842714229513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208798.P9663293842714229513

/-! ## A208798.P8649265372801432792

`A208805(∑[Δ[n²]-n])-char[17]`
-/

namespace A208798.P8649265372801432792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208798.P8649265372801432792

/-! ## A208798.P10254902381390640703

`A000027(A208805(∑[Δ[n²]-n]))`
-/

namespace A208798.P10254902381390640703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A208805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A208798.P10254902381390640703

/-! ## A208798.P241584929455599259

`A015900(n)*A208805(∑[Δ[n²]-n])`
-/

namespace A208798.P241584929455599259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 n * A208805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208798.P241584929455599259

/-! ## A208798.P8776632381552096782

`A208805(A000217(n+1))%A004490(n+1)`
-/

namespace A208798.P8776632381552096782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208805 (A000217 (n + 1)).toNat) (A004490 (n + 1))

end

end A208798.P8776632381552096782

/-!
# A208799: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero and three times sum of squares <= n*(2)*(2+1).

The programs for A208799, there is no canonical definition to state claims against.
-/

/-! ## A208799.P9625479197190957410

`A208805(∑[n+2])`
-/

namespace A208799.P9625479197190957410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208799.P9625479197190957410

/-! ## A208799.P12627641640375721574

`record[A208805(∑[A152271(n)])]`
-/

namespace A208799.P12627641640375721574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208799.P12627641640375721574

/-! ## A208799.P3098287301646803607

`record[A208805(A117142(n+1))]`
-/

namespace A208799.P3098287301646803607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208799.P3098287301646803607

/-! ## A208799.P8956918518409081803

`record[A208805(A333530(n+1))]`
-/

namespace A208799.P8956918518409081803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208799.P8956918518409081803

/-! ## A208799.P14632921037063167500

`record[A208805(Δ[A003453(n+5)])]`
-/

namespace A208799.P14632921037063167500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208799.P14632921037063167500

