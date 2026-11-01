import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A043101: Numbers k such that 0 and 2 occur juxtaposed in the base-4 representation of k but not of k-1.

The programs for A043101, there is no canonical definition to state claims against.
-/

/-! ## A043101.P16852120567189166953

`and(A043881(n+1)+1, A043881(n+1))`
-/

namespace A043101.P16852120567189166953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043881 (n + 1) + 1) (A043881 (n + 1))

end

end A043101.P16852120567189166953

/-! ## A043101.P12098321800367121879

`A043881(n+1)-A135481(A043881(n+1))`
-/

namespace A043101.P12098321800367121879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043881 (n + 1) - A135481 (A043881 (n + 1)).toNat

end

end A043101.P12098321800367121879

/-! ## A043101.P16160842532537090797

`A129760(A043881(1+n)+1)`
-/

namespace A043101.P16160842532537090797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043881 (1 + n) + 1).toNat

end

end A043101.P16160842532537090797

/-! ## A043101.P2169327354206263722

`A159619(2*n+1)+A185255(A004275(n))+A159619(2*n+1)`
-/

namespace A043101.P2169327354206263722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159619 (2 * n + 1) + (A185255 (A004275 n).toNat + A159619 (2 * n + 1))

end

end A043101.P2169327354206263722

/-! ## A043101.P15188521456239187970

`A160217(A159619(2*n+1))-1`
-/

namespace A043101.P15188521456239187970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160217 (A159619 (2 * n + 1)).toNat - 1

end

end A043101.P15188521456239187970

/-!
# A043102: Numbers k such that 0 and 3 occur juxtaposed in the base-4 representation of k but not of k-1.

The programs for A043102, there is no canonical definition to state claims against.
-/

/-! ## A043102.P18041099123507778369

`record[A289813(A043183(1+n))]`
-/

namespace A043102.P18041099123507778369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A043183 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043102.P18041099123507778369

/-! ## A043102.P8729039884226663588

`record[A289813(A043963(1+n))]`
-/

namespace A043102.P8729039884226663588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A043963 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043102.P8729039884226663588

/-! ## A043102.P6672574608530930295

`record[A328749(A043183(n+1)+A043183(n+1))]`
-/

namespace A043102.P6672574608530930295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A043183 (n + 1) + A043183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043102.P6672574608530930295

/-! ## A043102.P2081674458984861689

`A123726(A010763(n))+record[or(11, n)]`
-/

namespace A043102.P2081674458984861689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 (A010763 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A043102.P2081674458984861689

/-! ## A043102.P15959459440710355850

`A214863(n+1)+A123726(A010763(n))`
-/

namespace A043102.P15959459440710355850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (n + 1) + A123726 (A010763 n).toNat

end

end A043102.P15959459440710355850

/-!
# A043103: Numbers k such that 1 and 2 occur juxtaposed in the base-4 representation of k but not of k-1.

The programs for A043103, there is no canonical definition to state claims against.
-/

/-! ## A043103.P4309464582193504747

`record[A328749(A043198(n+1))]`
-/

namespace A043103.P4309464582193504747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A043198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043103.P4309464582193504747

/-!
# A043104: Numbers k such that 1 and 3 occur juxtaposed in the base-4 representation of k but not of k-1.

The programs for A043104, there is no canonical definition to state claims against.
-/

/-! ## A043104.P5350182217096025473

`A167482(A091785(n+1)+A063226(n+1))`
-/

namespace A043104.P5350182217096025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167482 (A091785 (n + 1) + A063226 (n + 1)).toNat

end

end A043104.P5350182217096025473

/-!
# A043108: Numbers k such that 0 and 3 occur juxtaposed in the base-5 representation of k but not of k-1.

The programs for A043108, there is no canonical definition to state claims against.
-/

/-! ## A043108.P17161687376015919595

`A164086(3*n+4)-A193592(A146939(2*n+1))`
-/

namespace A043108.P17161687376015919595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164086 (3 * n + 4) - A193592 (A146939 (2 * n + 1)).toNat

end

end A043108.P17161687376015919595

/-!
# A043109: Numbers k such that 0 and 4 occur juxtaposed in the base-5 representation of k but not of k-1.

The programs for A043109, there is no canonical definition to state claims against.
-/

/-! ## A043109.P9185067108282819768

`A330000(A168670(n+2)+1)-A028572(A014439(3*(n+1)))`
-/

namespace A043109.P9185067108282819768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330000 (A168670 (n + 2) + 1).toNat - A028572 (A014439 (3 * (n + 1))).toNat

end

end A043109.P9185067108282819768

/-!
# A043115: Numbers k such that 3 and 4 occur juxtaposed in the base-5 representation of k but not of k-1.

The programs for A043115, there is no canonical definition to state claims against.
-/

/-! ## A043115.P15152427458884085399

`∑[A010169(n²*A327238(n+2))+3]+7`
-/

namespace A043115.P15152427458884085399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 ((n ^ 2 : ℤ) * A327238 (n + 2)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A043115.P15152427458884085399

/-!
# A043116: Numbers k such that 0 and 1 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043116, there is no canonical definition to state claims against.
-/

/-! ## A043116.P7387135610532216352

`A037465(A043106(n+1)%A047842(n+2)!)`
-/

namespace A043116.P7387135610532216352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A043106 (n + 1)) (Nat.factorial (A047842 (n + 2)).toNat : ℤ)).toNat

end

end A043116.P7387135610532216352

/-!
# A043117: Numbers k such that 0 and 2 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043117, there is no canonical definition to state claims against.
-/

/-! ## A043117.P9075461365641413964

`A311376(∑[dr(A005820(n+1))])`
-/

namespace A043117.P9075461365641413964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005820 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A043117.P9075461365641413964

/-!
# A043118: Numbers k such that 0 and 3 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043118, there is no canonical definition to state claims against.
-/

/-! ## A043118.P4129649584477361219

`A008486(A151976(3*n+4)-4)`
-/

namespace A043118.P4129649584477361219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A151976 (3 * n + 4) - 4).toNat

end

end A043118.P4129649584477361219

/-! ## A043118.P11684651105438841122

`A006519(A085986(3*n+4))+18*n+17`
-/

namespace A043118.P11684651105438841122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A085986 (3 * n + 4)).toNat + (18 * n + 17 : ℤ)

end

end A043118.P11684651105438841122

/-! ## A043118.P17303015849720684097

`A037465(A043108(n+1)^A215075(n+1))`
-/

namespace A043118.P17303015849720684097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A043108 (n + 1) : ℚ) ^ (A215075 (n + 1) : ℤ))).toNat

end

end A043118.P17303015849720684097

/-! ## A043118.P10869567109254461424

`xor(A017173(2*(n+1)), A177704(A001700(n)))`
-/

namespace A043118.P10869567109254461424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A017173 (2 * (n + 1))) (A177704 (A001700 n).toNat)

end

end A043118.P10869567109254461424

/-!
# A043119: Numbers k such that 0 and 4 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043119, there is no canonical definition to state claims against.
-/

/-! ## A043119.P2564155852586324596

`A039296(n+1)-A014707(A012408(n))`
-/

namespace A043119.P2564155852586324596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039296 (n + 1) - A014707 (A012408 n).toNat

end

end A043119.P2564155852586324596

/-! ## A043119.P15609494522462007800

`A039296(n+1)-A025466(A002450(n))`
-/

namespace A043119.P15609494522462007800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039296 (n + 1) - A025466 (A002450 n).toNat

end

end A043119.P15609494522462007800

/-! ## A043119.P8665726283644829252

`A039296(n+1)-A025466(A061602(n))`
-/

namespace A043119.P8665726283644829252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039296 (n + 1) - A025466 (A061602 n).toNat

end

end A043119.P8665726283644829252

/-!
# A043120: Numbers k such that 0 and 5 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043120, there is no canonical definition to state claims against.
-/

/-! ## A043120.P12564794041287526554

`A039297(n+1)-A011765(A041471(n))`
-/

namespace A043120.P12564794041287526554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039297 (n + 1) - A011765 (A041471 n).toNat

end

end A043120.P12564794041287526554

/-! ## A043120.P13261105673500979327

`A039297(n+1)-A014083(A056236(n))`
-/

namespace A043120.P13261105673500979327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039297 (n + 1) - A014083 (A056236 n).toNat

end

end A043120.P13261105673500979327

/-! ## A043120.P17812412807989800452

`A039297(n+1)-A185284(A001590(n))`
-/

namespace A043120.P17812412807989800452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039297 (n + 1) - A185284 (A001590 n).toNat

end

end A043120.P17812412807989800452

/-! ## A043120.P3247124703049451476

`A039297(n+1)-A185284(A003592(n+1))`
-/

namespace A043120.P3247124703049451476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039297 (n + 1) - A185284 (A003592 (n + 1)).toNat

end

end A043120.P3247124703049451476

/-!
# A043122: Numbers k such that 1 and 3 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043122, there is no canonical definition to state claims against.
-/

/-! ## A043122.P10083424690087568983

`A037465(A043111(n+1)^A290759(n))`
-/

namespace A043122.P10083424690087568983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (SequenceMachineLib.roundAway ((A043111 (n + 1) : ℚ) ^ (A290759 n : ℤ))).toNat

end

end A043122.P10083424690087568983

/-!
# A043123: Numbers k such that 1 and 4 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043123, there is no canonical definition to state claims against.
-/

/-! ## A043123.P9124050021897451693

`A043903(n+1)-A142150(A193281(n))`
-/

namespace A043123.P9124050021897451693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043903 (n + 1) - A142150 (A193281 n).toNat

end

end A043123.P9124050021897451693

/-!
# A043124: Numbers k such that 1 and 5 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043124, there is no canonical definition to state claims against.
-/

/-! ## A043124.P3066901809659320740

`A112062(A026147(3*n+2))+3`
-/

namespace A043124.P3066901809659320740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112062 (A026147 (3 * n + 2)).toNat + 3

end

end A043124.P3066901809659320740

/-! ## A043124.P6234339451789151187

`A168489(3*n+2)-A023531(A039943(n+1))`
-/

namespace A043124.P6234339451789151187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (3 * n + 2) - A023531 (A039943 (n + 1)).toNat

end

end A043124.P6234339451789151187

/-! ## A043124.P7108579018536994380

`A168489(3*n+2)-and(A023531(3*n), A062572(2*n+1))`
-/

namespace A043124.P7108579018536994380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (3 * n + 2) - Int.land (A023531 (3 * n)) (A062572 (2 * n + 1))

end

end A043124.P7108579018536994380

/-!
# A043125: Numbers k such that 2 and 3 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043125, there is no canonical definition to state claims against.
-/

/-! ## A043125.P3399681074787248717

`A037465(A043113(n+1)%A047842(n)!)`
-/

namespace A043125.P3399681074787248717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.tmod (A043113 (n + 1)) (Nat.factorial (A047842 n).toNat : ℤ)).toNat

end

end A043125.P3399681074787248717

/-!
# A043126: Numbers k such that 2 and 4 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043126, there is no canonical definition to state claims against.
-/

/-! ## A043126.P3014402010415785697

`A043906(n+1)-A380263(A339006(2*n+1))`
-/

namespace A043126.P3014402010415785697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043906 (n + 1) - A380263 (A339006 (2 * n + 1)).toNat

end

end A043126.P3014402010415785697

/-!
# A043127: Numbers k such that 2 and 5 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043127, there is no canonical definition to state claims against.
-/

/-! ## A043127.P7599671762573940365

`A043907(n+1)-A007092(A324098(2*n+1))`
-/

namespace A043127.P7599671762573940365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043907 (n + 1) - A007092 (A324098 (2 * n + 1)).toNat

end

end A043127.P7599671762573940365

/-! ## A043127.P15892546068823456841

`A355529(A250120(2*(n+1)))+A252463(3*n+1)`
-/

namespace A043127.P15892546068823456841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355529 (A250120 (2 * (n + 1))).toNat + A252463 (3 * n + 1)

end

end A043127.P15892546068823456841

/-!
# A043128: Numbers k such that 3 and 4 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043128, there is no canonical definition to state claims against.
-/

/-! ## A043128.P2168812714206282864

`A043908(A032551(n+2))`
-/

namespace A043128.P2168812714206282864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043908 (A032551 (n + 2)).toNat

end

end A043128.P2168812714206282864

/-! ## A043128.P7135589755483204306

`A043908(C(A331565(n+1), n))`
-/

namespace A043128.P7135589755483204306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043908 (Nat.choose (A331565 (n + 1)).toNat n)

end

end A043128.P7135589755483204306

/-! ## A043128.P17092585007579678763

`A043908(A002034(record[∑{digits}[n, #!]]))`
-/

namespace A043128.P17092585007579678763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043908 (A002034 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A043128.P17092585007579678763

/-!
# A043129: Numbers k such that 3 and 5 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043129, there is no canonical definition to state claims against.
-/

/-! ## A043129.P14269793309939202598

`A043909(n+1)-A185336(A109692(n))`
-/

namespace A043129.P14269793309939202598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (n + 1) - A185336 (A109692 n).toNat

end

end A043129.P14269793309939202598

/-! ## A043129.P16124511110545554279

`A043909(A032551(n+2))`
-/

namespace A043129.P16124511110545554279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (A032551 (n + 2)).toNat

end

end A043129.P16124511110545554279

/-! ## A043129.P6652172775521995147

`A043909(A327103(2^n)+n)`
-/

namespace A043129.P6652172775521995147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043909 (A327103 (2 ^ n) + (n : ℤ)).toNat

end

end A043129.P6652172775521995147

/-!
# A043130: Numbers k such that 4 and 5 occur juxtaposed in the base-6 representation of k but not of k-1.

The programs for A043130, there is no canonical definition to state claims against.
-/

/-! ## A043130.P9852719386411181296

`A043389(5*A032559(n+1))`
-/

namespace A043130.P9852719386411181296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043389 (5 * A032559 (n + 1)).toNat

end

end A043130.P9852719386411181296

/-! ## A043130.P16020249247185811400

`A043389(5*A078213(n+1))`
-/

namespace A043130.P16020249247185811400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043389 (5 * A078213 (n + 1)).toNat

end

end A043130.P16020249247185811400

/-! ## A043130.P5012906844978557519

`eq[A008612(n), A169805(A008611(n+1))]`
-/

namespace A043130.P5012906844978557519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A008611 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043130.P5012906844978557519

/-!
# A043132: Numbers k such that 0 and 2 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043132, there is no canonical definition to state claims against.
-/

/-! ## A043132.P12936116565838286518

`record[A142150(A043134(1+n))]`
-/

namespace A043132.P12936116565838286518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A043134 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043132.P12936116565838286518

/-! ## A043132.P17440800230952732191

`record[-A166711(A043136(1+n))]`
-/

namespace A043132.P17440800230952732191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A043136 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043132.P17440800230952732191

/-! ## A043132.P14258480098010710312

`record[A278529(A043134(n+1))]%A184095(n+1)`
-/

namespace A043132.P14258480098010710312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A184095 (n + 1))

end

end A043132.P14258480098010710312

/-! ## A043132.P14643007040613033546

`record[A278529(A043134(n+1)%A184095(n+1))]`
-/

namespace A043132.P14643007040613033546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (Int.tmod (A043134 (n + 1)) (A184095 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043132.P14643007040613033546

/-! ## A043132.P1319662508150872965

`record[A278529(A043134(n+1))]%A098683(n+1)`
-/

namespace A043132.P1319662508150872965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A098683 (n + 1))

end

end A043132.P1319662508150872965

/-!
# A043133: Numbers k such that 0 and 3 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043133, there is no canonical definition to state claims against.
-/

/-! ## A043133.P12344999884272590415

`record[A278529(A043136(1+n))]`
-/

namespace A043133.P12344999884272590415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043136 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043133.P12344999884272590415

/-! ## A043133.P8219985790427579079

`record[A025480(A043136(n+1))]`
-/

namespace A043133.P8219985790427579079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043133.P8219985790427579079

/-! ## A043133.P1075635451880557398

`record[A032742(A043136(1+n))]`
-/

namespace A043133.P1075635451880557398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A043136 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043133.P1075635451880557398

/-! ## A043133.P6034673102705706210

`record[A001057(A043136(n+1)-1)]`
-/

namespace A043133.P6034673102705706210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043136 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043133.P6034673102705706210

/-! ## A043133.P11745433734473180851

`abs(A001057(∩[2*n, A043136(n+1)]))`
-/

namespace A043133.P11745433734473180851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043136 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)|

end

end A043133.P11745433734473180851

/-! ## A043133.P12700081179295010678

`-A001057(∩[2*(n+1), A043136(n+1)])`
-/

namespace A043133.P12700081179295010678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043136 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043133.P12700081179295010678

/-!
# A043134: Numbers k such that 0 and 4 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043134, there is no canonical definition to state claims against.
-/

/-! ## A043134.P13255864520270162253

`A043914(n+1)-A083206(A128816(n))`
-/

namespace A043134.P13255864520270162253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043914 (n + 1) - A083206 (A128816 n).toNat

end

end A043134.P13255864520270162253

/-! ## A043134.P6519089270678196504

`A039311(n+1)-A178798(A005993(n))`
-/

namespace A043134.P6519089270678196504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039311 (n + 1) - A178798 (A005993 n).toNat

end

end A043134.P6519089270678196504

/-! ## A043134.P5548666540039058704

`A039311(n+1)-A037912(A270598(n))`
-/

namespace A043134.P5548666540039058704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039311 (n + 1) - A037912 (A270598 n).toNat

end

end A043134.P5548666540039058704

/-! ## A043134.P10902145773031601773

`A039311(n+1)-A178798(A018789(n+1))`
-/

namespace A043134.P10902145773031601773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039311 (n + 1) - A178798 (A018789 (n + 1)).toNat

end

end A043134.P10902145773031601773

/-!
# A043135: Numbers k such that 0 and 5 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043135, there is no canonical definition to state claims against.
-/

/-! ## A043135.P6913170710202052323

`xor(A043915(n+1), A231080(A208379(n+1)))`
-/

namespace A043135.P6913170710202052323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043915 (n + 1)) (A231080 (A208379 (n + 1)).toNat)

end

end A043135.P6913170710202052323

/-! ## A043135.P1055313071693593659

`A039312(n+1)-A107846(A014188(n))`
-/

namespace A043135.P1055313071693593659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039312 (n + 1) - A107846 (A014188 n).toNat

end

end A043135.P1055313071693593659

/-! ## A043135.P11534327095003677430

`xor(A043915(n+1), A185284(A206743(n)))`
-/

namespace A043135.P11534327095003677430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043915 (n + 1)) (A185284 (A206743 n).toNat)

end

end A043135.P11534327095003677430

/-! ## A043135.P6064895524946132067

`A039312(n+1)-A018789(A102388(n+1))`
-/

namespace A043135.P6064895524946132067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039312 (n + 1) - A018789 (A102388 (n + 1)).toNat

end

end A043135.P6064895524946132067

/-! ## A043135.P6570307048957724304

`A039312(n+1)-A185284(A004139(n+1))`
-/

namespace A043135.P6570307048957724304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039312 (n + 1) - A185284 (A004139 (n + 1)).toNat

end

end A043135.P6570307048957724304

/-!
# A043136: Numbers k such that 0 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043136, there is no canonical definition to state claims against.
-/

/-! ## A043136.P11659605782164813846

`A043916(n+1)-A200214(A115205(n))`
-/

namespace A043136.P11659605782164813846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043916 (n + 1) - A200214 (A115205 n).toNat

end

end A043136.P11659605782164813846

/-! ## A043136.P15686193422802077442

`A043916(n+1)-A200214(A008965(n+1))`
-/

namespace A043136.P15686193422802077442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043916 (n + 1) - A200214 (A008965 (n + 1)).toNat

end

end A043136.P15686193422802077442

/-! ## A043136.P11818229287825264128

`A039313(n+1)-A107846(A052912(n))`
-/

namespace A043136.P11818229287825264128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039313 (n + 1) - A107846 (A052912 n).toNat

end

end A043136.P11818229287825264128

/-! ## A043136.P3828671264041860412

`A039313(n+1)-A185274(A002865(n))`
-/

namespace A043136.P3828671264041860412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039313 (n + 1) - A185274 (A002865 n).toNat

end

end A043136.P3828671264041860412

/-! ## A043136.P4567745976139524030

`A039313(n+1)-A217096(A105476(n))`
-/

namespace A043136.P4567745976139524030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039313 (n + 1) - A217096 (A105476 n).toNat

end

end A043136.P4567745976139524030

/-!
# A043137: Numbers k such that 1 and 2 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043137, there is no canonical definition to state claims against.
-/

/-! ## A043137.P13740271423703433697

`A175076(A015905(n+1))`
-/

namespace A043137.P13740271423703433697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175076 (A015905 (n + 1)).toNat

end

end A043137.P13740271423703433697

/-!
# A043138: Numbers k such that 1 and 3 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043138, there is no canonical definition to state claims against.
-/

/-! ## A043138.P612218784077322863

`A037466(A043111(n+1)^A290759(n))`
-/

namespace A043138.P612218784077322863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A043111 (n + 1) : ℚ) ^ (A290759 n : ℤ))).toNat

end

end A043138.P612218784077322863

/-! ## A043138.P14876608481812267106

`A301712(A007091(2*(n+1))*A386504(n))`
-/

namespace A043138.P14876608481812267106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 (A007091 (2 * (n + 1)) * A386504 n).toNat

end

end A043138.P14876608481812267106

/-!
# A043139: Numbers k such that 1 and 4 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043139, there is no canonical definition to state claims against.
-/

/-! ## A043139.P13131812178724652797

`A043918(n+1)+A007913(7^n)-A073973(A001263(n+2))`
-/

namespace A043139.P13131812178724652797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043918 (n + 1) + A007913 (7 ^ n) - A073973 (A001263 (n + 2)).toNat

end

end A043139.P13131812178724652797

/-! ## A043139.P11167300005163519470

`A043920(n+1)-A007913(7^n)-A073973(A001263(n+2))`
-/

namespace A043139.P11167300005163519470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043920 (n + 1) - A007913 (7 ^ n) - A073973 (A001263 (n + 2)).toNat

end

end A043139.P11167300005163519470

/-!
# A043140: Numbers k such that 1 and 5 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043140, there is no canonical definition to state claims against.
-/

/-! ## A043140.P3436745786827094490

`floor(A157271(A044186(Δ[n²]))/2)`
-/

namespace A043140.P3436745786827094490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157271 (A044186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 2⌋

end

end A043140.P3436745786827094490

/-! ## A043140.P17188429034820209101

`A004526(A044162(n+1)^A043562(n))`
-/

namespace A043140.P17188429034820209101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A044162 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A043140.P17188429034820209101

/-! ## A043140.P15709258554082962558

`floor(A157271(A043146(2*(n+1))+A043142(2*n+1))/2)`
-/

namespace A043140.P15709258554082962558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157271 (A043146 (2 * (n + 1)) + A043142 (2 * n + 1)).toNat : ℚ) / 2⌋

end

end A043140.P15709258554082962558

/-! ## A043140.P16222412433831081348

`A290079(A249131(n))+A004526(A044162(n+1))`
-/

namespace A043140.P16222412433831081348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A249131 n).toNat + A004526 (A044162 (n + 1)).toNat

end

end A043140.P16222412433831081348

/-!
# A043141: Numbers k such that 1 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043141, there is no canonical definition to state claims against.
-/

/-! ## A043141.P10375388524035344671

`A349056(A014486(n+3))+A156674(n+1)`
-/

namespace A043141.P10375388524035344671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (A014486 (n + 3)).toNat + A156674 (n + 1)

end

end A043141.P10375388524035344671

/-! ## A043141.P575414050719710677

`A111626(A250120(3*n+1))+A045449(3*n+2)`
-/

namespace A043141.P575414050719710677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111626 (A250120 (3 * n + 1)).toNat + A045449 (3 * n + 2)

end

end A043141.P575414050719710677

/-!
# A043142: Numbers k such that 2 and 3 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043142, there is no canonical definition to state claims against.
-/

/-! ## A043142.P3020101294061876796

`record[A278529(A043150(n+1))]`
-/

namespace A043142.P3020101294061876796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P3020101294061876796

/-! ## A043142.P12773508507445830171

`record[A025480(A043150(1+n))]`
-/

namespace A043142.P12773508507445830171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043150 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P12773508507445830171

/-! ## A043142.P16739365832090911315

`record[A032742(A043150(n+1))]`
-/

namespace A043142.P16739365832090911315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A043150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P16739365832090911315

/-! ## A043142.P3482655250934179640

`record[A078898(A043150(A065033(n)))]`
-/

namespace A043142.P3482655250934179640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043150 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P3482655250934179640

/-! ## A043142.P11812974870238887667

`record[A142150(A135481(2*n)+A043150(n+1))]`
-/

namespace A043142.P11812974870238887667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A135481 (2 * n) + A043150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P11812974870238887667

/-! ## A043142.P15447345099081810611

`A142150(∩[A043150(n+1), A065475(2*n+5)])`
-/

namespace A043142.P15447345099081810611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043142.P15447345099081810611

/-! ## A043142.P11936383586504837659

`record[A142150(A142150(2*n+3)+A043150(n+1))]`
-/

namespace A043142.P11936383586504837659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (2 * n + 3) + A043150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043142.P11936383586504837659

/-!
# A043143: Numbers k such that 2 and 4 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043143, there is no canonical definition to state claims against.
-/

/-! ## A043143.P11705298062118234829

`A043924(n+1)-A007913(7^n)-A049310(A267682(n))`
-/

namespace A043143.P11705298062118234829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043924 (n + 1) - A007913 (7 ^ n) - A049310 (A267682 n).toNat

end

end A043143.P11705298062118234829

/-!
# A043144: Numbers k such that 2 and 5 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043144, there is no canonical definition to state claims against.
-/

/-! ## A043144.P852443521785986278

`A043924(n+1)-A178105(A068870(n))`
-/

namespace A043144.P852443521785986278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043924 (n + 1) - A178105 (A068870 n).toNat

end

end A043144.P852443521785986278

/-! ## A043144.P1638045633099084015

`A043924(n+1)-A178105(A002530(n+3))`
-/

namespace A043144.P1638045633099084015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043924 (n + 1) - A178105 (A002530 (n + 3)).toNat

end

end A043144.P1638045633099084015

/-!
# A043145: Numbers k such that 2 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043145, there is no canonical definition to state claims against.
-/

/-! ## A043145.P9007306341588673756

`A004526(A044178(n+1)+A062399(n)-n)`
-/

namespace A043145.P9007306341588673756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044178 (n + 1) + (A062399 n - (n : ℤ))).toNat

end

end A043145.P9007306341588673756

/-! ## A043145.P1828428775796200963

`A004526(Δ[A062399(n)]*A044178(n+1))`
-/

namespace A043145.P1828428775796200963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) - f1 n) * A044178 (n + 1)).toNat

end

end A043145.P1828428775796200963

/-! ## A043145.P17834839539510030092

`ceil((A044560(n+1)-A014963(A147208(n+1))-1)/2)`
-/

namespace A043145.P17834839539510030092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A044560 (n + 1) - A014963 (A147208 (n + 1)).toNat - 1 : ℚ) / 2⌉

end

end A043145.P17834839539510030092

/-! ## A043145.P8929153752717489366

`A004526(A044178(n+1)^A043537(n+1))`
-/

namespace A043145.P8929153752717489366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A044178 (n + 1) : ℚ) ^ (A043537 (n + 1) : ℤ))).toNat

end

end A043145.P8929153752717489366

/-!
# A043146: Numbers k such that 3 and 4 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043146, there is no canonical definition to state claims against.
-/

/-! ## A043146.P14011912904867037261

`A043926(n+1)-A184964(A008483(2*n+1))`
-/

namespace A043146.P14011912904867037261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043926 (n + 1) - A184964 (A008483 (2 * n + 1)).toNat

end

end A043146.P14011912904867037261

/-! ## A043146.P11689112038637438381

`A043926(A032551(n+2))`
-/

namespace A043146.P11689112038637438381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043926 (A032551 (n + 2)).toNat

end

end A043146.P11689112038637438381

/-! ## A043146.P12085226506344987422

`A043926(A228050(n+1)+1)`
-/

namespace A043146.P12085226506344987422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043926 (A228050 (n + 1) + 1).toNat

end

end A043146.P12085226506344987422

/-!
# A043147: Numbers k such that 3 and 5 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043147, there is no canonical definition to state claims against.
-/

/-! ## A043147.P7801439238738308413

`A043927(∑[A255985(n)])`
-/

namespace A043147.P7801439238738308413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043927 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A043147.P7801439238738308413

/-! ## A043147.P2592566925772420189

`A043927(A032551(n+2))`
-/

namespace A043147.P2592566925772420189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043927 (A032551 (n + 2)).toNat

end

end A043147.P2592566925772420189

/-! ## A043147.P15543974680514002447

`A043927(A255985(n)+n)`
-/

namespace A043147.P15543974680514002447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043927 (A255985 n + (n : ℤ)).toNat

end

end A043147.P15543974680514002447

/-!
# A043148: Numbers k such that 3 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043148, there is no canonical definition to state claims against.
-/

/-! ## A043148.P18011048779964469490

`A043928(n+1)-A038383(A097331(n))`
-/

namespace A043148.P18011048779964469490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043928 (n + 1) - A038383 (A097331 n).toNat

end

end A043148.P18011048779964469490

/-! ## A043148.P6941455613112515068

`A043928(A032551(n+2))`
-/

namespace A043148.P6941455613112515068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043928 (A032551 (n + 2)).toNat

end

end A043148.P6941455613112515068

/-! ## A043148.P14382362785455329121

`A043928(A255985(n)+n)`
-/

namespace A043148.P14382362785455329121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043928 (A255985 n + (n : ℤ)).toNat

end

end A043148.P14382362785455329121

/-!
# A043149: Numbers k such that 4 and 5 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043149, there is no canonical definition to state claims against.
-/

/-! ## A043149.P528192373636055014

`A043929(n+1)-A173068(A120126(n))`
-/

namespace A043149.P528192373636055014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (n + 1) - A173068 (A120126 n).toNat

end

end A043149.P528192373636055014

/-! ## A043149.P4461147068332318733

`A043929(n+1)-A173068(A024659(n))`
-/

namespace A043149.P4461147068332318733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (n + 1) - A173068 (A024659 n).toNat

end

end A043149.P4461147068332318733

/-! ## A043149.P12749212119555309084

`A043929(A129396(n²))`
-/

namespace A043149.P12749212119555309084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (A129396 (n ^ 2)).toNat

end

end A043149.P12749212119555309084

/-! ## A043149.P1342986004569040033

`A043929(A032555(n+1))`
-/

namespace A043149.P1342986004569040033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (A032555 (n + 1)).toNat

end

end A043149.P1342986004569040033

/-! ## A043149.P7861405839807623593

`A043929(A032559(n+1))`
-/

namespace A043149.P7861405839807623593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (A032559 (n + 1)).toNat

end

end A043149.P7861405839807623593

/-!
# A043150: Numbers k such that 4 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043150, there is no canonical definition to state claims against.
-/

/-! ## A043150.P12700697327164725668

`A043930(A032555(n+1))`
-/

namespace A043150.P12700697327164725668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (A032555 (n + 1)).toNat

end

end A043150.P12700697327164725668

/-! ## A043150.P9479262231597577544

`A043930(A032559(n+1))`
-/

namespace A043150.P9479262231597577544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (A032559 (n + 1)).toNat

end

end A043150.P9479262231597577544

/-! ## A043150.P12954503302658618078

`A043930(A077739(n+1))`
-/

namespace A043150.P12954503302658618078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (A077739 (n + 1)).toNat

end

end A043150.P12954503302658618078

/-! ## A043150.P3375605117013375329

`A043930(A078213(n+1))`
-/

namespace A043150.P3375605117013375329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (A078213 (n + 1)).toNat

end

end A043150.P3375605117013375329

/-! ## A043150.P16223452803943290123

`A043930(A082217(n+1))`
-/

namespace A043150.P16223452803943290123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (A082217 (n + 1)).toNat

end

end A043150.P16223452803943290123

/-!
# A043151: Numbers k such that 5 and 6 occur juxtaposed in the base-7 representation of k but not of k-1.

The programs for A043151, there is no canonical definition to state claims against.
-/

/-! ## A043151.P10103143858771866570

`A043417(∑[Δ[30^A165661(n)]+6])`
-/

namespace A043151.P10103143858771866570
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 : ℚ) ^ (A165661 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043417 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A043151.P10103143858771866570

/-! ## A043151.P17160261584519485077

`A185657(n+1)+A001414(A000244(n))`
-/

namespace A043151.P17160261584519485077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185657 (n + 1) + A001414 (A000244 n).toNat

end

end A043151.P17160261584519485077

/-! ## A043151.P1274100979112415894

`A185657(n+1)+A008585(A062399(n))`
-/

namespace A043151.P1274100979112415894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185657 (n + 1) + A008585 (A062399 n).toNat

end

end A043151.P1274100979112415894

/-!
# A043152: Numbers k such that 0 and 1 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043152, there is no canonical definition to state claims against.
-/

/-! ## A043152.P17806566211118898129

`A037474(A043131(n+1)%A188483(n+1))`
-/

namespace A043152.P17806566211118898129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A043131 (n + 1)) (A188483 (n + 1))).toNat

end

end A043152.P17806566211118898129

/-! ## A043152.P11134075002002344736

`A037471(A043116(n+1))%A112634(3*n+4)`
-/

namespace A043152.P11134075002002344736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037471 (A043116 (n + 1)).toNat) (A112634 (3 * n + 4))

end

end A043152.P11134075002002344736

/-!
# A043153: Numbers k such that 0 and 2 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043153, there is no canonical definition to state claims against.
-/

/-! ## A043153.P2689531404441542720

`and(A043933(n+1)+1, A043933(n+1))`
-/

namespace A043153.P2689531404441542720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043933 (n + 1) + 1) (A043933 (n + 1))

end

end A043153.P2689531404441542720

/-! ## A043153.P7201522665531344973

`A043933(1+n)-A135481(A043933(n+1))`
-/

namespace A043153.P7201522665531344973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043933 (1 + n) - A135481 (A043933 (n + 1)).toNat

end

end A043153.P7201522665531344973

/-! ## A043153.P12831557056145540250

`A129760(1+A043933(1+n))`
-/

namespace A043153.P12831557056145540250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (1 + A043933 (1 + n)).toNat

end

end A043153.P12831557056145540250

/-! ## A043153.P8125092958472342324

`A043933(n+1)+1-A006519(A043933(n+1)+1)`
-/

namespace A043153.P8125092958472342324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043933 (n + 1) + 1 - A006519 (A043933 (n + 1) + 1).toNat

end

end A043153.P8125092958472342324

/-! ## A043153.P13433089927129118143

`record[-A166711(A043157(n+1))]`
-/

namespace A043153.P13433089927129118143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A043157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043153.P13433089927129118143

/-! ## A043153.P9400800372017105805

`record[A209229(n)-A166711(A043157(n+1))]`
-/

namespace A043153.P9400800372017105805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - A166711 (A043157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043153.P9400800372017105805

/-!
# A043154: Numbers k such that 0 and 3 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043154, there is no canonical definition to state claims against.
-/

/-! ## A043154.P15067678374072004473

`A185284(A007093(2*(n+1)))+A037474(A043133(n+1))`
-/

namespace A043154.P15067678374072004473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007093 (2 * (n + 1))).toNat + A037474 (A043133 (n + 1)).toNat

end

end A043154.P15067678374072004473

/-! ## A043154.P17380895036518668556

`A142150(A185284(3*n+1))+A037474(A043133(n+1))`
-/

namespace A043154.P17380895036518668556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A185284 (3 * n + 1)).toNat + A037474 (A043133 (n + 1)).toNat

end

end A043154.P17380895036518668556

/-! ## A043154.P9473657147393751891

`A135481(A241197(n+4))+A037474(A043133(n+1))`
-/

namespace A043154.P9473657147393751891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A241197 (n + 4)).toNat + A037474 (A043133 (n + 1)).toNat

end

end A043154.P9473657147393751891

/-! ## A043154.P4601624197113004643

`A037474(A043133(n+1))%A352729(A184095(n+1))`
-/

namespace A043154.P4601624197113004643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043133 (n + 1)).toNat) (A352729 (A184095 (n + 1)).toNat)

end

end A043154.P4601624197113004643

/-! ## A043154.P10541141854896719948

`A185284(A185284(3*n+4))+A037474(A043133(n+1))`
-/

namespace A043154.P10541141854896719948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (3 * n + 4)).toNat + A037474 (A043133 (n + 1)).toNat

end

end A043154.P10541141854896719948

/-!
# A043155: Numbers k such that 0 and 4 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043155, there is no canonical definition to state claims against.
-/

/-! ## A043155.P10772014224483122451

`and(A043935(n+1)+1, A043935(n+1))`
-/

namespace A043155.P10772014224483122451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043935 (n + 1) + 1) (A043935 (n + 1))

end

end A043155.P10772014224483122451

/-! ## A043155.P17750411593913103535

`and(A043935(n+1), A092486(A043935(n+1)))`
-/

namespace A043155.P17750411593913103535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043935 (n + 1)) (A092486 (A043935 (n + 1)).toNat)

end

end A043155.P17750411593913103535

/-! ## A043155.P16279724806800989900

`A043935(A025480(2*(n+1)))-A135481(A043935(n+1))`
-/

namespace A043155.P16279724806800989900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043935 (A025480 (2 * (n + 1))).toNat - A135481 (A043935 (n + 1)).toNat

end

end A043155.P16279724806800989900

/-! ## A043155.P16034692086895123363

`A043935(A032742(2*(n+1)))-A135481(A043935(n+1))`
-/

namespace A043155.P16034692086895123363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043935 (A032742 (2 * (n + 1))).toNat - A135481 (A043935 (n + 1)).toNat

end

end A043155.P16034692086895123363

/-! ## A043155.P9539681003164692845

`A043935(A278529(2*(n+1)))-A135481(A043935(n+1))`
-/

namespace A043155.P9539681003164692845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043935 (A278529 (2 * (n + 1))).toNat - A135481 (A043935 (n + 1)).toNat

end

end A043155.P9539681003164692845

/-! ## A043155.P11007807524862992833

`A129760(A043935(n+1)+1)`
-/

namespace A043155.P11007807524862992833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043935 (n + 1) + 1).toNat

end

end A043155.P11007807524862992833

/-! ## A043155.P561575716154414592

`A352729(A043935(n+1))`
-/

namespace A043155.P561575716154414592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A043935 (n + 1)).toNat

end

end A043155.P561575716154414592

/-!
# A043156: Numbers k such that 0 and 5 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043156, there is no canonical definition to state claims against.
-/

/-! ## A043156.P3625241514030182724

`A039333(n+1)-A011765(A041471(n))`
-/

namespace A043156.P3625241514030182724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039333 (n + 1) - A011765 (A041471 n).toNat

end

end A043156.P3625241514030182724

/-! ## A043156.P6967050795943951008

`A039333(n+1)-A014083(A056236(n))`
-/

namespace A043156.P6967050795943951008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039333 (n + 1) - A014083 (A056236 n).toNat

end

end A043156.P6967050795943951008

/-! ## A043156.P5783240746530613534

`A039333(n+1)-A025469(A154140(n+1))`
-/

namespace A043156.P5783240746530613534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039333 (n + 1) - A025469 (A154140 (n + 1)).toNat

end

end A043156.P5783240746530613534

/-! ## A043156.P7796872704512627158

`A039333(n+1)-A345228(A000418(n+1))`
-/

namespace A043156.P7796872704512627158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039333 (n + 1) - A345228 (A000418 (n + 1)).toNat

end

end A043156.P7796872704512627158

/-!
# A043157: Numbers k such that 0 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043157, there is no canonical definition to state claims against.
-/

/-! ## A043157.P17191347706228605358

`and(A043937(n+1)+1, A043937(n+1))`
-/

namespace A043157.P17191347706228605358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043937 (n + 1) + 1) (A043937 (n + 1))

end

end A043157.P17191347706228605358

/-! ## A043157.P17086240293806933905

`A043937(1+n)-A135481(A043937(n+1))`
-/

namespace A043157.P17086240293806933905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043937 (1 + n) - A135481 (A043937 (n + 1)).toNat

end

end A043157.P17086240293806933905

/-! ## A043157.P2252727745228709895

`A129760(A043937(1+n)+1)`
-/

namespace A043157.P2252727745228709895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043937 (1 + n) + 1).toNat

end

end A043157.P2252727745228709895

/-! ## A043157.P15603850744965417491

`and(A093421(3*n+5)+A043955(n+2), A043168(n+2))`
-/

namespace A043157.P15603850744965417491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093421 (3 * n + 5) + A043955 (n + 2)) (A043168 (n + 2))

end

end A043157.P15603850744965417491

/-! ## A043157.P9448897510548432481

`A039334(n+1)-A185284(A153762(n+1))`
-/

namespace A043157.P9448897510548432481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039334 (n + 1) - A185284 (A153762 (n + 1)).toNat

end

end A043157.P9448897510548432481

/-!
# A043158: Numbers k such that 0 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043158, there is no canonical definition to state claims against.
-/

/-! ## A043158.P6799297327753886439

`and(A043164(n+2), A043938(A187829(n+1)))`
-/

namespace A043158.P6799297327753886439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043164 (n + 2)) (A043938 (A187829 (n + 1)).toNat)

end

end A043158.P6799297327753886439

/-!
# A043159: Numbers k such that 1 and 2 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043159, there is no canonical definition to state claims against.
-/

/-! ## A043159.P17859289162594670355

`record[-A166711(A043172(n+1))]`
-/

namespace A043159.P17859289162594670355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A043172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043159.P17859289162594670355

/-! ## A043159.P12898021127706038949

`record[A142150(2*n+3)-A166711(A043172(n+1))]`
-/

namespace A043159.P12898021127706038949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 3) - A166711 (A043172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043159.P12898021127706038949

/-! ## A043159.P15098744246795677369

`record[A209229(2*n+3)-A166711(A043172(n+1))]`
-/

namespace A043159.P15098744246795677369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3) - A166711 (A043172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043159.P15098744246795677369

/-! ## A043159.P3027750920909754873

`A037474(A043137(n+1))%A352729(A184095(n+1))`
-/

namespace A043159.P3027750920909754873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043137 (n + 1)).toNat) (A352729 (A184095 (n + 1)).toNat)

end

end A043159.P3027750920909754873

/-! ## A043159.P5588908748216383270

`A185284(A185284(3*n+4))+A037474(A043137(n+1))`
-/

namespace A043159.P5588908748216383270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (3 * n + 4)).toNat + A037474 (A043137 (n + 1)).toNat

end

end A043159.P5588908748216383270

/-!
# A043160: Numbers k such that 1 and 3 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043160, there is no canonical definition to state claims against.
-/

/-! ## A043160.P16982723726671083229

`A185284(A185284(3*n+4))+A037474(A043138(n+1))`
-/

namespace A043160.P16982723726671083229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (3 * n + 4)).toNat + A037474 (A043138 (n + 1)).toNat

end

end A043160.P16982723726671083229

/-! ## A043160.P15905270938843704103

`A037467(A043111(n+1)^A136400(n+1))`
-/

namespace A043160.P15905270938843704103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (SequenceMachineLib.roundAway ((A043111 (n + 1) : ℚ) ^ (A136400 (n + 1) : ℤ))).toNat

end

end A043160.P15905270938843704103

/-! ## A043160.P17297638964876759231

`A037467(A043111(n+1)^A290759(n))`
-/

namespace A043160.P17297638964876759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (SequenceMachineLib.roundAway ((A043111 (n + 1) : ℚ) ^ (A290759 n : ℤ))).toNat

end

end A043160.P17297638964876759231

/-! ## A043160.P2627065610661831023

`A037471(A043122(n+1)^A290759(n))`
-/

namespace A043160.P2627065610661831023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043122 (n + 1) : ℚ) ^ (A290759 n : ℤ))).toNat

end

end A043160.P2627065610661831023

/-!
# A043161: Numbers k such that 1 and 4 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043161, there is no canonical definition to state claims against.
-/

/-! ## A043161.P13415869787701621705

`A043162(n+1)-A010689(A000975(n)²)`
-/

namespace A043161.P13415869787701621705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) - A010689 (A000975 n ^ 2).toNat

end

end A043161.P13415869787701621705

/-! ## A043161.P14787512648681515780

`A043162(n+1)-A040063(A000522(n))/2`
-/

namespace A043161.P14787512648681515780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043162 (n + 1) : ℚ) - (A040063 (A000522 n).toNat : ℚ) / 2

end

end A043161.P14787512648681515780

/-! ## A043161.P15707617970935954288

`A037471(or(A043123(n+1), A337889(n+2)))`
-/

namespace A043161.P15707617970935954288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.lor (A043123 (n + 1)) (A337889 (n + 2))).toNat

end

end A043161.P15707617970935954288

/-! ## A043161.P2851898390240553960

`A043162(n+1)-A040063(A018657(n+1))/2`
-/

namespace A043161.P2851898390240553960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043162 (n + 1) : ℚ) - (A040063 (A018657 (n + 1)).toNat : ℚ) / 2

end

end A043161.P2851898390240553960

/-!
# A043162: Numbers k such that 1 and 5 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043162, there is no canonical definition to state claims against.
-/

/-! ## A043162.P4171158832020350967

`A241816(A043942(n+1)+1)`
-/

namespace A043162.P4171158832020350967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A043942 (n + 1) + 1).toNat

end

end A043162.P4171158832020350967

/-! ## A043162.P14134978511477874421

`A037474(A043140(n+1)%record[A184095(3*n+1)])`
-/

namespace A043162.P14134978511477874421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A043140 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A043162.P14134978511477874421

/-! ## A043162.P9104267749065590249

`A037474(A043140(n+1)^A043562(n))`
-/

namespace A043162.P9104267749065590249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043140 (n + 1) : ℚ) ^ (A043562 n : ℤ))).toNat

end

end A043162.P9104267749065590249

/-! ## A043162.P16585973209369169643

`A043164(n+1)-A040063(A000522(n))`
-/

namespace A043162.P16585973209369169643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043164 (n + 1) - A040063 (A000522 n).toNat

end

end A043162.P16585973209369169643

/-!
# A043163: Numbers k such that 1 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043163, there is no canonical definition to state claims against.
-/

/-! ## A043163.P10741449419499181626

`A043162(n+1)+A010689(A003462(n))`
-/

namespace A043163.P10741449419499181626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A010689 (A003462 n).toNat

end

end A043163.P10741449419499181626

/-! ## A043163.P15083588042342350295

`A043164(n+1)-A010689(A003462(n))`
-/

namespace A043163.P15083588042342350295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043164 (n + 1) - A010689 (A003462 n).toNat

end

end A043163.P15083588042342350295

/-! ## A043163.P9709949420556836433

`A043161(n+1)+A040063(A000522(n))`
-/

namespace A043163.P9709949420556836433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043161 (n + 1) + A040063 (A000522 n).toNat

end

end A043163.P9709949420556836433

/-! ## A043163.P4498392833111468093

`A043162(n+1)+A010689(A000975(n)²)`
-/

namespace A043163.P4498392833111468093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A010689 (A000975 n ^ 2).toNat

end

end A043163.P4498392833111468093

/-!
# A043164: Numbers k such that 1 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043164, there is no canonical definition to state claims against.
-/

/-! ## A043164.P2404405520015349327

`A043162(n+1)+A040063(A138464(3*n+5))`
-/

namespace A043164.P2404405520015349327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A040063 (A138464 (3 * n + 5)).toNat

end

end A043164.P2404405520015349327

/-! ## A043164.P597372940255268725

`A043162(n+1)+A040063(A000522(n))`
-/

namespace A043164.P597372940255268725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A040063 (A000522 n).toNat

end

end A043164.P597372940255268725

/-! ## A043164.P16542389352149851025

`A043162(n+1)+A040063(A005225(n+1))`
-/

namespace A043164.P16542389352149851025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A040063 (A005225 (n + 1)).toNat

end

end A043164.P16542389352149851025

/-! ## A043164.P5939260668041370159

`A043162(n+1)+A040063(A018657(n+1))`
-/

namespace A043164.P5939260668041370159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (n + 1) + A040063 (A018657 (n + 1)).toNat

end

end A043164.P5939260668041370159

/-!
# A043165: Numbers k such that 2 and 3 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043165, there is no canonical definition to state claims against.
-/

/-! ## A043165.P1750543760497799862

`A037474(A043142(n+1))%A004809(A120572(3*n+1))`
-/

namespace A043165.P1750543760497799862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043142 (n + 1)).toNat) (A004809 (A120572 (3 * n + 1)).toNat)

end

end A043165.P1750543760497799862

/-! ## A043165.P5538943102720537652

`A135481(A241197(n+4))+A037474(A043142(n+1))`
-/

namespace A043165.P5538943102720537652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A241197 (n + 4)).toNat + A037474 (A043142 (n + 1)).toNat

end

end A043165.P5538943102720537652

/-! ## A043165.P3672152745951440683

`A037474(A043142(n+1))%A352729(A184095(n+1))`
-/

namespace A043165.P3672152745951440683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043142 (n + 1)).toNat) (A352729 (A184095 (n + 1)).toNat)

end

end A043165.P3672152745951440683

/-! ## A043165.P6192330070185148961

`A185284(A185284(3*n+4))+A037474(A043142(n+1))`
-/

namespace A043165.P6192330070185148961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (3 * n + 4)).toNat + A037474 (A043142 (n + 1)).toNat

end

end A043165.P6192330070185148961

/-! ## A043165.P12799446732739485878

`A037474(A043142(n+1)^A309932(n))`
-/

namespace A043165.P12799446732739485878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043142 (n + 1) : ℚ) ^ (A309932 n : ℤ))).toNat

end

end A043165.P12799446732739485878

/-!
# A043166: Numbers k such that 2 and 4 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043166, there is no canonical definition to state claims against.
-/

/-! ## A043166.P4396692758316828269

`and(A043946(n+1)+1, A043946(n+1))`
-/

namespace A043166.P4396692758316828269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043946 (n + 1) + 1) (A043946 (n + 1))

end

end A043166.P4396692758316828269

/-! ## A043166.P3544341404348457942

`A043946(n+1)-A135481(A043946(n+1))`
-/

namespace A043166.P3544341404348457942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043946 (n + 1) - A135481 (A043946 (n + 1)).toNat

end

end A043166.P3544341404348457942

/-! ## A043166.P6420938223778443602

`A129760(A043946(n+1)+1)`
-/

namespace A043166.P6420938223778443602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043946 (n + 1) + 1).toNat

end

end A043166.P6420938223778443602

/-! ## A043166.P2951727371940055974

`and(-10, A037471(A043127(n+1))%A098683(3*n+1))`
-/

namespace A043166.P2951727371940055974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-10) (Int.tmod (A037471 (A043127 (n + 1)).toNat) (A098683 (3 * n + 1)))

end

end A043166.P2951727371940055974

/-!
# A043167: Numbers k such that 2 and 5 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043167, there is no canonical definition to state claims against.
-/

/-! ## A043167.P17169697336669760851

`A037474(A043144(n+1))%A004809(A120572(3*n+1))`
-/

namespace A043167.P17169697336669760851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043144 (n + 1)).toNat) (A004809 (A120572 (3 * n + 1)).toNat)

end

end A043167.P17169697336669760851

/-! ## A043167.P10610981190489017675

`A185284(A185284(3*n+4))+A037471(A043127(n+1))`
-/

namespace A043167.P10610981190489017675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 (3 * n + 4)).toNat + A037471 (A043127 (n + 1)).toNat

end

end A043167.P10610981190489017675

/-! ## A043167.P8323961909645426484

`A037471(A043127(n+1))%A023302(A043935(3*n+1))`
-/

namespace A043167.P8323961909645426484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037471 (A043127 (n + 1)).toNat) (A023302 (A043935 (3 * n + 1)).toNat)

end

end A043167.P8323961909645426484

/-! ## A043167.P7761463322425881963

`A037471(A043127(n+1)%A098683(2*n+1))`
-/

namespace A043167.P7761463322425881963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.tmod (A043127 (n + 1)) (A098683 (2 * n + 1))).toNat

end

end A043167.P7761463322425881963

/-! ## A043167.P4193623991490657672

`A135481(A200553(2*n+3))+A037471(A043127(n+1))`
-/

namespace A043167.P4193623991490657672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A200553 (2 * n + 3)).toNat + A037471 (A043127 (n + 1)).toNat

end

end A043167.P4193623991490657672

/-!
# A043168: Numbers k such that 2 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043168, there is no canonical definition to state claims against.
-/

/-! ## A043168.P11140914284408857736

`and(A043948(n+1)+1, A043948(n+1))`
-/

namespace A043168.P11140914284408857736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043948 (n + 1) + 1) (A043948 (n + 1))

end

end A043168.P11140914284408857736

/-! ## A043168.P12210748763050173699

`A129760(A043948(1+n)+1)`
-/

namespace A043168.P12210748763050173699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043948 (1 + n) + 1).toNat

end

end A043168.P12210748763050173699

/-! ## A043168.P15373392210002499360

`A241816(A043948(n+1))+1`
-/

namespace A043168.P15373392210002499360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A043948 (n + 1)).toNat + 1

end

end A043168.P15373392210002499360

/-! ## A043168.P7346579719969733635

`A037474(A043145(n+1)^A287656(2*(n+1)))`
-/

namespace A043168.P7346579719969733635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043145 (n + 1) : ℚ) ^ (A287656 (2 * (n + 1)) : ℤ))).toNat

end

end A043168.P7346579719969733635

/-! ## A043168.P6949306453932462927

`A037474(A043145(n+1)^A147454(n+1))`
-/

namespace A043168.P6949306453932462927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043145 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A043168.P6949306453932462927

/-!
# A043169: Numbers k such that 2 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043169, there is no canonical definition to state claims against.
-/

/-! ## A043169.P4879426978062703719

`A043168(n+1)+A010689(A187829(n+4))`
-/

namespace A043169.P4879426978062703719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043168 (n + 1) + A010689 (A187829 (n + 4)).toNat

end

end A043169.P4879426978062703719

/-! ## A043169.P2683097029880183764

`A043948(n+1)+A010689(A043102(n+1)²)`
-/

namespace A043169.P2683097029880183764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043948 (n + 1) + A010689 (A043102 (n + 1) ^ 2).toNat

end

end A043169.P2683097029880183764

/-! ## A043169.P9357335735989756913

`A182187(A043168(n+1)-1)+A010689(A043102(n+1)²)`
-/

namespace A043169.P9357335735989756913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182187 (A043168 (n + 1) - 1).toNat + A010689 (A043102 (n + 1) ^ 2).toNat

end

end A043169.P9357335735989756913

/-! ## A043169.P407084016994282151

`A043168(n+1)+A010689(A003462(n))`
-/

namespace A043169.P407084016994282151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043168 (n + 1) + A010689 (A003462 n).toNat

end

end A043169.P407084016994282151

/-! ## A043169.P7817152375412315881

`or(A010689(A000290(n)²), A043168(n+1))`
-/

namespace A043169.P7817152375412315881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010689 (A000290 n ^ 2).toNat) (A043168 (n + 1))

end

end A043169.P7817152375412315881

/-!
# A043170: Numbers k such that 3 and 4 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043170, there is no canonical definition to state claims against.
-/

/-! ## A043170.P16131586499255573774

`record[A028903(A043240(1+n))]`
-/

namespace A043170.P16131586499255573774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A043240 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043170.P16131586499255573774

/-! ## A043170.P15028738521032103047

`A028903(A043240(n+1))%A005897(A301066(3*(n+1)))`
-/

namespace A043170.P15028738521032103047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028903 (A043240 (n + 1)).toNat) (A005897 (A301066 (3 * (n + 1))).toNat)

end

end A043170.P15028738521032103047

/-! ## A043170.P7335418080875842531

`A028903(A043240(n+1))*A348037(A055773(n))`
-/

namespace A043170.P7335418080875842531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A043240 (n + 1)).toNat * A348037 (A055773 n).toNat

end

end A043170.P7335418080875842531

/-! ## A043170.P5536119452912647605

`A028903(A043240(n+1))*A057427(A000045(n+2))`
-/

namespace A043170.P5536119452912647605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A043240 (n + 1)).toNat * A057427 (A000045 (n + 2)).toNat

end

end A043170.P5536119452912647605

/-! ## A043170.P10205712151039742643

`A028903(A043240(n+1))%A038815(A096000(n))`
-/

namespace A043170.P10205712151039742643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028903 (A043240 (n + 1)).toNat) (A038815 (A096000 n).toNat)

end

end A043170.P10205712151039742643

/-!
# A043171: Numbers k such that 3 and 5 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043171, there is no canonical definition to state claims against.
-/

/-! ## A043171.P94595358353518231

`A037471(A043129(n+1))%A032551(A047842(n))`
-/

namespace A043171.P94595358353518231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037471 (A043129 (n + 1)).toNat) (A032551 (A047842 n).toNat)

end

end A043171.P94595358353518231

/-! ## A043171.P672884431286050090

`A241816(A043172(n+1))%A119630(A301066(n))`
-/

namespace A043171.P672884431286050090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241816 (A043172 (n + 1)).toNat) (A119630 (A301066 n).toNat)

end

end A043171.P672884431286050090

/-! ## A043171.P5811732169141482214

`A037474(A043147(n+1)^A118762(n+1))`
-/

namespace A043171.P5811732169141482214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043147 (n + 1) : ℚ) ^ (A118762 (n + 1) : ℤ))).toNat

end

end A043171.P5811732169141482214

/-! ## A043171.P9439734788195979002

`A037474(A118762(n+1)²*A043147(n+1))`
-/

namespace A043171.P9439734788195979002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A118762 (n + 1) ^ 2 * A043147 (n + 1)).toNat

end

end A043171.P9439734788195979002

/-!
# A043172: Numbers k such that 3 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043172, there is no canonical definition to state claims against.
-/

/-! ## A043172.P452335511864403403

`A043952(n+1)-A204293(A093637(n))`
-/

namespace A043172.P452335511864403403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043952 (n + 1) - A204293 (A093637 n).toNat

end

end A043172.P452335511864403403

/-! ## A043172.P4040529673142726061

`A043171(n+1)+A010689(A003462(n))`
-/

namespace A043172.P4040529673142726061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043171 (n + 1) + A010689 (A003462 n).toNat

end

end A043172.P4040529673142726061

/-! ## A043172.P5515653812087936156

`and(A043173(n+1)%A192104(3*n+1), A043952(n+1))`
-/

namespace A043172.P5515653812087936156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A043173 (n + 1)) (A192104 (3 * n + 1))) (A043952 (n + 1))

end

end A043172.P5515653812087936156

/-!
# A043173: Numbers k such that 3 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043173, there is no canonical definition to state claims against.
-/

/-! ## A043173.P14618843352508482240

`A043953(n+1)-A204293(A093637(n))`
-/

namespace A043173.P14618843352508482240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043953 (n + 1) - A204293 (A093637 n).toNat

end

end A043173.P14618843352508482240

/-! ## A043173.P4107918220201691262

`A109680(A043953(n+1))`
-/

namespace A043173.P4107918220201691262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A043953 (n + 1)).toNat

end

end A043173.P4107918220201691262

/-! ## A043173.P5372582820789183379

`A043953(A032551(n+2))`
-/

namespace A043173.P5372582820789183379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043953 (A032551 (n + 2)).toNat

end

end A043173.P5372582820789183379

/-!
# A043174: Numbers k such that 4 and 5 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043174, there is no canonical definition to state claims against.
-/

/-! ## A043174.P401449281062527636

`A037474(A043149(n+1)^A147454(n+1))`
-/

namespace A043174.P401449281062527636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043149 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A043174.P401449281062527636

/-! ## A043174.P17895679103576266490

`A037474(C(A043149(n+1), A147454(n+1)))`
-/

namespace A043174.P17895679103576266490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A043149 (n + 1)).toNat (A147454 (n + 1)).toNat)

end

end A043174.P17895679103576266490

/-! ## A043174.P6432579849550233171

`A037474(A147454(n+1)²*A043149(n+1))`
-/

namespace A043174.P6432579849550233171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A147454 (n + 1) ^ 2 * A043149 (n + 1)).toNat

end

end A043174.P6432579849550233171

/-! ## A043174.P7011781009165938301

`A037474(A043149(n+1))/A147454(A147454(n+1)²)`
-/

namespace A043174.P7011781009165938301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037474 (A043149 (n + 1)).toNat : ℚ) / (A147454 (A147454 (n + 1) ^ 2).toNat : ℚ)

end

end A043174.P7011781009165938301

/-! ## A043174.P6274805160826547786

`A037474(A043149(n+1)*A147454(n+1)*A147454(n+1))`
-/

namespace A043174.P6274805160826547786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043149 (n + 1) * A147454 (n + 1) * A147454 (n + 1)).toNat

end

end A043174.P6274805160826547786

/-!
# A043175: Numbers k such that 4 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043175, there is no canonical definition to state claims against.
-/

/-! ## A043175.P11144435894242665115

`and(A043955(n+1)+1, A043955(n+1))`
-/

namespace A043175.P11144435894242665115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043955 (n + 1) + 1) (A043955 (n + 1))

end

end A043175.P11144435894242665115

/-! ## A043175.P11615460906516985015

`A043955(A078898(2*(n+1)))-A135481(A043955(n+1))`
-/

namespace A043175.P11615460906516985015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043955 (A078898 (2 * (n + 1))).toNat - A135481 (A043955 (n + 1)).toNat

end

end A043175.P11615460906516985015

/-! ## A043175.P5876320376210326476

`A129760(A043955(n+1)+1)`
-/

namespace A043175.P5876320376210326476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A043955 (n + 1) + 1).toNat

end

end A043175.P5876320376210326476

/-! ## A043175.P2145288662204457856

`A037474(C(A043150(n+1), A334184(n+1)))`
-/

namespace A043175.P2145288662204457856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A043150 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A043175.P2145288662204457856

/-! ## A043175.P7208991222701502738

`A037474(A043150(n+1))%A352729(A184095(n+1))`
-/

namespace A043175.P7208991222701502738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043150 (n + 1)).toNat) (A352729 (A184095 (n + 1)).toNat)

end

end A043175.P7208991222701502738

/-!
# A043176: Numbers k such that 4 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043176, there is no canonical definition to state claims against.
-/

/-! ## A043176.P3603191506556360252

`A043956(A032555(n+1))`
-/

namespace A043176.P3603191506556360252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A032555 (n + 1)).toNat

end

end A043176.P3603191506556360252

/-! ## A043176.P1477913252207716748

`A043956(A032559(n+1))`
-/

namespace A043176.P1477913252207716748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A032559 (n + 1)).toNat

end

end A043176.P1477913252207716748

/-! ## A043176.P13852420940938759670

`A043956(A077739(n+1))`
-/

namespace A043176.P13852420940938759670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A077739 (n + 1)).toNat

end

end A043176.P13852420940938759670

/-! ## A043176.P2159758000613707218

`A043956(A078213(n+1))`
-/

namespace A043176.P2159758000613707218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A078213 (n + 1)).toNat

end

end A043176.P2159758000613707218

/-! ## A043176.P11455445610216462728

`A043956(A082217(n+1))`
-/

namespace A043176.P11455445610216462728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A082217 (n + 1)).toNat

end

end A043176.P11455445610216462728

/-!
# A043177: Numbers k such that 5 and 6 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043177, there is no canonical definition to state claims against.
-/

/-! ## A043177.P13217150327995308713

`A043957(A062399(n)+1)`
-/

namespace A043177.P13217150327995308713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (A062399 n + 1).toNat

end

end A043177.P13217150327995308713

/-! ## A043177.P16660596946619657826

`A043957(A351870(n)+1)`
-/

namespace A043177.P16660596946619657826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (A351870 n + 1).toNat

end

end A043177.P16660596946619657826

/-! ## A043177.P7595808104445421817

`A043957(A000005(3^n))`
-/

namespace A043177.P7595808104445421817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (A000005 (3 ^ n)).toNat

end

end A043177.P7595808104445421817

/-! ## A043177.P13326142559185444831

`A043957(A330369(∑[n+1]))`
-/

namespace A043177.P13326142559185444831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (A330369 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A043177.P13326142559185444831

/-! ## A043177.P7823812012345249288

`A043957(n+1)^A011855(n)!`
-/

namespace A043177.P7823812012345249288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (n + 1) ^ Nat.factorial (A011855 n).toNat

end

end A043177.P7823812012345249288

/-!
# A043178: Numbers k such that 5 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043178, there is no canonical definition to state claims against.
-/

/-! ## A043178.P5098392750509060476

`A043958(A000005(3^n))`
-/

namespace A043178.P5098392750509060476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (A000005 (3 ^ n)).toNat

end

end A043178.P5098392750509060476

/-! ## A043178.P1605499736846134941

`A043958(A330369(∑[n+1]))`
-/

namespace A043178.P1605499736846134941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (A330369 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A043178.P1605499736846134941

/-! ## A043178.P10765848022483461

`A043958(C(A069799(n+1), n))`
-/

namespace A043178.P10765848022483461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (Nat.choose (A069799 (n + 1)).toNat n)

end

end A043178.P10765848022483461

/-! ## A043178.P17229492750308141955

`A043958(n+1)^A011855(n)!`
-/

namespace A043178.P17229492750308141955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (n + 1) ^ Nat.factorial (A011855 n).toNat

end

end A043178.P17229492750308141955

/-! ## A043178.P14692090484130427106

`or(A043958(n+1), A280933(n²))`
-/

namespace A043178.P14692090484130427106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043958 (n + 1)) (A280933 (n ^ 2))

end

end A043178.P14692090484130427106

/-!
# A043179: Numbers k such that 6 and 7 occur juxtaposed in the base-8 representation of k but not of k-1.

The programs for A043179, there is no canonical definition to state claims against.
-/

/-! ## A043179.P512001998833463571

`A043959(n+1)-A072070(n)*A185284(3*n+1)`
-/

namespace A043179.P512001998833463571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1) - A072070 n * A185284 (3 * n + 1)

end

end A043179.P512001998833463571

/-!
# A043180: Numbers k such that 0 and 1 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043180, there is no canonical definition to state claims against.
-/

/-! ## A043180.P84442034914099684

`A037475(A043131(n+1)%A188483(n+1))`
-/

namespace A043180.P84442034914099684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A043131 (n + 1)) (A188483 (n + 1))).toNat

end

end A043180.P84442034914099684

/-! ## A043180.P1053273163213002731

`A037477(A043152(n+1)%A188483(n+1))`
-/

namespace A043180.P1053273163213002731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043152 (n + 1)) (A188483 (n + 1))).toNat

end

end A043180.P1053273163213002731

/-! ## A043180.P6373089397382647259

`A037468(A043106(n+1)^A136400(n+2))`
-/

namespace A043180.P6373089397382647259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (SequenceMachineLib.roundAway ((A043106 (n + 1) : ℚ) ^ (A136400 (n + 2) : ℤ))).toNat

end

end A043180.P6373089397382647259

/-! ## A043180.P16869100208765828538

`A037475(A043131(n+1)^A136400(n+2))`
-/

namespace A043180.P16869100208765828538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043131 (n + 1) : ℚ) ^ (A136400 (n + 2) : ℤ))).toNat

end

end A043180.P16869100208765828538

/-!
# A043181: Numbers k such that 0 and 2 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043181, there is no canonical definition to state claims against.
-/

/-! ## A043181.P4864138444246496933

`record[A278529(A043183(1+n))]`
-/

namespace A043181.P4864138444246496933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043183 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P4864138444246496933

/-! ## A043181.P4860621243004032298

`record[A097140(A043183(1+n))]`
-/

namespace A043181.P4860621243004032298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A043183 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P4860621243004032298

/-! ## A043181.P1487310191041920543

`record[A001057(A043183(1+n)-1)]`
-/

namespace A043181.P1487310191041920543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043183 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P1487310191041920543

/-! ## A043181.P1815674103427240081

`record[A003602(A043183(n+1)-1)]`
-/

namespace A043181.P1815674103427240081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043183 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P1815674103427240081

/-! ## A043181.P17954092371732963122

`record[A152271(A043183(n+1)-1)]`
-/

namespace A043181.P17954092371732963122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043183 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P17954092371732963122

/-! ## A043181.P7166410242030155154

`record[A027656(A043183(n+1)-2)]`
-/

namespace A043181.P7166410242030155154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043183 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P7166410242030155154

/-! ## A043181.P5932279225250023589

`record[A142150(A043183(n+1)%A043189(n+3))]`
-/

namespace A043181.P5932279225250023589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (Int.tmod (A043183 (n + 1)) (A043189 (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P5932279225250023589

/-! ## A043181.P14794675380438862106

`record[A174571(A043187(n+1))]`
-/

namespace A043181.P14794675380438862106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P14794675380438862106

/-! ## A043181.P13449589087825923087

`record[A174571(A043183(n+1)+A043183(n+1))]`
-/

namespace A043181.P13449589087825923087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043183 (n + 1) + A043183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043181.P13449589087825923087

/-!
# A043182: Numbers k such that 0 and 3 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043182, there is no canonical definition to state claims against.
-/

/-! ## A043182.P6683096519322743145

`record[A000217(A043185(n+1))%A043185(n+1)]`
-/

namespace A043182.P6683096519322743145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A043185 (n + 1)).toNat) (A043185 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P6683096519322743145

/-! ## A043182.P6828793423598632717

`record[A278529(A043185(1+n))]`
-/

namespace A043182.P6828793423598632717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043185 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P6828793423598632717

/-! ## A043182.P4651111464712637744

`record[A260739(A043185(1+n))]`
-/

namespace A043182.P4651111464712637744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043185 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P4651111464712637744

/-! ## A043182.P5124805499565547297

`record[A025480(A043185(n+1))]`
-/

namespace A043182.P5124805499565547297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P5124805499565547297

/-! ## A043182.P6416684614891954964

`record[A001057(A043185(n+1)-1)]`
-/

namespace A043182.P6416684614891954964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043185 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P6416684614891954964

/-! ## A043182.P14063392179859071933

`record[A152271(A043185(n+1)-1)]`
-/

namespace A043182.P14063392179859071933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043185 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P14063392179859071933

/-! ## A043182.P8354545633356634857

`record[A027656(A043185(n+1)-2)]`
-/

namespace A043182.P8354545633356634857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043185 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P8354545633356634857

/-! ## A043182.P17076383122448922236

`record[A078898(A043185(n+1))%A043170(n+1)]`
-/

namespace A043182.P17076383122448922236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A043185 (n + 1)).toNat) (A043170 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P17076383122448922236

/-! ## A043182.P17530779960461366890

`record[A246277(A043185(n+1))%A043175(n+1)]`
-/

namespace A043182.P17530779960461366890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246277 (A043185 (n + 1)).toNat) (A043175 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P17530779960461366890

/-! ## A043182.P11777440142553389142

`record[A078898(A043185(n+1)%A043196(n+3))]`
-/

namespace A043182.P11777440142553389142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A043185 (n + 1)) (A043196 (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P11777440142553389142

/-! ## A043182.P10782153709636651789

`record[A174571(A043185(n+1)+A043185(n+1))]`
-/

namespace A043182.P10782153709636651789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043185 (n + 1) + A043185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043182.P10782153709636651789

/-!
# A043183: Numbers k such that 0 and 4 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043183, there is no canonical definition to state claims against.
-/

/-! ## A043183.P16996248666094929662

`record[A000217(A043187(n+1))%A043187(n+1)]`
-/

namespace A043183.P16996248666094929662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A043187 (n + 1)).toNat) (A043187 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P16996248666094929662

/-! ## A043183.P17878112571148608461

`record[A278529(A043187(1+n))]`
-/

namespace A043183.P17878112571148608461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043187 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P17878112571148608461

/-! ## A043183.P8024090751827041606

`record[A260739(A043187(n+1))]`
-/

namespace A043183.P8024090751827041606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P8024090751827041606

/-! ## A043183.P2143049967541019228

`record[A078898(A043187(1+n))]`
-/

namespace A043183.P2143049967541019228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043187 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P2143049967541019228

/-! ## A043183.P5067641094324082886

`record[A001057(A043187(n+1)-1)]`
-/

namespace A043183.P5067641094324082886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043187 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P5067641094324082886

/-! ## A043183.P3061370904081535315

`record[A003602(A043187(n+1)-1)]`
-/

namespace A043183.P3061370904081535315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043187 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P3061370904081535315

/-! ## A043183.P17510659058508270812

`record[A152271(A043187(n+1)-1)]`
-/

namespace A043183.P17510659058508270812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043187 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P17510659058508270812

/-! ## A043183.P15550462374080181046

`record[A131732(A043187(n+1)-2)]`
-/

namespace A043183.P15550462374080181046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A043187 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P15550462374080181046

/-! ## A043183.P10270705292887007855

`record[A174571(2*A043187(n+1))]`
-/

namespace A043183.P10270705292887007855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A043187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043183.P10270705292887007855

/-!
# A043184: Numbers k such that 0 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043184, there is no canonical definition to state claims against.
-/

/-! ## A043184.P5355178039029142893

`A037477(A043156(n+1)^A215561(n))`
-/

namespace A043184.P5355178039029142893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043156 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A043184.P5355178039029142893

/-! ## A043184.P11579823944290292748

`A039361(n+1)-A014083(A056236(n))`
-/

namespace A043184.P11579823944290292748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039361 (n + 1) - A014083 (A056236 n).toNat

end

end A043184.P11579823944290292748

/-! ## A043184.P8946794386737637025

`A039361(n+1)-A036633(A087051(n))`
-/

namespace A043184.P8946794386737637025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039361 (n + 1) - A036633 (A087051 n).toNat

end

end A043184.P8946794386737637025

/-! ## A043184.P12469881001250030015

`A037472(A039297(n+1))-A185284(A029447(n+1))`
-/

namespace A043184.P12469881001250030015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A039297 (n + 1)).toNat - A185284 (A029447 (n + 1)).toNat

end

end A043184.P12469881001250030015

/-!
# A043185: Numbers k such that 0 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043185, there is no canonical definition to state claims against.
-/

/-! ## A043185.P2871556743080368097

`record[A028904(A043221(n+1))]%A198298(n+1)`
-/

namespace A043185.P2871556743080368097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A043221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A198298 (n + 1))

end

end A043185.P2871556743080368097

/-! ## A043185.P15925253054522572914

`record[A028904(A043221(n+1)%A198298(n+1))]`
-/

namespace A043185.P15925253054522572914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Int.tmod (A043221 (n + 1)) (A198298 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043185.P15925253054522572914

/-! ## A043185.P1087756926333581823

`A165878(A165878(n+2))+A028904(A043221(n+1))`
-/

namespace A043185.P1087756926333581823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 (A165878 (n + 2)).toNat + A028904 (A043221 (n + 1)).toNat

end

end A043185.P1087756926333581823

/-! ## A043185.P17071281905459690726

`A028904(A043221(n+1))%A004396(A005935(n+5))`
-/

namespace A043185.P17071281905459690726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A043221 (n + 1)).toNat) (A004396 (A005935 (n + 5)).toNat)

end

end A043185.P17071281905459690726

/-! ## A043185.P4552891085068936044

`A028904(A043221(n+1))%A209833(A026300(n))`
-/

namespace A043185.P4552891085068936044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028904 (A043221 (n + 1)).toNat) (A209833 (A026300 n).toNat)

end

end A043185.P4552891085068936044

/-!
# A043186: Numbers k such that 0 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043186, there is no canonical definition to state claims against.
-/

/-! ## A043186.P2636713409607506804

`A039363(n+1)-A102683(A097120(n))`
-/

namespace A043186.P2636713409607506804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039363 (n + 1) - A102683 (A097120 n).toNat

end

end A043186.P2636713409607506804

/-!
# A043187: Numbers k such that 0 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043187, there is no canonical definition to state claims against.
-/

/-! ## A043187.P12916179813964268504

`A039364(n+1)-A185284(A022819(n))`
-/

namespace A043187.P12916179813964268504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039364 (n + 1) - A185284 (A022819 n).toNat

end

end A043187.P12916179813964268504

/-! ## A043187.P7740809881076708472

`A039364(n+1)-A185284(A060637(n))`
-/

namespace A043187.P7740809881076708472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039364 (n + 1) - A185284 (A060637 n).toNat

end

end A043187.P7740809881076708472

/-! ## A043187.P236583993185554775

`A039364(n+1)-A025469(A293025(n))`
-/

namespace A043187.P236583993185554775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039364 (n + 1) - A025469 (A293025 n).toNat

end

end A043187.P236583993185554775

/-! ## A043187.P13999666570159991349

`A039364(n+1)-A072401(A089098(n+1))`
-/

namespace A043187.P13999666570159991349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039364 (n + 1) - A072401 (A089098 (n + 1)).toNat

end

end A043187.P13999666570159991349

/-!
# A043188: Numbers k such that 1 and 2 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043188, there is no canonical definition to state claims against.
-/

/-! ## A043188.P4938420552575406481

`record[A260739(A043196(1+n))]`
-/

namespace A043188.P4938420552575406481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043196 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P4938420552575406481

/-! ## A043188.P1208274145366599958

`record[A025480(A043196(1+n))]`
-/

namespace A043188.P1208274145366599958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043196 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P1208274145366599958

/-! ## A043188.P5220162049310923153

`record[A078898(A043196(n+1))]`
-/

namespace A043188.P5220162049310923153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P5220162049310923153

/-! ## A043188.P211018401392479388

`record[A001057(A043196(n+1)-1)]`
-/

namespace A043188.P211018401392479388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043196 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P211018401392479388

/-! ## A043188.P9143062590574177320

`record[A152271(A043196(n+1)-1)]`
-/

namespace A043188.P9143062590574177320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043196 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P9143062590574177320

/-! ## A043188.P10643087474638755312

`record[A027656(A043196(1+n)-2)]`
-/

namespace A043188.P10643087474638755312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A043196 (1 + n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P10643087474638755312

/-! ## A043188.P12152091263052548937

`record[A032742(A043196(floor(n/2)+1))]`
-/

namespace A043188.P12152091263052548937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A043196 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P12152091263052548937

/-! ## A043188.P12974314095384184416

`record[A032742(A043196(n+1))%A043165(n+1)]`
-/

namespace A043188.P12974314095384184416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A043196 (n + 1)).toNat) (A043165 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P12974314095384184416

/-! ## A043188.P6167019673228517061

`record[A032742(A043196(n+1))]%A043183(n+4)`
-/

namespace A043188.P6167019673228517061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A043196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A043183 (n + 4))

end

end A043188.P6167019673228517061

/-! ## A043188.P16878828346598382775

`record[A174571(A043209(n+1))]`
-/

namespace A043188.P16878828346598382775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043188.P16878828346598382775

/-!
# A043189: Numbers k such that 1 and 3 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043189, there is no canonical definition to state claims against.
-/

/-! ## A043189.P9871377623139716973

`record[A278529(A043198(1+n))]`
-/

namespace A043189.P9871377623139716973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043198 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P9871377623139716973

/-! ## A043189.P6971959059627508680

`record[A260739(A043198(1+n))]`
-/

namespace A043189.P6971959059627508680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043198 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P6971959059627508680

/-! ## A043189.P7702270038826783280

`record[A078898(A043198(1+n))]`
-/

namespace A043189.P7702270038826783280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043198 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P7702270038826783280

/-! ## A043189.P18409017320886056157

`record[A001057(A043198(n+1)-1)]`
-/

namespace A043189.P18409017320886056157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043198 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P18409017320886056157

/-! ## A043189.P16641109452017628059

`record[A003602(A043198(n+1)-1)]`
-/

namespace A043189.P16641109452017628059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043198 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P16641109452017628059

/-! ## A043189.P5105136910170193184

`record[A152271(A043198(n+1)-1)]`
-/

namespace A043189.P5105136910170193184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043198 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P5105136910170193184

/-! ## A043189.P14243817836641035830

`record[A246277(A043198(A008619(n)))]`
-/

namespace A043189.P14243817836641035830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A043198 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043189.P14243817836641035830

/-! ## A043189.P3463139227576019930

`A061395(record[A073846(A043198(n+1))])`
-/

namespace A043189.P3463139227576019930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A043198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043189.P3463139227576019930

/-! ## A043189.P4811556481968484604

`A061395(p?[A073846(A043198(n+1))])`
-/

namespace A043189.P4811556481968484604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A043198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043189.P4811556481968484604

/-!
# A043190: Numbers k such that 1 and 4 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043190, there is no canonical definition to state claims against.
-/

/-! ## A043190.P4605896965664445535

`record[A278529(A043200(1+n))]`
-/

namespace A043190.P4605896965664445535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043200 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P4605896965664445535

/-! ## A043190.P13392200737656839257

`record[A260739(A043200(1+n))]`
-/

namespace A043190.P13392200737656839257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043200 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P13392200737656839257

/-! ## A043190.P16219331355702962001

`record[A025480(A043200(1+n))]`
-/

namespace A043190.P16219331355702962001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043200 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P16219331355702962001

/-! ## A043190.P8137342499784589317

`record[A078898(A043200(n+1))]`
-/

namespace A043190.P8137342499784589317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P8137342499784589317

/-! ## A043190.P6157391972634199043

`record[A001057(A043200(n+1)-1)]`
-/

namespace A043190.P6157391972634199043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043200 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P6157391972634199043

/-! ## A043190.P8577818346840173832

`record[A152271(A043200(n+1)-1)]`
-/

namespace A043190.P8577818346840173832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043200 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P8577818346840173832

/-! ## A043190.P18380344400435653155

`A004525(∩[2*n, A043200(n+1)])`
-/

namespace A043190.P18380344400435653155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043200 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043190.P18380344400435653155

/-! ## A043190.P14810047814230398343

`record[A032742(A043200(n+1)%A005935(n+1))]`
-/

namespace A043190.P14810047814230398343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A043200 (n + 1)) (A005935 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P14810047814230398343

/-! ## A043190.P9930294807017623226

`record[A032742(A043200(n+1))%A043183(n+1)]`
-/

namespace A043190.P9930294807017623226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A043200 (n + 1)).toNat) (A043183 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P9930294807017623226

/-! ## A043190.P3681815072732172583

`record[A174571(A043200(n+1)+A043200(n+1))]`
-/

namespace A043190.P3681815072732172583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043200 (n + 1) + A043200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043190.P3681815072732172583

/-!
# A043191: Numbers k such that 1 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043191, there is no canonical definition to state claims against.
-/

/-! ## A043191.P13654265979148476496

`A037477(or(A043162(n+1), A151839(n)))`
-/

namespace A043191.P13654265979148476496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lor (A043162 (n + 1)) (A151839 n)).toNat

end

end A043191.P13654265979148476496

/-! ## A043191.P5277351508867602402

`A037477(A043162(n+1)+n*A151839(n))`
-/

namespace A043191.P5277351508867602402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043162 (n + 1) + (n : ℤ) * A151839 n).toNat

end

end A043191.P5277351508867602402

/-! ## A043191.P688902905550699096

`A037477(A151839(n)+A043162(n+1))-A151839(n)`
-/

namespace A043191.P688902905550699096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A151839 n + A043162 (n + 1)).toNat - A151839 n

end

end A043191.P688902905550699096

/-! ## A043191.P5768851226458330849

`A037477(record[A043162(∑{e}[n+1, #]+1)])`
-/

namespace A043191.P5768851226458330849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043162 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A043191.P5768851226458330849

/-!
# A043192: Numbers k such that 1 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043192, there is no canonical definition to state claims against.
-/

/-! ## A043192.P7569163483458963546

`A037477(A043163(n+1)%A075978(n))`
-/

namespace A043192.P7569163483458963546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043163 (n + 1)) (A075978 n)).toNat

end

end A043192.P7569163483458963546

/-! ## A043192.P17850034320738303921

`A043193(n+1)-A055491(A000244(n))`
-/

namespace A043192.P17850034320738303921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043193 (n + 1) - A055491 (A000244 n).toNat

end

end A043192.P17850034320738303921

/-! ## A043192.P15186180710133621062

`A037477(Δ[A024662(n)]*A043163(n+1))`
-/

namespace A043192.P15186180710133621062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((f1 (n + 1) - f1 n) * A043163 (n + 1)).toNat

end

end A043192.P15186180710133621062

/-! ## A043192.P104050114733700328

`A037477(A043163(n+1)^A008618(2*n))`
-/

namespace A043192.P104050114733700328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043163 (n + 1) : ℚ) ^ (A008618 (2 * n) : ℤ))).toNat

end

end A043192.P104050114733700328

/-!
# A043193: Numbers k such that 1 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043193, there is no canonical definition to state claims against.
-/

/-! ## A043193.P13663514697948464183

`A037477(A043164(n+1)^∑[A055641(n)])`
-/

namespace A043193.P13663514697948464183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043164 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A043193.P13663514697948464183

/-! ## A043193.P5400438207120420998

`A043973(n+1)-A069531(A099755(2*n+3)+1)`
-/

namespace A043193.P5400438207120420998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043973 (n + 1) - A069531 (A099755 (2 * n + 3) + 1).toNat

end

end A043193.P5400438207120420998

/-! ## A043193.P1823848662172005027

`A043973(n+1)-A259567(A258881(n))`
-/

namespace A043193.P1823848662172005027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043973 (n + 1) - A259567 (A258881 n).toNat

end

end A043193.P1823848662172005027

/-! ## A043193.P6639211423339677220

`A037477(Δ[A024662(n)]*A043164(n+1))`
-/

namespace A043193.P6639211423339677220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((f1 (n + 1) - f1 n) * A043164 (n + 1)).toNat

end

end A043193.P6639211423339677220

/-!
# A043194: Numbers k such that 1 and 8 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043194, there is no canonical definition to state claims against.
-/

/-! ## A043194.P4240058543773877121

`A055491(A000244(n))+A043193(n+1)`
-/

namespace A043194.P4240058543773877121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A000244 n).toNat + A043193 (n + 1)

end

end A043194.P4240058543773877121

/-! ## A043194.P17318825111129309886

`A043974(n+1)-A259567(A258881(n))`
-/

namespace A043194.P17318825111129309886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043974 (n + 1) - A259567 (A258881 n).toNat

end

end A043194.P17318825111129309886

/-! ## A043194.P9666844663974597414

`A055491(A008776(n))+A043190(n+1)`
-/

namespace A043194.P9666844663974597414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A008776 n).toNat + A043190 (n + 1)

end

end A043194.P9666844663974597414

/-!
# A043195: Numbers k such that 2 and 3 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043195, there is no canonical definition to state claims against.
-/

/-! ## A043195.P2209821175175977390

`record[A000217(A043207(n+1))%A043207(n+1)]`
-/

namespace A043195.P2209821175175977390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A043207 (n + 1)).toNat) (A043207 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P2209821175175977390

/-! ## A043195.P15306841400777636015

`record[A278529(A043207(n+1))]`
-/

namespace A043195.P15306841400777636015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P15306841400777636015

/-! ## A043195.P16891060279622603805

`record[A260739(A043207(1+n))]`
-/

namespace A043195.P16891060279622603805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043207 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P16891060279622603805

/-! ## A043195.P9856664803363277545

`record[A025480(A043207(n+1))]`
-/

namespace A043195.P9856664803363277545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A043207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P9856664803363277545

/-! ## A043195.P2930558208344299499

`record[A001057(A043207(n+1)-1)]`
-/

namespace A043195.P2930558208344299499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043207 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P2930558208344299499

/-! ## A043195.P11413536957209006961

`record[A152271(A043207(n+1)-1)]`
-/

namespace A043195.P11413536957209006961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043207 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P11413536957209006961

/-! ## A043195.P9728249155934317080

`record[A078898(A043207(abs(1-n)+2))]`
-/

namespace A043195.P9728249155934317080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043207 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P9728249155934317080

/-! ## A043195.P16200578202186461234

`record[A142150(A043207(n+1)%A043221(n+1))]`
-/

namespace A043195.P16200578202186461234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (Int.tmod (A043207 (n + 1)) (A043221 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043195.P16200578202186461234

/-!
# A043196: Numbers k such that 2 and 4 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043196, there is no canonical definition to state claims against.
-/

/-! ## A043196.P14586976688742845535

`record[A000217(A043209(n+1))%A043209(n+1)]`
-/

namespace A043196.P14586976688742845535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A043209 (n + 1)).toNat) (A043209 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P14586976688742845535

/-! ## A043196.P13989225971201383930

`record[A278529(A043209(1+n))]`
-/

namespace A043196.P13989225971201383930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A043209 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P13989225971201383930

/-! ## A043196.P8596068781324406976

`record[A260739(A043209(1+n))]`
-/

namespace A043196.P8596068781324406976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A043209 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P8596068781324406976

/-! ## A043196.P12551477496670501603

`record[A032742(A043209(n+1))]`
-/

namespace A043196.P12551477496670501603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A043209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P12551477496670501603

/-! ## A043196.P12600592527034628968

`record[A001057(A043209(n+1)-1)]`
-/

namespace A043196.P12600592527034628968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A043209 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P12600592527034628968

/-! ## A043196.P8581128998205083111

`record[A152271(A043209(n+1)-1)]`
-/

namespace A043196.P8581128998205083111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A043209 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P8581128998205083111

/-! ## A043196.P12007895516488202097

`record[A174571(2*A043209(n+1))]`
-/

namespace A043196.P12007895516488202097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A043209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P12007895516488202097

/-! ## A043196.P11110104487619481749

`record[A174571(A043209(n+1)+A043209(n+1))]`
-/

namespace A043196.P11110104487619481749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A043209 (n + 1) + A043209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043196.P11110104487619481749

/-!
# A043197: Numbers k such that 2 and 5 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043197, there is no canonical definition to state claims against.
-/

/-! ## A043197.P16713116430202461440

`A037477(A043167(n+1)^A239526(n))`
-/

namespace A043197.P16713116430202461440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043167 (n + 1) : ℚ) ^ (A239526 n : ℤ))).toNat

end

end A043197.P16713116430202461440

/-! ## A043197.P1644784882025500856

`A037477(C(A043167(n+1), A239526(n)))`
-/

namespace A043197.P1644784882025500856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043167 (n + 1)).toNat (A239526 n).toNat)

end

end A043197.P1644784882025500856

/-! ## A043197.P13749416126743582066

`A037477(A043167(n+1)%A098685(2*n+5))`
-/

namespace A043197.P13749416126743582066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043167 (n + 1)) (A098685 (2 * n + 5))).toNat

end

end A043197.P13749416126743582066

/-! ## A043197.P12679263904372187045

`A037472(A043127(n+1)^A274843(n))`
-/

namespace A043197.P12679263904372187045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A043127 (n + 1) : ℚ) ^ (A274843 n : ℤ))).toNat

end

end A043197.P12679263904372187045

/-! ## A043197.P14270832743953456987

`A037475(A043144(n+1)^A274843(n))`
-/

namespace A043197.P14270832743953456987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043144 (n + 1) : ℚ) ^ (A274843 n : ℤ))).toNat

end

end A043197.P14270832743953456987

/-!
# A043198: Numbers k such that 2 and 6 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043198, there is no canonical definition to state claims against.
-/

/-! ## A043198.P17080232927456822047

`A037477(A043168(n+1)^A287656(n))`
-/

namespace A043198.P17080232927456822047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043168 (n + 1) : ℚ) ^ (A287656 n : ℤ))).toNat

end

end A043198.P17080232927456822047

/-! ## A043198.P2283706862416079227

`A037477(C(A043168(n+1), A287656(n)))`
-/

namespace A043198.P2283706862416079227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043168 (n + 1)).toNat (A287656 n).toNat)

end

end A043198.P2283706862416079227

/-! ## A043198.P1835713588291539758

`A037475(A043145(n+1)^A287656(2*(n+1)))`
-/

namespace A043198.P1835713588291539758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043145 (n + 1) : ℚ) ^ (A287656 (2 * (n + 1)) : ℤ))).toNat

end

end A043198.P1835713588291539758

/-! ## A043198.P5935234416829039599

`A037477(A043168(n+1)%A137390(n+2))`
-/

namespace A043198.P5935234416829039599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043168 (n + 1)) (A137390 (n + 2))).toNat

end

end A043198.P5935234416829039599

/-!
# A043199: Numbers k such that 2 and 7 occur juxtaposed in the base-9 representation of k but not of k-1.

The programs for A043199, there is no canonical definition to state claims against.
-/

/-! ## A043199.P18111831581895971345

`A037477(A043169(n+1)^A031226(3*n+1))`
-/

namespace A043199.P18111831581895971345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043169 (n + 1) : ℚ) ^ (A031226 (3 * n + 1) : ℤ))).toNat

end

end A043199.P18111831581895971345

/-! ## A043199.P10548020809023914390

`A126257(A044301(n+1))`
-/

namespace A043199.P10548020809023914390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A044301 (n + 1)).toNat

end

end A043199.P10548020809023914390

/-! ## A043199.P9142989026127797686

`and(A043979(n+1), A126257(A044682(n+1)))`
-/

namespace A043199.P9142989026127797686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043979 (n + 1)) (A126257 (A044682 (n + 1)).toNat)

end

end A043199.P9142989026127797686

/-! ## A043199.P13366699056731354892

`A037477(A043169(n+1)^A031280(3*n+4))`
-/

namespace A043199.P13366699056731354892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043169 (n + 1) : ℚ) ^ (A031280 (3 * n + 4) : ℤ))).toNat

end

end A043199.P13366699056731354892

