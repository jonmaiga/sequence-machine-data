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
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
# A314800: Coordination sequence Gal.6.46.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314800, there is no canonical definition to state claims against.
-/

/-! ## A314800.P6744960304903388611

`A315160(n)-A134667(A004396(n))`
-/

namespace A314800.P6744960304903388611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315160 n - A134667 (A004396 n).toNat

end

end A314800.P6744960304903388611

/-! ## A314800.P16517601892386111833

`eq[A039930(n+1), A194841(n+1)]`
-/

namespace A314800.P16517601892386111833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314800.P16517601892386111833

/-! ## A314800.P2630350472596855998

`eq[A039930(n+1), A194865(n+1)]`
-/

namespace A314800.P2630350472596855998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314800.P2630350472596855998

/-! ## A314800.P8705215273753598473

`eq[A039930(n+1), A194911(n+1)]`
-/

namespace A314800.P8705215273753598473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314800.P8705215273753598473

/-! ## A314800.P16678434320986363563

`A324696(A156007(n+1))-A156007(n+1)`
-/

namespace A314800.P16678434320986363563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324696 (A156007 (n + 1)).toNat - A156007 (n + 1)

end

end A314800.P16678434320986363563

/-!
# A314801: Coordination sequence Gal.5.15.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314801, there is no canonical definition to state claims against.
-/

/-! ## A314801.P8732320029273051523

`xor(A084888(A033129(n)), A314838(n))`
-/

namespace A314801.P8732320029273051523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084888 (A033129 n).toNat) (A314838 n)

end

end A314801.P8732320029273051523

/-! ## A314801.P9770695248583767052

`xor(A159780(A027941(n)), A301293(n))`
-/

namespace A314801.P9770695248583767052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159780 (A027941 n).toNat) (A301293 n)

end

end A314801.P9770695248583767052

/-! ## A314801.P2596962423881995907

`A047262(3*(n+1))-A002102(A224798(2*(n+1)))`
-/

namespace A314801.P2596962423881995907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (3 * (n + 1)) - A002102 (A224798 (2 * (n + 1))).toNat

end

end A314801.P2596962423881995907

/-! ## A314801.P15957492057091479702

`A314657(n)+A024316(A060816(n))`
-/

namespace A314801.P15957492057091479702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314657 n + A024316 (A060816 n).toNat

end

end A314801.P15957492057091479702

/-!
# A314802: Coordination sequence Gal.6.76.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314802, there is no canonical definition to state claims against.
-/

/-! ## A314802.P13510991746127317503

`A005117(3*n+1)-A007814(A153713(n+1))`
-/

namespace A314802.P13510991746127317503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A007814 (A153713 (n + 1)).toNat

end

end A314802.P13510991746127317503

/-! ## A314802.P10459647995537785923

`A314801(n)+A107846(A026937(n))`
-/

namespace A314802.P10459647995537785923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314801 n + A107846 (A026937 n).toNat

end

end A314802.P10459647995537785923

/-! ## A314802.P153600599782194802

`A314801(n)+A055641(A102468(n))`
-/

namespace A314802.P153600599782194802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314801 n + A055641 (A102468 n).toNat

end

end A314802.P153600599782194802

/-! ## A314802.P9137054510974150558

`A314424(n)+A005614(A290206(n))`
-/

namespace A314802.P9137054510974150558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314424 n + A005614 (A290206 n).toNat

end

end A314802.P9137054510974150558

/-! ## A314802.P17136178996151450738

`A353464(A185625(n))+A314801(n)`
-/

namespace A314802.P17136178996151450738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A185625 n).toNat + A314801 n

end

end A314802.P17136178996151450738

/-!
# A314803: Coordination sequence Gal.6.371.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314803, there is no canonical definition to state claims against.
-/

/-! ## A314803.P18031755904687231179

`A250120(n)-A186492(A008294(n))`
-/

namespace A314803.P18031755904687231179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A186492 (A008294 n).toNat

end

end A314803.P18031755904687231179

/-! ## A314803.P11899227624811104280

`A250120(n)-A089050(A205498(n))`
-/

namespace A314803.P11899227624811104280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A089050 (A205498 n).toNat

end

end A314803.P11899227624811104280

/-! ## A314803.P13151863390513483169

`A250120(n)-A259895(A212500(n+1))`
-/

namespace A314803.P13151863390513483169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A259895 (A212500 (n + 1)).toNat

end

end A314803.P13151863390513483169

/-! ## A314803.P17555317069712861409

`A250120(n)-A153248(A064580(3*n))`
-/

namespace A314803.P17555317069712861409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A153248 (A064580 (3 * n)).toNat

end

end A314803.P17555317069712861409

/-! ## A314803.P6687796647033699777

`A314897(n)-A108352(A066186(3*(n+1)))`
-/

namespace A314803.P6687796647033699777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314897 n - A108352 (A066186 (3 * (n + 1))).toNat

end

end A314803.P6687796647033699777

/-!
# A314804: Coordination sequence Gal.6.429.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314804, there is no canonical definition to state claims against.
-/

/-! ## A314804.P7967050171552171333

`A001221(A302632(n+1))+4*n`
-/

namespace A314804.P7967050171552171333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302632 (n + 1)).toNat + (4 * n : ℤ)

end

end A314804.P7967050171552171333

/-! ## A314804.P16667221692125926619

`A311718(n)+A010051(A007717(n))`
-/

namespace A314804.P16667221692125926619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311718 n + A010051 (A007717 n).toNat

end

end A314804.P16667221692125926619

/-! ## A314804.P12001059248505563375

`A276793(A114713(n))+A004938(n)`
-/

namespace A314804.P12001059248505563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276793 (A114713 n).toNat + A004938 n

end

end A314804.P12001059248505563375

/-! ## A314804.P3648228474884670927

`A311684(n)+A001222(A084643(n))`
-/

namespace A314804.P3648228474884670927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311684 n + A001222 (A084643 n).toNat

end

end A314804.P3648228474884670927

/-! ## A314804.P10340210900888198977

`A029903(3*n+1)-A000002(A003963(n+1))`
-/

namespace A314804.P10340210900888198977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (3 * n + 1) - A000002 (A003963 (n + 1)).toNat

end

end A314804.P10340210900888198977

/-!
# A314805: Coordination sequence Gal.5.190.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314805, there is no canonical definition to state claims against.
-/

/-! ## A314805.P1328792464559119727

`A314804(n)+A014082(A001606(3*n+1))`
-/

namespace A314805.P1328792464559119727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314804 n + A014082 (A001606 (3 * n + 1)).toNat

end

end A314805.P1328792464559119727

/-! ## A314805.P15773539615643764510

`A358371(A094310(n+1))+4*n`
-/

namespace A314805.P15773539615643764510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A094310 (n + 1)).toNat + (4 * n : ℤ)

end

end A314805.P15773539615643764510

/-! ## A314805.P12356391824948144456

`xor(A173636(A052905(n)), A311167(n))`
-/

namespace A314805.P12356391824948144456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A173636 (A052905 n).toNat) (A311167 n)

end

end A314805.P12356391824948144456

/-! ## A314805.P1057366246429394154

`record[A190889(n+1)-A089408(n)]`
-/

namespace A314805.P1057366246429394154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190889 (n + 1) - A089408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314805.P1057366246429394154

/-! ## A314805.P16402562096617838019

`lt[A194998(n+1)+1, A166478(2*n+5)]`
-/

namespace A314805.P16402562096617838019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166478 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A314805.P16402562096617838019

/-!
# A314806: Coordination sequence Gal.6.532.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314806, there is no canonical definition to state claims against.
-/

/-! ## A314806.P138911438944373005

`or(A301688(n), A327187(A262321(n)))`
-/

namespace A314806.P138911438944373005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301688 n) (A327187 (A262321 n).toNat)

end

end A314806.P138911438944373005

/-! ## A314806.P2168359265308770777

`xor(A000989(A146721(n+1)), A314885(n))`
-/

namespace A314806.P2168359265308770777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000989 (A146721 (n + 1)).toNat) (A314885 n)

end

end A314806.P2168359265308770777

/-! ## A314806.P6195599040117274673

`A211985(A003338(n+1))+4*n`
-/

namespace A314806.P6195599040117274673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211985 (A003338 (n + 1)).toNat + (4 * n : ℤ)

end

end A314806.P6195599040117274673

/-! ## A314806.P8681763083239366639

`A001414(A000079(2*n))+n%floor(sqrt(n+1))+1`
-/

namespace A314806.P8681763083239366639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000079 (2 * n)).toNat + ((n % Nat.sqrt (n + 1) + 1 : ℕ) : ℤ)

end

end A314806.P8681763083239366639

/-! ## A314806.P8428029383339813742

`A066099(A228960(n+1))+A008586(n)`
-/

namespace A314806.P8428029383339813742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A228960 (n + 1)).toNat + A008586 n

end

end A314806.P8428029383339813742

/-!
# A314807: Coordination sequence Gal.6.528.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314807, there is no canonical definition to state claims against.
-/

/-! ## A314807.P9483198452272471870

`A049236(A266232(n+1))+A008586(n)`
-/

namespace A314807.P9483198452272471870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049236 (A266232 (n + 1)).toNat + A008586 n

end

end A314807.P9483198452272471870

/-! ## A314807.P11455457754792019821

`A193804(A126324(n+1))+4*n+1`
-/

namespace A314807.P11455457754792019821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193804 (A126324 (n + 1)).toNat + (4 * n + 1 : ℤ)

end

end A314807.P11455457754792019821

/-! ## A314807.P878004745896724791

`A099075(A003242(n))+A016813(n)`
-/

namespace A314807.P878004745896724791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099075 (A003242 n).toNat + A016813 n

end

end A314807.P878004745896724791

/-! ## A314807.P9674030342482694514

`A315255(n)-A001221(A150003(n))`
-/

namespace A314807.P9674030342482694514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n - A001221 (A150003 n).toNat

end

end A314807.P9674030342482694514

/-! ## A314807.P17424804026696180227

`A315255(n)-A001221(A150004(n))`
-/

namespace A314807.P17424804026696180227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n - A001221 (A150004 n).toNat

end

end A314807.P17424804026696180227

/-!
# A314808: Coordination sequence Gal.6.532.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314808, there is no canonical definition to state claims against.
-/

/-! ## A314808.P17751049306708390821

`A314809(n)-A002262(A309864(n))`
-/

namespace A314808.P17751049306708390821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314809 n - A002262 (A309864 n).toNat

end

end A314808.P17751049306708390821

/-! ## A314808.P3157662287351122505

`A314809(n)-A185284(A097921(n))`
-/

namespace A314808.P3157662287351122505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314809 n - A185284 (A097921 n).toNat

end

end A314808.P3157662287351122505

/-! ## A314808.P6494958964339610578

`A314809(n)-A163805(A200713(n+1))`
-/

namespace A314808.P6494958964339610578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314809 n - A163805 (A200713 (n + 1)).toNat

end

end A314808.P6494958964339610578

/-! ## A314808.P16732799639032936295

`A314809(A087051(n))`
-/

namespace A314808.P16732799639032936295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314809 (A087051 n).toNat

end

end A314808.P16732799639032936295

/-! ## A314808.P2879417537694623388

`A314809(A227549(n+1))`
-/

namespace A314808.P2879417537694623388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314809 (A227549 (n + 1)).toNat

end

end A314808.P2879417537694623388

/-!
# A314809: Coordination sequence Gal.6.531.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314809, there is no canonical definition to state claims against.
-/

/-! ## A314809.P6841604488803390301

`A314808(n)+A185284(A097921(n))`
-/

namespace A314809.P6841604488803390301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314808 n + A185284 (A097921 n).toNat

end

end A314809.P6841604488803390301

/-! ## A314809.P16095383915753316183

`A311173(n)+A001222(A180084(n+1))`
-/

namespace A314809.P16095383915753316183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311173 n + A001222 (A180084 (n + 1)).toNat

end

end A314809.P16095383915753316183

/-!
# A314810: Coordination sequence Gal.5.241.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314810, there is no canonical definition to state claims against.
-/

/-! ## A314810.P2919359323503322709

`A191979(3*n+2)+A014306(A039943(n))`
-/

namespace A314810.P2919359323503322709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191979 (3 * n + 2) + A014306 (A039943 n).toNat

end

end A314810.P2919359323503322709

/-! ## A314810.P3394290746123959806

`A301301(n)+A000120(A007043(n+1))`
-/

namespace A314810.P3394290746123959806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A000120 (A007043 (n + 1)).toNat

end

end A314810.P3394290746123959806

/-! ## A314810.P13530065253680952398

`A215816(n+1)+A119395(A003500(n))`
-/

namespace A314810.P13530065253680952398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215816 (n + 1) + A119395 (A003500 n).toNat

end

end A314810.P13530065253680952398

/-! ## A314810.P7950289009637546525

`A116621(2*n+3)-A060582(A196265(n+1))`
-/

namespace A314810.P7950289009637546525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (2 * n + 3) - A060582 (A196265 (n + 1)).toNat

end

end A314810.P7950289009637546525

/-!
# A314811: Coordination sequence Gal.5.254.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314811, there is no canonical definition to state claims against.
-/

/-! ## A314811.P16700059228836507238

`A304882(6*n+3)-A001221(n+2)`
-/

namespace A314811.P16700059228836507238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304882 (6 * n + 3) - A001221 (n + 2)

end

end A314811.P16700059228836507238

/-! ## A314811.P15874545164663571720

`A322306(A022144(n))+A311225(n)`
-/

namespace A314811.P15874545164663571720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (A022144 n).toNat + A311225 n

end

end A314811.P15874545164663571720

/-! ## A314811.P3691769954959586362

`A323437(A022144(n))+A029741(2*n+1)`
-/

namespace A314811.P3691769954959586362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (A022144 n).toNat + A029741 (2 * n + 1)

end

end A314811.P3691769954959586362

/-! ## A314811.P12909451034712084628

`A313004(n)+A057078(A218667(n))`
-/

namespace A314811.P12909451034712084628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313004 n + A057078 (A218667 n).toNat

end

end A314811.P12909451034712084628

/-! ## A314811.P3413826853542267265

`A250120(n)-A340831(A052372(n))`
-/

namespace A314811.P3413826853542267265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A340831 (A052372 n).toNat

end

end A314811.P3413826853542267265

/-!
# A314812: Coordination sequence Gal.6.360.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314812, there is no canonical definition to state claims against.
-/

/-! ## A314812.P17357220850977340528

`A313698(n)-A319514(A288425(n+1))`
-/

namespace A314812.P17357220850977340528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A319514 (A288425 (n + 1)).toNat

end

end A314812.P17357220850977340528

/-! ## A314812.P11740437280445941808

`A094500(A006218(2*n+3))-A070939(n+4)`
-/

namespace A314812.P11740437280445941808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A006218 (2 * n + 3)).toNat - A070939 (n + 4)

end

end A314812.P11740437280445941808

/-! ## A314812.P5728296551863783843

`A267263(A002496(2*n+1))+A066026(2*n+1)`
-/

namespace A314812.P5728296551863783843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A002496 (2 * n + 1)).toNat + A066026 (2 * n + 1)

end

end A314812.P5728296551863783843

/-! ## A314812.P9884750649460424435

`∑[A281367(A003261(n+1))]`
-/

namespace A314812.P9884750649460424435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (A003261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314812.P9884750649460424435

/-! ## A314812.P5214370598964300838

`∑[A043555(A271269(3*n+4))]`
-/

namespace A314812.P5214370598964300838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A271269 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314812.P5214370598964300838

/-!
# A314813: Coordination sequence Gal.6.391.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314813, there is no canonical definition to state claims against.
-/

/-! ## A314813.P10284729638006893839

`record[A229125(3*n+1)-A002729(n)]`
-/

namespace A314813.P10284729638006893839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (3 * n + 1) - A002729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314813.P10284729638006893839

/-!
# A314814: Coordination sequence Gal.6.35.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314814, there is no canonical definition to state claims against.
-/

/-! ## A314814.P14090340045874846333

`A315671(n)-A001222(A150785(n))`
-/

namespace A314814.P14090340045874846333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - A001222 (A150785 n).toNat

end

end A314814.P14090340045874846333

/-! ## A314814.P8524278914801267560

`A008586(n)+A000120(A194090(n+1))`
-/

namespace A314814.P8524278914801267560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000120 (A194090 (n + 1)).toNat

end

end A314814.P8524278914801267560

/-! ## A314814.P8888058439467518152

`A335446(A033833(n+1))+A016813(n)`
-/

namespace A314814.P8888058439467518152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A033833 (n + 1)).toNat + A016813 n

end

end A314814.P8888058439467518152

/-! ## A314814.P5473242483912056959

`A321921(A250120(2*(n+1)))+A311945(n)`
-/

namespace A314814.P5473242483912056959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321921 (A250120 (2 * (n + 1))).toNat + A311945 n

end

end A314814.P5473242483912056959

/-! ## A314814.P1018336102285950884

`A024898(3*n+2)-A179010(A179016(3*n+2))`
-/

namespace A314814.P1018336102285950884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (3 * n + 2) - A179010 (A179016 (3 * n + 2)).toNat

end

end A314814.P1018336102285950884

/-!
# A314815: Coordination sequence Gal.4.84.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314815, the canonical program `A314815.P13275144322850493835` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314815 has offset 0).

The definition of A314815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314815.P13275144322850493835

`A008574(n)+A314264(n)-A310517(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A314815

/-- `A008574(n)+A314264(n)-A310517(n)` -/
def P13275144322850493835.Spec : Prop :=
  ∀ n, P13275144322850493835.a n = A314815 n

theorem P13275144322850493835.correct : P13275144322850493835.Spec := by
  intro n
  simp only [A314815]

end A314815

/-! ## A314815.P5879239775854226367

`record[A257088(n)]+A314264(n)-A310517(n)`
-/

namespace A314815.P5879239775854226367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A314264 n - A310517 n)

end

end A314815.P5879239775854226367

namespace A314815

/-- `record[A257088(n)]+A314264(n)-A310517(n)` -/
def P5879239775854226367.Spec : Prop :=
  ∀ n, P5879239775854226367.a n = A314815 n

end A314815

/-! ## A314815.P10850321879893025352

`A257088(2*n)+A314264(n)-A310517(n)`
-/

namespace A314815.P10850321879893025352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + (A314264 n - A310517 n)

end

end A314815.P10850321879893025352

namespace A314815

/-- `A257088(2*n)+A314264(n)-A310517(n)` -/
def P10850321879893025352.Spec : Prop :=
  ∀ n, P10850321879893025352.a n = A314815 n

end A314815

/-! ## A314815.P9107306350427566793

`record[A257088(n+1)]+A314264(n)%A310517(n)`
-/

namespace A314815.P9107306350427566793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod (A314264 n) (A310517 n)

end

end A314815.P9107306350427566793

namespace A314815

/-- `record[A257088(n+1)]+A314264(n)%A310517(n)` -/
def P9107306350427566793.Spec : Prop :=
  ∀ n, P9107306350427566793.a n = A314815 n

end A314815

/-! ## A314815.P2039642499004308608

`2*n+A008486(n)-n+A314264(n)-A310517(n)`
-/

namespace A314815.P2039642499004308608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A008486 n - (n : ℤ) + (A314264 n - A310517 n))

end

end A314815.P2039642499004308608

namespace A314815

/-- `2*n+A008486(n)-n+A314264(n)-A310517(n)` -/
def P2039642499004308608.Spec : Prop :=
  ∀ n, P2039642499004308608.a n = A314815 n

end A314815

/-!
# A314816: Coordination sequence Gal.6.77.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314816, there is no canonical definition to state claims against.
-/

/-! ## A314816.P7621078060423325546

`A311707(n)+A000120(A056654(n+1))`
-/

namespace A314816.P7621078060423325546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311707 n + A000120 (A056654 (n + 1)).toNat

end

end A314816.P7621078060423325546

/-! ## A314816.P2998816991377385794

`A250120(n)-A088432(A384072(n))`
-/

namespace A314816.P2998816991377385794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A088432 (A384072 n).toNat

end

end A314816.P2998816991377385794

/-! ## A314816.P1797164488977747167

`A250120(n)-A257992(A279560(n))`
-/

namespace A314816.P1797164488977747167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A257992 (A279560 n).toNat

end

end A314816.P1797164488977747167

/-! ## A314816.P7583785408144418593

`A250120(n)-A302354(A242391(n))`
-/

namespace A314816.P7583785408144418593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A302354 (A242391 n).toNat

end

end A314816.P7583785408144418593

/-! ## A314816.P15383275085188405895

`A250120(n)+A091371(A002961(n+1))`
-/

namespace A314816.P15383275085188405895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A091371 (A002961 (n + 1)).toNat

end

end A314816.P15383275085188405895

/-!
# A314817: Coordination sequence Gal.6.508.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314817, there is no canonical definition to state claims against.
-/

/-! ## A314817.P3188032580177368127

`A272670(2*n+1)-A272668(A082239(n+2))`
-/

namespace A314817.P3188032580177368127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272670 (2 * n + 1) - A272668 (A082239 (n + 2)).toNat

end

end A314817.P3188032580177368127

/-! ## A314817.P2149298668045391260

`A123731(or(floor(n/2), A052905(n)))`
-/

namespace A314817.P2149298668045391260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (Int.lor ⌊(n : ℚ) / 2⌋ (A052905 n)).toNat

end

end A314817.P2149298668045391260

/-! ## A314817.P6322583739894667298

`A314816(n)+A124762(A283089(n))`
-/

namespace A314817.P6322583739894667298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314816 n + A124762 (A283089 n).toNat

end

end A314817.P6322583739894667298

/-! ## A314817.P5319130214622974401

`A315247(n)-A001222(A151147(n))`
-/

namespace A314817.P5319130214622974401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315247 n - A001222 (A151147 n).toNat

end

end A314817.P5319130214622974401

/-! ## A314817.P10132206774567207654

`or(A001222(A033887(n)), A311382(n))`
-/

namespace A314817.P10132206774567207654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A033887 n).toNat) (A311382 n)

end

end A314817.P10132206774567207654

/-!
# A314818: Coordination sequence Gal.5.241.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314818, there is no canonical definition to state claims against.
-/

/-! ## A314818.P12987976614686652105

`A313075(n)-A014021(A125196(n))`
-/

namespace A314818.P12987976614686652105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 n - A014021 (A125196 n).toNat

end

end A314818.P12987976614686652105

/-! ## A314818.P1575807121567505751

`A314849(n)-A336355(A294768(n))`
-/

namespace A314818.P1575807121567505751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 n - A336355 (A294768 n).toNat

end

end A314818.P1575807121567505751

/-! ## A314818.P8538833020905294849

`A314849(n)-A271102(A200831(n+1))`
-/

namespace A314818.P8538833020905294849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 n - A271102 (A200831 (n + 1)).toNat

end

end A314818.P8538833020905294849

/-! ## A314818.P15235726823743652099

`A330025(A237427(n+2)+A000043(2*n+1))+A312948(n)`
-/

namespace A314818.P15235726823743652099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A237427 (n + 2) + A000043 (2 * n + 1)).toNat + A312948 n

end

end A314818.P15235726823743652099

/-!
# A314819: Coordination sequence Gal.5.240.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314819, there is no canonical definition to state claims against.
-/

/-! ## A314819.P6563180106839803906

`A314818(n)+A173636(A290995(n))`
-/

namespace A314819.P6563180106839803906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314818 n + A173636 (A290995 n).toNat

end

end A314819.P6563180106839803906

/-! ## A314819.P9332996981173073224

`A182847(A134869(n+1))-A010051(n+1)`
-/

namespace A314819.P9332996981173073224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182847 (A134869 (n + 1)).toNat - A010051 (n + 1)

end

end A314819.P9332996981173073224

/-! ## A314819.P11481879468026802840

`A123731(floor((2*n+1)²/8)+or(1, 3*n+1))`
-/

namespace A314819.P11481879468026802840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋ + (Nat.lor 1 (3 * n + 1) : ℤ)).toNat

end

end A314819.P11481879468026802840

/-! ## A314819.P9359535508570560933

`A311331(n)+A001221(A006603(n))`
-/

namespace A314819.P9359535508570560933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311331 n + A001221 (A006603 n).toNat

end

end A314819.P9359535508570560933

/-! ## A314819.P18372235539268305457

`A311301(n)+A001221(A255457(n))`
-/

namespace A314819.P18372235539268305457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311301 n + A001221 (A255457 n).toNat

end

end A314819.P18372235539268305457

/-!
# A314821: Coordination sequence Gal.6.444.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314821, there is no canonical definition to state claims against.
-/

/-! ## A314821.P15970495026533617083

`A314822(n)-A010060(A268587(n))`
-/

namespace A314821.P15970495026533617083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314822 n - A010060 (A268587 n).toNat

end

end A314821.P15970495026533617083

/-! ## A314821.P7416435771478291251

`A314822(n)-A235046(A283920(n+1))`
-/

namespace A314821.P7416435771478291251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314822 n - A235046 (A283920 (n + 1)).toNat

end

end A314821.P7416435771478291251

/-! ## A314821.P9154420563087465458

`A314822(n)-A056967(n)^A008779(n)`
-/

namespace A314821.P9154420563087465458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314822 n : ℚ) - (A056967 n : ℚ) ^ (A008779 n : ℤ)

end

end A314821.P9154420563087465458

/-! ## A314821.P6295009812740863479

`A314822(n)-A056967(n)^A028143(n)`
-/

namespace A314821.P6295009812740863479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314822 n : ℚ) - (A056967 n : ℚ) ^ (A028143 n : ℤ)

end

end A314821.P6295009812740863479

/-! ## A314821.P4683977775948761206

`A314822(A062399(n))`
-/

namespace A314821.P4683977775948761206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314822 (A062399 n).toNat

end

end A314821.P4683977775948761206

/-!
# A314822: Coordination sequence Gal.6.443.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314822, there is no canonical definition to state claims against.
-/

/-! ## A314822.P17254113300842702470

`A314821(n)+A010060(A268587(n))`
-/

namespace A314822.P17254113300842702470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314821 n + A010060 (A268587 n).toNat

end

end A314822.P17254113300842702470

/-! ## A314822.P10038057741404960659

`A324090(A001263(n+1))+A314821(n)`
-/

namespace A314822.P10038057741404960659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324090 (A001263 (n + 1)).toNat + A314821 n

end

end A314822.P10038057741404960659

/-! ## A314822.P5142891387122566675

`A314821(n)+A235046(A283920(n+1))`
-/

namespace A314822.P5142891387122566675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314821 n + A235046 (A283920 (n + 1)).toNat

end

end A314822.P5142891387122566675

/-!
# A314823: Coordination sequence Gal.5.265.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314823, there is no canonical definition to state claims against.
-/

/-! ## A314823.P2852287593428783578

`or(A196564(A179387(n+1)), A311235(n))`
-/

namespace A314823.P2852287593428783578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196564 (A179387 (n + 1)).toNat) (A311235 n)

end

end A314823.P2852287593428783578

/-! ## A314823.P9688548039192587549

`or(A196564(A179387(n+1)), A312428(n))`
-/

namespace A314823.P9688548039192587549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196564 (A179387 (n + 1)).toNat) (A312428 n)

end

end A314823.P9688548039192587549

/-! ## A314823.P8811404969386368888

`A077267(A036026(2*n+3))+A311868(n)-A016389((n+1)²)`
-/

namespace A314823.P8811404969386368888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A036026 (2 * n + 3)).toNat + (A311868 n - A016389 ((n + 1) ^ 2))

end

end A314823.P8811404969386368888

/-! ## A314823.P7277560062684668008

`A153199(A077739(n+1))+4*n`
-/

namespace A314823.P7277560062684668008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153199 (A077739 (n + 1)).toNat + (4 * n : ℤ)

end

end A314823.P7277560062684668008

/-! ## A314823.P11230420207043680565

`A301384(A361242(n))+A008586(n)`
-/

namespace A314823.P11230420207043680565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301384 (A361242 n).toNat + A008586 n

end

end A314823.P11230420207043680565

/-!
# A314824: Coordination sequence Gal.6.358.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314824, there is no canonical definition to state claims against.
-/

/-! ## A314824.P946664033704956488

`A314875(n)-A179831(A045663(n))`
-/

namespace A314824.P946664033704956488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314875 n - A179831 (A045663 n).toNat

end

end A314824.P946664033704956488

/-! ## A314824.P4966419638404343167

`A313514(n)-A286852(A098182(n))`
-/

namespace A314824.P4966419638404343167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313514 n - A286852 (A098182 n).toNat

end

end A314824.P4966419638404343167

/-! ## A314824.P2441676174592390947

`A008706(n)-A062977(A335317(n+1))`
-/

namespace A314824.P2441676174592390947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A062977 (A335317 (n + 1)).toNat

end

end A314824.P2441676174592390947

/-! ## A314824.P13901035866866605088

`A314875(n)-A179831(A082217(n+1))`
-/

namespace A314824.P13901035866866605088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314875 n - A179831 (A082217 (n + 1)).toNat

end

end A314824.P13901035866866605088

/-! ## A314824.P8844251084561700989

`A250198(n+1)-A010872(A085489(2*n+2))`
-/

namespace A314824.P8844251084561700989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250198 (n + 1) - A010872 (A085489 (2 * n + 2)).toNat

end

end A314824.P8844251084561700989

/-!
# A314825: Coordination sequence Gal.6.118.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314825, the canonical program `A314825.P2531780756375799267` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314825 has offset 0).

The definition of A314825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314825.P2531780756375799267

`A315517(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314825

/-- `A315517(n)-n` -/
def P2531780756375799267.Spec : Prop :=
  ∀ n, P2531780756375799267.a n = A314825 n

theorem P2531780756375799267.correct : P2531780756375799267.Spec := by
  intro n
  simp only [A314825]

end A314825

/-! ## A314825.P3569879920465498531

`A004396(A315315(n))+n`
-/

namespace A314825.P3569879920465498531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315315 n).toNat + (n : ℤ)

end

end A314825.P3569879920465498531

namespace A314825

/-- `A004396(A315315(n))+n` -/
def P3569879920465498531.Spec : Prop :=
  ∀ n, P3569879920465498531.a n = A314825 n

end A314825

/-! ## A314825.P827529665024217727

`A004396(A315462(n))+n`
-/

namespace A314825.P827529665024217727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315462 n).toNat + (n : ℤ)

end

end A314825.P827529665024217727

namespace A314825

/-- `A004396(A315462(n))+n` -/
def P827529665024217727.Spec : Prop :=
  ∀ n, P827529665024217727.a n = A314825 n

end A314825

/-! ## A314825.P11238534744472740522

`A315315(n)-A004396(n)`
-/

namespace A314825.P11238534744472740522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n - A004396 n

end

end A314825.P11238534744472740522

namespace A314825

/-- `A315315(n)-A004396(n)` -/
def P11238534744472740522.Spec : Prop :=
  ∀ n, P11238534744472740522.a n = A314825 n

end A314825

/-! ## A314825.P17033138470356308796

`A315258(n)-A004525(n)`
-/

namespace A314825.P17033138470356308796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315258 n - A004525 n

end

end A314825.P17033138470356308796

namespace A314825

/-- `A315258(n)-A004525(n)` -/
def P17033138470356308796.Spec : Prop :=
  ∀ n, P17033138470356308796.a n = A314825 n

end A314825

/-! ## A314825.P17727312794167397860

`A313688(n)-∑[A022003(n)]`
-/

namespace A314825.P17727312794167397860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314825.P17727312794167397860

namespace A314825

/-- `A313688(n)-∑[A022003(n)]` -/
def P17727312794167397860.Spec : Prop :=
  ∀ n, P17727312794167397860.a n = A314825 n

end A314825

/-! ## A314825.P11607717872677547344

`A313688(n)-A002264(n+1)`
-/

namespace A314825.P11607717872677547344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n - A002264 (n + 1)

end

end A314825.P11607717872677547344

namespace A314825

/-- `A313688(n)-A002264(n+1)` -/
def P11607717872677547344.Spec : Prop :=
  ∀ n, P11607717872677547344.a n = A314825 n

end A314825

/-! ## A314825.P6950169933175290173

`A315747(n)-A042965(n+1)`
-/

namespace A314825.P6950169933175290173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A042965 (n + 1)

end

end A314825.P6950169933175290173

namespace A314825

/-- `A315747(n)-A042965(n+1)` -/
def P6950169933175290173.Spec : Prop :=
  ∀ n, P6950169933175290173.a n = A314825 n

end A314825

/-! ## A314825.P3403708714427124866

`A004525(A314085(n))+2*n`
-/

namespace A314825.P3403708714427124866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314085 n).toNat + (2 * n : ℤ)

end

end A314825.P3403708714427124866

namespace A314825

/-- `A004525(A314085(n))+2*n` -/
def P3403708714427124866.Spec : Prop :=
  ∀ n, P3403708714427124866.a n = A314825 n

end A314825

/-! ## A314825.P7169322227847144676

`A315747(n)-A004396(2*n)`
-/

namespace A314825.P7169322227847144676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A004396 (2 * n)

end

end A314825.P7169322227847144676

namespace A314825

/-- `A315747(n)-A004396(2*n)` -/
def P7169322227847144676.Spec : Prop :=
  ∀ n, P7169322227847144676.a n = A314825 n

end A314825

/-! ## A314825.P1440355537469421667

`A004396(n)+A313688(n)-n`
-/

namespace A314825.P1440355537469421667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313688 n - (n : ℤ))

end

end A314825.P1440355537469421667

namespace A314825

/-- `A004396(n)+A313688(n)-n` -/
def P1440355537469421667.Spec : Prop :=
  ∀ n, P1440355537469421667.a n = A314825 n

end A314825

/-! ## A314825.P646642901758586523

`A004525(n)+A313824(n)-n`
-/

namespace A314825.P646642901758586523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313824 n - (n : ℤ))

end

end A314825.P646642901758586523

namespace A314825

/-- `A004525(n)+A313824(n)-n` -/
def P646642901758586523.Spec : Prop :=
  ∀ n, P646642901758586523.a n = A314825 n

end A314825

/-! ## A314825.P17611959282783198157

`A315315(n)-A002264(2*n+1)`
-/

namespace A314825.P17611959282783198157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n - A002264 (2 * n + 1)

end

end A314825.P17611959282783198157

namespace A314825

/-- `A315315(n)-A002264(2*n+1)` -/
def P17611959282783198157.Spec : Prop :=
  ∀ n, P17611959282783198157.a n = A314825 n

end A314825

/-! ## A314825.P10128119577648819397

`A004396(n)+A004396(A315741(n))`
-/

namespace A314825.P10128119577648819397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315741 n).toNat

end

end A314825.P10128119577648819397

namespace A314825

/-- `A004396(n)+A004396(A315741(n))` -/
def P10128119577648819397.Spec : Prop :=
  ∀ n, P10128119577648819397.a n = A314825 n

end A314825

/-! ## A314825.P17550964768396132685

`A004396(A313474(n)+A004396(n))+n`
-/

namespace A314825.P17550964768396132685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313474 n + A004396 n).toNat + (n : ℤ)

end

end A314825.P17550964768396132685

namespace A314825

/-- `A004396(A313474(n)+A004396(n))+n` -/
def P17550964768396132685.Spec : Prop :=
  ∀ n, P17550964768396132685.a n = A314825 n

end A314825

/-! ## A314825.P15101781313631187279

`A004396(A004525(n))+A313859(n)-n`
-/

namespace A314825.P15101781313631187279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313859 n - (n : ℤ))

end

end A314825.P15101781313631187279

namespace A314825

/-- `A004396(A004525(n))+A313859(n)-n` -/
def P15101781313631187279.Spec : Prop :=
  ∀ n, P15101781313631187279.a n = A314825 n

end A314825

/-! ## A314825.P8383913967102733025

`A008458(n)+A008576(n)-A311475(n)`
-/

namespace A314825.P8383913967102733025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311475 n)

end

end A314825.P8383913967102733025

namespace A314825

/-- `A008458(n)+A008576(n)-A311475(n)` -/
def P8383913967102733025.Spec : Prop :=
  ∀ n, P8383913967102733025.a n = A314825 n

end A314825

/-! ## A314825.P16955431288784921547

`A008458(n)+A008486(n)-A312950(n)`
-/

namespace A314825.P16955431288784921547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312950 n)

end

end A314825.P16955431288784921547

namespace A314825

/-- `A008458(n)+A008486(n)-A312950(n)` -/
def P16955431288784921547.Spec : Prop :=
  ∀ n, P16955431288784921547.a n = A314825 n

end A314825

/-! ## A314825.P10396846483215377326

`A008576(n)+A313688(n)-A008486(n)`
-/

namespace A314825.P10396846483215377326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313688 n - A008486 n)

end

end A314825.P10396846483215377326

namespace A314825

/-- `A008576(n)+A313688(n)-A008486(n)` -/
def P10396846483215377326.Spec : Prop :=
  ∀ n, P10396846483215377326.a n = A314825 n

end A314825

/-!
# A314826: Coordination sequence Gal.6.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314826, the canonical program `A314826.P16073624034831469492` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314826 has offset 0).

The definition of A314826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314826.P9398488065049046866

`(A315302(n)+A008574(n))/2`
-/

namespace A314826.P9398488065049046866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315302 n + A008574 n : ℚ) / 2

end

end A314826.P9398488065049046866

namespace A314826

/-- `(A315302(n)+A008574(n))/2` -/
def P9398488065049046866.Spec : Prop :=
  ∀ n, P9398488065049046866.a n = (A314826 n : ℚ)

end A314826

/-! ## A314826.P14797249173055682511

`A008574(n)+A001281(A315302(n)-A008574(n))`
-/

namespace A314826.P14797249173055682511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A315302 n - A008574 n).toNat

end

end A314826.P14797249173055682511

namespace A314826

/-- `A008574(n)+A001281(A315302(n)-A008574(n))` -/
def P14797249173055682511.Spec : Prop :=
  ∀ n, P14797249173055682511.a n = A314826 n

end A314826

/-! ## A314826.P16073624034831469492

`abs(A008592(n)-A314165(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A314826

/-- `abs(A008592(n)-A314165(n))` -/
def P16073624034831469492.Spec : Prop :=
  ∀ n, P16073624034831469492.a n = A314826 n

theorem P16073624034831469492.correct : P16073624034831469492.Spec := by
  intro n
  simp only [A314826]

end A314826

/-! ## A314826.P7507744567675920210

`A008458(n)+A008574(n)-A314165(n)`
-/

namespace A314826.P7507744567675920210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314165 n)

end

end A314826.P7507744567675920210

namespace A314826

/-- `A008458(n)+A008574(n)-A314165(n)` -/
def P7507744567675920210.Spec : Prop :=
  ∀ n, P7507744567675920210.a n = A314826 n

end A314826

/-! ## A314826.P9897606364508842349

`∑{d}[A008592(n)-A314165(n), A000010(#)]`
-/

namespace A314826.P9897606364508842349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314826.P9897606364508842349

namespace A314826

/-- `∑{d}[A008592(n)-A314165(n), A000010(#)]` -/
def P9897606364508842349.Spec : Prop :=
  ∀ n, P9897606364508842349.a n = A314826 n

end A314826

/-! ## A314826.P11724155305744868097

`A004525(A314086(n))+2*n`
-/

namespace A314826.P11724155305744868097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314086 n).toNat + (2 * n : ℤ)

end

end A314826.P11724155305744868097

namespace A314826

/-- `A004525(A314086(n))+2*n` -/
def P11724155305744868097.Spec : Prop :=
  ∀ n, P11724155305744868097.a n = A314826 n

end A314826

/-! ## A314826.P9077753572015703493

`A004525(A315444(n))+2*n`
-/

namespace A314826.P9077753572015703493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315444 n).toNat + (2 * n : ℤ)

end

end A314826.P9077753572015703493

namespace A314826

/-- `A004525(A315444(n))+2*n` -/
def P9077753572015703493.Spec : Prop :=
  ∀ n, P9077753572015703493.a n = A314826 n

end A314826

/-! ## A314826.P17246715717421811067

`A005843(n)+A004525(A314086(n))`
-/

namespace A314826.P17246715717421811067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314086 n).toNat

end

end A314826.P17246715717421811067

namespace A314826

/-- `A005843(n)+A004525(A314086(n))` -/
def P17246715717421811067.Spec : Prop :=
  ∀ n, P17246715717421811067.a n = A314826 n

end A314826

/-! ## A314826.P12727252022797283531

`A005843(n)+A004525(A315302(n))`
-/

namespace A314826.P12727252022797283531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315302 n).toNat

end

end A314826.P12727252022797283531

namespace A314826

/-- `A005843(n)+A004525(A315302(n))` -/
def P12727252022797283531.Spec : Prop :=
  ∀ n, P12727252022797283531.a n = A314826 n

end A314826

/-! ## A314826.P3817303305995679007

`A005843(n)+A004525(A315444(n))`
-/

namespace A314826.P3817303305995679007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315444 n).toNat

end

end A314826.P3817303305995679007

namespace A314826

/-- `A005843(n)+A004525(A315444(n))` -/
def P3817303305995679007.Spec : Prop :=
  ∀ n, P3817303305995679007.a n = A314826 n

end A314826

/-! ## A314826.P5936782065350568981

`A004526(A315302(n))+A004277(n)`
-/

namespace A314826.P5936782065350568981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315302 n).toNat + A004277 n

end

end A314826.P5936782065350568981

namespace A314826

/-- `A004526(A315302(n))+A004277(n)` -/
def P5936782065350568981.Spec : Prop :=
  ∀ n, P5936782065350568981.a n = A314826 n

end A314826

/-! ## A314826.P2678202504918019652

`A005843(A008458(n)-n)-A314165(n)`
-/

namespace A314826.P2678202504918019652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314165 n

end

end A314826.P2678202504918019652

namespace A314826

/-- `A005843(A008458(n)-n)-A314165(n)` -/
def P2678202504918019652.Spec : Prop :=
  ∀ n, P2678202504918019652.a n = A314826 n

end A314826

/-! ## A314826.P2977071585979787858

`A008458(n)+n-A004526(A310423(n))`
-/

namespace A314826.P2977071585979787858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310423 n).toNat)

end

end A314826.P2977071585979787858

namespace A314826

/-- `A008458(n)+n-A004526(A310423(n))` -/
def P2977071585979787858.Spec : Prop :=
  ∀ n, P2977071585979787858.a n = A314826 n

end A314826

/-! ## A314826.P9437965829656639231

`A004396(A313681(n)+2*n)`
-/

namespace A314826.P9437965829656639231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313681 n + (2 * n : ℤ)).toNat

end

end A314826.P9437965829656639231

namespace A314826

/-- `A004396(A313681(n)+2*n)` -/
def P9437965829656639231.Spec : Prop :=
  ∀ n, P9437965829656639231.a n = A314826 n

end A314826

/-! ## A314826.P17664499936157340527

`A004396(A313681(n)+n+n)`
-/

namespace A314826.P17664499936157340527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313681 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314826.P17664499936157340527

namespace A314826

/-- `A004396(A313681(n)+n+n)` -/
def P17664499936157340527.Spec : Prop :=
  ∀ n, P17664499936157340527.a n = A314826 n

end A314826

/-! ## A314826.P18211064244868261796

`A001281(A315302(n)+A008574(n))`
-/

namespace A314826.P18211064244868261796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315302 n + A008574 n).toNat

end

end A314826.P18211064244868261796

namespace A314826

/-- `A001281(A315302(n)+A008574(n))` -/
def P18211064244868261796.Spec : Prop :=
  ∀ n, P18211064244868261796.a n = A314826 n

end A314826

/-! ## A314826.P17743925428678091710

`A313514(A008458(n))-A008574(A008458(n))`
-/

namespace A314826.P17743925428678091710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313514 (A008458 n).toNat - A008574 (A008458 n).toNat

end

end A314826.P17743925428678091710

namespace A314826

/-- `A313514(A008458(n))-A008574(A008458(n))` -/
def P17743925428678091710.Spec : Prop :=
  ∀ n, P17743925428678091710.a n = A314826 n

end A314826

/-! ## A314826.P12338927532295053272

`A008458(A008458(2*n))-A314165(A008458(2*n))`
-/

namespace A314826.P12338927532295053272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 (2 * n)).toNat - A314165 (A008458 (2 * n)).toNat

end

end A314826.P12338927532295053272

namespace A314826

/-- `A008458(A008458(2*n))-A314165(A008458(2*n))` -/
def P12338927532295053272.Spec : Prop :=
  ∀ n, P12338927532295053272.a n = A314826 n

end A314826

/-!
# A314827: Coordination sequence Gal.5.53.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314827, the canonical program `A314827.P16340680457102647112` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314827 has offset 0).

The definition of A314827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314827.P3578528304646231756

`round(C(2, n+2)+n*(3/5+5))-comp[xor(2, 6*n)+3]`
-/

namespace A314827.P3578528304646231756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 2 (n + 2) : ℚ) + (n : ℚ) * ((3 : ℚ) / 5 + 5)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A314827.P3578528304646231756

namespace A314827

/-- `round(C(2, n+2)+n*(3/5+5))-comp[xor(2, 6*n)+3]` -/
def P3578528304646231756.Spec : Prop :=
  ∀ n, P3578528304646231756.a n = A314827 n

end A314827

/-! ## A314827.P16340680457102647112

`abs(A008591(n)-A312948(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314827

/-- `abs(A008591(n)-A312948(n))` -/
def P16340680457102647112.Spec : Prop :=
  ∀ n, P16340680457102647112.a n = A314827 n

theorem P16340680457102647112.correct : P16340680457102647112.Spec := by
  intro n
  simp only [A314827]

end A314827

/-! ## A314827.P11118849574566548397

`abs(A008592(n)-(A312948(n)+n))`
-/

namespace A314827.P11118849574566548397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312948 n + (n : ℤ))|

end

end A314827.P11118849574566548397

namespace A314827

/-- `abs(A008592(n)-(A312948(n)+n))` -/
def P11118849574566548397.Spec : Prop :=
  ∀ n, P11118849574566548397.a n = A314827 n

end A314827

/-! ## A314827.P4696948927157096154

`A047263(n+1)+A314670(n)-n`
-/

namespace A314827.P4696948927157096154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314670 n - (n : ℤ))

end

end A314827.P4696948927157096154

namespace A314827

/-- `A047263(n+1)+A314670(n)-n` -/
def P4696948927157096154.Spec : Prop :=
  ∀ n, P4696948927157096154.a n = A314827 n

end A314827

/-! ## A314827.P5391477939286094263

`A008458(n)+A008486(n)-A312948(n)`
-/

namespace A314827.P5391477939286094263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312948 n)

end

end A314827.P5391477939286094263

namespace A314827

/-- `A008458(n)+A008486(n)-A312948(n)` -/
def P5391477939286094263.Spec : Prop :=
  ∀ n, P5391477939286094263.a n = A314827 n

end A314827

/-! ## A314827.P13201444754146963643

`A330025(n)+A311958(n)`
-/

namespace A314827.P13201444754146963643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311958 n

end

end A314827.P13201444754146963643

namespace A314827

/-- `A330025(n)+A311958(n)` -/
def P13201444754146963643.Spec : Prop :=
  ∀ n, P13201444754146963643.a n = A314827 n

end A314827

/-! ## A314827.P5192121923623274352

`A008574(n)+A250120(n)-A311958(n)`
-/

namespace A314827.P5192121923623274352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A250120 n - A311958 n)

end

end A314827.P5192121923623274352

namespace A314827

/-- `A008574(n)+A250120(n)-A311958(n)` -/
def P5192121923623274352.Spec : Prop :=
  ∀ n, P5192121923623274352.a n = A314827 n

end A314827

/-! ## A314827.P15974159630356620691

`A005843(A008574(n))+n-A312948(n)`
-/

namespace A314827.P15974159630356620691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A312948 n)

end

end A314827.P15974159630356620691

namespace A314827

/-- `A005843(A008574(n))+n-A312948(n)` -/
def P15974159630356620691.Spec : Prop :=
  ∀ n, P15974159630356620691.a n = A314827 n

end A314827

/-! ## A314827.P8748217806289064564

`A313719(n)-Δ[A011858(n)]`
-/

namespace A314827.P8748217806289064564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - (f1 (n + 1) - f1 n)

end

end A314827.P8748217806289064564

namespace A314827

/-- `A313719(n)-Δ[A011858(n)]` -/
def P8748217806289064564.Spec : Prop :=
  ∀ n, P8748217806289064564.a n = A314827 n

end A314827

/-! ## A314827.P4232201772436839152

`(A315303(n)+A008574(n))/2`
-/

namespace A314827.P4232201772436839152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315303 n + A008574 n : ℚ) / 2

end

end A314827.P4232201772436839152

namespace A314827

/-- `(A315303(n)+A008574(n))/2` -/
def P4232201772436839152.Spec : Prop :=
  ∀ n, P4232201772436839152.a n = (A314827 n : ℚ)

end A314827

/-! ## A314827.P15236776832570976185

`A315468(n)-A057354(2*n+1)`
-/

namespace A314827.P15236776832570976185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A057354 (2 * n + 1)

end

end A314827.P15236776832570976185

namespace A314827

/-- `A315468(n)-A057354(2*n+1)` -/
def P15236776832570976185.Spec : Prop :=
  ∀ n, P15236776832570976185.a n = A314827 n

end A314827

/-! ## A314827.P16350387060836293359

`A110654(A057354(n))+A315468(n)-n`
-/

namespace A314827.P16350387060836293359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A057354 n).toNat + (A315468 n - (n : ℤ))

end

end A314827.P16350387060836293359

namespace A314827

/-- `A110654(A057354(n))+A315468(n)-n` -/
def P16350387060836293359.Spec : Prop :=
  ∀ n, P16350387060836293359.a n = A314827 n

end A314827

/-! ## A314827.P12290483060133618974

`A315518(n)-n`
-/

namespace A314827.P12290483060133618974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - (n : ℤ)

end

end A314827.P12290483060133618974

namespace A314827

/-- `A315518(n)-n` -/
def P12290483060133618974.Spec : Prop :=
  ∀ n, P12290483060133618974.a n = A314827 n

end A314827

/-! ## A314827.P7981044580109735889

`A313898(n)+A330025(n)-n`
-/

namespace A314827.P7981044580109735889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n + (A330025 n - (n : ℤ))

end

end A314827.P7981044580109735889

namespace A314827

/-- `A313898(n)+A330025(n)-n` -/
def P7981044580109735889.Spec : Prop :=
  ∀ n, P7981044580109735889.a n = A314827 n

end A314827

/-! ## A314827.P9182158970784112006

`A250120(n)+A315698(n)-A008458(n)`
-/

namespace A314827.P9182158970784112006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A315698 n - A008458 n)

end

end A314827.P9182158970784112006

namespace A314827

/-- `A250120(n)+A315698(n)-A008458(n)` -/
def P9182158970784112006.Spec : Prop :=
  ∀ n, P9182158970784112006.a n = A314827 n

end A314827

/-! ## A314827.P17365679753768073325

`A315525(n)-A151988(n)`
-/

namespace A314827.P17365679753768073325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315525 n - A151988 n

end

end A314827.P17365679753768073325

namespace A314827

/-- `A315525(n)-A151988(n)` -/
def P17365679753768073325.Spec : Prop :=
  ∀ n, P17365679753768073325.a n = A314827 n

end A314827

/-! ## A314827.P15986657018931760083

`A315761(n)-A047299(n+1)`
-/

namespace A314827.P15986657018931760083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047299 (n + 1)

end

end A314827.P15986657018931760083

namespace A314827

/-- `A315761(n)-A047299(n+1)` -/
def P15986657018931760083.Spec : Prop :=
  ∀ n, P15986657018931760083.a n = A314827 n

end A314827

/-! ## A314827.P12432232320397684732

`A004525(A314087(n))+2*n`
-/

namespace A314827.P12432232320397684732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314087 n).toNat + (2 * n : ℤ)

end

end A314827.P12432232320397684732

namespace A314827

/-- `A004525(A314087(n))+2*n` -/
def P12432232320397684732.Spec : Prop :=
  ∀ n, P12432232320397684732.a n = A314827 n

end A314827

/-! ## A314827.P11028553590807699357

`abs(A008593(n)-(A314164(n)+n))`
-/

namespace A314827.P11028553590807699357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A314164 n + (n : ℤ))|

end

end A314827.P11028553590807699357

namespace A314827

/-- `abs(A008593(n)-(A314164(n)+n))` -/
def P11028553590807699357.Spec : Prop :=
  ∀ n, P11028553590807699357.a n = A314827 n

end A314827

/-! ## A314827.P16722332486896675155

`A008458(n)+A008574(n)-A314164(n)`
-/

namespace A314827.P16722332486896675155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314164 n)

end

end A314827.P16722332486896675155

namespace A314827

/-- `A008458(n)+A008574(n)-A314164(n)` -/
def P16722332486896675155.Spec : Prop :=
  ∀ n, P16722332486896675155.a n = A314827 n

end A314827

/-!
# A314828: Coordination sequence Gal.5.64.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314828, the canonical program `A314828.P12558538320936083635` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314828 has offset 0).

The definition of A314828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314828.P10750254940537331563

`A314671(n)+Δ[A011862(n)]`
-/

namespace A314828.P10750254940537331563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + (f1 (n + 1) - f1 n)

end

end A314828.P10750254940537331563

namespace A314828

/-- `A314671(n)+Δ[A011862(n)]` -/
def P10750254940537331563.Spec : Prop :=
  ∀ n, P10750254940537331563.a n = A314828 n

end A314828

/-! ## A314828.P12558538320936083635

`A312932(2*n)+A312932(n+1)-A312932(2*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314828

/-- `A312932(2*n)+A312932(n+1)-A312932(2*n+1)` -/
def P12558538320936083635.Spec : Prop :=
  ∀ n, P12558538320936083635.a n = A314828 n

theorem P12558538320936083635.correct : P12558538320936083635.Spec := by
  intro n
  simp only [A314828]

end A314828

/-! ## A314828.P15655281894057844918

`A004396(n)+A314671(n)-A004396(A004396(n))`
-/

namespace A314828.P15655281894057844918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314671 n - A004396 (A004396 n).toNat)

end

end A314828.P15655281894057844918

namespace A314828

/-- `A004396(n)+A314671(n)-A004396(A004396(n))` -/
def P15655281894057844918.Spec : Prop :=
  ∀ n, P15655281894057844918.a n = A314828 n

end A314828

/-! ## A314828.P714927138875390219

`A008458(n)+A008574(n)-A311458(n)-A042965(n+1)`
-/

namespace A314828.P714927138875390219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311458 n) - A042965 (n + 1)

end

end A314828.P714927138875390219

namespace A314828

/-- `A008458(n)+A008574(n)-A311458(n)-A042965(n+1)` -/
def P714927138875390219.Spec : Prop :=
  ∀ n, P714927138875390219.a n = A314828 n

end A314828

/-! ## A314828.P3877595022549337673

`A313683(n)-A004396(n-A004396(n))`
-/

namespace A314828.P3877595022549337673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314828.P3877595022549337673

namespace A314828

/-- `A313683(n)-A004396(n-A004396(n))` -/
def P3877595022549337673.Spec : Prop :=
  ∀ n, P3877595022549337673.a n = A314828 n

end A314828

/-! ## A314828.P11418678714507303580

`A315256(n)-A004396(A004396(n))`
-/

namespace A314828.P11418678714507303580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315256 n - A004396 (A004396 n).toNat

end

end A314828.P11418678714507303580

namespace A314828

/-- `A315256(n)-A004396(A004396(n))` -/
def P11418678714507303580.Spec : Prop :=
  ∀ n, P11418678714507303580.a n = A314828 n

end A314828

/-! ## A314828.P10536023166679039254

`(A315304(n)+A008574(n))/2`
-/

namespace A314828.P10536023166679039254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315304 n + A008574 n : ℚ) / 2

end

end A314828.P10536023166679039254

namespace A314828

/-- `(A315304(n)+A008574(n))/2` -/
def P10536023166679039254.Spec : Prop :=
  ∀ n, P10536023166679039254.a n = (A314828 n : ℚ)

end A314828

/-! ## A314828.P5776914204304961442

`A315535(n)-A004396(A004396(n)+n)`
-/

namespace A314828.P5776914204304961442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A314828.P5776914204304961442

namespace A314828

/-- `A315535(n)-A004396(A004396(n)+n)` -/
def P5776914204304961442.Spec : Prop :=
  ∀ n, P5776914204304961442.a n = A314828 n

end A314828

/-! ## A314828.P12903344880369746888

`abs(A008592(n)-A314163(n))`
-/

namespace A314828.P12903344880369746888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314163 n|

end

end A314828.P12903344880369746888

namespace A314828

/-- `abs(A008592(n)-A314163(n))` -/
def P12903344880369746888.Spec : Prop :=
  ∀ n, P12903344880369746888.a n = A314828 n

end A314828

/-! ## A314828.P16683648948015972525

`2*A008706(n)-A314163(n)`
-/

namespace A314828.P16683648948015972525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314163 n

end

end A314828.P16683648948015972525

namespace A314828

/-- `2*A008706(n)-A314163(n)` -/
def P16683648948015972525.Spec : Prop :=
  ∀ n, P16683648948015972525.a n = A314828 n

end A314828

/-! ## A314828.P8137351702178460714

`A008458(n)+A008574(n)-A314163(n)`
-/

namespace A314828.P8137351702178460714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314163 n)

end

end A314828.P8137351702178460714

namespace A314828

/-- `A008458(n)+A008574(n)-A314163(n)` -/
def P8137351702178460714.Spec : Prop :=
  ∀ n, P8137351702178460714.a n = A314828 n

end A314828

/-! ## A314828.P15583497384951238241

`A314163(n)-A005843(A314163(n)-A008706(n))`
-/

namespace A314828.P15583497384951238241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A005843 (A314163 n - A008706 n).toNat

end

end A314828.P15583497384951238241

namespace A314828

/-- `A314163(n)-A005843(A314163(n)-A008706(n))` -/
def P15583497384951238241.Spec : Prop :=
  ∀ n, P15583497384951238241.a n = A314828 n

end A314828

/-! ## A314828.P13861928260613354675

`A315748(n)-∑[A101825(n)]`
-/

namespace A314828.P13861928260613354675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314828.P13861928260613354675

namespace A314828

/-- `A315748(n)-∑[A101825(n)]` -/
def P13861928260613354675.Spec : Prop :=
  ∀ n, P13861928260613354675.a n = A314828 n

end A314828

/-! ## A314828.P5134184603917541613

`A315748(n)-record[A283971(n)]`
-/

namespace A314828.P5134184603917541613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314828.P5134184603917541613

namespace A314828

/-- `A315748(n)-record[A283971(n)]` -/
def P5134184603917541613.Spec : Prop :=
  ∀ n, P5134184603917541613.a n = A314828 n

end A314828

/-! ## A314828.P6950849298360793102

`A315748(n)-A042965(n+1)`
-/

namespace A314828.P6950849298360793102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A042965 (n + 1)

end

end A314828.P6950849298360793102

namespace A314828

/-- `A315748(n)-A042965(n+1)` -/
def P6950849298360793102.Spec : Prop :=
  ∀ n, P6950849298360793102.a n = A314828 n

end A314828

/-! ## A314828.P17641715443753538960

`A315748(n)-A004396(2*n)`
-/

namespace A314828.P17641715443753538960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A004396 (2 * n)

end

end A314828.P17641715443753538960

namespace A314828

/-- `A315748(n)-A004396(2*n)` -/
def P17641715443753538960.Spec : Prop :=
  ∀ n, P17641715443753538960.a n = A314828 n

end A314828

/-! ## A314828.P1050376061012321372

`A315748(n)-A002264(A005408(2*n))`
-/

namespace A314828.P1050376061012321372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A002264 (A005408 (2 * n)).toNat

end

end A314828.P1050376061012321372

namespace A314828

/-- `A315748(n)-A002264(A005408(2*n))` -/
def P1050376061012321372.Spec : Prop :=
  ∀ n, P1050376061012321372.a n = A314828 n

end A314828

/-! ## A314828.P920953243254896671

`A315748(n)-A004525(A004773(2*n))`
-/

namespace A314828.P920953243254896671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A004525 (A004773 (2 * n)).toNat

end

end A314828.P920953243254896671

namespace A314828

/-- `A315748(n)-A004525(A004773(2*n))` -/
def P920953243254896671.Spec : Prop :=
  ∀ n, P920953243254896671.a n = A314828 n

end A314828

/-! ## A314828.P3698510408394750587

`A004525(A314088(n))+2*n`
-/

namespace A314828.P3698510408394750587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314088 n).toNat + (2 * n : ℤ)

end

end A314828.P3698510408394750587

namespace A314828

/-- `A004525(A314088(n))+2*n` -/
def P3698510408394750587.Spec : Prop :=
  ∀ n, P3698510408394750587.a n = A314828 n

end A314828

/-! ## A314828.P15593275731347220640

`A315510(n)-A004396(A004396(2*n))`
-/

namespace A314828.P15593275731347220640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 n - A004396 (A004396 (2 * n)).toNat

end

end A314828.P15593275731347220640

namespace A314828

/-- `A315510(n)-A004396(A004396(2*n))` -/
def P15593275731347220640.Spec : Prop :=
  ∀ n, P15593275731347220640.a n = A314828 n

end A314828

/-!
# A314829: Coordination sequence Gal.4.41.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314829, the canonical program `A314829.P8333159363270422796` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314829 has offset 0).

The definition of A314829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A314829.P8333159363270422796

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=14, a(4)=18, a(5)=22, a(6)=27`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A314829

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P8333159363270422796.Spec : Prop :=
  ∀ n, P8333159363270422796.a n = A314829 n

theorem P8333159363270422796.correct : P8333159363270422796.Spec := by
  intro n
  simp only [A314829]

end A314829

/-! ## A314829.P7142490454988374840

`A312140(n)+A046978(n)`
-/

namespace A314829.P7142490454988374840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A046978 n

end

end A314829.P7142490454988374840

namespace A314829

/-- `A312140(n)+A046978(n)` -/
def P7142490454988374840.Spec : Prop :=
  ∀ n, P7142490454988374840.a n = A314829 n

end A314829

/-! ## A314829.P9583029645484286240

`A312943(n)+A188510(n)`
-/

namespace A314829.P9583029645484286240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A188510 n

end

end A314829.P9583029645484286240

namespace A314829

/-- `A312943(n)+A188510(n)` -/
def P9583029645484286240.Spec : Prop :=
  ∀ n, P9583029645484286240.a n = A314829 n

end A314829

/-! ## A314829.P1731248805804639017

`(A315306(n)+A008574(n))/2`
-/

namespace A314829.P1731248805804639017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315306 n + A008574 n : ℚ) / 2

end

end A314829.P1731248805804639017

namespace A314829

/-- `(A315306(n)+A008574(n))/2` -/
def P1731248805804639017.Spec : Prop :=
  ∀ n, P1731248805804639017.a n = (A314829 n : ℚ)

end A314829

/-! ## A314829.P4741254485965844321

`A311843(n)+A004525(A004525(n))`
-/

namespace A314829.P4741254485965844321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A004525 (A004525 n).toNat

end

end A314829.P4741254485965844321

namespace A314829

/-- `A311843(n)+A004525(A004525(n))` -/
def P4741254485965844321.Spec : Prop :=
  ∀ n, P4741254485965844321.a n = A314829 n

end A314829

/-! ## A314829.P3693550287299629222

`A312943(A008574(n))/2-A312943(n)`
-/

namespace A314829.P3693550287299629222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312943 (A008574 n).toNat : ℚ) / 2 - (A312943 n : ℚ)

end

end A314829.P3693550287299629222

namespace A314829

/-- `A312943(A008574(n))/2-A312943(n)` -/
def P3693550287299629222.Spec : Prop :=
  ∀ n, P3693550287299629222.a n = (A314829 n : ℚ)

end A314829

/-! ## A314829.P11865741262428607956

`A008458(n)+A008486(n)-A312943(n)`
-/

namespace A314829.P11865741262428607956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312943 n)

end

end A314829.P11865741262428607956

namespace A314829

/-- `A008458(n)+A008486(n)-A312943(n)` -/
def P11865741262428607956.Spec : Prop :=
  ∀ n, P11865741262428607956.a n = A314829 n

end A314829

/-! ## A314829.P15928882734331492508

`A315173(n)-A046978(A046978(n)+n)`
-/

namespace A314829.P15928882734331492508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A314829.P15928882734331492508

namespace A314829

/-- `A315173(n)-A046978(A046978(n)+n)` -/
def P15928882734331492508.Spec : Prop :=
  ∀ n, P15928882734331492508.a n = A314829 n

end A314829

/-! ## A314829.P11411843385421495062

`A313685(n)-A004525(n-A004525(n))`
-/

namespace A314829.P11411843385421495062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A314829.P11411843385421495062

namespace A314829

/-- `A313685(n)-A004525(n-A004525(n))` -/
def P11411843385421495062.Spec : Prop :=
  ∀ n, P11411843385421495062.a n = A314829 n

end A314829

/-! ## A314829.P1068562558506560225

`A004525(A004525(n))+A314896(n)-A004525(n)`
-/

namespace A314829.P1068562558506560225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A314896 n - A004525 n)

end

end A314829.P1068562558506560225

namespace A314829

/-- `A004525(A004525(n))+A314896(n)-A004525(n)` -/
def P1068562558506560225.Spec : Prop :=
  ∀ n, P1068562558506560225.a n = A314829 n

end A314829

/-! ## A314829.P9177768559504704367

`A315259(n)-A004525(n)`
-/

namespace A314829.P9177768559504704367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A004525 n

end

end A314829.P9177768559504704367

namespace A314829

/-- `A315259(n)-A004525(n)` -/
def P9177768559504704367.Spec : Prop :=
  ∀ n, P9177768559504704367.a n = A314829 n

end A314829

/-! ## A314829.P1915157591473042759

`A004525(n)+A313826(n)-n`
-/

namespace A314829.P1915157591473042759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313826 n - (n : ℤ))

end

end A314829.P1915157591473042759

namespace A314829

/-- `A004525(n)+A313826(n)-n` -/
def P1915157591473042759.Spec : Prop :=
  ∀ n, P1915157591473042759.a n = A314829 n

end A314829

/-! ## A314829.P1728794443883860565

`A004525(A004525(n))+A313875(n)-n`
-/

namespace A314829.P1728794443883860565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A313875 n - (n : ℤ))

end

end A314829.P1728794443883860565

namespace A314829

/-- `A004525(A004525(n))+A313875(n)-n` -/
def P1728794443883860565.Spec : Prop :=
  ∀ n, P1728794443883860565.a n = A314829 n

end A314829

/-! ## A314829.P5476429509427980869

`Δ[A011861(n)]+A315469(n)-n`
-/

namespace A314829.P5476429509427980869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315469 n - (n : ℤ))

end

end A314829.P5476429509427980869

namespace A314829

/-- `Δ[A011861(n)]+A315469(n)-n` -/
def P5476429509427980869.Spec : Prop :=
  ∀ n, P5476429509427980869.a n = A314829 n

end A314829

/-! ## A314829.P1773492885064108216

`A046978(n)+A313926(n)-n`
-/

namespace A314829.P1773492885064108216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313926 n - (n : ℤ))

end

end A314829.P1773492885064108216

namespace A314829

/-- `A046978(n)+A313926(n)-n` -/
def P1773492885064108216.Spec : Prop :=
  ∀ n, P1773492885064108216.a n = A314829 n

end A314829

/-! ## A314829.P16467301120725840079

`2*A008706(n)-A314161(n)`
-/

namespace A314829.P16467301120725840079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314161 n

end

end A314829.P16467301120725840079

namespace A314829

/-- `2*A008706(n)-A314161(n)` -/
def P16467301120725840079.Spec : Prop :=
  ∀ n, P16467301120725840079.a n = A314829 n

end A314829

/-! ## A314829.P11370898562970312858

`A188510(n)+A314161(n)-n`
-/

namespace A314829.P11370898562970312858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (A314161 n - (n : ℤ))

end

end A314829.P11370898562970312858

namespace A314829

/-- `A188510(n)+A314161(n)-n` -/
def P11370898562970312858.Spec : Prop :=
  ∀ n, P11370898562970312858.a n = A314829 n

end A314829

/-! ## A314829.P3638614050368134938

`A008458(n)+A008574(n)-A314161(n)`
-/

namespace A314829.P3638614050368134938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314161 n)

end

end A314829.P3638614050368134938

namespace A314829

/-- `A008458(n)+A008574(n)-A314161(n)` -/
def P3638614050368134938.Spec : Prop :=
  ∀ n, P3638614050368134938.a n = A314829 n

end A314829

/-! ## A314829.P1867391553943440287

`A315520(n)-n`
-/

namespace A314829.P1867391553943440287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (n : ℤ)

end

end A314829.P1867391553943440287

namespace A314829

/-- `A315520(n)-n` -/
def P1867391553943440287.Spec : Prop :=
  ∀ n, P1867391553943440287.a n = A314829 n

end A314829

/-! ## A314829.P16860812868319439868

`A038189(n)+A301291(n)-A038189(A301291(n))`
-/

namespace A314829.P16860812868319439868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + (A301291 n - A038189 (A301291 n).toNat)

end

end A314829.P16860812868319439868

namespace A314829

/-- `A038189(n)+A301291(n)-A038189(A301291(n))` -/
def P16860812868319439868.Spec : Prop :=
  ∀ n, P16860812868319439868.a n = A314829 n

end A314829

/-!
# A314830: Coordination sequence Gal.6.150.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314830, the canonical program `A314830.P17814670870789309722` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314830 has offset 0).

The definition of A314830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314830.P17814670870789309722

`A301672(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314830

/-- `A301672(n)+A004396(A004525(n))` -/
def P17814670870789309722.Spec : Prop :=
  ∀ n, P17814670870789309722.a n = A314830 n

theorem P17814670870789309722.correct : P17814670870789309722.Spec := by
  intro n
  simp only [A314830]

end A314830

/-! ## A314830.P10489525859372202325

`A008458(n)+A008576(n)-A311426(n)`
-/

namespace A314830.P10489525859372202325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311426 n)

end

end A314830.P10489525859372202325

namespace A314830

/-- `A008458(n)+A008576(n)-A311426(n)` -/
def P10489525859372202325.Spec : Prop :=
  ∀ n, P10489525859372202325.a n = A314830 n

end A314830

/-! ## A314830.P15271957072992599239

`A004396(A004525(n))+A301298(n)-A004525(n)`
-/

namespace A314830.P15271957072992599239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A301298 n - A004525 n)

end

end A314830.P15271957072992599239

namespace A314830

/-- `A004396(A004525(n))+A301298(n)-A004525(n)` -/
def P15271957072992599239.Spec : Prop :=
  ∀ n, P15271957072992599239.a n = A314830 n

end A314830

/-! ## A314830.P17101753152873276756

`A004525(A004396(n))+A314893(n)-A004525(n)`
-/

namespace A314830.P17101753152873276756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314893 n - A004525 n)

end

end A314830.P17101753152873276756

namespace A314830

/-- `A004525(A004396(n))+A314893(n)-A004525(n)` -/
def P17101753152873276756.Spec : Prop :=
  ∀ n, P17101753152873276756.a n = A314830 n

end A314830

/-! ## A314830.P4509648527206514639

`A313687(n)-A004396(n-A004525(n))`
-/

namespace A314830.P4509648527206514639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A314830.P4509648527206514639

namespace A314830

/-- `A313687(n)-A004396(n-A004525(n))` -/
def P4509648527206514639.Spec : Prop :=
  ∀ n, P4509648527206514639.a n = A314830 n

end A314830

/-! ## A314830.P17782710186070254471

`A313693(n)-∑[A022003(n)]`
-/

namespace A314830.P17782710186070254471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314830.P17782710186070254471

namespace A314830

/-- `A313693(n)-∑[A022003(n)]` -/
def P17782710186070254471.Spec : Prop :=
  ∀ n, P17782710186070254471.a n = A314830 n

end A314830

/-! ## A314830.P11333686274016125596

`A313693(n)-A002264(n+1)`
-/

namespace A314830.P11333686274016125596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A002264 (n + 1)

end

end A314830.P11333686274016125596

namespace A314830

/-- `A313693(n)-A002264(n+1)` -/
def P11333686274016125596.Spec : Prop :=
  ∀ n, P11333686274016125596.a n = A314830 n

end A314830

/-! ## A314830.P16973697731554654375

`A004396(n)+A313693(n)-n`
-/

namespace A314830.P16973697731554654375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313693 n - (n : ℤ))

end

end A314830.P16973697731554654375

namespace A314830

/-- `A004396(n)+A313693(n)-n` -/
def P16973697731554654375.Spec : Prop :=
  ∀ n, P16973697731554654375.a n = A314830 n

end A314830

/-! ## A314830.P10512832489857229674

`A008576(n)+A313693(n)-A008486(n)`
-/

namespace A314830.P10512832489857229674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313693 n - A008486 n)

end

end A314830.P10512832489857229674

namespace A314830

/-- `A008576(n)+A313693(n)-A008486(n)` -/
def P10512832489857229674.Spec : Prop :=
  ∀ n, P10512832489857229674.a n = A314830 n

end A314830

/-! ## A314830.P7835625836745569159

`A004396(n)+A314683(n)-A004525(n)`
-/

namespace A314830.P7835625836745569159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314683 n - A004525 n)

end

end A314830.P7835625836745569159

namespace A314830

/-- `A004396(n)+A314683(n)-A004525(n)` -/
def P7835625836745569159.Spec : Prop :=
  ∀ n, P7835625836745569159.a n = A314830 n

end A314830

/-! ## A314830.P15092610912198960671

`A004525(A004396(n))+A313872(n)-n`
-/

namespace A314830.P15092610912198960671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313872 n - (n : ℤ))

end

end A314830.P15092610912198960671

namespace A314830

/-- `A004525(A004396(n))+A313872(n)-n` -/
def P15092610912198960671.Spec : Prop :=
  ∀ n, P15092610912198960671.a n = A314830 n

end A314830

/-! ## A314830.P5416018692913946255

`abs(A008592(n)-A314159(n))`
-/

namespace A314830.P5416018692913946255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314159 n|

end

end A314830.P5416018692913946255

namespace A314830

/-- `abs(A008592(n)-A314159(n))` -/
def P5416018692913946255.Spec : Prop :=
  ∀ n, P5416018692913946255.a n = A314830 n

end A314830

/-! ## A314830.P8921143586641810361

`A008458(n)+A008574(n)-A314159(n)`
-/

namespace A314830.P8921143586641810361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314159 n)

end

end A314830.P8921143586641810361

namespace A314830

/-- `A008458(n)+A008574(n)-A314159(n)` -/
def P8921143586641810361.Spec : Prop :=
  ∀ n, P8921143586641810361.a n = A314830 n

end A314830

/-! ## A314830.P14346394819008895222

`∑{d}[A008592(n)-A314159(n), A000010(#)]`
-/

namespace A314830.P14346394819008895222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314830.P14346394819008895222

namespace A314830

/-- `∑{d}[A008592(n)-A314159(n), A000010(#)]` -/
def P14346394819008895222.Spec : Prop :=
  ∀ n, P14346394819008895222.a n = A314830 n

end A314830

/-! ## A314830.P5578203041651760515

`A315260(n)-A004525(n)`
-/

namespace A314830.P5578203041651760515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n - A004525 n

end

end A314830.P5578203041651760515

namespace A314830

/-- `A315260(n)-A004525(n)` -/
def P5578203041651760515.Spec : Prop :=
  ∀ n, P5578203041651760515.a n = A314830 n

end A314830

/-! ## A314830.P1423337765828747556

`A315260(n)-Δ[A054925(n)]`
-/

namespace A314830.P1423337765828747556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n - (f1 (n + 1) - f1 n)

end

end A314830.P1423337765828747556

namespace A314830

/-- `A315260(n)-Δ[A054925(n)]` -/
def P1423337765828747556.Spec : Prop :=
  ∀ n, P1423337765828747556.a n = A314830 n

end A314830

/-! ## A314830.P14321362632439781452

`A315538(n)-comp[A113804(n+1)]`
-/

namespace A314830.P14321362632439781452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314830.P14321362632439781452

namespace A314830

/-- `A315538(n)-comp[A113804(n+1)]` -/
def P14321362632439781452.Spec : Prop :=
  ∀ n, P14321362632439781452.a n = A314830 n

end A314830

/-! ## A314830.P2351029300839000403

`A315751(n)-record[A283971(n)]`
-/

namespace A314830.P2351029300839000403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314830.P2351029300839000403

namespace A314830

/-- `A315751(n)-record[A283971(n)]` -/
def P2351029300839000403.Spec : Prop :=
  ∀ n, P2351029300839000403.a n = A314830 n

end A314830

/-! ## A314830.P8829249903811153155

`A315751(n)-A042965(n+1)`
-/

namespace A314830.P8829249903811153155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - A042965 (n + 1)

end

end A314830.P8829249903811153155

namespace A314830

/-- `A315751(n)-A042965(n+1)` -/
def P8829249903811153155.Spec : Prop :=
  ∀ n, P8829249903811153155.a n = A314830 n

end A314830

/-!
# A314831: Coordination sequence Gal.6.611.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314831, there is no canonical definition to state claims against.
-/

/-! ## A314831.P15282011515373521416

`∑[A276273(∑[A276601(n+1)])]`
-/

namespace A314831.P15282011515373521416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276601 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314831.P15282011515373521416

/-! ## A314831.P13097354714630436859

`A180493(A008574(n))+A143537(n+1)`
-/

namespace A314831.P13097354714630436859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A008574 n).toNat + A143537 (n + 1)

end

end A314831.P13097354714630436859

/-! ## A314831.P16333037975216955108

`A063882(A330181(n+1)+A210607(n+1))`
-/

namespace A314831.P16333037975216955108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A330181 (n + 1) + A210607 (n + 1)).toNat

end

end A314831.P16333037975216955108

/-! ## A314831.P15974629974117574582

`A274384(A274384(2*(n+1)))-A087133(n+1)`
-/

namespace A314831.P15974629974117574582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (A274384 (2 * (n + 1))).toNat - A087133 (n + 1)

end

end A314831.P15974629974117574582

/-!
# A314832: Coordination sequence Gal.6.245.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314832, the canonical program `A314832.P15623759407353891444` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314832 has offset 0).

The definition of A314832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314832.P15623759407353891444

`abs(A008592(n)-A314157(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314832

/-- `abs(A008592(n)-A314157(n))` -/
def P15623759407353891444.Spec : Prop :=
  ∀ n, P15623759407353891444.a n = A314832 n

theorem P15623759407353891444.correct : P15623759407353891444.Spec := by
  intro n
  simp only [A314832]

end A314832

/-! ## A314832.P13484412901088901667

`2*A008706(n)-A314157(n)`
-/

namespace A314832.P13484412901088901667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314157 n

end

end A314832.P13484412901088901667

namespace A314832

/-- `2*A008706(n)-A314157(n)` -/
def P13484412901088901667.Spec : Prop :=
  ∀ n, P13484412901088901667.a n = A314832 n

end A314832

/-! ## A314832.P3170232791298364218

`A184418(A008574(n))-A314157(n)`
-/

namespace A314832.P3170232791298364218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A314157 n

end

end A314832.P3170232791298364218

namespace A314832

/-- `A184418(A008574(n))-A314157(n)` -/
def P3170232791298364218.Spec : Prop :=
  ∀ n, P3170232791298364218.a n = A314832 n

end A314832

/-! ## A314832.P5600789415230340389

`A008458(n)+A008574(n)-A314157(n)`
-/

namespace A314832.P5600789415230340389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314157 n)

end

end A314832.P5600789415230340389

namespace A314832

/-- `A008458(n)+A008574(n)-A314157(n)` -/
def P5600789415230340389.Spec : Prop :=
  ∀ n, P5600789415230340389.a n = A314832 n

end A314832

/-! ## A314832.P1902676740063767960

`A314157(n)-A005843(A314157(n)-A008706(n))`
-/

namespace A314832.P1902676740063767960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314157 n - A005843 (A314157 n - A008706 n).toNat

end

end A314832.P1902676740063767960

namespace A314832

/-- `A314157(n)-A005843(A314157(n)-A008706(n))` -/
def P1902676740063767960.Spec : Prop :=
  ∀ n, P1902676740063767960.a n = A314832 n

end A314832

/-! ## A314832.P3006509074800891511

`A005843(A008706(n))-A314157(n)`
-/

namespace A314832.P3006509074800891511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314157 n

end

end A314832.P3006509074800891511

namespace A314832

/-- `A005843(A008706(n))-A314157(n)` -/
def P3006509074800891511.Spec : Prop :=
  ∀ n, P3006509074800891511.a n = A314832 n

end A314832

/-! ## A314832.P3334147381232926945

`A315526(n)-A134119(A310526(n))`
-/

namespace A314832.P3334147381232926945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315526 n - A134119 (A310526 n).toNat

end

end A314832.P3334147381232926945

namespace A314832

/-- `A315526(n)-A134119(A310526(n))` -/
def P3334147381232926945.Spec : Prop :=
  ∀ n, P3334147381232926945.a n = A314832 n

end A314832

/-! ## A314832.P9006933148666395930

`A315526(n)-A134119(A314157(n))`
-/

namespace A314832.P9006933148666395930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315526 n - A134119 (A314157 n).toNat

end

end A314832.P9006933148666395930

namespace A314832

/-- `A315526(n)-A134119(A314157(n))` -/
def P9006933148666395930.Spec : Prop :=
  ∀ n, P9006933148666395930.a n = A314832 n

end A314832

/-! ## A314832.P110364231012570502

`A065502(A008458(n))-A314157(n)`
-/

namespace A314832.P110364231012570502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314157 n

end

end A314832.P110364231012570502

namespace A314832

/-- `A065502(A008458(n))-A314157(n)` -/
def P110364231012570502.Spec : Prop :=
  ∀ n, P110364231012570502.a n = A314832 n

end A314832

/-! ## A314832.P8035100483438274642

`A315177(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314832.P8035100483438274642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315177 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314832.P8035100483438274642

namespace A314832

/-- `A315177(2*n)/(4*n+2-A004277(2*n))` -/
def P8035100483438274642.Spec : Prop :=
  ∀ n, P8035100483438274642.a n = (A314832 n : ℚ)

end A314832

/-! ## A314832.P13585333320001672674

`A315177(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A314832.P13585333320001672674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315177 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A314832.P13585333320001672674

namespace A314832

/-- `A315177(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P13585333320001672674.Spec : Prop :=
  ∀ n, P13585333320001672674.a n = (A314832 n : ℚ)

end A314832

/-! ## A314832.P5234442924324537154

`A315470(2*n)+n-7*n`
-/

namespace A314832.P5234442924324537154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315470 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A314832.P5234442924324537154

namespace A314832

/-- `A315470(2*n)+n-7*n` -/
def P5234442924324537154.Spec : Prop :=
  ∀ n, P5234442924324537154.a n = A314832 n

end A314832

/-! ## A314832.P9523345061148864095

`A004525(A315177(2*n))`
-/

namespace A314832.P9523345061148864095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315177 (2 * n)).toNat

end

end A314832.P9523345061148864095

namespace A314832

/-- `A004525(A315177(2*n))` -/
def P9523345061148864095.Spec : Prop :=
  ∀ n, P9523345061148864095.a n = A314832 n

end A314832

/-! ## A314832.P14699942441195917145

`A004526(A315177(2*n)+1)`
-/

namespace A314832.P14699942441195917145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315177 (2 * n) + 1).toNat

end

end A314832.P14699942441195917145

namespace A314832

/-- `A004526(A315177(2*n)+1)` -/
def P14699942441195917145.Spec : Prop :=
  ∀ n, P14699942441195917145.a n = A314832 n

end A314832

/-! ## A314832.P13132779248371056697

`A004396(A315245(2*n))-A005843(n)`
-/

namespace A314832.P13132779248371056697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315245 (2 * n)).toNat - A005843 n

end

end A314832.P13132779248371056697

namespace A314832

/-- `A004396(A315245(2*n))-A005843(n)` -/
def P13132779248371056697.Spec : Prop :=
  ∀ n, P13132779248371056697.a n = A314832 n

end A314832

/-! ## A314832.P3068133328895697351

`A004396(A315404(2*n))-A005843(n)`
-/

namespace A314832.P3068133328895697351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315404 (2 * n)).toNat - A005843 n

end

end A314832.P3068133328895697351

namespace A314832

/-- `A004396(A315404(2*n))-A005843(n)` -/
def P3068133328895697351.Spec : Prop :=
  ∀ n, P3068133328895697351.a n = A314832 n

end A314832

/-! ## A314832.P16690011299977640097

`A233583(A017281(n))-A314157(n)`
-/

namespace A314832.P16690011299977640097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A314157 n

end

end A314832.P16690011299977640097

namespace A314832

/-- `A233583(A017281(n))-A314157(n)` -/
def P16690011299977640097.Spec : Prop :=
  ∀ n, P16690011299977640097.a n = A314832 n

end A314832

/-!
# A314833: Coordination sequence Gal.6.361.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314833, there is no canonical definition to state claims against.
-/

/-! ## A314833.P9751586583571176958

`A313727(n)-A105700(A127864(n))`
-/

namespace A314833.P9751586583571176958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313727 n - A105700 (A127864 n).toNat

end

end A314833.P9751586583571176958

/-! ## A314833.P12328018789763053745

`A314717(n)+A011736(A000244(n))`
-/

namespace A314833.P12328018789763053745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314717 n + A011736 (A000244 n).toNat

end

end A314833.P12328018789763053745

/-! ## A314833.P13684016544507632441

`A315029(n)-A152489(A152486(n+1))`
-/

namespace A314833.P13684016544507632441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315029 n - A152489 (A152486 (n + 1)).toNat

end

end A314833.P13684016544507632441

/-! ## A314833.P4283286341533285933

`A057354(A130321(n))+A000005(A064184(n))+4*n`
-/

namespace A314833.P4283286341533285933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A130321 n).toNat + (A000005 (A064184 n).toNat + (4 * n : ℤ))

end

end A314833.P4283286341533285933

/-!
# A314834: Coordination sequence Gal.6.308.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314834, there is no canonical definition to state claims against.
-/

/-! ## A314834.P13292328954063867727

`record[A314835(n)-A185274(n+2)]`
-/

namespace A314834.P13292328954063867727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A185274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314834.P13292328954063867727

/-! ## A314834.P1361955110420698677

`record[A314835(n)-A036427(n)]`
-/

namespace A314834.P1361955110420698677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A036427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314834.P1361955110420698677

/-! ## A314834.P8778899143931110749

`A314835(n)-A102683(A014378(n))`
-/

namespace A314834.P8778899143931110749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A102683 (A014378 n).toNat

end

end A314834.P8778899143931110749

/-! ## A314834.P987065145826693342

`A314835(n)-A102683(A046826(n))`
-/

namespace A314834.P987065145826693342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A102683 (A046826 n).toNat

end

end A314834.P987065145826693342

/-! ## A314834.P10137804892889619788

`A314835(n)-A185274(A309625(n))`
-/

namespace A314834.P10137804892889619788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314835 n - A185274 (A309625 n).toNat

end

end A314834.P10137804892889619788

/-!
# A314835: Coordination sequence Gal.6.307.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314835, there is no canonical definition to state claims against.
-/

/-! ## A314835.P12227145751040897888

`A314834(n)+∑[A014707(A022171(n))]`
-/

namespace A314835.P12227145751040897888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A022171 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314834 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314835.P12227145751040897888

/-! ## A314835.P2180113130641711740

`A314834(n)+∑[A058348(A131235(n))]`
-/

namespace A314835.P2180113130641711740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A131235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314834 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314835.P2180113130641711740

/-! ## A314835.P18033465115969795456

`A314834(n)+A102683(A014378(n))`
-/

namespace A314835.P18033465115969795456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314834 n + A102683 (A014378 n).toNat

end

end A314835.P18033465115969795456

/-! ## A314835.P7433422510165686212

`A314834(n)+A102683(A046826(n))`
-/

namespace A314835.P7433422510165686212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314834 n + A102683 (A046826 n).toNat

end

end A314835.P7433422510165686212

/-! ## A314835.P15040781790127739308

`A314834(n)+A185274(A309625(n))`
-/

namespace A314835.P15040781790127739308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314834 n + A185274 (A309625 n).toNat

end

end A314835.P15040781790127739308

/-!
# A314836: Coordination sequence Gal.6.131.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314836, the canonical program `A314836.P16168506338930918816` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314836 has offset 0).

The definition of A314836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314836.P16168506338930918816

`abs(A008591(n)-A312933(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314836

/-- `abs(A008591(n)-A312933(n))` -/
def P16168506338930918816.Spec : Prop :=
  ∀ n, P16168506338930918816.a n = A314836 n

theorem P16168506338930918816.correct : P16168506338930918816.Spec := by
  intro n
  simp only [A314836]

end A314836

/-! ## A314836.P1859501160378031672

`abs(A008592(n)-(A312933(n)+n))`
-/

namespace A314836.P1859501160378031672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312933 n + (n : ℤ))|

end

end A314836.P1859501160378031672

namespace A314836

/-- `abs(A008592(n)-(A312933(n)+n))` -/
def P1859501160378031672.Spec : Prop :=
  ∀ n, P1859501160378031672.a n = A314836 n

end A314836

/-! ## A314836.P9932789073322457977

`A008458(n)+A008486(n)-A312933(n)`
-/

namespace A314836.P9932789073322457977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312933 n)

end

end A314836.P9932789073322457977

namespace A314836

/-- `A008458(n)+A008486(n)-A312933(n)` -/
def P9932789073322457977.Spec : Prop :=
  ∀ n, P9932789073322457977.a n = A314836 n

end A314836

/-! ## A314836.P16777344006116009553

`A312933(A008574(n))/2-A312933(n)`
-/

namespace A314836.P16777344006116009553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312933 (A008574 n).toNat : ℚ) / 2 - (A312933 n : ℚ)

end

end A314836.P16777344006116009553

namespace A314836

/-- `A312933(A008574(n))/2-A312933(n)` -/
def P16777344006116009553.Spec : Prop :=
  ∀ n, P16777344006116009553.a n = (A314836 n : ℚ)

end A314836

/-! ## A314836.P12779156516680710855

`A004396(A004525(n))+A314893(n)-A004525(n)`
-/

namespace A314836.P12779156516680710855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314893 n - A004525 n)

end

end A314836.P12779156516680710855

namespace A314836

/-- `A004396(A004525(n))+A314893(n)-A004525(n)` -/
def P12779156516680710855.Spec : Prop :=
  ∀ n, P12779156516680710855.a n = A314836 n

end A314836

/-! ## A314836.P6557553662193077126

`A313702(n)-A002264(n+1)`
-/

namespace A314836.P6557553662193077126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n - A002264 (n + 1)

end

end A314836.P6557553662193077126

namespace A314836

/-- `A313702(n)-A002264(n+1)` -/
def P6557553662193077126.Spec : Prop :=
  ∀ n, P6557553662193077126.a n = A314836 n

end A314836

/-! ## A314836.P3871637778204623754

`A004396(n)+A313702(n)-n`
-/

namespace A314836.P3871637778204623754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313702 n - (n : ℤ))

end

end A314836.P3871637778204623754

namespace A314836

/-- `A004396(n)+A313702(n)-n` -/
def P3871637778204623754.Spec : Prop :=
  ∀ n, P3871637778204623754.a n = A314836 n

end A314836

/-! ## A314836.P8923848364386558998

`A008576(n)+A313702(n)-A008486(n)`
-/

namespace A314836.P8923848364386558998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313702 n - A008486 n)

end

end A314836.P8923848364386558998

namespace A314836

/-- `A008576(n)+A313702(n)-A008486(n)` -/
def P8923848364386558998.Spec : Prop :=
  ∀ n, P8923848364386558998.a n = A314836 n

end A314836

/-! ## A314836.P7805968648587131383

`A313693(n)-A004396(n-A004525(n))`
-/

namespace A314836.P7805968648587131383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A314836.P7805968648587131383

namespace A314836

/-- `A313693(n)-A004396(n-A004525(n))` -/
def P7805968648587131383.Spec : Prop :=
  ∀ n, P7805968648587131383.a n = A314836 n

end A314836

/-! ## A314836.P6424700397557655228

`A313829(n)-A004524(n+1)`
-/

namespace A314836.P6424700397557655228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n - A004524 (n + 1)

end

end A314836.P6424700397557655228

namespace A314836

/-- `A313829(n)-A004524(n+1)` -/
def P6424700397557655228.Spec : Prop :=
  ∀ n, P6424700397557655228.a n = A314836 n

end A314836

/-! ## A314836.P12065938623015098091

`A004525(n)+A313829(n)-n`
-/

namespace A314836.P12065938623015098091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313829 n - (n : ℤ))

end

end A314836.P12065938623015098091

namespace A314836

/-- `A004525(n)+A313829(n)-n` -/
def P12065938623015098091.Spec : Prop :=
  ∀ n, P12065938623015098091.a n = A314836 n

end A314836

/-! ## A314836.P16176432590905615796

`A004525(A004396(n))+A313884(n)-n`
-/

namespace A314836.P16176432590905615796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313884 n - (n : ℤ))

end

end A314836.P16176432590905615796

namespace A314836

/-- `A004525(A004396(n))+A313884(n)-n` -/
def P16176432590905615796.Spec : Prop :=
  ∀ n, P16176432590905615796.a n = A314836 n

end A314836

/-! ## A314836.P5637441653015697478

`A004396(A004525(n))+A313872(n)-n`
-/

namespace A314836.P5637441653015697478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313872 n - (n : ℤ))

end

end A314836.P5637441653015697478

namespace A314836

/-- `A004396(A004525(n))+A313872(n)-n` -/
def P5637441653015697478.Spec : Prop :=
  ∀ n, P5637441653015697478.a n = A314836 n

end A314836

/-! ## A314836.P16803684717633349396

`A315318(n)-A004396(n)`
-/

namespace A314836.P16803684717633349396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n - A004396 n

end

end A314836.P16803684717633349396

namespace A314836

/-- `A315318(n)-A004396(n)` -/
def P16803684717633349396.Spec : Prop :=
  ∀ n, P16803684717633349396.a n = A314836 n

end A314836

/-! ## A314836.P2831737618766753291

`A315318(n)-A002264(2*n+1)`
-/

namespace A314836.P2831737618766753291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n - A002264 (2 * n + 1)

end

end A314836.P2831737618766753291

namespace A314836

/-- `A315318(n)-A002264(2*n+1)` -/
def P2831737618766753291.Spec : Prop :=
  ∀ n, P2831737618766753291.a n = A314836 n

end A314836

/-! ## A314836.P8375560299275603093

`A008458(n)+A008574(n)-A314151(n)`
-/

namespace A314836.P8375560299275603093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314151 n)

end

end A314836.P8375560299275603093

namespace A314836

/-- `A008458(n)+A008574(n)-A314151(n)` -/
def P8375560299275603093.Spec : Prop :=
  ∀ n, P8375560299275603093.a n = A314836 n

end A314836

/-! ## A314836.P6926284814844286029

`A315522(n)-n`
-/

namespace A314836.P6926284814844286029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - (n : ℤ)

end

end A314836.P6926284814844286029

namespace A314836

/-- `A315522(n)-n` -/
def P6926284814844286029.Spec : Prop :=
  ∀ n, P6926284814844286029.a n = A314836 n

end A314836

/-! ## A314836.P1063280819612926913

`A004525(A314094(n))+2*n`
-/

namespace A314836.P1063280819612926913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314094 n).toNat + (2 * n : ℤ)

end

end A314836.P1063280819612926913

namespace A314836

/-- `A004525(A314094(n))+2*n` -/
def P1063280819612926913.Spec : Prop :=
  ∀ n, P1063280819612926913.a n = A314836 n

end A314836

/-! ## A314836.P8842400249382885638

`A004525(A314098(n))+2*n`
-/

namespace A314836.P8842400249382885638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314098 n).toNat + (2 * n : ℤ)

end

end A314836.P8842400249382885638

namespace A314836

/-- `A004525(A314098(n))+2*n` -/
def P8842400249382885638.Spec : Prop :=
  ∀ n, P8842400249382885638.a n = A314836 n

end A314836

/-! ## A314836.P2856056252458842467

`A008585(n)-(n-A004525(A314098(n)))`
-/

namespace A314836.P2856056252458842467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004525 (A314098 n).toNat)

end

end A314836.P2856056252458842467

namespace A314836

/-- `A008585(n)-(n-A004525(A314098(n)))` -/
def P2856056252458842467.Spec : Prop :=
  ∀ n, P2856056252458842467.a n = A314836 n

end A314836

/-!
# A314837: Coordination sequence Gal.6.231.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314837, the canonical program `A314837.P13056047557632493089` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314837 has offset 0).

The definition of A314837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314837.P13056047557632493089

`floor(5*n-a(n-1)/10)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A314837

/-- `floor(5*n-a(n-1)/10)` -/
def P13056047557632493089.Spec : Prop :=
  ∀ n, P13056047557632493089.a n = A314837 n

theorem P13056047557632493089.correct : P13056047557632493089.Spec := by
  intro n
  simp only [A314837]

end A314837

/-! ## A314837.P13006121917275142874

`A168186(n+1)+A008574(n)-A065033(A168186(n+1))`
-/

namespace A314837.P13006121917275142874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1) + (A008574 n - A065033 (A168186 (n + 1)).toNat)

end

end A314837.P13006121917275142874

namespace A314837

/-- `A168186(n+1)+A008574(n)-A065033(A168186(n+1))` -/
def P13006121917275142874.Spec : Prop :=
  ∀ n, P13006121917275142874.a n = A314837 n

end A314837

/-! ## A314837.P17833746733999112151

`(A315307(n)+A008574(n))/2`
-/

namespace A314837.P17833746733999112151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315307 n + A008574 n : ℚ) / 2

end

end A314837.P17833746733999112151

namespace A314837

/-- `(A315307(n)+A008574(n))/2` -/
def P17833746733999112151.Spec : Prop :=
  ∀ n, P17833746733999112151.a n = (A314837 n : ℚ)

end A314837

/-! ## A314837.P1889898085460472694

`A008458(n)+A008574(n)-A314149(n)`
-/

namespace A314837.P1889898085460472694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314149 n)

end

end A314837.P1889898085460472694

namespace A314837

/-- `A008458(n)+A008574(n)-A314149(n)` -/
def P1889898085460472694.Spec : Prop :=
  ∀ n, P1889898085460472694.a n = A314837 n

end A314837

/-! ## A314837.P7833384121046534990

`A005843(A008458(n)-n)-A314149(n)`
-/

namespace A314837.P7833384121046534990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314149 n

end

end A314837.P7833384121046534990

namespace A314837

/-- `A005843(A008458(n)-n)-A314149(n)` -/
def P7833384121046534990.Spec : Prop :=
  ∀ n, P7833384121046534990.a n = A314837 n

end A314837

/-! ## A314837.P12558889447408867602

`A065502(A315521(n))/2`
-/

namespace A314837.P12558889447408867602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A315521 n).toNat : ℚ) / 2

end

end A314837.P12558889447408867602

namespace A314837

/-- `A065502(A315521(n))/2` -/
def P12558889447408867602.Spec : Prop :=
  ∀ n, P12558889447408867602.a n = (A314837 n : ℚ)

end A314837

/-! ## A314837.P17635006889040949935

`A004396(A315750(n)+n)`
-/

namespace A314837.P17635006889040949935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315750 n + (n : ℤ)).toNat

end

end A314837.P17635006889040949935

namespace A314837

/-- `A004396(A315750(n)+n)` -/
def P17635006889040949935.Spec : Prop :=
  ∀ n, P17635006889040949935.a n = A314837 n

end A314837

/-! ## A314837.P7251656989788766695

`A274616(A315750(n)+n)`
-/

namespace A314837.P7251656989788766695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315750 n + (n : ℤ)).toNat

end

end A314837.P7251656989788766695

namespace A314837

/-- `A274616(A315750(n)+n)` -/
def P7251656989788766695.Spec : Prop :=
  ∀ n, P7251656989788766695.a n = A314837 n

end A314837

/-! ## A314837.P426789897673976500

`lcm(2, A310371(2*n))/2`
-/

namespace A314837.P426789897673976500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A310371 (2 * n)) : ℚ) / 2

end

end A314837.P426789897673976500

namespace A314837

/-- `lcm(2, A310371(2*n))/2` -/
def P426789897673976500.Spec : Prop :=
  ∀ n, P426789897673976500.a n = (A314837 n : ℚ)

end A314837

/-! ## A314837.P8196896047436682251

`A314117(2*n)+n-7*n`
-/

namespace A314837.P8196896047436682251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A314837.P8196896047436682251

namespace A314837

/-- `A314117(2*n)+n-7*n` -/
def P8196896047436682251.Spec : Prop :=
  ∀ n, P8196896047436682251.a n = A314837 n

end A314837

/-! ## A314837.P15188938588730655842

`A004525(A310371(2*n))`
-/

namespace A314837.P15188938588730655842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310371 (2 * n)).toNat

end

end A314837.P15188938588730655842

namespace A314837

/-- `A004525(A310371(2*n))` -/
def P15188938588730655842.Spec : Prop :=
  ∀ n, P15188938588730655842.a n = A314837 n

end A314837

/-! ## A314837.P17581488696147760830

`A065033(A168186(n+1)+A022144(n)-1)`
-/

namespace A314837.P17581488696147760830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A168186 (n + 1) + (A022144 n - 1)).toNat

end

end A314837.P17581488696147760830

namespace A314837

/-- `A065033(A168186(n+1)+A022144(n)-1)` -/
def P17581488696147760830.Spec : Prop :=
  ∀ n, P17581488696147760830.a n = A314837 n

end A314837

/-! ## A314837.P7122969158169701644

`A004396(A310442(2*n))-A005843(n)`
-/

namespace A314837.P7122969158169701644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310442 (2 * n)).toNat - A005843 n

end

end A314837.P7122969158169701644

namespace A314837

/-- `A004396(A310442(2*n))-A005843(n)` -/
def P7122969158169701644.Spec : Prop :=
  ∀ n, P7122969158169701644.a n = A314837 n

end A314837

/-! ## A314837.P11091701107099699442

`A004396(A310455(2*n))-A005843(n)`
-/

namespace A314837.P11091701107099699442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310455 (2 * n)).toNat - A005843 n

end

end A314837.P11091701107099699442

namespace A314837

/-- `A004396(A310455(2*n))-A005843(n)` -/
def P11091701107099699442.Spec : Prop :=
  ∀ n, P11091701107099699442.a n = A314837 n

end A314837

/-!
# A314838: Coordination sequence Gal.4.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314838, the canonical program `A314838.P5873739945201967556` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314838 has offset 0).

The definition of A314838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A314838.P5873739945201967556

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=14, a(4)=18, a(5)=23, a(6)=27, a(7)=32, a(8)=37`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A314838

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P5873739945201967556.Spec : Prop :=
  ∀ n, P5873739945201967556.a n = A314838 n

theorem P5873739945201967556.correct : P5873739945201967556.Spec := by
  intro n
  simp only [A314838]

end A314838

/-! ## A314838.P12373414836251602019

`round(8/7*A008574(n))`
-/

namespace A314838.P12373414836251602019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 : ℚ) / 7 * (A008574 n : ℚ))

end

end A314838.P12373414836251602019

namespace A314838

/-- `round(8/7*A008574(n))` -/
def P12373414836251602019.Spec : Prop :=
  ∀ n, P12373414836251602019.a n = A314838 n

end A314838

/-! ## A314838.P2656406260595217649

`A004775(4*n+1)+1`
-/

namespace A314838.P2656406260595217649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (4 * n + 1) + 1

end

end A314838.P2656406260595217649

namespace A314838

/-- `A004775(4*n+1)+1` -/
def P2656406260595217649.Spec : Prop :=
  ∀ n, P2656406260595217649.a n = A314838 n

end A314838

/-! ## A314838.P2000051009651699659

`A065033(comp[or(7, n)])+4*n`
-/

namespace A314838.P2000051009651699659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (4 * n : ℤ)

end

end A314838.P2000051009651699659

namespace A314838

/-- `A065033(comp[or(7, n)])+4*n` -/
def P2000051009651699659.Spec : Prop :=
  ∀ n, P2000051009651699659.a n = A314838 n

end A314838

/-! ## A314838.P2922319584684557851

`A047588(A008574(n)+1)`
-/

namespace A314838.P2922319584684557851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A008574 n + 1).toNat

end

end A314838.P2922319584684557851

namespace A314838

/-- `A047588(A008574(n)+1)` -/
def P2922319584684557851.Spec : Prop :=
  ∀ n, P2922319584684557851.a n = A314838 n

end A314838

/-! ## A314838.P9646299679733925327

`A313051(n)+A238469(n)`
-/

namespace A314838.P9646299679733925327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A238469 n

end

end A314838.P9646299679733925327

namespace A314838

/-- `A313051(n)+A238469(n)` -/
def P9646299679733925327.Spec : Prop :=
  ∀ n, P9646299679733925327.a n = A314838 n

end A314838

/-! ## A314838.P4231537212016941146

`A313487(n)-A238470(n)`
-/

namespace A314838.P4231537212016941146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313487 n - A238470 n

end

end A314838.P4231537212016941146

namespace A314838

/-- `A313487(n)-A238470(n)` -/
def P4231537212016941146.Spec : Prop :=
  ∀ n, P4231537212016941146.a n = A314838 n

end A314838

/-! ## A314838.P17892831151880918720

`A047588(A004277(2*n)+1)`
-/

namespace A314838.P17892831151880918720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A004277 (2 * n) + 1).toNat

end

end A314838.P17892831151880918720

namespace A314838

/-- `A047588(A004277(2*n)+1)` -/
def P17892831151880918720.Spec : Prop :=
  ∀ n, P17892831151880918720.a n = A314838 n

end A314838

/-! ## A314838.P6705674716015271024

`A008706(n)-A057357(n+1)`
-/

namespace A314838.P6705674716015271024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A057357 (n + 1)

end

end A314838.P6705674716015271024

namespace A314838

/-- `A008706(n)-A057357(n+1)` -/
def P6705674716015271024.Spec : Prop :=
  ∀ n, P6705674716015271024.a n = A314838 n

end A314838

/-! ## A314838.P11690695979824594528

`A313051(n)+A238470(2*n)`
-/

namespace A314838.P11690695979824594528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A238470 (2 * n)

end

end A314838.P11690695979824594528

namespace A314838

/-- `A313051(n)+A238470(2*n)` -/
def P11690695979824594528.Spec : Prop :=
  ∀ n, P11690695979824594528.a n = A314838 n

end A314838

/-! ## A314838.P8667049683134360457

`A312549(n)-A238468(2*n)`
-/

namespace A314838.P8667049683134360457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n - A238468 (2 * n)

end

end A314838.P8667049683134360457

namespace A314838

/-- `A312549(n)-A238468(2*n)` -/
def P8667049683134360457.Spec : Prop :=
  ∀ n, P8667049683134360457.a n = A314838 n

end A314838

/-! ## A314838.P7584519435317429838

`A314753(n)-A238469(2*n)`
-/

namespace A314838.P7584519435317429838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n - A238469 (2 * n)

end

end A314838.P7584519435317429838

namespace A314838

/-- `A314753(n)-A238469(2*n)` -/
def P7584519435317429838.Spec : Prop :=
  ∀ n, P7584519435317429838.a n = A314838 n

end A314838

/-! ## A314838.P11502444313656001898

`A047588(A004275(2*n+1)+1)`
-/

namespace A314838.P11502444313656001898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A004275 (2 * n + 1) + 1).toNat

end

end A314838.P11502444313656001898

namespace A314838

/-- `A047588(A004275(2*n+1)+1)` -/
def P11502444313656001898.Spec : Prop :=
  ∀ n, P11502444313656001898.a n = A314838 n

end A314838

/-! ## A314838.P8440682016318817522

`A008574(2*n)-A083033(2*n+1)`
-/

namespace A314838.P8440682016318817522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A083033 (2 * n + 1)

end

end A314838.P8440682016318817522

namespace A314838

/-- `A008574(2*n)-A083033(2*n+1)` -/
def P8440682016318817522.Spec : Prop :=
  ∀ n, P8440682016318817522.a n = A314838 n

end A314838

/-! ## A314838.P16928933126239924447

`A008486(2*n)-(A057357(n+1)+n)`
-/

namespace A314838.P16928933126239924447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (A057357 (n + 1) + (n : ℤ))

end

end A314838.P16928933126239924447

namespace A314838

/-- `A008486(2*n)-(A057357(n+1)+n)` -/
def P16928933126239924447.Spec : Prop :=
  ∀ n, P16928933126239924447.a n = A314838 n

end A314838

/-! ## A314838.P7468516362588015531

`A004275(2*n+1)-A057357(n+1)+n`
-/

namespace A314838.P7468516362588015531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) - A057357 (n + 1) + (n : ℤ)

end

end A314838.P7468516362588015531

namespace A314838

/-- `A004275(2*n+1)-A057357(n+1)+n` -/
def P7468516362588015531.Spec : Prop :=
  ∀ n, P7468516362588015531.a n = A314838 n

end A314838

/-! ## A314838.P11556661829735113421

`A008458(n)-(A145569(n)+A057358(n))`
-/

namespace A314838.P11556661829735113421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A145569 n + A057358 n)

end

end A314838.P11556661829735113421

namespace A314838

/-- `A008458(n)-(A145569(n)+A057358(n))` -/
def P11556661829735113421.Spec : Prop :=
  ∀ n, P11556661829735113421.a n = A314838 n

end A314838

/-! ## A314838.P3950923374974233870

`A004275(2*n+1)+A225875(2*(n+1))-A225875(n+2)`
-/

namespace A314838.P3950923374974233870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A225875 (2 * (n + 1)) - A225875 (n + 2))

end

end A314838.P3950923374974233870

namespace A314838

/-- `A004275(2*n+1)+A225875(2*(n+1))-A225875(n+2)` -/
def P3950923374974233870.Spec : Prop :=
  ∀ n, P3950923374974233870.a n = A314838 n

end A314838

/-! ## A314838.P10202073562371004755

`(A315309(n)+A008574(n))/2`
-/

namespace A314838.P10202073562371004755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315309 n + A008574 n : ℚ) / 2

end

end A314838.P10202073562371004755

namespace A314838

/-- `(A315309(n)+A008574(n))/2` -/
def P10202073562371004755.Spec : Prop :=
  ∀ n, P10202073562371004755.a n = (A314838 n : ℚ)

end A314838

/-! ## A314838.P4065096835058614151

`A315541(n)-A047588(n+1)`
-/

namespace A314838.P4065096835058614151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - A047588 (n + 1)

end

end A314838.P4065096835058614151

namespace A314838

/-- `A315541(n)-A047588(n+1)` -/
def P4065096835058614151.Spec : Prop :=
  ∀ n, P4065096835058614151.a n = A314838 n

end A314838

/-!
# A314839: Coordination sequence Gal.6.357.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314839, there is no canonical definition to state claims against.
-/

/-! ## A314839.P17268057639716460953

`∑[dr(A205490(∏{e}[n+1, 4*#+1]))]`
-/

namespace A314839.P17268057639716460953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A205490 (∏ p ∈ Nat.primeFactors (f2 n), (4 * Nat.factorization (f2 n) p + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314839.P17268057639716460953

/-! ## A314839.P9334053750608124456

`A348684(∑[n])+∑[∑{e}[n+1, #]+1]`
-/

namespace A314839.P9334053750608124456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348684 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A314839.P9334053750608124456

/-! ## A314839.P8264378112808361422

`A090106(∑[∑{e}[n+1, #]+1])+2*n`
-/

namespace A314839.P8264378112808361422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ)

end

end A314839.P8264378112808361422

/-! ## A314839.P10529202007252183556

`A334200(3^n)+∑[∑{e}[n+1, #]+1]`
-/

namespace A314839.P10529202007252183556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334200 (3 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314839.P10529202007252183556

/-! ## A314839.P1353961348019860458

`∑[A167430(A000217(∏{e}[n+1, 2*#+1]))]`
-/

namespace A314839.P1353961348019860458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A000217 (∏ p ∈ Nat.primeFactors (f2 n), (2 * Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314839.P1353961348019860458

/-!
# A314840: Coordination sequence Gal.5.66.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314840, the canonical program `A314840.P11580699341813323691` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314840 has offset 0).

The definition of A314840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A314840.P11580699341813323691

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=14, a(4)=18, a(5)=23, a(6)=28`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A314840

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P11580699341813323691.Spec : Prop :=
  ∀ n, P11580699341813323691.a n = A314840 n

theorem P11580699341813323691.correct : P11580699341813323691.Spec := by
  intro n
  simp only [A314840]

end A314840

/-! ## A314840.P16926713141321259102

`floor(round(8*n/5)+3/acot(n))`
-/

namespace A314840.P16926713141321259102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5)) : ℝ) + 3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A314840.P16926713141321259102

namespace A314840

/-- `floor(round(8*n/5)+3/acot(n))` -/
def P16926713141321259102.Spec : Prop :=
  ∀ n, P16926713141321259102.a n = A314840 n

end A314840

/-! ## A314840.P958838815364950568

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=5, a(4)=4, a(5)=5, a(6)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A314840.P958838815364950568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 5, 4, 5, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314840.P958838815364950568

namespace A314840

/-- `∑[floor(a(n-5))]` -/
def P958838815364950568.Spec : Prop :=
  ∀ n, (P958838815364950568.a n : ℤ) = A314840 n

end A314840

/-! ## A314840.P1387934732981694843

`round(C(2, n+2)+n*(3/5+5))-n`
-/

namespace A314840.P1387934732981694843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 2 (n + 2) : ℚ) + (n : ℚ) * ((3 : ℚ) / 5 + 5)) - (n : ℤ)

end

end A314840.P1387934732981694843

namespace A314840

/-- `round(C(2, n+2)+n*(3/5+5))-n` -/
def P1387934732981694843.Spec : Prop :=
  ∀ n, P1387934732981694843.a n = A314840 n

end A314840

/-! ## A314840.P16215589448136212098

`round(A250120(n)-n/5)`
-/

namespace A314840.P16215589448136212098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 n : ℚ) - (n : ℚ) / 5)

end

end A314840.P16215589448136212098

namespace A314840

/-- `round(A250120(n)-n/5)` -/
def P16215589448136212098.Spec : Prop :=
  ∀ n, P16215589448136212098.a n = A314840 n

end A314840

/-! ## A314840.P6764839791292058534

`A008458(n)-round(7*n/5)`
-/

namespace A314840.P6764839791292058534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5))

end

end A314840.P6764839791292058534

namespace A314840

/-- `A008458(n)-round(7*n/5)` -/
def P6764839791292058534.Spec : Prop :=
  ∀ n, P6764839791292058534.a n = A314840 n

end A314840

/-! ## A314840.P9375052834403055779

`A008486(n)+round(8*n/5)`
-/

namespace A314840.P9375052834403055779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

end

end A314840.P9375052834403055779

namespace A314840

/-- `A008486(n)+round(8*n/5)` -/
def P9375052834403055779.Spec : Prop :=
  ∀ n, P9375052834403055779.a n = A314840 n

end A314840

/-! ## A314840.P4450319189334248578

`round(8*n/5)+A004277(n)+n`
-/

namespace A314840.P4450319189334248578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5)) + (A004277 n + (n : ℤ))

end

end A314840.P4450319189334248578

namespace A314840

/-- `round(8*n/5)+A004277(n)+n` -/
def P4450319189334248578.Spec : Prop :=
  ∀ n, P4450319189334248578.a n = A314840 n

end A314840

/-! ## A314840.P5692833893049138723

`A008706(n)-Δ[A011858(n)]`
-/

namespace A314840.P5692833893049138723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A314840.P5692833893049138723

namespace A314840

/-- `A008706(n)-Δ[A011858(n)]` -/
def P5692833893049138723.Spec : Prop :=
  ∀ n, P5692833893049138723.a n = A314840 n

end A314840

/-! ## A314840.P8462454199918758992

`A047263(A008486(n)+1)+n`
-/

namespace A314840.P8462454199918758992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008486 n + 1).toNat + (n : ℤ)

end

end A314840.P8462454199918758992

namespace A314840

/-- `A047263(A008486(n)+1)+n` -/
def P8462454199918758992.Spec : Prop :=
  ∀ n, P8462454199918758992.a n = A314840 n

end A314840

/-! ## A314840.P14026965906972794828

`A047448(n+1)+A008486(n)`
-/

namespace A314840.P14026965906972794828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A008486 n

end

end A314840.P14026965906972794828

namespace A314840

/-- `A047448(n+1)+A008486(n)` -/
def P14026965906972794828.Spec : Prop :=
  ∀ n, P14026965906972794828.a n = A314840 n

end A314840

/-! ## A314840.P13294312067856754212

`A047299(A008574(n)+1)-n`
-/

namespace A314840.P13294312067856754212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008574 n + 1).toNat - (n : ℤ)

end

end A314840.P13294312067856754212

namespace A314840

/-- `A047299(A008574(n)+1)-n` -/
def P13294312067856754212.Spec : Prop :=
  ∀ n, P13294312067856754212.a n = A314840 n

end A314840

/-! ## A314840.P7380665540605925716

`A008706(n)-A057354(n+1)`
-/

namespace A314840.P7380665540605925716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A057354 (n + 1)

end

end A314840.P7380665540605925716

namespace A314840

/-- `A008706(n)-A057354(n+1)` -/
def P7380665540605925716.Spec : Prop :=
  ∀ n, P7380665540605925716.a n = A314840 n

end A314840

/-! ## A314840.P17538104868543668702

`A047263(A033627(n+2))+n`
-/

namespace A314840.P17538104868543668702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A033627 (n + 2)).toNat + (n : ℤ)

end

end A314840.P17538104868543668702

namespace A314840

/-- `A047263(A033627(n+2))+n` -/
def P17538104868543668702.Spec : Prop :=
  ∀ n, P17538104868543668702.a n = A314840 n

end A314840

/-! ## A314840.P5558820852653968229

`A000007(n)+A231001(n)-n`
-/

namespace A314840.P5558820852653968229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A231001 n - (n : ℤ))

end

end A314840.P5558820852653968229

namespace A314840

/-- `A000007(n)+A231001(n)-n` -/
def P5558820852653968229.Spec : Prop :=
  ∀ n, P5558820852653968229.a n = A314840 n

end A314840

/-! ## A314840.P13418357453161308640

`A151988(n)+A314827(n)-n`
-/

namespace A314840.P13418357453161308640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314827 n - (n : ℤ))

end

end A314840.P13418357453161308640

namespace A314840

/-- `A151988(n)+A314827(n)-n` -/
def P13418357453161308640.Spec : Prop :=
  ∀ n, P13418357453161308640.a n = A314840 n

end A314840

/-! ## A314840.P7817643552623158032

`A008574(n)+n-Δ[A011858(n)]`
-/

namespace A314840.P7817643552623158032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314840.P7817643552623158032

namespace A314840

/-- `A008574(n)+n-Δ[A011858(n)]` -/
def P7817643552623158032.Spec : Prop :=
  ∀ n, P7817643552623158032.a n = A314840 n

end A314840

/-! ## A314840.P1794652278379030816

`A047263(n+1)+A072154(n)+n`
-/

namespace A314840.P1794652278379030816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A072154 n + (n : ℤ))

end

end A314840.P1794652278379030816

namespace A314840

/-- `A047263(n+1)+A072154(n)+n` -/
def P1794652278379030816.Spec : Prop :=
  ∀ n, P1794652278379030816.a n = A314840 n

end A314840

/-! ## A314840.P10779613605461642295

`A008706(n)-A047299(n+1)+n`
-/

namespace A314840.P10779613605461642295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A047299 (n + 1) + (n : ℤ)

end

end A314840.P10779613605461642295

namespace A314840

/-- `A008706(n)-A047299(n+1)+n` -/
def P10779613605461642295.Spec : Prop :=
  ∀ n, P10779613605461642295.a n = A314840 n

end A314840

/-! ## A314840.P2862076603298356791

`A047448(n+1)+A008574(n)-n`
-/

namespace A314840.P2862076603298356791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + (A008574 n - (n : ℤ))

end

end A314840.P2862076603298356791

namespace A314840

/-- `A047448(n+1)+A008574(n)-n` -/
def P2862076603298356791.Spec : Prop :=
  ∀ n, P2862076603298356791.a n = A314840 n

end A314840

/-!
# A314841: Coordination sequence Gal.6.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314841, the canonical program `A314841.P5099753023197914535` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314841 has offset 0).

The definition of A314841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314841.P5099753023197914535

`A312620(n)+A128834(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314841

/-- `A312620(n)+A128834(n)` -/
def P5099753023197914535.Spec : Prop :=
  ∀ n, P5099753023197914535.a n = A314841 n

theorem P5099753023197914535.correct : P5099753023197914535.Spec := by
  intro n
  simp only [A314841]

end A314841

/-! ## A314841.P6982208135200391431

`A047424(n+1)+A311924(n)-n`
-/

namespace A314841.P6982208135200391431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A311924 n - (n : ℤ))

end

end A314841.P6982208135200391431

namespace A314841

/-- `A047424(n+1)+A311924(n)-n` -/
def P6982208135200391431.Spec : Prop :=
  ∀ n, P6982208135200391431.a n = A314841 n

end A314841

/-! ## A314841.P4247184000743762458

`A311924(n)+A004525(A004396(n))`
-/

namespace A314841.P4247184000743762458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A004525 (A004396 n).toNat

end

end A314841.P4247184000743762458

namespace A314841

/-- `A311924(n)+A004525(A004396(n))` -/
def P4247184000743762458.Spec : Prop :=
  ∀ n, P4247184000743762458.a n = A314841 n

end A314841

/-! ## A314841.P18382607592896314092

`A008458(n)+A008486(n)-A312926(n)`
-/

namespace A314841.P18382607592896314092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312926 n)

end

end A314841.P18382607592896314092

namespace A314841

/-- `A008458(n)+A008486(n)-A312926(n)` -/
def P18382607592896314092.Spec : Prop :=
  ∀ n, P18382607592896314092.a n = A314841 n

end A314841

/-! ## A314841.P7899504750160468534

`A313707(n)-A002264(n+1)`
-/

namespace A314841.P7899504750160468534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - A002264 (n + 1)

end

end A314841.P7899504750160468534

namespace A314841

/-- `A313707(n)-A002264(n+1)` -/
def P7899504750160468534.Spec : Prop :=
  ∀ n, P7899504750160468534.a n = A314841 n

end A314841

/-! ## A314841.P7558022095522675681

`A004396(n)+A313707(n)-n`
-/

namespace A314841.P7558022095522675681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313707 n - (n : ℤ))

end

end A314841.P7558022095522675681

namespace A314841

/-- `A004396(n)+A313707(n)-n` -/
def P7558022095522675681.Spec : Prop :=
  ∀ n, P7558022095522675681.a n = A314841 n

end A314841

/-! ## A314841.P13239934217834824927

`A008576(n)+A313707(n)-A008486(n)`
-/

namespace A314841.P13239934217834824927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313707 n - A008486 n)

end

end A314841.P13239934217834824927

namespace A314841

/-- `A008576(n)+A313707(n)-A008486(n)` -/
def P13239934217834824927.Spec : Prop :=
  ∀ n, P13239934217834824927.a n = A314841 n

end A314841

/-! ## A314841.P8456286656301252214

`A004525(n)+A313833(n)-n`
-/

namespace A314841.P8456286656301252214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313833 n - (n : ℤ))

end

end A314841.P8456286656301252214

namespace A314841

/-- `A004525(n)+A313833(n)-n` -/
def P8456286656301252214.Spec : Prop :=
  ∀ n, P8456286656301252214.a n = A314841 n

end A314841

/-! ## A314841.P13981247796095997384

`A315266(n)-A004525(n)`
-/

namespace A314841.P13981247796095997384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 n - A004525 n

end

end A314841.P13981247796095997384

namespace A314841

/-- `A315266(n)-A004525(n)` -/
def P13981247796095997384.Spec : Prop :=
  ∀ n, P13981247796095997384.a n = A314841 n

end A314841

/-! ## A314841.P17479849483218690030

`Δ[A011848(n)]+A315266(n)-n`
-/

namespace A314841.P17479849483218690030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315266 n - (n : ℤ))

end

end A314841.P17479849483218690030

namespace A314841

/-- `Δ[A011848(n)]+A315266(n)-n` -/
def P17479849483218690030.Spec : Prop :=
  ∀ n, P17479849483218690030.a n = A314841 n

end A314841

/-! ## A314841.P9622196055189222893

`A004525(A004396(n))+A313891(n)-n`
-/

namespace A314841.P9622196055189222893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313891 n - (n : ℤ))

end

end A314841.P9622196055189222893

namespace A314841

/-- `A004525(A004396(n))+A313891(n)-n` -/
def P9622196055189222893.Spec : Prop :=
  ∀ n, P9622196055189222893.a n = A314841 n

end A314841

/-! ## A314841.P2080074320029234751

`A008458(n)+A008574(n)-A314144(n)`
-/

namespace A314841.P2080074320029234751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314144 n)

end

end A314841.P2080074320029234751

namespace A314841

/-- `A008458(n)+A008574(n)-A314144(n)` -/
def P2080074320029234751.Spec : Prop :=
  ∀ n, P2080074320029234751.a n = A314841 n

end A314841

/-! ## A314841.P6481439346934587885

`A004396(A004525(n))+A313879(n)-n`
-/

namespace A314841.P6481439346934587885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313879 n - (n : ℤ))

end

end A314841.P6481439346934587885

namespace A314841

/-- `A004396(A004525(n))+A313879(n)-n` -/
def P6481439346934587885.Spec : Prop :=
  ∀ n, P6481439346934587885.a n = A314841 n

end A314841

/-! ## A314841.P8727747906518106894

`A004396(n)+A004396(A312909(n))+n`
-/

namespace A314841.P8727747906518106894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A312909 n).toNat + (n : ℤ))

end

end A314841.P8727747906518106894

namespace A314841

/-- `A004396(n)+A004396(A312909(n))+n` -/
def P8727747906518106894.Spec : Prop :=
  ∀ n, P8727747906518106894.a n = A314841 n

end A314841

/-! ## A314841.P3142801715488764637

`A004396(n)+A004396(A314688(n))+n`
-/

namespace A314841.P3142801715488764637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A314688 n).toNat + (n : ℤ))

end

end A314841.P3142801715488764637

namespace A314841

/-- `A004396(n)+A004396(A314688(n))+n` -/
def P3142801715488764637.Spec : Prop :=
  ∀ n, P3142801715488764637.a n = A314841 n

end A314841

/-! ## A314841.P4414811403050375315

`A315527(n)-n`
-/

namespace A314841.P4414811403050375315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - (n : ℤ)

end

end A314841.P4414811403050375315

namespace A314841

/-- `A315527(n)-n` -/
def P4414811403050375315.Spec : Prop :=
  ∀ n, P4414811403050375315.a n = A314841 n

end A314841

/-! ## A314841.P1214200265058442740

`A004525(A315455(n))+2*n`
-/

namespace A314841.P1214200265058442740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315455 n).toNat + (2 * n : ℤ)

end

end A314841.P1214200265058442740

namespace A314841

/-- `A004525(A315455(n))+2*n` -/
def P1214200265058442740.Spec : Prop :=
  ∀ n, P1214200265058442740.a n = A314841 n

end A314841

/-! ## A314841.P9442730524457454443

`A004396(A315479(n))+n`
-/

namespace A314841.P9442730524457454443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315479 n).toNat + (n : ℤ)

end

end A314841.P9442730524457454443

namespace A314841

/-- `A004396(A315479(n))+n` -/
def P9442730524457454443.Spec : Prop :=
  ∀ n, P9442730524457454443.a n = A314841 n

end A314841

/-! ## A314841.P1735228710393496009

`A004396(A315512(n))+n`
-/

namespace A314841.P1735228710393496009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315512 n).toNat + (n : ℤ)

end

end A314841.P1735228710393496009

namespace A314841

/-- `A004396(A315512(n))+n` -/
def P1735228710393496009.Spec : Prop :=
  ∀ n, P1735228710393496009.a n = A314841 n

end A314841

/-! ## A314841.P26553882226971943

`A004396(A314688(n)+n)+n`
-/

namespace A314841.P26553882226971943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314688 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314841.P26553882226971943

namespace A314841

/-- `A004396(A314688(n)+n)+n` -/
def P26553882226971943.Spec : Prop :=
  ∀ n, P26553882226971943.a n = A314841 n

end A314841

/-!
# A314842: Coordination sequence Gal.6.378.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314842, there is no canonical definition to state claims against.
-/

/-! ## A314842.P2370314977587676565

`A030604(A058699(n))+A001951(3*n)`
-/

namespace A314842.P2370314977587676565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (A058699 n).toNat + A001951 (3 * n)

end

end A314842.P2370314977587676565

/-! ## A314842.P4326752442205571696

`A028260(n+1)+∑[A001222(A224509(n))]`
-/

namespace A314842.P4326752442205571696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A224509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314842.P4326752442205571696

/-! ## A314842.P13723697337329008064

`A039996(A049124(n))+4*n`
-/

namespace A314842.P13723697337329008064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A049124 n).toNat + (4 * n : ℤ)

end

end A314842.P13723697337329008064

/-! ## A314842.P2905999983934501084

`A250120(n)-A261083(n!/gcd(n+1, n!))`
-/

namespace A314842.P2905999983934501084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A261083 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (Nat.gcd (n + 1) (Nat.factorial n) : ℚ))).toNat

end

end A314842.P2905999983934501084

/-! ## A314842.P4548344572644126708

`A315259(n)-A040076(A061534(n))`
-/

namespace A314842.P4548344572644126708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A040076 (A061534 n).toNat

end

end A314842.P4548344572644126708

/-!
# A314843: Coordination sequence Gal.6.385.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314843, there is no canonical definition to state claims against.
-/

/-! ## A314843.P3049109884308783891

`A008586(n)+A007875(A365103(n))`
-/

namespace A314843.P3049109884308783891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A007875 (A365103 n).toNat

end

end A314843.P3049109884308783891

/-! ## A314843.P4344225288133627056

`A280073(A274114(n))+A016813(n)`
-/

namespace A314843.P4344225288133627056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280073 (A274114 n).toNat + A016813 n

end

end A314843.P4344225288133627056

/-! ## A314843.P10337897975183472935

`A066272(A007714(n))+A007310(n+1)`
-/

namespace A314843.P10337897975183472935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A007714 n).toNat + A007310 (n + 1)

end

end A314843.P10337897975183472935

/-! ## A314843.P13836308358999346417

`A314846(n)-A340998(A314851(2*(n+2)))`
-/

namespace A314843.P13836308358999346417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314846 n - A340998 ((A314851 (2 * (n + 2))).toNat + 140)

end

end A314843.P13836308358999346417

/-!
# A314844: Coordination sequence Gal.6.390.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314844, there is no canonical definition to state claims against.
-/

/-! ## A314844.P2393352291216289081

`A314839(n)+A194591(A000079(n+1))`
-/

namespace A314844.P2393352291216289081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314839 n + A194591 (A000079 (n + 1)).toNat

end

end A314844.P2393352291216289081

/-! ## A314844.P14473129377682842139

`A314856(n)-A178798(A049558(n+1))`
-/

namespace A314844.P14473129377682842139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314856 n - A178798 (A049558 (n + 1)).toNat

end

end A314844.P14473129377682842139

/-! ## A314844.P17453902822199657168

`A315452(n)-A077267(A223599(n+1))`
-/

namespace A314844.P17453902822199657168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - A077267 (A223599 (n + 1)).toNat

end

end A314844.P17453902822199657168

/-! ## A314844.P616443884828714883

`A315990(n)-A079978(A000578(2*(n+2)))`
-/

namespace A314844.P616443884828714883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315990 n - A079978 (A000578 (2 * (n + 2))).toNat

end

end A314844.P616443884828714883

/-! ## A314844.P2064794680994038102

`eq[A040003(A008277(n+1)), A338493(n+1)]`
-/

namespace A314844.P2064794680994038102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (A008277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314844.P2064794680994038102

/-!
# A314846: Coordination sequence Gal.6.615.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314846, there is no canonical definition to state claims against.
-/

/-! ## A314846.P13580946962178647036

`A314903(n)-A339895(A149475(n))`
-/

namespace A314846.P13580946962178647036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A339895 (A149475 n).toNat

end

end A314846.P13580946962178647036

/-! ## A314846.P15371292091096342887

`A120486(3*n+2)-A316439(A005191(n))`
-/

namespace A314846.P15371292091096342887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120486 (3 * n + 2) - A316439 (A005191 n).toNat

end

end A314846.P15371292091096342887

/-! ## A314846.P16333746869029977629

`A326872(3*n+1)+A225644(A347712(3*n+4))`
-/

namespace A314846.P16333746869029977629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326872 (3 * n + 1) + A225644 (A347712 (3 * n + 4)).toNat

end

end A314846.P16333746869029977629

/-!
# A314847: Coordination sequence Gal.6.193.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314847, the canonical program `A314847.P14702112134639075295` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314847 has offset 0).

The definition of A314847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314847.P14702112134639075295

`A301291(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314847

/-- `A301291(n)+Δ[A011865(n)]` -/
def P14702112134639075295.Spec : Prop :=
  ∀ n, P14702112134639075295.a n = A314847 n

theorem P14702112134639075295.correct : P14702112134639075295.Spec := by
  intro n
  simp only [A314847]

end A314847

/-! ## A314847.P16336851842833683233

`A311924(n)+A004396(A004525(n))`
-/

namespace A314847.P16336851842833683233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A004396 (A004525 n).toNat

end

end A314847.P16336851842833683233

namespace A314847

/-- `A311924(n)+A004396(A004525(n))` -/
def P16336851842833683233.Spec : Prop :=
  ∀ n, P16336851842833683233.a n = A314847 n

end A314847

/-! ## A314847.P5725326431459715419

`A004525(n)+A315026(n)-A004396(n)`
-/

namespace A314847.P5725326431459715419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315026 n - A004396 n)

end

end A314847.P5725326431459715419

namespace A314847

/-- `A004525(n)+A315026(n)-A004396(n)` -/
def P5725326431459715419.Spec : Prop :=
  ∀ n, P5725326431459715419.a n = A314847 n

end A314847

/-! ## A314847.P4441768098556035170

`A004396(A004525(n))+A314912(n)-A004525(n)`
-/

namespace A314847.P4441768098556035170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314912 n - A004525 n)

end

end A314847.P4441768098556035170

namespace A314847

/-- `A004396(A004525(n))+A314912(n)-A004525(n)` -/
def P4441768098556035170.Spec : Prop :=
  ∀ n, P4441768098556035170.a n = A314847 n

end A314847

/-! ## A314847.P3442014170579559866

`A004525(A004396(n))+A315067(n)-A004396(n)`
-/

namespace A314847.P3442014170579559866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315067 n - A004396 n)

end

end A314847.P3442014170579559866

namespace A314847

/-- `A004525(A004396(n))+A315067(n)-A004396(n)` -/
def P3442014170579559866.Spec : Prop :=
  ∀ n, P3442014170579559866.a n = A314847 n

end A314847

/-! ## A314847.P14081986926767249091

`A004396(A004525(n))+A315058(n)-A004396(n)`
-/

namespace A314847.P14081986926767249091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315058 n - A004396 n)

end

end A314847.P14081986926767249091

namespace A314847

/-- `A004396(A004525(n))+A315058(n)-A004396(n)` -/
def P14081986926767249091.Spec : Prop :=
  ∀ n, P14081986926767249091.a n = A314847 n

end A314847

/-! ## A314847.P6643248497063340420

`A313707(n)-A004396(n-A004525(n))`
-/

namespace A314847.P6643248497063340420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A314847.P6643248497063340420

namespace A314847

/-- `A313707(n)-A004396(n-A004525(n))` -/
def P6643248497063340420.Spec : Prop :=
  ∀ n, P6643248497063340420.a n = A314847 n

end A314847

/-! ## A314847.P3786671562541459377

`A313837(n)-∑[A021913(n)]`
-/

namespace A314847.P3786671562541459377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314847.P3786671562541459377

namespace A314847

/-- `A313837(n)-∑[A021913(n)]` -/
def P3786671562541459377.Spec : Prop :=
  ∀ n, P3786671562541459377.a n = A314847 n

end A314847

/-! ## A314847.P1580610445851857533

`A313837(n)-Δ[A011848(n)]`
-/

namespace A314847.P1580610445851857533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - (f1 (n + 1) - f1 n)

end

end A314847.P1580610445851857533

namespace A314847

/-- `A313837(n)-Δ[A011848(n)]` -/
def P1580610445851857533.Spec : Prop :=
  ∀ n, P1580610445851857533.a n = A314847 n

end A314847

/-! ## A314847.P1934254465564314929

`A004525(n)+A313837(n)-n`
-/

namespace A314847.P1934254465564314929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313837 n - (n : ℤ))

end

end A314847.P1934254465564314929

namespace A314847

/-- `A004525(n)+A313837(n)-n` -/
def P1934254465564314929.Spec : Prop :=
  ∀ n, P1934254465564314929.a n = A314847 n

end A314847

/-! ## A314847.P2712853510919235905

`A004396(A004525(n))+A313891(n)-n`
-/

namespace A314847.P2712853510919235905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313891 n - (n : ℤ))

end

end A314847.P2712853510919235905

namespace A314847

/-- `A004396(A004525(n))+A313891(n)-n` -/
def P2712853510919235905.Spec : Prop :=
  ∀ n, P2712853510919235905.a n = A314847 n

end A314847

/-! ## A314847.P9004324976671616188

`A315322(n)-A004396(n)`
-/

namespace A314847.P9004324976671616188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A004396 n

end

end A314847.P9004324976671616188

namespace A314847

/-- `A315322(n)-A004396(n)` -/
def P9004324976671616188.Spec : Prop :=
  ∀ n, P9004324976671616188.a n = A314847 n

end A314847

/-! ## A314847.P10009202691761900988

`A315322(n)-A002264(2*n+1)`
-/

namespace A314847.P10009202691761900988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A002264 (2 * n + 1)

end

end A314847.P10009202691761900988

namespace A314847

/-- `A315322(n)-A002264(2*n+1)` -/
def P10009202691761900988.Spec : Prop :=
  ∀ n, P10009202691761900988.a n = A314847 n

end A314847

/-! ## A314847.P2498851743863994313

`abs(A008592(n)-A314142(n))`
-/

namespace A314847.P2498851743863994313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314142 n|

end

end A314847.P2498851743863994313

namespace A314847

/-- `abs(A008592(n)-A314142(n))` -/
def P2498851743863994313.Spec : Prop :=
  ∀ n, P2498851743863994313.a n = A314847 n

end A314847

/-! ## A314847.P12050526463312808636

`2*A008706(n)-A314142(n)`
-/

namespace A314847.P12050526463312808636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314142 n

end

end A314847.P12050526463312808636

namespace A314847

/-- `2*A008706(n)-A314142(n)` -/
def P12050526463312808636.Spec : Prop :=
  ∀ n, P12050526463312808636.a n = A314847 n

end A314847

/-! ## A314847.P2706409010131742096

`A008458(n)+A008574(n)-A314142(n)`
-/

namespace A314847.P2706409010131742096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314142 n)

end

end A314847.P2706409010131742096

namespace A314847

/-- `A008458(n)+A008574(n)-A314142(n)` -/
def P2706409010131742096.Spec : Prop :=
  ∀ n, P2706409010131742096.a n = A314847 n

end A314847

/-! ## A314847.P864627721151681646

`A314142(n)-A005843(A314142(n)-A008706(n))`
-/

namespace A314847.P864627721151681646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A005843 (A314142 n - A008706 n).toNat

end

end A314847.P864627721151681646

namespace A314847

/-- `A314142(n)-A005843(A314142(n)-A008706(n))` -/
def P864627721151681646.Spec : Prop :=
  ∀ n, P864627721151681646.a n = A314847 n

end A314847

/-! ## A314847.P4805413495355465928

`A005843(A008706(n))-A314142(n)`
-/

namespace A314847.P4805413495355465928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314142 n

end

end A314847.P4805413495355465928

namespace A314847

/-- `A005843(A008706(n))-A314142(n)` -/
def P4805413495355465928.Spec : Prop :=
  ∀ n, P4805413495355465928.a n = A314847 n

end A314847

/-! ## A314847.P7348077035305899146

`A004396(A313707(n)+A004525(n))+n`
-/

namespace A314847.P7348077035305899146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313707 n + A004525 n).toNat + (n : ℤ)

end

end A314847.P7348077035305899146

namespace A314847

/-- `A004396(A313707(n)+A004525(n))+n` -/
def P7348077035305899146.Spec : Prop :=
  ∀ n, P7348077035305899146.a n = A314847 n

end A314847

/-!
# A314848: Coordination sequence Gal.5.110.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314848, the canonical program `A314848.P640167569373594197` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314848 has offset 0).

The definition of A314848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314848.P640167569373594197

`A314692(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314848

/-- `A314692(n)+Δ[A011862(n)]` -/
def P640167569373594197.Spec : Prop :=
  ∀ n, P640167569373594197.a n = A314848 n

theorem P640167569373594197.correct : P640167569373594197.Spec := by
  intro n
  simp only [A314848]

end A314848

/-! ## A314848.P2686518837267827048

`A312160(n)+A128834(A004396(n))`
-/

namespace A314848.P2686518837267827048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A128834 (A004396 n).toNat

end

end A314848.P2686518837267827048

namespace A314848

/-- `A312160(n)+A128834(A004396(n))` -/
def P2686518837267827048.Spec : Prop :=
  ∀ n, P2686518837267827048.a n = A314848 n

end A314848

/-! ## A314848.P13870836927223317797

`A004396(n)+A314692(n)-A004396(A004396(n))`
-/

namespace A314848.P13870836927223317797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314692 n - A004396 (A004396 n).toNat)

end

end A314848.P13870836927223317797

namespace A314848

/-- `A004396(n)+A314692(n)-A004396(A004396(n))` -/
def P13870836927223317797.Spec : Prop :=
  ∀ n, P13870836927223317797.a n = A314848 n

end A314848

/-! ## A314848.P17525072562448818189

`A313703(n)-A004396(n-A004396(n))`
-/

namespace A314848.P17525072562448818189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314848.P17525072562448818189

namespace A314848

/-- `A313703(n)-A004396(n-A004396(n))` -/
def P17525072562448818189.Spec : Prop :=
  ∀ n, P17525072562448818189.a n = A314848 n

end A314848

/-! ## A314848.P7051244918259748685

`A315033(n)-Δ[A011862(n)]`
-/

namespace A314848.P7051244918259748685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n - (f1 (n + 1) - f1 n)

end

end A314848.P7051244918259748685

namespace A314848

/-- `A315033(n)-Δ[A011862(n)]` -/
def P7051244918259748685.Spec : Prop :=
  ∀ n, P7051244918259748685.a n = A314848 n

end A314848

/-! ## A314848.P12853390258191261086

`A004396(A004396(n))+A315033(n)-A004396(n)`
-/

namespace A314848.P12853390258191261086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315033 n - A004396 n)

end

end A314848.P12853390258191261086

namespace A314848

/-- `A004396(A004396(n))+A315033(n)-A004396(n)` -/
def P12853390258191261086.Spec : Prop :=
  ∀ n, P12853390258191261086.a n = A314848 n

end A314848

/-! ## A314848.P6060327419057031658

`A315267(n)-A004525(A315267(n)-A008574(n))`
-/

namespace A314848.P6060327419057031658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315267 n - A004525 (A315267 n - A008574 n).toNat

end

end A314848.P6060327419057031658

namespace A314848

/-- `A315267(n)-A004525(A315267(n)-A008574(n))` -/
def P6060327419057031658.Spec : Prop :=
  ∀ n, P6060327419057031658.a n = A314848 n

end A314848

/-! ## A314848.P1808612399467318535

`abs(A008592(n)-A314141(n))`
-/

namespace A314848.P1808612399467318535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314141 n|

end

end A314848.P1808612399467318535

namespace A314848

/-- `abs(A008592(n)-A314141(n))` -/
def P1808612399467318535.Spec : Prop :=
  ∀ n, P1808612399467318535.a n = A314848 n

end A314848

/-! ## A314848.P2979895015694722059

`2*A008706(n)-A314141(n)`
-/

namespace A314848.P2979895015694722059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314141 n

end

end A314848.P2979895015694722059

namespace A314848

/-- `2*A008706(n)-A314141(n)` -/
def P2979895015694722059.Spec : Prop :=
  ∀ n, P2979895015694722059.a n = A314848 n

end A314848

/-! ## A314848.P11504824912345935764

`A008458(n)+A008574(n)-A314141(n)`
-/

namespace A314848.P11504824912345935764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314141 n)

end

end A314848.P11504824912345935764

namespace A314848

/-- `A008458(n)+A008574(n)-A314141(n)` -/
def P11504824912345935764.Spec : Prop :=
  ∀ n, P11504824912345935764.a n = A314848 n

end A314848

/-! ## A314848.P13126905148663039892

`∑{d}[A008592(n)-A314141(n), A000010(#)]`
-/

namespace A314848.P13126905148663039892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314848.P13126905148663039892

namespace A314848

/-- `∑{d}[A008592(n)-A314141(n), A000010(#)]` -/
def P13126905148663039892.Spec : Prop :=
  ∀ n, P13126905148663039892.a n = A314848 n

end A314848

/-! ## A314848.P12675860968100020276

`A314141(n)-A005843(A314141(n)-A008706(n))`
-/

namespace A314848.P12675860968100020276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A005843 (A314141 n - A008706 n).toNat

end

end A314848.P12675860968100020276

namespace A314848

/-- `A314141(n)-A005843(A314141(n)-A008706(n))` -/
def P12675860968100020276.Spec : Prop :=
  ∀ n, P12675860968100020276.a n = A314848 n

end A314848

/-! ## A314848.P514622372135498631

`A315546(n)-A004396(A004396(n)+n)`
-/

namespace A314848.P514622372135498631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A314848.P514622372135498631

namespace A314848

/-- `A315546(n)-A004396(A004396(n)+n)` -/
def P514622372135498631.Spec : Prop :=
  ∀ n, P514622372135498631.a n = A314848 n

end A314848

/-! ## A314848.P11865486119709523887

`A315265(n)-A004396(A004396(n))`
-/

namespace A314848.P11865486119709523887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A004396 (A004396 n).toNat

end

end A314848.P11865486119709523887

namespace A314848

/-- `A315265(n)-A004396(A004396(n))` -/
def P11865486119709523887.Spec : Prop :=
  ∀ n, P11865486119709523887.a n = A314848 n

end A314848

/-! ## A314848.P5176191123929341715

`A005843(A008706(n))-A314141(n)`
-/

namespace A314848.P5176191123929341715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314141 n

end

end A314848.P5176191123929341715

namespace A314848

/-- `A005843(A008706(n))-A314141(n)` -/
def P5176191123929341715.Spec : Prop :=
  ∀ n, P5176191123929341715.a n = A314848 n

end A314848

/-! ## A314848.P14205639388002135157

`A315475(2*n)+n-7*n`
-/

namespace A314848.P14205639388002135157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A314848.P14205639388002135157

namespace A314848

/-- `A315475(2*n)+n-7*n` -/
def P14205639388002135157.Spec : Prop :=
  ∀ n, P14205639388002135157.a n = A314848 n

end A314848

/-! ## A314848.P11932032264754440369

`A110655(A008486(A277723(n)))`
-/

namespace A314848.P11932032264754440369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A008486 (A277723 n).toNat).toNat

end

end A314848.P11932032264754440369

namespace A314848

/-- `A110655(A008486(A277723(n)))` -/
def P11932032264754440369.Spec : Prop :=
  ∀ n, P11932032264754440369.a n = A314848 n

end A314848

/-!
# A314849: Coordination sequence Gal.6.246.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314849, the canonical program `A314849.P12102171247342340479` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314849 has offset 0).

The definition of A314849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314849.P12102171247342340479

`A314720(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A314849

/-- `A314720(n)+Δ[A011864(n)]` -/
def P12102171247342340479.Spec : Prop :=
  ∀ n, P12102171247342340479.a n = A314849 n

theorem P12102171247342340479.correct : P12102171247342340479.Spec := by
  intro n
  simp only [A314849]

end A314849

/-! ## A314849.P2926974998047380543

`2*A313689(n)-A314086(n)`
-/

namespace A314849.P2926974998047380543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313689 n - A314086 n

end

end A314849.P2926974998047380543

namespace A314849

/-- `2*A313689(n)-A314086(n)` -/
def P2926974998047380543.Spec : Prop :=
  ∀ n, P2926974998047380543.a n = A314849 n

end A314849

/-! ## A314849.P1249912871248406867

`2*A314837(n)-A314826(n)`
-/

namespace A314849.P1249912871248406867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314837 n - A314826 n

end

end A314849.P1249912871248406867

namespace A314849

/-- `2*A314837(n)-A314826(n)` -/
def P1249912871248406867.Spec : Prop :=
  ∀ n, P1249912871248406867.a n = A314849 n

end A314849

/-! ## A314849.P12012134665346951349

`abs(A008592(n)-A314140(n))`
-/

namespace A314849.P12012134665346951349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314140 n|

end

end A314849.P12012134665346951349

namespace A314849

/-- `abs(A008592(n)-A314140(n))` -/
def P12012134665346951349.Spec : Prop :=
  ∀ n, P12012134665346951349.a n = A314849 n

end A314849

/-! ## A314849.P10875603860959986422

`2*A008706(n)-A314140(n)`
-/

namespace A314849.P10875603860959986422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314140 n

end

end A314849.P10875603860959986422

namespace A314849

/-- `2*A008706(n)-A314140(n)` -/
def P10875603860959986422.Spec : Prop :=
  ∀ n, P10875603860959986422.a n = A314849 n

end A314849

/-! ## A314849.P14701751267126546479

`A000038(n)+A008592(n)-A314140(n)`
-/

namespace A314849.P14701751267126546479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A314140 n)

end

end A314849.P14701751267126546479

namespace A314849

/-- `A000038(n)+A008592(n)-A314140(n)` -/
def P14701751267126546479.Spec : Prop :=
  ∀ n, P14701751267126546479.a n = A314849 n

end A314849

/-! ## A314849.P4490694809803411291

`A008458(n)+A008574(n)-A314140(n)`
-/

namespace A314849.P4490694809803411291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314140 n)

end

end A314849.P4490694809803411291

namespace A314849

/-- `A008458(n)+A008574(n)-A314140(n)` -/
def P4490694809803411291.Spec : Prop :=
  ∀ n, P4490694809803411291.a n = A314849 n

end A314849

/-! ## A314849.P9909914526027945671

`A314140(n)-A005843(A314140(n)-A008706(n))`
-/

namespace A314849.P9909914526027945671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314140 n - A005843 (A314140 n - A008706 n).toNat

end

end A314849.P9909914526027945671

namespace A314849

/-- `A314140(n)-A005843(A314140(n)-A008706(n))` -/
def P9909914526027945671.Spec : Prop :=
  ∀ n, P9909914526027945671.a n = A314849 n

end A314849

/-! ## A314849.P15655930065060710009

`2*A313745(n)-A314157(n)`
-/

namespace A314849.P15655930065060710009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313745 n - A314157 n

end

end A314849.P15655930065060710009

namespace A314849

/-- `2*A313745(n)-A314157(n)` -/
def P15655930065060710009.Spec : Prop :=
  ∀ n, P15655930065060710009.a n = A314849 n

end A314849

/-! ## A314849.P4456437010107009328

`A314157(n)-A005843(A314157(n)-A313745(n))`
-/

namespace A314849.P4456437010107009328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314157 n - A005843 (A314157 n - A313745 n).toNat

end

end A314849.P4456437010107009328

namespace A314849

/-- `A314157(n)-A005843(A314157(n)-A313745(n))` -/
def P4456437010107009328.Spec : Prop :=
  ∀ n, P4456437010107009328.a n = A314849 n

end A314849

/-! ## A314849.P15104311085320091799

`A005843(A313689(n))-A314086(n)`
-/

namespace A314849.P15104311085320091799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313689 n).toNat - A314086 n

end

end A314849.P15104311085320091799

namespace A314849

/-- `A005843(A313689(n))-A314086(n)` -/
def P15104311085320091799.Spec : Prop :=
  ∀ n, P15104311085320091799.a n = A314849 n

end A314849

/-! ## A314849.P8710957667868277010

`A005843(A008706(n))-A314140(n)`
-/

namespace A314849.P8710957667868277010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314140 n

end

end A314849.P8710957667868277010

namespace A314849

/-- `A005843(A008706(n))-A314140(n)` -/
def P8710957667868277010.Spec : Prop :=
  ∀ n, P8710957667868277010.a n = A314849 n

end A314849

/-! ## A314849.P10359091916967951351

`A242062(A313831(n))+A008586(n)`
-/

namespace A314849.P10359091916967951351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A313831 n).toNat + A008586 n

end

end A314849.P10359091916967951351

namespace A314849

/-- `A242062(A313831(n))+A008586(n)` -/
def P10359091916967951351.Spec : Prop :=
  ∀ n, P10359091916967951351.a n = A314849 n

end A314849

/-! ## A314849.P17963197462404907481

`A005843(A313745(n))-A314157(n)`
-/

namespace A314849.P17963197462404907481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313745 n).toNat - A314157 n

end

end A314849.P17963197462404907481

namespace A314849

/-- `A005843(A313745(n))-A314157(n)` -/
def P17963197462404907481.Spec : Prop :=
  ∀ n, P17963197462404907481.a n = A314849 n

end A314849

/-! ## A314849.P8763938574744091303

`A065502(A008458(n))-A314140(n)`
-/

namespace A314849.P8763938574744091303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314140 n

end

end A314849.P8763938574744091303

namespace A314849

/-- `A065502(A008458(n))-A314140(n)` -/
def P8763938574744091303.Spec : Prop :=
  ∀ n, P8763938574744091303.a n = A314849 n

end A314849

/-!
# A314850: Coordination sequence Gal.5.201.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314850, there is no canonical definition to state claims against.
-/

/-! ## A314850.P10846839294538579442

`A313752(n)-A001221(A128086(n))`
-/

namespace A314850.P10846839294538579442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n - A001221 (A128086 n).toNat

end

end A314850.P10846839294538579442

/-! ## A314850.P6187297767602538558

`A313075(A087051(n))+char[1]`
-/

namespace A314850.P6187297767602538558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 (A087051 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314850.P6187297767602538558

/-! ## A314850.P17256406511348517303

`A312951(n)+A000035(n²²)`
-/

namespace A314850.P17256406511348517303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312951 n + A000035 ((n ^ 2) ^ 2)

end

end A314850.P17256406511348517303

/-! ## A314850.P13152983125555780421

`A328369(3*n+1)+comp[A158263(3*n+2)]`
-/

namespace A314850.P13152983125555780421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158263 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (3 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314850.P13152983125555780421

/-! ## A314850.P8299589605587571980

`A250120(n)+A000493(A094976(n))`
-/

namespace A314850.P8299589605587571980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A000493 (A094976 n).toNat

end

end A314850.P8299589605587571980

/-!
# A314851: Coordination sequence Gal.6.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314851, the canonical program `A314851.P12082733388595412` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314851 has offset 0).

The definition of A314851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314851.P5425437238972833166

`A315242(n)-A046978(n)`
-/

namespace A314851.P5425437238972833166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315242 n - A046978 n

end

end A314851.P5425437238972833166

namespace A314851

/-- `A315242(n)-A046978(n)` -/
def P5425437238972833166.Spec : Prop :=
  ∀ n, P5425437238972833166.a n = A314851 n

end A314851

/-! ## A314851.P12082733388595412

`A314896(n)+n-A255347(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314851

/-- `A314896(n)+n-A255347(n)` -/
def P12082733388595412.Spec : Prop :=
  ∀ n, P12082733388595412.a n = A314851 n

theorem P12082733388595412.correct : P12082733388595412.Spec := by
  intro n
  simp only [A314851]

end A314851

/-! ## A314851.P3219136701696223298

`n-A001489(A314896(n)-A255347(n))`
-/

namespace A314851.P3219136701696223298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001489 (A314896 n - A255347 n).toNat

end

end A314851.P3219136701696223298

namespace A314851

/-- `n-A001489(A314896(n)-A255347(n))` -/
def P3219136701696223298.Spec : Prop :=
  ∀ n, P3219136701696223298.a n = A314851 n

end A314851

/-! ## A314851.P12851656859588829412

`A004525(n)+A313875(n)-A255347(n)`
-/

namespace A314851.P12851656859588829412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313875 n - A255347 n)

end

end A314851.P12851656859588829412

namespace A314851

/-- `A004525(n)+A313875(n)-A255347(n)` -/
def P12851656859588829412.Spec : Prop :=
  ∀ n, P12851656859588829412.a n = A314851 n

end A314851

/-! ## A314851.P10049739073614146600

`A315543(n)-A255347(n)`
-/

namespace A314851.P10049739073614146600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - A255347 n

end

end A314851.P10049739073614146600

namespace A314851

/-- `A315543(n)-A255347(n)` -/
def P10049739073614146600.Spec : Prop :=
  ∀ n, P10049739073614146600.a n = A314851 n

end A314851

/-!
# A314852: Coordination sequence Gal.6.560.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314852, there is no canonical definition to state claims against.
-/

/-! ## A314852.P4697963891925637716

`A160755(A313709(n))`
-/

namespace A314852.P4697963891925637716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A313709 n).toNat

end

end A314852.P4697963891925637716

/-! ## A314852.P10187596511755873978

`A314848(n)+A081603(A327506(n))`
-/

namespace A314852.P10187596511755873978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + A081603 (A327506 n).toNat

end

end A314852.P10187596511755873978

/-! ## A314852.P11453057697909668559

`A349150(3*n+1)+A262448(A000108(n))`
-/

namespace A314852.P11453057697909668559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349150 (3 * n + 1) + A262448 (A000108 n).toNat

end

end A314852.P11453057697909668559

/-! ## A314852.P9000491773772678292

`A239504(A056783(n+2))`
-/

namespace A314852.P9000491773772678292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A056783 (n + 2)).toNat

end

end A314852.P9000491773772678292

/-! ## A314852.P16640487878028984032

`A239504(A361625(n+2))`
-/

namespace A314852.P16640487878028984032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A361625 (n + 2)).toNat

end

end A314852.P16640487878028984032

/-!
# A314853: Coordination sequence Gal.6.590.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314853, there is no canonical definition to state claims against.
-/

/-! ## A314853.P10900908180476059944

`A106744(A315513(n))`
-/

namespace A314853.P10900908180476059944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A315513 n).toNat

end

end A314853.P10900908180476059944

/-! ## A314853.P11823376930220795244

`A250120(n)+A056594(A078844(n))`
-/

namespace A314853.P11823376930220795244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056594 (A078844 n).toNat

end

end A314853.P11823376930220795244

/-! ## A314853.P8324955075969494102

`A314848(n)+A005089(A149273(n))`
-/

namespace A314853.P8324955075969494102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + A005089 (A149273 n).toNat

end

end A314853.P8324955075969494102

/-! ## A314853.P6809513061028972019

`A008706(n)-A073267(A001250(n))`
-/

namespace A314853.P6809513061028972019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A073267 (A001250 n).toNat

end

end A314853.P6809513061028972019

/-! ## A314853.P15206534934849036282

`A008706(n)-A105700(A001047(n))`
-/

namespace A314853.P15206534934849036282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A105700 (A001047 n).toNat

end

end A314853.P15206534934849036282

/-!
# A314855: Coordination sequence Gal.6.581.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314855, there is no canonical definition to state claims against.
-/

/-! ## A314855.P11349259292181117055

`A313781(n)-A119464(A077866(n))`
-/

namespace A314855.P11349259292181117055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A119464 (A077866 n).toNat

end

end A314855.P11349259292181117055

/-! ## A314855.P16744498574647900477

`A040076(A104429(n))+A005408(2*n)`
-/

namespace A314855.P16744498574647900477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A104429 n).toNat + A005408 (2 * n)

end

end A314855.P16744498574647900477

/-!
# A314856: Coordination sequence Gal.5.196.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314856, there is no canonical definition to state claims against.
-/

/-! ## A314856.P1323195154312113399

`or(A230106(A111570(n)), A314488(n))`
-/

namespace A314856.P1323195154312113399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230106 (A111570 n).toNat) (A314488 n)

end

end A314856.P1323195154312113399

/-! ## A314856.P4111928924495554426

`A314844(n)+A178798(A049558(n+1))`
-/

namespace A314856.P4111928924495554426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314844 n + A178798 (A049558 (n + 1)).toNat

end

end A314856.P4111928924495554426

/-! ## A314856.P12883418479745827735

`A095955(3*n+1)+A055571(A008574(n))`
-/

namespace A314856.P12883418479745827735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (3 * n + 1) + A055571 (A008574 n).toNat

end

end A314856.P12883418479745827735

/-! ## A314856.P11533539225182427299

`A219764(2*(n+1))-A284270(A216245(n+1))`
-/

namespace A314856.P11533539225182427299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (2 * (n + 1)) - A284270 (A216245 (n + 1)).toNat

end

end A314856.P11533539225182427299

/-!
# A314857: Coordination sequence Gal.6.314.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314857, there is no canonical definition to state claims against.
-/

/-! ## A314857.P3206796016496704321

`A291154(or(floor(n/3), A291154(n+1)))`
-/

namespace A314857.P3206796016496704321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (Int.lor ⌊(n : ℚ) / 3⌋ (A291154 (n + 1))).toNat

end

end A314857.P3206796016496704321

/-! ## A314857.P5751250509635667282

`A291154(or(Δ[n²]+((2*n)%9)%2, A002264(n)))`
-/

namespace A314857.P5751250509635667282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (Int.lor ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((2 * n % 9 % 2 : ℕ) : ℤ)) (A002264 n)).toNat

end

end A314857.P5751250509635667282

/-! ## A314857.P6975335212841940898

`A311725(n)+A001221(A151144(n))`
-/

namespace A314857.P6975335212841940898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311725 n + A001221 (A151144 n).toNat

end

end A314857.P6975335212841940898

/-! ## A314857.P11080513212920355784

`A315013(n)-A000035(A128734(n))`
-/

namespace A314857.P11080513212920355784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315013 n - A000035 (A128734 n).toNat

end

end A314857.P11080513212920355784

/-!
# A314858: Coordination sequence Gal.5.270.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314858, there is no canonical definition to state claims against.
-/

/-! ## A314858.P2994272284664610539

`A329266(A076737(n+1))+A314821(n)`
-/

namespace A314858.P2994272284664610539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329266 (A076737 (n + 1)).toNat + A314821 n

end

end A314858.P2994272284664610539

/-!
# A314860: Coordination sequence Gal.6.77.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314860, there is no canonical definition to state claims against.
-/

/-! ## A314860.P15063149224897324937

`A322811(A051042(n))+A311505(n)`
-/

namespace A314860.P15063149224897324937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A051042 n).toNat + A311505 n

end

end A314860.P15063149224897324937

/-! ## A314860.P5828982180402432591

`A314733(n)+A141728(A341161(n+1))`
-/

namespace A314860.P5828982180402432591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314733 n + A141728 (A341161 (n + 1)).toNat

end

end A314860.P5828982180402432591

/-! ## A314860.P1477470487144068027

`A314497(n)+A010051(A001930(n))`
-/

namespace A314860.P1477470487144068027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314497 n + A010051 (A001930 n).toNat

end

end A314860.P1477470487144068027

/-! ## A314860.P4276364229814724478

`A314496(n)+A059841(A000110(n))`
-/

namespace A314860.P4276364229814724478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314496 n + A059841 (A000110 n).toNat

end

end A314860.P4276364229814724478

/-! ## A314860.P11676521073659774985

`xor(A083025(A104429(n)), A250120(n))`
-/

namespace A314860.P11676521073659774985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083025 (A104429 n).toNat) (A250120 n)

end

end A314860.P11676521073659774985

/-!
# A314861: Coordination sequence Gal.5.204.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314861, there is no canonical definition to state claims against.
-/

/-! ## A314861.P16256604336889410777

`A250120(n)-A103226(A005169(n))`
-/

namespace A314861.P16256604336889410777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A103226 (A005169 n).toNat

end

end A314861.P16256604336889410777

/-! ## A314861.P3580256751982036124

`A313580(n)-A179952(A052960(n))`
-/

namespace A314861.P3580256751982036124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n - A179952 (A052960 n).toNat

end

end A314861.P3580256751982036124

/-! ## A314861.P1305153796568342880

`xor(A250120(n), A277808(A230951(n)))`
-/

namespace A314861.P1305153796568342880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A277808 (A230951 n).toNat)

end

end A314861.P1305153796568342880

/-! ## A314861.P9235618317356012808

`A250120(n)+A074290(A317800(n+1))`
-/

namespace A314861.P9235618317356012808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A074290 (A317800 (n + 1)).toNat

end

end A314861.P9235618317356012808

/-! ## A314861.P12671955834070789455

`A250120(n)+A056594(A026107(n+2))`
-/

namespace A314861.P12671955834070789455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056594 (A026107 (n + 2)).toNat

end

end A314861.P12671955834070789455

/-!
# A314862: Coordination sequence Gal.6.295.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314862, there is no canonical definition to state claims against.
-/

/-! ## A314862.P8346652855577584009

`A088737(A265788(n+1))+A008586(n)`
-/

namespace A314862.P8346652855577584009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088737 (A265788 (n + 1)).toNat + A008586 n

end

end A314862.P8346652855577584009

/-! ## A314862.P4478698934595855933

`A311789(n)+A124764(A311807(3*n))`
-/

namespace A314862.P4478698934595855933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311789 n + A124764 (A311807 (3 * n)).toNat

end

end A314862.P4478698934595855933

/-! ## A314862.P5975191490817119692

`A311790(n)+A124764(A311807(3*n))`
-/

namespace A314862.P5975191490817119692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n + A124764 (A311807 (3 * n)).toNat

end

end A314862.P5975191490817119692

/-! ## A314862.P13133721649518281371

`A311791(n)+A124764(A311807(3*n))`
-/

namespace A314862.P13133721649518281371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A124764 (A311807 (3 * n)).toNat

end

end A314862.P13133721649518281371

/-! ## A314862.P3063991713125167969

`A291154(2*n+1)+A241707(A169613(n+3))`
-/

namespace A314862.P3063991713125167969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (2 * n + 1) + A241707 (A169613 (n + 3)).toNat

end

end A314862.P3063991713125167969

/-!
# A314863: Coordination sequence Gal.5.168.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314863, there is no canonical definition to state claims against.
-/

/-! ## A314863.P16653618585493455990

`A314864(n)-A340998(A314855(2*n+1))`
-/

namespace A314863.P16653618585493455990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314864 n - A340998 ((A314855 (2 * n + 1)).toNat + 140)

end

end A314863.P16653618585493455990

/-!
# A314864: Coordination sequence Gal.6.380.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314864, there is no canonical definition to state claims against.
-/

/-! ## A314864.P8035371023831164202

`or(A218786(A215953(n+1)), A314863(n))`
-/

namespace A314864.P8035371023831164202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218786 (A215953 (n + 1)).toNat) (A314863 n)

end

end A314864.P8035371023831164202

/-! ## A314864.P1288665599778296644

`A340998(A314855(2*n+1))+A314863(n)`
-/

namespace A314864.P1288665599778296644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A314855 (2 * n + 1)).toNat + 140) + A314863 n

end

end A314864.P1288665599778296644

/-!
# A314866: Coordination sequence Gal.6.281.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314866, there is no canonical definition to state claims against.
-/

/-! ## A314866.P12739055661861819514

`or(A006519(A276068(n+2)), A312539(n))`
-/

namespace A314866.P12739055661861819514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006519 (A276068 (n + 2)).toNat) (A312539 n)

end

end A314866.P12739055661861819514

/-!
# A314867: Coordination sequence Gal.6.174.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314867, there is no canonical definition to state claims against.
-/

/-! ## A314867.P2454631854418639803

`or(A001221(A347420(n)), A312318(n))`
-/

namespace A314867.P2454631854418639803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A347420 n).toNat) (A312318 n)

end

end A314867.P2454631854418639803

/-!
# A314868: Coordination sequence Gal.5.193.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314868, there is no canonical definition to state claims against.
-/

/-! ## A314868.P9082061205173905080

`A314869(n)-A185284(A016813(n))`
-/

namespace A314868.P9082061205173905080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314869 n - A185284 (A016813 n).toNat

end

end A314868.P9082061205173905080

/-! ## A314868.P8174930312703220513

`A314869(n)-A350271(A027828(n))`
-/

namespace A314868.P8174930312703220513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314869 n - A350271 (A027828 n).toNat

end

end A314868.P8174930312703220513

/-! ## A314868.P2583460093211485419

`A314869(n)-A340998(A077949(n))`
-/

namespace A314868.P2583460093211485419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314869 n - A340998 ((A077949 n).toNat + 140)

end

end A314868.P2583460093211485419

/-! ## A314868.P8835283784357686143

`A314869(n)-A185284(A311245(n))`
-/

namespace A314868.P8835283784357686143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314869 n - A185284 (A311245 n).toNat

end

end A314868.P8835283784357686143

/-! ## A314868.P1083769616051257706

`A314869(n)-A087003(A046468(n+1))`
-/

namespace A314868.P1083769616051257706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314869 n - A087003 (A046468 (n + 1)).toNat

end

end A314868.P1083769616051257706

/-!
# A314869: Coordination sequence Gal.5.191.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314869, there is no canonical definition to state claims against.
-/

/-! ## A314869.P989935813289739206

`A314868(n)+A185284(A016813(n))`
-/

namespace A314869.P989935813289739206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314868 n + A185284 (A016813 n).toNat

end

end A314869.P989935813289739206

/-! ## A314869.P4717925396908465270

`A314868(n)+A185284(A311245(n))`
-/

namespace A314869.P4717925396908465270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314868 n + A185284 (A311245 n).toNat

end

end A314869.P4717925396908465270

/-! ## A314869.P5512559220506617337

`A314868(n)+A178798(A005202(n+1))`
-/

namespace A314869.P5512559220506617337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314868 n + A178798 (A005202 (n + 1)).toNat

end

end A314869.P5512559220506617337

/-! ## A314869.P15466495580315846943

`A359370(A036378(2*(n+1)))+A314868(n)`
-/

namespace A314869.P15466495580315846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (A036378 (2 * (n + 1))).toNat + A314868 n

end

end A314869.P15466495580315846943

/-! ## A314869.P2871065996337742768

`A314868(n)+A185284(A047511(2*(n+2)))`
-/

namespace A314869.P2871065996337742768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314868 n + A185284 (A047511 (2 * (n + 2))).toNat

end

end A314869.P2871065996337742768

/-!
# A314870: Coordination sequence Gal.6.358.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314870, there is no canonical definition to state claims against.
-/

/-! ## A314870.P13662151972259720087

`xor(A001651(3*n+1), A194801(A122016(n+2)²))`
-/

namespace A314870.P13662151972259720087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001651 (3 * n + 1)) (A194801 (A122016 (n + 2) ^ 2).toNat)

end

end A314870.P13662151972259720087

/-! ## A314870.P10736494241367625833

`A223135((∑[n]+1)*2^n)+3*n`
-/

namespace A314870.P10736494241367625833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * 2 ^ n) + (3 * n : ℤ)

end

end A314870.P10736494241367625833

/-! ## A314870.P12921294318237009226

`A314893(n)-A033735(A254365(n))`
-/

namespace A314870.P12921294318237009226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n - A033735 (A254365 n).toNat

end

end A314870.P12921294318237009226

/-! ## A314870.P12098037593821429266

`A301298(n)-A249858(A057977(n))`
-/

namespace A314870.P12098037593821429266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A249858 (A057977 n).toNat

end

end A314870.P12098037593821429266

/-! ## A314870.P14337925770490249102

`A314893(n)-A301979(A042371(n))`
-/

namespace A314870.P14337925770490249102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n - A301979 (A042371 n).toNat

end

end A314870.P14337925770490249102

/-!
# A314871: Coordination sequence Gal.6.417.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314871, there is no canonical definition to state claims against.
-/

/-! ## A314871.P17811053520777918151

`A314872(n)-A316867(A304336(n)²)`
-/

namespace A314871.P17811053520777918151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314872 n - A316867 (A304336 n ^ 2).toNat

end

end A314871.P17811053520777918151

/-! ## A314871.P11846184228333523802

`A314872(n)-A340998(A009766(2*n+1))`
-/

namespace A314871.P11846184228333523802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314872 n - A340998 ((A009766 (2 * n + 1)).toNat + 140)

end

end A314871.P11846184228333523802

/-! ## A314871.P12728417498279310589

`A314872(n^A207539(n))`
-/

namespace A314871.P12728417498279310589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314872 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A207539 n : ℤ))).toNat

end

end A314871.P12728417498279310589

/-! ## A314871.P11287242137875938147

`A314872(n)^A100145(A052307(n))`
-/

namespace A314871.P11287242137875938147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314872 n : ℚ) ^ (A100145 (A052307 n).toNat : ℤ)

end

end A314871.P11287242137875938147

/-! ## A314871.P14337338604754795925

`A314872(A062399(n))`
-/

namespace A314871.P14337338604754795925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314872 (A062399 n).toNat

end

end A314871.P14337338604754795925

/-!
# A314872: Coordination sequence Gal.6.416.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314872, there is no canonical definition to state claims against.
-/

/-! ## A314872.P4605940381683093285

`A316867(A304336(n)²)+A314871(n)`
-/

namespace A314872.P4605940381683093285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A304336 n ^ 2).toNat + A314871 n

end

end A314872.P4605940381683093285

/-! ## A314872.P9736291237251867101

`A340998(A009766(2*n+1))+A314871(n)`
-/

namespace A314872.P9736291237251867101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A009766 (2 * n + 1)).toNat + 140) + A314871 n

end

end A314872.P9736291237251867101

/-!
# A314873: Coordination sequence Gal.5.206.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314873, there is no canonical definition to state claims against.
-/

/-! ## A314873.P15308090628561513752

`A301298(n)-Δ[A241460(n+1)]`
-/

namespace A314873.P15308090628561513752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - (f1 (n + 1) - f1 n)

end

end A314873.P15308090628561513752

/-! ## A314873.P3647438474354758922

`A250120(n)-A053398(A200030(n))`
-/

namespace A314873.P3647438474354758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A053398 (A200030 n).toNat

end

end A314873.P3647438474354758922

/-! ## A314873.P12610362576234970553

`A314879(n)-A104414(A245980(n))`
-/

namespace A314873.P12610362576234970553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n - A104414 (A245980 n).toNat

end

end A314873.P12610362576234970553

/-! ## A314873.P10178843270656687170

`A301298(n)-A122283(A064141(n+1))`
-/

namespace A314873.P10178843270656687170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A122283 (A064141 (n + 1)).toNat

end

end A314873.P10178843270656687170

/-!
# A314874: Coordination sequence Gal.3.33.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314874, the canonical program `A314874.P7600466854928953407` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314874 has offset 0).

The definition of A314874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314874.P7600466854928953407

`A310372(n)+A102283(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314874

/-- `A310372(n)+A102283(n)` -/
def P7600466854928953407.Spec : Prop :=
  ∀ n, P7600466854928953407.a n = A314874 n

theorem P7600466854928953407.correct : P7600466854928953407.Spec := by
  intro n
  simp only [A314874]

end A314874

/-! ## A314874.P747196938699393769

`A310372(n)+A049347(n+2)`
-/

namespace A314874.P747196938699393769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A049347 (n + 2)

end

end A314874.P747196938699393769

namespace A314874

/-- `A310372(n)+A049347(n+2)` -/
def P747196938699393769.Spec : Prop :=
  ∀ n, P747196938699393769.a n = A314874 n

end A314874

/-! ## A314874.P5514194944457216420

`A310372(n)+A010892(A016825(n))`
-/

namespace A314874.P5514194944457216420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A010892 (A016825 n).toNat

end

end A314874.P5514194944457216420

namespace A314874

/-- `A310372(n)+A010892(A016825(n))` -/
def P5514194944457216420.Spec : Prop :=
  ∀ n, P5514194944457216420.a n = A314874 n

end A314874

/-! ## A314874.P2843298686004338498

`A311586(2*n)-A008585(A004396(2*n))`
-/

namespace A314874.P2843298686004338498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 (2 * n) - A008585 (A004396 (2 * n)).toNat

end

end A314874.P2843298686004338498

namespace A314874

/-- `A311586(2*n)-A008585(A004396(2*n))` -/
def P2843298686004338498.Spec : Prop :=
  ∀ n, P2843298686004338498.a n = A314874 n

end A314874

/-! ## A314874.P4858306162006087706

`A310372(n)+A010892(A004769(n))`
-/

namespace A314874.P4858306162006087706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A010892 (A004769 n).toNat

end

end A314874.P4858306162006087706

namespace A314874

/-- `A310372(n)+A010892(A004769(n))` -/
def P4858306162006087706.Spec : Prop :=
  ∀ n, P4858306162006087706.a n = A314874 n

end A314874

/-! ## A314874.P2990495571841501003

`A310372(n)-A010892(Δ[A016754(n)])`
-/

namespace A314874.P2990495571841501003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n - A010892 (f1 (n + 1) - f1 n).toNat

end

end A314874.P2990495571841501003

namespace A314874

/-- `A310372(n)-A010892(Δ[A016754(n)])` -/
def P2990495571841501003.Spec : Prop :=
  ∀ n, P2990495571841501003.a n = A314874 n

end A314874

/-! ## A314874.P10884582953562452588

`A310372(n)+A010892(A017293(n))`
-/

namespace A314874.P10884582953562452588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A010892 (A017293 n).toNat

end

end A314874.P10884582953562452588

namespace A314874

/-- `A310372(n)+A010892(A017293(n))` -/
def P10884582953562452588.Spec : Prop :=
  ∀ n, P10884582953562452588.a n = A314874 n

end A314874

/-!
# A314875: Coordination sequence Gal.6.359.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314875, there is no canonical definition to state claims against.
-/

/-! ## A314875.P356048877925449706

`A314824(n)+A179831(A045663(n))`
-/

namespace A314875.P356048877925449706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314824 n + A179831 (A045663 n).toNat

end

end A314875.P356048877925449706

/-! ## A314875.P8363601490523634925

`A313738(n)-A001222(A125657(n))`
-/

namespace A314875.P8363601490523634925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n - A001222 (A125657 n).toNat

end

end A314875.P8363601490523634925

/-! ## A314875.P5800365698069692057

`A301710(n)-A325181(A056040(n))`
-/

namespace A314875.P5800365698069692057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A325181 (A056040 n).toNat

end

end A314875.P5800365698069692057

/-! ## A314875.P17865891744643052848

`or(A000035(A075929(n)), A312585(n))`
-/

namespace A314875.P17865891744643052848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A075929 n).toNat) (A312585 n)

end

end A314875.P17865891744643052848

/-! ## A314875.P14014881738442777841

`or(A313022(n), A373137(A215524(n)))`
-/

namespace A314875.P14014881738442777841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313022 n) (A373137 (A215524 n).toNat)

end

end A314875.P14014881738442777841

/-!
# A314876: Coordination sequence Gal.6.400.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314876, there is no canonical definition to state claims against.
-/

/-! ## A314876.P16096093591873253415

`A314877(n)-A103675(A209409(n))`
-/

namespace A314876.P16096093591873253415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 n - A103675 (A209409 n).toNat

end

end A314876.P16096093591873253415

/-! ## A314876.P14886586575166485277

`A314877(n)-A102683(A000079(n))`
-/

namespace A314876.P14886586575166485277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 n - A102683 (A000079 n).toNat

end

end A314876.P14886586575166485277

/-! ## A314876.P10724508695902489648

`A314877(n)-A185284(A033627(n+1))`
-/

namespace A314876.P10724508695902489648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 n - A185284 (A033627 (n + 1)).toNat

end

end A314876.P10724508695902489648

/-! ## A314876.P8706273512909298313

`A314877(n)-A185284(A151856(n))`
-/

namespace A314876.P8706273512909298313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 n - A185284 (A151856 n).toNat

end

end A314876.P8706273512909298313

/-! ## A314876.P10153572616432776973

`A314877(A062399(n))`
-/

namespace A314876.P10153572616432776973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314877 (A062399 n).toNat

end

end A314876.P10153572616432776973

/-!
# A314877: Coordination sequence Gal.6.399.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314877, there is no canonical definition to state claims against.
-/

/-! ## A314877.P4022281783755836699

`A314876(n)+A103675(A209409(n))`
-/

namespace A314877.P4022281783755836699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A103675 (A209409 n).toNat

end

end A314877.P4022281783755836699

/-! ## A314877.P7496313177454770610

`A314876(n)+A102683(A000079(n))`
-/

namespace A314877.P7496313177454770610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A102683 (A000079 n).toNat

end

end A314877.P7496313177454770610

/-! ## A314877.P14705391117615627184

`A314876(n)+A185284(A033627(n+1))`
-/

namespace A314877.P14705391117615627184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A185284 (A033627 (n + 1)).toNat

end

end A314877.P14705391117615627184

/-! ## A314877.P10138128272126001892

`A314876(n)+A185284(A151856(n))`
-/

namespace A314877.P10138128272126001892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A185284 (A151856 n).toNat

end

end A314877.P10138128272126001892

/-!
# A314878: Coordination sequence Gal.6.448.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314878, there is no canonical definition to state claims against.
-/

/-! ## A314878.P14952590140715664268

`A314879(n)-A118685(A114324(n))`
-/

namespace A314878.P14952590140715664268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n - A118685 (A114324 n).toNat

end

end A314878.P14952590140715664268

/-! ## A314878.P11783632559101398853

`A314879(n)-A133010(A168289(n))`
-/

namespace A314878.P11783632559101398853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n - A133010 (A168289 n).toNat

end

end A314878.P11783632559101398853

/-! ## A314878.P16138550064949164561

`A314879(n)-A133010(A147336(n+1))`
-/

namespace A314878.P16138550064949164561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n - A133010 (A147336 (n + 1)).toNat

end

end A314878.P16138550064949164561

/-! ## A314878.P337887976511751264

`(A314879(n)-A340998(A168289(n)))/A084904(n)!`
-/

namespace A314878.P337887976511751264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314879 n - A340998 ((A168289 n).toNat + 140) : ℚ) / (Nat.factorial (A084904 n).toNat : ℚ)

end

end A314878.P337887976511751264

/-! ## A314878.P7230376190784594163

`A314879(A062399(n))`
-/

namespace A314878.P7230376190784594163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 (A062399 n).toNat

end

end A314878.P7230376190784594163

/-!
# A314879: Coordination sequence Gal.6.447.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314879, there is no canonical definition to state claims against.
-/

/-! ## A314879.P8069951831895618922

`A314878(n)+A118685(A114324(n))`
-/

namespace A314879.P8069951831895618922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314878 n + A118685 (A114324 n).toNat

end

end A314879.P8069951831895618922

/-! ## A314879.P6258403109932832978

`A315045(n)-A242018(A317735(n+1))`
-/

namespace A314879.P6258403109932832978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315045 n - A242018 (A317735 (n + 1)).toNat

end

end A314879.P6258403109932832978

/-! ## A314879.P11629692124930141982

`A313236(n)+A134667(n)-A185118(A342852(n+1))`
-/

namespace A314879.P11629692124930141982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313236 n + A134667 n - A185118 (A342852 (n + 1)).toNat

end

end A314879.P11629692124930141982

/-! ## A314879.P15444116708321103281

`A314821(n)+A101637(A271895(n))`
-/

namespace A314879.P15444116708321103281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314821 n + A101637 (A271895 n).toNat

end

end A314879.P15444116708321103281

/-! ## A314879.P2434747014585586261

`A340998(A168289(n))+A314878(n)`
-/

namespace A314879.P2434747014585586261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A168289 n).toNat + 140) + A314878 n

end

end A314879.P2434747014585586261

/-!
# A314880: Coordination sequence Gal.6.592.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314880, there is no canonical definition to state claims against.
-/

/-! ## A314880.P11488431145524782123

`A314881(n)+A014856(A113863(n))`
-/

namespace A314880.P11488431145524782123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n + A014856 (A113863 n).toNat

end

end A314880.P11488431145524782123

/-! ## A314880.P7321240876494369306

`A314881(n)-A185238(A000041(n))`
-/

namespace A314880.P7321240876494369306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n - A185238 (A000041 n).toNat

end

end A314880.P7321240876494369306

/-! ## A314880.P7602418785277183970

`A314881(n)-A286939(A018024(n))`
-/

namespace A314880.P7602418785277183970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n - A286939 (A018024 n).toNat

end

end A314880.P7602418785277183970

/-! ## A314880.P14220018454805480268

`A314881(n)-A340998(A077949(n))`
-/

namespace A314880.P14220018454805480268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n - A340998 ((A077949 n).toNat + 140)

end

end A314880.P14220018454805480268

/-! ## A314880.P2611879543077445058

`A314881(n)-A185284(A311039(n))`
-/

namespace A314880.P2611879543077445058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314881 n - A185284 (A311039 n).toNat

end

end A314880.P2611879543077445058

/-!
# A314881: Coordination sequence Gal.6.591.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314881, there is no canonical definition to state claims against.
-/

/-! ## A314881.P17593107936254092770

`A340998(A077949(n))+A314880(n)`
-/

namespace A314881.P17593107936254092770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A077949 n).toNat + 140) + A314880 n

end

end A314881.P17593107936254092770

/-! ## A314881.P12620333361607693271

`A314880(n)+A185284(A311039(n))`
-/

namespace A314881.P12620333361607693271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314880 n + A185284 (A311039 n).toNat

end

end A314881.P12620333361607693271

/-! ## A314881.P11676411060245122094

`A359370(A036378(2*(n+1)))+A314880(n)`
-/

namespace A314881.P11676411060245122094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (A036378 (2 * (n + 1))).toNat + A314880 n

end

end A314881.P11676411060245122094

/-! ## A314881.P16173024163730422146

`A314880(n)+A014856(A000041(3*n+4))`
-/

namespace A314881.P16173024163730422146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314880 n + A014856 (A000041 (3 * n + 4)).toNat

end

end A314881.P16173024163730422146

/-!
# A314882: Coordination sequence Gal.6.359.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314882, there is no canonical definition to state claims against.
-/

/-! ## A314882.P10238365940072549634

`A312586(n)+A101688(A060100(n))`
-/

namespace A314882.P10238365940072549634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 n + A101688 (A060100 n).toNat

end

end A314882.P10238365940072549634

/-! ## A314882.P2230980843622897245

`round(1/acot(5*n))-A001222(A001835(n))`
-/

namespace A314882.P2230980843622897245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) - A001222 (A001835 n).toNat

end

end A314882.P2230980843622897245

/-! ## A314882.P8670949800924275850

`A008706(n)-A001222(A001835(n))`
-/

namespace A314882.P8670949800924275850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A001835 n).toNat

end

end A314882.P8670949800924275850

/-! ## A314882.P2866227294462829635

`A008706(n)-A001222(A005246(2*n))`
-/

namespace A314882.P2866227294462829635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A005246 (2 * n)).toNat

end

end A314882.P2866227294462829635

/-! ## A314882.P1153829804796139950

`or(A301684(n), A387121(A131061(3*n+2)))`
-/

namespace A314882.P1153829804796139950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301684 n) (A387121 (A131061 (3 * n + 2)).toNat)

end

end A314882.P1153829804796139950

/-!
# A314883: Coordination sequence Gal.6.540.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314883, there is no canonical definition to state claims against.
-/

/-! ## A314883.P4458950375207281017

`A139130(2*n+1)-A374097(A069358(n+1))`
-/

namespace A314883.P4458950375207281017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139130 (2 * n + 1) - A374097 (A069358 (n + 1)).toNat

end

end A314883.P4458950375207281017

/-! ## A314883.P3502644643548473260

`or(A301684(n), A336500(A000786(n)))`
-/

namespace A314883.P3502644643548473260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301684 n) (A336500 (A000786 n).toNat)

end

end A314883.P3502644643548473260

/-! ## A314883.P5537972591149402822

`or(A122841(A206094(n+1)), A301684(n))`
-/

namespace A314883.P5537972591149402822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122841 (A206094 (n + 1)).toNat) (A301684 n)

end

end A314883.P5537972591149402822

/-! ## A314883.P1520420149586143399

`A010815(A008708(n))+A005117(3*n+1)`
-/

namespace A314883.P1520420149586143399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008708 n).toNat + A005117 (3 * n + 1)

end

end A314883.P1520420149586143399

/-! ## A314883.P6831912431683019485

`A005117(3*n+1)-A100995(A002212(n))`
-/

namespace A314883.P6831912431683019485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A100995 (A002212 n).toNat

end

end A314883.P6831912431683019485

/-!
# A314884: Coordination sequence Gal.6.150.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314884, the canonical program `A314884.P14768008204403589957` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314884 has offset 0).

The definition of A314884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314884.P14768008204403589957

`A008458(n)+A008576(n)-A311196(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314884

/-- `A008458(n)+A008576(n)-A311196(n)` -/
def P14768008204403589957.Spec : Prop :=
  ∀ n, P14768008204403589957.a n = A314884 n

theorem P14768008204403589957.correct : P14768008204403589957.Spec := by
  intro n
  simp only [A314884]

end A314884

/-! ## A314884.P17971270164860028021

`A313729(n)-∑[A022003(n)]`
-/

namespace A314884.P17971270164860028021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314884.P17971270164860028021

namespace A314884

/-- `A313729(n)-∑[A022003(n)]` -/
def P17971270164860028021.Spec : Prop :=
  ∀ n, P17971270164860028021.a n = A314884 n

end A314884

/-! ## A314884.P10684332236036077431

`A313729(n)-A002264(n+1)`
-/

namespace A314884.P10684332236036077431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n - A002264 (n + 1)

end

end A314884.P10684332236036077431

namespace A314884

/-- `A313729(n)-A002264(n+1)` -/
def P10684332236036077431.Spec : Prop :=
  ∀ n, P10684332236036077431.a n = A314884 n

end A314884

/-! ## A314884.P3927982664397450869

`A313729(n)-A008615(2*n+1)`
-/

namespace A314884.P3927982664397450869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n - A008615 (2 * n + 1)

end

end A314884.P3927982664397450869

namespace A314884

/-- `A313729(n)-A008615(2*n+1)` -/
def P3927982664397450869.Spec : Prop :=
  ∀ n, P3927982664397450869.a n = A314884 n

end A314884

/-! ## A314884.P16207995372354282908

`A008576(n)+A313729(n)-A008486(n)`
-/

namespace A314884.P16207995372354282908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313729 n - A008486 n)

end

end A314884.P16207995372354282908

namespace A314884

/-- `A008576(n)+A313729(n)-A008486(n)` -/
def P16207995372354282908.Spec : Prop :=
  ∀ n, P16207995372354282908.a n = A314884 n

end A314884

/-! ## A314884.P1099893718686225644

`A313859(n)-∑[A021913(n)]`
-/

namespace A314884.P1099893718686225644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314884.P1099893718686225644

namespace A314884

/-- `A313859(n)-∑[A021913(n)]` -/
def P1099893718686225644.Spec : Prop :=
  ∀ n, P1099893718686225644.a n = A314884 n

end A314884

/-! ## A314884.P10958467085383103226

`A313859(n)-Δ[A011848(n)]`
-/

namespace A314884.P10958467085383103226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n - (f1 (n + 1) - f1 n)

end

end A314884.P10958467085383103226

namespace A314884

/-- `A313859(n)-Δ[A011848(n)]` -/
def P10958467085383103226.Spec : Prop :=
  ∀ n, P10958467085383103226.a n = A314884 n

end A314884

/-! ## A314884.P931205587233044871

`A004525(n)+A313859(n)-n`
-/

namespace A314884.P931205587233044871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313859 n - (n : ℤ))

end

end A314884.P931205587233044871

namespace A314884

/-- `A004525(n)+A313859(n)-n` -/
def P931205587233044871.Spec : Prop :=
  ∀ n, P931205587233044871.a n = A314884 n

end A314884

/-! ## A314884.P16007450086161437784

`abs(A008592(n)-A314134(n))`
-/

namespace A314884.P16007450086161437784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314134 n|

end

end A314884.P16007450086161437784

namespace A314884

/-- `abs(A008592(n)-A314134(n))` -/
def P16007450086161437784.Spec : Prop :=
  ∀ n, P16007450086161437784.a n = A314884 n

end A314884

/-! ## A314884.P1891611119383382951

`A008458(n)+A008574(n)-A314134(n)`
-/

namespace A314884.P1891611119383382951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314134 n)

end

end A314884.P1891611119383382951

namespace A314884

/-- `A008458(n)+A008574(n)-A314134(n)` -/
def P1891611119383382951.Spec : Prop :=
  ∀ n, P1891611119383382951.a n = A314884 n

end A314884

/-! ## A314884.P16698753139758351408

`∑{d}[A008592(n)-A314134(n), A000010(#)]`
-/

namespace A314884.P16698753139758351408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314884.P16698753139758351408

namespace A314884

/-- `∑{d}[A008592(n)-A314134(n), A000010(#)]` -/
def P16698753139758351408.Spec : Prop :=
  ∀ n, P16698753139758351408.a n = A314884 n

end A314884

/-! ## A314884.P18163009596652682638

`A315768(n)-record[A283971(n)]`
-/

namespace A314884.P18163009596652682638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314884.P18163009596652682638

namespace A314884

/-- `A315768(n)-record[A283971(n)]` -/
def P18163009596652682638.Spec : Prop :=
  ∀ n, P18163009596652682638.a n = A314884 n

end A314884

/-! ## A314884.P2715843627745876323

`A315768(n)-A042965(n+1)`
-/

namespace A314884.P2715843627745876323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - A042965 (n + 1)

end

end A314884.P2715843627745876323

namespace A314884

/-- `A315768(n)-A042965(n+1)` -/
def P2715843627745876323.Spec : Prop :=
  ∀ n, P2715843627745876323.a n = A314884 n

end A314884

/-! ## A314884.P11036881730873857158

`A315768(n)-A004396(2*n)`
-/

namespace A314884.P11036881730873857158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315768 n - A004396 (2 * n)

end

end A314884.P11036881730873857158

namespace A314884

/-- `A315768(n)-A004396(2*n)` -/
def P11036881730873857158.Spec : Prop :=
  ∀ n, P11036881730873857158.a n = A314884 n

end A314884

/-! ## A314884.P8725749922323059591

`A008576(n)+A315768(n)-A008574(n)`
-/

namespace A314884.P8725749922323059591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315768 n - A008574 n)

end

end A314884.P8725749922323059591

namespace A314884

/-- `A008576(n)+A315768(n)-A008574(n)` -/
def P8725749922323059591.Spec : Prop :=
  ∀ n, P8725749922323059591.a n = A314884 n

end A314884

/-! ## A314884.P15399698258869041876

`A004525(A314108(n))+2*n`
-/

namespace A314884.P15399698258869041876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314108 n).toNat + (2 * n : ℤ)

end

end A314884.P15399698258869041876

namespace A314884

/-- `A004525(A314108(n))+2*n` -/
def P15399698258869041876.Spec : Prop :=
  ∀ n, P15399698258869041876.a n = A314884 n

end A314884

/-! ## A314884.P3343699133450133955

`A004525(A315315(n))+2*n`
-/

namespace A314884.P3343699133450133955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315315 n).toNat + (2 * n : ℤ)

end

end A314884.P3343699133450133955

namespace A314884

/-- `A004525(A315315(n))+2*n` -/
def P3343699133450133955.Spec : Prop :=
  ∀ n, P3343699133450133955.a n = A314884 n

end A314884

/-! ## A314884.P14573771179345582572

`A004525(A315462(n))+2*n`
-/

namespace A314884.P14573771179345582572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315462 n).toNat + (2 * n : ℤ)

end

end A314884.P14573771179345582572

namespace A314884

/-- `A004525(A315462(n))+2*n` -/
def P14573771179345582572.Spec : Prop :=
  ∀ n, P14573771179345582572.a n = A314884 n

end A314884

/-! ## A314884.P2264809075548733297

`A004525(A315465(n))+2*n`
-/

namespace A314884.P2264809075548733297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315465 n).toNat + (2 * n : ℤ)

end

end A314884.P2264809075548733297

namespace A314884

/-- `A004525(A315465(n))+2*n` -/
def P2264809075548733297.Spec : Prop :=
  ∀ n, P2264809075548733297.a n = A314884 n

end A314884

/-!
# A314885: Coordination sequence Gal.6.245.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314885, the canonical program `A314885.P6042204147825848892` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314885 has offset 0).

The definition of A314885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314885.P6458652636087835736

`(A315326(n)+A008574(n))/2`
-/

namespace A314885.P6458652636087835736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315326 n + A008574 n : ℚ) / 2

end

end A314885.P6458652636087835736

namespace A314885

/-- `(A315326(n)+A008574(n))/2` -/
def P6458652636087835736.Spec : Prop :=
  ∀ n, P6458652636087835736.a n = (A314885 n : ℚ)

end A314885

/-! ## A314885.P6042204147825848892

`abs(A008592(n)-A314133(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314885

/-- `abs(A008592(n)-A314133(n))` -/
def P6042204147825848892.Spec : Prop :=
  ∀ n, P6042204147825848892.a n = A314885 n

theorem P6042204147825848892.correct : P6042204147825848892.Spec := by
  intro n
  simp only [A314885]

end A314885

/-! ## A314885.P16571843288459899389

`A008458(n)+A008574(n)-A314133(n)`
-/

namespace A314885.P16571843288459899389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314133 n)

end

end A314885.P16571843288459899389

namespace A314885

/-- `A008458(n)+A008574(n)-A314133(n)` -/
def P16571843288459899389.Spec : Prop :=
  ∀ n, P16571843288459899389.a n = A314885 n

end A314885

/-! ## A314885.P16186362865923829450

`∑{d}[A008592(n)-A314133(n), A000010(#)]`
-/

namespace A314885.P16186362865923829450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314885.P16186362865923829450

namespace A314885

/-- `∑{d}[A008592(n)-A314133(n), A000010(#)]` -/
def P16186362865923829450.Spec : Prop :=
  ∀ n, P16186362865923829450.a n = A314885 n

end A314885

/-! ## A314885.P17903169958316765570

`A008458(n)+n-A004526(A310380(n))`
-/

namespace A314885.P17903169958316765570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310380 n).toNat)

end

end A314885.P17903169958316765570

namespace A314885

/-- `A008458(n)+n-A004526(A310380(n))` -/
def P17903169958316765570.Spec : Prop :=
  ∀ n, P17903169958316765570.a n = A314885 n

end A314885

/-! ## A314885.P9952368799349944466

`A005843(A008458(n)-n)-A314133(n)`
-/

namespace A314885.P9952368799349944466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314133 n

end

end A314885.P9952368799349944466

namespace A314885

/-- `A005843(A008458(n)-n)-A314133(n)` -/
def P9952368799349944466.Spec : Prop :=
  ∀ n, P9952368799349944466.a n = A314885 n

end A314885

/-! ## A314885.P14427187454929896441

`A004525(A313869(n))+2*n`
-/

namespace A314885.P14427187454929896441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313869 n).toNat + (2 * n : ℤ)

end

end A314885.P14427187454929896441

namespace A314885

/-- `A004525(A313869(n))+2*n` -/
def P14427187454929896441.Spec : Prop :=
  ∀ n, P14427187454929896441.a n = A314885 n

end A314885

/-! ## A314885.P1441935164394631771

`A004525(A314106(n))+2*n`
-/

namespace A314885.P1441935164394631771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314106 n).toNat + (2 * n : ℤ)

end

end A314885.P1441935164394631771

namespace A314885

/-- `A004525(A314106(n))+2*n` -/
def P1441935164394631771.Spec : Prop :=
  ∀ n, P1441935164394631771.a n = A314885 n

end A314885

/-! ## A314885.P16011131715743193199

`A004525(A315316(n))+2*n`
-/

namespace A314885.P16011131715743193199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315316 n).toNat + (2 * n : ℤ)

end

end A314885.P16011131715743193199

namespace A314885

/-- `A004525(A315316(n))+2*n` -/
def P16011131715743193199.Spec : Prop :=
  ∀ n, P16011131715743193199.a n = A314885 n

end A314885

/-! ## A314885.P9542532373203100595

`A004525(A315464(n))+2*n`
-/

namespace A314885.P9542532373203100595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315464 n).toNat + (2 * n : ℤ)

end

end A314885.P9542532373203100595

namespace A314885

/-- `A004525(A315464(n))+2*n` -/
def P9542532373203100595.Spec : Prop :=
  ∀ n, P9542532373203100595.a n = A314885 n

end A314885

/-! ## A314885.P5208838005197684308

`A004525(A315466(n))+2*n`
-/

namespace A314885.P5208838005197684308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315466 n).toNat + (2 * n : ℤ)

end

end A314885.P5208838005197684308

namespace A314885

/-- `A004525(A315466(n))+2*n` -/
def P5208838005197684308.Spec : Prop :=
  ∀ n, P5208838005197684308.a n = A314885 n

end A314885

/-! ## A314885.P6952817262884866610

`A092038(A314109(n))+A130824(n)/2`
-/

namespace A314885.P6952817262884866610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092038 (A314109 n).toNat : ℚ) + (A130824 n : ℚ) / 2

end

end A314885.P6952817262884866610

namespace A314885

/-- `A092038(A314109(n))+A130824(n)/2` -/
def P6952817262884866610.Spec : Prop :=
  ∀ n, P6952817262884866610.a n = (A314885 n : ℚ)

end A314885

/-! ## A314885.P16138175281564181023

`A004396(A315762(n)+n)`
-/

namespace A314885.P16138175281564181023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315762 n + (n : ℤ)).toNat

end

end A314885.P16138175281564181023

namespace A314885

/-- `A004396(A315762(n)+n)` -/
def P16138175281564181023.Spec : Prop :=
  ∀ n, P16138175281564181023.a n = A314885 n

end A314885

/-! ## A314885.P15189924444608519147

`A004396(A315767(n)+n)`
-/

namespace A314885.P15189924444608519147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315767 n + (n : ℤ)).toNat

end

end A314885.P15189924444608519147

namespace A314885

/-- `A004396(A315767(n)+n)` -/
def P15189924444608519147.Spec : Prop :=
  ∀ n, P15189924444608519147.a n = A314885 n

end A314885

/-! ## A314885.P12987308451301731912

`A274616(A315762(n)+n)`
-/

namespace A314885.P12987308451301731912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315762 n + (n : ℤ)).toNat

end

end A314885.P12987308451301731912

namespace A314885

/-- `A274616(A315762(n)+n)` -/
def P12987308451301731912.Spec : Prop :=
  ∀ n, P12987308451301731912.a n = A314885 n

end A314885

/-! ## A314885.P8425353380858256143

`A274616(A315767(n)+n)`
-/

namespace A314885.P8425353380858256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315767 n + (n : ℤ)).toNat

end

end A314885.P8425353380858256143

namespace A314885

/-- `A274616(A315767(n)+n)` -/
def P8425353380858256143.Spec : Prop :=
  ∀ n, P8425353380858256143.a n = A314885 n

end A314885

/-! ## A314885.P3127075870922259111

`A004396(A310413(2*n)-A008585(n))`
-/

namespace A314885.P3127075870922259111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310413 (2 * n) - A008585 n).toNat

end

end A314885.P3127075870922259111

namespace A314885

/-- `A004396(A310413(2*n)-A008585(n))` -/
def P3127075870922259111.Spec : Prop :=
  ∀ n, P3127075870922259111.a n = A314885 n

end A314885

/-! ## A314885.P15827328786056163979

`A314052(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314885.P15827328786056163979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314052 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314885.P15827328786056163979

namespace A314885

/-- `A314052(2*n)+A008458(n+1)-(12*n+6)` -/
def P15827328786056163979.Spec : Prop :=
  ∀ n, P15827328786056163979.a n = A314885 n

end A314885

/-! ## A314885.P423095825391554783

`A004396(A310413(2*n))-A005843(n)`
-/

namespace A314885.P423095825391554783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310413 (2 * n)).toNat - A005843 n

end

end A314885.P423095825391554783

namespace A314885

/-- `A004396(A310413(2*n))-A005843(n)` -/
def P423095825391554783.Spec : Prop :=
  ∀ n, P423095825391554783.a n = A314885 n

end A314885

/-! ## A314885.P3717101962431944048

`A004396(A313572(2*n))-A005843(n)`
-/

namespace A314885.P3717101962431944048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313572 (2 * n)).toNat - A005843 n

end

end A314885.P3717101962431944048

namespace A314885

/-- `A004396(A313572(2*n))-A005843(n)` -/
def P3717101962431944048.Spec : Prop :=
  ∀ n, P3717101962431944048.a n = A314885 n

end A314885

/-!
# A314886: Coordination sequence Gal.5.114.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314886, the canonical program `A314886.P4715699633682166519` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314886 has offset 0).

The definition of A314886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314886.P3187433704866008125

`A330025(n)+A312143(n)`
-/

namespace A314886.P3187433704866008125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312143 n

end

end A314886.P3187433704866008125

namespace A314886

/-- `A330025(n)+A312143(n)` -/
def P3187433704866008125.Spec : Prop :=
  ∀ n, P3187433704866008125.a n = A314886 n

end A314886

/-! ## A314886.P311570731793564794

`abs(A008592(n)-A301726(n))`
-/

namespace A314886.P311570731793564794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A301726 n|

end

end A314886.P311570731793564794

namespace A314886

/-- `abs(A008592(n)-A301726(n))` -/
def P311570731793564794.Spec : Prop :=
  ∀ n, P311570731793564794.a n = A314886 n

end A314886

/-! ## A314886.P2865712127241235072

`A314708(n)+A002266(n+2)`
-/

namespace A314886.P2865712127241235072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + A002266 (n + 2)

end

end A314886.P2865712127241235072

namespace A314886

/-- `A314708(n)+A002266(n+2)` -/
def P2865712127241235072.Spec : Prop :=
  ∀ n, P2865712127241235072.a n = A314886 n

end A314886

/-! ## A314886.P10547620469284559731

`2*A008706(n)-A301726(n)`
-/

namespace A314886.P10547620469284559731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A301726 n

end

end A314886.P10547620469284559731

namespace A314886

/-- `2*A008706(n)-A301726(n)` -/
def P10547620469284559731.Spec : Prop :=
  ∀ n, P10547620469284559731.a n = A314886 n

end A314886

/-! ## A314886.P2106856996434444015

`abs(A008593(n)-(A301726(n)+n))`
-/

namespace A314886.P2106856996434444015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A301726 n + (n : ℤ))|

end

end A314886.P2106856996434444015

namespace A314886

/-- `abs(A008593(n)-(A301726(n)+n))` -/
def P2106856996434444015.Spec : Prop :=
  ∀ n, P2106856996434444015.a n = A314886 n

end A314886

/-! ## A314886.P5168554928280200540

`A047263(n+1)+A314708(n)-n`
-/

namespace A314886.P5168554928280200540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314708 n - (n : ℤ))

end

end A314886.P5168554928280200540

namespace A314886

/-- `A047263(n+1)+A314708(n)-n` -/
def P5168554928280200540.Spec : Prop :=
  ∀ n, P5168554928280200540.a n = A314886 n

end A314886

/-! ## A314886.P4715699633682166519

`A008574(n)+A004525(A047263(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A314886

/-- `A008574(n)+A004525(A047263(n+1))` -/
def P4715699633682166519.Spec : Prop :=
  ∀ n, P4715699633682166519.a n = A314886 n

theorem P4715699633682166519.correct : P4715699633682166519.Spec := by
  intro n
  simp only [A314886]

end A314886

/-! ## A314886.P12501612772827194343

`A005843(A008574(n))+n-A312903(n)`
-/

namespace A314886.P12501612772827194343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A312903 n)

end

end A314886.P12501612772827194343

namespace A314886

/-- `A005843(A008574(n))+n-A312903(n)` -/
def P12501612772827194343.Spec : Prop :=
  ∀ n, P12501612772827194343.a n = A314886 n

end A314886

/-! ## A314886.P7346331111635918113

`A004525(A047263(n+1))+A008486(n)+n`
-/

namespace A314886.P7346331111635918113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008486 n + (n : ℤ))

end

end A314886.P7346331111635918113

namespace A314886

/-- `A004525(A047263(n+1))+A008486(n)+n` -/
def P7346331111635918113.Spec : Prop :=
  ∀ n, P7346331111635918113.a n = A314886 n

end A314886

/-! ## A314886.P5961055977454168102

`A004525(A047263(n+1))+A008706(n)-n`
-/

namespace A314886.P5961055977454168102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008706 n - (n : ℤ))

end

end A314886.P5961055977454168102

namespace A314886

/-- `A004525(A047263(n+1))+A008706(n)-n` -/
def P5961055977454168102.Spec : Prop :=
  ∀ n, P5961055977454168102.a n = A314886 n

end A314886

/-! ## A314886.P11747010841489122398

`A008706(n)+A004396(A151988(n))-A151988(n)`
-/

namespace A314886.P11747010841489122398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A004396 (A151988 n).toNat - A151988 n)

end

end A314886.P11747010841489122398

namespace A314886

/-- `A008706(n)+A004396(A151988(n))-A151988(n)` -/
def P11747010841489122398.Spec : Prop :=
  ∀ n, P11747010841489122398.a n = A314886 n

end A314886

/-! ## A314886.P15484562555856187101

`(A315327(n)+A008574(n))/2`
-/

namespace A314886.P15484562555856187101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315327 n + A008574 n : ℚ) / 2

end

end A314886.P15484562555856187101

namespace A314886

/-- `(A315327(n)+A008574(n))/2` -/
def P15484562555856187101.Spec : Prop :=
  ∀ n, P15484562555856187101.a n = (A314886 n : ℚ)

end A314886

/-! ## A314886.P10764119063507069034

`A315536(n)-n`
-/

namespace A314886.P10764119063507069034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - (n : ℤ)

end

end A314886.P10764119063507069034

namespace A314886

/-- `A315536(n)-n` -/
def P10764119063507069034.Spec : Prop :=
  ∀ n, P10764119063507069034.a n = A314886 n

end A314886

/-! ## A314886.P15244882009369351663

`A315547(n)-A151988(n)`
-/

namespace A314886.P15244882009369351663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A151988 n

end

end A314886.P15244882009369351663

namespace A314886

/-- `A315547(n)-A151988(n)` -/
def P15244882009369351663.Spec : Prop :=
  ∀ n, P15244882009369351663.a n = A314886 n

end A314886

/-! ## A314886.P11074651137210852316

`A313928(n)+A330025(n)-n`
-/

namespace A314886.P11074651137210852316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n + (A330025 n - (n : ℤ))

end

end A314886.P11074651137210852316

namespace A314886

/-- `A313928(n)+A330025(n)-n` -/
def P11074651137210852316.Spec : Prop :=
  ∀ n, P11074651137210852316.a n = A314886 n

end A314886

/-! ## A314886.P12454859540169010995

`A005843(A008458(n)-n)-A301726(n)`
-/

namespace A314886.P12454859540169010995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A301726 n

end

end A314886.P12454859540169010995

namespace A314886

/-- `A005843(A008458(n)-n)-A301726(n)` -/
def P12454859540169010995.Spec : Prop :=
  ∀ n, P12454859540169010995.a n = A314886 n

end A314886

/-! ## A314886.P3086485662076186399

`A004525(A313905(n))+2*n`
-/

namespace A314886.P3086485662076186399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313905 n).toNat + (2 * n : ℤ)

end

end A314886.P3086485662076186399

namespace A314886

/-- `A004525(A313905(n))+2*n` -/
def P3086485662076186399.Spec : Prop :=
  ∀ n, P3086485662076186399.a n = A314886 n

end A314886

/-! ## A314886.P3088008668058011530

`A004525(A315468(n))+2*n`
-/

namespace A314886.P3088008668058011530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315468 n).toNat + (2 * n : ℤ)

end

end A314886.P3088008668058011530

namespace A314886

/-- `A004525(A315468(n))+2*n` -/
def P3088008668058011530.Spec : Prop :=
  ∀ n, P3088008668058011530.a n = A314886 n

end A314886

/-! ## A314886.P17126879264323618089

`A004396(A301724(n))+n`
-/

namespace A314886.P17126879264323618089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301724 n).toNat + (n : ℤ)

end

end A314886.P17126879264323618089

namespace A314886

/-- `A004396(A301724(n))+n` -/
def P17126879264323618089.Spec : Prop :=
  ∀ n, P17126879264323618089.a n = A314886 n

end A314886

/-! ## A314886.P5366196665252229909

`A004396(A315333(n))+n`
-/

namespace A314886.P5366196665252229909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315333 n).toNat + (n : ℤ)

end

end A314886.P5366196665252229909

namespace A314886

/-- `A004396(A315333(n))+n` -/
def P5366196665252229909.Spec : Prop :=
  ∀ n, P5366196665252229909.a n = A314886 n

end A314886

/-!
# A314887: Coordination sequence Gal.6.318.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314887, there is no canonical definition to state claims against.
-/

/-! ## A314887.P605540053348161614

`A004396(A315057(n)+2*n)`
-/

namespace A314887.P605540053348161614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315057 n + (2 * n : ℤ)).toNat

end

end A314887.P605540053348161614

/-! ## A314887.P13270108852008143067

`A004396(A315057(n)+n+n)`
-/

namespace A314887.P13270108852008143067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315057 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314887.P13270108852008143067

/-! ## A314887.P17694669001135220549

`A004525(A313054(A008486(n))-A313054(n))`
-/

namespace A314887.P17694669001135220549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313054 (A008486 n).toNat - A313054 n).toNat

end

end A314887.P17694669001135220549

/-! ## A314887.P12647852028697216307

`or(A046660(A022131(n)), A314886(n))`
-/

namespace A314887.P12647852028697216307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A022131 n).toNat) (A314886 n)

end

end A314887.P12647852028697216307

/-! ## A314887.P3621572915624545851

`or(A266786(A022101(n)), A314886(n))`
-/

namespace A314887.P3621572915624545851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266786 (A022101 n).toNat) (A314886 n)

end

end A314887.P3621572915624545851

/-!
# A314888: Coordination sequence Gal.5.185.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314888, there is no canonical definition to state claims against.
-/

/-! ## A314888.P1110015477603420340

`A311865(n)+A001221(A092236(n))`
-/

namespace A314888.P1110015477603420340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n + A001221 (A092236 n).toNat

end

end A314888.P1110015477603420340

/-! ## A314888.P13412991304520809135

`A008706(n)-A001876(A186739(n))`
-/

namespace A314888.P13412991304520809135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001876 (A186739 n).toNat

end

end A314888.P13412991304520809135

/-! ## A314888.P4984510707959637660

`or(A120221(A004978(n+1)), A314840(n))`
-/

namespace A314888.P4984510707959637660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120221 (A004978 (n + 1)).toNat) (A314840 n)

end

end A314888.P4984510707959637660

/-! ## A314888.P17940734155226774176

`xor(A239146(n+1), A301298(A062399(n)))`
-/

namespace A314888.P17940734155226774176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A239146 (n + 1)) (A301298 (A062399 n).toNat)

end

end A314888.P17940734155226774176

/-! ## A314888.P9427485573080928375

`A268835(A358586(n+1))+4*n`
-/

namespace A314888.P9427485573080928375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268835 (A358586 (n + 1)).toNat + (4 * n : ℤ)

end

end A314888.P9427485573080928375

/-!
# A314889: Coordination sequence Gal.5.184.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314889, there is no canonical definition to state claims against.
-/

/-! ## A314889.P10351042099998338068

`A250120(n)-A131531(A018001(n))`
-/

namespace A314889.P10351042099998338068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A131531 (A018001 n).toNat

end

end A314889.P10351042099998338068

/-! ## A314889.P10514565538764723021

`A314943(n)-A102683(A283007(n))`
-/

namespace A314889.P10514565538764723021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A102683 (A283007 n).toNat

end

end A314889.P10514565538764723021

/-! ## A314889.P1947205056199806842

`A250120(n)-A131531(A017983(2*n))`
-/

namespace A314889.P1947205056199806842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A131531 (A017983 (2 * n)).toNat

end

end A314889.P1947205056199806842

/-! ## A314889.P13077542080175657667

`A047363(2*n+1)+A004277(n)-A131531(A018001(n))`
-/

namespace A314889.P13077542080175657667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A004277 n - A131531 (A018001 n).toNat

end

end A314889.P13077542080175657667

/-! ## A314889.P15512451441556846943

`A022144(n)-A047486(2*n+1)-A131531(A018001(n))`
-/

namespace A314889.P15512451441556846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047486 (2 * n + 1) - A131531 (A018001 n).toNat

end

end A314889.P15512451441556846943

/-!
# A314890: Coordination sequence Gal.6.152.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314890, the canonical program `A314890.P4689153716661690256` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314890 has offset 0).

The definition of A314890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314890.P4689153716661690256

`abs(A008592(n)-A314127(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314890

/-- `abs(A008592(n)-A314127(n))` -/
def P4689153716661690256.Spec : Prop :=
  ∀ n, P4689153716661690256.a n = A314890 n

theorem P4689153716661690256.correct : P4689153716661690256.Spec := by
  intro n
  simp only [A314890]

end A314890

/-! ## A314890.P12186227303627130463

`A008458(n)+A008574(n)-A314127(n)`
-/

namespace A314890.P12186227303627130463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314127 n)

end

end A314890.P12186227303627130463

namespace A314890

/-- `A008458(n)+A008574(n)-A314127(n)` -/
def P12186227303627130463.Spec : Prop :=
  ∀ n, P12186227303627130463.a n = A314890 n

end A314890

/-! ## A314890.P3166577181046757182

`A004525(A313899(n))+2*n`
-/

namespace A314890.P3166577181046757182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313899 n).toNat + (2 * n : ℤ)

end

end A314890.P3166577181046757182

namespace A314890

/-- `A004525(A313899(n))+2*n` -/
def P3166577181046757182.Spec : Prop :=
  ∀ n, P3166577181046757182.a n = A314890 n

end A314890

/-! ## A314890.P11674946231163021071

`A004525(A313918(n))+2*n`
-/

namespace A314890.P11674946231163021071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313918 n).toNat + (2 * n : ℤ)

end

end A314890.P11674946231163021071

namespace A314890

/-- `A004525(A313918(n))+2*n` -/
def P11674946231163021071.Spec : Prop :=
  ∀ n, P11674946231163021071.a n = A314890 n

end A314890

/-! ## A314890.P15360198294682368319

`A004525(A314133(n))+2*n`
-/

namespace A314890.P15360198294682368319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314133 n).toNat + (2 * n : ℤ)

end

end A314890.P15360198294682368319

namespace A314890

/-- `A004525(A314133(n))+2*n` -/
def P15360198294682368319.Spec : Prop :=
  ∀ n, P15360198294682368319.a n = A314890 n

end A314890

/-! ## A314890.P7790201142073743724

`A004525(A314149(n))+2*n`
-/

namespace A314890.P7790201142073743724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314149 n).toNat + (2 * n : ℤ)

end

end A314890.P7790201142073743724

namespace A314890

/-- `A004525(A314149(n))+2*n` -/
def P7790201142073743724.Spec : Prop :=
  ∀ n, P7790201142073743724.a n = A314890 n

end A314890

/-! ## A314890.P2326074766473288429

`A004525(A315334(n))+2*n`
-/

namespace A314890.P2326074766473288429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315334 n).toNat + (2 * n : ℤ)

end

end A314890.P2326074766473288429

namespace A314890

/-- `A004525(A315334(n))+2*n` -/
def P2326074766473288429.Spec : Prop :=
  ∀ n, P2326074766473288429.a n = A314890 n

end A314890

/-! ## A314890.P9663943988291391545

`A004525(A315478(n))+2*n`
-/

namespace A314890.P9663943988291391545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315478 n).toNat + (2 * n : ℤ)

end

end A314890.P9663943988291391545

namespace A314890

/-- `A004525(A315478(n))+2*n` -/
def P9663943988291391545.Spec : Prop :=
  ∀ n, P9663943988291391545.a n = A314890 n

end A314890

/-! ## A314890.P15929539488573451084

`A004525(A315491(n))+2*n`
-/

namespace A314890.P15929539488573451084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315491 n).toNat + (2 * n : ℤ)

end

end A314890.P15929539488573451084

namespace A314890

/-- `A004525(A315491(n))+2*n` -/
def P15929539488573451084.Spec : Prop :=
  ∀ n, P15929539488573451084.a n = A314890 n

end A314890

/-! ## A314890.P16067378532773268892

`A005843(n)+A004525(A313899(n))`
-/

namespace A314890.P16067378532773268892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313899 n).toNat

end

end A314890.P16067378532773268892

namespace A314890

/-- `A005843(n)+A004525(A313899(n))` -/
def P16067378532773268892.Spec : Prop :=
  ∀ n, P16067378532773268892.a n = A314890 n

end A314890

/-! ## A314890.P3509648291356954428

`A004396(A313738(n)+2*n)`
-/

namespace A314890.P3509648291356954428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313738 n + (2 * n : ℤ)).toNat

end

end A314890.P3509648291356954428

namespace A314890

/-- `A004396(A313738(n)+2*n)` -/
def P3509648291356954428.Spec : Prop :=
  ∀ n, P3509648291356954428.a n = A314890 n

end A314890

/-! ## A314890.P14427936684775888262

`A004396(A313772(n)+2*n)`
-/

namespace A314890.P14427936684775888262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313772 n + (2 * n : ℤ)).toNat

end

end A314890.P14427936684775888262

namespace A314890

/-- `A004396(A313772(n)+2*n)` -/
def P14427936684775888262.Spec : Prop :=
  ∀ n, P14427936684775888262.a n = A314890 n

end A314890

/-! ## A314890.P15941635543498535876

`A004396(A315062(n)+2*n)`
-/

namespace A314890.P15941635543498535876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315062 n + (2 * n : ℤ)).toNat

end

end A314890.P15941635543498535876

namespace A314890

/-- `A004396(A315062(n)+2*n)` -/
def P15941635543498535876.Spec : Prop :=
  ∀ n, P15941635543498535876.a n = A314890 n

end A314890

/-! ## A314890.P17692236043983488793

`A004396(A315261(n)+2*n)`
-/

namespace A314890.P17692236043983488793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315261 n + (2 * n : ℤ)).toNat

end

end A314890.P17692236043983488793

namespace A314890

/-- `A004396(A315261(n)+2*n)` -/
def P17692236043983488793.Spec : Prop :=
  ∀ n, P17692236043983488793.a n = A314890 n

end A314890

/-! ## A314890.P3805821368480652062

`A004396(A313738(n)+n+n)`
-/

namespace A314890.P3805821368480652062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313738 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314890.P3805821368480652062

namespace A314890

/-- `A004396(A313738(n)+n+n)` -/
def P3805821368480652062.Spec : Prop :=
  ∀ n, P3805821368480652062.a n = A314890 n

end A314890

/-! ## A314890.P9207486030124102901

`A004396(A313772(n)+n+n)`
-/

namespace A314890.P9207486030124102901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313772 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314890.P9207486030124102901

namespace A314890

/-- `A004396(A313772(n)+n+n)` -/
def P9207486030124102901.Spec : Prop :=
  ∀ n, P9207486030124102901.a n = A314890 n

end A314890

/-! ## A314890.P5104126534066661451

`A004396(A315062(n)+n+n)`
-/

namespace A314890.P5104126534066661451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315062 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314890.P5104126534066661451

namespace A314890

/-- `A004396(A315062(n)+n+n)` -/
def P5104126534066661451.Spec : Prop :=
  ∀ n, P5104126534066661451.a n = A314890 n

end A314890

/-! ## A314890.P13076488300318561713

`A004396(A315261(n)+n+n)`
-/

namespace A314890.P13076488300318561713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315261 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314890.P13076488300318561713

namespace A314890

/-- `A004396(A315261(n)+n+n)` -/
def P13076488300318561713.Spec : Prop :=
  ∀ n, P13076488300318561713.a n = A314890 n

end A314890

/-! ## A314890.P16900881821406797370

`A314684(2*n)-4*n`
-/

namespace A314890.P16900881821406797370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314684 (2 * n) - (4 * n : ℤ)

end

end A314890.P16900881821406797370

namespace A314890

/-- `A314684(2*n)-4*n` -/
def P16900881821406797370.Spec : Prop :=
  ∀ n, P16900881821406797370.a n = A314890 n

end A314890

/-! ## A314890.P13399518684205699674

`2*A008574(2*n)-A314239(2*n)`
-/

namespace A314890.P13399518684205699674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314239 (2 * n)

end

end A314890.P13399518684205699674

namespace A314890

/-- `2*A008574(2*n)-A314239(2*n)` -/
def P13399518684205699674.Spec : Prop :=
  ∀ n, P13399518684205699674.a n = A314890 n

end A314890

/-!
# A314891: Coordination sequence Gal.5.266.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314891, there is no canonical definition to state claims against.
-/

/-! ## A314891.P3728666136360800088

`A313588(n)+A316071(n)-A315365(n)`
-/

namespace A314891.P3728666136360800088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313588 n + (A316071 n - A315365 n)

end

end A314891.P3728666136360800088

/-! ## A314891.P2031994453944217664

`A301291(n)+A270417(A149318(n))`
-/

namespace A314891.P2031994453944217664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A270417 (A149318 n).toNat

end

end A314891.P2031994453944217664

/-! ## A314891.P16685616007464599975

`A314727(n)+A080425(A209325(n))`
-/

namespace A314891.P16685616007464599975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314727 n + A080425 (A209325 n).toNat

end

end A314891.P16685616007464599975

/-! ## A314891.P802183613462042090

`A374214(A327214(n))+A301298(n)`
-/

namespace A314891.P802183613462042090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 (A327214 n).toNat + A301298 n

end

end A314891.P802183613462042090

/-! ## A314891.P4874303031146024914

`A313958(n)-A001222(A001120(n))`
-/

namespace A314891.P4874303031146024914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313958 n - A001222 (A001120 n).toNat

end

end A314891.P4874303031146024914

/-!
# A314892: Coordination sequence Gal.5.262.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314892, there is no canonical definition to state claims against.
-/

/-! ## A314892.P9786172846224364462

`A008706(n)-A332998(A000257(n))`
-/

namespace A314892.P9786172846224364462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A332998 (A000257 n).toNat

end

end A314892.P9786172846224364462

/-! ## A314892.P5554861101041751036

`A314958(n)-A118458(A304974(n))`
-/

namespace A314892.P5554861101041751036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314958 n - A118458 (A304974 n).toNat

end

end A314892.P5554861101041751036

/-! ## A314892.P6424081346479926274

`xor(A046660(A078213(n+1)), A315022(n))`
-/

namespace A314892.P6424081346479926274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046660 (A078213 (n + 1)).toNat) (A315022 n)

end

end A314892.P6424081346479926274

/-! ## A314892.P12764716802291382342

`A349257(2*(n+1))-A070094(A077800(n+1))`
-/

namespace A314892.P12764716802291382342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349257 (2 * (n + 1)) - A070094 (A077800 (n + 1)).toNat

end

end A314892.P12764716802291382342

/-! ## A314892.P10830849864802409802

`A001222(n+1)+A311596(n)%A000040(3^n)`
-/

namespace A314892.P10830849864802409802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + Int.tmod (A311596 n) (A000040 (3 ^ n))

end

end A314892.P10830849864802409802

/-!
# A314893: Coordination sequence Gal.6.259.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314893, the canonical program `A314893.P688468552923915457` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314893 has offset 0).

The definition of A314893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314893.P11973717860259463943

`A311801(n)+A004525(n)`
-/

namespace A314893.P11973717860259463943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A004525 n

end

end A314893.P11973717860259463943

namespace A314893

/-- `A311801(n)+A004525(n)` -/
def P11973717860259463943.Spec : Prop :=
  ∀ n, P11973717860259463943.a n = A314893 n

end A314893

/-! ## A314893.P1202071190331008524

`A315182(n)-A128834(n)`
-/

namespace A314893.P1202071190331008524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n - A128834 n

end

end A314893.P1202071190331008524

namespace A314893

/-- `A315182(n)-A128834(n)` -/
def P1202071190331008524.Spec : Prop :=
  ∀ n, P1202071190331008524.a n = A314893 n

end A314893

/-! ## A314893.P688468552923915457

`abs(A008592(n)-(A312896(n)+n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314893

/-- `abs(A008592(n)-(A312896(n)+n))` -/
def P688468552923915457.Spec : Prop :=
  ∀ n, P688468552923915457.a n = A314893 n

theorem P688468552923915457.correct : P688468552923915457.Spec := by
  intro n
  simp only [A314893]

end A314893

/-! ## A314893.P4841505965163665146

`A047229(n+1)+A311801(n)-n`
-/

namespace A314893.P4841505965163665146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A311801 n - (n : ℤ))

end

end A314893.P4841505965163665146

namespace A314893

/-- `A047229(n+1)+A311801(n)-n` -/
def P4841505965163665146.Spec : Prop :=
  ∀ n, P4841505965163665146.a n = A314893 n

end A314893

/-! ## A314893.P5580988437895478025

`A008458(n)+A008486(n)-A312896(n)`
-/

namespace A314893.P5580988437895478025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312896 n)

end

end A314893.P5580988437895478025

namespace A314893

/-- `A008458(n)+A008486(n)-A312896(n)` -/
def P5580988437895478025.Spec : Prop :=
  ∀ n, P5580988437895478025.a n = A314893 n

end A314893

/-! ## A314893.P14966569496313992278

`A313744(n)-floor((n+1)/3)`
-/

namespace A314893.P14966569496313992278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A314893.P14966569496313992278

namespace A314893

/-- `A313744(n)-floor((n+1)/3)` -/
def P14966569496313992278.Spec : Prop :=
  ∀ n, P14966569496313992278.a n = A314893 n

end A314893

/-! ## A314893.P7527199177785954058

`A004396(n)+A313744(n)-n`
-/

namespace A314893.P7527199177785954058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313744 n - (n : ℤ))

end

end A314893.P7527199177785954058

namespace A314893

/-- `A004396(n)+A313744(n)-n` -/
def P7527199177785954058.Spec : Prop :=
  ∀ n, P7527199177785954058.a n = A314893 n

end A314893

/-! ## A314893.P12322851130201690464

`A047513(n+1)+A314683(n)-n`
-/

namespace A314893.P12322851130201690464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A314683 n - (n : ℤ))

end

end A314893.P12322851130201690464

namespace A314893

/-- `A047513(n+1)+A314683(n)-n` -/
def P12322851130201690464.Spec : Prop :=
  ∀ n, P12322851130201690464.a n = A314893 n

end A314893

/-! ## A314893.P6413285767175050341

`A004525(n)+A313872(n)-n`
-/

namespace A314893.P6413285767175050341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313872 n - (n : ℤ))

end

end A314893.P6413285767175050341

namespace A314893

/-- `A004525(n)+A313872(n)-n` -/
def P6413285767175050341.Spec : Prop :=
  ∀ n, P6413285767175050341.a n = A314893 n

end A314893

/-! ## A314893.P14543213402790225569

`A313872(n)-(lt[A020639(n+3), 4]-n)`
-/

namespace A314893.P14543213402790225569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ))

end

end A314893.P14543213402790225569

namespace A314893

/-- `A313872(n)-(lt[A020639(n+3), 4]-n)` -/
def P14543213402790225569.Spec : Prop :=
  ∀ n, P14543213402790225569.a n = A314893 n

end A314893

/-! ## A314893.P7759896654531864817

`A008458(n)+A008574(n)-A314124(n)`
-/

namespace A314893.P7759896654531864817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314124 n)

end

end A314893.P7759896654531864817

namespace A314893

/-- `A008458(n)+A008574(n)-A314124(n)` -/
def P7759896654531864817.Spec : Prop :=
  ∀ n, P7759896654531864817.a n = A314893 n

end A314893

/-! ## A314893.P966850048497279113

`A315540(n)-n`
-/

namespace A314893.P966850048497279113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - (n : ℤ)

end

end A314893.P966850048497279113

namespace A314893

/-- `A315540(n)-n` -/
def P966850048497279113.Spec : Prop :=
  ∀ n, P966850048497279113.a n = A314893 n

end A314893

/-! ## A314893.P2915327468238990030

`A004525(A313922(n))+2*n`
-/

namespace A314893.P2915327468238990030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313922 n).toNat + (2 * n : ℤ)

end

end A314893.P2915327468238990030

namespace A314893

/-- `A004525(A313922(n))+2*n` -/
def P2915327468238990030.Spec : Prop :=
  ∀ n, P2915327468238990030.a n = A314893 n

end A314893

/-! ## A314893.P1257797674593337757

`A004396(A301708(n))+n`
-/

namespace A314893.P1257797674593337757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301708 n).toNat + (n : ℤ)

end

end A314893.P1257797674593337757

namespace A314893

/-- `A004396(A301708(n))+n` -/
def P1257797674593337757.Spec : Prop :=
  ∀ n, P1257797674593337757.a n = A314893 n

end A314893

/-! ## A314893.P8742583274571756736

`A004396(A315522(n))+n`
-/

namespace A314893.P8742583274571756736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315522 n).toNat + (n : ℤ)

end

end A314893.P8742583274571756736

namespace A314893

/-- `A004396(A315522(n))+n` -/
def P8742583274571756736.Spec : Prop :=
  ∀ n, P8742583274571756736.a n = A314893 n

end A314893

/-! ## A314893.P3701288864343651394

`A004396(A301291(n)+n)+n`
-/

namespace A314893.P3701288864343651394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301291 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314893.P3701288864343651394

namespace A314893

/-- `A004396(A301291(n)+n)+n` -/
def P3701288864343651394.Spec : Prop :=
  ∀ n, P3701288864343651394.a n = A314893 n

end A314893

/-! ## A314893.P4252027141746389840

`A004396(A314836(n)+n)+n`
-/

namespace A314893.P4252027141746389840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314836 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314893.P4252027141746389840

namespace A314893

/-- `A004396(A314836(n)+n)+n` -/
def P4252027141746389840.Spec : Prop :=
  ∀ n, P4252027141746389840.a n = A314893 n

end A314893

/-! ## A314893.P11316902273138825676

`A004396(A314884(n)+n)+n`
-/

namespace A314893.P11316902273138825676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314884 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314893.P11316902273138825676

namespace A314893

/-- `A004396(A314884(n)+n)+n` -/
def P11316902273138825676.Spec : Prop :=
  ∀ n, P11316902273138825676.a n = A314893 n

end A314893

/-! ## A314893.P15911838977820934649

`A004396(A313575(n)+A004396(n))+n`
-/

namespace A314893.P15911838977820934649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313575 n + A004396 n).toNat + (n : ℤ)

end

end A314893.P15911838977820934649

namespace A314893

/-- `A004396(A313575(n)+A004396(n))+n` -/
def P15911838977820934649.Spec : Prop :=
  ∀ n, P15911838977820934649.a n = A314893 n

end A314893

/-! ## A314893.P2351347541266030145

`A004396(A313619(n)+A004396(n))+n`
-/

namespace A314893.P2351347541266030145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313619 n + A004396 n).toNat + (n : ℤ)

end

end A314893.P2351347541266030145

namespace A314893

/-- `A004396(A313619(n)+A004396(n))+n` -/
def P2351347541266030145.Spec : Prop :=
  ∀ n, P2351347541266030145.a n = A314893 n

end A314893

/-!
# A314894: Coordination sequence Gal.6.194.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314894, the canonical program `A314894.P7570080516091398476` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314894 has offset 0).

The definition of A314894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314894.P7570080516091398476

`abs(A008592(n)-A314117(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314894

/-- `abs(A008592(n)-A314117(n))` -/
def P7570080516091398476.Spec : Prop :=
  ∀ n, P7570080516091398476.a n = A314894 n

theorem P7570080516091398476.correct : P7570080516091398476.Spec := by
  intro n
  simp only [A314894]

end A314894

/-! ## A314894.P2069458922065526160

`2*A008706(n)-A314117(n)`
-/

namespace A314894.P2069458922065526160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314117 n

end

end A314894.P2069458922065526160

namespace A314894

/-- `2*A008706(n)-A314117(n)` -/
def P2069458922065526160.Spec : Prop :=
  ∀ n, P2069458922065526160.a n = A314894 n

end A314894

/-! ## A314894.P6414966912154406957

`A008458(n)+A008574(n)-A314117(n)`
-/

namespace A314894.P6414966912154406957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314117 n)

end

end A314894.P6414966912154406957

namespace A314894

/-- `A008458(n)+A008574(n)-A314117(n)` -/
def P6414966912154406957.Spec : Prop :=
  ∀ n, P6414966912154406957.a n = A314894 n

end A314894

/-! ## A314894.P2208443513638866803

`A314117(n)-A005843(A314117(n)-A008706(n))`
-/

namespace A314894.P2208443513638866803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n - A005843 (A314117 n - A008706 n).toNat

end

end A314894.P2208443513638866803

namespace A314894

/-- `A314117(n)-A005843(A314117(n)-A008706(n))` -/
def P2208443513638866803.Spec : Prop :=
  ∀ n, P2208443513638866803.a n = A314894 n

end A314894

/-! ## A314894.P11193101015097629308

`(A315340(n)+A008574(n))/2`
-/

namespace A314894.P11193101015097629308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315340 n + A008574 n : ℚ) / 2

end

end A314894.P11193101015097629308

namespace A314894

/-- `(A315340(n)+A008574(n))/2` -/
def P11193101015097629308.Spec : Prop :=
  ∀ n, P11193101015097629308.a n = (A314894 n : ℚ)

end A314894

/-! ## A314894.P10310386481682580462

`A005843(A008706(n))-A314117(n)`
-/

namespace A314894.P10310386481682580462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314117 n

end

end A314894.P10310386481682580462

namespace A314894

/-- `A005843(A008706(n))-A314117(n)` -/
def P10310386481682580462.Spec : Prop :=
  ∀ n, P10310386481682580462.a n = A314894 n

end A314894

/-! ## A314894.P16317901445560555942

`A005843(A008458(n)-n)-A314117(n)`
-/

namespace A314894.P16317901445560555942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314117 n

end

end A314894.P16317901445560555942

namespace A314894

/-- `A005843(A008458(n)-n)-A314117(n)` -/
def P16317901445560555942.Spec : Prop :=
  ∀ n, P16317901445560555942.a n = A314894 n

end A314894

/-! ## A314894.P10962638579312963

`A004525(A314157(n))+2*n`
-/

namespace A314894.P10962638579312963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314157 n).toNat + (2 * n : ℤ)

end

end A314894.P10962638579312963

namespace A314894

/-- `A004525(A314157(n))+2*n` -/
def P10962638579312963.Spec : Prop :=
  ∀ n, P10962638579312963.a n = A314894 n

end A314894

/-! ## A314894.P276388547437864506

`A004525(A315492(n))+2*n`
-/

namespace A314894.P276388547437864506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315492 n).toNat + (2 * n : ℤ)

end

end A314894.P276388547437864506

namespace A314894

/-- `A004525(A315492(n))+2*n` -/
def P276388547437864506.Spec : Prop :=
  ∀ n, P276388547437864506.a n = A314894 n

end A314894

/-! ## A314894.P16099814488831796489

`A092038(A314157(n))+A130824(n)/2`
-/

namespace A314894.P16099814488831796489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092038 (A314157 n).toNat : ℚ) + (A130824 n : ℚ) / 2

end

end A314894.P16099814488831796489

namespace A314894

/-- `A092038(A314157(n))+A130824(n)/2` -/
def P16099814488831796489.Spec : Prop :=
  ∀ n, P16099814488831796489.a n = (A314894 n : ℚ)

end A314894

/-! ## A314894.P15527382755405495398

`A004396(A313745(n)+2*n)`
-/

namespace A314894.P15527382755405495398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313745 n + (2 * n : ℤ)).toNat

end

end A314894.P15527382755405495398

namespace A314894

/-- `A004396(A313745(n)+2*n)` -/
def P15527382755405495398.Spec : Prop :=
  ∀ n, P15527382755405495398.a n = A314894 n

end A314894

/-! ## A314894.P2246904746088422876

`A004396(A313779(n)+2*n)`
-/

namespace A314894.P2246904746088422876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313779 n + (2 * n : ℤ)).toNat

end

end A314894.P2246904746088422876

namespace A314894

/-- `A004396(A313779(n)+2*n)` -/
def P2246904746088422876.Spec : Prop :=
  ∀ n, P2246904746088422876.a n = A314894 n

end A314894

/-! ## A314894.P14496488800491431101

`A004396(A315264(n)+2*n)`
-/

namespace A314894.P14496488800491431101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315264 n + (2 * n : ℤ)).toNat

end

end A314894.P14496488800491431101

namespace A314894

/-- `A004396(A315264(n)+2*n)` -/
def P14496488800491431101.Spec : Prop :=
  ∀ n, P14496488800491431101.a n = A314894 n

end A314894

/-! ## A314894.P17929118266190961801

`A004396(A313745(n)+n+n)`
-/

namespace A314894.P17929118266190961801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313745 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314894.P17929118266190961801

namespace A314894

/-- `A004396(A313745(n)+n+n)` -/
def P17929118266190961801.Spec : Prop :=
  ∀ n, P17929118266190961801.a n = A314894 n

end A314894

/-! ## A314894.P13293431206720721901

`A004396(A313779(n)+n+n)`
-/

namespace A314894.P13293431206720721901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313779 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314894.P13293431206720721901

namespace A314894

/-- `A004396(A313779(n)+n+n)` -/
def P13293431206720721901.Spec : Prop :=
  ∀ n, P13293431206720721901.a n = A314894 n

end A314894

/-! ## A314894.P17736213922799336730

`A004396(A315264(n)+n+n)`
-/

namespace A314894.P17736213922799336730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315264 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314894.P17736213922799336730

namespace A314894

/-- `A004396(A315264(n)+n+n)` -/
def P17736213922799336730.Spec : Prop :=
  ∀ n, P17736213922799336730.a n = A314894 n

end A314894

/-! ## A314894.P6613641811290194108

`A312902(2*n)-4*n`
-/

namespace A314894.P6613641811290194108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312902 (2 * n) - (4 * n : ℤ)

end

end A314894.P6613641811290194108

namespace A314894

/-- `A312902(2*n)-4*n` -/
def P6613641811290194108.Spec : Prop :=
  ∀ n, P6613641811290194108.a n = A314894 n

end A314894

/-! ## A314894.P1641787721404329204

`2*A008574(2*n)-A315537(2*n)`
-/

namespace A314894.P1641787721404329204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315537 (2 * n)

end

end A314894.P1641787721404329204

namespace A314894

/-- `2*A008574(2*n)-A315537(2*n)` -/
def P1641787721404329204.Spec : Prop :=
  ∀ n, P1641787721404329204.a n = A314894 n

end A314894

/-! ## A314894.P9350658500808452010

`A004525(A310378(2*n))`
-/

namespace A314894.P9350658500808452010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310378 (2 * n)).toNat

end

end A314894.P9350658500808452010

namespace A314894

/-- `A004525(A310378(2*n))` -/
def P9350658500808452010.Spec : Prop :=
  ∀ n, P9350658500808452010.a n = A314894 n

end A314894

/-! ## A314894.P9643121228946320938

`A004525(A310396(2*n))`
-/

namespace A314894.P9643121228946320938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310396 (2 * n)).toNat

end

end A314894.P9643121228946320938

namespace A314894

/-- `A004525(A310396(2*n))` -/
def P9643121228946320938.Spec : Prop :=
  ∀ n, P9643121228946320938.a n = A314894 n

end A314894

/-!
# A314895: Coordination sequence Gal.5.267.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314895, there is no canonical definition to state claims against.
-/

/-! ## A314895.P5757851808599408131

`A352514(A314427(2*n))+A314429(n)`
-/

namespace A314895.P5757851808599408131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A314427 (2 * n)).toNat + A314429 n

end

end A314895.P5757851808599408131

/-! ## A314895.P5292632098215353620

`A311861(n)+A001221(A150904(n))`
-/

namespace A314895.P5292632098215353620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A001221 (A150904 n).toNat

end

end A314895.P5292632098215353620

/-! ## A314895.P909110906104132187

`A341994(A081038(n))+A314511(n)`
-/

namespace A314895.P909110906104132187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (A081038 n).toNat + A314511 n

end

end A314895.P909110906104132187

/-! ## A314895.P16685210558626080796

`A314958(n)-A001221(A205800(n))`
-/

namespace A314895.P16685210558626080796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314958 n - A001221 (A205800 n).toNat

end

end A314895.P16685210558626080796

/-! ## A314895.P12419302851553144314

`A315451(n)-A087436(A126371(n))`
-/

namespace A314895.P12419302851553144314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315451 n - A087436 (A126371 n).toNat

end

end A314895.P12419302851553144314

/-!
# A314896: Coordination sequence Gal.4.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314896, the canonical program `A314896.P16109661729483114242` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314896 has offset 0).

The definition of A314896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314896.P16109661729483114242

`A311843(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314896

/-- `A311843(n)+A004525(n)` -/
def P16109661729483114242.Spec : Prop :=
  ∀ n, P16109661729483114242.a n = A314896 n

theorem P16109661729483114242.correct : P16109661729483114242.Spec := by
  intro n
  simp only [A314896]

end A314896

/-! ## A314896.P1511054136168210022

`A301291(n)+Δ[A011861(n)]`
-/

namespace A314896.P1511054136168210022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (f1 (n + 1) - f1 n)

end

end A314896.P1511054136168210022

namespace A314896

/-- `A301291(n)+Δ[A011861(n)]` -/
def P1511054136168210022.Spec : Prop :=
  ∀ n, P1511054136168210022.a n = A314896 n

end A314896

/-! ## A314896.P16917844359553314184

`A255347(n)+A314851(n)-n`
-/

namespace A314896.P16917844359553314184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 n + (A314851 n - (n : ℤ))

end

end A314896.P16917844359553314184

namespace A314896

/-- `A255347(n)+A314851(n)-n` -/
def P16917844359553314184.Spec : Prop :=
  ∀ n, P16917844359553314184.a n = A314896 n

end A314896

/-! ## A314896.P15820258116533571881

`A047229(n+1)+A311843(n)-n`
-/

namespace A314896.P15820258116533571881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A311843 n - (n : ℤ))

end

end A314896.P15820258116533571881

namespace A314896

/-- `A047229(n+1)+A311843(n)-n` -/
def P15820258116533571881.Spec : Prop :=
  ∀ n, P15820258116533571881.a n = A314896 n

end A314896

/-! ## A314896.P10360398590271833142

`A004273(2*n)+∑[A178242(n+1)%2]`
-/

namespace A314896.P10360398590271833142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178242 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314896.P10360398590271833142

namespace A314896

/-- `A004273(2*n)+∑[A178242(n+1)%2]` -/
def P10360398590271833142.Spec : Prop :=
  ∀ n, P10360398590271833142.a n = A314896 n

end A314896

/-! ## A314896.P16905389746500383142

`A312140(n)+A004525(A004525(n))`
-/

namespace A314896.P16905389746500383142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A004525 (A004525 n).toNat

end

end A314896.P16905389746500383142

namespace A314896

/-- `A312140(n)+A004525(A004525(n))` -/
def P16905389746500383142.Spec : Prop :=
  ∀ n, P16905389746500383142.a n = A314896 n

end A314896

/-! ## A314896.P2649270865289234159

`A008574(n)+A004525(A004525(n)+n)`
-/

namespace A314896.P2649270865289234159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314896.P2649270865289234159

namespace A314896

/-- `A008574(n)+A004525(A004525(n)+n)` -/
def P2649270865289234159.Spec : Prop :=
  ∀ n, P2649270865289234159.a n = A314896 n

end A314896

/-! ## A314896.P15600914255901540566

`A008458(n)+A008486(n)-A312894(n)`
-/

namespace A314896.P15600914255901540566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312894 n)

end

end A314896.P15600914255901540566

namespace A314896

/-- `A008458(n)+A008486(n)-A312894(n)` -/
def P15600914255901540566.Spec : Prop :=
  ∀ n, P15600914255901540566.a n = A314896 n

end A314896

/-! ## A314896.P8935284345351648147

`A008706(n)-A004525(n-A004525(n))`
-/

namespace A314896.P8935284345351648147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A314896.P8935284345351648147

namespace A314896

/-- `A008706(n)-A004525(n-A004525(n))` -/
def P8935284345351648147.Spec : Prop :=
  ∀ n, P8935284345351648147.a n = A314896 n

end A314896

/-! ## A314896.P1882865419103380891

`A312205(n)+A046978(n)`
-/

namespace A314896.P1882865419103380891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + A046978 n

end

end A314896.P1882865419103380891

namespace A314896

/-- `A312205(n)+A046978(n)` -/
def P1882865419103380891.Spec : Prop :=
  ∀ n, P1882865419103380891.a n = A314896 n

end A314896

/-! ## A314896.P6788445919273284446

`A315259(n)-A004525(A004525(n))`
-/

namespace A314896.P6788445919273284446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A004525 (A004525 n).toNat

end

end A314896.P6788445919273284446

namespace A314896

/-- `A315259(n)-A004525(A004525(n))` -/
def P6788445919273284446.Spec : Prop :=
  ∀ n, P6788445919273284446.a n = A314896 n

end A314896

/-! ## A314896.P2900479499510144384

`A004525(n)+A313875(n)-n`
-/

namespace A314896.P2900479499510144384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313875 n - (n : ℤ))

end

end A314896.P2900479499510144384

namespace A314896

/-- `A004525(n)+A313875(n)-n` -/
def P2900479499510144384.Spec : Prop :=
  ∀ n, P2900479499510144384.a n = A314896 n

end A314896

/-! ## A314896.P11887504439661054945

`A008458(n)+A008574(n)-A314112(n)`
-/

namespace A314896.P11887504439661054945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314112 n)

end

end A314896.P11887504439661054945

namespace A314896

/-- `A008458(n)+A008574(n)-A314112(n)` -/
def P11887504439661054945.Spec : Prop :=
  ∀ n, P11887504439661054945.a n = A314896 n

end A314896

/-! ## A314896.P3910858976770137289

`(A315342(n)+A008574(n))/2`
-/

namespace A314896.P3910858976770137289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315342 n + A008574 n : ℚ) / 2

end

end A314896.P3910858976770137289

namespace A314896

/-- `(A315342(n)+A008574(n))/2` -/
def P3910858976770137289.Spec : Prop :=
  ∀ n, P3910858976770137289.a n = (A314896 n : ℚ)

end A314896

/-! ## A314896.P4200876457849412565

`A315543(n)-n`
-/

namespace A314896.P4200876457849412565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - (n : ℤ)

end

end A314896.P4200876457849412565

namespace A314896

/-- `A315543(n)-n` -/
def P4200876457849412565.Spec : Prop :=
  ∀ n, P4200876457849412565.a n = A314896 n

end A314896

/-! ## A314896.P14459250735112950968

`Δ[A011861(n)]+A301708(n)-n`
-/

namespace A314896.P14459250735112950968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A301708 n - (n : ℤ))

end

end A314896.P14459250735112950968

namespace A314896

/-- `Δ[A011861(n)]+A301708(n)-n` -/
def P14459250735112950968.Spec : Prop :=
  ∀ n, P14459250735112950968.a n = A314896 n

end A314896

/-! ## A314896.P7385397774962022952

`A004525(A313926(n))+2*n`
-/

namespace A314896.P7385397774962022952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313926 n).toNat + (2 * n : ℤ)

end

end A314896.P7385397774962022952

namespace A314896

/-- `A004525(A313926(n))+2*n` -/
def P7385397774962022952.Spec : Prop :=
  ∀ n, P7385397774962022952.a n = A314896 n

end A314896

/-! ## A314896.P10699687610245232564

`A004525(A314161(n))+2*n`
-/

namespace A314896.P10699687610245232564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314161 n).toNat + (2 * n : ℤ)

end

end A314896.P10699687610245232564

namespace A314896

/-- `A004525(A314161(n))+2*n` -/
def P10699687610245232564.Spec : Prop :=
  ∀ n, P10699687610245232564.a n = A314896 n

end A314896

/-! ## A314896.P7686123182518913396

`A004525(A301291(n)+n)+2*n`
-/

namespace A314896.P7686123182518913396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301291 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A314896.P7686123182518913396

namespace A314896

/-- `A004525(A301291(n)+n)+2*n` -/
def P7686123182518913396.Spec : Prop :=
  ∀ n, P7686123182518913396.a n = A314896 n

end A314896

/-! ## A314896.P18212344468359286164

`A004525(A312943(n)+n)+2*n`
-/

namespace A314896.P18212344468359286164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312943 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A314896.P18212344468359286164

namespace A314896

/-- `A004525(A312943(n)+n)+2*n` -/
def P18212344468359286164.Spec : Prop :=
  ∀ n, P18212344468359286164.a n = A314896 n

end A314896

/-!
# A314897: Coordination sequence Gal.6.361.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314897, there is no canonical definition to state claims against.
-/

/-! ## A314897.P3459275307081436567

`A313203(n)+A101455(n)`
-/

namespace A314897.P3459275307081436567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n + A101455 n

end

end A314897.P3459275307081436567

/-! ## A314897.P10183837303094132312

`A313203(n)-A056594(n+1)`
-/

namespace A314897.P10183837303094132312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n - A056594 (n + 1)

end

end A314897.P10183837303094132312

/-! ## A314897.P14480980044068404196

`A313203(n)-A075553(2*n)`
-/

namespace A314897.P14480980044068404196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n - A075553 (2 * n)

end

end A314897.P14480980044068404196

/-! ## A314897.P6768325367901049331

`A313203(n)+A128834(A007494(n))`
-/

namespace A314897.P6768325367901049331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n + A128834 (A007494 n).toNat

end

end A314897.P6768325367901049331

/-! ## A314897.P12768223661112058548

`A313203(n)+A128834(A047229(n+1))`
-/

namespace A314897.P12768223661112058548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n + A128834 (A047229 (n + 1)).toNat

end

end A314897.P12768223661112058548

/-! ## A314897.P6856492832107652030

`A313203(n)-A128834(A007494(n))/A033999(n)`
-/

namespace A314897.P6856492832107652030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313203 n : ℚ) - (A128834 (A007494 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A314897.P6856492832107652030

/-! ## A314897.P14135145162369890792

`A313203(n)-A128834(A007494(n)²)`
-/

namespace A314897.P14135145162369890792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313203 n - A128834 (A007494 n ^ 2).toNat

end

end A314897.P14135145162369890792

/-!
# A314898: Coordination sequence Gal.5.136.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314898, the canonical program `A314898.P6365992513144619354` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314898 has offset 0).

The definition of A314898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314898.P17032902548810910578

`A315445(n)-A253262(n)`
-/

namespace A314898.P17032902548810910578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n - A253262 n

end

end A314898.P17032902548810910578

namespace A314898

/-- `A315445(n)-A253262(n)` -/
def P17032902548810910578.Spec : Prop :=
  ∀ n, P17032902548810910578.a n = A314898 n

end A314898

/-! ## A314898.P6365992513144619354

`abs(A008591(n)-A312892(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A314898

/-- `abs(A008591(n)-A312892(n))` -/
def P6365992513144619354.Spec : Prop :=
  ∀ n, P6365992513144619354.a n = A314898 n

theorem P6365992513144619354.correct : P6365992513144619354.Spec := by
  intro n
  simp only [A314898]

end A314898

/-! ## A314898.P15371817987342741262

`A314725(n)+A002266(n+2)`
-/

namespace A314898.P15371817987342741262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + A002266 (n + 2)

end

end A314898.P15371817987342741262

namespace A314898

/-- `A314725(n)+A002266(n+2)` -/
def P15371817987342741262.Spec : Prop :=
  ∀ n, P15371817987342741262.a n = A314898 n

end A314898

/-! ## A314898.P7301647829817813060

`abs(A008592(n)-(A312892(n)+n))`
-/

namespace A314898.P7301647829817813060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312892 n + (n : ℤ))|

end

end A314898.P7301647829817813060

namespace A314898

/-- `abs(A008592(n)-(A312892(n)+n))` -/
def P7301647829817813060.Spec : Prop :=
  ∀ n, P7301647829817813060.a n = A314898 n

end A314898

/-! ## A314898.P6545599208180739033

`A047448(n+1)+A311440(n)-n`
-/

namespace A314898.P6545599208180739033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + (A311440 n - (n : ℤ))

end

end A314898.P6545599208180739033

namespace A314898

/-- `A047448(n+1)+A311440(n)-n` -/
def P6545599208180739033.Spec : Prop :=
  ∀ n, P6545599208180739033.a n = A314898 n

end A314898

/-! ## A314898.P12420012062095075035

`A047363(n+1)+A312077(n)-n`
-/

namespace A314898.P12420012062095075035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A312077 n - (n : ℤ))

end

end A314898.P12420012062095075035

namespace A314898

/-- `A047363(n+1)+A312077(n)-n` -/
def P12420012062095075035.Spec : Prop :=
  ∀ n, P12420012062095075035.a n = A314898 n

end A314898

/-! ## A314898.P3378404066300380542

`A047263(n+1)+A314725(n)-n`
-/

namespace A314898.P3378404066300380542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314725 n - (n : ℤ))

end

end A314898.P3378404066300380542

namespace A314898

/-- `A047263(n+1)+A314725(n)-n` -/
def P3378404066300380542.Spec : Prop :=
  ∀ n, P3378404066300380542.a n = A314898 n

end A314898

/-! ## A314898.P12231870643038498821

`A008486(n)+A004396(A151988(n))+n`
-/

namespace A314898.P12231870643038498821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A004396 (A151988 n).toNat + (n : ℤ))

end

end A314898.P12231870643038498821

namespace A314898

/-- `A008486(n)+A004396(A151988(n))+n` -/
def P12231870643038498821.Spec : Prop :=
  ∀ n, P12231870643038498821.a n = A314898 n

end A314898

/-! ## A314898.P4594635257153461457

`A005843(A008574(n))+n-A312892(n)`
-/

namespace A314898.P4594635257153461457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A312892 n)

end

end A314898.P4594635257153461457

namespace A314898

/-- `A005843(A008574(n))+n-A312892(n)` -/
def P4594635257153461457.Spec : Prop :=
  ∀ n, P4594635257153461457.a n = A314898 n

end A314898

/-! ## A314898.P6593711999636008859

`A008458(n)+A008486(n)-A312892(n)`
-/

namespace A314898.P6593711999636008859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312892 n)

end

end A314898.P6593711999636008859

namespace A314898

/-- `A008458(n)+A008486(n)-A312892(n)` -/
def P6593711999636008859.Spec : Prop :=
  ∀ n, P6593711999636008859.a n = A314898 n

end A314898

/-! ## A314898.P14208085292734435960

`A151988(n)+A314886(n)-n`
-/

namespace A314898.P14208085292734435960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314886 n - (n : ℤ))

end

end A314898.P14208085292734435960

namespace A314898

/-- `A151988(n)+A314886(n)-n` -/
def P14208085292734435960.Spec : Prop :=
  ∀ n, P14208085292734435960.a n = A314898 n

end A314898

/-! ## A314898.P12127831676741968493

`A330025(A330025(n)+n)+A312195(n)`
-/

namespace A314898.P12127831676741968493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A312195 n

end

end A314898.P12127831676741968493

namespace A314898

/-- `A330025(A330025(n)+n)+A312195(n)` -/
def P12127831676741968493.Spec : Prop :=
  ∀ n, P12127831676741968493.a n = A314898 n

end A314898

/-! ## A314898.P16586862650644306719

`A330025(n)+A312162(n)`
-/

namespace A314898.P16586862650644306719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312162 n

end

end A314898.P16586862650644306719

namespace A314898

/-- `A330025(n)+A312162(n)` -/
def P16586862650644306719.Spec : Prop :=
  ∀ n, P16586862650644306719.a n = A314898 n

end A314898

/-! ## A314898.P10240336408202748802

`A313719(n)-A330025(n-A330025(n))`
-/

namespace A314898.P10240336408202748802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A314898.P10240336408202748802

namespace A314898

/-- `A313719(n)-A330025(n-A330025(n))` -/
def P10240336408202748802.Spec : Prop :=
  ∀ n, P10240336408202748802.a n = A314898 n

end A314898

/-! ## A314898.P9909196206449554749

`A315255(n)-A330025(n)`
-/

namespace A314898.P9909196206449554749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n - A330025 n

end

end A314898.P9909196206449554749

namespace A314898

/-- `A315255(n)-A330025(n)` -/
def P9909196206449554749.Spec : Prop :=
  ∀ n, P9909196206449554749.a n = A314898 n

end A314898

/-! ## A314898.P7692986627576924589

`abs(A008592(n)-A314111(n))`
-/

namespace A314898.P7692986627576924589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314111 n|

end

end A314898.P7692986627576924589

namespace A314898

/-- `abs(A008592(n)-A314111(n))` -/
def P7692986627576924589.Spec : Prop :=
  ∀ n, P7692986627576924589.a n = A314898 n

end A314898

/-! ## A314898.P17527769971678245427

`2*A008706(n)-A314111(n)`
-/

namespace A314898.P17527769971678245427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314111 n

end

end A314898.P17527769971678245427

namespace A314898

/-- `2*A008706(n)-A314111(n)` -/
def P17527769971678245427.Spec : Prop :=
  ∀ n, P17527769971678245427.a n = A314898 n

end A314898

/-! ## A314898.P9806960013955920652

`abs(A008593(n)-(A314111(n)+n))`
-/

namespace A314898.P9806960013955920652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A314111 n + (n : ℤ))|

end

end A314898.P9806960013955920652

namespace A314898

/-- `abs(A008593(n)-(A314111(n)+n))` -/
def P9806960013955920652.Spec : Prop :=
  ∀ n, P9806960013955920652.a n = A314898 n

end A314898

/-! ## A314898.P4820120072148960283

`A008458(n)+A008574(n)-A314111(n)`
-/

namespace A314898.P4820120072148960283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314111 n)

end

end A314898.P4820120072148960283

namespace A314898

/-- `A008458(n)+A008574(n)-A314111(n)` -/
def P4820120072148960283.Spec : Prop :=
  ∀ n, P4820120072148960283.a n = A314898 n

end A314898

/-! ## A314898.P14549509756133055510

`A313782(n)-Δ[A011858(n)]`
-/

namespace A314898.P14549509756133055510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - (f1 (n + 1) - f1 n)

end

end A314898.P14549509756133055510

namespace A314898

/-- `A313782(n)-Δ[A011858(n)]` -/
def P14549509756133055510.Spec : Prop :=
  ∀ n, P14549509756133055510.a n = A314898 n

end A314898

/-!
# A314899: Coordination sequence Gal.6.153.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314899, the canonical program `A314899.P7105760915525544627` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314899 has offset 0).

The definition of A314899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314899.P428696038574689379

`A311257(n)+A004396(n)`
-/

namespace A314899.P428696038574689379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A004396 n

end

end A314899.P428696038574689379

namespace A314899

/-- `A311257(n)+A004396(n)` -/
def P428696038574689379.Spec : Prop :=
  ∀ n, P428696038574689379.a n = A314899 n

end A314899

/-! ## A314899.P12389361550130536220

`A311861(n)+A004525(n)`
-/

namespace A314899.P12389361550130536220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A004525 n

end

end A314899.P12389361550130536220

namespace A314899

/-- `A311861(n)+A004525(n)` -/
def P12389361550130536220.Spec : Prop :=
  ∀ n, P12389361550130536220.a n = A314899 n

end A314899

/-! ## A314899.P4524646901287166734

`A311257(n)+A002264(2*n+1)`
-/

namespace A314899.P4524646901287166734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A002264 (2 * n + 1)

end

end A314899.P4524646901287166734

namespace A314899

/-- `A311257(n)+A002264(2*n+1)` -/
def P4524646901287166734.Spec : Prop :=
  ∀ n, P4524646901287166734.a n = A314899 n

end A314899

/-! ## A314899.P8405760516658191724

`A047222(n+1)+A311257(n)-n`
-/

namespace A314899.P8405760516658191724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1) + (A311257 n - (n : ℤ))

end

end A314899.P8405760516658191724

namespace A314899

/-- `A047222(n+1)+A311257(n)-n` -/
def P8405760516658191724.Spec : Prop :=
  ∀ n, P8405760516658191724.a n = A314899 n

end A314899

/-! ## A314899.P15092538261677757878

`A047229(n+1)+A311861(n)-n`
-/

namespace A314899.P15092538261677757878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A311861 n - (n : ℤ))

end

end A314899.P15092538261677757878

namespace A314899

/-- `A047229(n+1)+A311861(n)-n` -/
def P15092538261677757878.Spec : Prop :=
  ∀ n, P15092538261677757878.a n = A314899 n

end A314899

/-! ## A314899.P2274218885563346547

`A047424(n+1)+A312123(n)-n`
-/

namespace A314899.P2274218885563346547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A312123 n - (n : ℤ))

end

end A314899.P2274218885563346547

namespace A314899

/-- `A047424(n+1)+A312123(n)-n` -/
def P2274218885563346547.Spec : Prop :=
  ∀ n, P2274218885563346547.a n = A314899 n

end A314899

/-! ## A314899.P3821245181028816845

`A047513(n+1)+A314688(n)-n`
-/

namespace A314899.P3821245181028816845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A314688 n - (n : ℤ))

end

end A314899.P3821245181028816845

namespace A314899

/-- `A047513(n+1)+A314688(n)-n` -/
def P3821245181028816845.Spec : Prop :=
  ∀ n, P3821245181028816845.a n = A314899 n

end A314899

/-! ## A314899.P6215125726391599327

`A312123(n)+A004525(A004396(n))`
-/

namespace A314899.P6215125726391599327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A004525 (A004396 n).toNat

end

end A314899.P6215125726391599327

namespace A314899

/-- `A312123(n)+A004525(A004396(n))` -/
def P6215125726391599327.Spec : Prop :=
  ∀ n, P6215125726391599327.a n = A314899 n

end A314899

/-! ## A314899.P7067346921110069333

`A008458(n)+A008486(n)-A312890(n)`
-/

namespace A314899.P7067346921110069333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312890 n)

end

end A314899.P7067346921110069333

namespace A314899

/-- `A008458(n)+A008486(n)-A312890(n)` -/
def P7067346921110069333.Spec : Prop :=
  ∀ n, P7067346921110069333.a n = A314899 n

end A314899

/-! ## A314899.P7105760915525544627

`A004525(n)+A314841(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A314899

/-- `A004525(n)+A314841(n)-A004396(A004525(n))` -/
def P7105760915525544627.Spec : Prop :=
  ∀ n, P7105760915525544627.a n = A314899 n

theorem P7105760915525544627.correct : P7105760915525544627.Spec := by
  intro n
  simp only [A314899]

end A314899

/-! ## A314899.P15198026486327271404

`A313747(n)-floor((n+1)/3)`
-/

namespace A314899.P15198026486327271404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A314899.P15198026486327271404

namespace A314899

/-- `A313747(n)-floor((n+1)/3)` -/
def P15198026486327271404.Spec : Prop :=
  ∀ n, P15198026486327271404.a n = A314899 n

end A314899

/-! ## A314899.P16349957832850771234

`A004396(n)+A313747(n)-n`
-/

namespace A314899.P16349957832850771234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313747 n - (n : ℤ))

end

end A314899.P16349957832850771234

namespace A314899

/-- `A004396(n)+A313747(n)-n` -/
def P16349957832850771234.Spec : Prop :=
  ∀ n, P16349957832850771234.a n = A314899 n

end A314899

/-! ## A314899.P6030787415489526273

`A008576(n)+A313747(n)-A008486(n)`
-/

namespace A314899.P6030787415489526273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313747 n - A008486 n)

end

end A314899.P6030787415489526273

namespace A314899

/-- `A008576(n)+A313747(n)-A008486(n)` -/
def P6030787415489526273.Spec : Prop :=
  ∀ n, P6030787415489526273.a n = A314899 n

end A314899

/-! ## A314899.P17128380764575536244

`A313739(n)-A004396(n-A004525(n))`
-/

namespace A314899.P17128380764575536244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A314899.P17128380764575536244

namespace A314899

/-- `A313739(n)-A004396(n-A004525(n))` -/
def P17128380764575536244.Spec : Prop :=
  ∀ n, P17128380764575536244.a n = A314899 n

end A314899

/-! ## A314899.P9717067170169201788

`A008458(n)+A008574(n)-A314110(n)`
-/

namespace A314899.P9717067170169201788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314110 n)

end

end A314899.P9717067170169201788

namespace A314899

/-- `A008458(n)+A008574(n)-A314110(n)` -/
def P9717067170169201788.Spec : Prop :=
  ∀ n, P9717067170169201788.a n = A314899 n

end A314899

/-! ## A314899.P9004788292834605550

`A004525(n)+A313879(n)-n`
-/

namespace A314899.P9004788292834605550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313879 n - (n : ℤ))

end

end A314899.P9004788292834605550

namespace A314899

/-- `A004525(n)+A313879(n)-n` -/
def P9004788292834605550.Spec : Prop :=
  ∀ n, P9004788292834605550.a n = A314899 n

end A314899

/-! ## A314899.P13651568294848558193

`A315335(n)-A004396(n)`
-/

namespace A314899.P13651568294848558193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - A004396 n

end

end A314899.P13651568294848558193

namespace A314899

/-- `A315335(n)-A004396(n)` -/
def P13651568294848558193.Spec : Prop :=
  ∀ n, P13651568294848558193.a n = A314899 n

end A314899

/-! ## A314899.P16637845402023537152

`A315335(n)-A002264(2*n+1)`
-/

namespace A314899.P16637845402023537152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - A002264 (2 * n + 1)

end

end A314899.P16637845402023537152

namespace A314899

/-- `A315335(n)-A002264(2*n+1)` -/
def P16637845402023537152.Spec : Prop :=
  ∀ n, P16637845402023537152.a n = A314899 n

end A314899

/-! ## A314899.P7328180139337022093

`A004525(A004396(n))+A313924(n)-n`
-/

namespace A314899.P7328180139337022093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313924 n - (n : ℤ))

end

end A314899.P7328180139337022093

namespace A314899

/-- `A004525(A004396(n))+A313924(n)-n` -/
def P7328180139337022093.Spec : Prop :=
  ∀ n, P7328180139337022093.a n = A314899 n

end A314899

/-! ## A314899.P9940149680399102201

`A315549(n)-n`
-/

namespace A314899.P9940149680399102201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - (n : ℤ)

end

end A314899.P9940149680399102201

namespace A314899

/-- `A315549(n)-n` -/
def P9940149680399102201.Spec : Prop :=
  ∀ n, P9940149680399102201.a n = A314899 n

end A314899

