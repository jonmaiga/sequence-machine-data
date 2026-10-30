import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C002
import Seq.B003.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B009.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A031000: Position of n-th 1 in A030998.

The programs for A031000, there is no canonical definition to state claims against.
-/

/-! ## A031000.P14932453145199818048

`eq[5, A031016(n+1)]+1`
-/

namespace A031000.P14932453145199818048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031000.P14932453145199818048

/-! ## A031000.P570895848047491769

`eq[A040000(n)²-A031016(A028310(n)), -1]`
-/

namespace A031000.P570895848047491769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 - A031016 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031000.P570895848047491769

/-! ## A031000.P6950938200847389180

`eq[1, A030998(n)]`
-/

namespace A031000.P6950938200847389180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031000.P6950938200847389180

/-! ## A031000.P12408182651525198923

`lt[(A030998(n)^(A253641(n+1)+1)-1)^8, 1]`
-/

namespace A031000.P12408182651525198923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A030998 n : ℚ) ^ (A253641 (n + 1) + 1 : ℤ) - 1) ^ 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A031000.P12408182651525198923

/-! ## A031000.P12313158461030145860

`eq[5-A000007(n), A031016(A028310(n))]`
-/

namespace A031000.P12313158461030145860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031000.P12313158461030145860

/-! ## A031000.P3493133561853092880

`eq[1, 5-A057428(n)-A031016(A028310(n))]`
-/

namespace A031000.P3493133561853092880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A057428 n - A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031000.P3493133561853092880

/-!
# A031001: Position of n-th 2 in A030998.

The programs for A031001, there is no canonical definition to state claims against.
-/

/-! ## A031001.P191966754198305550

`eq[2, A030998(n)]`
-/

namespace A031001.P191966754198305550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031001.P191966754198305550

/-! ## A031001.P12755043829084900045

`eq[4, A031016(n+1)]+1`
-/

namespace A031001.P12755043829084900045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031001.P12755043829084900045

/-! ## A031001.P6689861877742651261

`eq[4, A031016(A028310(n))]`
-/

namespace A031001.P6689861877742651261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031001.P6689861877742651261

/-! ## A031001.P807279177020649517

`A020725(eq[4, A031016(n+1)])`
-/

namespace A031001.P807279177020649517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031001.P807279177020649517

/-! ## A031001.P4581263408798631877

`eq[4, A031016(A123108(2*n))]`
-/

namespace A031001.P4581263408798631877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031001.P4581263408798631877

/-!
# A031002: Position of n-th 3 in A030998.

The programs for A031002, there is no canonical definition to state claims against.
-/

/-! ## A031002.P13367802493412371206

`eq[3, A030998(n)]`
-/

namespace A031002.P13367802493412371206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031002.P13367802493412371206

/-! ## A031002.P1018372946058871307

`eq[3, A031016(n+1)]+1`
-/

namespace A031002.P1018372946058871307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031002.P1018372946058871307

/-! ## A031002.P6724694936186873371

`eq[3, A031016(A028310(n))]`
-/

namespace A031002.P6724694936186873371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031002.P6724694936186873371

/-! ## A031002.P11625594734619504557

`A020725(eq[3, A031016(n+1)])`
-/

namespace A031002.P11625594734619504557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031002.P11625594734619504557

/-! ## A031002.P10978618668656351911

`A065475(eq[3, A031016(n+1)])`
-/

namespace A031002.P10978618668656351911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031002.P10978618668656351911

/-!
# A031003: Position of n-th 4 in A030998.

The programs for A031003, there is no canonical definition to state claims against.
-/

/-! ## A031003.P2605731158595374610

`eq[4, A030998(n)]`
-/

namespace A031003.P2605731158595374610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031003.P2605731158595374610

/-! ## A031003.P15738537575708960896

`eq[2, A031016(n+1)]+1`
-/

namespace A031003.P15738537575708960896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031003.P15738537575708960896

/-! ## A031003.P16400329622934197595

`eq[2, A031016(A028310(n))]`
-/

namespace A031003.P16400329622934197595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031003.P16400329622934197595

/-! ## A031003.P6340314899625287215

`A020725(eq[2, A031016(n+1)])`
-/

namespace A031003.P6340314899625287215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031003.P6340314899625287215

/-! ## A031003.P5141099023986294631

`A065475(eq[2, A031016(n+1)])`
-/

namespace A031003.P5141099023986294631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031003.P5141099023986294631

/-! ## A031003.P445028326830968752

`eq[2, A031016(A000007(n)+n)]`
-/

namespace A031003.P445028326830968752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031003.P445028326830968752

/-! ## A031003.P239960993619751130

`eq[2, A031016(A123108(2*n))]`
-/

namespace A031003.P239960993619751130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031003.P239960993619751130

/-!
# A031004: Position of n-th 5 in A030998.

The programs for A031004, there is no canonical definition to state claims against.
-/

/-! ## A031004.P4269193177278664593

`eq[5, A030998(n)]`
-/

namespace A031004.P4269193177278664593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031004.P4269193177278664593

/-! ## A031004.P16879824822824266444

`eq[1, A031016(n+1)]+1`
-/

namespace A031004.P16879824822824266444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031004.P16879824822824266444

/-! ## A031004.P2382421635908083450

`eq[1, A031016(A028310(n))]`
-/

namespace A031004.P2382421635908083450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031004.P2382421635908083450

/-! ## A031004.P10382048111576597048

`A020725(eq[1, A031016(n+1)])`
-/

namespace A031004.P10382048111576597048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031004.P10382048111576597048

/-! ## A031004.P10792818899445358087

`A065475(eq[1, A031016(n+1)])`
-/

namespace A031004.P10792818899445358087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031004.P10792818899445358087

/-! ## A031004.P16304349845280904172

`eq[1, A031016(A000007(n)+n)]`
-/

namespace A031004.P16304349845280904172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031004.P16304349845280904172

/-! ## A031004.P513814797041060100

`eq[1, A031016(A123108(2*n))]`
-/

namespace A031004.P513814797041060100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031004.P513814797041060100

/-!
# A031005: Position of n-th 6 in A030998.

The programs for A031005, there is no canonical definition to state claims against.
-/

/-! ## A031005.P15005930781179974658

`lt[5, A030998(n)]`
-/

namespace A031005.P15005930781179974658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031005.P15005930781179974658

/-! ## A031005.P2779023836984280732

`eq[0, A031016(n+1)]+1`
-/

namespace A031005.P2779023836984280732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031005.P2779023836984280732

/-! ## A031005.P13040927625737280868

`eq[0, A031016(A028310(n))]`
-/

namespace A031005.P13040927625737280868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031005.P13040927625737280868

/-! ## A031005.P6317327326800444142

`eq[A030998(n), A040006(n)]`
-/

namespace A031005.P6317327326800444142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P6317327326800444142

/-! ## A031005.P18212833074078906778

`eq[A030998(n), A063808(n)]`
-/

namespace A031005.P18212833074078906778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P18212833074078906778

/-! ## A031005.P16593340721143827596

`eq[A030998(n), A113975(n)]`
-/

namespace A031005.P16593340721143827596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P16593340721143827596

/-! ## A031005.P10447557208218845443

`eq[A030998(n), A329502(n)]`
-/

namespace A031005.P10447557208218845443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P10447557208218845443

/-! ## A031005.P17469782972333730082

`eq[A030998(n), A329506(n)]`
-/

namespace A031005.P17469782972333730082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P17469782972333730082

/-! ## A031005.P13588149782414509052

`eq[A030998(n), A329510(n)]`
-/

namespace A031005.P13588149782414509052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P13588149782414509052

/-! ## A031005.P14385381242056739342

`eq[A030998(n), A329516(n)]`
-/

namespace A031005.P14385381242056739342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P14385381242056739342

/-! ## A031005.P4577711599867063420

`A020725(eq[0, A031016(n+1)])`
-/

namespace A031005.P4577711599867063420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031005.P4577711599867063420

/-! ## A031005.P9568831762570146262

`A065475(eq[0, A031016(n+1)])`
-/

namespace A031005.P9568831762570146262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031005.P9568831762570146262

/-! ## A031005.P7451466091605214683

`eq[A030998(n), A094325(n+1)]`
-/

namespace A031005.P7451466091605214683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P7451466091605214683

/-! ## A031005.P79004116966963551

`eq[A030998(n), A101101(n+1)]`
-/

namespace A031005.P79004116966963551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P79004116966963551

/-! ## A031005.P15702812199940470669

`eq[A030998(n), A101272(n+1)]`
-/

namespace A031005.P15702812199940470669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P15702812199940470669

/-! ## A031005.P3613014849602582519

`eq[A030998(n), A134201(n+1)]`
-/

namespace A031005.P3613014849602582519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P3613014849602582519

/-! ## A031005.P2185573559293241814

`eq[A030998(n), A071279(n+3)]`
-/

namespace A031005.P2185573559293241814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071279 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031005.P2185573559293241814

/-!
# A031007: Triangle T(n,k): Write n in base 7, reverse order of digits, to get row n.

The programs for A031007, there is no canonical definition to state claims against.
-/

/-! ## A031007.P17478353606037985779

`A054634(lt[A325509(3*n+4), A275993(2*n+3)])`
-/

namespace A031007.P17478353606037985779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325509 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275993 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031007.P17478353606037985779

/-! ## A031007.P10436430747196696754

`A030998(record[A053828(A073789(n))])`
-/

namespace A031007.P10436430747196696754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A073789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031007.P10436430747196696754

/-! ## A031007.P1078478204684226949

`A218978(lt[A218978(n)!, A120005(n+2)])`
-/

namespace A031007.P1078478204684226949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A218978 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A031007.P1078478204684226949

/-! ## A031007.P11154289561915664287

`A218978(lt[A218978(n), A279614(3*(n+1))])`
-/

namespace A031007.P11154289561915664287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279614 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218978 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031007.P11154289561915664287

/-! ## A031007.P13025357359051928743

`A031045(A245795(n+3)+n)`
-/

namespace A031007.P13025357359051928743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (A245795 (n + 3) + (n : ℤ)).toNat

end

end A031007.P13025357359051928743

/-!
# A031008: Position of n-th 0 in A031007.

The programs for A031008, there is no canonical definition to state claims against.
-/

/-! ## A031008.P6866893639644571594

`eq[0, A031007(n)]`
-/

namespace A031008.P6866893639644571594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031008.P6866893639644571594

/-! ## A031008.P15403500959777319860

`lt[A031007(n), acot(A053828(n))]`
-/

namespace A031008.P15403500959777319860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A053828 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031008.P15403500959777319860

/-! ## A031008.P5371402279454101470

`lt[A031007(n), acot(A031010(n+1))]`
-/

namespace A031008.P5371402279454101470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A031010 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031008.P5371402279454101470

/-! ## A031008.P15609577318481256018

`lt[A031007(n), A031242(A031243(n+1))]`
-/

namespace A031008.P15609577318481256018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031242 (A031243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031008.P15609577318481256018

/-! ## A031008.P2446600307960662918

`lt[A031007(n), A031235(A031237(n+1))]`
-/

namespace A031008.P2446600307960662918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031237 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031008.P2446600307960662918

/-! ## A031008.P5198110976088515965

`lt[A031007(n), A144261(A005349(n+1))]`
-/

namespace A031008.P5198110976088515965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (A005349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031008.P5198110976088515965

/-!
# A031009: Position of n-th 1 in A031007.

The programs for A031009, there is no canonical definition to state claims against.
-/

/-! ## A031009.P6695484240982317490

`eq[1, A031007(n)]`
-/

namespace A031009.P6695484240982317490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031009.P6695484240982317490

/-! ## A031009.P10478961808642069667

`record[C(n, A031007(n)^A065033(n))]`
-/

namespace A031009.P10478961808642069667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway ((A031007 n : ℚ) ^ (A065033 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031009.P10478961808642069667

/-! ## A031009.P12707900679282076114

`eq[1, A007376(A047314(n+1)%A099108(n+1))]`
-/

namespace A031009.P12707900679282076114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A047314 (n + 1)) (A099108 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031009.P12707900679282076114

/-!
# A031010: Position of n-th 2 in A031007.

The programs for A031010, there is no canonical definition to state claims against.
-/

/-! ## A031010.P15139402503046131133

`eq[2, A031007(n)]`
-/

namespace A031010.P15139402503046131133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031010.P15139402503046131133

/-! ## A031010.P5380233697490892447

`lt[(A031007(n)-A040000(n))², 1]`
-/

namespace A031010.P5380233697490892447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031007 n - A040000 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031010.P5380233697490892447

/-!
# A031011: Position of n-th 3 in A031007.

The programs for A031011, there is no canonical definition to state claims against.
-/

/-! ## A031011.P8772795957964898809

`eq[3, A031007(n)]`
-/

namespace A031011.P8772795957964898809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031011.P8772795957964898809

/-! ## A031011.P6881287937716681426

`lt[(A031007(n)-1-A040000(n))², 1]`
-/

namespace A031011.P6881287937716681426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031007 n - 1 - A040000 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031011.P6881287937716681426

/-!
# A031012: Position of n-th 4 in A031007.

The programs for A031012, there is no canonical definition to state claims against.
-/

/-! ## A031012.P11755965885401834794

`eq[4, A031007(n)]`
-/

namespace A031012.P11755965885401834794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031012.P11755965885401834794

/-!
# A031013: Position of n-th 5 in A031007.

The programs for A031013, there is no canonical definition to state claims against.
-/

/-! ## A031013.P6553218240557264489

`eq[5, A031007(n)]`
-/

namespace A031013.P6553218240557264489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031013.P6553218240557264489

/-!
# A031014: Position of n-th 6 in A031007.

The programs for A031014, there is no canonical definition to state claims against.
-/

/-! ## A031014.P3232780801231950510

`lt[5, A031007(n)]`
-/

namespace A031014.P3232780801231950510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031014.P3232780801231950510

/-! ## A031014.P6935954143519399471

`A000027(eq[6, A031007(n)])`
-/

namespace A031014.P6935954143519399471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031014.P6935954143519399471

/-! ## A031014.P13062864206638072107

`eq[6, A031007(A028310(n))]`
-/

namespace A031014.P13062864206638072107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031014.P13062864206638072107

/-! ## A031014.P8050433678129115622

`eq[A031007(n), A040006(n)]`
-/

namespace A031014.P8050433678129115622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P8050433678129115622

/-! ## A031014.P14941666878692451550

`eq[A031007(n), A063808(n)]`
-/

namespace A031014.P14941666878692451550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P14941666878692451550

/-! ## A031014.P5843974834268752528

`eq[A031007(n), A113975(n)]`
-/

namespace A031014.P5843974834268752528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P5843974834268752528

/-! ## A031014.P12166524573939837492

`eq[A031007(n), A329502(n)]`
-/

namespace A031014.P12166524573939837492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P12166524573939837492

/-! ## A031014.P13115377779526046924

`eq[A031007(n), A329506(n)]`
-/

namespace A031014.P13115377779526046924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P13115377779526046924

/-! ## A031014.P3591477350019369163

`eq[A031007(n), A329510(n)]`
-/

namespace A031014.P3591477350019369163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P3591477350019369163

/-! ## A031014.P18375425746773493621

`eq[A031007(n), A329516(n)]`
-/

namespace A031014.P18375425746773493621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P18375425746773493621

/-! ## A031014.P12254883546050552711

`eq[A031007(n), A094325(n+1)]`
-/

namespace A031014.P12254883546050552711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P12254883546050552711

/-! ## A031014.P14236460196995580773

`eq[A031007(n), A101101(n+1)]`
-/

namespace A031014.P14236460196995580773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P14236460196995580773

/-! ## A031014.P8730647631824020058

`eq[A031007(n), A101272(n+1)]`
-/

namespace A031014.P8730647631824020058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P8730647631824020058

/-! ## A031014.P14754189100947703000

`eq[A031007(n), A134201(n+1)]`
-/

namespace A031014.P14754189100947703000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P14754189100947703000

/-! ## A031014.P13046187882569450950

`eq[A031007(n), A071279(n+3)]`
-/

namespace A031014.P13046187882569450950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071279 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P13046187882569450950

/-! ## A031014.P7050524909553065589

`eq[A157532(n+1)!, A031007(n)]`
-/

namespace A031014.P7050524909553065589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A157532 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031014.P7050524909553065589

/-! ## A031014.P6254697772181991048

`eq[A031007(n), A031027(A031034(n+1))]`
-/

namespace A031014.P6254697772181991048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A031034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P6254697772181991048

/-! ## A031014.P6440844106570513547

`eq[A030998(A031005(n+1)), A031007(n)]`
-/

namespace A031014.P6440844106570513547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (A031005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P6440844106570513547

/-! ## A031014.P6440395332101368004

`eq[A031007(n), A031018(A031025(n+1))]`
-/

namespace A031014.P6440395332101368004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A031025 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031014.P6440395332101368004

/-! ## A031014.P6727269523217079713

`eq[6, A031007(A233583(n+1))]`
-/

namespace A031014.P6727269523217079713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031014.P6727269523217079713

/-!
# A031016: Write n in base 7, then complement each digit (d -> 6-d) and juxtapose.

The programs for A031016, there is no canonical definition to state claims against.
-/

/-! ## A031016.P2291184769600159621

`6-A030998(n+1)`
-/

namespace A031016.P2291184769600159621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A030998 (n + 1)

end

end A031016.P2291184769600159621

/-! ## A031016.P11247474502640094172

`a(n-1)-Δ[A030998(n)]` with `a(0)=5`
-/

namespace A031016.P11247474502640094172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031016.P11247474502640094172

/-!
# A031018: Write 2n-1 in base 7 and juxtapose.

The programs for A031018, there is no canonical definition to state claims against.
-/

/-! ## A031018.P6797430555953985795

`A030998(lt[A261137(2*n+1), A191754(n)])`
-/

namespace A031018.P6797430555953985795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261137 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031018.P6797430555953985795

/-!
# A031019: Position of n-th 0 in A031018.

The programs for A031019, there is no canonical definition to state claims against.
-/

/-! ## A031019.P15574995397389071564

`lt[A031018(n+1), 1]+1`
-/

namespace A031019.P15574995397389071564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031019.P15574995397389071564

/-! ## A031019.P3371220763414883435

`eq[0, A031018(A028310(n))]`
-/

namespace A031019.P3371220763414883435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031019.P3371220763414883435

/-! ## A031019.P11295202128001080299

`A020725(eq[0, A031018(n+1)])`
-/

namespace A031019.P11295202128001080299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031019.P11295202128001080299

/-! ## A031019.P12283342911857824193

`eq[0, A031018(A000007(n)+n)]`
-/

namespace A031019.P12283342911857824193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031019.P12283342911857824193

/-! ## A031019.P11558785013003857922

`eq[0, A031018(A000038(n)+n)]`
-/

namespace A031019.P11558785013003857922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031019.P11558785013003857922

/-! ## A031019.P16532560958859747218

`lt[A031018(n*a(A057427(n)-1)), 1]` with `a(0)=1`
-/

namespace A031019.P16532560958859747218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A031018 ((n : ℤ) * f1 (A057427 n - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031019.P16532560958859747218

/-! ## A031019.P7966536891748786073

`eq[0, A031018(A065033(2*n))]`
-/

namespace A031019.P7966536891748786073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031019.P7966536891748786073

/-! ## A031019.P1975073080376098628

`eq[0, A031018(A233583(n+1))]`
-/

namespace A031019.P1975073080376098628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031019.P1975073080376098628

/-!
# A031020: Position of n-th 1 in A031018.

The programs for A031020, there is no canonical definition to state claims against.
-/

/-! ## A031020.P15820456455703991673

`eq[1, A031018(n+1)]+1`
-/

namespace A031020.P15820456455703991673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031020.P15820456455703991673

/-! ## A031020.P8561229335387650682

`eq[1, A031018(A000038(n)+n)]`
-/

namespace A031020.P8561229335387650682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031020.P8561229335387650682

/-! ## A031020.P1515269808849124085

`eq[A031018(A028310(n)), A057427(n)]`
-/

namespace A031020.P1515269808849124085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031020.P1515269808849124085

/-! ## A031020.P10264451582040647929

`eq[A000038(n)!, A031018(A028310(n))]`
-/

namespace A031020.P10264451582040647929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031020.P10264451582040647929

/-! ## A031020.P2577271579429463412

`eq[1-A000007(n), A031018(A028310(n))]`
-/

namespace A031020.P2577271579429463412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031020.P2577271579429463412

/-! ## A031020.P17447987566587899034

`eq[A031018(A028310(n)), A122458(2*n)]`
-/

namespace A031020.P17447987566587899034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031020.P17447987566587899034

/-!
# A031021: Position of n-th 2 in A031018.

The programs for A031021, there is no canonical definition to state claims against.
-/

/-! ## A031021.P9138060090369013463

`eq[2, A031018(n+1)]+1`
-/

namespace A031021.P9138060090369013463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031021.P9138060090369013463

/-! ## A031021.P4640861955615764254

`eq[2, A031018(A028310(n))]`
-/

namespace A031021.P4640861955615764254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031021.P4640861955615764254

/-! ## A031021.P12516681538437801852

`A020725(eq[2, A031018(n+1)])`
-/

namespace A031021.P12516681538437801852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031021.P12516681538437801852

/-! ## A031021.P3778602917946002188

`eq[2, A031018(A000038(n)+n)]`
-/

namespace A031021.P3778602917946002188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031021.P3778602917946002188

/-! ## A031021.P17229137607704077467

`eq[2, A031018(A000007(n)+n)]`
-/

namespace A031021.P17229137607704077467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031021.P17229137607704077467

/-! ## A031021.P17797911041022823120

`eq[2, A031018(A065033(2*n))]`
-/

namespace A031021.P17797911041022823120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031021.P17797911041022823120

/-! ## A031021.P13905378099913170403

`eq[2, A031018(A233583(n+1))]`
-/

namespace A031021.P13905378099913170403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031021.P13905378099913170403

/-!
# A031022: Position of n-th 3 in A031018.

The programs for A031022, there is no canonical definition to state claims against.
-/

/-! ## A031022.P17879187020631901689

`eq[3, A031018(n+1)]+1`
-/

namespace A031022.P17879187020631901689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031022.P17879187020631901689

/-! ## A031022.P14223652572979592084

`eq[3, A031018(A028310(n))]`
-/

namespace A031022.P14223652572979592084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031022.P14223652572979592084

/-! ## A031022.P10997146297353542643

`A020725(eq[3, A031018(n+1)])`
-/

namespace A031022.P10997146297353542643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031022.P10997146297353542643

/-! ## A031022.P14753447839443465470

`eq[3, A031018(A000007(n)+n)]`
-/

namespace A031022.P14753447839443465470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031022.P14753447839443465470

/-! ## A031022.P16617425479097420990

`eq[3, A031018(A065033(2*n))]`
-/

namespace A031022.P16617425479097420990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031022.P16617425479097420990

/-!
# A031023: Position of n-th 4 in A031018.

The programs for A031023, there is no canonical definition to state claims against.
-/

/-! ## A031023.P12936998190764863546

`eq[4, A031018(n+1)]+1`
-/

namespace A031023.P12936998190764863546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031023.P12936998190764863546

/-! ## A031023.P6793255735489748407

`eq[4, A031018(A028310(n))]`
-/

namespace A031023.P6793255735489748407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031023.P6793255735489748407

/-! ## A031023.P440069873404072648

`eq[4, A031018(A000007(n)+n)]`
-/

namespace A031023.P440069873404072648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031023.P440069873404072648

/-! ## A031023.P11492620644132560730

`eq[4, A031018(A000038(n)+n)]`
-/

namespace A031023.P11492620644132560730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031023.P11492620644132560730

/-! ## A031023.P1917536186334083903

`eq[4, A031018(A065033(2*n))]`
-/

namespace A031023.P1917536186334083903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031023.P1917536186334083903

/-! ## A031023.P12304854586109535147

`eq[4, A031018(A233583(n+1))]`
-/

namespace A031023.P12304854586109535147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031023.P12304854586109535147

/-!
# A031024: Position of n-th 5 in A031018.

The programs for A031024, there is no canonical definition to state claims against.
-/

/-! ## A031024.P15041438694956544450

`eq[5, A031018(n+1)]+1`
-/

namespace A031024.P15041438694956544450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031024.P15041438694956544450

/-! ## A031024.P6068026234024364031

`eq[5, A031018(A028310(n))]`
-/

namespace A031024.P6068026234024364031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031024.P6068026234024364031

/-! ## A031024.P17274231568396126323

`eq[5, A031018(A000007(n)+n)]`
-/

namespace A031024.P17274231568396126323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031024.P17274231568396126323

/-! ## A031024.P8166834832673290474

`eq[5, A031018(A000038(n)+n)]`
-/

namespace A031024.P8166834832673290474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031024.P8166834832673290474

/-! ## A031024.P16792642642543023578

`eq[5, A031018(A065033(2*n))]`
-/

namespace A031024.P16792642642543023578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031024.P16792642642543023578

/-! ## A031024.P13562760453141413939

`eq[5, A031018(A233583(n+1))]`
-/

namespace A031024.P13562760453141413939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031024.P13562760453141413939

/-!
# A031025: Position of n-th 6 in A031018.

The programs for A031025, there is no canonical definition to state claims against.
-/

/-! ## A031025.P12760657805673045097

`eq[6, A031018(n+1)]+1`
-/

namespace A031025.P12760657805673045097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031025.P12760657805673045097

/-! ## A031025.P2208501212951009158

`eq[6, A031018(A028310(n))]`
-/

namespace A031025.P2208501212951009158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031025.P2208501212951009158

/-! ## A031025.P2455648548478839400

`eq[6, A031018(A000007(n)+n)]`
-/

namespace A031025.P2455648548478839400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031025.P2455648548478839400

/-! ## A031025.P207024230830320533

`eq[6, A031018(A000038(n)+n)]`
-/

namespace A031025.P207024230830320533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031025.P207024230830320533

/-! ## A031025.P6305338253964827721

`eq[6, A031018(A065033(2*n))]`
-/

namespace A031025.P6305338253964827721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031025.P6305338253964827721

/-! ## A031025.P13989751826983000112

`eq[6, A031018(A233583(n+1))]`
-/

namespace A031025.P13989751826983000112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031025.P13989751826983000112

/-!
# A031028: Position of n-th 0 in A031027.

The programs for A031028, there is no canonical definition to state claims against.
-/

/-! ## A031028.P9852647371374512430

`eq[0, A031027(n+1)]+1`
-/

namespace A031028.P9852647371374512430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031028.P9852647371374512430

/-! ## A031028.P2645212915516523480

`eq[0, A031027(A028310(n))]`
-/

namespace A031028.P2645212915516523480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031028.P2645212915516523480

/-! ## A031028.P13545280964286233903

`A020725(eq[0, A031027(n+1)])`
-/

namespace A031028.P13545280964286233903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031028.P13545280964286233903

/-! ## A031028.P1408649757934645077

`A326178(eq[0, A031027(n+1)])`
-/

namespace A031028.P1408649757934645077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031028.P1408649757934645077

/-! ## A031028.P15088039240493111182

`eq[0, A031027(gcd(n, A008458(n)))]`
-/

namespace A031028.P15088039240493111182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031028.P15088039240493111182

/-! ## A031028.P13670387009484307508

`eq[0, A031027(A233583(n+1))]`
-/

namespace A031028.P13670387009484307508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031028.P13670387009484307508

/-!
# A031029: Position of n-th 1 in A031027.

The programs for A031029, there is no canonical definition to state claims against.
-/

/-! ## A031029.P5215705044897990652

`eq[1, A031027(n+1)]+1`
-/

namespace A031029.P5215705044897990652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031029.P5215705044897990652

/-! ## A031029.P4838513158764249781

`eq[A031027(A028310(n)), A054977(n)]`
-/

namespace A031029.P4838513158764249781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031029.P4838513158764249781

/-! ## A031029.P8287458479844428491

`eq[A031027(A028310(n)), A057427(n)]`
-/

namespace A031029.P8287458479844428491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031029.P8287458479844428491

/-! ## A031029.P4585736849527939827

`eq[A019428(2*n), A031027(A028310(n))]`
-/

namespace A031029.P4585736849527939827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031029.P4585736849527939827

/-! ## A031029.P13493669567370571351

`eq[A031027(A028310(n)), A043545(2*n)]`
-/

namespace A031029.P13493669567370571351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031029.P13493669567370571351

/-!
# A031030: Position of n-th 2 in A031027.

The programs for A031030, there is no canonical definition to state claims against.
-/

/-! ## A031030.P9067319938760441597

`eq[2, A031027(n+1)]+1`
-/

namespace A031030.P9067319938760441597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031030.P9067319938760441597

/-! ## A031030.P3374473137296733661

`eq[2, A031027(A028310(n))]`
-/

namespace A031030.P3374473137296733661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031030.P3374473137296733661

/-! ## A031030.P17145234816725915673

`A020725(eq[2, A031027(n+1)])`
-/

namespace A031030.P17145234816725915673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031030.P17145234816725915673

/-! ## A031030.P6582889741104416250

`eq[2, A031027(A000007(n)+n)]`
-/

namespace A031030.P6582889741104416250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031030.P6582889741104416250

/-! ## A031030.P16446474287826079512

`eq[2, A031027(gcd(n, A008458(n)))]`
-/

namespace A031030.P16446474287826079512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031030.P16446474287826079512

/-!
# A031031: Position of n-th 3 in A031027.

The programs for A031031, there is no canonical definition to state claims against.
-/

/-! ## A031031.P15931241043735244191

`eq[3, A031027(n+1)]+1`
-/

namespace A031031.P15931241043735244191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031031.P15931241043735244191

/-! ## A031031.P13400126238072820416

`eq[3, A031027(A028310(n))]`
-/

namespace A031031.P13400126238072820416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031031.P13400126238072820416

/-! ## A031031.P3872050897692766270

`A020725(eq[3, A031027(n+1)])`
-/

namespace A031031.P3872050897692766270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031031.P3872050897692766270

/-! ## A031031.P11623346539397783959

`eq[3, A031027(A000007(n)+n)]`
-/

namespace A031031.P11623346539397783959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031031.P11623346539397783959

/-! ## A031031.P11714098108129710224

`eq[3, A031027(gcd(n, A008458(n)))]`
-/

namespace A031031.P11714098108129710224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031031.P11714098108129710224

/-!
# A031032: Position of n-th 4 in A031027.

The programs for A031032, there is no canonical definition to state claims against.
-/

/-! ## A031032.P11685279869959195202

`eq[4, A031027(n+1)]+1`
-/

namespace A031032.P11685279869959195202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031032.P11685279869959195202

/-! ## A031032.P15482766786806365929

`eq[4, A031027(A028310(n))]`
-/

namespace A031032.P15482766786806365929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031032.P15482766786806365929

/-! ## A031032.P1731292985596025313

`A020725(eq[4, A031027(n+1)])`
-/

namespace A031032.P1731292985596025313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031032.P1731292985596025313

/-! ## A031032.P4562234354153202986

`A326178(eq[4, A031027(n+1)])`
-/

namespace A031032.P4562234354153202986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031032.P4562234354153202986

/-! ## A031032.P8230346654074291112

`eq[4, A031027(A000007(n)+n)]`
-/

namespace A031032.P8230346654074291112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031032.P8230346654074291112

/-! ## A031032.P17701407342888342462

`eq[4, A031027(gcd(n, A008458(n)))]`
-/

namespace A031032.P17701407342888342462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031032.P17701407342888342462

/-!
# A031033: Position of n-th 5 in A031027.

The programs for A031033, there is no canonical definition to state claims against.
-/

/-! ## A031033.P17470861500547765559

`eq[5, A031027(n+1)]+1`
-/

namespace A031033.P17470861500547765559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031033.P17470861500547765559

/-! ## A031033.P14854913682311194917

`eq[5, A031027(A028310(n))]`
-/

namespace A031033.P14854913682311194917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031033.P14854913682311194917

/-! ## A031033.P6205977322813843898

`A020725(eq[5, A031027(n+1)])`
-/

namespace A031033.P6205977322813843898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031033.P6205977322813843898

/-! ## A031033.P3538139234676271397

`A326178(eq[5, A031027(n+1)])`
-/

namespace A031033.P3538139234676271397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031033.P3538139234676271397

/-! ## A031033.P12113811798519508363

`eq[5, A031027(A000007(n)+n)]`
-/

namespace A031033.P12113811798519508363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031033.P12113811798519508363

/-! ## A031033.P9610534222641133604

`eq[5, A031027(gcd(n, A008458(n)))]`
-/

namespace A031033.P9610534222641133604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031033.P9610534222641133604

/-! ## A031033.P3064445158803752414

`eq[5, A031027(A233583(n+1))]`
-/

namespace A031033.P3064445158803752414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031033.P3064445158803752414

/-!
# A031034: Position of n-th 6 in A031027.

The programs for A031034, there is no canonical definition to state claims against.
-/

/-! ## A031034.P16182190518442069436

`eq[6, A031027(n+1)]+1`
-/

namespace A031034.P16182190518442069436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031034.P16182190518442069436

/-! ## A031034.P16329712795056259616

`eq[6, A031027(A028310(n))]`
-/

namespace A031034.P16329712795056259616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031034.P16329712795056259616

/-! ## A031034.P3123358297896840933

`A020725(eq[6, A031027(n+1)])`
-/

namespace A031034.P3123358297896840933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031034.P3123358297896840933

/-! ## A031034.P7079356864441701190

`A326178(eq[6, A031027(n+1)])`
-/

namespace A031034.P7079356864441701190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031034.P7079356864441701190

/-! ## A031034.P18082322669168532690

`eq[6, A031027(A000007(n)+n)]`
-/

namespace A031034.P18082322669168532690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031034.P18082322669168532690

/-! ## A031034.P6025803165286309950

`eq[6, A031027(gcd(n, A008458(n)))]`
-/

namespace A031034.P6025803165286309950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031034.P6025803165286309950

/-! ## A031034.P7455330662360757933

`eq[6, A031027(A233583(n+1))]`
-/

namespace A031034.P7455330662360757933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031027 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031034.P7455330662360757933

/-!
# A031035: Write n in base 8 and juxtapose.

The programs for A031035, there is no canonical definition to state claims against.
-/

/-! ## A031035.P4423983516294212881

`Δ[A054636(n)]`
-/

namespace A031035.P4423983516294212881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031035.P4423983516294212881

/-! ## A031035.P9840624489108200488

`7-A031055(n+1)`
-/

namespace A031035.P9840624489108200488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A031055 (n + 1)

end

end A031035.P9840624489108200488

/-! ## A031035.P7149121459687908916

`xor(7, A031055(A000027(n+1)))`
-/

namespace A031035.P7149121459687908916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A031055 (A000027 (n + 1)).toNat)

end

end A031035.P7149121459687908916

/-! ## A031035.P3178950589807332930

`A054636(n+1)-A054636(n)`
-/

namespace A031035.P3178950589807332930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (n + 1) - A054636 n

end

end A031035.P3178950589807332930

/-! ## A031035.P5344210983374420654

`A054634(n+1)`
-/

namespace A031035.P5344210983374420654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (n + 1)

end

end A031035.P5344210983374420654

/-! ## A031035.P4139023791948048159

`∑[Δ[A054634(n)]%9]`
-/

namespace A031035.P4139023791948048159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031035.P4139023791948048159

/-! ## A031035.P7496803328583891010

`A054634(-xor(n, -1))%12`
-/

namespace A031035.P7496803328583891010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054634 (-Int.xor (n : ℤ) (-1)).toNat) 12

end

end A031035.P7496803328583891010

/-! ## A031035.P5062781193578054003

`and(7, A054634(Δ[n²]-n))`
-/

namespace A031035.P5062781193578054003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A054634 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A031035.P5062781193578054003

/-! ## A031035.P17669960023740798083

`A054634(ϕ-(1/ϕ-n))%8`
-/

namespace A031035.P17669960023740798083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054634 (SequenceMachineLib.roundAway (Real.goldenRatio - (1 / Real.goldenRatio - (n : ℝ)))).toNat) 8

end

end A031035.P17669960023740798083

/-! ## A031035.P3505016949784804945

`A055149(n+1)%8`
-/

namespace A031035.P3505016949784804945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055149 (n + 1)) 8

end

end A031035.P3505016949784804945

/-!
# A031036: Position of the n-th 0 in A031035.

The programs for A031036, there is no canonical definition to state claims against.
-/

/-! ## A031036.P11952702308340981958

`lt[n*A054634(n), n]`
-/

namespace A031036.P11952702308340981958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054634 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031036.P11952702308340981958

/-! ## A031036.P10577605986239932234

`eq[0, A031035(n+1)]+1`
-/

namespace A031036.P10577605986239932234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031036.P10577605986239932234

/-! ## A031036.P16304106872077973784

`lt[A054634(n+1), 1]+1`
-/

namespace A031036.P16304106872077973784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031036.P16304106872077973784

/-! ## A031036.P16688310788473597372

`eq[0, A031035(A028310(n))]`
-/

namespace A031036.P16688310788473597372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031036.P16688310788473597372

/-! ## A031036.P9631018811088215687

`eq[A000007(n), A054634(n)]`
-/

namespace A031036.P9631018811088215687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P9631018811088215687

/-! ## A031036.P7284687942086118494

`eq[A000038(n), A054634(n)]`
-/

namespace A031036.P7284687942086118494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P7284687942086118494

/-! ## A031036.P14606453359020308455

`eq[A045534(n), A054634(n)]`
-/

namespace A031036.P14606453359020308455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P14606453359020308455

/-! ## A031036.P8632695521473648370

`eq[A054634(n), A066156(n)]`
-/

namespace A031036.P8632695521473648370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P8632695521473648370

/-! ## A031036.P12832839283710397827

`eq[A054634(n), A130706(n)]`
-/

namespace A031036.P12832839283710397827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P12832839283710397827

/-! ## A031036.P8627199381032319504

`eq[A054634(n), A130713(n)]`
-/

namespace A031036.P8627199381032319504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P8627199381032319504

/-! ## A031036.P5702451133397694545

`eq[A054634(n), A143645(n)]`
-/

namespace A031036.P5702451133397694545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P5702451133397694545

/-! ## A031036.P7322806033469066460

`eq[A054634(n), A143721(n)]`
-/

namespace A031036.P7322806033469066460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P7322806033469066460

/-! ## A031036.P14137720148269127913

`eq[A054634(n), A143722(n)]`
-/

namespace A031036.P14137720148269127913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P14137720148269127913

/-! ## A031036.P8705891850358591465

`eq[A054634(n), A143737(n)]`
-/

namespace A031036.P8705891850358591465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P8705891850358591465

/-! ## A031036.P1518819543934538130

`eq[A054634(n), A143754(n)]`
-/

namespace A031036.P1518819543934538130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P1518819543934538130

/-! ## A031036.P13704589320367334955

`eq[A054634(n), A143755(n)]`
-/

namespace A031036.P13704589320367334955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P13704589320367334955

/-! ## A031036.P12777644147434463228

`eq[A054634(n), A143756(n)]`
-/

namespace A031036.P12777644147434463228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P12777644147434463228

/-! ## A031036.P3140268794365253080

`eq[A054634(n), A143757(n)]`
-/

namespace A031036.P3140268794365253080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P3140268794365253080

/-! ## A031036.P2791175098091732543

`eq[A054634(n), A143758(n)]`
-/

namespace A031036.P2791175098091732543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P2791175098091732543

/-! ## A031036.P14240032576693212268

`eq[A033324(n+1), A054634(n)]`
-/

namespace A031036.P14240032576693212268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031036.P14240032576693212268

/-!
# A031037: Position of n-th 1 in A031035.

The programs for A031037, there is no canonical definition to state claims against.
-/

/-! ## A031037.P5139170430902986877

`eq[1, A054634(n)]`
-/

namespace A031037.P5139170430902986877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031037.P5139170430902986877

/-! ## A031037.P7402846896513343068

`eq[1, A031035(n+1)]+1`
-/

namespace A031037.P7402846896513343068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031037.P7402846896513343068

/-! ## A031037.P8930443123881968556

`eq[1, A031035(A000038(n)+n)]`
-/

namespace A031037.P8930443123881968556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031037.P8930443123881968556

/-! ## A031037.P8039402308031329219

`eq[A031035(A028310(n)), A054977(n)]`
-/

namespace A031037.P8039402308031329219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031037.P8039402308031329219

/-! ## A031037.P4886133872262854853

`eq[1, A031035(A123108(2*n))-A000038(n)]`
-/

namespace A031037.P4886133872262854853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat - A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031037.P4886133872262854853

/-! ## A031037.P14129170580585598364

`eq[A165476(2*n)², A031035(A065033(2*n))]`
-/

namespace A031037.P14129170580585598364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031037.P14129170580585598364

/-! ## A031037.P2885980335868572135

`eq[A031035(A065033(2*n)), A165476(n²)]`
-/

namespace A031037.P2885980335868572135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031037.P2885980335868572135

/-!
# A031038: Position of n-th 2 in A031035.

The programs for A031038, there is no canonical definition to state claims against.
-/

/-! ## A031038.P16054265446542309856

`eq[2, A054634(n)]`
-/

namespace A031038.P16054265446542309856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031038.P16054265446542309856

/-! ## A031038.P9524089626355180764

`eq[2, A031035(n+1)]+1`
-/

namespace A031038.P9524089626355180764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031038.P9524089626355180764

/-! ## A031038.P6771822200805403847

`eq[2, A031035(A028310(n))]`
-/

namespace A031038.P6771822200805403847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031038.P6771822200805403847

/-! ## A031038.P6209441290379445948

`A020725(eq[2, A031035(n+1)])`
-/

namespace A031038.P6209441290379445948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031038.P6209441290379445948

/-! ## A031038.P7248243121688621589

`eq[2, A031035(A065033(2*n))]`
-/

namespace A031038.P7248243121688621589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031038.P7248243121688621589

/-! ## A031038.P11843234740448409225

`eq[2, A031035(A123108(2*n))]`
-/

namespace A031038.P11843234740448409225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031038.P11843234740448409225

/-!
# A031039: Position of n-th 3 in A031035.

The programs for A031039, there is no canonical definition to state claims against.
-/

/-! ## A031039.P11061988189579689851

`eq[3, A054634(n)]`
-/

namespace A031039.P11061988189579689851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031039.P11061988189579689851

/-! ## A031039.P16692789725553845960

`eq[3, A031035(n+1)]+1`
-/

namespace A031039.P16692789725553845960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031039.P16692789725553845960

/-! ## A031039.P2038660389137432342

`eq[3, A031035(A028310(n))]`
-/

namespace A031039.P2038660389137432342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031039.P2038660389137432342

/-! ## A031039.P15955670688003810114

`A020725(eq[3, A031035(n+1)])`
-/

namespace A031039.P15955670688003810114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031039.P15955670688003810114

/-! ## A031039.P258872897318002288

`A065475(eq[3, A031035(n+1)])`
-/

namespace A031039.P258872897318002288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031039.P258872897318002288

/-! ## A031039.P5731456562166554753

`A065475(eq[4, A031055(n+1)])`
-/

namespace A031039.P5731456562166554753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031039.P5731456562166554753

/-! ## A031039.P14834336006566493324

`eq[3, A031035(A065033(2*n))]`
-/

namespace A031039.P14834336006566493324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031039.P14834336006566493324

/-! ## A031039.P1318858545562831771

`eq[3, A031035(A123108(2*n))]`
-/

namespace A031039.P1318858545562831771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031039.P1318858545562831771

/-! ## A031039.P15054745895370038458

`eq[3, A031035(A233583(n+1))]`
-/

namespace A031039.P15054745895370038458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031039.P15054745895370038458

/-!
# A031040: Position of n-th 4 in A031035.

The programs for A031040, there is no canonical definition to state claims against.
-/

/-! ## A031040.P17480806057052295452

`eq[4, A054634(n)]`
-/

namespace A031040.P17480806057052295452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031040.P17480806057052295452

/-! ## A031040.P5794755573863445667

`eq[3, A031055(n+1)]+1`
-/

namespace A031040.P5794755573863445667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031040.P5794755573863445667

/-! ## A031040.P17404610141423277012

`eq[4, A031035(n+1)]+1`
-/

namespace A031040.P17404610141423277012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031040.P17404610141423277012

/-! ## A031040.P8188291914209736503

`eq[4, A031035(A028310(n))]`
-/

namespace A031040.P8188291914209736503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031040.P8188291914209736503

/-! ## A031040.P1305203653845403260

`A065475(eq[3, A031055(n+1)])`
-/

namespace A031040.P1305203653845403260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031040.P1305203653845403260

/-! ## A031040.P11294762401156731621

`A020725(eq[4, A031035(n+1)])`
-/

namespace A031040.P11294762401156731621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031040.P11294762401156731621

/-! ## A031040.P4392086496041754733

`A065475(eq[4, A031035(n+1)])`
-/

namespace A031040.P4392086496041754733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031040.P4392086496041754733

/-! ## A031040.P9438348643335871758

`eq[4, A031035(A065033(2*n))]`
-/

namespace A031040.P9438348643335871758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031040.P9438348643335871758

/-! ## A031040.P9286875656647257842

`eq[4, A031035(A123108(2*n))]`
-/

namespace A031040.P9286875656647257842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031040.P9286875656647257842

/-! ## A031040.P6737739913650204037

`eq[4, A031035(A233583(n+1))]`
-/

namespace A031040.P6737739913650204037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031040.P6737739913650204037

/-!
# A031041: Position of n-th 5 in A031035.

The programs for A031041, there is no canonical definition to state claims against.
-/

/-! ## A031041.P11231808018872220905

`eq[2, A031055(n+1)]+1`
-/

namespace A031041.P11231808018872220905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031041.P11231808018872220905

/-! ## A031041.P15162442672346897666

`eq[5, A031035(n+1)]+1`
-/

namespace A031041.P15162442672346897666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031041.P15162442672346897666

/-! ## A031041.P5800209021130068407

`eq[5, A031035(A028310(n))]`
-/

namespace A031041.P5800209021130068407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P5800209021130068407

/-! ## A031041.P2300350586862207171

`A065475(eq[2, A031055(n+1)])`
-/

namespace A031041.P2300350586862207171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031041.P2300350586862207171

/-! ## A031041.P3474172385802762620

`A020725(eq[5, A031035(n+1)])`
-/

namespace A031041.P3474172385802762620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031041.P3474172385802762620

/-! ## A031041.P4802702602915550448

`eq[5, A031035(A000038(n)+n)]`
-/

namespace A031041.P4802702602915550448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P4802702602915550448

/-! ## A031041.P9257445465326182109

`eq[5, A054634(n)]`
-/

namespace A031041.P9257445465326182109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P9257445465326182109

/-! ## A031041.P12446864752862632043

`eq[5, A031035(A065033(2*n))]`
-/

namespace A031041.P12446864752862632043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P12446864752862632043

/-! ## A031041.P2415625378587696285

`eq[5, A031035(A123108(2*n))]`
-/

namespace A031041.P2415625378587696285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P2415625378587696285

/-! ## A031041.P15159315266430496040

`eq[5, A031035(A233583(n+1))]`
-/

namespace A031041.P15159315266430496040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031041.P15159315266430496040

/-!
# A031042: Position of n-th 6 in A031035.

The programs for A031042, there is no canonical definition to state claims against.
-/

/-! ## A031042.P12856290277723181467

`eq[6, A054634(n)]`
-/

namespace A031042.P12856290277723181467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P12856290277723181467

/-! ## A031042.P4537051177902104960

`eq[1, A031055(n+1)]+1`
-/

namespace A031042.P4537051177902104960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031042.P4537051177902104960

/-! ## A031042.P1680642468647185738

`eq[6, A031035(A028310(n))]`
-/

namespace A031042.P1680642468647185738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P1680642468647185738

/-! ## A031042.P12619124478579287409

`A065475(eq[1, A031055(n+1)])`
-/

namespace A031042.P12619124478579287409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031042.P12619124478579287409

/-! ## A031042.P296982328006000303

`A020725(eq[6, A031035(n+1)])`
-/

namespace A031042.P296982328006000303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031042.P296982328006000303

/-! ## A031042.P18125746784933112392

`eq[6, A031035(A000038(n)+n)]`
-/

namespace A031042.P18125746784933112392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P18125746784933112392

/-! ## A031042.P12099437548187067118

`eq[6, A031035(A060000(n+1))]`
-/

namespace A031042.P12099437548187067118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P12099437548187067118

/-! ## A031042.P4908684455316197578

`eq[6, A031035(A065033(2*n))]`
-/

namespace A031042.P4908684455316197578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P4908684455316197578

/-! ## A031042.P5867897696616709996

`eq[6, A031035(A123108(2*n))]`
-/

namespace A031042.P5867897696616709996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P5867897696616709996

/-! ## A031042.P11032032954617817704

`eq[6, A031035(A233583(n+1))]`
-/

namespace A031042.P11032032954617817704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031042.P11032032954617817704

/-!
# A031043: Position of n-th 7 in A031035.

The programs for A031043, there is no canonical definition to state claims against.
-/

/-! ## A031043.P13629246183255255019

`lt[6, A054634(n)]`
-/

namespace A031043.P13629246183255255019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031043.P13629246183255255019

/-! ## A031043.P11194418934221673294

`eq[7, A031035(A028310(n))]`
-/

namespace A031043.P11194418934221673294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031043.P11194418934221673294

/-! ## A031043.P10044555272918935433

`eq[A054634(n), A168093(n)]`
-/

namespace A031043.P10044555272918935433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031043.P10044555272918935433

/-! ## A031043.P18363611206686213982

`A065475(eq[0, A031055(n+1)])`
-/

namespace A031043.P18363611206686213982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031043.P18363611206686213982

/-! ## A031043.P17479455300147888190

`A065475(eq[7, A031035(n+1)])`
-/

namespace A031043.P17479455300147888190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031043.P17479455300147888190

/-! ## A031043.P7343654085275245231

`eq[A035613(n+1), A054634(n)]`
-/

namespace A031043.P7343654085275245231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031043.P7343654085275245231

/-! ## A031043.P294942570371763630

`eq[7, A031035(A000038(n)+n)]`
-/

namespace A031043.P294942570371763630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031043.P294942570371763630

/-! ## A031043.P3871040392023257798

`eq[7, A031035(A060000(n+1))]`
-/

namespace A031043.P3871040392023257798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031043.P3871040392023257798

/-! ## A031043.P1222666316214441781

`eq[7, A031035(A065033(2*n))]`
-/

namespace A031043.P1222666316214441781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031043.P1222666316214441781

/-! ## A031043.P4868155552469885400

`eq[7, A031035(A123108(2*n))]`
-/

namespace A031043.P4868155552469885400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031043.P4868155552469885400

/-!
# A031045: Triangle T(n,k): write n in base 8, reverse order of digits.

The programs for A031045, there is no canonical definition to state claims against.
-/

/-! ## A031045.P18261930610343334669

`gcd(7, A319646(n))*A030998(n)`
-/

namespace A031045.P18261930610343334669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A319646 n) : ℤ) * A030998 n

end

end A031045.P18261930610343334669

/-! ## A031045.P11083425672764356688

`A054634(A004727(n)%A384322(3*n+1))`
-/

namespace A031045.P11083425672764356688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (Int.tmod (A004727 n) (A384322 (3 * n + 1))).toNat

end

end A031045.P11083425672764356688

/-! ## A031045.P3585209789997526726

`A030998(n)*A053164(A198435(n+1))`
-/

namespace A031045.P3585209789997526726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n * A053164 (A198435 (n + 1)).toNat

end

end A031045.P3585209789997526726

/-! ## A031045.P13909509634879291311

`A030998(n)*A277875(A238343(3*n))`
-/

namespace A031045.P13909509634879291311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030998 n * A277875 (A238343 (3 * n)).toNat

end

end A031045.P13909509634879291311

/-!
# A031046: Position of n-th 0 in A031045.

The programs for A031046, there is no canonical definition to state claims against.
-/

/-! ## A031046.P13623906735757640704

`eq[0, A031045(n)]`
-/

namespace A031046.P13623906735757640704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031046.P13623906735757640704

/-! ## A031046.P11993750603727085627

`record[(n+1)*(1-A031045(n+1))]`
-/

namespace A031046.P11993750603727085627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A031045 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031046.P11993750603727085627

/-! ## A031046.P8222049382133899010

`lt[A007318(n)*A031045(n), 1]`
-/

namespace A031046.P8222049382133899010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A031045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P8222049382133899010

/-! ## A031046.P1721180921205356714

`lt[A031045(n)*A053742(n), 1]`
-/

namespace A031046.P1721180921205356714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A053742 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P1721180921205356714

/-! ## A031046.P14598519804839113408

`lt[A031045(n)*A130321(n), 1]`
-/

namespace A031046.P14598519804839113408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A130321 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P14598519804839113408

/-! ## A031046.P15774908701363580803

`lt[A000040(n+1)*A031045(n), 1]`
-/

namespace A031046.P15774908701363580803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P15774908701363580803

/-! ## A031046.P16000653321351532878

`lt[A031045(n)*A324121(n+1), 1]`
-/

namespace A031046.P16000653321351532878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A324121 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P16000653321351532878

/-! ## A031046.P6228657512806946920

`lt[A031045(n)*A088764(n+2), 1]`
-/

namespace A031046.P6228657512806946920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A088764 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P6228657512806946920

/-! ## A031046.P4966262350280048683

`lt[A031045(n)*A109613(n+2), 1]`
-/

namespace A031046.P4966262350280048683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A109613 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P4966262350280048683

/-! ## A031046.P1620389403669513339

`lt[or(A031045(n)-1, A008592(n)), 2]`
-/

namespace A031046.P1620389403669513339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031045 n - 1) (A008592 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P1620389403669513339

/-! ## A031046.P2543215487951227638

`record[n-A031045(n)*A248201(n+1)]`
-/

namespace A031046.P2543215487951227638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031045 n * A248201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031046.P2543215487951227638

/-! ## A031046.P8451289159269994098

`lt[A031045(n), A152271(A120880(n))]`
-/

namespace A031046.P8451289159269994098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031046.P8451289159269994098

/-! ## A031046.P12378700408205109679

`lt[A031045(n)*A155559(A001222(n+1)+2), 4]`
-/

namespace A031046.P12378700408205109679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A155559 (A001222 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P12378700408205109679

/-! ## A031046.P9571966341944439331

`lt[A031045(n)*A155559(A325801(n+1)+2), 4]`
-/

namespace A031046.P9571966341944439331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A155559 (A325801 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P9571966341944439331

/-! ## A031046.P8332595453234489174

`lt[A031045(n)*A046092(n)+1, A020639(n+64)]`
-/

namespace A031046.P8332595453234489174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n * A046092 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 64)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031046.P8332595453234489174

/-! ## A031046.P17809959410168187645

`record[n-A007090(n*A031045(n))]`
-/

namespace A031046.P17809959410168187645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007090 ((n : ℤ) * A031045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031046.P17809959410168187645

/-! ## A031046.P14745272830197971580

`record[n-A007094(n*A031045(n))]`
-/

namespace A031046.P14745272830197971580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007094 ((n : ℤ) * A031045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031046.P14745272830197971580

/-! ## A031046.P2371825064460643059

`lt[A040976((n+1)*A031045(n)+1), 2]`
-/

namespace A031046.P2371825064460643059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 ((n + 1 : ℤ) * A031045 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031046.P2371825064460643059

/-!
# A031047: Position of n-th 1 in A031045.

The programs for A031047, there is no canonical definition to state claims against.
-/

/-! ## A031047.P11633775083971492720

`eq[1, A031045(n)]`
-/

namespace A031047.P11633775083971492720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031047.P11633775083971492720

/-! ## A031047.P14102087997134990137

`record[gcd(A031045(n+1)+n, A103517(n))]`
-/

namespace A031047.P14102087997134990137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031045 (n + 1) + (n : ℤ)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031047.P14102087997134990137

/-! ## A031047.P2947717306676808180

`lt[6, gcd(A031045(n)-1, A048448(n+1))]`
-/

namespace A031047.P2947717306676808180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031045 n - 1) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031047.P2947717306676808180

/-! ## A031047.P15183584334341851863

`lt[lcm(A031045(n)-1, 2*n)+1, A225530(n)]`
-/

namespace A031047.P15183584334341851863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031045 n - 1) (2 * n : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031047.P15183584334341851863

/-! ## A031047.P4722655642993281636

`eq[A031298(A007094(n)), A167964(n+1)]`
-/

namespace A031047.P4722655642993281636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031047.P4722655642993281636

/-!
# A031048: Position of n-th 2 in A031045.

The programs for A031048, there is no canonical definition to state claims against.
-/

/-! ## A031048.P13396885181601538286

`eq[2, A031045(n)]`
-/

namespace A031048.P13396885181601538286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031048.P13396885181601538286

/-! ## A031048.P16336389060974312682

`lt[6, gcd(A031045(n)-2, A048448(n+1))]`
-/

namespace A031048.P16336389060974312682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031045 n - 2) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031048.P16336389060974312682

/-! ## A031048.P4735593317285027614

`eq[A000122(n²), A031298(A007094(n))]`
-/

namespace A031048.P4735593317285027614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031048.P4735593317285027614

/-! ## A031048.P6521102714913078145

`eq[2, A031298(A007094(n))*A167964(n+1)]`
-/

namespace A031048.P6521102714913078145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (A007094 n).toNat * A167964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031048.P6521102714913078145

/-! ## A031048.P8516058836835031636

`eq[A000688(A271051(n)), A031035(n+1)]+2`
-/

namespace A031048.P8516058836835031636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A271051 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A031048.P8516058836835031636

/-!
# A031049: Position of n-th 3 in A031045.

The programs for A031049, there is no canonical definition to state claims against.
-/

/-! ## A031049.P2784787613786782835

`eq[3, A031045(n)]`
-/

namespace A031049.P2784787613786782835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031049.P2784787613786782835

/-!
# A031050: Position of n-th 4 in A031045.

The programs for A031050, there is no canonical definition to state claims against.
-/

/-! ## A031050.P14645832369150882540

`eq[4, A031045(n)]`
-/

namespace A031050.P14645832369150882540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031050.P14645832369150882540

/-!
# A031051: Position of n-th 5 in A031045.

The programs for A031051, there is no canonical definition to state claims against.
-/

/-! ## A031051.P3388069511511474899

`eq[5, A031045(n)]`
-/

namespace A031051.P3388069511511474899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031051.P3388069511511474899

/-! ## A031051.P13814793372130290293

`xor(A031041(n+1), A057427(n²²))`
-/

namespace A031051.P13814793372130290293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031041 (n + 1)) (A057427 ((n ^ 2) ^ 2))

end

end A031051.P13814793372130290293

/-! ## A031051.P9550795895687705695

`xor(A000035(floor(3^(n-1))), A031041(n+1))`
-/

namespace A031051.P9550795895687705695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat) (A031041 (n + 1))

end

end A031051.P9550795895687705695

/-! ## A031051.P4802511624610642644

`xor(A031041(n+1), A060576(A002064(n)))`
-/

namespace A031051.P4802511624610642644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031041 (n + 1)) (A060576 (A002064 n).toNat)

end

end A031051.P4802511624610642644

/-! ## A031051.P15370013001449220400

`xor(A001221(ceil(4^n/2)), A031041(n+1))`
-/

namespace A031051.P15370013001449220400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 ⌈(4 ^ n : ℚ) / 2⌉.toNat) (A031041 (n + 1))

end

end A031051.P15370013001449220400

/-!
# A031052: Position of n-th 6 in A031045.

The programs for A031052, there is no canonical definition to state claims against.
-/

/-! ## A031052.P13727045910015845072

`eq[6, A031045(n)]`
-/

namespace A031052.P13727045910015845072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031052.P13727045910015845072

/-! ## A031052.P4166137646670470166

`xor(A000035(A033844(n)), A031042(n+1))`
-/

namespace A031052.P4166137646670470166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A033844 n).toNat) (A031042 (n + 1))

end

end A031052.P4166137646670470166

/-! ## A031052.P13639833394435048165

`xor(A031042(n+1), A057427(n²²))`
-/

namespace A031052.P13639833394435048165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031042 (n + 1)) (A057427 ((n ^ 2) ^ 2))

end

end A031052.P13639833394435048165

/-! ## A031052.P15500791700970814190

`xor(A000035(floor(3^(n-1))), A031042(n+1))`
-/

namespace A031052.P15500791700970814190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat) (A031042 (n + 1))

end

end A031052.P15500791700970814190

/-! ## A031052.P18182970196836345738

`xor(A031042(n+1), A355257(A000124(n)))`
-/

namespace A031052.P18182970196836345738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031042 (n + 1)) (A355257 (A000124 n).toNat)

end

end A031052.P18182970196836345738

/-!
# A031053: Position of n-th 7 in A031045.

The programs for A031053, there is no canonical definition to state claims against.
-/

/-! ## A031053.P7174086881404611118

`lt[6, A031045(n)]`
-/

namespace A031053.P7174086881404611118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031053.P7174086881404611118

/-! ## A031053.P13236796127741745458

`A000027(eq[7, A031045(n)])`
-/

namespace A031053.P13236796127741745458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031053.P13236796127741745458

/-! ## A031053.P3163992544167260229

`eq[7, A031045(A028310(n))]`
-/

namespace A031053.P3163992544167260229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031053.P3163992544167260229

/-! ## A031053.P3144822660253205917

`A184985(eq[7, A031045(n)])`
-/

namespace A031053.P3144822660253205917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031053.P3144822660253205917

/-! ## A031053.P9564459143815896187

`eq[A031045(n), A168093(n)]`
-/

namespace A031053.P9564459143815896187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031053.P9564459143815896187

/-! ## A031053.P7222508474036818520

`eq[A031045(n), A035613(n+1)]`
-/

namespace A031053.P7222508474036818520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031053.P7222508474036818520

/-! ## A031053.P2059147618954126841

`eq[7, A031045(A233583(n+1))]`
-/

namespace A031053.P2059147618954126841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031053.P2059147618954126841

/-! ## A031053.P10775356308815072422

`eq[A031035(A031043(n+1)), A031045(n)]`
-/

namespace A031053.P10775356308815072422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A031043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031053.P10775356308815072422

/-!
# A031055: Write n in base 8, then complement each digit (d -> 7-d) and juxtapose.

The programs for A031055, there is no canonical definition to state claims against.
-/

/-! ## A031055.P361639460895274761

`7-Δ[A054636(n)]`
-/

namespace A031055.P361639460895274761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (f1 (n + 1) - f1 n)

end

end A031055.P361639460895274761

/-! ## A031055.P12241942044579609725

`7-A031035(n+1)`
-/

namespace A031055.P12241942044579609725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A031035 (n + 1)

end

end A031055.P12241942044579609725

/-! ## A031055.P2606414487906044949

`xor(7, A031035(A000027(n+1)))`
-/

namespace A031055.P2606414487906044949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A031035 (A000027 (n + 1)).toNat)

end

end A031055.P2606414487906044949

/-! ## A031055.P18441844011826109431

`7-A054634(n+1)`
-/

namespace A031055.P18441844011826109431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A054634 (n + 1)

end

end A031055.P18441844011826109431

/-! ## A031055.P1577349867173318909

`7-∑[Δ[A054634(n)]%9]`
-/

namespace A031055.P1577349867173318909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031055.P1577349867173318909

/-! ## A031055.P15286756180239358370

`xor(7, A054634(ϕ²-(ϕ-n)))`
-/

namespace A031055.P15286756180239358370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A054634 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A031055.P15286756180239358370

/-! ## A031055.P11431728666740550739

`7-A054634(-xor(n, -1))%12`
-/

namespace A031055.P11431728666740550739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A054634 (-Int.xor (n : ℤ) (-1)).toNat) 12

end

end A031055.P11431728666740550739

/-! ## A031055.P12260816594044781305

`7-A054634(ϕ-(1/ϕ-n))%8`
-/

namespace A031055.P12260816594044781305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.tmod (A054634 (SequenceMachineLib.roundAway (Real.goldenRatio - (1 / Real.goldenRatio - (n : ℝ)))).toNat) 8

end

end A031055.P12260816594044781305

/-!
# A031058: Position of n-th 0 in A031057.

The programs for A031058, there is no canonical definition to state claims against.
-/

/-! ## A031058.P14420665783856474533

`lt[A031057(n+1), 1]+1`
-/

namespace A031058.P14420665783856474533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A031058.P14420665783856474533

/-! ## A031058.P8983416130369414547

`eq[0, A031057(A028310(n))]`
-/

namespace A031058.P8983416130369414547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P8983416130369414547

/-! ## A031058.P17564778490514726116

`eq[0, A031057(A000007(n)+n)]`
-/

namespace A031058.P17564778490514726116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P17564778490514726116

/-! ## A031058.P8300935180588769865

`eq[0, A031057(or(n, A000007(n)))]`
-/

namespace A031058.P8300935180588769865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P8300935180588769865

/-! ## A031058.P16180384186539910857

`A065475(eq[1, A031057(n+1)+1])`
-/

namespace A031058.P16180384186539910857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031058.P16180384186539910857

/-! ## A031058.P1184302303022159805

`eq[A000038(n), A031057(n+1)]+1`
-/

namespace A031058.P1184302303022159805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031058.P1184302303022159805

/-! ## A031058.P11605866847207965287

`eq[A000038(n), A031057(A000038(n)+n)]`
-/

namespace A031058.P11605866847207965287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031058.P11605866847207965287

/-! ## A031058.P13373560837944527145

`eq[1, A031057(A060000(n+1))+1]`
-/

namespace A031058.P13373560837944527145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A060000 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P13373560837944527145

/-! ## A031058.P17528279561022132375

`eq[0, A031057(A123108(2*n))]`
-/

namespace A031058.P17528279561022132375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P17528279561022132375

/-! ## A031058.P4819160552720751094

`eq[0, A031057(A233583(n+1))]`
-/

namespace A031058.P4819160552720751094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031058.P4819160552720751094

/-!
# A031059: Position of n-th 1 in A031057.

The programs for A031059, there is no canonical definition to state claims against.
-/

/-! ## A031059.P8555918089726209608

`eq[1, A031057(n+1)]+1`
-/

namespace A031059.P8555918089726209608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031059.P8555918089726209608

/-! ## A031059.P8601302550886778022

`eq[1, A031057(A000038(n)+n)]`
-/

namespace A031059.P8601302550886778022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031059.P8601302550886778022

/-! ## A031059.P2728239178102688447

`eq[n, A028310(n)*A031057(A028310(n))]`
-/

namespace A031059.P2728239178102688447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031059.P2728239178102688447

/-! ## A031059.P13676066117624977020

`eq[A031057(A123108(2*n)), A054977(n)]`
-/

namespace A031059.P13676066117624977020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031059.P13676066117624977020

/-! ## A031059.P6995675479272344160

`eq[A031057(A123108(2*n)), A057427(n)]`
-/

namespace A031059.P6995675479272344160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031059.P6995675479272344160

/-! ## A031059.P14233929478114388111

`eq[A000038(n)!, A031057(A123108(2*n))]`
-/

namespace A031059.P14233929478114388111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031059.P14233929478114388111

/-!
# A031060: Position of n-th 2 in A031057.

The programs for A031060, there is no canonical definition to state claims against.
-/

/-! ## A031060.P9218814220721777666

`eq[2, A031057(n+1)]+1`
-/

namespace A031060.P9218814220721777666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031060.P9218814220721777666

/-! ## A031060.P15440527904768717419

`eq[2, A031057(A028310(n))]`
-/

namespace A031060.P15440527904768717419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P15440527904768717419

/-! ## A031060.P15795257968998603386

`A065475(eq[2, A031057(n+1)])`
-/

namespace A031060.P15795257968998603386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031060.P15795257968998603386

/-! ## A031060.P10573341395259688461

`eq[2, A031057(A000007(n)+n)]`
-/

namespace A031060.P10573341395259688461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P10573341395259688461

/-! ## A031060.P17853794638703015280

`eq[2, A031057(A000038(n)+n)]`
-/

namespace A031060.P17853794638703015280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P17853794638703015280

/-! ## A031060.P4163556622537090096

`eq[2, A031057(or(n, A000007(n)))]`
-/

namespace A031060.P4163556622537090096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P4163556622537090096

/-! ## A031060.P10806896607178528125

`eq[2, A031057(A123108(2*n))]`
-/

namespace A031060.P10806896607178528125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P10806896607178528125

/-! ## A031060.P2149064310299736641

`eq[2, A031057(A233583(n+1))]`
-/

namespace A031060.P2149064310299736641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031060.P2149064310299736641

/-!
# A031061: Position of n-th 3 in A031057.

The programs for A031061, there is no canonical definition to state claims against.
-/

/-! ## A031061.P4459485904254448689

`eq[3, A031057(n+1)]+1`
-/

namespace A031061.P4459485904254448689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031061.P4459485904254448689

/-! ## A031061.P9443376898544896370

`eq[3, A031057(A028310(n))]`
-/

namespace A031061.P9443376898544896370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031061.P9443376898544896370

/-! ## A031061.P15902815031602299911

`eq[3, A031057(A000007(n)+n)]`
-/

namespace A031061.P15902815031602299911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031061.P15902815031602299911

/-! ## A031061.P11496675884966089847

`eq[3, A031057(or(n, A000007(n)))]`
-/

namespace A031061.P11496675884966089847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031061.P11496675884966089847

/-! ## A031061.P6030435749880575603

`eq[3, A031057(A123108(2*n))]`
-/

namespace A031061.P6030435749880575603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031061.P6030435749880575603

/-!
# A031062: Position of n-th 4 in A031057.

The programs for A031062, there is no canonical definition to state claims against.
-/

/-! ## A031062.P15518683515017063834

`eq[4, A031057(n+1)]+1`
-/

namespace A031062.P15518683515017063834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031062.P15518683515017063834

/-! ## A031062.P15887395443229851795

`eq[4, A031057(A028310(n))]`
-/

namespace A031062.P15887395443229851795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P15887395443229851795

/-! ## A031062.P7075562515225287998

`eq[4, A031057(A000007(n)+n)]`
-/

namespace A031062.P7075562515225287998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P7075562515225287998

/-! ## A031062.P9301197637828506756

`eq[4, A031057(A000038(n)+n)]`
-/

namespace A031062.P9301197637828506756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P9301197637828506756

/-! ## A031062.P3548090680774383709

`eq[4, A031057(or(n, A000007(n)))]`
-/

namespace A031062.P3548090680774383709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P3548090680774383709

/-! ## A031062.P15604529924404448117

`eq[4, A031057(A123108(2*n))]`
-/

namespace A031062.P15604529924404448117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P15604529924404448117

/-! ## A031062.P14819949916685352906

`eq[4, A031057(A233583(n+1))]`
-/

namespace A031062.P14819949916685352906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031062.P14819949916685352906

/-!
# A031063: Position of n-th 5 in A031057.

The programs for A031063, there is no canonical definition to state claims against.
-/

/-! ## A031063.P8978134212844288490

`eq[5, A031057(n+1)]+1`
-/

namespace A031063.P8978134212844288490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031063.P8978134212844288490

/-! ## A031063.P18241566833327647787

`eq[5, A031057(A028310(n))]`
-/

namespace A031063.P18241566833327647787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P18241566833327647787

/-! ## A031063.P18175291318673153098

`A065475(eq[5, A031057(n+1)])`
-/

namespace A031063.P18175291318673153098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031063.P18175291318673153098

/-! ## A031063.P12551376287311686078

`eq[5, A031057(A000007(n)+n)]`
-/

namespace A031063.P12551376287311686078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P12551376287311686078

/-! ## A031063.P1746118520500040473

`eq[5, A031057(A000038(n)+n)]`
-/

namespace A031063.P1746118520500040473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P1746118520500040473

/-! ## A031063.P7901976576291608044

`eq[5, A031057(or(n, A000007(n)))]`
-/

namespace A031063.P7901976576291608044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P7901976576291608044

/-! ## A031063.P8546920507148423879

`eq[5, A031057(A123108(2*n))]`
-/

namespace A031063.P8546920507148423879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P8546920507148423879

/-! ## A031063.P528127085129809436

`eq[5, A031057(A233583(n+1))]`
-/

namespace A031063.P528127085129809436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031063.P528127085129809436

/-!
# A031064: Position of n-th 6 in A031057.

The programs for A031064, there is no canonical definition to state claims against.
-/

/-! ## A031064.P7617845087941162117

`eq[6, A031057(A028310(n))]`
-/

namespace A031064.P7617845087941162117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P7617845087941162117

/-! ## A031064.P5512282584655598163

`eq[6, A031057(A000007(n)+n)]`
-/

namespace A031064.P5512282584655598163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P5512282584655598163

/-! ## A031064.P18200351393533155297

`eq[6, A031057(A000038(n)+n)]`
-/

namespace A031064.P18200351393533155297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P18200351393533155297

/-! ## A031064.P8476943731211135879

`eq[6, A031057(or(n, A000007(n)))]`
-/

namespace A031064.P8476943731211135879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P8476943731211135879

/-! ## A031064.P16987204117936103103

`eq[6, A031057(A123108(2*n))]`
-/

namespace A031064.P16987204117936103103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P16987204117936103103

/-! ## A031064.P16693852590752899306

`eq[6, A031057(A233583(n+1))]`
-/

namespace A031064.P16693852590752899306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031064.P16693852590752899306

/-!
# A031065: Position of n-th 7 in A031057.

The programs for A031065, there is no canonical definition to state claims against.
-/

/-! ## A031065.P8266028557967960422

`eq[7, A031057(n+1)]+1`
-/

namespace A031065.P8266028557967960422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031065.P8266028557967960422

/-! ## A031065.P991852876151505641

`eq[7, A031057(A028310(n))]`
-/

namespace A031065.P991852876151505641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P991852876151505641

/-! ## A031065.P3637558201271042267

`A065475(eq[7, A031057(n+1)])`
-/

namespace A031065.P3637558201271042267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031065.P3637558201271042267

/-! ## A031065.P6418882936923374002

`eq[7, A031057(A000007(n)+n)]`
-/

namespace A031065.P6418882936923374002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P6418882936923374002

/-! ## A031065.P18264943848052213597

`eq[7, A031057(or(n, A000007(n)))]`
-/

namespace A031065.P18264943848052213597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P18264943848052213597

/-! ## A031065.P382862170656639618

`eq[7, A031057(A060000(n+1))]`
-/

namespace A031065.P382862170656639618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P382862170656639618

/-! ## A031065.P15407017370142574152

`eq[7, A031057(A123108(2*n))]`
-/

namespace A031065.P15407017370142574152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P15407017370142574152

/-! ## A031065.P11733923487435418118

`eq[7, A031057(A233583(n+1))]`
-/

namespace A031065.P11733923487435418118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031065.P11733923487435418118

/-!
# A031068: Position of n-th 0 in A031067.

The programs for A031068, there is no canonical definition to state claims against.
-/

/-! ## A031068.P16864842143406413905

`eq[0, A031067(n+1)]+1`
-/

namespace A031068.P16864842143406413905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031068.P16864842143406413905

/-! ## A031068.P18443327774987251621

`eq[0, A031067(A028310(n))]`
-/

namespace A031068.P18443327774987251621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031068.P18443327774987251621

/-! ## A031068.P13888673629164665926

`eq[0, A031067(A065033(2*n))]`
-/

namespace A031068.P13888673629164665926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031068.P13888673629164665926

/-! ## A031068.P6931952354217367008

`eq[0, A031067(A123108(2*n))]`
-/

namespace A031068.P6931952354217367008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031068.P6931952354217367008

/-! ## A031068.P16451076301489654999

`eq[0, A031067(A233583(n+1))]`
-/

namespace A031068.P16451076301489654999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031068.P16451076301489654999

/-!
# A031069: Position of n-th 1 in A031067.

The programs for A031069, there is no canonical definition to state claims against.
-/

/-! ## A031069.P1454946416348990745

`eq[1, A031067(n+1)]+1`
-/

namespace A031069.P1454946416348990745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031069.P1454946416348990745

/-! ## A031069.P2725896168792743345

`eq[1, A031067(A000038(n)+n)]`
-/

namespace A031069.P2725896168792743345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031069.P2725896168792743345

/-! ## A031069.P677775516523789093

`eq[A019431(2*n), A031067(A028310(n))]`
-/

namespace A031069.P677775516523789093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031069.P677775516523789093

/-! ## A031069.P7057874626834345311

`eq[1-A036987(2*n), A031067(A028310(n))]`
-/

namespace A031069.P7057874626834345311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031069.P7057874626834345311

/-! ## A031069.P7371151897981642396

`eq[A031067(A028310(n)), A057427(n)]`
-/

namespace A031069.P7371151897981642396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031069.P7371151897981642396

/-! ## A031069.P8301667893635024965

`eq[A031067(A123108(2*n)), A054977(n)]`
-/

namespace A031069.P8301667893635024965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031069.P8301667893635024965

/-! ## A031069.P10367176085175743478

`eq[A031067(A123108(2*n)), A057427(n)]`
-/

namespace A031069.P10367176085175743478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031069.P10367176085175743478

/-! ## A031069.P5304575024288427384

`eq[A000038(n)!, A031067(A065033(2*n))]`
-/

namespace A031069.P5304575024288427384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031069.P5304575024288427384

/-!
# A031070: Position of n-th 2 in A031067.

The programs for A031070, there is no canonical definition to state claims against.
-/

/-! ## A031070.P14255048925339302314

`eq[2, A031067(n+1)]+1`
-/

namespace A031070.P14255048925339302314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031070.P14255048925339302314

/-! ## A031070.P1978411890752432729

`eq[2, A031067(A028310(n))]`
-/

namespace A031070.P1978411890752432729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031070.P1978411890752432729

/-! ## A031070.P10487648277597988237

`A020725(eq[2, A031067(n+1)])`
-/

namespace A031070.P10487648277597988237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031070.P10487648277597988237

/-! ## A031070.P2387527505435668071

`eq[2, A031067(A000007(n)+n)]`
-/

namespace A031070.P2387527505435668071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031070.P2387527505435668071

/-! ## A031070.P4952641070114868656

`eq[2, A031067(A065033(2*n))]`
-/

namespace A031070.P4952641070114868656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031070.P4952641070114868656

/-! ## A031070.P9485872782517158595

`eq[2, A031067(A123108(2*n))]`
-/

namespace A031070.P9485872782517158595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031070.P9485872782517158595

/-!
# A031071: Position of n-th 3 in A031067.

The programs for A031071, there is no canonical definition to state claims against.
-/

/-! ## A031071.P6369311271102363536

`eq[3, A031067(n+1)]+1`
-/

namespace A031071.P6369311271102363536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031071.P6369311271102363536

/-! ## A031071.P18137818974796915768

`eq[3, A031067(A028310(n))]`
-/

namespace A031071.P18137818974796915768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031071.P18137818974796915768

/-! ## A031071.P13973901226529658493

`eq[3, A031067(A065033(2*n))]`
-/

namespace A031071.P13973901226529658493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031071.P13973901226529658493

/-! ## A031071.P14617349859186145049

`eq[3, A031067(A123108(2*n))]`
-/

namespace A031071.P14617349859186145049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031071.P14617349859186145049

/-! ## A031071.P7018110762022793186

`eq[3, A031067(A233583(n+1))]`
-/

namespace A031071.P7018110762022793186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031071.P7018110762022793186

/-!
# A031072: Position of n-th 4 in A031067.

The programs for A031072, there is no canonical definition to state claims against.
-/

/-! ## A031072.P10583257278165871471

`eq[4, A031067(n+1)]+1`
-/

namespace A031072.P10583257278165871471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031072.P10583257278165871471

/-! ## A031072.P2553690303235111571

`eq[4, A031067(A028310(n))]`
-/

namespace A031072.P2553690303235111571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031072.P2553690303235111571

/-! ## A031072.P8261033235755893114

`eq[4, A031067(A065033(2*n))]`
-/

namespace A031072.P8261033235755893114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031072.P8261033235755893114

/-! ## A031072.P8655779371331898467

`eq[4, A031067(A123108(2*n))]`
-/

namespace A031072.P8655779371331898467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031072.P8655779371331898467

/-! ## A031072.P1843567795956010964

`eq[4, A031067(A233583(n+1))]`
-/

namespace A031072.P1843567795956010964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031072.P1843567795956010964

/-!
# A031073: Position of n-th 5 in A031067.

The programs for A031073, there is no canonical definition to state claims against.
-/

/-! ## A031073.P5077305214163046204

`eq[5, A031067(n+1)]+1`
-/

namespace A031073.P5077305214163046204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031073.P5077305214163046204

/-! ## A031073.P433950747331377931

`eq[5, A031067(A028310(n))]`
-/

namespace A031073.P433950747331377931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031073.P433950747331377931

/-! ## A031073.P4280969290528576298

`eq[5, A031067(A065033(2*n))]`
-/

namespace A031073.P4280969290528576298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031073.P4280969290528576298

/-! ## A031073.P4530509056049843800

`eq[5, A031067(A123108(2*n))]`
-/

namespace A031073.P4530509056049843800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031073.P4530509056049843800

/-! ## A031073.P8397839305853092146

`eq[5, A031067(A233583(n+1))]`
-/

namespace A031073.P8397839305853092146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031073.P8397839305853092146

/-!
# A031074: Position of n-th 6 in A031067.

The programs for A031074, there is no canonical definition to state claims against.
-/

/-! ## A031074.P5777678323541967453

`eq[6, A031067(n+1)]+1`
-/

namespace A031074.P5777678323541967453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031074.P5777678323541967453

/-! ## A031074.P11536153419919884706

`eq[6, A031067(A028310(n))]`
-/

namespace A031074.P11536153419919884706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031074.P11536153419919884706

/-! ## A031074.P963067915098082692

`eq[6, A031067(A065033(2*n))]`
-/

namespace A031074.P963067915098082692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031074.P963067915098082692

/-! ## A031074.P13053912100617343637

`eq[6, A031067(A123108(2*n))]`
-/

namespace A031074.P13053912100617343637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031074.P13053912100617343637

/-! ## A031074.P7678726920368304343

`eq[6, A031067(A233583(n+1))]`
-/

namespace A031074.P7678726920368304343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031074.P7678726920368304343

/-!
# A031075: Position of n-th 7 in A031067.

The programs for A031075, there is no canonical definition to state claims against.
-/

/-! ## A031075.P13052859954149699479

`eq[7, A031067(n+1)]+1`
-/

namespace A031075.P13052859954149699479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031075.P13052859954149699479

/-! ## A031075.P10376930315012957361

`eq[7, A031067(A028310(n))]`
-/

namespace A031075.P10376930315012957361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031075.P10376930315012957361

/-! ## A031075.P8868494342954924045

`A020725(eq[7, A031067(n+1)])`
-/

namespace A031075.P8868494342954924045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031075.P8868494342954924045

/-! ## A031075.P7954595442918003822

`A065475(eq[7, A031067(n+1)])`
-/

namespace A031075.P7954595442918003822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031075.P7954595442918003822

/-! ## A031075.P5364621691457078653

`eq[7, A031067(A233583(n+1))]`
-/

namespace A031075.P5364621691457078653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031075.P5364621691457078653

/-!
# A031076: Write n in base 9 and juxtapose.

The programs for A031076, there is no canonical definition to state claims against.
-/

/-! ## A031076.P12710951653156309934

`8-A031098(n+1)`
-/

namespace A031076.P12710951653156309934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A031098 (n + 1)

end

end A031076.P12710951653156309934

/-! ## A031076.P14095584277570907409

`A031098(n+1)/A057428(A064989(n+1))+8`
-/

namespace A031076.P14095584277570907409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031098 (n + 1) : ℚ) / (A057428 (A064989 (n + 1)).toNat : ℚ) + 8

end

end A031076.P14095584277570907409

/-! ## A031076.P7116046435745755894

`A031098(n+1)*A057428(3*n+4)+8`
-/

namespace A031076.P7116046435745755894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1) * A057428 (3 * n + 4) + 8

end

end A031076.P7116046435745755894

/-! ## A031076.P12168433036943107600

`A033307(comp[A084482(n+1)%A104946(3*n+5)])`
-/

namespace A031076.P12168433036943107600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084482 (n + 1)) (A104946 (3 * n + 5))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A031076.P12168433036943107600

/-! ## A031076.P2238090562682730788

`A255738(A097331(or(1, n)))+A054634(n)`
-/

namespace A031076.P2238090562682730788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (A097331 (Nat.lor 1 n)).toNat + A054634 n

end

end A031076.P2238090562682730788

/-!
# A031077: Position of n-th 0 in A031076.

The programs for A031077, there is no canonical definition to state claims against.
-/

/-! ## A031077.P12555712858835437198

`eq[0, A031076(n+1)]+1`
-/

namespace A031077.P12555712858835437198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031077.P12555712858835437198

/-! ## A031077.P6353343864746797486

`eq[0, A031076(A028310(n))]`
-/

namespace A031077.P6353343864746797486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031077.P6353343864746797486

/-! ## A031077.P3567076284156958107

`A020725(eq[0, A031076(n+1)])`
-/

namespace A031077.P3567076284156958107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031077.P3567076284156958107

/-! ## A031077.P10944569990112104207

`eq[0, A031076(A000007(n)+n)]`
-/

namespace A031077.P10944569990112104207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031077.P10944569990112104207

/-! ## A031077.P3704288570018862414

`eq[0, A031076(A138153(n+1))]`
-/

namespace A031077.P3704288570018862414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031077.P3704288570018862414

/-! ## A031077.P8807918609108166035

`eq[0, A031076(A065033(2*n))]`
-/

namespace A031077.P8807918609108166035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031077.P8807918609108166035

/-! ## A031077.P12507200886559771606

`eq[0, A031076(A233583(n+1))]`
-/

namespace A031077.P12507200886559771606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031077.P12507200886559771606

/-!
# A031078: Position of n-th 1 in A031076.

The programs for A031078, there is no canonical definition to state claims against.
-/

/-! ## A031078.P7211508594730617041

`eq[1, A031076(n+1)]+1`
-/

namespace A031078.P7211508594730617041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031078.P7211508594730617041

/-! ## A031078.P18331218295525292474

`eq[1, A031076(A000038(n)+n)]`
-/

namespace A031078.P18331218295525292474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031078.P18331218295525292474

/-! ## A031078.P6664196329815713092

`eq[n, A028310(n)*A031076(A028310(n))]`
-/

namespace A031078.P6664196329815713092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A031076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031078.P6664196329815713092

/-! ## A031078.P11942574767914207879

`eq[A031076(2-(A040000(n)-n)), A057427(n)]`
-/

namespace A031078.P11942574767914207879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 - (A040000 n - (n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031078.P11942574767914207879

/-! ## A031078.P14677875824713715470

`eq[A031076(A065033(2*n)), A057427(n)]`
-/

namespace A031078.P14677875824713715470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031078.P14677875824713715470

/-! ## A031078.P13312368150299203336

`eq[A031076(A123108(2*n)), A057427(n)]`
-/

namespace A031078.P13312368150299203336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031078.P13312368150299203336

/-! ## A031078.P7637862616388755323

`eq[A019427(n), A031076(A065033(n))]/2`
-/

namespace A031078.P7637862616388755323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A031078.P7637862616388755323

/-! ## A031078.P2337704688029305033

`eq[A019427(2*n), A031076(A065033(2*n))]`
-/

namespace A031078.P2337704688029305033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031078.P2337704688029305033

/-! ## A031078.P4886462896976370123

`A049084(p?[A000040(n+1)*A031076(n+1)])`
-/

namespace A031078.P4886462896976370123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031078.P4886462896976370123

/-!
# A031079: Position of n-th 2 in A031076.

The programs for A031079, there is no canonical definition to state claims against.
-/

/-! ## A031079.P2983086162100000093

`eq[2, A031076(n+1)]+1`
-/

namespace A031079.P2983086162100000093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031079.P2983086162100000093

/-! ## A031079.P15237171916977306453

`eq[6, A031098(n+1)]+1`
-/

namespace A031079.P15237171916977306453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031079.P15237171916977306453

/-! ## A031079.P15574532158217374362

`eq[2, A031076(A028310(n))]`
-/

namespace A031079.P15574532158217374362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P15574532158217374362

/-! ## A031079.P7590601458933648996

`A020725(eq[2, A031076(n+1)])`
-/

namespace A031079.P7590601458933648996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031079.P7590601458933648996

/-! ## A031079.P17217973196171572023

`eq[2, A031076(A000007(n)+n)]`
-/

namespace A031079.P17217973196171572023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P17217973196171572023

/-! ## A031079.P7986165009181880018

`eq[2, A031076(gcd(n, A008486(n)))]`
-/

namespace A031079.P7986165009181880018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P7986165009181880018

/-! ## A031079.P13435204036397062111

`eq[2, A031076(xor(n, A000007(n)))]`
-/

namespace A031079.P13435204036397062111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P13435204036397062111

/-! ## A031079.P12657221248593903152

`eq[2, A031076(2-(A040000(n)-n))]`
-/

namespace A031079.P12657221248593903152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 - (A040000 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P12657221248593903152

/-! ## A031079.P6629407320573637422

`eq[2, A031076(A065033(2*n))]`
-/

namespace A031079.P6629407320573637422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P6629407320573637422

/-! ## A031079.P11911289281601595440

`eq[2, A031076(A123108(2*n))]`
-/

namespace A031079.P11911289281601595440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031079.P11911289281601595440

/-!
# A031080: Position of n-th 3 in A031076.

The programs for A031080, there is no canonical definition to state claims against.
-/

/-! ## A031080.P16435528954568988498

`eq[3, A031076(n+1)]+1`
-/

namespace A031080.P16435528954568988498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031080.P16435528954568988498

/-! ## A031080.P2368225336866623965

`eq[3, A031076(A028310(n))]`
-/

namespace A031080.P2368225336866623965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031080.P2368225336866623965

/-! ## A031080.P3143484119353429262

`A020725(eq[3, A031076(n+1)])`
-/

namespace A031080.P3143484119353429262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031080.P3143484119353429262

/-! ## A031080.P1560214726235888805

`eq[3, A031076(A000007(n)+n)]`
-/

namespace A031080.P1560214726235888805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031080.P1560214726235888805

/-! ## A031080.P5551317106173763695

`eq[3, A031076(2-(A040000(n)-n))]`
-/

namespace A031080.P5551317106173763695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 - (A040000 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031080.P5551317106173763695

/-! ## A031080.P6388807589297076981

`eq[3, A031076(A065033(2*n))]`
-/

namespace A031080.P6388807589297076981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031080.P6388807589297076981

/-! ## A031080.P11708665218383761583

`eq[3, A031076(A233583(n+1))]`
-/

namespace A031080.P11708665218383761583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031080.P11708665218383761583

/-!
# A031081: Position of n-th 4 in A031076.

The programs for A031081, there is no canonical definition to state claims against.
-/

/-! ## A031081.P2371101119828973145

`eq[4, A031076(n+1)]+1`
-/

namespace A031081.P2371101119828973145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031081.P2371101119828973145

/-! ## A031081.P17988143246174428338

`eq[4, A031076(A028310(n))]`
-/

namespace A031081.P17988143246174428338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031081.P17988143246174428338

/-! ## A031081.P4946436806722866692

`A020725(eq[4, A031076(n+1)])`
-/

namespace A031081.P4946436806722866692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031081.P4946436806722866692

/-! ## A031081.P11092334497725318143

`A020725(eq[2, A031098(n+1)-2])`
-/

namespace A031081.P11092334497725318143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031081.P11092334497725318143

/-! ## A031081.P12632047423264283142

`A020725(eq[2, A031098(n+1)/2])`
-/

namespace A031081.P12632047423264283142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031098 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A031081.P12632047423264283142

/-! ## A031081.P13157837405551488880

`eq[4, A031076(A000007(n)+n)]`
-/

namespace A031081.P13157837405551488880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031081.P13157837405551488880

/-! ## A031081.P6730559377458002094

`eq[4, A031076(A065033(2*n))]`
-/

namespace A031081.P6730559377458002094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031081.P6730559377458002094

/-! ## A031081.P6274932224769385891

`eq[4, A031076(A123108(A005843(n)))]`
-/

namespace A031081.P6274932224769385891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A123108 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031081.P6274932224769385891

/-! ## A031081.P4648325811305474769

`eq[4, A031076(A233583(n+1))]`
-/

namespace A031081.P4648325811305474769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031081.P4648325811305474769

/-!
# A031082: Position of n-th 5 in A031076.

The programs for A031082, there is no canonical definition to state claims against.
-/

/-! ## A031082.P14079630813702432395

`eq[5, A031076(n+1)]+1`
-/

namespace A031082.P14079630813702432395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031082.P14079630813702432395

/-! ## A031082.P17536855761501512969

`eq[3, A031098(A028310(n))]`
-/

namespace A031082.P17536855761501512969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031082.P17536855761501512969

/-! ## A031082.P9775187372869006212

`A020725(eq[3, A031098(n+1)])`
-/

namespace A031082.P9775187372869006212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031082.P9775187372869006212

/-! ## A031082.P11033771517211640034

`A020725(eq[5, A031076(n+1)])`
-/

namespace A031082.P11033771517211640034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031082.P11033771517211640034

/-! ## A031082.P9572361191256421141

`eq[5, A031076(2-(A040000(n)-n))]`
-/

namespace A031082.P9572361191256421141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 - (A040000 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031082.P9572361191256421141

/-! ## A031082.P5097581791294272366

`eq[5, A031076(A138153(n+1))]`
-/

namespace A031082.P5097581791294272366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031082.P5097581791294272366

/-! ## A031082.P5069769888638101282

`eq[5, A031076(A065033(2*n))]`
-/

namespace A031082.P5069769888638101282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031082.P5069769888638101282

/-! ## A031082.P15346565777660423408

`eq[5, A031076(A233583(n+1))]`
-/

namespace A031082.P15346565777660423408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031082.P15346565777660423408

/-!
# A031083: Position of n-th 6 in A031076.

The programs for A031083, there is no canonical definition to state claims against.
-/

/-! ## A031083.P4227356052052961621

`eq[2, A031098(n+1)]+1`
-/

namespace A031083.P4227356052052961621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031083.P4227356052052961621

/-! ## A031083.P18155309675433844398

`eq[6, A031076(n+1)]+1`
-/

namespace A031083.P18155309675433844398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031083.P18155309675433844398

/-! ## A031083.P8231178195250281231

`eq[2, A031098(A028310(n))]`
-/

namespace A031083.P8231178195250281231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P8231178195250281231

/-! ## A031083.P1809307581718062682

`A020725(eq[2, A031098(n+1)])`
-/

namespace A031083.P1809307581718062682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031083.P1809307581718062682

/-! ## A031083.P14946555485449627462

`A153152(eq[6, A031076(n+1)])`
-/

namespace A031083.P14946555485449627462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031083.P14946555485449627462

/-! ## A031083.P846415708477382535

`eq[6, A031076(A000007(n)+n)]`
-/

namespace A031083.P846415708477382535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P846415708477382535

/-! ## A031083.P6137102955013038070

`eq[6, A031076(A000038(n)+n)]`
-/

namespace A031083.P6137102955013038070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P6137102955013038070

/-! ## A031083.P3461165666237672318

`eq[6, A031076(gcd(n, A008486(n)))]`
-/

namespace A031083.P3461165666237672318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P3461165666237672318

/-! ## A031083.P16644150180451292269

`eq[6, A031076(xor(n, A000007(n)))]`
-/

namespace A031083.P16644150180451292269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P16644150180451292269

/-! ## A031083.P4523581952875035640

`eq[6, A031076(2-(A040000(n)-n))]`
-/

namespace A031083.P4523581952875035640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 - (A040000 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P4523581952875035640

/-! ## A031083.P4064485121482139164

`eq[6, A031076(A065033(2*n))]`
-/

namespace A031083.P4064485121482139164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031083.P4064485121482139164

/-!
# A031084: Position of n-th 7 in A031076.

The programs for A031084, there is no canonical definition to state claims against.
-/

/-! ## A031084.P6000381300938998401

`eq[1, A031098(n+1)]+1`
-/

namespace A031084.P6000381300938998401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031084.P6000381300938998401

/-! ## A031084.P9480266868091718829

`eq[1, A031098(A028310(n))]`
-/

namespace A031084.P9480266868091718829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031084.P9480266868091718829

/-! ## A031084.P2945975987934217918

`A020725(eq[1, A031098(n+1)])`
-/

namespace A031084.P2945975987934217918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031084.P2945975987934217918

/-! ## A031084.P9948247712939733814

`A020725(eq[7, A031076(n+1)])`
-/

namespace A031084.P9948247712939733814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031084.P9948247712939733814

/-! ## A031084.P6798375235455243628

`A153152(eq[7, A031076(n+1)])`
-/

namespace A031084.P6798375235455243628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031084.P6798375235455243628

/-! ## A031084.P15578646216288367479

`eq[7, A031076(A138153(n+1))]`
-/

namespace A031084.P15578646216288367479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031084.P15578646216288367479

/-! ## A031084.P14861399881717661647

`eq[7, A031076(A060000(n+1))]`
-/

namespace A031084.P14861399881717661647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031084.P14861399881717661647

/-! ## A031084.P912695129073783487

`eq[7, A031076(A065033(2*n))]`
-/

namespace A031084.P912695129073783487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031084.P912695129073783487

/-! ## A031084.P7849967686196743427

`eq[7, A031076(A233583(n+1))]`
-/

namespace A031084.P7849967686196743427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031084.P7849967686196743427

/-!
# A031085: Position of n-th 8 in A031076.

The programs for A031085, there is no canonical definition to state claims against.
-/

/-! ## A031085.P12477999582589241341

`eq[8, A031076(n+1)]+1`
-/

namespace A031085.P12477999582589241341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031085.P12477999582589241341

/-! ## A031085.P5727091749502346739

`eq[0, A031098(A028310(n))]`
-/

namespace A031085.P5727091749502346739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031085.P5727091749502346739

/-! ## A031085.P11679075001391759652

`A020725(eq[0, A031098(n+1)])`
-/

namespace A031085.P11679075001391759652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031085.P11679075001391759652

/-! ## A031085.P8969642995496308768

`A020725(eq[8, A031076(n+1)])`
-/

namespace A031085.P8969642995496308768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031085.P8969642995496308768

/-! ## A031085.P1179052654346912065

`eq[8, A031076(A000007(n)+n)]`
-/

namespace A031085.P1179052654346912065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031085.P1179052654346912065

/-! ## A031085.P15006897059217446131

`eq[8, A031076(A138153(n+1))]`
-/

namespace A031085.P15006897059217446131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031085.P15006897059217446131

/-! ## A031085.P14593280806559669861

`eq[8, A031076(A065033(2*n))]`
-/

namespace A031085.P14593280806559669861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031085.P14593280806559669861

/-! ## A031085.P2227992246497915521

`eq[8, A031076(A233583(n+1))]`
-/

namespace A031085.P2227992246497915521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031085.P2227992246497915521

/-!
# A031087: Triangle T(n,k): write n in base 9, reverse order of digits.

The programs for A031087, there is no canonical definition to state claims against.
-/

/-! ## A031087.P3467653470278449765

`A007376(lt[A007376(n), A119385(n+2)])`
-/

namespace A031087.P3467653470278449765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031087.P3467653470278449765

/-! ## A031087.P1631161917979189297

`A031298(A004728(n)%A158671(n+2))`
-/

namespace A031087.P1631161917979189297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (Int.tmod (A004728 n) (A158671 (n + 2))).toNat

end

end A031087.P1631161917979189297

/-! ## A031087.P4824045683633395216

`A031298(A031286(n+1)^A007954(n+1)+n)`
-/

namespace A031087.P4824045683633395216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (SequenceMachineLib.roundAway ((A031286 (n + 1) : ℚ) ^ (A007954 (n + 1) : ℤ) + (n : ℚ))).toNat

end

end A031087.P4824045683633395216

/-!
# A031088: Position of n-th 0 in A031087.

The programs for A031088, there is no canonical definition to state claims against.
-/

/-! ## A031088.P10464453865988838426

`eq[0, A031087(n)]`
-/

namespace A031088.P10464453865988838426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031088.P10464453865988838426

/-! ## A031088.P4352572178875043464

`record[(n+1)*(1-A031087(n+1))]`
-/

namespace A031088.P4352572178875043464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A031087 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031088.P4352572178875043464

/-! ## A031088.P12525673432511509591

`record[n-A000203(n+1)*A031087(n)]`
-/

namespace A031088.P12525673432511509591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A031087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031088.P12525673432511509591

/-! ## A031088.P13005454243507124422

`lt[A031087(n), A031076(A031078(n+1))]`
-/

namespace A031088.P13005454243507124422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A031078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031088.P13005454243507124422

/-! ## A031088.P12403358577001218065

`lt[A031087(n), A031087(A031089(n+1))]`
-/

namespace A031088.P12403358577001218065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 (A031089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031088.P12403358577001218065

/-! ## A031088.P6904637333969227250

`lt[A031087(n), A031067(A031069(n+1))]`
-/

namespace A031088.P6904637333969227250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031067 (A031069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031088.P6904637333969227250

/-! ## A031088.P1035680020461906023

`record[n-A007090(n*A031087(n))]`
-/

namespace A031088.P1035680020461906023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007090 ((n : ℤ) * A031087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031088.P1035680020461906023

/-! ## A031088.P4542877849884598014

`record[n-A007091(n*A031087(n))]`
-/

namespace A031088.P4542877849884598014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007091 ((n : ℤ) * A031087 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031088.P4542877849884598014

/-!
# A031089: Position of n-th 1 in A031087.

The programs for A031089, there is no canonical definition to state claims against.
-/

/-! ## A031089.P15549592105010797822

`eq[1, A031087(n)]`
-/

namespace A031089.P15549592105010797822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031089.P15549592105010797822

/-! ## A031089.P9119708764507181748

`record[gcd(n+1, A031087(n+1)+n)]`
-/

namespace A031089.P9119708764507181748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A031087 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031089.P9119708764507181748

/-! ## A031089.P2818517219952773779

`record[gcd(A031087(n+1)+n, A326178(n))]`
-/

namespace A031089.P2818517219952773779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031087 (n + 1) + (n : ℤ)) (A326178 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031089.P2818517219952773779

/-! ## A031089.P9778376382239235277

`lt[(A031087(A028310(n))/2)², A031087(n)/2]`
-/

namespace A031089.P9778376382239235277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A031087 (A028310 n).toNat : ℚ) / 2) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031087 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031089.P9778376382239235277

/-! ## A031089.P10377446431487942551

`lt[(A031087(n%A080036(n))/2)², A031087(n)/2]`
-/

namespace A031089.P10377446431487942551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A031087 (Int.tmod (n : ℤ) (A080036 n)).toNat : ℚ) / 2) ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031087 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031089.P10377446431487942551

/-!
# A031090: Position of n-th 2 in A031087.

The programs for A031090, there is no canonical definition to state claims against.
-/

/-! ## A031090.P14950959338518779316

`eq[2, A031087(n)]`
-/

namespace A031090.P14950959338518779316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031090.P14950959338518779316

/-! ## A031090.P4626618266629856108

`lt[lcm(2, A031087(n+1)-2), 1]+1`
-/

namespace A031090.P4626618266629856108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A031087 (n + 1) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A031090.P4626618266629856108

/-! ## A031090.P4373456574949371681

`lt[lcm(8, A031087(A028310(n))-2), 1]`
-/

namespace A031090.P4373456574949371681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A031087 (A028310 n).toNat - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031090.P4373456574949371681

/-!
# A031091: Position of n-th 3 in A031087.

The programs for A031091, there is no canonical definition to state claims against.
-/

/-! ## A031091.P3474448738499530066

`eq[3, A031087(n)]`
-/

namespace A031091.P3474448738499530066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031091.P3474448738499530066

/-! ## A031091.P14683286706271716607

`lt[2, tan(A031087(n+1)/2)]+1`
-/

namespace A031091.P14683286706271716607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((A031087 (n + 1) : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A031091.P14683286706271716607

/-! ## A031091.P4775781244312793605

`lt[2, tan(A031087(-xor(n-1, -1))/2)]`
-/

namespace A031091.P4775781244312793605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((A031087 (-Int.xor ((n : ℤ) - 1) (-1)).toNat : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031091.P4775781244312793605

/-! ## A031091.P10641875007376560731

`lt[A022912(n+1), tan(A031087(n)/2)]`
-/

namespace A031091.P10641875007376560731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022912 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((A031087 n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031091.P10641875007376560731

/-! ## A031091.P8802003073130761357

`lt[2^(A031087(n)/2-1), A031087(A028310(n))/2]`
-/

namespace A031091.P8802003073130761357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A031087 n : ℚ) / 2 - 1 : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031087 (A028310 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031091.P8802003073130761357

/-!
# A031092: Position of n-th 4 in A031087.

The programs for A031092, there is no canonical definition to state claims against.
-/

/-! ## A031092.P6005746357962285492

`eq[4, A031087(n)]`
-/

namespace A031092.P6005746357962285492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031092.P6005746357962285492

/-! ## A031092.P6928661835071521151

`lt[A022912(n+1), tan(A031087(n)²²)]`
-/

namespace A031092.P6928661835071521151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022912 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((A031087 n ^ 2) ^ 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031092.P6928661835071521151

/-! ## A031092.P7900533780678753095

`lt[(tan(A031087(n)/2)+1)*A181123(n+1), n]`
-/

namespace A031092.P7900533780678753095
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan ((A031087 n : ℚ) / 2 : ℝ) + 1) * (A181123 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031092.P7900533780678753095

/-! ## A031092.P1281665482325002020

`lt[(tan(A031087(n)/2)+1)*A191060(n+1), n]`
-/

namespace A031092.P1281665482325002020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan ((A031087 n : ℚ) / 2 : ℝ) + 1) * (A191060 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031092.P1281665482325002020

/-! ## A031092.P15796448031064162264

`lt[(tan(A031087(n)/2)+1)*A038241(n), n]`
-/

namespace A031092.P15796448031064162264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan ((A031087 n : ℚ) / 2 : ℝ) + 1) * (A038241 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031092.P15796448031064162264

/-!
# A031093: Position of the n-th 5 in A031087.

The programs for A031093, there is no canonical definition to state claims against.
-/

/-! ## A031093.P14640261490033630987

`eq[5, A031087(n)]`
-/

namespace A031093.P14640261490033630987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031093.P14640261490033630987

/-!
# A031094: Position of n-th 6 in A031087.

The programs for A031094, there is no canonical definition to state claims against.
-/

/-! ## A031094.P1634281704340994289

`eq[6, A031087(n)]`
-/

namespace A031094.P1634281704340994289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031094.P1634281704340994289

/-! ## A031094.P15614759275205802854

`lt[tan(A031087(n)²²)+n, A289207(n)]`
-/

namespace A031094.P15614759275205802854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((A031087 n ^ 2) ^ 2 : ℝ) + (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031094.P15614759275205802854

/-! ## A031094.P13784069450061977192

`lt[(tan(A031087(n)²²)+1)*A186689(n+1), 1]`
-/

namespace A031094.P13784069450061977192
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.tan ((A031087 n ^ 2) ^ 2 : ℝ) + 1) * (A186689 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031094.P13784069450061977192

/-!
# A031095: Position of n-th 7 in A031087.

The programs for A031095, there is no canonical definition to state claims against.
-/

/-! ## A031095.P11816795630429382078

`eq[7, A031087(n)]`
-/

namespace A031095.P11816795630429382078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031095.P11816795630429382078

/-!
# A031096: Position of n-th 8 in A031087.

The programs for A031096, there is no canonical definition to state claims against.
-/

/-! ## A031096.P2207571968086606852

`lt[7, A031087(n)]`
-/

namespace A031096.P2207571968086606852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031096.P2207571968086606852

/-! ## A031096.P17037877199437072483

`eq[8, A031087(n+1)]+1`
-/

namespace A031096.P17037877199437072483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031096.P17037877199437072483

/-! ## A031096.P16532089180401138185

`A000027(eq[8, A031087(n)])`
-/

namespace A031096.P16532089180401138185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031096.P16532089180401138185

/-! ## A031096.P1581131206219111236

`eq[8, A031087(A028310(n))]`
-/

namespace A031096.P1581131206219111236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031096.P1581131206219111236

/-! ## A031096.P9220800912130590759

`eq[A031087(n), A040012(n)]`
-/

namespace A031096.P9220800912130590759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P9220800912130590759

/-! ## A031096.P16456712438432954168

`eq[A031087(n), A115291(n)]`
-/

namespace A031096.P16456712438432954168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P16456712438432954168

/-! ## A031096.P9567024758748119685

`eq[A031087(n), A329507(n)]`
-/

namespace A031096.P9567024758748119685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P9567024758748119685

/-! ## A031096.P4977868978539955473

`eq[A031087(n), A329511(n)]`
-/

namespace A031096.P4977868978539955473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P4977868978539955473

/-! ## A031096.P11143277847373498872

`eq[A031087(n), A329513(n)]`
-/

namespace A031096.P11143277847373498872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P11143277847373498872

/-! ## A031096.P11336208928402326134

`eq[A031087(n), A094326(n+1)]`
-/

namespace A031096.P11336208928402326134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P11336208928402326134

/-! ## A031096.P9253224020029269783

`eq[A031087(n), A260023(n+1)]`
-/

namespace A031096.P9253224020029269783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P9253224020029269783

/-! ## A031096.P11927071067743313037

`eq[A031087(n), A072990(n+2)]`
-/

namespace A031096.P11927071067743313037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072990 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P11927071067743313037

/-! ## A031096.P1457841718799792016

`eq[A031087(n), A154041(n+4)]`
-/

namespace A031096.P1457841718799792016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154041 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031096.P1457841718799792016

/-!
# A031098: Write n in base 9, then complement each digit (d -> 8-d) and juxtapose.

The programs for A031098, there is no canonical definition to state claims against.
-/

/-! ## A031098.P15812873870529208480

`8-A031076(n+1)`
-/

namespace A031098.P15812873870529208480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A031076 (n + 1)

end

end A031098.P15812873870529208480

/-! ## A031098.P15711395939493799655

`A031310(A031076(n+1)+A019433(2*(n+1)))`
-/

namespace A031098.P15711395939493799655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031310 (A031076 (n + 1) + A019433 (2 * (n + 1))).toNat

end

end A031098.P15711395939493799655

/-! ## A031098.P8909415147866240741

`a(n-1)-Δ[A031076(A065033(2*n))]` with `a(0)=7`
-/

namespace A031098.P8909415147866240741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031098.P8909415147866240741

/-! ## A031098.P1265467554567890651

`a(n-1)-Δ[A031076(A123108(2*n))]` with `a(0)=7`
-/

namespace A031098.P1265467554567890651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A031098.P1265467554567890651

/-! ## A031098.P67448568355658495

`A031076(n+1)*A057428(3*n+4)+8`
-/

namespace A031098.P67448568355658495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (n + 1) * A057428 (3 * n + 4) + 8

end

end A031098.P67448568355658495

