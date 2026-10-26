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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283600: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A283600, there is no canonical definition to state claims against.
-/

/-! ## A283600.P16853656593804926951

`A007088(A283602(n))`
-/

namespace A283600.P16853656593804926951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283602 n).toNat

end

end A283600.P16853656593804926951

/-! ## A283600.P11756436208957886857

`A305989(A283603(n))`
-/

namespace A283600.P11756436208957886857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283603 n).toNat

end

end A283600.P11756436208957886857

/-! ## A283600.P10532381686596829003

`A185544(2*A283602(n))`
-/

namespace A283600.P10532381686596829003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283602 n).toNat

end

end A283600.P10532381686596829003

/-! ## A283600.P642241603544902824

`A185544(lcm(2, A283602(n)))`
-/

namespace A283600.P642241603544902824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283602 n))

end

end A283600.P642241603544902824

/-!
# A283601: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A283601, there is no canonical definition to state claims against.
-/

/-! ## A283601.P16406817433922103622

`A007088(A283603(n))`
-/

namespace A283601.P16406817433922103622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283603 n).toNat

end

end A283601.P16406817433922103622

/-! ## A283601.P15912860806460274978

`A305989(A283602(n))`
-/

namespace A283601.P15912860806460274978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283602 n).toNat

end

end A283601.P15912860806460274978

/-! ## A283601.P13349050902856560485

`A185544(2*A283603(n))`
-/

namespace A283601.P13349050902856560485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283603 n).toNat

end

end A283601.P13349050902856560485

/-! ## A283601.P12149209415408192825

`A185544(lcm(2, A283603(n)))`
-/

namespace A283601.P12149209415408192825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283603 n))

end

end A283601.P12149209415408192825

/-!
# A283602: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A283602, there is no canonical definition to state claims against.
-/

/-! ## A283602.P12362462319158705719

`A057889(A283603(n))`
-/

namespace A283602.P12362462319158705719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283603 n).toNat

end

end A283602.P12362462319158705719

/-! ## A283602.P5326454532812685742

`A281589(2*A283603(n))`
-/

namespace A283602.P5326454532812685742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283603 n).toNat

end

end A283602.P5326454532812685742

/-! ## A283602.P15690111712744230704

`A325401(2*A283603(n))`
-/

namespace A283602.P15690111712744230704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283603 n).toNat

end

end A283602.P15690111712744230704

/-! ## A283602.P15706402729951512368

`A281589(lcm(2, A283603(n)))`
-/

namespace A283602.P15706402729951512368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283603 n))

end

end A283602.P15706402729951512368

/-! ## A283602.P2001140709901923091

`A030101(or(1, A283603(n)))`
-/

namespace A283602.P2001140709901923091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283603 n)).toNat

end

end A283602.P2001140709901923091

/-!
# A283603: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A283603, there is no canonical definition to state claims against.
-/

/-! ## A283603.P7009557727264095324

`A057889(A283602(n))`
-/

namespace A283603.P7009557727264095324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283602 n).toNat

end

end A283603.P7009557727264095324

/-! ## A283603.P17977467446416044416

`A325401(lcm(A066657(n), A283602(n)))`
-/

namespace A283603.P17977467446416044416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A066657 n) (A283602 n))

end

end A283603.P17977467446416044416

/-! ## A283603.P16344783143675799999

`A325401(A283602(n)*A303599(n+1))`
-/

namespace A283603.P16344783143675799999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283602 n * A303599 (n + 1)).toNat

end

end A283603.P16344783143675799999

/-! ## A283603.P6251466308043198458

`A325401(A086995(2*n+1)*A283602(n))`
-/

namespace A283603.P6251466308043198458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A086995 (2 * n + 1) * A283602 n).toNat

end

end A283603.P6251466308043198458

/-! ## A283603.P14718777013260369713

`A281589(2*A283602(n))`
-/

namespace A283603.P14718777013260369713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283602 n).toNat

end

end A283603.P14718777013260369713

/-!
# A283604: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A283604, there is no canonical definition to state claims against.
-/

/-! ## A283604.P15923962491084714191

`A007088(A283606(n))`
-/

namespace A283604.P15923962491084714191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283606 n).toNat

end

end A283604.P15923962491084714191

/-! ## A283604.P12703793285857608494

`A305989(A283607(n))`
-/

namespace A283604.P12703793285857608494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283607 n).toNat

end

end A283604.P12703793285857608494

/-! ## A283604.P13530916020593967381

`A185544(2*A283606(n))`
-/

namespace A283604.P13530916020593967381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283606 n).toNat

end

end A283604.P13530916020593967381

/-! ## A283604.P14117763697186463852

`A185544(lcm(2, A283606(n)))`
-/

namespace A283604.P14117763697186463852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283606 n))

end

end A283604.P14117763697186463852

/-! ## A283604.P9509535342008713936

`A185544(A283606(n)+A283606(n))`
-/

namespace A283604.P9509535342008713936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283606 n + A283606 n).toNat

end

end A283604.P9509535342008713936

/-!
# A283605: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A283605, there is no canonical definition to state claims against.
-/

/-! ## A283605.P12359200956583780641

`A007088(A283607(n))`
-/

namespace A283605.P12359200956583780641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283607 n).toNat

end

end A283605.P12359200956583780641

/-! ## A283605.P17799591894186197643

`A305989(A283606(n))`
-/

namespace A283605.P17799591894186197643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283606 n).toNat

end

end A283605.P17799591894186197643

/-! ## A283605.P8641836137561058723

`A185544(2*A283607(n))`
-/

namespace A283605.P8641836137561058723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283607 n).toNat

end

end A283605.P8641836137561058723

/-! ## A283605.P11037895175917212753

`A185544(lcm(2, A283607(n)))`
-/

namespace A283605.P11037895175917212753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283607 n))

end

end A283605.P11037895175917212753

/-! ## A283605.P14775733529678091452

`A185544(A283607(n)+A283607(n))`
-/

namespace A283605.P14775733529678091452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283607 n + A283607 n).toNat

end

end A283605.P14775733529678091452

/-!
# A283606: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A283606, there is no canonical definition to state claims against.
-/

/-! ## A283606.P4124847839515159851

`and(A126646(n), A264618(A283607(n)))`
-/

namespace A283606.P4124847839515159851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283607 n).toNat)

end

end A283606.P4124847839515159851

/-! ## A283606.P1509215355740914491

`A057889(A283607(n))`
-/

namespace A283606.P1509215355740914491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283607 n).toNat

end

end A283606.P1509215355740914491

/-! ## A283606.P3916711431245912347

`A325401(2*A283607(n))`
-/

namespace A283606.P3916711431245912347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283607 n).toNat

end

end A283606.P3916711431245912347

/-! ## A283606.P15294800255848551070

`A325401(lcm(2, A283607(n)))`
-/

namespace A283606.P15294800255848551070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283607 n))

end

end A283606.P15294800255848551070

/-! ## A283606.P13503351772991526108

`A030101(or(1, A283607(n)))`
-/

namespace A283606.P13503351772991526108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283607 n)).toNat

end

end A283606.P13503351772991526108

/-!
# A283607: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A283607, there is no canonical definition to state claims against.
-/

/-! ## A283607.P7798372442925995046

`and(A126646(n), A264618(A283606(n)))`
-/

namespace A283607.P7798372442925995046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283606 n).toNat)

end

end A283607.P7798372442925995046

/-! ## A283607.P5973025230766837603

`A057889(A283606(n))`
-/

namespace A283607.P5973025230766837603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283606 n).toNat

end

end A283607.P5973025230766837603

/-! ## A283607.P11519155960042408746

`A325401(or(1, A283606(n)))`
-/

namespace A283607.P11519155960042408746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A283606 n)).toNat

end

end A283607.P11519155960042408746

/-! ## A283607.P14032020579606601229

`A325401(A283606(n)+A000007(n))`
-/

namespace A283607.P14032020579606601229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283606 n + A000007 n).toNat

end

end A283607.P14032020579606601229

/-! ## A283607.P3256905276397717330

`A325401(A283606(n)%A007283(n))`
-/

namespace A283607.P3256905276397717330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A283606 n) (A007283 n)).toNat

end

end A283607.P3256905276397717330

/-!
# A283608: Numbers whose largest decimal digit is 5.

The programs for A283608, there is no canonical definition to state claims against.
-/

/-! ## A283608.P9390555691608031430

`A007092(A333656(n+1))`
-/

namespace A283608.P9390555691608031430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A333656 (n + 1)).toNat

end

end A283608.P9390555691608031430

/-! ## A283608.P6739636040086375936

`∩[A011535(n+1), A007092(n)]`
-/

namespace A283608.P6739636040086375936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283608.P6739636040086375936

/-! ## A283608.P365877568723003610

`∩[comp[A039147(n+1)], A007092(n)]`
-/

namespace A283608.P365877568723003610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A283608.P365877568723003610

/-! ## A283608.P4104503817786388811

`∩[comp[A135210(n+1)], A007092(n)]`
-/

namespace A283608.P4104503817786388811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A283608.P4104503817786388811

/-! ## A283608.P9477291280591952903

`eq[5, A054055(n)]`
-/

namespace A283608.P9477291280591952903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283608.P9477291280591952903

/-! ## A283608.P14131852936401908081

`eq[5, A047842(n)%10]`
-/

namespace A283608.P14131852936401908081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283608.P14131852936401908081

/-! ## A283608.P17083323988469070208

`eq[5, floor(log2(A086066(n)))]`
-/

namespace A283608.P17083323988469070208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283608.P17083323988469070208

/-! ## A283608.P2162032986846319238

`eq[1, A004185(n)%10-4]`
-/

namespace A283608.P2162032986846319238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10 - 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283608.P2162032986846319238

/-! ## A283608.P6116843985532834288

`eq[n+6, A095815(n+1)]+1`
-/

namespace A283608.P6116843985532834288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283608.P6116843985532834288

/-! ## A283608.P11998090305007350717

`eq[5, A047813(A137564(n))]`
-/

namespace A283608.P11998090305007350717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283608.P11998090305007350717

/-! ## A283608.P558711732866014407

`lt[A054055(n), A054055(A222245(n))]`
-/

namespace A283608.P558711732866014407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283608.P558711732866014407

/-! ## A283608.P3183961815753118599

`eq[A047842(n)+1, A047842(A222245(n))]`
-/

namespace A283608.P3183961815753118599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283608.P3183961815753118599

/-! ## A283608.P6804188932755530586

`eq[A047842(n)+2, A047842(A222246(n))]`
-/

namespace A283608.P6804188932755530586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283608.P6804188932755530586

/-!
# A283609: Numbers whose largest decimal digit is 6.

The programs for A283609, the canonical program `A283609.P513595827055992407` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283609 has offset 1).

The definition of A283609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283609.P7623680665344440235

`A007093(A337141(n+1))`
-/

namespace A283609.P7623680665344440235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A337141 (n + 1)).toNat

end

end A283609.P7623680665344440235

namespace A283609

/-- `A007093(A337141(n+1))` -/
def P7623680665344440235.Spec : Prop :=
  ∀ n, P7623680665344440235.a n = A283609 (n + 1)

end A283609

/-! ## A283609.P513595827055992407

`∩[A011536(n+1), A007093(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A283609

/-- `∩[A011536(n+1), A007093(n)]` -/
def P513595827055992407.Spec : Prop :=
  ∀ n, (P513595827055992407.a n : ℤ) = A283609 (n + 1)

theorem P513595827055992407.correct : P513595827055992407.Spec := by
  intro n
  simp only [A283609, Nat.add_sub_cancel]

end A283609

/-! ## A283609.P1215009093706817113

`eq[6, A054055(n)]`
-/

namespace A283609.P1215009093706817113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283609.P1215009093706817113

namespace A283609

/-- `eq[6, A054055(n)]` -/
def P1215009093706817113.Spec : Prop :=
  ∀ n, (P1215009093706817113.a n : ℤ) = A283609 (n + 1)

end A283609

/-! ## A283609.P6817499758638839036

`eq[2, (A004185(n)-4)%10]`
-/

namespace A283609.P6817499758638839036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n - 4) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283609.P6817499758638839036

namespace A283609

/-- `eq[2, (A004185(n)-4)%10]` -/
def P6817499758638839036.Spec : Prop :=
  ∀ n, (P6817499758638839036.a n : ℤ) = A283609 (n + 1)

end A283609

/-! ## A283609.P845246383095737563

`eq[6, A095815(n+1)-(n+1)]+1`
-/

namespace A283609.P845246383095737563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283609.P845246383095737563

namespace A283609

/-- `eq[6, A095815(n+1)-(n+1)]+1` -/
def P845246383095737563.Spec : Prop :=
  ∀ n, (P845246383095737563.a n : ℤ) = A283609 (n + 1)

end A283609

/-! ## A283609.P9914882478126752826

`record[A235049(A283610(n+1))]`
-/

namespace A283609.P9914882478126752826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A283610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283609.P9914882478126752826

namespace A283609

/-- `record[A235049(A283610(n+1))]` -/
def P9914882478126752826.Spec : Prop :=
  ∀ n, P9914882478126752826.a n = A283609 (n + 1)

end A283609

/-! ## A283609.P4036853737921897664

`lt[A054055(A004181(n)), A054055(n)]`
-/

namespace A283609.P4036853737921897664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004181 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283609.P4036853737921897664

namespace A283609

/-- `lt[A054055(A004181(n)), A054055(n)]` -/
def P4036853737921897664.Spec : Prop :=
  ∀ n, (P4036853737921897664.a n : ℤ) = A283609 (n + 1)

end A283609

/-! ## A283609.P5590581572853955758

`eq[A047842(n)+2, A047842(A222250(n))]`
-/

namespace A283609.P5590581572853955758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283609.P5590581572853955758

namespace A283609

/-- `eq[A047842(n)+2, A047842(A222250(n))]` -/
def P5590581572853955758.Spec : Prop :=
  ∀ n, (P5590581572853955758.a n : ℤ) = A283609 (n + 1)

end A283609

/-!
# A283610: Numbers n whose largest decimal digit is 7.

The programs for A283610, the canonical program `A283610.P9230607664063654978` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283610 has offset 1).

The definition of A283610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283610.P6449196883258100085

`A007094(A337239(n+1))`
-/

namespace A283610.P6449196883258100085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A337239 (n + 1)).toNat

end

end A283610.P6449196883258100085

namespace A283610

/-- `A007094(A337239(n+1))` -/
def P6449196883258100085.Spec : Prop :=
  ∀ n, P6449196883258100085.a n = A283610 (n + 1)

end A283610

/-! ## A283610.P9230607664063654978

`∩[A011537(n+1), A007094(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283610

/-- `∩[A011537(n+1), A007094(n)]` -/
def P9230607664063654978.Spec : Prop :=
  ∀ n, (P9230607664063654978.a n : ℤ) = A283610 (n + 1)

theorem P9230607664063654978.correct : P9230607664063654978.Spec := by
  intro n
  simp only [A283610, Nat.add_sub_cancel]

end A283610

/-! ## A283610.P14460256169905733009

`eq[7, A054055(n)]`
-/

namespace A283610.P14460256169905733009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283610.P14460256169905733009

namespace A283610

/-- `eq[7, A054055(n)]` -/
def P14460256169905733009.Spec : Prop :=
  ∀ n, (P14460256169905733009.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P16006090115789272229

`eq[7, A004185(n)%10]`
-/

namespace A283610.P16006090115789272229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283610.P16006090115789272229

namespace A283610

/-- `eq[7, A004185(n)%10]` -/
def P16006090115789272229.Spec : Prop :=
  ∀ n, (P16006090115789272229.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P610127126683268160

`eq[7, A047842(n)%10]`
-/

namespace A283610.P610127126683268160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283610.P610127126683268160

namespace A283610

/-- `eq[7, A047842(n)%10]` -/
def P610127126683268160.Spec : Prop :=
  ∀ n, (P610127126683268160.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P2654495729084916685

`eq[7, floor(log2(A086066(n)))]`
-/

namespace A283610.P2654495729084916685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283610.P2654495729084916685

namespace A283610

/-- `eq[7, floor(log2(A086066(n)))]` -/
def P2654495729084916685.Spec : Prop :=
  ∀ n, (P2654495729084916685.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P281753686987124849

`eq[n+8, A095815(n+1)]+1`
-/

namespace A283610.P281753686987124849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283610.P281753686987124849

namespace A283610

/-- `eq[n+8, A095815(n+1)]+1` -/
def P281753686987124849.Spec : Prop :=
  ∀ n, (P281753686987124849.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P8016678197823894697

`eq[8, A070939(A086066(n))]`
-/

namespace A283610.P8016678197823894697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283610.P8016678197823894697

namespace A283610

/-- `eq[8, A070939(A086066(n))]` -/
def P8016678197823894697.Spec : Prop :=
  ∀ n, (P8016678197823894697.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P3612438864049459463

`eq[0, A102681(n)^A102679(n)]`
-/

namespace A283610.P3612438864049459463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102681 n : ℚ) ^ (A102679 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A283610.P3612438864049459463

namespace A283610

/-- `eq[0, A102681(n)^A102679(n)]` -/
def P3612438864049459463.Spec : Prop :=
  ∀ n, (P3612438864049459463.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P17495665430846923971

`lt[A054055(n), A054055(A222252(n))]`
-/

namespace A283610.P17495665430846923971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283610.P17495665430846923971

namespace A283610

/-- `lt[A054055(n), A054055(A222252(n))]` -/
def P17495665430846923971.Spec : Prop :=
  ∀ n, (P17495665430846923971.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P4048966241618543660

`eq[A047842(n)+1, A047842(A222252(n))]`
-/

namespace A283610.P4048966241618543660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283610.P4048966241618543660

namespace A283610

/-- `eq[A047842(n)+1, A047842(A222252(n))]` -/
def P4048966241618543660.Spec : Prop :=
  ∀ n, (P4048966241618543660.a n : ℤ) = A283610 (n + 1)

end A283610

/-! ## A283610.P3233708199686364898

`lt[A054055(n)+1, A054055(A222253(n))]`
-/

namespace A283610.P3233708199686364898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283610.P3233708199686364898

namespace A283610

/-- `lt[A054055(n)+1, A054055(A222253(n))]` -/
def P3233708199686364898.Spec : Prop :=
  ∀ n, (P3233708199686364898.a n : ℤ) = A283610 (n + 1)

end A283610

/-!
# A283611: Numbers whose largest decimal digit is 8.

The programs for A283611, the canonical program `A283611.P7753238100296088695` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283611 has offset 1).

The definition of A283611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283611.P7753238100296088695

`A007095(comp[A037477(n)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283611

/-- `A007095(comp[A037477(n)])` -/
def P7753238100296088695.Spec : Prop :=
  ∀ n, P7753238100296088695.a n = A283611 (n + 1)

theorem P7753238100296088695.correct : P7753238100296088695.Spec := by
  intro n
  simp only [A283611, Nat.add_sub_cancel]

end A283611

/-! ## A283611.P3191013009864534116

`A037479(comp[A037477(n)])`
-/

namespace A283611.P3191013009864534116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A283611.P3191013009864534116

namespace A283611

/-- `A037479(comp[A037477(n)])` -/
def P3191013009864534116.Spec : Prop :=
  ∀ n, P3191013009864534116.a n = A283611 (n + 1)

end A283611

/-! ## A283611.P3121664888974405858

`A007095(A338090(n+1))`
-/

namespace A283611.P3121664888974405858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A338090 (n + 1)).toNat

end

end A283611.P3121664888974405858

namespace A283611

/-- `A007095(A338090(n+1))` -/
def P3121664888974405858.Spec : Prop :=
  ∀ n, P3121664888974405858.a n = A283611 (n + 1)

end A283611

/-! ## A283611.P15108791952861377782

`∩[A011538(n+1), A007095(n)]`
-/

namespace A283611.P15108791952861377782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283611.P15108791952861377782

namespace A283611

/-- `∩[A011538(n+1), A007095(n)]` -/
def P15108791952861377782.Spec : Prop :=
  ∀ n, (P15108791952861377782.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P7652752525164065920

`∩[A057104(n+1), A007095(n)]`
-/

namespace A283611.P7652752525164065920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283611.P7652752525164065920

namespace A283611

/-- `∩[A057104(n+1), A007095(n)]` -/
def P7652752525164065920.Spec : Prop :=
  ∀ n, (P7652752525164065920.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P1453340060411304712

`∩[A011538(n+1), A037479(n+1)]`
-/

namespace A283611.P1453340060411304712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283611.P1453340060411304712

namespace A283611

/-- `∩[A011538(n+1), A037479(n+1)]` -/
def P1453340060411304712.Spec : Prop :=
  ∀ n, (P1453340060411304712.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P16228902298751558511

`∩[A037479(n+1), A057104(n+1)]`
-/

namespace A283611.P16228902298751558511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283611.P16228902298751558511

namespace A283611

/-- `∩[A037479(n+1), A057104(n+1)]` -/
def P16228902298751558511.Spec : Prop :=
  ∀ n, (P16228902298751558511.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P17676568345071713898

`eq[8, A054055(n)]`
-/

namespace A283611.P17676568345071713898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283611.P17676568345071713898

namespace A283611

/-- `eq[8, A054055(n)]` -/
def P17676568345071713898.Spec : Prop :=
  ∀ n, (P17676568345071713898.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P16755412327571873599

`eq[64, floor(log2(A086066(n)))²]`
-/

namespace A283611.P16755412327571873599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283611.P16755412327571873599

namespace A283611

/-- `eq[64, floor(log2(A086066(n)))²]` -/
def P16755412327571873599.Spec : Prop :=
  ∀ n, (P16755412327571873599.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P10294376479393368864

`eq[2, A030076(n+1)]+1`
-/

namespace A283611.P10294376479393368864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283611.P10294376479393368864

namespace A283611

/-- `eq[2, A030076(n+1)]+1` -/
def P10294376479393368864.Spec : Prop :=
  ∀ n, (P10294376479393368864.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P17114773275329997496

`eq[10, A004185(n)%10+2]`
-/

namespace A283611.P17114773275329997496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283611.P17114773275329997496

namespace A283611

/-- `eq[10, A004185(n)%10+2]` -/
def P17114773275329997496.Spec : Prop :=
  ∀ n, (P17114773275329997496.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P8984945246665011314

`eq[8, A095815(n+1)-(n+1)]+1`
-/

namespace A283611.P8984945246665011314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095815 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283611.P8984945246665011314

namespace A283611

/-- `eq[8, A095815(n+1)-(n+1)]+1` -/
def P8984945246665011314.Spec : Prop :=
  ∀ n, (P8984945246665011314.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P3878223109020925594

`lt[n, A004183(A222254(n))]`
-/

namespace A283611.P3878223109020925594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283611.P3878223109020925594

namespace A283611

/-- `lt[n, A004183(A222254(n))]` -/
def P3878223109020925594.Spec : Prop :=
  ∀ n, (P3878223109020925594.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P12195675836569466259

`record[A235049(A011539(n+1))]`
-/

namespace A283611.P12195675836569466259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A011539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283611.P12195675836569466259

namespace A283611

/-- `record[A235049(A011539(n+1))]` -/
def P12195675836569466259.Spec : Prop :=
  ∀ n, P12195675836569466259.a n = A283611 (n + 1)

end A283611

/-! ## A283611.P6142802821258017370

`lt[n², A004184(n)*A222254(n)]`
-/

namespace A283611.P6142802821258017370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n * A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283611.P6142802821258017370

namespace A283611

/-- `lt[n², A004184(n)*A222254(n)]` -/
def P6142802821258017370.Spec : Prop :=
  ∀ n, (P6142802821258017370.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P18046218908531814012

`lt[A054055(A004183(n)), A054055(n)]`
-/

namespace A283611.P18046218908531814012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A004183 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283611.P18046218908531814012

namespace A283611

/-- `lt[A054055(A004183(n)), A054055(n)]` -/
def P18046218908531814012.Spec : Prop :=
  ∀ n, (P18046218908531814012.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P8575692982294337213

`lt[A054055(n), A054055(A222254(n))]`
-/

namespace A283611.P8575692982294337213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283611.P8575692982294337213

namespace A283611

/-- `lt[A054055(n), A054055(A222254(n))]` -/
def P8575692982294337213.Spec : Prop :=
  ∀ n, (P8575692982294337213.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P15748086078883567926

`lt[A086066(n), A086066(A222254(n))]`
-/

namespace A283611.P15748086078883567926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283611.P15748086078883567926

namespace A283611

/-- `lt[A086066(n), A086066(A222254(n))]` -/
def P15748086078883567926.Spec : Prop :=
  ∀ n, (P15748086078883567926.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P18372713183604511888

`eq[A047842(n)+1, A047842(A222254(n))]`
-/

namespace A283611.P18372713183604511888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283611.P18372713183604511888

namespace A283611

/-- `eq[A047842(n)+1, A047842(A222254(n))]` -/
def P18372713183604511888.Spec : Prop :=
  ∀ n, (P18372713183604511888.a n : ℤ) = A283611 (n + 1)

end A283611

/-! ## A283611.P11659178724433231124

`record[A004184(comp[A004183(n)])]`
-/

namespace A283611.P11659178724433231124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283611.P11659178724433231124

namespace A283611

/-- `record[A004184(comp[A004183(n)])]` -/
def P11659178724433231124.Spec : Prop :=
  ∀ n, P11659178724433231124.a n = A283611 (n + 1)

end A283611

/-!
# A283612: Number of sets of sequences of total length n over an alphabet of n letters with the symmetric group acting on the letters.

The programs for A283612, there is no canonical definition to state claims against.
-/

/-! ## A283612.P11204538837033961845

`A023193((n+1)/(2*n+1)*C(3*n, n))+floor(n/3)*ceil(n/3)`
-/

namespace A283612.P11204538837033961845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (3 * n) n : ℚ))).toNat + ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉

end

end A283612.P11204538837033961845

/-! ## A283612.P1068704192444346807

`A008616(A150774(n+1))`
-/

namespace A283612.P1068704192444346807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A150774 (n + 1)).toNat

end

end A283612.P1068704192444346807

/-!
# A283615: Irregular triangle read by rows: T(n,k) is the number of necklaces of n 1's, n -1's, and k 0's such that no two adjacent elements are equal.

The programs for A283615, there is no canonical definition to state claims against.
-/

/-! ## A283615.P13607284086258337946

`A333940(∑[∑{e}[n+1, #]+1]*A032741(n))`
-/

namespace A283615.P13607284086258337946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A032741 n).toNat

end

end A283615.P13607284086258337946

/-! ## A283615.P17912138723378099635

`A333765(A011973(n+2)*A098550(n+1))`
-/

namespace A283615.P17912138723378099635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333765 (A011973 (n + 2) * A098550 (n + 1)).toNat

end

end A283615.P17912138723378099635

/-! ## A283615.P3058596853000021155

`A281013(A014206(n)-A352745(3*n+2))`
-/

namespace A283615.P3058596853000021155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281013 (A014206 n - A352745 (3 * n + 2)).toNat

end

end A283615.P3058596853000021155

/-! ## A283615.P7284926405020712994

`A098859(and(A001072(n+3), A289435(n+4)))`
-/

namespace A283615.P7284926405020712994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 (Int.land (A001072 (n + 3)) (A289435 (n + 4))).toNat

end

end A283615.P7284926405020712994

/-!
# A283616: a(n) = Product_{k=2..floor(sqrt(2n-1)/2)+1} (2n-1) mod (2k-1).

The programs for A283616, there is no canonical definition to state claims against.
-/

/-! ## A283616.P8739700258358711496

`A033715(xor(A220922(n+1), A346098(n+1)))`
-/

namespace A283616.P8739700258358711496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (Int.xor (A220922 (n + 1)) (A346098 (n + 1))).toNat

end

end A283616.P8739700258358711496

/-!
# A283617: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w integers and 0 <= z <= w such that x^3 + 2*y^3 is a square.

The programs for A283617, there is no canonical definition to state claims against.
-/

/-! ## A283617.P6861877493989006711

`A139352(A333218(2*(n+2))-A139352(n))`
-/

namespace A283617.P6861877493989006711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A333218 (2 * (n + 2)) - A139352 n).toNat

end

end A283617.P6861877493989006711

/-! ## A283617.P10949723342413378396

`A273429(n)+A000007(A051390(n+1))`
-/

namespace A283617.P10949723342413378396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + A000007 (A051390 (n + 1)).toNat

end

end A283617.P10949723342413378396

/-! ## A283617.P16038815745857471990

`A294081(n)-A060838(A167499(A094024(n)))`
-/

namespace A283617.P16038815745857471990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294081 n - A060838 (A167499 (A094024 n).toNat).toNat

end

end A283617.P16038815745857471990

/-!
# A283620: a(n) is the least exponent k such that 3^k-1 is divisible by prime(n)^2, or -1 if no such k exists.

The programs for A283620, there is no canonical definition to state claims against.
-/

/-! ## A283620.P9950478602830582649

`A070676(p?[round(8*n/7)]²)-A033683(n)`
-/

namespace A283620.P9950478602830582649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat - A033683 n

end

end A283620.P9950478602830582649

/-!
# A283621: Smallest term A001043(k) with k>n such that A001043(k) is multiple of A001043(n).

The programs for A283621, there is no canonical definition to state claims against.
-/

/-! ## A283621.P5931767213106909997

`A001043(A167918(n+1))`
-/

namespace A283621.P5931767213106909997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A167918 (n + 1)).toNat

end

end A283621.P5931767213106909997

/-! ## A283621.P4763933915818048286

`A011974(A167918(n+1)+1)`
-/

namespace A283621.P4763933915818048286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A167918 (n + 1) + 1).toNat

end

end A283621.P4763933915818048286

/-! ## A283621.P7266201907023272325

`A164653(A167918(n+1)+2)`
-/

namespace A283621.P7266201907023272325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (A167918 (n + 1) + 2).toNat

end

end A283621.P7266201907023272325

/-! ## A283621.P9336311083846980441

`A076273(A167918(n+1)+1)+1`
-/

namespace A283621.P9336311083846980441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (A167918 (n + 1) + 1).toNat + 1

end

end A283621.P9336311083846980441

/-!
# A283623: a(n) = prime(n) + (1 + prime(1 + n))/2.

The programs for A283623, the canonical program `A283623.P33233020204361262` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283623 has offset 1).

The definition of A283623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283623.P33233020204361262

`A000040(n+1)+(1+A000040(n+2))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283623

/-- `A000040(n+1)+(1+A000040(n+2))/2` -/
def P33233020204361262.Spec : Prop :=
  ∀ n, P33233020204361262.a n = (A283623 (n + 1) : ℚ)

end A283623

/-! ## A283623.P10109315112219061753

`A000040(n+1)+(1+A000040(1+n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283623.P10109315112219061753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (1 + A000040 (1 + (n + 1)) : ℚ) / 2

end

end A283623.P10109315112219061753

namespace A283623

/-- `A000040(n+1)+(1+A000040(1+n+1))/2` -/
def P10109315112219061753.Spec : Prop :=
  ∀ n, P10109315112219061753.a n = (A283623 (n + 1) : ℚ)

end A283623

/-! ## A283623.P8621673408739983850

`A305748(n)+a(n-1)` with `a(0)=4`
-/

namespace A283623.P8621673408739983850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A305748 n + a (n - 1)

end

end A283623.P8621673408739983850

namespace A283623

/-- `A305748(n)+a(n-1)` -/
def P8621673408739983850.Spec : Prop :=
  ∀ n, P8621673408739983850.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P173569065723403680

`A073612(n+2)-A007504(n)`
-/

namespace A283623.P173569065723403680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073612 (n + 2) - A007504 n

end

end A283623.P173569065723403680

namespace A283623

/-- `A073612(n+2)-A007504(n)` -/
def P173569065723403680.Spec : Prop :=
  ∀ n, P173569065723403680.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P9602242145122801514

`A006254(n+1)+Δ[A007504(n)]`
-/

namespace A283623.P9602242145122801514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (f1 (n + 1) - f1 n)

end

end A283623.P9602242145122801514

namespace A283623

/-- `A006254(n+1)+Δ[A007504(n)]` -/
def P9602242145122801514.Spec : Prop :=
  ∀ n, P9602242145122801514.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P10639924523567309276

`A006254(n+1)+A000040(n+1)`
-/

namespace A283623.P10639924523567309276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A000040 (n + 1)

end

end A283623.P10639924523567309276

namespace A283623

/-- `A006254(n+1)+A000040(n+1)` -/
def P10639924523567309276.Spec : Prop :=
  ∀ n, P10639924523567309276.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P7641460425800984675

`A008864(n+1)+A005097(n+1)`
-/

namespace A283623.P7641460425800984675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A005097 (n + 1)

end

end A283623.P7641460425800984675

namespace A283623

/-- `A008864(n+1)+A005097(n+1)` -/
def P7641460425800984675.Spec : Prop :=
  ∀ n, P7641460425800984675.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P12006407580091047168

`A098090(n+1)+A006093(n+1)`
-/

namespace A283623.P12006407580091047168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + A006093 (n + 1)

end

end A283623.P12006407580091047168

namespace A283623

/-- `A098090(n+1)+A006093(n+1)` -/
def P12006407580091047168.Spec : Prop :=
  ∀ n, P12006407580091047168.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P6338165115950404404

`A067076(n+1)+A052147(n+1)`
-/

namespace A283623.P6338165115950404404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + A052147 (n + 1)

end

end A283623.P6338165115950404404

namespace A283623

/-- `A067076(n+1)+A052147(n+1)` -/
def P6338165115950404404.Spec : Prop :=
  ∀ n, P6338165115950404404.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P4302475486818001566

`A089253(n+1)+A040976(n+1)`
-/

namespace A283623.P4302475486818001566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A040976 (n + 1)

end

end A283623.P4302475486818001566

namespace A283623

/-- `A089253(n+1)+A040976(n+1)` -/
def P4302475486818001566.Spec : Prop :=
  ∀ n, P4302475486818001566.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P16411037588973963933

`A089192(n+1)+A086801(n+1)`
-/

namespace A283623.P16411037588973963933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + A086801 (n + 1)

end

end A283623.P16411037588973963933

namespace A283623

/-- `A089192(n+1)+A086801(n+1)` -/
def P16411037588973963933.Spec : Prop :=
  ∀ n, P16411037588973963933.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P2586267442367909506

`A163057(n+1)+A014692(n+1)`
-/

namespace A283623.P2586267442367909506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + A014692 (n + 1)

end

end A283623.P2586267442367909506

namespace A283623

/-- `A163057(n+1)+A014692(n+1)` -/
def P2586267442367909506.Spec : Prop :=
  ∀ n, P2586267442367909506.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P2229322798223180239

`A001043(n+1)-A005097(n+1)`
-/

namespace A283623.P2229322798223180239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A005097 (n + 1)

end

end A283623.P2229322798223180239

namespace A283623

/-- `A001043(n+1)-A005097(n+1)` -/
def P2229322798223180239.Spec : Prop :=
  ∀ n, P2229322798223180239.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P2759330068255671215

`A092949(n+1)-A006254(n+1)`
-/

namespace A283623.P2759330068255671215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - A006254 (n + 1)

end

end A283623.P2759330068255671215

namespace A283623

/-- `A092949(n+1)-A006254(n+1)` -/
def P2759330068255671215.Spec : Prop :=
  ∀ n, P2759330068255671215.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P12174024864120843459

`A168565(n+2)-A046933(n+1)`
-/

namespace A283623.P12174024864120843459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) - A046933 (n + 1)

end

end A283623.P12174024864120843459

namespace A283623

/-- `A168565(n+2)-A046933(n+1)` -/
def P12174024864120843459.Spec : Prop :=
  ∀ n, P12174024864120843459.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P16637689915701951613

`A345727(n+1)%A072055(n+1)`
-/

namespace A283623.P16637689915701951613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345727 (n + 1)) (A072055 (n + 1))

end

end A283623.P16637689915701951613

namespace A283623

/-- `A345727(n+1)%A072055(n+1)` -/
def P16637689915701951613.Spec : Prop :=
  ∀ n, P16637689915701951613.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P13101368162261420291

`A000040(n+1)+A005097(n+1)+1`
-/

namespace A283623.P13101368162261420291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A005097 (n + 1) + 1)

end

end A283623.P13101368162261420291

namespace A283623

/-- `A000040(n+1)+A005097(n+1)+1` -/
def P13101368162261420291.Spec : Prop :=
  ∀ n, P13101368162261420291.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P8807443879790669042

`A006093(n+1)+A006254(n+1)+1`
-/

namespace A283623.P8807443879790669042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A006254 (n + 1) + 1)

end

end A283623.P8807443879790669042

namespace A283623

/-- `A006093(n+1)+A006254(n+1)+1` -/
def P8807443879790669042.Spec : Prop :=
  ∀ n, P8807443879790669042.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P17905563414017464207

`A005097(n+1)+A006093(n+1)+2`
-/

namespace A283623.P17905563414017464207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A006093 (n + 1) + 2)

end

end A283623.P17905563414017464207

namespace A283623

/-- `A005097(n+1)+A006093(n+1)+2` -/
def P17905563414017464207.Spec : Prop :=
  ∀ n, P17905563414017464207.a n = A283623 (n + 1)

end A283623

/-! ## A283623.P8044636662352304561

`A006254(n+1)+A008864(n+1)-1`
-/

namespace A283623.P8044636662352304561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + (A008864 (n + 1) - 1)

end

end A283623.P8044636662352304561

namespace A283623

/-- `A006254(n+1)+A008864(n+1)-1` -/
def P8044636662352304561.Spec : Prop :=
  ∀ n, P8044636662352304561.a n = A283623 (n + 1)

end A283623

/-!
# A283624: Number of {0,1} n X n matrices with no rows or columns in which all entries are the same.

The programs for A283624, there is no canonical definition to state claims against.
-/

/-! ## A283624.P12923112844583079539

`2*A048291(n)+2^n²+2*(2^n-2)^n-4*(2^n-1)^n`
-/

namespace A283624.P12923112844583079539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048291 n + (2 ^ n ^ 2 : ℤ) + 2 * ((2 ^ n : ℤ) - 2) ^ n - 4 * ((2 ^ n : ℤ) - 1) ^ n

end

end A283624.P12923112844583079539

/-! ## A283624.P5697877375562516810

`A283654(A179865(n+1))+A000007(n)`
-/

namespace A283624.P5697877375562516810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283654 (A179865 (n + 1)).toNat + A000007 n

end

end A283624.P5697877375562516810

/-! ## A283624.P12891469372112486653

`A283654(A179865(n+1))^A178334(n)`
-/

namespace A283624.P12891469372112486653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283654 (A179865 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A283624.P12891469372112486653

/-!
# A283628: Numbers m such that 4m - 3, 4m - 2, 4m - 1, 4m + 1, 4m + 2 and 4m + 3 are all squarefree.

The programs for A283628, there is no canonical definition to state claims against.
-/

/-! ## A283628.P10509743755606641379

`A068088(n+1)/4`
-/

namespace A283628.P10509743755606641379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068088 (n + 1) : ℚ) / 4

end

end A283628.P10509743755606641379

/-! ## A283628.P16917855385740529341

`∩[A370600(n+1)+1, A370600(n+1)]`
-/

namespace A283628.P16917855385740529341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370600 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283628.P16917855385740529341

/-! ## A283628.P4242241590528835252

`A002265(A068088(n+1))`
-/

namespace A283628.P4242241590528835252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A068088 (n + 1)).toNat

end

end A283628.P4242241590528835252

/-! ## A283628.P6234828287996330786

`A025480(A068088(n+1)+1)`
-/

namespace A283628.P6234828287996330786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A068088 (n + 1) + 1).toNat

end

end A283628.P6234828287996330786

/-! ## A283628.P15694586574574865831

`A003602(A068088(n+1)-2)`
-/

namespace A283628.P15694586574574865831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A068088 (n + 1) - 2).toNat

end

end A283628.P15694586574574865831

/-! ## A283628.P11544381155456600206

`A188134(lcm(2, A068088(n+1)))`
-/

namespace A283628.P11544381155456600206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (Int.lcm 2 (A068088 (n + 1)))

end

end A283628.P11544381155456600206

/-! ## A283628.P10228402355749711200

`A188134(A068088(n+1))%A033477(n)`
-/

namespace A283628.P10228402355749711200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188134 (A068088 (n + 1)).toNat) (A033477 n)

end

end A283628.P10228402355749711200

/-! ## A283628.P3723967597583616661

`A188134(A068088(n+1)%A049103(n+1))`
-/

namespace A283628.P3723967597583616661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (Int.tmod (A068088 (n + 1)) (A049103 (n + 1))).toNat

end

end A283628.P3723967597583616661

/-! ## A283628.P16096948940615357912

`A106609(2*A068088(n+1))`
-/

namespace A283628.P16096948940615357912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A068088 (n + 1)).toNat

end

end A283628.P16096948940615357912

/-!
# A283629: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283629, there is no canonical definition to state claims against.
-/

/-! ## A283629.P17125667932226139671

`A283634(∑[n+3]+1)`
-/

namespace A283629.P17125667932226139671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283629.P17125667932226139671

/-! ## A283629.P14364806833738311641

`A283634(A034856(n+2))+A006983(n+1)`
-/

namespace A283629.P14364806833738311641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A034856 (n + 2)).toNat + A006983 (n + 1)

end

end A283629.P14364806833738311641

/-! ## A283629.P6449196363622541737

`A283634(A034856(n+2))+A010894(n+1)`
-/

namespace A283629.P6449196363622541737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A034856 (n + 2)).toNat + A010894 (n + 1 + 21)

end

end A283629.P6449196363622541737

/-! ## A283629.P5204601373445133854

`A283634(A034856(n+2))%A316874(n+1)`
-/

namespace A283629.P5204601373445133854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283634 (A034856 (n + 2)).toNat) (A316874 (n + 1))

end

end A283629.P5204601373445133854

/-!
# A283630: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283630, there is no canonical definition to state claims against.
-/

/-! ## A283630.P10745175706444447721

`A283634(A141214(n+1))`
-/

namespace A283630.P10745175706444447721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A141214 (n + 1)).toNat

end

end A283630.P10745175706444447721

/-! ## A283630.P8946059054233750540

`A283634(A055998(n+2))`
-/

namespace A283630.P8946059054233750540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A055998 (n + 2)).toNat

end

end A283630.P8946059054233750540

/-! ## A283630.P2386204005504207070

`A283634(A155212(n)+5)`
-/

namespace A283630.P2386204005504207070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A155212 n + 5).toNat

end

end A283630.P2386204005504207070

/-! ## A283630.P13424851998302005731

`A283634(A056000(n)+7)`
-/

namespace A283630.P13424851998302005731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A056000 n + 7).toNat

end

end A283630.P13424851998302005731

/-! ## A283630.P14474923013654939734

`A283634(Δ[A034857(n+1)])`
-/

namespace A283630.P14474923013654939734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (f1 (n + 1) - f1 n).toNat

end

end A283630.P14474923013654939734

/-!
# A283631: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283631, there is no canonical definition to state claims against.
-/

/-! ## A283631.P8661594898175531196

`A283634(Δ[A264443(n)])`
-/

namespace A283631.P8661594898175531196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (f1 (n + 1) - f1 n).toNat

end

end A283631.P8661594898175531196

/-! ## A283631.P5074798735135705244

`A283634(A046691(n+3))`
-/

namespace A283631.P5074798735135705244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A046691 (n + 3)).toNat

end

end A283631.P5074798735135705244

/-! ## A283631.P18117884906530519652

`A283634(A056115(n)+11)`
-/

namespace A283631.P18117884906530519652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A056115 n + 11).toNat

end

end A283631.P18117884906530519652

/-! ## A283631.P6609526032866007937

`A283634(eq[4, A193592(n)])`
-/

namespace A283631.P6609526032866007937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283631.P6609526032866007937

/-! ## A283631.P11562189143376199840

`A283634(Δ[A023545(n+1)])`
-/

namespace A283631.P11562189143376199840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (f1 (n + 1) - f1 n).toNat

end

end A283631.P11562189143376199840

/-!
# A283632: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283632, there is no canonical definition to state claims against.
-/

/-! ## A283632.P16636758535493919524

`A283634(A056119(n)+16)`
-/

namespace A283632.P16636758535493919524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A056119 n + 16).toNat

end

end A283632.P16636758535493919524

/-! ## A283632.P8753374561120872703

`A283634(eq[3, A219347(n)])`
-/

namespace A283632.P8753374561120872703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283632.P8753374561120872703

/-! ## A283632.P5058452970717692204

`A283634(eq[5, A193592(n)])`
-/

namespace A283632.P5058452970717692204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283632.P5058452970717692204

/-! ## A283632.P10646858018408285637

`A283634(eq[8, A185782(n+1)])`
-/

namespace A283632.P10646858018408285637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283632.P10646858018408285637

/-! ## A283632.P905316706458218860

`A283634(eq[16, A057728(n+1)])`
-/

namespace A283632.P905316706458218860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283632.P905316706458218860

/-!
# A283633: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283633, there is no canonical definition to state claims against.
-/

/-! ## A283633.P7653102535405190074

`A283634(eq[4, A219347(n)])`
-/

namespace A283633.P7653102535405190074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283633.P7653102535405190074

/-! ## A283633.P14779744852927281263

`A283634(eq[6, A193592(n)])`
-/

namespace A283633.P14779744852927281263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283633.P14779744852927281263

/-! ## A283633.P10874302452825667060

`A283634(A000124(n+7)-7)`
-/

namespace A283633.P10874302452825667060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A000124 (n + 7) - 7).toNat

end

end A283633.P10874302452825667060

/-! ## A283633.P8244571822432073975

`A283634(eq[7, A200370(n+1)])`
-/

namespace A283633.P8244571822432073975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283633.P8244571822432073975

/-! ## A283633.P14598979233957012833

`A283634(eq[10, A185782(n+1)])`
-/

namespace A283633.P14598979233957012833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283633.P14598979233957012833

/-!
# A283634: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283634, there is no canonical definition to state claims against.
-/

/-! ## A283634.P16081900880119569042

`A146167(A171053(n+1))*A163940(n)`
-/

namespace A283634.P16081900880119569042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146167 (A171053 (n + 1)).toNat * A163940 n

end

end A283634.P16081900880119569042

/-! ## A283634.P2841703500587502726

`A055932(n+1)%A245558(A217302(n))`
-/

namespace A283634.P2841703500587502726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055932 (n + 1)) (A245558 (A217302 n).toNat)

end

end A283634.P2841703500587502726

/-! ## A283634.P4340949262457658585

`A360665(A007716(n)%A219002(n+1))`
-/

namespace A283634.P4340949262457658585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360665 (Int.tmod (A007716 n) (A219002 (n + 1))).toNat

end

end A283634.P4340949262457658585

/-! ## A283634.P17037351102566161902

`C(A287352(A082582(n)), A001511(n+3))`
-/

namespace A283634.P17037351102566161902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287352 (A082582 n).toNat).toNat (A001511 (n + 3)).toNat

end

end A283634.P17037351102566161902

/-! ## A283634.P2744682402457660468

`A291811(A303868(n+1)^A359677(n+4))`
-/

namespace A283634.P2744682402457660468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (SequenceMachineLib.roundAway ((A303868 (n + 1) : ℚ) ^ (A359677 (n + 4) : ℤ))).toNat

end

end A283634.P2744682402457660468

/-!
# A283635: Number of 2 X n 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283635, there is no canonical definition to state claims against.
-/

/-! ## A283635.P14779534131015440927

`A283634(∑[n+1]+2)`
-/

namespace A283635.P14779534131015440927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283635.P14779534131015440927

/-! ## A283635.P14060487853352882817

`A283634(A133263(n+1))%A283604(n)`
-/

namespace A283635.P14060487853352882817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283634 (A133263 (n + 1)).toNat) (A283604 n)

end

end A283635.P14060487853352882817

/-! ## A283635.P384444894870108939

`A283634(A167499(n)-3)%A028032(n)`
-/

namespace A283635.P384444894870108939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283634 (A167499 n - 3).toNat) (A028032 n)

end

end A283635.P384444894870108939

/-! ## A283635.P3339609228526345043

`A091717(n+1)*A283634(A167499(n)-3)`
-/

namespace A283635.P3339609228526345043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091717 (n + 1) * A283634 (A167499 n - 3).toNat

end

end A283635.P3339609228526345043

/-! ## A283635.P9958853237220876294

`A007318(C(2, n+1))*A283634(A167499(n)-3)`
-/

namespace A283635.P9958853237220876294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A283634 (A167499 n - 3).toNat

end

end A283635.P9958853237220876294

/-!
# A283636: Number of 3Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283636, there is no canonical definition to state claims against.
-/

/-! ## A283636.P9673458441636469674

`A283634(∑[n+2]+4)`
-/

namespace A283636.P9673458441636469674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283636.P9673458441636469674

/-! ## A283636.P10688366347526682589

`and(-1, A283634(A167614(n+1)))`
-/

namespace A283636.P10688366347526682589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A283634 (A167614 (n + 1)).toNat)

end

end A283636.P10688366347526682589

/-! ## A283636.P15285744536827762946

`A283634(A167614(n+1))+A025469(n)`
-/

namespace A283636.P15285744536827762946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167614 (n + 1)).toNat + A025469 n

end

end A283636.P15285744536827762946

/-! ## A283636.P9883169231353312277

`A283634(A167614(n+1))+A061858(n)`
-/

namespace A283636.P9883169231353312277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167614 (n + 1)).toNat + A061858 n

end

end A283636.P9883169231353312277

/-! ## A283636.P11673925642657714875

`A283634(A167614(n+1))+A185037(n)`
-/

namespace A283636.P11673925642657714875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167614 (n + 1)).toNat + A185037 n

end

end A283636.P11673925642657714875

/-!
# A283637: Number of 4Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283637, there is no canonical definition to state claims against.
-/

/-! ## A283637.P12616442152030004847

`A283634(A141214(n)+7)`
-/

namespace A283637.P12616442152030004847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A141214 n + 7).toNat

end

end A283637.P12616442152030004847

/-! ## A283637.P4662280702214171243

`A283634(A052905(n)+9)`
-/

namespace A283637.P4662280702214171243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A052905 n + 9).toNat

end

end A283637.P4662280702214171243

/-! ## A283637.P13420958770035598756

`A283634(A055999(n)+10)`
-/

namespace A283637.P13420958770035598756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A055999 n + 10).toNat

end

end A283637.P13420958770035598756

/-! ## A283637.P12764119481818747104

`A283634(A167614(n+2)+1)`
-/

namespace A283637.P12764119481818747104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167614 (n + 2) + 1).toNat

end

end A283637.P12764119481818747104

/-! ## A283637.P11721700943692561745

`A283634(eq[5, A131818(n+1)])`
-/

namespace A283637.P11721700943692561745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283637.P11721700943692561745

/-!
# A283638: Number of 5Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283638, there is no canonical definition to state claims against.
-/

/-! ## A283638.P6232404454322096319

`A283634(A167499(n+3))`
-/

namespace A283638.P6232404454322096319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167499 (n + 3)).toNat

end

end A283638.P6232404454322096319

/-! ## A283638.P14032531076866511261

`A283634(A155212(n)+13)`
-/

namespace A283638.P14032531076866511261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A155212 n + 13).toNat

end

end A283638.P14032531076866511261

/-! ## A283638.P8493496086336129257

`A283634(A056000(n)+15)`
-/

namespace A283638.P8493496086336129257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A056000 n + 15).toNat

end

end A283638.P8493496086336129257

/-! ## A283638.P4755233489783967666

`A283634(A167614(n+3)+2)`
-/

namespace A283638.P4755233489783967666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A167614 (n + 3) + 2).toNat

end

end A283638.P4755233489783967666

/-! ## A283638.P1483696524505414307

`A283634(A034856(n+3)+7)`
-/

namespace A283638.P1483696524505414307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A034856 (n + 3) + 7).toNat

end

end A283638.P1483696524505414307

/-!
# A283639: Number of 6Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283639, there is no canonical definition to state claims against.
-/

/-! ## A283639.P11147072346247008007

`A283634(A034856(n+4)+8)`
-/

namespace A283639.P11147072346247008007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A034856 (n + 4) + 8).toNat

end

end A283639.P11147072346247008007

/-! ## A283639.P18333072796516465678

`A283634(A056000(n+1)+16)`
-/

namespace A283639.P18333072796516465678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A056000 (n + 1) + 16).toNat

end

end A283639.P18333072796516465678

/-! ## A283639.P9088045827646875298

`A283634(eq[6, A130270(n+1)])`
-/

namespace A283639.P9088045827646875298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283639.P9088045827646875298

/-! ## A283639.P4357282367254909102

`A283634(eq[7, A131818(n+1)])`
-/

namespace A283639.P4357282367254909102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283639.P4357282367254909102

/-! ## A283639.P441974168225205507

`A283634(eq[7, A200370(n+1)]-(2*n+1))`
-/

namespace A283639.P441974168225205507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A283639.P441974168225205507

/-!
# A283640: Number of 7Xn 0..1 arrays with no 1 equal to more than one of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283640, there is no canonical definition to state claims against.
-/

/-! ## A283640.P11056114300262313943

`A283634(A302537(n)+27)`
-/

namespace A283640.P11056114300262313943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A302537 n + 27).toNat

end

end A283640.P11056114300262313943

/-! ## A283640.P14805323889298430635

`A283634(eq[11, A066657(n)])`
-/

namespace A283640.P14805323889298430635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283640.P14805323889298430635

/-! ## A283640.P5308324050275125299

`A283634(A141214(n+3)+10)`
-/

namespace A283640.P5308324050275125299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A141214 (n + 3) + 10).toNat

end

end A283640.P5308324050275125299

/-! ## A283640.P12341535279857467944

`A283634(A052905(n+3)+12)`
-/

namespace A283640.P12341535279857467944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (A052905 (n + 3) + 12).toNat

end

end A283640.P12341535279857467944

/-! ## A283640.P15508490171768519083

`A283634(eq[8, A131818(n+1)])`
-/

namespace A283640.P15508490171768519083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283634 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283640.P15508490171768519083

/-!
# A283641: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

The programs for A283641, the canonical program `A283641.P10084393981474993452` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283641 has offset 0).

The definition of A283641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283641.P5108565234112907940

`100*a(n-2)+1` with `a(0)=1, a(1)=11`
-/

namespace A283641.P5108565234112907940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  100 * a (n - 2) + 1

end

end A283641.P5108565234112907940

namespace A283641

/-- `100*a(n-2)+1` -/
def P5108565234112907940.Spec : Prop :=
  ∀ n, (P5108565234112907940.a n : ℤ) = A283641 n

end A283641

/-! ## A283641.P10084393981474993452

`a(n-gcd(2, n))+10^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283641

/-- `a(n-gcd(2, n))+10^n` -/
def P10084393981474993452.Spec : Prop :=
  ∀ n, (P10084393981474993452.a n : ℤ) = A283641 n

theorem P10084393981474993452.correct : P10084393981474993452.Spec := by
  intro n
  simp only [A283641]

end A283641

/-! ## A283641.P17760522504416224533

`∑[A290661(n)-floor(10^n/9)]`
-/

namespace A283641.P17760522504416224533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290661 n - ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283641.P17760522504416224533

namespace A283641

/-- `∑[A290661(n)-floor(10^n/9)]` -/
def P17760522504416224533.Spec : Prop :=
  ∀ n, P17760522504416224533.a n = A283641 n

end A283641

/-! ## A283641.P1761032008133084067

`A279053(n)+Δ[A056830(A052928(n))]`
-/

namespace A283641.P1761032008133084067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279053 n + (f1 (n + 1) - f1 n)

end

end A283641.P1761032008133084067

namespace A283641

/-- `A279053(n)+Δ[A056830(A052928(n))]` -/
def P1761032008133084067.Spec : Prop :=
  ∀ n, P1761032008133084067.a n = A283641 n

end A283641

/-! ## A283641.P8750921695497520199

`A000042(n+1)-A056830(A052928(n))`
-/

namespace A283641.P8750921695497520199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A056830 (A052928 n).toNat

end

end A283641.P8750921695497520199

namespace A283641

/-- `A000042(n+1)-A056830(A052928(n))` -/
def P8750921695497520199.Spec : Prop :=
  ∀ n, P8750921695497520199.a n = A283641 n

end A283641

/-! ## A283641.P17257126949754259164

`A011557(n)+A279053(n)%A011557(n)`
-/

namespace A283641.P17257126949754259164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + Int.tmod (A279053 n) (A011557 n)

end

end A283641.P17257126949754259164

namespace A283641

/-- `A011557(n)+A279053(n)%A011557(n)` -/
def P17257126949754259164.Spec : Prop :=
  ∀ n, P17257126949754259164.a n = A283641 n

end A283641

/-! ## A283641.P5957418574018825582

`A279053(n)+and(A011557(n), A038608(n))`
-/

namespace A283641.P5957418574018825582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279053 n + Int.land (A011557 n) (A038608 n)

end

end A283641.P5957418574018825582

namespace A283641

/-- `A279053(n)+and(A011557(n), A038608(n))` -/
def P5957418574018825582.Spec : Prop :=
  ∀ n, P5957418574018825582.a n = A283641 n

end A283641

/-!
# A283642: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 678", based on the 5-celled von Neumann neighborhood.

The programs for A283642, the canonical program `A283642.P8321737156268357527` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283642 has offset 0).

The definition of A283642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283642.P8321737156268357527

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283642

/-- `a(n-1)+2*a(n-2)` -/
def P8321737156268357527.Spec : Prop :=
  ∀ n, (P8321737156268357527.a n : ℤ) = A283642 n

theorem P8321737156268357527.correct : P8321737156268357527.Spec := by
  intro n
  simp only [A283642]

end A283642

/-! ## A283642.P15894878737609770842

`A001045(n+2)`
-/

namespace A283642.P15894878737609770842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2)

end

end A283642.P15894878737609770842

namespace A283642

/-- `A001045(n+2)` -/
def P15894878737609770842.Spec : Prop :=
  ∀ n, P15894878737609770842.a n = A283642 n

end A283642

/-! ## A283642.P7071101826261694024

`A167167(n+2)`
-/

namespace A283642.P7071101826261694024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (n + 2)

end

end A283642.P7071101826261694024

namespace A283642

/-- `A167167(n+2)` -/
def P7071101826261694024.Spec : Prop :=
  ∀ n, P7071101826261694024.a n = A283642 n

end A283642

/-! ## A283642.P11846758478995394178

`A328284(n+5)`
-/

namespace A283642.P11846758478995394178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 5)

end

end A283642.P11846758478995394178

namespace A283642

/-- `A328284(n+5)` -/
def P11846758478995394178.Spec : Prop :=
  ∀ n, P11846758478995394178.a n = A283642 n

end A283642

/-! ## A283642.P12044532877682186691

`round(4*2^n/3)`
-/

namespace A283642.P12044532877682186691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * 2 ^ n : ℚ) / 3)

end

end A283642.P12044532877682186691

namespace A283642

/-- `round(4*2^n/3)` -/
def P12044532877682186691.Spec : Prop :=
  ∀ n, P12044532877682186691.a n = A283642 n

end A283642

/-! ## A283642.P7469688903155834510

`ogf((1+2x)/(1-x-2x^2))`
-/

namespace A283642.P7469688903155834510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -2] n

end

end A283642.P7469688903155834510

namespace A283642

/-- `ogf((1+2x)/(1-x-2x^2))` -/
def P7469688903155834510.Spec : Prop :=
  ∀ n, P7469688903155834510.a n = A283642 n

end A283642

/-! ## A283642.P15901753283510038629

`a(n-2)+2^n` with `a(0)=1, a(1)=3`
-/

namespace A283642.P15901753283510038629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 2 ^ n

end

end A283642.P15901753283510038629

namespace A283642

/-- `a(n-2)+2^n` -/
def P15901753283510038629.Spec : Prop :=
  ∀ n, (P15901753283510038629.a n : ℤ) = A283642 n

end A283642

/-! ## A283642.P10971315092470640003

`or(2^n, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A283642.P10971315092470640003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor (2 ^ n) (a (n - 2))

end

end A283642.P10971315092470640003

namespace A283642

/-- `or(2^n, a(n-2))` -/
def P10971315092470640003.Spec : Prop :=
  ∀ n, (P10971315092470640003.a n : ℤ) = A283642 n

end A283642

/-! ## A283642.P3573866650530497984

`xor(2^n, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A283642.P3573866650530497984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (2 ^ n) (a (n - 2))

end

end A283642.P3573866650530497984

namespace A283642

/-- `xor(2^n, a(n-2))` -/
def P3573866650530497984.Spec : Prop :=
  ∀ n, (P3573866650530497984.a n : ℤ) = A283642 n

end A283642

/-! ## A283642.P1320863677920007023

`2*2^n-a(n-1)` with `a(0)=1`
-/

namespace A283642.P1320863677920007023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * 2 ^ n : ℤ) - a (n - 1)

end

end A283642.P1320863677920007023

namespace A283642

/-- `2*2^n-a(n-1)` -/
def P1320863677920007023.Spec : Prop :=
  ∀ n, P1320863677920007023.a n = A283642 n

end A283642

/-! ## A283642.P7397839118851098698

`∑[2^n-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A283642.P7397839118851098698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283642.P7397839118851098698

namespace A283642

/-- `∑[2^n-a(n-1)]` -/
def P7397839118851098698.Spec : Prop :=
  ∀ n, P7397839118851098698.a n = A283642 n

end A283642

/-! ## A283642.P8305721486214862467

`record[2^(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A283642.P8305721486214862467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283642.P8305721486214862467

namespace A283642

/-- `record[2^(n-2)-a(n-1)]` -/
def P8305721486214862467.Spec : Prop :=
  ∀ n, P8305721486214862467.a n = (A283642 n : ℚ)

end A283642

/-! ## A283642.P11572601293176509307

`2^n-(a(n-1)-2^n)` with `a(0)=1`
-/

namespace A283642.P11572601293176509307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) - (2 ^ n : ℤ))

end

end A283642.P11572601293176509307

namespace A283642

/-- `2^n-(a(n-1)-2^n)` -/
def P11572601293176509307.Spec : Prop :=
  ∀ n, P11572601293176509307.a n = A283642 n

end A283642

/-! ## A283642.P7862134294136621173

`a(n-1)+or(2, a(n-1))-1` with `a(0)=1`
-/

namespace A283642.P7862134294136621173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor 2 (a (n - 1)) - 1

end

end A283642.P7862134294136621173

namespace A283642

/-- `a(n-1)+or(2, a(n-1))-1` -/
def P7862134294136621173.Spec : Prop :=
  ∀ n, P7862134294136621173.a n = A283642 n

end A283642

/-! ## A283642.P9400026487131384556

`or(2, a(n-1))-(1-a(n-1))` with `a(0)=1`
-/

namespace A283642.P9400026487131384556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (a (n - 1)) - (1 - a (n - 1))

end

end A283642.P9400026487131384556

namespace A283642

/-- `or(2, a(n-1))-(1-a(n-1))` -/
def P9400026487131384556.Spec : Prop :=
  ∀ n, P9400026487131384556.a n = A283642 n

end A283642

/-! ## A283642.P5893210875073275046

`1-2*((n-1)%2-a(n-1))` with `a(0)=1`
-/

namespace A283642.P5893210875073275046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * (Int.tmod ((n : ℤ) - 1) 2 - a (n - 1))

end

end A283642.P5893210875073275046

namespace A283642

/-- `1-2*((n-1)%2-a(n-1))` -/
def P5893210875073275046.Spec : Prop :=
  ∀ n, P5893210875073275046.a n = A283642 n

end A283642

/-! ## A283642.P8960462668937358024

`a(n-2)+a(n-1)+abs(a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A283642.P8960462668937358024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) + a (n - 2)

end

end A283642.P8960462668937358024

namespace A283642

/-- `a(n-2)+a(n-1)+abs(a(n-2))` -/
def P8960462668937358024.Spec : Prop :=
  ∀ n, (P8960462668937358024.a n : ℤ) = A283642 n

end A283642

/-! ## A283642.P9888821335557142890

`record[A077980(n)]`
-/

namespace A283642.P9888821335557142890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283642.P9888821335557142890

namespace A283642

/-- `record[A077980(n)]` -/
def P9888821335557142890.Spec : Prop :=
  ∀ n, P9888821335557142890.a n = A283642 n

end A283642

/-! ## A283642.P15030449173737926719

`record[A112447(n)]`
-/

namespace A283642.P15030449173737926719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283642.P15030449173737926719

namespace A283642

/-- `record[A112447(n)]` -/
def P15030449173737926719.Spec : Prop :=
  ∀ n, P15030449173737926719.a n = A283642 n

end A283642

/-! ## A283642.P6722449210780504891

`record[A133730(n)]`
-/

namespace A283642.P6722449210780504891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283642.P6722449210780504891

namespace A283642

/-- `record[A133730(n)]` -/
def P6722449210780504891.Spec : Prop :=
  ∀ n, P6722449210780504891.a n = A283642 n

end A283642

/-!
# A283644: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A283644, there is no canonical definition to state claims against.
-/

/-! ## A283644.P6119356134324167425

`A007088(A283646(n))`
-/

namespace A283644.P6119356134324167425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283646 n).toNat

end

end A283644.P6119356134324167425

/-! ## A283644.P4159827762631511366

`A305989(A283647(n))`
-/

namespace A283644.P4159827762631511366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283647 n).toNat

end

end A283644.P4159827762631511366

/-! ## A283644.P5999979694042293240

`A185544(2*A283646(n))`
-/

namespace A283644.P5999979694042293240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283646 n).toNat

end

end A283644.P5999979694042293240

/-! ## A283644.P7032461432251009247

`A185544(lcm(2, A283646(n)))`
-/

namespace A283644.P7032461432251009247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283646 n))

end

end A283644.P7032461432251009247

/-! ## A283644.P9892445948958647899

`A185544(A283646(n)+A283646(n))`
-/

namespace A283644.P9892445948958647899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283646 n + A283646 n).toNat

end

end A283644.P9892445948958647899

/-!
# A283645: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A283645, there is no canonical definition to state claims against.
-/

/-! ## A283645.P9520334663197043269

`A007088(A283647(n))`
-/

namespace A283645.P9520334663197043269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283647 n).toNat

end

end A283645.P9520334663197043269

/-! ## A283645.P6902530505134791762

`A305989(A283646(n))`
-/

namespace A283645.P6902530505134791762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283646 n).toNat

end

end A283645.P6902530505134791762

/-! ## A283645.P655019625756855768

`A185544(2*A283647(n))`
-/

namespace A283645.P655019625756855768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283647 n).toNat

end

end A283645.P655019625756855768

/-! ## A283645.P8893512626542092204

`A185544(lcm(2, A283647(n)))`
-/

namespace A283645.P8893512626542092204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283647 n))

end

end A283645.P8893512626542092204

/-! ## A283645.P9249528442511081326

`A185544(A283647(n)+A283647(n))`
-/

namespace A283645.P9249528442511081326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283647 n + A283647 n).toNat

end

end A283645.P9249528442511081326

/-!
# A283646: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A283646, there is no canonical definition to state claims against.
-/

/-! ## A283646.P4360176177302682879

`and(A126646(n), A264618(A283647(n)))`
-/

namespace A283646.P4360176177302682879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283647 n).toNat)

end

end A283646.P4360176177302682879

/-! ## A283646.P12161631580566044554

`and(A264618(A283647(n)), A283752(n))`
-/

namespace A283646.P12161631580566044554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A283647 n).toNat) (A283752 n)

end

end A283646.P12161631580566044554

/-! ## A283646.P17825842379634957065

`A057889(A283647(n))`
-/

namespace A283646.P17825842379634957065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283647 n).toNat

end

end A283646.P17825842379634957065

/-! ## A283646.P2473640288069238664

`A325401(2*A283647(n))`
-/

namespace A283646.P2473640288069238664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283647 n).toNat

end

end A283646.P2473640288069238664

/-! ## A283646.P16541586074100751373

`A325401(lcm(2, A283647(n)))`
-/

namespace A283646.P16541586074100751373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283647 n))

end

end A283646.P16541586074100751373

/-!
# A283647: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 694", based on the 5-celled von Neumann neighborhood.

The programs for A283647, there is no canonical definition to state claims against.
-/

/-! ## A283647.P988500546106263305

`and(A126646(n), A264618(A283646(n)))`
-/

namespace A283647.P988500546106263305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283646 n).toNat)

end

end A283647.P988500546106263305

/-! ## A283647.P13958768876827046522

`and(A264618(A283646(n)), A283905(n))`
-/

namespace A283647.P13958768876827046522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A283646 n).toNat) (A283905 n)

end

end A283647.P13958768876827046522

/-! ## A283647.P3341900271955133429

`and(A264618(A283646(n)), A284482(n))`
-/

namespace A283647.P3341900271955133429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A283646 n).toNat) (A284482 n)

end

end A283647.P3341900271955133429

/-! ## A283647.P4125279618060643625

`A057889(A283646(n))`
-/

namespace A283647.P4125279618060643625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283646 n).toNat

end

end A283647.P4125279618060643625

/-! ## A283647.P10723646501355754170

`A325401(lcm(A237591(n+1), A283646(n)))`
-/

namespace A283647.P10723646501355754170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A237591 (n + 1)) (A283646 n))

end

end A283647.P10723646501355754170

/-!
# A283648: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A283648, there is no canonical definition to state claims against.
-/

/-! ## A283648.P4445174325678948583

`A283649(n)/A290193(n)*A290192(n)`
-/

namespace A283648.P4445174325678948583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283649 n : ℚ) / (A290193 n : ℚ) * (A290192 n : ℚ)

end

end A283648.P4445174325678948583

/-! ## A283648.P13049329220254547157

`A007088(A283650(n))`
-/

namespace A283648.P13049329220254547157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283650 n).toNat

end

end A283648.P13049329220254547157

/-! ## A283648.P7555390571156399746

`A007088(A283709(n)+A289098(n)-A290682(n))`
-/

namespace A283648.P7555390571156399746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283709 n + (A289098 n - A290682 n)).toNat

end

end A283648.P7555390571156399746

/-! ## A283648.P5475427850244713257

`A007088(A283709(n)+A290194(n)-A290198(n))`
-/

namespace A283648.P5475427850244713257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283709 n + (A290194 n - A290198 n)).toNat

end

end A283648.P5475427850244713257

/-! ## A283648.P11156539161358271730

`A007088(A283709(n)-(A290682(n)-A289098(n)))`
-/

namespace A283648.P11156539161358271730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283709 n - (A290682 n - A289098 n)).toNat

end

end A283648.P11156539161358271730

/-!
# A283649: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A283649, there is no canonical definition to state claims against.
-/

/-! ## A283649.P11783371542160140396

`A283648(n)/A290192(n)*A290193(n)`
-/

namespace A283649.P11783371542160140396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283648 n : ℚ) / (A290192 n : ℚ) * (A290193 n : ℚ)

end

end A283649.P11783371542160140396

/-! ## A283649.P10437228733867858244

`A007088(A283651(n))`
-/

namespace A283649.P10437228733867858244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283651 n).toNat

end

end A283649.P10437228733867858244

/-! ## A283649.P7124041456873236744

`A007088(or(n, A290195(n))*A060576(n))`
-/

namespace A283649.P7124041456873236744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (n : ℤ) (A290195 n) * A060576 n).toNat

end

end A283649.P7124041456873236744

/-! ## A283649.P15657678643109096313

`A007088(round(A284485(n)²/A284354(n)))`
-/

namespace A283649.P15657678643109096313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A284485 n ^ 2 : ℚ) / (A284354 n : ℚ))).toNat

end

end A283649.P15657678643109096313

/-! ## A283649.P536328528080796639

`A007088(A283650(n)/A290194(n)*A290195(n))`
-/

namespace A283649.P536328528080796639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A283650 n : ℚ) / (A290194 n : ℚ) * (A290195 n : ℚ))).toNat

end

end A283649.P536328528080796639

/-!
# A283650: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A283650, the canonical program `A283650.P10617003808932820033` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283650 has offset 0).

The definition of A283650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283650.P1014889430377288562

`xor(and(2, A289098(n)), A290828(n))`
-/

namespace A283650.P1014889430377288562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 2 (A289098 n)) (A290828 n)

end

end A283650.P1014889430377288562

namespace A283650

/-- `xor(and(2, A289098(n)), A290828(n))` -/
def P1014889430377288562.Spec : Prop :=
  ∀ n, P1014889430377288562.a n = A283650 n

end A283650

/-! ## A283650.P16049263418413857804

`xor(A000038(A061893(n)), A290194(n))`
-/

namespace A283650.P16049263418413857804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A061893 n).toNat) (A290194 n)

end

end A283650.P16049263418413857804

namespace A283650

/-- `xor(A000038(A061893(n)), A290194(n))` -/
def P16049263418413857804.Spec : Prop :=
  ∀ n, P16049263418413857804.a n = A283650 n

end A283650

/-! ## A283650.P7570831084307002744

`A283709(n)+A289098(n)-A290682(n)`
-/

namespace A283650.P7570831084307002744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283709 n + (A289098 n - A290682 n)

end

end A283650.P7570831084307002744

namespace A283650

/-- `A283709(n)+A289098(n)-A290682(n)` -/
def P7570831084307002744.Spec : Prop :=
  ∀ n, P7570831084307002744.a n = A283650 n

theorem P7570831084307002744.correct : P7570831084307002744.Spec := by
  intro n
  simp only [A283650, Nat.add_sub_cancel, A283650.P7570831084307002744.a, A283650.P10617003808932820033.a, A283709, A283709.P12501239008037404575.a, A289098, A289098.P14226180583298410694.a, A290682, A290682.P8546294400339561298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283650

/-! ## A283650.P9425761085864325146

`A283709(n)+A290194(n)-A290198(n)`
-/

namespace A283650.P9425761085864325146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283709 n + (A290194 n - A290198 n)

end

end A283650.P9425761085864325146

namespace A283650

/-- `A283709(n)+A290194(n)-A290198(n)` -/
def P9425761085864325146.Spec : Prop :=
  ∀ n, P9425761085864325146.a n = A283650 n

end A283650

/-! ## A283650.P9298677108424686960

`A283651(n)/A290195(n)*A290194(n)`
-/

namespace A283650.P9298677108424686960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283651 n : ℚ) / (A290195 n : ℚ) * (A290194 n : ℚ)

end

end A283650.P9298677108424686960

namespace A283650

/-- `A283651(n)/A290195(n)*A290194(n)` -/
def P9298677108424686960.Spec : Prop :=
  ∀ n, P9298677108424686960.a n = (A283650 n : ℚ)

end A283650

/-! ## A283650.P7734408976783899518

`or(A122746(n), A290194(n))*A060576(n)`
-/

namespace A283650.P7734408976783899518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A290194 n) * A060576 n

end

end A283650.P7734408976783899518

namespace A283650

/-- `or(A122746(n), A290194(n))*A060576(n)` -/
def P7734408976783899518.Spec : Prop :=
  ∀ n, P7734408976783899518.a n = A283650 n

end A283650

/-! ## A283650.P17769070685490444761

`or(A130779(n), A290194(n))*A060576(n)`
-/

namespace A283650.P17769070685490444761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130779 n) (A290194 n) * A060576 n

end

end A283650.P17769070685490444761

namespace A283650

/-- `or(A130779(n), A290194(n))*A060576(n)` -/
def P17769070685490444761.Spec : Prop :=
  ∀ n, P17769070685490444761.a n = A283650 n

end A283650

/-! ## A283650.P10617003808932820033

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=13, a(4)=28, a(5)=61`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283650

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P10617003808932820033.Spec : Prop :=
  ∀ n, P10617003808932820033.a n = A283650 n

theorem P10617003808932820033.correct : P10617003808932820033.Spec := by
  intro n
  simp only [A283650]

end A283650

/-! ## A283650.P18023370304996488537

`A289098(n)-A286521(n+1)%A286521(n)`
-/

namespace A283650.P18023370304996488537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 n - Int.tmod (A286521 (n + 1)) (A286521 n)

end

end A283650.P18023370304996488537

namespace A283650

/-- `A289098(n)-A286521(n+1)%A286521(n)` -/
def P18023370304996488537.Spec : Prop :=
  ∀ n, P18023370304996488537.a n = A283650 n

end A283650

/-!
# A283651: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A283651, the canonical program `A283651.P14977077915162173463` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283651 has offset 0).

The definition of A283651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283651.P14573553373414223444

`or(n, A290195(n))*A060576(n)`
-/

namespace A283651.P14573553373414223444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A290195 n) * A060576 n

end

end A283651.P14573553373414223444

namespace A283651

/-- `or(n, A290195(n))*A060576(n)` -/
def P14573553373414223444.Spec : Prop :=
  ∀ n, P14573553373414223444.a n = A283651 n

end A283651

/-! ## A283651.P11442386115346925283

`xor(and(n, A130779(n)), A290195(n))`
-/

namespace A283651.P11442386115346925283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n : ℤ) (A130779 n)) (A290195 n)

end

end A283651.P11442386115346925283

namespace A283651

/-- `xor(and(n, A130779(n)), A290195(n))` -/
def P11442386115346925283.Spec : Prop :=
  ∀ n, P11442386115346925283.a n = A283651 n

end A283651

/-! ## A283651.P9013310439549503237

`xor(A130779(n)*A136400(n), A290195(n))`
-/

namespace A283651.P9013310439549503237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130779 n * A136400 n) (A290195 n)

end

end A283651.P9013310439549503237

namespace A283651

/-- `xor(A130779(n)*A136400(n), A290195(n))` -/
def P9013310439549503237.Spec : Prop :=
  ∀ n, P9013310439549503237.a n = A283651 n

end A283651

/-! ## A283651.P13170548501671915705

`xor(A130779(n)*A305989(n), A290195(n))`
-/

namespace A283651.P13170548501671915705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130779 n * A305989 n) (A290195 n)

end

end A283651.P13170548501671915705

namespace A283651

/-- `xor(A130779(n)*A305989(n), A290195(n))` -/
def P13170548501671915705.Spec : Prop :=
  ∀ n, P13170548501671915705.a n = A283651 n

end A283651

/-! ## A283651.P14977077915162173463

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=11, a(4)=7, a(5)=47`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283651

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P14977077915162173463.Spec : Prop :=
  ∀ n, P14977077915162173463.a n = A283651 n

theorem P14977077915162173463.correct : P14977077915162173463.Spec := by
  intro n
  simp only [A283651]

end A283651

/-! ## A283651.P10590338988587899650

`and(or(2, A290114(n)), A284485(n))`
-/

namespace A283651.P10590338988587899650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 2 (A290114 n)) (A284485 n)

end

end A283651.P10590338988587899650

namespace A283651

/-- `and(or(2, A290114(n)), A284485(n))` -/
def P10590338988587899650.Spec : Prop :=
  ∀ n, P10590338988587899650.a n = A283651 n

end A283651

/-! ## A283651.P9976507466968691821

`and(or(3, A055010(n)), A284485(n))`
-/

namespace A283651.P9976507466968691821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 3 (A055010 n)) (A284485 n)

end

end A283651.P9976507466968691821

namespace A283651

/-- `and(or(3, A055010(n)), A284485(n))` -/
def P9976507466968691821.Spec : Prop :=
  ∀ n, P9976507466968691821.a n = A283651 n

end A283651

/-! ## A283651.P13101186869436220103

`A283650(n)/A290194(n)*A290195(n)`
-/

namespace A283651.P13101186869436220103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283650 n : ℚ) / (A290194 n : ℚ) * (A290195 n : ℚ)

end

end A283651.P13101186869436220103

namespace A283651

/-- `A283650(n)/A290194(n)*A290195(n)` -/
def P13101186869436220103.Spec : Prop :=
  ∀ n, P13101186869436220103.a n = (A283651 n : ℚ)

end A283651

/-! ## A283651.P16571900503957113104

`xor(A290195(n)%A289098(n), A130779(n))`
-/

namespace A283651.P16571900503957113104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A290195 n) (A289098 n)) (A130779 n)

end

end A283651.P16571900503957113104

namespace A283651

/-- `xor(A290195(n)%A289098(n), A130779(n))` -/
def P16571900503957113104.Spec : Prop :=
  ∀ n, P16571900503957113104.a n = A283651 n

end A283651

/-! ## A283651.P3319357732093044586

`round(A284485(n)/A284354(n)*A284485(n))`
-/

namespace A283651.P3319357732093044586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284485 n : ℚ) / (A284354 n : ℚ) * (A284485 n : ℚ))

end

end A283651.P3319357732093044586

namespace A283651

/-- `round(A284485(n)/A284354(n)*A284485(n))` -/
def P3319357732093044586.Spec : Prop :=
  ∀ n, P3319357732093044586.a n = A283651 n

end A283651

/-! ## A283651.P8858390126222688832

`round(A284485(n)²/A284354(n))`
-/

namespace A283651.P8858390126222688832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284485 n ^ 2 : ℚ) / (A284354 n : ℚ))

end

end A283651.P8858390126222688832

namespace A283651

/-- `round(A284485(n)²/A284354(n))` -/
def P8858390126222688832.Spec : Prop :=
  ∀ n, P8858390126222688832.a n = A283651 n

end A283651

/-!
# A283653: Numbers k such that 3^k + (-2)^k is prime.

The programs for A283653, there is no canonical definition to state claims against.
-/

/-! ## A283653.P5395208731065699287

`A174326(n+1)+char[1]`
-/

namespace A283653.P5395208731065699287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174326 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283653.P5395208731065699287

/-! ## A283653.P13005439269521750180

`A178333(n)+A174326(n+1)`
-/

namespace A283653.P13005439269521750180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A174326 (n + 1)

end

end A283653.P13005439269521750180

/-! ## A283653.P507630506197766730

`A326168(n)+A174326(n+1)`
-/

namespace A283653.P507630506197766730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326168 n + A174326 (n + 1)

end

end A283653.P507630506197766730

/-! ## A283653.P2227932272064290274

`A141044(n)*A174326(n+1)`
-/

namespace A283653.P2227932272064290274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A174326 (n + 1)

end

end A283653.P2227932272064290274

/-! ## A283653.P16480249657903026692

`A174326(n+1)*A373565(n)`
-/

namespace A283653.P16480249657903026692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174326 (n + 1) * A373565 n

end

end A283653.P16480249657903026692

/-!
# A283654: Triangle T(n,m) read by rows: number of n X m binary matrices with no rows or columns in which all entries are the same (n >= 1, 1 <= m <= n).

The programs for A283654, there is no canonical definition to state claims against.
-/

/-! ## A283654.P7361254829707735395

`xor(C(n, 2*floor(n/2)), A059897(n^n))`
-/

namespace A283654.P7361254829707735395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat : ℤ) (A059897 (n ^ n))

end

end A283654.P7361254829707735395

/-! ## A283654.P8336949352239717636

`A355301(A165781(n))`
-/

namespace A283654.P8336949352239717636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A165781 n).toNat

end

end A283654.P8336949352239717636

/-!
# A283655: a(n) = b(b(n+1)) - b(n-b(n)+1) where b(n) = A004001(n).

The programs for A283655, the canonical program `A283655.P11118753203039852526` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283655 has offset 1).

The definition of A283655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283655.P11118753203039852526

`A004001(A004001(n+2))-A004001(A080677(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283655

/-- `A004001(A004001(n+2))-A004001(A080677(n+1))` -/
def P11118753203039852526.Spec : Prop :=
  ∀ n, P11118753203039852526.a n = A283655 (n + 1)

theorem P11118753203039852526.correct : P11118753203039852526.Spec := by
  intro n
  simp only [A283655, Nat.add_sub_cancel]

end A283655

/-! ## A283655.P18099646869200815474

`A285763(A004074(n+2)+n+1)-A004001(n+2)`
-/

namespace A283655.P18099646869200815474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285763 (A004074 (n + 2) + (n : ℤ) + 1).toNat - A004001 (n + 2)

end

end A283655.P18099646869200815474

namespace A283655

/-- `A285763(A004074(n+2)+n+1)-A004001(n+2)` -/
def P18099646869200815474.Spec : Prop :=
  ∀ n, P18099646869200815474.a n = A283655 (n + 1)

end A283655

/-! ## A283655.P13579227506823565257

`A285763(A285763(2*n+3))%A004001(n+2)`
-/

namespace A283655.P13579227506823565257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285763 (A285763 (2 * n + 3)).toNat) (A004001 (n + 2))

end

end A283655.P13579227506823565257

namespace A283655

/-- `A285763(A285763(2*n+3))%A004001(n+2)` -/
def P13579227506823565257.Spec : Prop :=
  ∀ n, P13579227506823565257.a n = A283655 (n + 1)

end A283655

/-!
# A283657: Numbers m such that 2^m + 1 has at most 2 distinct prime factors.

The programs for A283657, there is no canonical definition to state claims against.
-/

/-! ## A283657.P7127716616876459167

`lt[A046799(n), 3]`
-/

namespace A283657.P7127716616876459167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283657.P7127716616876459167

/-! ## A283657.P14293654072372005636

`eq[1, A232695(A046799(n)%(n+1))]`
-/

namespace A283657.P14293654072372005636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232695 (Int.tmod (A046799 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283657.P14293654072372005636

/-! ## A283657.P15382554001842967227

`eq[A002260(A046799(n)+1), A046799(n)]`
-/

namespace A283657.P15382554001842967227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A046799 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283657.P15382554001842967227

/-! ## A283657.P10851897443674146700

`eq[A000122(3*n+2), A182788(A046799(n))]`
-/

namespace A283657.P10851897443674146700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182788 (A046799 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283657.P10851897443674146700

/-! ## A283657.P123748070905344680

`lt[A324119(A001747(n+1)), 3]`
-/

namespace A283657.P123748070905344680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A001747 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283657.P123748070905344680

/-!
# A283658: Numbers d > 1 such that the class number of Q(sqrt(d)) is strictly greater than the class number of Q(sqrt(m)) for all m < d.

The programs for A283658, there is no canonical definition to state claims against.
-/

/-! ## A283658.P11422908019328605799

`A081363(A283659(n+1))`
-/

namespace A283658.P11422908019328605799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081363 (A283659 (n + 1)).toNat

end

end A283658.P11422908019328605799

/-!
# A283660: Number of n X 2 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283660, there is no canonical definition to state claims against.
-/

/-! ## A283660.P17030311959452148245

`A283666(∑[n+1]+2)`
-/

namespace A283660.P17030311959452148245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283660.P17030311959452148245

/-! ## A283660.P12631543285293524115

`lcm(2, A283666(A000096(n)+3))`
-/

namespace A283660.P12631543285293524115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283666 (A000096 n + 3).toNat)

end

end A283660.P12631543285293524115

/-! ## A283660.P4221796150230200986

`A283666(A000096(n)+3)%A000041(n²)`
-/

namespace A283660.P4221796150230200986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283666 (A000096 n + 3).toNat) (A000041 (n ^ 2))

end

end A283660.P4221796150230200986

/-! ## A283660.P6646762314097615600

`A283666(A133263(n+1))+A151935(n+4)`
-/

namespace A283660.P6646762314097615600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A133263 (n + 1)).toNat + A151935 (n + 4)

end

end A283660.P6646762314097615600

/-! ## A283660.P10214476922539086213

`A007318(C(n, 2))*A283666(A000096(n)+3)`
-/

namespace A283660.P10214476922539086213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A283666 (A000096 n + 3).toNat

end

end A283660.P10214476922539086213

/-!
# A283661: Number of nX3 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283661, there is no canonical definition to state claims against.
-/

/-! ## A283661.P13794054714955559985

`A283666(∑[n+2]+4)`
-/

namespace A283661.P13794054714955559985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283661.P13794054714955559985

/-! ## A283661.P8072010714881128949

`A283666(A167614(n+1))+char[15]`
-/

namespace A283661.P8072010714881128949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283661.P8072010714881128949

/-! ## A283661.P12638689714552191722

`A283666(A046691(n)+7)+char[20]`
-/

namespace A283661.P12638689714552191722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283661.P12638689714552191722

/-! ## A283661.P11365693805444445308

`A326458(n)+A283666(A167614(n+1))`
-/

namespace A283661.P11365693805444445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A283666 (A167614 (n + 1)).toNat

end

end A283661.P11365693805444445308

/-! ## A283661.P13934839698608098614

`A057427(n)*A283666(A167614(n+1))`
-/

namespace A283661.P13934839698608098614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283666 (A167614 (n + 1)).toNat

end

end A283661.P13934839698608098614

/-!
# A283662: Number of nX4 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283662, there is no canonical definition to state claims against.
-/

/-! ## A283662.P15692352712903789161

`A283666(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A283662.P15692352712903789161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283662.P15692352712903789161

/-! ## A283662.P17755934561734427489

`A283666(A374004(n+1))`
-/

namespace A283662.P17755934561734427489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A374004 (n + 1)).toNat

end

end A283662.P17755934561734427489

/-! ## A283662.P12177305916133415845

`A283666(A141214(n)+7)`
-/

namespace A283662.P12177305916133415845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A141214 n + 7).toNat

end

end A283662.P12177305916133415845

/-! ## A283662.P13007976391694522052

`A283666(A052905(n)+9)`
-/

namespace A283662.P13007976391694522052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A052905 n + 9).toNat

end

end A283662.P13007976391694522052

/-! ## A283662.P2414580437621953451

`A283666(A055999(n)+10)`
-/

namespace A283662.P2414580437621953451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A055999 n + 10).toNat

end

end A283662.P2414580437621953451

/-!
# A283663: Number of nX5 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283663, there is no canonical definition to state claims against.
-/

/-! ## A283663.P2383736833790733941

`A283666(C(n+6, 2)-n)`
-/

namespace A283663.P2383736833790733941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (Nat.choose (n + 6) 2 - n)

end

end A283663.P2383736833790733941

/-! ## A283663.P14146619454641426043

`A283666(A374005(n+1))`
-/

namespace A283663.P14146619454641426043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A374005 (n + 1)).toNat

end

end A283663.P14146619454641426043

/-! ## A283663.P12393709337014879860

`A283666(A167499(n+3))`
-/

namespace A283663.P12393709337014879860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A167499 (n + 3)).toNat

end

end A283663.P12393709337014879860

/-! ## A283663.P126949155498823201

`A283666(A155212(n)+13)`
-/

namespace A283663.P126949155498823201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A155212 n + 13).toNat

end

end A283663.P126949155498823201

/-! ## A283663.P17010210181034205244

`A283666(A056000(n)+15)`
-/

namespace A283663.P17010210181034205244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A056000 n + 15).toNat

end

end A283663.P17010210181034205244

/-!
# A283664: Number of nX6 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283664, there is no canonical definition to state claims against.
-/

/-! ## A283664.P6669085963951495137

`A283666(A374007(n+1))`
-/

namespace A283664.P6669085963951495137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A374007 (n + 1)).toNat

end

end A283664.P6669085963951495137

/-! ## A283664.P9441641204014451745

`A283666(A166136(n+4))`
-/

namespace A283664.P9441641204014451745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A166136 (n + 4)).toNat

end

end A283664.P9441641204014451745

/-! ## A283664.P533678013257811840

`A283666(A056115(n)+21)`
-/

namespace A283664.P533678013257811840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A056115 n + 21).toNat

end

end A283664.P533678013257811840

/-! ## A283664.P7129208878309456692

`A283666(eq[6, A256910(n)])`
-/

namespace A283664.P7129208878309456692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283664.P7129208878309456692

/-! ## A283664.P12876181951037665431

`A283666(Δ[A264443(n)]+10)`
-/

namespace A283664.P12876181951037665431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (f1 (n + 1) - f1 n + 10).toNat

end

end A283664.P12876181951037665431

/-!
# A283665: Number of nX7 0..1 arrays with no element unequal to more than four of its king-move neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A283665, there is no canonical definition to state claims against.
-/

/-! ## A283665.P10251377546852136858

`A283666(A374008(n+1))`
-/

namespace A283665.P10251377546852136858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A374008 (n + 1)).toNat

end

end A283665.P10251377546852136858

/-! ## A283665.P4510374895411118483

`A283666(A167487(n+5))`
-/

namespace A283665.P4510374895411118483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A167487 (n + 5)).toNat

end

end A283665.P4510374895411118483

/-! ## A283665.P9112549669399394533

`A283666(A056119(n)+28)`
-/

namespace A283665.P9112549669399394533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A056119 n + 28).toNat

end

end A283665.P9112549669399394533

/-! ## A283665.P5661869897961068043

`A283666(eq[11, A066657(n)])`
-/

namespace A283665.P5661869897961068043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283665.P5661869897961068043

/-! ## A283665.P17545307596583358232

`A283666(A167614(n+5)+4)`
-/

namespace A283665.P17545307596583358232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283666 (A167614 (n + 5) + 4).toNat

end

end A283665.P17545307596583358232

/-!
# A283667: Number of Motzkin prefixes of length 2n and height n.

The programs for A283667, there is no canonical definition to state claims against.
-/

/-! ## A283667.P6840398506698776226

`A026306(n+1)-(A026306(n)+A026116(n+1))`
-/

namespace A283667.P6840398506698776226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026306 (n + 1) - (A026306 n + A026116 (n + 1))

end

end A283667.P6840398506698776226

/-! ## A283667.P1305971450685608012

`A283595(∑[4*n])`
-/

namespace A283667.P1305971450685608012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283667.P1305971450685608012

/-! ## A283667.P17836633984242097568

`record[A283595(n*A008619(n))]`
-/

namespace A283667.P17836633984242097568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283667.P17836633984242097568

/-! ## A283667.P13684081671734143511

`record[A283595(n*A028242(n))]`
-/

namespace A283667.P13684081671734143511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283667.P13684081671734143511

/-! ## A283667.P13980031944100267336

`record[A283595(A026741(n)+A000217(n))]`
-/

namespace A283667.P13980031944100267336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 (A026741 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283667.P13980031944100267336

/-! ## A283667.P3919576599871800616

`record[A283595(A028242(n²))]`
-/

namespace A283667.P3919576599871800616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283595 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283667.P3919576599871800616

/-!
# A283669: a(n) = q(n-q(n+1)+2) - q(n-q(n)+2) where q(n) = A005185(n).

The programs for A283669, there is no canonical definition to state claims against.
-/

/-! ## A283669.P14210782459729187631

`A134343(A053351(n+2))/2`
-/

namespace A283669.P14210782459729187631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134343 (A053351 (n + 2)).toNat : ℚ) / 2

end

end A283669.P14210782459729187631

/-! ## A283669.P5219482303762431679

`A046854(n)-A094839(A022144(n)-n)`
-/

namespace A283669.P5219482303762431679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n - A094839 (A022144 n - (n : ℤ)).toNat

end

end A283669.P5219482303762431679

/-! ## A283669.P6743425171399445197

`A156263(2*n+3)-A083399(A124776(n)+1)`
-/

namespace A283669.P6743425171399445197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156263 (2 * n + 3) - A083399 (A124776 n + 1).toNat

end

end A283669.P6743425171399445197

/-! ## A283669.P14766509542321970471

`-A044941(A096927(2*n+3)-A000124(n+4))`
-/

namespace A283669.P14766509542321970471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A044941 (A096927 (2 * n + 3) - A000124 (n + 4)).toNat

end

end A283669.P14766509542321970471

/-! ## A283669.P325078558479182131

`A071922(A131301(n))-A094839(A022144(n)-n)`
-/

namespace A283669.P325078558479182131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A131301 n).toNat - A094839 (A022144 n - (n : ℤ)).toNat

end

end A283669.P325078558479182131

/-!
# A283670: The single square referenced in A190641.

The programs for A283670, the canonical program `A283670.P1865209332245731642` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283670 has offset 1).

The definition of A283670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283670.P15993163389087895142

`A283671(n+1)²`
-/

namespace A283670.P15993163389087895142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283671 (n + 1) ^ 2

end

end A283670.P15993163389087895142

namespace A283670

/-- `A283671(n+1)²` -/
def P15993163389087895142.Spec : Prop :=
  ∀ n, P15993163389087895142.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P17946801902673285991

`A249739(A190641(n+1))²`
-/

namespace A283670.P17946801902673285991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A190641 (n + 1)).toNat ^ 2

end

end A283670.P17946801902673285991

namespace A283670

/-- `A249739(A190641(n+1))²` -/
def P17946801902673285991.Spec : Prop :=
  ∀ n, P17946801902673285991.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P1865209332245731642

`A071327(A190641(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A283670

/-- `A071327(A190641(n+1))` -/
def P1865209332245731642.Spec : Prop :=
  ∀ n, P1865209332245731642.a n = A283670 (n + 1)

theorem P1865209332245731642.correct : P1865209332245731642.Spec := by
  intro n
  simp only [A283670, Nat.add_sub_cancel]

end A283670

/-! ## A283670.P300089921380379123

`filter[A071327(n+1), A302048(#)]`
-/

namespace A283670.P300089921380379123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302048 (f1 j).toNat = 1) n)

end

end A283670.P300089921380379123

namespace A283670

/-- `filter[A071327(n+1), A302048(#)]` -/
def P300089921380379123.Spec : Prop :=
  ∀ n, P300089921380379123.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P5412558836000135367

`A283671(A000027(n+1))*A283671(n+1)`
-/

namespace A283670.P5412558836000135367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283671 (A000027 (n + 1)).toNat * A283671 (n + 1)

end

end A283670.P5412558836000135367

namespace A283670

/-- `A283671(A000027(n+1))*A283671(n+1)` -/
def P5412558836000135367.Spec : Prop :=
  ∀ n, P5412558836000135367.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P12192801681586117422

`A283671(n+1)^A046523(A198162(n+1))`
-/

namespace A283670.P12192801681586117422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283671 (n + 1) : ℚ) ^ (A046523 (A198162 (n + 1)).toNat : ℤ)

end

end A283670.P12192801681586117422

namespace A283670

/-- `A283671(n+1)^A046523(A198162(n+1))` -/
def P12192801681586117422.Spec : Prop :=
  ∀ n, P12192801681586117422.a n = (A283670 (n + 1) : ℚ)

end A283670

/-! ## A283670.P10560788494609837929

`A283671(n+1)^A020639(A232745(n+1))`
-/

namespace A283670.P10560788494609837929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283671 (n + 1) : ℚ) ^ (A020639 (A232745 (n + 1)).toNat : ℤ)

end

end A283670.P10560788494609837929

namespace A283670

/-- `A283671(n+1)^A020639(A232745(n+1))` -/
def P10560788494609837929.Spec : Prop :=
  ∀ n, P10560788494609837929.a n = (A283670 (n + 1) : ℚ)

end A283670

/-! ## A283670.P15753724127374724244

`A283671(n+1)^A046523(A283671(n+4))`
-/

namespace A283670.P15753724127374724244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283671 (n + 1) : ℚ) ^ (A046523 (A283671 (n + 4)).toNat : ℤ)

end

end A283670.P15753724127374724244

namespace A283670

/-- `A283671(n+1)^A046523(A283671(n+4))` -/
def P15753724127374724244.Spec : Prop :=
  ∀ n, P15753724127374724244.a n = (A283670 (n + 1) : ℚ)

end A283670

/-! ## A283670.P2061660149577421853

`p?[gcd(A046027(n+1), A046028(n+1))]²`
-/

namespace A283670.P2061660149577421853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046027 (n + 1)) (A046028 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A283670.P2061660149577421853

namespace A283670

/-- `p?[gcd(A046027(n+1), A046028(n+1))]²` -/
def P2061660149577421853.Spec : Prop :=
  ∀ n, (P2061660149577421853.a n : ℤ) = A283670 (n + 1)

end A283670

/-! ## A283670.P10451538939264807494

`p?[A071773(n+1)]²`
-/

namespace A283670.P10451538939264807494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A283670.P10451538939264807494

namespace A283670

/-- `p?[A071773(n+1)]²` -/
def P10451538939264807494.Spec : Prop :=
  ∀ n, P10451538939264807494.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P10470514840875301236

`p?[A014963((n+1)/∏{p}[n+1, #])]²`
-/

namespace A283670.P10470514840875301236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A283670.P10470514840875301236

namespace A283670

/-- `p?[A014963((n+1)/∏{p}[n+1, #])]²` -/
def P10470514840875301236.Spec : Prop :=
  ∀ n, P10470514840875301236.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P8166795446747051961

`A057521(A370784(A190641(n+1))²)`
-/

namespace A283670.P8166795446747051961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A370784 (A190641 (n + 1)).toNat ^ 2).toNat

end

end A283670.P8166795446747051961

namespace A283670

/-- `A057521(A370784(A190641(n+1))²)` -/
def P8166795446747051961.Spec : Prop :=
  ∀ n, P8166795446747051961.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P13713847903534960744

`A071773(A190641(n+1))*A283671(n+1)`
-/

namespace A283670.P13713847903534960744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A190641 (n + 1)).toNat * A283671 (n + 1)

end

end A283670.P13713847903534960744

namespace A283670

/-- `A071773(A190641(n+1))*A283671(n+1)` -/
def P13713847903534960744.Spec : Prop :=
  ∀ n, P13713847903534960744.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P572808584889832130

`A249740(2*A190641(n+1))²`
-/

namespace A283670.P572808584889832130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (2 * A190641 (n + 1)).toNat ^ 2

end

end A283670.P572808584889832130

namespace A283670

/-- `A249740(2*A190641(n+1))²` -/
def P572808584889832130.Spec : Prop :=
  ∀ n, P572808584889832130.a n = A283670 (n + 1)

end A283670

/-! ## A283670.P5756617366925032474

`filter[A071327(n+1), A164056(#)]`
-/

namespace A283670.P5756617366925032474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A283670.P5756617366925032474

namespace A283670

/-- `filter[A071327(n+1), A164056(#)]` -/
def P5756617366925032474.Spec : Prop :=
  ∀ n, P5756617366925032474.a n = A283670 (n + 1)

end A283670

/-!
# A283671: Square root of the single square referenced in A190641.

The programs for A283671, the canonical program `A283671.P12303064168289075202` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283671 has offset 1).

The definition of A283671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283671.P12303064168289075202

`sqrt(A283670(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A283671

/-- `sqrt(A283670(n+1))` -/
def P12303064168289075202.Spec : Prop :=
  ∀ n, P12303064168289075202.a n = (A283671 (n + 1) : ℝ)

end A283671

/-! ## A283671.P2999443733769427965

`A249739(A190641(n+1))`
-/

namespace A283671.P2999443733769427965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A190641 (n + 1)).toNat

end

end A283671.P2999443733769427965

namespace A283671

/-- `A249739(A190641(n+1))` -/
def P2999443733769427965.Spec : Prop :=
  ∀ n, P2999443733769427965.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P7657177975200213410

`p?[gcd(A046027(n+1), A046028(n+1))]`
-/

namespace A283671.P7657177975200213410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046027 (n + 1)) (A046028 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A283671.P7657177975200213410

namespace A283671

/-- `p?[gcd(A046027(n+1), A046028(n+1))]` -/
def P7657177975200213410.Spec : Prop :=
  ∀ n, (P7657177975200213410.a n : ℤ) = A283671 (n + 1)

end A283671

/-! ## A283671.P4050023111492763548

`A071773(A071773(A283670(n+1))²)`
-/

namespace A283671.P4050023111492763548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A071773 (A283670 (n + 1)).toNat ^ 2).toNat

end

end A283671.P4050023111492763548

namespace A283671

/-- `A071773(A071773(A283670(n+1))²)` -/
def P4050023111492763548.Spec : Prop :=
  ∀ n, P4050023111492763548.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P5946897242057036329

`A249739(A249739(A283670(n+1))²)`
-/

namespace A283671.P5946897242057036329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (A283670 (n + 1)).toNat ^ 2).toNat

end

end A283671.P5946897242057036329

namespace A283671

/-- `A249739(A249739(A283670(n+1))²)` -/
def P5946897242057036329.Spec : Prop :=
  ∀ n, P5946897242057036329.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P2597736490408338128

`A249740(A249740(A283670(n+1))²)`
-/

namespace A283671.P2597736490408338128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A249740 (A283670 (n + 1)).toNat ^ 2).toNat

end

end A283671.P2597736490408338128

namespace A283671

/-- `A249740(A249740(A283670(n+1))²)` -/
def P2597736490408338128.Spec : Prop :=
  ∀ n, P2597736490408338128.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P4569499844350223271

`A000189(A283670(n+1)+A033684(3*n+2))`
-/

namespace A283671.P4569499844350223271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A283670 (n + 1) + A033684 (3 * n + 2)).toNat

end

end A283671.P4569499844350223271

namespace A283671

/-- `A000189(A283670(n+1)+A033684(3*n+2))` -/
def P4569499844350223271.Spec : Prop :=
  ∀ n, P4569499844350223271.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P17425485412440967564

`A158416(2*n+3)+A049559(A283670(n+1))`
-/

namespace A283671.P17425485412440967564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 3) + A049559 (A283670 (n + 1)).toNat

end

end A283671.P17425485412440967564

namespace A283671

/-- `A158416(2*n+3)+A049559(A283670(n+1))` -/
def P17425485412440967564.Spec : Prop :=
  ∀ n, P17425485412440967564.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P8649434011058246180

`A071773(A283670(n+1))/A071773(A071773(n+1))`
-/

namespace A283671.P8649434011058246180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071773 (A283670 (n + 1)).toNat : ℚ) / (A071773 (A071773 (n + 1)).toNat : ℚ)

end

end A283671.P8649434011058246180

namespace A283671

/-- `A071773(A283670(n+1))/A071773(A071773(n+1))` -/
def P8649434011058246180.Spec : Prop :=
  ∀ n, P8649434011058246180.a n = (A283671 (n + 1) : ℚ)

end A283671

/-! ## A283671.P5298060434027458355

`A249739(A283670(n+1))/A249739(A249739(n+1))`
-/

namespace A283671.P5298060434027458355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249739 (A283670 (n + 1)).toNat : ℚ) / (A249739 (A249739 (n + 1)).toNat : ℚ)

end

end A283671.P5298060434027458355

namespace A283671

/-- `A249739(A283670(n+1))/A249739(A249739(n+1))` -/
def P5298060434027458355.Spec : Prop :=
  ∀ n, P5298060434027458355.a n = (A283671 (n + 1) : ℚ)

end A283671

/-! ## A283671.P5404238764425341700

`A249740(A283670(n+1))/A249740(A249740(n+1))`
-/

namespace A283671.P5404238764425341700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249740 (A283670 (n + 1)).toNat : ℚ) / (A249740 (A249740 (n + 1)).toNat : ℚ)

end

end A283671.P5404238764425341700

namespace A283671

/-- `A249740(A283670(n+1))/A249740(A249740(n+1))` -/
def P5404238764425341700.Spec : Prop :=
  ∀ n, P5404238764425341700.a n = (A283671 (n + 1) : ℚ)

end A283671

/-! ## A283671.P5477075192506460876

`p?[∏{p}[n/∏{p}[n, #], #]]`
-/

namespace A283671.P5477075192506460876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A283671.P5477075192506460876

namespace A283671

/-- `p?[∏{p}[n/∏{p}[n, #], #]]` -/
def P5477075192506460876.Spec : Prop :=
  ∀ n, (P5477075192506460876.a n : ℤ) = A283671 (n + 1)

end A283671

/-! ## A283671.P7865927121455935072

`p?[A071773(n+1)]`
-/

namespace A283671.P7865927121455935072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283671.P7865927121455935072

namespace A283671

/-- `p?[A071773(n+1)]` -/
def P7865927121455935072.Spec : Prop :=
  ∀ n, P7865927121455935072.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P6444257446779540818

`filter[A071773(n+1), A010051(#)]`
-/

namespace A283671.P6444257446779540818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A283671.P6444257446779540818

namespace A283671

/-- `filter[A071773(n+1), A010051(#)]` -/
def P6444257446779540818.Spec : Prop :=
  ∀ n, P6444257446779540818.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P45866306875559963

`filter[A071773(n+1), A069513(#)]`
-/

namespace A283671.P45866306875559963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A283671.P45866306875559963

namespace A283671

/-- `filter[A071773(n+1), A069513(#)]` -/
def P45866306875559963.Spec : Prop :=
  ∀ n, P45866306875559963.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P2976052827277736188

`filter[A071773(n+1), A144101(#)]`
-/

namespace A283671.P2976052827277736188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A283671.P2976052827277736188

namespace A283671

/-- `filter[A071773(n+1), A144101(#)]` -/
def P2976052827277736188.Spec : Prop :=
  ∀ n, P2976052827277736188.a n = A283671 (n + 1)

end A283671

/-! ## A283671.P17617768866913932666

`A020639(A249740(A190641(n+1))²)`
-/

namespace A283671.P17617768866913932666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249740 (A190641 (n + 1)).toNat ^ 2).toNat

end

end A283671.P17617768866913932666

namespace A283671

/-- `A020639(A249740(A190641(n+1))²)` -/
def P17617768866913932666.Spec : Prop :=
  ∀ n, P17617768866913932666.a n = A283671 (n + 1)

end A283671

/-!
# A283672: a(n) = gcd(q(n - q(n+1) + 2), q(n - q(n) + 2)) where q(n) = A005185(n).

The programs for A283672, the canonical program `A283672.P2489847264499951174` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283672 has offset 1).

The definition of A283672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283672.P5869956516599869083

`gcd(A005185(n+3), A283673(n+1))`
-/

namespace A283672.P5869956516599869083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005185 (n + 3)) (A283673 (n + 1))

end

end A283672.P5869956516599869083

namespace A283672

/-- `gcd(A005185(n+3), A283673(n+1))` -/
def P5869956516599869083.Spec : Prop :=
  ∀ n, (P5869956516599869083.a n : ℤ) = A283672 (n + 1)

end A283672

/-! ## A283672.P2489847264499951174

`gcd(A028310(A005185(n+3)), A283467(n+2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283672

/-- `gcd(A028310(A005185(n+3)), A283467(n+2))` -/
def P2489847264499951174.Spec : Prop :=
  ∀ n, (P2489847264499951174.a n : ℤ) = A283672 (n + 1)

theorem P2489847264499951174.correct : P2489847264499951174.Spec := by
  intro n
  simp only [A283672, Nat.add_sub_cancel]

end A283672

/-! ## A283672.P8101145322632293000

`gcd(A283669(n+1), A283673(A000027(n+1)))`
-/

namespace A283672.P8101145322632293000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283669 (n + 1)) (A283673 (A000027 (n + 1)).toNat)

end

end A283672.P8101145322632293000

namespace A283672

/-- `gcd(A283669(n+1), A283673(A000027(n+1)))` -/
def P8101145322632293000.Spec : Prop :=
  ∀ n, (P8101145322632293000.a n : ℤ) = A283672 (n + 1)

end A283672

/-! ## A283672.P8075287739378362422

`gcd(A073853(A161396(n+2)), A161358(n+1))`
-/

namespace A283672.P8075287739378362422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073853 (A161396 (n + 2)).toNat) (A161358 (n + 1))

end

end A283672.P8075287739378362422

namespace A283672

/-- `gcd(A073853(A161396(n+2)), A161358(n+1))` -/
def P8075287739378362422.Spec : Prop :=
  ∀ n, (P8075287739378362422.a n : ℤ) = A283672 (n + 1)

end A283672

/-! ## A283672.P6235010085663530199

`gcd(A008620(n), A330986(A008458(n)))`
-/

namespace A283672.P6235010085663530199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008620 n) (A330986 (A008458 n).toNat)

end

end A283672.P6235010085663530199

namespace A283672

/-- `gcd(A008620(n), A330986(A008458(n)))` -/
def P6235010085663530199.Spec : Prop :=
  ∀ n, (P6235010085663530199.a n : ℤ) = A283672 (n + 1)

end A283672

/-!
# A283674: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1-x^j)^(j^(k*j)) in powers of x.

The programs for A283674, there is no canonical definition to state claims against.
-/

/-! ## A283674.P9067859686429031727

`A294758(n)-A185036(A295260(n+1))`
-/

namespace A283674.P9067859686429031727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 n - A185036 (A295260 (n + 1)).toNat

end

end A283674.P9067859686429031727

/-! ## A283674.P13938400970948129999

`A294758(A134975(n)+n)`
-/

namespace A283674.P13938400970948129999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (A134975 n + (n : ℤ)).toNat

end

end A283674.P13938400970948129999

/-! ## A283674.P5545968850203253633

`A294758(n^A152844(n))`
-/

namespace A283674.P5545968850203253633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A152844 n : ℤ))).toNat

end

end A283674.P5545968850203253633

/-! ## A283674.P12382778173333955855

`A294758(n^A185204(n+1))`
-/

namespace A283674.P12382778173333955855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A185204 (n + 1) : ℤ))).toNat

end

end A283674.P12382778173333955855

/-! ## A283674.P16729027187935687411

`A294758(n)%A054681(n+1)`
-/

namespace A283674.P16729027187935687411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294758 n) (A054681 (n + 1))

end

end A283674.P16729027187935687411

/-!
# A283675: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-x^j)^(j^(k*j)) in powers of x.

The programs for A283675, there is no canonical definition to state claims against.
-/

/-! ## A283675.P11055975080953034228

`A294653(n)+A185036(A295260(n+1))`
-/

namespace A283675.P11055975080953034228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 n + A185036 (A295260 (n + 1)).toNat

end

end A283675.P11055975080953034228

/-! ## A283675.P2807066791436117519

`A294653(A134975(n)+n)`
-/

namespace A283675.P2807066791436117519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 (A134975 n + (n : ℤ)).toNat

end

end A283675.P2807066791436117519

/-! ## A283675.P18257040620417408997

`A294653(n^A152844(n))`
-/

namespace A283675.P18257040620417408997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A152844 n : ℤ))).toNat

end

end A283675.P18257040620417408997

/-! ## A283675.P14395743886443322772

`A294653(or(n, A134975(n)))`
-/

namespace A283675.P14395743886443322772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 (Int.lor (n : ℤ) (A134975 n)).toNat

end

end A283675.P14395743886443322772

/-! ## A283675.P10845959198546686120

`A294653(n*∑[A134975(n)])`
-/

namespace A283675.P10845959198546686120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294653 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A283675.P10845959198546686120

/-!
# A283677: a(n) = lcm(b(b(n)), b(n-b(n)+1)) where b(n) = A004001(n).

The programs for A283677, the canonical program `A283677.P2265603654644096943` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283677 has offset 1).

The definition of A283677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283677.P2265603654644096943

`lcm(A004001(A004001(n+1)), A004001(A080677(n+1)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283677

/-- `lcm(A004001(A004001(n+1)), A004001(A080677(n+1)))` -/
def P2265603654644096943.Spec : Prop :=
  ∀ n, (P2265603654644096943.a n : ℤ) = A283677 (n + 1)

theorem P2265603654644096943.correct : P2265603654644096943.Spec := by
  intro n
  simp only [A283677, Nat.add_sub_cancel]

end A283677

/-!
# A283678: Number of possible draws of 2n pairs of consecutive cards from a set of 4n + 1 cards, so that the card that initially occupies the central position is not selected.

The programs for A283678, the canonical program `A283678.P10903318495168675449` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283678 has offset 0).

The definition of A283678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283678.P10903318495168675449

`A092563(n)*A001147(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283678

/-- `A092563(n)*A001147(n)` -/
def P10903318495168675449.Spec : Prop :=
  ∀ n, P10903318495168675449.a n = A283678 n

theorem P10903318495168675449.correct : P10903318495168675449.Spec := by
  intro n
  simp only [A283678]

end A283678

/-! ## A283678.P2489718801175001340

`∏[1-2*n]²*C(2*n, n)`
-/

namespace A283678.P2489718801175001340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (Nat.choose (2 * n) n : ℤ)

end

end A283678.P2489718801175001340

namespace A283678

/-- `∏[1-2*n]²*C(2*n, n)` -/
def P2489718801175001340.Spec : Prop :=
  ∀ n, P2489718801175001340.a n = A283678 n

end A283678

/-! ## A283678.P549178276141660998

`A001757(2*n)`
-/

namespace A283678.P549178276141660998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001757 (2 * n)

end

end A283678.P549178276141660998

namespace A283678

/-- `A001757(2*n)` -/
def P549178276141660998.Spec : Prop :=
  ∀ n, P549178276141660998.a n = A283678 n

end A283678

/-! ## A283678.P5466779130252979416

`A059366(∑[4*n])`
-/

namespace A283678.P5466779130252979416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283678.P5466779130252979416

namespace A283678

/-- `A059366(∑[4*n])` -/
def P5466779130252979416.Spec : Prop :=
  ∀ n, P5466779130252979416.a n = A283678 n

end A283678

/-! ## A283678.P9149180969474147928

`∏[1-2*n]²*A000984(n)`
-/

namespace A283678.P9149180969474147928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A000984 n

end

end A283678.P9149180969474147928

namespace A283678

/-- `∏[1-2*n]²*A000984(n)` -/
def P9149180969474147928.Spec : Prop :=
  ∀ n, P9149180969474147928.a n = A283678 n

end A283678

/-!
# A283679: G.f.: F(F(F(x))) where F(x) = x/(1-x-x^2) is the g.f. for the Fibonacci numbers.

The programs for A283679, there is no canonical definition to state claims against.
-/

/-! ## A283679.P11857647973563108201

`A286012(A034856(n+1))%(4^n)`
-/

namespace A283679.P11857647973563108201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286012 (A034856 (n + 1)).toNat) (4 ^ n : ℤ)

end

end A283679.P11857647973563108201

/-! ## A283679.P17549671364163950698

`A057427(n)*A286012(∑[n+2]-1)`
-/

namespace A283679.P17549671364163950698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A286012 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A283679.P17549671364163950698

/-! ## A283679.P16648802533451688913

`A286012(∑[n+2]-1)%A054490(n)`
-/

namespace A283679.P16648802533451688913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286012 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (A054490 n)

end

end A283679.P16648802533451688913

/-! ## A283679.P17907637128638937871

`A178334(n)*A286012(A034856(n+1))`
-/

namespace A283679.P17907637128638937871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A286012 (A034856 (n + 1)).toNat

end

end A283679.P17907637128638937871

/-!
# A283680: Odd numbers of the form (p^2 - q^2) / 24 with primes p > q > 3.

The programs for A283680, there is no canonical definition to state claims against.
-/

/-! ## A283680.P10017741755280166577

`lt[A000005(A334717(n+1)), A089120(3*n+5)]`
-/

namespace A283680.P10017741755280166577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A334717 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283680.P10017741755280166577

/-! ## A283680.P13421600793513308448

`A262681(A004691(n))+A007094(2*n)`
-/

namespace A283680.P13421600793513308448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A004691 n).toNat + A007094 (2 * n)

end

end A283680.P13421600793513308448

/-! ## A283680.P13989509812542856187

`eq[A088663(n), A121262(A189663(n+1))]`
-/

namespace A283680.P13989509812542856187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A189663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283680.P13989509812542856187

/-! ## A283680.P660080769157524522

`eq[A040005(n), A358194(A323171(2*n+5))]`
-/

namespace A283680.P660080769157524522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (A323171 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283680.P660080769157524522

/-! ## A283680.P10171037990980026792

`lt[A291722(A260492(3*n)), 2^val(n+1, 2)]`
-/

namespace A283680.P10171037990980026792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291722 (A260492 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283680.P10171037990980026792

/-!
# A283681: Unique sequence with a(1)=1, a(2)=2, representing an array read by antidiagonals in which the i-th row is this sequence itself multiplied by i.

The programs for A283681, the canonical program `A283681.P14959979996735667348` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283681 has offset 1).

The definition of A283681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283681.P14959979996735667348

`a(A025581(n))*A002260(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283681

/-- `a(A025581(n))*A002260(n+1)` -/
def P14959979996735667348.Spec : Prop :=
  ∀ n, P14959979996735667348.a n = A283681 (n + 1)

theorem P14959979996735667348.correct : P14959979996735667348.Spec := by
  intro n
  simp only [A283681, Nat.add_sub_cancel]

end A283681

/-! ## A283681.P4802207351872992318

`a(A025581(n))*(A002262(n)+1)` with `a(0)=1, a(1)=2`
-/

namespace A283681.P4802207351872992318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * (A002262 n + 1)

end

end A283681.P4802207351872992318

namespace A283681

/-- `a(A025581(n))*(A002262(n)+1)` -/
def P4802207351872992318.Spec : Prop :=
  ∀ n, P4802207351872992318.a n = A283681 (n + 1)

theorem P4802207351872992318.correct : P4802207351872992318.Spec := by
  intro n
  simp only [A283681, Nat.add_sub_cancel, A283681.P4802207351872992318.a, A283681.P14959979996735667348.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283681

/-! ## A283681.P15775067126530428220

`a(A025581(n))*A054073(A054077(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A283681.P15775067126530428220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A054073 (A054077 (n + 1)).toNat

end

end A283681.P15775067126530428220

namespace A283681

/-- `a(A025581(n))*A054073(A054077(n+1))` -/
def P15775067126530428220.Spec : Prop :=
  ∀ n, P15775067126530428220.a n = A283681 (n + 1)

end A283681

/-! ## A283681.P6032248159613110665

`a(A025581(n))*A004736(A038722(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A283681.P6032248159613110665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A004736 (A038722 (n + 1)).toNat

end

end A283681.P6032248159613110665

namespace A283681

/-- `a(A025581(n))*A004736(A038722(n+1))` -/
def P6032248159613110665.Spec : Prop :=
  ∀ n, P6032248159613110665.a n = A283681 (n + 1)

end A283681

/-! ## A283681.P13974605056971488457

`a(A025581(n))*A050873(2*A133819(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A283681.P13974605056971488457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A050873 (2 * A133819 (n + 1)).toNat

end

end A283681.P13974605056971488457

namespace A283681

/-- `a(A025581(n))*A050873(2*A133819(n+1))` -/
def P13974605056971488457.Spec : Prop :=
  ∀ n, P13974605056971488457.a n = A283681 (n + 1)

end A283681

/-! ## A283681.P12793114083172921784

`a(A025581(n))*A000005(A059268(n))` with `a(0)=1, a(1)=2`
-/

namespace A283681.P12793114083172921784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A000005 (A059268 n).toNat

end

end A283681.P12793114083172921784

namespace A283681

/-- `a(A025581(n))*A000005(A059268(n))` -/
def P12793114083172921784.Spec : Prop :=
  ∀ n, P12793114083172921784.a n = A283681 (n + 1)

end A283681

/-! ## A283681.P10235414598688921364

`a(A025581(n))*A195079(A195080(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A283681.P10235414598688921364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A025581 n).toNat * A195079 (A195080 (n + 1)).toNat

end

end A283681.P10235414598688921364

namespace A283681

/-- `a(A025581(n))*A195079(A195080(n+1))` -/
def P10235414598688921364.Spec : Prop :=
  ∀ n, P10235414598688921364.a n = A283681 (n + 1)

end A283681

/-!
# A283682: Unique sequence with a(1)=0, a(2)=1, representing an array T(i,j) read by antidiagonals in which T(i,j) = a(i) + a(j).

The programs for A283682, the canonical program `A283682.P4865830773752955045` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283682 has offset 1).

The definition of A283682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283682.P1735057710494590364

`Δ[A339331(A028310(n))/2]`
-/

namespace A283682.P1735057710494590364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339331 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283682.P1735057710494590364

namespace A283682

/-- `Δ[A339331(A028310(n))/2]` -/
def P1735057710494590364.Spec : Prop :=
  ∀ n, P1735057710494590364.a n = (A283682 (n + 1) : ℚ)

end A283682

/-! ## A283682.P4865830773752955045

`a(A002262(n))+a(A025581(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283682

/-- `a(A002262(n))+a(A025581(n))` -/
def P4865830773752955045.Spec : Prop :=
  ∀ n, (P4865830773752955045.a n : ℤ) = A283682 (n + 1)

theorem P4865830773752955045.correct : P4865830773752955045.Spec := by
  intro n
  simp only [A283682, Nat.add_sub_cancel]

end A283682

/-! ## A283682.P14813643424541855396

`a(A002260(n+1)-1)+a(A025581(n))` with `a(0)=0, a(1)=1`
-/

namespace A283682.P14813643424541855396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002260 (n + 1) - 1).toNat + a (A025581 n).toNat

end

end A283682.P14813643424541855396

namespace A283682

/-- `a(A002260(n+1)-1)+a(A025581(n))` -/
def P14813643424541855396.Spec : Prop :=
  ∀ n, (P14813643424541855396.a n : ℤ) = A283682 (n + 1)

end A283682

/-! ## A283682.P7081663098002672064

`A004525(Δ[A339331(A028310(n))])`
-/

namespace A283682.P7081663098002672064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339331 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A283682.P7081663098002672064

namespace A283682

/-- `A004525(Δ[A339331(A028310(n))])` -/
def P7081663098002672064.Spec : Prop :=
  ∀ n, P7081663098002672064.a n = A283682 (n + 1)

end A283682

/-! ## A283682.P6097419678708801561

`A110654(Δ[A339331(A028310(n))])`
-/

namespace A283682.P6097419678708801561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339331 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A283682.P6097419678708801561

namespace A283682

/-- `A110654(Δ[A339331(A028310(n))])` -/
def P6097419678708801561.Spec : Prop :=
  ∀ n, P6097419678708801561.a n = A283682 (n + 1)

end A283682

/-! ## A283682.P4076371974237296617

`(A339331(n+1)-A339331(A028310(n)))/2`
-/

namespace A283682.P4076371974237296617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339331 (n + 1) - A339331 (A028310 n).toNat : ℚ) / 2

end

end A283682.P4076371974237296617

namespace A283682

/-- `(A339331(n+1)-A339331(A028310(n)))/2` -/
def P4076371974237296617.Spec : Prop :=
  ∀ n, P4076371974237296617.a n = (A283682 (n + 1) : ℚ)

end A283682

/-! ## A283682.P16924854963500614876

`∑{e}[A175840(n), A089643(#)]`
-/

namespace A283682.P16924854963500614876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089643 (Nat.factorization (f1 n).natAbs p)

end

end A283682.P16924854963500614876

namespace A283682

/-- `∑{e}[A175840(n), A089643(#)]` -/
def P16924854963500614876.Spec : Prop :=
  ∀ n, P16924854963500614876.a n = A283682 (n + 1)

end A283682

/-! ## A283682.P12447963901652658971

`∑{e}[A036561(A061579(n)), A089643(#)]`
-/

namespace A283682.P12447963901652658971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089643 (Nat.factorization (f1 n).natAbs p)

end

end A283682.P12447963901652658971

namespace A283682

/-- `∑{e}[A036561(A061579(n)), A089643(#)]` -/
def P12447963901652658971.Spec : Prop :=
  ∀ n, P12447963901652658971.a n = A283682 (n + 1)

end A283682

/-! ## A283682.P7524645066318773218

`∑{e}[A059268(n)*A140303(n), A089643(#)]`
-/

namespace A283682.P7524645066318773218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089643 (Nat.factorization (f1 n).natAbs p)

end

end A283682.P7524645066318773218

namespace A283682

/-- `∑{e}[A059268(n)*A140303(n), A089643(#)]` -/
def P7524645066318773218.Spec : Prop :=
  ∀ n, P7524645066318773218.a n = A283682 (n + 1)

end A283682

/-! ## A283682.P14569991945624804565

`∑{e}[A232646(n+1), A089643(#)]`
-/

namespace A283682.P14569991945624804565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089643 (Nat.factorization (f1 n).natAbs p)

end

end A283682.P14569991945624804565

namespace A283682

/-- `∑{e}[A232646(n+1), A089643(#)]` -/
def P14569991945624804565.Spec : Prop :=
  ∀ n, P14569991945624804565.a n = A283682 (n + 1)

end A283682

/-!
# A283683: Unique sequence with a(1)=0, a(2)=1, representing an array T(i,j) read by antidiagonals in which every row is this sequence itself.

The programs for A283683, the canonical program `A283683.P9744256243260942993` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283683 has offset 1).

The definition of A283683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020906, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283683.P9744256243260942993

`A020906(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A283683

/-- `A020906(n+1)-1` -/
def P9744256243260942993.Spec : Prop :=
  ∀ n, P9744256243260942993.a n = A283683 (n + 1)

theorem P9744256243260942993.correct : P9744256243260942993.Spec := by
  intro n
  simp only [A283683, Nat.add_sub_cancel]

end A283683

/-! ## A283683.P12454641355219429217

`a(C(comp[∑[n]]-n, 2)-(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A283683.P12454641355219429217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A283683.P12454641355219429217

namespace A283683

/-- `a(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P12454641355219429217.Spec : Prop :=
  ∀ n, (P12454641355219429217.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P16516237473949965089

`a(A025581(n))` with `a(0)=0, a(1)=1`
-/

namespace A283683.P16516237473949965089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A025581 n).toNat

end

end A283683.P16516237473949965089

namespace A283683

/-- `a(A025581(n))` -/
def P16516237473949965089.Spec : Prop :=
  ∀ n, (P16516237473949965089.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P1948640279514528028

`log2(A020906(n+1))`
-/

namespace A283683.P1948640279514528028
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020906 (n + 1) : ℝ)

end

end A283683.P1948640279514528028

namespace A283683

/-- `log2(A020906(n+1))` -/
def P1948640279514528028.Spec : Prop :=
  ∀ n, P1948640279514528028.a n = (A283683 (n + 1) : ℝ)

end A283683

/-! ## A283683.P2185522441872127517

`char[A020907(n+1)-1]`
-/

namespace A283683.P2185522441872127517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283683.P2185522441872127517

namespace A283683

/-- `char[A020907(n+1)-1]` -/
def P2185522441872127517.Spec : Prop :=
  ∀ n, (P2185522441872127517.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P18268865386168815338

`a(sqrt(A095831(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A283683.P18268865386168815338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.sqrt (A095831 (n + 1) : ℝ))).toNat

end

end A283683.P18268865386168815338

namespace A283683

/-- `a(sqrt(A095831(n+1)))` -/
def P18268865386168815338.Spec : Prop :=
  ∀ n, (P18268865386168815338.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P2119835320314583324

`a(A004736(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A283683.P2119835320314583324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A004736 (n + 1) - 1).toNat

end

end A283683.P2119835320314583324

namespace A283683

/-- `a(A004736(n+1)-1)` -/
def P2119835320314583324.Spec : Prop :=
  ∀ n, (P2119835320314583324.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P4183341545783937468

`a(∑[A066182(n+1)-(n+1)])` with `a(0)=0, a(1)=1`
-/

namespace A283683.P4183341545783937468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283683.P4183341545783937468

namespace A283683

/-- `a(∑[A066182(n+1)-(n+1)])` -/
def P4183341545783937468.Spec : Prop :=
  ∀ n, (P4183341545783937468.a n : ℤ) = A283683 (n + 1)

end A283683

/-! ## A283683.P10954002346188497651

`A000328(n)%A020906(n+1)`
-/

namespace A283683.P10954002346188497651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A020906 (n + 1))

end

end A283683.P10954002346188497651

namespace A283683

/-- `A000328(n)%A020906(n+1)` -/
def P10954002346188497651.Spec : Prop :=
  ∀ n, P10954002346188497651.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P4773389632393902539

`A000466(n)%A020906(n+1)`
-/

namespace A283683.P4773389632393902539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A020906 (n + 1))

end

end A283683.P4773389632393902539

namespace A283683

/-- `A000466(n)%A020906(n+1)` -/
def P4773389632393902539.Spec : Prop :=
  ∀ n, P4773389632393902539.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P13292996023023829912

`A000605(n)%A020906(n+1)`
-/

namespace A283683.P13292996023023829912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A020906 (n + 1))

end

end A283683.P13292996023023829912

namespace A283683

/-- `A000605(n)%A020906(n+1)` -/
def P13292996023023829912.Spec : Prop :=
  ∀ n, P13292996023023829912.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P7624365875150737981

`A001148(n)%A020906(n+1)`
-/

namespace A283683.P7624365875150737981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A020906 (n + 1))

end

end A283683.P7624365875150737981

namespace A283683

/-- `A001148(n)%A020906(n+1)` -/
def P7624365875150737981.Spec : Prop :=
  ∀ n, P7624365875150737981.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P10603345421135083831

`A001218(n)%A020906(n+1)`
-/

namespace A283683.P10603345421135083831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A020906 (n + 1))

end

end A283683.P10603345421135083831

namespace A283683

/-- `A001218(n)%A020906(n+1)` -/
def P10603345421135083831.Spec : Prop :=
  ∀ n, P10603345421135083831.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P4141440180849517371

`A001513(n)%A020906(n+1)`
-/

namespace A283683.P4141440180849517371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A020906 (n + 1))

end

end A283683.P4141440180849517371

namespace A283683

/-- `A001513(n)%A020906(n+1)` -/
def P4141440180849517371.Spec : Prop :=
  ∀ n, P4141440180849517371.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P17715505181481293557

`A001520(n)%A020906(n+1)`
-/

namespace A283683.P17715505181481293557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A020906 (n + 1))

end

end A283683.P17715505181481293557

namespace A283683

/-- `A001520(n)%A020906(n+1)` -/
def P17715505181481293557.Spec : Prop :=
  ∀ n, P17715505181481293557.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P4239225361014366305

`A001533(n)%A020906(n+1)`
-/

namespace A283683.P4239225361014366305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A020906 (n + 1))

end

end A283683.P4239225361014366305

namespace A283683

/-- `A001533(n)%A020906(n+1)` -/
def P4239225361014366305.Spec : Prop :=
  ∀ n, P4239225361014366305.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P16348729991035885289

`A001535(n)%A020906(n+1)`
-/

namespace A283683.P16348729991035885289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A020906 (n + 1))

end

end A283683.P16348729991035885289

namespace A283683

/-- `A001535(n)%A020906(n+1)` -/
def P16348729991035885289.Spec : Prop :=
  ∀ n, P16348729991035885289.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P3916222865462535325

`A008379(n)%A020906(n+1)`
-/

namespace A283683.P3916222865462535325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A020906 (n + 1))

end

end A283683.P3916222865462535325

namespace A283683

/-- `A008379(n)%A020906(n+1)` -/
def P3916222865462535325.Spec : Prop :=
  ∀ n, P3916222865462535325.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P6178827454112191953

`A016760(n)%A020906(n+1)`
-/

namespace A283683.P6178827454112191953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A020906 (n + 1))

end

end A283683.P6178827454112191953

namespace A283683

/-- `A016760(n)%A020906(n+1)` -/
def P6178827454112191953.Spec : Prop :=
  ∀ n, P6178827454112191953.a n = A283683 (n + 1)

end A283683

/-! ## A283683.P10959698253021748528

`A016761(n)%A020906(n+1)`
-/

namespace A283683.P10959698253021748528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A020906 (n + 1))

end

end A283683.P10959698253021748528

namespace A283683

/-- `A016761(n)%A020906(n+1)` -/
def P10959698253021748528.Spec : Prop :=
  ∀ n, P10959698253021748528.a n = A283683 (n + 1)

end A283683

/-!
# A283684: Numbers k such that 3*10^k + 17 is prime.

The programs for A283684, there is no canonical definition to state claims against.
-/

/-! ## A283684.P10389203675513043065

`A335279(n+1)+A003842(A014511(n))`
-/

namespace A283684.P10389203675513043065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335279 (n + 1) + A003842 (A014511 n).toNat

end

end A283684.P10389203675513043065

/-! ## A283684.P16476797898363572833

`A109072(A306422(n+1))+A089395(n)`
-/

namespace A283684.P16476797898363572833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A306422 (n + 1)).toNat + A089395 n

end

end A283684.P16476797898363572833

/-! ## A283684.P7924982461098121294

`A337690(A090138(n+1))+A089395(n)`
-/

namespace A283684.P7924982461098121294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A090138 (n + 1)).toNat + A089395 n

end

end A283684.P7924982461098121294

/-! ## A283684.P3669859049856432105

`A337483(A107432(n+1))+A024898(n+1)`
-/

namespace A283684.P3669859049856432105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (A107432 (n + 1)).toNat + A024898 (n + 1)

end

end A283684.P3669859049856432105

/-!
# A283685: Number of n X n 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283685, there is no canonical definition to state claims against.
-/

/-! ## A283685.P3041189609443706923

`A283691(∑[4*n]+1)`
-/

namespace A283685.P3041189609443706923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283685.P3041189609443706923

/-! ## A283685.P1680358920818970152

`record[A003982(n)*A283691(n+1)]`
-/

namespace A283685.P1680358920818970152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A283691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283685.P1680358920818970152

/-! ## A283685.P3546678764941010982

`record[gcd(A157521(n), A283691(n+1))]`
-/

namespace A283685.P3546678764941010982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157521 n) (A283691 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283685.P3546678764941010982

/-! ## A283685.P10893171892793669594

`A283691(A001844(n))+A025469(n)`
-/

namespace A283685.P10893171892793669594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A001844 n).toNat + A025469 n

end

end A283685.P10893171892793669594

/-! ## A283685.P5518595711471432061

`A283691(A001844(n))+A105516(n)`
-/

namespace A283685.P5518595711471432061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A001844 n).toNat + A105516 n

end

end A283685.P5518595711471432061

/-!
# A283686: Number of nX3 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283686, there is no canonical definition to state claims against.
-/

/-! ## A283686.P7511478643736013261

`A283691(∑[n+3]+1)`
-/

namespace A283686.P7511478643736013261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283686.P7511478643736013261

/-!
# A283687: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283687, there is no canonical definition to state claims against.
-/

/-! ## A283687.P12256218137923546053

`A283691(A141214(n+1))`
-/

namespace A283687.P12256218137923546053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A141214 (n + 1)).toNat

end

end A283687.P12256218137923546053

/-! ## A283687.P17757259308145716788

`A283691(A155212(n)+5)`
-/

namespace A283687.P17757259308145716788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A155212 n + 5).toNat

end

end A283687.P17757259308145716788

/-! ## A283687.P6772711643187748349

`A283691(A056000(n)+7)`
-/

namespace A283687.P6772711643187748349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A056000 n + 7).toNat

end

end A283687.P6772711643187748349

/-! ## A283687.P17958202654646958247

`A283691(eq[3, A193592(n)])`
-/

namespace A283687.P17958202654646958247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283687.P17958202654646958247

/-!
# A283688: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283688, there is no canonical definition to state claims against.
-/

/-! ## A283688.P16650096756941399400

`A283691(Δ[A264443(n)])`
-/

namespace A283688.P16650096756941399400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (f1 (n + 1) - f1 n).toNat

end

end A283688.P16650096756941399400

/-! ## A283688.P3016273853198082560

`A283691(A056115(n)+11)`
-/

namespace A283688.P3016273853198082560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A056115 n + 11).toNat

end

end A283688.P3016273853198082560

/-! ## A283688.P17847581616170321138

`A283691(eq[4, A193592(n)])`
-/

namespace A283688.P17847581616170321138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283688.P17847581616170321138

/-! ## A283688.P14526131761900497865

`A283691(Δ[A023545(n+1)])`
-/

namespace A283688.P14526131761900497865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (f1 (n + 1) - f1 n).toNat

end

end A283688.P14526131761900497865

/-!
# A283689: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283689, there is no canonical definition to state claims against.
-/

/-! ## A283689.P11887532649675031865

`A283691(eq[3, A219347(n)])`
-/

namespace A283689.P11887532649675031865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283689.P11887532649675031865

/-! ## A283689.P11700392561282500734

`A283691(eq[5, A193592(n)])`
-/

namespace A283689.P11700392561282500734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283689.P11700392561282500734

/-! ## A283689.P17445793765504537849

`A283691(A141214(n+3)-2)`
-/

namespace A283689.P17445793765504537849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A141214 (n + 3) - 2).toNat

end

end A283689.P17445793765504537849

/-! ## A283689.P15241201976294634070

`A283691(eq[6, A200370(n+1)])`
-/

namespace A283689.P15241201976294634070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283689.P15241201976294634070

/-! ## A283689.P9056402950297497009

`A283691(eq[7, A049286(n+1)])`
-/

namespace A283689.P9056402950297497009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283689.P9056402950297497009

/-!
# A283690: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283690, there is no canonical definition to state claims against.
-/

/-! ## A283690.P3011807308090445373

`A283691(eq[4, A219347(n)])`
-/

namespace A283690.P3011807308090445373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283690.P3011807308090445373

/-! ## A283690.P8129788848380769139

`A283691(eq[6, A193592(n)])`
-/

namespace A283690.P8129788848380769139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283690.P8129788848380769139

/-! ## A283690.P785301686320949464

`A283691(A000124(n+7)-7)`
-/

namespace A283690.P785301686320949464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A000124 (n + 7) - 7).toNat

end

end A283690.P785301686320949464

/-! ## A283690.P16808165930989497147

`A283691(eq[7, A200370(n+1)])`
-/

namespace A283690.P16808165930989497147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283690.P16808165930989497147

/-! ## A283690.P102945482682794623

`A283691(eq[10, A185782(n+1)])`
-/

namespace A283690.P102945482682794623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283690.P102945482682794623

/-!
# A283691: T(n,k) = Number of n X k 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283691, there is no canonical definition to state claims against.
-/

/-! ## A283691.P18284431319691733306

`and(-p?[A322454(n+1)], A282399(n+1))`
-/

namespace A283691.P18284431319691733306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A282399 (n + 1))

end

end A283691.P18284431319691733306

/-! ## A283691.P11816654406125041173

`and(-p?[A322454(n+1)], A283130(n+1))`
-/

namespace A283691.P11816654406125041173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A283130 (n + 1))

end

end A283691.P11816654406125041173

/-! ## A283691.P15354432037808441150

`and(-p?[A322454(n+1)], A295716(n+1))`
-/

namespace A283691.P15354432037808441150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A295716 (n + 1))

end

end A283691.P15354432037808441150

/-! ## A283691.P14348154571538468463

`and(A075680(A000385(3*n+4)), A283415(n+1))`
-/

namespace A283691.P14348154571538468463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075680 (A000385 (3 * n + 4)).toNat) (A283415 (n + 1))

end

end A283691.P14348154571538468463

/-!
# A283692: Number of 2 X n 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283692, the canonical program `A283692.P9557388338875730325` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283692 has offset 1).

The definition of A283692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283692.P9557388338875730325

`3*a(n-1)+a(n-2)+3*a(n-3)-6*a(n-4)-8*a(n-5)` with `a(0)=4, a(1)=16, a(2)=49, a(3)=161, a(4)=548`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283692

/-- `3*a(n-1)+a(n-2)+3*a(n-3)-6*a(n-4)-8*a(n-5)` -/
def P9557388338875730325.Spec : Prop :=
  ∀ n, P9557388338875730325.a n = A283692 (n + 1)

theorem P9557388338875730325.correct : P9557388338875730325.Spec := by
  intro n
  simp only [A283692, Nat.add_sub_cancel]

end A283692

/-! ## A283692.P8612373275226844477

`A283691(∑[n+1]+2)`
-/

namespace A283692.P8612373275226844477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283692.P8612373275226844477

namespace A283692

/-- `A283691(∑[n+1]+2)` -/
def P8612373275226844477.Spec : Prop :=
  ∀ n, P8612373275226844477.a n = A283692 (n + 1)

end A283692

/-! ## A283692.P14529726565345024413

`record[A010054(n)*A283691(n+2)]`
-/

namespace A283692.P14529726565345024413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A283691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283692.P14529726565345024413

namespace A283692

/-- `record[A010054(n)*A283691(n+2)]` -/
def P14529726565345024413.Spec : Prop :=
  ∀ n, P14529726565345024413.a n = A283692 (n + 1)

end A283692

/-! ## A283692.P1723966392240306469

`record[gcd(A002262(n), A283691(n+2))]`
-/

namespace A283692.P1723966392240306469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A283691 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283692.P1723966392240306469

namespace A283692

/-- `record[gcd(A002262(n), A283691(n+2))]` -/
def P1723966392240306469.Spec : Prop :=
  ∀ n, (P1723966392240306469.a n : ℤ) = A283692 (n + 1)

end A283692

/-! ## A283692.P1019727096823195497

`record[A283691(n+3)/A090582(n+1)]`
-/

namespace A283692.P1019727096823195497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283691 (n + 3) : ℚ) / (A090582 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283692.P1019727096823195497

namespace A283692

/-- `record[A283691(n+3)/A090582(n+1)]` -/
def P1019727096823195497.Spec : Prop :=
  ∀ n, P1019727096823195497.a n = (A283692 (n + 1) : ℚ)

end A283692

/-!
# A283693: Number of 3Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283693, there is no canonical definition to state claims against.
-/

/-! ## A283693.P11608978649145694811

`A283691(∑[n+2]+4)`
-/

namespace A283693.P11608978649145694811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283693.P11608978649145694811

/-! ## A283693.P12609124746679176940

`lcm((-1)^n, A283691(A167614(n+1)))`
-/

namespace A283693.P12609124746679176940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A283691 (A167614 (n + 1)).toNat)

end

end A283693.P12609124746679176940

/-! ## A283693.P2730542325426575174

`A283691(A167614(n+1))+A025444(n)`
-/

namespace A283693.P2730542325426575174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167614 (n + 1)).toNat + A025444 n

end

end A283693.P2730542325426575174

/-! ## A283693.P1927599726487189603

`A283691(A167614(n+1))+A178798(n)`
-/

namespace A283693.P1927599726487189603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167614 (n + 1)).toNat + A178798 n

end

end A283693.P1927599726487189603

/-! ## A283693.P17408593095976157578

`A283691(A167614(n+1))%A017467(n)`
-/

namespace A283693.P17408593095976157578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283691 (A167614 (n + 1)).toNat) (A017467 n)

end

end A283693.P17408593095976157578

/-!
# A283694: Number of 4Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283694, there is no canonical definition to state claims against.
-/

/-! ## A283694.P7457008134807177290

`A283691(A141214(n)+7)`
-/

namespace A283694.P7457008134807177290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A141214 n + 7).toNat

end

end A283694.P7457008134807177290

/-! ## A283694.P7435586991751058739

`A283691(A052905(n)+9)`
-/

namespace A283694.P7435586991751058739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A052905 n + 9).toNat

end

end A283694.P7435586991751058739

/-! ## A283694.P14516873970067375693

`A283691(A055999(n)+10)`
-/

namespace A283694.P14516873970067375693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A055999 n + 10).toNat

end

end A283694.P14516873970067375693

/-! ## A283694.P1992009508813190116

`A283691(A167614(n+2)+1)`
-/

namespace A283694.P1992009508813190116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167614 (n + 2) + 1).toNat

end

end A283694.P1992009508813190116

/-! ## A283694.P8829514639032039562

`A283691(A112355(n+1)+4)`
-/

namespace A283694.P8829514639032039562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A112355 (n + 1) + 4).toNat

end

end A283694.P8829514639032039562

/-!
# A283695: Number of 5Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283695, there is no canonical definition to state claims against.
-/

/-! ## A283695.P12372530362830934574

`A283691(A167499(n+3))`
-/

namespace A283695.P12372530362830934574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167499 (n + 3)).toNat

end

end A283695.P12372530362830934574

/-! ## A283695.P13642983711459421835

`A283691(A155212(n)+13)`
-/

namespace A283695.P13642983711459421835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A155212 n + 13).toNat

end

end A283695.P13642983711459421835

/-! ## A283695.P13680924770200154728

`A283691(A056000(n)+15)`
-/

namespace A283695.P13680924770200154728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A056000 n + 15).toNat

end

end A283695.P13680924770200154728

/-! ## A283695.P10778279902981191061

`A283691(A000217(n+4)+5)`
-/

namespace A283695.P10778279902981191061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A000217 (n + 4) + 5).toNat

end

end A283695.P10778279902981191061

/-! ## A283695.P13395561340423048733

`A283691(eq[6, A131818(n+1)])`
-/

namespace A283695.P13395561340423048733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283695.P13395561340423048733

/-!
# A283696: Number of 6Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283696, there is no canonical definition to state claims against.
-/

/-! ## A283696.P11842182041701991378

`A283691(A056115(n)+21)`
-/

namespace A283696.P11842182041701991378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A056115 n + 21).toNat

end

end A283696.P11842182041701991378

/-! ## A283696.P8884359976467492284

`A283691(A167614(n+4)+3)`
-/

namespace A283696.P8884359976467492284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167614 (n + 4) + 3).toNat

end

end A283696.P8884359976467492284

/-! ## A283696.P13604659856244616837

`A283691(A141214(n+2)+9)`
-/

namespace A283696.P13604659856244616837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A141214 (n + 2) + 9).toNat

end

end A283696.P13604659856244616837

/-! ## A283696.P2604553610256057095

`A283691(eq[7, A131818(n+1)])`
-/

namespace A283696.P2604553610256057095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283696.P2604553610256057095

/-! ## A283696.P3831873794969819062

`A283691(Δ[A023545(n+1)]+10)`
-/

namespace A283696.P3831873794969819062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (f1 (n + 1) - f1 n + 10).toNat

end

end A283696.P3831873794969819062

/-!
# A283697: Number of 7Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors.

The programs for A283697, there is no canonical definition to state claims against.
-/

/-! ## A283697.P9100940080659258928

`A283691(A056119(n)+28)`
-/

namespace A283697.P9100940080659258928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A056119 n + 28).toNat

end

end A283697.P9100940080659258928

/-! ## A283697.P15535014703305914926

`A283691(eq[11, A066657(n)])`
-/

namespace A283697.P15535014703305914926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283697.P15535014703305914926

/-! ## A283697.P15084811080184119790

`A283691(A167614(n+5)+4)`
-/

namespace A283697.P15084811080184119790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A167614 (n + 5) + 4).toNat

end

end A283697.P15084811080184119790

/-! ## A283697.P11798871403775190245

`A283691(A052905(n+3)+12)`
-/

namespace A283697.P11798871403775190245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (A052905 (n + 3) + 12).toNat

end

end A283697.P11798871403775190245

/-! ## A283697.P4729208267985785968

`A283691(eq[8, A131818(n+1)])`
-/

namespace A283697.P4729208267985785968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283697.P4729208267985785968

/-!
# A283698: Numbers k such that {k^2 + 2, k^2 + 4} and {k^3 + 2, k^3 + 4} are twin prime pairs.

The programs for A283698, there is no canonical definition to state claims against.
-/

/-! ## A283698.P12440743669836349317

`∩[A086381(n+1), A178337(n+1)]`
-/

namespace A283698.P12440743669836349317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283698.P12440743669836349317

/-!
# A283699: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A283699, there is no canonical definition to state claims against.
-/

/-! ## A283699.P15891098402813351377

`A007088(A283701(n))`
-/

namespace A283699.P15891098402813351377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283701 n).toNat

end

end A283699.P15891098402813351377

/-! ## A283699.P9876468420966432159

`A305989(A283702(n))`
-/

namespace A283699.P9876468420966432159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283702 n).toNat

end

end A283699.P9876468420966432159

/-! ## A283699.P6638979898317177961

`A185544(2*A283701(n))`
-/

namespace A283699.P6638979898317177961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283701 n).toNat

end

end A283699.P6638979898317177961

/-! ## A283699.P7011033103394912647

`A185544(lcm(2, A283701(n)))`
-/

namespace A283699.P7011033103394912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283701 n))

end

end A283699.P7011033103394912647

/-! ## A283699.P7402928890933298653

`A284536(n*gcd(11, n))`
-/

namespace A283699.P7402928890933298653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284536 (n * Nat.gcd 11 n)

end

end A283699.P7402928890933298653

