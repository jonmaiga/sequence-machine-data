import SequenceMachineLib
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A150600: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150600, there is no canonical definition to state claims against.
-/

/-! ## A150600.P8639123461770826939

`A194640(A151088(n))`
-/

namespace A150600.P8639123461770826939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A151088 n).toNat

end

end A150600.P8639123461770826939

/-! ## A150600.P10117731021862615340

`A248231(A001002(n+1))`
-/

namespace A150600.P10117731021862615340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A001002 (n + 1)).toNat

end

end A150600.P10117731021862615340

/-!
# A150601: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150601, there is no canonical definition to state claims against.
-/

/-! ## A150601.P13189039193941932774

`A004526(A150649(n)+A150539(n))`
-/

namespace A150601.P13189039193941932774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150649 n + A150539 n).toNat

end

end A150601.P13189039193941932774

/-! ## A150601.P17766077503196399856

`A125178(∑[4*n])`
-/

namespace A150601.P17766077503196399856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A150601.P17766077503196399856

/-!
# A150602: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150602, there is no canonical definition to state claims against.
-/

/-! ## A150602.P11655179763602806745

`A150604(n)-A185245(n²+3)-A070141(A000079(n))`
-/

namespace A150602.P11655179763602806745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150604 n - A185245 (n ^ 2 + 3) - A070141 (A000079 n).toNat

end

end A150602.P11655179763602806745

/-! ## A150602.P14063837768310898039

`A248148(A006139(n))`
-/

namespace A150602.P14063837768310898039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A006139 n).toNat

end

end A150602.P14063837768310898039

/-!
# A150603: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150603, there is no canonical definition to state claims against.
-/

/-! ## A150603.P14985161926049527493

`A150604(n)-A185245(n²+3)`
-/

namespace A150603.P14985161926049527493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150604 n - A185245 (n ^ 2 + 3)

end

end A150603.P14985161926049527493

/-! ## A150603.P3044521056388409618

`A150604(A001096(n))`
-/

namespace A150603.P3044521056388409618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150604 (A001096 n).toNat

end

end A150603.P3044521056388409618

/-!
# A150604: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150604, there is no canonical definition to state claims against.
-/

/-! ## A150604.P3491796432414233022

`or(A061142(A150593(n)), A150603(n))`
-/

namespace A150604.P3491796432414233022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061142 (A150593 n).toNat) (A150603 n)

end

end A150604.P3491796432414233022

/-! ## A150604.P17829851298811414476

`or(A054014(A291594(n+1)), A150603(n))`
-/

namespace A150604.P17829851298811414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054014 (A291594 (n + 1)).toNat) (A150603 n)

end

end A150604.P17829851298811414476

/-! ## A150604.P2207732395553209488

`A185245(n²+3)+A150603(n)`
-/

namespace A150604.P2207732395553209488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (n ^ 2 + 3) + A150603 n

end

end A150604.P2207732395553209488

/-!
# A150605: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150605, there is no canonical definition to state claims against.
-/

/-! ## A150605.P18394745777273747900

`A004178(A150606(n))`
-/

namespace A150605.P18394745777273747900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A150606 n).toNat

end

end A150605.P18394745777273747900

/-! ## A150605.P681755790019218835

`A150606(A073789(n))`
-/

namespace A150605.P681755790019218835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150606 (A073789 n).toNat

end

end A150605.P681755790019218835

/-! ## A150605.P13053639306444226003

`A150606(A171644(n))`
-/

namespace A150605.P13053639306444226003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150606 (A171644 n).toNat

end

end A150605.P13053639306444226003

/-! ## A150605.P16267987161916272325

`A150606(A004869(n+1))`
-/

namespace A150605.P16267987161916272325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150606 (A004869 (n + 1)).toNat

end

end A150605.P16267987161916272325

/-!
# A150607: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150607, there is no canonical definition to state claims against.
-/

/-! ## A150607.P15172105908869439465

`A138311(A150535(n))`
-/

namespace A150607.P15172105908869439465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A150535 n).toNat

end

end A150607.P15172105908869439465

/-! ## A150607.P11176652571752707830

`A060384(∑[∑[A124464(n)]])`
-/

namespace A150607.P11176652571752707830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150607.P11176652571752707830

/-!
# A150608: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A150608, there is no canonical definition to state claims against.
-/

/-! ## A150608.P32597262449958942

`A150603(n)+A084143(A114779(n))`
-/

namespace A150608.P32597262449958942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150603 n + A084143 (A114779 n).toNat

end

end A150608.P32597262449958942

/-! ## A150608.P7797156770163118157

`A150609(n)-A184955(A161680(n))`
-/

namespace A150608.P7797156770163118157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150609 n - A184955 (A161680 n).toNat

end

end A150608.P7797156770163118157

/-! ## A150608.P3143466791253244193

`or(A001221(A246527(n)), A150603(n))`
-/

namespace A150608.P3143466791253244193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A246527 n).toNat) (A150603 n)

end

end A150608.P3143466791253244193

/-!
# A150609: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150609, there is no canonical definition to state claims against.
-/

/-! ## A150609.P1885126632336062959

`A001281(A150620(n)+A150599(n))`
-/

namespace A150609.P1885126632336062959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150620 n + A150599 n).toNat

end

end A150609.P1885126632336062959

/-! ## A150609.P2251791486851349809

`A150604(n)+A060398(A150647(n))`
-/

namespace A150609.P2251791486851349809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150604 n + A060398 (A150647 n).toNat

end

end A150609.P2251791486851349809

/-! ## A150609.P6074021309005572240

`A184955(A161680(n))+A150608(n)`
-/

namespace A150609.P6074021309005572240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A161680 n).toNat + A150608 n

end

end A150609.P6074021309005572240

/-!
# A150610: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150610, there is no canonical definition to state claims against.
-/

/-! ## A150610.P10580452702277063937

`A287417(n)+A060143(A103821(n))`
-/

namespace A150610.P10580452702277063937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 n + A060143 (A103821 n).toNat

end

end A150610.P10580452702277063937

/-! ## A150610.P4779569993469228521

`A071903(A229135(n))`
-/

namespace A150610.P4779569993469228521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071903 (A229135 n).toNat

end

end A150610.P4779569993469228521

/-!
# A150611: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150611, there is no canonical definition to state claims against.
-/

/-! ## A150611.P17264826715660026470

`A061984(∏[comp[∑[3*n]]])`
-/

namespace A150611.P17264826715660026470
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A150611.P17264826715660026470

/-! ## A150611.P9893255420129548648

`A209081(A151093(n))`
-/

namespace A150611.P9893255420129548648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A151093 n).toNat

end

end A150611.P9893255420129548648

/-!
# A150612: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A150612, there is no canonical definition to state claims against.
-/

/-! ## A150612.P11782118347489034253

`A142150(A179469(n))+A002083(2*n+1)`
-/

namespace A150612.P11782118347489034253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A179469 n).toNat + A002083 (2 * n + 1)

end

end A150612.P11782118347489034253

/-! ## A150612.P548661851429545390

`A194640(A151094(n))`
-/

namespace A150612.P548661851429545390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A151094 n).toNat

end

end A150612.P548661851429545390

/-!
# A150613: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150613, there is no canonical definition to state claims against.
-/

/-! ## A150613.P15974950048156611077

`A001281(A150616(n)+A150608(n))`
-/

namespace A150613.P15974950048156611077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150616 n + A150608 n).toNat

end

end A150613.P15974950048156611077

/-! ## A150613.P11229380711023719985

`A004526(A150616(n)+A150608(n))`
-/

namespace A150613.P11229380711023719985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150616 n + A150608 n).toNat

end

end A150613.P11229380711023719985

/-! ## A150613.P9470699959800456553

`A026741(A150616(n)+A150608(n))`
-/

namespace A150613.P9470699959800456553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A150616 n + A150608 n).toNat

end

end A150613.P9470699959800456553

/-!
# A150614: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150614, there is no canonical definition to state claims against.
-/

/-! ## A150614.P9877406493753682668

`A150616(n)-A055641(A151165(n))`
-/

namespace A150614.P9877406493753682668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150616 n - A055641 (A151165 n).toNat

end

end A150614.P9877406493753682668

/-! ## A150614.P254634806204953328

`A214701(A150621(n))`
-/

namespace A150614.P254634806204953328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150621 n).toNat

end

end A150614.P254634806204953328

/-!
# A150615: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150615, there is no canonical definition to state claims against.
-/

/-! ## A150615.P4676814436336231010

`record[ceil(A343382(n*(n+2))/sqrt(n²+1))]`
-/

namespace A150615.P4676814436336231010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A343382 (n * (n + 2)) : ℝ) / Real.sqrt (n ^ 2 + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150615.P4676814436336231010

/-! ## A150615.P7994229550818530969

`A248566(A369483(n))`
-/

namespace A150615.P7994229550818530969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A369483 n).toNat

end

end A150615.P7994229550818530969

/-!
# A150616: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150616, there is no canonical definition to state claims against.
-/

/-! ## A150616.P645080761893190898

`A150614(n)+A055641(A151165(n))`
-/

namespace A150616.P645080761893190898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150614 n + A055641 (A151165 n).toNat

end

end A150616.P645080761893190898

/-! ## A150616.P9351115564966205852

`A275896(A151098(n)+A114176(n))`
-/

namespace A150616.P9351115564966205852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A151098 n + A114176 n).toNat

end

end A150616.P9351115564966205852

/-! ## A150616.P13847436236411335679

`A150618(n)-A037800(A150654(n))²`
-/

namespace A150616.P13847436236411335679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150618 n - A037800 (A150654 n).toNat ^ 2

end

end A150616.P13847436236411335679

/-!
# A150617: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150617, there is no canonical definition to state claims against.
-/

/-! ## A150617.P16970268360359319931

`A065033(A150627(n)+A150608(n))`
-/

namespace A150617.P16970268360359319931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150627 n + A150608 n).toNat

end

end A150617.P16970268360359319931

/-! ## A150617.P14223988828346055327

`A011960(A228791(n+1))`
-/

namespace A150617.P14223988828346055327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A228791 (n + 1)).toNat

end

end A150617.P14223988828346055327

/-!
# A150618: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150618, there is no canonical definition to state claims against.
-/

/-! ## A150618.P17505458597803325742

`A065033(A150620(n)+A150617(n))`
-/

namespace A150618.P17505458597803325742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150620 n + A150617 n).toNat

end

end A150618.P17505458597803325742

/-! ## A150618.P8390354652845766705

`A150619(n)-A037800(A150654(n))`
-/

namespace A150618.P8390354652845766705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150619 n - A037800 (A150654 n).toNat

end

end A150618.P8390354652845766705

/-!
# A150619: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150619, there is no canonical definition to state claims against.
-/

/-! ## A150619.P9236819287648101306

`A150618(n)+A037800(A150654(n))`
-/

namespace A150619.P9236819287648101306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150618 n + A037800 (A150654 n).toNat

end

end A150619.P9236819287648101306

/-! ## A150619.P13350940955506797056

`A150620(A001096(n))`
-/

namespace A150619.P13350940955506797056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150620 (A001096 n).toNat

end

end A150619.P13350940955506797056

/-!
# A150620: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150620, there is no canonical definition to state claims against.
-/

/-! ## A150620.P4172861391736318084

`A037915(A000045(3*n))+A000313(n+1)`
-/

namespace A150620.P4172861391736318084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A000045 (3 * n)).toNat + A000313 (n + 1)

end

end A150620.P4172861391736318084

/-!
# A150621: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A150621, there is no canonical definition to state claims against.
-/

/-! ## A150621.P18413769015662262973

`A065033(A160160(n)-A106709(n))`
-/

namespace A150621.P18413769015662262973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A160160 n - A106709 n).toNat

end

end A150621.P18413769015662262973

/-! ## A150621.P487255199918390953

`A027925(A150296(n))`
-/

namespace A150621.P487255199918390953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (A150296 n).toNat

end

end A150621.P487255199918390953

/-!
# A150622: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150622, there is no canonical definition to state claims against.
-/

/-! ## A150622.P13182800606468818977

`A004526(A023105(n)+A007854(n))`
-/

namespace A150622.P13182800606468818977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023105 n + A007854 n).toNat

end

end A150622.P13182800606468818977

/-! ## A150622.P6470710932233144165

`A065033(A032020(n)+A007854(n))`
-/

namespace A150622.P6470710932233144165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A032020 n + A007854 n).toNat

end

end A150622.P6470710932233144165

/-! ## A150622.P14010258773159098101

`A004525(A113631(n)+A007854(n))`
-/

namespace A150622.P14010258773159098101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A113631 n + A007854 n).toNat

end

end A150622.P14010258773159098101

/-!
# A150623: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150623, there is no canonical definition to state claims against.
-/

/-! ## A150623.P12865770824254595167

`A257770(A094755(n+1))+A150622(n)`
-/

namespace A150623.P12865770824254595167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257770 (A094755 (n + 1)).toNat + A150622 n

end

end A150623.P12865770824254595167

/-! ## A150623.P2621120470580843603

`A150624(n)-A307841(A295120(n+1))`
-/

namespace A150623.P2621120470580843603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150624 n - A307841 (A295120 (n + 1)).toNat

end

end A150623.P2621120470580843603

/-!
# A150624: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A150624, there is no canonical definition to state claims against.
-/

/-! ## A150624.P5887137329363054252

`and(A086799(A150632(n)), A150625(n))`
-/

namespace A150624.P5887137329363054252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086799 (A150632 n).toNat) (A150625 n)

end

end A150624.P5887137329363054252

/-! ## A150624.P17279087353759743730

`A307841(A295120(n+1))+A150623(n)`
-/

namespace A150624.P17279087353759743730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307841 (A295120 (n + 1)).toNat + A150623 n

end

end A150624.P17279087353759743730

/-!
# A150625: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150625, there is no canonical definition to state claims against.
-/

/-! ## A150625.P17864145833329759753

`or(A014081(A000262(n)), A150624(n))`
-/

namespace A150625.P17864145833329759753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014081 (A000262 n).toNat) (A150624 n)

end

end A150625.P17864145833329759753

/-! ## A150625.P11294828985855116331

`A257770(A094755(n+1))+A150624(n)`
-/

namespace A150625.P11294828985855116331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257770 (A094755 (n + 1)).toNat + A150624 n

end

end A150625.P11294828985855116331

/-!
# A150626: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A150626, there is no canonical definition to state claims against.
-/

/-! ## A150626.P7082103088032975584

`A077467(A083878(n))`
-/

namespace A150626.P7082103088032975584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A083878 n).toNat

end

end A150626.P7082103088032975584

/-! ## A150626.P2122652095725727844

`A050296(A151103(n))`
-/

namespace A150626.P2122652095725727844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A151103 n).toNat

end

end A150626.P2122652095725727844

/-!
# A150627: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150627, there is no canonical definition to state claims against.
-/

/-! ## A150627.P6262120175561847315

`A214701(A150631(n))`
-/

namespace A150627.P6262120175561847315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150631 n).toNat

end

end A150627.P6262120175561847315

/-! ## A150627.P17787614940842869877

`∑[A113215(A121680(n))]`
-/

namespace A150627.P17787614940842869877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A121680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150627.P17787614940842869877

/-!
# A150628: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A150628, there is no canonical definition to state claims against.
-/

/-! ## A150628.P16418127584070739492

`(A150843(n)+A199822(n+1)^C(n, 6)!)/2`
-/

namespace A150628.P16418127584070739492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A150843 n + A199822 (n + 1) ^ Nat.factorial (Nat.choose n 6) : ℚ) / 2

end

end A150628.P16418127584070739492

/-! ## A150628.P1777145202180921404

`A004525(A199822(n+1)+A150843(n))`
-/

namespace A150628.P1777145202180921404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A199822 (n + 1) + A150843 n).toNat

end

end A150628.P1777145202180921404

/-! ## A150628.P3339033268140649723

`A065033(A199822(n+1)+A150843(n))`
-/

namespace A150628.P3339033268140649723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A199822 (n + 1) + A150843 n).toNat

end

end A150628.P3339033268140649723

/-!
# A150629: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150629, there is no canonical definition to state claims against.
-/

/-! ## A150629.P10261946947249266154

`or(A020639(A084262(n)), A150625(n))`
-/

namespace A150629.P10261946947249266154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A084262 n).toNat) (A150625 n)

end

end A150629.P10261946947249266154

/-! ## A150629.P15957505964897247567

`or(A020639(A105625(n)), A150625(n))`
-/

namespace A150629.P15957505964897247567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A105625 n).toNat) (A150625 n)

end

end A150629.P15957505964897247567

/-! ## A150629.P9809885034099088001

`or(A020639(A288470(n)), A150625(n))`
-/

namespace A150629.P9809885034099088001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A288470 n).toNat) (A150625 n)

end

end A150629.P9809885034099088001

/-!
# A150630: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150630, there is no canonical definition to state claims against.
-/

/-! ## A150630.P17743501354059159595

`A150632(n)-A247255(A100104(3*(n+1)))`
-/

namespace A150630.P17743501354059159595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150632 n - A247255 (A100104 (3 * (n + 1))).toNat

end

end A150630.P17743501354059159595

/-! ## A150630.P12875420199625123878

`A050296(A167012(n+1))`
-/

namespace A150630.P12875420199625123878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A167012 (n + 1)).toNat

end

end A150630.P12875420199625123878

/-!
# A150631: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150631, there is no canonical definition to state claims against.
-/

/-! ## A150631.P14761920222116140604

`A123108(A081704(n))+A003266(n)`
-/

namespace A150631.P14761920222116140604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081704 n).toNat + A003266 n

end

end A150631.P14761920222116140604

/-! ## A150631.P2405530409048521481

`A148423(n)+A090223(A150660(n))`
-/

namespace A150631.P2405530409048521481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148423 n + A090223 (A150660 n).toNat

end

end A150631.P2405530409048521481

/-! ## A150631.P6147721527724066064

`A150948(n)-A002265(A150951(n))`
-/

namespace A150631.P6147721527724066064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150948 n - A002265 (A150951 n).toNat

end

end A150631.P6147721527724066064

/-!
# A150632: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150632, there is no canonical definition to state claims against.
-/

/-! ## A150632.P6369424614773940379

`A386807(A150626(n))`
-/

namespace A150632.P6369424614773940379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (A150626 n).toNat

end

end A150632.P6369424614773940379

/-! ## A150632.P10282521962288863843

`A004526(A150651(n)+A150624(n))`
-/

namespace A150632.P10282521962288863843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150651 n + A150624 n).toNat

end

end A150632.P10282521962288863843

/-! ## A150632.P11957697216316357815

`A005843(A150656(n))-A150662(n)`
-/

namespace A150632.P11957697216316357815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150656 n).toNat - A150662 n

end

end A150632.P11957697216316357815

/-!
# A150633: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150633, there is no canonical definition to state claims against.
-/

/-! ## A150633.P2134021426152092671

`A150634(n)+A137396(A340361(n))`
-/

namespace A150633.P2134021426152092671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150634 n + A137396 (A340361 n).toNat

end

end A150633.P2134021426152092671

/-! ## A150633.P7829569716449679022

`A150634(n)+A137396(A346660(n))`
-/

namespace A150633.P7829569716449679022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150634 n + A137396 (A346660 n).toNat

end

end A150633.P7829569716449679022

/-! ## A150633.P8177518894001641476

`A150647(n)-A125184(A113248(n))`
-/

namespace A150633.P8177518894001641476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150647 n - A125184 (A113248 n).toNat

end

end A150633.P8177518894001641476

/-!
# A150634: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150634, there is no canonical definition to state claims against.
-/

/-! ## A150634.P3530440499218312410

`A096070(A150649(n))`
-/

namespace A150634.P3530440499218312410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (A150649 n).toNat

end

end A150634.P3530440499218312410

/-! ## A150634.P14600584170692221480

`A150633(n)-A137396(A346660(n))`
-/

namespace A150634.P14600584170692221480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150633 n - A137396 (A346660 n).toNat

end

end A150634.P14600584170692221480

/-! ## A150634.P8866804851978537776

`or(A010894(A052905(n)), A150633(n))`
-/

namespace A150634.P8866804851978537776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A052905 n).toNat + 21)) (A150633 n)

end

end A150634.P8866804851978537776

/-!
# A150635: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A150635, there is no canonical definition to state claims against.
-/

/-! ## A150635.P6760455368034015504

`A083479(A083479(n)+A000672(2*(n+2)))`
-/

namespace A150635.P6760455368034015504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A083479 n + A000672 (2 * (n + 2))).toNat

end

end A150635.P6760455368034015504

/-! ## A150635.P7246900572970575563

`A194640(A151085(n))`
-/

namespace A150635.P7246900572970575563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A151085 n).toNat

end

end A150635.P7246900572970575563

/-!
# A150636: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A150636, there is no canonical definition to state claims against.
-/

/-! ## A150636.P5743226214009144124

`A055748(A162975(n)+A055731(n))`
-/

namespace A150636.P5743226214009144124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A162975 n + A055731 n).toNat

end

end A150636.P5743226214009144124

/-! ## A150636.P7757365621253552975

`A268129(A150812(n))`
-/

namespace A150636.P7757365621253552975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268129 (A150812 n).toNat

end

end A150636.P7757365621253552975

/-!
# A150637: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150637, there is no canonical definition to state claims against.
-/

/-! ## A150637.P6991990240427876449

`A248148(A150862(n))`
-/

namespace A150637.P6991990240427876449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A150862 n).toNat

end

end A150637.P6991990240427876449

/-! ## A150637.P6784127551163801036

`A256502(A151108(n))`
-/

namespace A150637.P6784127551163801036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A151108 n).toNat

end

end A150637.P6784127551163801036

/-!
# A150638: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150638, there is no canonical definition to state claims against.
-/

/-! ## A150638.P5857614029780489852

`A037918(A150268(n))`
-/

namespace A150638.P5857614029780489852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A150268 n).toNat

end

end A150638.P5857614029780489852

/-! ## A150638.P7392616963546779662

`A195177(4*A095939(n))`
-/

namespace A150638.P7392616963546779662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (4 * A095939 n).toNat

end

end A150638.P7392616963546779662

/-!
# A150639: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A150639, there is no canonical definition to state claims against.
-/

/-! ## A150639.P11773844184195935632

`A287113(A150842(n))-A150841(n)`
-/

namespace A150639.P11773844184195935632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (A150842 n).toNat - A150841 n

end

end A150639.P11773844184195935632

/-! ## A150639.P437006671592442822

`A287113(A150842(n))-A286389(A151107(n))`
-/

namespace A150639.P437006671592442822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (A150842 n).toNat - A286389 (A151107 n).toNat

end

end A150639.P437006671592442822

/-!
# A150640: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150640, there is no canonical definition to state claims against.
-/

/-! ## A150640.P15738619177878015774

`A004525(A259153(n)+A151184(n))`
-/

namespace A150640.P15738619177878015774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259153 n + A151184 n).toNat

end

end A150640.P15738619177878015774

/-! ## A150640.P13731000373761355054

`A050296(A151108(n))`
-/

namespace A150640.P13731000373761355054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A151108 n).toNat

end

end A150640.P13731000373761355054

/-!
# A150641: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150641, there is no canonical definition to state claims against.
-/

/-! ## A150641.P8530672511350720844

`A083403(A151114(n))`
-/

namespace A150641.P8530672511350720844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083403 (A151114 n).toNat

end

end A150641.P8530672511350720844

/-! ## A150641.P10660023622815414259

`A256502(A151115(n))`
-/

namespace A150641.P10660023622815414259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A151115 n).toNat

end

end A150641.P10660023622815414259

/-!
# A150642: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150642, there is no canonical definition to state claims against.
-/

/-! ## A150642.P1024337184653966686

`A256502(A151119(n))`
-/

namespace A150642.P1024337184653966686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A151119 n).toNat

end

end A150642.P1024337184653966686

/-! ## A150642.P18355891238032000238

`A220658(Δ[A002002(n)])`
-/

namespace A150642.P18355891238032000238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (f1 (n + 1) - f1 n).toNat

end

end A150642.P18355891238032000238

/-!
# A150643: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A150643, there is no canonical definition to state claims against.
-/

/-! ## A150643.P6530953659177397426

`A049474(A150987(n))`
-/

namespace A150643.P6530953659177397426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A150987 n).toNat

end

end A150643.P6530953659177397426

/-! ## A150643.P3320790372411865216

`A138466(A150973(n))`
-/

namespace A150643.P3320790372411865216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138466 (A150973 n).toNat

end

end A150643.P3320790372411865216

/-! ## A150643.P17296252196682814352

`A049473(A150987(n)+1)`
-/

namespace A150643.P17296252196682814352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A150987 n + 1).toNat

end

end A150643.P17296252196682814352

/-!
# A150644: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A150644, there is no canonical definition to state claims against.
-/

/-! ## A150644.P17989674572469646672

`A267758(A150800(n))`
-/

namespace A150644.P17989674572469646672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A150800 n).toNat

end

end A150644.P17989674572469646672

/-!
# A150645: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A150645, there is no canonical definition to state claims against.
-/

/-! ## A150645.P15866066050260684764

`A110656(A119976(n+1))`
-/

namespace A150645.P15866066050260684764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A119976 (n + 1)).toNat

end

end A150645.P15866066050260684764

/-! ## A150645.P10581342982492033213

`A111857(∑[A000110(n+3)]-1)`
-/

namespace A150645.P10581342982492033213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A150645.P10581342982492033213

/-!
# A150646: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150646, there is no canonical definition to state claims against.
-/

/-! ## A150646.P3366885309409677291

`A004523(A152802(n)+1)`
-/

namespace A150646.P3366885309409677291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A152802 n + 1).toNat

end

end A150646.P3366885309409677291

/-! ## A150646.P672836722654744239

`A004396(A152802(n)-1)+1`
-/

namespace A150646.P672836722654744239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A152802 n - 1).toNat + 1

end

end A150646.P672836722654744239

/-! ## A150646.P3922249955132477444

`A004396(A152802(n)+A037203(n))`
-/

namespace A150646.P3922249955132477444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A152802 n + A037203 n).toNat

end

end A150646.P3922249955132477444

/-!
# A150647: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150647, there is no canonical definition to state claims against.
-/

/-! ## A150647.P3763256343109564895

`A068937(∑[A005191(n)])`
-/

namespace A150647.P3763256343109564895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150647.P3763256343109564895

/-! ## A150647.P13999015760262461087

`A068937(∑[A324595(n)])`
-/

namespace A150647.P13999015760262461087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150647.P13999015760262461087

/-! ## A150647.P3738747479009742194

`A150633(n)+A125184(A113248(n))`
-/

namespace A150647.P3738747479009742194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150633 n + A125184 (A113248 n).toNat

end

end A150647.P3738747479009742194

/-!
# A150648: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150648, there is no canonical definition to state claims against.
-/

/-! ## A150648.P11916460766823192768

`A150649(n)-A326686(A007570(n))`
-/

namespace A150648.P11916460766823192768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150649 n - A326686 (A007570 n).toNat

end

end A150648.P11916460766823192768

/-! ## A150648.P396317346949287274

`A150649(n)-A340988(A001317(n))`
-/

namespace A150648.P396317346949287274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150649 n - A340988 ((A001317 n).toNat + 91)

end

end A150648.P396317346949287274

/-! ## A150648.P13033052289921146281

`A150649(n)-A325135(A137964(n))`
-/

namespace A150648.P13033052289921146281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150649 n - A325135 (A137964 n).toNat

end

end A150648.P13033052289921146281

/-!
# A150649: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A150649, there is no canonical definition to state claims against.
-/

/-! ## A150649.P16332413636374797010

`or(A070176(A324226(n+1)), A150648(n))`
-/

namespace A150649.P16332413636374797010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070176 (A324226 (n + 1)).toNat) (A150648 n)

end

end A150649.P16332413636374797010

/-! ## A150649.P2614701782461578526

`A093783(A150648(n))`
-/

namespace A150649.P2614701782461578526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (A150648 n).toNat

end

end A150649.P2614701782461578526

/-! ## A150649.P1028704922002405993

`or(A150648(n), A347689(2^n))`
-/

namespace A150649.P1028704922002405993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150648 n) (A347689 (2 ^ n))

end

end A150649.P1028704922002405993

/-!
# A150650: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150650, there is no canonical definition to state claims against.
-/

/-! ## A150650.P4884378795615130155

`A172264(A096267(n+1)+A033324(n+1))`
-/

namespace A150650.P4884378795615130155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A096267 (n + 1) + A033324 (n + 1)).toNat

end

end A150650.P4884378795615130155

/-! ## A150650.P10028386784292825985

`A172264(A096267(n+1)+A000002(n+2))`
-/

namespace A150650.P10028386784292825985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A096267 (n + 1) + A000002 (n + 2)).toNat

end

end A150650.P10028386784292825985

/-!
# A150651: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150651, there is no canonical definition to state claims against.
-/

/-! ## A150651.P7131205508164146047

`A145569(A150836(n))`
-/

namespace A150651.P7131205508164146047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A150836 n).toNat

end

end A150651.P7131205508164146047

/-! ## A150651.P16071877569490944111

`A261221(A122285(n)+A017967(n))`
-/

namespace A150651.P16071877569490944111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A122285 n + A017967 n).toNat

end

end A150651.P16071877569490944111

/-! ## A150651.P575601569151704016

`A261221(A276921(n)+A017967(n))`
-/

namespace A150651.P575601569151704016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A276921 n + A017967 n).toNat

end

end A150651.P575601569151704016

/-!
# A150652: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150652, there is no canonical definition to state claims against.
-/

/-! ## A150652.P17494747925418586522

`A390439(A150626(n))`
-/

namespace A150652.P17494747925418586522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (A150626 n).toNat

end

end A150652.P17494747925418586522

/-! ## A150652.P5654958850719557362

`floor(sqrt(A080084((n+1)^n+1)+1))`
-/

namespace A150652.P5654958850719557362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080084 ((n + 1) ^ n + 1) + 1)

end

end A150652.P5654958850719557362

/-!
# A150653: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150653, there is no canonical definition to state claims against.
-/

/-! ## A150653.P9521689823383397863

`A007067(A151117(n))-A151118(n)`
-/

namespace A150653.P9521689823383397863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A151117 n).toNat - A151118 n

end

end A150653.P9521689823383397863

/-! ## A150653.P13708131186064417629

`A150837(n)-A059995(A238111(n))`
-/

namespace A150653.P13708131186064417629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150837 n - A059995 (A238111 n).toNat

end

end A150653.P13708131186064417629

/-! ## A150653.P9984894427971933193

`A004396(A129878(n+1)+A000389(n))`
-/

namespace A150653.P9984894427971933193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A129878 (n + 1) + A000389 n).toNat

end

end A150653.P9984894427971933193

/-!
# A150654: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150654, there is no canonical definition to state claims against.
-/

/-! ## A150654.P16173420755393434310

`∑[A219652(a(n-2)+(n+1)²*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A150654.P16173420755393434310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  A219652 (f1 (n - 2) + ((n + 1) ^ 2 : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150654.P16173420755393434310

/-! ## A150654.P11534902295963176454

`A026514(A150270(n))`
-/

namespace A150654.P11534902295963176454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026514 (A150270 n).toNat

end

end A150654.P11534902295963176454

/-!
# A150655: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150655, there is no canonical definition to state claims against.
-/

/-! ## A150655.P1240920310553346949

`round(sqrt((A332638(C(2*n, 2)+1)+1)*(n+1)))`
-/

namespace A150655.P1240920310553346949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A332638 (Nat.choose (2 * n) 2 + 1) + 1) * (n + 1 : ℤ) : ℝ))

end

end A150655.P1240920310553346949

/-! ## A150655.P14523127401993679635

`A248227(A151082(n))`
-/

namespace A150655.P14523127401993679635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A151082 n).toNat

end

end A150655.P14523127401993679635

/-!
# A150656: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150656, there is no canonical definition to state claims against.
-/

/-! ## A150656.P4560310627568347098

`A004526(A150662(n)+A150632(n))`
-/

namespace A150656.P4560310627568347098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150662 n + A150632 n).toNat

end

end A150656.P4560310627568347098

/-! ## A150656.P9025311055882881378

`A026741(A150662(n)+A150632(n))`
-/

namespace A150656.P9025311055882881378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A150662 n + A150632 n).toNat

end

end A150656.P9025311055882881378

/-! ## A150656.P17862540372782524755

`A271478(A150662(n)+A150632(n))`
-/

namespace A150656.P17862540372782524755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 (A150662 n + A150632 n).toNat

end

end A150656.P17862540372782524755

/-!
# A150657: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150657, there is no canonical definition to state claims against.
-/

/-! ## A150657.P8046845879759897821

`A209061(A150636(n))`
-/

namespace A150657.P8046845879759897821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (A150636 n).toNat

end

end A150657.P8046845879759897821

/-! ## A150657.P8485624905661756454

`A150656(n)+A025437(A126674(n))`
-/

namespace A150657.P8485624905661756454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150656 n + A025437 (A126674 n).toNat

end

end A150657.P8485624905661756454

/-! ## A150657.P3899934842819740449

`A185238(A059610(n+1))+A150656(n)`
-/

namespace A150657.P3899934842819740449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A059610 (n + 1)).toNat + A150656 n

end

end A150657.P3899934842819740449

/-!
# A150658: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A150658, there is no canonical definition to state claims against.
-/

/-! ## A150658.P6237018810517891922

`A050296(A026375(n))`
-/

namespace A150658.P6237018810517891922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A026375 n).toNat

end

end A150658.P6237018810517891922

/-! ## A150658.P8359137828182116077

`A050296(∑[A085362(n)])`
-/

namespace A150658.P8359137828182116077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150658.P8359137828182116077

/-!
# A150659: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150659, there is no canonical definition to state claims against.
-/

/-! ## A150659.P319739683551287047

`A209081(A151115(n))`
-/

namespace A150659.P319739683551287047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A151115 n).toNat

end

end A150659.P319739683551287047

/-!
# A150660: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150660, there is no canonical definition to state claims against.
-/

/-! ## A150660.P17567673733648999409

`A008621(Δ[A150849(n)])`
-/

namespace A150660.P17567673733648999409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A150660.P17567673733648999409

/-! ## A150660.P10303424437268037000

`∑[A117910(∑[A017967(n)])]`
-/

namespace A150660.P10303424437268037000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150660.P10303424437268037000

/-!
# A150661: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150661, there is no canonical definition to state claims against.
-/

/-! ## A150661.P15898004603406462788

`∑[A039960(A150636(n)+n)]`
-/

namespace A150661.P15898004603406462788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (A150636 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150661.P15898004603406462788

/-! ## A150661.P3861481338105517906

`A247781(A005825(n+1))`
-/

namespace A150661.P3861481338105517906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A005825 (n + 1)).toNat

end

end A150661.P3861481338105517906

/-!
# A150662: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150662, there is no canonical definition to state claims against.
-/

/-! ## A150662.P14007806145264410613

`A005843(A150656(n))-A150632(n)`
-/

namespace A150662.P14007806145264410613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150656 n).toNat - A150632 n

end

end A150662.P14007806145264410613

/-! ## A150662.P7925213150657223598

`A215000(A150972(n))-A150972(n)`
-/

namespace A150662.P7925213150657223598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (A150972 n).toNat - A150972 n

end

end A150662.P7925213150657223598

/-! ## A150662.P17514695242964696325

`2*A150656(n)-A004526(A150651(n)+A150624(n))`
-/

namespace A150662.P17514695242964696325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A150656 n - A004526 (A150651 n + A150624 n).toNat

end

end A150662.P17514695242964696325

/-!
# A150663: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150663, there is no canonical definition to state claims against.
-/

/-! ## A150663.P4566566383403741248

`A066658(A122010(n+1))`
-/

namespace A150663.P4566566383403741248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066658 (A122010 (n + 1)).toNat

end

end A150663.P4566566383403741248

/-! ## A150663.P15289703497406949287

`A138999(A151134(n+1))`
-/

namespace A150663.P15289703497406949287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A151134 (n + 1)).toNat

end

end A150663.P15289703497406949287

/-!
# A150664: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150664, there is no canonical definition to state claims against.
-/

/-! ## A150664.P17143502596534828

`A064775(A178577(n+1))`
-/

namespace A150664.P17143502596534828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A178577 (n + 1)).toNat

end

end A150664.P17143502596534828

/-! ## A150664.P5353952203241211611

`A008615(A135160(n))+A000108(n)`
-/

namespace A150664.P5353952203241211611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A135160 n).toNat + A000108 n

end

end A150664.P5353952203241211611

/-!
# A150665: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150665, there is no canonical definition to state claims against.
-/

/-! ## A150665.P1925996296636872813

`A150666(A001096(n))`
-/

namespace A150665.P1925996296636872813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150666 (A001096 n).toNat

end

end A150665.P1925996296636872813

/-! ## A150665.P5534752144224466047

`A150666(A214815(n)+n)`
-/

namespace A150665.P5534752144224466047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150666 (A214815 n + (n : ℤ)).toNat

end

end A150665.P5534752144224466047

/-!
# A150667: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150667, there is no canonical definition to state claims against.
-/

/-! ## A150667.P3107538278903268155

`∑[A246663(A174465(n))]`
-/

namespace A150667.P3107538278903268155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246663 (A174465 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150667.P3107538278903268155

/-! ## A150667.P11980594368873548238

`A160162(A049960(n+1))`
-/

namespace A150667.P11980594368873548238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A049960 (n + 1)).toNat

end

end A150667.P11980594368873548238

/-!
# A150668: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150668, there is no canonical definition to state claims against.
-/

/-! ## A150668.P7326915550995536084

`∑[A157271(A071741(n))-A181318(n)]`
-/

namespace A150668.P7326915550995536084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A071741 n).toNat - A181318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150668.P7326915550995536084

/-! ## A150668.P9147876172590227095

`A261585(A333369(n+1)+A149566(n+2))`
-/

namespace A150668.P9147876172590227095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A333369 (n + 1) + A149566 (n + 2)).toNat

end

end A150668.P9147876172590227095

/-!
# A150669: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150669, there is no canonical definition to state claims against.
-/

/-! ## A150669.P13895229316021673552

`A325763(A291247(n))`
-/

namespace A150669.P13895229316021673552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A291247 n).toNat

end

end A150669.P13895229316021673552

/-! ## A150669.P10184499239626715797

`A071500(Δ[A001654(n)²])`
-/

namespace A150669.P10184499239626715797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071500 (f1 (n + 1) - f1 n).toNat

end

end A150669.P10184499239626715797

/-!
# A150670: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150670, there is no canonical definition to state claims against.
-/

/-! ## A150670.P15814460777258620477

`A157271(Δ[n²]*A088704(n))`
-/

namespace A150670.P15814460777258620477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A088704 n).toNat

end

end A150670.P15814460777258620477

/-! ## A150670.P1729451331532192065

`A157271(Δ[n²]*A341072(n))`
-/

namespace A150670.P1729451331532192065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A341072 n).toNat

end

end A150670.P1729451331532192065

/-!
# A150671: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A150671, there is no canonical definition to state claims against.
-/

/-! ## A150671.P3239685322877004024

`A130986(A130907(n)+C(n, 2))`
-/

namespace A150671.P3239685322877004024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130986 (A130907 n + (Nat.choose n 2 : ℤ)).toNat

end

end A150671.P3239685322877004024

/-! ## A150671.P18076336749222856769

`A349157(A001519(n))+A066186(n)`
-/

namespace A150671.P18076336749222856769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349157 (A001519 n).toNat + A066186 n

end

end A150671.P18076336749222856769

/-!
# A150672: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150672, there is no canonical definition to state claims against.
-/

/-! ## A150672.P4900114173854977620

`∑[A115510(A115451(n)²)]`
-/

namespace A150672.P4900114173854977620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A115451 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150672.P4900114173854977620

/-! ## A150672.P13927832781162861128

`A216454(n)-A124010(A052801(n))`
-/

namespace A150672.P13927832781162861128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216454 n - A124010 (A052801 n).toNat

end

end A150672.P13927832781162861128

/-!
# A150673: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A150673, there is no canonical definition to state claims against.
-/

/-! ## A150673.P8784893095767141088

`A071528(A148776(n+1))`
-/

namespace A150673.P8784893095767141088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071528 (A148776 (n + 1)).toNat

end

end A150673.P8784893095767141088

/-! ## A150673.P8136924075157586303

`A028310(A114898(A001541(n))+n)`
-/

namespace A150673.P8136924075157586303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A114898 (A001541 n).toNat + (n : ℤ)).toNat

end

end A150673.P8136924075157586303

/-!
# A150674: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150674, there is no canonical definition to state claims against.
-/

/-! ## A150674.P14177343025684280100

`A114806(A350009(n+2))+floor(2*4^n/5)`
-/

namespace A150674.P14177343025684280100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A350009 (n + 2)).toNat + ⌊2 * ((4 ^ n : ℚ) / 5)⌋

end

end A150674.P14177343025684280100

/-!
# A150675: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150675, there is no canonical definition to state claims against.
-/

/-! ## A150675.P9122107988334161219

`A150673(n)+A002262(A327200(n))`
-/

namespace A150675.P9122107988334161219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150673 n + A002262 (A327200 n).toNat

end

end A150675.P9122107988334161219

/-! ## A150675.P10858366008063130469

`A008616(A076197(n+1)+A060867(n+1))`
-/

namespace A150675.P10858366008063130469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A076197 (n + 1) + A060867 (n + 1)).toNat

end

end A150675.P10858366008063130469

/-!
# A150676: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, -1), (0, 1, 1), (1, 1, 1)}.

The programs for A150676, there is no canonical definition to state claims against.
-/

/-! ## A150676.P5695381807150610668

`A004178(A150677(n))`
-/

namespace A150676.P5695381807150610668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A150677 n).toNat

end

end A150676.P5695381807150610668

/-! ## A150676.P17017702443828459227

`A150677(A073789(n))`
-/

namespace A150676.P17017702443828459227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150677 (A073789 n).toNat

end

end A150676.P17017702443828459227

/-! ## A150676.P15729746826744480356

`A150677(A171644(n))`
-/

namespace A150676.P15729746826744480356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150677 (A171644 n).toNat

end

end A150676.P15729746826744480356

/-! ## A150676.P4473647259583844512

`A150677(A004869(n+1))`
-/

namespace A150676.P4473647259583844512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150677 (A004869 (n + 1)).toNat

end

end A150676.P4473647259583844512

/-!
# A150680: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150680, there is no canonical definition to state claims against.
-/

/-! ## A150680.P13657036942012262427

`xor(A150681(n), A321797(A179344(n+1)))`
-/

namespace A150680.P13657036942012262427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150681 n) (A321797 (A179344 (n + 1)).toNat)

end

end A150680.P13657036942012262427

/-! ## A150680.P16385797745548868124

`A004151(A150681(n))`
-/

namespace A150680.P16385797745548868124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150681 n).toNat

end

end A150680.P16385797745548868124

/-! ## A150680.P25605768140007684

`A150681(A073789(n))`
-/

namespace A150680.P25605768140007684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150681 (A073789 n).toNat

end

end A150680.P25605768140007684

/-! ## A150680.P15525184955729323399

`A150681(A171644(n))`
-/

namespace A150680.P15525184955729323399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150681 (A171644 n).toNat

end

end A150680.P15525184955729323399

/-!
# A150681: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150681, there is no canonical definition to state claims against.
-/

/-! ## A150681.P5973245442570249899

`xor(A150680(n), A321797(A179344(n+1)))`
-/

namespace A150681.P5973245442570249899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150680 n) (A321797 (A179344 (n + 1)).toNat)

end

end A150681.P5973245442570249899

/-!
# A150682: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150682, there is no canonical definition to state claims against.
-/

/-! ## A150682.P3724822057733779478

`A004277(A150684(n))-A150692(n)`
-/

namespace A150682.P3724822057733779478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150684 n).toNat - A150692 n

end

end A150682.P3724822057733779478

/-! ## A150682.P5735817296591707716

`A004277(A150685(n))-A150694(n)`
-/

namespace A150682.P5735817296591707716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150685 n).toNat - A150694 n

end

end A150682.P5735817296591707716

/-! ## A150682.P14434046044739603960

`A004277(A150691(n))-A150707(n)`
-/

namespace A150682.P14434046044739603960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150691 n).toNat - A150707 n

end

end A150682.P14434046044739603960

/-!
# A150683: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150683, there is no canonical definition to state claims against.
-/

/-! ## A150683.P2684271834791701386

`A127388(A150645(n))`
-/

namespace A150683.P2684271834791701386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 (A150645 n).toNat

end

end A150683.P2684271834791701386

/-! ## A150683.P600220881648613646

`A076885(A237646(n)+A152187(n))`
-/

namespace A150683.P600220881648613646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A237646 n + A152187 n).toNat

end

end A150683.P600220881648613646

/-!
# A150684: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150684, there is no canonical definition to state claims against.
-/

/-! ## A150684.P17307146974655212584

`A178798(2^n-1)+A150685(n)`
-/

namespace A150684.P17307146974655212584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (2 ^ n - 1) + A150685 n

end

end A150684.P17307146974655212584

/-! ## A150684.P17385064036938242144

`A004525(A150692(n)+A150682(n))`
-/

namespace A150684.P17385064036938242144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150692 n + A150682 n).toNat

end

end A150684.P17385064036938242144

/-! ## A150684.P14075920831037661036

`A006370(A150692(n)+A150682(n))`
-/

namespace A150684.P14075920831037661036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A150692 n + A150682 n).toNat

end

end A150684.P14075920831037661036

/-!
# A150685: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150685, there is no canonical definition to state claims against.
-/

/-! ## A150685.P17960268618644320082

`A014682(A150694(n)+A150682(n))`
-/

namespace A150685.P17960268618644320082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A150694 n + A150682 n).toNat

end

end A150685.P17960268618644320082

/-! ## A150685.P6220871503743078283

`A150682(n)+A004525(A150694(n)-A150682(n))`
-/

namespace A150685.P6220871503743078283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150682 n + A004525 (A150694 n - A150682 n).toNat

end

end A150685.P6220871503743078283

/-! ## A150685.P370036986107954375

`A004277(A150693(n))-A150702(n)`
-/

namespace A150685.P370036986107954375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150693 n).toNat - A150702 n

end

end A150685.P370036986107954375

/-!
# A150686: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, -1), (1, 1, 1)}.

The programs for A150686, there is no canonical definition to state claims against.
-/

/-! ## A150686.P3892195000237739181

`A254109(and(A150687(n), A150709(n)))`
-/

namespace A150686.P3892195000237739181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (Int.land (A150687 n) (A150709 n)).toNat

end

end A150686.P3892195000237739181

/-! ## A150686.P4030093520699810028

`A150687(A001096(n))`
-/

namespace A150686.P4030093520699810028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150687 (A001096 n).toNat

end

end A150686.P4030093520699810028

/-!
# A150689: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150689, there is no canonical definition to state claims against.
-/

/-! ## A150689.P1570690363529588009

`A004277(A150690(n))-A150695(n)`
-/

namespace A150689.P1570690363529588009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150690 n).toNat - A150695 n

end

end A150689.P1570690363529588009

/-! ## A150689.P1932330536863725256

`A004277(A150698(n))-A150707(n)`
-/

namespace A150689.P1932330536863725256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150698 n).toNat - A150707 n

end

end A150689.P1932330536863725256

/-! ## A150689.P10881294756235028471

`A004277(A150699(n))-A150708(n)`
-/

namespace A150689.P10881294756235028471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150708 n

end

end A150689.P10881294756235028471

/-!
# A150690: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150690, there is no canonical definition to state claims against.
-/

/-! ## A150690.P15583788475960014329

`A326139(A150695(n)+A150689(n))`
-/

namespace A150690.P15583788475960014329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A150695 n + A150689 n).toNat

end

end A150690.P15583788475960014329

/-! ## A150690.P6112759131930963006

`A004277(A150699(n))-A150706(n)`
-/

namespace A150690.P6112759131930963006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150706 n

end

end A150690.P6112759131930963006

/-! ## A150690.P11056571833016161880

`A150691(A073788(n))`
-/

namespace A150690.P11056571833016161880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150691 (A073788 n).toNat

end

end A150690.P11056571833016161880

/-!
# A150692: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150692, there is no canonical definition to state claims against.
-/

/-! ## A150692.P17190788834595204395

`A004277(A150684(n))-A150682(n)`
-/

namespace A150692.P17190788834595204395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150684 n).toNat - A150682 n

end

end A150692.P17190788834595204395

/-! ## A150692.P1098680089490839017

`A004277(A150693(n))-A150694(n)`
-/

namespace A150692.P1098680089490839017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150693 n).toNat - A150694 n

end

end A150692.P1098680089490839017

/-! ## A150692.P8568989809299804168

`A004277(A150698(n))-A150705(n)`
-/

namespace A150692.P8568989809299804168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150698 n).toNat - A150705 n

end

end A150692.P8568989809299804168

/-! ## A150692.P7885792858756791283

`A004277(A150700(n))-A150707(n)`
-/

namespace A150692.P7885792858756791283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150700 n).toNat - A150707 n

end

end A150692.P7885792858756791283

/-!
# A150693: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150693, there is no canonical definition to state claims against.
-/

/-! ## A150693.P2228665339699835932

`A004277(A150685(n))-A150682(n)-A334246(2*n+1)`
-/

namespace A150693.P2228665339699835932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150685 n).toNat - A150682 n - A334246 (2 * n + 1)

end

end A150693.P2228665339699835932

/-! ## A150693.P5804709050089711806

`A004277(A150701(n))-A150707(n)-A334246(2*n+1)`
-/

namespace A150693.P5804709050089711806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150701 n).toNat - A150707 n - A334246 (2 * n + 1)

end

end A150693.P5804709050089711806

/-! ## A150693.P15097645416496906829

`A004525(A150694(n)+A150692(n))`
-/

namespace A150693.P15097645416496906829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150694 n + A150692 n).toNat

end

end A150693.P15097645416496906829

/-!
# A150694: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150694, there is no canonical definition to state claims against.
-/

/-! ## A150694.P15962667812437441065

`A004277(A150685(n))-A150682(n)`
-/

namespace A150694.P15962667812437441065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150685 n).toNat - A150682 n

end

end A150694.P15962667812437441065

/-! ## A150694.P15158001420424703713

`A004277(A150693(n))-A150692(n)`
-/

namespace A150694.P15158001420424703713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150693 n).toNat - A150692 n

end

end A150694.P15158001420424703713

/-! ## A150694.P11943834224753498372

`A004277(A150701(n))-A150707(n)`
-/

namespace A150694.P11943834224753498372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150701 n).toNat - A150707 n

end

end A150694.P11943834224753498372

/-!
# A150695: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150695, there is no canonical definition to state claims against.
-/

/-! ## A150695.P2118198786594051572

`A004277(A150690(n))-A150689(n)`
-/

namespace A150695.P2118198786594051572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150690 n).toNat - A150689 n

end

end A150695.P2118198786594051572

/-! ## A150695.P4004752886052597282

`A004277(A150699(n))-A150705(n)`
-/

namespace A150695.P4004752886052597282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150705 n

end

end A150695.P4004752886052597282

/-! ## A150695.P10141525595031154292

`A004277(A150702(n))-A150708(n)`
-/

namespace A150695.P10141525595031154292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150702 n).toNat - A150708 n

end

end A150695.P10141525595031154292

/-! ## A150695.P9144337917191035829

`2*(A004277(A150693(n))-A150685(n))-A150708(n)`
-/

namespace A150695.P9144337917191035829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004277 (A150693 n).toNat - A150685 n) - A150708 n

end

end A150695.P9144337917191035829

/-!
# A150696: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150696, there is no canonical definition to state claims against.
-/

/-! ## A150696.P15086800412764334839

`A184156(A114500(n))+A150691(n)`
-/

namespace A150696.P15086800412764334839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184156 (A114500 n).toNat + A150691 n

end

end A150696.P15086800412764334839

/-! ## A150696.P12535583492137032828

`A370713(n)-A349219(A002275(n))`
-/

namespace A150696.P12535583492137032828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370713 n - A349219 (A002275 n).toNat

end

end A150696.P12535583492137032828

/-!
# A150697: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 0, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150697, there is no canonical definition to state claims against.
-/

/-! ## A150697.P11578914593507440620

`A150698(A001096(n))`
-/

namespace A150697.P11578914593507440620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150698 (A001096 n).toNat

end

end A150697.P11578914593507440620

/-!
# A150698: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150698, there is no canonical definition to state claims against.
-/

/-! ## A150698.P7995466710473144145

`A004525(A150705(n)+A150692(n))`
-/

namespace A150698.P7995466710473144145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150705 n + A150692 n).toNat

end

end A150698.P7995466710473144145

/-! ## A150698.P13361261802772125263

`A004526(A150705(n)+A150692(n))`
-/

namespace A150698.P13361261802772125263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150705 n + A150692 n).toNat

end

end A150698.P13361261802772125263

/-! ## A150698.P9122393721024718409

`A004525(A150707(n)+A150689(n))`
-/

namespace A150698.P9122393721024718409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150707 n + A150689 n).toNat

end

end A150698.P9122393721024718409

/-!
# A150699: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150699, there is no canonical definition to state claims against.
-/

/-! ## A150699.P4653029696650409910

`A326139(A150705(n)+A150695(n))`
-/

namespace A150699.P4653029696650409910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A150705 n + A150695 n).toNat

end

end A150699.P4653029696650409910

/-! ## A150699.P12123308558268249467

`A326139(A150706(n)+A150690(n))`
-/

namespace A150699.P12123308558268249467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (A150706 n + A150690 n).toNat

end

end A150699.P12123308558268249467

/-! ## A150699.P17210335462263080191

`A004525(A150705(n)+A150695(n))`
-/

namespace A150699.P17210335462263080191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150705 n + A150695 n).toNat

end

end A150699.P17210335462263080191

