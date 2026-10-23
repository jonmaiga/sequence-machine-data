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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A244200: Number of ballot sequences of length n having largest descent 4.

The programs for A244200, there is no canonical definition to state claims against.
-/

/-! ## A244200.P4585223814395421675

`record[A238129(n)/A334561(n)]`
-/

namespace A244200.P4585223814395421675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238129 n : ℚ) / (A334561 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244200.P4585223814395421675

/-! ## A244200.P4242676959553322691

`A238128(A167614(n+5)+1)`
-/

namespace A244200.P4242676959553322691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 5) + 1).toNat

end

end A244200.P4242676959553322691

/-! ## A244200.P15502141520369570625

`A238129(A167614(n+5)+1)`
-/

namespace A244200.P15502141520369570625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A167614 (n + 5) + 1).toNat

end

end A244200.P15502141520369570625

/-! ## A244200.P8453472722066719616

`A238129(A000124(n+6)+3)`
-/

namespace A244200.P8453472722066719616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000124 (n + 6) + 3).toNat

end

end A244200.P8453472722066719616

/-!
# A244201: Number of ballot sequences of length n having largest descent 5.

The programs for A244201, there is no canonical definition to state claims against.
-/

/-! ## A244201.P6412123281471395686

`record[A238129(A167487(n)-2)]`
-/

namespace A244201.P6412123281471395686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A167487 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244201.P6412123281471395686

/-! ## A244201.P15478342191515536365

`record[A238129(A000096(n)+6)]`
-/

namespace A244201.P15478342191515536365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000096 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244201.P15478342191515536365

/-! ## A244201.P918699238413271640

`A238128(A000124(n+7)+4)`
-/

namespace A244201.P918699238413271640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A000124 (n + 7) + 4).toNat

end

end A244201.P918699238413271640

/-! ## A244201.P11688446972491447217

`A238128(A000217(n+7)+5)`
-/

namespace A244201.P11688446972491447217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A000217 (n + 7) + 5).toNat

end

end A244201.P11688446972491447217

/-! ## A244201.P5125936144941508648

`record[A238129(A167614(n+1)-n)]`
-/

namespace A244201.P5125936144941508648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A167614 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244201.P5125936144941508648

/-!
# A244202: Number of ballot sequences of length n having largest descent 6.

The programs for A244202, there is no canonical definition to state claims against.
-/

/-! ## A244202.P16779286454512721489

`A238128(A167499(n+7)+1)`
-/

namespace A244202.P16779286454512721489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167499 (n + 7) + 1).toNat

end

end A244202.P16779286454512721489

/-! ## A244202.P9409359415262132346

`A238128(A167614(n+7)+3)`
-/

namespace A244202.P9409359415262132346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 7) + 3).toNat

end

end A244202.P9409359415262132346

/-! ## A244202.P15351464303499602209

`A238128(A000096(n+7)+7)`
-/

namespace A244202.P15351464303499602209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A000096 (n + 7) + 7).toNat

end

end A244202.P15351464303499602209

/-! ## A244202.P17422714518204306051

`A238129(A000217(n+8)+6)`
-/

namespace A244202.P17422714518204306051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000217 (n + 8) + 6).toNat

end

end A244202.P17422714518204306051

/-! ## A244202.P13024367463652873513

`record[A238129(A055999(n+2)+12)]`
-/

namespace A244202.P13024367463652873513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A055999 (n + 2) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244202.P13024367463652873513

/-!
# A244203: Number of ballot sequences of length n having largest descent 7.

The programs for A244203, there is no canonical definition to state claims against.
-/

/-! ## A244203.P5782497145495780702

`A238128(A167499(n+8)+2)`
-/

namespace A244203.P5782497145495780702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167499 (n + 8) + 2).toNat

end

end A244203.P5782497145495780702

/-! ## A244203.P1608342900686739517

`A238128(A167614(n+8)+4)`
-/

namespace A244203.P1608342900686739517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 8) + 4).toNat

end

end A244203.P1608342900686739517

/-! ## A244203.P10011851502845180773

`record[A238129(A000217(n+6)+7)]`
-/

namespace A244203.P10011851502845180773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000217 (n + 6) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244203.P10011851502845180773

/-! ## A244203.P910835238548627611

`record[A238129(∑[A160755(n+1)-1])]`
-/

namespace A244203.P910835238548627611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244203.P910835238548627611

/-! ## A244203.P15638550099291059667

`record[A238129(∑[A160755(n+1)]+n)]`
-/

namespace A244203.P15638550099291059667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244203.P15638550099291059667

/-!
# A244204: Number of ballot sequences of length n having largest descent 8.

The programs for A244204, there is no canonical definition to state claims against.
-/

/-! ## A244204.P18298127056496527388

`A238128(A167614(n+9)+5)`
-/

namespace A244204.P18298127056496527388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 9) + 5).toNat

end

end A244204.P18298127056496527388

/-! ## A244204.P16886261755045551499

`record[A238129(∑[A160755(n+1)])]`
-/

namespace A244204.P16886261755045551499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244204.P16886261755045551499

/-! ## A244204.P7345065340611297047

`record[A238129(A167487(n+6)+1)]`
-/

namespace A244204.P7345065340611297047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A167487 (n + 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244204.P7345065340611297047

/-! ## A244204.P8920463674975091810

`A238129(A000124(n+12)-A005843(n+8))`
-/

namespace A244204.P8920463674975091810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000124 (n + 12) - A005843 (n + 8)).toNat

end

end A244204.P8920463674975091810

/-! ## A244204.P3295213840459594912

`A238129(A005843(n+13)+A000124(n+8))`
-/

namespace A244204.P3295213840459594912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A005843 (n + 13) + A000124 (n + 8)).toNat

end

end A244204.P3295213840459594912

/-!
# A244205: Number of ballot sequences of length n having largest descent 9.

The programs for A244205, there is no canonical definition to state claims against.
-/

/-! ## A244205.P1391550064129248582

`A238128(A167614(n+10)+6)`
-/

namespace A244205.P1391550064129248582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A167614 (n + 10) + 6).toNat

end

end A244205.P1391550064129248582

/-! ## A244205.P14373734146203318699

`A238128(A161680(n+12)+9)`
-/

namespace A244205.P14373734146203318699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238128 (A161680 (n + 12) + 9).toNat

end

end A244205.P14373734146203318699

/-! ## A244205.P4230697546937807302

`A238129(A046691(n+1)+A017077(n+9))`
-/

namespace A244205.P4230697546937807302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A046691 (n + 1) + A017077 (n + 9)).toNat

end

end A244205.P4230697546937807302

/-!
# A244206: Number of ballot sequences of length n having largest descent 10.

The programs for A244206, there is no canonical definition to state claims against.
-/

/-! ## A244206.P3463113102639084865

`record[A238129(A000096(n+8)+11)]`
-/

namespace A244206.P3463113102639084865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000096 (n + 8) + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244206.P3463113102639084865

/-! ## A244206.P4087067878037056928

`A238129(A000124(n+14)-A005843(n+9))`
-/

namespace A244206.P4087067878037056928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (A000124 (n + 14) - A005843 (n + 9)).toNat

end

end A244206.P4087067878037056928

/-!
# A244207: Numbers 2m such that A020482(m) != A060308(m-1).

The programs for A244207, there is no canonical definition to state claims against.
-/

/-! ## A244207.P14411251775668937141

`2*A135145(n+1)`
-/

namespace A244207.P14411251775668937141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135145 (n + 1)

end

end A244207.P14411251775668937141

/-! ## A244207.P16083307370355396641

`A135145(n+1)+A135145((n+1)%A007821(n+1))`
-/

namespace A244207.P16083307370355396641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135145 (n + 1) + A135145 (Int.tmod (n + 1 : ℤ) (A007821 (n + 1))).toNat

end

end A244207.P16083307370355396641

/-! ## A244207.P13151452971951671775

`A135145(n+1)+A135145(n+1)%A157527(n+1)`
-/

namespace A244207.P13151452971951671775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135145 (n + 1) + Int.tmod (A135145 (n + 1)) (A157527 (n + 1))

end

end A244207.P13151452971951671775

/-! ## A244207.P13738340284308380521

`A004277(A135145(n+1))`
-/

namespace A244207.P13738340284308380521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A135145 (n + 1)).toNat

end

end A244207.P13738340284308380521

/-! ## A244207.P12758230992767842627

`A004273(A135145(n+1)+1)-1`
-/

namespace A244207.P12758230992767842627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A135145 (n + 1) + 1).toNat - 1

end

end A244207.P12758230992767842627

/-! ## A244207.P14973889346233039486

`A005408(A135145(n+1)-1)+1`
-/

namespace A244207.P14973889346233039486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A135145 (n + 1) - 1).toNat + 1

end

end A244207.P14973889346233039486

/-! ## A244207.P10251915549704100422

`A014681(A135145(n+1)+A135145(n+1))+1`
-/

namespace A244207.P10251915549704100422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A135145 (n + 1) + A135145 (n + 1)).toNat + 1

end

end A244207.P10251915549704100422

/-! ## A244207.P10764953916025624700

`A004442(A135145(n+1)+A135145(n+1)+1)`
-/

namespace A244207.P10764953916025624700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A135145 (n + 1) + (A135145 (n + 1) + 1)).toNat

end

end A244207.P10764953916025624700

/-! ## A244207.P18278962195978483079

`A135145(n+1)+A135145((n+1)%A020701(n))`
-/

namespace A244207.P18278962195978483079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135145 (n + 1) + A135145 (Int.tmod (n + 1 : ℤ) (A020701 n)).toNat

end

end A244207.P18278962195978483079

/-!
# A244208: Number of ballot sequences of length n having largest ascent 1.

The programs for A244208, there is no canonical definition to state claims against.
-/

/-! ## A244208.P9594758070139521764

`record[A238129(∑[n]+1)]`
-/

namespace A244208.P9594758070139521764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244208.P9594758070139521764

/-! ## A244208.P15944264844216374131

`A238129(∑[n+2]+2)`
-/

namespace A244208.P15944264844216374131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238129 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244208.P15944264844216374131

/-! ## A244208.P15558094430894618015

`record[gcd(A238123(n), A238129(n+1))]`
-/

namespace A244208.P15558094430894618015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238123 n) (A238129 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244208.P15558094430894618015

/-! ## A244208.P15592251081778346715

`record[gcd(A238129(n), A303913(n+1))]`
-/

namespace A244208.P15592251081778346715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238129 n) (A303913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244208.P15592251081778346715

/-! ## A244208.P14114022108063843336

`record[gcd(A045847(n+1), A238129(n+3))]`
-/

namespace A244208.P14114022108063843336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045847 (n + 1)) (A238129 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244208.P14114022108063843336

/-!
# A244209: The total number of unit circles (centered at sites of a square lattice with constant 2) intersecting a circle of radius n centered at (0,0).

The programs for A244209, there is no canonical definition to state claims against.
-/

/-! ## A244209.P6398722960526682041

`A244210(n)+a(n-1)` with `a(0)=0`
-/

namespace A244209.P6398722960526682041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A244210 n + a (n - 1)

end

end A244209.P6398722960526682041

/-! ## A244209.P1550669107453067061

`A053456(n+2)-A053411(n)`
-/

namespace A244209.P1550669107453067061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - A053411 n

end

end A244209.P1550669107453067061

/-! ## A244209.P10836129889681347731

`A232705(n+2)+Δ[A053411(n)]`
-/

namespace A244209.P10836129889681347731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (n + 2) + (f1 (n + 1) - f1 n)

end

end A244209.P10836129889681347731

/-! ## A244209.P6483726620641444737

`A232705(n+1)+Δ[A053456(n+1)]`
-/

namespace A244209.P6483726620641444737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (n + 1) + (f1 (n + 1) - f1 n)

end

end A244209.P6483726620641444737

/-! ## A244209.P13276033768145156888

`∑[A244210(n+1)]-A244210(n+1)`
-/

namespace A244209.P13276033768145156888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244210 (n + 1)

end

end A244209.P13276033768145156888

/-! ## A244209.P4987625998723432285

`A053456(n+2)-(A333572(A028310(n))+1)`
-/

namespace A244209.P4987625998723432285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - (A333572 (A028310 n).toNat + 1)

end

end A244209.P4987625998723432285

/-! ## A244209.P16215420580587441287

`A053411(n+1)-(A053411(n)-A232705(n+2))`
-/

namespace A244209.P16215420580587441287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (n + 1) - (A053411 n - A232705 (n + 2))

end

end A244209.P16215420580587441287

/-!
# A244210: First differences of A244209.

The programs for A244210, there is no canonical definition to state claims against.
-/

/-! ## A244210.P5349158596028590074

`Δ[A053456(n+2)-A053411(n)]`
-/

namespace A244210.P5349158596028590074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - A053411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P5349158596028590074

/-! ## A244210.P11191884683789582052

`Δ[A232705(n+2)+Δ[A053411(n)]]`
-/

namespace A244210.P11191884683789582052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (n + 2) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P11191884683789582052

/-! ## A244210.P5548942605724633535

`Δ[A232705(n+1)+Δ[A053456(n+1)]]`
-/

namespace A244210.P5548942605724633535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P5548942605724633535

/-! ## A244210.P15906862487039549586

`Δ[A053456(n+2)-(A333572(A028310(n))+1)]`
-/

namespace A244210.P15906862487039549586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - (A333572 (A028310 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P15906862487039549586

/-! ## A244210.P163851095924805944

`Δ[A053456(n+2)-(4*A333573(A008458(n)-5*n)+1)]`
-/

namespace A244210.P163851095924805944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - (4 * A333573 (A008458 n - (5 * n : ℤ)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P163851095924805944

/-! ## A244210.P16192630469450274687

`Δ[A053456(n+2)-(A014198(A004526(n+1)*A004526(n))+1)]`
-/

namespace A244210.P16192630469450274687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 2) - (A014198 (A004526 (n + 1) * A004526 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P16192630469450274687

/-! ## A244210.P16333291741725720427

`Δ[A244209(n+1)]`
-/

namespace A244210.P16333291741725720427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244210.P16333291741725720427

/-! ## A244210.P3568020837353151908

`A244209(n+2)-A244209(n+1)`
-/

namespace A244210.P3568020837353151908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244209 (n + 2) - A244209 (n + 1)

end

end A244210.P3568020837353151908

/-!
# A244212: Numbers n for which the alternating sum of the digits of n^n is 0.

The programs for A244212, there is no canonical definition to state claims against.
-/

/-! ## A244212.P880879470588354786

`eq[0, A244144(n+1)]+1`
-/

namespace A244212.P880879470588354786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244212.P880879470588354786

/-! ## A244212.P14648458711515061500

`eq[0, A244144(A028310(n))]`
-/

namespace A244212.P14648458711515061500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244212.P14648458711515061500

/-! ## A244212.P1717182824620092558

`A020725(eq[0, A244144(n+1)])`
-/

namespace A244212.P1717182824620092558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244212.P1717182824620092558

/-! ## A244212.P141052981806484079

`A065475(eq[0, A244144(n+1)])`
-/

namespace A244212.P141052981806484079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244212.P141052981806484079

/-! ## A244212.P9076831434950534382

`A326178(eq[0, A244144(n+1)])`
-/

namespace A244212.P9076831434950534382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244212.P9076831434950534382

/-!
# A244213: Inverse binomial transform of -2 followed by A000032(n+1).

The programs for A244213, the canonical program `A244213.P17304327699620158115` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244213 has offset 0).

The definition of A244213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244213.P17304327699620158115

`(-1)^n*(A000032(n)-4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A244213

/-- `(-1)^n*(A000032(n)-4)` -/
def P17304327699620158115.Spec : Prop :=
  ∀ n, P17304327699620158115.a n = A244213 n

theorem P17304327699620158115.correct : P17304327699620158115.Spec := by
  intro n
  simp only [A244213]

end A244213

/-! ## A244213.P10377336848456059356

`ogf((-2-x+5x^2)/(1+2x-x^3))`
-/

namespace A244213.P10377336848456059356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, -1, 5] [1, 2, 0, -1] n

end

end A244213.P10377336848456059356

namespace A244213

/-- `ogf((-2-x+5x^2)/(1+2x-x^3))` -/
def P10377336848456059356.Spec : Prop :=
  ∀ n, P10377336848456059356.a n = A244213 n

end A244213

/-! ## A244213.P8594347389445318031

`a(n-3)-2*a(n-1)` with `a(0)=-2, a(1)=3, a(2)=-1`
-/

namespace A244213.P8594347389445318031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 3, -1] fun n a =>
  a (n - 3) - 2 * a (n - 1)

end

end A244213.P8594347389445318031

namespace A244213

/-- `a(n-3)-2*a(n-1)` -/
def P8594347389445318031.Spec : Prop :=
  ∀ n, P8594347389445318031.a n = A244213 n

end A244213

/-! ## A244213.P11293488685353594897

`a(n-3)-a(n-1)-a(n-1)` with `a(0)=-2, a(1)=3, a(2)=-1`
-/

namespace A244213.P11293488685353594897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 3, -1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 1)

end

end A244213.P11293488685353594897

namespace A244213

/-- `a(n-3)-a(n-1)-a(n-1)` -/
def P11293488685353594897.Spec : Prop :=
  ∀ n, P11293488685353594897.a n = A244213 n

end A244213

/-! ## A244213.P6198754619875527745

`(A001612(n)-5)*A033999(n)`
-/

namespace A244213.P6198754619875527745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 5) * A033999 n

end

end A244213.P6198754619875527745

namespace A244213

/-- `(A001612(n)-5)*A033999(n)` -/
def P6198754619875527745.Spec : Prop :=
  ∀ n, P6198754619875527745.a n = A244213 n

end A244213

/-! ## A244213.P8840453953041456446

`(A000211(n)-6)*A033999(n)`
-/

namespace A244213.P8840453953041456446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 6) * A033999 n

end

end A244213.P8840453953041456446

namespace A244213

/-- `(A000211(n)-6)*A033999(n)` -/
def P8840453953041456446.Spec : Prop :=
  ∀ n, P8840453953041456446.a n = A244213 n

end A244213

/-! ## A244213.P14231059339416535965

`xor(4, A075091(n))-A000032(n)`
-/

namespace A244213.P14231059339416535965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A075091 n) - A000032 n

end

end A244213.P14231059339416535965

namespace A244213

/-- `xor(4, A075091(n))-A000032(n)` -/
def P14231059339416535965.Spec : Prop :=
  ∀ n, P14231059339416535965.a n = A244213 n

end A244213

/-! ## A244213.P2729185598158099376

`A061084(n+1)-4*A033999(n)`
-/

namespace A244213.P2729185598158099376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - 4 * A033999 n

end

end A244213.P2729185598158099376

namespace A244213

/-- `A061084(n+1)-4*A033999(n)` -/
def P2729185598158099376.Spec : Prop :=
  ∀ n, P2729185598158099376.a n = A244213 n

end A244213

/-! ## A244213.P5287060104865914013

`(A000032(n)-4)/A087960(2*n)`
-/

namespace A244213.P5287060104865914013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n - 4 : ℚ) / (A087960 (2 * n) : ℚ)

end

end A244213.P5287060104865914013

namespace A244213

/-- `(A000032(n)-4)/A087960(2*n)` -/
def P5287060104865914013.Spec : Prop :=
  ∀ n, P5287060104865914013.a n = (A244213 n : ℚ)

end A244213

/-!
# A244214: a(n) = binomial(2*c-1, c-1) (mod c^3), where c is the n-th composite.

The programs for A244214, the canonical program `A244214.P1769933716108538170` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244214 has offset 1).

The definition of A244214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244214.P1769933716108538170

`A099907(A002808(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244214

/-- `A099907(A002808(n+1))` -/
def P1769933716108538170.Spec : Prop :=
  ∀ n, P1769933716108538170.a n = A244214 (n + 1)

theorem P1769933716108538170.correct : P1769933716108538170.Spec := by
  intro n
  simp only [A244214, Nat.add_sub_cancel]

end A244214

/-! ## A244214.P13478173778025782490

`A099907(A018252(n+2))`
-/

namespace A244214.P13478173778025782490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A018252 (n + 2)).toNat

end

end A244214.P13478173778025782490

namespace A244214

/-- `A099907(A018252(n+2))` -/
def P13478173778025782490.Spec : Prop :=
  ∀ n, P13478173778025782490.a n = A244214 (n + 1)

end A244214

/-! ## A244214.P12117391137919263578

`A099907(A141468(n+3))`
-/

namespace A244214.P12117391137919263578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A141468 (n + 3)).toNat

end

end A244214.P12117391137919263578

namespace A244214

/-- `A099907(A141468(n+3))` -/
def P12117391137919263578.Spec : Prop :=
  ∀ n, P12117391137919263578.a n = A244214 (n + 1)

end A244214

/-! ## A244214.P16525971438291085573

`A099907(comp[A158611(n+1)])`
-/

namespace A244214.P16525971438291085573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A244214.P16525971438291085573

namespace A244214

/-- `A099907(comp[A158611(n+1)])` -/
def P16525971438291085573.Spec : Prop :=
  ∀ n, P16525971438291085573.a n = A244214 (n + 1)

end A244214

/-! ## A244214.P17879013711401970045

`A099907(A072668(n+1)+1)`
-/

namespace A244214.P17879013711401970045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A072668 (n + 1) + 1).toNat

end

end A244214.P17879013711401970045

namespace A244214

/-- `A099907(A072668(n+1)+1)` -/
def P17879013711401970045.Spec : Prop :=
  ∀ n, P17879013711401970045.a n = A244214 (n + 1)

end A244214

/-! ## A244214.P118635846502988875

`A099907(A060462(n+2)+1)`
-/

namespace A244214.P118635846502988875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099907 (A060462 (n + 2) + 1).toNat

end

end A244214.P118635846502988875

namespace A244214

/-- `A099907(A060462(n+2)+1)` -/
def P118635846502988875.Spec : Prop :=
  ∀ n, P118635846502988875.a n = A244214 (n + 1)

end A244214

/-!
# A244215: a(0)=0, and for n>=1, if n is the k-th Catalan number (A000108(k)), a(n) = k, otherwise the difference of the indices of the two largest Catalan numbers whose sum is less than or equal to n: a(n) = A244160(n) - A244160(n-A081290(n)).

The programs for A244215, the canonical program `A244215.P17054345626323859306` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244215 has offset 0).

The definition of A244215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, A244160, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244215.P17054345626323859306

`A244160(n)-A244160(n-A081290(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244215

/-- `A244160(n)-A244160(n-A081290(n))` -/
def P17054345626323859306.Spec : Prop :=
  ∀ n, P17054345626323859306.a n = A244215 n

theorem P17054345626323859306.correct : P17054345626323859306.Spec := by
  intro n
  simp only [A244215]

end A244215

/-!
# A244216: Numbers k that are at least twice the size the largest Catalan number less than or equal to k.

The programs for A244216, there is no canonical definition to state claims against.
-/

/-! ## A244216.P355963895556611629

`lt[1, A236859(n)]`
-/

namespace A244216.P355963895556611629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244216.P355963895556611629

/-! ## A244216.P9227328013304730302

`record[A082361(n+2)]`
-/

namespace A244216.P9227328013304730302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244216.P9227328013304730302

/-! ## A244216.P6341196590414930346

`A082855(A081291(n+1))+n`
-/

namespace A244216.P6341196590414930346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082855 (A081291 (n + 1)).toNat + (n : ℤ)

end

end A244216.P6341196590414930346

/-! ## A244216.P13311910784548637092

`lt[A038776(n+1), A057117(n+1)]`
-/

namespace A244216.P13311910784548637092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244216.P13311910784548637092

/-! ## A244216.P9343729019044982578

`lt[n*A244215(n), n]`
-/

namespace A244216.P9343729019044982578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244215 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244216.P9343729019044982578

/-! ## A244216.P7320000167439933405

`eq[0, A244215(n+1)]+1`
-/

namespace A244216.P7320000167439933405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244216.P7320000167439933405

/-! ## A244216.P438114619647270351

`eq[A000007(n), A244215(n)]`
-/

namespace A244216.P438114619647270351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P438114619647270351

/-! ## A244216.P890314605095886734

`eq[A000038(n), A244215(n)]`
-/

namespace A244216.P890314605095886734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P890314605095886734

/-! ## A244216.P5854280633249255749

`eq[A130706(n), A244215(n)]`
-/

namespace A244216.P5854280633249255749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P5854280633249255749

/-! ## A244216.P12490158572883038227

`eq[A130713(n), A244215(n)]`
-/

namespace A244216.P12490158572883038227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P12490158572883038227

/-! ## A244216.P1368868698979917340

`eq[A166926(n), A244215(n)]`
-/

namespace A244216.P1368868698979917340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P1368868698979917340

/-! ## A244216.P9924113852006189795

`eq[A167876(n), A244215(n)]`
-/

namespace A244216.P9924113852006189795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P9924113852006189795

/-! ## A244216.P15984706796117682068

`eq[A169585(n), A244215(n)]`
-/

namespace A244216.P15984706796117682068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P15984706796117682068

/-! ## A244216.P11550835328655994770

`eq[A244215(n), A263013(n)]`
-/

namespace A244216.P11550835328655994770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P11550835328655994770

/-! ## A244216.P17089450577149756560

`eq[A244215(n), A285476(n)]`
-/

namespace A244216.P17089450577149756560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P17089450577149756560

/-! ## A244216.P11846448941726006880

`eq[A154272(n+1), A244215(n)]`
-/

namespace A244216.P11846448941726006880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P11846448941726006880

/-! ## A244216.P1028111201052093341

`eq[A154955(n+1), A244215(n)]`
-/

namespace A244216.P1028111201052093341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P1028111201052093341

/-! ## A244216.P15184711427364337034

`eq[A173012(n+1), A244215(n)]`
-/

namespace A244216.P15184711427364337034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P15184711427364337034

/-! ## A244216.P1012871488765514531

`eq[A181403(n+1), A244215(n)]`
-/

namespace A244216.P1012871488765514531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P1012871488765514531

/-! ## A244216.P17988732864343654114

`eq[A182687(n+1), A244215(n)]`
-/

namespace A244216.P17988732864343654114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244216.P17988732864343654114

/-!
# A244217: Numbers k less than twice the largest Catalan number that is less than or equal to k.

The programs for A244217, the canonical program `A244217.P14050716131319478096` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244217 has offset 1).

The definition of A244217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244217.P10110671287223443252

`eq[1, A236859(n)]`
-/

namespace A244217.P10110671287223443252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244217.P10110671287223443252

namespace A244217

/-- `eq[1, A236859(n)]` -/
def P10110671287223443252.Spec : Prop :=
  ∀ n, (P10110671287223443252.a n : ℤ) = A244217 (n + 1)

end A244217

/-! ## A244217.P17669536301565557365

`record[(n+1)/A236859(n+1)]`
-/

namespace A244217.P17669536301565557365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A236859 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244217.P17669536301565557365

namespace A244217

/-- `record[(n+1)/A236859(n+1)]` -/
def P17669536301565557365.Spec : Prop :=
  ∀ n, P17669536301565557365.a n = (A244217 (n + 1) : ℚ)

end A244217

/-! ## A244217.P14050716131319478096

`A072795(n+1)-A082852(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244217

/-- `A072795(n+1)-A082852(n+1)` -/
def P14050716131319478096.Spec : Prop :=
  ∀ n, P14050716131319478096.a n = A244217 (n + 1)

theorem P14050716131319478096.correct : P14050716131319478096.Spec := by
  intro n
  simp only [A244217, Nat.add_sub_cancel]

end A244217

/-! ## A244217.P7234807869041469144

`A000027(record[gcd(n, 1-A236859(n)+n)])`
-/

namespace A244217.P7234807869041469144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A236859 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A244217.P7234807869041469144

namespace A244217

/-- `A000027(record[gcd(n, 1-A236859(n)+n)])` -/
def P7234807869041469144.Spec : Prop :=
  ∀ n, P7234807869041469144.a n = A244217 (n + 1)

end A244217

/-! ## A244217.P569976696205276360

`record[gcd(n+1, A236859(A000027(n+1))+n)]`
-/

namespace A244217.P569976696205276360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A236859 (A000027 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244217.P569976696205276360

namespace A244217

/-- `record[gcd(n+1, A236859(A000027(n+1))+n)]` -/
def P569976696205276360.Spec : Prop :=
  ∀ n, (P569976696205276360.a n : ℤ) = A244217 (n + 1)

end A244217

/-! ## A244217.P16227774344618017592

`A082361(A057549(n+1))`
-/

namespace A244217.P16227774344618017592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082361 (A057549 (n + 1)).toNat

end

end A244217.P16227774344618017592

namespace A244217

/-- `A082361(A057549(n+1))` -/
def P16227774344618017592.Spec : Prop :=
  ∀ n, P16227774344618017592.a n = A244217 (n + 1)

end A244217

/-! ## A244217.P8233050315805060755

`lt[0, A244215(n)]`
-/

namespace A244217.P8233050315805060755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244217.P8233050315805060755

namespace A244217

/-- `lt[0, A244215(n)]` -/
def P8233050315805060755.Spec : Prop :=
  ∀ n, (P8233050315805060755.a n : ℤ) = A244217 (n + 1)

end A244217

/-! ## A244217.P7985254301397737212

`eq[1, A126307(A153242(n))]`
-/

namespace A244217.P7985254301397737212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A153242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244217.P7985254301397737212

namespace A244217

/-- `eq[1, A126307(A153242(n))]` -/
def P7985254301397737212.Spec : Prop :=
  ∀ n, (P7985254301397737212.a n : ℤ) = A244217 (n + 1)

end A244217

/-! ## A244217.P6736860399675707614

`A082853(A127307(n+1))`
-/

namespace A244217.P6736860399675707614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 (A127307 (n + 1)).toNat

end

end A244217.P6736860399675707614

namespace A244217

/-- `A082853(A127307(n+1))` -/
def P6736860399675707614.Spec : Prop :=
  ∀ n, P6736860399675707614.a n = A244217 (n + 1)

end A244217

/-!
# A244218: The ending points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

The programs for A244218, the canonical program `A244218.P10883957659016357263` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244218 has offset 0).

The definition of A244218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244218.P3774745153555966540

`∑[A244226(n)]-1`
-/

namespace A244218.P3774745153555966540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244218.P3774745153555966540

namespace A244218

/-- `∑[A244226(n)]-1` -/
def P3774745153555966540.Spec : Prop :=
  ∀ n, P3774745153555966540.a n = A244218 n

end A244218

/-! ## A244218.P10883957659016357263

`A244219(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244218

/-- `A244219(n+1)-1` -/
def P10883957659016357263.Spec : Prop :=
  ∀ n, P10883957659016357263.a n = A244218 n

theorem P10883957659016357263.correct : P10883957659016357263.Spec := by
  intro n
  simp only [A244218]

end A244218

/-! ## A244218.P15096710879294808923

`Δ[∑[A244219(n)]-n]`
-/

namespace A244218.P15096710879294808923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244218.P15096710879294808923

namespace A244218

/-- `Δ[∑[A244219(n)]-n]` -/
def P15096710879294808923.Spec : Prop :=
  ∀ n, P15096710879294808923.a n = A244218 n

end A244218

/-! ## A244218.P14798320942172139957

`∑[A244227(lcm(2, n)/2)]-1`
-/

namespace A244218.P14798320942172139957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244218.P14798320942172139957

namespace A244218

/-- `∑[A244227(lcm(2, n)/2)]-1` -/
def P14798320942172139957.Spec : Prop :=
  ∀ n, P14798320942172139957.a n = A244218 n

end A244218

/-! ## A244218.P9074573276622383376

`A023443(∑[A244226(n)])`
-/

namespace A244218.P9074573276622383376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244218.P9074573276622383376

namespace A244218

/-- `A023443(∑[A244226(n)])` -/
def P9074573276622383376.Spec : Prop :=
  ∀ n, P9074573276622383376.a n = A244218 n

end A244218

/-! ## A244218.P3003443782211276896

`A023443(A244219(n+1))`
-/

namespace A244218.P3003443782211276896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A244219 (n + 1)).toNat

end

end A244218.P3003443782211276896

namespace A244218

/-- `A023443(A244219(n+1))` -/
def P3003443782211276896.Spec : Prop :=
  ∀ n, P3003443782211276896.a n = A244218 n

end A244218

/-! ## A244218.P9100208656207245144

`∑[A057427(n)*A244226(n)]`
-/

namespace A244218.P9100208656207245144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P9100208656207245144

namespace A244218

/-- `∑[A057427(n)*A244226(n)]` -/
def P9100208656207245144.Spec : Prop :=
  ∀ n, P9100208656207245144.a n = A244218 n

end A244218

/-! ## A244218.P13949213296991666002

`∑[A057428(n)²*A244226(n)]`
-/

namespace A244218.P13949213296991666002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P13949213296991666002

namespace A244218

/-- `∑[A057428(n)²*A244226(n)]` -/
def P13949213296991666002.Spec : Prop :=
  ∀ n, P13949213296991666002.a n = A244218 n

end A244218

/-! ## A244218.P4899555194576508506

`A057428(n+1)+∑[A244226(n)]`
-/

namespace A244218.P4899555194576508506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P4899555194576508506

namespace A244218

/-- `A057428(n+1)+∑[A244226(n)]` -/
def P4899555194576508506.Spec : Prop :=
  ∀ n, P4899555194576508506.a n = A244218 n

end A244218

/-! ## A244218.P12412468487499253912

`∑[A019425(2*n)*A244226(n)]`
-/

namespace A244218.P12412468487499253912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P12412468487499253912

namespace A244218

/-- `∑[A019425(2*n)*A244226(n)]` -/
def P12412468487499253912.Spec : Prop :=
  ∀ n, P12412468487499253912.a n = A244218 n

end A244218

/-! ## A244218.P546604437697597643

`∑[A001221(A000961(n+1))*A244226(n)]`
-/

namespace A244218.P546604437697597643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P546604437697597643

namespace A244218

/-- `∑[A001221(A000961(n+1))*A244226(n)]` -/
def P546604437697597643.Spec : Prop :=
  ∀ n, P546604437697597643.a n = A244218 n

end A244218

/-! ## A244218.P13647440996526753421

`∑[char[A057163(n+1)]*A244226(n)]`
-/

namespace A244218.P13647440996526753421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244218.P13647440996526753421

namespace A244218

/-- `∑[char[A057163(n+1)]*A244226(n)]` -/
def P13647440996526753421.Spec : Prop :=
  ∀ n, P13647440996526753421.a n = A244218 n

end A244218

/-!
# A244219: The starting points of runs of consecutive terms with the same parity in A014418 (n represented in Greedy Catalan Base).

The programs for A244219, the canonical program `A244219.P3223793585254741010` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244219 has offset 0).

The definition of A244219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244219.P665144212433165021

`∑[A244226(abs(1-n))]-1`
-/

namespace A244219.P665144212433165021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244219.P665144212433165021

namespace A244219

/-- `∑[A244226(abs(1-n))]-1` -/
def P665144212433165021.Spec : Prop :=
  ∀ n, P665144212433165021.a n = A244219 n

end A244219

/-! ## A244219.P8049046049827319638

`A244226(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A244219.P8049046049827319638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A244226 (n - 1) + a (n - 1)

end

end A244219.P8049046049827319638

namespace A244219

/-- `A244226(n-1)+a(n-1)` -/
def P8049046049827319638.Spec : Prop :=
  ∀ n, P8049046049827319638.a n = A244219 n

end A244219

/-! ## A244219.P2398353849960991919

`∪[A000583(n), ∑[A244226(n)]]`
-/

namespace A244219.P2398353849960991919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244219.P2398353849960991919

namespace A244219

/-- `∪[A000583(n), ∑[A244226(n)]]` -/
def P2398353849960991919.Spec : Prop :=
  ∀ n, (P2398353849960991919.a n : ℤ) = A244219 n

end A244219

/-! ## A244219.P5918841011867867718

`A000027(∑[A244226(n)])-A244226(n)`
-/

namespace A244219.P5918841011867867718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A244226 n

end

end A244219.P5918841011867867718

namespace A244219

/-- `A000027(∑[A244226(n)])-A244226(n)` -/
def P5918841011867867718.Spec : Prop :=
  ∀ n, P5918841011867867718.a n = A244219 n

end A244219

/-! ## A244219.P3223793585254741010

`record[A110654(n+1)*A244221(A110654(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244219

/-- `record[A110654(n+1)*A244221(A110654(n))]` -/
def P3223793585254741010.Spec : Prop :=
  ∀ n, P3223793585254741010.a n = A244219 n

theorem P3223793585254741010.correct : P3223793585254741010.Spec := by
  intro n
  simp only [A244219]

end A244219

/-! ## A244219.P16951325424385406755

`A244218(n)+1-A244226(n)`
-/

namespace A244219.P16951325424385406755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n + (1 - A244226 n)

end

end A244219.P16951325424385406755

namespace A244219

/-- `A244218(n)+1-A244226(n)` -/
def P16951325424385406755.Spec : Prop :=
  ∀ n, P16951325424385406755.a n = A244219 n

end A244219

/-! ## A244219.P18381786483146759104

`∑[A242481(∑[A256680(n+1)])]`
-/

namespace A244219.P18381786483146759104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244219.P18381786483146759104

namespace A244219

/-- `∑[A242481(∑[A256680(n+1)])]` -/
def P18381786483146759104.Spec : Prop :=
  ∀ n, P18381786483146759104.a n = A244219 n

end A244219

/-! ## A244219.P3883621202495741447

`A244218(n)-log2(val(A126005(n+1), 4)!)`
-/

namespace A244219.P3883621202495741447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244218 n : ℝ) - Real.logb 2 (Nat.factorial (SequenceMachineLib.valuation (A126005 (n + 1)).toNat 4) : ℝ)

end

end A244219.P3883621202495741447

namespace A244219

/-- `A244218(n)-log2(val(A126005(n+1), 4)!)` -/
def P3883621202495741447.Spec : Prop :=
  ∀ n, P3883621202495741447.a n = (A244219 n : ℝ)

end A244219

/-! ## A244219.P6866156312312590543

`A244218(n)-A001222(val(A126005(n+1), 4)!)`
-/

namespace A244219.P6866156312312590543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n - A001222 (Nat.factorial (SequenceMachineLib.valuation (A126005 (n + 1)).toNat 4))

end

end A244219.P6866156312312590543

namespace A244219

/-- `A244218(n)-A001222(val(A126005(n+1), 4)!)` -/
def P6866156312312590543.Spec : Prop :=
  ∀ n, P6866156312312590543.a n = A244219 n

end A244219

/-!
# A244220: Binary complement of Greedy Catalan Base reduced modulo 2: a(n) = 1 - (A014418(n) modulo 2).

The programs for A244220, the canonical program `A244220.P6843507714044978338` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244220 has offset 0).

The definition of A244220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244220.P6843507714044978338

`1-A244221(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244220

/-- `1-A244221(n)` -/
def P6843507714044978338.Spec : Prop :=
  ∀ n, P6843507714044978338.a n = A244220 n

theorem P6843507714044978338.correct : P6843507714044978338.Spec := by
  intro n
  simp only [A244220]

end A244220

/-! ## A244220.P7868309808478241525

`char[A244222(n)]`
-/

namespace A244220.P7868309808478241525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A244220.P7868309808478241525

namespace A244220

/-- `char[A244222(n)]` -/
def P7868309808478241525.Spec : Prop :=
  ∀ n, (P7868309808478241525.a n : ℤ) = A244220 n

end A244220

/-! ## A244220.P8862182933949483756

`gcd(2, A014418(n))-1`
-/

namespace A244220.P8862182933949483756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A014418 n) : ℤ) - 1

end

end A244220.P8862182933949483756

namespace A244220

/-- `gcd(2, A014418(n))-1` -/
def P8862182933949483756.Spec : Prop :=
  ∀ n, P8862182933949483756.a n = A244220 n

end A244220

/-! ## A244220.P5265698017079119573

`char[comp[A244223(n+1)]]`
-/

namespace A244220.P5265698017079119573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A244220.P5265698017079119573

namespace A244220

/-- `char[comp[A244223(n+1)]]` -/
def P5265698017079119573.Spec : Prop :=
  ∀ n, (P5265698017079119573.a n : ℤ) = A244220 n

end A244220

/-! ## A244220.P3438320745458884658

`1-and(A014418(n), A054977(n))`
-/

namespace A244220.P3438320745458884658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A014418 n) (A054977 n)

end

end A244220.P3438320745458884658

namespace A244220

/-- `1-and(A014418(n), A054977(n))` -/
def P3438320745458884658.Spec : Prop :=
  ∀ n, P3438320745458884658.a n = A244220 n

end A244220

/-! ## A244220.P8279088429771804633

`1-and(A014418(n), A057427(n))`
-/

namespace A244220.P8279088429771804633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A014418 n) (A057427 n)

end

end A244220.P8279088429771804633

namespace A244220

/-- `1-and(A014418(n), A057427(n))` -/
def P8279088429771804633.Spec : Prop :=
  ∀ n, P8279088429771804633.a n = A244220 n

end A244220

/-! ## A244220.P3273029732520100971

`1-and(A014418(n), A158388(n))`
-/

namespace A244220.P3273029732520100971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A014418 n) (A158388 n)

end

end A244220.P3273029732520100971

namespace A244220

/-- `1-and(A014418(n), A158388(n))` -/
def P3273029732520100971.Spec : Prop :=
  ∀ n, P3273029732520100971.a n = A244220 n

end A244220

/-! ## A244220.P8871768749196132984

`A000035(A244221(n)+2*n+1)`
-/

namespace A244220.P8871768749196132984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244221 n + (2 * n + 1 : ℤ)).toNat

end

end A244220.P8871768749196132984

namespace A244220

/-- `A000035(A244221(n)+2*n+1)` -/
def P8871768749196132984.Spec : Prop :=
  ∀ n, P8871768749196132984.a n = A244220 n

end A244220

/-! ## A244220.P3212293814896926520

`A244221(A244223(n+1)+A244221(n))`
-/

namespace A244220.P3212293814896926520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 (A244223 (n + 1) + A244221 n).toNat

end

end A244220.P3212293814896926520

namespace A244220

/-- `A244221(A244223(n+1)+A244221(n))` -/
def P3212293814896926520.Spec : Prop :=
  ∀ n, P3212293814896926520.a n = A244220 n

end A244220

/-! ## A244220.P13030183727503874053

`and(1, A244161(n)+1)`
-/

namespace A244220.P13030183727503874053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A244161 n + 1)

end

end A244220.P13030183727503874053

namespace A244220

/-- `and(1, A244161(n)+1)` -/
def P13030183727503874053.Spec : Prop :=
  ∀ n, P13030183727503874053.a n = A244220 n

end A244220

/-! ## A244220.P10189057326630058416

`A036988(A244161(n))`
-/

namespace A244220.P10189057326630058416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A244161 n).toNat

end

end A244220.P10189057326630058416

namespace A244220

/-- `A036988(A244161(n))` -/
def P10189057326630058416.Spec : Prop :=
  ∀ n, P10189057326630058416.a n = A244220 n

end A244220

/-! ## A244220.P16202761327303232426

`A000035(A244161(n)+1)`
-/

namespace A244220.P16202761327303232426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244161 n + 1).toNat

end

end A244220.P16202761327303232426

namespace A244220

/-- `A000035(A244161(n)+1)` -/
def P16202761327303232426.Spec : Prop :=
  ∀ n, P16202761327303232426.a n = A244220 n

end A244220

/-! ## A244220.P12991998016883788606

`1-and(A014418(n), A020737(n))`
-/

namespace A244220.P12991998016883788606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A014418 n) (A020737 n)

end

end A244220.P12991998016883788606

namespace A244220

/-- `1-and(A014418(n), A020737(n))` -/
def P12991998016883788606.Spec : Prop :=
  ∀ n, P12991998016883788606.a n = A244220 n

end A244220

/-! ## A244220.P15208820611623490955

`1-A011558(A014418(n))`
-/

namespace A244220.P15208820611623490955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A014418 n).toNat

end

end A244220.P15208820611623490955

namespace A244220

/-- `1-A011558(A014418(n))` -/
def P15208820611623490955.Spec : Prop :=
  ∀ n, P15208820611623490955.a n = A244220 n

end A244220

/-! ## A244220.P3774919619456526957

`A057078(A014419(n))`
-/

namespace A244220.P3774919619456526957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A014419 n).toNat

end

end A244220.P3774919619456526957

namespace A244220

/-- `A057078(A014419(n))` -/
def P3774919619456526957.Spec : Prop :=
  ∀ n, P3774919619456526957.a n = A244220 n

end A244220

/-! ## A244220.P8245815427702418764

`A283963(A051022(n)+1)`
-/

namespace A244220.P8245815427702418764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (A051022 n + 1).toNat

end

end A244220.P8245815427702418764

namespace A244220

/-- `A283963(A051022(n)+1)` -/
def P8245815427702418764.Spec : Prop :=
  ∀ n, P8245815427702418764.a n = A244220 n

end A244220

/-!
# A244221: Parity of Greedy Catalan Base representation for n: a(n) = A014418(n) reduced modulo 2.

The programs for A244221, the canonical program `A244221.P4166625272978156220` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244221 has offset 0).

The definition of A244221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244221.P8847365290171393211

`A000035(A244161(n))`
-/

namespace A244221.P8847365290171393211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244161 n).toNat

end

end A244221.P8847365290171393211

namespace A244221

/-- `A000035(A244161(n))` -/
def P8847365290171393211.Spec : Prop :=
  ∀ n, P8847365290171393211.a n = A244221 n

end A244221

/-! ## A244221.P16258010719865292530

`A000035(A014418(n))`
-/

namespace A244221.P16258010719865292530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014418 n).toNat

end

end A244221.P16258010719865292530

namespace A244221

/-- `A000035(A014418(n))` -/
def P16258010719865292530.Spec : Prop :=
  ∀ n, P16258010719865292530.a n = A244221 n

end A244221

/-! ## A244221.P15307349128874593478

`1-A244220(n)`
-/

namespace A244221.P15307349128874593478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244220 n

end

end A244221.P15307349128874593478

namespace A244221

/-- `1-A244220(n)` -/
def P15307349128874593478.Spec : Prop :=
  ∀ n, P15307349128874593478.a n = A244221 n

end A244221

/-! ## A244221.P1719003827812612164

`char[comp[A244222(n)]]`
-/

namespace A244221.P1719003827812612164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A244221.P1719003827812612164

namespace A244221

/-- `char[comp[A244222(n)]]` -/
def P1719003827812612164.Spec : Prop :=
  ∀ n, (P1719003827812612164.a n : ℤ) = A244221 n

end A244221

/-! ## A244221.P10679548778973038873

`char[A244223(n+1)]`
-/

namespace A244221.P10679548778973038873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A244221.P10679548778973038873

namespace A244221

/-- `char[A244223(n+1)]` -/
def P10679548778973038873.Spec : Prop :=
  ∀ n, (P10679548778973038873.a n : ℤ) = A244221 n

end A244221

/-! ## A244221.P4166625272978156220

`a(n-A081290(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A244221

/-- `a(n-A081290(n))` -/
def P4166625272978156220.Spec : Prop :=
  ∀ n, (P4166625272978156220.a n : ℤ) = A244221 n

theorem P4166625272978156220.correct : P4166625272978156220.Spec := by
  intro n
  simp only [A244221]

end A244221

/-! ## A244221.P3482601903277850327

`n-A244222(A244229(n))`
-/

namespace A244221.P3482601903277850327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244222 (A244229 n).toNat

end

end A244221.P3482601903277850327

namespace A244221

/-- `n-A244222(A244229(n))` -/
def P3482601903277850327.Spec : Prop :=
  ∀ n, P3482601903277850327.a n = A244221 n

end A244221

/-! ## A244221.P1416634860290471979

`A014418(n)%A010695(n)`
-/

namespace A244221.P1416634860290471979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 n) (A010695 n)

end

end A244221.P1416634860290471979

namespace A244221

/-- `A014418(n)%A010695(n)` -/
def P1416634860290471979.Spec : Prop :=
  ∀ n, P1416634860290471979.a n = A244221 n

end A244221

/-! ## A244221.P331298472587319925

`and(A014418(n), A054977(n))`
-/

namespace A244221.P331298472587319925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014418 n) (A054977 n)

end

end A244221.P331298472587319925

namespace A244221

/-- `and(A014418(n), A054977(n))` -/
def P331298472587319925.Spec : Prop :=
  ∀ n, P331298472587319925.a n = A244221 n

end A244221

/-! ## A244221.P12967970680975071272

`and(A014418(n), A057427(n))`
-/

namespace A244221.P12967970680975071272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014418 n) (A057427 n)

end

end A244221.P12967970680975071272

namespace A244221

/-- `and(A014418(n), A057427(n))` -/
def P12967970680975071272.Spec : Prop :=
  ∀ n, P12967970680975071272.a n = A244221 n

end A244221

/-! ## A244221.P15612148843225924908

`and(A014418(n), A158388(n))`
-/

namespace A244221.P15612148843225924908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014418 n) (A158388 n)

end

end A244221.P15612148843225924908

namespace A244221

/-- `and(A014418(n), A158388(n))` -/
def P15612148843225924908.Spec : Prop :=
  ∀ n, P15612148843225924908.a n = A244221 n

end A244221

/-! ## A244221.P17565337568197612306

`A000035(A244220(n)+2*n+1)`
-/

namespace A244221.P17565337568197612306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244220 n + (2 * n + 1 : ℤ)).toNat

end

end A244221.P17565337568197612306

namespace A244221

/-- `A000035(A244220(n)+2*n+1)` -/
def P17565337568197612306.Spec : Prop :=
  ∀ n, P17565337568197612306.a n = A244221 n

end A244221

/-! ## A244221.P681139961118377925

`char[A244219(2*n+1)]`
-/

namespace A244221.P681139961118377925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A244221.P681139961118377925

namespace A244221

/-- `char[A244219(2*n+1)]` -/
def P681139961118377925.Spec : Prop :=
  ∀ n, (P681139961118377925.a n : ℤ) = A244221 n

end A244221

/-! ## A244221.P11024236479070520377

`char[A244218(2*n+1)]`
-/

namespace A244221.P11024236479070520377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A244221.P11024236479070520377

namespace A244221

/-- `char[A244218(2*n+1)]` -/
def P11024236479070520377.Spec : Prop :=
  ∀ n, (P11024236479070520377.a n : ℤ) = A244221 n

end A244221

/-! ## A244221.P16122878684904813314

`A244220(A244220(n)*A244223(n+1))`
-/

namespace A244221.P16122878684904813314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 (A244220 n * A244223 (n + 1)).toNat

end

end A244221.P16122878684904813314

namespace A244221

/-- `A244220(A244220(n)*A244223(n+1))` -/
def P16122878684904813314.Spec : Prop :=
  ∀ n, P16122878684904813314.a n = A244221 n

end A244221

/-! ## A244221.P2349924423684516554

`A244161(n)%A010694(n)`
-/

namespace A244221.P2349924423684516554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244161 n) (A010694 n)

end

end A244221.P2349924423684516554

namespace A244221

/-- `A244161(n)%A010694(n)` -/
def P2349924423684516554.Spec : Prop :=
  ∀ n, P2349924423684516554.a n = A244221 n

end A244221

/-! ## A244221.P9408623481006157277

`and(A014418(n), A020737(n))`
-/

namespace A244221.P9408623481006157277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014418 n) (A020737 n)

end

end A244221.P9408623481006157277

namespace A244221

/-- `and(A014418(n), A020737(n))` -/
def P9408623481006157277.Spec : Prop :=
  ∀ n, P9408623481006157277.a n = A244221 n

end A244221

/-! ## A244221.P1069644456672068214

`and(A195744(n), A244161(n))`
-/

namespace A244221.P1069644456672068214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A244161 n)

end

end A244221.P1069644456672068214

namespace A244221

/-- `and(A195744(n), A244161(n))` -/
def P1069644456672068214.Spec : Prop :=
  ∀ n, P1069644456672068214.a n = A244221 n

end A244221

/-! ## A244221.P7663429923717006262

`and(A122041(n+1), A244161(n))`
-/

namespace A244221.P7663429923717006262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A244161 n)

end

end A244221.P7663429923717006262

namespace A244221

/-- `and(A122041(n+1), A244161(n))` -/
def P7663429923717006262.Spec : Prop :=
  ∀ n, P7663429923717006262.a n = A244221 n

end A244221

/-! ## A244221.P8895503369181918355

`and(A196657(n), A244161(n))`
-/

namespace A244221.P8895503369181918355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A244161 n)

end

end A244221.P8895503369181918355

namespace A244221

/-- `and(A196657(n), A244161(n))` -/
def P8895503369181918355.Spec : Prop :=
  ∀ n, P8895503369181918355.a n = A244221 n

end A244221

/-!
# A244222: Numbers k which have even representation in Greedy Catalan Base, i.e., where A014418(k) ends with zero.

The programs for A244222, the canonical program `A244222.P5228230116540986536` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244222 has offset 0).

The definition of A244222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244222.P9625380898855542949

`comp[A244223(n+1)]`
-/

namespace A244222.P9625380898855542949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244222.P9625380898855542949

namespace A244222

/-- `comp[A244223(n+1)]` -/
def P9625380898855542949.Spec : Prop :=
  ∀ n, (P9625380898855542949.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P18220538118231326236

`eq[0, A014418(n)%2]`
-/

namespace A244222.P18220538118231326236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244222.P18220538118231326236

namespace A244222

/-- `eq[0, A014418(n)%2]` -/
def P18220538118231326236.Spec : Prop :=
  ∀ n, (P18220538118231326236.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P1807536200846462845

`A244225(a(n-1)+1)+n` with `a(0)=0`
-/

namespace A244222.P1807536200846462845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A244225 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A244222.P1807536200846462845

namespace A244222

/-- `A244225(a(n-1)+1)+n` -/
def P1807536200846462845.Spec : Prop :=
  ∀ n, P1807536200846462845.a n = A244222 n

end A244222

/-! ## A244222.P3008959436038717155

`record[n*A244220(n)]`
-/

namespace A244222.P3008959436038717155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244222.P3008959436038717155

namespace A244222

/-- `record[n*A244220(n)]` -/
def P3008959436038717155.Spec : Prop :=
  ∀ n, P3008959436038717155.a n = A244222 n

end A244222

/-! ## A244222.P5228230116540986536

`record[n*(1-A244221(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244222

/-- `record[n*(1-A244221(n))]` -/
def P5228230116540986536.Spec : Prop :=
  ∀ n, P5228230116540986536.a n = A244222 n

theorem P5228230116540986536.correct : P5228230116540986536.Spec := by
  intro n
  simp only [A244222]

end A244222

/-! ## A244222.P9817817870437835037

`eq[A244220(n), A373565(n)]`
-/

namespace A244222.P9817817870437835037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P9817817870437835037

namespace A244222

/-- `eq[A244220(n), A373565(n)]` -/
def P9817817870437835037.Spec : Prop :=
  ∀ n, (P9817817870437835037.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P4717304260911689876

`eq[A121273(n+1), A244220(n)]`
-/

namespace A244222.P4717304260911689876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P4717304260911689876

namespace A244222

/-- `eq[A121273(n+1), A244220(n)]` -/
def P4717304260911689876.Spec : Prop :=
  ∀ n, (P4717304260911689876.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P4801543275381945703

`eq[1, A082108(n*A244221(n))]`
-/

namespace A244222.P4801543275381945703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 ((n : ℤ) * A244221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244222.P4801543275381945703

namespace A244222

/-- `eq[1, A082108(n*A244221(n))]` -/
def P4801543275381945703.Spec : Prop :=
  ∀ n, (P4801543275381945703.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P11882345359041863103

`eq[1, A127802(n*A244221(n))]`
-/

namespace A244222.P11882345359041863103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 ((n : ℤ) * A244221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244222.P11882345359041863103

namespace A244222

/-- `eq[1, A127802(n*A244221(n))]` -/
def P11882345359041863103.Spec : Prop :=
  ∀ n, (P11882345359041863103.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P1861528809337133674

`eq[2, A016825(n*A244221(n))]`
-/

namespace A244222.P1861528809337133674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 ((n : ℤ) * A244221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244222.P1861528809337133674

namespace A244222

/-- `eq[2, A016825(n*A244221(n))]` -/
def P1861528809337133674.Spec : Prop :=
  ∀ n, (P1861528809337133674.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P15263480719685782031

`eq[0, A001222(10*n*A244221(n)+1)]`
-/

namespace A244222.P15263480719685782031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * ((n : ℤ) * A244221 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244222.P15263480719685782031

namespace A244222

/-- `eq[0, A001222(10*n*A244221(n)+1)]` -/
def P15263480719685782031.Spec : Prop :=
  ∀ n, (P15263480719685782031.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P863390026018939894

`eq[A244221(n)+A001057(n), A001057(n)]`
-/

namespace A244222.P863390026018939894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n + A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P863390026018939894

namespace A244222

/-- `eq[A244221(n)+A001057(n), A001057(n)]` -/
def P863390026018939894.Spec : Prop :=
  ∀ n, (P863390026018939894.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P3736988911853248578

`eq[A244221(n)+A127802(n), A127802(n)]`
-/

namespace A244222.P3736988911853248578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n + A127802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P3736988911853248578

namespace A244222

/-- `eq[A244221(n)+A127802(n), A127802(n)]` -/
def P3736988911853248578.Spec : Prop :=
  ∀ n, (P3736988911853248578.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P9787332678879762182

`eq[A244221(n)+A159780(n), A159780(n)]`
-/

namespace A244222.P9787332678879762182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n + A159780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P9787332678879762182

namespace A244222

/-- `eq[A244221(n)+A159780(n), A159780(n)]` -/
def P9787332678879762182.Spec : Prop :=
  ∀ n, (P9787332678879762182.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P8056578573123798681

`eq[A329684(n)+A244221(n), A329684(n)]`
-/

namespace A244222.P8056578573123798681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + A244221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P8056578573123798681

namespace A244222

/-- `eq[A329684(n)+A244221(n), A329684(n)]` -/
def P8056578573123798681.Spec : Prop :=
  ∀ n, (P8056578573123798681.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P13202275575928819155

`eq[A244221(n)/A016825(n), A244221(n)]`
-/

namespace A244222.P13202275575928819155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244221 n : ℚ) / (A016825 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A244222.P13202275575928819155

namespace A244222

/-- `eq[A244221(n)/A016825(n), A244221(n)]` -/
def P13202275575928819155.Spec : Prop :=
  ∀ n, (P13202275575928819155.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P12795638372105307755

`eq[A244221(n)/A082108(n), A244221(n)]`
-/

namespace A244222.P12795638372105307755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244221 n : ℚ) / (A082108 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A244222.P12795638372105307755

namespace A244222

/-- `eq[A244221(n)/A082108(n), A244221(n)]` -/
def P12795638372105307755.Spec : Prop :=
  ∀ n, (P12795638372105307755.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P11455998269370844832

`eq[A000203(n+1)*A244221(n), A244221(n)]`
-/

namespace A244222.P11455998269370844832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A244221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P11455998269370844832

namespace A244222

/-- `eq[A000203(n+1)*A244221(n), A244221(n)]` -/
def P11455998269370844832.Spec : Prop :=
  ∀ n, (P11455998269370844832.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P11287263734400992189

`eq[A084291(n+1)*A244221(n), A244221(n)]`
-/

namespace A244222.P11287263734400992189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) * A244221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P11287263734400992189

namespace A244222

/-- `eq[A084291(n+1)*A244221(n), A244221(n)]` -/
def P11287263734400992189.Spec : Prop :=
  ∀ n, (P11287263734400992189.a n : ℤ) = A244222 n

end A244222

/-! ## A244222.P8912739587012605620

`eq[A244221(n)*A259410(n+1), A244221(n)]`
-/

namespace A244222.P8912739587012605620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n * A259410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244222.P8912739587012605620

namespace A244222

/-- `eq[A244221(n)*A259410(n+1), A244221(n)]` -/
def P8912739587012605620.Spec : Prop :=
  ∀ n, (P8912739587012605620.a n : ℤ) = A244222 n

end A244222

/-!
# A244223: Numbers k which have an odd representation in Greedy Catalan Base, i.e., where A014418(k) ends with digit one.

The programs for A244223, the canonical program `A244223.P4164142307862508594` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244223 has offset 1).

The definition of A244223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244223.P14375859795927608941

`∑[A244227(n)]+n`
-/

namespace A244223.P14375859795927608941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A244223.P14375859795927608941

namespace A244223

/-- `∑[A244227(n)]+n` -/
def P14375859795927608941.Spec : Prop :=
  ∀ n, P14375859795927608941.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P10796492287427129795

`A244228(n)+a(n-1)` with `a(0)=1`
-/

namespace A244223.P10796492287427129795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244228 n + a (n - 1)

end

end A244223.P10796492287427129795

namespace A244223

/-- `A244228(n)+a(n-1)` -/
def P10796492287427129795.Spec : Prop :=
  ∀ n, P10796492287427129795.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P4164142307862508594

`comp[A244222(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244223

/-- `comp[A244222(n)]` -/
def P4164142307862508594.Spec : Prop :=
  ∀ n, (P4164142307862508594.a n : ℤ) = A244223 (n + 1)

theorem P4164142307862508594.correct : P4164142307862508594.Spec := by
  intro n
  simp only [A244223, Nat.add_sub_cancel]

end A244223

/-! ## A244223.P12224268644507861836

`eq[1, gcd(2, A014418(n))]`
-/

namespace A244223.P12224268644507861836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014418 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244223.P12224268644507861836

namespace A244223

/-- `eq[1, gcd(2, A014418(n))]` -/
def P12224268644507861836.Spec : Prop :=
  ∀ n, (P12224268644507861836.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P13471182515342737876

`∑[A244226(2*n)]+n`
-/

namespace A244223.P13471182515342737876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A244223.P13471182515342737876

namespace A244223

/-- `∑[A244226(2*n)]+n` -/
def P13471182515342737876.Spec : Prop :=
  ∀ n, P13471182515342737876.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P16222303643965494635

`filter[n+1, A244221(#)]`
-/

namespace A244223.P16222303643965494635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244221 (f1 j) = 1) n)

end

end A244223.P16222303643965494635

namespace A244223

/-- `filter[n+1, A244221(#)]` -/
def P16222303643965494635.Spec : Prop :=
  ∀ n, (P16222303643965494635.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P17180329380592247238

`lt[1, n*A244221(n)+1]`
-/

namespace A244223.P17180329380592247238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244221 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244223.P17180329380592247238

namespace A244223

/-- `lt[1, n*A244221(n)+1]` -/
def P17180329380592247238.Spec : Prop :=
  ∀ n, (P17180329380592247238.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P2417912009157215255

`eq[A244221(n), A329684(n)]`
-/

namespace A244223.P2417912009157215255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244223.P2417912009157215255

namespace A244223

/-- `eq[A244221(n), A329684(n)]` -/
def P2417912009157215255.Spec : Prop :=
  ∀ n, (P2417912009157215255.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P14311953454893464014

`lt[1, A014418(n)%2*A016969(n)]`
-/

namespace A244223.P14311953454893464014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 n) 2 * A016969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244223.P14311953454893464014

namespace A244223

/-- `lt[1, A014418(n)%2*A016969(n)]` -/
def P14311953454893464014.Spec : Prop :=
  ∀ n, (P14311953454893464014.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P14902427607333278029

`A244219(Δ[n²])`
-/

namespace A244223.P14902427607333278029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244223.P14902427607333278029

namespace A244223

/-- `A244219(Δ[n²])` -/
def P14902427607333278029.Spec : Prop :=
  ∀ n, P14902427607333278029.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P17758587080915237465

`A244218(2*n)+1`
-/

namespace A244223.P17758587080915237465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 (2 * n) + 1

end

end A244223.P17758587080915237465

namespace A244223

/-- `A244218(2*n)+1` -/
def P17758587080915237465.Spec : Prop :=
  ∀ n, P17758587080915237465.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P18135903831816420360

`A244227(n)+A244219(2*n)`
-/

namespace A244223.P18135903831816420360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 n + A244219 (2 * n)

end

end A244223.P18135903831816420360

namespace A244223

/-- `A244227(n)+A244219(2*n)` -/
def P18135903831816420360.Spec : Prop :=
  ∀ n, P18135903831816420360.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P16194716345478526816

`lt[A244221(n), char[A244218(n)]]+1`
-/

namespace A244223.P16194716345478526816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244223.P16194716345478526816

namespace A244223

/-- `lt[A244221(n), char[A244218(n)]]+1` -/
def P16194716345478526816.Spec : Prop :=
  ∀ n, (P16194716345478526816.a n : ℤ) = A244223 (n + 1)

end A244223

/-! ## A244223.P2454717554963527020

`A244224(A244219(2*n+1))+n`
-/

namespace A244223.P2454717554963527020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244224 (A244219 (2 * n + 1)).toNat + (n : ℤ)

end

end A244223.P2454717554963527020

namespace A244223

/-- `A244224(A244219(2*n+1))+n` -/
def P2454717554963527020.Spec : Prop :=
  ∀ n, P2454717554963527020.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P1943203698376878902

`A244226(2*n)+A244219(2*n)`
-/

namespace A244223.P1943203698376878902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (2 * n) + A244219 (2 * n)

end

end A244223.P1943203698376878902

namespace A244223

/-- `A244226(2*n)+A244219(2*n)` -/
def P1943203698376878902.Spec : Prop :=
  ∀ n, P1943203698376878902.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P1215915130338951002

`A244229(A244222(A244219(2*n+1)))`
-/

namespace A244223.P1215915130338951002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244229 (A244222 (A244219 (2 * n + 1)).toNat).toNat

end

end A244223.P1215915130338951002

namespace A244223

/-- `A244229(A244222(A244219(2*n+1)))` -/
def P1215915130338951002.Spec : Prop :=
  ∀ n, P1215915130338951002.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P16018725748119163203

`A244218(Δ[n²])`
-/

namespace A244223.P16018725748119163203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244223.P16018725748119163203

namespace A244223

/-- `A244218(Δ[n²])` -/
def P16018725748119163203.Spec : Prop :=
  ∀ n, P16018725748119163203.a n = A244223 (n + 1)

end A244223

/-! ## A244223.P5784246623890886782

`A244219(2*(n+1))-1`
-/

namespace A244223.P5784246623890886782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (2 * (n + 1)) - 1

end

end A244223.P5784246623890886782

namespace A244223

/-- `A244219(2*(n+1))-1` -/
def P5784246623890886782.Spec : Prop :=
  ∀ n, P5784246623890886782.a n = A244223 (n + 1)

end A244223

/-!
# A244224: a(n) = Number of nonnegative integers 0 <= k <= n, which have an even representation in Greedy Catalan Base (A014418).

The programs for A244224, the canonical program `A244224.P3371671429758605766` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244224 has offset 0).

The definition of A244224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244224.P12894450167260665906

`∑[A244220(n)]`
-/

namespace A244224.P12894450167260665906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P12894450167260665906

namespace A244224

/-- `∑[A244220(n)]` -/
def P12894450167260665906.Spec : Prop :=
  ∀ n, P12894450167260665906.a n = A244224 n

end A244224

/-! ## A244224.P7415581722758844533

`A244229(n)+1`
-/

namespace A244224.P7415581722758844533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244229 n + 1

end

end A244224.P7415581722758844533

namespace A244224

/-- `A244229(n)+1` -/
def P7415581722758844533.Spec : Prop :=
  ∀ n, P7415581722758844533.a n = A244224 n

end A244224

/-! ## A244224.P2216692440273484458

`∑[char[A244222(n)]]`
-/

namespace A244224.P2216692440273484458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P2216692440273484458

namespace A244224

/-- `∑[char[A244222(n)]]` -/
def P2216692440273484458.Spec : Prop :=
  ∀ n, (P2216692440273484458.a n : ℤ) = A244224 n

end A244224

/-! ## A244224.P3371671429758605766

`∑[1-A244221(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244224

/-- `∑[1-A244221(n)]` -/
def P3371671429758605766.Spec : Prop :=
  ∀ n, P3371671429758605766.a n = A244224 n

theorem P3371671429758605766.correct : P3371671429758605766.Spec := by
  intro n
  simp only [A244224]

end A244224

/-! ## A244224.P1526045989069162611

`1-A244225(n)+n`
-/

namespace A244224.P1526045989069162611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244225 n + (n : ℤ)

end

end A244224.P1526045989069162611

namespace A244224

/-- `1-A244225(n)+n` -/
def P1526045989069162611.Spec : Prop :=
  ∀ n, P1526045989069162611.a n = A244224 n

end A244224

/-! ## A244224.P6005035843949291332

`∑[and(1, A014418(n)+1)]`
-/

namespace A244224.P6005035843949291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014418 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P6005035843949291332

namespace A244224

/-- `∑[and(1, A014418(n)+1)]` -/
def P6005035843949291332.Spec : Prop :=
  ∀ n, P6005035843949291332.a n = A244224 n

end A244224

/-! ## A244224.P2807207495955165573

`∑[1-char[A244223(n+1)]]`
-/

namespace A244224.P2807207495955165573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P2807207495955165573

namespace A244224

/-- `∑[1-char[A244223(n+1)]]` -/
def P2807207495955165573.Spec : Prop :=
  ∀ n, P2807207495955165573.a n = A244224 n

end A244224

/-! ## A244224.P10602015113989387871

`A318886(val(A244221(n)+2*n+1, 2)+1)+a(n-1)` with `a(0)=1`
-/

namespace A244224.P10602015113989387871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318886 (SequenceMachineLib.valuation (A244221 n + (2 * n + 1 : ℤ)).toNat 2 + 1) + a (n - 1)

end

end A244224.P10602015113989387871

namespace A244224

/-- `A318886(val(A244221(n)+2*n+1, 2)+1)+a(n-1)` -/
def P10602015113989387871.Spec : Prop :=
  ∀ n, P10602015113989387871.a n = A244224 n

end A244224

/-! ## A244224.P6350170095322041396

`A244225(A244219(Δ[n²]))-A244225(n)`
-/

namespace A244224.P6350170095322041396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (A244219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A244225 n

end

end A244224.P6350170095322041396

namespace A244224

/-- `A244225(A244219(Δ[n²]))-A244225(n)` -/
def P6350170095322041396.Spec : Prop :=
  ∀ n, P6350170095322041396.a n = A244224 n

end A244224

/-! ## A244224.P12153377740160687784

`A244225(A244218(Δ[n²]))-A244225(n)`
-/

namespace A244224.P12153377740160687784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244225 (A244218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A244225 n

end

end A244224.P12153377740160687784

namespace A244224

/-- `A244225(A244218(Δ[n²]))-A244225(n)` -/
def P12153377740160687784.Spec : Prop :=
  ∀ n, P12153377740160687784.a n = A244224 n

end A244224

/-! ## A244224.P10170364902915970375

`∑[A000035(A244161(n)+1)]`
-/

namespace A244224.P10170364902915970375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244161 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244224.P10170364902915970375

namespace A244224

/-- `∑[A000035(A244161(n)+1)]` -/
def P10170364902915970375.Spec : Prop :=
  ∀ n, P10170364902915970375.a n = A244224 n

end A244224

/-!
# A244225: a(n) = Number of nonnegative integers 0 <= k <= n, which have an odd representation in Greedy Catalan Base (A014418).

The programs for A244225, the canonical program `A244225.P2560900493130344478` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244225 has offset 0).

The definition of A244225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244225.P2560900493130344478

`n-A244229(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244225

/-- `n-A244229(n)` -/
def P2560900493130344478.Spec : Prop :=
  ∀ n, P2560900493130344478.a n = A244225 n

theorem P2560900493130344478.correct : P2560900493130344478.Spec := by
  intro n
  simp only [A244225]

end A244225

/-! ## A244225.P8501403326801951296

`∑[A244221(n)]`
-/

namespace A244225.P8501403326801951296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P8501403326801951296

namespace A244225

/-- `∑[A244221(n)]` -/
def P8501403326801951296.Spec : Prop :=
  ∀ n, P8501403326801951296.a n = A244225 n

end A244225

/-! ## A244225.P7392574144344850031

`∑[1-A244220(n)]`
-/

namespace A244225.P7392574144344850031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P7392574144344850031

namespace A244225

/-- `∑[1-A244220(n)]` -/
def P7392574144344850031.Spec : Prop :=
  ∀ n, P7392574144344850031.a n = A244225 n

end A244225

/-! ## A244225.P14922804729231247215

`∑[A014418(n)%2]`
-/

namespace A244225.P14922804729231247215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P14922804729231247215

namespace A244225

/-- `∑[A014418(n)%2]` -/
def P14922804729231247215.Spec : Prop :=
  ∀ n, P14922804729231247215.a n = A244225 n

end A244225

/-! ## A244225.P16669655727954496938

`∑[char[comp[A244222(n)]]]`
-/

namespace A244225.P16669655727954496938
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P16669655727954496938

namespace A244225

/-- `∑[char[comp[A244222(n)]]]` -/
def P16669655727954496938.Spec : Prop :=
  ∀ n, (P16669655727954496938.a n : ℤ) = A244225 n

end A244225

/-! ## A244225.P6008627045666755721

`1-A244224(n)+n`
-/

namespace A244225.P6008627045666755721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244224 n + (n : ℤ)

end

end A244225.P6008627045666755721

namespace A244225

/-- `1-A244224(n)+n` -/
def P6008627045666755721.Spec : Prop :=
  ∀ n, P6008627045666755721.a n = A244225 n

end A244225

/-! ## A244225.P3267992868462615815

`∑[char[A244223(n+1)]]`
-/

namespace A244225.P3267992868462615815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P3267992868462615815

namespace A244225

/-- `∑[char[A244223(n+1)]]` -/
def P3267992868462615815.Spec : Prop :=
  ∀ n, (P3267992868462615815.a n : ℤ) = A244225 n

end A244225

/-! ## A244225.P14868335143249074054

`∑[and(A014418(n), A244220(n+1))]`
-/

namespace A244225.P14868335143249074054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014418 n) (A244220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P14868335143249074054

namespace A244225

/-- `∑[and(A014418(n), A244220(n+1))]` -/
def P14868335143249074054.Spec : Prop :=
  ∀ n, P14868335143249074054.a n = A244225 n

end A244225

/-! ## A244225.P10698207463449414695

`A244224(A244222(n))-A244224(n)`
-/

namespace A244225.P10698207463449414695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244224 (A244222 n).toNat - A244224 n

end

end A244225.P10698207463449414695

namespace A244225

/-- `A244224(A244222(n))-A244224(n)` -/
def P10698207463449414695.Spec : Prop :=
  ∀ n, P10698207463449414695.a n = A244225 n

end A244225

/-! ## A244225.P9256241681512234963

`∑[char[A244219(2*n+1)]]`
-/

namespace A244225.P9256241681512234963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P9256241681512234963

namespace A244225

/-- `∑[char[A244219(2*n+1)]]` -/
def P9256241681512234963.Spec : Prop :=
  ∀ n, (P9256241681512234963.a n : ℤ) = A244225 n

end A244225

/-! ## A244225.P14384867379040823100

`∑[char[A244218(2*n+1)]]`
-/

namespace A244225.P14384867379040823100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P14384867379040823100

namespace A244225

/-- `∑[char[A244218(2*n+1)]]` -/
def P14384867379040823100.Spec : Prop :=
  ∀ n, (P14384867379040823100.a n : ℤ) = A244225 n

end A244225

/-! ## A244225.P16052026482529533922

`∑[A244161(n)%2]`
-/

namespace A244225.P16052026482529533922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244161 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P16052026482529533922

namespace A244225

/-- `∑[A244161(n)%2]` -/
def P16052026482529533922.Spec : Prop :=
  ∀ n, P16052026482529533922.a n = A244225 n

end A244225

/-! ## A244225.P3078828236695466193

`∑[A000035(A244161(n))]`
-/

namespace A244225.P3078828236695466193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244225.P3078828236695466193

namespace A244225

/-- `∑[A000035(A244161(n))]` -/
def P3078828236695466193.Spec : Prop :=
  ∀ n, P3078828236695466193.a n = A244225 n

end A244225

/-!
# A244226: Length of runs in A244221 (Greedy Catalan Base, A014418, reduced modulo 2).

The programs for A244226, the canonical program `A244226.P17876576765539539077` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244226 has offset 0).

The definition of A244226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244226.P17876576765539539077

`A244227(A142150(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A244226

/-- `A244227(A142150(n))` -/
def P17876576765539539077.Spec : Prop :=
  ∀ n, P17876576765539539077.a n = A244226 n

theorem P17876576765539539077.correct : P17876576765539539077.Spec := by
  intro n
  simp only [A244226]

end A244226

/-! ## A244226.P7164263020430486983

`A244227(xor(1, A289435(n+2)))`
-/

namespace A244226.P7164263020430486983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (Int.xor 1 (A289435 (n + 2))).toNat

end

end A244226.P7164263020430486983

namespace A244226

/-- `A244227(xor(1, A289435(n+2)))` -/
def P7164263020430486983.Spec : Prop :=
  ∀ n, P7164263020430486983.a n = A244226 n

end A244226

/-! ## A244226.P9711046125725065367

`A244227(∑[A000035(n)]*A000035(n+1))`
-/

namespace A244226.P9711046125725065367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 ((∑ j ∈ Finset.range (n + 1), f1 j) * A000035 (n + 1)).toNat

end

end A244226.P9711046125725065367

namespace A244226

/-- `A244227(∑[A000035(n)]*A000035(n+1))` -/
def P9711046125725065367.Spec : Prop :=
  ∀ n, P9711046125725065367.a n = A244226 n

end A244226

/-! ## A244226.P9395434261052101677

`Δ[A244219(n)]`
-/

namespace A244226.P9395434261052101677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244226.P9395434261052101677

namespace A244226

/-- `Δ[A244219(n)]` -/
def P9395434261052101677.Spec : Prop :=
  ∀ n, P9395434261052101677.a n = A244226 n

end A244226

/-! ## A244226.P3482967248045888736

`A244219(n+1)-A244219(n)`
-/

namespace A244226.P3482967248045888736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (n + 1) - A244219 n

end

end A244226.P3482967248045888736

namespace A244226

/-- `A244219(n+1)-A244219(n)` -/
def P3482967248045888736.Spec : Prop :=
  ∀ n, P3482967248045888736.a n = A244226 n

end A244226

/-! ## A244226.P506113200336066514

`A052955(A244218(n)-A244219(n))`
-/

namespace A244226.P506113200336066514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A244218 n - A244219 n).toNat

end

end A244226.P506113200336066514

namespace A244226

/-- `A052955(A244218(n)-A244219(n))` -/
def P506113200336066514.Spec : Prop :=
  ∀ n, P506113200336066514.a n = A244226 n

end A244226

/-! ## A244226.P5381044860258582870

`A007090(A244218(n)-(A244219(n)-1))`
-/

namespace A244226.P5381044860258582870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A244218 n - (A244219 n - 1)).toNat

end

end A244226.P5381044860258582870

namespace A244226

/-- `A007090(A244218(n)-(A244219(n)-1))` -/
def P5381044860258582870.Spec : Prop :=
  ∀ n, P5381044860258582870.a n = A244226 n

end A244226

/-! ## A244226.P4444148406978802305

`A040258(gcd(A000129(n), A126274(n)))`
-/

namespace A244226.P4444148406978802305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 (Int.gcd (A000129 n) (A126274 n))

end

end A244226.P4444148406978802305

namespace A244226

/-- `A040258(gcd(A000129(n), A126274(n)))` -/
def P4444148406978802305.Spec : Prop :=
  ∀ n, P4444148406978802305.a n = A244226 n

end A244226

/-! ## A244226.P15626532570464108428

`A296518(A275365(A188670(A268368(A275365(n+3)))))`
-/

namespace A244226.P15626532570464108428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296518 (A275365 (A188670 (A268368 (A275365 (n + 3)).toNat).toNat).toNat).toNat

end

end A244226.P15626532570464108428

namespace A244226

/-- `A296518(A275365(A188670(A268368(A275365(n+3)))))` -/
def P15626532570464108428.Spec : Prop :=
  ∀ n, P15626532570464108428.a n = A244226 n

end A244226

/-! ## A244226.P10462060447805580192

`A230404(or(5, n²))`
-/

namespace A244226.P10462060447805580192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (Nat.lor 5 (n ^ 2))

end

end A244226.P10462060447805580192

namespace A244226

/-- `A230404(or(5, n²))` -/
def P10462060447805580192.Spec : Prop :=
  ∀ n, P10462060447805580192.a n = A244226 n

end A244226

/-! ## A244226.P3195421215279943112

`A131718(A168077(n))`
-/

namespace A244226.P3195421215279943112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131718 (A168077 n).toNat

end

end A244226.P3195421215279943112

namespace A244226

/-- `A131718(A168077(n))` -/
def P3195421215279943112.Spec : Prop :=
  ∀ n, P3195421215279943112.a n = A244226 n

end A244226

/-! ## A244226.P9659349619839571949

`A115362(A008615(n²))`
-/

namespace A244226.P9659349619839571949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A008615 (n ^ 2)).toNat

end

end A244226.P9659349619839571949

namespace A244226

/-- `A115362(A008615(n²))` -/
def P9659349619839571949.Spec : Prop :=
  ∀ n, P9659349619839571949.a n = A244226 n

end A244226

/-! ## A244226.P1164132572091087465

`A131534(or(2, A026741(n²)))`
-/

namespace A244226.P1164132572091087465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (Int.lor 2 (A026741 (n ^ 2))).toNat

end

end A244226.P1164132572091087465

namespace A244226

/-- `A131534(or(2, A026741(n²)))` -/
def P1164132572091087465.Spec : Prop :=
  ∀ n, P1164132572091087465.a n = A244226 n

end A244226

/-!
# A244227: Even bisection of A244226.

The programs for A244227, the canonical program `A244227.P9593669895290812264` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244227 has offset 0).

The definition of A244227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244227.P13416582480872315036

`A244226(2*n)`
-/

namespace A244227.P13416582480872315036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (2 * n)

end

end A244227.P13416582480872315036

namespace A244227

/-- `A244226(2*n)` -/
def P13416582480872315036.Spec : Prop :=
  ∀ n, P13416582480872315036.a n = A244227 n

end A244227

/-! ## A244227.P4691149709405190836

`A244228(n)-A015129(a(n-1))` with `a(0)=1`
-/

namespace A244227.P4691149709405190836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244228 n - A015129 (a (n - 1)).toNat

end

end A244227.P4691149709405190836

namespace A244227

/-- `A244228(n)-A015129(a(n-1))` -/
def P4691149709405190836.Spec : Prop :=
  ∀ n, P4691149709405190836.a n = A244227 n

end A244227

/-! ## A244227.P9593669895290812264

`A244228(n)-A179051(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A244227

/-- `A244228(n)-A179051(a(n-1))` -/
def P9593669895290812264.Spec : Prop :=
  ∀ n, P9593669895290812264.a n = A244227 n

theorem P9593669895290812264.correct : P9593669895290812264.Spec := by
  intro n
  simp only [A244227]

end A244227

/-! ## A244227.P13589019698814656822

`A244226(A004277(n))%4`
-/

namespace A244227.P13589019698814656822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244226 (A004277 n).toNat) 4

end

end A244227.P13589019698814656822

namespace A244227

/-- `A244226(A004277(n))%4` -/
def P13589019698814656822.Spec : Prop :=
  ∀ n, P13589019698814656822.a n = A244227 n

end A244227

/-! ## A244227.P13238796250969674092

`A244226(A004277(n))^A177704(n)`
-/

namespace A244227.P13238796250969674092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244226 (A004277 n).toNat : ℚ) ^ (A177704 n : ℤ)

end

end A244227.P13238796250969674092

namespace A244227

/-- `A244226(A004277(n))^A177704(n)` -/
def P13238796250969674092.Spec : Prop :=
  ∀ n, P13238796250969674092.a n = (A244227 n : ℚ)

end A244227

/-! ## A244227.P13107335779845550889

`gcd(A106458(n), A244226(A004277(n)))`
-/

namespace A244227.P13107335779845550889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106458 n) (A244226 (A004277 n).toNat)

end

end A244227.P13107335779845550889

namespace A244227

/-- `gcd(A106458(n), A244226(A004277(n)))` -/
def P13107335779845550889.Spec : Prop :=
  ∀ n, (P13107335779845550889.a n : ℤ) = A244227 n

end A244227

/-! ## A244227.P839036283928473214

`lcm(A057077(n), A244226(A004277(n)))`
-/

namespace A244227.P839036283928473214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A244226 (A004277 n).toNat)

end

end A244227.P839036283928473214

namespace A244227

/-- `lcm(A057077(n), A244226(A004277(n)))` -/
def P839036283928473214.Spec : Prop :=
  ∀ n, (P839036283928473214.a n : ℤ) = A244227 n

end A244227

/-! ## A244227.P17753976407668458510

`A355471(n)%3`
-/

namespace A244227.P17753976407668458510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355471 n) 3

end

end A244227.P17753976407668458510

namespace A244227

/-- `A355471(n)%3` -/
def P17753976407668458510.Spec : Prop :=
  ∀ n, P17753976407668458510.a n = A244227 n

end A244227

/-! ## A244227.P7549198607791385315

`gcd(A005592(n), A009184(n))`
-/

namespace A244227.P7549198607791385315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005592 n) (A009184 n)

end

end A244227.P7549198607791385315

namespace A244227

/-- `gcd(A005592(n), A009184(n))` -/
def P7549198607791385315.Spec : Prop :=
  ∀ n, (P7549198607791385315.a n : ℤ) = A244227 n

end A244227

/-!
# A244228: The lengths of runs in A244225, the first differences of A244223.

The programs for A244228, the canonical program `A244228.P12558676392616395413` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244228 has offset 1).

The definition of A244228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244228.P12589679879828954576

`1+A244227(n+1)`
-/

namespace A244228.P12589679879828954576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A244227 (n + 1)

end

end A244228.P12589679879828954576

namespace A244228

/-- `1+A244227(n+1)` -/
def P12589679879828954576.Spec : Prop :=
  ∀ n, P12589679879828954576.a n = A244228 (n + 1)

end A244228

/-! ## A244228.P12558676392616395413

`Δ[A244223(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244228

/-- `Δ[A244223(n+1)]` -/
def P12558676392616395413.Spec : Prop :=
  ∀ n, P12558676392616395413.a n = A244228 (n + 1)

theorem P12558676392616395413.correct : P12558676392616395413.Spec := by
  intro n
  simp only [A244228, Nat.add_sub_cancel]

end A244228

/-! ## A244228.P5502055577967334875

`A244223(n+2)-A244223(n+1)`
-/

namespace A244228.P5502055577967334875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 2) - A244223 (n + 1)

end

end A244228.P5502055577967334875

namespace A244228

/-- `A244223(n+2)-A244223(n+1)` -/
def P5502055577967334875.Spec : Prop :=
  ∀ n, P5502055577967334875.a n = A244228 (n + 1)

theorem P5502055577967334875.correct : P5502055577967334875.Spec := by
  intro n
  simp only [A244228, Nat.add_sub_cancel, A244228.P5502055577967334875.a, A244228.P12558676392616395413.f1, A244228.P12558676392616395413.a, SequenceMachineLib.memo_apply]

end A244228

/-! ## A244228.P10880423939506521749

`A244226(2*(n+1))+1`
-/

namespace A244228.P10880423939506521749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (2 * (n + 1)) + 1

end

end A244228.P10880423939506521749

namespace A244228

/-- `A244226(2*(n+1))+1` -/
def P10880423939506521749.Spec : Prop :=
  ∀ n, P10880423939506521749.a n = A244228 (n + 1)

end A244228

/-! ## A244228.P13966707438385641125

`Δ[A244218(2*n)]`
-/

namespace A244228.P13966707438385641125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244228.P13966707438385641125

namespace A244228

/-- `Δ[A244218(2*n)]` -/
def P13966707438385641125.Spec : Prop :=
  ∀ n, P13966707438385641125.a n = A244228 (n + 1)

end A244228

/-! ## A244228.P11940031782608442016

`Δ[A244219(2*n+1)]`
-/

namespace A244228.P11940031782608442016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244228.P11940031782608442016

namespace A244228

/-- `Δ[A244219(2*n+1)]` -/
def P11940031782608442016.Spec : Prop :=
  ∀ n, P11940031782608442016.a n = A244228 (n + 1)

end A244228

/-! ## A244228.P11880974416136039671

`A244219(2*n+3)-lt[7, 14*n*A014418(n)%2]`
-/

namespace A244228.P11880974416136039671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * n : ℤ) * Int.tmod (A014418 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (2 * n + 3) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A244228.P11880974416136039671

namespace A244228

/-- `A244219(2*n+3)-lt[7, 14*n*A014418(n)%2]` -/
def P11880974416136039671.Spec : Prop :=
  ∀ n, P11880974416136039671.a n = A244228 (n + 1)

end A244228

/-!
# A244229: a(n) = Number of integers 0 < k <= n, which have an even representation in Greedy Catalan Base (A014418).

The programs for A244229, the canonical program `A244229.P10812629268547515881` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244229 has offset 0).

The definition of A244229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244229.P10812629268547515881

`A244224(n)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244229

/-- `A244224(n)-1` -/
def P10812629268547515881.Spec : Prop :=
  ∀ n, P10812629268547515881.a n = A244229 n

theorem P10812629268547515881.correct : P10812629268547515881.Spec := by
  intro n
  simp only [A244229]

end A244229

/-! ## A244229.P16082360566680194681

`n-A244225(n)`
-/

namespace A244229.P16082360566680194681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244225 n

end

end A244229.P16082360566680194681

namespace A244229

/-- `n-A244225(n)` -/
def P16082360566680194681.Spec : Prop :=
  ∀ n, P16082360566680194681.a n = A244229 n

end A244229

/-! ## A244229.P15353674778472688849

`∑[A244220(n)]-1`
-/

namespace A244229.P15353674778472688849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244229.P15353674778472688849

namespace A244229

/-- `∑[A244220(n)]-1` -/
def P15353674778472688849.Spec : Prop :=
  ∀ n, P15353674778472688849.a n = A244229 n

end A244229

/-! ## A244229.P9769208325900776959

`n-∑[A244221(n)]`
-/

namespace A244229.P9769208325900776959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244229.P9769208325900776959

namespace A244229

/-- `n-∑[A244221(n)]` -/
def P9769208325900776959.Spec : Prop :=
  ∀ n, P9769208325900776959.a n = A244229 n

end A244229

/-! ## A244229.P6586291226630188643

`∑[char[A244222(n+1)]]`
-/

namespace A244229.P6586291226630188643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244229.P6586291226630188643

namespace A244229

/-- `∑[char[A244222(n+1)]]` -/
def P6586291226630188643.Spec : Prop :=
  ∀ n, (P6586291226630188643.a n : ℤ) = A244229 n

end A244229

/-! ## A244229.P10622255572475418686

`∑[char[A244222(n)]]-1`
-/

namespace A244229.P10622255572475418686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244222 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A244229.P10622255572475418686

namespace A244229

/-- `∑[char[A244222(n)]]-1` -/
def P10622255572475418686.Spec : Prop :=
  ∀ n, P10622255572475418686.a n = A244229 n

end A244229

/-! ## A244229.P1926430643256033222

`n-∑[A014418(n)%2]`
-/

namespace A244229.P1926430643256033222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244229.P1926430643256033222

namespace A244229

/-- `n-∑[A014418(n)%2]` -/
def P1926430643256033222.Spec : Prop :=
  ∀ n, P1926430643256033222.a n = A244229 n

end A244229

/-! ## A244229.P15651705972782610353

`n-∑[char[A244223(n+1)]]`
-/

namespace A244229.P15651705972782610353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244229.P15651705972782610353

namespace A244229

/-- `n-∑[char[A244223(n+1)]]` -/
def P15651705972782610353.Spec : Prop :=
  ∀ n, P15651705972782610353.a n = A244229 n

end A244229

/-! ## A244229.P9231467952275119296

`n-∑[A244161(n)%2]`
-/

namespace A244229.P9231467952275119296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244161 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244229.P9231467952275119296

namespace A244229

/-- `n-∑[A244161(n)%2]` -/
def P9231467952275119296.Spec : Prop :=
  ∀ n, P9231467952275119296.a n = A244229 n

end A244229

/-! ## A244229.P12021941923588631477

`n-∑[A000035(A244161(n))]`
-/

namespace A244229.P12021941923588631477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244229.P12021941923588631477

namespace A244229

/-- `n-∑[A000035(A244161(n))]` -/
def P12021941923588631477.Spec : Prop :=
  ∀ n, P12021941923588631477.a n = A244229 n

end A244229

/-! ## A244229.P7049461712691334012

`A083800(n+1)%A244224(n)`
-/

namespace A244229.P7049461712691334012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A244224 n)

end

end A244229.P7049461712691334012

namespace A244229

/-- `A083800(n+1)%A244224(n)` -/
def P7049461712691334012.Spec : Prop :=
  ∀ n, P7049461712691334012.a n = A244229 n

end A244229

/-! ## A244229.P16926426474703606624

`A070198(n)%A244224(n)`
-/

namespace A244229.P16926426474703606624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A244224 n)

end

end A244229.P16926426474703606624

namespace A244229

/-- `A070198(n)%A244224(n)` -/
def P16926426474703606624.Spec : Prop :=
  ∀ n, P16926426474703606624.a n = A244229 n

end A244229

/-! ## A244229.P18414207511426199560

`A079782(n+1)%A244224(n)`
-/

namespace A244229.P18414207511426199560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A244224 n)

end

end A244229.P18414207511426199560

namespace A244229

/-- `A079782(n+1)%A244224(n)` -/
def P18414207511426199560.Spec : Prop :=
  ∀ n, P18414207511426199560.a n = A244229 n

end A244229

/-! ## A244229.P5846253023128703768

`A083685(n+1)%A244224(n)`
-/

namespace A244229.P5846253023128703768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A244224 n)

end

end A244229.P5846253023128703768

namespace A244229

/-- `A083685(n+1)%A244224(n)` -/
def P5846253023128703768.Spec : Prop :=
  ∀ n, P5846253023128703768.a n = A244229 n

end A244229

/-! ## A244229.P1578162110499116127

`A121934(n+1)%A244224(n)`
-/

namespace A244229.P1578162110499116127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A244224 n)

end

end A244229.P1578162110499116127

namespace A244229

/-- `A121934(n+1)%A244224(n)` -/
def P1578162110499116127.Spec : Prop :=
  ∀ n, P1578162110499116127.a n = A244229 n

end A244229

/-! ## A244229.P17301526891309477446

`A072828(n+1)%A244224(n)`
-/

namespace A244229.P17301526891309477446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A244224 n)

end

end A244229.P17301526891309477446

namespace A244229

/-- `A072828(n+1)%A244224(n)` -/
def P17301526891309477446.Spec : Prop :=
  ∀ n, P17301526891309477446.a n = A244229 n

end A244229

/-!
# A244230: a(n) is the least k such that A197433(k) >= n.

The programs for A244230, there is no canonical definition to state claims against.
-/

/-! ## A244230.P6923424867578108403

`∑[char[A197433(n)+1]]`
-/

namespace A244230.P6923424867578108403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244230.P6923424867578108403

/-! ## A244230.P16712082262650750283

`A176137(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A244230.P16712082262650750283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A176137 (n - 1) + a (n - 1)

end

end A244230.P16712082262650750283

/-! ## A244230.P16376360148256313794

`A090223(∑[char[A244155(n)]])`
-/

namespace A244230.P16376360148256313794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244230.P16376360148256313794

/-! ## A244230.P3728673298118919972

`∑[A176137(n)]-A176137(n)`
-/

namespace A244230.P3728673298118919972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A176137 n

end

end A244230.P3728673298118919972

/-! ## A244230.P14085795078541406117

`∑[char[(n+1)*A176137(n+1)+1]]`
-/

namespace A244230.P14085795078541406117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176137 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244230.P14085795078541406117

/-! ## A244230.P13017601797237329784

`∑[char[A197432(2*n+1)]]`
-/

namespace A244230.P13017601797237329784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197432 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244230.P13017601797237329784

/-!
# A244231: Maximum "digit" value in Semigreedy Catalan Representation of n, A244159.

The programs for A244231, there is no canonical definition to state claims against.
-/

/-! ## A244231.P8552525745569101182

`A054055(A244159(n)-A102683(2*(n+2)))`
-/

namespace A244231.P8552525745569101182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A244159 n - A102683 (2 * (n + 2))).toNat

end

end A244231.P8552525745569101182

/-! ## A244231.P9312844909463746606

`A054055(A244159(n))`
-/

namespace A244231.P9312844909463746606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A244159 n).toNat

end

end A244231.P9312844909463746606

/-! ## A244231.P1198841219863713383

`A293433(A120939(n+1)-A076413(n+1))`
-/

namespace A244231.P1198841219863713383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293433 (A120939 (n + 1) - A076413 (n + 1)).toNat

end

end A244231.P1198841219863713383

/-! ## A244231.P4678052308505741788

`gcd(∑[A287870(4*n+1)], A332202(2*n))`
-/

namespace A244231.P4678052308505741788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A332202 (2 * n))

end

end A244231.P4678052308505741788

/-!
# A244232: Sum of "digit values" in Semigreedy Catalan Representation of n, A244159.

The programs for A244232, there is no canonical definition to state claims against.
-/

/-! ## A244232.P12890399224441570460

`∑{digits}[A244159(n), #]`
-/

namespace A244232.P12890399224441570460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A244232.P12890399224441570460

/-! ## A244232.P15755965369069789559

`n-A244234(n)`
-/

namespace A244232.P15755965369069789559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244234 n

end

end A244232.P15755965369069789559

/-! ## A244232.P571135486750613845

`abs(A244234(n)+A001489(n))`
-/

namespace A244232.P571135486750613845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244234 n + A001489 n|

end

end A244232.P571135486750613845

/-! ## A244232.P15321266450715664423

`A061601(A244234(n)+A061601(n))`
-/

namespace A244232.P15321266450715664423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A244234 n + A061601 n).toNat

end

end A244232.P15321266450715664423

/-! ## A244232.P16715818869346109794

`A171960(A244234(n)+A171960(n))`
-/

namespace A244232.P16715818869346109794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171960 (A244234 n + A171960 n).toNat

end

end A244232.P16715818869346109794

/-! ## A244232.P10043226029592394810

`A020710(n)%A020710(A244234(n))`
-/

namespace A244232.P10043226029592394810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020710 n) (A020710 (A244234 n).toNat)

end

end A244232.P10043226029592394810

/-! ## A244232.P2957573144137294046

`A025581(A244234(n)+A000217(n))`
-/

namespace A244232.P2957573144137294046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A244234 n + A000217 n).toNat

end

end A244232.P2957573144137294046

/-! ## A244232.P18131129680622460617

`A326746(A244159(n))`
-/

namespace A244232.P18131129680622460617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A244159 n).toNat

end

end A244232.P18131129680622460617

/-!
# A244233: Product of "digit values" in Semigreedy Catalan Representation of n, A244159.

The programs for A244233, there is no canonical definition to state claims against.
-/

/-! ## A244233.P1745310889431805573

`∏{digits}[A244159(n), #]+C(2, n+2)`
-/

namespace A244233.P1745310889431805573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod + Nat.choose 2 (n + 2)

end

end A244233.P1745310889431805573

/-! ## A244233.P8523680419682260444

`∏{digits}[A244159(A028310(n)), #]`
-/

namespace A244233.P8523680419682260444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A244233.P8523680419682260444

/-! ## A244233.P889527273339786130

`∏{digits}[A244159(A000007(n)+n), #]`
-/

namespace A244233.P889527273339786130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A244233.P889527273339786130

/-! ## A244233.P658592096177156896

`∏{digits}[A000007(n)-A244159(n), #]`
-/

namespace A244233.P658592096177156896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A244159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A244233.P658592096177156896

/-! ## A244233.P10201770724975058271

`∏{digits}[A244159(n), #]+and(1, A008458(n))`
-/

namespace A244233.P10201770724975058271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + Int.land 1 (A008458 n)

end

end A244233.P10201770724975058271

/-! ## A244233.P3882480614762663789

`∏{digits}[A244159(n), #]+n+1-A004526(A103517(n))`
-/

namespace A244233.P3882480614762663789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + ((n + 1 : ℤ) - A004526 (A103517 n).toNat)

end

end A244233.P3882480614762663789

/-!
# A244234: a(n) = n - A244232(n).

The programs for A244234, there is no canonical definition to state claims against.
-/

/-! ## A244234.P16794614476498803539

`n-A244232(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244234.P16794614476498803539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244232 n

end

end A244234.P16794614476498803539

/-! ## A244234.P16077663900632455416

`n-∑{digits}[A244159(n), #]`
-/

namespace A244234.P16077663900632455416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A244234.P16077663900632455416

/-! ## A244234.P6228765175489855997

`abs(A244232(n)+A001489(n))`
-/

namespace A244234.P6228765175489855997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244232 n + A001489 n|

end

end A244234.P6228765175489855997

/-! ## A244234.P6708002515338058348

`A057428(n)*A244232(n)+n`
-/

namespace A244234.P6708002515338058348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A244232 n + (n : ℤ)

end

end A244234.P6708002515338058348

/-! ## A244234.P7500795404579211989

`∑{d}[A244232(n)+A001489(n), A000010(#)]`
-/

namespace A244234.P7500795404579211989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244232 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A244234.P7500795404579211989

/-! ## A244234.P3756995780818275179

`lcm(A244232(n)+A001489(n), A034947(n+1)²)`
-/

namespace A244234.P3756995780818275179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244232 n + A001489 n) (A034947 (n + 1) ^ 2)

end

end A244234.P3756995780818275179

/-! ## A244234.P9209783298671129415

`A025581(A244232(n)+A000217(n))`
-/

namespace A244234.P9209783298671129415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A244232 n + A000217 n).toNat

end

end A244234.P9209783298671129415

/-! ## A244234.P28600248313959172

`n-A326746(A244159(n))`
-/

namespace A244234.P28600248313959172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326746 (A244159 n).toNat

end

end A244234.P28600248313959172

/-!
# A244235: Number of Dyck paths of semilength n having exactly one occurrence of the consecutive pattern UDDU.

The programs for A244235, there is no canonical definition to state claims against.
-/

/-! ## A244235.P5058751134252090242

`A243827(A000217(n+10)-10)`
-/

namespace A244235.P5058751134252090242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A000217 (n + 10) - 10).toNat

end

end A244235.P5058751134252090242

/-! ## A244235.P12663501635655996251

`A243827(A179865(n+11)-10)`
-/

namespace A244235.P12663501635655996251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A179865 (n + 11) - 10).toNat

end

end A244235.P12663501635655996251

/-! ## A244235.P6825936787292379964

`A243827(A028310(n)+A000217(n+9))`
-/

namespace A244235.P6825936787292379964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A028310 n + A000217 (n + 9)).toNat

end

end A244235.P6825936787292379964

/-! ## A244235.P10438871612406270685

`A243827(A167499(n+7)+A005843(n+2))`
-/

namespace A244235.P10438871612406270685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A244235.P10438871612406270685

/-! ## A244235.P2131243486873514638

`A243827(A027379(n+6)+A005843(n+6))`
-/

namespace A244235.P2131243486873514638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A027379 (n + 6) + A005843 (n + 6)).toNat

end

end A244235.P2131243486873514638

/-!
# A244236: Number of Dyck paths of semilength n having exactly one occurrence of the consecutive pattern UDUD.

The programs for A244236, there is no canonical definition to state claims against.
-/

/-! ## A244236.P3939124730178041882

`A094507(A152948(n+1))%A164651(n)`
-/

namespace A244236.P3939124730178041882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094507 (A152948 (n + 1)).toNat) (A164651 n)

end

end A244236.P3939124730178041882

/-! ## A244236.P12799802946891075271

`A243827(A052905(n+8)-6)`
-/

namespace A244236.P12799802946891075271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A052905 (n + 8) - 6).toNat

end

end A244236.P12799802946891075271

/-! ## A244236.P5077903731118195878

`A243827(A000217(n+11)-11)`
-/

namespace A244236.P5077903731118195878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A000217 (n + 11) - 11).toNat

end

end A244236.P5077903731118195878

/-! ## A244236.P1567866704604585057

`A243827(A055998(n+3)+A016921(n+7))`
-/

namespace A244236.P1567866704604585057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A055998 (n + 3) + A016921 (n + 7)).toNat

end

end A244236.P1567866704604585057

/-! ## A244236.P14255764681931655012

`A243827(A179865(n+9)+A016777(n+6))`
-/

namespace A244236.P14255764681931655012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (A179865 (n + 9) + A016777 (n + 6)).toNat

end

end A244236.P14255764681931655012

/-! ## A244236.P5524666333246972278

`A243827(eq[10, A025581(n)])`
-/

namespace A244236.P5524666333246972278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244236.P5524666333246972278

/-!
# A244239: Number of partitions of n into 3 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244239, the canonical program `A244239.P5054183489572206621` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244239 has offset 9).

The definition of A244239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244239.P5054183489572206621

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244239

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P5054183489572206621.Spec : Prop :=
  ∀ n, P5054183489572206621.a n = A244239 (n + 9)

theorem P5054183489572206621.correct : P5054183489572206621.Spec := by
  intro n
  simp only [A244239, Nat.add_sub_cancel]

end A244239

/-! ## A244239.P13005476690852198927

`floor(a(n-2)+n/3+2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A244239.P13005476690852198927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 3 + 2)⌋

end

end A244239.P13005476690852198927

namespace A244239

/-- `floor(a(n-2)+n/3+2)` -/
def P13005476690852198927.Spec : Prop :=
  ∀ n, P13005476690852198927.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P9672521134532081283

`A089108(n+1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A244239.P9672521134532081283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A089108 (n + 1) - a (n - 1)

end

end A244239.P9672521134532081283

namespace A244239

/-- `A089108(n+1)-a(n-1)` -/
def P9672521134532081283.Spec : Prop :=
  ∀ n, P9672521134532081283.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P16879303466566932231

`A087156(n+1)+A014591(n)`
-/

namespace A244239.P16879303466566932231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A014591 n

end

end A244239.P16879303466566932231

namespace A244239

/-- `A087156(n+1)+A014591(n)` -/
def P16879303466566932231.Spec : Prop :=
  ∀ n, P16879303466566932231.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P14122820899018964038

`A069905(n)+A065475(n+1)`
-/

namespace A244239.P14122820899018964038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A065475 (n + 1)

end

end A244239.P14122820899018964038

namespace A244239

/-- `A069905(n)+A065475(n+1)` -/
def P14122820899018964038.Spec : Prop :=
  ∀ n, P14122820899018964038.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P9482459045628514819

`A014591(n)+A057427(n)+n`
-/

namespace A244239.P9482459045628514819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n + (A057427 n + (n : ℤ))

end

end A244239.P9482459045628514819

namespace A244239

/-- `A014591(n)+A057427(n)+n` -/
def P9482459045628514819.Spec : Prop :=
  ∀ n, P9482459045628514819.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P10451368067730601257

`A008795(n+1)+A008795(n)-A337483(n)`
-/

namespace A244239.P10451368067730601257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (n + 1) + (A008795 n - A337483 n)

end

end A244239.P10451368067730601257

namespace A244239

/-- `A008795(n+1)+A008795(n)-A337483(n)` -/
def P10451368067730601257.Spec : Prop :=
  ∀ n, P10451368067730601257.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P3292962089458646364

`A184010(A001399(n+1))`
-/

namespace A244239.P3292962089458646364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (A001399 (n + 1)).toNat

end

end A244239.P3292962089458646364

namespace A244239

/-- `A184010(A001399(n+1))` -/
def P3292962089458646364.Spec : Prop :=
  ∀ n, P3292962089458646364.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P35501064069456284

`A168443(A167614(n+1))`
-/

namespace A244239.P35501064069456284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A167614 (n + 1)).toNat

end

end A244239.P35501064069456284

namespace A244239

/-- `A168443(A167614(n+1))` -/
def P35501064069456284.Spec : Prop :=
  ∀ n, P35501064069456284.a n = A244239 (n + 9)

end A244239

/-! ## A244239.P14573382724015079905

`A168443(A167499(n)+n)`
-/

namespace A244239.P14573382724015079905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A167499 n + (n : ℤ)).toNat

end

end A244239.P14573382724015079905

namespace A244239

/-- `A168443(A167499(n)+n)` -/
def P14573382724015079905.Spec : Prop :=
  ∀ n, P14573382724015079905.a n = A244239 (n + 9)

end A244239

/-!
# A244240: Number of partitions of n into 4 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244240, there is no canonical definition to state claims against.
-/

/-! ## A244240.P15198221229397920848

`A168443(∑[n+5]+5-2*n)`
-/

namespace A244240.P15198221229397920848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A244240.P15198221229397920848

/-! ## A244240.P5336080229971371772

`A168443(Δ[A005286(n)]+5)%A305266(n)`
-/

namespace A244240.P5336080229971371772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168443 (f1 (n + 1) - f1 n + 5).toNat) (A305266 n)

end

end A244240.P5336080229971371772

/-! ## A244240.P8419367075052124114

`gcd(A000038(n), A168443(A167614(n+2)+1))`
-/

namespace A244240.P8419367075052124114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A168443 (A167614 (n + 2) + 1).toNat)

end

end A244240.P8419367075052124114

/-! ## A244240.P8292180909958451236

`lcm(A033999(n), A168443(A167614(n+2)+1))`
-/

namespace A244240.P8292180909958451236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A168443 (A167614 (n + 2) + 1).toNat)

end

end A244240.P8292180909958451236

/-! ## A244240.P16746549980775317328

`A168443(A167614(n+2)+1)%A184704(n+1)`
-/

namespace A244240.P16746549980775317328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168443 (A167614 (n + 2) + 1).toNat) (A184704 (n + 1))

end

end A244240.P16746549980775317328

/-!
# A244241: Number of partitions of n into 5 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244241, there is no canonical definition to state claims against.
-/

/-! ## A244241.P7770097520938912003

`A168443(A155212(n)+13)`
-/

namespace A244241.P7770097520938912003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A155212 n + 13).toNat

end

end A244241.P7770097520938912003

/-! ## A244241.P12700247364430434109

`A168443(A167614(n+3)+2)`
-/

namespace A244241.P12700247364430434109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A167614 (n + 3) + 2).toNat

end

end A244241.P12700247364430434109

/-! ## A244241.P15873922133535412681

`A168443(A000124(n+4)+4)`
-/

namespace A244241.P15873922133535412681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A000124 (n + 4) + 4).toNat

end

end A244241.P15873922133535412681

/-! ## A244241.P16285750745658546090

`A168443(A000217(n+4)+5)`
-/

namespace A244241.P16285750745658546090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A000217 (n + 4) + 5).toNat

end

end A244241.P16285750745658546090

/-! ## A244241.P12878313196655904253

`A168443(A027379(n+2)+8)`
-/

namespace A244241.P12878313196655904253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A027379 (n + 2) + 8).toNat

end

end A244241.P12878313196655904253

/-! ## A244241.P8939928309533143284

`A168443(A046691(n+2)+9)`
-/

namespace A244241.P8939928309533143284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A046691 (n + 2) + 9).toNat

end

end A244241.P8939928309533143284

/-! ## A244241.P13153016513790078062

`A168443(A052905(n+3)-(2*n+1))`
-/

namespace A244241.P13153016513790078062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A244241.P13153016513790078062

/-!
# A244242: Number of partitions of n into 6 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244242, there is no canonical definition to state claims against.
-/

/-! ## A244242.P3908514964554484059

`A168443(A167499(n+4)+1)`
-/

namespace A244242.P3908514964554484059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A167499 (n + 4) + 1).toNat

end

end A244242.P3908514964554484059

/-! ## A244242.P3108185035975144557

`A168443(A167614(n+4)+3)`
-/

namespace A244242.P3108185035975144557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A167614 (n + 4) + 3).toNat

end

end A244242.P3108185035975144557

/-! ## A244242.P17926544033677254517

`A168443(A027379(n+3)+9)`
-/

namespace A244242.P17926544033677254517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A027379 (n + 3) + 9).toNat

end

end A244242.P17926544033677254517

/-! ## A244242.P15106465206909183428

`A168443(eq[7, A131818(n+1)])`
-/

namespace A244242.P15106465206909183428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244242.P15106465206909183428

/-!
# A244243: Number of partitions of n into 7 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244243, there is no canonical definition to state claims against.
-/

/-! ## A244243.P13662045558806376067

`A168443(A056119(n)+28)`
-/

namespace A244243.P13662045558806376067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A056119 n + 28).toNat

end

end A244243.P13662045558806376067

/-! ## A244243.P15554153465537448429

`A168443(A034856(n+5)+9)`
-/

namespace A244243.P15554153465537448429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A034856 (n + 5) + 9).toNat

end

end A244243.P15554153465537448429

/-! ## A244243.P4013285188949465482

`A168443(A052905(n+3)+12)`
-/

namespace A244243.P4013285188949465482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A052905 (n + 3) + 12).toNat

end

end A244243.P4013285188949465482

/-! ## A244243.P17902347565571489098

`A168443(A051938(n+6)+25)`
-/

namespace A244243.P17902347565571489098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (A051938 (n + 6) + 25).toNat

end

end A244243.P17902347565571489098

/-! ## A244243.P1133225405678062956

`A168443(eq[8, A131818(n+1)])`
-/

namespace A244243.P1133225405678062956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244243.P1133225405678062956

/-!
# A244244: Number of partitions of n into 8 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244244, there is no canonical definition to state claims against.
-/

/-! ## A244244.P6789782928184741371

`A168443(eq[8, A002260(n+1)]+1)`
-/

namespace A244244.P6789782928184741371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244244.P6789782928184741371

/-! ## A244244.P8749967969620506979

`A168443(eq[7, A002262(n)]+1)`
-/

namespace A244244.P8749967969620506979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244244.P8749967969620506979

/-! ## A244244.P6668841003011257028

`A168443(eq[9, A131818(n+1)])`
-/

namespace A244244.P6668841003011257028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244244.P6668841003011257028

/-! ## A244244.P5271374393551443048

`A168443(eq[7, A144328(n+1)]+1)`
-/

namespace A244244.P5271374393551443048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244244.P5271374393551443048

/-!
# A244245: Number of partitions of n into 9 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244245, there is no canonical definition to state claims against.
-/

/-! ## A244245.P14057230999256360566

`A168443(eq[10, A131818(n+1)])`
-/

namespace A244245.P14057230999256360566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244245.P14057230999256360566

/-! ## A244245.P7224091118233603300

`A168443(eq[10, A135223(n+1)])`
-/

namespace A244245.P7224091118233603300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244245.P7224091118233603300

/-!
# A244246: Number of partitions of n into 10 parts such that every i-th smallest part (counted with multiplicity) is different from i.

The programs for A244246, there is no canonical definition to state claims against.
-/

/-! ## A244246.P8501670176063474190

`A168443(eq[11, A131818(n+1)])`
-/

namespace A244246.P8501670176063474190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244246.P8501670176063474190

/-! ## A244246.P13744051114034080412

`A168443(eq[11, A123229(n+1)])`
-/

namespace A244246.P13744051114034080412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244246.P13744051114034080412

/-!
# A244247: First prime in set of 3 palindromic primes in arithmetic progression ordered by the largest term in the progression.

The programs for A244247, there is no canonical definition to state claims against.
-/

/-! ## A244247.P7593632821759048180

`A157868(A000010(A000045(2*n+1))+1)`
-/

namespace A244247.P7593632821759048180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (A000010 (A000045 (2 * n + 1)).toNat + 1).toNat

end

end A244247.P7593632821759048180

/-!
# A244248: Semiprimes whose binary representation, read in decimal, is prime.

The programs for A244248, there is no canonical definition to state claims against.
-/

/-! ## A244248.P15583030843652523092

`filter[A036952(n+3), A359828(#)]`
-/

namespace A244248.P15583030843652523092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A244248.P15583030843652523092

/-! ## A244248.P2457145615763197072

`∩[A001358(n+1), A036952(n+1)]`
-/

namespace A244248.P2457145615763197072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P2457145615763197072

/-! ## A244248.P3280391352952625299

`filter[A036952(n+1), A064911(#)]`
-/

namespace A244248.P3280391352952625299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244248.P3280391352952625299

/-! ## A244248.P12479222018481943516

`filter[A036952(n+1), A353480(#)]`
-/

namespace A244248.P12479222018481943516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A244248.P12479222018481943516

/-! ## A244248.P14122679116337957020

`∩[A036952(n+1), A046315(n+1)]`
-/

namespace A244248.P14122679116337957020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P14122679116337957020

/-! ## A244248.P6683093598178122512

`∩[A036952(n+1), A176540(n+1)]`
-/

namespace A244248.P6683093598178122512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P6683093598178122512

/-! ## A244248.P15421381136912544328

`∩[A036952(n+1), A323644(n+1)]`
-/

namespace A244248.P15421381136912544328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P15421381136912544328

/-! ## A244248.P8728349109360946556

`∩[A036952(n+1), A346041(n+1)]`
-/

namespace A244248.P8728349109360946556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P8728349109360946556

/-! ## A244248.P8240739631082861163

`∩[A036952(n+1), A077135(n+1)]`
-/

namespace A244248.P8240739631082861163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P8240739631082861163

/-! ## A244248.P3662442782241790051

`∩[A036952(n+1), A077136(n+1)]`
-/

namespace A244248.P3662442782241790051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P3662442782241790051

/-! ## A244248.P2630231004518314788

`∩[A036952(n+1), A257409(n+1)]`
-/

namespace A244248.P2630231004518314788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P2630231004518314788

/-! ## A244248.P15957470272275375326

`filter[A156059(n+1), A064911(#)]`
-/

namespace A244248.P15957470272275375326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A244248.P15957470272275375326

/-! ## A244248.P10605131085859482313

`filter[A156059(n+1), A101040(#)]`
-/

namespace A244248.P10605131085859482313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A244248.P10605131085859482313

/-! ## A244248.P6739002707443144076

`filter[A156059(n+1), A353480(#)]`
-/

namespace A244248.P6739002707443144076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A244248.P6739002707443144076

/-! ## A244248.P17072210501851456697

`filter[A156059(n+1), A353799(#)]`
-/

namespace A244248.P17072210501851456697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A244248.P17072210501851456697

/-! ## A244248.P11866303730916534342

`filter[A156059(n+1), A359828(#)]`
-/

namespace A244248.P11866303730916534342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A244248.P11866303730916534342

/-! ## A244248.P5151726716681440043

`∩[A001358(n+1), A156059(n+1)]`
-/

namespace A244248.P5151726716681440043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P5151726716681440043

/-! ## A244248.P12068311351528724106

`∩[A046315(n+1), A156059(n+1)]`
-/

namespace A244248.P12068311351528724106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P12068311351528724106

/-! ## A244248.P17394018851111076006

`∩[A077135(n+1), A156059(n+1)]`
-/

namespace A244248.P17394018851111076006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P17394018851111076006

/-! ## A244248.P4391886234258623389

`∩[A077136(n+1), A156059(n+1)]`
-/

namespace A244248.P4391886234258623389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244248.P4391886234258623389

/-!
# A244250: Triangle read by rows in which row n lists the widths in the first octant of the symmetric representation of sigma(n).

The programs for A244250, there is no canonical definition to state claims against.
-/

/-! ## A244250.P8401110682846249558

`A249351(eq[0, floor(2*sqrt(n))%2]+1)`
-/

namespace A244250.P8401110682846249558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244250.P8401110682846249558

/-! ## A244250.P16716426321050534359

`A249351(Δ[n²]-(n-C(∑[char[∑[n+1]]], 2)))`
-/

namespace A244250.P16716426321050534359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))).toNat

end

end A244250.P16716426321050534359

/-! ## A244250.P4507717733511578376

`A249351(A063656(n)+1)`
-/

namespace A244250.P4507717733511578376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A063656 n + 1).toNat

end

end A244250.P4507717733511578376

/-! ## A244250.P82537198464834220

`A249351(2*n+1-A051162(n))`
-/

namespace A244250.P82537198464834220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 ((2 * n + 1 : ℤ) - A051162 n).toNat

end

end A244250.P82537198464834220

/-! ## A244250.P11383313716452753216

`A249351(A057944(n)+A038722(n+1))`
-/

namespace A244250.P11383313716452753216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A057944 n + A038722 (n + 1)).toNat

end

end A244250.P11383313716452753216

/-! ## A244250.P16592907014225465431

`A249351(A057944(n)+A061579(n)+1)`
-/

namespace A244250.P16592907014225465431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A057944 n + (A061579 n + 1)).toNat

end

end A244250.P16592907014225465431

/-! ## A244250.P6538254753936466074

`A249351(∑[A010054(n)]²-A002262(n))`
-/

namespace A244250.P6538254753936466074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A002262 n).toNat

end

end A244250.P6538254753936466074

/-! ## A244250.P6151277012632550196

`A249351(A002260(n+1)+A003056(n)²)`
-/

namespace A244250.P6151277012632550196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A002260 (n + 1) + A003056 n ^ 2).toNat

end

end A244250.P6151277012632550196

/-! ## A244250.P4968104256280620381

`A249351(A134868(n+1)+A003056(n)²)`
-/

namespace A244250.P4968104256280620381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A134868 (n + 1) + A003056 n ^ 2).toNat

end

end A244250.P4968104256280620381

/-!
# A244252: Total number of incoming edges at depth n in the solid partitions graph.

The programs for A244252, there is no canonical definition to state claims against.
-/

/-! ## A244252.P15910716108475769999

`A262923(2*n+1)+A196564(A192950(n))`
-/

namespace A244252.P15910716108475769999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262923 (2 * n + 1) + A196564 (A192950 n).toNat

end

end A244252.P15910716108475769999

/-!
# A244253: a(n) = the frequency of the most common final digit of a prime with n digits.

The programs for A244253, there is no canonical definition to state claims against.
-/

/-! ## A244253.P17947964645288984636

`A377091(Δ[A214765(n)])`
-/

namespace A244253.P17947964645288984636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (f1 (n + 1) - f1 n).toNat

end

end A244253.P17947964645288984636

/-!
# A244255: a(n) = the frequency of the most common 2-digit ending of a prime with n digits.

The programs for A244255, there is no canonical definition to state claims against.
-/

/-! ## A244255.P16102079316748863824

`A013937(or(n+1, A371517(n)))`
-/

namespace A244255.P16102079316748863824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013937 (Int.lor (n + 1 : ℤ) (A371517 n)).toNat

end

end A244255.P16102079316748863824

/-!
# A244259: Number of non-twin isolated divisors of n.

The programs for A244259, there is no canonical definition to state claims against.
-/

/-! ## A244259.P4174645568982566134

`A102677(A004767(n)*A118958(n+1))`
-/

namespace A244259.P4174645568982566134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A004767 n * A118958 (n + 1)).toNat

end

end A244259.P4174645568982566134

/-! ## A244259.P8340773356671172214

`A102677(lcm(A004767(n), A118958(n+1)))`
-/

namespace A244259.P8340773356671172214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (Int.lcm (A004767 n) (A118958 (n + 1)))

end

end A244259.P8340773356671172214

/-! ## A244259.P13422719538786800977

`C(Δ[A329845(n+1)], A175400(3*n))`
-/

namespace A244259.P13422719538786800977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (A175400 (3 * n)).toNat

end

end A244259.P13422719538786800977

/-! ## A244259.P5558547174115660022

`A268374(A166444(n)+26)`
-/

namespace A244259.P5558547174115660022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (A166444 n + 26).toNat

end

end A244259.P5558547174115660022

/-! ## A244259.P6931778379041053623

`A285194(Δ[A038636(n+3)])`
-/

namespace A244259.P6931778379041053623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038636 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285194 (f1 (n + 1) - f1 n).toNat

end

end A244259.P6931778379041053623

/-!
# A244265: Frequency of the most common final digit of a prime < 10^n.

The programs for A244265, there is no canonical definition to state claims against.
-/

/-! ## A244265.P46795649956425856

`xor(A091163(n+1), A104234(A014316(n)))`
-/

namespace A244265.P46795649956425856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091163 (n + 1)) (A104234 (A014316 n).toNat)

end

end A244265.P46795649956425856

/-! ## A244265.P5613302267187074137

`xor(A091163(n+1), A255326(A091168(n+1)))`
-/

namespace A244265.P5613302267187074137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091163 (n + 1)) (A255326 (A091168 (n + 1)).toNat)

end

end A244265.P5613302267187074137

/-!
# A244267: a(n) = the frequency of the most common 2-digit ending of a prime < 10^n.

The programs for A244267, there is no canonical definition to state claims against.
-/

/-! ## A244267.P16333166126269556637

`A188320(∑[∑[A126596(n)]])`
-/

namespace A244267.P16333166126269556637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244267.P16333166126269556637

/-!
# A244269: Primes p such that 1p2p3p4p5p6p7p8p9 is prime.

The programs for A244269, there is no canonical definition to state claims against.
-/

/-! ## A244269.P2387283649739113895

`p?[A244268(n+1)]`
-/

namespace A244269.P2387283649739113895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244269.P2387283649739113895

/-! ## A244269.P10168160716389451069

`p?[record[A244268(A102885(n))]]`
-/

namespace A244269.P10168160716389451069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244269.P10168160716389451069

/-! ## A244269.P15361986533815426816

`p?[record[A244268(A126759(n))]]`
-/

namespace A244269.P15361986533815426816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244269.P15361986533815426816

/-! ## A244269.P1781804907566437884

`record[A020639(A244268(n+2))]`
-/

namespace A244269.P1781804907566437884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A244268 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244269.P1781804907566437884

/-! ## A244269.P11786282321905543661

`filter[A244268(n+1), A010051(#)]`
-/

namespace A244269.P11786282321905543661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A244269.P11786282321905543661

/-! ## A244269.P5527442457319171564

`filter[A244268(n+1), A080339(#)]`
-/

namespace A244269.P5527442457319171564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A244269.P5527442457319171564

/-! ## A244269.P1210644323018043739

`filter[A244268(n+1), A192280(#)]`
-/

namespace A244269.P1210644323018043739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A244269.P1210644323018043739

/-! ## A244269.P12692592791787663709

`filter[A244268(n+1), A323152(#)]`
-/

namespace A244269.P12692592791787663709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A244269.P12692592791787663709

/-! ## A244269.P10446344800145905676

`filter[A244268(n+1), A323153(#)]`
-/

namespace A244269.P10446344800145905676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A244269.P10446344800145905676

/-! ## A244269.P15628046254630235448

`∩[A000040(n+1), A244268(n+1)]`
-/

namespace A244269.P15628046254630235448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244269.P15628046254630235448

/-!
# A244271: Primes p such that p1p2p3p4p5p6p7p8p9p is prime.

The programs for A244271, there is no canonical definition to state claims against.
-/

/-! ## A244271.P13384435781441925125

`p?[A244270(n+1)]`
-/

namespace A244271.P13384435781441925125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244271.P13384435781441925125

/-! ## A244271.P49903336259104572

`∩[A000040(n+1), A244270(n+1)]`
-/

namespace A244271.P49903336259104572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P49903336259104572

/-! ## A244271.P12191217815459291020

`∩[A004139(n+1), A244270(n+1)]`
-/

namespace A244271.P12191217815459291020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P12191217815459291020

/-! ## A244271.P7340822347029793171

`∩[A006005(n+1), A244270(n+1)]`
-/

namespace A244271.P7340822347029793171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P7340822347029793171

/-! ## A244271.P16593143140897663316

`∩[A008578(n+1), A244270(n+1)]`
-/

namespace A244271.P16593143140897663316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P16593143140897663316

/-! ## A244271.P216312328671403830

`∩[A033946(n+1), A244270(n+1)]`
-/

namespace A244271.P216312328671403830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P216312328671403830

/-! ## A244271.P7325892527900636990

`∩[A045319(n+1), A244270(n+1)]`
-/

namespace A244271.P7325892527900636990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P7325892527900636990

/-! ## A244271.P10814646296595598016

`∩[A045344(n+1), A244270(n+1)]`
-/

namespace A244271.P10814646296595598016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P10814646296595598016

/-! ## A244271.P15351197488261967513

`∩[A046022(n+1), A244270(n+1)]`
-/

namespace A244271.P15351197488261967513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P15351197488261967513

/-! ## A244271.P13240766502692875878

`∩[A053577(n+1), A244270(n+1)]`
-/

namespace A244271.P13240766502692875878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P13240766502692875878

/-! ## A244271.P1187563270837596374

`∩[A055977(n+1), A244270(n+1)]`
-/

namespace A244271.P1187563270837596374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P1187563270837596374

/-! ## A244271.P4109818694031641728

`∩[A067934(n+1), A244270(n+1)]`
-/

namespace A244271.P4109818694031641728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P4109818694031641728

/-! ## A244271.P7171258685727849575

`∩[A066191(n+1), A244270(n+1)]`
-/

namespace A244271.P7171258685727849575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P7171258685727849575

/-! ## A244271.P6462855410389369516

`filter[A244270(n+1), A010051(#)]`
-/

namespace A244271.P6462855410389369516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A244271.P6462855410389369516

/-! ## A244271.P5142946220765292311

`filter[A244270(n+1), A358751(#)]`
-/

namespace A244271.P5142946220765292311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A244271.P5142946220765292311

/-! ## A244271.P13285998798402319581

`filter[A244270(n+1), A358771(#)]`
-/

namespace A244271.P13285998798402319581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A244271.P13285998798402319581

/-! ## A244271.P3701978083064411871

`∩[A036844(n+1), A244270(n+1)]`
-/

namespace A244271.P3701978083064411871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244271.P3701978083064411871

/-! ## A244271.P14899879176222236640

`filter[A244270(n+1), A323152(#)]`
-/

namespace A244271.P14899879176222236640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A244271.P14899879176222236640

/-! ## A244271.P9448876202485373878

`filter[A244270(n+1), A323153(#)]`
-/

namespace A244271.P9448876202485373878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A244271.P9448876202485373878

/-! ## A244271.P8655851471386080634

`filter[A244270(n+1), A327861(#)]`
-/

namespace A244271.P8655851471386080634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A244271.P8655851471386080634

/-!
# A244276: Expansion of q^(-1/4) * eta(q)^8 * eta(q^4)^2 / eta(q^2)^5 in powers of q.

The programs for A244276, there is no canonical definition to state claims against.
-/

/-! ## A244276.P7431784499203581095

`-(A246608(4*n+1)/2)`
-/

namespace A244276.P7431784499203581095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A246608 (4 * n + 1) : ℚ) / 2)

end

end A244276.P7431784499203581095

/-! ## A244276.P3301706781613233658

`A009001(2*n)*A266575(4*n+1)`
-/

namespace A244276.P3301706781613233658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A266575 (4 * n + 1)

end

end A244276.P3301706781613233658

/-! ## A244276.P14667737480489423943

`(A004442(n)-n)*A266575(4*n+1)`
-/

namespace A244276.P14667737480489423943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A266575 (4 * n + 1)

end

end A244276.P14667737480489423943

/-! ## A244276.P9686372520230622342

`A246608(4*n+1)/(2*n-A005843(n+1))`
-/

namespace A244276.P9686372520230622342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (4 * n + 1) : ℚ) / ((2 * n : ℤ) - A005843 (n + 1) : ℚ)

end

end A244276.P9686372520230622342

/-! ## A244276.P16318856669611985883

`A246608(4*n+1)/A246608(A316789(4*n+2))`
-/

namespace A244276.P16318856669611985883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246608 (4 * n + 1) : ℚ) / (A246608 (A316789 (4 * n + 2)).toNat : ℚ)

end

end A244276.P16318856669611985883

/-!
# A244277: Rounded percent chance that n heads appear in 2n tosses of a fair coin.

The programs for A244277, the canonical program `A244277.P5948441075610872854` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244277 has offset 1).

The definition of A244277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244277.P5948441075610872854

`round(100*C(2*(n+1), n+1)/4^(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A244277

/-- `round(100*C(2*(n+1), n+1)/4^(n+1))` -/
def P5948441075610872854.Spec : Prop :=
  ∀ n, P5948441075610872854.a n = A244277 (n + 1)

theorem P5948441075610872854.correct : P5948441075610872854.Spec := by
  intro n
  simp only [A244277, Nat.add_sub_cancel]

end A244277

/-! ## A244277.P1362876442828692025

`round(record[(n+1)/a(n-1)]/(n+1))` with `a(0)=50`
-/

namespace A244277.P1362876442828692025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [50] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (n + 1 : ℚ))

end

end A244277.P1362876442828692025

namespace A244277

/-- `round(record[(n+1)/a(n-1)]/(n+1))` -/
def P1362876442828692025.Spec : Prop :=
  ∀ n, P1362876442828692025.a n = A244277 (n + 1)

end A244277

/-!
# A244278: G.f. satisfies: A(x*A(-x)) = C(x), where C(x) = 1 + x*C(x)^2 is the Catalan function of A000108.

The programs for A244278, there is no canonical definition to state claims against.
-/

/-! ## A244278.P13408634177640416112

`A058032(A192808(n))`
-/

namespace A244278.P13408634177640416112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A192808 n).toNat

end

end A244278.P13408634177640416112

/-! ## A244278.P17004325059969922877

`A194640(∑[A102318(n)])`
-/

namespace A244278.P17004325059969922877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244278.P17004325059969922877

/-! ## A244278.P8917150767152881361

`A008676(6*A150050(n))`
-/

namespace A244278.P8917150767152881361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (6 * A150050 n).toNat

end

end A244278.P8917150767152881361

/-!
# A244279: Numerators of the n-th iteration of the alternating continued fraction of the positive integers, initiated with (1 + ...).

The programs for A244279, there is no canonical definition to state claims against.
-/

/-! ## A244279.P15446738105580815002

`A065330(record[A309201(n+2)])`
-/

namespace A244279.P15446738105580815002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244279.P15446738105580815002

/-! ## A244279.P16537515222278380595

`A200322(or(A140787(n), A322236(n+1)))`
-/

namespace A244279.P16537515222278380595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (Int.lor (A140787 n) (A322236 (n + 1))).toNat

end

end A244279.P16537515222278380595

/-!
# A244280: Denominators of the n-th iteration of the alternating continued fraction of the positive integers, initiated with (1 + ...).

The programs for A244280, there is no canonical definition to state claims against.
-/

/-! ## A244280.P6605224327282736209

`A316772(n*a(n-3))` with `a(0)=2, a(1)=2, a(2)=11`
-/

namespace A244280.P6605224327282736209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 11] fun n a =>
  A316772 ((n : ℤ) * a (n - 3)).toNat

end

end A244280.P6605224327282736209

/-!
# A244281: Answer to Red, Green and Blue Tiles Problem.

The programs for A244281, there is no canonical definition to state claims against.
-/

/-! ## A244281.P15512574629666627119

`∑[∑[A059396(A027118(n))]]`
-/

namespace A244281.P15512574629666627119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (A027118 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244281.P15512574629666627119

/-! ## A244281.P7491612184955395644

`∑[∑[A086520(A051286(n))]]`
-/

namespace A244281.P7491612184955395644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A051286 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244281.P7491612184955395644

/-! ## A244281.P9216628806795294582

`∑[A135661(∑[(n+2)*2^n]-1)]`
-/

namespace A244281.P9216628806795294582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244281.P9216628806795294582

/-!
# A244282: Consider a prime number p with m decimal digits. The sequence lists the primes p such that the prefix of length m-1 and the suffix of length m-1 are both prime numbers.

The programs for A244282, there is no canonical definition to state claims against.
-/

/-! ## A244282.P13677460602405461971

`∩[A227916(n+1), A227919(n+1)]`
-/

namespace A244282.P13677460602405461971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244282.P13677460602405461971

/-! ## A244282.P11701299170197402500

`∩[A226099(n+1), A227919(n+1)]`
-/

namespace A244282.P11701299170197402500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244282.P11701299170197402500

/-! ## A244282.P1779898006228290767

`∪[A051362(A043320(n+1)), A069488(n+5)]`
-/

namespace A244282.P1779898006228290767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (A043320 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244282.P1779898006228290767

/-! ## A244282.P7935713836368312203

`A051362(n+1)-A004526(A185293(n))`
-/

namespace A244282.P7935713836368312203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051362 (n + 1) - A004526 (A185293 n).toNat

end

end A244282.P7935713836368312203

/-!
# A244283: Consider a number n with m decimal digits, m>9. The sequence lists the numbers n such that the prefix of length m-1 and the suffix of length m-1 are both perfect squares.

The programs for A244283, there is no canonical definition to state claims against.
-/

/-! ## A244283.P12407917449156266886

`A216455(A261713(n+1))`
-/

namespace A244283.P12407917449156266886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A261713 (n + 1)).toNat

end

end A244283.P12407917449156266886

/-! ## A244283.P7328120102891324137

`A168042(A382083(n+2))`
-/

namespace A244283.P7328120102891324137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (A382083 (n + 2)).toNat

end

end A244283.P7328120102891324137

/-! ## A244283.P18115327976924893668

`A168042(A055645(n+4))`
-/

namespace A244283.P18115327976924893668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (A055645 (n + 4)).toNat

end

end A244283.P18115327976924893668

/-! ## A244283.P10826609917480192868

`A168042(A062003(n)+4)`
-/

namespace A244283.P10826609917480192868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168042 (A062003 n + 4).toNat

end

end A244283.P10826609917480192868

/-! ## A244283.P5423288051745274989

`record[A261713(A106486(n)+1)]`
-/

namespace A244283.P5423288051745274989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261713 (A106486 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244283.P5423288051745274989

/-!
# A244287: Consider a decimal number of k>=2 digits x = d_(k)*10^(k-1) + d_(k-1)*10^(k-2) + … + d_(2)*10 + d_(1) and the transform T(x)-> (d_(k)+d_(k-1) mod 10)*10^(k-1) + (d_(k-1)+d_(k-2) mod 10)*10^(k-2) + … + (d_(2)+d_(1) mod 10)*10 + (d_(1)+d(k) mod 10). Sequence lists the numbers x such that x divides T(x).

The programs for A244287, there is no canonical definition to state claims against.
-/

/-! ## A244287.P6009260327166844682

`eq[A000030(n+1), A165111(n+1)]+1`
-/

namespace A244287.P6009260327166844682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244287.P6009260327166844682

/-! ## A244287.P15603455726649381750

`eq[A000030(A017353(n)), A165111(n)]`
-/

namespace A244287.P15603455726649381750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A017353 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244287.P15603455726649381750

/-! ## A244287.P2051813524064300871

`eq[A000030(A028310(n)), A165111(n)]`
-/

namespace A244287.P2051813524064300871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244287.P2051813524064300871

/-!
# A244288: Number of binary arrangements of total n 1's, without adjacent 1's on n X n array connected nw-se.

The programs for A244288, there is no canonical definition to state claims against.
-/

/-! ## A244288.P12446466901236035924

`A026272(A380512(n))`
-/

namespace A244288.P12446466901236035924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A380512 n).toNat

end

end A244288.P12446466901236035924

/-!
# A244290: Smallest prime a(n) = x^2 + y^2 such that c^2 + d^2 = A002313(n) and c*x + d*y = 1, where c,d,x,y are integers.

The programs for A244290, there is no canonical definition to state claims against.
-/

/-! ## A244290.P4404856843973846174

`A096695(a(n-1))` with `a(0)=5, a(1)=2, a(2)=2, a(3)=53, a(4)=5`
-/

namespace A244290.P4404856843973846174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 2, 53, 5] fun n a =>
  A096695 (a (n - 1)).toNat

end

end A244290.P4404856843973846174

/-! ## A244290.P5093117178350098570

`A096695(C(n, A226576(n)))`
-/

namespace A244290.P5093117178350098570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096695 (Nat.choose n (A226576 n).toNat)

end

end A244290.P5093117178350098570

/-!
# A244295: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 1.

The programs for A244295, there is no canonical definition to state claims against.
-/

/-! ## A244295.P11202049300711746500

`A238707(∑[n+3]+4)`
-/

namespace A244295.P11202049300711746500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244295.P11202049300711746500

/-! ## A244295.P8856706784132473958

`A238707(A000124(n+3))%A244300(n+8)`
-/

namespace A244295.P8856706784132473958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238707 (A000124 (n + 3)).toNat) (A244300 (n + 8))

end

end A244295.P8856706784132473958

/-! ## A244295.P8626382714833426384

`A238707(A000124(n+3))+n%A087960(n)`
-/

namespace A244295.P8626382714833426384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 3)).toNat + Int.tmod (n : ℤ) (A087960 n)

end

end A244295.P8626382714833426384

/-! ## A244295.P17603445192665950302

`-(A057428(n+1)*A238707(A000124(n+3)))`
-/

namespace A244295.P17603445192665950302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A057428 (n + 1) * A238707 (A000124 (n + 3)).toNat)

end

end A244295.P17603445192665950302

/-! ## A244295.P2196826295575380689

`A238707(A000124(n+3))^A001222(A100859(n+1))`
-/

namespace A244295.P2196826295575380689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238707 (A000124 (n + 3)).toNat : ℚ) ^ (A001222 (A100859 (n + 1)).toNat : ℤ)

end

end A244295.P2196826295575380689

/-!
# A244296: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 2.

The programs for A244296, there is no canonical definition to state claims against.
-/

/-! ## A244296.P54284603718151803

`A238707(A133263(n+4))`
-/

namespace A244296.P54284603718151803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 4)).toNat

end

end A244296.P54284603718151803

/-! ## A244296.P5705896094943387975

`A238707(A000124(n+4)+1)`
-/

namespace A244296.P5705896094943387975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 4) + 1).toNat

end

end A244296.P5705896094943387975

/-! ## A244296.P17044469099757575874

`A238707(A167614(n+3)-1)`
-/

namespace A244296.P17044469099757575874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167614 (n + 3) - 1).toNat

end

end A244296.P17044469099757575874

/-! ## A244296.P13460504459240888318

`A238707(A000217(n+4)+2)`
-/

namespace A244296.P13460504459240888318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000217 (n + 4) + 2).toNat

end

end A244296.P13460504459240888318

/-! ## A244296.P17227012148553783970

`A238707(A161680(n+5)+2)`
-/

namespace A244296.P17227012148553783970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A161680 (n + 5) + 2).toNat

end

end A244296.P17227012148553783970

/-! ## A244296.P6317039078188904473

`A238707(A167499(n+3)-3)`
-/

namespace A244296.P6317039078188904473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 3) - 3).toNat

end

end A244296.P6317039078188904473

/-! ## A244296.P5881086982889072369

`A238707(A052905(n+3)-A005843(n+2))`
-/

namespace A244296.P5881086982889072369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A052905 (n + 3) - A005843 (n + 2)).toNat

end

end A244296.P5881086982889072369

/-!
# A244297: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 3.

The programs for A244297, there is no canonical definition to state claims against.
-/

/-! ## A244297.P1840082155935105498

`A238707(A167614(n+4))`
-/

namespace A244297.P1840082155935105498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167614 (n + 4)).toNat

end

end A244297.P1840082155935105498

/-! ## A244297.P17311749503943448764

`A238707(A133263(n+5)+1)`
-/

namespace A244297.P17311749503943448764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 5) + 1).toNat

end

end A244297.P17311749503943448764

/-! ## A244297.P854555221805587840

`A238707(A000124(n+5)+2)`
-/

namespace A244297.P854555221805587840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 5) + 2).toNat

end

end A244297.P854555221805587840

/-! ## A244297.P1264017476334635001

`A238707(A000217(n+5)+3)`
-/

namespace A244297.P1264017476334635001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000217 (n + 5) + 3).toNat

end

end A244297.P1264017476334635001

/-! ## A244297.P3530024274119135365

`A238707(A167499(n+5)-(n+8))`
-/

namespace A244297.P3530024274119135365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 5) - (n + 8 : ℤ)).toNat

end

end A244297.P3530024274119135365

/-! ## A244297.P12934867389790263647

`A238707(A002620(n+3)+A002620(n+8))`
-/

namespace A244297.P12934867389790263647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A002620 (n + 3) + A002620 (n + 8)).toNat

end

end A244297.P12934867389790263647

/-!
# A244298: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 4.

The programs for A244298, there is no canonical definition to state claims against.
-/

/-! ## A244298.P224472016896277294

`A238707(A167614(n+5)+1)`
-/

namespace A244298.P224472016896277294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167614 (n + 5) + 1).toNat

end

end A244298.P224472016896277294

/-! ## A244298.P13952974286808326789

`A238707(A167499(n+5)-1)`
-/

namespace A244298.P13952974286808326789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 5) - 1).toNat

end

end A244298.P13952974286808326789

/-! ## A244298.P4212705746362911906

`A238707(A133263(n+6)+2)`
-/

namespace A244298.P4212705746362911906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 6) + 2).toNat

end

end A244298.P4212705746362911906

/-! ## A244298.P11707756266309298025

`A238707(A000124(n+6)+3)`
-/

namespace A244298.P11707756266309298025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 6) + 3).toNat

end

end A244298.P11707756266309298025

/-! ## A244298.P1200256214726749726

`A238707(A052905(n+5)-A005843(n+3))`
-/

namespace A244298.P1200256214726749726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A052905 (n + 5) - A005843 (n + 3)).toNat

end

end A244298.P1200256214726749726

/-!
# A244299: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 5.

The programs for A244299, there is no canonical definition to state claims against.
-/

/-! ## A244299.P5251329468021371627

`A238707(A167499(n+6))`
-/

namespace A244299.P5251329468021371627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 6)).toNat

end

end A244299.P5251329468021371627

/-! ## A244299.P2679049426252347012

`A238707(A167614(n+6)+2)`
-/

namespace A244299.P2679049426252347012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167614 (n + 6) + 2).toNat

end

end A244299.P2679049426252347012

/-! ## A244299.P14624239329485409948

`A238707(A161680(n+8)+5)`
-/

namespace A244299.P14624239329485409948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A161680 (n + 8) + 5).toNat

end

end A244299.P14624239329485409948

/-! ## A244299.P412546282226330237

`A238707(n+11+A000124(n+6))`
-/

namespace A244299.P412546282226330237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 ((n + 11 : ℤ) + A000124 (n + 6)).toNat

end

end A244299.P412546282226330237

