import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A337406: Number of chiral pairs of colorings of the edges of a cube (or regular octahedron) using n or fewer colors.

The programs for A337406, the canonical program `A337406.P3434272713288432903` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337406 has offset 1).

The definition of A337406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337406.P3434272713288432903

`n*(n+1)²*(n+2)*((n+1)^8+(n+1)^6-2*(n+1)^4+8)/48`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337406

/-- `n*(n+1)²*(n+2)*((n+1)^8+(n+1)^6-2*(n+1)^4+8)/48` -/
def P3434272713288432903.Spec : Prop :=
  ∀ n, P3434272713288432903.a n = (A337406 (n + 1) : ℚ)

end A337406

/-! ## A337406.P10893247042726148934

`A199406(n+1)-A331351(n+1)`
-/

namespace A337406.P10893247042726148934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199406 (n + 1) - A331351 (n + 1)

end

end A337406.P10893247042726148934

namespace A337406

/-- `A199406(n+1)-A331351(n+1)` -/
def P10893247042726148934.Spec : Prop :=
  ∀ n, P10893247042726148934.a n = A337406 (n + 1)

end A337406

/-! ## A337406.P10664506383951498671

`A060530(n+1)-A199406(n+1)`
-/

namespace A337406.P10664506383951498671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 (n + 1) - A199406 (n + 1)

end

end A337406.P10664506383951498671

namespace A337406

/-- `A060530(n+1)-A199406(n+1)` -/
def P10664506383951498671.Spec : Prop :=
  ∀ n, P10664506383951498671.a n = A337406 (n + 1)

end A337406

/-! ## A337406.P7951241840288066483

`(A060530(n+1)-A331351(n+1))/2`
-/

namespace A337406.P7951241840288066483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060530 (n + 1) - A331351 (n + 1) : ℚ) / 2

end

end A337406.P7951241840288066483

namespace A337406

/-- `(A060530(n+1)-A331351(n+1))/2` -/
def P7951241840288066483.Spec : Prop :=
  ∀ n, P7951241840288066483.a n = (A337406 (n + 1) : ℚ)

end A337406

/-! ## A337406.P368874177853938275

`∑[A100794(n)]-A199406(n+1)`
-/

namespace A337406.P368874177853938275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A199406 (n + 1)

end

end A337406.P368874177853938275

namespace A337406

/-- `∑[A100794(n)]-A199406(n+1)` -/
def P368874177853938275.Spec : Prop :=
  ∀ n, P368874177853938275.a n = A337406 (n + 1)

end A337406

/-! ## A337406.P15519376926719603356

`A060530(A000027(n+1))%A199406(n+1)`
-/

namespace A337406.P15519376926719603356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060530 (A000027 (n + 1)).toNat) (A199406 (n + 1))

end

end A337406.P15519376926719603356

namespace A337406

/-- `A060530(A000027(n+1))%A199406(n+1)` -/
def P15519376926719603356.Spec : Prop :=
  ∀ n, P15519376926719603356.a n = A337406 (n + 1)

end A337406

/-! ## A337406.P12206903566587057727

`A060530(A263997(2*(n+1)))%A199406(n+1)`
-/

namespace A337406.P12206903566587057727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060530 (A263997 (2 * (n + 1))).toNat) (A199406 (n + 1))

end

end A337406.P12206903566587057727

namespace A337406

/-- `A060530(A263997(2*(n+1)))%A199406(n+1)` -/
def P12206903566587057727.Spec : Prop :=
  ∀ n, P12206903566587057727.a n = A337406 (n + 1)

end A337406

/-!
# A337407: Array read by descending antidiagonals: T(n,k) is the number of oriented colorings of the edges of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337407, there is no canonical definition to state claims against.
-/

/-! ## A337407.P8448488823858537741

`A337409(n+1)+A337408(n+1)`
-/

namespace A337407.P8448488823858537741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337409 (n + 1) + A337408 (n + 1)

end

end A337407.P8448488823858537741

/-! ## A337407.P65306904939845129

`A337410(n+1)+2*A337409(n+1)`
-/

namespace A337407.P65306904939845129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337410 (n + 1) + 2 * A337409 (n + 1)

end

end A337407.P65306904939845129

/-! ## A337407.P7987776240143161056

`2*A337408(n+1)-A337410(n+1)`
-/

namespace A337407.P7987776240143161056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337408 (n + 1) - A337410 (n + 1)

end

end A337407.P7987776240143161056

/-! ## A337407.P6790334609631542326

`A337409(A000027(n+1))+A337410(n+1)+A337409(n+1)`
-/

namespace A337407.P6790334609631542326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337409 (A000027 (n + 1)).toNat + (A337410 (n + 1) + A337409 (n + 1))

end

end A337407.P6790334609631542326

/-! ## A337407.P6181231365473281975

`A337408(A000027(n+1))+A337408(n+1)-A337410(n+1)`
-/

namespace A337407.P6181231365473281975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (A000027 (n + 1)).toNat + (A337408 (n + 1) - A337410 (n + 1))

end

end A337407.P6181231365473281975

/-!
# A337408: Array read by descending antidiagonals: T(n,k) is the number of unoriented colorings of the edges of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337408, there is no canonical definition to state claims against.
-/

/-! ## A337408.P17761438490248877093

`A337410(n+1)+A337409(n+1)`
-/

namespace A337408.P17761438490248877093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337410 (n + 1) + A337409 (n + 1)

end

end A337408.P17761438490248877093

/-! ## A337408.P1330940738487651832

`A337407(n+1)-A337409(n+1)`
-/

namespace A337408.P1330940738487651832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (n + 1) - A337409 (n + 1)

end

end A337408.P1330940738487651832

/-! ## A337408.P8042641300865350036

`(A337410(n+1)+A337407(n+1))/2`
-/

namespace A337408.P8042641300865350036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337410 (n + 1) + A337407 (n + 1) : ℚ) / 2

end

end A337408.P8042641300865350036

/-! ## A337408.P2317724718843542957

`A337407(n+1)+A057428(n)*A337409(n+1)`
-/

namespace A337408.P2317724718843542957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (n + 1) + A057428 n * A337409 (n + 1)

end

end A337408.P2317724718843542957

/-!
# A337409: Array read by descending antidiagonals: T(n,k) is the number of chiral pairs of colorings of the edges of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337409, there is no canonical definition to state claims against.
-/

/-! ## A337409.P1028730452835973452

`A337407(n+1)-A337408(n+1)`
-/

namespace A337409.P1028730452835973452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (n + 1) - A337408 (n + 1)

end

end A337409.P1028730452835973452

/-! ## A337409.P6299453547437395677

`A337408(n+1)-A337410(n+1)`
-/

namespace A337409.P6299453547437395677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (n + 1) - A337410 (n + 1)

end

end A337409.P6299453547437395677

/-! ## A337409.P5353674532588926741

`(A337407(n+1)-A337410(n+1))/2`
-/

namespace A337409.P5353674532588926741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337407 (n + 1) - A337410 (n + 1) : ℚ) / 2

end

end A337409.P5353674532588926741

/-! ## A337409.P12634209350198650501

`A337407(A000027(n+1))%A337408(n+1)`
-/

namespace A337409.P12634209350198650501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337407 (A000027 (n + 1)).toNat) (A337408 (n + 1))

end

end A337409.P12634209350198650501

/-! ## A337409.P14692183396524461752

`A337407(A028242(2*n))%A337408(n+1)`
-/

namespace A337409.P14692183396524461752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337407 (A028242 (2 * n)).toNat) (A337408 (n + 1))

end

end A337409.P14692183396524461752

/-!
# A337410: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the edges of a regular n-dimensional orthotope (hypercube) using k or fewer colors.

The programs for A337410, there is no canonical definition to state claims against.
-/

/-! ## A337410.P14641587609112376890

`A337408(n+1)-A337409(n+1)`
-/

namespace A337410.P14641587609112376890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (n + 1) - A337409 (n + 1)

end

end A337410.P14641587609112376890

/-! ## A337410.P14545046700827580647

`2*A337408(n+1)-A337407(n+1)`
-/

namespace A337410.P14545046700827580647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337408 (n + 1) - A337407 (n + 1)

end

end A337410.P14545046700827580647

/-! ## A337410.P2168857230222548688

`A337407(n+1)-2*A337409(n+1)`
-/

namespace A337410.P2168857230222548688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (n + 1) - 2 * A337409 (n + 1)

end

end A337410.P2168857230222548688

/-! ## A337410.P12045922179942440442

`A337408(A000027(n+1))-(A337407(n+1)-A337408(n+1))`
-/

namespace A337410.P12045922179942440442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (A000027 (n + 1)).toNat - (A337407 (n + 1) - A337408 (n + 1))

end

end A337410.P12045922179942440442

/-! ## A337410.P17239705112590959767

`A337407(n+1)-A337409(n+1)-A337409(A000027(n+1))`
-/

namespace A337410.P17239705112590959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (n + 1) - A337409 (n + 1) - A337409 (A000027 (n + 1)).toNat

end

end A337410.P17239705112590959767

/-!
# A337411: Array read by descending antidiagonals: T(n,k) is the number of oriented colorings of the edges of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337411, there is no canonical definition to state claims against.
-/

/-! ## A337411.P13958971987453583099

`A028310(A337407(n+1))`
-/

namespace A337411.P13958971987453583099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A337407 (n + 1)).toNat

end

end A337411.P13958971987453583099

/-! ## A337411.P9782439811081120297

`A337407(A262360(n+1))`
-/

namespace A337411.P9782439811081120297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337407 (A262360 (n + 1)).toNat

end

end A337411.P9782439811081120297

/-! ## A337411.P13260233343258547396

`A023443(A337407(n+1)+1)`
-/

namespace A337411.P13260233343258547396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A337407 (n + 1) + 1).toNat

end

end A337411.P13260233343258547396

/-! ## A337411.P6867187261515836596

`A001281(2*A337407(n+1))`
-/

namespace A337411.P6867187261515836596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A337407 (n + 1)).toNat

end

end A337411.P6867187261515836596

/-! ## A337411.P14343199771287553572

`A004525(2*A337407(n+1))`
-/

namespace A337411.P14343199771287553572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A337407 (n + 1)).toNat

end

end A337411.P14343199771287553572

/-!
# A337412: Array read by descending antidiagonals: T(n,k) is the number of unoriented colorings of the edges of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337412, there is no canonical definition to state claims against.
-/

/-! ## A337412.P17617365549521277505

`A337414(n+1)+A337413(n+1)`
-/

namespace A337412.P17617365549521277505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337414 (n + 1) + A337413 (n + 1)

end

end A337412.P17617365549521277505

/-! ## A337412.P10054989798747052420

`A000027(A337408(n+1))`
-/

namespace A337412.P10054989798747052420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A337408 (n + 1)).toNat

end

end A337412.P10054989798747052420

/-! ## A337412.P5080368346169234191

`A337408(A055648(n)+1)`
-/

namespace A337412.P5080368346169234191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (A055648 n + 1).toNat

end

end A337412.P5080368346169234191

/-! ## A337412.P16020764433949193284

`A337408(A161951(n+1))`
-/

namespace A337412.P16020764433949193284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (A161951 (n + 1)).toNat

end

end A337412.P16020764433949193284

/-! ## A337412.P16796971998908402453

`A337408(A079341(n)+n)`
-/

namespace A337412.P16796971998908402453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (A079341 n + (n : ℤ)).toNat

end

end A337412.P16796971998908402453

/-!
# A337413: Array read by descending antidiagonals: T(n,k) is the number of chiral pairs of colorings of the edges of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337413, there is no canonical definition to state claims against.
-/

/-! ## A337413.P5490629359905952057

`A337412(n+1)-A337414(n+1)`
-/

namespace A337413.P5490629359905952057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337412 (n + 1) - A337414 (n + 1)

end

end A337413.P5490629359905952057

/-!
# A337414: Array read by descending antidiagonals: T(n,k) is the number of achiral colorings of the edges of a regular n-dimensional orthoplex (cross polytope) using k or fewer colors.

The programs for A337414, there is no canonical definition to state claims against.
-/

/-! ## A337414.P6953652551759388609

`A337412(n+1)-A337413(n+1)`
-/

namespace A337414.P6953652551759388609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337412 (n + 1) - A337413 (n + 1)

end

end A337414.P6953652551759388609

/-! ## A337414.P8502609606475339103

`A004184(A337410(n+1))`
-/

namespace A337414.P8502609606475339103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A337410 (n + 1)).toNat

end

end A337414.P8502609606475339103

/-! ## A337414.P8883644672219930110

`A337410(A043318(n+1))`
-/

namespace A337414.P8883644672219930110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337410 (A043318 (n + 1)).toNat

end

end A337414.P8883644672219930110

/-! ## A337414.P12023666426883119668

`A337410(A044915(n+1))`
-/

namespace A337414.P12023666426883119668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337410 (A044915 (n + 1)).toNat

end

end A337414.P12023666426883119668

/-! ## A337414.P15389193172795971300

`A337410(A055647(n+1))`
-/

namespace A337414.P15389193172795971300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337410 (A055647 (n + 1)).toNat

end

end A337414.P15389193172795971300

/-!
# A337415: a(n) is the number of ways to tile a size n triangle in the triangular grid with n n-cell polyiamonds, up to rotation and reflection of the triangle.

The programs for A337415, there is no canonical definition to state claims against.
-/

/-! ## A337415.P7393531180761898054

`floor((a(n-1)/exp(cos(n+1)))^(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A337415.P7393531180761898054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ⌊((a (n - 1) : ℝ) / Real.exp (Real.cos (n + 1 : ℝ))) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A337415.P7393531180761898054

/-!
# A337418: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the removed edges are not incident to the same vertex in the 3 point part but are incident to the same vertex in the other part.

The programs for A337418, the canonical program `A337418.P7587478471880944433` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337418 has offset 3).

The definition of A337418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337418.P7587478471880944433

`7^(n+2)-2*3^(n+2)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337418

/-- `7^(n+2)-2*3^(n+2)+1` -/
def P7587478471880944433.Spec : Prop :=
  ∀ n, P7587478471880944433.a n = A337418 (n + 3)

theorem P7587478471880944433.correct : P7587478471880944433.Spec := by
  intro n
  simp only [A337418, Nat.add_sub_cancel]

end A337418

/-!
# A337420: a(n) = Sum_{k=0..n} (-n)^(n-k) * binomial(2*k,k) * binomial(2*n,2*k).

The programs for A337420, there is no canonical definition to state claims against.
-/

/-! ## A337420.P8516404857805366465

`A337419(∑[4*n])`
-/

namespace A337420.P8516404857805366465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337420.P8516404857805366465

/-! ## A337420.P2858157560869854670

`A177849(n)*A337419(A046092(n))`
-/

namespace A337420.P2858157560869854670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A337419 (A046092 n).toNat

end

end A337420.P2858157560869854670

/-! ## A337420.P7728819055721269607

`A337419(A046092(n))^A178489(n)`
-/

namespace A337420.P7728819055721269607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337419 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A337420.P7728819055721269607

/-! ## A337420.P1212895992041080281

`or(A000007(n), A337419(A046092(n)))`
-/

namespace A337420.P1212895992041080281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A337419 (A046092 n).toNat)

end

end A337420.P1212895992041080281

/-! ## A337420.P8507524906898469126

`or(A000035(n), A337419(A046092(n)))`
-/

namespace A337420.P8507524906898469126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A337419 (A046092 n).toNat)

end

end A337420.P8507524906898469126

/-!
# A337421: Expansion of sqrt((1-6*x+sqrt(1-4*x+36*x^2)) / (2 * (1-4*x+36*x^2))).

The programs for A337421, there is no canonical definition to state claims against.
-/

/-! ## A337421.P13153578609087869582

`A098336(2*n)/A122803(n)`
-/

namespace A337421.P13153578609087869582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098336 (2 * n) : ℚ) / (A122803 n : ℚ)

end

end A337421.P13153578609087869582

/-! ## A337421.P13026484414926354127

`A116093(2*n)/A122803(n)`
-/

namespace A337421.P13026484414926354127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116093 (2 * n) : ℚ) / (A122803 n : ℚ)

end

end A337421.P13026484414926354127

/-! ## A337421.P8984015668296524403

`A098336(2*n)/A116092(n)*A012000(n)`
-/

namespace A337421.P8984015668296524403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098336 (2 * n) : ℚ) / (A116092 n : ℚ) * (A012000 n : ℚ)

end

end A337421.P8984015668296524403

/-! ## A337421.P17132400835600449738

`A337419(∑[n+3])`
-/

namespace A337421.P17132400835600449738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337421.P17132400835600449738

/-! ## A337421.P5563455727805899948

`A337419(A055998(n+1))%A074509(n)`
-/

namespace A337421.P5563455727805899948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337419 (A055998 (n + 1)).toNat) (A074509 n)

end

end A337421.P5563455727805899948

/-!
# A337422: Expansion of sqrt((1-7*x+sqrt(1-2*x+49*x^2)) / (2 * (1-2*x+49*x^2))).

The programs for A337422, there is no canonical definition to state claims against.
-/

/-! ## A337422.P16079534587511206148

`A337419(∑[n+3]+n+3)`
-/

namespace A337422.P16079534587511206148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337419 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A337422.P16079534587511206148

/-!
# A337423: a(n) is the least prime of the form (3^j*5^k - 1)/2, j > 0, k > 0, j + k = n. a(n) = 0 if no such prime exists.

The programs for A337423, there is no canonical definition to state claims against.
-/

/-! ## A337423.P6882963857929491271

`p?[A047211(∏[3/a(n-1)])]` with `a(0)=5`
-/

namespace A337423.P6882963857929491271
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337423.P6882963857929491271

/-! ## A337423.P8051908246440796

`p?[A256680(A083658(n))]`
-/

namespace A337423.P8051908246440796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (A083658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337423.P8051908246440796

/-!
# A337427: a(n) is the least prime of the form (3^r*5^s*7^t - 1)/2, r, s, t > 0, r + s + t = n.

The programs for A337427, there is no canonical definition to state claims against.
-/

/-! ## A337427.P12491416973430160530

`A007310(A337428(n+3))`
-/

namespace A337427.P12491416973430160530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A337428 (n + 3)).toNat

end

end A337427.P12491416973430160530

/-!
# A337428: a(n) is the least prime of the form (3^r*5^s*7^t + 1)/2, r, s, t > 0, r + s + t = n.

The programs for A337428, there is no canonical definition to state claims against.
-/

/-! ## A337428.P6133475106664793703

`A099254(A337427(n+4)+1)`
-/

namespace A337428.P6133475106664793703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (A337427 (n + 4) + 1).toNat

end

end A337428.P6133475106664793703

/-!
# A337429: a(n) is the largest prime factor of 2^n + 5^n.

The programs for A337429, the canonical program `A337429.P7088931881512590606` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337429 has offset 0).

The definition of A337429 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337429.P7088931881512590606

`A006530(A074600(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A337429

/-- `A006530(A074600(n))` -/
def P7088931881512590606.Spec : Prop :=
  ∀ n, P7088931881512590606.a n = A337429 n

theorem P7088931881512590606.correct : P7088931881512590606.Spec := by
  intro n
  simp only [A337429]

end A337429

/-! ## A337429.P8228087632230604210

`A006530(2^n+5^n)`
-/

namespace A337429.P8228087632230604210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 ^ n + 5 ^ n)

end

end A337429.P8228087632230604210

namespace A337429

/-- `A006530(2^n+5^n)` -/
def P8228087632230604210.Spec : Prop :=
  ∀ n, P8228087632230604210.a n = A337429 n

end A337429

/-! ## A337429.P17618302937072116204

`A034699(∏{p}[2^n+5^n, #])`
-/

namespace A337429.P17618302937072116204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A337429.P17618302937072116204

namespace A337429

/-- `A034699(∏{p}[2^n+5^n, #])` -/
def P17618302937072116204.Spec : Prop :=
  ∀ n, P17618302937072116204.a n = A337429 n

end A337429

/-! ## A337429.P5284519991228762278

`A345941(∏{p}[2^n+5^n, #])`
-/

namespace A337429.P5284519991228762278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A337429.P5284519991228762278

namespace A337429

/-- `A345941(∏{p}[2^n+5^n, #])` -/
def P5284519991228762278.Spec : Prop :=
  ∀ n, P5284519991228762278.a n = A337429 n

end A337429

/-!
# A337430: Numbers k such that the largest prime factor of 2^k - 1 is less than the largest prime factor of 2^k + 1.

The programs for A337430, there is no canonical definition to state claims against.
-/

/-! ## A337430.P15196103645544522369

`comp[A337431(n+1)-2]+2`
-/

namespace A337430.P15196103645544522369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337431 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A337430.P15196103645544522369

/-! ## A337430.P10152694696576281779

`eq[A002587(n), A274906(A233583(n+1))]`
-/

namespace A337430.P10152694696576281779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337430.P10152694696576281779

/-!
# A337435: 6*a(n) - 1 is the least prime p of a pair of twin primes p, p + 2, for which the prime gap immediately below p achieves the size 2*A007494(n).

The programs for A337435, there is no canonical definition to state claims against.
-/

/-! ## A337435.P12345613966428202707

`A329251(∑[gcd(2, n)])`
-/

namespace A337435.P12345613966428202707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337435.P12345613966428202707

/-! ## A337435.P15235890450101900410

`A329251(comp[3*n]+1)`
-/

namespace A337435.P15235890450101900410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A337435.P15235890450101900410

/-! ## A337435.P5910881246653819540

`A329251(A007494(n+1))%A329158(n+5)`
-/

namespace A337435.P5910881246653819540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329251 (A007494 (n + 1)).toNat) (A329158 (n + 5))

end

end A337435.P5910881246653819540

/-! ## A337435.P8524689068341775234

`filter[A329251(n+1), A043545(#)]`
-/

namespace A337435.P8524689068341775234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A337435.P8524689068341775234

/-! ## A337435.P9282016456201802625

`filter[A329251(n+1), A252744(#)]`
-/

namespace A337435.P9282016456201802625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A337435.P9282016456201802625

/-!
# A337436: 6*a(n) + 1 is the least upper prime p of a pair of twin primes p - 2, p, for which the prime gap immediately following p achieves the size 2*A007494(n).

The programs for A337436, there is no canonical definition to state claims against.
-/

/-! ## A337436.P8242880346795141883

`A329252(∑[gcd(2, n)])`
-/

namespace A337436.P8242880346795141883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329252 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337436.P8242880346795141883

/-! ## A337436.P17489707783646799597

`A329252(comp[3*n]+1)`
-/

namespace A337436.P17489707783646799597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A337436.P17489707783646799597

/-! ## A337436.P8633829511011153365

`A329252(A007494(n+1))%A329158(n+5)`
-/

namespace A337436.P8633829511011153365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329252 (A007494 (n + 1)).toNat) (A329158 (n + 5))

end

end A337436.P8633829511011153365

/-! ## A337436.P1042254529740542218

`filter[A329252(n+2), A168181(#)]`
-/

namespace A337436.P1042254529740542218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A337436.P1042254529740542218

/-! ## A337436.P8143497777902634186

`filter[A329252(n+2), A316829(#)]`
-/

namespace A337436.P8143497777902634186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A337436.P8143497777902634186

/-!
# A337437: a(n) is the least prime of the form 2^j*3^k - 1, j > 0, k > 0, j + k = n. a(n) = 0 if no such prime exists.

The programs for A337437, there is no canonical definition to state claims against.
-/

/-! ## A337437.P14415341353549732951

`C(A355065(2*(n+2)), A111835(n)!)`
-/

namespace A337437.P14415341353549732951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355065 (2 * (n + 2))).toNat (Nat.factorial (A111835 n).toNat)

end

end A337437.P14415341353549732951

/-! ## A337437.P6126789443576578709

`A328568((A068322(2*n+1)+2)^(n+2))`
-/

namespace A337437.P6126789443576578709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328568 ((A068322 (2 * n + 1) + 2) ^ (n + 2)).toNat

end

end A337437.P6126789443576578709

/-! ## A337437.P17364801295414902546

`A097975(2^ceil(log2(n+1))*A027383(2*(n+2)))`
-/

namespace A337437.P17364801295414902546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A027383 (2 * (n + 2)) : ℚ))).toNat

end

end A337437.P17364801295414902546

/-!
# A337438: a(n) is the index k of prime(k), such that abs(prime(k) - Sum_{j=k-2..k+2} prime(j)/5) sets a new record.

The programs for A337438, there is no canonical definition to state claims against.
-/

/-! ## A337438.P14029103846100751614

`A000720(A337439(n+1))`
-/

namespace A337438.P14029103846100751614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A337439 (n + 1)).toNat

end

end A337438.P14029103846100751614

/-! ## A337438.P5562951306224768345

`A061395(p?[A337439(n+1)])`
-/

namespace A337438.P5562951306224768345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A337438.P5562951306224768345

/-! ## A337438.P164751916676387587

`A061395(2*A337439(n+1))`
-/

namespace A337438.P164751916676387587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A337439 (n + 1)).toNat

end

end A337438.P164751916676387587

/-! ## A337438.P12619260364891217309

`A061395(lcm(2, A337439(n+1)))`
-/

namespace A337438.P12619260364891217309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A337439 (n + 1)))

end

end A337438.P12619260364891217309

/-! ## A337438.P7392377907893687378

`A061395(or(1, A337439(n+1)))`
-/

namespace A337438.P7392377907893687378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A337439 (n + 1))).toNat

end

end A337438.P7392377907893687378

/-!
# A337439: a(n) is the k-th prime, such that abs(prime(k) - Sum_{j=k-2..k+2} prime(j)/5) sets a new record.

The programs for A337439, there is no canonical definition to state claims against.
-/

/-! ## A337439.P4227171108104626851

`A000040(A337438(n+1))`
-/

namespace A337439.P4227171108104626851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A337438 (n + 1)).toNat

end

end A337439.P4227171108104626851

/-! ## A337439.P9055255479525189213

`A008578(A337438(n+1)+1)`
-/

namespace A337439.P9055255479525189213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A337438 (n + 1) + 1).toNat

end

end A337439.P9055255479525189213

/-! ## A337439.P7181241563760819510

`A182986(A337438(n+1)+1)`
-/

namespace A337439.P7181241563760819510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A337438 (n + 1) + 1).toNat

end

end A337439.P7181241563760819510

/-! ## A337439.P17137457868680081694

`A045344(A337438(n+1)-1)`
-/

namespace A337439.P17137457868680081694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A337438 (n + 1) - 1).toNat

end

end A337439.P17137457868680081694

/-! ## A337439.P7984374820260518561

`A065091(A337438(n+1)-1)`
-/

namespace A337439.P7984374820260518561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A337438 (n + 1) - 1).toNat

end

end A337439.P7984374820260518561

/-!
# A337441: Number of n-step self-avoiding walks on a 2D square lattice where the walk consists of three different units and each unit cannot be adjacent to another unit of the same type.

The programs for A337441, there is no canonical definition to state claims against.
-/

/-! ## A337441.P8460765042764552035

`A161576(A099425(n))`
-/

namespace A337441.P8460765042764552035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161576 (A099425 n).toNat

end

end A337441.P8460765042764552035

/-! ## A337441.P12349561952847506059

`A081594(A259755(a(n-1)))` with `a(0)=1`
-/

namespace A337441.P12349561952847506059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081594 (A259755 (a (n - 1)).toNat).toNat

end

end A337441.P12349561952847506059

/-! ## A337441.P9870562379305367457

`A020639((n+1)!)*A099425(n)`
-/

namespace A337441.P9870562379305367457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (n + 1)) * A099425 n

end

end A337441.P9870562379305367457

/-! ## A337441.P15452832031175819658

`A020639((n+1)!)²*A116560(6*n+1)`
-/

namespace A337441.P15452832031175819658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (n + 1)) ^ 2 * A116560 (6 * n + 1)

end

end A337441.P15452832031175819658

/-!
# A337442: Number of output sequences from the linear feedback shift register whose feedback polynomial coefficients (excluding the constant term) correspond to the binary representation of n.

The programs for A337442, there is no canonical definition to state claims against.
-/

/-! ## A337442.P11593123901681309076

`A159631(A193231(2*n+1)²)`
-/

namespace A337442.P11593123901681309076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A193231 (2 * n + 1) ^ 2).toNat

end

end A337442.P11593123901681309076

/-! ## A337442.P110650937468691011

`A000005(A344537(n+1)+Δ[A000788(n)])`
-/

namespace A337442.P110650937468691011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344537 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A337442.P110650937468691011

/-! ## A337442.P2207900299797508513

`A000005(A344537(n+1)+A000120(n+1))`
-/

namespace A337442.P2207900299797508513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344537 (n + 1) + A000120 (n + 1)).toNat

end

end A337442.P2207900299797508513

/-! ## A337442.P14626021755465400278

`A000005(A344537(n+1)+A072084(n+1))`
-/

namespace A337442.P14626021755465400278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A344537 (n + 1) + A072084 (n + 1)).toNat

end

end A337442.P14626021755465400278

/-! ## A337442.P5857189731780289504

`A001227(A114538(n+1)+A098615(n))`
-/

namespace A337442.P5857189731780289504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A114538 (n + 1) + A098615 n).toNat

end

end A337442.P5857189731780289504

/-!
# A337445: E.g.f.: 1 / ((sec(x) + tan(x)) * (1 - x)).

The programs for A337445, there is no canonical definition to state claims against.
-/

/-! ## A337445.P7036232425685760357

`A346838(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A337445.P7036232425685760357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346838 n + (n : ℤ) * a (n - 1)

end

end A337445.P7036232425685760357

/-! ## A337445.P14526515584880336896

`A323622(floor(n/2)^ceil(n/2))`
-/

namespace A337445.P14526515584880336896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 2⌋ : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A337445.P14526515584880336896

/-! ## A337445.P5279671854447467337

`A350776(A007558(n))+A333213(n)`
-/

namespace A337445.P5279671854447467337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350776 (A007558 n).toNat + A333213 n

end

end A337445.P5279671854447467337

/-!
# A337448: The numbers k for which Fibonacci(k) are Niven numbers.

The programs for A337448, there is no canonical definition to state claims against.
-/

/-! ## A337448.P5756540568460419193

`∑[A161895(∑[A264655(4*n+2)])]`
-/

namespace A337448.P5756540568460419193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (4 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337448.P5756540568460419193

/-! ## A337448.P15441360305181630623

`∑[A122197(∏[A015745(n)])]`
-/

namespace A337448.P15441360305181630623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337448.P15441360305181630623

/-! ## A337448.P13169740324791725059

`A112970(A056436(n+1))+n`
-/

namespace A337448.P13169740324791725059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A056436 (n + 1)).toNat + (n : ℤ)

end

end A337448.P13169740324791725059

/-! ## A337448.P17759950337674801592

`eq[A054896(n), A065712(A319916(n))]`
-/

namespace A337448.P17759950337674801592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (A319916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337448.P17759950337674801592

/-! ## A337448.P8678784746713532057

`A246080(A015702(n+1))%A318938(3*n+4)`
-/

namespace A337448.P8678784746713532057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246080 (A015702 (n + 1)).toNat) (A318938 (3 * n + 4))

end

end A337448.P8678784746713532057

/-!
# A337449: The numbers k for which Lucas(k) are Niven numbers.

The programs for A337449, there is no canonical definition to state claims against.
-/

/-! ## A337449.P929088741340489298

`A025664(A350490(n))+n`
-/

namespace A337449.P929088741340489298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025664 (A350490 n).toNat + (n : ℤ)

end

end A337449.P929088741340489298

/-! ## A337449.P6362500344408993391

`lt[A126759(A007438(n+1)), 5]`
-/

namespace A337449.P6362500344408993391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A007438 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337449.P6362500344408993391

/-! ## A337449.P18310781389409654741

`lt[A196063(A340019(n+1)), 11]`
-/

namespace A337449.P18310781389409654741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196063 (A340019 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337449.P18310781389409654741

/-! ## A337449.P10242540049450036858

`eq[A189684(n+1), A277157(n)]`
-/

namespace A337449.P10242540049450036858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337449.P10242540049450036858

/-! ## A337449.P16709775661779187265

`eq[A088459(n+1), A248213(n+1)]`
-/

namespace A337449.P16709775661779187265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337449.P16709775661779187265

/-!
# A337450: Number of relatively prime compositions of n with no 1's.

The programs for A337450, the canonical program `A337450.P988308958090563321` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337450 has offset 0).

The definition of A337450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337450.P988308958090563321

`A212804(A028310(n))-A178472(A028310(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337450

/-- `A212804(A028310(n))-A178472(A028310(n))` -/
def P988308958090563321.Spec : Prop :=
  ∀ n, P988308958090563321.a n = A337450 n

theorem P988308958090563321.correct : P988308958090563321.Spec := by
  intro n
  simp only [A337450]

end A337450

/-! ## A337450.P9422452729012563795

`A212804(A233583(n+1))-A178472(A233583(n+1))`
-/

namespace A337450.P9422452729012563795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A233583 (n + 1)).toNat - A178472 (A233583 (n + 1)).toNat

end

end A337450.P9422452729012563795

namespace A337450

/-- `A212804(A233583(n+1))-A178472(A233583(n+1))` -/
def P9422452729012563795.Spec : Prop :=
  ∀ n, P9422452729012563795.a n = A337450 n

end A337450

/-! ## A337450.P4781630462668208354

`(A198834(n+1)-A152061(n))/2`
-/

namespace A337450.P4781630462668208354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198834 (n + 1) - A152061 n : ℚ) / 2

end

end A337450.P4781630462668208354

namespace A337450

/-- `(A198834(n+1)-A152061(n))/2` -/
def P4781630462668208354.Spec : Prop :=
  ∀ n, P4781630462668208354.a n = (A337450 n : ℚ)

end A337450

/-! ## A337450.P6341006625225720905

`(A198834(n+1)-A152061(n))*2^A008683(A063535(n))`
-/

namespace A337450.P6341006625225720905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198834 (n + 1) - A152061 n : ℚ) * (2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ)

end

end A337450.P6341006625225720905

namespace A337450

/-- `(A198834(n+1)-A152061(n))*2^A008683(A063535(n))` -/
def P6341006625225720905.Spec : Prop :=
  ∀ n, P6341006625225720905.a n = (A337450 n : ℚ)

end A337450

/-! ## A337450.P14854254705237721123

`A212804(n)+A001489(A337667(n))`
-/

namespace A337450.P14854254705237721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A001489 (A337667 n).toNat

end

end A337450.P14854254705237721123

namespace A337450

/-- `A212804(n)+A001489(A337667(n))` -/
def P14854254705237721123.Spec : Prop :=
  ∀ n, P14854254705237721123.a n = A337450 n

end A337450

/-!
# A337451: Number of relatively prime strict compositions of n with no 1's.

The programs for A337451, there is no canonical definition to state claims against.
-/

/-! ## A337451.P12126401721797199075

`and(A332004(n)-A339162(n), -2)`
-/

namespace A337451.P12126401721797199075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332004 n - A339162 n) (-2)

end

end A337451.P12126401721797199075

/-! ## A337451.P4574208042630504027

`(A332004(n)+A032020(n))%A032006(n)`
-/

namespace A337451.P4574208042630504027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332004 n + A032020 n) (A032006 n)

end

end A337451.P4574208042630504027

/-! ## A337451.P3936017224131640197

`(A332004(n)+A032022(n))%A032020(n)`
-/

namespace A337451.P3936017224131640197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332004 n + A032022 n) (A032020 n)

end

end A337451.P3936017224131640197

/-! ## A337451.P10579041846984959855

`A332004(abs(1-n)+1)+A032022(n)-A032020(n)`
-/

namespace A337451.P10579041846984959855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332004 (|1 - (n : ℤ)| + 1).toNat + A032022 n - A032020 n

end

end A337451.P10579041846984959855

/-! ## A337451.P5645076225664964671

`A332004(n)+A032020(n)-A032006(n)-A063524(n+1)`
-/

namespace A337451.P5645076225664964671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332004 n + A032020 n - A032006 n - A063524 (n + 1)

end

end A337451.P5645076225664964671

/-!
# A337452: Number of relatively prime strict integer partitions of n with no 1's.

The programs for A337452, there is no canonical definition to state claims against.
-/

/-! ## A337452.P17877832591105152987

`A078374(A233583(n+1))-A096765(A233583(n+1))`
-/

namespace A337452.P17877832591105152987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (A233583 (n + 1)).toNat - A096765 (A233583 (n + 1)).toNat

end

end A337452.P17877832591105152987

/-! ## A337452.P5311999400808292574

`A218867(A000740(n+1)+8)`
-/

namespace A337452.P5311999400808292574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218867 (A000740 (n + 1) + 8).toNat

end

end A337452.P5311999400808292574

/-! ## A337452.P2579148131517932789

`A325135(or(A036618(n), A037225(n+2)))`
-/

namespace A337452.P2579148131517932789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (Int.lor (A036618 n) (A037225 (n + 2))).toNat

end

end A337452.P2579148131517932789

/-! ## A337452.P12448801279218609609

`A341450(n)-A101040(A205126(3*n+1))`
-/

namespace A337452.P12448801279218609609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 n - A101040 (A205126 (3 * n + 1)).toNat

end

end A337452.P12448801279218609609

/-!
# A337453: Numbers k such that the k-th composition in standard order is an ordered triple of distinct positive integers.

The programs for A337453, there is no canonical definition to state claims against.
-/

/-! ## A337453.P12154780506944795792

`eq[9, A124770(n)+A000120(n)]`
-/

namespace A337453.P12154780506944795792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337453.P12154780506944795792

/-! ## A337453.P6603760982126396416

`eq[10, A124771(n)+A000120(n)]`
-/

namespace A337453.P6603760982126396416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337453.P6603760982126396416

/-! ## A337453.P8044080480581381055

`∩[A233564(n+1), A075930(n)]`
-/

namespace A337453.P8044080480581381055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337453.P8044080480581381055

/-! ## A337453.P6680395061312374761

`∩[A014311(n+1), A233564(n+1)]`
-/

namespace A337453.P6680395061312374761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337453.P6680395061312374761

/-! ## A337453.P7336035366723347019

`∩[A233564(n+1), A271499(n+1)]`
-/

namespace A337453.P7336035366723347019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337453.P7336035366723347019

/-! ## A337453.P8832949333370768966

`eq[A000045(A124770(n)), A001316(n)]`
-/

namespace A337453.P8832949333370768966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A124770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337453.P8832949333370768966

/-! ## A337453.P12165120255034742941

`eq[A000120(n), A059959(A124770(n))]`
-/

namespace A337453.P12165120255034742941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A124770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337453.P12165120255034742941

/-! ## A337453.P14031708416365874169

`eq[A010059(n), A131732(A124771(n))]`
-/

namespace A337453.P14031708416365874169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A124771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337453.P14031708416365874169

/-! ## A337453.P16251244425416501772

`eq[A010060(n), A235063(A124771(n))]`
-/

namespace A337453.P16251244425416501772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235063 (A124771 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337453.P16251244425416501772

/-! ## A337453.P12814279343729957564

`eq[A124771(A071178(n+1))+5, A124771(n)]`
-/

namespace A337453.P12814279343729957564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 (A071178 (n + 1)).toNat + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337453.P12814279343729957564

/-!
# A337454: a(n) is the number of divisors of n such that the ratio (the number of nonnegative m < n such that m^d == m (mod n))/(the number of nonnegative m < n such that -m^d == m (mod n)) is also a divisor of n.

The programs for A337454, there is no canonical definition to state claims against.
-/

/-! ## A337454.P8329439069090597410

`A289849(∑[A326685(n)+1])`
-/

namespace A337454.P8329439069090597410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337454.P8329439069090597410

/-! ## A337454.P326657601915803017

`A289849(∑[or(1, A326685(n))])`
-/

namespace A337454.P326657601915803017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326685 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337454.P326657601915803017

/-! ## A337454.P4312782524064356435

`A289849(∑[A119372(floor(n/10))])`
-/

namespace A337454.P4312782524064356435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119372 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337454.P4312782524064356435

/-! ## A337454.P4717720856040985579

`A289849(∑[A247059(floor(n/10))])`
-/

namespace A337454.P4717720856040985579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247059 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337454.P4717720856040985579

/-! ## A337454.P1234931179659119560

`A289849(∑[A294395(floor(n/10))])`
-/

namespace A337454.P1234931179659119560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294395 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337454.P1234931179659119560

/-!
# A337455: Numbers of the form m + bigomega(m) with m a positive integer.

The programs for A337455, the canonical program `A337455.P5143446261314098844` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337455 has offset 1).

The definition of A337455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337455.P10298766276073300443

`comp[abs(comp[A001222(2*(n+1))+n]-n)+n]`
-/

namespace A337455.P10298766276073300443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)| + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337455.P10298766276073300443

namespace A337455

/-- `comp[abs(comp[A001222(2*(n+1))+n]-n)+n]` -/
def P10298766276073300443.Spec : Prop :=
  ∀ n, (P10298766276073300443.a n : ℤ) = A337455 (n + 1)

end A337455

/-! ## A337455.P5143446261314098844

`eq[1, char[∑{e}[n+1, #]+n+1]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337455

/-- `eq[1, char[∑{e}[n+1, #]+n+1]]` -/
def P5143446261314098844.Spec : Prop :=
  ∀ n, (P5143446261314098844.a n : ℤ) = A337455 (n + 1)

theorem P5143446261314098844.correct : P5143446261314098844.Spec := by
  intro n
  simp only [A337455, Nat.add_sub_cancel]

end A337455

/-! ## A337455.P7355218382085124595

`eq[1, char[A073093(n+1)+n]]`
-/

namespace A337455.P7355218382085124595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337455.P7355218382085124595

namespace A337455

/-- `eq[1, char[A073093(n+1)+n]]` -/
def P7355218382085124595.Spec : Prop :=
  ∀ n, (P7355218382085124595.a n : ℤ) = A337455 (n + 1)

end A337455

/-! ## A337455.P15557547033435316772

`eq[1, char[A001222(n+1)+n+1]]`
-/

namespace A337455.P15557547033435316772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337455.P15557547033435316772

namespace A337455

/-- `eq[1, char[A001222(n+1)+n+1]]` -/
def P15557547033435316772.Spec : Prop :=
  ∀ n, (P15557547033435316772.a n : ℤ) = A337455 (n + 1)

end A337455

/-! ## A337455.P13875392344482924908

`lt[A108090(A383534(n+2)), A065285(3*n+4)]`
-/

namespace A337455.P13875392344482924908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108090 (A383534 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065285 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337455.P13875392344482924908

namespace A337455

/-- `lt[A108090(A383534(n+2)), A065285(3*n+4)]` -/
def P13875392344482924908.Spec : Prop :=
  ∀ n, (P13875392344482924908.a n : ℤ) = A337455 (n + 1)

end A337455

/-!
# A337456: Number of n-step self-avoiding walks on a 3D cubic lattice where the walk consists of three different units and each unit cannot be adjacent to another unit of the same type.

The programs for A337456, there is no canonical definition to state claims against.
-/

/-! ## A337456.P15740521158836931018

`A301682(A053644(n)+A008549(n))`
-/

namespace A337456.P15740521158836931018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 (A053644 n + A008549 n).toNat

end

end A337456.P15740521158836931018

/-! ## A337456.P1133922863229060056

`A015448(n)*A134201(5^n)`
-/

namespace A337456.P1133922863229060056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n * A134201 (5 ^ n)

end

end A337456.P1133922863229060056

/-!
# A337457: O.g.f. A(x) satisfies: [x^n] exp( n*(n-1) * x/A(x) ) = 0 for n > 0.

The programs for A337457, there is no canonical definition to state claims against.
-/

/-! ## A337457.P17633743119070640037

`or(1, A367218(A098480(n)))`
-/

namespace A337457.P17633743119070640037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A367218 (A098480 n).toNat)

end

end A337457.P17633743119070640037

/-! ## A337457.P7256139188452832169

`A065033(A294603(n)-A089874(2*n))`
-/

namespace A337457.P7256139188452832169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A294603 n - A089874 (2 * n)).toNat

end

end A337457.P7256139188452832169

/-!
# A337458: O.g.f. A(x) satisfies: [x^n] exp( n*(n+1) * x ) / A(x)^(n+1) = 0 for n > 0.

The programs for A337458, there is no canonical definition to state claims against.
-/

/-! ## A337458.P8373341010938225765

`A393620(∑[n]+n)`
-/

namespace A337458.P8373341010938225765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393620 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A337458.P8373341010938225765

/-! ## A337458.P4699185900839510517

`A097325(2*n+1)*A393620(n*(n+3)/2)`
-/

namespace A337458.P4699185900839510517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n + 1) * A393620 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat

end

end A337458.P4699185900839510517

/-! ## A337458.P16012595487987038639

`A393620(n*(n+3)/2)%A279239(n)`
-/

namespace A337458.P16012595487987038639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393620 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat) (A279239 n)

end

end A337458.P16012595487987038639

/-!
# A337459: Numbers k such that the k-th composition in standard order is a unimodal triple.

The programs for A337459, there is no canonical definition to state claims against.
-/

/-! ## A337459.P9095383075708902257

`∩[A014311(n+1), comp[A337460(n+1)]]`
-/

namespace A337459.P9095383075708902257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337460 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A337459.P9095383075708902257

/-! ## A337459.P16374235977567046605

`eq[A000120(n), A335465(A065285(n+1))]`
-/

namespace A337459.P16374235977567046605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A065285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337459.P16374235977567046605

/-! ## A337459.P9803492467067492153

`eq[A000120(n), A083953(A241314(n))]`
-/

namespace A337459.P9803492467067492153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A241314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337459.P9803492467067492153

/-! ## A337459.P12071261179325036849

`eq[A000120(n), A040077(A331204(n))]`
-/

namespace A337459.P12071261179325036849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040077 (A331204 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337459.P12071261179325036849

/-! ## A337459.P1531861070285895238

`A014311(comp[A172367(2*n+3)-A007559(n)]+1)`
-/

namespace A337459.P1531861070285895238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (2 * n + 3) - A007559 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A337459.P1531861070285895238

/-!
# A337460: Numbers k such that the k-th composition in standard order is a non-unimodal triple.

The programs for A337460, there is no canonical definition to state claims against.
-/

/-! ## A337460.P7335766276229819

`∩[2*A014311(n+1), A350356(n+1)]`
-/

namespace A337460.P7335766276229819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337460.P7335766276229819

/-! ## A337460.P2131696991749382740

`∩[A014311(n+1), A350356(n+1)]`
-/

namespace A337460.P2131696991749382740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337460.P2131696991749382740

/-! ## A337460.P7307285500208765102

`∩[A014311(n+1), A335373(n+1)]`
-/

namespace A337460.P7307285500208765102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337460.P7307285500208765102

/-! ## A337460.P3110143030358871277

`∩[2*A333975(n+1), A335373(n+1)]`
-/

namespace A337460.P3110143030358871277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337460.P3110143030358871277

/-! ## A337460.P4037643917620465168

`∩[A266214(n+1), A350356(n+1)]`
-/

namespace A337460.P4037643917620465168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337460.P4037643917620465168

/-!
# A337462: Number of pairwise coprime compositions of n, where a singleton is not considered coprime unless it is (1).

The programs for A337462, there is no canonical definition to state claims against.
-/

/-! ## A337462.P1158988058388081699

`A101268(n)-A157928(n)`
-/

namespace A337462.P1158988058388081699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - A157928 n

end

end A337462.P1158988058388081699

/-! ## A337462.P2231618292789399127

`A101268(n)-p?[A056239(n+1)]%2`
-/

namespace A337462.P2231618292789399127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A337462.P2231618292789399127

/-! ## A337462.P3368811202560799226

`A101268(n)-A001222(A136548(n+1))`
-/

namespace A337462.P3368811202560799226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - A001222 (A136548 (n + 1)).toNat

end

end A337462.P3368811202560799226

/-! ## A337462.P6971914173253088273

`A101268(n)-A289508(A000010(n+1))`
-/

namespace A337462.P6971914173253088273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - A289508 (A000010 (n + 1)).toNat

end

end A337462.P6971914173253088273

/-! ## A337462.P14481139470883814249

`A101268(n)+A327516(n)-A051424(n)`
-/

namespace A337462.P14481139470883814249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n + (A327516 n - A051424 n)

end

end A337462.P14481139470883814249

/-! ## A337462.P9939921501169968757

`A101268(n)+A337561(n)-A337562(n)`
-/

namespace A337462.P9939921501169968757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n + (A337561 n - A337562 n)

end

end A337462.P9939921501169968757

/-! ## A337462.P13007466959415412335

`A101268(n)-A300486(n+1)%A000837(n+1)`
-/

namespace A337462.P13007466959415412335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 n - Int.tmod (A300486 (n + 1)) (A000837 (n + 1))

end

end A337462.P13007466959415412335

/-! ## A337462.P4718265691940000581

`A101268(n)-a(A327144(n))` with `a(0)=1, a(1)=1`
-/

namespace A337462.P4718265691940000581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A101268 n - a (A327144 n).toNat

end

end A337462.P4718265691940000581

/-!
# A337465: a(n) = Sum_{k=0..n} (-n)^(n-k) * binomial(2*k,k) * binomial(2*n+1,2*k).

The programs for A337465, there is no canonical definition to state claims against.
-/

/-! ## A337465.P13822084396621074225

`A337464(∑[4*n])`
-/

namespace A337465.P13822084396621074225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337465.P13822084396621074225

/-! ## A337465.P10635627249503557870

`A337464(A046092(n))^A178489(n)`
-/

namespace A337465.P10635627249503557870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337464 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A337465.P10635627249503557870

/-! ## A337465.P10602799964994156569

`or(A000007(n), A337464(A046092(n)))`
-/

namespace A337465.P10602799964994156569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A337464 (A046092 n).toNat)

end

end A337465.P10602799964994156569

/-! ## A337465.P9570606699204395105

`abs(A033999(n))*A337464(A046092(n))`
-/

namespace A337465.P9570606699204395105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A337464 (A046092 n).toNat

end

end A337465.P9570606699204395105

/-!
# A337466: Expansion of sqrt(2 / ( (1-4*x+36*x^2) * (1-6*x+sqrt(1-4*x+36*x^2)) )).

The programs for A337466, there is no canonical definition to state claims against.
-/

/-! ## A337466.P15713138237831744626

`A116093(2*n+1)/A122803(n+1)`
-/

namespace A337466.P15713138237831744626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116093 (2 * n + 1) : ℚ) / (A122803 (n + 1) : ℚ)

end

end A337466.P15713138237831744626

/-! ## A337466.P9907790399943460730

`-A098336(2*n+1)/A122803(n+1)`
-/

namespace A337466.P9907790399943460730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A098336 (2 * n + 1) : ℚ) / (A122803 (n + 1) : ℚ))

end

end A337466.P9907790399943460730

/-! ## A337466.P11135456997045397114

`A337464(∑[n+3])`
-/

namespace A337466.P11135456997045397114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337466.P11135456997045397114

/-! ## A337466.P2950582290369053498

`A337464(A055998(n+1))%A074509(n)`
-/

namespace A337466.P2950582290369053498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337464 (A055998 (n + 1)).toNat) (A074509 n)

end

end A337466.P2950582290369053498

/-! ## A337466.P13717885343926460913

`A337464(A055998(n+1))+val(A000040(n+1), 4)`
-/

namespace A337466.P13717885343926460913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (A055998 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A337466.P13717885343926460913

/-! ## A337466.P10493514422190675791

`A337464(A055998(n+1))+A008683(12*or(1, n))`
-/

namespace A337466.P10493514422190675791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (A055998 (n + 1)).toNat + A008683 (12 * Nat.lor 1 n)

end

end A337466.P10493514422190675791

/-!
# A337467: Expansion of sqrt(2 / ( (1-2*x+49*x^2) * (1-7*x+sqrt(1-2*x+49*x^2)) )).

The programs for A337467, there is no canonical definition to state claims against.
-/

/-! ## A337467.P11886486719123814145

`A337464(∑[n+3]+n+3)`
-/

namespace A337467.P11886486719123814145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A337467.P11886486719123814145

/-!
# A337468: a(n) = A080224(A337386(n)).

The programs for A337468, the canonical program `A337468.P6808977206975830363` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337468 has offset 1).

The definition of A337468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337468.P6808977206975830363

`A080224(A337386(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337468

/-- `A080224(A337386(n+1))` -/
def P6808977206975830363.Spec : Prop :=
  ∀ n, P6808977206975830363.a n = A337468 (n + 1)

theorem P6808977206975830363.correct : P6808977206975830363.Spec := by
  intro n
  simp only [A337468, Nat.add_sub_cancel]

end A337468

/-! ## A337468.P9549598663046824570

`∑{d}[A337386(n+1), A294937(#)]`
-/

namespace A337468.P9549598663046824570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294937 d

end

end A337468.P9549598663046824570

namespace A337468

/-- `∑{d}[A337386(n+1), A294937(#)]` -/
def P9549598663046824570.Spec : Prop :=
  ∀ n, P9549598663046824570.a n = A337468 (n + 1)

end A337468

/-!
# A337469: a(n) is the least k that is a multiple of A071395(n) (the n-th primitive abundant number) for which A003961(k) is abundant.

The programs for A337469, there is no canonical definition to state claims against.
-/

/-! ## A337469.P15434927368105147375

`A071395(n+1)*A337538(n+1)`
-/

namespace A337469.P15434927368105147375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1) * A337538 (n + 1)

end

end A337469.P15434927368105147375

/-! ## A337469.P17346802322541017679

`∩[A005101(n+1), A006039(n+1)]*A337538(n+1)`
-/

namespace A337469.P17346802322541017679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A337538 (n + 1)

end

end A337469.P17346802322541017679

/-! ## A337469.P8796400716923548879

`∩[A006039(n+1), A091191(n+1)]*A337538(n+1)`
-/

namespace A337469.P8796400716923548879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A337538 (n + 1)

end

end A337469.P8796400716923548879

/-! ## A337469.P10967921389624950732

`∩[A006039(n+1), A181487(n+1)]*A337538(n+1)`
-/

namespace A337469.P10967921389624950732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A337538 (n + 1)

end

end A337469.P10967921389624950732

/-! ## A337469.P15363256217284184812

`∩[A006039(n+1), A198471(n+1)]*A337538(n+1)`
-/

namespace A337469.P15363256217284184812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A337538 (n + 1)

end

end A337469.P15363256217284184812

/-!
# A337471: Primorial inflation of n prime shifted once: a(n) = A003961(A108951(n)).

The programs for A337471, the canonical program `A337471.P17211340762950166472` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337471 has offset 1).

The definition of A337471 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337471.P17211340762950166472

`A003961(A108951(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337471

/-- `A003961(A108951(n+1))` -/
def P17211340762950166472.Spec : Prop :=
  ∀ n, P17211340762950166472.a n = A337471 (n + 1)

theorem P17211340762950166472.correct : P17211340762950166472.Spec := by
  intro n
  simp only [A337471, Nat.add_sub_cancel]

end A337471

/-! ## A337471.P2499811677404033058

`a(A064989(n+1)-1)*A003961(n+1)` with `a(0)=1`
-/

namespace A337471.P2499811677404033058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A064989 (n + 1) - 1).toNat * A003961 (n + 1)

end

end A337471.P2499811677404033058

namespace A337471

/-- `a(A064989(n+1)-1)*A003961(n+1)` -/
def P2499811677404033058.Spec : Prop :=
  ∀ n, P2499811677404033058.a n = A337471 (n + 1)

end A337471

/-! ## A337471.P2630478000911023741

`(2*A048673(n+1)-1)*a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A337471.P2630478000911023741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * A048673 (n + 1) - 1) * a (A064989 (n + 1) - 1).toNat

end

end A337471.P2630478000911023741

namespace A337471

/-- `(2*A048673(n+1)-1)*a(A064989(n+1)-1)` -/
def P2630478000911023741.Spec : Prop :=
  ∀ n, P2630478000911023741.a n = A337471 (n + 1)

end A337471

/-! ## A337471.P11894793791511018076

`A191002(n+1)/(n+1)*a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A337471.P11894793791511018076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A191002 (n + 1) : ℚ) / (n + 1 : ℚ) * a (A064989 (n + 1) - 1).toNat

end

end A337471.P11894793791511018076

namespace A337471

/-- `A191002(n+1)/(n+1)*a(A064989(n+1)-1)` -/
def P11894793791511018076.Spec : Prop :=
  ∀ n, P11894793791511018076.a n = (A337471 (n + 1) : ℚ)

end A337471

/-! ## A337471.P17843139213630191084

`(A336853(n+1)+1+n)*a(A349122(2*A003602(n+1)-1)-1)` with `a(0)=1`
-/

namespace A337471.P17843139213630191084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A336853 (n + 1) + 1 + (n : ℤ)) * a (A349122 (2 * A003602 (n + 1) - 1).toNat - 1).toNat

end

end A337471.P17843139213630191084

namespace A337471

/-- `(A336853(n+1)+1+n)*a(A349122(2*A003602(n+1)-1)-1)` -/
def P17843139213630191084.Spec : Prop :=
  ∀ n, P17843139213630191084.a n = A337471 (n + 1)

end A337471

/-!
# A337472: Square array read by falling antidiagonals, where A(n,k) = sigma(A337470(n, k)).

The programs for A337472, there is no canonical definition to state claims against.
-/

/-! ## A337472.P14901582465878558245

`A000203(A337470(n))`
-/

namespace A337472.P14901582465878558245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337470 n).toNat

end

end A337472.P14901582465878558245

/-! ## A337472.P11690703239725006155

`A385006(A337470(n)%A014210(n))`
-/

namespace A337472.P11690703239725006155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385006 (Int.tmod (A337470 n) (A014210 n)).toNat

end

end A337472.P11690703239725006155

/-! ## A337472.P7738635389884944005

`A385006(A337470(n))%A165004(n+1)`
-/

namespace A337472.P7738635389884944005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385006 (A337470 n).toNat) (A165004 (n + 1))

end

end A337472.P7738635389884944005

/-! ## A337472.P2036088949002149373

`A088580(A337470(n))-A257680(2*n+1)`
-/

namespace A337472.P2036088949002149373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A337470 n).toNat - A257680 (2 * n + 1)

end

end A337472.P2036088949002149373

/-! ## A337472.P7902272663490390915

`A051378(A337470(n))%A358232(n+1)`
-/

namespace A337472.P7902272663490390915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051378 (A337470 n).toNat) (A358232 (n + 1))

end

end A337472.P7902272663490390915

/-!
# A337473: Square array read by falling antidiagonals, where A(n,k) = floor(A337472(n, k)/A337470(n, k)); Abundancy index of A337470(n, k) floored down.

The programs for A337473, there is no canonical definition to state claims against.
-/

/-! ## A337473.P3163953582254772236

`A060502(gcd(A026807(n+1), A168534(n+1)))`
-/

namespace A337473.P3163953582254772236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Int.gcd (A026807 (n + 1)) (A168534 (n + 1)))

end

end A337473.P3163953582254772236

/-! ## A337473.P669928526278722295

`floor(A000203(A337470(n))/A337470(n))`
-/

namespace A337473.P669928526278722295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (A337470 n).toNat : ℚ) / (A337470 n : ℚ)⌋

end

end A337473.P669928526278722295

/-! ## A337473.P17640896846134626534

`gcd(A014963(A143364(n+1)), A080382(n+1))`
-/

namespace A337473.P17640896846134626534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A143364 (n + 1)).toNat) (A080382 (n + 1))

end

end A337473.P17640896846134626534

/-! ## A337473.P13240894216814619975

`lcm(2, A336835(A337470(n)))!`
-/

namespace A337473.P13240894216814619975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm 2 (A336835 (A337470 n).toNat))

end

end A337473.P13240894216814619975

/-! ## A337473.P2608818129517030139

`A060236(gcd(A051082(n+1), A151511(n)))`
-/

namespace A337473.P2608818129517030139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (Int.gcd (A051082 (n + 1)) (A151511 n))

end

end A337473.P2608818129517030139

/-! ## A337473.P2447397387777833828

`gcd(A059150(n), A376893(n+2))`
-/

namespace A337473.P2447397387777833828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059150 n) (A376893 (n + 2))

end

end A337473.P2447397387777833828

/-! ## A337473.P14357751893589798590

`gcd(A092556(n+1), A104856(n))`
-/

namespace A337473.P14357751893589798590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092556 (n + 1)) (A104856 n)

end

end A337473.P14357751893589798590

/-! ## A337473.P816676014046713702

`A204897(A210204(n+1))`
-/

namespace A337473.P816676014046713702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (A210204 (n + 1)).toNat

end

end A337473.P816676014046713702

/-! ## A337473.P803021243277148266

`gcd(A088158(n), A174373(n))`
-/

namespace A337473.P803021243277148266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088158 n) (A174373 n)

end

end A337473.P803021243277148266

/-! ## A337473.P10667463546660953957

`gcd(A057046(n), A237424(n+1))`
-/

namespace A337473.P10667463546660953957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057046 n) (A237424 (n + 1))

end

end A337473.P10667463546660953957

/-!
# A337474: Number of prime shifts (x -> A003961(x)) needed before the result is deficient, when starting from x = A108951(n), the primorial inflation of n.

The programs for A337474, the canonical program `A337474.P14754845814087979519` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337474 has offset 1).

The definition of A337474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A336835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337474.P14754845814087979519

`A336835(A108951(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337474

/-- `A336835(A108951(n+1))` -/
def P14754845814087979519.Spec : Prop :=
  ∀ n, P14754845814087979519.a n = A337474 (n + 1)

theorem P14754845814087979519.correct : P14754845814087979519.Spec := by
  intro n
  simp only [A337474, Nat.add_sub_cancel]

end A337474

/-! ## A337474.P11530323608539438572

`A337475(A329901(n+1))`
-/

namespace A337474.P11530323608539438572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337475 (A329901 (n + 1)).toNat

end

end A337474.P11530323608539438572

namespace A337474

/-- `A337475(A329901(n+1))` -/
def P11530323608539438572.Spec : Prop :=
  ∀ n, P11530323608539438572.a n = A337474 (n + 1)

end A337474

/-! ## A337474.P3680216098016557366

`A280737(n+1)+A124761(A261836(n))`
-/

namespace A337474.P3680216098016557366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1) + A124761 (A261836 n).toNat

end

end A337474.P3680216098016557366

namespace A337474

/-- `A280737(n+1)+A124761(A261836(n))` -/
def P3680216098016557366.Spec : Prop :=
  ∀ n, P3680216098016557366.a n = A337474 (n + 1)

end A337474

/-! ## A337474.P16708156958556131173

`A087116((A292943(n+1)+1)²)`
-/

namespace A337474.P16708156958556131173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 ((A292943 (n + 1) + 1) ^ 2).toNat

end

end A337474.P16708156958556131173

namespace A337474

/-- `A087116((A292943(n+1)+1)²)` -/
def P16708156958556131173.Spec : Prop :=
  ∀ n, P16708156958556131173.a n = A337474 (n + 1)

end A337474

/-! ## A337474.P11043739771800191441

`A069010(A005563(A292943(n+1)))`
-/

namespace A337474.P11043739771800191441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A005563 (A292943 (n + 1)).toNat).toNat

end

end A337474.P11043739771800191441

namespace A337474

/-- `A069010(A005563(A292943(n+1)))` -/
def P11043739771800191441.Spec : Prop :=
  ∀ n, P11043739771800191441.a n = A337474 (n + 1)

end A337474

/-!
# A337475: a(n) = A336835(A025487(n)).

The programs for A337475, there is no canonical definition to state claims against.
-/

/-! ## A337475.P14242798816447306310

`A337474(A181815(n+1))`
-/

namespace A337475.P14242798816447306310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337474 (A181815 (n + 1)).toNat

end

end A337475.P14242798816447306310

/-! ## A337475.P8378671533520427145

`A336835(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337475.P8378671533520427145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A025487 (n + 1)).toNat

end

end A337475.P8378671533520427145

/-! ## A337475.P12290134374324211856

`A336835(record[A329899(n+1)])`
-/

namespace A337475.P12290134374324211856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337475.P12290134374324211856

/-! ## A337475.P1272094961319279459

`A336835(record[A051466(n+2)])`
-/

namespace A337475.P1272094961319279459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337475.P1272094961319279459

/-! ## A337475.P5387009927207108

`A336835(record[A046523(n+1)])`
-/

namespace A337475.P5387009927207108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337475.P5387009927207108

/-!
# A337476: Position of the first occurrence of n in A337474.

The programs for A337476, there is no canonical definition to state claims against.
-/

/-! ## A337476.P1990612275670062693

`A323520(∑[record[A292870(n)]])`
-/

namespace A337476.P1990612275670062693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337476.P1990612275670062693

/-! ## A337476.P13831017336304919211

`A345899(comp[A098158(n)-1])`
-/

namespace A337476.P13831017336304919211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A337476.P13831017336304919211

/-! ## A337476.P5704754421885571782

`A355066(Δ[A241652(2*n+3)])`
-/

namespace A337476.P5704754421885571782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241652 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355066 (f1 (n + 1) - f1 n).toNat

end

end A337476.P5704754421885571782

/-!
# A337478: Primorial deflation of A336389.

The programs for A337478, there is no canonical definition to state claims against.
-/

/-! ## A337478.P5911585661771945418

`A250745(∑[A002720(n)])`
-/

namespace A337478.P5911585661771945418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337478.P5911585661771945418

/-!
# A337479: Primitive elements of A337386: numbers k for which sigma(A003961(k)) >= 2*A003961(k), but none of the proper divisors of k satisfy the same condition.

The programs for A337479, there is no canonical definition to state claims against.
-/

/-! ## A337479.P12506103477925215433

`∩[A337386(n+1), A342669(n+1)]`
-/

namespace A337479.P12506103477925215433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P12506103477925215433

/-! ## A337479.P18410617156246793682

`∩[A265712(n+1), A342669(n+1)]`
-/

namespace A337479.P18410617156246793682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P18410617156246793682

/-! ## A337479.P4921558887907907377

`∩[A244326(n+1), A342669(n+1)]`
-/

namespace A337479.P4921558887907907377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P4921558887907907377

/-! ## A337479.P12405229738263154394

`∩[A067766(n+1), A342669(n+1)]`
-/

namespace A337479.P12405229738263154394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P12405229738263154394

/-! ## A337479.P14203022781557024565

`∩[A067807(n+1), A342669(n+1)]`
-/

namespace A337479.P14203022781557024565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P14203022781557024565

/-! ## A337479.P11490198799749931540

`∩[A091454(n+1), A342669(n+1)]`
-/

namespace A337479.P11490198799749931540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P11490198799749931540

/-! ## A337479.P6186472384651754840

`∩[A091192(n+1), A342669(n+1)]`
-/

namespace A337479.P6186472384651754840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337479.P6186472384651754840

/-!
# A337480: Numbers k such that exactly one of 6*k + 5 and 12*k + 5 is prime.

The programs for A337480, the canonical program `A337480.P8362700632099792972` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337480 has offset 1).

The definition of A337480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337480.P8362700632099792972

`eq[1, A075743(2*n+1)+A075743(4*n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337480

/-- `eq[1, A075743(2*n+1)+A075743(4*n+1)]` -/
def P8362700632099792972.Spec : Prop :=
  ∀ n, (P8362700632099792972.a n : ℤ) = A337480 (n + 1)

theorem P8362700632099792972.correct : P8362700632099792972.Spec := by
  intro n
  simp only [A337480, Nat.add_sub_cancel]

end A337480

/-! ## A337480.P4822173426293203682

`eq[A005171(A017581(n)), A167020(n+1)]`
-/

namespace A337480.P4822173426293203682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337480.P4822173426293203682

namespace A337480

/-- `eq[A005171(A017581(n)), A167020(n+1)]` -/
def P4822173426293203682.Spec : Prop :=
  ∀ n, (P4822173426293203682.a n : ℤ) = A337480 (n + 1)

end A337480

/-! ## A337480.P2009079016215154604

`eq[1, A167020(2*n+1)+A167020(n+1)]`
-/

namespace A337480.P2009079016215154604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1) + A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337480.P2009079016215154604

namespace A337480

/-- `eq[1, A167020(2*n+1)+A167020(n+1)]` -/
def P2009079016215154604.Spec : Prop :=
  ∀ n, (P2009079016215154604.a n : ℤ) = A337480 (n + 1)

end A337480

/-!
# A337481: Number of compositions of n that are neither strictly increasing nor strictly decreasing.

The programs for A337481, there is no canonical definition to state claims against.
-/

/-! ## A337481.P15444647592660631641

`ceil(2^(n-1)-A333147(n))`
-/

namespace A337481.P15444647592660631641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A333147 n : ℚ)⌉

end

end A337481.P15444647592660631641

/-! ## A337481.P4657385426671009567

`floor((2^n-1)/2)-2*A111133(n)`
-/

namespace A337481.P4657385426671009567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℤ) - 1 : ℚ) / 2⌋ - 2 * A111133 n

end

end A337481.P4657385426671009567

/-! ## A337481.P8503830356157662037

`A337482(n)+A047967(n)`
-/

namespace A337481.P8503830356157662037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337482 n + A047967 n

end

end A337481.P8503830356157662037

/-! ## A337481.P221977960919921967

`A333149(n)+A261982(n)`
-/

namespace A337481.P221977960919921967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333149 n + A261982 n

end

end A337481.P221977960919921967

/-! ## A337481.P7858613270843169612

`A094373(n)-A087135(n)`
-/

namespace A337481.P7858613270843169612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A087135 n

end

end A337481.P7858613270843169612

/-!
# A337482: Number of compositions of n that are neither strictly increasing nor weakly decreasing.

The programs for A337482, there is no canonical definition to state claims against.
-/

/-! ## A337482.P17186189244975253095

`ceil(2^(n-1))-A218004(n)`
-/

namespace A337482.P17186189244975253095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A218004 n

end

end A337482.P17186189244975253095

/-! ## A337482.P7536990232003532763

`A332834(n)+A167930(n)`
-/

namespace A337482.P7536990232003532763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332834 n + A167930 n

end

end A337482.P7536990232003532763

/-! ## A337482.P2845860073959002718

`A056823(n)-A111133(n)`
-/

namespace A337482.P2845860073959002718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n - A111133 n

end

end A337482.P2845860073959002718

/-! ## A337482.P13385910548500377283

`A337698(n)-A000065(n)`
-/

namespace A337482.P13385910548500377283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 n - A000065 n

end

end A337482.P13385910548500377283

/-! ## A337482.P5471603956008269059

`A337481(n)-A047967(n)`
-/

namespace A337482.P5471603956008269059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337481 n - A047967 n

end

end A337482.P5471603956008269059

/-!
# A337483: Number of ordered triples of positive integers summing to n that are either weakly increasing or weakly decreasing.

The programs for A337483, the canonical program `A337483.P12159217978604484423` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337483 has offset 0).

The definition of A337483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337483.P12159217978604484423

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=4, a(6)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337483

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P12159217978604484423.Spec : Prop :=
  ∀ n, P12159217978604484423.a n = A337483 n

theorem P12159217978604484423.correct : P12159217978604484423.Spec := by
  intro n
  simp only [A337483]

end A337483

/-! ## A337483.P1806085285059960995

`floor(abs((1-n²)/6))`
-/

namespace A337483.P1806085285059960995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(1 - (n ^ 2 : ℤ) : ℚ) / 6|⌋

end

end A337483.P1806085285059960995

namespace A337483

/-- `floor(abs((1-n²)/6))` -/
def P1806085285059960995.Spec : Prop :=
  ∀ n, P1806085285059960995.a n = A337483 n

end A337483

/-! ## A337483.P13045347346176107967

`∑[ceil(4*n/3)%or(1, n)]`
-/

namespace A337483.P13045347346176107967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈4 * ((n : ℚ) / 3)⌉ (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337483.P13045347346176107967

namespace A337483

/-- `∑[ceil(4*n/3)%or(1, n)]` -/
def P13045347346176107967.Spec : Prop :=
  ∀ n, P13045347346176107967.a n = A337483 n

end A337483

/-! ## A337483.P2250648862919233901

`ceil(n²/6)-n²%(n+1)`
-/

namespace A337483.P2250648862919233901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 6⌉ - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A337483.P2250648862919233901

namespace A337483

/-- `ceil(n²/6)-n²%(n+1)` -/
def P2250648862919233901.Spec : Prop :=
  ∀ n, P2250648862919233901.a n = A337483 n

end A337483

/-! ## A337483.P139215056124736981

`a(n-3)-gcd(2, n)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A337483.P139215056124736981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 3) - (Nat.gcd 2 n : ℤ) + (n : ℤ)

end

end A337483.P139215056124736981

namespace A337483

/-- `a(n-3)-gcd(2, n)+n` -/
def P139215056124736981.Spec : Prop :=
  ∀ n, P139215056124736981.a n = A337483 n

end A337483

/-! ## A337483.P11164604147548108835

`round((C(n+2, 3)-(n+1))/(n+3))`
-/

namespace A337483.P11164604147548108835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 2) 3 : ℤ) - (n + 1 : ℤ) : ℚ) / (n + 3 : ℚ))

end

end A337483.P11164604147548108835

namespace A337483

/-- `round((C(n+2, 3)-(n+1))/(n+3))` -/
def P11164604147548108835.Spec : Prop :=
  ∀ n, P11164604147548108835.a n = A337483 n

end A337483

/-! ## A337483.P11027844627375825861

`∑[(and(1, n)+n)%∑[abs(1-n%3)]]`
-/

namespace A337483.P11027844627375825861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((n % 3 : ℕ) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.land 1 n + n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337483.P11027844627375825861

namespace A337483

/-- `∑[(and(1, n)+n)%∑[abs(1-n%3)]]` -/
def P11027844627375825861.Spec : Prop :=
  ∀ n, P11027844627375825861.a n = A337483 n

end A337483

/-! ## A337483.P2157571224620137976

`∑[a(n-2)+a(n-1)%2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A337483.P2157571224620137976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337483.P2157571224620137976

namespace A337483

/-- `∑[a(n-2)+a(n-1)%2]` -/
def P2157571224620137976.Spec : Prop :=
  ∀ n, (P2157571224620137976.a n : ℤ) = A337483 n

end A337483

/-! ## A337483.P7456573587359497801

`n-(Δ[n-3-a(n-3)]-a(n-3)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A337483.P7456573587359497801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  (n : ℤ) - 3 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  (n : ℤ) - (f1 (n + 1) - f1 n - a (n - 3) + 1)

end

end A337483.P7456573587359497801

namespace A337483

/-- `n-(Δ[n-3-a(n-3)]-a(n-3)+1)` -/
def P7456573587359497801.Spec : Prop :=
  ∀ n, P7456573587359497801.a n = A337483 n

end A337483

/-! ## A337483.P7992624627123174924

`n-1-(Δ[n-3-a(n-3)]-a(n-3))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A337483.P7992624627123174924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  (n : ℤ) - 3 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  (n : ℤ) - 1 - (f1 (n + 1) - f1 n - a (n - 3))

end

end A337483.P7992624627123174924

namespace A337483

/-- `n-1-(Δ[n-3-a(n-3)]-a(n-3))` -/
def P7992624627123174924.Spec : Prop :=
  ∀ n, P7992624627123174924.a n = A337483 n

end A337483

/-! ## A337483.P10853253640090409432

`A008747(abs(1-n))-1`
-/

namespace A337483.P10853253640090409432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 |1 - (n : ℤ)|.toNat - 1

end

end A337483.P10853253640090409432

namespace A337483

/-- `A008747(abs(1-n))-1` -/
def P10853253640090409432.Spec : Prop :=
  ∀ n, P10853253640090409432.a n = A337483 n

end A337483

/-! ## A337483.P15216764229510706397

`A131737(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A337483.P15216764229510706397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A131737 n + a (n - 2)

end

end A337483.P15216764229510706397

namespace A337483

/-- `A131737(n)+a(n-2)` -/
def P15216764229510706397.Spec : Prop :=
  ∀ n, P15216764229510706397.a n = A337483 n

end A337483

/-! ## A337483.P4187451633624263589

`A084672(n)%A033638(n)`
-/

namespace A337483.P4187451633624263589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084672 n) (A033638 n)

end

end A337483.P4187451633624263589

namespace A337483

/-- `A084672(n)%A033638(n)` -/
def P4187451633624263589.Spec : Prop :=
  ∀ n, P4187451633624263589.a n = A337483 n

end A337483

/-! ## A337483.P217085952270504940

`A191899(n)%A007980(n)`
-/

namespace A337483.P217085952270504940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191899 n) (A007980 n)

end

end A337483.P217085952270504940

namespace A337483

/-- `A191899(n)%A007980(n)` -/
def P217085952270504940.Spec : Prop :=
  ∀ n, P217085952270504940.a n = A337483 n

end A337483

/-! ## A337483.P3889447455383073900

`A000217(n)%A281333(n)`
-/

namespace A337483.P3889447455383073900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A281333 n)

end

end A337483.P3889447455383073900

namespace A337483

/-- `A000217(n)%A281333(n)` -/
def P3889447455383073900.Spec : Prop :=
  ∀ n, P3889447455383073900.a n = A337483 n

end A337483

/-! ## A337483.P12031548688209251327

`A397975(n)%A317186(n)`
-/

namespace A337483.P12031548688209251327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397975 n) (A317186 n)

end

end A337483.P12031548688209251327

namespace A337483

/-- `A397975(n)%A317186(n)` -/
def P12031548688209251327.Spec : Prop :=
  ∀ n, P12031548688209251327.a n = A337483 n

end A337483

/-! ## A337483.P15041406471007825233

`A397977(n)%A389614(n)`
-/

namespace A337483.P15041406471007825233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397977 n) (A389614 n)

end

end A337483.P15041406471007825233

namespace A337483

/-- `A397977(n)%A389614(n)` -/
def P15041406471007825233.Spec : Prop :=
  ∀ n, P15041406471007825233.a n = A337483 n

end A337483

/-! ## A337483.P17454401688750475656

`A230059(n+1)+A069905(n)`
-/

namespace A337483.P17454401688750475656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230059 (n + 1) + A069905 n

end

end A337483.P17454401688750475656

namespace A337483

/-- `A230059(n+1)+A069905(n)` -/
def P17454401688750475656.Spec : Prop :=
  ∀ n, P17454401688750475656.a n = A337483 n

end A337483

/-! ## A337483.P11980843191875135278

`A076921(n+1)-A001399(n)`
-/

namespace A337483.P11980843191875135278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1) - A001399 n

end

end A337483.P11980843191875135278

namespace A337483

/-- `A076921(n+1)-A001399(n)` -/
def P11980843191875135278.Spec : Prop :=
  ∀ n, P11980843191875135278.a n = A337483 n

end A337483

/-! ## A337483.P12020018769089734678

`A080476(n+1)-A007980(n)`
-/

namespace A337483.P12020018769089734678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A007980 n

end

end A337483.P12020018769089734678

namespace A337483

/-- `A080476(n+1)-A007980(n)` -/
def P12020018769089734678.Spec : Prop :=
  ∀ n, P12020018769089734678.a n = A337483 n

end A337483

/-!
# A337484: Number of ordered triples of positive integers summing to n that are neither strictly increasing nor strictly decreasing.

The programs for A337484, the canonical program `A337484.P13495876919079178436` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337484 has offset 0).

The definition of A337484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337484.P13495876919079178436

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337484

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P13495876919079178436.Spec : Prop :=
  ∀ n, P13495876919079178436.a n = A337484 n

theorem P13495876919079178436.correct : P13495876919079178436.Spec := by
  intro n
  simp only [A337484]

end A337484

/-! ## A337484.P6680476856395155300

`∑[xor(1, a(n-3)+2)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A337484.P6680476856395155300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n f1 =>
  Nat.xor 1 (f1 (n - 3) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337484.P6680476856395155300

namespace A337484

/-- `∑[xor(1, a(n-3)+2)]` -/
def P6680476856395155300.Spec : Prop :=
  ∀ n, (P6680476856395155300.a n : ℤ) = A337484 n

end A337484

/-! ## A337484.P7226409586662985632

`ceil(n²/3)-Δ[floor(cosh(log(n+1))²)]`
-/

namespace A337484.P7226409586662985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉ - (f1 (n + 1) - f1 n)

end

end A337484.P7226409586662985632

namespace A337484

/-- `ceil(n²/3)-Δ[floor(cosh(log(n+1))²)]` -/
def P7226409586662985632.Spec : Prop :=
  ∀ n, P7226409586662985632.a n = A337484 n

end A337484

/-! ## A337484.P623679050564370954

`floor(abs((1-n²)/6))+∑[ceil(n/3)]-n`
-/

namespace A337484.P623679050564370954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(1 - (n ^ 2 : ℤ) : ℚ) / 6|⌋ + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A337484.P623679050564370954

namespace A337484

/-- `floor(abs((1-n²)/6))+∑[ceil(n/3)]-n` -/
def P623679050564370954.Spec : Prop :=
  ∀ n, P623679050564370954.a n = A337484 n

end A337484

/-! ## A337484.P597348823219643009

`ceil(2/3*n²)%ceil((2*n+1)*(n+1)/6)`
-/

namespace A337484.P597348823219643009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉ ⌈((2 * n + 1) * (n + 1) : ℚ) / 6⌉

end

end A337484.P597348823219643009

namespace A337484

/-- `ceil(2/3*n²)%ceil((2*n+1)*(n+1)/6)` -/
def P597348823219643009.Spec : Prop :=
  ∀ n, P597348823219643009.a n = A337484 n

end A337484

/-! ## A337484.P3269401417558753371

`floor(abs((n+1)/2-A008810(n)))`
-/

namespace A337484.P3269401417558753371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(n + 1 : ℚ) / 2 - (A008810 n : ℚ)|⌋

end

end A337484.P3269401417558753371

namespace A337484

/-- `floor(abs((n+1)/2-A008810(n)))` -/
def P3269401417558753371.Spec : Prop :=
  ∀ n, P3269401417558753371.a n = A337484 n

end A337484

/-! ## A337484.P12497565085871475085

`∑[(2*n)%(2*A103221(n)+n)]`
-/

namespace A337484.P12497565085871475085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (2 * A103221 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337484.P12497565085871475085

namespace A337484

/-- `∑[(2*n)%(2*A103221(n)+n)]` -/
def P12497565085871475085.Spec : Prop :=
  ∀ n, P12497565085871475085.a n = A337484 n

end A337484

/-!
# A337485: Number of pairwise coprime integer partitions of n with no 1's, where a singleton is not considered coprime unless it is (1).

The programs for A337485, there is no canonical definition to state claims against.
-/

/-! ## A337485.P15821232259772663655

`A007359(char[1]+n)-1`
-/

namespace A337485.P15821232259772663655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1

end

end A337485.P15821232259772663655

/-! ## A337485.P11157508378306110821

`floor(floor(ϕ*A007359(n))/ϕ)`
-/

namespace A337485.P11157508378306110821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.goldenRatio * (A007359 n : ℝ)⌋ : ℝ) / Real.goldenRatio⌋

end

end A337485.P11157508378306110821

/-! ## A337485.P14508073725750678850

`abs(A007359(n)-A060576(n))`
-/

namespace A337485.P14508073725750678850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007359 n - A060576 n|

end

end A337485.P14508073725750678850

/-! ## A337485.P13244846664204248431

`A054354(A078649(n+1))+A007359(n)-A060576(n)`
-/

namespace A337485.P13244846664204248431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A078649 (n + 1)).toNat + (A007359 n - A060576 n)

end

end A337485.P13244846664204248431

/-! ## A337485.P17269635080946678247

`A007360(n+1)-Δ[A051424(n)]-A060576(n)`
-/

namespace A337485.P17269635080946678247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) - (f1 (n + 1) - f1 n) - A060576 n

end

end A337485.P17269635080946678247

/-! ## A337485.P13707272029463471834

`A007360(n+1)+A051424(n)-A051424(n+1)-A060576(n)`
-/

namespace A337485.P13707272029463471834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) + (A051424 n - A051424 (n + 1)) - A060576 n

end

end A337485.P13707272029463471834

/-! ## A337485.P16806801730730512663

`A305713(n+1)+A051424(n)-A327516(n+1)-A060576(n)`
-/

namespace A337485.P16806801730730512663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1) + (A051424 n - A327516 (n + 1)) - A060576 n

end

end A337485.P16806801730730512663

/-! ## A337485.P11574123900128337064

`Δ[A327516(n+1)-A305713(n+1)]-A060576(n)`
-/

namespace A337485.P11574123900128337064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (n + 1) - A305713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060576 n

end

end A337485.P11574123900128337064

/-! ## A337485.P2680958593343029025

`∑{e}[A008578(A007359(n+3)), A007359(n)-#]`
-/

namespace A337485.P2680958593343029025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007359 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A007359 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A337485.P2680958593343029025

/-! ## A337485.P3804575240698749485

`∑{e}[A008578(A051424(n)), A007359(n)-#]`
-/

namespace A337485.P3804575240698749485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A051424 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A007359 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A337485.P3804575240698749485

/-!
# A337486: Numbers k such that b(k+1) divides b(k), where b() is Recamán's multiplicative sequence A008336.

The programs for A337486, there is no canonical definition to state claims against.
-/

/-! ## A337486.P8725768855643773905

`A370969(n)+a(n-1)` with `a(0)=1`
-/

namespace A337486.P8725768855643773905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A370969 n + a (n - 1)

end

end A337486.P8725768855643773905

/-! ## A337486.P9718682205652466626

`record[gcd(n+5, A008336(n+4))]`
-/

namespace A337486.P9718682205652466626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A008336 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337486.P9718682205652466626

/-! ## A337486.P3217484030884699013

`record[A008336(n+1)/A008336(n+2)]`
-/

namespace A337486.P3217484030884699013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008336 (n + 1) : ℚ) / (A008336 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337486.P3217484030884699013

/-! ## A337486.P9576319815897164128

`record[ratio[A195504(n+1)]]`
-/

namespace A337486.P9576319815897164128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195504 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337486.P9576319815897164128

/-! ## A337486.P4026959289957462037

`lt[Δ[A008336(n+1)], A339218(n)]+1`
-/

namespace A337486.P4026959289957462037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A337486.P4026959289957462037

/-!
# A337487: De Polignac numbers k > 1 such that k - 2^m is a de Polignac number for every 1 < 2^m < k.

The programs for A337487, there is no canonical definition to state claims against.
-/

/-! ## A337487.P17660538628345010747

`A156695(A120126(n)+6)`
-/

namespace A337487.P17660538628345010747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (A120126 n + 6).toNat

end

end A337487.P17660538628345010747

/-! ## A337487.P3803230199313428906

`A156695(A351870(n)+6)`
-/

namespace A337487.P3803230199313428906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (A351870 n + 6).toNat

end

end A337487.P3803230199313428906

/-! ## A337487.P15128204291042919846

`A156695(A061147(n+1)+5)`
-/

namespace A337487.P15128204291042919846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (A061147 (n + 1) + 5).toNat

end

end A337487.P15128204291042919846

/-! ## A337487.P7648925319315178104

`A156695(A065672(n+4)+2)`
-/

namespace A337487.P7648925319315178104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (A065672 (n + 4) + 2).toNat

end

end A337487.P7648925319315178104

/-! ## A337487.P1403914592742514661

`A156695(A001222(3^n)+6)`
-/

namespace A337487.P1403914592742514661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (A001222 (3 ^ n) + 6).toNat

end

end A337487.P1403914592742514661

/-!
# A337488: a(n) is the index k of prime(k), such that abs(prime(k) - Sum_{j=k-1..k+1} prime(j)/3) sets a new record.

The programs for A337488, there is no canonical definition to state claims against.
-/

/-! ## A337488.P9573422329826798993

`A000720(A337489(n+1))`
-/

namespace A337488.P9573422329826798993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A337489 (n + 1)).toNat

end

end A337488.P9573422329826798993

/-! ## A337488.P12974739480461319304

`A061395(p?[A337489(n+1)])`
-/

namespace A337488.P12974739480461319304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A337488.P12974739480461319304

/-! ## A337488.P4730526654966758608

`A061395(2*A337489(n+1))`
-/

namespace A337488.P4730526654966758608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A337489 (n + 1)).toNat

end

end A337488.P4730526654966758608

/-! ## A337488.P13234547499330125438

`A061395(lcm(2, A337489(n+1)))`
-/

namespace A337488.P13234547499330125438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A337489 (n + 1)))

end

end A337488.P13234547499330125438

/-! ## A337488.P4413649777695799041

`A061395(or(1, A337489(n+1)))`
-/

namespace A337488.P4413649777695799041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A337489 (n + 1))).toNat

end

end A337488.P4413649777695799041

/-!
# A337489: a(n) is the k-th prime, such that abs(prime(k) - Sum_{j=k-1..k+1} prime(j)/3) sets a new record.

The programs for A337489, there is no canonical definition to state claims against.
-/

/-! ## A337489.P5451560593563923194

`A001748(A337488(n+1))/3`
-/

namespace A337489.P5451560593563923194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A337488 (n + 1)).toNat : ℚ) / 3

end

end A337489.P5451560593563923194

/-! ## A337489.P7089032359921103279

`A000040(A337488(n+1))`
-/

namespace A337489.P7089032359921103279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A337488 (n + 1)).toNat

end

end A337489.P7089032359921103279

/-! ## A337489.P1363035781749088233

`A008578(A337488(n+1)+1)`
-/

namespace A337489.P1363035781749088233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A337488 (n + 1) + 1).toNat

end

end A337489.P1363035781749088233

/-! ## A337489.P5695665721550734401

`A182986(A337488(n+1)+1)`
-/

namespace A337489.P5695665721550734401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A337488 (n + 1) + 1).toNat

end

end A337489.P5695665721550734401

/-! ## A337489.P7381713592218483966

`A065091(A337488(n+1)-1)`
-/

namespace A337489.P7381713592218483966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A337488 (n + 1) - 1).toNat

end

end A337489.P7381713592218483966

/-!
# A337491: Numbers k such that exactly one of 2*k + 3 and 4*k + 3 is prime.

The programs for A337491, the canonical program `A337491.P12360132993066818082` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337491 has offset 1).

The definition of A337491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337491.P12360132993066818082

`eq[1, A101264(2*n+1)+A101264(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A337491

/-- `eq[1, A101264(2*n+1)+A101264(n+1)]` -/
def P12360132993066818082.Spec : Prop :=
  ∀ n, (P12360132993066818082.a n : ℤ) = A337491 (n + 1)

theorem P12360132993066818082.correct : P12360132993066818082.Spec := by
  intro n
  simp only [A337491, Nat.add_sub_cancel]

end A337491

/-! ## A337491.P10365990184535480319

`eq[A005171(2*n+3), A101264(A005408(n))]`
-/

namespace A337491.P10365990184535480319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337491.P10365990184535480319

namespace A337491

/-- `eq[A005171(2*n+3), A101264(A005408(n))]` -/
def P10365990184535480319.Spec : Prop :=
  ∀ n, (P10365990184535480319.a n : ℤ) = A337491 (n + 1)

end A337491

/-! ## A337491.P9530231670547331987

`eq[2, A204897(2*n+1)*A204897(4*n+1)]`
-/

namespace A337491.P9530231670547331987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (2 * n + 1) * A204897 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337491.P9530231670547331987

namespace A337491

/-- `eq[2, A204897(2*n+1)*A204897(4*n+1)]` -/
def P9530231670547331987.Spec : Prop :=
  ∀ n, (P9530231670547331987.a n : ℤ) = A337491 (n + 1)

end A337491

/-! ## A337491.P9305839709724464648

`eq[A090405(2*n+1), A285982(A285982(4*n))]`
-/

namespace A337491.P9305839709724464648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A285982 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337491.P9305839709724464648

namespace A337491

/-- `eq[A090405(2*n+1), A285982(A285982(4*n))]` -/
def P9305839709724464648.Spec : Prop :=
  ∀ n, (P9305839709724464648.a n : ℤ) = A337491 (n + 1)

end A337491

/-! ## A337491.P799650204720224097

`eq[1, A090405(2*n+1)+A090405(4*n+1)]`
-/

namespace A337491.P799650204720224097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (2 * n + 1) + A090405 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337491.P799650204720224097

namespace A337491

/-- `eq[1, A090405(2*n+1)+A090405(4*n+1)]` -/
def P799650204720224097.Spec : Prop :=
  ∀ n, (P799650204720224097.a n : ℤ) = A337491 (n + 1)

end A337491

/-! ## A337491.P14787168096997054543

`eq[1, A090406(2*n+1)+A090406(4*n+1)]`
-/

namespace A337491.P14787168096997054543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * n + 1) + A090406 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337491.P14787168096997054543

namespace A337491

/-- `eq[1, A090406(2*n+1)+A090406(4*n+1)]` -/
def P14787168096997054543.Spec : Prop :=
  ∀ n, (P14787168096997054543.a n : ℤ) = A337491 (n + 1)

end A337491

/-! ## A337491.P2894495136609526408

`eq[A092953(2*n+1), A170773(A092953(4*n+1))]`
-/

namespace A337491.P2894495136609526408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170773 (A092953 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337491.P2894495136609526408

namespace A337491

/-- `eq[A092953(2*n+1), A170773(A092953(4*n+1))]` -/
def P2894495136609526408.Spec : Prop :=
  ∀ n, (P2894495136609526408.a n : ℤ) = A337491 (n + 1)

end A337491

/-!
# A337492: a(n) = a(n-1) + 4*a(n-3) + 2*a(n-4) + 2*a(n-5); a(0) = a(1) = a(2) = 1, a(3) = 5, a(4) = 11.

The programs for A337492, the canonical program `A337492.P15627721045828576592` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337492 has offset 0).

The definition of A337492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-3)+2*a(n-4)+2*a(n-5)` (program `A337492.P15627721045828576592`, by `A337492.P15627721045828576592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A337492.P15627721045828576592

`a(n-1)+4*a(n-3)+2*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A337492

/-- `a(n-1)+4*a(n-3)+2*a(n-4)+2*a(n-5)` -/
def P15627721045828576592.Spec : Prop :=
  ∀ n, (P15627721045828576592.a n : ℤ) = A337492 n

theorem P15627721045828576592.correct : P15627721045828576592.Spec := by
  intro n
  simp only [A337492]

end A337492

/-! ## A337492.P189994467677445162

`or(A000670(A324088(n+1)), A375316(n))`
-/

namespace A337492.P189994467677445162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000670 (A324088 (n + 1)).toNat) (A375316 n)

end

end A337492.P189994467677445162

namespace A337492

/-- `or(A000670(A324088(n+1)), A375316(n))` -/
def P189994467677445162.Spec : Prop :=
  ∀ n, P189994467677445162.a n = A337492 n

end A337492

/-! ## A337492.P17691735644941630599

`or(A275972(A185264(3*n+4)), A375316(n))`
-/

namespace A337492.P17691735644941630599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275972 (A185264 (3 * n + 4)).toNat) (A375316 n)

end

end A337492.P17691735644941630599

namespace A337492

/-- `or(A275972(A185264(3*n+4)), A375316(n))` -/
def P17691735644941630599.Spec : Prop :=
  ∀ n, P17691735644941630599.a n = A337492 n

end A337492

/-!
# A337495: Maximum number of preimages that a permutation of length n can have under the consecutive-123-avoiding stack-sorting map.

The programs for A337495, there is no canonical definition to state claims against.
-/

/-! ## A337495.P5232329753770548491

`ceil((cos((n+1)^n)+ϕ^n+1)/3)`
-/

namespace A337495.P5232329753770548491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos ((n + 1) ^ n : ℝ) + Real.goldenRatio ^ n + 1) / 3⌉

end

end A337495.P5232329753770548491

/-! ## A337495.P9141455230782368543

`round(root(A350340(n), 9))`
-/

namespace A337495.P9141455230782368543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A350340 n : ℝ) ^ (1 / (9 : ℝ)))

end

end A337495.P9141455230782368543

/-! ## A337495.P12632551786114601208

`A025048(n)+char[10]`
-/

namespace A337495.P12632551786114601208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025048 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337495.P12632551786114601208

/-! ## A337495.P12154502353142177346

`A113435(n)+char[10]`
-/

namespace A337495.P12154502353142177346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337495.P12154502353142177346

/-! ## A337495.P18053051806700088697

`round(sqrt(A024959(n+1)))`
-/

namespace A337495.P18053051806700088697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A024959 (n + 1) : ℝ))

end

end A337495.P18053051806700088697

/-!
# A337496: Number of bases b for which the expansion of n in base b contains the largest digit possible (i.e., the digit b-1).

The programs for A337496, there is no canonical definition to state claims against.
-/

/-! ## A337496.P15109804324103117164

`A051904(A306753(n))+A038809(n)`
-/

namespace A337496.P15109804324103117164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A306753 n).toNat + A038809 n

end

end A337496.P15109804324103117164

/-! ## A337496.P13581310663139426732

`A317624(A323522(n))+A038809(n)`
-/

namespace A337496.P13581310663139426732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (A323522 n).toNat + A038809 n

end

end A337496.P13581310663139426732

/-! ## A337496.P17474487591072704730

`A261423(n)-A001222(A130760(n))`
-/

namespace A337496.P17474487591072704730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n - A001222 (A130760 n).toNat

end

end A337496.P17474487591072704730

/-! ## A337496.P6588660776374094946

`A103921(A000217(n)*A344293(n+1))`
-/

namespace A337496.P6588660776374094946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A000217 n * A344293 (n + 1)).toNat

end

end A337496.P6588660776374094946

/-! ## A337496.P5244995504819536345

`A371090(C(A008000(n), A371090(n+1)))`
-/

namespace A337496.P5244995504819536345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371090 (Nat.choose (A008000 n).toNat (A371090 (n + 1)).toNat)

end

end A337496.P5244995504819536345

/-!
# A337498: a(0) = 0; for n>0, a(n) = the smallest positive integer m not yet in the sequence with property that none of the numbers in row m of A193829 have occurred previously in the sequence.

The programs for A337498, there is no canonical definition to state claims against.
-/

/-! ## A337498.P6759476361405949857

`xor(A004134(n), A254379(A072863(n)))`
-/

namespace A337498.P6759476361405949857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004134 n) (A254379 (A072863 n).toNat)

end

end A337498.P6759476361405949857

/-!
# A337499: a(n) is the number of ballot sequences of length n tied or won by at most 2 votes.

The programs for A337499, the canonical program `A337499.P4185763426435453726` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337499 has offset 0).

The definition of A337499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337499.P9708169046181171438

`A128015(n)+A037952(n)`
-/

namespace A337499.P9708169046181171438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n + A037952 n

end

end A337499.P9708169046181171438

namespace A337499

/-- `A128015(n)+A037952(n)` -/
def P9708169046181171438.Spec : Prop :=
  ∀ n, P9708169046181171438.a n = A337499 n

end A337499

/-! ## A337499.P4185763426435453726

`A128014(n+2)-A126869(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A337499

/-- `A128014(n+2)-A126869(n)` -/
def P4185763426435453726.Spec : Prop :=
  ∀ n, P4185763426435453726.a n = A337499 n

theorem P4185763426435453726.correct : P4185763426435453726.Spec := by
  intro n
  simp only [A337499]

end A337499

/-! ## A337499.P17221126945004856900

`A037952(or(1, n))+A037952(n)`
-/

namespace A337499.P17221126945004856900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (Nat.lor 1 n) + A037952 n

end

end A337499.P17221126945004856900

namespace A337499

/-- `A037952(or(1, n))+A037952(n)` -/
def P17221126945004856900.Spec : Prop :=
  ∀ n, P17221126945004856900.a n = A337499 n

end A337499

/-! ## A337499.P2392831498925428808

`A126869(n+2)+Δ[A126869(n)]`
-/

namespace A337499.P2392831498925428808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 2) + (f1 (n + 1) - f1 n)

end

end A337499.P2392831498925428808

namespace A337499

/-- `A126869(n+2)+Δ[A126869(n)]` -/
def P2392831498925428808.Spec : Prop :=
  ∀ n, P2392831498925428808.a n = A337499 n

end A337499

/-! ## A337499.P5026274311829600808

`A037952(n)+A037952(A109613(n))`
-/

namespace A337499.P5026274311829600808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + A037952 (A109613 n).toNat

end

end A337499.P5026274311829600808

namespace A337499

/-- `A037952(n)+A037952(A109613(n))` -/
def P5026274311829600808.Spec : Prop :=
  ∀ n, P5026274311829600808.a n = A337499 n

end A337499

/-! ## A337499.P17068812672356993252

`A126869(A052928(n+2))-A126869(n)`
-/

namespace A337499.P17068812672356993252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A052928 (n + 2)).toNat - A126869 n

end

end A337499.P17068812672356993252

namespace A337499

/-- `A126869(A052928(n+2))-A126869(n)` -/
def P17068812672356993252.Spec : Prop :=
  ∀ n, P17068812672356993252.a n = A337499 n

end A337499

/-! ## A337499.P913110671214833015

`A126869(2*A008619(n))-A126869(n)`
-/

namespace A337499.P913110671214833015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * A008619 n).toNat - A126869 n

end

end A337499.P913110671214833015

namespace A337499

/-- `A126869(2*A008619(n))-A126869(n)` -/
def P913110671214833015.Spec : Prop :=
  ∀ n, P913110671214833015.a n = A337499 n

end A337499

/-! ## A337499.P14985812657577803616

`A037952(n)+A037952(A059841(n)+n)`
-/

namespace A337499.P14985812657577803616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + A037952 (A059841 n + (n : ℤ)).toNat

end

end A337499.P14985812657577803616

namespace A337499

/-- `A037952(n)+A037952(A059841(n)+n)` -/
def P14985812657577803616.Spec : Prop :=
  ∀ n, P14985812657577803616.a n = A337499 n

end A337499

/-! ## A337499.P15450348268634728148

`A001405(n+1)+A001405(n)-A057977(n)`
-/

namespace A337499.P15450348268634728148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A001405 n - A057977 n)

end

end A337499.P15450348268634728148

namespace A337499

/-- `A001405(n+1)+A001405(n)-A057977(n)` -/
def P15450348268634728148.Spec : Prop :=
  ∀ n, P15450348268634728148.a n = A337499 n

end A337499

/-! ## A337499.P8721819666691658819

`A001405(n+1)+A126869(n)-A126120(n)`
-/

namespace A337499.P8721819666691658819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A126869 n - A126120 n)

end

end A337499.P8721819666691658819

namespace A337499

/-- `A001405(n+1)+A126869(n)-A126120(n)` -/
def P8721819666691658819.Spec : Prop :=
  ∀ n, P8721819666691658819.a n = A337499 n

end A337499

/-! ## A337499.P6791306787856885798

`A001405(n+1)+A138364(n+1)-A126869(n)`
-/

namespace A337499.P6791306787856885798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A138364 (n + 1) - A126869 n)

end

end A337499.P6791306787856885798

namespace A337499

/-- `A001405(n+1)+A138364(n+1)-A126869(n)` -/
def P6791306787856885798.Spec : Prop :=
  ∀ n, P6791306787856885798.a n = A337499 n

end A337499

/-! ## A337499.P9443022284587806332

`A001405(n+1)+A000035(n+1)*A037952(n)`
-/

namespace A337499.P9443022284587806332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + A000035 (n + 1) * A037952 n

end

end A337499.P9443022284587806332

namespace A337499

/-- `A001405(n+1)+A000035(n+1)*A037952(n)` -/
def P9443022284587806332.Spec : Prop :=
  ∀ n, P9443022284587806332.a n = A337499 n

end A337499

/-! ## A337499.P8243259204382393560

`A001405(n+1)+A001405(n+1)-A128014(n+1)`
-/

namespace A337499.P8243259204382393560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A001405 (n + 1) - A128014 (n + 1))

end

end A337499.P8243259204382393560

namespace A337499

/-- `A001405(n+1)+A001405(n+1)-A128014(n+1)` -/
def P8243259204382393560.Spec : Prop :=
  ∀ n, P8243259204382393560.a n = A337499 n

end A337499

/-! ## A337499.P8091118338381145878

`∪[A051924(n+1), A000984(n)]`
-/

namespace A337499.P8091118338381145878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A337499.P8091118338381145878

namespace A337499

/-- `∪[A051924(n+1), A000984(n)]` -/
def P8091118338381145878.Spec : Prop :=
  ∀ n, (P8091118338381145878.a n : ℤ) = A337499 n

end A337499

/-! ## A337499.P10942908508170581699

`Δ[A100066(n)+A063886(n+1)]`
-/

namespace A337499.P10942908508170581699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 n + A063886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337499.P10942908508170581699

namespace A337499

/-- `Δ[A100066(n)+A063886(n+1)]` -/
def P10942908508170581699.Spec : Prop :=
  ∀ n, P10942908508170581699.a n = A337499 n

end A337499

/-! ## A337499.P13910940006869530399

`A063886(n+2)-A128014(n+1)`
-/

namespace A337499.P13910940006869530399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 2) - A128014 (n + 1)

end

end A337499.P13910940006869530399

namespace A337499

/-- `A063886(n+2)-A128014(n+1)` -/
def P13910940006869530399.Spec : Prop :=
  ∀ n, P13910940006869530399.a n = A337499 n

end A337499

/-! ## A337499.P2184856838138258173

`2*A001405(n+1)-A128014(n+1)`
-/

namespace A337499.P2184856838138258173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 (n + 1) - A128014 (n + 1)

end

end A337499.P2184856838138258173

namespace A337499

/-- `2*A001405(n+1)-A128014(n+1)` -/
def P2184856838138258173.Spec : Prop :=
  ∀ n, P2184856838138258173.a n = A337499 n

end A337499

/-! ## A337499.P1706574443042279356

`record[A274292(lt[A065600(n), 2])]`
-/

namespace A337499.P1706574443042279356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337499.P1706574443042279356

namespace A337499

/-- `record[A274292(lt[A065600(n), 2])]` -/
def P1706574443042279356.Spec : Prop :=
  ∀ n, P1706574443042279356.a n = A337499 n

end A337499

/-! ## A337499.P3667031607054109509

`Δ[A001405(n)*A038754(n)]/A038754(n)`
-/

namespace A337499.P3667031607054109509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A038754 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A038754 n : ℚ)

end

end A337499.P3667031607054109509

namespace A337499

/-- `Δ[A001405(n)*A038754(n)]/A038754(n)` -/
def P3667031607054109509.Spec : Prop :=
  ∀ n, P3667031607054109509.a n = (A337499 n : ℚ)

end A337499

/-! ## A337499.P13087837917300653196

`A375659(A266663(n))`
-/

namespace A337499.P13087837917300653196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375659 (A266663 n).toNat

end

end A337499.P13087837917300653196

namespace A337499

/-- `A375659(A266663(n))` -/
def P13087837917300653196.Spec : Prop :=
  ∀ n, P13087837917300653196.a n = A337499 n

end A337499

