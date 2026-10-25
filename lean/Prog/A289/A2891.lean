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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
# A289100: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A289100, there is no canonical definition to state claims against.
-/

/-! ## A289100.P11377777996334114007

`A007088(A289102(n))`
-/

namespace A289100.P11377777996334114007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289102 n).toNat

end

end A289100.P11377777996334114007

/-! ## A289100.P9789248221429165760

`A185544(2*A289102(n))`
-/

namespace A289100.P9789248221429165760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289102 n).toNat

end

end A289100.P9789248221429165760

/-! ## A289100.P15575606537226629043

`A185544(A289102(n)+A289102(n))`
-/

namespace A289100.P15575606537226629043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289102 n + A289102 n).toNat

end

end A289100.P15575606537226629043

/-! ## A289100.P14368788090906304622

`A289371(A004892(n+1))`
-/

namespace A289100.P14368788090906304622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289371 (A004892 (n + 1)).toNat

end

end A289100.P14368788090906304622

/-! ## A289100.P10912650450359720745

`A289371(A004903(n+1))`
-/

namespace A289100.P10912650450359720745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289371 (A004903 (n + 1)).toNat

end

end A289100.P10912650450359720745

/-!
# A289101: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A289101, there is no canonical definition to state claims against.
-/

/-! ## A289101.P9025653687369374312

`A007088(A289103(n))`
-/

namespace A289101.P9025653687369374312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289103 n).toNat

end

end A289101.P9025653687369374312

/-! ## A289101.P9533002481215989749

`A305989(A289102(n))`
-/

namespace A289101.P9533002481215989749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289102 n).toNat

end

end A289101.P9533002481215989749

/-! ## A289101.P14425805271561678599

`A185544(2*A289103(n))`
-/

namespace A289101.P14425805271561678599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289103 n).toNat

end

end A289101.P14425805271561678599

/-! ## A289101.P14391849498264519808

`A185544(lcm(2, A289103(n)))`
-/

namespace A289101.P14391849498264519808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289103 n))

end

end A289101.P14391849498264519808

/-! ## A289101.P5499095229785019159

`C(A289372(n), A137748(n)!)`
-/

namespace A289101.P5499095229785019159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289372 n).toNat (Nat.factorial (A137748 n).toNat)

end

end A289101.P5499095229785019159

/-!
# A289102: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A289102, there is no canonical definition to state claims against.
-/

/-! ## A289102.P1464152236709481169

`A095121(n)-A056594(A000111(n))`
-/

namespace A289102.P1464152236709481169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - A056594 (A000111 n).toNat

end

end A289102.P1464152236709481169

/-! ## A289102.P4492585329372876852

`or(A000005(A083785(n+1)), A289373(n))`
-/

namespace A289102.P4492585329372876852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A083785 (n + 1)).toNat) (A289373 n)

end

end A289102.P4492585329372876852

/-! ## A289102.P5758611837100064572

`A289373(A004892(n+1))`
-/

namespace A289102.P5758611837100064572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289373 (A004892 (n + 1)).toNat

end

end A289102.P5758611837100064572

/-! ## A289102.P14528924075839150327

`A289373(A004903(n+1))`
-/

namespace A289102.P14528924075839150327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289373 (A004903 (n + 1)).toNat

end

end A289102.P14528924075839150327

/-! ## A289102.P16478495239920992556

`A289373(A004914(n+1))`
-/

namespace A289102.P16478495239920992556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289373 (A004914 (n + 1)).toNat

end

end A289102.P16478495239920992556

/-!
# A289103: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 549", based on the 5-celled von Neumann neighborhood.

The programs for A289103, there is no canonical definition to state claims against.
-/

/-! ## A289103.P16217608593453299436

`A325401(A289102(n))`
-/

namespace A289103.P16217608593453299436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289102 n).toNat

end

end A289103.P16217608593453299436

/-! ## A289103.P5350513496346497055

`or(A175920(A289102(n)), A286865(n))`
-/

namespace A289103.P5350513496346497055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175920 (A289102 n).toNat) (A286865 n)

end

end A289103.P5350513496346497055

/-! ## A289103.P3379408994644631871

`A331856(2*A289102(n))`
-/

namespace A289103.P3379408994644631871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * A289102 n).toNat

end

end A289103.P3379408994644631871

/-! ## A289103.P3944529599235332916

`A030101(lcm(2, A289102(n)))`
-/

namespace A289103.P3944529599235332916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A289102 n))

end

end A289103.P3944529599235332916

/-! ## A289103.P713405506481351025

`A030101(A289102(A000007(n)+n))`
-/

namespace A289103.P713405506481351025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289102 (A000007 n + (n : ℤ)).toNat).toNat

end

end A289103.P713405506481351025

/-!
# A289104: Fixed point of the mapping 00->0010, 01->011, 10->000, starting with 00.

The programs for A289104, there is no canonical definition to state claims against.
-/

/-! ## A289104.P11013686544085408386

`char[A289106(n+1)-1]`
-/

namespace A289104.P11013686544085408386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289104.P11013686544085408386

/-! ## A289104.P6580666541425956045

`char[comp[A289105(n+1)-1]]`
-/

namespace A289104.P6580666541425956045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289104.P6580666541425956045

/-! ## A289104.P8011623106959631197

`char[abs(A289106(Δ[n²]-n)-1)]`
-/

namespace A289104.P8011623106959631197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289104.P8011623106959631197

/-! ## A289104.P8788831141741420150

`char[A001478(n+1)+A289106(n+1)+n]`
-/

namespace A289104.P8788831141741420150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A289106 (n + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289104.P8788831141741420150

/-! ## A289104.P10839192149377602034

`A057427(n)-char[A289105(n+1)-A057427(n)]`
-/

namespace A289104.P10839192149377602034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (n + 1) - A057427 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289104.P10839192149377602034

/-! ## A289104.P12421720798871072106

`A188014(Δ[comp[A289106(n+1)+n]])`
-/

namespace A289104.P12421720798871072106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289104.P12421720798871072106

/-! ## A289104.P10112777184220290649

`A288736(Δ[comp[A289106(n+1)+n]])`
-/

namespace A289104.P10112777184220290649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289104.P10112777184220290649

/-! ## A289104.P13548068624719543978

`A288741(Δ[comp[A289106(n+1)+n]])`
-/

namespace A289104.P13548068624719543978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289104.P13548068624719543978

/-! ## A289104.P249340152927401806

`A074290(Δ[comp[A289106(n+1)+n]]+1)`
-/

namespace A289104.P249340152927401806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A289104.P249340152927401806

/-! ## A289104.P15057408286524121848

`char[A023443(A289106(n+1))]`
-/

namespace A289104.P15057408286524121848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289106 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289104.P15057408286524121848

/-! ## A289104.P3500967799462303058

`char[A023443(comp[A289105(n+1)])]`
-/

namespace A289104.P3500967799462303058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289104.P3500967799462303058

/-!
# A289105: Positions of 0 in A289104; complement of A289106.

The programs for A289105, there is no canonical definition to state claims against.
-/

/-! ## A289105.P6068745835993734987

`comp[A289106(n+1)-1]+1`
-/

namespace A289105.P6068745835993734987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289106 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289105.P6068745835993734987

/-! ## A289105.P17979286225450333183

`eq[0, A289104(n+1)]+1`
-/

namespace A289105.P17979286225450333183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289105.P17979286225450333183

/-! ## A289105.P8694080821144164715

`lt[n*A289104(A028310(n)), n]`
-/

namespace A289105.P8694080821144164715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289104 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289105.P8694080821144164715

/-! ## A289105.P7725691392168195763

`record[n+1-A006530(n+1)*A289104(n+1)]`
-/

namespace A289105.P7725691392168195763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A289104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289105.P7725691392168195763

/-! ## A289105.P8922034000698322260

`record[n+1-A289104(n+1)*A289106(n+1)]`
-/

namespace A289105.P8922034000698322260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289104 (n + 1) * A289106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289105.P8922034000698322260

/-! ## A289105.P10329894919179911373

`lt[A289104(A028310(n)), A057427(n)]`
-/

namespace A289105.P10329894919179911373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289105.P10329894919179911373

/-! ## A289105.P3689888216236291383

`record[A003602(A289104(n+1)+2*n+1)]`
-/

namespace A289105.P3689888216236291383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A289104 (n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289105.P3689888216236291383

/-! ## A289105.P2503068586554662745

`record[n+1-A289104(n+1)*A289107(n)]`
-/

namespace A289105.P2503068586554662745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289104 (n + 1) * A289107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289105.P2503068586554662745

/-!
# A289106: Positions of 1 in A289104; complement of A289105.

The programs for A289106, there is no canonical definition to state claims against.
-/

/-! ## A289106.P4895125858962960389

`filter[n+1, A289104(#)]`
-/

namespace A289106.P4895125858962960389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289104 (f1 j) = 1) n)

end

end A289106.P4895125858962960389

/-! ## A289106.P2687721945253887659

`eq[1, A289104(n+1)]+1`
-/

namespace A289106.P2687721945253887659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289106.P2687721945253887659

/-! ## A289106.P15132122534234000840

`lt[0, A289104(n+2)]+2`
-/

namespace A289106.P15132122534234000840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A289106.P15132122534234000840

/-! ## A289106.P5653901261653079904

`lt[n*char[A289105(n+1)], n]`
-/

namespace A289106.P5653901261653079904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289106.P5653901261653079904

/-! ## A289106.P18379516945964947173

`lt[0, A289104(A028310(n))]`
-/

namespace A289106.P18379516945964947173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289106.P18379516945964947173

/-! ## A289106.P1584772040561300736

`eq[1, A289104(A000007(n)+n)]`
-/

namespace A289106.P1584772040561300736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289106.P1584772040561300736

/-! ## A289106.P5237639749542621173

`lt[char[A289105(n+1)], A057427(n)]`
-/

namespace A289106.P5237639749542621173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289106.P5237639749542621173

/-! ## A289106.P17437868828945158543

`record[A000720(2*(n+3))*A289104(A000720(2*(n+3)))]`
-/

namespace A289106.P17437868828945158543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 3)) * A289104 (A000720 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289106.P17437868828945158543

/-! ## A289106.P12167214588486439784

`eq[1, A289104(A065033(2*n))]`
-/

namespace A289106.P12167214588486439784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289106.P12167214588486439784

/-! ## A289106.P4112600408321651314

`eq[1, A289104(A123108(2*n))]`
-/

namespace A289106.P4112600408321651314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289106.P4112600408321651314

/-! ## A289106.P6917469077292405947

`eq[1, A289104(A233583(n+1))]`
-/

namespace A289106.P6917469077292405947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289104 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289106.P6917469077292405947

/-!
# A289107: a(n) = 2*a(n-1) - a(n-3) for n >= 5, a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 12, a(4) = 22.

The programs for A289107, the canonical program `A289107.P9206998376695501779` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289107 has offset 0).

The definition of A289107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)` (program `A289107.P9206998376695501779`, by `A289107.P9206998376695501779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289107.P9206998376695501779

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=12, a(4)=22`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289107

/-- `2*a(n-1)-a(n-3)` -/
def P9206998376695501779.Spec : Prop :=
  ∀ n, P9206998376695501779.a n = A289107 n

theorem P9206998376695501779.correct : P9206998376695501779.Spec := by
  intro n
  simp only [A289107]

end A289107

/-! ## A289107.P16483223968197110289

`ogf((2-x^2+2x^4)/(1-2x+x^3))`
-/

namespace A289107.P16483223968197110289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, 0, 2] [1, -2, 0, 1] n

end

end A289107.P16483223968197110289

namespace A289107

/-- `ogf((2-x^2+2x^4)/(1-2x+x^3))` -/
def P16483223968197110289.Spec : Prop :=
  ∀ n, P16483223968197110289.a n = A289107 n

end A289107

/-! ## A289107.P8286148546419001339

`∑[A000032(n)]+abs(2-A000032(n))`
-/

namespace A289107.P8286148546419001339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + |2 - A000032 n|

end

end A289107.P8286148546419001339

namespace A289107

/-- `∑[A000032(n)]+abs(2-A000032(n))` -/
def P8286148546419001339.Spec : Prop :=
  ∀ n, P8286148546419001339.a n = A289107 n

end A289107

/-! ## A289107.P16636682117323682846

`A001610(n+1)+abs(2-A000032(n))`
-/

namespace A289107.P16636682117323682846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1) + |2 - A000032 n|

end

end A289107.P16636682117323682846

namespace A289107

/-- `A001610(n+1)+abs(2-A000032(n))` -/
def P16636682117323682846.Spec : Prop :=
  ∀ n, P16636682117323682846.a n = A289107 n

end A289107

/-! ## A289107.P5315667367942466391

`A000032(n+1)+abs(2*A000032(n)-3)`
-/

namespace A289107.P5315667367942466391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + |2 * A000032 n - 3|

end

end A289107.P5315667367942466391

namespace A289107

/-- `A000032(n+1)+abs(2*A000032(n)-3)` -/
def P5315667367942466391.Spec : Prop :=
  ∀ n, P5315667367942466391.a n = A289107 n

end A289107

/-! ## A289107.P14408990471820971821

`A027961(n+1)-Δ[A000032(n)]%A000032(n)`
-/

namespace A289107.P14408990471820971821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A289107.P14408990471820971821

namespace A289107

/-- `A027961(n+1)-Δ[A000032(n)]%A000032(n)` -/
def P14408990471820971821.Spec : Prop :=
  ∀ n, P14408990471820971821.a n = A289107 n

end A289107

/-! ## A289107.P16266857528091911730

`A014739(n+1)-A000211(n+1)%A001612(n)`
-/

namespace A289107.P16266857528091911730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (n + 1) - Int.tmod (A000211 (n + 1)) (A001612 n)

end

end A289107.P16266857528091911730

namespace A289107

/-- `A014739(n+1)-A000211(n+1)%A001612(n)` -/
def P16266857528091911730.Spec : Prop :=
  ∀ n, P16266857528091911730.a n = A289107 n

end A289107

/-!
# A289108: Triangle read by rows: T(n,k) = (k + 1)*prime(n) + k for n > 0, 0 <= k <= n, and with T(0,0) = 1.

The programs for A289108, the canonical program `A289108.P11984288742072836431` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289108 has offset 0).

The definition of A289108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289108.P11984288742072836431

`A289055(n)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A289108

/-- `A289055(n)-1` -/
def P11984288742072836431.Spec : Prop :=
  ∀ n, P11984288742072836431.a n = A289108 n

theorem P11984288742072836431.correct : P11984288742072836431.Spec := by
  intro n
  simp only [A289108]

end A289108

/-! ## A289108.P15563855426009297971

`A023443(A289055(n))`
-/

namespace A289108.P15563855426009297971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289055 n).toNat

end

end A289108.P15563855426009297971

namespace A289108

/-- `A023443(A289055(n))` -/
def P15563855426009297971.Spec : Prop :=
  ∀ n, P15563855426009297971.a n = A289108 n

end A289108

/-! ## A289108.P8705202706307405830

`A023444(A289055(n)+1)`
-/

namespace A289108.P8705202706307405830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A289055 n + 1).toNat

end

end A289108.P8705202706307405830

namespace A289108

/-- `A023444(A289055(n)+1)` -/
def P8705202706307405830.Spec : Prop :=
  ∀ n, P8705202706307405830.a n = A289108 n

end A289108

/-! ## A289108.P12344973219179189519

`A289207(A289055(n)+1)`
-/

namespace A289108.P12344973219179189519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A289055 n + 1).toNat

end

end A289108.P12344973219179189519

namespace A289108

/-- `A289207(A289055(n)+1)` -/
def P12344973219179189519.Spec : Prop :=
  ∀ n, P12344973219179189519.a n = A289108 n

end A289108

/-! ## A289108.P9567889753108350067

`A046667(2*A289055(n))`
-/

namespace A289108.P9567889753108350067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A289055 n).toNat

end

end A289108.P9567889753108350067

namespace A289108

/-- `A046667(2*A289055(n))` -/
def P9567889753108350067.Spec : Prop :=
  ∀ n, P9567889753108350067.a n = A289108 n

end A289108

/-! ## A289108.P387526378491027581

`A249738(2*A289055(n))`
-/

namespace A289108.P387526378491027581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A289055 n).toNat

end

end A289108.P387526378491027581

namespace A289108

/-- `A249738(2*A289055(n))` -/
def P387526378491027581.Spec : Prop :=
  ∀ n, P387526378491027581.a n = A289108 n

end A289108

/-! ## A289108.P11194135185187492983

`A023444(2*A289055(n))/2`
-/

namespace A289108.P11194135185187492983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A289055 n).toNat : ℚ) / 2

end

end A289108.P11194135185187492983

namespace A289108

/-- `A023444(2*A289055(n))/2` -/
def P11194135185187492983.Spec : Prop :=
  ∀ n, P11194135185187492983.a n = (A289108 n : ℚ)

end A289108

/-! ## A289108.P14401699355965115764

`A289207(2*A289055(n))/2`
-/

namespace A289108.P14401699355965115764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A289055 n).toNat : ℚ) / 2

end

end A289108.P14401699355965115764

namespace A289108

/-- `A289207(2*A289055(n))/2` -/
def P14401699355965115764.Spec : Prop :=
  ∀ n, P14401699355965115764.a n = (A289108 n : ℚ)

end A289108

/-! ## A289108.P11672837041272314538

`A059169(4*A289055(n))`
-/

namespace A289108.P11672837041272314538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A289055 n).toNat

end

end A289108.P11672837041272314538

namespace A289108

/-- `A059169(4*A289055(n))` -/
def P11672837041272314538.Spec : Prop :=
  ∀ n, P11672837041272314538.a n = A289108 n

end A289108

/-! ## A289108.P221201731708084087

`A132270(7*A289055(n))`
-/

namespace A289108.P221201731708084087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (7 * A289055 n).toNat

end

end A289108.P221201731708084087

namespace A289108

/-- `A132270(7*A289055(n))` -/
def P221201731708084087.Spec : Prop :=
  ∀ n, P221201731708084087.a n = A289108 n

end A289108

/-!
# A289110: a(n) = number of covering sets of modulus 2*n for Sierpiński/Riesel numbers.

The programs for A289110, there is no canonical definition to state claims against.
-/

/-! ## A289110.P3806753523112644390

`∑{d}[n+1, A267769(#)*A316866((n+1)/#-1)]`
-/

namespace A289110.P3806753523112644390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267769 d * A316866 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A289110.P3806753523112644390

/-!
# A289112: Fixed point of the mapping 00->0010, 01->011, 10->001, starting with 00.

The programs for A289112, there is no canonical definition to state claims against.
-/

/-! ## A289112.P6703172540707830869

`char[A289114(n+1)-1]`
-/

namespace A289112.P6703172540707830869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289114 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289112.P6703172540707830869

/-! ## A289112.P10201950530328638558

`char[comp[A289113(n+1)-1]]`
-/

namespace A289112.P10201950530328638558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289113 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289112.P10201950530328638558

/-! ## A289112.P16171889601086910814

`char[A023443(A289114(n+1))]`
-/

namespace A289112.P16171889601086910814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289114 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289112.P16171889601086910814

/-! ## A289112.P5289881568398499217

`char[A023443(comp[A289113(n+1)])]`
-/

namespace A289112.P5289881568398499217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289113 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289112.P5289881568398499217

/-! ## A289112.P8258969844409780771

`A000217(A001083(n+1))%A003646(n+2)`
-/

namespace A289112.P8258969844409780771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A001083 (n + 1)).toNat) (A003646 (n + 2))

end

end A289112.P8258969844409780771

/-!
# A289113: Positions of 0 in A289112; complement of A289114.

The programs for A289113, there is no canonical definition to state claims against.
-/

/-! ## A289113.P3251204107315664282

`eq[0, A289112(n+1)]+1`
-/

namespace A289113.P3251204107315664282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289113.P3251204107315664282

/-! ## A289113.P17349538141476058339

`record[n+1-A028391(n*A289112(n+1))]`
-/

namespace A289113.P17349538141476058339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028391 ((n : ℤ) * A289112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289113.P17349538141476058339

/-! ## A289113.P18207425267366185939

`record[n+1-A000040(n+1)*A289112(n+1)]`
-/

namespace A289113.P18207425267366185939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A289112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289113.P18207425267366185939

/-! ## A289113.P8789458090459548012

`record[n+1-A289112(n+1)*A289114(n+1)]`
-/

namespace A289113.P8789458090459548012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289112 (n + 1) * A289114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289113.P8789458090459548012

/-! ## A289113.P1721059284954272960

`A061395(p?[A289112(n+1)+A000040(n+1)])`
-/

namespace A289113.P1721059284954272960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289113.P1721059284954272960

/-! ## A289113.P2768578549571850579

`record[n+1-A156552(n*A289112(n+1)+1)]`
-/

namespace A289113.P2768578549571850579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156552 ((n : ℤ) * A289112 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289113.P2768578549571850579

/-!
# A289114: Positions of 1 in A289112; complement of A289113.

The programs for A289114, there is no canonical definition to state claims against.
-/

/-! ## A289114.P3134918173507723258

`comp[A289113(n+1)-1]+1`
-/

namespace A289114.P3134918173507723258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289113 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289114.P3134918173507723258

/-! ## A289114.P3820220101476606564

`filter[n+1, A289112(#)]`
-/

namespace A289114.P3820220101476606564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289112 (f1 j) = 1) n)

end

end A289114.P3820220101476606564

/-! ## A289114.P6356793167327281769

`eq[1, A289112(n+1)]+1`
-/

namespace A289114.P6356793167327281769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289114.P6356793167327281769

/-! ## A289114.P3138153853396813981

`A065475(eq[1, A289112(n+1)])`
-/

namespace A289114.P3138153853396813981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289114.P3138153853396813981

/-! ## A289114.P17321120005931817084

`eq[1, A289112(A000007(n)+n)]`
-/

namespace A289114.P17321120005931817084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289114.P17321120005931817084

/-! ## A289114.P16882449633866277157

`A061395(p?[A000040(n+1)*A289112(n+1)])`
-/

namespace A289114.P16882449633866277157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A289112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289114.P16882449633866277157

/-! ## A289114.P4014990340712878400

`eq[1, A289112(A233583(n+1))]`
-/

namespace A289114.P4014990340712878400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289112 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289114.P4014990340712878400

/-!
# A289115: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3) - 2*a(n-4) + a(n-5) for n >= 10, a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 12, a(4) = 20, a(5) = 32, a(6) = 50, a(7) = 77, a(8) = 116, a(9) = 174.

The programs for A289115, the canonical program `A289115.P10690267652439996743` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289115 has offset 0).

The definition of A289115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` (program `A289115.P10690267652439996743`, by `A289115.P10690267652439996743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289115.P10690267652439996743

`3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=12, a(4)=20, a(5)=32, a(6)=50, a(7)=77, a(8)=116, a(9)=174`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289115

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` -/
def P10690267652439996743.Spec : Prop :=
  ∀ n, P10690267652439996743.a n = A289115 n

theorem P10690267652439996743.correct : P10690267652439996743.Spec := by
  intro n
  simp only [A289115]

end A289115

/-! ## A289115.P15147744071368743661

`floor(sqrt(A008458((n+1)*2^n-∑[n])))`
-/

namespace A289115.P15147744071368743661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008458 ((n + 1) * 2 ^ n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A289115.P15147744071368743661

namespace A289115

/-- `floor(sqrt(A008458((n+1)*2^n-∑[n])))` -/
def P15147744071368743661.Spec : Prop :=
  ∀ n, P15147744071368743661.a n = A289115 n

end A289115

/-! ## A289115.P8595813294995418530

`floor(sqrt(A249942((n+1)*2^n-∑[n])))`
-/

namespace A289115.P8595813294995418530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A249942 ((n + 1) * 2 ^ n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A289115.P8595813294995418530

namespace A289115

/-- `floor(sqrt(A249942((n+1)*2^n-∑[n])))` -/
def P8595813294995418530.Spec : Prop :=
  ∀ n, P8595813294995418530.a n = A289115 n

end A289115

/-! ## A289115.P6571703852085564069

`A055086(ceil(2^(n-1))+abs(Δ[n/2*(-2)^n]))`
-/

namespace A289115.P6571703852085564069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((-2) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) + |f1 (n + 1) - f1 n|)).toNat

end

end A289115.P6571703852085564069

namespace A289115

/-- `A055086(ceil(2^(n-1))+abs(Δ[n/2*(-2)^n]))` -/
def P6571703852085564069.Spec : Prop :=
  ∀ n, P6571703852085564069.a n = A289115 n

end A289115

/-! ## A289115.P13927220638245651712

`A082447(A014480(n)+1)`
-/

namespace A289115.P13927220638245651712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A014480 n + 1).toNat

end

end A289115.P13927220638245651712

namespace A289115

/-- `A082447(A014480(n)+1)` -/
def P13927220638245651712.Spec : Prop :=
  ∀ n, P13927220638245651712.a n = A289115 n

end A289115

/-!
# A289117: Numbers k such that 155*2^k + 1 is a semiprime.

The programs for A289117, there is no canonical definition to state claims against.
-/

/-! ## A289117.P18375206611341412548

`A263633(A017989(n))+A000040(n+1)`
-/

namespace A289117.P18375206611341412548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263633 (A017989 n).toNat + A000040 (n + 1)

end

end A289117.P18375206611341412548

/-! ## A289117.P424560756184725172

`or(A002024(A335984(3*n+1)), A004197(n))`
-/

namespace A289117.P424560756184725172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002024 (A335984 (3 * n + 1)).toNat) (A004197 n)

end

end A289117.P424560756184725172

/-! ## A289117.P4263698531077724181

`abs(1-n)+(A279933(n+2)-1)*A043283(A064184(n))`
-/

namespace A289117.P4263698531077724181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (A279933 (n + 2) - 1) * A043283 (A064184 n).toNat

end

end A289117.P4263698531077724181

/-!
# A289118: Least prime beginning a string, of length at least n, of consecutive primes which alternate between types 4*k+1 and 4*k+3 or 4*k+3 and 4*k+1.

The programs for A289118, there is no canonical definition to state claims against.
-/

/-! ## A289118.P13412021906451284852

`p?[A261450(∑[A137688(n)])]`
-/

namespace A289118.P13412021906451284852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261450 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289118.P13412021906451284852

/-! ## A289118.P11771545941881652331

`A352351(A352351(n+4)+A098151(n))`
-/

namespace A289118.P11771545941881652331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352351 (A352351 (n + 4) + A098151 n).toNat

end

end A289118.P11771545941881652331

/-!
# A289119: Least prime beginning a string, of length at least n, of consecutive primes which alternate between types 6*k+1 and 6*k+5 or 6*k+5 and 6*k+1.

The programs for A289119, there is no canonical definition to state claims against.
-/

/-! ## A289119.P1036197404423218899

`A000040(A247970(n+1))`
-/

namespace A289119.P1036197404423218899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247970 (n + 1)).toNat

end

end A289119.P1036197404423218899

/-! ## A289119.P12339503484609975026

`A008578(A247970(n+1)+1)`
-/

namespace A289119.P12339503484609975026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A247970 (n + 1) + 1).toNat

end

end A289119.P12339503484609975026

/-! ## A289119.P2384678297758766739

`A064555(A247970(n+1)+1)`
-/

namespace A289119.P2384678297758766739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A247970 (n + 1) + 1).toNat

end

end A289119.P2384678297758766739

/-! ## A289119.P17586111905130568001

`A182986(A247970(n+1)+1)`
-/

namespace A289119.P17586111905130568001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A247970 (n + 1) + 1).toNat

end

end A289119.P17586111905130568001

/-! ## A289119.P14710920513952308337

`A046022(A247970(n+1)+2)`
-/

namespace A289119.P14710920513952308337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A247970 (n + 1) + 2).toNat

end

end A289119.P14710920513952308337

/-!
# A289120: a(n) is the number of odd integers divisible by 7 in ]2*(n-1)^2, 2*n^2[.

The programs for A289120, the canonical program `A289120.P4190190873443067730` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289120 has offset 0).

The definition of A289120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289120.P4190190873443067730

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2, a(6)=1, a(7)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289120

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P4190190873443067730.Spec : Prop :=
  ∀ n, P4190190873443067730.a n = A289120 n

theorem P4190190873443067730.correct : P4190190873443067730.Spec := by
  intro n
  simp only [A289120]

end A289120

/-! ## A289120.P15827957612684158106

`Δ[round((1-n)²/7)]`
-/

namespace A289120.P15827957612684158106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289120.P15827957612684158106

namespace A289120

/-- `Δ[round((1-n)²/7)]` -/
def P15827957612684158106.Spec : Prop :=
  ∀ n, P15827957612684158106.a n = A289120 n

end A289120

/-! ## A289120.P14097292480312261640

`A057356(n+2)-Δ[A057356(n)]`
-/

namespace A289120.P14097292480312261640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (n + 2) - (f1 (n + 1) - f1 n)

end

end A289120.P14097292480312261640

namespace A289120

/-- `A057356(n+2)-Δ[A057356(n)]` -/
def P14097292480312261640.Spec : Prop :=
  ∀ n, P14097292480312261640.a n = A289120 n

end A289120

/-! ## A289120.P9459379931936139724

`A059169(A004776(n+2))`
-/

namespace A289120.P9459379931936139724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A004776 (n + 2)).toNat

end

end A289120.P9459379931936139724

namespace A289120

/-- `A059169(A004776(n+2))` -/
def P9459379931936139724.Spec : Prop :=
  ∀ n, P9459379931936139724.a n = A289120 n

end A289120

/-! ## A289120.P5409858392148150624

`A059169(A047595(n+2))`
-/

namespace A289120.P5409858392148150624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A047595 (n + 2)).toNat

end

end A289120.P5409858392148150624

namespace A289120

/-- `A059169(A047595(n+2))` -/
def P5409858392148150624.Spec : Prop :=
  ∀ n, P5409858392148150624.a n = A289120 n

end A289120

/-! ## A289120.P15649612214123850193

`A059169(lt[A273724(n), A273724(n+2)])`
-/

namespace A289120.P15649612214123850193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289120.P15649612214123850193

namespace A289120

/-- `A059169(lt[A273724(n), A273724(n+2)])` -/
def P15649612214123850193.Spec : Prop :=
  ∀ n, P15649612214123850193.a n = A289120 n

end A289120

/-!
# A289121: a(n) = (8 - 2*n + 11*n^2 - 6*n^3 + n^4)/4.

The programs for A289121, the canonical program `A289121.P17210554981846683123` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289121 has offset 1).

The definition of A289121 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8-2*(n+1)+11*(n+1)²-6*(n+1)^3+(n+1)^4)/4` (program `A289121.P13502234168943177728`, by `A289121.P13502234168943177728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289121.P13502234168943177728

`(8-2*(n+1)+11*(n+1)²-6*(n+1)^3+(n+1)^4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289121.P13502234168943177728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - (2 * (n + 1) : ℤ) + (11 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) ^ 3 : ℤ) + ((n + 1) ^ 4 : ℤ) : ℚ) / 4

end

end A289121.P13502234168943177728

namespace A289121

/-- `(8-2*(n+1)+11*(n+1)²-6*(n+1)^3+(n+1)^4)/4` -/
def P13502234168943177728.Spec : Prop :=
  ∀ n, P13502234168943177728.a n = (A289121 (n + 1) : ℚ)

theorem P13502234168943177728.correct : P13502234168943177728.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A289121, Nat.add_sub_cancel, A289121.P13502234168943177728.a, A289121.P17210554981846683123.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A289121, Nat.add_sub_cancel, A289121.P13502234168943177728.a, A289121.P17210554981846683123.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A289121

/-! ## A289121.P17210554981846683123

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=12, a(4)=37`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289121

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17210554981846683123.Spec : Prop :=
  ∀ n, P17210554981846683123.a n = A289121 (n + 1)

theorem P17210554981846683123.correct : P17210554981846683123.Spec := by
  intro n
  simp only [A289121, Nat.add_sub_cancel]

end A289121

/-! ## A289121.P1330455494064458011

`∑[6*C(n, 3)+1]+2`
-/

namespace A289121.P1330455494064458011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A289121.P1330455494064458011

namespace A289121

/-- `∑[6*C(n, 3)+1]+2` -/
def P1330455494064458011.Spec : Prop :=
  ∀ n, (P1330455494064458011.a n : ℤ) = A289121 (n + 1)

end A289121

/-! ## A289121.P10932621840249429505

`∑[lcm(n-1, (n-1)*(1-n)²)-(n-2)]`
-/

namespace A289121.P10932621840249429505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (((n : ℤ) - 1) * (1 - (n : ℤ)) ^ 2) : ℤ) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P10932621840249429505

namespace A289121

/-- `∑[lcm(n-1, (n-1)*(1-n)²)-(n-2)]` -/
def P10932621840249429505.Spec : Prop :=
  ∀ n, P10932621840249429505.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P15117914775116565817

`∑[A000578(abs(1-n))-(n-2)]`
-/

namespace A289121.P15117914775116565817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 |1 - (n : ℤ)|.toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P15117914775116565817

namespace A289121

/-- `∑[A000578(abs(1-n))-(n-2)]` -/
def P15117914775116565817.Spec : Prop :=
  ∀ n, P15117914775116565817.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P4700850824499950140

`∑[A007531(n)+C(3, C(3, n²))]`
-/

namespace A289121.P4700850824499950140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + (Nat.choose 3 (Nat.choose 3 (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P4700850824499950140

namespace A289121

/-- `∑[A007531(n)+C(3, C(3, n²))]` -/
def P4700850824499950140.Spec : Prop :=
  ∀ n, P4700850824499950140.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P13899670714412103187

`∑[A007531(n)+A000041(C(3, n+2))]`
-/

namespace A289121.P13899670714412103187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A000041 (Nat.choose 3 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P13899670714412103187

namespace A289121

/-- `∑[A007531(n)+A000041(C(3, n+2))]` -/
def P13899670714412103187.Spec : Prop :=
  ∀ n, P13899670714412103187.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P227680311208536367

`3*(A034827(n+1)+n/3+1)`
-/

namespace A289121.P227680311208536367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A034827 (n + 1) : ℚ) + ((n : ℚ) / 3 + 1))

end

end A289121.P227680311208536367

namespace A289121

/-- `3*(A034827(n+1)+n/3+1)` -/
def P227680311208536367.Spec : Prop :=
  ∀ n, P227680311208536367.a n = (A289121 (n + 1) : ℚ)

end A289121

/-! ## A289121.P12718288875331680162

`∑[A007531(n)+A001511(A000040(n+1)+2)]`
-/

namespace A289121.P12718288875331680162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + A001511 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P12718288875331680162

namespace A289121

/-- `∑[A007531(n)+A001511(A000040(n+1)+2)]` -/
def P12718288875331680162.Spec : Prop :=
  ∀ n, P12718288875331680162.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P16879254353540521345

`A002061(A161680(n))+n+2`
-/

namespace A289121.P16879254353540521345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A161680 n).toNat + (n + 2 : ℤ)

end

end A289121.P16879254353540521345

namespace A289121

/-- `A002061(A161680(n))+n+2` -/
def P16879254353540521345.Spec : Prop :=
  ∀ n, P16879254353540521345.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P4657198817166249437

`∑[A077121((1-n)²)-(n-1)]`
-/

namespace A289121.P4657198817166249437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 ((1 - (n : ℤ)) ^ 2).toNat - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P4657198817166249437

namespace A289121

/-- `∑[A077121((1-n)²)-(n-1)]` -/
def P4657198817166249437.Spec : Prop :=
  ∀ n, P4657198817166249437.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P14225716717859829622

`∑[A185549((1-n)²)-(n-2)]`
-/

namespace A289121.P14225716717859829622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 ((1 - (n : ℤ)) ^ 2).toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P14225716717859829622

namespace A289121

/-- `∑[A185549((1-n)²)-(n-2)]` -/
def P14225716717859829622.Spec : Prop :=
  ∀ n, P14225716717859829622.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P1509308577624162350

`∑[A000093((1-n)²)-(n-2)]`
-/

namespace A289121.P1509308577624162350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 ((1 - (n : ℤ)) ^ 2).toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P1509308577624162350

namespace A289121

/-- `∑[A000093((1-n)²)-(n-2)]` -/
def P1509308577624162350.Spec : Prop :=
  ∀ n, P1509308577624162350.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P17817488768120504028

`∑[A002821((1-n)²)-(n-2)]`
-/

namespace A289121.P17817488768120504028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 ((1 - (n : ℤ)) ^ 2).toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P17817488768120504028

namespace A289121

/-- `∑[A002821((1-n)²)-(n-2)]` -/
def P17817488768120504028.Spec : Prop :=
  ∀ n, P17817488768120504028.a n = A289121 (n + 1)

end A289121

/-! ## A289121.P10381056316528055261

`∑[A166447((1-n)²)-(n-2)]`
-/

namespace A289121.P10381056316528055261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 ((1 - (n : ℤ)) ^ 2).toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289121.P10381056316528055261

namespace A289121

/-- `∑[A166447((1-n)²)-(n-2)]` -/
def P10381056316528055261.Spec : Prop :=
  ∀ n, P10381056316528055261.a n = A289121 (n + 1)

end A289121

/-!
# A289122: a(n) is number of odd integers divisible by 11 in the interval ]2*(n-1)^2, 2*n^2[.

The programs for A289122, the canonical program `A289122.P5640920586194724977` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289122 has offset 0).

The definition of A289122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289122.P5640920586194724977

`Δ[round((1-n)²/11)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289122

/-- `Δ[round((1-n)²/11)]` -/
def P5640920586194724977.Spec : Prop :=
  ∀ n, P5640920586194724977.a n = A289122 n

theorem P5640920586194724977.correct : P5640920586194724977.Spec := by
  intro n
  simp only [A289122]

end A289122

/-! ## A289122.P15175230093581675355

`abs(Δ[A321195(n+1)])`
-/

namespace A289122.P15175230093581675355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A289122.P15175230093581675355

namespace A289122

/-- `abs(Δ[A321195(n+1)])` -/
def P15175230093581675355.Spec : Prop :=
  ∀ n, P15175230093581675355.a n = A289122 n

end A289122

/-! ## A289122.P16152688390440808176

`A005843(Δ[A321195(n+1)])/2`
-/

namespace A289122.P16152688390440808176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A289122.P16152688390440808176

namespace A289122

/-- `A005843(Δ[A321195(n+1)])/2` -/
def P16152688390440808176.Spec : Prop :=
  ∀ n, P16152688390440808176.a n = (A289122 n : ℚ)

end A289122

/-! ## A289122.P7176223704104974020

`Δ[A321195(n+1)]*A057427(n)`
-/

namespace A289122.P7176223704104974020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A289122.P7176223704104974020

namespace A289122

/-- `Δ[A321195(n+1)]*A057427(n)` -/
def P7176223704104974020.Spec : Prop :=
  ∀ n, P7176223704104974020.a n = A289122 n

end A289122

/-! ## A289122.P13626430407693505270

`A321195(n+2)-A321195(n+1)`
-/

namespace A289122.P13626430407693505270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 2) - A321195 (n + 1)

end

end A289122.P13626430407693505270

namespace A289122

/-- `A321195(n+2)-A321195(n+1)` -/
def P13626430407693505270.Spec : Prop :=
  ∀ n, P13626430407693505270.a n = A289122 n

end A289122

/-! ## A289122.P10558545970640975435

`A034506(A084067(n))+Δ[A321195(n+1)]`
-/

namespace A289122.P10558545970640975435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034506 (A084067 n).toNat + (f1 (n + 1) - f1 n)

end

end A289122.P10558545970640975435

namespace A289122

/-- `A034506(A084067(n))+Δ[A321195(n+1)]` -/
def P10558545970640975435.Spec : Prop :=
  ∀ n, P10558545970640975435.a n = A289122 n

end A289122

/-! ## A289122.P2181649620306380256

`n-A008615(A313722(n))`
-/

namespace A289122.P2181649620306380256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008615 (A313722 n).toNat

end

end A289122.P2181649620306380256

namespace A289122

/-- `n-A008615(A313722(n))` -/
def P2181649620306380256.Spec : Prop :=
  ∀ n, P2181649620306380256.a n = A289122 n

end A289122

/-! ## A289122.P8989094355177431060

`A313779(A267458(2*n))%A267458(2*n)`
-/

namespace A289122.P8989094355177431060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313779 (A267458 (2 * n)).toNat) (A267458 (2 * n))

end

end A289122.P8989094355177431060

namespace A289122

/-- `A313779(A267458(2*n))%A267458(2*n)` -/
def P8989094355177431060.Spec : Prop :=
  ∀ n, P8989094355177431060.a n = A289122 n

end A289122

/-! ## A289122.P5500730686629507652

`Δ[A321195(n+1)]%A005428(n)`
-/

namespace A289122.P5500730686629507652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A005428 n)

end

end A289122.P5500730686629507652

namespace A289122

/-- `Δ[A321195(n+1)]%A005428(n)` -/
def P5500730686629507652.Spec : Prop :=
  ∀ n, P5500730686629507652.a n = A289122 n

end A289122

/-! ## A289122.P2908887337314090274

`A000196(Δ[A321195(n+1)]²)`
-/

namespace A289122.P2908887337314090274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A289122.P2908887337314090274

namespace A289122

/-- `A000196(Δ[A321195(n+1)]²)` -/
def P2908887337314090274.Spec : Prop :=
  ∀ n, P2908887337314090274.a n = A289122 n

end A289122

/-! ## A289122.P2163445501278193557

`and(Δ[A321195(n+1)], A000225(n))`
-/

namespace A289122.P2163445501278193557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A000225 n)

end

end A289122.P2163445501278193557

namespace A289122

/-- `and(Δ[A321195(n+1)], A000225(n))` -/
def P2163445501278193557.Spec : Prop :=
  ∀ n, P2163445501278193557.a n = A289122 n

end A289122

/-!
# A289123: Numbers n such that (n-2,n) are twin primes, and (n,n+2) are twin lucky numbers.

The programs for A289123, there is no canonical definition to state claims against.
-/

/-! ## A289123.P2484084609264201288

`∩[A006512(n+1), A031158(n+1)]`
-/

namespace A289123.P2484084609264201288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P2484084609264201288

/-! ## A289123.P11095619563321121888

`∩[A031158(n+1), A067829(n+1)]`
-/

namespace A289123.P11095619563321121888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P11095619563321121888

/-! ## A289123.P8012730381469734448

`∩[A031158(n+1), A172057(n+1)]`
-/

namespace A289123.P8012730381469734448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P8012730381469734448

/-! ## A289123.P2871958267256061719

`∩[A031158(n+1), A339692(n+1)]`
-/

namespace A289123.P2871958267256061719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P2871958267256061719

/-! ## A289123.P9719449228811742219

`∩[A031158(n+1), A320391(n+1)]`
-/

namespace A289123.P9719449228811742219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P9719449228811742219

/-! ## A289123.P1470519355680430936

`∩[A031158(n+1), A391049(n+1)]`
-/

namespace A289123.P1470519355680430936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P1470519355680430936

/-! ## A289123.P11818201343699594848

`∩[A006512(n+1), A057701(n+1)]`
-/

namespace A289123.P11818201343699594848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P11818201343699594848

/-! ## A289123.P689122803779256321

`∩[A057701(n+1), A172057(n+1)]`
-/

namespace A289123.P689122803779256321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P689122803779256321

/-! ## A289123.P10391039835304260025

`∩[A057701(n+1), A320391(n+1)]`
-/

namespace A289123.P10391039835304260025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P10391039835304260025

/-! ## A289123.P2161375308536658975

`∩[A057701(n+1), A339692(n+1)]`
-/

namespace A289123.P2161375308536658975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P2161375308536658975

/-! ## A289123.P10502553652977655300

`∩[A057701(n+1), A391049(n+1)]`
-/

namespace A289123.P10502553652977655300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P10502553652977655300

/-! ## A289123.P9291411128249422908

`∩[A001097(n+1), A031158(n+1)]`
-/

namespace A289123.P9291411128249422908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P9291411128249422908

/-! ## A289123.P16957551003544344931

`∩[A031158(n+1), A171688(n+1)]`
-/

namespace A289123.P16957551003544344931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P16957551003544344931

/-! ## A289123.P3054817292666516569

`∩[A031158(n+1), A171821(n+1)]`
-/

namespace A289123.P3054817292666516569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P3054817292666516569

/-! ## A289123.P10965641607509826020

`∩[A057701(n+1), A171688(n+1)]`
-/

namespace A289123.P10965641607509826020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P10965641607509826020

/-! ## A289123.P14670639735100422895

`∩[A031158(n+1), A265760(n+1)]`
-/

namespace A289123.P14670639735100422895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P14670639735100422895

/-! ## A289123.P2994215110891861725

`∩[A031158(n+1), A075862(n+1)]`
-/

namespace A289123.P2994215110891861725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289123.P2994215110891861725

/-!
# A289124: Numbers n such that sigma(sigma(n))/sigma(n) > sigma(sigma(m))/sigma(m) for all m < n.

The programs for A289124, there is no canonical definition to state claims against.
-/

/-! ## A289124.P15686727862823054379

`filter[A276043(n+1), A340363(#)]`
-/

namespace A289124.P15686727862823054379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A289124.P15686727862823054379

/-! ## A289124.P12134801351648727995

`filter[A276043(n+1), A340372(#)]`
-/

namespace A289124.P12134801351648727995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A289124.P12134801351648727995

/-! ## A289124.P3493189365455398875

`filter[A276043(n+1), A368992(#)]`
-/

namespace A289124.P3493189365455398875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368992 (f1 j).toNat = 1) n)

end

end A289124.P3493189365455398875

/-!
# A289125: Numbers n such that phi(n)/phi(phi(n)) > phi(m)/phi(phi(m)) for all m < n.

The programs for A289125, there is no canonical definition to state claims against.
-/

/-! ## A289125.P8556449302291229854

`A000265(A073918(n))`
-/

namespace A289125.P8556449302291229854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073918 n).toNat

end

end A289125.P8556449302291229854

/-! ## A289125.P17557740033237641557

`A090395(A241196(n+1))`
-/

namespace A289125.P17557740033237641557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A241196 (n + 1)).toNat

end

end A289125.P17557740033237641557

/-! ## A289125.P9728990239540159811

`A318828(A073918(n)+1)`
-/

namespace A289125.P9728990239540159811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (A073918 n + 1).toNat

end

end A289125.P9728990239540159811

/-!
# A289126: Numbers n such that usigma(usigma(n))/usigma(n) > usigma(usigma(m))/usigma(m) for all m < n, where usigma(n) is the sum of unitary divisors of n (A034448).

The programs for A289126, there is no canonical definition to state claims against.
-/

/-! ## A289126.P5210921312176613313

`gcd(A000038(A114515(n)), A291356(n))`
-/

namespace A289126.P5210921312176613313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A114515 n).toNat) (A291356 n)

end

end A289126.P5210921312176613313

/-! ## A289126.P18278004330107134643

`A291356(n)+A000122(A213969(2*(n+2)))`
-/

namespace A289126.P18278004330107134643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291356 n + A000122 (A213969 (2 * (n + 2))).toNat

end

end A289126.P18278004330107134643

/-! ## A289126.P4972678502242776584

`A291356(n)+A000038(A114515(n)+A000038(n))`
-/

namespace A289126.P4972678502242776584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291356 n + A000038 (A114515 n + A000038 n).toNat

end

end A289126.P4972678502242776584

/-! ## A289126.P5308890459645166209

`or(A000925(A000245(n)), A291356(n))`
-/

namespace A289126.P5308890459645166209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000925 (A000245 n).toNat) (A291356 n)

end

end A289126.P5308890459645166209

/-! ## A289126.P1917329308260548206

`A291356(n)+A045634(A045650(n+1))`
-/

namespace A289126.P1917329308260548206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291356 n + A045634 (A045650 (n + 1)).toNat

end

end A289126.P1917329308260548206

/-!
# A289128: Fixed point of the mapping 00->0010, 01->011, 10->010, starting with 00.

The programs for A289128, there is no canonical definition to state claims against.
-/

/-! ## A289128.P3511639695293205936

`char[A289130(n+1)-1]`
-/

namespace A289128.P3511639695293205936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289130 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289128.P3511639695293205936

/-! ## A289128.P10413202945065507010

`char[comp[A289129(n+1)-1]]`
-/

namespace A289128.P10413202945065507010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289128.P10413202945065507010

/-! ## A289128.P15142706991690398278

`1-char[A289129(xor(1, n)+1)-1]`
-/

namespace A289128.P15142706991690398278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289128.P15142706991690398278

/-! ## A289128.P13361347873755707859

`abs(char[A289129(Δ[n²]-n)-1]-1)`
-/

namespace A289128.P13361347873755707859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A289128.P13361347873755707859

/-! ## A289128.P9250385836821714447

`1-char[A289129(2*n-n+1)-1]`
-/

namespace A289128.P9250385836821714447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 ((2 * n : ℤ) - (n : ℤ) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289128.P9250385836821714447

/-! ## A289128.P12045044513615343546

`char[record[A289130(A344180(n))-1]]`
-/

namespace A289128.P12045044513615343546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289130 (A344180 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289128.P12045044513615343546

/-! ## A289128.P1407798318454515274

`char[A023443(A289130(n+1))]`
-/

namespace A289128.P1407798318454515274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289130 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289128.P1407798318454515274

/-! ## A289128.P16413039053438056082

`char[A023443(comp[A289129(n+1)])]`
-/

namespace A289128.P16413039053438056082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289128.P16413039053438056082

/-!
# A289129: Positions of 0 in A289128; complement of A289130.

The programs for A289129, there is no canonical definition to state claims against.
-/

/-! ## A289129.P14762350798922249468

`eq[0, A289128(n+1)]+1`
-/

namespace A289129.P14762350798922249468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289129.P14762350798922249468

/-! ## A289129.P15126207442831592428

`lt[n*A289128(A028310(n)), n]`
-/

namespace A289129.P15126207442831592428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289128 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289129.P15126207442831592428

/-! ## A289129.P9772695442494262578

`record[n+1-A289128(n+1)*A289130(n+1)]`
-/

namespace A289129.P9772695442494262578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289128 (n + 1) * A289130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289129.P9772695442494262578

/-! ## A289129.P2362728027571746916

`record[A003602(A289128(n+1)+A005408(n))]`
-/

namespace A289129.P2362728027571746916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A289128 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289129.P2362728027571746916

/-! ## A289129.P12681334380735038438

`record[A028242(A005843(n)-A289128(n+1))]`
-/

namespace A289129.P12681334380735038438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A289128 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289129.P12681334380735038438

/-! ## A289129.P2434016875737584230

`record[n+1-A289128(n+1)*A289131(n)]`
-/

namespace A289129.P2434016875737584230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289128 (n + 1) * A289131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289129.P2434016875737584230

/-!
# A289130: Positions of 1 in A289128; complement of A289129.

The programs for A289130, there is no canonical definition to state claims against.
-/

/-! ## A289130.P98525330479161097

`comp[A289129(n+1)-1]+1`
-/

namespace A289130.P98525330479161097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289130.P98525330479161097

/-! ## A289130.P12987710111564303115

`filter[n+1, A289128(#)]`
-/

namespace A289130.P12987710111564303115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289128 (f1 j) = 1) n)

end

end A289130.P12987710111564303115

/-! ## A289130.P5836356981523483718

`eq[1, A289128(n+1)]+1`
-/

namespace A289130.P5836356981523483718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289130.P5836356981523483718

/-! ## A289130.P15932188090341652447

`lt[0, A289128(A028310(n))]`
-/

namespace A289130.P15932188090341652447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289130.P15932188090341652447

/-! ## A289130.P17108936365022248689

`A020725(eq[1, A289128(n+1)])`
-/

namespace A289130.P17108936365022248689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289130.P17108936365022248689

/-! ## A289130.P13647566313247919326

`A065475(eq[1, A289128(n+1)])`
-/

namespace A289130.P13647566313247919326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289130.P13647566313247919326

/-! ## A289130.P12624956890159962710

`eq[1, A289128(A000007(n)+n)]`
-/

namespace A289130.P12624956890159962710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289130.P12624956890159962710

/-! ## A289130.P8404818625815401715

`lt[char[A289129(n+1)], A057427(n)]`
-/

namespace A289130.P8404818625815401715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289129 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289130.P8404818625815401715

/-! ## A289130.P14579732872246794589

`eq[1, A289128(A065033(2*n))]`
-/

namespace A289130.P14579732872246794589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289130.P14579732872246794589

/-! ## A289130.P14307758449425091934

`eq[1, A289128(A233583(n+1))]`
-/

namespace A289130.P14307758449425091934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289130.P14307758449425091934

/-!
# A289131: a(n) = a(n-1) + 3*a(n-2) - 3*a(n-3) - 2*a(n-4) + 2*a(n-5) for n >= 6, a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 11, a(4) = 18, a(5) = 28.

The programs for A289131, the canonical program `A289131.P12666316280987510497` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289131 has offset 0).

The definition of A289131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-3*a(n-3)-2*a(n-4)+2*a(n-5)` (program `A289131.P12666316280987510497`, by `A289131.P12666316280987510497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289131.P12666316280987510497

`a(n-1)+3*a(n-2)-3*a(n-3)-2*a(n-4)+2*a(n-5)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=11, a(4)=18, a(5)=28`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289131

/-- `a(n-1)+3*a(n-2)-3*a(n-3)-2*a(n-4)+2*a(n-5)` -/
def P12666316280987510497.Spec : Prop :=
  ∀ n, P12666316280987510497.a n = A289131 n

theorem P12666316280987510497.correct : P12666316280987510497.Spec := by
  intro n
  simp only [A289131]

end A289131

/-! ## A289131.P12126788662084445449

`∑[A052955(n)-and(1, a(n-1))]` with `a(0)=2`
-/

namespace A289131.P12126788662084445449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A052955 n - Int.land 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289131.P12126788662084445449

namespace A289131

/-- `∑[A052955(n)-and(1, a(n-1))]` -/
def P12126788662084445449.Spec : Prop :=
  ∀ n, P12126788662084445449.a n = A289131 n

end A289131

/-! ## A289131.P6988194153313873557

`∑[A052955(n)]+1-A140106(n+1)`
-/

namespace A289131.P6988194153313873557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A140106 (n + 1))

end

end A289131.P6988194153313873557

namespace A289131

/-- `∑[A052955(n)]+1-A140106(n+1)` -/
def P6988194153313873557.Spec : Prop :=
  ∀ n, P6988194153313873557.a n = A289131 n

end A289131

/-! ## A289131.P17521405026847085162

`a(n-1)+A063759(n)-A000034(n)` with `a(0)=2, a(1)=4`
-/

namespace A289131.P17521405026847085162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (A063759 n - A000034 n)

end

end A289131.P17521405026847085162

namespace A289131

/-- `a(n-1)+A063759(n)-A000034(n)` -/
def P17521405026847085162.Spec : Prop :=
  ∀ n, P17521405026847085162.a n = A289131 n

end A289131

/-! ## A289131.P15982844364280352156

`∑[A029744(n+2)]-n-A140106(n+1)`
-/

namespace A289131.P15982844364280352156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - A140106 (n + 1)

end

end A289131.P15982844364280352156

namespace A289131

/-- `∑[A029744(n+2)]-n-A140106(n+1)` -/
def P15982844364280352156.Spec : Prop :=
  ∀ n, P15982844364280352156.a n = A289131 n

end A289131

/-! ## A289131.P17606200897039376857

`∑[A056594(A019427(n))+A052955(n)]`
-/

namespace A289131.P17606200897039376857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A019427 n).toNat + A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289131.P17606200897039376857

namespace A289131

/-- `∑[A056594(A019427(n))+A052955(n)]` -/
def P17606200897039376857.Spec : Prop :=
  ∀ n, P17606200897039376857.a n = A289131 n

end A289131

/-! ## A289131.P3312992434065619487

`A024000(A140106(n+1))+∑[A052955(n)]`
-/

namespace A289131.P3312992434065619487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A140106 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289131.P3312992434065619487

namespace A289131

/-- `A024000(A140106(n+1))+∑[A052955(n)]` -/
def P3312992434065619487.Spec : Prop :=
  ∀ n, P3312992434065619487.a n = A289131 n

end A289131

/-! ## A289131.P2713225610240162989

`∑[A052955(A028310(n))]-A140106(n+1)`
-/

namespace A289131.P2713225610240162989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A140106 (n + 1)

end

end A289131.P2713225610240162989

namespace A289131

/-- `∑[A052955(A028310(n))]-A140106(n+1)` -/
def P2713225610240162989.Spec : Prop :=
  ∀ n, P2713225610240162989.a n = A289131 n

end A289131

/-! ## A289131.P11769860634954564915

`∑[A052955(A233583(n+1))]-A080513(n)`
-/

namespace A289131.P11769860634954564915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080513 n

end

end A289131.P11769860634954564915

namespace A289131

/-- `∑[A052955(A233583(n+1))]-A080513(n)` -/
def P11769860634954564915.Spec : Prop :=
  ∀ n, P11769860634954564915.a n = A289131 n

end A289131

/-! ## A289131.P13821431631721872696

`∑[A052955(A233583(n+1))]+1-A004526(n+5)`
-/

namespace A289131.P13821431631721872696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A004526 (n + 5))

end

end A289131.P13821431631721872696

namespace A289131

/-- `∑[A052955(A233583(n+1))]+1-A004526(n+5)` -/
def P13821431631721872696.Spec : Prop :=
  ∀ n, P13821431631721872696.a n = A289131 n

end A289131

/-!
# A289132: Indices of records in A063974.

The programs for A289132, there is no canonical definition to state claims against.
-/

/-! ## A289132.P6711543491689686377

`A063975(record[A063974(n+1)])`
-/

namespace A289132.P6711543491689686377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063975 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289132.P6711543491689686377

/-! ## A289132.P6822898033981819556

`∑{d}[∏{p}[n+1, #], (n+1)/#]*A295523(n+1)`
-/

namespace A289132.P6822898033981819556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A295523 (n + 1) : ℚ)

end

end A289132.P6822898033981819556

/-! ## A289132.P6141709990657897108

`∑{d}[n+1, A063659(#)]*A295523(n+1)`
-/

namespace A289132.P6141709990657897108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A063659 d) * A295523 (n + 1)

end

end A289132.P6141709990657897108

/-!
# A289133: a(n) is the number of odd integers divisible by 9 in ]2*(n-1)^2, 2*n^2[.

The programs for A289133, the canonical program `A289133.P16161768643192573983` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289133 has offset 0).

The definition of A289133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289133.P16161768643192573983

`∑[val(dr(n)+2, 5)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289133

/-- `∑[val(dr(n)+2, 5)]` -/
def P16161768643192573983.Spec : Prop :=
  ∀ n, (P16161768643192573983.a n : ℤ) = A289133 n

theorem P16161768643192573983.correct : P16161768643192573983.Spec := by
  intro n
  simp only [A289133]

end A289133

/-! ## A289133.P2210041767138909411

`round(record[lcm(2, n)/18])`
-/

namespace A289133.P2210041767138909411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A289133.P2210041767138909411

namespace A289133

/-- `round(record[lcm(2, n)/18])` -/
def P2210041767138909411.Spec : Prop :=
  ∀ n, P2210041767138909411.a n = A289133 n

end A289133

/-! ## A289133.P8047535019695587850

`floor((2*n+3)/9)`
-/

namespace A289133.P8047535019695587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 3 : ℚ) / 9⌋

end

end A289133.P8047535019695587850

namespace A289133

/-- `floor((2*n+3)/9)` -/
def P8047535019695587850.Spec : Prop :=
  ∀ n, P8047535019695587850.a n = A289133 n

end A289133

/-! ## A289133.P4648980265163921363

`∑[val(n%9+2, 5)]`
-/

namespace A289133.P4648980265163921363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n % 9 + 2) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289133.P4648980265163921363

namespace A289133

/-- `∑[val(n%9+2, 5)]` -/
def P4648980265163921363.Spec : Prop :=
  ∀ n, (P4648980265163921363.a n : ℤ) = A289133 n

end A289133

/-! ## A289133.P5109634724516167314

`∑[C(dr(∑[n+3]), 9)]`
-/

namespace A289133.P5109634724516167314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289133.P5109634724516167314

namespace A289133

/-- `∑[C(dr(∑[n+3]), 9)]` -/
def P5109634724516167314.Spec : Prop :=
  ∀ n, (P5109634724516167314.a n : ℤ) = A289133 n

end A289133

/-! ## A289133.P12374009038469736602

`round((2*n-cos(1))/9)`
-/

namespace A289133.P12374009038469736602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cos (1 : ℝ)) / 9)

end

end A289133.P12374009038469736602

namespace A289133

/-- `round((2*n-cos(1))/9)` -/
def P12374009038469736602.Spec : Prop :=
  ∀ n, P12374009038469736602.a n = A289133 n

end A289133

/-! ## A289133.P6964846131967223463

`round((2*n-sin(1))/9)`
-/

namespace A289133.P6964846131967223463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.sin (1 : ℝ)) / 9)

end

end A289133.P6964846131967223463

namespace A289133

/-- `round((2*n-sin(1))/9)` -/
def P6964846131967223463.Spec : Prop :=
  ∀ n, P6964846131967223463.a n = A289133 n

end A289133

/-! ## A289133.P3657780199346469728

`round((cos(3)+2*n)/9)`
-/

namespace A289133.P3657780199346469728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (3 : ℝ) + (2 * n : ℝ)) / 9)

end

end A289133.P3657780199346469728

namespace A289133

/-- `round((cos(3)+2*n)/9)` -/
def P3657780199346469728.Spec : Prop :=
  ∀ n, P3657780199346469728.a n = A289133 n

end A289133

/-! ## A289133.P9575639347292512637

`ceil(cos(4)+2*n/9)`
-/

namespace A289133.P9575639347292512637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (4 : ℝ) + ((2 * n : ℚ) / 9 : ℝ)⌉

end

end A289133.P9575639347292512637

namespace A289133

/-- `ceil(cos(4)+2*n/9)` -/
def P9575639347292512637.Spec : Prop :=
  ∀ n, P9575639347292512637.a n = A289133 n

end A289133

/-! ## A289133.P7436283303798997899

`round(tan(3)+2*n/9)`
-/

namespace A289133.P7436283303798997899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((2 * n : ℚ) / 9 : ℝ))

end

end A289133.P7436283303798997899

namespace A289133

/-- `round(tan(3)+2*n/9)` -/
def P7436283303798997899.Spec : Prop :=
  ∀ n, P7436283303798997899.a n = A289133 n

end A289133

/-! ## A289133.P1591036204166204126

`round((sin(4)+2*n)/9)`
-/

namespace A289133.P1591036204166204126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (4 : ℝ) + (2 * n : ℝ)) / 9)

end

end A289133.P1591036204166204126

namespace A289133

/-- `round((sin(4)+2*n)/9)` -/
def P1591036204166204126.Spec : Prop :=
  ∀ n, P1591036204166204126.a n = A289133 n

end A289133

/-! ## A289133.P5507335910720596924

`round((2*n-atan(1))/9)`
-/

namespace A289133.P5507335910720596924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.arctan (1 : ℝ)) / 9)

end

end A289133.P5507335910720596924

namespace A289133

/-- `round((2*n-atan(1))/9)` -/
def P5507335910720596924.Spec : Prop :=
  ∀ n, P5507335910720596924.a n = A289133 n

end A289133

/-! ## A289133.P10451511525038258087

`round((2*n-tan(4))/9)`
-/

namespace A289133.P10451511525038258087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tan (4 : ℝ)) / 9)

end

end A289133.P10451511525038258087

namespace A289133

/-- `round((2*n-tan(4))/9)` -/
def P10451511525038258087.Spec : Prop :=
  ∀ n, P10451511525038258087.a n = A289133 n

end A289133

/-! ## A289133.P2959831075828972792

`ceil(2*n/9-sin(7))`
-/

namespace A289133.P2959831075828972792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 9 : ℝ) - Real.sin (7 : ℝ)⌉

end

end A289133.P2959831075828972792

namespace A289133

/-- `ceil(2*n/9-sin(7))` -/
def P2959831075828972792.Spec : Prop :=
  ∀ n, P2959831075828972792.a n = A289133 n

end A289133

/-! ## A289133.P13301599363859153896

`round((2*n-sinh(1))/9)`
-/

namespace A289133.P13301599363859153896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.sinh (1 : ℝ)) / 9)

end

end A289133.P13301599363859153896

namespace A289133

/-- `round((2*n-sinh(1))/9)` -/
def P13301599363859153896.Spec : Prop :=
  ∀ n, P13301599363859153896.a n = A289133 n

end A289133

/-! ## A289133.P6042279276776530844

`round((2*n-tanh(1))/9)`
-/

namespace A289133.P6042279276776530844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.tanh (1 : ℝ)) / 9)

end

end A289133.P6042279276776530844

namespace A289133

/-- `round((2*n-tanh(1))/9)` -/
def P6042279276776530844.Spec : Prop :=
  ∀ n, P6042279276776530844.a n = A289133 n

end A289133

/-! ## A289133.P3870128149382411920

`ceil(2*n/9-cot(1))`
-/

namespace A289133.P3870128149382411920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 9 : ℝ) - Real.cot (1 : ℝ)⌉

end

end A289133.P3870128149382411920

namespace A289133

/-- `ceil(2*n/9-cot(1))` -/
def P3870128149382411920.Spec : Prop :=
  ∀ n, P3870128149382411920.a n = A289133 n

end A289133

/-! ## A289133.P8846548359035056683

`round((2*n-cot(1))/9)`
-/

namespace A289133.P8846548359035056683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - Real.cot (1 : ℝ)) / 9)

end

end A289133.P8846548359035056683

namespace A289133

/-- `round((2*n-cot(1))/9)` -/
def P8846548359035056683.Spec : Prop :=
  ∀ n, P8846548359035056683.a n = A289133 n

end A289133

/-! ## A289133.P13835955611350287099

`round((2*n-acot(1))/9)`
-/

namespace A289133.P13835955611350287099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℝ) - SequenceMachineLib.acot (1 : ℝ)) / 9)

end

end A289133.P13835955611350287099

namespace A289133

/-- `round((2*n-acot(1))/9)` -/
def P13835955611350287099.Spec : Prop :=
  ∀ n, P13835955611350287099.a n = A289133 n

end A289133

/-! ## A289133.P5035638855223001294

`ceil(2*n/9-tan(10))`
-/

namespace A289133.P5035638855223001294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) / 9 : ℝ) - Real.tan (10 : ℝ)⌉

end

end A289133.P5035638855223001294

namespace A289133

/-- `ceil(2*n/9-tan(10))` -/
def P5035638855223001294.Spec : Prop :=
  ∀ n, P5035638855223001294.a n = A289133 n

end A289133

/-!
# A289134: a(n) = 21*n^2 - 33*n + 13.

The programs for A289134, the canonical program `A289134.P1820607564029476574` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289134 has offset 1).

The definition of A289134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*(n+1)²-33*(n+1)+13` (program `A289134.P1820607564029476574`, by `A289134.P1820607564029476574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289134.P1820607564029476574

`21*(n+1)²-33*(n+1)+13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289134

/-- `21*(n+1)²-33*(n+1)+13` -/
def P1820607564029476574.Spec : Prop :=
  ∀ n, P1820607564029476574.a n = A289134 (n + 1)

theorem P1820607564029476574.correct : P1820607564029476574.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel]

end A289134

/-! ## A289134.P2793245971113863651

`∑[a(n-1)+42]` with `a(0)=1, a(1)=30`
-/

namespace A289134.P2793245971113863651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  f1 (n - 1) + 42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289134.P2793245971113863651

namespace A289134

/-- `∑[a(n-1)+42]` -/
def P2793245971113863651.Spec : Prop :=
  ∀ n, (P2793245971113863651.a n : ℤ) = A289134 (n + 1)

end A289134

/-! ## A289134.P12292376805263955777

`A134159(n)%A017006(n)`
-/

namespace A289134.P12292376805263955777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134159 n) (A017006 n)

end

end A289134.P12292376805263955777

namespace A289134

/-- `A134159(n)%A017006(n)` -/
def P12292376805263955777.Spec : Prop :=
  ∀ n, P12292376805263955777.a n = A289134 (n + 1)

end A289134

/-! ## A289134.P16533052995356128664

`Δ[n*A051868(n)]`
-/

namespace A289134.P16533052995356128664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289134.P16533052995356128664

namespace A289134

/-- `Δ[n*A051868(n)]` -/
def P16533052995356128664.Spec : Prop :=
  ∀ n, P16533052995356128664.a n = A289134 (n + 1)

theorem P16533052995356128664.correct : P16533052995356128664.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P16533052995356128664.f1, A289134.P16533052995356128664.a, A289134.P1820607564029476574.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P17680742655927552417

`Δ[n*(A139268(n)-n)]`
-/

namespace A289134.P17680742655927552417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139268 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289134.P17680742655927552417

namespace A289134

/-- `Δ[n*(A139268(n)-n)]` -/
def P17680742655927552417.Spec : Prop :=
  ∀ n, P17680742655927552417.a n = A289134 (n + 1)

theorem P17680742655927552417.correct : P17680742655927552417.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P17680742655927552417.f1, A289134.P17680742655927552417.a, A289134.P1820607564029476574.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P12927018593384750179

`Δ[n*(A152965(n)-A000567(n))]`
-/

namespace A289134.P12927018593384750179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152965 n - A000567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289134.P12927018593384750179

namespace A289134

/-- `Δ[n*(A152965(n)-A000567(n))]` -/
def P12927018593384750179.Spec : Prop :=
  ∀ n, P12927018593384750179.a n = A289134 (n + 1)

theorem P12927018593384750179.correct : P12927018593384750179.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P12927018593384750179.f1, A289134.P12927018593384750179.a, A289134.P1820607564029476574.a, A000567, A000567.P17850767079432249295.a, A152965, A152965.P8792226006321906066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P9952248186190547485

`Δ[A062158(2*n)-A062158(n+1)]`
-/

namespace A289134.P9952248186190547485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 (2 * n) - A062158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289134.P9952248186190547485

namespace A289134

/-- `Δ[A062158(2*n)-A062158(n+1)]` -/
def P9952248186190547485.Spec : Prop :=
  ∀ n, P9952248186190547485.a n = A289134 (n + 1)

theorem P9952248186190547485.correct : P9952248186190547485.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P9952248186190547485.f1, A289134.P9952248186190547485.a, A289134.P1820607564029476574.a, A062158, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P5212980044870788308

`A239449(3*n+1)/3`
-/

namespace A289134.P5212980044870788308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239449 (3 * n + 1) : ℚ) / 3

end

end A289134.P5212980044870788308

namespace A289134

/-- `A239449(3*n+1)/3` -/
def P5212980044870788308.Spec : Prop :=
  ∀ n, P5212980044870788308.a n = (A289134 (n + 1) : ℚ)

theorem P5212980044870788308.correct : P5212980044870788308.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P5212980044870788308.a, A289134.P1820607564029476574.a, A239449, A239449.P12701582002852355718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P9809410482187095735

`A003215(7*n+1)/7`
-/

namespace A289134.P9809410482187095735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003215 (7 * n + 1) : ℚ) / 7

end

end A289134.P9809410482187095735

namespace A289134

/-- `A003215(7*n+1)/7` -/
def P9809410482187095735.Spec : Prop :=
  ∀ n, P9809410482187095735.a n = (A289134 (n + 1) : ℚ)

theorem P9809410482187095735.correct : P9809410482187095735.Spec := by
  intro n
  simp only [A289134, Nat.add_sub_cancel, A289134.P9809410482187095735.a, A289134.P1820607564029476574.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289134

/-! ## A289134.P16419917256419789687

`A301683(3*n)`
-/

namespace A289134.P16419917256419789687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301683 (3 * n)

end

end A289134.P16419917256419789687

namespace A289134

/-- `A301683(3*n)` -/
def P16419917256419789687.Spec : Prop :=
  ∀ n, P16419917256419789687.a n = A289134 (n + 1)

end A289134

/-!
# A289135: Prime numbers p such that 3*p - 2 is the square of a prime number.

The programs for A289135, there is no canonical definition to state claims against.
-/

/-! ## A289135.P3700034985193410084

`(A109953(n+1)²+2)/3`
-/

namespace A289135.P3700034985193410084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109953 (n + 1) ^ 2 + 2 : ℚ) / 3

end

end A289135.P3700034985193410084

/-! ## A289135.P10660939700080738856

`A133395(n+1)/3`
-/

namespace A289135.P10660939700080738856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133395 (n + 1) : ℚ) / 3

end

end A289135.P10660939700080738856

/-! ## A289135.P1650926017611295352

`ceil(p?[A240878(n+1)]²/3)`
-/

namespace A289135.P1650926017611295352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ) / 3⌉

end

end A289135.P1650926017611295352

/-! ## A289135.P3234063773014089182

`(p?[A240878(n+1)]²+2)/A020639(A001748(n+3))`
-/

namespace A289135.P3234063773014089182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 2 : ℚ) / (A020639 (A001748 (n + 3)).toNat : ℚ)

end

end A289135.P3234063773014089182

/-! ## A289135.P6059724497239055581

`ceil(A109953(n+1)²/3)`
-/

namespace A289135.P6059724497239055581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109953 (n + 1) ^ 2 : ℚ) / 3⌉

end

end A289135.P6059724497239055581

/-! ## A289135.P10929821272962071399

`A008810(A109953(n+1))`
-/

namespace A289135.P10929821272962071399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (A109953 (n + 1)).toNat

end

end A289135.P10929821272962071399

/-! ## A289135.P7535099648258481267

`A008810(p?[A240878(n+1)])`
-/

namespace A289135.P7535099648258481267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289135.P7535099648258481267

/-! ## A289135.P4308129761111009169

`A008810(p?[A242330(n+1)])`
-/

namespace A289135.P4308129761111009169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289135.P4308129761111009169

/-! ## A289135.P9228949733071910624

`A087483(A109953(n+1)-1)`
-/

namespace A289135.P9228949733071910624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (A109953 (n + 1) - 1).toNat

end

end A289135.P9228949733071910624

/-! ## A289135.P6165226359378942177

`A008810(record[A014963(A240878(n+1))])`
-/

namespace A289135.P6165226359378942177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A240878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289135.P6165226359378942177

/-!
# A289136: Number of colorings of the n X n king graph up to permutation of the colors.

The programs for A289136, there is no canonical definition to state claims against.
-/

/-! ## A289136.P14269393264215796588

`A208021(2*(n+1)²-2*(n+1)+1)`
-/

namespace A289136.P14269393264215796588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208021 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A289136.P14269393264215796588

/-!
# A289139: a(n) is the number of odd integers divisible by 7 in ]4*(n-1)^2, 4*n^2[.

The programs for A289139, the canonical program `A289139.P4254181439574506819` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289139 has offset 0).

The definition of A289139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289139.P4254181439574506819

`floor(n-∑[n%7]/7)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289139

/-- `floor(n-∑[n%7]/7)` -/
def P4254181439574506819.Spec : Prop :=
  ∀ n, P4254181439574506819.a n = A289139 n

theorem P4254181439574506819.correct : P4254181439574506819.Spec := by
  intro n
  simp only [A289139]

end A289139

/-! ## A289139.P9177003417521655959

`floor((12*n+1)/7)-round(8*n/7)`
-/

namespace A289139.P9177003417521655959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * n + 1 : ℚ) / 7⌋ - SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

end

end A289139.P9177003417521655959

namespace A289139

/-- `floor((12*n+1)/7)-round(8*n/7)` -/
def P9177003417521655959.Spec : Prop :=
  ∀ n, P9177003417521655959.a n = A289139 n

end A289139

/-! ## A289139.P13013554050873927718

`∑[char[n-ceil((2*n+1)%7/3)+3]]`
-/

namespace A289139.P13013554050873927718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(((2 * n + 1) % 7 : ℕ) : ℚ) / 3⌉ + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289139.P13013554050873927718

namespace A289139

/-- `∑[char[n-ceil((2*n+1)%7/3)+3]]` -/
def P13013554050873927718.Spec : Prop :=
  ∀ n, (P13013554050873927718.a n : ℤ) = A289139 n

end A289139

/-! ## A289139.P8707901539462210100

`∑[char[A047285(n+2)]]`
-/

namespace A289139.P8707901539462210100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289139.P8707901539462210100

namespace A289139

/-- `∑[char[A047285(n+2)]]` -/
def P8707901539462210100.Spec : Prop :=
  ∀ n, (P8707901539462210100.a n : ℤ) = A289139 n

end A289139

/-! ## A289139.P7003957239705057818

`A004523(round(6*n/7))`
-/

namespace A289139.P7003957239705057818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (SequenceMachineLib.roundAway (6 * ((n : ℚ) / 7))).toNat

end

end A289139.P7003957239705057818

namespace A289139

/-- `A004523(round(6*n/7))` -/
def P7003957239705057818.Spec : Prop :=
  ∀ n, P7003957239705057818.a n = A289139 n

end A289139

/-! ## A289139.P14557190332815610744

`∑[char[A047325(n+1)+1]]`
-/

namespace A289139.P14557190332815610744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047325 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289139.P14557190332815610744

namespace A289139

/-- `∑[char[A047325(n+1)+1]]` -/
def P14557190332815610744.Spec : Prop :=
  ∀ n, (P14557190332815610744.a n : ℤ) = A289139 n

end A289139

/-! ## A289139.P16194336968003063642

`A057358(A082784(n+4)+n)`
-/

namespace A289139.P16194336968003063642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A082784 (n + 4) + (n : ℤ)).toNat

end

end A289139.P16194336968003063642

namespace A289139

/-- `A057358(A082784(n+4)+n)` -/
def P16194336968003063642.Spec : Prop :=
  ∀ n, P16194336968003063642.a n = A289139 n

end A289139

/-! ## A289139.P443189274316056614

`A004524(A047565(n+1))`
-/

namespace A289139.P443189274316056614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047565 (n + 1)).toNat

end

end A289139.P443189274316056614

namespace A289139

/-- `A004524(A047565(n+1))` -/
def P443189274316056614.Spec : Prop :=
  ∀ n, P443189274316056614.a n = A289139 n

end A289139

/-! ## A289139.P10888345043215448500

`A004524(A047592(n+1))`
-/

namespace A289139.P10888345043215448500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047592 (n + 1)).toNat

end

end A289139.P10888345043215448500

namespace A289139

/-- `A004524(A047592(n+1))` -/
def P10888345043215448500.Spec : Prop :=
  ∀ n, P10888345043215448500.a n = A289139 n

end A289139

/-! ## A289139.P15294277285843714246

`A004524(A047594(n+1))`
-/

namespace A289139.P15294277285843714246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047594 (n + 1)).toNat

end

end A289139.P15294277285843714246

namespace A289139

/-- `A004524(A047594(n+1))` -/
def P15294277285843714246.Spec : Prop :=
  ∀ n, P15294277285843714246.a n = A289139 n

end A289139

/-! ## A289139.P4077548040954527793

`A004524(A004774(n+2))`
-/

namespace A289139.P4077548040954527793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004774 (n + 2)).toNat

end

end A289139.P4077548040954527793

namespace A289139

/-- `A004524(A004774(n+2))` -/
def P4077548040954527793.Spec : Prop :=
  ∀ n, P4077548040954527793.a n = A289139 n

end A289139

/-! ## A289139.P13689327128067650371

`A057354(2*n+1-A057358(n+2))`
-/

namespace A289139.P13689327128067650371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 ((2 * n + 1 : ℤ) - A057358 (n + 2)).toNat

end

end A289139.P13689327128067650371

namespace A289139

/-- `A057354(2*n+1-A057358(n+2))` -/
def P13689327128067650371.Spec : Prop :=
  ∀ n, P13689327128067650371.a n = A289139 n

end A289139

/-! ## A289139.P7420599444410714982

`A057354(A057355(A057359(n))+n+1)`
-/

namespace A289139.P7420599444410714982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057355 (A057359 n).toNat + (n + 1 : ℤ)).toNat

end

end A289139.P7420599444410714982

namespace A289139

/-- `A057354(A057355(A057359(n))+n+1)` -/
def P7420599444410714982.Spec : Prop :=
  ∀ n, P7420599444410714982.a n = A289139 n

end A289139

/-! ## A289139.P3765522856264895302

`A057354(A057359(2*n+1))`
-/

namespace A289139.P3765522856264895302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A057359 (2 * n + 1)).toNat

end

end A289139.P3765522856264895302

namespace A289139

/-- `A057354(A057359(2*n+1))` -/
def P3765522856264895302.Spec : Prop :=
  ∀ n, P3765522856264895302.a n = A289139 n

end A289139

/-! ## A289139.P12637205686471499811

`A002264(2*A057357(2*n+1))`
-/

namespace A289139.P12637205686471499811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A057357 (2 * n + 1)).toNat

end

end A289139.P12637205686471499811

namespace A289139

/-- `A002264(2*A057357(2*n+1))` -/
def P12637205686471499811.Spec : Prop :=
  ∀ n, P12637205686471499811.a n = A289139 n

end A289139

/-! ## A289139.P16271258629091143937

`A057354(A083026(2*n+1)-2*n)`
-/

namespace A289139.P16271258629091143937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A083026 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A289139.P16271258629091143937

namespace A289139

/-- `A057354(A083026(2*n+1)-2*n)` -/
def P16271258629091143937.Spec : Prop :=
  ∀ n, P16271258629091143937.a n = A289139 n

end A289139

/-! ## A289139.P6138732312343594726

`A057354(A083028(2*n+1)-2*n)`
-/

namespace A289139.P6138732312343594726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A083028 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A289139.P6138732312343594726

namespace A289139

/-- `A057354(A083028(2*n+1)-2*n)` -/
def P6138732312343594726.Spec : Prop :=
  ∀ n, P6138732312343594726.a n = A289139 n

end A289139

/-! ## A289139.P6307852304664373845

`A057356(A057359(2*n+1)+A057358(n+1))`
-/

namespace A289139.P6307852304664373845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A057359 (2 * n + 1) + A057358 (n + 1)).toNat

end

end A289139.P6307852304664373845

namespace A289139

/-- `A057356(A057359(2*n+1)+A057358(n+1))` -/
def P6307852304664373845.Spec : Prop :=
  ∀ n, P6307852304664373845.a n = A289139 n

end A289139

/-! ## A289139.P11705513470396302267

`A057356(A057358(2*n+1)+A057357(2*n+1))`
-/

namespace A289139.P11705513470396302267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A057358 (2 * n + 1) + A057357 (2 * n + 1)).toNat

end

end A289139.P11705513470396302267

namespace A289139

/-- `A057356(A057358(2*n+1)+A057357(2*n+1))` -/
def P11705513470396302267.Spec : Prop :=
  ∀ n, P11705513470396302267.a n = A289139 n

end A289139

/-! ## A289139.P3495969011014836362

`A057356(A057359(2*n+1)+A057356(2*n+1))`
-/

namespace A289139.P3495969011014836362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A057359 (2 * n + 1) + A057356 (2 * n + 1)).toNat

end

end A289139.P3495969011014836362

namespace A289139

/-- `A057356(A057359(2*n+1)+A057356(2*n+1))` -/
def P3495969011014836362.Spec : Prop :=
  ∀ n, P3495969011014836362.a n = A289139 n

end A289139

/-!
# A289142: Numbers whose sum of prime factors (taken with multiplicity) is divisible by 3.

The programs for A289142, the canonical program `A289142.P11077449046936920695` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289142 has offset 1).

The definition of A289142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289142.P11077449046936920695

`eq[0, A001414(n+1)%3]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289142

/-- `eq[0, A001414(n+1)%3]+1` -/
def P11077449046936920695.Spec : Prop :=
  ∀ n, (P11077449046936920695.a n : ℤ) = A289142 (n + 1)

theorem P11077449046936920695.correct : P11077449046936920695.Spec := by
  intro n
  simp only [A289142, Nat.add_sub_cancel]

end A289142

/-! ## A289142.P430329072052940700

`filter[A171581(n+1), A373371(#)]`
-/

namespace A289142.P430329072052940700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P430329072052940700

namespace A289142

/-- `filter[A171581(n+1), A373371(#)]` -/
def P430329072052940700.Spec : Prop :=
  ∀ n, P430329072052940700.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P9060521734506954181

`filter[A173905(n+2), A373371(#)]`
-/

namespace A289142.P9060521734506954181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P9060521734506954181

namespace A289142

/-- `filter[A173905(n+2), A373371(#)]` -/
def P9060521734506954181.Spec : Prop :=
  ∀ n, P9060521734506954181.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P16870240615561129870

`filter[A073900(n+1), A373371(#)]`
-/

namespace A289142.P16870240615561129870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P16870240615561129870

namespace A289142

/-- `filter[A073900(n+1), A373371(#)]` -/
def P16870240615561129870.Spec : Prop :=
  ∀ n, P16870240615561129870.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P6138336412541744496

`filter[A073899(n+1), A373371(#)]`
-/

namespace A289142.P6138336412541744496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P6138336412541744496

namespace A289142

/-- `filter[A073899(n+1), A373371(#)]` -/
def P6138336412541744496.Spec : Prop :=
  ∀ n, P6138336412541744496.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P12812712708865976962

`filter[A121543(n+1), A373371(#)]`
-/

namespace A289142.P12812712708865976962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P12812712708865976962

namespace A289142

/-- `filter[A121543(n+1), A373371(#)]` -/
def P12812712708865976962.Spec : Prop :=
  ∀ n, P12812712708865976962.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P4177205241190536761

`filter[A089088(n), A373371(#)]`
-/

namespace A289142.P4177205241190536761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P4177205241190536761

namespace A289142

/-- `filter[A089088(n), A373371(#)]` -/
def P4177205241190536761.Spec : Prop :=
  ∀ n, P4177205241190536761.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P6993174789854575899

`filter[A196990(n+1), A373371(#)]`
-/

namespace A289142.P6993174789854575899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P6993174789854575899

namespace A289142

/-- `filter[A196990(n+1), A373371(#)]` -/
def P6993174789854575899.Spec : Prop :=
  ∀ n, P6993174789854575899.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P2607155387833887720

`filter[A337843(n), A373371(#)]`
-/

namespace A289142.P2607155387833887720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P2607155387833887720

namespace A289142

/-- `filter[A337843(n), A373371(#)]` -/
def P2607155387833887720.Spec : Prop :=
  ∀ n, P2607155387833887720.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P12389080996830138289

`eq[1, A036288(n+1)%3]+1`
-/

namespace A289142.P12389080996830138289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036288 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289142.P12389080996830138289

namespace A289142

/-- `eq[1, A036288(n+1)%3]+1` -/
def P12389080996830138289.Spec : Prop :=
  ∀ n, (P12389080996830138289.a n : ℤ) = A289142 (n + 1)

end A289142

/-! ## A289142.P2396549971177615237

`record[n+1-A027443(A118503(n+1)+1)]+1`
-/

namespace A289142.P2396549971177615237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027443 (A118503 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A289142.P2396549971177615237

namespace A289142

/-- `record[n+1-A027443(A118503(n+1)+1)]+1` -/
def P2396549971177615237.Spec : Prop :=
  ∀ n, P2396549971177615237.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P6847812351236429135

`filter[A332900(n+1), A373371(#)]`
-/

namespace A289142.P6847812351236429135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P6847812351236429135

namespace A289142

/-- `filter[A332900(n+1), A373371(#)]` -/
def P6847812351236429135.Spec : Prop :=
  ∀ n, P6847812351236429135.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P16546132610759688525

`filter[A305904(n+1), A373371(#)]`
-/

namespace A289142.P16546132610759688525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P16546132610759688525

namespace A289142

/-- `filter[A305904(n+1), A373371(#)]` -/
def P16546132610759688525.Spec : Prop :=
  ∀ n, P16546132610759688525.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P18280852070995019959

`filter[A305903(n+1), A373371(#)]`
-/

namespace A289142.P18280852070995019959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P18280852070995019959

namespace A289142

/-- `filter[A305903(n+1), A373371(#)]` -/
def P18280852070995019959.Spec : Prop :=
  ∀ n, P18280852070995019959.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P10586990783543992385

`filter[A084408(n+1), A373371(#)]`
-/

namespace A289142.P10586990783543992385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P10586990783543992385

namespace A289142

/-- `filter[A084408(n+1), A373371(#)]` -/
def P10586990783543992385.Spec : Prop :=
  ∀ n, P10586990783543992385.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P7612941546284914296

`filter[A305900(n+1), A373371(#)]`
-/

namespace A289142.P7612941546284914296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P7612941546284914296

namespace A289142

/-- `filter[A305900(n+1), A373371(#)]` -/
def P7612941546284914296.Spec : Prop :=
  ∀ n, P7612941546284914296.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P1003465841521126663

`filter[A319707(n+1), A373371(#)]`
-/

namespace A289142.P1003465841521126663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P1003465841521126663

namespace A289142

/-- `filter[A319707(n+1), A373371(#)]` -/
def P1003465841521126663.Spec : Prop :=
  ∀ n, P1003465841521126663.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P16951405883142544840

`filter[A305800(n+1), A373371(#)]`
-/

namespace A289142.P16951405883142544840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P16951405883142544840

namespace A289142

/-- `filter[A305800(n+1), A373371(#)]` -/
def P16951405883142544840.Spec : Prop :=
  ∀ n, P16951405883142544840.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P11988720606890405068

`filter[A305902(n+1), A373371(#)]`
-/

namespace A289142.P11988720606890405068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P11988720606890405068

namespace A289142

/-- `filter[A305902(n+1), A373371(#)]` -/
def P11988720606890405068.Spec : Prop :=
  ∀ n, P11988720606890405068.a n = A289142 (n + 1)

end A289142

/-! ## A289142.P8808357180005537957

`filter[A277376(n+1), A373371(#)]`
-/

namespace A289142.P8808357180005537957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A289142.P8808357180005537957

namespace A289142

/-- `filter[A277376(n+1), A373371(#)]` -/
def P8808357180005537957.Spec : Prop :=
  ∀ n, P8808357180005537957.a n = A289142 (n + 1)

end A289142

/-!
# A289143: Matching number of the n-triangular honeycomb acute knight graph.

The programs for A289143, there is no canonical definition to state claims against.
-/

/-! ## A289143.P5215263620048011645

`3*A029922(A250000(n+1))`
-/

namespace A289143.P5215263620048011645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A029922 (A250000 (n + 1)).toNat

end

end A289143.P5215263620048011645

/-! ## A289143.P15017389887872546738

`A064313(n+2)*A112046(2^n)`
-/

namespace A289143.P15017389887872546738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064313 (n + 2) * A112046 (2 ^ n)

end

end A289143.P15017389887872546738

/-! ## A289143.P8169270896636519938

`A168237(A002264(∑[A187829(n+1)]))`
-/

namespace A289143.P8169270896636519938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A289143.P8169270896636519938

/-! ## A289143.P1026003487589520116

`A011865(n+2)*A174971(A011782(n))`
-/

namespace A289143.P1026003487589520116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 2) * A174971 (A011782 n).toNat

end

end A289143.P1026003487589520116

/-! ## A289143.P1804940114777352395

`A011865(n+2)*A054054(A260226(n+1))`
-/

namespace A289143.P1804940114777352395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 2) * A054054 (A260226 (n + 1)).toNat

end

end A289143.P1804940114777352395

/-!
# A289144: The difference between the second divisor of n and the penultimate divisor of n.

The programs for A289144, there is no canonical definition to state claims against.
-/

/-! ## A289144.P8304873902488596131

`∑{p}[A020639(n+2), #-(n+2)/#]`
-/

namespace A289144.P8304873902488596131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℚ) - (n + 2 : ℚ) / (p : ℚ))

end

end A289144.P8304873902488596131

/-! ## A289144.P16624087411302747448

`A087349(n+1)-A166250(n+2)`
-/

namespace A289144.P16624087411302747448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 1) - A166250 (n + 2)

end

end A289144.P16624087411302747448

/-! ## A289144.P17971077331492722798

`A020639(n+2)-A032742(n+2)`
-/

namespace A289144.P17971077331492722798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A032742 (n + 2)

end

end A289144.P17971077331492722798

/-! ## A289144.P11586623496000271161

`A060681(n+2)-A046666(n+2)`
-/

namespace A289144.P11586623496000271161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) - A046666 (n + 2)

end

end A289144.P11586623496000271161

/-! ## A289144.P2658588920901399705

`sqrt(A088377(n+2))-A032742(n+2)`
-/

namespace A289144.P2658588920901399705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 2) : ℝ) - (A032742 (n + 2) : ℝ)

end

end A289144.P2658588920901399705

/-! ## A289144.P8164811432647144777

`Δ[A046669(n+1)-A280050(n+1)]`
-/

namespace A289144.P8164811432647144777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1) - A280050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289144.P8164811432647144777

/-! ## A289144.P5879641177729739908

`2*A020639(n+2)-A111234(n+2)`
-/

namespace A289144.P5879641177729739908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2) - A111234 (n + 2)

end

end A289144.P5879641177729739908

/-! ## A289144.P2157194634999207068

`A060681(n+2)-(n+2-A020639(n+2))`
-/

namespace A289144.P2157194634999207068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 2) - ((n + 2 : ℤ) - A020639 (n + 2))

end

end A289144.P2157194634999207068

/-! ## A289144.P11084361232126936535

`A006530(A028233(n+2))-A032742(n+2)`
-/

namespace A289144.P11084361232126936535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 2)).toNat - A032742 (n + 2)

end

end A289144.P11084361232126936535

/-! ## A289144.P13354077534043271390

`A020639(n+2)-A280498(A249817(n+2))`
-/

namespace A289144.P13354077534043271390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A280498 (A249817 (n + 2)).toNat

end

end A289144.P13354077534043271390

/-! ## A289144.P936042486274300133

`A020639(n+2)-A280496(A250245(n+2))`
-/

namespace A289144.P936042486274300133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A280496 (A250245 (n + 2)).toNat

end

end A289144.P936042486274300133

/-! ## A289144.P14156049365387863122

`A020639(n+2)-A283464(A266645(n+2))`
-/

namespace A289144.P14156049365387863122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A283464 (A266645 (n + 2)).toNat

end

end A289144.P14156049365387863122

/-! ## A289144.P14675649397097126373

`A046669(n+2)-(A046669(n+1)+A032742(n+2))`
-/

namespace A289144.P14675649397097126373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 2) - (A046669 (n + 1) + A032742 (n + 2))

end

end A289144.P14675649397097126373

/-! ## A289144.P5548283892663019501

`A280050(n+1)+A020639(n+2)-A280050(n+2)`
-/

namespace A289144.P5548283892663019501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280050 (n + 1) + (A020639 (n + 2) - A280050 (n + 2))

end

end A289144.P5548283892663019501

/-! ## A289144.P15966425386691718031

`A111234(n+2)-A032742(n+2)-A032742(n+2)`
-/

namespace A289144.P15966425386691718031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 2) - A032742 (n + 2) - A032742 (n + 2)

end

end A289144.P15966425386691718031

/-! ## A289144.P687321456373363976

`A126286(n+1)/A032742(n+1)-A032742(n+2)`
-/

namespace A289144.P687321456373363976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126286 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ) - (A032742 (n + 2) : ℚ)

end

end A289144.P687321456373363976

/-! ## A289144.P6140180859282455184

`A020639(n+2)-A014673(n+2)*A054576(n+2)`
-/

namespace A289144.P6140180859282455184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A014673 (n + 2) * A054576 (n + 2)

end

end A289144.P6140180859282455184

/-! ## A289144.P12123038614914661975

`A020639(n+2)-A126287(n+2)/A020639(n+1)`
-/

namespace A289144.P12123038614914661975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) - (A126287 (n + 2) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A289144.P12123038614914661975

/-!
# A289145: Number of connected dominating sets in the n X n black bishop graph.

The programs for A289145, there is no canonical definition to state claims against.
-/

/-! ## A289145.P17045587954883064942

`A271634(A030019(n))%A156154(n+1)`
-/

namespace A289145.P17045587954883064942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271634 (A030019 n).toNat) (A156154 (n + 1))

end

end A289145.P17045587954883064942

/-!
# A289147: Number of (n+1) X (n+1) binary matrices M with at most one 1 in each of the first n rows and each of the first n columns and M[n+1,n+1] = 0.

The programs for A289147, the canonical program `A289147.P2556401231815887595` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289147 has offset 0).

The definition of A289147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289147.P2556401231815887595

`(2*n+3)*a(n-1)-(n-1)²*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289147

/-- `(2*n+3)*a(n-1)-(n-1)²*a(n-2)` -/
def P2556401231815887595.Spec : Prop :=
  ∀ n, P2556401231815887595.a n = A289147 n

theorem P2556401231815887595.correct : P2556401231815887595.Spec := by
  intro n
  simp only [A289147]

end A289147

/-! ## A289147.P17842813567012437992

`n!*A160611(n)/A160612(n)`
-/

namespace A289147.P17842813567012437992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160611 n : ℚ) / (A160612 n : ℚ)

end

end A289147.P17842813567012437992

namespace A289147

/-- `n!*A160611(n)/A160612(n)` -/
def P17842813567012437992.Spec : Prop :=
  ∀ n, P17842813567012437992.a n = (A289147 n : ℚ)

end A289147

/-! ## A289147.P7840206243119411311

`A289192(A052905(n+2))`
-/

namespace A289147.P7840206243119411311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A052905 (n + 2)).toNat

end

end A289147.P7840206243119411311

namespace A289147

/-- `A289192(A052905(n+2))` -/
def P7840206243119411311.Spec : Prop :=
  ∀ n, P7840206243119411311.a n = A289147 n

end A289147

/-! ## A289147.P4420599829480629155

`A289192(eq[4, A025581(n)])`
-/

namespace A289147.P4420599829480629155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289147.P4420599829480629155

namespace A289147

/-- `A289192(eq[4, A025581(n)])` -/
def P4420599829480629155.Spec : Prop :=
  ∀ n, P4420599829480629155.a n = A289147 n

end A289147

/-! ## A289147.P8562608015342066080

`A289192(A046691(n+3)-1)`
-/

namespace A289147.P8562608015342066080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A046691 (n + 3) - 1).toNat

end

end A289147.P8562608015342066080

namespace A289147

/-- `A289192(A046691(n+3)-1)` -/
def P8562608015342066080.Spec : Prop :=
  ∀ n, P8562608015342066080.a n = A289147 n

end A289147

/-! ## A289147.P5178087937531187328

`A289192(A000217(n+5)-5)`
-/

namespace A289147.P5178087937531187328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000217 (n + 5) - 5).toNat

end

end A289147.P5178087937531187328

namespace A289147

/-- `A289192(A000217(n+5)-5)` -/
def P5178087937531187328.Spec : Prop :=
  ∀ n, P5178087937531187328.a n = A289147 n

end A289147

/-! ## A289147.P3587965063679500768

`A000142(n)/A160612(n)*A160611(n)`
-/

namespace A289147.P3587965063679500768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160612 n : ℚ) * (A160611 n : ℚ)

end

end A289147.P3587965063679500768

namespace A289147

/-- `A000142(n)/A160612(n)*A160611(n)` -/
def P3587965063679500768.Spec : Prop :=
  ∀ n, P3587965063679500768.a n = (A289147 n : ℚ)

end A289147

/-! ## A289147.P16432824250476409510

`A289192(A000124(n+7)-A005408(n+9))`
-/

namespace A289147.P16432824250476409510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000124 (n + 7) - A005408 (n + 9)).toNat

end

end A289147.P16432824250476409510

namespace A289147

/-- `A289192(A000124(n+7)-A005408(n+9))` -/
def P16432824250476409510.Spec : Prop :=
  ∀ n, P16432824250476409510.a n = A289147 n

end A289147

/-! ## A289147.P15452031206009666591

`A289192(A202664(A000124(n))+A000124(n+3))`
-/

namespace A289147.P15452031206009666591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A202664 (A000124 n).toNat + A000124 (n + 3)).toNat

end

end A289147.P15452031206009666591

namespace A289147

/-- `A289192(A202664(A000124(n))+A000124(n+3))` -/
def P15452031206009666591.Spec : Prop :=
  ∀ n, P15452031206009666591.a n = A289147 n

end A289147

/-!
# A289148: Coefficients of the modular function j_5 = j^5 - 3720*j^4 + 4550940*j^3 - 2028551200*j^2 + 246683410950*j - 1963211493744.

The programs for A289148, there is no canonical definition to state claims against.
-/

/-! ## A289148.P14777720137494338609

`A222500(A268423(n+1))*A289063(n)`
-/

namespace A289148.P14777720137494338609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A268423 (n + 1)).toNat * A289063 n

end

end A289148.P14777720137494338609

/-!
# A289150: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

The programs for A289150, the canonical program `A289150.P17860079283463340798` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289150 has offset 0).

The definition of A289150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289150.P17860079283463340798

`∑[10^n]-A056830(∑[n%2])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289150

/-- `∑[10^n]-A056830(∑[n%2])` -/
def P17860079283463340798.Spec : Prop :=
  ∀ n, P17860079283463340798.a n = A289150 n

theorem P17860079283463340798.correct : P17860079283463340798.Spec := by
  intro n
  simp only [A289150]

end A289150

/-! ## A289150.P4428517857536873929

`∑[A011557(n)]-A056830(ceil(n/2))`
-/

namespace A289150.P4428517857536873929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056830 ⌈(n : ℚ) / 2⌉.toNat

end

end A289150.P4428517857536873929

namespace A289150

/-- `∑[A011557(n)]-A056830(ceil(n/2))` -/
def P4428517857536873929.Spec : Prop :=
  ∀ n, P4428517857536873929.a n = A289150 n

end A289150

/-! ## A289150.P8906274910969365662

`A000042(n+1)-A056830(ceil(n/2))`
-/

namespace A289150.P8906274910969365662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A056830 ⌈(n : ℚ) / 2⌉.toNat

end

end A289150.P8906274910969365662

namespace A289150

/-- `A000042(n+1)-A056830(ceil(n/2))` -/
def P8906274910969365662.Spec : Prop :=
  ∀ n, P8906274910969365662.a n = A289150 n

end A289150

/-! ## A289150.P11496224147436092041

`∑[A002283(n)+1]-A056830(ceil(n/2))`
-/

namespace A289150.P11496224147436092041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056830 ⌈(n : ℚ) / 2⌉.toNat

end

end A289150.P11496224147436092041

namespace A289150

/-- `∑[A002283(n)+1]-A056830(ceil(n/2))` -/
def P11496224147436092041.Spec : Prop :=
  ∀ n, P11496224147436092041.a n = A289150 n

end A289150

/-! ## A289150.P13937014182490830609

`A002275(n+1)-A056830(A110654(n))`
-/

namespace A289150.P13937014182490830609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A056830 (A110654 n).toNat

end

end A289150.P13937014182490830609

namespace A289150

/-- `A002275(n+1)-A056830(A110654(n))` -/
def P13937014182490830609.Spec : Prop :=
  ∀ n, P13937014182490830609.a n = A289150 n

end A289150

/-!
# A289151: Positions of 1 in A289235; complement of A289002.

The programs for A289151, there is no canonical definition to state claims against.
-/

/-! ## A289151.P6668762072287532255

`filter[n+1, A289235(#)]`
-/

namespace A289151.P6668762072287532255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289235 (f1 j) = 1) n)

end

end A289151.P6668762072287532255

/-! ## A289151.P15556848284858750573

`eq[1, A289235(n+1)]+1`
-/

namespace A289151.P15556848284858750573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289151.P15556848284858750573

/-! ## A289151.P16767806392977165190

`eq[1, A289235(A028310(n))]`
-/

namespace A289151.P16767806392977165190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289151.P16767806392977165190

/-! ## A289151.P7482650614540731520

`A020725(eq[1, A289235(n+1)])`
-/

namespace A289151.P7482650614540731520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289151.P7482650614540731520

/-! ## A289151.P8886759183931949154

`A065475(eq[1, A289235(n+1)])`
-/

namespace A289151.P8886759183931949154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289151.P8886759183931949154

/-! ## A289151.P6791688202115782414

`A114637(eq[1, A289235(n+1)])`
-/

namespace A289151.P6791688202115782414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289151.P6791688202115782414

/-! ## A289151.P4103475460234152180

`eq[1, A289235(A000038(n)+n)]`
-/

namespace A289151.P4103475460234152180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289151.P4103475460234152180

/-! ## A289151.P6753192061739132656

`lt[A289235(n+1), A289235(A028310(n))]`
-/

namespace A289151.P6753192061739132656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289151.P6753192061739132656

/-! ## A289151.P14764679889324900142

`eq[1, A289235(A233583(n+1))]`
-/

namespace A289151.P14764679889324900142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289151.P14764679889324900142

/-!
# A289152: Ordinal transform of A003434.

The programs for A289152, there is no canonical definition to state claims against.
-/

/-! ## A289152.P16762382801411698790

`A030496(A036722(n))`
-/

namespace A289152.P16762382801411698790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A036722 n).toNat

end

end A289152.P16762382801411698790

/-! ## A289152.P13800401858772551317

`A319343(n+1)-A059841(A195904(n+1))`
-/

namespace A289152.P13800401858772551317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319343 (n + 1) - A059841 (A195904 (n + 1)).toNat

end

end A289152.P13800401858772551317

/-!
# A289153: Length of n-th iterate of the mapping 00->0010, 01->100, 10->000 in A289235.

The programs for A289153, there is no canonical definition to state claims against.
-/

/-! ## A289153.P17459272713040977830

`A289019(n+1)-A289035(A274547(n))`
-/

namespace A289153.P17459272713040977830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A289035 (A274547 n).toNat

end

end A289153.P17459272713040977830

/-! ## A289153.P1208558377818063848

`A289019(n+1)-A289016(∑[A153480(n)])`
-/

namespace A289153.P1208558377818063848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A289016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289153.P1208558377818063848

/-! ## A289153.P930709972191670620

`A289019(n+1)-A000035(A206838(n+1))`
-/

namespace A289153.P930709972191670620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A000035 (A206838 (n + 1)).toNat

end

end A289153.P930709972191670620

/-! ## A289153.P12971908685376421505

`A289019(n+1)-A289025(A127917(n+1))`
-/

namespace A289153.P12971908685376421505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A289025 (A127917 (n + 1)).toNat

end

end A289153.P12971908685376421505

/-! ## A289153.P12725158013158003315

`A289019(n+1)-A353269(A234036(n+1))`
-/

namespace A289153.P12725158013158003315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A353269 (A234036 (n + 1)).toNat

end

end A289153.P12725158013158003315

/-!
# A289154: Smallest prime p > 2^n such that none of p -+ 2^0, p -+ 2^1, p -+ 2^2, ..., p -+ 2^n are prime.

The programs for A289154, there is no canonical definition to state claims against.
-/

/-! ## A289154.P467779723283119952

`A089167(A056032(n+1))`
-/

namespace A289154.P467779723283119952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A056032 (n + 1)).toNat

end

end A289154.P467779723283119952

/-!
# A289155: Smallest area of triangle with integer sides and area = n times perimeter.

The programs for A289155, there is no canonical definition to state claims against.
-/

/-! ## A289155.P13870535977649529027

`A120572(2*(n+1))`
-/

namespace A289155.P13870535977649529027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120572 (2 * (n + 1))

end

end A289155.P13870535977649529027

/-! ## A289155.P16021447510802715025

`(n+1)*A120570(2*(n+1))`
-/

namespace A289155.P16021447510802715025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120570 (2 * (n + 1))

end

end A289155.P16021447510802715025

/-! ## A289155.P6843317159729769085

`lcm(2, A120572(A005843(n+1)))`
-/

namespace A289155.P6843317159729769085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A120572 (A005843 (n + 1)).toNat)

end

end A289155.P6843317159729769085

/-! ## A289155.P7676091565813064015

`A120572(A005843(n+1))/A014963(A008458(n))`
-/

namespace A289155.P7676091565813064015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120572 (A005843 (n + 1)).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A289155.P7676091565813064015

/-! ## A289155.P13639135411747451767

`A120572(A005843(n+1))+A070635(A005349(n+1))`
-/

namespace A289155.P13639135411747451767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120572 (A005843 (n + 1)).toNat + A070635 (A005349 (n + 1)).toNat

end

end A289155.P13639135411747451767

/-! ## A289155.P1992830508133236903

`A000027(A120572(n+2+n))`
-/

namespace A289155.P1992830508133236903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A120572 (n + 2 + n)).toNat

end

end A289155.P1992830508133236903

/-!
# A289156: Largest area of triangles with integer sides and area = n times perimeter.

The programs for A289156, the canonical program `A289156.P5339216735070192873` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289156 has offset 1).

The definition of A289156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289156.P5339216735070192873

`4*(n+1)*(2*(n+1)²+1)*(4*(n+1)²+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289156

/-- `4*(n+1)*(2*(n+1)²+1)*(4*(n+1)²+1)` -/
def P5339216735070192873.Spec : Prop :=
  ∀ n, (P5339216735070192873.a n : ℤ) = A289156 (n + 1)

theorem P5339216735070192873.correct : P5339216735070192873.Spec := by
  intro n
  simp only [A289156, Nat.add_sub_cancel]

end A289156

/-! ## A289156.P1537757017591030125

`A053755(n+1)*A007900(n+1)/2`
-/

namespace A289156.P1537757017591030125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053755 (n + 1) * A007900 (n + 1) : ℚ) / 2

end

end A289156.P1537757017591030125

namespace A289156

/-- `A053755(n+1)*A007900(n+1)/2` -/
def P1537757017591030125.Spec : Prop :=
  ∀ n, P1537757017591030125.a n = (A289156 (n + 1) : ℚ)

end A289156

/-! ## A289156.P3241268998198131150

`A120573(2*(n+1))`
-/

namespace A289156.P3241268998198131150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120573 (2 * (n + 1))

end

end A289156.P3241268998198131150

namespace A289156

/-- `A120573(2*(n+1))` -/
def P3241268998198131150.Spec : Prop :=
  ∀ n, P3241268998198131150.a n = A289156 (n + 1)

end A289156

/-! ## A289156.P12424766078427749060

`A002522(n+1)*A117216(n+1)-A144965(n+1)`
-/

namespace A289156.P12424766078427749060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A117216 (n + 1) - A144965 (n + 1)

end

end A289156.P12424766078427749060

namespace A289156

/-- `A002522(n+1)*A117216(n+1)-A144965(n+1)` -/
def P12424766078427749060.Spec : Prop :=
  ∀ n, P12424766078427749060.a n = A289156 (n + 1)

end A289156

/-! ## A289156.P10694440362097517607

`A290631(2*(n+1))+A123650(2*(n+1))`
-/

namespace A289156.P10694440362097517607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290631 (2 * (n + 1)) + A123650 (2 * (n + 1))

end

end A289156.P10694440362097517607

namespace A289156

/-- `A290631(2*(n+1))+A123650(2*(n+1))` -/
def P10694440362097517607.Spec : Prop :=
  ∀ n, P10694440362097517607.a n = A289156 (n + 1)

end A289156

/-! ## A289156.P8025267175582600388

`A241269(A005563(2*n+1))/(n+1)`
-/

namespace A289156.P8025267175582600388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241269 (A005563 (2 * n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A289156.P8025267175582600388

namespace A289156

/-- `A241269(A005563(2*n+1))/(n+1)` -/
def P8025267175582600388.Spec : Prop :=
  ∀ n, P8025267175582600388.a n = (A289156 (n + 1) : ℚ)

end A289156

/-!
# A289157: Number of unlabeled connected loopless multigraphs with n nodes of degree 4 or less.

The programs for A289157, there is no canonical definition to state claims against.
-/

/-! ## A289157.P7651479802030132482

`A334546(A052905(n+2))`
-/

namespace A289157.P7651479802030132482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (A052905 (n + 2)).toNat

end

end A289157.P7651479802030132482

/-! ## A289157.P1235667453090748394

`A334546(eq[4, A025581(n)])`
-/

namespace A289157.P1235667453090748394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289157.P1235667453090748394

/-! ## A289157.P3741568412912176701

`A334546(eq[16, A130321(n)])`
-/

namespace A289157.P3741568412912176701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289157.P3741568412912176701

/-! ## A289157.P1907287008688992838

`A334546(eq[31, A130330(n)])`
-/

namespace A289157.P1907287008688992838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289157.P1907287008688992838

/-! ## A289157.P4007650525644288964

`A334546(Δ[A055831(n+4)])`
-/

namespace A289157.P4007650525644288964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334546 (f1 (n + 1) - f1 n).toNat

end

end A289157.P4007650525644288964

/-!
# A289158: Number of unlabeled connected loopless multigraphs with n nodes of degree 4 or less and with at most double edges.

The programs for A289158, there is no canonical definition to state claims against.
-/

/-! ## A289158.P11279899113098544532

`A060715(A319540(n)+A018901(n))`
-/

namespace A289158.P11279899113098544532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A319540 n + A018901 n).toNat

end

end A289158.P11279899113098544532

/-! ## A289158.P5062392359951716314

`A364346(A000786(n)+n²)-A367215(n)`
-/

namespace A289158.P5062392359951716314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364346 (A000786 n + (n ^ 2 : ℤ)).toNat - A367215 n

end

end A289158.P5062392359951716314

/-! ## A289158.P14657701799726264815

`A141335(A226441(n+1)+A141380(n+1))`
-/

namespace A289158.P14657701799726264815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141335 (A226441 (n + 1) + A141380 (n + 1)).toNat

end

end A289158.P14657701799726264815

/-!
# A289159: Number of unlabeled connected simple graphs with n nodes of degree 4 or less, except trees and 4-regular graphs.

The programs for A289159, there is no canonical definition to state claims against.
-/

/-! ## A289159.P16104741658838548793

`A287424(n+1)-A000602(n+1)`
-/

namespace A289159.P16104741658838548793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287424 (n + 1) - A000602 (n + 1)

end

end A289159.P16104741658838548793

/-! ## A289159.P30825374797708272

`A121941(n+1)-A006820(n+1)-A000602(n+1)`
-/

namespace A289159.P30825374797708272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121941 (n + 1) - A006820 (n + 1) - A000602 (n + 1)

end

end A289159.P30825374797708272

/-! ## A289159.P7749129608934545477

`A289991(n+1)+A289990(n+1)`
-/

namespace A289159.P7749129608934545477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289991 (n + 1) + A289990 (n + 1)

end

end A289159.P7749129608934545477

/-! ## A289159.P14709337071951087160

`A289991(n+1)+A289989(n+1)-A006820(n+1)`
-/

namespace A289159.P14709337071951087160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289991 (n + 1) + (A289989 (n + 1) - A006820 (n + 1))

end

end A289159.P14709337071951087160

/-!
# A289160: Number of 6-cycles in the n X n black bishop graph.

The programs for A289160, there is no canonical definition to state claims against.
-/

/-! ## A289160.P8801168569611655072

`A093392(∑[n^(n+1)])`
-/

namespace A289160.P8801168569611655072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289160.P8801168569611655072

/-!
# A289161: Number of 3-cycles in the n X n black bishop graph.

The programs for A289161, the canonical program `A289161.P15472553711042746797` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289161 has offset 1).

The definition of A289161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289161.P15472553711042746797

`n²*(2*(n+1)²-4*(n+1)+3-3*(-1)^(n+1))/24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289161

/-- `n²*(2*(n+1)²-4*(n+1)+3-3*(-1)^(n+1))/24` -/
def P15472553711042746797.Spec : Prop :=
  ∀ n, P15472553711042746797.a n = (A289161 (n + 1) : ℚ)

end A289161

/-! ## A289161.P13001580808546516072

`n*∑[A008794(n)]`
-/

namespace A289161.P13001580808546516072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289161.P13001580808546516072

namespace A289161

/-- `n*∑[A008794(n)]` -/
def P13001580808546516072.Spec : Prop :=
  ∀ n, P13001580808546516072.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P13753235372275299492

`n/4*A212686(n)`
-/

namespace A289161.P13753235372275299492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A212686 n : ℚ)

end

end A289161.P13753235372275299492

namespace A289161

/-- `n/4*A212686(n)` -/
def P13753235372275299492.Spec : Prop :=
  ∀ n, P13753235372275299492.a n = (A289161 (n + 1) : ℚ)

end A289161

/-! ## A289161.P6429194988739897498

`n*∑[A004526(n)²]`
-/

namespace A289161.P6429194988739897498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289161.P6429194988739897498

namespace A289161

/-- `n*∑[A004526(n)²]` -/
def P6429194988739897498.Spec : Prop :=
  ∀ n, P6429194988739897498.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P9700008779153814056

`n*∑[A127365(n)²]`
-/

namespace A289161.P9700008779153814056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127365 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289161.P9700008779153814056

namespace A289161

/-- `n*∑[A127365(n)²]` -/
def P9700008779153814056.Spec : Prop :=
  ∀ n, P9700008779153814056.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P17612605726466121495

`A002415(n)+(n-gcd(n, ∑[n]))²`
-/

namespace A289161.P17612605726466121495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)) ^ 2

end

end A289161.P17612605726466121495

namespace A289161

/-- `A002415(n)+(n-gcd(n, ∑[n]))²` -/
def P17612605726466121495.Spec : Prop :=
  ∀ n, P17612605726466121495.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P15989077856297609841

`A006008(n)-A308422(n)`
-/

namespace A289161.P15989077856297609841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n - A308422 n

end

end A289161.P15989077856297609841

namespace A289161

/-- `A006008(n)-A308422(n)` -/
def P15989077856297609841.Spec : Prop :=
  ∀ n, P15989077856297609841.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P10779566434384662812

`A002415(n)+A142150(n)²`
-/

namespace A289161.P10779566434384662812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + A142150 n ^ 2

end

end A289161.P10779566434384662812

namespace A289161

/-- `A002415(n)+A142150(n)²` -/
def P10779566434384662812.Spec : Prop :=
  ∀ n, P10779566434384662812.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P7250251818083665645

`A002415(n)+(n-A026741(n))²`
-/

namespace A289161.P7250251818083665645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + ((n : ℤ) - A026741 n) ^ 2

end

end A289161.P7250251818083665645

namespace A289161

/-- `A002415(n)+(n-A026741(n))²` -/
def P7250251818083665645.Spec : Prop :=
  ∀ n, P7250251818083665645.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P3834907293934763525

`∑[A295286(2*n+1)]-A295286(2*n+1)`
-/

namespace A289161.P3834907293934763525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295286 (2 * n + 1)

end

end A289161.P3834907293934763525

namespace A289161

/-- `∑[A295286(2*n+1)]-A295286(2*n+1)` -/
def P3834907293934763525.Spec : Prop :=
  ∀ n, P3834907293934763525.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P2946703586246985985

`∑[A295293(2*n+1)]-A295293(2*n+1)`
-/

namespace A289161.P2946703586246985985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295293 (2 * n + 1)

end

end A289161.P2946703586246985985

namespace A289161

/-- `∑[A295293(2*n+1)]-A295293(2*n+1)` -/
def P2946703586246985985.Spec : Prop :=
  ∀ n, P2946703586246985985.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P17606999008710533097

`∑[A295317(2*n+1)]-A295317(2*n+1)`
-/

namespace A289161.P17606999008710533097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295317 (2 * n + 1)

end

end A289161.P17606999008710533097

namespace A289161

/-- `∑[A295317(2*n+1)]-A295317(2*n+1)` -/
def P17606999008710533097.Spec : Prop :=
  ∀ n, P17606999008710533097.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P119221203197150765

`∑[A295321(2*n+1)]-A295321(2*n+1)`
-/

namespace A289161.P119221203197150765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295321 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295321 (2 * n + 1)

end

end A289161.P119221203197150765

namespace A289161

/-- `∑[A295321(2*n+1)]-A295321(2*n+1)` -/
def P119221203197150765.Spec : Prop :=
  ∀ n, P119221203197150765.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P15981069563293728555

`n*A248011(∑[n+1])`
-/

namespace A289161.P15981069563293728555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A248011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289161.P15981069563293728555

namespace A289161

/-- `n*A248011(∑[n+1])` -/
def P15981069563293728555.Spec : Prop :=
  ∀ n, P15981069563293728555.a n = A289161 (n + 1)

end A289161

/-! ## A289161.P17670816726365751232

`A325690(n²+1)`
-/

namespace A289161.P17670816726365751232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 (n ^ 2 + 1)

end

end A289161.P17670816726365751232

namespace A289161

/-- `A325690(n²+1)` -/
def P17670816726365751232.Spec : Prop :=
  ∀ n, P17670816726365751232.a n = A289161 (n + 1)

end A289161

/-!
# A289162: Number of 4-cycles in the n X n black bishop graph.

The programs for A289162, there is no canonical definition to state claims against.
-/

/-! ## A289162.P735672110874571585

`A051162(A094172(n))`
-/

namespace A289162.P735672110874571585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A094172 n).toNat

end

end A289162.P735672110874571585

/-! ## A289162.P10853317694226751309

`A227179(A127758(n!))`
-/

namespace A289162.P10853317694226751309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227179 (A127758 (Nat.factorial n)).toNat

end

end A289162.P10853317694226751309

/-!
# A289163: Number of 5-cycles in the n X n black bishop graph.

The programs for A289163, there is no canonical definition to state claims against.
-/

/-! ## A289163.P6009470273932739242

`A132385(A084652(n))`
-/

namespace A289163.P6009470273932739242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132385 (A084652 n).toNat

end

end A289163.P6009470273932739242

/-! ## A289163.P10608825808634568860

`A276335(∑[A111885(n)])`
-/

namespace A289163.P10608825808634568860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289163.P10608825808634568860

/-!
# A289165: Fixed point of the mapping 00->0010, 01->100, 10->001, starting with 00.

The programs for A289165, there is no canonical definition to state claims against.
-/

/-! ## A289165.P5992145691128422895

`char[A289167(n+1)-1]`
-/

namespace A289165.P5992145691128422895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289167 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289165.P5992145691128422895

/-! ## A289165.P15300081748148797655

`char[comp[A289166(n+1)-1]]`
-/

namespace A289165.P15300081748148797655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289165.P15300081748148797655

/-! ## A289165.P3101428382823295926

`xor(1, char[A289166(Δ[n²]-n)-1])`
-/

namespace A289165.P3101428382823295926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A289165.P3101428382823295926

/-! ## A289165.P14354009788890858712

`floor(acot(char[A289166(2*n+1-n)-1]))`
-/

namespace A289165.P14354009788890858712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 (2 * n + 1 - n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌋

end

end A289165.P14354009788890858712

/-! ## A289165.P4959636232238334999

`(char[A289166(xor(1, n)+1)-1]-1)²`
-/

namespace A289165.P4959636232238334999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A289165.P4959636232238334999

/-! ## A289165.P1578161063723164752

`(char[A289166(abs(xor(n, -2)))-1]-1)²`
-/

namespace A289165.P1578161063723164752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A289165.P1578161063723164752

/-!
# A289166: Positions of 0 in A289165; complement of A289167.

The programs for A289166, there is no canonical definition to state claims against.
-/

/-! ## A289166.P1047779139551798081

`eq[0, A289165(n+1)]+1`
-/

namespace A289166.P1047779139551798081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289166.P1047779139551798081

/-! ## A289166.P8858145838854193881

`lt[n*char[A289167(n+1)], n]`
-/

namespace A289166.P8858145838854193881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289167 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289166.P8858145838854193881

/-! ## A289166.P15127886540742277047

`record[n+1-A000124(n)*A289165(n+1)]`
-/

namespace A289166.P15127886540742277047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000124 n * A289165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289166.P15127886540742277047

/-! ## A289166.P6565354298278721672

`record[n+1-A000212(n*A289165(n+1))]`
-/

namespace A289166.P6565354298278721672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000212 ((n : ℤ) * A289165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289166.P6565354298278721672

/-! ## A289166.P5384353850303618761

`record[n+1-A005187(n*A289165(n+1))]`
-/

namespace A289166.P5384353850303618761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005187 ((n : ℤ) * A289165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289166.P5384353850303618761

/-! ## A289166.P7879564565269731236

`record[n+1-A006047(n)*A289165(n+1)]`
-/

namespace A289166.P7879564565269731236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006047 n * A289165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289166.P7879564565269731236

/-! ## A289166.P14654106137799792378

`eq[A028310(n)-n, A289165(A028310(n))]`
-/

namespace A289166.P14654106137799792378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289166.P14654106137799792378

/-!
# A289167: Positions of 1 in A289165; complement of A289166.

The programs for A289167, there is no canonical definition to state claims against.
-/

/-! ## A289167.P7649016393199553369

`filter[n+1, A289165(#)]`
-/

namespace A289167.P7649016393199553369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289165 (f1 j) = 1) n)

end

end A289167.P7649016393199553369

/-! ## A289167.P12136428615440377000

`lt[0, A289165(n+1)]+1`
-/

namespace A289167.P12136428615440377000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289167.P12136428615440377000

/-! ## A289167.P18185114667505814437

`eq[1, A289165(n^floor(atan(n)))]`
-/

namespace A289167.P18185114667505814437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289167.P18185114667505814437

/-! ## A289167.P10721598959332452936

`record[(n+3)*A289165(n+3)]`
-/

namespace A289167.P10721598959332452936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289165 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289167.P10721598959332452936

/-! ## A289167.P5415637398237522573

`eq[1, A289165(A028310(n))]`
-/

namespace A289167.P5415637398237522573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289167.P5415637398237522573

/-! ## A289167.P1791048193734778682

`A020725(eq[1, A289165(n+1)])`
-/

namespace A289167.P1791048193734778682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289167.P1791048193734778682

/-! ## A289167.P7489417150006199695

`eq[A000038(n)+1, A289165(n+1)]+1`
-/

namespace A289167.P7489417150006199695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A289167.P7489417150006199695

/-! ## A289167.P4364989985626388857

`eq[1, A289165(A000007(n)+n)]`
-/

namespace A289167.P4364989985626388857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289167.P4364989985626388857

/-! ## A289167.P8061290777555504479

`eq[char[A289166(n+1)], A285476(n)]`
-/

namespace A289167.P8061290777555504479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289167.P8061290777555504479

/-! ## A289167.P17857273588728837948

`eq[1, A289165(A065033(2*n))]`
-/

namespace A289167.P17857273588728837948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289167.P17857273588728837948

/-! ## A289167.P9564779064245374961

`eq[1, A289165(A233583(n+1))]`
-/

namespace A289167.P9564779064245374961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289167.P9564779064245374961

/-!
# A289168: Length of n-th iterate of the mapping 00->0010, 01->100, 10->001 in A289165.

The programs for A289168, there is no canonical definition to state claims against.
-/

/-! ## A289168.P13064753327093547944

`A100196(A218983(n)+A000096(n))`
-/

namespace A289168.P13064753327093547944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A218983 n + A000096 n).toNat

end

end A289168.P13064753327093547944

/-! ## A289168.P6244480838653866436

`A100196(A218983(n))+A003056(n)`
-/

namespace A289168.P6244480838653866436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A218983 n).toNat + A003056 n

end

end A289168.P6244480838653866436

/-! ## A289168.P9914075582822877185

`A100196(A080010(n+3)+A004275(n))`
-/

namespace A289168.P9914075582822877185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A080010 (n + 3) + A004275 n).toNat

end

end A289168.P9914075582822877185

/-! ## A289168.P1319347597733435063

`A100196(A335433(n+1)+A080010(n+3))`
-/

namespace A289168.P1319347597733435063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A335433 (n + 1) + A080010 (n + 3)).toNat

end

end A289168.P1319347597733435063

/-! ## A289168.P4269747904026770689

`∑[A083277(∑[A052919(n)])]`
-/

namespace A289168.P4269747904026770689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289168.P4269747904026770689

/-!
# A289170: Number of dominating sets in the n X n white bishop graph.

The programs for A289170, there is no canonical definition to state claims against.
-/

/-! ## A289170.P9277563637842070294

`A295898(n+2)/A289164(n+2)`
-/

namespace A289170.P9277563637842070294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295898 (n + 2) : ℚ) / (A289164 (n + 2) : ℚ)

end

end A289170.P9277563637842070294

/-!
# A289171: Irregular triangle T(n, k) read by rows with 1 <= k <= n: T(n, 1) = A020900(n - k + 1) - (n - k + 1) and T(n, k) = max(0, T(n - 1, k - 1) - 1) otherwise.

The programs for A289171, there is no canonical definition to state claims against.
-/

/-! ## A289171.P12365049328938063737

`A114575(and(A087004(n+1), A182633(n)))`
-/

namespace A289171.P12365049328938063737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114575 (Int.land (A087004 (n + 1)) (A182633 n)).toNat

end

end A289171.P12365049328938063737

/-! ## A289171.P6481092193765753850

`A000069(A218914(n))%5`
-/

namespace A289171.P6481092193765753850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000069 (A218914 n).toNat) 5

end

end A289171.P6481092193765753850

/-! ## A289171.P1689846293745560013

`gcd(A026249(A076928(n+2)), A328502(2*(n+1)))`
-/

namespace A289171.P1689846293745560013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026249 (A076928 (n + 2)).toNat) (A328502 (2 * (n + 1)))

end

end A289171.P1689846293745560013

/-! ## A289171.P2469033128135847926

`A369376(A195307(n+2))`
-/

namespace A289171.P2469033128135847926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A195307 (n + 2)).toNat

end

end A289171.P2469033128135847926

/-! ## A289171.P405556752032256341

`A124769(xor(7, A077174(n+1)))`
-/

namespace A289171.P405556752032256341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Int.xor 7 (A077174 (n + 1))).toNat

end

end A289171.P405556752032256341

/-!
# A289173: The largest n-almost prime less than 3^n.

The programs for A289173, there is no canonical definition to state claims against.
-/

/-! ## A289173.P11604497927784430641

`A066117(A213173(n))*A084221(n)`
-/

namespace A289173.P11604497927784430641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (A213173 n).toNat * A084221 n

end

end A289173.P11604497927784430641

/-! ## A289173.P15832409471944607140

`p?[A132668(A016116(n))]*A084221(n)`
-/

namespace A289173.P15832409471944607140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132668 (A016116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A084221 n

end

end A289173.P15832409471944607140

/-!
# A289174: Fixed point of the mapping 00->0010, 01->100, 10->011, starting with 00.

The programs for A289174, there is no canonical definition to state claims against.
-/

/-! ## A289174.P3436772506150923874

`char[A289176(n+1)-1]`
-/

namespace A289174.P3436772506150923874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289176 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289174.P3436772506150923874

/-! ## A289174.P14750270116464767409

`char[comp[A289175(n+1)-1]]`
-/

namespace A289174.P14750270116464767409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289174.P14750270116464767409

/-! ## A289174.P13390283998895906359

`char[A023443(A289176(n+1))]`
-/

namespace A289174.P13390283998895906359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289176 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289174.P13390283998895906359

/-! ## A289174.P17843572760957288073

`char[A023443(comp[A289175(n+1)])]`
-/

namespace A289174.P17843572760957288073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289174.P17843572760957288073

/-! ## A289174.P4585770665599226331

`A001222(A067833(n+1))-char[A289175(n+1)-1]`
-/

namespace A289174.P4585770665599226331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067833 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289174.P4585770665599226331

/-! ## A289174.P9809862079688494329

`1-char[A289175(A166514(n)+1)-1]`
-/

namespace A289174.P9809862079688494329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (A166514 n + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289174.P9809862079688494329

/-!
# A289175: Positions of 0 in A289174; complement of A289176.

The programs for A289175, there is no canonical definition to state claims against.
-/

/-! ## A289175.P4229784446211817439

`eq[0, A289174(n+1)]+1`
-/

namespace A289175.P4229784446211817439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289175.P4229784446211817439

/-! ## A289175.P2567434492987998608

`record[(1-A289174(n+1))*A000027(n+1)]`
-/

namespace A289175.P2567434492987998608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A289174 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289175.P2567434492987998608

/-! ## A289175.P2815468789337628155

`record[n+1-A000720(n*A289174(n+1)+1)]`
-/

namespace A289175.P2815468789337628155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 ((n : ℤ) * A289174 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289175.P2815468789337628155

/-! ## A289175.P6281243246992297855

`record[A246425(A289174(n+1)+A005408(n))]`
-/

namespace A289175.P6281243246992297855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A289174 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289175.P6281243246992297855

/-! ## A289175.P17364856996811820158

`lt[A289174(n+1), A131713(3*n)]+1`
-/

namespace A289175.P17364856996811820158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289175.P17364856996811820158

/-! ## A289175.P15260180942755936323

`record[n+1-A073887(n+1)*A289174(n+1)]`
-/

namespace A289175.P15260180942755936323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A073887 (n + 1) * A289174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289175.P15260180942755936323

/-! ## A289175.P1235042526030044774

`record[(n+1)/A073887(n*A289174(n+1)+1)]`
-/

namespace A289175.P1235042526030044774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A073887 ((n : ℤ) * A289174 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289175.P1235042526030044774

/-!
# A289176: Positions of 1 in A289174; complement of A289175.

The programs for A289176, there is no canonical definition to state claims against.
-/

/-! ## A289176.P1392711915868424827

`comp[A289175(n+1)-1]+1`
-/

namespace A289176.P1392711915868424827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289176.P1392711915868424827

/-! ## A289176.P14680168131513029590

`filter[n+1, A289174(#)]`
-/

namespace A289176.P14680168131513029590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289174 (f1 j) = 1) n)

end

end A289176.P14680168131513029590

/-! ## A289176.P8309761008010617184

`lt[0, A289174(n+1)]+1`
-/

namespace A289176.P8309761008010617184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289176.P8309761008010617184

/-! ## A289176.P6053121165500945723

`record[(n+3)*A289174(n+3)]`
-/

namespace A289176.P6053121165500945723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289174 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289176.P6053121165500945723

/-! ## A289176.P8802854339600929790

`eq[1, A289174(A028310(n))]`
-/

namespace A289176.P8802854339600929790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289176.P8802854339600929790

/-! ## A289176.P2569010847238367

`eq[1, A289174(A000007(n)+n)]`
-/

namespace A289176.P2569010847238367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289176.P2569010847238367

/-! ## A289176.P12915178483973942055

`eq[1, A289174(A000027(n+1))]+1`
-/

namespace A289176.P12915178483973942055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289176.P12915178483973942055

/-! ## A289176.P3448314719714718531

`eq[char[A289175(n+1)], A285476(n)]`
-/

namespace A289176.P3448314719714718531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289176.P3448314719714718531

/-! ## A289176.P11676131870749697017

`eq[1, A289174(A123108(2*n))]`
-/

namespace A289176.P11676131870749697017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289176.P11676131870749697017

/-! ## A289176.P13546522380833622346

`eq[1, A289174(A233583(n+1))]`
-/

namespace A289176.P13546522380833622346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289174 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289176.P13546522380833622346

/-!
# A289177: Length of n-th iterate of the mapping 00->0010, 01->100, 10->011 in A289165.

The programs for A289177, there is no canonical definition to state claims against.
-/

/-! ## A289177.P13295078173084326051

`A073188(A083378(n+2))`
-/

namespace A289177.P13295078173084326051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A083378 (n + 2)).toNat

end

end A289177.P13295078173084326051

/-! ## A289177.P17738002874927080218

`A002024(Δ[n²]+(3*n+4)*2^(n-1))`
-/

namespace A289177.P17738002874927080218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (3 * n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A289177.P17738002874927080218

/-! ## A289177.P1310974628100067018

`A276571(A021008(n)-3)`
-/

namespace A289177.P1310974628100067018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A021008 n - 3).toNat

end

end A289177.P1310974628100067018

/-! ## A289177.P9200921684056888909

`A123578(3*A284942(n+1))`
-/

namespace A289177.P9200921684056888909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (3 * A284942 (n + 1)).toNat

end

end A289177.P9200921684056888909

/-!
# A289178: Numbers n such that binomial(2*n,n) < (2*n)^pi(n).

The programs for A289178, there is no canonical definition to state claims against.
-/

/-! ## A289178.P4035571700657065260

`lt[A069705(A202266(n+1)), A336853(n+1)]`
-/

namespace A289178.P4035571700657065260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A202266 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289178.P4035571700657065260

/-! ## A289178.P6278504551298956013

`lt[A123132(n+2), A007623(A320539(n+1))]`
-/

namespace A289178.P6278504551298956013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A320539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289178.P6278504551298956013

/-! ## A289178.P1782939316912819519

`lt[A279081(A207325(n+1)), A278252(n+1)]`
-/

namespace A289178.P1782939316912819519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279081 (A207325 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289178.P1782939316912819519

/-! ## A289178.P834362470968699938

`lt[A322389(A248633(n+1)), A332741(n+1)]`
-/

namespace A289178.P834362470968699938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A248633 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289178.P834362470968699938

/-!
# A289179: Edge count of the n X n white bishop graph.

The programs for A289179, the canonical program `A289179.P3156591437970968622` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289179 has offset 1).

The definition of A289179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289179.P3156591437970968622

`n*(4*(n+1)²-2*(n+1)-3+3*(-1)^(n+1))/12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289179

/-- `n*(4*(n+1)²-2*(n+1)-3+3*(-1)^(n+1))/12` -/
def P3156591437970968622.Spec : Prop :=
  ∀ n, P3156591437970968622.a n = (A289179 (n + 1) : ℚ)

end A289179

/-! ## A289179.P16345226026484845627

`gcd(n, ∑[n])+∑[n²]-n`
-/

namespace A289179.P16345226026484845627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

end

end A289179.P16345226026484845627

namespace A289179

/-- `gcd(n, ∑[n])+∑[n²]-n` -/
def P16345226026484845627.Spec : Prop :=
  ∀ n, P16345226026484845627.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P16981542913183117114

`∑[(2*n-1)*∑[and(1, n)]]`
-/

namespace A289179.P16981542913183117114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289179.P16981542913183117114

namespace A289179

/-- `∑[(2*n-1)*∑[and(1, n)]]` -/
def P16981542913183117114.Spec : Prop :=
  ∀ n, P16981542913183117114.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P15925609770731707833

`∑[n²]-(n-lcm(2, n)/2)`
-/

namespace A289179.P15925609770731707833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)

end

end A289179.P15925609770731707833

namespace A289179

/-- `∑[n²]-(n-lcm(2, n)/2)` -/
def P15925609770731707833.Spec : Prop :=
  ∀ n, P15925609770731707833.a n = (A289179 (n + 1) : ℚ)

end A289179

/-! ## A289179.P14790786151547226364

`∑[n²]-n%or(1, n)/2`
-/

namespace A289179.P14790786151547226364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((n % Nat.lor 1 n : ℕ) : ℚ) / 2

end

end A289179.P14790786151547226364

namespace A289179

/-- `∑[n²]-n%or(1, n)/2` -/
def P14790786151547226364.Spec : Prop :=
  ∀ n, P14790786151547226364.a n = (A289179 (n + 1) : ℚ)

end A289179

/-! ## A289179.P6238881475399917486

`∑[n²]-A142150(n)`
-/

namespace A289179.P6238881475399917486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A142150 n

end

end A289179.P6238881475399917486

namespace A289179

/-- `∑[n²]-A142150(n)` -/
def P6238881475399917486.Spec : Prop :=
  ∀ n, P6238881475399917486.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P5179580000711110623

`∑[n²]+A026741(n)-n`
-/

namespace A289179.P5179580000711110623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A026741 n - (n : ℤ))

end

end A289179.P5179580000711110623

namespace A289179

/-- `∑[n²]+A026741(n)-n` -/
def P5179580000711110623.Spec : Prop :=
  ∀ n, P5179580000711110623.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P14030668169444540764

`A255840(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A289179.P14030668169444540764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A255840 n + a (n - 2)

end

end A289179.P14030668169444540764

namespace A289179

/-- `A255840(n)+a(n-2)` -/
def P14030668169444540764.Spec : Prop :=
  ∀ n, P14030668169444540764.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P15462836244458841685

`∑[(n+1)²-A113497(n+1)]`
-/

namespace A289179.P15462836244458841685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A113497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289179.P15462836244458841685

namespace A289179

/-- `∑[(n+1)²-A113497(n+1)]` -/
def P15462836244458841685.Spec : Prop :=
  ∀ n, P15462836244458841685.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P5045346351200466564

`A050187(n)+A006527(n)`
-/

namespace A289179.P5045346351200466564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 n + A006527 n

end

end A289179.P5045346351200466564

namespace A289179

/-- `A050187(n)+A006527(n)` -/
def P5045346351200466564.Spec : Prop :=
  ∀ n, P5045346351200466564.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P7623833474558877608

`A051925(n)+A026741(n)`
-/

namespace A289179.P7623833474558877608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A026741 n

end

end A289179.P7623833474558877608

namespace A289179

/-- `A051925(n)+A026741(n)` -/
def P7623833474558877608.Spec : Prop :=
  ∀ n, P7623833474558877608.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P8985821724348831137

`A191967(n)+A007290(n)`
-/

namespace A289179.P8985821724348831137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191967 n + A007290 n

end

end A289179.P8985821724348831137

namespace A289179

/-- `A191967(n)+A007290(n)` -/
def P8985821724348831137.Spec : Prop :=
  ∀ n, P8985821724348831137.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P13552797202789279359

`A225972(n)+A014848(n)`
-/

namespace A289179.P13552797202789279359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 n + A014848 n

end

end A289179.P13552797202789279359

namespace A289179

/-- `A225972(n)+A014848(n)` -/
def P13552797202789279359.Spec : Prop :=
  ∀ n, P13552797202789279359.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P2703119550547990867

`A056520(n)-A158416(n)`
-/

namespace A289179.P2703119550547990867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n - A158416 n

end

end A289179.P2703119550547990867

namespace A289179

/-- `A056520(n)-A158416(n)` -/
def P2703119550547990867.Spec : Prop :=
  ∀ n, P2703119550547990867.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P9434880338734606687

`A105636(n)-A212688(n)`
-/

namespace A289179.P9434880338734606687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n - A212688 n

end

end A289179.P9434880338734606687

namespace A289179

/-- `A105636(n)-A212688(n)` -/
def P9434880338734606687.Spec : Prop :=
  ∀ n, P9434880338734606687.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P11911218141553872902

`A203552(n)-A323724(n)`
-/

namespace A289179.P11911218141553872902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n - A323724 n

end

end A289179.P11911218141553872902

namespace A289179

/-- `A203552(n)-A323724(n)` -/
def P11911218141553872902.Spec : Prop :=
  ∀ n, P11911218141553872902.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P2514203907609391593

`A179904(n)-A319702(n+1)`
-/

namespace A289179.P2514203907609391593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 n - A319702 (n + 1)

end

end A289179.P2514203907609391593

namespace A289179

/-- `A179904(n)-A319702(n+1)` -/
def P2514203907609391593.Spec : Prop :=
  ∀ n, P2514203907609391593.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P14361423577527711269

`n*A156859(n)-A006331(n)`
-/

namespace A289179.P14361423577527711269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156859 n - A006331 n

end

end A289179.P14361423577527711269

namespace A289179

/-- `n*A156859(n)-A006331(n)` -/
def P14361423577527711269.Spec : Prop :=
  ∀ n, P14361423577527711269.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P15839340775259206047

`∑[A074377(n)+n]-A074377(n)`
-/

namespace A289179.P15839340775259206047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A074377 n

end

end A289179.P15839340775259206047

namespace A289179

/-- `∑[A074377(n)+n]-A074377(n)` -/
def P15839340775259206047.Spec : Prop :=
  ∀ n, P15839340775259206047.a n = A289179 (n + 1)

end A289179

/-! ## A289179.P9529949615081769143

`A304487(n+1)-A178946(n+1)`
-/

namespace A289179.P9529949615081769143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304487 (n + 1) - A178946 (n + 1)

end

end A289179.P9529949615081769143

namespace A289179

/-- `A304487(n+1)-A178946(n+1)` -/
def P9529949615081769143.Spec : Prop :=
  ∀ n, P9529949615081769143.a n = A289179 (n + 1)

end A289179

/-!
# A289180: Number of connected dominating sets in the n X n king graph.

The programs for A289180, there is no canonical definition to state claims against.
-/

/-! ## A289180.P15265886310467643376

`A291873(∑[4*n]+1)`
-/

namespace A289180.P15265886310467643376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291873 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A289180.P15265886310467643376

/-! ## A289180.P16941488456725975208

`record[A003982(n)*A291873(n+1)]`
-/

namespace A289180.P16941488456725975208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A291873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289180.P16941488456725975208

/-! ## A289180.P8339628722591546037

`record[(1-A003987(n))*A291873(n+1)]`
-/

namespace A289180.P8339628722591546037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003987 n) * A291873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289180.P8339628722591546037

/-! ## A289180.P15016930996994911759

`record[gcd(A204016(n+1), A291873(n+1))]`
-/

namespace A289180.P15016930996994911759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A291873 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289180.P15016930996994911759

/-! ## A289180.P12736176007733679467

`record[gcd(A003987(2*n), A291873(2*n+1))]`
-/

namespace A289180.P12736176007733679467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 (2 * n)) (A291873 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289180.P12736176007733679467

/-!
# A289181: Number of 6-cycles in the n X n knight graph.

The programs for A289181, there is no canonical definition to state claims against.
-/

/-! ## A289181.P4668760731010537385

`A091305(A362348(n))-3`
-/

namespace A289181.P4668760731010537385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091305 (A362348 n).toNat - 3

end

end A289181.P4668760731010537385

/-! ## A289181.P5759886068073039148

`A350615(n+1)%A062970(n)`
-/

namespace A289181.P5759886068073039148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350615 (n + 1)) (A062970 n)

end

end A289181.P5759886068073039148

/-!
# A289182: Positions of odd semiprimes in A001358.

The programs for A289182, the canonical program `A289182.P7996856159968412338` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289182 has offset 1).

The definition of A289182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7691 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289182.P7996856159968412338

`filter[n+1, A106138(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A289182

/-- `filter[n+1, A106138(#)]` -/
def P7996856159968412338.Spec : Prop :=
  ∀ n, (P7996856159968412338.a n : ℤ) = A289182 (n + 1)

theorem P7996856159968412338.correct : P7996856159968412338.Spec := by
  intro n
  simp only [A289182, Nat.add_sub_cancel]

end A289182

/-! ## A289182.P4409354960599188013

`eq[1, A106138(n+1)]+1`
-/

namespace A289182.P4409354960599188013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289182.P4409354960599188013

namespace A289182

/-- `eq[1, A106138(n+1)]+1` -/
def P4409354960599188013.Spec : Prop :=
  ∀ n, (P4409354960599188013.a n : ℤ) = A289182 (n + 1)

end A289182

/-! ## A289182.P13362524679484721690

`lt[1, A338912(n+1)]+1`
-/

namespace A289182.P13362524679484721690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289182.P13362524679484721690

namespace A289182

/-- `lt[1, A338912(n+1)]+1` -/
def P13362524679484721690.Spec : Prop :=
  ∀ n, (P13362524679484721690.a n : ℤ) = A289182 (n + 1)

end A289182

/-! ## A289182.P9246148789802914507

`lt[2, A084126(n+1)]+1`
-/

namespace A289182.P9246148789802914507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289182.P9246148789802914507

namespace A289182

/-- `lt[2, A084126(n+1)]+1` -/
def P9246148789802914507.Spec : Prop :=
  ∀ n, (P9246148789802914507.a n : ℤ) = A289182 (n + 1)

end A289182

/-! ## A289182.P14829859921923912264

`A072000(A046315(n+1))`
-/

namespace A289182.P14829859921923912264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A046315 (n + 1)).toNat

end

end A289182.P14829859921923912264

namespace A289182

/-- `A072000(A046315(n+1))` -/
def P14829859921923912264.Spec : Prop :=
  ∀ n, P14829859921923912264.a n = A289182 (n + 1)

end A289182

/-! ## A289182.P14160860062280084412

`A072000(A176406(n+1)+2)`
-/

namespace A289182.P14160860062280084412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A176406 (n + 1) + 2).toNat

end

end A289182.P14160860062280084412

namespace A289182

/-- `A072000(A176406(n+1)+2)` -/
def P14160860062280084412.Spec : Prop :=
  ∀ n, P14160860062280084412.a n = A289182 (n + 1)

end A289182

/-! ## A289182.P16579223420620360210

`eq[2, A020639(A088707(n+1))]+1`
-/

namespace A289182.P16579223420620360210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088707 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289182.P16579223420620360210

namespace A289182

/-- `eq[2, A020639(A088707(n+1))]+1` -/
def P16579223420620360210.Spec : Prop :=
  ∀ n, (P16579223420620360210.a n : ℤ) = A289182 (n + 1)

end A289182

/-! ## A289182.P6201430528377159340

`eq[2, A020639(A186621(n+1))]+1`
-/

namespace A289182.P6201430528377159340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A186621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289182.P6201430528377159340

namespace A289182

/-- `eq[2, A020639(A186621(n+1))]+1` -/
def P6201430528377159340.Spec : Prop :=
  ∀ n, (P6201430528377159340.a n : ℤ) = A289182 (n + 1)

end A289182

/-! ## A289182.P10557838134154627907

`record[A174956(2*n+9)]`
-/

namespace A289182.P10557838134154627907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289182.P10557838134154627907

namespace A289182

/-- `record[A174956(2*n+9)]` -/
def P10557838134154627907.Spec : Prop :=
  ∀ n, P10557838134154627907.a n = A289182 (n + 1)

end A289182

/-! ## A289182.P7416167667294060401

`A174956(A100484(n+1)-A131634(n+1))`
-/

namespace A289182.P7416167667294060401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A100484 (n + 1) - A131634 (n + 1)).toNat

end

end A289182.P7416167667294060401

namespace A289182

/-- `A174956(A100484(n+1)-A131634(n+1))` -/
def P7416167667294060401.Spec : Prop :=
  ∀ n, P7416167667294060401.a n = A289182 (n + 1)

end A289182

/-!
# A289183: a(n) is the greatest m such that 2*H(n) > H(m), where H(n) is the n-th harmonic number.

The programs for A289183, there is no canonical definition to state claims against.
-/

/-! ## A289183.P8712928756416178008

`A226183(n+1)-1`
-/

namespace A289183.P8712928756416178008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226183 (n + 1) - 1

end

end A289183.P8712928756416178008

/-! ## A289183.P5945016955455895214

`A226184(n+1)+n`
-/

namespace A289183.P5945016955455895214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226184 (n + 1) + (n : ℤ)

end

end A289183.P5945016955455895214

/-! ## A289183.P779481792599653653

`A260196(n+2)+A226183(n+1)`
-/

namespace A289183.P779481792599653653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A226183 (n + 1)

end

end A289183.P779481792599653653

/-! ## A289183.P13846483373863124949

`A300547(Δ[n²])+A226183(n+1)`
-/

namespace A289183.P13846483373863124949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A226183 (n + 1)

end

end A289183.P13846483373863124949

/-! ## A289183.P3018472835110103773

`A280193(4*n+1)+A226183(n+1)`
-/

namespace A289183.P3018472835110103773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (4 * n + 1) + A226183 (n + 1)

end

end A289183.P3018472835110103773

/-! ## A289183.P977805538225929937

`A001478(n+1)+A226183(n+1)+n`
-/

namespace A289183.P977805538225929937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A226183 (n + 1) + (n : ℤ))

end

end A289183.P977805538225929937

/-! ## A289183.P7776908054248379236

`A316441(A000040(n+1))+A226183(n+1)`
-/

namespace A289183.P7776908054248379236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A226183 (n + 1)

end

end A289183.P7776908054248379236

/-! ## A289183.P4222623025289074831

`A325970(A065091(n+1))+A226183(n+1)`
-/

namespace A289183.P4222623025289074831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A065091 (n + 1)).toNat + A226183 (n + 1)

end

end A289183.P4222623025289074831

/-! ## A289183.P10205323122594125425

`A226192(A089052(∑[n+2]))+A226183(n+1)`
-/

namespace A289183.P10205323122594125425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226192 (A089052 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A226183 (n + 1)

end

end A289183.P10205323122594125425

/-! ## A289183.P13897748146513617606

`A317505(A020639(12*n+3))+A226183(n+1)`
-/

namespace A289183.P13897748146513617606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317505 (A020639 (12 * n + 3)).toNat + A226183 (n + 1)

end

end A289183.P13897748146513617606

/-!
# A289184: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A289184, there is no canonical definition to state claims against.
-/

/-! ## A289184.P4151178112623580865

`A007088(A290519(n))`
-/

namespace A289184.P4151178112623580865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290519 n).toNat

end

end A289184.P4151178112623580865

/-! ## A289184.P9161300468645344331

`A185544(2*A290519(n))`
-/

namespace A289184.P9161300468645344331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290519 n).toNat

end

end A289184.P9161300468645344331

/-! ## A289184.P9175597709973266651

`A289406(A073789(n))`
-/

namespace A289184.P9175597709973266651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289406 (A073789 n).toNat

end

end A289184.P9175597709973266651

/-! ## A289184.P3423191202687503569

`A289406(A228051(n+1))`
-/

namespace A289184.P3423191202687503569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289406 (A228051 (n + 1)).toNat

end

end A289184.P3423191202687503569

/-!
# A289186: The arithmetic function v_4(n,5).

The programs for A289186, there is no canonical definition to state claims against.
-/

/-! ## A289186.P6942573256105723807

`A289438(n+2)+A133944(A088813(n))`
-/

namespace A289186.P6942573256105723807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2) + A133944 (A088813 n).toNat

end

end A289186.P6942573256105723807

/-! ## A289186.P2819790626917983506

`A289438(n+2)-A122840(∑[A037095(n)])`
-/

namespace A289186.P2819790626917983506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2) - A122840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289186.P2819790626917983506

/-! ## A289186.P15279861065269439903

`A289438(n+2)-A010054(A325091(3*n+2))`
-/

namespace A289186.P15279861065269439903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2) - A010054 (A325091 (3 * n + 2)).toNat

end

end A289186.P15279861065269439903

/-! ## A289186.P1182733604366300469

`A289438(n+2)-A179827(A003945(n))`
-/

namespace A289186.P1182733604366300469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2) - A179827 (A003945 n).toNat

end

end A289186.P1182733604366300469

/-! ## A289186.P6411255966829659839

`A289438(n+2)-A001221(Δ[A055569(n)])`
-/

namespace A289186.P6411255966829659839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2) - A001221 (f1 (n + 1) - f1 n).toNat

end

end A289186.P6411255966829659839

/-!
# A289187: The arithmetic function v_1(n,6).

The programs for A289187, there is no canonical definition to state claims against.
-/

/-! ## A289187.P16260914568057211716

`A290979(A080512(n+2))`
-/

namespace A289187.P16260914568057211716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290979 (A080512 (n + 2)).toNat

end

end A289187.P16260914568057211716

/-! ## A289187.P3672354638902434605

`A290979(A027656(n)+2+n)`
-/

namespace A289187.P3672354638902434605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290979 (A027656 n + 2 + (n : ℤ)).toNat

end

end A289187.P3672354638902434605

/-! ## A289187.P16408523597203804047

`A290981(A289436(3*(n+2)))`
-/

namespace A289187.P16408523597203804047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290981 (A289436 (3 * (n + 2))).toNat

end

end A289187.P16408523597203804047

/-! ## A289187.P18332590911693439145

`A290981(A289441(3*(n+2)))`
-/

namespace A289187.P18332590911693439145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290981 (A289441 (3 * (n + 2))).toNat

end

end A289187.P18332590911693439145

/-! ## A289187.P15771949463355639544

`A290979(A290982(3*(n+2)))`
-/

namespace A289187.P15771949463355639544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290979 (A290982 (3 * (n + 2))).toNat

end

end A289187.P15771949463355639544

/-!
# A289188: Eternal domination number for P_3 X P_n grid graph.

The programs for A289188, there is no canonical definition to state claims against.
-/

/-! ## A289188.P11278495879157079862

`A227568(A141214(n)-A147954(n))`
-/

namespace A289188.P11278495879157079862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A141214 n - A147954 n).toNat

end

end A289188.P11278495879157079862

/-! ## A289188.P3146920588431649890

`A227568(A141214(n)-A174981(n))`
-/

namespace A289188.P3146920588431649890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A141214 n - A174981 n).toNat

end

end A289188.P3146920588431649890

/-! ## A289188.P5689192157968347812

`A227568(A141214(n)-A000523(n+1))`
-/

namespace A289188.P5689192157968347812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A141214 n - A000523 (n + 1)).toNat

end

end A289188.P5689192157968347812

/-! ## A289188.P9134130898677190082

`A227568(A141214(n)-A065770(n+1))`
-/

namespace A289188.P9134130898677190082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A141214 n - A065770 (n + 1)).toNat

end

end A289188.P9134130898677190082

/-! ## A289188.P10858775909961031918

`A227568(A141214(n)-A270120(n+1))`
-/

namespace A289188.P10858775909961031918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A141214 n - A270120 (n + 1)).toNat

end

end A289188.P10858775909961031918

/-!
# A289189: Upper bound for certain restricted sumsets.

The programs for A289189, the canonical program `A289189.P17037266853681566106` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289189 has offset 1).

The definition of A289189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289189.P17037266853681566106

`floor((sqrt(4*(n+1)+9)+3)/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289189

/-- `floor((sqrt(4*(n+1)+9)+3)/2)` -/
def P17037266853681566106.Spec : Prop :=
  ∀ n, P17037266853681566106.a n = A289189 (n + 1)

theorem P17037266853681566106.correct : P17037266853681566106.Spec := by
  intro n
  simp only [A289189, Nat.add_sub_cancel]

end A289189

/-! ## A289189.P2156492385305406484

`ceil(sqrt(a(n-1)+4+n))` with `a(0)=3`
-/

namespace A289189.P2156492385305406484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.sqrt (a (n - 1) + 4 + (n : ℤ) : ℝ)⌉

end

end A289189.P2156492385305406484

namespace A289189

/-- `ceil(sqrt(a(n-1)+4+n))` -/
def P2156492385305406484.Spec : Prop :=
  ∀ n, P2156492385305406484.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P7559656924150268326

`ceil(sqrt(comp[n²]+n%2+3))`
-/

namespace A289189.P7559656924150268326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n % 2 + 3) : ℕ) : ℝ)⌉

end

end A289189.P7559656924150268326

namespace A289189

/-- `ceil(sqrt(comp[n²]+n%2+3))` -/
def P7559656924150268326.Spec : Prop :=
  ∀ n, P7559656924150268326.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P2837859221847846866

`A003056(A008619(n+1))+2`
-/

namespace A289189.P2837859221847846866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008619 (n + 1)).toNat + 2

end

end A289189.P2837859221847846866

namespace A289189

/-- `A003056(A008619(n+1))+2` -/
def P2837859221847846866.Spec : Prop :=
  ∀ n, P2837859221847846866.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P11152120669175051407

`A259361(n+3)+2`
-/

namespace A289189.P11152120669175051407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n + 3) + 2

end

end A289189.P11152120669175051407

namespace A289189

/-- `A259361(n+3)+2` -/
def P11152120669175051407.Spec : Prop :=
  ∀ n, P11152120669175051407.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P17271782056673830264

`A368941(n+4)`
-/

namespace A289189.P17271782056673830264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 (n + 4)

end

end A289189.P17271782056673830264

namespace A289189

/-- `A368941(n+4)` -/
def P17271782056673830264.Spec : Prop :=
  ∀ n, P17271782056673830264.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P8220725740981384502

`lt[5, ∏{d}[n+3, -#]]-n`
-/

namespace A289189.P8220725740981384502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A289189.P8220725740981384502

namespace A289189

/-- `lt[5, ∏{d}[n+3, -#]]-n` -/
def P8220725740981384502.Spec : Prop :=
  ∀ n, P8220725740981384502.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P15966874051066457933

`Δ[A182112(n+2)]`
-/

namespace A289189.P15966874051066457933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182112 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289189.P15966874051066457933

namespace A289189

/-- `Δ[A182112(n+2)]` -/
def P15966874051066457933.Spec : Prop :=
  ∀ n, P15966874051066457933.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P10760009369229315789

`A238598(n+2)+1`
-/

namespace A289189.P10760009369229315789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (n + 2) + 1

end

end A289189.P10760009369229315789

namespace A289189

/-- `A238598(n+2)+1` -/
def P10760009369229315789.Spec : Prop :=
  ∀ n, P10760009369229315789.a n = A289189 (n + 1)

end A289189

/-! ## A289189.P9378165151076336568

`round(sqrt(A158758(n+2)))`
-/

namespace A289189.P9378165151076336568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A158758 (n + 2) : ℝ))

end

end A289189.P9378165151076336568

namespace A289189

/-- `round(sqrt(A158758(n+2)))` -/
def P9378165151076336568.Spec : Prop :=
  ∀ n, P9378165151076336568.a n = A289189 (n + 1)

end A289189

/-!
# A289190: Numbers k such that k^2 with last digit deleted is a prime.

The programs for A289190, there is no canonical definition to state claims against.
-/

/-! ## A289190.P4220974876008042039

`sqrt(A265211(n+1))`
-/

namespace A289190.P4220974876008042039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A265211 (n + 1) : ℝ)

end

end A289190.P4220974876008042039

/-! ## A289190.P5558130130812634521

`root(A265211(n+1), gcd(2, A005843(n)))`
-/

namespace A289190.P5558130130812634521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265211 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A289190.P5558130130812634521

/-! ## A289190.P12421671564725866553

`root(A265211(n+1), 2%A225873(n+1))`
-/

namespace A289190.P12421671564725866553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265211 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A225873 (n + 1)) : ℝ))

end

end A289190.P12421671564725866553

/-! ## A289190.P13386385668474883735

`root(A265211(n+1), A001316(A001316(n)))`
-/

namespace A289190.P13386385668474883735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265211 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A289190.P13386385668474883735

/-! ## A289190.P4670771937033548174

`A265211(n+1)^(A005408(n)/A016825(n))`
-/

namespace A289190.P4670771937033548174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265211 (n + 1) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A289190.P4670771937033548174

/-!
# A289191: Number of polygonal tiles with n sides with two exits per side and n edges connecting pairs of exits, with no edges between exits on the same side and non-isomorphic under rotational symmetry.

The programs for A289191, there is no canonical definition to state claims against.
-/

/-! ## A289191.P9090327962789602202

`2*A002375(A321349(n+1))`
-/

namespace A289191.P9090327962789602202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002375 (A321349 (n + 1)).toNat

end

end A289191.P9090327962789602202

/-!
# A289192: A(n,k) = n! * Laguerre(n,-k); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A289192, there is no canonical definition to state claims against.
-/

/-! ## A289192.P9895233833955041943

`A343847(∑[2*n]%comp[∑[n]])`
-/

namespace A289192.P9895233833955041943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A289192.P9895233833955041943

/-! ## A289192.P1173613336155104141

`A343847(∑[char[∑[n]]]²-(n+1))`
-/

namespace A289192.P1173613336155104141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A289192.P1173613336155104141

/-! ## A289192.P5376331513267934681

`A343847(A061579(n))%A052560(n)`
-/

namespace A289192.P5376331513267934681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343847 (A061579 n).toNat) (A052560 n)

end

end A289192.P5376331513267934681

/-!
# A289193: Number of ways to represent prime(n)^3 as a sum of 3 distinct primes.

The programs for A289193, there is no canonical definition to state claims against.
-/

/-! ## A289193.P4438232255503494177

`A125688(A030078(n+1))`
-/

namespace A289193.P4438232255503494177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A030078 (n + 1)).toNat

end

end A289193.P4438232255503494177

/-! ## A289193.P16789429860074671734

`A125688(p?[xor(1, n)+1]^3)`
-/

namespace A289193.P16789429860074671734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3)

end

end A289193.P16789429860074671734

/-! ## A289193.P5377864840507149061

`A125688(p?[n%3+n]^3)`
-/

namespace A289193.P5377864840507149061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3)

end

end A289193.P5377864840507149061

/-! ## A289193.P18278470563572124233

`record[A125688(lcm(6, (n+1)^3)/6)]`
-/

namespace A289193.P18278470563572124233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289193.P18278470563572124233

/-!
# A289195: a(n) is the number of odd integers divisible by 5 in ]4*(n-1)^2, 4*n^2[.

The programs for A289195, the canonical program `A289195.P9670692969625687094` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289195 has offset 0).

The definition of A289195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289195.P9670692969625687094

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289195

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P9670692969625687094.Spec : Prop :=
  ∀ n, P9670692969625687094.a n = A289195 n

theorem P9670692969625687094.correct : P9670692969625687094.Spec := by
  intro n
  simp only [A289195]

end A289195

/-! ## A289195.P10385283801064909818

`2*floor(Δ[n²]/5)`
-/

namespace A289195.P10385283801064909818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 5⌋

end

end A289195.P10385283801064909818

namespace A289195

/-- `2*floor(Δ[n²]/5)` -/
def P10385283801064909818.Spec : Prop :=
  ∀ n, P10385283801064909818.a n = A289195 n

end A289195

/-! ## A289195.P16924032622790884535

`∑[gcd(3, (2-n)%5)-1]`
-/

namespace A289195.P16924032622790884535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (Int.tmod (2 - (n : ℤ)) 5) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P16924032622790884535

namespace A289195

/-- `∑[gcd(3, (2-n)%5)-1]` -/
def P16924032622790884535.Spec : Prop :=
  ∀ n, P16924032622790884535.a n = A289195 n

end A289195

/-! ## A289195.P18243047575046961599

`a(n-5)+4` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A289195.P18243047575046961599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 2] fun n a =>
  a (n - 5) + 4

end

end A289195.P18243047575046961599

namespace A289195

/-- `a(n-5)+4` -/
def P18243047575046961599.Spec : Prop :=
  ∀ n, (P18243047575046961599.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P8567712361471982303

`∑[6%((2-∑[n+1])%5)]`
-/

namespace A289195.P8567712361471982303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (Int.tmod (2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P8567712361471982303

namespace A289195

/-- `∑[6%((2-∑[n+1])%5)]` -/
def P8567712361471982303.Spec : Prop :=
  ∀ n, P8567712361471982303.a n = A289195 n

end A289195

/-! ## A289195.P15208651429149350070

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A289195.P15208651429149350070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 0, 0, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P15208651429149350070

namespace A289195

/-- `∑[floor(a(n-5))]` -/
def P15208651429149350070.Spec : Prop :=
  ∀ n, (P15208651429149350070.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P10600912170539708229

`lcm(2, 2*floor((2*n+1)/5))`
-/

namespace A289195.P10600912170539708229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌊(2 * n + 1 : ℚ) / 5⌋)

end

end A289195.P10600912170539708229

namespace A289195

/-- `lcm(2, 2*floor((2*n+1)/5))` -/
def P10600912170539708229.Spec : Prop :=
  ∀ n, (P10600912170539708229.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P8214149771706820040

`∑[a(n-5)%3]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=0, a(5)=2`
-/

namespace A289195.P8214149771706820040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 0, 0, 2] fun n f1 =>
  f1 (n - 5) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P8214149771706820040

namespace A289195

/-- `∑[a(n-5)%3]` -/
def P8214149771706820040.Spec : Prop :=
  ∀ n, (P8214149771706820040.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P14192070776314478591

`lt[n+1, dr(2*n)+n-3]-(n+3)`
-/

namespace A289195.P14192070776314478591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n + 3 : ℤ)

end

end A289195.P14192070776314478591

namespace A289195

/-- `lt[n+1, dr(2*n)+n-3]-(n+3)` -/
def P14192070776314478591.Spec : Prop :=
  ∀ n, P14192070776314478591.a n = A289195 n

end A289195

/-! ## A289195.P17247022951261904027

`∑[2*char[Δ[A249547(n)]]]`
-/

namespace A289195.P17247022951261904027
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P17247022951261904027

namespace A289195

/-- `∑[2*char[Δ[A249547(n)]]]` -/
def P17247022951261904027.Spec : Prop :=
  ∀ n, (P17247022951261904027.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P12697597226918795431

`∑[2*char[∑[A176895(2*n)+1]]]`
-/

namespace A289195.P12697597226918795431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289195.P12697597226918795431

namespace A289195

/-- `∑[2*char[∑[A176895(2*n)+1]]]` -/
def P12697597226918795431.Spec : Prop :=
  ∀ n, (P12697597226918795431.a n : ℤ) = A289195 n

end A289195

/-! ## A289195.P15731046090689192604

`A005843(A288156(n))`
-/

namespace A289195.P15731046090689192604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A288156 n).toNat

end

end A289195.P15731046090689192604

namespace A289195

/-- `A005843(A288156(n))` -/
def P15731046090689192604.Spec : Prop :=
  ∀ n, P15731046090689192604.a n = A289195 n

end A289195

/-! ## A289195.P12114571096250278138

`A052928(n-A134119(n))`
-/

namespace A289195.P12114571096250278138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n : ℤ) - A134119 n).toNat

end

end A289195.P12114571096250278138

namespace A289195

/-- `A052928(n-A134119(n))` -/
def P12114571096250278138.Spec : Prop :=
  ∀ n, P12114571096250278138.a n = A289195 n

end A289195

/-! ## A289195.P2497671921044448875

`A047432(n+1)+A002266(n)-n`
-/

namespace A289195.P2497671921044448875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1) + (A002266 n - (n : ℤ))

end

end A289195.P2497671921044448875

namespace A289195

/-- `A047432(n+1)+A002266(n)-n` -/
def P2497671921044448875.Spec : Prop :=
  ∀ n, P2497671921044448875.a n = A289195 n

end A289195

/-! ## A289195.P15314049979577948329

`∑{d}[n+1, A000038(#-1)*A288156((n+1)/#-1)]`
-/

namespace A289195.P15314049979577948329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000038 (d - 1) * A288156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A289195.P15314049979577948329

namespace A289195

/-- `∑{d}[n+1, A000038(#-1)*A288156((n+1)/#-1)]` -/
def P15314049979577948329.Spec : Prop :=
  ∀ n, P15314049979577948329.a n = A289195 n

end A289195

/-! ## A289195.P15079553573664369672

`A004277(A288156(n))%A109613(n)`
-/

namespace A289195.P15079553573664369672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A288156 n).toNat) (A109613 n)

end

end A289195.P15079553573664369672

namespace A289195

/-- `A004277(A288156(n))%A109613(n)` -/
def P15079553573664369672.Spec : Prop :=
  ∀ n, P15079553573664369672.a n = A289195 n

end A289195

/-! ## A289195.P5444633039715989483

`n-A194509(n+2)`
-/

namespace A289195.P5444633039715989483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A194509 (n + 2)

end

end A289195.P5444633039715989483

namespace A289195

/-- `n-A194509(n+2)` -/
def P5444633039715989483.Spec : Prop :=
  ∀ n, P5444633039715989483.a n = A289195 n

end A289195

/-! ## A289195.P12321960947307400316

`1-Δ[A186386(n+1)]+n`
-/

namespace A289195.P12321960947307400316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A289195.P12321960947307400316

namespace A289195

/-- `1-Δ[A186386(n+1)]+n` -/
def P12321960947307400316.Spec : Prop :=
  ∀ n, P12321960947307400316.a n = A289195 n

end A289195

/-! ## A289195.P16016802906129783283

`A052928(n-A002266(n+1))`
-/

namespace A289195.P16016802906129783283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n : ℤ) - A002266 (n + 1)).toNat

end

end A289195.P16016802906129783283

namespace A289195

/-- `A052928(n-A002266(n+1))` -/
def P16016802906129783283.Spec : Prop :=
  ∀ n, P16016802906129783283.a n = A289195 n

end A289195

/-! ## A289195.P5403851367440568305

`A005843(n-A057355(n+1))`
-/

namespace A289195.P5403851367440568305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A057355 (n + 1)).toNat

end

end A289195.P5403851367440568305

namespace A289195

/-- `A005843(n-A057355(n+1))` -/
def P5403851367440568305.Spec : Prop :=
  ∀ n, P5403851367440568305.a n = A289195 n

end A289195

/-!
# A289196: Number of connected dominating sets in the n X n rook graph.

The programs for A289196, there is no canonical definition to state claims against.
-/

/-! ## A289196.P10395113702088339017

`A360875((n+1)²+n²)`
-/

namespace A289196.P10395113702088339017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360875 ((n + 1) ^ 2 + n ^ 2)

end

end A289196.P10395113702088339017

/-! ## A289196.P260181543078428699

`or(1, A360875(A001844(n)))`
-/

namespace A289196.P260181543078428699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A360875 (A001844 n).toNat)

end

end A289196.P260181543078428699

/-! ## A289196.P3654941553111699830

`record[gcd(A114327(n), A360875(n+1))]`
-/

namespace A289196.P3654941553111699830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A360875 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289196.P3654941553111699830

/-! ## A289196.P12213076166138640818

`A360875(A001844(n))+A185284(n)`
-/

namespace A289196.P12213076166138640818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360875 (A001844 n).toNat + A185284 n

end

end A289196.P12213076166138640818

/-! ## A289196.P13830866982814197342

`A360875(A001844(n))+A326679(n)`
-/

namespace A289196.P13830866982814197342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360875 (A001844 n).toNat + A326679 n

end

end A289196.P13830866982814197342

/-!
# A289197: Number of maximum matchings in the n X n rook graph.

The programs for A289197, there is no canonical definition to state claims against.
-/

/-! ## A289197.P3043910413420794903

`A341850(∑[4*(n+1)])`
-/

namespace A289197.P3043910413420794903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289197.P3043910413420794903

/-!
# A289198: Number of maximal matchings in the n X n rook graph.

The programs for A289198, there is no canonical definition to state claims against.
-/

/-! ## A289198.P13597781061206560057

`A341847(∑[4*(n+1)])`
-/

namespace A289198.P13597781061206560057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289198.P13597781061206560057

/-!
# A289199: a(n) is the number of odd integers divisible by 13 in the open interval (12*(n-1)^2, 12*n^2).

The programs for A289199, the canonical program `A289199.P15088153983146951858` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289199 has offset 0).

The definition of A289199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289199.P15088153983146951858

`n-Δ[round(A155212(n+1)/13)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289199

/-- `n-Δ[round(A155212(n+1)/13)]` -/
def P15088153983146951858.Spec : Prop :=
  ∀ n, P15088153983146951858.a n = A289199 n

theorem P15088153983146951858.correct : P15088153983146951858.Spec := by
  intro n
  simp only [A289199]

end A289199

/-! ## A289199.P7521906411749535974

`A004523(A057363(3*n))-A004526(A057363(n+1))`
-/

namespace A289199.P7521906411749535974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057363 (3 * n)).toNat - A004526 (A057363 (n + 1)).toNat

end

end A289199.P7521906411749535974

namespace A289199

/-- `A004523(A057363(3*n))-A004526(A057363(n+1))` -/
def P7521906411749535974.Spec : Prop :=
  ∀ n, P7521906411749535974.a n = A289199 n

end A289199

/-! ## A289199.P13065341604076283724

`A340745(A320536(p?[A340745(n+1)]))`
-/

namespace A289199.P13065341604076283724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340745 (A320536 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A289199.P13065341604076283724

namespace A289199

/-- `A340745(A320536(p?[A340745(n+1)]))` -/
def P13065341604076283724.Spec : Prop :=
  ∀ n, P13065341604076283724.a n = A289199 n

end A289199

/-! ## A289199.P13155781054213239001

`A219641(n)+A010059(A251704(n))`
-/

namespace A289199.P13155781054213239001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A010059 (A251704 n).toNat

end

end A289199.P13155781054213239001

namespace A289199

/-- `A219641(n)+A010059(A251704(n))` -/
def P13155781054213239001.Spec : Prop :=
  ∀ n, P13155781054213239001.a n = A289199 n

end A289199

