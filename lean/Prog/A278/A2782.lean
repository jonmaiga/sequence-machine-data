import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A278200: Partition numbers (A000041) of the form 2^6 * k for odd k.

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
# A278201: Partition numbers (A000041) of the form 2^7 * k for odd k.

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

/-!
# A278203: Number of n X 3 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) (1,0) or (1,1), with upper left element zero.

The programs for A278203, the canonical program `A278203.P17699325946152748967` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278203 has offset 1).

The definition of A278203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278203.P17699325946152748967

`ogf((15x+7x^2-21x^3-13x^4+13x^5-x^6-4x^7+2x^8)/(1-6x-7x^2-11x^3-11x^4+9x^5-3x^7+2x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278203

/-- `ogf((15x+7x^2-21x^3-13x^4+13x^5-x^6-4x^7+2x^8)/(1-6x-7x^2-11x^3-11x^4+9x^5-3x^7+2x^8))` -/
def P17699325946152748967.Spec : Prop :=
  ∀ n, P17699325946152748967.a n = A278203 (n + 1)

theorem P17699325946152748967.correct : P17699325946152748967.Spec := by
  intro n
  simp only [A278203, Nat.add_sub_cancel]

end A278203

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

namespace A278203

/-- `A278208(∑[n+2]+4)` -/
def P2252843805395077817.Spec : Prop :=
  ∀ n, P2252843805395077817.a n = A278203 (n + 1)

end A278203

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

/-! ## A278204.P8837436626334619517

`A278208(A141214(n+1))`
-/

namespace A278204.P8837436626334619517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278208 (A141214 (n + 1)).toNat

end

end A278204.P8837436626334619517

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

/-! ## A278208.P11677745424257650598

`A171948(A255494(n))`
-/

namespace A278208.P11677745424257650598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (A255494 n).toNat

end

end A278208.P11677745424257650598

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

/-! ## A278211.P5409456273331955229

`∑[∑[A076558((n+1)^4)]]`
-/

namespace A278211.P5409456273331955229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 ((n + 1) ^ 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278211.P5409456273331955229

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

/-! ## A278212.P8751932941291312973

`A002265(2*A275815(n+1))`
-/

namespace A278212.P8751932941291312973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A275815 (n + 1)).toNat

end

end A278212.P8751932941291312973

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

The programs for A278217, the canonical program `A278217.P18098798803773817655` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278217 has offset 0).

The definition of A278217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A075159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

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

/-! ## A278217.P18098798803773817655

`A046523(A075159(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278217

/-- `A046523(A075159(1+n))` -/
def P18098798803773817655.Spec : Prop :=
  ∀ n, P18098798803773817655.a n = A278217 n

theorem P18098798803773817655.correct : P18098798803773817655.Spec := by
  intro n
  simp only [A278217]

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

/-! ## A278217.P11209966683870176274

`A278531(xor(n, floor(n/2)))`
-/

namespace A278217.P11209966683870176274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A278217.P11209966683870176274

namespace A278217

/-- `A278531(xor(n, floor(n/2)))` -/
def P11209966683870176274.Spec : Prop :=
  ∀ n, P11209966683870176274.a n = A278217 n

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

/-! ## A278217.P15811074090220997881

`A278220(A243353(n))`
-/

namespace A278217.P15811074090220997881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (A243353 n).toNat

end

end A278217.P15811074090220997881

namespace A278217

/-- `A278220(A243353(n))` -/
def P15811074090220997881.Spec : Prop :=
  ∀ n, P15811074090220997881.a n = A278217 n

end A278217

/-!
# A278218: Triangle read by rows: T(n,k) = Least number with the prime signature of binomial(n,k).

The programs for A278218, the canonical program `A278218.P4539860133460328469` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278218 has offset 0).

The definition of A278218 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278218.P10511931195155160941

`A046523(C(row(n), col(n)))`
-/

namespace A278218.P10511931195155160941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A278218.P10511931195155160941

namespace A278218

/-- `A046523(C(row(n), col(n)))` -/
def P10511931195155160941.Spec : Prop :=
  ∀ n, P10511931195155160941.a n = A278218 n

end A278218

/-! ## A278218.P4539860133460328469

`A046523(A007318(n))`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278218.P13685827373637052196

`A106491(A168551(n))`
-/

namespace A278218.P13685827373637052196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106491 (A168551 n).toNat

end

end A278218.P13685827373637052196

namespace A278218

/-- `A106491(A168551(n))` -/
def P13685827373637052196.Spec : Prop :=
  ∀ n, P13685827373637052196.a n = A278218 n

end A278218

/-! ## A278218.P7811644585991271636

`A325560(A059328(n))`
-/

namespace A278218.P7811644585991271636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325560 (A059328 n).toNat

end

end A278218.P7811644585991271636

namespace A278218

/-- `A325560(A059328(n))` -/
def P7811644585991271636.Spec : Prop :=
  ∀ n, P7811644585991271636.a n = A278218 n

end A278218

/-!
# A278219: Filter-sequence related to base-2 run-length encoding: a(n) = A046523(A243353(n)).

The programs for A278219, the canonical program `A278219.P3825217007817809804` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278219 has offset 0).

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

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278219.P14138890741305422651

`A004736(A286242(n))`
-/

namespace A278219.P14138890741305422651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286242 n).toNat

end

end A278219.P14138890741305422651

namespace A278219

/-- `A004736(A286242(n))` -/
def P14138890741305422651.Spec : Prop :=
  ∀ n, P14138890741305422651.a n = A278219 n

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

/-! ## A278220.P18185405038221404085

`A278222(A243071(n+1))`
-/

namespace A278220.P18185405038221404085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A243071 (n + 1)).toNat

end

end A278220.P18185405038221404085

/-! ## A278220.P4287394697478092121

`A278221(A241916(n+1))`
-/

namespace A278220.P4287394697478092121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A241916 (n + 1)).toNat

end

end A278220.P4287394697478092121

/-!
# A278221: The smallest number with same prime signature as A122111(n) has, where A122111 conjugates the prime factorization of n.

The programs for A278221, the canonical program `A278221.P14007966457786942325` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278221 has offset 1).

The definition of A278221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278221.P14007966457786942325

`A046523(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278221.P7732329906526822816

`A350062(A322863(n+1))`
-/

namespace A278221.P7732329906526822816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (A322863 (n + 1)).toNat

end

end A278221.P7732329906526822816

namespace A278221

/-- `A350062(A322863(n+1))` -/
def P7732329906526822816.Spec : Prop :=
  ∀ n, P7732329906526822816.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P1460523006942849013

`A278222(A253564(n+1))`
-/

namespace A278221.P1460523006942849013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A253564 (n + 1)).toNat

end

end A278221.P1460523006942849013

namespace A278221

/-- `A278222(A253564(n+1))` -/
def P1460523006942849013.Spec : Prop :=
  ∀ n, P1460523006942849013.a n = A278221 (n + 1)

end A278221

/-! ## A278221.P14584624928200968060

`A278220(A241916(n+1))`
-/

namespace A278221.P14584624928200968060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278220 (A241916 (n + 1)).toNat

end

end A278221.P14584624928200968060

namespace A278221

/-- `A278220(A241916(n+1))` -/
def P14584624928200968060.Spec : Prop :=
  ∀ n, P14584624928200968060.a n = A278221 (n + 1)

end A278221

/-!
# A278222: The least number with the same prime signature as A005940(n+1).

The programs for A278222, the canonical program `A278222.P17984582888025768899` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278222 has offset 0).

The definition of A278222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278219, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278222.P17984582888025768899

`A278219(A006068(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278222

/-- `A278219(A006068(n))` -/
def P17984582888025768899.Spec : Prop :=
  ∀ n, P17984582888025768899.a n = A278222 n

theorem P17984582888025768899.correct : P17984582888025768899.Spec := by
  intro n
  simp only [A278222]

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
-/

namespace A278222.P17157169249717672707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A278159 n).toNat

end

end A278222.P17157169249717672707

namespace A278222

/-- `A124859(A278159(n))` -/
def P17157169249717672707.Spec : Prop :=
  ∀ n, P17157169249717672707.a n = A278222 n

end A278222

/-! ## A278222.P14381890801197123259

`col(A286240(n))`
-/

namespace A278222.P14381890801197123259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A286240 n).toNat

end

end A278222.P14381890801197123259

namespace A278222

/-- `col(A286240(n))` -/
def P14381890801197123259.Spec : Prop :=
  ∀ n, (P14381890801197123259.a n : ℤ) = A278222 n

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

/-! ## A278222.P7353523395169221062

`1+row(A286252(2*n)-1)`
-/

namespace A278222.P7353523395169221062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triRow (A286252 (2 * n) - 1).toNat

end

end A278222.P7353523395169221062

namespace A278222

/-- `1+row(A286252(2*n)-1)` -/
def P7353523395169221062.Spec : Prop :=
  ∀ n, (P7353523395169221062.a n : ℤ) = A278222 n

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

/-! ## A278222.P11521250136098092476

`A278233(A305417(n))`
-/

namespace A278222.P11521250136098092476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (A305417 n).toNat

end

end A278222.P11521250136098092476

namespace A278222

/-- `A278233(A305417(n))` -/
def P11521250136098092476.Spec : Prop :=
  ∀ n, P11521250136098092476.a n = A278222 n

end A278222

/-! ## A278222.P13245000323955083242

`A278223(A244154(n))`
-/

namespace A278222.P13245000323955083242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A244154 n).toNat

end

end A278222.P13245000323955083242

namespace A278222

/-- `A278223(A244154(n))` -/
def P13245000323955083242.Spec : Prop :=
  ∀ n, P13245000323955083242.a n = A278222 n

end A278222

/-! ## A278222.P17293915396741999887

`A336158(A005940(2*n+1))`
-/

namespace A278222.P17293915396741999887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A005940 (2 * n + 1)).toNat

end

end A278222.P17293915396741999887

namespace A278222

/-- `A336158(A005940(2*n+1))` -/
def P17293915396741999887.Spec : Prop :=
  ∀ n, P17293915396741999887.a n = A278222 n

end A278222

/-! ## A278222.P8904380371127575757

`A046523(A332815(n))`
-/

namespace A278222.P8904380371127575757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A332815 n).toNat

end

end A278222.P8904380371127575757

namespace A278222

/-- `A046523(A332815(n))` -/
def P8904380371127575757.Spec : Prop :=
  ∀ n, P8904380371127575757.a n = A278222 n

end A278222

/-!
# A278223: Least number with the same prime signature as the n-th odd number: a(n) = A046523(2n-1).

The programs for A278223, the canonical program `A278223.P16809219306814208596` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278223 has offset 1).

The definition of A278223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278223.P16809219306814208596

`A046523(2*n+1)`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278223.P16439398060825184370

`A069877(A372960(n+1))`
-/

namespace A278223.P16439398060825184370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A372960 (n + 1)).toNat

end

end A278223.P16439398060825184370

namespace A278223

/-- `A069877(A372960(n+1))` -/
def P16439398060825184370.Spec : Prop :=
  ∀ n, P16439398060825184370.a n = A278223 (n + 1)

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

/-! ## A278223.P2010664645718115836

`A278231(A193231(2*n+1))`
-/

namespace A278223.P2010664645718115836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278231 (A193231 (2 * n + 1)).toNat

end

end A278223.P2010664645718115836

namespace A278223

/-- `A278231(A193231(2*n+1))` -/
def P2010664645718115836.Spec : Prop :=
  ∀ n, P2010664645718115836.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P1651278990053618123

`A283465(A250470(2*n+1))`
-/

namespace A278223.P1651278990053618123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A250470 (2 * n + 1)).toNat

end

end A278223.P1651278990053618123

namespace A278223

/-- `A283465(A250470(2*n+1))` -/
def P1651278990053618123.Spec : Prop :=
  ∀ n, P1651278990053618123.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P1663104739200163207

`A283465(A250472(n+1))`
-/

namespace A278223.P1663104739200163207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (A250472 (n + 1)).toNat

end

end A278223.P1663104739200163207

namespace A278223

/-- `A283465(A250472(n+1))` -/
def P1663104739200163207.Spec : Prop :=
  ∀ n, P1663104739200163207.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P11272261471921943526

`A278264(A064413(2*n+1))`
-/

namespace A278223.P11272261471921943526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A064413 (2 * n + 1)).toNat

end

end A278223.P11272261471921943526

namespace A278223

/-- `A278264(A064413(2*n+1))` -/
def P11272261471921943526.Spec : Prop :=
  ∀ n, P11272261471921943526.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P16321259231669439520

`A278224(A245448(n+1))`
-/

namespace A278223.P16321259231669439520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A245448 (n + 1)).toNat

end

end A278223.P16321259231669439520

namespace A278223

/-- `A278224(A245448(n+1))` -/
def P16321259231669439520.Spec : Prop :=
  ∀ n, P16321259231669439520.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P3416493719550734185

`A278263(A064664(2*n+1))`
-/

namespace A278223.P3416493719550734185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A064664 (2 * n + 1)).toNat

end

end A278223.P3416493719550734185

namespace A278223

/-- `A278263(A064664(2*n+1))` -/
def P3416493719550734185.Spec : Prop :=
  ∀ n, P3416493719550734185.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P17631683872348280817

`A278524(A250245(2*n+1))`
-/

namespace A278223.P17631683872348280817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278524 (A250245 (2 * n + 1)).toNat

end

end A278223.P17631683872348280817

namespace A278223

/-- `A278524(A250245(2*n+1))` -/
def P17631683872348280817.Spec : Prop :=
  ∀ n, P17631683872348280817.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P1724368859123114021

`A278540(A235201(2*n+1))`
-/

namespace A278223.P1724368859123114021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A235201 (2 * n + 1)).toNat

end

end A278223.P1724368859123114021

namespace A278223

/-- `A278540(A235201(2*n+1))` -/
def P1724368859123114021.Spec : Prop :=
  ∀ n, P1724368859123114021.a n = A278223 (n + 1)

end A278223

/-! ## A278223.P9127555964320941340

`A286250(A048673(n+1))`
-/

namespace A278223.P9127555964320941340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286250 (A048673 (n + 1)).toNat

end

end A278223.P9127555964320941340

namespace A278223

/-- `A286250(A048673(n+1))` -/
def P9127555964320941340.Spec : Prop :=
  ∀ n, P9127555964320941340.a n = A278223 (n + 1)

end A278223

/-!
# A278224: a(n) = A046523(A048673(n)).

The programs for A278224, the canonical program `A278224.P4475416140857214934` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278224 has offset 1).

The definition of A278224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278224.P4475416140857214934

`A046523(A048673(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A278224

/-- `A046523(A048673(n+1))` -/
def P4475416140857214934.Spec : Prop :=
  ∀ n, P4475416140857214934.a n = A278224 (n + 1)

theorem P4475416140857214934.correct : P4475416140857214934.Spec := by
  intro n
  simp only [A278224, Nat.add_sub_cancel]

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

/-! ## A278224.P1266059166145522187

`A278526(A246363(n+1))`
-/

namespace A278224.P1266059166145522187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278526 (A246363 (n + 1)).toNat

end

end A278224.P1266059166145522187

namespace A278224

/-- `A278526(A246363(n+1))` -/
def P1266059166145522187.Spec : Prop :=
  ∀ n, P1266059166145522187.a n = A278224 (n + 1)

end A278224

/-! ## A278224.P14285359640740368156

`A286613(A156552(n+1))`
-/

namespace A278224.P14285359640740368156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286613 (A156552 (n + 1)).toNat

end

end A278224.P14285359640740368156

namespace A278224

/-- `A286613(A156552(n+1))` -/
def P14285359640740368156.Spec : Prop :=
  ∀ n, P14285359640740368156.a n = A278224 (n + 1)

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

/-!
# A278226: The smallest number with same prime signature as A276086(n) has, where A276086 is the primorial base exp-function.

The programs for A278226, the canonical program `A278226.P14461492764368505067` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278226 has offset 0).

The definition of A278226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278226.P14461492764368505067

`A046523(A276086(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278226

/-- `A046523(A276086(n))` -/
def P14461492764368505067.Spec : Prop :=
  ∀ n, P14461492764368505067.a n = A278226 n

theorem P14461492764368505067.correct : P14461492764368505067.Spec := by
  intro n
  simp only [A278226]

end A278226

/-! ## A278226.P10353631545097882359

`A181821(A328835(n))`
-/

namespace A278226.P10353631545097882359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A328835 n).toNat

end

end A278226.P10353631545097882359

namespace A278226

/-- `A181821(A328835(n))` -/
def P10353631545097882359.Spec : Prop :=
  ∀ n, P10353631545097882359.a n = A278226 n

end A278226

/-! ## A278226.P12582325908369592390

`A278222(A277022(n))`
-/

namespace A278226.P12582325908369592390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277022 n).toNat

end

end A278226.P12582325908369592390

namespace A278226

/-- `A278222(A277022(n))` -/
def P12582325908369592390.Spec : Prop :=
  ∀ n, P12582325908369592390.a n = A278226 n

end A278226

/-! ## A278226.P12686586175945741948

`A069877(A049345(n))`
-/

namespace A278226.P12686586175945741948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A049345 n).toNat

end

end A278226.P12686586175945741948

namespace A278226

/-- `A069877(A049345(n))` -/
def P12686586175945741948.Spec : Prop :=
  ∀ n, P12686586175945741948.a n = A278226 n

end A278226

/-! ## A278226.P11493453058044054956

`A292586(A328571(n))*A336158(A328572(n))`
-/

namespace A278226.P11493453058044054956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292586 (A328571 n).toNat * A336158 (A328572 n).toNat

end

end A278226.P11493453058044054956

namespace A278226

/-- `A292586(A328571(n))*A336158(A328572(n))` -/
def P11493453058044054956.Spec : Prop :=
  ∀ n, P11493453058044054956.a n = A278226 n

end A278226

/-! ## A278226.P16556199551621698518

`A124859(A401926(n))`
-/

namespace A278226.P16556199551621698518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A401926 n).toNat

end

end A278226.P16556199551621698518

namespace A278226

/-- `A124859(A401926(n))` -/
def P16556199551621698518.Spec : Prop :=
  ∀ n, P16556199551621698518.a n = A278226 n

end A278226

/-! ## A278226.P5181515019772797327

`A046523(A328572(n))*A292586(A346101(n))`
-/

namespace A278226.P5181515019772797327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A328572 n).toNat * A292586 (A346101 n).toNat

end

end A278226.P5181515019772797327

namespace A278226

/-- `A046523(A328572(n))*A292586(A346101(n))` -/
def P5181515019772797327.Spec : Prop :=
  ∀ n, P5181515019772797327.a n = A278226 n

end A278226

/-!
# A278227: Least number with the prime signature of prime(n)-1.

The programs for A278227, the canonical program `A278227.P14688174075192204745` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278227 has offset 1).

The definition of A278227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278227.P14688174075192204745

`A046523(A000040(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278227

/-- `A046523(A000040(n+1)-1)` -/
def P14688174075192204745.Spec : Prop :=
  ∀ n, P14688174075192204745.a n = A278227 (n + 1)

theorem P14688174075192204745.correct : P14688174075192204745.Spec := by
  intro n
  simp only [A278227, Nat.add_sub_cancel]

end A278227

/-! ## A278227.P4702527948650624113

`A046523(∑[A075526(n)])`
-/

namespace A278227.P4702527948650624113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278227.P4702527948650624113

namespace A278227

/-- `A046523(∑[A075526(n)])` -/
def P4702527948650624113.Spec : Prop :=
  ∀ n, P4702527948650624113.a n = A278227 (n + 1)

end A278227

/-! ## A278227.P2115938427451830838

`A277906(Δ[A007504(n)])`
-/

namespace A278227.P2115938427451830838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (f1 (n + 1) - f1 n).toNat

end

end A278227.P2115938427451830838

namespace A278227

/-- `A277906(Δ[A007504(n)])` -/
def P2115938427451830838.Spec : Prop :=
  ∀ n, P2115938427451830838.a n = A278227 (n + 1)

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

/-! ## A278227.P12519314853559651195

`A278525(A008837(n+1))`
-/

namespace A278227.P12519314853559651195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (A008837 (n + 1)).toNat

end

end A278227.P12519314853559651195

namespace A278227

/-- `A278525(A008837(n+1))` -/
def P12519314853559651195.Spec : Prop :=
  ∀ n, P12519314853559651195.a n = A278227 (n + 1)

end A278227

/-!
# A278228: Least number with the prime signature of prime(n)+1.

The programs for A278228, the canonical program `A278228.P13770631218730897616` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278228 has offset 1).

The definition of A278228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278228.P13770631218730897616

`A046523(A000040(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278228.P10514840390125189163

`A276528(A000040(1+n))`
-/

namespace A278228.P10514840390125189163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (A000040 (1 + n)).toNat

end

end A278228.P10514840390125189163

namespace A278228

/-- `A276528(A000040(1+n))` -/
def P10514840390125189163.Spec : Prop :=
  ∀ n, P10514840390125189163.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P6557448284759317113

`A278523(A028815(n+1))`
-/

namespace A278228.P6557448284759317113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A028815 (n + 1)).toNat

end

end A278228.P6557448284759317113

namespace A278228

/-- `A278523(A028815(n+1))` -/
def P6557448284759317113.Spec : Prop :=
  ∀ n, P6557448284759317113.a n = A278228 (n + 1)

end A278228

/-! ## A278228.P12123931983617443341

`A283466(A001747(n+1))`
-/

namespace A278228.P12123931983617443341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283466 (A001747 (n + 1)).toNat

end

end A278228.P12123931983617443341

namespace A278228

/-- `A283466(A001747(n+1))` -/
def P12123931983617443341.Spec : Prop :=
  ∀ n, P12123931983617443341.a n = A278228 (n + 1)

end A278228

/-!
# A278229: Least number with the prime signature of 2*prime(n) - 1.

The programs for A278229, the canonical program `A278229.P3746984698967317917` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278229 has offset 1).

The definition of A278229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278229.P3746984698967317917

`A046523(2*A000040(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278229.P17798689751422310957

`A296078(A001748(n+1))`
-/

namespace A278229.P17798689751422310957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (A001748 (n + 1)).toNat

end

end A278229.P17798689751422310957

namespace A278229

/-- `A296078(A001748(n+1))` -/
def P17798689751422310957.Spec : Prop :=
  ∀ n, P17798689751422310957.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P3599502199533435883

`A286250(A006254(n+1))`
-/

namespace A278229.P3599502199533435883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286250 (A006254 (n + 1)).toNat

end

end A278229.P3599502199533435883

namespace A278229

/-- `A286250(A006254(n+1))` -/
def P3599502199533435883.Spec : Prop :=
  ∀ n, P3599502199533435883.a n = A278229 (n + 1)

end A278229

/-! ## A278229.P9007147479715512457

`A046523(A076274(n+2))`
-/

namespace A278229.P9007147479715512457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A076274 (n + 2)).toNat

end

end A278229.P9007147479715512457

namespace A278229

/-- `A046523(A076274(n+2))` -/
def P9007147479715512457.Spec : Prop :=
  ∀ n, P9007147479715512457.a n = A278229 (n + 1)

end A278229

/-!
# A278230: Least number with the prime signature of 2*prime(n) + 1.

The programs for A278230, the canonical program `A278230.P13727141212484867497` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278230 has offset 1).

The definition of A278230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278230.P13727141212484867497

`A046523(A072055(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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
  simp only [A278230, Nat.add_sub_cancel, A278230.P1402733240175096559.a, A278230.P13727141212484867497.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046523, A046523.P3407874444772092792.a, A072055, A072055.P8252801676711237860.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278230

/-! ## A278230.P6298451528219366129

`A278223(A008864(1+n))`
-/

namespace A278230.P6298451528219366129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A008864 (1 + n)).toNat

end

end A278230.P6298451528219366129

namespace A278230

/-- `A278223(A008864(1+n))` -/
def P6298451528219366129.Spec : Prop :=
  ∀ n, P6298451528219366129.a n = A278230 (n + 1)

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

/-!
# A278231: Least number with the same prime signature as the n-th number in Blue-code: a(n) = A046523(A193231(n)).

The programs for A278231, the canonical program `A278231.P10685859153057880192` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278231 has offset 1).

The definition of A278231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A193231, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278231.P10685859153057880192

`A046523(A193231(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278231

/-- `A046523(A193231(n+1))` -/
def P10685859153057880192.Spec : Prop :=
  ∀ n, P10685859153057880192.a n = A278231 (n + 1)

theorem P10685859153057880192.correct : P10685859153057880192.Spec := by
  intro n
  simp only [A278231, Nat.add_sub_cancel]

end A278231

/-! ## A278231.P13794995334345730486

`A350062(A366263(n+1))`
-/

namespace A278231.P13794995334345730486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (A366263 (n + 1)).toNat

end

end A278231.P13794995334345730486

namespace A278231

/-- `A350062(A366263(n+1))` -/
def P13794995334345730486.Spec : Prop :=
  ∀ n, P13794995334345730486.a n = A278231 (n + 1)

end A278231

/-! ## A278231.P6691894601329580468

`A071364(A193231(n+1)%A326908(n))`
-/

namespace A278231.P6691894601329580468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.tmod (A193231 (n + 1)) (A326908 n)).toNat

end

end A278231.P6691894601329580468

namespace A278231

/-- `A071364(A193231(n+1)%A326908(n))` -/
def P6691894601329580468.Spec : Prop :=
  ∀ n, P6691894601329580468.a n = A278231 (n + 1)

end A278231

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

/-! ## A278233.P10422343676944124078

`sqrt(A278238(n+1))`
-/

namespace A278233.P10422343676944124078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278238 (n + 1) : ℝ)

end

end A278233.P10422343676944124078

/-! ## A278233.P4354210090890523719

`A278222(A305418(n+1))`
-/

namespace A278233.P4354210090890523719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A305418 (n + 1)).toNat

end

end A278233.P4354210090890523719

/-! ## A278233.P6843759436441001809

`A278531(A305428(n+1))`
-/

namespace A278233.P6843759436441001809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A305428 (n + 1)).toNat

end

end A278233.P6843759436441001809

/-!
# A278234: Filter-sequence for factorial base (digit slopes): Least number with the same prime signature as A275734(n).

The programs for A278234, the canonical program `A278234.P9095069733562185271` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278234 has offset 0).

The definition of A278234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A225901, A278235, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278234.P9095069733562185271

`A278235(A225901(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278234

/-- `A278235(A225901(n))` -/
def P9095069733562185271.Spec : Prop :=
  ∀ n, P9095069733562185271.a n = A278234 n

theorem P9095069733562185271.correct : P9095069733562185271.Spec := by
  intro n
  simp only [A278234]

end A278234

/-! ## A278234.P2678746064192749069

`A046523(A275734(n))`
-/

namespace A278234.P2678746064192749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A275734 n).toNat

end

end A278234.P2678746064192749069

namespace A278234

/-- `A046523(A275734(n))` -/
def P2678746064192749069.Spec : Prop :=
  ∀ n, P2678746064192749069.a n = A278234 n

end A278234

/-!
# A278235: Filter-sequence for factorial base (digit levels): Least number with the same prime signature as A275735(n).

The programs for A278235, the canonical program `A278235.P17095255412897891155` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278235 has offset 0).

The definition of A278235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A275735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

namespace A278235

/-- `A278234(A225901(n))` -/
def P1442797969542564591.Spec : Prop :=
  ∀ n, P1442797969542564591.a n = A278235 n

end A278235

/-! ## A278235.P17095255412897891155

`A046523(A275735(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278235

/-- `A046523(A275735(n))` -/
def P17095255412897891155.Spec : Prop :=
  ∀ n, P17095255412897891155.a n = A278235 n

theorem P17095255412897891155.correct : P17095255412897891155.Spec := by
  intro n
  simp only [A278235]

end A278235

/-! ## A278235.P12829416427686823610

`A278236(A348138(n))`
-/

namespace A278235.P12829416427686823610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A348138 n).toNat

end

end A278235.P12829416427686823610

namespace A278235

/-- `A278236(A348138(n))` -/
def P12829416427686823610.Spec : Prop :=
  ∀ n, P12829416427686823610.a n = A278235 n

end A278235

/-!
# A278236: The smallest number with same prime signature as A276076(n) has, where A276076 is the factorial base exp-function.

The programs for A278236, the canonical program `A278236.P11126149604389597939` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278236 has offset 0).

The definition of A278236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181821, A275735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278236.P11126149604389597939

`A181821(A275735(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278236

/-- `A181821(A275735(n))` -/
def P11126149604389597939.Spec : Prop :=
  ∀ n, P11126149604389597939.a n = A278236 n

theorem P11126149604389597939.correct : P11126149604389597939.Spec := by
  intro n
  simp only [A278236]

end A278236

/-! ## A278236.P18438500632436968152

`A046523(A276076(n))`
-/

namespace A278236.P18438500632436968152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276076 n).toNat

end

end A278236.P18438500632436968152

namespace A278236

/-- `A046523(A276076(n))` -/
def P18438500632436968152.Spec : Prop :=
  ∀ n, P18438500632436968152.a n = A278236 n

end A278236

/-! ## A278236.P16202472521680666179

`A278226(A351576(n))`
-/

namespace A278236.P16202472521680666179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A351576 n).toNat

end

end A278236.P16202472521680666179

namespace A278236

/-- `A278226(A351576(n))` -/
def P16202472521680666179.Spec : Prop :=
  ∀ n, P16202472521680666179.a n = A278236 n

end A278236

/-! ## A278236.P1663524228710757765

`A278222(A277012(n))`
-/

namespace A278236.P1663524228710757765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A277012 n).toNat

end

end A278236.P1663524228710757765

namespace A278236

/-- `A278222(A277012(n))` -/
def P1663524228710757765.Spec : Prop :=
  ∀ n, P1663524228710757765.a n = A278236 n

end A278236

/-! ## A278236.P7378141855235397066

`A069877(A007623(n))`
-/

namespace A278236.P7378141855235397066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 (A007623 n).toNat

end

end A278236.P7378141855235397066

namespace A278236

/-- `A069877(A007623(n))` -/
def P7378141855235397066.Spec : Prop :=
  ∀ n, P7378141855235397066.a n = A278236 n

end A278236

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

namespace A278236

/-- `filter[A278226(n), A260397(#)]` -/
def P8795003501945726214.Spec : Prop :=
  ∀ n, P8795003501945726214.a n = A278236 n

end A278236

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

namespace A278236

/-- `filter[A278226(n), A307430(#)]` -/
def P682475470757979793.Spec : Prop :=
  ∀ n, P682475470757979793.a n = A278236 n

end A278236

/-! ## A278236.P15147526628976444930

`filter[A278226(n), A370598(#)]`
-/

namespace A278236.P15147526628976444930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A278236.P15147526628976444930

namespace A278236

/-- `filter[A278226(n), A370598(#)]` -/
def P15147526628976444930.Spec : Prop :=
  ∀ n, P15147526628976444930.a n = A278236 n

end A278236

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

/-! ## A278238.P6644802284969722690

`A278233(1+n)^2`
-/

namespace A278238.P6644802284969722690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (1 + n) ^ 2

end

end A278238.P6644802284969722690

/-! ## A278238.P10639471476189207424

`A278254(A091203(1+n))`
-/

namespace A278238.P10639471476189207424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A091203 (1 + n)).toNat

end

end A278238.P10639471476189207424

/-! ## A278238.P2057475361944919238

`A046523(A091203(n+1))²`
-/

namespace A278238.P2057475361944919238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A091203 (n + 1)).toNat ^ 2

end

end A278238.P2057475361944919238

/-! ## A278238.P7821885255477870541

`A046523(A091205(n+1))²`
-/

namespace A278238.P7821885255477870541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A091205 (n + 1)).toNat ^ 2

end

end A278238.P7821885255477870541

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

/-! ## A278238.P17008972066158016362

`A000290(2*A278233(n+1)-A278233(n+1))`
-/

namespace A278238.P17008972066158016362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A278233 (n + 1) - A278233 (n + 1)).toNat

end

end A278238.P17008972066158016362

/-! ## A278238.P913767817814497272

`filter[A278233(n+1), A379952(#)]`
-/

namespace A278238.P913767817814497272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A278238.P913767817814497272

/-! ## A278238.P18267674309555041853

`filter[A286384(n+1), A379952(#)]`
-/

namespace A278238.P18267674309555041853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A278238.P18267674309555041853

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

/-!
# A278240: Least number with the prime signature of 2^n - 1.

The programs for A278240, the canonical program `A278240.P12126906436291017831` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278240 has offset 1).

The definition of A278240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278240.P12126906436291017831

`A046523(2^(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278240

/-- `A046523(2^(n+1)-1)` -/
def P12126906436291017831.Spec : Prop :=
  ∀ n, P12126906436291017831.a n = A278240 (n + 1)

theorem P12126906436291017831.correct : P12126906436291017831.Spec := by
  intro n
  simp only [A278240, Nat.add_sub_cancel]

end A278240

/-! ## A278240.P16852136497413958475

`A181821(∏{e}[∑[2^n], A000040(#)])`
-/

namespace A278240.P16852136497413958475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A278240.P16852136497413958475

namespace A278240

/-- `A181821(∏{e}[∑[2^n], A000040(#)])` -/
def P16852136497413958475.Spec : Prop :=
  ∀ n, P16852136497413958475.a n = A278240 (n + 1)

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

/-! ## A278242.P12282080365712224794

`A350063(A074845(1+n))`
-/

namespace A278242.P12282080365712224794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A074845 (1 + n)).toNat

end

end A278242.P12282080365712224794

/-! ## A278242.P1298287573783369303

`A350063(A001748(n+1))`
-/

namespace A278242.P1298287573783369303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A001748 (n + 1)).toNat

end

end A278242.P1298287573783369303

/-! ## A278242.P291359160802830883

`A350062(A161344(n+1))`
-/

namespace A278242.P291359160802830883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350062 (A161344 (n + 1)).toNat

end

end A278242.P291359160802830883

/-! ## A278242.P18069248712305581654

`A071364(2^n+1)`
-/

namespace A278242.P18069248712305581654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (2 ^ n + 1)

end

end A278242.P18069248712305581654

/-! ## A278242.P2190036803238195476

`A296078(A001317(n))`
-/

namespace A278242.P2190036803238195476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296078 (A001317 n).toNat

end

end A278242.P2190036803238195476

/-!
# A278243: The smallest number with same prime signature as A260443(n) has, where A260443 is the prime factorization representation of Stern polynomials.

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

/-! ## A278243.P715292103739728891

`A284011(A260442(A048675(A260443(A277416(n)))))`
-/

namespace A278243.P715292103739728891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (A260442 (A048675 (A260443 (A277416 n).toNat).toNat).toNat).toNat

end

end A278243.P715292103739728891

/-!
# A278244: Least number with the prime signature of the n-th centered square number (A001844(n)).

The programs for A278244, the canonical program `A278244.P9296179218065933584` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278244 has offset 0).

The definition of A278244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278244.P9296179218065933584

`A046523(A001844(n))`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278244.P15002109461304525115

`A051119(A278162(1+n*2))`
-/

namespace A278244.P15002109461304525115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A278162 (1 + n * 2)).toNat

end

end A278244.P15002109461304525115

namespace A278244

/-- `A051119(A278162(1+n*2))` -/
def P15002109461304525115.Spec : Prop :=
  ∀ n, P15002109461304525115.a n = A278244 n

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

/-! ## A278244.P909807116954362762

`A046523((n+1)²+n²)`
-/

namespace A278244.P909807116954362762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1) ^ 2 + n ^ 2)

end

end A278244.P909807116954362762

namespace A278244

/-- `A046523((n+1)²+n²)` -/
def P909807116954362762.Spec : Prop :=
  ∀ n, P909807116954362762.a n = A278244 n

end A278244

/-! ## A278244.P15290731915386054141

`A278540((n+1)²+n²)`
-/

namespace A278244.P15290731915386054141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 ((n + 1) ^ 2 + n ^ 2)

end

end A278244.P15290731915386054141

namespace A278244

/-- `A278540((n+1)²+n²)` -/
def P15290731915386054141.Spec : Prop :=
  ∀ n, P15290731915386054141.a n = A278244 n

end A278244

/-!
# A278245: Least number with the same prime signature as the n-th Fibonacci number: a(n) = A046523(A000045(n)).

The programs for A278245, the canonical program `A278245.P2465173959509167705` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278245 has offset 1).

The definition of A278245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278245.P2465173959509167705

`A046523(A000045(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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

The programs for A278246, the canonical program `A278246.P6871050853620334944` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278246 has offset 1).

The definition of A278246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278246.P6871050853620334944

`A046523((n+1)*(n+4)/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278246

/-- `A046523((n+1)*(n+4)/2)` -/
def P6871050853620334944.Spec : Prop :=
  ∀ n, P6871050853620334944.a n = A278246 (n + 1)

theorem P6871050853620334944.correct : P6871050853620334944.Spec := by
  intro n
  simp only [A278246, Nat.add_sub_cancel]

end A278246

/-! ## A278246.P12823576529813643616

`A181821(∏{e}[∑[2+n], A000040(#)])`
-/

namespace A278246.P12823576529813643616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A278246.P12823576529813643616

namespace A278246

/-- `A181821(∏{e}[∑[2+n], A000040(#)])` -/
def P12823576529813643616.Spec : Prop :=
  ∀ n, P12823576529813643616.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P11627816794241559614

`A025487(A101296(∑[2+n]))`
-/

namespace A278246.P11627816794241559614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P11627816794241559614

namespace A278246

/-- `A025487(A101296(∑[2+n]))` -/
def P11627816794241559614.Spec : Prop :=
  ∀ n, P11627816794241559614.a n = A278246 (n + 1)

end A278246

/-! ## A278246.P1905636283729836310

`A089247(A071364(∑[2+n]))`
-/

namespace A278246.P1905636283729836310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278246.P1905636283729836310

namespace A278246

/-- `A089247(A071364(∑[2+n]))` -/
def P1905636283729836310.Spec : Prop :=
  ∀ n, P1905636283729836310.a n = A278246 (n + 1)

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

The programs for A278247, the canonical program `A278247.P8748823670060240895` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278247 has offset 0).

The definition of A278247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278247.P8748823670060240895

`A046523(A028387(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278247

/-- `A046523(A028387(n))` -/
def P8748823670060240895.Spec : Prop :=
  ∀ n, P8748823670060240895.a n = A278247 n

theorem P8748823670060240895.correct : P8748823670060240895.Spec := by
  intro n
  simp only [A278247]

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

/-! ## A278247.P56050135745788158

`A278223(∑[1+n])`
-/

namespace A278247.P56050135745788158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278247.P56050135745788158

namespace A278247

/-- `A278223(∑[1+n])` -/
def P56050135745788158.Spec : Prop :=
  ∀ n, P56050135745788158.a n = A278247 n

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

/-! ## A278247.P17045833926681125733

`A124859(A124859((n+1)²+n))`
-/

namespace A278247.P17045833926681125733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A124859 ((n + 1) ^ 2 + n)).toNat

end

end A278247.P17045833926681125733

namespace A278247

/-- `A124859(A124859((n+1)²+n))` -/
def P17045833926681125733.Spec : Prop :=
  ∀ n, P17045833926681125733.a n = A278247 n

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

The programs for A278249, the canonical program `A278249.P17845378470646488298` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278249 has offset 0).

The definition of A278249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278249.P17845378470646488298

`A046523(A000123(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278249

/-- `A046523(A000123(n))` -/
def P17845378470646488298.Spec : Prop :=
  ∀ n, P17845378470646488298.a n = A278249 n

theorem P17845378470646488298.correct : P17845378470646488298.Spec := by
  intro n
  simp only [A278249]

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

/-!
# A278251: Least number with the prime signature of the n-th central polygonal number.

The programs for A278251, the canonical program `A278251.P15108954614653064395` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278251 has offset 0).

The definition of A278251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278251.P15108954614653064395

`A046523(A002061(n))`

The canonical program, it is in `Seq.B010.C000`.
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
  simp only [A278251, Nat.add_sub_cancel, A278251.P12007538284999224888.a, A278251.P15108954614653064395.a, A002061, A002061.P13016590216674735232.a, A046523, A046523.P3407874444772092792.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
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

The programs for A278252, the canonical program `A278252.P13602657929554570656` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278252 has offset 1).

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

The canonical program, it is in `Seq.B010.C000`.
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

/-!
# A278253: Least number with the prime signature of the n-th triangular number.

The programs for A278253, the canonical program `A278253.P9301696300299043387` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278253 has offset 1).

The definition of A278253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278253.P9301696300299043387

`A046523(A000217(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278253

/-- `A046523(A000217(n+1))` -/
def P9301696300299043387.Spec : Prop :=
  ∀ n, P9301696300299043387.a n = A278253 (n + 1)

theorem P9301696300299043387.correct : P9301696300299043387.Spec := by
  intro n
  simp only [A278253, Nat.add_sub_cancel]

end A278253

/-! ## A278253.P7988258328207345535

`A181821(∏{e}[∑[1+n], A000040(#)])`
-/

namespace A278253.P7988258328207345535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A278253.P7988258328207345535

namespace A278253

/-- `A181821(∏{e}[∑[1+n], A000040(#)])` -/
def P7988258328207345535.Spec : Prop :=
  ∀ n, P7988258328207345535.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P12146498300540960914

`A025487(A101296(∑[1+n]))`
-/

namespace A278253.P12146498300540960914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P12146498300540960914

namespace A278253

/-- `A025487(A101296(∑[1+n]))` -/
def P12146498300540960914.Spec : Prop :=
  ∀ n, P12146498300540960914.a n = A278253 (n + 1)

end A278253

/-! ## A278253.P58891721566667046

`A089247(A071364(∑[n+1]))`
-/

namespace A278253.P58891721566667046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278253.P58891721566667046

namespace A278253

/-- `A089247(A071364(∑[n+1]))` -/
def P58891721566667046.Spec : Prop :=
  ∀ n, P58891721566667046.a n = A278253 (n + 1)

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

The programs for A278254, the canonical program `A278254.P3842333853700545452` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278254 has offset 1).

The definition of A278254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278254.P3842333853700545452

`A046523(n+1)²`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278254.P16153963164231474200

`A046523((n+1)²)`
-/

namespace A278254.P16153963164231474200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 ((n + 1) ^ 2)

end

end A278254.P16153963164231474200

namespace A278254

/-- `A046523((n+1)²)` -/
def P16153963164231474200.Spec : Prop :=
  ∀ n, P16153963164231474200.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P11181142341363721621

`A046523(1+n)^2`
-/

namespace A278254.P11181142341363721621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (1 + n) ^ 2

end

end A278254.P11181142341363721621

namespace A278254

/-- `A046523(1+n)^2` -/
def P11181142341363721621.Spec : Prop :=
  ∀ n, P11181142341363721621.a n = A278254 (n + 1)

theorem P11181142341363721621.correct : P11181142341363721621.Spec := by
  intro n
  simp only [A278254, Nat.add_sub_cancel, A278254.P11181142341363721621.a, A278254.P3842333853700545452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A278254

/-! ## A278254.P17884402105982219660

`col(A286163(n+1))²`
-/

namespace A278254.P17884402105982219660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A286163 (n + 1)).toNat ^ 2

end

end A278254.P17884402105982219660

namespace A278254

/-- `col(A286163(n+1))²` -/
def P17884402105982219660.Spec : Prop :=
  ∀ n, (P17884402105982219660.a n : ℤ) = A278254 (n + 1)

end A278254

/-! ## A278254.P16095941481014935449

`col(A286255(n+1))²`
-/

namespace A278254.P16095941481014935449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A286255 (n + 1)).toNat ^ 2

end

end A278254.P16095941481014935449

namespace A278254

/-- `col(A286255(n+1))²` -/
def P16095941481014935449.Spec : Prop :=
  ∀ n, (P16095941481014935449.a n : ℤ) = A278254 (n + 1)

end A278254

/-! ## A278254.P7789818660532483088

`col(A286480(n+1))²`
-/

namespace A278254.P7789818660532483088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A286480 (n + 1)).toNat ^ 2

end

end A278254.P7789818660532483088

namespace A278254

/-- `col(A286480(n+1))²` -/
def P7789818660532483088.Spec : Prop :=
  ∀ n, (P7789818660532483088.a n : ℤ) = A278254 (n + 1)

end A278254

/-! ## A278254.P13642848585010345219

`A000290(A046523(1+n))`
-/

namespace A278254.P13642848585010345219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A046523 (1 + n)).toNat

end

end A278254.P13642848585010345219

namespace A278254

/-- `A000290(A046523(1+n))` -/
def P13642848585010345219.Spec : Prop :=
  ∀ n, P13642848585010345219.a n = A278254 (n + 1)

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

/-! ## A278254.P2867838009473641074

`A278540(A235201(n+1))²`
-/

namespace A278254.P2867838009473641074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A235201 (n + 1)).toNat ^ 2

end

end A278254.P2867838009473641074

namespace A278254

/-- `A278540(A235201(n+1))²` -/
def P2867838009473641074.Spec : Prop :=
  ∀ n, P2867838009473641074.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P4142395808008557009

`A278223(A048673(n+1))²`
-/

namespace A278254.P4142395808008557009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A048673 (n + 1)).toNat ^ 2

end

end A278254.P4142395808008557009

namespace A278254

/-- `A278223(A048673(n+1))²` -/
def P4142395808008557009.Spec : Prop :=
  ∀ n, P4142395808008557009.a n = A278254 (n + 1)

end A278254

/-! ## A278254.P7096181964797328083

`filter[A278259(n+2), A379952(#)]`
-/

namespace A278254.P7096181964797328083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A278254.P7096181964797328083

namespace A278254

/-- `filter[A278259(n+2), A379952(#)]` -/
def P7096181964797328083.Spec : Prop :=
  ∀ n, P7096181964797328083.a n = A278254 (n + 1)

end A278254

/-!
# A278255: Least number with the prime signature of the n-th pentagonal number.

The programs for A278255, the canonical program `A278255.P2717760955972654274` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278255 has offset 1).

The definition of A278255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278255.P2717760955972654274

`A046523(A000326(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278255

/-- `A046523(A000326(n+1))` -/
def P2717760955972654274.Spec : Prop :=
  ∀ n, P2717760955972654274.a n = A278255 (n + 1)

theorem P2717760955972654274.correct : P2717760955972654274.Spec := by
  intro n
  simp only [A278255, Nat.add_sub_cancel]

end A278255

/-! ## A278255.P14992874335379269084

`A181821(∏{e}[∑[1+3*n], A000040(#)])`
-/

namespace A278255.P14992874335379269084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A278255.P14992874335379269084

namespace A278255

/-- `A181821(∏{e}[∑[1+3*n], A000040(#)])` -/
def P14992874335379269084.Spec : Prop :=
  ∀ n, P14992874335379269084.a n = A278255 (n + 1)

end A278255

/-! ## A278255.P1815453177172234171

`A025487(A101296(∑[1+n*3]))`
-/

namespace A278255.P1815453177172234171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n * 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278255.P1815453177172234171

namespace A278255

/-- `A025487(A101296(∑[1+n*3]))` -/
def P1815453177172234171.Spec : Prop :=
  ∀ n, P1815453177172234171.a n = A278255 (n + 1)

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

The programs for A278256, the canonical program `A278256.P17598573142483079167` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278256 has offset 1).

The definition of A278256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278256.P17598573142483079167

`A278259(2*(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
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

/-! ## A278256.P742348369083365290

`A025487(A101296(∑[2*(n+1)]))`
-/

namespace A278256.P742348369083365290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A101296 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278256.P742348369083365290

namespace A278256

/-- `A025487(A101296(∑[2*(n+1)]))` -/
def P742348369083365290.Spec : Prop :=
  ∀ n, P742348369083365290.a n = A278256 (n + 1)

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

The programs for A278257, the canonical program `A278257.P2631083577688483102` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278257 has offset 1).

The definition of A278257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278257.P2631083577688483102

`A046523(A005187(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278257

/-- `A046523(A005187(n+1))` -/
def P2631083577688483102.Spec : Prop :=
  ∀ n, P2631083577688483102.a n = A278257 (n + 1)

theorem P2631083577688483102.correct : P2631083577688483102.Spec := by
  intro n
  simp only [A278257, Nat.add_sub_cancel]

end A278257

/-! ## A278257.P1166112957071110277

`A046523(∑[val(1+n, 2)+1])`
-/

namespace A278257.P1166112957071110277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278257.P1166112957071110277

namespace A278257

/-- `A046523(∑[val(1+n, 2)+1])` -/
def P1166112957071110277.Spec : Prop :=
  ∀ n, P1166112957071110277.a n = A278257 (n + 1)

end A278257

/-! ## A278257.P11509596337437594408

`col(A286163(∑[val(n+1, 2)+1]))`
-/

namespace A278257.P11509596337437594408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A286163 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A278257.P11509596337437594408

namespace A278257

/-- `col(A286163(∑[val(n+1, 2)+1]))` -/
def P11509596337437594408.Spec : Prop :=
  ∀ n, (P11509596337437594408.a n : ℤ) = A278257 (n + 1)

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

/-!
# A278258: Least number with the prime signature of the n-th Catalan number.

The programs for A278258, the canonical program `A278258.P12544185363711312694` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278258 has offset 0).

The definition of A278258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278258.P12544185363711312694

`A046523(A000108(n))`

The canonical program, it is in `Seq.B010.C000`.
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

The programs for A278259, the canonical program `A278259.P6707205437516840504` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278259 has offset 1).

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

The canonical program, it is in `Seq.B010.C000`.
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

The programs for A278260, the canonical program `A278260.P15623927489454411209` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278260 has offset 1).

The definition of A278260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278260.P15623927489454411209

`A046523(A033638(n+1))`

The canonical program, it is in `Seq.B010.C000`.
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

The programs for A278261, the canonical program `A278261.P4182935939581493227` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278261 has offset 1).

The definition of A278261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A273671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278261.P4182935939581493227

`A046523(A273671(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A278261

/-- `A046523(A273671(n+1))` -/
def P4182935939581493227.Spec : Prop :=
  ∀ n, P4182935939581493227.a n = A278261 (n + 1)

theorem P4182935939581493227.correct : P4182935939581493227.Spec := by
  intro n
  simp only [A278261, Nat.add_sub_cancel]

end A278261

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

/-! ## A278265.P9587513099036586012

`A065338(A000265(A276573(n+1)))`
-/

namespace A278265.P9587513099036586012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A000265 (A276573 (n + 1)).toNat).toNat

end

end A278265.P9587513099036586012

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

/-! ## A278265.P3461394990683917300

`gcd(A278498(n+1), A335843(n+1))`
-/

namespace A278265.P3461394990683917300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278498 (n + 1)) (A335843 (n + 1))

end

end A278265.P3461394990683917300

/-! ## A278265.P9696877211670707706

`gcd(A204046(n+1), A278498(n+1))`
-/

namespace A278265.P9696877211670707706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204046 (n + 1)) (A278498 (n + 1))

end

end A278265.P9696877211670707706

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

/-! ## A278266.P7161488819373615854

`A071364(A026477(n+1)%A298687(n+1))`
-/

namespace A278266.P7161488819373615854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.tmod (A026477 (n + 1)) (A298687 (n + 1))).toNat

end

end A278266.P7161488819373615854

/-! ## A278266.P17082854209961120684

`filter[A076078(n+1), A077049(#)]`
-/

namespace A278266.P17082854209961120684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A077049 (f1 j).toNat = 1) n)

end

end A278266.P17082854209961120684

/-! ## A278266.P1862242723644590022

`filter[A100577(n+1), A071023(#)]`
-/

namespace A278266.P1862242723644590022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A278266.P1862242723644590022

/-! ## A278266.P3800256124035339523

`filter[A100577(n+1), A113998(#)]`
-/

namespace A278266.P3800256124035339523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A113998 (f1 j).toNat = 1) n)

end

end A278266.P3800256124035339523

/-!
# A278267: Number of n X 2 0..3 arrays with every element plus 1 mod 4 equal to some element at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) (1,-1) or (1,0), with upper left element zero.

The programs for A278267, the canonical program `A278267.P3866483218916812238` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278267 has offset 1).

The definition of A278267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278267.P3866483218916812238

`ogf((4x+7x^2-19x^3+13x^4-4x^5+9x^6-8x^7)/(1-10x+14x^2-37x^3+65x^4-70x^5+76x^6-74x^7+32x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278267

/-- `ogf((4x+7x^2-19x^3+13x^4-4x^5+9x^6-8x^7)/(1-10x+14x^2-37x^3+65x^4-70x^5+76x^6-74x^7+32x^8))` -/
def P3866483218916812238.Spec : Prop :=
  ∀ n, P3866483218916812238.a n = A278267 (n + 1)

theorem P3866483218916812238.correct : P3866483218916812238.Spec := by
  intro n
  simp only [A278267, Nat.add_sub_cancel]

end A278267

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

namespace A278267

/-- `A278272(∑[n+1]+2)` -/
def P312580639992954554.Spec : Prop :=
  ∀ n, P312580639992954554.a n = A278267 (n + 1)

end A278267

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

namespace A278267

/-- `record[A278272(A133263(n))-char[1]]` -/
def P18445957071882785666.Spec : Prop :=
  ∀ n, P18445957071882785666.a n = A278267 (n + 1)

end A278267

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

namespace A278267

/-- `record[A278272(n+2)/A156602(n)]` -/
def P18417995929705025205.Spec : Prop :=
  ∀ n, P18417995929705025205.a n = (A278267 (n + 1) : ℚ)

end A278267

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

namespace A278267

/-- `record[Δ[A278272(n+1)]/A350729(n+1)]` -/
def P13776651342123344742.Spec : Prop :=
  ∀ n, P13776651342123344742.a n = (A278267 (n + 1) : ℚ)

end A278267

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

/-! ## A278269.P14847877835239846751

`A278272(A141214(n+1))`
-/

namespace A278269.P14847877835239846751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (A141214 (n + 1)).toNat

end

end A278269.P14847877835239846751

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

/-! ## A278270.P445467179934987955

`A278272(Δ[A264443(n)])`
-/

namespace A278270.P445467179934987955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278272 (f1 (n + 1) - f1 n).toNat

end

end A278270.P445467179934987955

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

/-!
# A278274: Number of n X 2 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278274, the canonical program `A278274.P2485728162986905032` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278274 has offset 1).

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

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A278275, the canonical program `A278275.P10199670738123037383` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278275 has offset 1).

The definition of A278275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278275.P10199670738123037383

`ogf((4x+x^2-26x^3+16x^4-4x^5+11x^6-4x^7+2x^8)/(1-6x-3x^2+17x^3-19x^5+16x^6-8x^7))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278275

/-- `ogf((4x+x^2-26x^3+16x^4-4x^5+11x^6-4x^7+2x^8)/(1-6x-3x^2+17x^3-19x^5+16x^6-8x^7))` -/
def P10199670738123037383.Spec : Prop :=
  ∀ n, P10199670738123037383.a n = A278275 (n + 1)

theorem P10199670738123037383.correct : P10199670738123037383.Spec := by
  intro n
  simp only [A278275, Nat.add_sub_cancel]

end A278275

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

namespace A278275

/-- `A278280(∑[n+3]+1)` -/
def P1638558298935828518.Spec : Prop :=
  ∀ n, P1638558298935828518.a n = A278275 (n + 1)

end A278275

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

namespace A278275

/-- `record[char[A141214(n)]*A278280(n+1)]` -/
def P16201142699704079205.Spec : Prop :=
  ∀ n, P16201142699704079205.a n = A278275 (n + 1)

end A278275

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

namespace A278275

/-- `record[A174820(n+3)*A278280(n+1)]` -/
def P1431963204757369207.Spec : Prop :=
  ∀ n, P1431963204757369207.a n = A278275 (n + 1)

end A278275

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

/-!
# A278281: Number of 2 X n 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278281, the canonical program `A278281.P2468313917339139431` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278281 has offset 1).

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

The canonical program, it is in `Seq.B000.C040`.
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

/-!
# A278286: Number of 7Xn 0..1 arrays with every element both equal and not equal to some elements at offset (-1,-1) (-1,0) (-1,1) (0,-1) (0,1) or (1,0), with upper left element zero.

The programs for A278286, there is no canonical definition to state claims against.
-/

/-! ## A278286.P9443339195240920706

`A278280(A167487(n+5))`
-/

namespace A278286.P9443339195240920706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278280 (A167487 (n + 5)).toNat

end

end A278286.P9443339195240920706

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

The programs for A278290, the canonical program `A278290.P9198290756917287821` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278290 has offset 1).

The definition of A278290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278290.P10326416056105748882

`3%(T(n-1,k)+2)+1` with `a(0)=0, a(1)=1`
-/

namespace A278290.P10326416056105748882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 % (SequenceMachineLib.triUp a n + 2) + 1

end

end A278290.P10326416056105748882

namespace A278290

/-- `3%(T(n-1,k)+2)+1` -/
def P10326416056105748882.Spec : Prop :=
  ∀ n, (P10326416056105748882.a n : ℤ) = A278290 (n + 1)

end A278290

/-! ## A278290.P13808726246220072441

`∑{d}[a(T(n-1,k-1))+1, #-1]` with `a(0)=1`
-/

namespace A278290.P13808726246220072441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (SequenceMachineLib.triUpLeft f1 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A278290.P13808726246220072441

namespace A278290

/-- `∑{d}[a(T(n-1,k-1))+1, #-1]` -/
def P13808726246220072441.Spec : Prop :=
  ∀ n, P13808726246220072441.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P9198290756917287821

`a(n-floor(sqrt(2*n+1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278290

/-- `a(n-floor(sqrt(2*n+1)))` -/
def P9198290756917287821.Spec : Prop :=
  ∀ n, (P9198290756917287821.a n : ℤ) = A278290 (n + 1)

theorem P9198290756917287821.correct : P9198290756917287821.Spec := by
  intro n
  simp only [A278290, Nat.add_sub_cancel]

end A278290

/-! ## A278290.P8964661668789091649

`A040005(T(n-1,k))` with `a(0)=0, a(1)=1`
-/

namespace A278290.P8964661668789091649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A040005 (SequenceMachineLib.triUp a n).toNat

end

end A278290.P8964661668789091649

namespace A278290

/-- `A040005(T(n-1,k))` -/
def P8964661668789091649.Spec : Prop :=
  ∀ n, P8964661668789091649.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P17604852309458094427

`A382025(T(n-1,k))+1` with `a(0)=0, a(1)=1`
-/

namespace A278290.P17604852309458094427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A382025 (SequenceMachineLib.triUp a n).toNat + 1

end

end A278290.P17604852309458094427

namespace A278290

/-- `A382025(T(n-1,k))+1` -/
def P17604852309458094427.Spec : Prop :=
  ∀ n, P17604852309458094427.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P7081699042549109156

`A268193(T(n-1,k)+3)` with `a(0)=0, a(1)=1`
-/

namespace A278290.P7081699042549109156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A268193 (SequenceMachineLib.triUp a n + 3).toNat

end

end A278290.P7081699042549109156

namespace A278290

/-- `A268193(T(n-1,k)+3)` -/
def P7081699042549109156.Spec : Prop :=
  ∀ n, P7081699042549109156.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P16997010402750095087

`A131816(xor(1, T(n-1,k)))` with `a(0)=0, a(1)=1`
-/

namespace A278290.P16997010402750095087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A131816 (Int.xor 1 (SequenceMachineLib.triUp a n)).toNat

end

end A278290.P16997010402750095087

namespace A278290

/-- `A131816(xor(1, T(n-1,k)))` -/
def P16997010402750095087.Spec : Prop :=
  ∀ n, P16997010402750095087.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P1082812072236736516

`A334428(6+2*T(n-1,k))` with `a(0)=0, a(1)=1`
-/

namespace A278290.P1082812072236736516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A334428 (6 + 2 * SequenceMachineLib.triUp a n).toNat

end

end A278290.P1082812072236736516

namespace A278290

/-- `A334428(6+2*T(n-1,k))` -/
def P1082812072236736516.Spec : Prop :=
  ∀ n, P1082812072236736516.a n = A278290 (n + 1)

end A278290

/-! ## A278290.P6678434527883431070

`A141285((T(n-1,k)+T(n-1,k-1))²)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A278290.P6678434527883431070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A141285 ((SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) ^ 2).toNat

end

end A278290.P6678434527883431070

namespace A278290

/-- `A141285((T(n-1,k)+T(n-1,k-1))²)` -/
def P6678434527883431070.Spec : Prop :=
  ∀ n, P6678434527883431070.a n = A278290 (n + 1)

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

/-! ## A278290.P2032099130807688840

`A372433((2-3*T(n-1,k))²)` with `a(0)=0, a(1)=1`
-/

namespace A278290.P2032099130807688840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A372433 ((2 - 3 * SequenceMachineLib.triUp a n) ^ 2).toNat

end

end A278290.P2032099130807688840

namespace A278290

/-- `A372433((2-3*T(n-1,k))²)` -/
def P2032099130807688840.Spec : Prop :=
  ∀ n, P2032099130807688840.a n = A278290 (n + 1)

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

/-!
# A278291: Numbers n such that n-1 has the same number of prime factors as n (with multiplicity).

The programs for A278291, the canonical program `A278291.P6818731943962716287` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278291 has offset 1).

The definition of A278291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278291.P6818731943962716287

`A045920(n+1)+1`

The canonical program, it is in `Seq.B003.C004`.
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

/-! ## A278291.P9223679405637407677

`round(A115167(1+n)/2)`
-/

namespace A278291.P9223679405637407677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A115167 (1 + n) : ℚ) / 2)

end

end A278291.P9223679405637407677

namespace A278291

/-- `round(A115167(1+n)/2)` -/
def P9223679405637407677.Spec : Prop :=
  ∀ n, P9223679405637407677.a n = A278291 (n + 1)

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

/-! ## A278292.P3663512764703387289

`A281520(n)-A010051(A119273(n+1))`
-/

namespace A278292.P3663512764703387289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281520 n - A010051 (A119273 (n + 1)).toNat

end

end A278292.P3663512764703387289

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

The programs for A278293, the canonical program `A278293.P6110886121231310369` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278293 has offset 1).

The definition of A278293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045920, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278293.P6110886121231310369

`A001222(A045920(n+1))`

The canonical program, it is in `Seq.B003.C004`.
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

/-! ## A278293.P8683329692723450260

`∑{e}[A045920(n+1), #]`
-/

namespace A278293.P8683329692723450260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A278293.P8683329692723450260

namespace A278293

/-- `∑{e}[A045920(n+1), #]` -/
def P8683329692723450260.Spec : Prop :=
  ∀ n, (P8683329692723450260.a n : ℤ) = A278293 (n + 1)

end A278293

/-! ## A278293.P6032726499974783536

`∑{e}[A278291(1+n), #]`
-/

namespace A278293.P6032726499974783536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A278293.P6032726499974783536

namespace A278293

/-- `∑{e}[A278291(1+n), #]` -/
def P6032726499974783536.Spec : Prop :=
  ∀ n, (P6032726499974783536.a n : ℤ) = A278293 (n + 1)

end A278293

/-! ## A278293.P10445723298249202151

`∑{e}[floor(A115167(n+1)/2), #]`
-/

namespace A278293.P10445723298249202151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115167 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A278293.P10445723298249202151

namespace A278293

/-- `∑{e}[floor(A115167(n+1)/2), #]` -/
def P10445723298249202151.Spec : Prop :=
  ∀ n, (P10445723298249202151.a n : ℤ) = A278293 (n + 1)

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

/-!
# A278294: a(n) = first term in A278291 with n prime factors.

The programs for A278294, there is no canonical definition to state claims against.
-/

/-! ## A278294.P12932411162907479528

`A115186(1+n)+1`
-/

namespace A278294.P12932411162907479528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115186 (1 + n) + 1

end

end A278294.P12932411162907479528

/-! ## A278294.P13729012091266356229

`ceil(A154704(n+2)/2)`
-/

namespace A278294.P13729012091266356229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154704 (n + 2) : ℚ) / 2⌉

end

end A278294.P13729012091266356229

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

/-! ## A278299.P9034146896493863811

`∑[A214973(A335457(n))+1]`
-/

namespace A278299.P9034146896493863811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214973 (A335457 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278299.P9034146896493863811

/-! ## A278299.P8860742646235924949

`A000720(∑[A141213(3*(n+1))-A257321(n+1)])`
-/

namespace A278299.P8860742646235924949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (3 * (n + 1)) - A257321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278299.P8860742646235924949

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

