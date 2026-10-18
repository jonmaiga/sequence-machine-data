import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A182600: Run length of the n-th run of Fibonacci composites.

The programs for A182600, there is no canonical definition to state claims against.
-/

/-! ## A182600.P15791877099506571325

`A001605(n+4)-A001605(n+3)-1`
-/

namespace A182600.P15791877099506571325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 4) - A001605 (n + 3) - 1

end

end A182600.P15791877099506571325

/-! ## A182600.P16868212825216735836

`Δ[A083668(n+2)]-1`
-/

namespace A182600.P16868212825216735836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A182600.P16868212825216735836

/-! ## A182600.P742260994177883875

`Δ[A339173(n+2)]-1`
-/

namespace A182600.P742260994177883875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A182600.P742260994177883875

/-! ## A182600.P10140704249322474992

`Δ[A001605(n+3)]-1`
-/

namespace A182600.P10140704249322474992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A182600.P10140704249322474992

/-! ## A182600.P4539327561497938968

`Δ[A069744(n+3)]-1`
-/

namespace A182600.P4539327561497938968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A182600.P4539327561497938968

/-!
# A182602: Smallest Fibonacci number in a sequence of at least n consecutive composite Fibonacci numbers.

The programs for A182602, there is no canonical definition to state claims against.
-/

/-! ## A182602.P17604720033627846087

`A000045(A182601(n+1))`
-/

namespace A182602.P17604720033627846087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A182601 (n + 1)).toNat

end

end A182602.P17604720033627846087

/-! ## A182602.P8433540571094446715

`A212804(A182601(n+1)+1)`
-/

namespace A182602.P8433540571094446715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A182601 (n + 1) + 1).toNat

end

end A182602.P8433540571094446715

/-! ## A182602.P3431956976896652016

`A295725(A182601(n+1)+1)`
-/

namespace A182602.P3431956976896652016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (A182601 (n + 1) + 1).toNat

end

end A182602.P3431956976896652016

/-! ## A182602.P8424992951644831619

`A324969(A182601(n+1)+1)`
-/

namespace A182602.P8424992951644831619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A182601 (n + 1) + 1).toNat

end

end A182602.P8424992951644831619

/-! ## A182602.P6297775374793990316

`A052959(A182601(n+1)-1)`
-/

namespace A182602.P6297775374793990316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 (A182601 (n + 1) - 1).toNat

end

end A182602.P6297775374793990316

/-!
# A182603: Number of conjugacy classes in GL(n,8).

The programs for A182603, there is no canonical definition to state claims against.
-/

/-! ## A182603.P16780855455350985014

`A319753(eq[8, A025581(n)])`
-/

namespace A182603.P16780855455350985014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182603.P16780855455350985014

/-! ## A182603.P14021140352053745624

`A319753(eq[9, A193739(n)])`
-/

namespace A182603.P14021140352053745624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182603.P14021140352053745624

/-! ## A182603.P12391076544550140016

`A319753(A155212(n+5)-1)`
-/

namespace A182603.P12391076544550140016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (n + 5) - 1).toNat

end

end A182603.P12391076544550140016

/-! ## A182603.P11891414189088656369

`A319753(A000217(n+9)-9)`
-/

namespace A182603.P11891414189088656369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000217 (n + 9) - 9).toNat

end

end A182603.P11891414189088656369

/-! ## A182603.P10005407253463335891

`A319753(eq[9, A004736(n+1)])`
-/

namespace A182603.P10005407253463335891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182603.P10005407253463335891

/-! ## A182603.P3253706094863604790

`A319753(A000096(n+7)+n+1)`
-/

namespace A182603.P3253706094863604790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A182603.P3253706094863604790

/-!
# A182604: Number of conjugacy classes in GL(n,9).

The programs for A182604, there is no canonical definition to state claims against.
-/

/-! ## A182604.P4763681523776510898

`A319753(A155212(n+6)-2)`
-/

namespace A182604.P4763681523776510898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 (n + 6) - 2).toNat

end

end A182604.P4763681523776510898

/-! ## A182604.P5325165803854305463

`A319753(A000217(n+10)-10)`
-/

namespace A182604.P5325165803854305463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000217 (n + 10) - 10).toNat

end

end A182604.P5325165803854305463

/-! ## A182604.P10607042353396570685

`A319753(A000096(n+8)+n+1)`
-/

namespace A182604.P10607042353396570685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A182604.P10607042353396570685

/-! ## A182604.P4035368405710371151

`A319753(Δ[n²]+A133263(n+8)+6)`
-/

namespace A182604.P4035368405710371151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A133263 (n + 8) + 6)).toNat

end

end A182604.P4035368405710371151

/-! ## A182604.P18362012003019907566

`record[A319753(A056000(n)%A002203(n))]`
-/

namespace A182604.P18362012003019907566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (Int.tmod (A056000 n) (A002203 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182604.P18362012003019907566

/-! ## A182604.P71787885781479690

`A319753(A004768(n+4)+A000124(n+2))`
-/

namespace A182604.P71787885781479690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A004768 (n + 4) + A000124 (n + 2)).toNat

end

end A182604.P71787885781479690

/-!
# A182605: Number of conjugacy classes in GL(n,11).

The programs for A182605, there is no canonical definition to state claims against.
-/

/-! ## A182605.P12551146277228211386

`A319753(eq[11, A025581(n)])`
-/

namespace A182605.P12551146277228211386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182605.P12551146277228211386

/-! ## A182605.P5615933210303881947

`A319753(eq[11, A195664(n)])`
-/

namespace A182605.P5615933210303881947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182605.P5615933210303881947

/-! ## A182605.P2402821183717035737

`A319753(eq[12, A193739(n)])`
-/

namespace A182605.P2402821183717035737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182605.P2402821183717035737

/-! ## A182605.P1131640514666558394

`A319753(eq[12, A004736(n+1)])`
-/

namespace A182605.P1131640514666558394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182605.P1131640514666558394

/-! ## A182605.P8199557510880121155

`A319753(Δ[A000292(n+10)]+n)`
-/

namespace A182605.P8199557510880121155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A182605.P8199557510880121155

/-!
# A182606: Number of conjugacy classes in GL(n,13).

The programs for A182606, there is no canonical definition to state claims against.
-/

/-! ## A182606.P17591361401726122791

`A319753(eq[13, A025581(n)])`
-/

namespace A182606.P17591361401726122791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182606.P17591361401726122791

/-! ## A182606.P14768341975509645592

`A319753(eq[13, A195664(n)])`
-/

namespace A182606.P14768341975509645592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182606.P14768341975509645592

/-! ## A182606.P7312113072960824235

`A319753(eq[14, A193739(n)])`
-/

namespace A182606.P7312113072960824235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182606.P7312113072960824235

/-! ## A182606.P16145821716296687513

`A319753(eq[14, A004736(n+1)])`
-/

namespace A182606.P16145821716296687513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182606.P16145821716296687513

/-!
# A182607: Number of conjugacy classes in GL(n,16).

The programs for A182607, there is no canonical definition to state claims against.
-/

/-! ## A182607.P1253747947978127524

`A319753(eq[16, A025581(n)])`
-/

namespace A182607.P1253747947978127524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182607.P1253747947978127524

/-! ## A182607.P17462522483118840316

`A319753(eq[16, A195664(n)])`
-/

namespace A182607.P17462522483118840316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182607.P17462522483118840316

/-! ## A182607.P2001420564443020228

`A319753(eq[17, A193739(n)])`
-/

namespace A182607.P2001420564443020228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182607.P2001420564443020228

/-! ## A182607.P12284858811175716773

`A319753(eq[33, A099375(n)])`
-/

namespace A182607.P12284858811175716773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182607.P12284858811175716773

/-! ## A182607.P347831787292652113

`A319753(eq[17, A004736(n+1)])`
-/

namespace A182607.P347831787292652113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182607.P347831787292652113

/-!
# A182608: Number of conjugacy classes in GL(n,17).

The programs for A182608, there is no canonical definition to state claims against.
-/

/-! ## A182608.P198832428264987831

`A319753(eq[17, A025581(n)])`
-/

namespace A182608.P198832428264987831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182608.P198832428264987831

/-! ## A182608.P1847775157058732536

`A319753(eq[18, A193739(n)])`
-/

namespace A182608.P1847775157058732536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182608.P1847775157058732536

/-! ## A182608.P14078826878352688144

`A319753(eq[18, A004736(n+1)])`
-/

namespace A182608.P14078826878352688144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182608.P14078826878352688144

/-!
# A182609: Number of conjugacy classes in GL(n,19).

The programs for A182609, there is no canonical definition to state claims against.
-/

/-! ## A182609.P1061332730363725553

`A319753(eq[19, A025581(n)])`
-/

namespace A182609.P1061332730363725553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182609.P1061332730363725553

/-!
# A182610: Number of conjugacy classes in GL(n,23).

The programs for A182610, there is no canonical definition to state claims against.
-/

/-! ## A182610.P16088053002150452468

`A018112(4*n)-A243473(A218372(5*n+1))`
-/

namespace A182610.P16088053002150452468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018112 (4 * n) - A243473 (A218372 (5 * n + 1)).toNat

end

end A182610.P16088053002150452468

/-!
# A182613: Number of integers k such that floor((r^n)/k)=n, where r = golden ratio = (1+sqrt(5))/2.

The programs for A182613, there is no canonical definition to state claims against.
-/

/-! ## A182613.P698113624823311850

`A065648(n)%A278387(n+1)`
-/

namespace A182613.P698113624823311850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065648 n) (A278387 (n + 1))

end

end A182613.P698113624823311850

/-! ## A182613.P11723723488308596640

`A065648(n)%A312544(A278339(n))`
-/

namespace A182613.P11723723488308596640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065648 n) (A312544 (A278339 n).toNat)

end

end A182613.P11723723488308596640

/-! ## A182613.P11723906666020052589

`A344635(n)+A185116(A283042(2*n+1))`
-/

namespace A182613.P11723906666020052589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344635 n + A185116 (A283042 (2 * n + 1)).toNat

end

end A182613.P11723906666020052589

/-! ## A182613.P2491500247546620587

`A000931(A187829(n+1)-A106348(2*n))`
-/

namespace A182613.P2491500247546620587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A187829 (n + 1) - A106348 (2 * n)).toNat

end

end A182613.P2491500247546620587

/-! ## A182613.P15745479004317025600

`A326525(n)+A010060(A026622(n))`
-/

namespace A182613.P15745479004317025600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326525 n + A010060 (A026622 n).toNat

end

end A182613.P15745479004317025600

/-!
# A182614: Least k such that floor(k/r^n)=n, where r = golden ratio = (1+sqrt(5))/2.

The programs for A182614, the canonical program `A182614.P10153390122333264557` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182614 has offset 1).

The definition of A182614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182614.P10153390122333264557

`A128439(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182614

/-- `A128439(n+1)+1` -/
def P10153390122333264557.Spec : Prop :=
  ∀ n, P10153390122333264557.a n = A182614 (n + 1)

theorem P10153390122333264557.correct : P10153390122333264557.Spec := by
  intro n
  simp only [A182614, Nat.add_sub_cancel]

end A182614

/-! ## A182614.P4359627911605438574

`A146005(n+1)+char[2*n]`
-/

namespace A182614.P4359627911605438574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182614.P4359627911605438574

namespace A182614

/-- `A146005(n+1)+char[2*n]` -/
def P4359627911605438574.Spec : Prop :=
  ∀ n, P4359627911605438574.a n = A182614 (n + 1)

end A182614

/-! ## A182614.P17542740372149377081

`∑[Δ[n*A000032(n)]+(-1)^n]`
-/

namespace A182614.P17542740372149377081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182614.P17542740372149377081

namespace A182614

/-- `∑[Δ[n*A000032(n)]+(-1)^n]` -/
def P17542740372149377081.Spec : Prop :=
  ∀ n, P17542740372149377081.a n = A182614 (n + 1)

end A182614

/-! ## A182614.P731993795101264073

`log2(gcd(2, n))+(n+1)*A000032(n+1)`
-/

namespace A182614.P731993795101264073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + ((n + 1 : ℤ) * A000032 (n + 1) : ℝ)

end

end A182614.P731993795101264073

namespace A182614

/-- `log2(gcd(2, n))+(n+1)*A000032(n+1)` -/
def P731993795101264073.Spec : Prop :=
  ∀ n, P731993795101264073.a n = (A182614 (n + 1) : ℝ)

end A182614

/-! ## A182614.P14391695482820206840

`A323812(n+2)+A136376(n+1)`
-/

namespace A182614.P14391695482820206840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323812 (n + 2) + A136376 (n + 1)

end

end A182614.P14391695482820206840

namespace A182614

/-- `A323812(n+2)+A136376(n+1)` -/
def P14391695482820206840.Spec : Prop :=
  ∀ n, P14391695482820206840.a n = A182614 (n + 1)

end A182614

/-! ## A182614.P17159997970957383049

`floor((n+1)*sqrt(A000032(2*(n+1))))+1`
-/

namespace A182614.P17159997970957383049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (A000032 (2 * (n + 1)) : ℝ)⌋ + 1

end

end A182614.P17159997970957383049

namespace A182614

/-- `floor((n+1)*sqrt(A000032(2*(n+1))))+1` -/
def P17159997970957383049.Spec : Prop :=
  ∀ n, P17159997970957383049.a n = A182614 (n + 1)

end A182614

/-! ## A182614.P14138841115664568865

`ceil(∏[ϕ*(n+1)]/n!)`
-/

namespace A182614.P14138841115664568865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ j ∈ Finset.range (n + 1), f1 j) / (Nat.factorial n : ℝ)⌉

end

end A182614.P14138841115664568865

namespace A182614

/-- `ceil(∏[ϕ*(n+1)]/n!)` -/
def P14138841115664568865.Spec : Prop :=
  ∀ n, P14138841115664568865.a n = A182614 (n + 1)

end A182614

/-! ## A182614.P7858194892907718495

`floor(∏[ϕ*(n+1)]/n!)+1`
-/

namespace A182614.P7858194892907718495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ j ∈ Finset.range (n + 1), f1 j) / (Nat.factorial n : ℝ)⌋ + 1

end

end A182614.P7858194892907718495

namespace A182614

/-- `floor(∏[ϕ*(n+1)]/n!)+1` -/
def P7858194892907718495.Spec : Prop :=
  ∀ n, P7858194892907718495.a n = A182614 (n + 1)

end A182614

/-!
# A182615: Greatest k such that floor(k/r^n)=n, where r = golden mean = (1+sqrt(5))/2.

The programs for A182615, the canonical program `A182615.P18328539032038545886` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182615 has offset 1).

The definition of A182615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182615.P18328539032038545886

`floor(sqrt(A000032(2*(n+1))*(n+2)²))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182615

/-- `floor(sqrt(A000032(2*(n+1))*(n+2)²))` -/
def P18328539032038545886.Spec : Prop :=
  ∀ n, P18328539032038545886.a n = A182615 (n + 1)

theorem P18328539032038545886.correct : P18328539032038545886.Spec := by
  intro n
  simp only [A182615, Nat.add_sub_cancel]

end A182615

/-! ## A182615.P1107072306312956498

`A128440(2*(n+1)²)`
-/

namespace A182615.P1107072306312956498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128440 (2 * (n + 1) ^ 2)

end

end A182615.P1107072306312956498

namespace A182615

/-- `A128440(2*(n+1)²)` -/
def P1107072306312956498.Spec : Prop :=
  ∀ n, P1107072306312956498.a n = A182615 (n + 1)

end A182615

/-! ## A182615.P12094265091745757016

`floor((n+2)!*∏[ϕ/(n+1)])`
-/

namespace A182615.P12094265091745757016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio / (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2) : ℝ) * (∏ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A182615.P12094265091745757016

namespace A182615

/-- `floor((n+2)!*∏[ϕ/(n+1)])` -/
def P12094265091745757016.Spec : Prop :=
  ∀ n, P12094265091745757016.a n = A182615 (n + 1)

end A182615

/-! ## A182615.P5490079922124361322

`floor((n+2)!/∏[(n+1)/ϕ])`
-/

namespace A182615.P5490079922124361322
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2) : ℝ) / (∏ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A182615.P5490079922124361322

namespace A182615

/-- `floor((n+2)!/∏[(n+1)/ϕ])` -/
def P5490079922124361322.Spec : Prop :=
  ∀ n, P5490079922124361322.a n = A182615 (n + 1)

end A182615

/-!
# A182616: Number of partitions of 2n that contain odd parts.

The programs for A182616, there is no canonical definition to state claims against.
-/

/-! ## A182616.P16365278080880076499

`A000041(2*n)-A000041(n)`
-/

namespace A182616.P16365278080880076499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000041 n

end

end A182616.P16365278080880076499

/-! ## A182616.P6861176662456311370

`A086543(2*n)`
-/

namespace A182616.P6861176662456311370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n)

end

end A182616.P6861176662456311370

/-! ## A182616.P6906927247712596225

`A347448(2*n)`
-/

namespace A182616.P6906927247712596225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347448 (2 * n)

end

end A182616.P6906927247712596225

/-! ## A182616.P4172114872316360993

`record[A347448(n)/(-1)^n]`
-/

namespace A182616.P4172114872316360993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347448 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182616.P4172114872316360993

/-! ## A182616.P2651006207848886220

`A365825(2*n)+n-1`
-/

namespace A182616.P2651006207848886220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365825 (2 * n) + ((n : ℤ) - 1)

end

end A182616.P2651006207848886220

/-! ## A182616.P14638093014202095070

`record[and((-1)^n, A347448(n+1))]`
-/

namespace A182616.P14638093014202095070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A347448 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182616.P14638093014202095070

/-! ## A182616.P7343011517960592373

`A304710(n)+A122768(n)`
-/

namespace A182616.P7343011517960592373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304710 n + A122768 n

end

end A182616.P7343011517960592373

/-! ## A182616.P13914979411410900858

`A366527(n)+A282893(n)`
-/

namespace A182616.P13914979411410900858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366527 n + A282893 n

end

end A182616.P13914979411410900858

/-! ## A182616.P11079864901325090364

`A058696(n)-A000041(n)`
-/

namespace A182616.P11079864901325090364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000041 n

end

end A182616.P11079864901325090364

/-! ## A182616.P12592021647566242176

`A232623(n)-A002865(n)`
-/

namespace A182616.P12592021647566242176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232623 n - A002865 n

end

end A182616.P12592021647566242176

/-! ## A182616.P3507802519688144083

`A366527(n)+A282892(2*n)`
-/

namespace A182616.P3507802519688144083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366527 n + A282892 (2 * n)

end

end A182616.P3507802519688144083

/-! ## A182616.P595432553126677964

`A000065(2*n)-A000065(n)`
-/

namespace A182616.P595432553126677964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) - A000065 n

end

end A182616.P595432553126677964

/-! ## A182616.P16287919695399312550

`A058696(n)-A035363(2*n)`
-/

namespace A182616.P16287919695399312550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A035363 (2 * n)

end

end A182616.P16287919695399312550

/-! ## A182616.P15624222520048769617

`A052810(2*n)-A052810(n)`
-/

namespace A182616.P15624222520048769617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (2 * n) - A052810 n

end

end A182616.P15624222520048769617

/-! ## A182616.P11432713504477310165

`A282892(2*n)+A047967(2*n)`
-/

namespace A182616.P11432713504477310165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (2 * n) + A047967 (2 * n)

end

end A182616.P11432713504477310165

/-! ## A182616.P4544372415330629998

`record[A000041(n)-A000041(A029578(n))]`
-/

namespace A182616.P4544372415330629998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000041 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182616.P4544372415330629998

/-! ## A182616.P7335533713326917439

`A057427(n)+A058696(n)-A052810(n)`
-/

namespace A182616.P7335533713326917439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A058696 n - A052810 n)

end

end A182616.P7335533713326917439

/-! ## A182616.P17284002068967266170

`A000712(n)+A304710(n)-A000041(n)`
-/

namespace A182616.P17284002068967266170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + (A304710 n - A000041 n)

end

end A182616.P17284002068967266170

/-! ## A182616.P6760207541020877382

`A058696(n)-A249914(n)/A035294(n)`
-/

namespace A182616.P6760207541020877382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058696 n : ℚ) - (A249914 n : ℚ) / (A035294 n : ℚ)

end

end A182616.P6760207541020877382

/-! ## A182616.P9423205377107901278

`sqrt(A001255(2*n))-A119620(2*n)`
-/

namespace A182616.P9423205377107901278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (2 * n) : ℝ) - (A119620 (2 * n) : ℝ)

end

end A182616.P9423205377107901278

/-!
# A182617: Number of toothpicks in a toothpick spiral around n cells on hexagonal net.

The programs for A182617, there is no canonical definition to state claims against.
-/

/-! ## A182617.P9780601402548239774

`ceil(record[sqrt(lcm(2, 3*n))])+2*n`
-/

namespace A182617.P9780601402548239774
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 2 (3 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + (2 * n : ℤ)

end

end A182617.P9780601402548239774

/-! ## A182617.P821582865266171628

`comp[round(n²/12)+1+n]+n`
-/

namespace A182617.P821582865266171628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A182617.P821582865266171628

/-! ## A182617.P12846870143588860292

`abs(1-A121149(n))`
-/

namespace A182617.P12846870143588860292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A121149 n|

end

end A182617.P12846870143588860292

/-! ## A182617.P15891321101949286952

`round(log(A036217(2*n)))`
-/

namespace A182617.P15891321101949286952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A036217 (2 * n) : ℝ))

end

end A182617.P15891321101949286952

/-! ## A182617.P15291195999220563538

`abs(1-(A036496(n)+Δ[n²]))`
-/

namespace A182617.P15291195999220563538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A182617.P15291195999220563538

/-!
# A182618: Number of new grid points that are covered by the toothpicks added at n-th-stage to the toothpick spiral of A182617.

The programs for A182618, there is no canonical definition to state claims against.
-/

/-! ## A182618.P2430112913678265469

`(Δ[A265413(3*n)]+1)/2`
-/

namespace A182618.P2430112913678265469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A182618.P2430112913678265469

/-! ## A182618.P16580650822294510594

`Δ[A121149(n)]+floor(1/(n+1))`
-/

namespace A182618.P16580650822294510594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊1 / (n + 1 : ℚ)⌋

end

end A182618.P16580650822294510594

/-! ## A182618.P8051304514783761472

`A028815(Δ[A036496(n)])`
-/

namespace A182618.P8051304514783761472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (f1 (n + 1) - f1 n).toNat

end

end A182618.P8051304514783761472

/-! ## A182618.P14279883085617593827

`A037229(Δ[A036496(n)])`
-/

namespace A182618.P14279883085617593827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037229 (f1 (n + 1) - f1 n).toNat

end

end A182618.P14279883085617593827

/-! ## A182618.P166228905530847200

`A002183(Δ[A121149(n)])`
-/

namespace A182618.P166228905530847200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (f1 (n + 1) - f1 n).toNat

end

end A182618.P166228905530847200

/-! ## A182618.P14431836166187045210

`A003586(Δ[A121149(n)])`
-/

namespace A182618.P14431836166187045210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (f1 (n + 1) - f1 n).toNat

end

end A182618.P14431836166187045210

/-! ## A182618.P1850199368717771642

`A006446(Δ[A121149(n)])`
-/

namespace A182618.P1850199368717771642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (f1 (n + 1) - f1 n).toNat

end

end A182618.P1850199368717771642

/-! ## A182618.P7981251731334544890

`A075159(Δ[A121149(n)])`
-/

namespace A182618.P7981251731334544890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075159 (f1 (n + 1) - f1 n).toNat

end

end A182618.P7981251731334544890

/-! ## A182618.P12897122763401311193

`A117791(Δ[A121149(n)])`
-/

namespace A182618.P12897122763401311193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117791 (f1 (n + 1) - f1 n).toNat

end

end A182618.P12897122763401311193

/-! ## A182618.P258556597970159439

`A121152(Δ[A121149(n)])`
-/

namespace A182618.P258556597970159439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121152 (f1 (n + 1) - f1 n).toNat

end

end A182618.P258556597970159439

/-!
# A182619: Number of vertices that are connected to two edges in a spiral without holes constructed with n hexagons.

The programs for A182619, there is no canonical definition to state claims against.
-/

/-! ## A182619.P1166475623646876617

`comp[round(n²/12)]-n`
-/

namespace A182619.P1166475623646876617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A182619.P1166475623646876617

/-! ## A182619.P4773446410496383838

`ceil(∑[asin(tanh(a(n-1)))])` with `a(0)=6`
-/

namespace A182619.P4773446410496383838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [6] fun n f1 =>
  Real.arcsin (Real.tanh (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A182619.P4773446410496383838

/-! ## A182619.P17278504092701673567

`-xor(floor(sqrt(12*n+4))+3, -1)`
-/

namespace A182619.P17278504092701673567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.sqrt (12 * n + 4) + 3 : ℤ) (-1)

end

end A182619.P17278504092701673567

/-! ## A182619.P1917830699182358963

`floor(2*(sqrt(3*n+2-and(1, n))+2))`
-/

namespace A182619.P1917830699182358963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.sqrt ((3 * n : ℤ) + (2 - (Nat.land 1 n : ℤ)) : ℝ) + 2)⌋

end

end A182619.P1917830699182358963

/-! ## A182619.P5535110874504391450

`(A216522(n)+40)%34`
-/

namespace A182619.P5535110874504391450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216522 n + 40) 34

end

end A182619.P5535110874504391450

/-!
# A182620: Triangle T(n,k) read by rows in which row n lists the divisors of n, written in base 2.

The programs for A182620, there is no canonical definition to state claims against.
-/

/-! ## A182620.P4625246890133065165

`A007088(A027750(n+1))`
-/

namespace A182620.P4625246890133065165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A027750 (n + 1)).toNat

end

end A182620.P4625246890133065165

/-! ## A182620.P10963809279678945775

`A007088(A263730(n+2)+1)`
-/

namespace A182620.P10963809279678945775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A263730 (n + 2) + 1).toNat

end

end A182620.P10963809279678945775

/-! ## A182620.P319131160637617235

`A185544(2*A027750(n+1))`
-/

namespace A182620.P319131160637617235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A027750 (n + 1)).toNat

end

end A182620.P319131160637617235

/-! ## A182620.P17995995116832729042

`A007088(lcm(A008836(n+1), A233773(n+1)))`
-/

namespace A182620.P17995995116832729042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A008836 (n + 1)) (A233773 (n + 1)))

end

end A182620.P17995995116832729042

/-! ## A182620.P17697535684781228707

`A139707(A139708(A027750(A139706(A139708(n+1)))))`
-/

namespace A182620.P17697535684781228707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (A139708 (A027750 (A139706 (A139708 (n + 1)).toNat).toNat).toNat).toNat

end

end A182620.P17697535684781228707

/-!
# A182621: a(n) is the concatenation of the binary numbers that are the divisors of n written in base 2.

The programs for A182621, there is no canonical definition to state claims against.
-/

/-! ## A182621.P11333599974966989147

`A007088(A182622(n+1))`
-/

namespace A182621.P11333599974966989147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A182622 (n + 1)).toNat

end

end A182621.P11333599974966989147

/-! ## A182621.P7953245251986801735

`A185544(2*A182622(n+1))`
-/

namespace A182621.P7953245251986801735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A182622 (n + 1)).toNat

end

end A182621.P7953245251986801735

/-! ## A182621.P16729428616622039755

`A185544(A182622(n+1)+A182622(n+1))`
-/

namespace A182621.P16729428616622039755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A182622 (n + 1) + A182622 (n + 1)).toNat

end

end A182621.P16729428616622039755

/-! ## A182621.P4802804103233012003

`A257831(A037278(n+1))`
-/

namespace A182621.P4802804103233012003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 (A037278 (n + 1)).toNat

end

end A182621.P4802804103233012003

/-! ## A182621.P6398172867305750453

`A257831(A390599(n+1))`
-/

namespace A182621.P6398172867305750453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257831 (A390599 (n + 1)).toNat

end

end A182621.P6398172867305750453

/-!
# A182622: a(n) is the number whose binary representation is the concatenation of the divisors of n written in base 2.

The programs for A182622, there is no canonical definition to state claims against.
-/

/-! ## A182622.P16201776425127920223

`A080719(A037278(n+1))`
-/

namespace A182622.P16201776425127920223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A037278 (n + 1)).toNat

end

end A182622.P16201776425127920223

/-! ## A182622.P15283045168524884070

`A080719(A390599(n+1))`
-/

namespace A182622.P15283045168524884070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A390599 (n + 1)).toNat

end

end A182622.P15283045168524884070

/-! ## A182622.P1538263194698804872

`A080719(A243361(n+1)^A048766(n))`
-/

namespace A182622.P1538263194698804872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (SequenceMachineLib.roundAway ((A243361 (n + 1) : ℚ) ^ (A048766 n : ℤ))).toNat

end

end A182622.P1538263194698804872

/-! ## A182622.P11411464802774657081

`A080719(A243361(n+1)^A214081(n))`
-/

namespace A182622.P11411464802774657081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (SequenceMachineLib.roundAway ((A243361 (n + 1) : ℚ) ^ (A214081 n : ℤ))).toNat

end

end A182622.P11411464802774657081

/-!
# A182623: Numbers n with property that there is a number m such that if we concatenate the binary representations of the divisors of m in increasing order we get the binary representation of n.

The programs for A182623, there is no canonical definition to state claims against.
-/

/-! ## A182623.P18247576867577339759

`or(A008578(n+1), A014600(A171389(n)))`
-/

namespace A182623.P18247576867577339759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008578 (n + 1)) (A014600 (A171389 n).toNat)

end

end A182623.P18247576867577339759

/-! ## A182623.P11812979277859429973

`or(A014600(A171389(n)), A324050(n+1))`
-/

namespace A182623.P11812979277859429973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014600 (A171389 n).toNat) (A324050 (n + 1))

end

end A182623.P11812979277859429973

/-! ## A182623.P13404321180115509512

`or(A014600(A171389(n)), A158611(n+2))`
-/

namespace A182623.P13404321180115509512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014600 (A171389 n).toNat) (A158611 (n + 2))

end

end A182623.P13404321180115509512

/-! ## A182623.P16924845953885677811

`A182622(A008578(n+1))%A059744(3*n+5)`
-/

namespace A182623.P16924845953885677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182622 (A008578 (n + 1)).toNat) (A059744 (3 * n + 5))

end

end A182623.P16924845953885677811

/-!
# A182624: Primes in A182623.

The programs for A182624, there is no canonical definition to state claims against.
-/

/-! ## A182624.P11754128188386818113

`p?[lcm(A003415(n), A004760(n+2))]`
-/

namespace A182624.P11754128188386818113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003415 n) (A004760 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A182624.P11754128188386818113

/-! ## A182624.P6804615797479915084

`∑{p}[p?[A004755(A000040(n+1))]², #]`
-/

namespace A182624.P6804615797479915084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A000040 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A182624.P6804615797479915084

/-! ## A182624.P13182001238800552933

`p?[A001065(n+1)*A004755(n+1)]`
-/

namespace A182624.P13182001238800552933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) * A004755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182624.P13182001238800552933

/-! ## A182624.P1318304797766005838

`∩[A096068(A000040(n+1)), A000040(n+4)]`
-/

namespace A182624.P1318304797766005838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096068 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182624.P1318304797766005838

/-! ## A182624.P15384999612142350864

`p?[A182623(n+1)]`
-/

namespace A182624.P15384999612142350864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182624.P15384999612142350864

/-!
# A182625: Numbers n for which Fibonacci(n) mod n is a Fibonacci number.

The programs for A182625, there is no canonical definition to state claims against.
-/

/-! ## A182625.P1389451534823031430

`lt[A286327(A002708(n+1)), 2]+1`
-/

namespace A182625.P1389451534823031430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 (A002708 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182625.P1389451534823031430

/-!
# A182626: a(n) = Hypergeometric([-n, n], [1], 2).

The programs for A182626, the canonical program `A182626.P6575455807757680894` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182626 has offset 0).

The definition of A182626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182626.P10284703883153607923

`∑[A112478(n)*A165747(n)]`
-/

namespace A182626.P10284703883153607923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112478 n * A165747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182626.P10284703883153607923

namespace A182626

/-- `∑[A112478(n)*A165747(n)]` -/
def P10284703883153607923.Spec : Prop :=
  ∀ n, P10284703883153607923.a n = A182626 n

end A182626

/-! ## A182626.P6575455807757680894

`or(1, A002002(n)*A033999(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A182626

/-- `or(1, A002002(n)*A033999(n))` -/
def P6575455807757680894.Spec : Prop :=
  ∀ n, P6575455807757680894.a n = A182626 n

theorem P6575455807757680894.correct : P6575455807757680894.Spec := by
  intro n
  simp only [A182626]

end A182626

/-! ## A182626.P14368701990411371160

`∑[A004280(n+1)*A103137(n)]`
-/

namespace A182626.P14368701990411371160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) * A103137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182626.P14368701990411371160

namespace A182626

/-- `∑[A004280(n+1)*A103137(n)]` -/
def P14368701990411371160.Spec : Prop :=
  ∀ n, P14368701990411371160.a n = A182626 n

end A182626

/-! ## A182626.P5602665861369402200

`A026003(comp[2*(n+1)])*A033999(n)`
-/

namespace A182626.P5602665861369402200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A033999 n

end

end A182626.P5602665861369402200

namespace A182626

/-- `A026003(comp[2*(n+1)])*A033999(n)` -/
def P5602665861369402200.Spec : Prop :=
  ∀ n, P5602665861369402200.a n = A182626 n

end A182626

/-! ## A182626.P14268357317651041676

`(A176479(n)-A047781(n))*A033999(n)`
-/

namespace A182626.P14268357317651041676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176479 n - A047781 n) * A033999 n

end

end A182626.P14268357317651041676

namespace A182626

/-- `(A176479(n)-A047781(n))*A033999(n)` -/
def P14268357317651041676.Spec : Prop :=
  ∀ n, P14268357317651041676.a n = A182626 n

end A182626

/-! ## A182626.P3192051333807180930

`A008288(2*n²)/(2*char[2*n]-1)`
-/

namespace A182626.P3192051333807180930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008288 (2 * n ^ 2) : ℚ) / (((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) - 1 : ℚ)

end

end A182626.P3192051333807180930

namespace A182626

/-- `A008288(2*n²)/(2*char[2*n]-1)` -/
def P3192051333807180930.Spec : Prop :=
  ∀ n, P3192051333807180930.a n = (A182626 n : ℚ)

end A182626

/-! ## A182626.P4888718888383500820

`A008288(A001105(n))*A033999(n)`
-/

namespace A182626.P4888718888383500820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A001105 n).toNat * A033999 n

end

end A182626.P4888718888383500820

namespace A182626

/-- `A008288(A001105(n))*A033999(n)` -/
def P4888718888383500820.Spec : Prop :=
  ∀ n, P4888718888383500820.a n = A182626 n

end A182626

/-! ## A182626.P4694928964498263857

`A008288(A004275(A002522(n)))*A033999(n)`
-/

namespace A182626.P4694928964498263857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A004275 (A002522 n).toNat).toNat * A033999 n

end

end A182626.P4694928964498263857

namespace A182626

/-- `A008288(A004275(A002522(n)))*A033999(n)` -/
def P4694928964498263857.Spec : Prop :=
  ∀ n, P4694928964498263857.a n = A182626 n

end A182626

/-!
# A182627: Total number of digits in binary expansion of all divisors of n.

The programs for A182627, the canonical program `A182627.P12201670798180404974` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182627 has offset 1).

The definition of A182627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182627.P6896217194502199670

`A093653(n+1)+A226590(n+1)`
-/

namespace A182627.P6896217194502199670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1) + A226590 (n + 1)

end

end A182627.P6896217194502199670

namespace A182627

/-- `A093653(n+1)+A226590(n+1)` -/
def P6896217194502199670.Spec : Prop :=
  ∀ n, P6896217194502199670.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P12201670798180404974

`∑{d}[n+1, floor(log2(#))+1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A182627

/-- `∑{d}[n+1, floor(log2(#))+1]` -/
def P12201670798180404974.Spec : Prop :=
  ∀ n, (P12201670798180404974.a n : ℤ) = A182627 (n + 1)

theorem P12201670798180404974.correct : P12201670798180404974.Spec := by
  intro n
  simp only [A182627, Nat.add_sub_cancel]

end A182627

/-! ## A182627.P830828252526720158

`A226590(n+1)+∑{d}[n+1, A000120(#)]`
-/

namespace A182627.P830828252526720158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226590 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000120 d

end

end A182627.P830828252526720158

namespace A182627

/-- `A226590(n+1)+∑{d}[n+1, A000120(#)]` -/
def P830828252526720158.Spec : Prop :=
  ∀ n, P830828252526720158.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P11633821400791695152

`A226590(n+1)+A292257(n+1)+A000120(n+1)`
-/

namespace A182627.P11633821400791695152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226590 (n + 1) + (A292257 (n + 1) + A000120 (n + 1))

end

end A182627.P11633821400791695152

namespace A182627

/-- `A226590(n+1)+A292257(n+1)+A000120(n+1)` -/
def P11633821400791695152.Spec : Prop :=
  ∀ n, P11633821400791695152.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P10329165593157819392

`A074400(n+1)+A226590(n+1)-A318446(n+1)`
-/

namespace A182627.P10329165593157819392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (A226590 (n + 1) - A318446 (n + 1))

end

end A182627.P10329165593157819392

namespace A182627

/-- `A074400(n+1)+A226590(n+1)-A318446(n+1)` -/
def P10329165593157819392.Spec : Prop :=
  ∀ n, P10329165593157819392.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P11442098772927407292

`A226590(n+1)+∑{d}[n+1, A000005(#)*A297115((n+1)/#)]`
-/

namespace A182627.P11442098772927407292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226590 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000005 d * A297115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A182627.P11442098772927407292

namespace A182627

/-- `A226590(n+1)+∑{d}[n+1, A000005(#)*A297115((n+1)/#)]` -/
def P11442098772927407292.Spec : Prop :=
  ∀ n, P11442098772927407292.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P10970478093538796303

`A226590(n+1)+∑{d}[n+1, A001222(A278222(#))]`
-/

namespace A182627.P10970478093538796303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226590 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A001222 (A278222 d).toNat

end

end A182627.P10970478093538796303

namespace A182627

/-- `A226590(n+1)+∑{d}[n+1, A001222(A278222(#))]` -/
def P10970478093538796303.Spec : Prop :=
  ∀ n, P10970478093538796303.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P10164327559446414194

`round(log2(A182622(n+1)+1))`
-/

namespace A182627.P10164327559446414194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A182622 (n + 1) + 1 : ℝ))

end

end A182627.P10164327559446414194

namespace A182627

/-- `round(log2(A182622(n+1)+1))` -/
def P10164327559446414194.Spec : Prop :=
  ∀ n, P10164327559446414194.a n = A182627 (n + 1)

end A182627

/-! ## A182627.P12733409908104871000

`∑{digits}[A182621(n+1), A008620(#)]`
-/

namespace A182627.P12733409908104871000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008620 x).sum

end

end A182627.P12733409908104871000

namespace A182627

/-- `∑{digits}[A182621(n+1), A008620(#)]` -/
def P12733409908104871000.Spec : Prop :=
  ∀ n, P12733409908104871000.a n = A182627 (n + 1)

end A182627

/-!
# A182628: Triangle T(n,k) read by rows in which row n lists the number of digits of the binary expansion of the divisors of n.

The programs for A182628, there is no canonical definition to state claims against.
-/

/-! ## A182628.P12978953621745900239

`∑{digits}[A182620(n+1), #!]`
-/

namespace A182628.P12978953621745900239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A182628.P12978953621745900239

/-! ## A182628.P573468618491330583

`floor(log2(A027750(n+1)))+1`
-/

namespace A182628.P573468618491330583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A027750 (n + 1)).toNat + 1

end

end A182628.P573468618491330583

/-! ## A182628.P876007530139541382

`A070939(A027750(n+1))`
-/

namespace A182628.P876007530139541382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A027750 (n + 1)).toNat

end

end A182628.P876007530139541382

/-! ## A182628.P17136793419855383157

`A029837(A027750(n+1)+1)`
-/

namespace A182628.P17136793419855383157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A027750 (n + 1) + 1).toNat

end

end A182628.P17136793419855383157

/-! ## A182628.P17053970999427906562

`A000523(2*A027750(n+1))`
-/

namespace A182628.P17053970999427906562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A027750 (n + 1)).toNat

end

end A182628.P17053970999427906562

/-! ## A182628.P17239807034338425316

`A119387(2*A027750(n+1))`
-/

namespace A182628.P17239807034338425316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * A027750 (n + 1)).toNat

end

end A182628.P17239807034338425316

/-! ## A182628.P15441282122819503819

`A340251(4*A027750(n+1))`
-/

namespace A182628.P15441282122819503819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340251 (4 * A027750 (n + 1)).toNat

end

end A182628.P15441282122819503819

/-! ## A182628.P5639593001924788464

`A005555(floor(log2(A027750(n+1))))`
-/

namespace A182628.P5639593001924788464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (Nat.log 2 (A027750 (n + 1)).toNat)

end

end A182628.P5639593001924788464

/-! ## A182628.P3906317220492835372

`∑{digits}[A182620(n+1), A007318(#)]`
-/

namespace A182628.P3906317220492835372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A182628.P3906317220492835372

/-! ## A182628.P262680453424377974

`∑{digits}[A182620(n+1), A029022(#)]`
-/

namespace A182628.P262680453424377974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029022 x).sum

end

end A182628.P262680453424377974

/-! ## A182628.P6102706687108473974

`∑{digits}[A182620(n+1), A090847(#)]`
-/

namespace A182628.P6102706687108473974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090847 x).sum

end

end A182628.P6102706687108473974

/-! ## A182628.P1178467509010995538

`∑{e}[A176893(A263730(n+2)+1), #]`
-/

namespace A182628.P1178467509010995538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176893 (A263730 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A182628.P1178467509010995538

/-! ## A182628.P2231072614981815454

`∑{digits}[A182620(n+1), A182620(#+1)]`
-/

namespace A182628.P2231072614981815454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A182620 (x + 1)).sum

end

end A182628.P2231072614981815454

/-!
# A182629: Total number of largest parts in all partitions of n that contain at least two distinct parts.

The programs for A182629, there is no canonical definition to state claims against.
-/

/-! ## A182629.P10015258106975165998

`A046746(n)-∑{d}[n, #]`
-/

namespace A182629.P10015258106975165998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A182629.P10015258106975165998

/-! ## A182629.P16119532842372913940

`A046746(n)-A245092(A004273(n))`
-/

namespace A182629.P16119532842372913940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A245092 (A004273 n).toNat

end

end A182629.P16119532842372913940

/-! ## A182629.P8404873144071976832

`A046746(n)-A245092(record[A006369(n)])`
-/

namespace A182629.P8404873144071976832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A245092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182629.P8404873144071976832

/-! ## A182629.P10352831262573165467

`A046746(A028310(n))-A000203(A028310(n))`
-/

namespace A182629.P10352831262573165467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (A028310 n).toNat - A000203 (A028310 n).toNat

end

end A182629.P10352831262573165467

/-! ## A182629.P13030583822566143124

`A046746(A123108(2*n))-A000203(A123108(2*n))`
-/

namespace A182629.P13030583822566143124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (A123108 (2 * n)).toNat - A000203 (A123108 (2 * n)).toNat

end

end A182629.P13030583822566143124

/-! ## A182629.P12120902963140113218

`A182984(n)-A182977(n)`
-/

namespace A182629.P12120902963140113218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182984 n - A182977 n

end

end A182629.P12120902963140113218

/-! ## A182629.P7593129883007977937

`A046746(n)-A319083(A000124(n))`
-/

namespace A182629.P7593129883007977937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A319083 (A000124 n).toNat

end

end A182629.P7593129883007977937

/-! ## A182629.P9274225921885367352

`A046746(n)-A323243(A005940(n+1))`
-/

namespace A182629.P9274225921885367352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n - A323243 (A005940 (n + 1)).toNat

end

end A182629.P9274225921885367352

/-!
# A182630: T(n,k) = A002024(k+1)*n + A002262(k), n >= 0, k >= 0, read by antidiagonals.

The programs for A182630, there is no canonical definition to state claims against.
-/

/-! ## A182630.P10608078004953766398

`A125585(∑[char[∑[n]]]²-n)-1`
-/

namespace A182630.P10608078004953766398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A182630.P10608078004953766398

/-! ## A182630.P13777521548912525711

`A077264(∑[2*n]%comp[∑[n]])`
-/

namespace A182630.P13777521548912525711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A182630.P13777521548912525711

/-! ## A182630.P1186646799638493058

`A077264(∑[char[∑[n]]]²-(n+1))`
-/

namespace A182630.P1186646799638493058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A182630.P1186646799638493058

/-! ## A182630.P12224882558426238365

`C(2, C(2, n²))*A077264(A061579(n))`
-/

namespace A182630.P12224882558426238365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) * A077264 (A061579 n).toNat

end

end A182630.P12224882558426238365

/-! ## A182630.P6524008475111620720

`A007318(C(2, n))*A077264(A061579(n))`
-/

namespace A182630.P6524008475111620720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A077264 (A061579 n).toNat

end

end A182630.P6524008475111620720

/-! ## A182630.P4071117818642337612

`A077264(A061579(n))^A000041(C(2, n))`
-/

namespace A182630.P4071117818642337612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077264 (A061579 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A182630.P4071117818642337612

/-! ## A182630.P12632216078441953944

`A077264(A061579(n))+A008683(8*(n+1))`
-/

namespace A182630.P12632216078441953944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077264 (A061579 n).toNat + A008683 (8 * (n + 1))

end

end A182630.P12632216078441953944

/-! ## A182630.P8872103681122629220

`and(1, A000040(n+1))*A077264(A061579(n))`
-/

namespace A182630.P8872103681122629220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A077264 (A061579 n).toNat

end

end A182630.P8872103681122629220

/-! ## A182630.P7645747886496347543

`A000041(C(2, n+1))*A077264(A061579(n))`
-/

namespace A182630.P7645747886496347543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A077264 (A061579 n).toNat

end

end A182630.P7645747886496347543

/-! ## A182630.P11866502952172827708

`A077264(A061579(n))^A014963(∑[n+1])`
-/

namespace A182630.P11866502952172827708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077264 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A182630.P11866502952172827708

/-!
# A182631: Tetrahedron in which T(i,j,k) is the next number congruent to k mod j of the level j in the slice i, with 0 <= i, 1 <= j, 0 <= k < j.

The programs for A182631, there is no canonical definition to state claims against.
-/

/-! ## A182631.P2227714253525280469

`A056558(n)+A056559(n)*A194848(n)`
-/

namespace A182631.P2227714253525280469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n + A056559 n * A194848 n

end

end A182631.P2227714253525280469

/-!
# A182632: Toothpick sequence on the hexagonal net starting from a node.

The programs for A182632, there is no canonical definition to state claims against.
-/

/-! ## A182632.P3723890540471694720

`3*A182634(n)`
-/

namespace A182632.P3723890540471694720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182634 n

end

end A182632.P3723890540471694720

/-! ## A182632.P2126826580486946920

`∑[A182633(n)]`
-/

namespace A182632.P2126826580486946920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182632.P2126826580486946920

/-! ## A182632.P9132107929958920359

`∑[3*A182635(n)]`
-/

namespace A182632.P9132107929958920359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182632.P9132107929958920359

/-! ## A182632.P14982455162694910718

`∑[char[1]+2*A161645(n)]`
-/

namespace A182632.P14982455162694910718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A161645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182632.P14982455162694910718

/-! ## A182632.P13272584584502546712

`3*ceil(2/3*A161644(n))`
-/

namespace A182632.P13272584584502546712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(2 : ℚ) / 3 * (A161644 n : ℚ)⌉

end

end A182632.P13272584584502546712

/-!
# A182633: Number of toothpicks added at n-th stage in the toothpick structure of A182632.

The programs for A182633, there is no canonical definition to state claims against.
-/

/-! ## A182633.P12400332746720262800

`3*A182635(n)`
-/

namespace A182633.P12400332746720262800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A182635 n

end

end A182633.P12400332746720262800

/-! ## A182633.P9117085754195785430

`char[1]+2*A161645(n)`
-/

namespace A182633.P9117085754195785430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A161645 n

end

end A182633.P9117085754195785430

/-! ## A182633.P12991344877586099122

`Δ[A182632(log2(ceil(2^(n-1))))]`
-/

namespace A182633.P12991344877586099122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182632 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182633.P12991344877586099122

/-! ## A182633.P365175429548059327

`3*Δ[A182634(floor(n²/(n+1)))]`
-/

namespace A182633.P365175429548059327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A182633.P365175429548059327

/-! ## A182633.P8728936428434062591

`A008585(A182635(n))`
-/

namespace A182633.P8728936428434062591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A182635 n).toNat

end

end A182633.P8728936428434062591

/-!
# A182634: Toothpick sequence on hexagonal net starting at the vertex of an infinite 120-degree wedge.

The programs for A182634, there is no canonical definition to state claims against.
-/

/-! ## A182634.P10654868555850162747

`A182632(n)/3`
-/

namespace A182634.P10654868555850162747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182632 n : ℚ) / 3

end

end A182634.P10654868555850162747

/-! ## A182634.P1928887743427860790

`∑[A182635(n)]`
-/

namespace A182634.P1928887743427860790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182634.P1928887743427860790

/-! ## A182634.P11651469344750661284

`∑[A182633(n)/3]`
-/

namespace A182634.P11651469344750661284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182633 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182634.P11651469344750661284

/-! ## A182634.P14060991404636099805

`ceil(2/3*A161644(n))`
-/

namespace A182634.P14060991404636099805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A161644 n : ℚ)⌉

end

end A182634.P14060991404636099805

/-! ## A182634.P12366218177821416318

`∑[ceil(2*A161645(n)/3)]`
-/

namespace A182634.P12366218177821416318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A161645 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182634.P12366218177821416318

/-!
# A182635: Number of toothpicks added at n-th stage to the toothpick structure of A182634.

The programs for A182635, there is no canonical definition to state claims against.
-/

/-! ## A182635.P10471236997976127663

`A182633(n)/3`
-/

namespace A182635.P10471236997976127663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182633 n : ℚ) / 3

end

end A182635.P10471236997976127663

/-! ## A182635.P13071174119776590704

`ceil(2*A161645(n)/3)`
-/

namespace A182635.P13071174119776590704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A161645 n : ℚ) / 3⌉

end

end A182635.P13071174119776590704

/-! ## A182635.P11143992910992075715

`Δ[A182634(log2(ceil(2^(n-1))))]`
-/

namespace A182635.P11143992910992075715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182635.P11143992910992075715

/-! ## A182635.P9957153169428778894

`Δ[A182632(log2(ceil(2^(n-1))))]/3`
-/

namespace A182635.P9957153169428778894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182632 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A182635.P9957153169428778894

/-! ## A182635.P11586527178979159443

`A004396(A161645(n))`
-/

namespace A182635.P11586527178979159443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A161645 n).toNat

end

end A182635.P11586527178979159443

/-!
# A182636: Numbers whose Wythoff representation has odd length.

The programs for A182636, there is no canonical definition to state claims against.
-/

/-! ## A182636.P4602866349223374462

`eq[0, A102364(n)%2]+1`
-/

namespace A182636.P4602866349223374462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102364 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182636.P4602866349223374462

/-! ## A182636.P9608834076033471858

`lt[0, -a(A026242(n))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P9608834076033471858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  -f2 (A026242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A182636.P9608834076033471858

/-! ## A182636.P2848049494404946065

`comp[A182637(n+1)-1]+1`
-/

namespace A182636.P2848049494404946065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182637 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182636.P2848049494404946065

/-! ## A182636.P15985436937058230192

`eq[1, A000007(a(A026242(n)))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P15985436937058230192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  A000007 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P15985436937058230192

/-! ## A182636.P4298018704367917407

`eq[1, A000034(a(A026242(n)))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P4298018704367917407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  A000034 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P4298018704367917407

/-! ## A182636.P8111833887336832235

`eq[1, A000360(a(A026242(n)))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P8111833887336832235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  A000360 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P8111833887336832235

/-! ## A182636.P18374417870855988562

`eq[1, A000607(a(A026242(n)))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P18374417870855988562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  A000607 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P18374417870855988562

/-! ## A182636.P5200104005850858779

`eq[1, A001281(a(A026242(n)))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A182636.P5200104005850858779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  A001281 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P5200104005850858779

/-! ## A182636.P8783688320263193357

`lt[A008683(a(A026242(n))+2), 1]` with `a(0)=1, a(1)=0`
-/

namespace A182636.P8783688320263193357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A008683 (f1 (A026242 n).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182636.P8783688320263193357

/-! ## A182636.P6377949736090699938

`eq[2, A020639(a(A026242(n))+1)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A182636.P6377949736090699938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f2 =>
  A020639 (f2 (A026242 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182636.P6377949736090699938

/-!
# A182637: Numbers whose Wythoff representation has even length.

The programs for A182637, there is no canonical definition to state claims against.
-/

/-! ## A182637.P14422734989811218662

`eq[1, A102364(n)%2]+1`
-/

namespace A182637.P14422734989811218662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102364 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A182637.P14422734989811218662

/-! ## A182637.P3739998687106283666

`lt[-a(A026242(n)), 1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A182637.P3739998687106283666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  -f1 (A026242 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182637.P3739998687106283666

/-! ## A182637.P2829834424829915570

`comp[A182636(n+1)-1]+1`
-/

namespace A182637.P2829834424829915570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182636 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182637.P2829834424829915570

/-! ## A182637.P5530503657887677091

`lt[0, A102364(abs(1-n))%2]`
-/

namespace A182637.P5530503657887677091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102364 |1 - (n : ℤ)|.toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A182637.P5530503657887677091

/-! ## A182637.P8039804729350655264

`eq[1, A102364(abs(n-1))%2]`
-/

namespace A182637.P8039804729350655264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102364 |(n : ℤ) - 1|.toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P8039804729350655264

/-! ## A182637.P8846900611180936629

`eq[1, A000007(a(A026242(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A182637.P8846900611180936629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000007 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P8846900611180936629

/-! ## A182637.P5713035634321969488

`eq[2, A000038(a(A026242(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A182637.P5713035634321969488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000038 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P5713035634321969488

/-! ## A182637.P18125637868482125436

`eq[1, A000034(a(A026242(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A182637.P18125637868482125436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000034 (f2 (A026242 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P18125637868482125436

/-! ## A182637.P2974841474225153729

`eq[1, A008683(a(A026242(n))+2)]` with `a(0)=0, a(1)=0`
-/

namespace A182637.P2974841474225153729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A008683 (f2 (A026242 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P2974841474225153729

/-! ## A182637.P9244206113470555487

`eq[2, A020639(a(A026242(n))+1)]` with `a(0)=0, a(1)=6`
-/

namespace A182637.P9244206113470555487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  A020639 (f2 (A026242 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182637.P9244206113470555487

/-!
# A182640: a(n)=n+floor(r*a(n-1)), where r = golden ratio = (1+sqrt(5))/2, a(0)=0, a(1)=1.

The programs for A182640, the canonical program `A182640.P2114174624957267665` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182640 has offset 0).

The definition of A182640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182640.P2114174624957267665

`floor(ϕ*a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A182640

/-- `floor(ϕ*a(n-1)+n)` -/
def P2114174624957267665.Spec : Prop :=
  ∀ n, P2114174624957267665.a n = A182640 n

theorem P2114174624957267665.correct : P2114174624957267665.Spec := by
  intro n
  simp only [A182640]

end A182640

/-! ## A182640.P12813420836107488349

`n-ceil(-ϕ*a(n-1))` with `a(0)=0`
-/

namespace A182640.P12813420836107488349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌈-(Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A182640.P12813420836107488349

namespace A182640

/-- `n-ceil(-ϕ*a(n-1))` -/
def P12813420836107488349.Spec : Prop :=
  ∀ n, P12813420836107488349.a n = A182640 n

end A182640

/-! ## A182640.P15062265537738588086

`floor(a(n-1)/(ϕ-1)+n)` with `a(0)=0`
-/

namespace A182640.P15062265537738588086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1) + (n : ℝ)⌋

end

end A182640.P15062265537738588086

namespace A182640

/-- `floor(a(n-1)/(ϕ-1)+n)` -/
def P15062265537738588086.Spec : Prop :=
  ∀ n, P15062265537738588086.a n = A182640 n

end A182640

/-! ## A182640.P5743346419137976425

`floor(n-a(n-1)/(1-ϕ))` with `a(0)=0`
-/

namespace A182640.P5743346419137976425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℝ) - (a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A182640.P5743346419137976425

namespace A182640

/-- `floor(n-a(n-1)/(1-ϕ))` -/
def P5743346419137976425.Spec : Prop :=
  ∀ n, P5743346419137976425.a n = A182640 n

end A182640

/-! ## A182640.P3602883989042379637

`ceil(ϕ*a(n-1)+n-1)` with `a(0)=0, a(1)=1`
-/

namespace A182640.P3602883989042379637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

end

end A182640.P3602883989042379637

namespace A182640

/-- `ceil(ϕ*a(n-1)+n-1)` -/
def P3602883989042379637.Spec : Prop :=
  ∀ n, P3602883989042379637.a n = A182640 n

end A182640

/-! ## A182640.P13354851357639650752

`floor(2*n-(n-ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A182640.P13354851357639650752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * n : ℝ) - ((n : ℝ) - Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A182640.P13354851357639650752

namespace A182640

/-- `floor(2*n-(n-ϕ*a(n-1)))` -/
def P13354851357639650752.Spec : Prop :=
  ∀ n, P13354851357639650752.a n = A182640 n

end A182640

/-!
# A182641: Array T(n,k)=[k*r^n]-[r*[kr^(n-1)]], where r = golden mean = (1+sqrt(5))/2, for k>=1, for n>=2; [ ]=floor.

The programs for A182641, there is no canonical definition to state claims against.
-/

/-! ## A182641.P15151798332744421377

`A093658(A063752(n+3)+A046531(n+1))`
-/

namespace A182641.P15151798332744421377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093658 (A063752 (n + 3) + A046531 (n + 1)).toNat

end

end A182641.P15151798332744421377

/-! ## A182641.P10850345159855585100

`A123517(A292325(n)+1)`
-/

namespace A182641.P10850345159855585100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123517 (A292325 n + 1).toNat

end

end A182641.P10850345159855585100

/-! ## A182641.P2153769005371634853

`A178619(A100226(n))%3`
-/

namespace A182641.P2153769005371634853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178619 (A100226 n).toNat) 3

end

end A182641.P2153769005371634853

/-! ## A182641.P15001589780475995154

`A260941(Δ[A260956(n)]*A260934(n+1))`
-/

namespace A182641.P15001589780475995154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260941 ((f1 (n + 1) - f1 n) * A260934 (n + 1)).toNat

end

end A182641.P15001589780475995154

/-! ## A182641.P14636730786118574499

`A276729(A278495(n+1)^A276727(n))`
-/

namespace A182641.P14636730786118574499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (SequenceMachineLib.roundAway ((A278495 (n + 1) : ℚ) ^ (A276727 n : ℤ))).toNat

end

end A182641.P14636730786118574499

/-!
# A182642: Subsequence of A014217 (n=2,3,5,6,8,9,11,12,...).

The programs for A182642, there is no canonical definition to state claims against.
-/

/-! ## A182642.P14046889931268325003

`floor(ϕ^∑[A000034(A119016(n))])`
-/

namespace A182642.P14046889931268325003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A119016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A182642.P14046889931268325003

/-! ## A182642.P13395703321311353072

`A014217(∑[A000034(A119016(n))])`
-/

namespace A182642.P13395703321311353072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A119016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182642.P13395703321311353072

/-! ## A182642.P5090778276583096109

`A014217(∑[A000034(A007955(n+1))])`
-/

namespace A182642.P5090778276583096109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A007955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182642.P5090778276583096109

/-! ## A182642.P10791554841723314368

`A014217((A008619(3*n)+1)%A122079(3*(n+1)))`
-/

namespace A182642.P10791554841723314368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (Int.tmod (A008619 (3 * n) + 1) (A122079 (3 * (n + 1)))).toNat

end

end A182642.P10791554841723314368

/-! ## A182642.P13734446225717885296

`A014217(A003263(A000204(n+1))+n+1)`
-/

namespace A182642.P13734446225717885296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A003263 (A000204 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A182642.P13734446225717885296

/-!
# A182643: A182642(n) - A107857(n-1) for n>=1.

The programs for A182643, there is no canonical definition to state claims against.
-/

/-! ## A182643.P13505504394691997617

`record[A014682(A212804(n))-gcd(2, n)]`
-/

namespace A182643.P13505504394691997617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A212804 n).toNat - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182643.P13505504394691997617

/-! ## A182643.P12080686439000114368

`A001651(A014437(n))-A000035(A001651(n+1))`
-/

namespace A182643.P12080686439000114368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A014437 n).toNat - A000035 (A001651 (n + 1)).toNat

end

end A182643.P12080686439000114368

/-! ## A182643.P13786791812071564044

`record[A057979(A131326(n))]`
-/

namespace A182643.P13786791812071564044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A131326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182643.P13786791812071564044

/-! ## A182643.P9393639198527715922

`record[A279119(A097133(n))]`
-/

namespace A182643.P9393639198527715922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A097133 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182643.P9393639198527715922

/-! ## A182643.P17830072516972480264

`lt[n, A242361(A047228(n+1))]`
-/

namespace A182643.P17830072516972480264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242361 (A047228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A182643.P17830072516972480264

/-!
# A182644: Number of fixed snake polyominoes with n cells.

The programs for A182644, there is no canonical definition to state claims against.
-/

/-! ## A182644.P4453447088707390893

`ceil(A173380(n)/2)`
-/

namespace A182644.P4453447088707390893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173380 n : ℚ) / 2⌉

end

end A182644.P4453447088707390893

/-! ## A182644.P11361212937496137260

`A173380(n)/A000122(n²)`
-/

namespace A182644.P11361212937496137260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173380 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A182644.P11361212937496137260

/-! ## A182644.P2041456668249692972

`A173380(n)/A036452(n+1)`
-/

namespace A182644.P2041456668249692972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173380 n : ℚ) / (A036452 (n + 1) : ℚ)

end

end A182644.P2041456668249692972

/-! ## A182644.P16882177895891440962

`A173380(n)/A036453(n+1)`
-/

namespace A182644.P16882177895891440962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173380 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A182644.P16882177895891440962

/-!
# A182645: Number of poly-IH68-tiles (holes allowed) with n cells.

The programs for A182645, there is no canonical definition to state claims against.
-/

/-! ## A182645.P10717689017690303572

`A349329(n+1)+A030227(n+1)`
-/

namespace A182645.P10717689017690303572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349329 (n + 1) + A030227 (n + 1)

end

end A182645.P10717689017690303572

/-! ## A182645.P11079462723904858306

`A351191(n+1)+A346800(n+1)`
-/

namespace A182645.P11079462723904858306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351191 (n + 1) + A346800 (n + 1)

end

end A182645.P11079462723904858306

/-! ## A182645.P8589179649398075796

`A001168(n+1)-A351191(n+1)`
-/

namespace A182645.P8589179649398075796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A351191 (n + 1)

end

end A182645.P8589179649398075796

/-! ## A182645.P17856215369141684575

`A056783(n+1)+A151525(n+1)-A056780(n+1)`
-/

namespace A182645.P17856215369141684575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056783 (n + 1) + (A151525 (n + 1) - A056780 (n + 1))

end

end A182645.P17856215369141684575

/-! ## A182645.P7269626240248572310

`A151525(n+1)+A346800(n+1)-A030227(n+1)`
-/

namespace A182645.P7269626240248572310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151525 (n + 1) + (A346800 (n + 1) - A030227 (n + 1))

end

end A182645.P7269626240248572310

/-! ## A182645.P3461623707592212427

`A346800(n+1)+A056780(n+1)+A349329(n+1)-A056783(n+1)`
-/

namespace A182645.P3461623707592212427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346800 (n + 1) + (A056780 (n + 1) + (A349329 (n + 1) - A056783 (n + 1)))

end

end A182645.P3461623707592212427

/-! ## A182645.P15084227290828958874

`2*A056783(n+1)-A151522(n+1)+A151525(n+1)-A030227(n+1)`
-/

namespace A182645.P15084227290828958874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056783 (n + 1) - A151522 (n + 1) + (A151525 (n + 1) - A030227 (n + 1))

end

end A182645.P15084227290828958874

/-!
# A182646: Number of strip poly-IH68-tiles (holes allowed) with n cells.

The programs for A182646, there is no canonical definition to state claims against.
-/

/-! ## A182646.P18443896261876074800

`A151524(n+1)+A151526(n+1)-A151527(n+1)`
-/

namespace A182646.P18443896261876074800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151524 (n + 1) + (A151526 (n + 1) - A151527 (n + 1))

end

end A182646.P18443896261876074800

/-! ## A182646.P637006735919578155

`A106733(A035936(n)*A330464(n))`
-/

namespace A182646.P637006735919578155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (A035936 n * A330464 n).toNat

end

end A182646.P637006735919578155

/-! ## A182646.P16622967609575002329

`A193592(A143550(n+1))`
-/

namespace A182646.P16622967609575002329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A143550 (n + 1)).toNat

end

end A182646.P16622967609575002329

/-!
# A182647: a(n) = the largest n-digit number with exactly 5 divisors, a(n) = 0 if no such number exists.

The programs for A182647, there is no canonical definition to state claims against.
-/

/-! ## A182647.P12335126480050856435

`A092674(A001317(n))^4`
-/

namespace A182647.P12335126480050856435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092674 (A001317 n).toNat ^ 4

end

end A182647.P12335126480050856435

/-! ## A182647.P10902435487303052131

`record[A005065(A119258(n)²)]`
-/

namespace A182647.P10902435487303052131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A119258 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182647.P10902435487303052131

/-!
# A182648: a(n) is the largest n-digit number with exactly 4 divisors.

The programs for A182648, there is no canonical definition to state claims against.
-/

/-! ## A182648.P16220725255447329460

`A098450(n+1)-floor(acot(n))`
-/

namespace A182648.P16220725255447329460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A182648.P16220725255447329460

/-! ## A182648.P17778510509662796134

`A098450(n+1)-A000007(n)`
-/

namespace A182648.P17778510509662796134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A000007 n

end

end A182648.P17778510509662796134

/-! ## A182648.P9895672354812374199

`A098450(n+1)-A105523(2*n)`
-/

namespace A182648.P9895672354812374199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A105523 (2 * n)

end

end A182648.P9895672354812374199

/-! ## A182648.P5613417239039704027

`A098450(n+1)+n-A028310(n)`
-/

namespace A182648.P5613417239039704027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) + ((n : ℤ) - A028310 n)

end

end A182648.P5613417239039704027

/-! ## A182648.P15775203883990219462

`A098450(n+1)-A010052(n²+1)`
-/

namespace A182648.P15775203883990219462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A010052 (n ^ 2 + 1)

end

end A182648.P15775203883990219462

/-! ## A182648.P13423284729887687185

`A098450(n+1)-A178501(C(2, n+2))`
-/

namespace A182648.P13423284729887687185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A178501 (Nat.choose 2 (n + 2))

end

end A182648.P13423284729887687185

/-! ## A182648.P10238324367204281794

`A098450(n+1)-and(C(2, n+2), A039500(n+1))`
-/

namespace A182648.P10238324367204281794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - Int.land (Nat.choose 2 (n + 2) : ℤ) (A039500 (n + 1))

end

end A182648.P10238324367204281794

/-! ## A182648.P16090643597257878193

`A098450(n+1)-A267848(A005563(n))`
-/

namespace A182648.P16090643597257878193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A267848 (A005563 n).toNat

end

end A182648.P16090643597257878193

/-! ## A182648.P8291056471522244366

`A098450(n+1)-A341279(A000217(n))`
-/

namespace A182648.P8291056471522244366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) - A341279 (A000217 n).toNat

end

end A182648.P8291056471522244366

/-!
# A182649: Algorithm: x->[rx] if x even, x->[rx-x] if x odd, where r = (1+sqrt(5))/2, []=floor; a(n) is the number of steps from x=n to 0.

The programs for A182649, there is no canonical definition to state claims against.
-/

/-! ## A182649.P10206059173207848393

`A258215(A188222(n+1))`
-/

namespace A182649.P10206059173207848393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (A188222 (n + 1)).toNat

end

end A182649.P10206059173207848393

/-! ## A182649.P11291538479986006138

`A258215(floor(A001950(n+1)/2))`
-/

namespace A182649.P11291538479986006138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 ⌊(A001950 (n + 1) : ℚ) / 2⌋.toNat

end

end A182649.P11291538479986006138

/-! ## A182649.P14700436643826308532

`A258215(lt[Δ[A258215(2*n)], 3])`
-/

namespace A182649.P14700436643826308532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A182649.P14700436643826308532

/-! ## A182649.P7880679625651407601

`A258215(A059531(n+1)%A143083(2*(n+1)))`
-/

namespace A182649.P7880679625651407601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (Int.tmod (A059531 (n + 1)) (A143083 (2 * (n + 1)))).toNat

end

end A182649.P7880679625651407601

/-! ## A182649.P17396294364313486266

`A258215(A285465(n+1)%A143083(2*n+1))`
-/

namespace A182649.P17396294364313486266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258215 (Int.tmod (A285465 (n + 1)) (A143083 (2 * n + 1))).toNat

end

end A182649.P17396294364313486266

/-!
# A182653: Floor-sum sequence of r with r = golden ratio = (1+sqrt(5))/2 and a(1)=1, a(2)=2.

The programs for A182653, there is no canonical definition to state claims against.
-/

/-! ## A182653.P7890734687282848174

`eq[A115721(n), A175044(A091204(n+1))]`
-/

namespace A182653.P7890734687282848174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175044 (A091204 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182653.P7890734687282848174

/-!
# A182654: Floor-sum sequence of r, with r=sqrt(2) and a(1)=1, a(2)=2.

The programs for A182654, there is no canonical definition to state claims against.
-/

/-! ## A182654.P1458431549447495745

`A001951(∑[A253641(A151895(n))])`
-/

namespace A182654.P1458431549447495745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A151895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182654.P1458431549447495745

/-! ## A182654.P5306767186484292492

`A001951(A233334(n+1)-A057427(n))`
-/

namespace A182654.P5306767186484292492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A233334 (n + 1) - A057427 n).toNat

end

end A182654.P5306767186484292492

/-! ## A182654.P15777548333846990279

`A172471(record[A172471(A086517(n+1))²])`
-/

namespace A182654.P15777548333846990279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A086517 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A182654.P15777548333846990279

/-! ## A182654.P13197932886054165974

`A172471((A233334(n+1)-A057427(n))²)`
-/

namespace A182654.P13197932886054165974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((A233334 (n + 1) - A057427 n) ^ 2).toNat

end

end A182654.P13197932886054165974

/-! ## A182654.P7135827479075373583

`A001951(∪[A184117(n+1), A184118(n+3)])`
-/

namespace A182654.P7135827479075373583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182654.P7135827479075373583

/-! ## A182654.P9948659948000680279

`A001951(∪[A184580(n+1), A137362(n+4)])`
-/

namespace A182654.P9948659948000680279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137362 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182654.P9948659948000680279

/-! ## A182654.P150501280604602345

`A001951(∪[A188320(n+1), A137362(n+4)])`
-/

namespace A182654.P150501280604602345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137362 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182654.P150501280604602345

/-! ## A182654.P18190216434563111090

`A001951(∪[A188320(n+1), A184625(n+4)])`
-/

namespace A182654.P18190216434563111090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A182654.P18190216434563111090

/-!
# A182657: Square numbers with at least one digit in common with any other positive square number.

The programs for A182657, there is no canonical definition to state claims against.
-/

/-! ## A182657.P5034052751286428018

`A158932(∑[A286831(n)])²`
-/

namespace A182657.P5034052751286428018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A182657.P5034052751286428018

/-! ## A182657.P18042445706611128385

`A158932(A028430(n+1))²`
-/

namespace A182657.P18042445706611128385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158932 (A028430 (n + 1)).toNat ^ 2

end

end A182657.P18042445706611128385

/-! ## A182657.P10345479754258587455

`A158932(A286831(n)+n)²`
-/

namespace A182657.P10345479754258587455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158932 (A286831 n + (n : ℤ)).toNat ^ 2

end

end A182657.P10345479754258587455

/-! ## A182657.P6457858692722321960

`(A158932(n+1)%A321638(n))²`
-/

namespace A182657.P6457858692722321960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158932 (n + 1)) (A321638 n) ^ 2

end

end A182657.P6457858692722321960

/-!
# A182660: a(2^(k+1)) = k; 0 everywhere else.

The programs for A182660, the canonical program `A182660.P6706947886669951299` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182660 has offset 0).

The definition of A182660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182660.P11418498337861678822

`∑{e}[n, val(2^#², 2*n)]`
-/

namespace A182660.P11418498337861678822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (2 ^ Nat.factorization (f1 n) p ^ 2) (2 * n)

end

end A182660.P11418498337861678822

namespace A182660

/-- `∑{e}[n, val(2^#², 2*n)]` -/
def P11418498337861678822.Spec : Prop :=
  ∀ n, (P11418498337861678822.a n : ℤ) = A182660 n

end A182660

/-! ## A182660.P9423832756697139505

`∑{e}[A048298(n), #-1]`
-/

namespace A182660.P9423832756697139505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A182660.P9423832756697139505

namespace A182660

/-- `∑{e}[A048298(n), #-1]` -/
def P9423832756697139505.Spec : Prop :=
  ∀ n, P9423832756697139505.a n = A182660 n

end A182660

/-! ## A182660.P12868392015745868444

`A023416(or(1, n*char[2^n]))`
-/

namespace A182660.P12868392015745868444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.lor 1 (n * (if ∃ j, f1 j = n then 1 else 0)))

end

end A182660.P12868392015745868444

namespace A182660

/-- `A023416(or(1, n*char[2^n]))` -/
def P12868392015745868444.Spec : Prop :=
  ∀ n, P12868392015745868444.a n = A182660 n

end A182660

/-! ## A182660.P17599949192935574302

`A080791(or(1, n)*char[2^n])`
-/

namespace A182660.P17599949192935574302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.lor 1 n * (if ∃ j, f1 j = n then 1 else 0))

end

end A182660.P17599949192935574302

namespace A182660

/-- `A080791(or(1, n)*char[2^n])` -/
def P17599949192935574302.Spec : Prop :=
  ∀ n, P17599949192935574302.a n = A182660 n

end A182660

/-! ## A182660.P17657016281896995982

`char[2^n]*A080791(gcd(n, ∑[n]))`
-/

namespace A182660.P17657016281896995982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A080791 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A182660.P17657016281896995982

namespace A182660

/-- `char[2^n]*A080791(gcd(n, ∑[n]))` -/
def P17657016281896995982.Spec : Prop :=
  ∀ n, P17657016281896995982.a n = A182660 n

end A182660

/-! ## A182660.P6706947886669951299

`A107782(n*floor(-xor(n, -n)/(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A182660

/-- `A107782(n*floor(-xor(n, -n)/(n+1)))` -/
def P6706947886669951299.Spec : Prop :=
  ∀ n, P6706947886669951299.a n = A182660 n

theorem P6706947886669951299.correct : P6706947886669951299.Spec := by
  intro n
  simp only [A182660]

end A182660

/-! ## A182660.P5046588178489114383

`(char[1]+char[2*a(n-1)])*A107782(n)` with `a(0)=1`
-/

namespace A182660.P5046588178489114383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) * A107782 n

end

end A182660.P5046588178489114383

namespace A182660

/-- `(char[1]+char[2*a(n-1)])*A107782(n)` -/
def P5046588178489114383.Spec : Prop :=
  ∀ n, P5046588178489114383.a n = A182660 n

end A182660

/-! ## A182660.P8648952357852076982

`A063250(A060147(n))`
-/

namespace A182660.P8648952357852076982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063250 (A060147 n).toNat

end

end A182660.P8648952357852076982

namespace A182660

/-- `A063250(A060147(n))` -/
def P8648952357852076982.Spec : Prop :=
  ∀ n, P8648952357852076982.a n = A182660 n

end A182660

/-! ## A182660.P16031101690841944551

`A063250(A099892(n))`
-/

namespace A182660.P16031101690841944551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063250 (A099892 n).toNat

end

end A182660.P16031101690841944551

namespace A182660

/-- `A063250(A099892(n))` -/
def P16031101690841944551.Spec : Prop :=
  ∀ n, P16031101690841944551.a n = A182660 n

end A182660

/-! ## A182660.P2339850372678011557

`A090048(n)*A209229(n)`
-/

namespace A182660.P2339850372678011557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 n * A209229 n

end

end A182660.P2339850372678011557

namespace A182660

/-- `A090048(n)*A209229(n)` -/
def P2339850372678011557.Spec : Prop :=
  ∀ n, P2339850372678011557.a n = A182660 n

end A182660

/-! ## A182660.P18272600719257211203

`A092339(n*A209229(n))`
-/

namespace A182660.P18272600719257211203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 ((n : ℤ) * A209229 n).toNat

end

end A182660.P18272600719257211203

namespace A182660

/-- `A092339(n*A209229(n))` -/
def P18272600719257211203.Spec : Prop :=
  ∀ n, P18272600719257211203.a n = A182660 n

end A182660

/-! ## A182660.P10254451022637078339

`A107782(n*A209229(n))`
-/

namespace A182660.P10254451022637078339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * A209229 n).toNat

end

end A182660.P10254451022637078339

namespace A182660

/-- `A107782(n*A209229(n))` -/
def P10254451022637078339.Spec : Prop :=
  ∀ n, P10254451022637078339.a n = A182660 n

end A182660

/-! ## A182660.P17259957811244774480

`A342263(n*A209229(n))`
-/

namespace A182660.P17259957811244774480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342263 ((n : ℤ) * A209229 n).toNat

end

end A182660.P17259957811244774480

namespace A182660

/-- `A342263(n*A209229(n))` -/
def P17259957811244774480.Spec : Prop :=
  ∀ n, P17259957811244774480.a n = A182660 n

end A182660

/-! ## A182660.P2025837218707190238

`and(A090048(n), A099893(n))`
-/

namespace A182660.P2025837218707190238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090048 n) (A099893 n)

end

end A182660.P2025837218707190238

namespace A182660

/-- `and(A090048(n), A099893(n))` -/
def P2025837218707190238.Spec : Prop :=
  ∀ n, P2025837218707190238.a n = A182660 n

end A182660

/-! ## A182660.P3745422588344088399

`A092339(and(n, A099893(n)))`
-/

namespace A182660.P3745422588344088399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (Int.land (n : ℤ) (A099893 n)).toNat

end

end A182660.P3745422588344088399

namespace A182660

/-- `A092339(and(n, A099893(n)))` -/
def P3745422588344088399.Spec : Prop :=
  ∀ n, P3745422588344088399.a n = A182660 n

end A182660

/-! ## A182660.P12808380785199949793

`and(A099893(n), A107782(n))`
-/

namespace A182660.P12808380785199949793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099893 n) (A107782 n)

end

end A182660.P12808380785199949793

namespace A182660

/-- `and(A099893(n), A107782(n))` -/
def P12808380785199949793.Spec : Prop :=
  ∀ n, P12808380785199949793.a n = A182660 n

end A182660

/-! ## A182660.P1357838528738980185

`A125644(A048298(n)+1)-1`
-/

namespace A182660.P1357838528738980185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A048298 n + 1).toNat - 1

end

end A182660.P1357838528738980185

namespace A182660

/-- `A125644(A048298(n)+1)-1` -/
def P1357838528738980185.Spec : Prop :=
  ∀ n, P1357838528738980185.a n = A182660 n

end A182660

/-! ## A182660.P17169342405035012953

`A092339(n*A255738(n+1))`
-/

namespace A182660.P17169342405035012953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 ((n : ℤ) * A255738 (n + 1)).toNat

end

end A182660.P17169342405035012953

namespace A182660

/-- `A092339(n*A255738(n+1))` -/
def P17169342405035012953.Spec : Prop :=
  ∀ n, P17169342405035012953.a n = A182660 n

end A182660

/-! ## A182660.P5288331904516584686

`A107782(n*A255738(n+1))`
-/

namespace A182660.P5288331904516584686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * A255738 (n + 1)).toNat

end

end A182660.P5288331904516584686

namespace A182660

/-- `A107782(n*A255738(n+1))` -/
def P5288331904516584686.Spec : Prop :=
  ∀ n, P5288331904516584686.a n = A182660 n

end A182660

/-! ## A182660.P4495094062087785150

`A342263(n*A255738(n+1))`
-/

namespace A182660.P4495094062087785150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342263 ((n : ℤ) * A255738 (n + 1)).toNat

end

end A182660.P4495094062087785150

namespace A182660

/-- `A342263(n*A255738(n+1))` -/
def P4495094062087785150.Spec : Prop :=
  ∀ n, P4495094062087785150.a n = A182660 n

end A182660

/-!
# A182661: Expansion of x^3*exp(-x)/(3*(1-x)).

The programs for A182661, there is no canonical definition to state claims against.
-/

/-! ## A182661.P10120336443087016283

`2*A000449(n+3)`
-/

namespace A182661.P10120336443087016283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000449 (n + 3)

end

end A182661.P10120336443087016283

/-! ## A182661.P2553715402880077056

`2/3*A145222(n+3)`
-/

namespace A182661.P2553715402880077056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A145222 (n + 3) : ℚ)

end

end A182661.P2553715402880077056

/-! ## A182661.P9506347947960720135

`∑[∑[2*(n+1)]]*A000166(n)`
-/

namespace A182661.P9506347947960720135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000166 n

end

end A182661.P9506347947960720135

/-! ## A182661.P1313452517513753756

`2*∑[∑[n+1]]*A008290(∑[n])`
-/

namespace A182661.P1313452517513753756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A182661.P1313452517513753756

/-! ## A182661.P2932857788902463434

`∑[(n+1)*(n+2)]*A068106(∑[n])`
-/

namespace A182661.P2932857788902463434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A068106 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A182661.P2932857788902463434

/-! ## A182661.P6000178172525515189

`A337615(A167614(n+2))`
-/

namespace A182661.P6000178172525515189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337615 (A167614 (n + 2)).toNat

end

end A182661.P6000178172525515189

/-! ## A182661.P6470092874732883073

`2*A098825(A046691(n+2))`
-/

namespace A182661.P6470092874732883073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098825 (A046691 (n + 2)).toNat

end

end A182661.P6470092874732883073

/-! ## A182661.P6236286995888614733

`A000166(n)*A007290(n+3)`
-/

namespace A182661.P6236286995888614733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A007290 (n + 3)

end

end A182661.P6236286995888614733

/-! ## A182661.P18381741253742315359

`2*A000166(n)*A000292(n+1)`
-/

namespace A182661.P18381741253742315359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000166 n * A000292 (n + 1))

end

end A182661.P18381741253742315359

/-!
# A182662: Number of ordered ways to write n = p + q with q > 0 such that p, 3*(p + prime(q)) - 1 and 3*(p + prime(q)) + 1 are all prime.

The programs for A182662, there is no canonical definition to state claims against.
-/

/-! ## A182662.P4906511285844588211

`A047010(n)%A132610(A269833(n+1))`
-/

namespace A182662.P4906511285844588211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047010 n) (A132610 (A269833 (n + 1)).toNat)

end

end A182662.P4906511285844588211

/-! ## A182662.P7888983899134926362

`A047100(n)%A132610(A269833(n+1))`
-/

namespace A182662.P7888983899134926362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047100 n) (A132610 (A269833 (n + 1)).toNat)

end

end A182662.P7888983899134926362

/-! ## A182662.P15682491739239089450

`(n+7)%A303536(A001580(n))`
-/

namespace A182662.P15682491739239089450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 7 : ℤ) (A303536 (A001580 n).toNat)

end

end A182662.P15682491739239089450

/-! ## A182662.P9234382671429112611

`∑{p}[A001049(n+1), A033182(#)]`
-/

namespace A182662.P9234382671429112611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033182 p

end

end A182662.P9234382671429112611

/-! ## A182662.P12531470481964030800

`A047010(n)%A205713(A001405(n))`
-/

namespace A182662.P12531470481964030800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047010 n) (A205713 (A001405 n).toNat)

end

end A182662.P12531470481964030800

/-!
# A182664: a(n) = A088828(n) + A157502(n).

The programs for A182664, the canonical program `A182664.P15945012330009958967` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182664 has offset 1).

The definition of A182664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088828, A157502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A182664.P15945012330009958967

`A088828(n+1)+A157502(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A182664

/-- `A088828(n+1)+A157502(n+1)` -/
def P15945012330009958967.Spec : Prop :=
  ∀ n, P15945012330009958967.a n = A182664 (n + 1)

theorem P15945012330009958967.correct : P15945012330009958967.Spec := by
  intro n
  simp only [A182664, Nat.add_sub_cancel]

end A182664

/-! ## A182664.P4336161606654346884

`2*(comp[∑[n]]+n)+1`
-/

namespace A182664.P4336161606654346884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + 1

end

end A182664.P4336161606654346884

namespace A182664

/-- `2*(comp[∑[n]]+n)+1` -/
def P4336161606654346884.Spec : Prop :=
  ∀ n, (P4336161606654346884.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P11036857865686133307

`ceil(2/acot(comp[∑[n]]+n))`
-/

namespace A182664.P11036857865686133307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℝ)⌉

end

end A182664.P11036857865686133307

namespace A182664

/-- `ceil(2/acot(comp[∑[n]]+n))` -/
def P11036857865686133307.Spec : Prop :=
  ∀ n, P11036857865686133307.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P16214078675710489574

`or(1, 2*(comp[C(n, 2)]+n))`
-/

namespace A182664.P16214078675710489574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n))

end

end A182664.P16214078675710489574

namespace A182664

/-- `or(1, 2*(comp[C(n, 2)]+n))` -/
def P16214078675710489574.Spec : Prop :=
  ∀ n, (P16214078675710489574.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P1612912569609955938

`or(1, ∑[2*(char[∑[n+1]]+2)])`
-/

namespace A182664.P1612912569609955938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182664.P1612912569609955938

namespace A182664

/-- `or(1, ∑[2*(char[∑[n+1]]+2)])` -/
def P1612912569609955938.Spec : Prop :=
  ∀ n, (P1612912569609955938.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P17419772665676851320

`xor(1, ∑[2*(char[∑[n+1]]+2)])`
-/

namespace A182664.P17419772665676851320
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182664.P17419772665676851320

namespace A182664

/-- `xor(1, ∑[2*(char[∑[n+1]]+2)])` -/
def P17419772665676851320.Spec : Prop :=
  ∀ n, (P17419772665676851320.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P13087283937988323819

`∑[6-round(acot(A198954(n)))]`
-/

namespace A182664.P13087283937988323819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - SequenceMachineLib.roundAway (SequenceMachineLib.acot (A198954 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182664.P13087283937988323819

namespace A182664

/-- `∑[6-round(acot(A198954(n)))]` -/
def P13087283937988323819.Spec : Prop :=
  ∀ n, P13087283937988323819.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P5921905322569140992

`A005408(comp[∑[n]]+n)`
-/

namespace A182664.P5921905322569140992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A182664.P5921905322569140992

namespace A182664

/-- `A005408(comp[∑[n]]+n)` -/
def P5921905322569140992.Spec : Prop :=
  ∀ n, P5921905322569140992.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P14649628475683497191

`A130773(A195437(n))`
-/

namespace A182664.P14649628475683497191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A195437 n).toNat

end

end A182664.P14649628475683497191

namespace A182664

/-- `A130773(A195437(n))` -/
def P14649628475683497191.Spec : Prop :=
  ∀ n, P14649628475683497191.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P16915835001517402473

`A004273(A118011(n+1))`
-/

namespace A182664.P16915835001517402473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A118011 (n + 1)).toNat

end

end A182664.P16915835001517402473

namespace A182664

/-- `A004273(A118011(n+1))` -/
def P16915835001517402473.Spec : Prop :=
  ∀ n, P16915835001517402473.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P13993046892405151183

`A074147(A185871(n+1))`
-/

namespace A182664.P13993046892405151183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A185871 (n + 1)).toNat

end

end A182664.P13993046892405151183

namespace A182664

/-- `A074147(A185871(n+1))` -/
def P13993046892405151183.Spec : Prop :=
  ∀ n, P13993046892405151183.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P17733483674945749944

`eq[A003815(n), A204171(n+1)]`
-/

namespace A182664.P17733483674945749944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182664.P17733483674945749944

namespace A182664

/-- `eq[A003815(n), A204171(n+1)]` -/
def P17733483674945749944.Spec : Prop :=
  ∀ n, (P17733483674945749944.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P6271538904293871628

`eq[A166445(n), A204175(n+1)]`
-/

namespace A182664.P6271538904293871628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182664.P6271538904293871628

namespace A182664

/-- `eq[A166445(n), A204175(n+1)]` -/
def P6271538904293871628.Spec : Prop :=
  ∀ n, (P6271538904293871628.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P1203127137471431757

`eq[A166514(n), A204171(n+1)]`
-/

namespace A182664.P1203127137471431757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182664.P1203127137471431757

namespace A182664

/-- `eq[A166514(n), A204171(n+1)]` -/
def P1203127137471431757.Spec : Prop :=
  ∀ n, (P1203127137471431757.a n : ℤ) = A182664 (n + 1)

end A182664

/-! ## A182664.P4363376791612104857

`∑[A134060(n)%3+4]`
-/

namespace A182664.P4363376791612104857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134060 n) 3 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182664.P4363376791612104857

namespace A182664

/-- `∑[A134060(n)%3+4]` -/
def P4363376791612104857.Spec : Prop :=
  ∀ n, P4363376791612104857.a n = A182664 (n + 1)

end A182664

/-! ## A182664.P16904522692939814809

`A173263(2*(n+1))`
-/

namespace A182664.P16904522692939814809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173263 (2 * (n + 1))

end

end A182664.P16904522692939814809

namespace A182664

/-- `A173263(2*(n+1))` -/
def P16904522692939814809.Spec : Prop :=
  ∀ n, P16904522692939814809.a n = A182664 (n + 1)

end A182664

/-!
# A182665: Greatest x < n such that n divides x*(x-1).

The programs for A182665, there is no canonical definition to state claims against.
-/

/-! ## A182665.P8886940970012792865

`n+1-A344005(n+1)`
-/

namespace A182665.P8886940970012792865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A344005 (n + 1)

end

end A182665.P8886940970012792865

/-! ## A182665.P3105313635883386365

`1-floor(sqrt(A345988(n+1)))+n`
-/

namespace A182665.P3105313635883386365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.sqrt (A345988 (n + 1)) + (n : ℤ)

end

end A182665.P3105313635883386365

/-! ## A182665.P10679979813562062266

`A346607(n+1)+A323410(n+1)`
-/

namespace A182665.P10679979813562062266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1) + A323410 (n + 1)

end

end A182665.P10679979813562062266

/-! ## A182665.P1840144707359221583

`1-A011772(A026741(n+1))+n`
-/

namespace A182665.P1840144707359221583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011772 (A026741 (n + 1)).toNat + (n : ℤ)

end

end A182665.P1840144707359221583

/-! ## A182665.P12855535281369351783

`A344005(n+1)²%A000027(n+1)`
-/

namespace A182665.P12855535281369351783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344005 (n + 1) ^ 2) (A000027 (n + 1))

end

end A182665.P12855535281369351783

/-! ## A182665.P8268107388008041439

`n+1-A345992(n+1)*A345998(n+1)`
-/

namespace A182665.P8268107388008041439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A345992 (n + 1) * A345998 (n + 1)

end

end A182665.P8268107388008041439

/-! ## A182665.P816575127180175990

`n+1-A011772(A001318(n+1)-A001318(n))`
-/

namespace A182665.P816575127180175990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A011772 (A001318 (n + 1) - A001318 n).toNat

end

end A182665.P816575127180175990

/-! ## A182665.P5961222347045906728

`n-A003056(A004526(n)*A344006(n+1))`
-/

namespace A182665.P5961222347045906728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003056 (A004526 n * A344006 (n + 1)).toNat

end

end A182665.P5961222347045906728

/-! ## A182665.P16962729312514765071

`1-A000194(A345988(n+1))+n`
-/

namespace A182665.P16962729312514765071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000194 (A345988 (n + 1)).toNat + (n : ℤ)

end

end A182665.P16962729312514765071

/-! ## A182665.P234790580308358472

`A345988(n+1)/A344006(n+1)-A345992(A345988(n+1))`
-/

namespace A182665.P234790580308358472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345988 (n + 1) : ℚ) / (A344006 (n + 1) : ℚ) - (A345992 (A345988 (n + 1)).toNat : ℚ)

end

end A182665.P234790580308358472

/-!
# A182667: Smallest prime with n terms in its Zeckendorf representation.

The programs for A182667, there is no canonical definition to state claims against.
-/

/-! ## A182667.P11436913394622634121

`A000040(A182561(n+1))`
-/

namespace A182667.P11436913394622634121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A182561 (n + 1)).toNat

end

end A182667.P11436913394622634121

/-! ## A182667.P5251960572724440692

`A008578(A182561(n+1)+1)`
-/

namespace A182667.P5251960572724440692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A182561 (n + 1) + 1).toNat

end

end A182667.P5251960572724440692

/-! ## A182667.P13865347041648590009

`A182986(A182561(n+1)+1)`
-/

namespace A182667.P13865347041648590009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A182561 (n + 1) + 1).toNat

end

end A182667.P13865347041648590009

/-! ## A182667.P10820252963518707719

`A028815(A182561(n+1))-A303694(n)`
-/

namespace A182667.P10820252963518707719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A182561 (n + 1)).toNat - A303694 n

end

end A182667.P10820252963518707719

/-! ## A182667.P13739639128941271536

`A073846(2*A182561(n+1))`
-/

namespace A182667.P13739639128941271536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A182561 (n + 1)).toNat

end

end A182667.P13739639128941271536

/-!
# A182668: The n-th Fourier coefficient divided by 11 of L_1(tau) defined by A. O. L. Atkin in 1967.

The programs for A182668, there is no canonical definition to state claims against.
-/

/-! ## A182668.P17335507796455399341

`A076394(n)-A185246(A039900(n))`
-/

namespace A182668.P17335507796455399341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076394 n - A185246 (A039900 n).toNat

end

end A182668.P17335507796455399341

/-! ## A182668.P13507157369773923291

`A355558(A299521(n+1))+A076394(n)`
-/

namespace A182668.P13507157369773923291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355558 (A299521 (n + 1)).toNat + A076394 n

end

end A182668.P13507157369773923291

/-! ## A182668.P4613127737732725241

`A076394(n)-A079978(A036887(n+1))`
-/

namespace A182668.P4613127737732725241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076394 n - A079978 (A036887 (n + 1)).toNat

end

end A182668.P4613127737732725241

/-! ## A182668.P11061180097056750884

`A076394(n)-A165656(A060854(n+1))`
-/

namespace A182668.P11061180097056750884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076394 n - A165656 (A060854 (n + 1)).toNat

end

end A182668.P11061180097056750884

/-! ## A182668.P10998648421279624254

`A076394(n)-A025468(A218356(n+1))`
-/

namespace A182668.P10998648421279624254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076394 n - A025468 (A218356 (n + 1)).toNat

end

end A182668.P10998648421279624254

/-!
# A182669: Floor-sum sequence of r, with r = golden ratio = (1+sqrt(5))/2 and a(1)=1, a(2)=3.

The programs for A182669, there is no canonical definition to state claims against.
-/

/-! ## A182669.P10877650166205042763

`lt[A156251(A295540(2*n+3)), A080844(n+4)]`
-/

namespace A182669.P10877650166205042763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A295540 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182669.P10877650166205042763

/-! ## A182669.P7493582950328895934

`lt[A242082(ceil(ϕ*n)), A159917(2*n)]`
-/

namespace A182669.P7493582950328895934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159917 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A182669.P7493582950328895934

/-! ## A182669.P1028136889489675903

`eq[A052126(A052019(n+1)), A316340(2*n+1)]`
-/

namespace A182669.P1028136889489675903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A052019 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182669.P1028136889489675903

/-! ## A182669.P17492697671776496204

`eq[A316340(2*n+1), A316829(A002556(2*n+5))]`
-/

namespace A182669.P17492697671776496204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A002556 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A182669.P17492697671776496204

/-!
# A182673: a(n) = the smallest n-digit number with exactly 7 divisors, a(n) = 0 if no such number exists.

The programs for A182673, there is no canonical definition to state claims against.
-/

/-! ## A182673.P4572277732900492418

`A130403(A051885(3*n))^6`
-/

namespace A182673.P4572277732900492418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130403 (A051885 (3 * n)).toNat ^ 6

end

end A182673.P4572277732900492418

/-! ## A182673.P8092016101278959012

`A182674(n+1)-A380986(A002110(n))`
-/

namespace A182673.P8092016101278959012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182674 (n + 1) - A380986 (A002110 n).toNat

end

end A182673.P8092016101278959012

/-!
# A182675: a(n) is the smallest n-digit number with exactly 8 divisors, a(n) = 0 if no such number exists.

The programs for A182675, there is no canonical definition to state claims against.
-/

/-! ## A182675.P8048979844794668702

`A132126(A299272(n))*A180922(n+1)`
-/

namespace A182675.P8048979844794668702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (A299272 n).toNat * A180922 (n + 1)

end

end A182675.P8048979844794668702

/-! ## A182675.P9110573900131281663

`A019426(A159461(n+1))*A180922(n+1)`
-/

namespace A182675.P9110573900131281663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A159461 (n + 1)).toNat * A180922 (n + 1)

end

end A182675.P9110573900131281663

/-! ## A182675.P13547775122417589354

`A132126(A132127(n+1))*A180922(n+1)`
-/

namespace A182675.P13547775122417589354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (A132127 (n + 1)).toNat * A180922 (n + 1)

end

end A182675.P13547775122417589354

/-! ## A182675.P8449656138827260329

`A132126(A054519(3*n))*A180922(n+1)`
-/

namespace A182675.P8449656138827260329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (A054519 (3 * n)).toNat * A180922 (n + 1)

end

end A182675.P8449656138827260329

/-!
# A182677: a(n) = the smallest n-digit number with exactly 9 divisors, a(n) = 0 if no such number exists.

The programs for A182677, there is no canonical definition to state claims against.
-/

/-! ## A182677.P12505705551285170349

`Δ[A317303(A325213(n))]²`
-/

namespace A182677.P12505705551285170349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317303 (A325213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A182677.P12505705551285170349

/-!
# A182678: a(n) = the largest n-digit number with exactly 9 divisors, a(n) = 0 if no such number exists.

The programs for A182678, there is no canonical definition to state claims against.
-/

/-! ## A182678.P16860994316748186159

`(A196929(A196925(n+1))-A213588(n+1))²`
-/

namespace A182678.P16860994316748186159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196929 (A196925 (n + 1)).toNat - A213588 (n + 1)) ^ 2

end

end A182678.P16860994316748186159

/-!
# A182681: a(n) is the smallest n-digit number with exactly 11 divisors, a(n) = 0 if no such number exists.

The programs for A182681, there is no canonical definition to state claims against.
-/

/-! ## A182681.P425741723363826992

`A182682((n+1)^∑[char[p?[5*n-2]-1]])`
-/

namespace A182681.P425741723363826992
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182682 ((n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A182681.P425741723363826992

/-! ## A182681.P5505583090581476118

`A182682(A043317(n+1))`
-/

namespace A182681.P5505583090581476118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182682 (A043317 (n + 1)).toNat

end

end A182681.P5505583090581476118

/-! ## A182681.P2564824200531708924

`A182682(A062003(n)+1)`
-/

namespace A182681.P2564824200531708924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182682 (A062003 n + 1).toNat

end

end A182681.P2564824200531708924

/-! ## A182681.P17662415688651273523

`lcm(A129968(A221075(n)), A182682(n+1))`
-/

namespace A182681.P17662415688651273523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129968 (A221075 n).toNat) (A182682 (n + 1))

end

end A182681.P17662415688651273523

/-!
# A182684: a(n) = the largest n-digit number with exactly 12 divisors, a(n) = 0 if no such number exists.

The programs for A182684, there is no canonical definition to state claims against.
-/

/-! ## A182684.P11969202575325328340

`∑[A052268(n+1)]-A222810(2*n+1)`
-/

namespace A182684.P11969202575325328340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A222810 (2 * n + 1)

end

end A182684.P11969202575325328340

/-!
# A182687: a(n) = the smallest 1-digit number with exactly n divisors, a(n) = 0 if no such number exists.

The programs for A182687, the canonical program `A182687.P17014349846071659719` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182687 has offset 1).

The definition of A182687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182687.P17014349846071659719

`C(2*n, floor(n^ϕ))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A182687

/-- `C(2*n, floor(n^ϕ))` -/
def P17014349846071659719.Spec : Prop :=
  ∀ n, (P17014349846071659719.a n : ℤ) = A182687 (n + 1)

theorem P17014349846071659719.correct : P17014349846071659719.Spec := by
  intro n
  simp only [A182687, Nat.add_sub_cancel]

end A182687

/-!
# A182688: a(n) = the largest 1-digit number with exactly n divisors, a(n) = 0 if no such number exists.

The programs for A182688, the canonical program `A182688.P1031712037546367438` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182688 has offset 1).

The definition of A182688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182688.P1031712037546367438

`a(n-1)` with `a(0)=1, a(1)=7, a(2)=9, a(3)=8, a(4)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A182688

/-- `a(n-1)` -/
def P1031712037546367438.Spec : Prop :=
  ∀ n, (P1031712037546367438.a n : ℤ) = A182688 (n + 1)

theorem P1031712037546367438.correct : P1031712037546367438.Spec := by
  intro n
  simp only [A182688, Nat.add_sub_cancel]

end A182688

/-!
# A182691: Composite Beatty sequence of sqrt(2).

The programs for A182691, the canonical program `A182691.P3091554765257165792` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182691 has offset 1).

The definition of A182691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182691.P3091554765257165792

`∪[A341248(n+2), A341250(n+2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A182691

/-- `∪[A341248(n+2), A341250(n+2)]` -/
def P3091554765257165792.Spec : Prop :=
  ∀ n, (P3091554765257165792.a n : ℤ) = A182691 (n + 1)

theorem P3091554765257165792.correct : P3091554765257165792.Spec := by
  intro n
  simp only [A182691, Nat.add_sub_cancel]

end A182691

/-! ## A182691.P164319413178208807

`A183170(A279751(n)+1)`
-/

namespace A182691.P164319413178208807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183170 (A279751 n + 1).toNat

end

end A182691.P164319413178208807

namespace A182691

/-- `A183170(A279751(n)+1)` -/
def P164319413178208807.Spec : Prop :=
  ∀ n, P164319413178208807.a n = A182691 (n + 1)

end A182691

/-! ## A182691.P14866062192078350951

`A183170(A280148(n)+1)`
-/

namespace A182691.P14866062192078350951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183170 (A280148 n + 1).toNat

end

end A182691.P14866062192078350951

namespace A182691

/-- `A183170(A280148(n)+1)` -/
def P14866062192078350951.Spec : Prop :=
  ∀ n, P14866062192078350951.a n = A182691 (n + 1)

end A182691

/-! ## A182691.P5854551106537394052

`A183170(A000975(n+1)+1)`
-/

namespace A182691.P5854551106537394052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183170 (A000975 (n + 1) + 1).toNat

end

end A182691.P5854551106537394052

namespace A182691

/-- `A183170(A000975(n+1)+1)` -/
def P5854551106537394052.Spec : Prop :=
  ∀ n, P5854551106537394052.a n = A182691 (n + 1)

end A182691

/-! ## A182691.P17221006302628154033

`A183170(∑[A001045(n+1)]+1)`
-/

namespace A182691.P17221006302628154033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183170 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A182691.P17221006302628154033

namespace A182691

/-- `A183170(∑[A001045(n+1)]+1)` -/
def P17221006302628154033.Spec : Prop :=
  ∀ n, P17221006302628154033.a n = A182691 (n + 1)

end A182691

/-!
# A182692: Composite Beatty sequence of sqrt(3).

The programs for A182692, there is no canonical definition to state claims against.
-/

/-! ## A182692.P17561351966540887728

`A178528(A279751(n)+1)`
-/

namespace A182692.P17561351966540887728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A279751 n + 1).toNat

end

end A182692.P17561351966540887728

/-! ## A182692.P6650723002488480743

`A178528(A280148(n)+1)`
-/

namespace A182692.P6650723002488480743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A280148 n + 1).toNat

end

end A182692.P6650723002488480743

/-! ## A182692.P6949897892720932853

`A178528(A000975(n+1)+1)`
-/

namespace A182692.P6949897892720932853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (A000975 (n + 1) + 1).toNat

end

end A182692.P6949897892720932853

/-! ## A182692.P14469470564047610297

`A178528(∑[∑[A078008(n)]]+1)`
-/

namespace A182692.P14469470564047610297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A182692.P14469470564047610297

/-!
# A182699: Number of emergent parts in all partitions of n.

The programs for A182699, there is no canonical definition to state claims against.
-/

/-! ## A182699.P4467577680799693257

`A138135(A000038(n)+n)-A002865(n)`
-/

namespace A182699.P4467577680799693257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (A000038 n + (n : ℤ)).toNat - A002865 n

end

end A182699.P4467577680799693257

/-! ## A182699.P14194389702881296878

`A138137(A028310(n))-A000041(n)`
-/

namespace A182699.P14194389702881296878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A028310 n).toNat - A000041 n

end

end A182699.P14194389702881296878

/-! ## A182699.P4638633083438053516

`A138137(A028310(n))-∑[A002865(n)]`
-/

namespace A182699.P4638633083438053516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A028310 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182699.P4638633083438053516

/-! ## A182699.P3132689652193564660

`Δ[A198381(abs(1-n))]`
-/

namespace A182699.P3132689652193564660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182699.P3132689652193564660

/-! ## A182699.P7701302259012654902

`A138137(A028310(n))-A035363(2*n)`
-/

namespace A182699.P7701302259012654902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A028310 n).toNat - A035363 (2 * n)

end

end A182699.P7701302259012654902

/-! ## A182699.P14969929568916281481

`A138137(A123108(2*n))-A000041(n)`
-/

namespace A182699.P14969929568916281481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A123108 (2 * n)).toNat - A000041 n

end

end A182699.P14969929568916281481

/-! ## A182699.P14946304531162641955

`A138137(A123108(2*n))-A035363(2*n)`
-/

namespace A182699.P14946304531162641955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A123108 (2 * n)).toNat - A035363 (2 * n)

end

end A182699.P14946304531162641955

/-! ## A182699.P820872580698777923

`A138137(A028310(n))-A035444(A008586(n))`
-/

namespace A182699.P820872580698777923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A028310 n).toNat - A035444 (A008586 n).toNat

end

end A182699.P820872580698777923

/-! ## A182699.P9221356230752317916

`A138137(A028310(n))-sqrt(A001255(n))`
-/

namespace A182699.P9221356230752317916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138137 (A028310 n).toNat : ℝ) - Real.sqrt (A001255 n : ℝ)

end

end A182699.P9221356230752317916

/-! ## A182699.P18444951171001323150

`A138137(A233583(n+1))-A000041(A233583(n+1))`
-/

namespace A182699.P18444951171001323150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (A233583 (n + 1)).toNat - A000041 (A233583 (n + 1)).toNat

end

end A182699.P18444951171001323150

