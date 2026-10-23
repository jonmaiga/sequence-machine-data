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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A248201: Numbers n such that n-1, n and n+1 are all squarefree semiprimes.

The programs for A248201, there is no canonical definition to state claims against.
-/

/-! ## A248201.P9148871133361244665

`A039833(n+1)+1`
-/

namespace A248201.P9148871133361244665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039833 (n + 1) + 1

end

end A248201.P9148871133361244665

/-! ## A248201.P14482758105606816035

`2*A195685(n+1)`
-/

namespace A248201.P14482758105606816035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195685 (n + 1)

end

end A248201.P14482758105606816035

/-! ## A248201.P369391415027817634

`lcm(A101296(A000040(n+1)), A195685(n+1))`
-/

namespace A248201.P369391415027817634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A101296 (A000040 (n + 1)).toNat) (A195685 (n + 1))

end

end A248201.P369391415027817634

/-! ## A248201.P12369465846421810971

`∩[A056809(n+1), A075039(n+1)]+1`
-/

namespace A248201.P12369465846421810971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P12369465846421810971

/-! ## A248201.P15965529123034721833

`∩[A056809(n+1), A359746(n+1)]+1`
-/

namespace A248201.P15965529123034721833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P15965529123034721833

/-! ## A248201.P15728366969310379747

`∩[A052214(n+1), A056809(n+1)]+1`
-/

namespace A248201.P15728366969310379747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P15728366969310379747

/-! ## A248201.P18411182295285457774

`2*∩[A086006(n+1), A234098(n+1)]`
-/

namespace A248201.P18411182295285457774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248201.P18411182295285457774

/-! ## A248201.P3442599518497398221

`2*∩[A234098(n+1), A276045(n+1)]`
-/

namespace A248201.P3442599518497398221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248201.P3442599518497398221

/-! ## A248201.P8284029509001029980

`∩[A056809(n+1), A364307(n+1)]+1`
-/

namespace A248201.P8284029509001029980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P8284029509001029980

/-! ## A248201.P13387602953490296078

`∩[A075039(n+1), A364307(n+1)]+1`
-/

namespace A248201.P13387602953490296078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P13387602953490296078

/-! ## A248201.P13501524504456082197

`∩[A052214(n+1), A362410(n+1)]+1`
-/

namespace A248201.P13501524504456082197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P13501524504456082197

/-! ## A248201.P12724438068568678044

`∩[A056809(n+1), A362410(n+1)]+1`
-/

namespace A248201.P12724438068568678044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P12724438068568678044

/-! ## A248201.P7086870215280785762

`∩[A075039(n+1), A362410(n+1)]+1`
-/

namespace A248201.P7086870215280785762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P7086870215280785762

/-! ## A248201.P2595864383288447680

`∩[A359746(n+1), A362410(n+1)]+1`
-/

namespace A248201.P2595864383288447680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P2595864383288447680

/-! ## A248201.P1387885493550598285

`∩[A086005(n+1), A169834(n+1)]`
-/

namespace A248201.P1387885493550598285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248201.P1387885493550598285

/-! ## A248201.P6076873757961717899

`∩[A110300(n+1), A169834(n+1)]`
-/

namespace A248201.P6076873757961717899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248201.P6076873757961717899

/-! ## A248201.P11423926105027581558

`∩[A005238(n+1), A056809(n+1)]+1`
-/

namespace A248201.P11423926105027581558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P11423926105027581558

/-! ## A248201.P12421473251466493684

`∩[A005238(n+1), A362410(n+1)]+1`
-/

namespace A248201.P12421473251466493684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P12421473251466493684

/-! ## A248201.P6742315754186408006

`∩[A056809(n+1), A063838(n+1)]+1`
-/

namespace A248201.P6742315754186408006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P6742315754186408006

/-! ## A248201.P18234118897888782874

`∩[A063838(n+1), A362410(n+1)]+1`
-/

namespace A248201.P18234118897888782874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248201.P18234118897888782874

/-!
# A248202: Sphenic numbers (A007304) whose neighbors are sphenic.

The programs for A248202, there is no canonical definition to state claims against.
-/

/-! ## A248202.P2576104017251775589

`A066509(n+1)+1`
-/

namespace A248202.P2576104017251775589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066509 (n + 1) + 1

end

end A248202.P2576104017251775589

/-! ## A248202.P9798647774942245546

`xor(3, A066509(A008619(A005843(n))))`
-/

namespace A248202.P9798647774942245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A066509 (A008619 (A005843 n).toNat).toNat)

end

end A248202.P9798647774942245546

/-! ## A248202.P9862502448061082136

`∩[A075039(n+1), A113789(n+1)]+1`
-/

namespace A248202.P9862502448061082136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P9862502448061082136

/-! ## A248202.P1402386065170760804

`∩[A005238(n+1), A070268(n+1)]+1`
-/

namespace A248202.P1402386065170760804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P1402386065170760804

/-! ## A248202.P3895419711933113875

`∩[A052214(n+1), A070268(n+1)]+1`
-/

namespace A248202.P3895419711933113875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P3895419711933113875

/-! ## A248202.P17326534316581002777

`∩[A070268(n+1), A075039(n+1)]+1`
-/

namespace A248202.P17326534316581002777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P17326534316581002777

/-! ## A248202.P6924355802726384656

`∩[A070268(n+1), A113789(n+1)]+1`
-/

namespace A248202.P6924355802726384656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P6924355802726384656

/-! ## A248202.P12974850898643717632

`∩[A070268(n+1), A359746(n+1)]+1`
-/

namespace A248202.P12974850898643717632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P12974850898643717632

/-! ## A248202.P17731833953181941374

`∩[A169834(n+1), A258276(n+1)]`
-/

namespace A248202.P17731833953181941374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248202.P17731833953181941374

/-! ## A248202.P11307694295460129920

`∩[A052214(n+1), A242606(n+1)]+1`
-/

namespace A248202.P11307694295460129920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P11307694295460129920

/-! ## A248202.P5874980339666811602

`∩[A070268(n+1), A242606(n+1)]+1`
-/

namespace A248202.P5874980339666811602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P5874980339666811602

/-! ## A248202.P16783191385150529598

`∩[A075039(n+1), A242606(n+1)]+1`
-/

namespace A248202.P16783191385150529598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P16783191385150529598

/-! ## A248202.P18056299440961337027

`∩[A242606(n+1), A359746(n+1)]+1`
-/

namespace A248202.P18056299440961337027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P18056299440961337027

/-! ## A248202.P12967544618500269828

`∩[A045939(n+1), A070268(n+1)]+1`
-/

namespace A248202.P12967544618500269828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P12967544618500269828

/-! ## A248202.P7904873282586638147

`∩[A075039(n+1), A356744(n+1)]+1`
-/

namespace A248202.P7904873282586638147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P7904873282586638147

/-! ## A248202.P3494809981512406612

`∩[A215217(n+1), A258276(n+1)]`
-/

namespace A248202.P3494809981512406612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248202.P3494809981512406612

/-! ## A248202.P16979669577736657178

`∩[A070268(n+1), A364308(n+1)]+1`
-/

namespace A248202.P16979669577736657178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P16979669577736657178

/-! ## A248202.P16464663784671215410

`∩[A075039(n+1), A364308(n+1)]+1`
-/

namespace A248202.P16464663784671215410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P16464663784671215410

/-! ## A248202.P7519324279125467395

`∩[A113789(n+1), A364308(n+1)]+1`
-/

namespace A248202.P7519324279125467395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A248202.P7519324279125467395

/-!
# A248203: Numbers n such that n-1, n, and n+1 are the product of 4 distinct primes.

The programs for A248203, there is no canonical definition to state claims against.
-/

/-! ## A248203.P16284160381986068351

`A176167(n+1)+1`
-/

namespace A248203.P16284160381986068351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176167 (n + 1) + 1

end

end A248203.P16284160381986068351

/-! ## A248203.P6090382338530893686

`xor(3, A176167(A131732(2*n)))`
-/

namespace A248203.P6090382338530893686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A176167 (A131732 (2 * n)).toNat)

end

end A248203.P6090382338530893686

/-! ## A248203.P9982900506633690952

`∩[A318896(n+1)+1, A318896(n+1)]`
-/

namespace A248203.P9982900506633690952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318896 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248203.P9982900506633690952

/-!
# A248204: Middle values in trios of products of 5 distinct primes.

The programs for A248204, there is no canonical definition to state claims against.
-/

/-! ## A248204.P16972804276414352568

`A192203(A061147(n+1))+1`
-/

namespace A248204.P16972804276414352568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192203 (A061147 (n + 1)).toNat + 1

end

end A248204.P16972804276414352568

/-! ## A248204.P1393309953616344968

`A192203(n+1)+A151510(∑[n])`
-/

namespace A248204.P1393309953616344968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192203 (n + 1) + A151510 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248204.P1393309953616344968

/-! ## A248204.P11436460802250153016

`A192203(n+1)+A176668(∑[n])`
-/

namespace A248204.P11436460802250153016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192203 (n + 1) + A176668 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248204.P11436460802250153016

/-! ## A248204.P12254012322908665175

`A192203(n+1)+A176698(∑[n])`
-/

namespace A248204.P12254012322908665175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192203 (n + 1) + A176698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248204.P12254012322908665175

/-! ## A248204.P13329194850966173530

`A192203(n+1)+A057077(A001787(n))`
-/

namespace A248204.P13329194850966173530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192203 (n + 1) + A057077 (A001787 n).toNat

end

end A248204.P13329194850966173530

/-!
# A248205: Indices of centered octagonal numbers (A016754) that are also pentagonal numbers (A000326).

The programs for A248205, there is no canonical definition to state claims against.
-/

/-! ## A248205.P3618569267567312176

`∑[record[A146311(n)]]`
-/

namespace A248205.P3618569267567312176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248205.P3618569267567312176

/-! ## A248205.P17835981379757396489

`∑[A001079(2*n)]`
-/

namespace A248205.P17835981379757396489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248205.P17835981379757396489

/-! ## A248205.P3186083596345589545

`∑[A146311(2*n)]`
-/

namespace A248205.P3186083596345589545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248205.P3186083596345589545

/-! ## A248205.P2108342908870522314

`∑[A080872(4*n)]`
-/

namespace A248205.P2108342908870522314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248205.P2108342908870522314

/-! ## A248205.P17035171369631305

`ceil(A046173(n+1)/2)`
-/

namespace A248205.P17035171369631305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046173 (n + 1) : ℚ) / 2⌉

end

end A248205.P17035171369631305

/-! ## A248205.P12954724108851548122

`(Δ[A108741(n)]+1)/2`
-/

namespace A248205.P12954724108851548122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108741 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A248205.P12954724108851548122

/-! ## A248205.P7327432180397243830

`∑[A087799(2*n)/2]`
-/

namespace A248205.P7327432180397243830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087799 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248205.P7327432180397243830

/-! ## A248205.P6226228685145696968

`round(A004189(Δ[n²])/2)`
-/

namespace A248205.P6226228685145696968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A248205.P6226228685145696968

/-! ## A248205.P13447711942768255927

`A251914(n+1)/2+1`
-/

namespace A248205.P13447711942768255927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251914 (n + 1) : ℚ) / 2 + 1

end

end A248205.P13447711942768255927

/-! ## A248205.P9939777745027241743

`A001079(n)*A004189(n+1)`
-/

namespace A248205.P9939777745027241743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A004189 (n + 1)

end

end A248205.P9939777745027241743

/-!
# A248206: Primes p such that the polynomial k^4 + k^3 + k^2 + k + p yields only primes for k = 0...7.

The programs for A248206, there is no canonical definition to state claims against.
-/

/-! ## A248206.P4204836635051897612

`A247966(∑[A027750(2*(n+1))^A317554(2*(n+2))])`
-/

namespace A248206.P4204836635051897612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027750 (2 * (n + 1)) : ℚ) ^ (A317554 (2 * (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247966 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A248206.P4204836635051897612

/-!
# A248207: Primitive root of the multiplicative group mod n as returned by PARI version 2.7.2, or 0 when there is no primitive root.

The programs for A248207, there is no canonical definition to state claims against.
-/

/-! ## A248207.P16410631817069678870

`A046145(A325709(n+2))`
-/

namespace A248207.P16410631817069678870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A325709 (n + 2)).toNat

end

end A248207.P16410631817069678870

/-! ## A248207.P7937760962155724627

`A103309(A325709(n+2))+A000007(n)`
-/

namespace A248207.P7937760962155724627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (A325709 (n + 2)).toNat + A000007 n

end

end A248207.P7937760962155724627

/-! ## A248207.P7059181089995921436

`A103309(A325709(n+2))+A015161(n)`
-/

namespace A248207.P7059181089995921436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (A325709 (n + 2)).toNat + A015161 n

end

end A248207.P7059181089995921436

/-! ## A248207.P520186503829853493

`A103309(A325709(n+2))+A008683(A016754(n))`
-/

namespace A248207.P520186503829853493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (A325709 (n + 2)).toNat + A008683 (A016754 n).toNat

end

end A248207.P520186503829853493

/-! ## A248207.P9071908924597450983

`A103309(A325709(n+2))^A001221(A000079(n))`
-/

namespace A248207.P9071908924597450983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103309 (A325709 (n + 2)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A248207.P9071908924597450983

/-!
# A248208: Primes p such that p^3 is the concatenation of two k-digit primes where k is half the number of decimal digits in p^3.

The programs for A248208, there is no canonical definition to state claims against.
-/

/-! ## A248208.P1482983724054288371

`p?[and(A242328(n), A247313(n))]`
-/

namespace A248208.P1482983724054288371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A242328 n) (A247313 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248208.P1482983724054288371

/-!
# A248209: Numbers n such that n - A007953(n) contains the same distinct digits as n.

The programs for A248209, there is no canonical definition to state claims against.
-/

/-! ## A248209.P2362257939825324521

`A360443(A246420(n+2))`
-/

namespace A248209.P2362257939825324521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360443 (A246420 (n + 2)).toNat

end

end A248209.P2362257939825324521

/-!
# A248211: First differences of omega(n), the number of distinct prime factors function (A001221).

The programs for A248211, the canonical program `A248211.P6041066512751082017` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248211 has offset 1).

The definition of A248211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248211.P6041066512751082017

`A001221(n+2)-A001221(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A248211

/-- `A001221(n+2)-A001221(n+1)` -/
def P6041066512751082017.Spec : Prop :=
  ∀ n, P6041066512751082017.a n = A248211 (n + 1)

theorem P6041066512751082017.correct : P6041066512751082017.Spec := by
  intro n
  simp only [A248211, Nat.add_sub_cancel]

end A248211

/-! ## A248211.P3184564936129075908

`Δ[A001221(n+1)]`
-/

namespace A248211.P3184564936129075908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P3184564936129075908

namespace A248211

/-- `Δ[A001221(n+1)]` -/
def P3184564936129075908.Spec : Prop :=
  ∀ n, P3184564936129075908.a n = A248211 (n + 1)

theorem P3184564936129075908.correct : P3184564936129075908.Spec := by
  intro n
  simp only [A248211, Nat.add_sub_cancel, A248211.P3184564936129075908.f1, A248211.P3184564936129075908.a, A248211.P6041066512751082017.a, SequenceMachineLib.memo_apply]

end A248211

/-! ## A248211.P8054376221352576293

`Δ[dr(A001221(2*n-(n-1)))]`
-/

namespace A248211.P8054376221352576293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248211.P8054376221352576293

namespace A248211

/-- `Δ[dr(A001221(2*n-(n-1)))]` -/
def P8054376221352576293.Spec : Prop :=
  ∀ n, P8054376221352576293.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P5847631977976675629

`Δ[A001222(A007947(n+1))]`
-/

namespace A248211.P5847631977976675629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P5847631977976675629

namespace A248211

/-- `Δ[A001222(A007947(n+1))]` -/
def P5847631977976675629.Spec : Prop :=
  ∀ n, P5847631977976675629.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P16730424691211268143

`Δ[A000005(A074816(n+1))]`
-/

namespace A248211.P16730424691211268143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P16730424691211268143

namespace A248211

/-- `Δ[A000005(A074816(n+1))]` -/
def P16730424691211268143.Spec : Prop :=
  ∀ n, P16730424691211268143.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P1367039926711738295

`Δ[A001222(A292586(n+1))]`
-/

namespace A248211.P1367039926711738295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P1367039926711738295

namespace A248211

/-- `Δ[A001222(A292586(n+1))]` -/
def P1367039926711738295.Spec : Prop :=
  ∀ n, P1367039926711738295.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P15292326510829382780

`A001222(A007947(n+2))-∑{p}[n+1, A001222(#)]`
-/

namespace A248211.P15292326510829382780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A248211.P15292326510829382780

namespace A248211

/-- `A001222(A007947(n+2))-∑{p}[n+1, A001222(#)]` -/
def P15292326510829382780.Spec : Prop :=
  ∀ n, P15292326510829382780.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P14311858899376795441

`A001222(A007947(n+2))-A001222(∏{p}[n+1, #])`
-/

namespace A248211.P14311858899376795441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A248211.P14311858899376795441

namespace A248211

/-- `A001222(A007947(n+2))-A001222(∏{p}[n+1, #])` -/
def P14311858899376795441.Spec : Prop :=
  ∀ n, P14311858899376795441.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P1199573441339123228

`A001222(A007947(n+2))-∑{e}[n+1, A328672(#)]`
-/

namespace A248211.P1199573441339123228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), A328672 (Nat.factorization (f1 n) p)

end

end A248211.P1199573441339123228

namespace A248211

/-- `A001222(A007947(n+2))-∑{e}[n+1, A328672(#)]` -/
def P1199573441339123228.Spec : Prop :=
  ∀ n, P1199573441339123228.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P670916171422859229

`Δ[∑{e}[∏{p}[n+1, #], #]]`
-/

namespace A248211.P670916171422859229
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248211.P670916171422859229

namespace A248211

/-- `Δ[∑{e}[∏{p}[n+1, #], #]]` -/
def P670916171422859229.Spec : Prop :=
  ∀ n, P670916171422859229.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P11093893688645593715

`Δ[∑{p}[n+1, floor(atan(#))]]`
-/

namespace A248211.P11093893688645593715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊Real.arctan (p : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P11093893688645593715

namespace A248211

/-- `Δ[∑{p}[n+1, floor(atan(#))]]` -/
def P11093893688645593715.Spec : Prop :=
  ∀ n, P11093893688645593715.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P14144596487947571363

`Δ[∑{e}[n+1, round(atan(#))]]`
-/

namespace A248211.P14144596487947571363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P14144596487947571363

namespace A248211

/-- `Δ[∑{e}[n+1, round(atan(#))]]` -/
def P14144596487947571363.Spec : Prop :=
  ∀ n, P14144596487947571363.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P7670103027305431397

`Δ[∑{e}[n+1, ceil(tanh(#))]]`
-/

namespace A248211.P7670103027305431397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈Real.tanh (Nat.factorization (f2 n) p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P7670103027305431397

namespace A248211

/-- `Δ[∑{e}[n+1, ceil(tanh(#))]]` -/
def P7670103027305431397.Spec : Prop :=
  ∀ n, P7670103027305431397.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P4956988910603281749

`Δ[∑{p}[n+1, ceil(acot(#))]]`
-/

namespace A248211.P4956988910603281749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P4956988910603281749

namespace A248211

/-- `Δ[∑{p}[n+1, ceil(acot(#))]]` -/
def P4956988910603281749.Spec : Prop :=
  ∀ n, P4956988910603281749.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P9512002310971822641

`Δ[∑{e}[n+1, round(tanh(#))]]`
-/

namespace A248211.P9512002310971822641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P9512002310971822641

namespace A248211

/-- `Δ[∑{e}[n+1, round(tanh(#))]]` -/
def P9512002310971822641.Spec : Prop :=
  ∀ n, P9512002310971822641.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P14030618717441586938

`Δ[∑{e}[n+1, ceil(acot(#))]]`
-/

namespace A248211.P14030618717441586938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈SequenceMachineLib.acot (Nat.factorization (f2 n) p : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P14030618717441586938

namespace A248211

/-- `Δ[∑{e}[n+1, ceil(acot(#))]]` -/
def P14030618717441586938.Spec : Prop :=
  ∀ n, P14030618717441586938.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P10066645652801781471

`Δ[∑{p}[n+1, (n+2)%#]]`
-/

namespace A248211.P10066645652801781471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (n + 2) % p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248211.P10066645652801781471

namespace A248211

/-- `Δ[∑{p}[n+1, (n+2)%#]]` -/
def P10066645652801781471.Spec : Prop :=
  ∀ n, P10066645652801781471.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P17263477715584201834

`Δ[∑{p}[n+1, ((-1)^#)²]]`
-/

namespace A248211.P17263477715584201834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((-1) ^ p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P17263477715584201834

namespace A248211

/-- `Δ[∑{p}[n+1, ((-1)^#)²]]` -/
def P17263477715584201834.Spec : Prop :=
  ∀ n, P17263477715584201834.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P14216847326738170357

`Δ[∑{e}[n+1, ((-1)^#)²]]`
-/

namespace A248211.P14216847326738170357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((-1) ^ Nat.factorization (f2 n) p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P14216847326738170357

namespace A248211

/-- `Δ[∑{e}[n+1, ((-1)^#)²]]` -/
def P14216847326738170357.Spec : Prop :=
  ∀ n, P14216847326738170357.a n = A248211 (n + 1)

end A248211

/-! ## A248211.P1721267356524839709

`Δ[A083399(n+1)]`
-/

namespace A248211.P1721267356524839709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248211.P1721267356524839709

namespace A248211

/-- `Δ[A083399(n+1)]` -/
def P1721267356524839709.Spec : Prop :=
  ∀ n, P1721267356524839709.a n = A248211 (n + 1)

end A248211

/-!
# A248212: Values of x in A033210 (primes of the form x^2+13*y^2).

The programs for A248212, there is no canonical definition to state claims against.
-/

/-! ## A248212.P12094273171524814802

`sqrt(A033210(n+1)-13*A248213(n+1)²)`
-/

namespace A248212.P12094273171524814802
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A033210 (n + 1) - 13 * A248213 (n + 1) ^ 2 : ℝ)

end

end A248212.P12094273171524814802

/-!
# A248213: Values of y in A033210 (primes of the form x^2+13*y^2).

The programs for A248213, there is no canonical definition to state claims against.
-/

/-! ## A248213.P8451094013347863997

`sqrt((A033210(n+1)-A248212(n+1)²)/13)`
-/

namespace A248213.P8451094013347863997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A033210 (n + 1) - A248212 (n + 1) ^ 2 : ℚ) / 13 : ℝ)

end

end A248213.P8451094013347863997

/-! ## A248213.P14828174265349397947

`A058933(A000120(A001644(n)))`
-/

namespace A248213.P14828174265349397947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A000120 (A001644 n).toNat).toNat

end

end A248213.P14828174265349397947

/-!
# A248215: Primes of form x^2+13*y^2 (mod 52).

The programs for A248215, there is no canonical definition to state claims against.
-/

/-! ## A248215.P10986317095699660225

`A033210(n+1)%52`
-/

namespace A248215.P10986317095699660225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033210 (n + 1)) 52

end

end A248215.P10986317095699660225

/-! ## A248215.P5743202787419294354

`p?[A247881(n+1)]%52`
-/

namespace A248215.P5743202787419294354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 52

end

end A248215.P5743202787419294354

/-! ## A248215.P11498975206052789303

`p?[A009001(A035245(n+1))]%52`
-/

namespace A248215.P11498975206052789303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A035245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 52

end

end A248215.P11498975206052789303

/-! ## A248215.P1822788246335850171

`p?[A009001(A038883(n+1))]%52`
-/

namespace A248215.P1822788246335850171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A038883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 52

end

end A248215.P1822788246335850171

/-! ## A248215.P6585228269257995540

`p?[A009001(A296928(n+1))]%52`
-/

namespace A248215.P6585228269257995540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A296928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 52

end

end A248215.P6585228269257995540

/-! ## A248215.P7813724672850296439

`p?[A344758(2*A296928(n+1))]%52`
-/

namespace A248215.P7813724672850296439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (2 * A296928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 52

end

end A248215.P7813724672850296439

/-!
# A248216: a(n) = 6^n - 2^n.

The programs for A248216, the canonical program `A248216.P7506271375807777742` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248216 has offset 0).

The definition of A248216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-2^n` (program `A248216.P7506271375807777742`, by `A248216.P7506271375807777742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248216.P7506271375807777742

`6^n-2^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248216

/-- `6^n-2^n` -/
def P7506271375807777742.Spec : Prop :=
  ∀ n, P7506271375807777742.a n = A248216 n

theorem P7506271375807777742.correct : P7506271375807777742.Spec := by
  intro n
  simp only [A248216]

end A248216

/-! ## A248216.P8186864536493985320

`A000079(n)*A024023(n)`
-/

namespace A248216.P8186864536493985320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A024023 n

end

end A248216.P8186864536493985320

namespace A248216

/-- `A000079(n)*A024023(n)` -/
def P8186864536493985320.Spec : Prop :=
  ∀ n, P8186864536493985320.a n = A248216 n

end A248216

/-! ## A248216.P6002878618297068796

`xor(2^n, 6^n)`
-/

namespace A248216.P6002878618297068796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) (6 ^ n)

end

end A248216.P6002878618297068796

namespace A248216

/-- `xor(2^n, 6^n)` -/
def P6002878618297068796.Spec : Prop :=
  ∀ n, (P6002878618297068796.a n : ℤ) = A248216 n

end A248216

/-! ## A248216.P14066741854798163374

`ogf(4x/(1-8x+12x^2))`
-/

namespace A248216.P14066741854798163374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -8, 12] n

end

end A248216.P14066741854798163374

namespace A248216

/-- `ogf(4x/(1-8x+12x^2))` -/
def P14066741854798163374.Spec : Prop :=
  ∀ n, P14066741854798163374.a n = A248216 n

end A248216

/-! ## A248216.P114066583215147664

`and(-2^(n+1), 6^n)`
-/

namespace A248216.P114066583215147664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 ^ (n + 1) : ℤ)) (6 ^ n : ℤ)

end

end A248216.P114066583215147664

namespace A248216

/-- `and(-2^(n+1), 6^n)` -/
def P114066583215147664.Spec : Prop :=
  ∀ n, P114066583215147664.a n = A248216 n

end A248216

/-! ## A248216.P16422032419164475653

`4*(2*a(n-1)-3*a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A248216.P16422032419164475653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 * (2 * a (n - 1) - 3 * a (n - 2))

end

end A248216.P16422032419164475653

namespace A248216

/-- `4*(2*a(n-1)-3*a(n-2))` -/
def P16422032419164475653.Spec : Prop :=
  ∀ n, P16422032419164475653.a n = A248216 n

theorem P16422032419164475653.correct : P16422032419164475653.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A248216, Nat.add_sub_cancel, A248216.P16422032419164475653.a, A248216.P7506271375807777742.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A248216, Nat.add_sub_cancel, A248216.P16422032419164475653.a, A248216.P7506271375807777742.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248216

/-! ## A248216.P7274127081379209872

`2*(A036551(n)-1)`
-/

namespace A248216.P7274127081379209872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036551 n - 1)

end

end A248216.P7274127081379209872

namespace A248216

/-- `2*(A036551(n)-1)` -/
def P7274127081379209872.Spec : Prop :=
  ∀ n, P7274127081379209872.a n = A248216 n

end A248216

/-! ## A248216.P11582817473761948760

`2^(n+1)*A003462(n)`
-/

namespace A248216.P11582817473761948760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A003462 n

end

end A248216.P11582817473761948760

namespace A248216

/-- `2^(n+1)*A003462(n)` -/
def P11582817473761948760.Spec : Prop :=
  ∀ n, P11582817473761948760.a n = A248216 n

end A248216

/-! ## A248216.P5305762084192321178

`A011782(n)*A100774(n)`
-/

namespace A248216.P5305762084192321178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A100774 n

end

end A248216.P5305762084192321178

namespace A248216

/-- `A011782(n)*A100774(n)` -/
def P5305762084192321178.Spec : Prop :=
  ∀ n, P5305762084192321178.a n = A248216 n

end A248216

/-! ## A248216.P17220783505473017265

`A024023(n)*A155559(n)`
-/

namespace A248216.P17220783505473017265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A155559 n

end

end A248216.P17220783505473017265

namespace A248216

/-- `A024023(n)*A155559(n)` -/
def P17220783505473017265.Spec : Prop :=
  ∀ n, P17220783505473017265.a n = A248216 n

end A248216

/-! ## A248216.P12894535447150951721

`A024023(n)*A171449(n)`
-/

namespace A248216.P12894535447150951721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A171449 n

end

end A248216.P12894535447150951721

namespace A248216

/-- `A024023(n)*A171449(n)` -/
def P12894535447150951721.Spec : Prop :=
  ∀ n, P12894535447150951721.a n = A248216 n

end A248216

/-! ## A248216.P12412592190143433211

`A024023(n)*A171559(n)`
-/

namespace A248216.P12412592190143433211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A171559 n

end

end A248216.P12412592190143433211

namespace A248216

/-- `A024023(n)*A171559(n)` -/
def P12412592190143433211.Spec : Prop :=
  ∀ n, P12412592190143433211.a n = A248216 n

end A248216

/-! ## A248216.P16495235765708904388

`A003462(n)*A198633(n)`
-/

namespace A248216.P16495235765708904388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A198633 n

end

end A248216.P16495235765708904388

namespace A248216

/-- `A003462(n)*A198633(n)` -/
def P16495235765708904388.Spec : Prop :=
  ∀ n, P16495235765708904388.a n = A248216 n

end A248216

/-! ## A248216.P13523766082951825822

`A100774(n)*A131577(n)`
-/

namespace A248216.P13523766082951825822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100774 n * A131577 n

end

end A248216.P13523766082951825822

namespace A248216

/-- `A100774(n)*A131577(n)` -/
def P13523766082951825822.Spec : Prop :=
  ∀ n, P13523766082951825822.a n = A248216 n

end A248216

/-! ## A248216.P4725743843953012614

`A103453(n)*A155559(n)`
-/

namespace A248216.P4725743843953012614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n * A155559 n

end

end A248216.P4725743843953012614

namespace A248216

/-- `A103453(n)*A155559(n)` -/
def P4725743843953012614.Spec : Prop :=
  ∀ n, P4725743843953012614.a n = A248216 n

end A248216

/-! ## A248216.P1195913384202442899

`A003462(n)*A151821(n+1)`
-/

namespace A248216.P1195913384202442899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A151821 (n + 1)

end

end A248216.P1195913384202442899

namespace A248216

/-- `A003462(n)*A151821(n+1)` -/
def P1195913384202442899.Spec : Prop :=
  ∀ n, P1195913384202442899.a n = A248216 n

end A248216

/-! ## A248216.P10043019102409765870

`A003462(n)*A171449(n+1)`
-/

namespace A248216.P10043019102409765870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A171449 (n + 1)

end

end A248216.P10043019102409765870

namespace A248216

/-- `A003462(n)*A171449(n+1)` -/
def P10043019102409765870.Spec : Prop :=
  ∀ n, P10043019102409765870.a n = A248216 n

end A248216

/-! ## A248216.P7311208603373347468

`A003462(n)*A011782(n+2)`
-/

namespace A248216.P7311208603373347468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A011782 (n + 2)

end

end A248216.P7311208603373347468

namespace A248216

/-- `A003462(n)*A011782(n+2)` -/
def P7311208603373347468.Spec : Prop :=
  ∀ n, P7311208603373347468.a n = A248216 n

end A248216

/-! ## A248216.P17170905577912992076

`(A049294(n)-1)/3`
-/

namespace A248216.P17170905577912992076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049294 n - 1 : ℚ) / 3

end

end A248216.P17170905577912992076

namespace A248216

/-- `(A049294(n)-1)/3` -/
def P17170905577912992076.Spec : Prop :=
  ∀ n, P17170905577912992076.a n = (A248216 n : ℚ)

end A248216

/-! ## A248216.P16138318496108926815

`A066406(n+1)/6`
-/

namespace A248216.P16138318496108926815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066406 (n + 1) : ℚ) / 6

end

end A248216.P16138318496108926815

namespace A248216

/-- `A066406(n+1)/6` -/
def P16138318496108926815.Spec : Prop :=
  ∀ n, P16138318496108926815.a n = (A248216 n : ℚ)

end A248216

/-!
# A248217: a(n) = 8^n - 2^n.

The programs for A248217, the canonical program `A248217.P2520338047953216580` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248217 has offset 0).

The definition of A248217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-2^n` (program `A248217.P2520338047953216580`, by `A248217.P2520338047953216580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248217.P2520338047953216580

`8^n-2^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248217

/-- `8^n-2^n` -/
def P2520338047953216580.Spec : Prop :=
  ∀ n, P2520338047953216580.a n = A248217 n

theorem P2520338047953216580.correct : P2520338047953216580.Spec := by
  intro n
  simp only [A248217]

end A248217

/-! ## A248217.P15684277690777178240

`6*C(2^n+1, 3)`
-/

namespace A248217.P15684277690777178240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (2 ^ n + 1) 3

end

end A248217.P15684277690777178240

namespace A248217

/-- `6*C(2^n+1, 3)` -/
def P15684277690777178240.Spec : Prop :=
  ∀ n, (P15684277690777178240.a n : ℤ) = A248217 n

end A248217

/-! ## A248217.P10347565603184065373

`A000079(n)*A024036(n)`
-/

namespace A248217.P10347565603184065373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A024036 n

end

end A248217.P10347565603184065373

namespace A248217

/-- `A000079(n)*A024036(n)` -/
def P10347565603184065373.Spec : Prop :=
  ∀ n, P10347565603184065373.a n = A248217 n

end A248217

/-! ## A248217.P11324327819483244580

`ogf(6x/(1-10x+16x^2))`
-/

namespace A248217.P11324327819483244580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -10, 16] n

end

end A248217.P11324327819483244580

namespace A248217

/-- `ogf(6x/(1-10x+16x^2))` -/
def P11324327819483244580.Spec : Prop :=
  ∀ n, P11324327819483244580.a n = A248217 n

end A248217

/-! ## A248217.P1645679758702752673

`2*A120689(n)`
-/

namespace A248217.P1645679758702752673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120689 n

end

end A248217.P1645679758702752673

namespace A248217

/-- `2*A120689(n)` -/
def P1645679758702752673.Spec : Prop :=
  ∀ n, P1645679758702752673.a n = A248217 n

end A248217

/-! ## A248217.P7853887339254305844

`∑{d}[n, A395475(#)]`
-/

namespace A248217.P7853887339254305844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A395475 d

end

end A248217.P7853887339254305844

namespace A248217

/-- `∑{d}[n, A395475(#)]` -/
def P7853887339254305844.Spec : Prop :=
  ∀ n, P7853887339254305844.a n = A248217 n

end A248217

/-! ## A248217.P14870595935730973753

`A060549(A008458(n))`
-/

namespace A248217.P14870595935730973753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (A008458 n).toNat

end

end A248217.P14870595935730973753

namespace A248217

/-- `A060549(A008458(n))` -/
def P14870595935730973753.Spec : Prop :=
  ∀ n, P14870595935730973753.a n = A248217 n

end A248217

/-! ## A248217.P9739534857686944296

`A060549(A101328(n+2))`
-/

namespace A248217.P9739534857686944296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (A101328 (n + 2)).toNat

end

end A248217.P9739534857686944296

namespace A248217

/-- `A060549(A101328(n+2))` -/
def P9739534857686944296.Spec : Prop :=
  ∀ n, P9739534857686944296.a n = A248217 n

end A248217

/-! ## A248217.P13195270684630257567

`A060549(A271114(n)-1)`
-/

namespace A248217.P13195270684630257567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (A271114 n - 1).toNat

end

end A248217.P13195270684630257567

namespace A248217

/-- `A060549(A271114(n)-1)` -/
def P13195270684630257567.Spec : Prop :=
  ∀ n, P13195270684630257567.a n = A248217 n

end A248217

/-! ## A248217.P9901114265098186897

`A060549(A016921(n))/2`
-/

namespace A248217.P9901114265098186897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060549 (A016921 n).toNat : ℚ) / 2

end

end A248217.P9901114265098186897

namespace A248217

/-- `A060549(A016921(n))/2` -/
def P9901114265098186897.Spec : Prop :=
  ∀ n, P9901114265098186897.a n = (A248217 n : ℚ)

end A248217

/-! ## A248217.P958985829262870572

`A002450(n)*A007283(n)`
-/

namespace A248217.P958985829262870572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n * A007283 n

end

end A248217.P958985829262870572

namespace A248217

/-- `A002450(n)*A007283(n)` -/
def P958985829262870572.Spec : Prop :=
  ∀ n, P958985829262870572.a n = A248217 n

end A248217

/-! ## A248217.P12200531445901165053

`A002446(n)*A011782(n)`
-/

namespace A248217.P12200531445901165053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 n * A011782 n

end

end A248217.P12200531445901165053

namespace A248217

/-- `A002446(n)*A011782(n)` -/
def P12200531445901165053.Spec : Prop :=
  ∀ n, P12200531445901165053.a n = A248217 n

end A248217

/-! ## A248217.P6015445279403729731

`A000051(n)*A020522(n)`
-/

namespace A248217.P6015445279403729731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A020522 n

end

end A248217.P6015445279403729731

namespace A248217

/-- `A000051(n)*A020522(n)` -/
def P6015445279403729731.Spec : Prop :=
  ∀ n, P6015445279403729731.a n = A248217 n

end A248217

/-! ## A248217.P15223057446162329895

`A003945(n)*A020988(n)`
-/

namespace A248217.P15223057446162329895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A020988 n

end

end A248217.P15223057446162329895

namespace A248217

/-- `A003945(n)*A020988(n)` -/
def P15223057446162329895.Spec : Prop :=
  ∀ n, P15223057446162329895.a n = A248217 n

end A248217

/-! ## A248217.P7161796984235176437

`A020988(n)*A042950(n)`
-/

namespace A248217.P7161796984235176437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n * A042950 n

end

end A248217.P7161796984235176437

namespace A248217

/-- `A020988(n)*A042950(n)` -/
def P7161796984235176437.Spec : Prop :=
  ∀ n, P7161796984235176437.a n = A248217 n

end A248217

/-! ## A248217.P17053208473562215320

`A020522(n)*A083318(n)`
-/

namespace A248217.P17053208473562215320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n * A083318 n

end

end A248217.P17053208473562215320

namespace A248217

/-- `A020522(n)*A083318(n)` -/
def P17053208473562215320.Spec : Prop :=
  ∀ n, P17053208473562215320.a n = A248217 n

end A248217

/-! ## A248217.P9247148421685475154

`A002446(n)*A131577(n)`
-/

namespace A248217.P9247148421685475154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 n * A131577 n

end

end A248217.P9247148421685475154

namespace A248217

/-- `A002446(n)*A131577(n)` -/
def P9247148421685475154.Spec : Prop :=
  ∀ n, P9247148421685475154.a n = A248217 n

end A248217

/-! ## A248217.P11803533449294608835

`A006516(n)*A134351(n)`
-/

namespace A248217.P11803533449294608835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n * A134351 n

end

end A248217.P11803533449294608835

namespace A248217

/-- `A006516(n)*A134351(n)` -/
def P11803533449294608835.Spec : Prop :=
  ∀ n, P11803533449294608835.a n = A248217 n

end A248217

/-! ## A248217.P15162830751183006597

`A000225(n)*A161168(n)`
-/

namespace A248217.P15162830751183006597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A161168 n

end

end A248217.P15162830751183006597

namespace A248217

/-- `A000225(n)*A161168(n)` -/
def P15162830751183006597.Spec : Prop :=
  ∀ n, P15162830751183006597.a n = A248217 n

end A248217

/-! ## A248217.P11982294687595710638

`A024036(n)*A155559(n)`
-/

namespace A248217.P11982294687595710638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n * A155559 n

end

end A248217.P11982294687595710638

namespace A248217

/-- `A024036(n)*A155559(n)` -/
def P11982294687595710638.Spec : Prop :=
  ∀ n, P11982294687595710638.a n = A248217 n

end A248217

/-!
# A248218: Period in residues modulo n in iteration of x^2 + 1 starting at 0.

The programs for A248218, there is no canonical definition to state claims against.
-/

/-! ## A248218.P17933857553291633164

`A332965(n+1)-A328699(n+1)`
-/

namespace A248218.P17933857553291633164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) - A328699 (n + 1)

end

end A248218.P17933857553291633164

/-! ## A248218.P17443719322960377026

`A332965(n+1)+1-A214636(n+1)`
-/

namespace A248218.P17443719322960377026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) + (1 - A214636 (n + 1))

end

end A248218.P17443719322960377026

/-! ## A248218.P17992371168424719491

`A332965(n+1)+A024000(A214636(n+1))`
-/

namespace A248218.P17992371168424719491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) + A024000 (A214636 (n + 1)).toNat

end

end A248218.P17992371168424719491

/-! ## A248218.P15434721605103856237

`A005496(A332965(n+1)-A214636(n+1))`
-/

namespace A248218.P15434721605103856237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A332965 (n + 1) - A214636 (n + 1)).toNat

end

end A248218.P15434721605103856237

/-! ## A248218.P17866150778666479233

`A348553(A332965(n+1)-A214636(n+1))`
-/

namespace A248218.P17866150778666479233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A332965 (n + 1) - A214636 (n + 1)).toNat

end

end A248218.P17866150778666479233

/-!
# A248219: Indices where A248218(n) = 1.

The programs for A248219, there is no canonical definition to state claims against.
-/

/-! ## A248219.P8594409831679056023

`record[A000265(n+1)/A248218(n+1)]`
-/

namespace A248219.P8594409831679056023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A248218 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248219.P8594409831679056023

/-! ## A248219.P10021099218580960295

`record[A007913(n+1)/A248218(n+1)]`
-/

namespace A248219.P10021099218580960295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A248218 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248219.P10021099218580960295

/-! ## A248219.P15474387023022781523

`record[A007947(n+1)/A248218(n+1)]`
-/

namespace A248219.P15474387023022781523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A248218 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248219.P15474387023022781523

/-! ## A248219.P7849381093000978698

`eq[1, A248218(n+1)]+1`
-/

namespace A248219.P7849381093000978698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248219.P7849381093000978698

/-! ## A248219.P7043015286860901385

`eq[n, A093178(n)*A248218(A093178(n))]`
-/

namespace A248219.P7043015286860901385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A248218 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248219.P7043015286860901385

/-! ## A248219.P10002402848769038060

`record[A141310(n)/A248218(n+1)]`
-/

namespace A248219.P10002402848769038060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) / (A248218 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248219.P10002402848769038060

/-! ## A248219.P14999010026953531365

`A079097(eq[1, A248218(n+1)])`
-/

namespace A248219.P14999010026953531365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248219.P14999010026953531365

/-! ## A248219.P14272080575879459552

`eq[1, A248218(A103889(n+1))]`
-/

namespace A248219.P14272080575879459552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248219.P14272080575879459552

/-! ## A248219.P3498529187915773978

`A263449(eq[1, A248218(n+1)])`
-/

namespace A248219.P3498529187915773978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248219.P3498529187915773978

/-! ## A248219.P9517799897185516311

`eq[1, A248218(A000038(n)+n)]`
-/

namespace A248219.P9517799897185516311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248219.P9517799897185516311

/-!
# A248220: Values of n such that the equation x^2 - n*y^2 = n*(n+1)*(n+2)/6 has integer solutions.

The programs for A248220, there is no canonical definition to state claims against.
-/

/-! ## A248220.P178827369118192695

`A227350(A000101(n+1))+A000217(n)`
-/

namespace A248220.P178827369118192695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A000101 (n + 1)).toNat + A000217 n

end

end A248220.P178827369118192695

/-! ## A248220.P6471991964255971295

`A288425(n+1)+A099546(A289271(3*n+2))`
-/

namespace A248220.P6471991964255971295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288425 (n + 1) + A099546 (A289271 (3 * n + 2)).toNat

end

end A248220.P6471991964255971295

/-! ## A248220.P9447747403957123732

`A264041(n+1)-A107393(A373518(n))-A013928(n+1)`
-/

namespace A248220.P9447747403957123732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1) - A107393 (A373518 n).toNat - A013928 (n + 1)

end

end A248220.P9447747403957123732

/-!
# A248221: Numbers m such that 52*m + 1 is prime.

The programs for A248221, the canonical program `A248221.P13614101816324531720` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248221 has offset 1).

The definition of A248221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142508, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248221.P13614101816324531720

`(A142508(n+1)-1)/52`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248221

/-- `(A142508(n+1)-1)/52` -/
def P13614101816324531720.Spec : Prop :=
  ∀ n, P13614101816324531720.a n = (A248221 (n + 1) : ℚ)

end A248221

/-! ## A248221.P6553781530685662816

`eq[1, A001222(52*n+1)]`
-/

namespace A248221.P6553781530685662816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (52 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P6553781530685662816

namespace A248221

/-- `eq[1, A001222(52*n+1)]` -/
def P6553781530685662816.Spec : Prop :=
  ∀ n, (P6553781530685662816.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P8796039372183034180

`eq[2, A000005(52*n+1)]`
-/

namespace A248221.P8796039372183034180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (52 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P8796039372183034180

namespace A248221

/-- `eq[2, A000005(52*n+1)]` -/
def P8796039372183034180.Spec : Prop :=
  ∀ n, (P8796039372183034180.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P12019983868457740853

`lt[2, sqrt(A010051(52*n+1)+1)+1]`
-/

namespace A248221.P12019983868457740853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010051 (52 * n + 1) + 1 : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A248221.P12019983868457740853

namespace A248221

/-- `lt[2, sqrt(A010051(52*n+1)+1)+1]` -/
def P12019983868457740853.Spec : Prop :=
  ∀ n, (P12019983868457740853.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P13415860501539073615

`record[A004277(n)/A000005(52*n+1)]`
-/

namespace A248221.P13415860501539073615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A000005 (52 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248221.P13415860501539073615

namespace A248221

/-- `record[A004277(n)/A000005(52*n+1)]` -/
def P13415860501539073615.Spec : Prop :=
  ∀ n, P13415860501539073615.a n = (A248221 (n + 1) : ℚ)

end A248221

/-! ## A248221.P16803194688729873034

`record[(A004273(n)+1)/A000005(52*n+1)]`
-/

namespace A248221.P16803194688729873034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1 : ℚ) / (A000005 (52 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248221.P16803194688729873034

namespace A248221

/-- `record[(A004273(n)+1)/A000005(52*n+1)]` -/
def P16803194688729873034.Spec : Prop :=
  ∀ n, P16803194688729873034.a n = (A248221 (n + 1) : ℚ)

end A248221

/-! ## A248221.P13236321702358793729

`eq[1, A046645(4*13*n+1)]`
-/

namespace A248221.P13236321702358793729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (4 * (13 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P13236321702358793729

namespace A248221

/-- `eq[1, A046645(4*13*n+1)]` -/
def P13236321702358793729.Spec : Prop :=
  ∀ n, (P13236321702358793729.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P6201944130398789016

`eq[1, A054024(2*26*n+1)]`
-/

namespace A248221.P6201944130398789016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * (26 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P6201944130398789016

namespace A248221

/-- `eq[1, A054024(2*26*n+1)]` -/
def P6201944130398789016.Spec : Prop :=
  ∀ n, (P6201944130398789016.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P15442957904336539483

`eq[3, A020481(A153080(2*n))]`
-/

namespace A248221.P15442957904336539483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A153080 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P15442957904336539483

namespace A248221

/-- `eq[3, A020481(A153080(2*n))]` -/
def P15442957904336539483.Spec : Prop :=
  ∀ n, (P15442957904336539483.a n : ℤ) = A248221 (n + 1)

end A248221

/-! ## A248221.P16828614953903197798

`eq[1, A176095(52*n+1)]`
-/

namespace A248221.P16828614953903197798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (52 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248221.P16828614953903197798

namespace A248221

/-- `eq[1, A176095(52*n+1)]` -/
def P16828614953903197798.Spec : Prop :=
  ∀ n, (P16828614953903197798.a n : ℤ) = A248221 (n + 1)

end A248221

/-!
# A248222: Maximal gap between quadratic residues mod n.

The programs for A248222, there is no canonical definition to state claims against.
-/

/-! ## A248222.P13680745163247563264

`A020651(A347439(n+1)^n+n+1)`
-/

namespace A248222.P13680745163247563264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A347439 (n + 1) ^ n + (n + 1 : ℤ)).toNat

end

end A248222.P13680745163247563264

/-! ## A248222.P15614621874401299732

`A178489(n)+A087117(A055094(n+1))`
-/

namespace A248222.P15614621874401299732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A087117 (A055094 (n + 1)).toNat

end

end A248222.P15614621874401299732

/-! ## A248222.P11410007611693331876

`A000120(eq[A215879(n), A262079(n+1)])`
-/

namespace A248222.P11410007611693331876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A248222.P11410007611693331876

/-! ## A248222.P600143107382163017

`A062843(eq[A215879(n), A262079(n+1)])`
-/

namespace A248222.P600143107382163017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A248222.P600143107382163017

/-! ## A248222.P3360623455918134797

`A020651(A187829(n+1)+A055231(n+1))`
-/

namespace A248222.P3360623455918134797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A187829 (n + 1) + A055231 (n + 1)).toNat

end

end A248222.P3360623455918134797

/-!
# A248225: a(n) = 6^n - 3^n.

The programs for A248225, the canonical program `A248225.P8427210478039895849` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248225 has offset 0).

The definition of A248225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-3^n` (program `A248225.P8427210478039895849`, by `A248225.P8427210478039895849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248225.P8427210478039895849

`6^n-3^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248225

/-- `6^n-3^n` -/
def P8427210478039895849.Spec : Prop :=
  ∀ n, P8427210478039895849.a n = A248225 n

theorem P8427210478039895849.correct : P8427210478039895849.Spec := by
  intro n
  simp only [A248225]

end A248225

/-! ## A248225.P15319469681338504682

`A000244(n)*A000225(n)`
-/

namespace A248225.P15319469681338504682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000225 n

end

end A248225.P15319469681338504682

namespace A248225

/-- `A000244(n)*A000225(n)` -/
def P15319469681338504682.Spec : Prop :=
  ∀ n, P15319469681338504682.a n = A248225 n

end A248225

/-! ## A248225.P12838051470394552087

`ogf(3x/(1-9x+18x^2))`
-/

namespace A248225.P12838051470394552087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -9, 18] n

end

end A248225.P12838051470394552087

namespace A248225

/-- `ogf(3x/(1-9x+18x^2))` -/
def P12838051470394552087.Spec : Prop :=
  ∀ n, P12838051470394552087.a n = A248225 n

end A248225

/-! ## A248225.P6153795667384875349

`3*3*(a(n-1)-2*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A248225.P6153795667384875349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 * (3 * (a (n - 1) - 2 * a (n - 2)))

end

end A248225.P6153795667384875349

namespace A248225

/-- `3*3*(a(n-1)-2*a(n-2))` -/
def P6153795667384875349.Spec : Prop :=
  ∀ n, P6153795667384875349.a n = A248225 n

theorem P6153795667384875349.correct : P6153795667384875349.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A248225, Nat.add_sub_cancel, A248225.P6153795667384875349.a, A248225.P8427210478039895849.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A248225, Nat.add_sub_cancel, A248225.P6153795667384875349.a, A248225.P8427210478039895849.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A248225

/-! ## A248225.P5126802555571826789

`3/2*A060589(n)`
-/

namespace A248225.P5126802555571826789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A060589 n : ℚ)

end

end A248225.P5126802555571826789

namespace A248225

/-- `3/2*A060589(n)` -/
def P5126802555571826789.Spec : Prop :=
  ∀ n, P5126802555571826789.a n = (A248225 n : ℚ)

end A248225

/-! ## A248225.P186417339984141580

`A068156(n)*A140429(n)`
-/

namespace A248225.P186417339984141580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n * A140429 n

end

end A248225.P186417339984141580

namespace A248225

/-- `A068156(n)*A140429(n)` -/
def P186417339984141580.Spec : Prop :=
  ∀ n, P186417339984141580.a n = A248225 n

end A248225

/-! ## A248225.P375124103808048390

`A099044(n+1)/A000984(n+1)*A000225(n)`
-/

namespace A248225.P375124103808048390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099044 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ) * (A000225 n : ℚ)

end

end A248225.P375124103808048390

namespace A248225

/-- `A099044(n+1)/A000984(n+1)*A000225(n)` -/
def P375124103808048390.Spec : Prop :=
  ∀ n, P375124103808048390.a n = (A248225 n : ℚ)

end A248225

/-! ## A248225.P6196541428070485051

`A020522(n)*A027471(n+2)/A001787(n+1)`
-/

namespace A248225.P6196541428070485051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020522 n * A027471 (n + 2) : ℚ) / (A001787 (n + 1) : ℚ)

end

end A248225.P6196541428070485051

namespace A248225

/-- `A020522(n)*A027471(n+2)/A001787(n+1)` -/
def P6196541428070485051.Spec : Prop :=
  ∀ n, P6196541428070485051.a n = (A248225 n : ℚ)

end A248225

/-!
# A248226: a(n) = 10^n - 3^n.

The programs for A248226, the canonical program `A248226.P14687723596403423939` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248226 has offset 0).

The definition of A248226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-3^n` (program `A248226.P14687723596403423939`, by `A248226.P14687723596403423939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248226.P14687723596403423939

`10^n-3^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248226

/-- `10^n-3^n` -/
def P14687723596403423939.Spec : Prop :=
  ∀ n, P14687723596403423939.a n = A248226 n

theorem P14687723596403423939.correct : P14687723596403423939.Spec := by
  intro n
  simp only [A248226]

end A248226

/-! ## A248226.P4084120822590406640

`abs(1-A155615(n))`
-/

namespace A248226.P4084120822590406640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155615 n|

end

end A248226.P4084120822590406640

namespace A248226

/-- `abs(1-A155615(n))` -/
def P4084120822590406640.Spec : Prop :=
  ∀ n, P4084120822590406640.a n = A248226 n

end A248226

/-! ## A248226.P6629123800016634752

`abs(A024024(n)-A024115(n))`
-/

namespace A248226.P6629123800016634752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024024 n - A024115 n|

end

end A248226.P6629123800016634752

namespace A248226

/-- `abs(A024024(n)-A024115(n))` -/
def P6629123800016634752.Spec : Prop :=
  ∀ n, P6629123800016634752.a n = A248226 n

end A248226

/-! ## A248226.P5978119285839343993

`abs(A103453(n)-A103456(n))`
-/

namespace A248226.P5978119285839343993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103453 n - A103456 n|

end

end A248226.P5978119285839343993

namespace A248226

/-- `abs(A103453(n)-A103456(n))` -/
def P5978119285839343993.Spec : Prop :=
  ∀ n, P5978119285839343993.a n = A248226 n

end A248226

/-! ## A248226.P14537460820666563327

`abs(A155602(n)-A155621(n))`
-/

namespace A248226.P14537460820666563327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155621 n|

end

end A248226.P14537460820666563327

namespace A248226

/-- `abs(A155602(n)-A155621(n))` -/
def P14537460820666563327.Spec : Prop :=
  ∀ n, P14537460820666563327.a n = A248226 n

end A248226

/-! ## A248226.P3066262869617501734

`Δ[A002275(n)-A003462(n)]`
-/

namespace A248226.P3066262869617501734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248226.P3066262869617501734

namespace A248226

/-- `Δ[A002275(n)-A003462(n)]` -/
def P3066262869617501734.Spec : Prop :=
  ∀ n, P3066262869617501734.a n = A248226 n

end A248226

/-! ## A248226.P7669249136493468009

`Δ[A002275(n)-A007051(n)]`
-/

namespace A248226.P7669249136493468009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248226.P7669249136493468009

namespace A248226

/-- `Δ[A002275(n)-A007051(n)]` -/
def P7669249136493468009.Spec : Prop :=
  ∀ n, P7669249136493468009.a n = A248226 n

end A248226

/-! ## A248226.P13919857050083303914

`Δ[A047855(n)-A003462(n)]`
-/

namespace A248226.P13919857050083303914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248226.P13919857050083303914

namespace A248226

/-- `Δ[A047855(n)-A003462(n)]` -/
def P13919857050083303914.Spec : Prop :=
  ∀ n, P13919857050083303914.a n = A248226 n

end A248226

/-! ## A248226.P10574517107176275237

`(A155615(n)-1)%A155608(n)`
-/

namespace A248226.P10574517107176275237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155615 n - 1) (A155608 n)

end

end A248226.P10574517107176275237

namespace A248226

/-- `(A155615(n)-1)%A155608(n)` -/
def P10574517107176275237.Spec : Prop :=
  ∀ n, P10574517107176275237.a n = A248226 n

end A248226

/-!
# A248227: Least k such that zeta(4) - sum{1/h^4, h = 1..k} < 1/n^3.

The programs for A248227, the canonical program `A248227.P13276500814067425270` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248227 has offset 1).

The definition of A248227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248227.P13276500814067425270

`round(root(∑[∑[2*n]]+1, 3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248227

/-- `round(root(∑[∑[2*n]]+1, 3))` -/
def P13276500814067425270.Spec : Prop :=
  ∀ n, P13276500814067425270.a n = A248227 (n + 1)

theorem P13276500814067425270.correct : P13276500814067425270.Spec := by
  intro n
  simp only [A248227, Nat.add_sub_cancel]

end A248227

/-! ## A248227.P10446737033120713302

`floor(log(A160113(n+2)))`
-/

namespace A248227.P10446737033120713302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A160113 (n + 2) : ℝ)⌋

end

end A248227.P10446737033120713302

namespace A248227

/-- `floor(log(A160113(n+2)))` -/
def P10446737033120713302.Spec : Prop :=
  ∀ n, P10446737033120713302.a n = A248227 (n + 1)

end A248227

/-! ## A248227.P13144005378807077540

`floor(log(A136322(n+3)))`
-/

namespace A248227.P13144005378807077540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A136322 (n + 3) : ℝ)⌋

end

end A248227.P13144005378807077540

namespace A248227

/-- `floor(log(A136322(n+3)))` -/
def P13144005378807077540.Spec : Prop :=
  ∀ n, P13144005378807077540.a n = A248227 (n + 1)

end A248227

/-! ## A248227.P8702047726784249397

`A391618(A009863(n+1))`
-/

namespace A248227.P8702047726784249397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A009863 (n + 1)).toNat

end

end A248227.P8702047726784249397

namespace A248227

/-- `A391618(A009863(n+1))` -/
def P8702047726784249397.Spec : Prop :=
  ∀ n, P8702047726784249397.a n = A248227 (n + 1)

end A248227

/-! ## A248227.P9380129382674599463

`A350174(A359338(n+1))`
-/

namespace A248227.P9380129382674599463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A359338 (n + 1)).toNat

end

end A248227.P9380129382674599463

namespace A248227

/-- `A350174(A359338(n+1))` -/
def P9380129382674599463.Spec : Prop :=
  ∀ n, P9380129382674599463.a n = A248227 (n + 1)

end A248227

/-! ## A248227.P3916286121495945873

`A257639(A350221(n+1))`
-/

namespace A248227.P3916286121495945873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A350221 (n + 1)).toNat

end

end A248227.P3916286121495945873

namespace A248227

/-- `A257639(A350221(n+1))` -/
def P3916286121495945873.Spec : Prop :=
  ∀ n, P3916286121495945873.a n = A248227 (n + 1)

end A248227

/-!
# A248228: Numbers k such that A248227(k+1) = A248227(k).

The programs for A248228, the canonical program `A248228.P7528585357857807524` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248228 has offset 1).

The definition of A248228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248228.P7528585357857807524

`A248227(a(n-1)+4)+n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248228

/-- `A248227(a(n-1)+4)+n` -/
def P7528585357857807524.Spec : Prop :=
  ∀ n, P7528585357857807524.a n = A248228 (n + 1)

theorem P7528585357857807524.correct : P7528585357857807524.Spec := by
  intro n
  simp only [A248228, Nat.add_sub_cancel]

end A248228

/-! ## A248228.P6502608705001924550

`record[gcd(A248227(n+2), A248227(n+1))]+n`
-/

namespace A248228.P6502608705001924550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248227 (n + 2)) (A248227 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A248228.P6502608705001924550

namespace A248228

/-- `record[gcd(A248227(n+2), A248227(n+1))]+n` -/
def P6502608705001924550.Spec : Prop :=
  ∀ n, (P6502608705001924550.a n : ℤ) = A248228 (n + 1)

end A248228

/-! ## A248228.P5898044021607453165

`record[A000265(A248229(2*(n+1)))-A248229(n+1)]`
-/

namespace A248228.P5898044021607453165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A248229 (2 * (n + 1))).toNat - A248229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248228.P5898044021607453165

namespace A248228

/-- `record[A000265(A248229(2*(n+1)))-A248229(n+1)]` -/
def P5898044021607453165.Spec : Prop :=
  ∀ n, P5898044021607453165.a n = A248228 (n + 1)

end A248228

/-! ## A248228.P519359664492227832

`A286989(2*n+2)-A267871(A056809(n+1))`
-/

namespace A248228.P519359664492227832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (2 * n + 2) - A267871 (A056809 (n + 1)).toNat

end

end A248228.P519359664492227832

namespace A248228

/-- `A286989(2*n+2)-A267871(A056809(n+1))` -/
def P519359664492227832.Spec : Prop :=
  ∀ n, P519359664492227832.a n = A248228 (n + 1)

end A248228

/-! ## A248228.P10232605122106896821

`A286989(abs(A128064((2*n+1)*(n+2)))+1)-1`
-/

namespace A248228.P10232605122106896821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (|A128064 ((2 * n + 1) * (n + 2))| + 1).toNat - 1

end

end A248228.P10232605122106896821

namespace A248228

/-- `A286989(abs(A128064((2*n+1)*(n+2)))+1)-1` -/
def P10232605122106896821.Spec : Prop :=
  ∀ n, P10232605122106896821.a n = A248228 (n + 1)

end A248228

/-! ## A248228.P2822780377844081009

`A286989(2*(n+1))+-1%A106410(n+1)`
-/

namespace A248228.P2822780377844081009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (2 * (n + 1)) + Int.tmod (-1) (A106410 (n + 1))

end

end A248228.P2822780377844081009

namespace A248228

/-- `A286989(2*(n+1))+-1%A106410(n+1)` -/
def P2822780377844081009.Spec : Prop :=
  ∀ n, P2822780377844081009.a n = A248228 (n + 1)

end A248228

/-!
# A248229: Numbers k such that A248227(k+1) = A248227(k) + 1.

The programs for A248229, the canonical program `A248229.P17492069791970711960` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248229 has offset 1).

The definition of A248229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248229.P8454230357061020397

`floor(root(∑[(3*(n+1))²+2], 3))`
-/

namespace A248229.P8454230357061020397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1)) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A248229.P8454230357061020397

namespace A248229

/-- `floor(root(∑[(3*(n+1))²+2], 3))` -/
def P8454230357061020397.Spec : Prop :=
  ∀ n, P8454230357061020397.a n = A248229 (n + 1)

end A248229

/-! ## A248229.P17492069791970711960

`record[Δ[2*A248227(n+2)]+n]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248229

/-- `record[Δ[2*A248227(n+2)]+n]` -/
def P17492069791970711960.Spec : Prop :=
  ∀ n, P17492069791970711960.a n = A248229 (n + 1)

theorem P17492069791970711960.correct : P17492069791970711960.Spec := by
  intro n
  simp only [A248229, Nat.add_sub_cancel]

end A248229

/-! ## A248229.P1052070357133549378

`comp[A248228(n+1)-1]+1`
-/

namespace A248229.P1052070357133549378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248228 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A248229.P1052070357133549378

namespace A248229

/-- `comp[A248228(n+1)-1]+1` -/
def P1052070357133549378.Spec : Prop :=
  ∀ n, (P1052070357133549378.a n : ℤ) = A248229 (n + 1)

end A248229

/-! ## A248229.P13898877126882992516

`A004526(A059539(2*n+3)%A248187(3*n+4))`
-/

namespace A248229.P13898877126882992516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A059539 (2 * n + 3)) (A248187 (3 * n + 4))).toNat

end

end A248229.P13898877126882992516

namespace A248229

/-- `A004526(A059539(2*n+3)%A248187(3*n+4))` -/
def P13898877126882992516.Spec : Prop :=
  ∀ n, P13898877126882992516.a n = A248229 (n + 1)

end A248229

/-! ## A248229.P12049885860054398986

`A000267(A032766(∑[A248227(n+1)]))`
-/

namespace A248229.P12049885860054398986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A032766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A248229.P12049885860054398986

namespace A248229

/-- `A000267(A032766(∑[A248227(n+1)]))` -/
def P12049885860054398986.Spec : Prop :=
  ∀ n, P12049885860054398986.a n = A248229 (n + 1)

end A248229

/-! ## A248229.P7525095362818794493

`A033810(∑[A213728(n)+3*n])`
-/

namespace A248229.P7525095362818794493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 n + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248229.P7525095362818794493

namespace A248229

/-- `A033810(∑[A213728(n)+3*n])` -/
def P7525095362818794493.Spec : Prop :=
  ∀ n, P7525095362818794493.a n = A248229 (n + 1)

end A248229

/-! ## A248229.P3706662390895270370

`A182008(A115067(n+1)+A071935(n+1))`
-/

namespace A248229.P3706662390895270370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A115067 (n + 1) + A071935 (n + 1)).toNat

end

end A248229.P3706662390895270370

namespace A248229

/-- `A182008(A115067(n+1)+A071935(n+1))` -/
def P3706662390895270370.Spec : Prop :=
  ∀ n, P3706662390895270370.a n = A248229 (n + 1)

end A248229

/-! ## A248229.P313821698969115979

`A000196(∑[A008615(n)+4*(n+1)])`
-/

namespace A248229.P313821698969115979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248229.P313821698969115979

namespace A248229

/-- `A000196(∑[A008615(n)+4*(n+1)])` -/
def P313821698969115979.Spec : Prop :=
  ∀ n, P313821698969115979.a n = A248229 (n + 1)

end A248229

/-!
# A248230: a(n) = floor(1/(zeta(4) - Sum_{h=1..n} 1/h^4)).

The programs for A248230, the canonical program `A248230.P9224601394266845668` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248230 has offset 1).

The definition of A248230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248230.P15307117903855442212

`1+7*(n+1)/2+9*(n+1)²/2+3*(n+1)^3+floor((n+1)/4)`
-/

namespace A248230.P15307117903855442212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (7 * (n + 1) : ℚ) / 2 + (9 * (n + 1) ^ 2 : ℚ) / 2 + (3 * (n + 1) ^ 3 : ℚ) + (⌊(n + 1 : ℚ) / 4⌋ : ℚ)

end

end A248230.P15307117903855442212

namespace A248230

/-- `1+7*(n+1)/2+9*(n+1)²/2+3*(n+1)^3+floor((n+1)/4)` -/
def P15307117903855442212.Spec : Prop :=
  ∀ n, P15307117903855442212.a n = (A248230 (n + 1) : ℚ)

end A248230

/-! ## A248230.P9224601394266845668

`floor(A027602(2*(n+1))/8)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248230

/-- `floor(A027602(2*(n+1))/8)` -/
def P9224601394266845668.Spec : Prop :=
  ∀ n, P9224601394266845668.a n = A248230 (n + 1)

theorem P9224601394266845668.correct : P9224601394266845668.Spec := by
  intro n
  simp only [A248230, Nat.add_sub_cancel]

end A248230

/-! ## A248230.P15397474335894811028

`A168183(A057813(n+1))`
-/

namespace A248230.P15397474335894811028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A057813 (n + 1)).toNat

end

end A248230.P15397474335894811028

namespace A248230

/-- `A168183(A057813(n+1))` -/
def P15397474335894811028.Spec : Prop :=
  ∀ n, P15397474335894811028.a n = A248230 (n + 1)

end A248230

/-!
# A248231: Least k such that zeta(5) - Sum_{h = 1..k} 1/h^5 < 1/n^4.

The programs for A248231, the canonical program `A248231.P4665638054891454998` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248231 has offset 1).

The definition of A248231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248231.P6448314871309221175

`round(sqrt(floor(cosh(log((n+1)²)))))`
-/

namespace A248231.P6448314871309221175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋ : ℝ))

end

end A248231.P6448314871309221175

namespace A248231

/-- `round(sqrt(floor(cosh(log((n+1)²)))))` -/
def P6448314871309221175.Spec : Prop :=
  ∀ n, P6448314871309221175.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P18328841624703798

`round(sqrt(abs(1-n)+n²/2))`
-/

namespace A248231.P18328841624703798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((|1 - (n : ℤ)| : ℚ) + (n ^ 2 : ℚ) / 2 : ℝ))

end

end A248231.P18328841624703798

namespace A248231

/-- `round(sqrt(abs(1-n)+n²/2))` -/
def P18328841624703798.Spec : Prop :=
  ∀ n, P18328841624703798.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P4665638054891454998

`n-floor(n/((n+2)/a(n-1)+2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248231

/-- `n-floor(n/((n+2)/a(n-1)+2))` -/
def P4665638054891454998.Spec : Prop :=
  ∀ n, P4665638054891454998.a n = A248231 (n + 1)

theorem P4665638054891454998.correct : P4665638054891454998.Spec := by
  intro n
  simp only [A248231, Nat.add_sub_cancel]

end A248231

/-! ## A248231.P9496388449836161870

`A028310(round(sqrt(A080476(n+1))))`
-/

namespace A248231.P9496388449836161870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A080476 (n + 1) : ℝ))).toNat

end

end A248231.P9496388449836161870

namespace A248231

/-- `A028310(round(sqrt(A080476(n+1))))` -/
def P9496388449836161870.Spec : Prop :=
  ∀ n, P9496388449836161870.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P6021563941204058589

`round(sqrt(n*(n/2+1)))^A001221(A000961(n+1))`
-/

namespace A248231.P6021563941204058589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) * ((n : ℚ) / 2 + 1) : ℝ)) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A248231.P6021563941204058589

namespace A248231

/-- `round(sqrt(n*(n/2+1)))^A001221(A000961(n+1))` -/
def P6021563941204058589.Spec : Prop :=
  ∀ n, P6021563941204058589.a n = (A248231 (n + 1) : ℚ)

end A248231

/-! ## A248231.P17663658719305097890

`A002024(floor(abs(2-(n+1)²)/4)+1)`
-/

namespace A248231.P17663658719305097890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊(|2 - ((n + 1) ^ 2 : ℤ)| : ℚ) / 4⌋ + 1).toNat

end

end A248231.P17663658719305097890

namespace A248231

/-- `A002024(floor(abs(2-(n+1)²)/4)+1)` -/
def P17663658719305097890.Spec : Prop :=
  ∀ n, P17663658719305097890.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P15519196274630977360

`A003056(A076921(n+1)-1)+1`
-/

namespace A248231.P15519196274630977360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A076921 (n + 1) - 1).toNat + 1

end

end A248231.P15519196274630977360

namespace A248231

/-- `A003056(A076921(n+1)-1)+1` -/
def P15519196274630977360.Spec : Prop :=
  ∀ n, P15519196274630977360.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P7407238879826773274

`A123578(A065033(n+1)*A065033(n))`
-/

namespace A248231.P7407238879826773274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A065033 (n + 1) * A065033 n).toNat

end

end A248231.P7407238879826773274

namespace A248231

/-- `A123578(A065033(n+1)*A065033(n))` -/
def P7407238879826773274.Spec : Prop :=
  ∀ n, P7407238879826773274.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P4765738534470639922

`A000194(A080476(n+1))`
-/

namespace A248231.P4765738534470639922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A080476 (n + 1)).toNat

end

end A248231.P4765738534470639922

namespace A248231

/-- `A000194(A080476(n+1))` -/
def P4765738534470639922.Spec : Prop :=
  ∀ n, P4765738534470639922.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P16138236710713957486

`A000194(A123108(n)+A000217(n))`
-/

namespace A248231.P16138236710713957486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A123108 n + A000217 n).toNat

end

end A248231.P16138236710713957486

namespace A248231

/-- `A000194(A123108(n)+A000217(n))` -/
def P16138236710713957486.Spec : Prop :=
  ∀ n, P16138236710713957486.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P1835176556190708506

`A000196(A047253(n+1)+∑[n])`
-/

namespace A248231.P1835176556190708506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A047253 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A248231.P1835176556190708506

namespace A248231

/-- `A000196(A047253(n+1)+∑[n])` -/
def P1835176556190708506.Spec : Prop :=
  ∀ n, P1835176556190708506.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P9359940590064229184

`A000196(A210434(2*n)+∑[n])`
-/

namespace A248231.P9359940590064229184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A210434 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A248231.P9359940590064229184

namespace A248231

/-- `A000196(A210434(2*n)+∑[n])` -/
def P9359940590064229184.Spec : Prop :=
  ∀ n, P9359940590064229184.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P1796400411737281240

`A000196(A056942(A002620(n+1))+n+1)`
-/

namespace A248231.P1796400411737281240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056942 (A002620 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A248231.P1796400411737281240

namespace A248231

/-- `A000196(A056942(A002620(n+1))+n+1)` -/
def P1796400411737281240.Spec : Prop :=
  ∀ n, P1796400411737281240.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P2329259860374419102

`A111651(A184534(n+1))`
-/

namespace A248231.P2329259860374419102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A184534 (n + 1)).toNat

end

end A248231.P2329259860374419102

namespace A248231

/-- `A111651(A184534(n+1))` -/
def P2329259860374419102.Spec : Prop :=
  ∀ n, P2329259860374419102.a n = A248231 (n + 1)

end A248231

/-! ## A248231.P4651448700793212074

`A000194(A123108(n²)+n)`
-/

namespace A248231.P4651448700793212074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A123108 (n ^ 2) + (n : ℤ)).toNat

end

end A248231.P4651448700793212074

namespace A248231

/-- `A000194(A123108(n²)+n)` -/
def P4651448700793212074.Spec : Prop :=
  ∀ n, P4651448700793212074.a n = A248231 (n + 1)

end A248231

/-!
# A248232: Numbers k such that A248231(k+1) = A248231(k).

The programs for A248232, the canonical program `A248232.P4856940846005422243` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248232 has offset 1).

The definition of A248232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248232.P2259572229535433550

`ceil(A004277(n)+2*sqrt(∑[n]))`
-/

namespace A248232.P2259572229535433550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004277 n : ℝ) + 2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A248232.P2259572229535433550

namespace A248232

/-- `ceil(A004277(n)+2*sqrt(∑[n]))` -/
def P2259572229535433550.Spec : Prop :=
  ∀ n, P2259572229535433550.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P4856940846005422243

`A248231(A001954(n))+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248232

/-- `A248231(A001954(n))+n` -/
def P4856940846005422243.Spec : Prop :=
  ∀ n, P4856940846005422243.a n = A248232 (n + 1)

theorem P4856940846005422243.correct : P4856940846005422243.Spec := by
  intro n
  simp only [A248232, Nat.add_sub_cancel]

end A248232

/-! ## A248232.P3822758827137848618

`A248231(A063957(n+1))+n`
-/

namespace A248232.P3822758827137848618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A063957 (n + 1)).toNat + (n : ℤ)

end

end A248232.P3822758827137848618

namespace A248232

/-- `A248231(A063957(n+1))+n` -/
def P3822758827137848618.Spec : Prop :=
  ∀ n, P3822758827137848618.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P7829982472384141553

`A248231(A184922(n+1))+n`
-/

namespace A248232.P7829982472384141553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A184922 (n + 1)).toNat + (n : ℤ)

end

end A248232.P7829982472384141553

namespace A248232

/-- `A248231(A184922(n+1))+n` -/
def P7829982472384141553.Spec : Prop :=
  ∀ n, P7829982472384141553.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P13509792284152117693

`floor(A005408(n)+sqrt(A132209(n)))`
-/

namespace A248232.P13509792284152117693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005408 n : ℝ) + Real.sqrt (A132209 n : ℝ)⌋

end

end A248232.P13509792284152117693

namespace A248232

/-- `floor(A005408(n)+sqrt(A132209(n)))` -/
def P13509792284152117693.Spec : Prop :=
  ∀ n, P13509792284152117693.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P5434442325195676281

`A028310(A360926(n)+n)`
-/

namespace A248232.P5434442325195676281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A360926 n + (n : ℤ)).toNat

end

end A248232.P5434442325195676281

namespace A248232

/-- `A028310(A360926(n)+n)` -/
def P5434442325195676281.Spec : Prop :=
  ∀ n, P5434442325195676281.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P14744200803794033088

`A360926(n)+A000267(A002620(n))`
-/

namespace A248232.P14744200803794033088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360926 n + A000267 (A002620 n).toNat

end

end A248232.P14744200803794033088

namespace A248232

/-- `A360926(n)+A000267(A002620(n))` -/
def P14744200803794033088.Spec : Prop :=
  ∀ n, P14744200803794033088.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P4711550179350322099

`∑[n+2]-A083479(A179865(n+1))`
-/

namespace A248232.P4711550179350322099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A083479 (A179865 (n + 1)).toNat

end

end A248232.P4711550179350322099

namespace A248232

/-- `∑[n+2]-A083479(A179865(n+1))` -/
def P4711550179350322099.Spec : Prop :=
  ∀ n, P4711550179350322099.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P14993866180604954853

`ceil((A027709(A000217(n))+A008574(n))/2)`
-/

namespace A248232.P14993866180604954853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027709 (A000217 n).toNat + A008574 n : ℚ) / 2⌉

end

end A248232.P14993866180604954853

namespace A248232

/-- `ceil((A027709(A000217(n))+A008574(n))/2)` -/
def P14993866180604954853.Spec : Prop :=
  ∀ n, P14993866180604954853.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P4848731574508335839

`A004525(A027709(A000217(n))+A008574(n))`
-/

namespace A248232.P4848731574508335839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A027709 (A000217 n).toNat + A008574 n).toNat

end

end A248232.P4848731574508335839

namespace A248232

/-- `A004525(A027709(A000217(n))+A008574(n))` -/
def P4848731574508335839.Spec : Prop :=
  ∀ n, P4848731574508335839.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P893764424187747309

`A028242(A027709(A000217(n)))+A004273(n)`
-/

namespace A248232.P893764424187747309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A027709 (A000217 n).toNat).toNat + A004273 n

end

end A248232.P893764424187747309

namespace A248232

/-- `A028242(A027709(A000217(n)))+A004273(n)` -/
def P893764424187747309.Spec : Prop :=
  ∀ n, P893764424187747309.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P17600915269194951423

`A034856(n+1)-A056847(A056847(A000217(n)))`
-/

namespace A248232.P17600915269194951423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A056847 (A056847 (A000217 n).toNat).toNat

end

end A248232.P17600915269194951423

namespace A248232

/-- `A034856(n+1)-A056847(A056847(A000217(n)))` -/
def P17600915269194951423.Spec : Prop :=
  ∀ n, P17600915269194951423.a n = A248232 (n + 1)

end A248232

/-! ## A248232.P12738764723339276681

`A273190(A002378(n))+A016777(n)`
-/

namespace A248232.P12738764723339276681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A002378 n).toNat + A016777 n

end

end A248232.P12738764723339276681

namespace A248232

/-- `A273190(A002378(n))+A016777(n)` -/
def P12738764723339276681.Spec : Prop :=
  ∀ n, P12738764723339276681.a n = A248232 (n + 1)

end A248232

/-!
# A248233: 

The programs for A248233, there is no canonical definition to state claims against.
-/

/-! ## A248233.P2908925320866877813

`and(A097432(n+1), A118883(n+1))`
-/

namespace A248233.P2908925320866877813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A118883 (n + 1))

end

end A248233.P2908925320866877813

/-! ## A248233.P14881491476713890655

`and(A097432(n+1), A375155(n+1))`
-/

namespace A248233.P14881491476713890655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A375155 (n + 1))

end

end A248233.P14881491476713890655

/-! ## A248233.P18392134145972717189

`A097432(n+1)%A004733(n)`
-/

namespace A248233.P18392134145972717189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097432 (n + 1)) (A004733 n)

end

end A248233.P18392134145972717189

/-! ## A248233.P7280826758938260901

`and(A097432(n+1), A163383(n+1))`
-/

namespace A248233.P7280826758938260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A163383 (n + 1))

end

end A248233.P7280826758938260901

/-! ## A248233.P2847274380157098214

`and(A097432(n+1), A107392(n))`
-/

namespace A248233.P2847274380157098214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A107392 n)

end

end A248233.P2847274380157098214

/-! ## A248233.P12849500400834009729

`and(A097432(n+1), A107464(n))`
-/

namespace A248233.P12849500400834009729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A107464 n)

end

end A248233.P12849500400834009729

/-! ## A248233.P7080982505546989780

`and(A097432(n+1), A107953(n))`
-/

namespace A248233.P7080982505546989780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A107953 n)

end

end A248233.P7080982505546989780

/-! ## A248233.P6742747240206300226

`and(A097432(n+1), A107954(n))`
-/

namespace A248233.P6742747240206300226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A107954 n)

end

end A248233.P6742747240206300226

/-! ## A248233.P1781750005200022326

`and(A097432(n+1), A107955(n))`
-/

namespace A248233.P1781750005200022326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A107955 n)

end

end A248233.P1781750005200022326

/-! ## A248233.P6202271364538026089

`and(A097432(n+1), A130567(n+1))`
-/

namespace A248233.P6202271364538026089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A130567 (n + 1))

end

end A248233.P6202271364538026089

/-! ## A248233.P8587864390795665189

`and(A097432(n+1), A198693(n))`
-/

namespace A248233.P8587864390795665189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A198693 n)

end

end A248233.P8587864390795665189

/-! ## A248233.P18059618124817731398

`and(A097432(n+1), A281482(n))`
-/

namespace A248233.P18059618124817731398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A281482 n)

end

end A248233.P18059618124817731398

/-! ## A248233.P5869958598304129331

`and(A093069(n+1), A097432(n+1))`
-/

namespace A248233.P5869958598304129331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A097432 (n + 1))

end

end A248233.P5869958598304129331

/-! ## A248233.P7593556110386523386

`and(A093112(n+1), A097432(n+1))`
-/

namespace A248233.P7593556110386523386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093112 (n + 1)) (A097432 (n + 1))

end

end A248233.P7593556110386523386

/-! ## A248233.P4859354370002909433

`and(A097432(n+1), A198694(n))`
-/

namespace A248233.P4859354370002909433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A198694 n)

end

end A248233.P4859354370002909433

/-! ## A248233.P11283249295551345092

`and(A097432(n+1), A198695(n))`
-/

namespace A248233.P11283249295551345092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097432 (n + 1)) (A198695 n)

end

end A248233.P11283249295551345092

/-! ## A248233.P11878999598830343008

`A000267(∑[n+1])`
-/

namespace A248233.P11878999598830343008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248233.P11878999598830343008

/-! ## A248233.P57901410578603737

`A055086(∑[n+1])+1`
-/

namespace A248233.P57901410578603737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A248233.P57901410578603737

/-! ## A248233.P16781081358655456613

`A172471(A002061(n+2))`
-/

namespace A248233.P16781081358655456613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A002061 (n + 2)).toNat

end

end A248233.P16781081358655456613

/-! ## A248233.P5609541247003400280

`A172471(A087811(2*(n+1))+1)`
-/

namespace A248233.P5609541247003400280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A087811 (2 * (n + 1)) + 1).toNat

end

end A248233.P5609541247003400280

/-!
# A248238: Egyptian fraction representation of sqrt(8) (A010466) using a greedy function.

The programs for A248238, there is no canonical definition to state claims against.
-/

/-! ## A248238.P5822300172806255036

`A265072(a(n-1))-n` with `a(0)=2, a(1)=2`
-/

namespace A248238.P5822300172806255036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A265072 (a (n - 1)).toNat - (n : ℤ)

end

end A248238.P5822300172806255036

/-!
# A248243: Egyptian fraction representation of sqrt(14) (A010471) using a greedy function.

The programs for A248243, there is no canonical definition to state claims against.
-/

/-! ## A248243.P753933282203642974

`A325712(a(n-1)+5)` with `a(0)=3, a(1)=2, a(2)=5`
-/

namespace A248243.P753933282203642974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 5] fun n a =>
  A325712 (a (n - 1) + 5).toNat

end

end A248243.P753933282203642974

/-!
# A248244: Egyptian fraction representation of sqrt(15) (A010472) using a greedy function.

The programs for A248244, there is no canonical definition to state claims against.
-/

/-! ## A248244.P8902086445790149548

`A119623(a(n-1)+1)` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A248244.P8902086445790149548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 3] fun n a =>
  A119623 (a (n - 1) + 1).toNat

end

end A248244.P8902086445790149548

/-!
# A248250: Egyptian fraction representation of sqrt(22) (A010478) using a greedy function.

The programs for A248250, there is no canonical definition to state claims against.
-/

/-! ## A248250.P7171947094094470309

`A267453(A267381(n+2))+A267358(n)`
-/

namespace A248250.P7171947094094470309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 (A267381 (n + 2)).toNat + A267358 n

end

end A248250.P7171947094094470309

/-!
# A248251: Egyptian fraction representation of sqrt(23) (A010479) using a greedy function.

The programs for A248251, there is no canonical definition to state claims against.
-/

/-! ## A248251.P14610632044793381507

`A025494(3*n+2)%A002476(A025506(n))`
-/

namespace A248251.P14610632044793381507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025494 (3 * n + 2)) (A002476 (A025506 n).toNat)

end

end A248251.P14610632044793381507

/-!
# A248252: Egyptian fraction representation of sqrt(24) (A010480) using a greedy function.

The programs for A248252, there is no canonical definition to state claims against.
-/

/-! ## A248252.P1273160138786189725

`A003963(xor(A351759(n), A358579(n+2)))`
-/

namespace A248252.P1273160138786189725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.xor (A351759 n) (A358579 (n + 2))).toNat

end

end A248252.P1273160138786189725

/-!
# A248260: Egyptian fraction representation of sqrt(33) (A010488) using a greedy function.

The programs for A248260, there is no canonical definition to state claims against.
-/

/-! ## A248260.P11751485401257832708

`A124934(A356725(n+1)+A290776(n))`
-/

namespace A248260.P11751485401257832708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124934 (A356725 (n + 1) + A290776 n).toNat

end

end A248260.P11751485401257832708

/-!
# A248261: Egyptian fraction representation of sqrt(34) (A010489) using a greedy function.

The programs for A248261, there is no canonical definition to state claims against.
-/

/-! ## A248261.P13713368162497051103

`A083992(a(n-1))` with `a(0)=5, a(1)=2, a(2)=4`
-/

namespace A248261.P13713368162497051103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 4] fun n a =>
  A083992 (a (n - 1)).toNat

end

end A248261.P13713368162497051103

/-!
# A248262: Egyptian fraction representation of sqrt(35) (A010490) using a greedy function.

The programs for A248262, there is no canonical definition to state claims against.
-/

/-! ## A248262.P2714553079466544119

`A117534(a(n-1)²)` with `a(0)=5, a(1)=2`
-/

namespace A248262.P2714553079466544119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  A117534 (a (n - 1) ^ 2).toNat

end

end A248262.P2714553079466544119

/-!
# A248274: Egyptian fraction representation of sqrt(48) (A010502) using a greedy function.

The programs for A248274, there is no canonical definition to state claims against.
-/

/-! ## A248274.P2435270289250120980

`A144498(A006821(n))+A000142(n)`
-/

namespace A248274.P2435270289250120980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144498 (A006821 n).toNat + A000142 n

end

end A248274.P2435270289250120980

/-!
# A248286: Egyptian fraction representation of sqrt(61) (A010514) using a greedy function.

The programs for A248286, there is no canonical definition to state claims against.
-/

/-! ## A248286.P17361765659892053439

`A092739(or(n, a(n-1)))` with `a(0)=7, a(1)=2`
-/

namespace A248286.P17361765659892053439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n a =>
  A092739 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A248286.P17361765659892053439

/-!
# A248288: Egyptian fraction representation of sqrt(63) (A010516) using a greedy function.

The programs for A248288, there is no canonical definition to state claims against.
-/

/-! ## A248288.P11387872563554456456

`A281168(a(n-1)+2)` with `a(0)=7, a(1)=2, a(2)=3`
-/

namespace A248288.P11387872563554456456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 2, 3] fun n a =>
  A281168 (a (n - 1) + 2).toNat

end

end A248288.P11387872563554456456

