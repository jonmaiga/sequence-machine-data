import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A252600: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252600, there is no canonical definition to state claims against.
-/

/-! ## A252600.P9028352767122875474

`A252605(∑[n+2]+4)`
-/

namespace A252600.P9028352767122875474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252600.P9028352767122875474

/-! ## A252600.P18432698799087086160

`A252605(A167614(n+1))+A011742(n)`
-/

namespace A252600.P18432698799087086160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 1)).toNat + A011742 n

end

end A252600.P18432698799087086160

/-! ## A252600.P11238951531908716128

`A252605(A167614(n+1))+A000038(n+1)`
-/

namespace A252600.P11238951531908716128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A252600.P11238951531908716128

/-! ## A252600.P17180591948142284523

`A252605(A167614(n+1))+A000035(6*n)`
-/

namespace A252600.P17180591948142284523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 1)).toNat + A000035 (6 * n)

end

end A252600.P17180591948142284523

/-! ## A252600.P11808962867138546400

`A252605(A167614(n+1))+A008683(4*(n+4))`
-/

namespace A252600.P11808962867138546400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 1)).toNat + A008683 (4 * (n + 4))

end

end A252600.P11808962867138546400

/-!
# A252601: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252601, there is no canonical definition to state claims against.
-/

/-! ## A252601.P14150395701146279178

`A252605(A374004(n+1))`
-/

namespace A252601.P14150395701146279178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A374004 (n + 1)).toNat

end

end A252601.P14150395701146279178

/-! ## A252601.P18272404546901482442

`A252605(A141214(n)+7)`
-/

namespace A252601.P18272404546901482442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A141214 n + 7).toNat

end

end A252601.P18272404546901482442

/-! ## A252601.P9182320106614154244

`A252605(A052905(n)+9)`
-/

namespace A252601.P9182320106614154244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A052905 n + 9).toNat

end

end A252601.P9182320106614154244

/-! ## A252601.P12948812419372710874

`A252605(A055999(n)+10)`
-/

namespace A252601.P12948812419372710874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A055999 n + 10).toNat

end

end A252601.P12948812419372710874

/-! ## A252601.P1256962394391802024

`A252605(A167614(n+2)+1)`
-/

namespace A252601.P1256962394391802024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 2) + 1).toNat

end

end A252601.P1256962394391802024

/-!
# A252602: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252602, there is no canonical definition to state claims against.
-/

/-! ## A252602.P9619824642930102629

`A252605(A374005(n+1))`
-/

namespace A252602.P9619824642930102629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A374005 (n + 1)).toNat

end

end A252602.P9619824642930102629

/-! ## A252602.P10204667972021289154

`A252605(A167499(n+3))`
-/

namespace A252602.P10204667972021289154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167499 (n + 3)).toNat

end

end A252602.P10204667972021289154

/-! ## A252602.P4537443340987002048

`A252605(A077169(n+5))`
-/

namespace A252602.P4537443340987002048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A077169 (n + 5)).toNat

end

end A252602.P4537443340987002048

/-! ## A252602.P14159432817920089982

`A252605(A167614(n+3)+2)`
-/

namespace A252602.P14159432817920089982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 3) + 2).toNat

end

end A252602.P14159432817920089982

/-! ## A252602.P17822197727544216582

`A252605(A000124(n+4)+4)`
-/

namespace A252602.P17822197727544216582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A000124 (n + 4) + 4).toNat

end

end A252602.P17822197727544216582

/-!
# A252603: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252603, there is no canonical definition to state claims against.
-/

/-! ## A252603.P7005337183751045836

`A252605(A374007(n+1))`
-/

namespace A252603.P7005337183751045836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A374007 (n + 1)).toNat

end

end A252603.P7005337183751045836

/-! ## A252603.P17656996436501241202

`A252605(A077169(n+6)+1)`
-/

namespace A252603.P17656996436501241202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A077169 (n + 6) + 1).toNat

end

end A252603.P17656996436501241202

/-! ## A252603.P14879710676802682493

`A252605(A167614(n+4)+3)`
-/

namespace A252603.P14879710676802682493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167614 (n + 4) + 3).toNat

end

end A252603.P14879710676802682493

/-! ## A252603.P13748627010650793840

`A252605(A000217(n+5)+6)`
-/

namespace A252603.P13748627010650793840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A000217 (n + 5) + 6).toNat

end

end A252603.P13748627010650793840

/-! ## A252603.P12995078274141284861

`A252605(A052905(n+2)+11)`
-/

namespace A252603.P12995078274141284861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A052905 (n + 2) + 11).toNat

end

end A252603.P12995078274141284861

/-!
# A252604: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 2 or 5.

The programs for A252604, there is no canonical definition to state claims against.
-/

/-! ## A252604.P6673699875509633559

`A252605(A374008(n+1))`
-/

namespace A252604.P6673699875509633559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A374008 (n + 1)).toNat

end

end A252604.P6673699875509633559

/-! ## A252604.P9321196355745467789

`A252605(A167487(n+5))`
-/

namespace A252604.P9321196355745467789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A167487 (n + 5)).toNat

end

end A252604.P9321196355745467789

/-! ## A252604.P7032177495024997179

`A252605(eq[11, A066657(n)])`
-/

namespace A252604.P7032177495024997179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252604.P7032177495024997179

/-! ## A252604.P7014854522225836625

`A252605(A052905(n+3)+12)`
-/

namespace A252604.P7014854522225836625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (A052905 (n + 3) + 12).toNat

end

end A252604.P7014854522225836625

/-! ## A252604.P1943278163041892037

`A252605(eq[8, A131818(n+1)])`
-/

namespace A252604.P1943278163041892037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252604.P1943278163041892037

/-!
# A252606: Numbers j such that j + 2 divides 2^j + 2.

The programs for A252606, there is no canonical definition to state claims against.
-/

/-! ## A252606.P18239048328005548011

`A087156(∪[A251603(n+1), A271267(n+1)])`
-/

namespace A252606.P18239048328005548011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271267 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A252606.P18239048328005548011

/-! ## A252606.P9721612050198076084

`A213859(∪[A251603(n+1), A271267(n+1)])`
-/

namespace A252606.P9721612050198076084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271267 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213859 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A252606.P9721612050198076084

/-!
# A252607: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252607, there is no canonical definition to state claims against.
-/

/-! ## A252607.P14117216279305155336

`A252615((n+1)²+n²)`
-/

namespace A252607.P14117216279305155336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 ((n + 1) ^ 2 + n ^ 2)

end

end A252607.P14117216279305155336

/-! ## A252607.P5799412913758883659

`record[A003982(n)*A252615(n+1)]`
-/

namespace A252607.P5799412913758883659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252607.P5799412913758883659

/-! ## A252607.P15499293231441434782

`record[gcd(A037012(n), A252615(n+1))]`
-/

namespace A252607.P15499293231441434782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A252615 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252607.P15499293231441434782

/-! ## A252607.P3121686384107378145

`A252615(A001844(n))+A185255(n)`
-/

namespace A252607.P3121686384107378145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A001844 n).toNat + A185255 n

end

end A252607.P3121686384107378145

/-! ## A252607.P1321274355810807553

`lcm(A020985(n), A252615(A001844(n)))`
-/

namespace A252607.P1321274355810807553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252615 (A001844 n).toNat)

end

end A252607.P1321274355810807553

/-!
# A252608: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252608, there is no canonical definition to state claims against.
-/

/-! ## A252608.P9085619739240329668

`A252615(∑[n+1])`
-/

namespace A252608.P9085619739240329668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252608.P9085619739240329668

/-! ## A252608.P4672344939190505393

`record[root(A252615(n+1), A029653(n))]`
-/

namespace A252608.P4672344939190505393
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252615 (n + 1) : ℝ) ^ (1 / (A029653 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252608.P4672344939190505393

/-! ## A252608.P4051643644291667455

`record[root(A252615(n+1), A135278(n))]`
-/

namespace A252608.P4051643644291667455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252615 (n + 1) : ℝ) ^ (1 / (A135278 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252608.P4051643644291667455

/-! ## A252608.P759705865654378632

`record[gcd(A025581(n), A252615(n+1))]`
-/

namespace A252608.P759705865654378632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A252615 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252608.P759705865654378632

/-! ## A252608.P18309930170749289114

`record[(2-A004736(n+1))*A252615(n+1)]`
-/

namespace A252608.P18309930170749289114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A252615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252608.P18309930170749289114

/-!
# A252609: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252609, there is no canonical definition to state claims against.
-/

/-! ## A252609.P5771217079938749320

`A252615(∑[n+2])`
-/

namespace A252609.P5771217079938749320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252609.P5771217079938749320

/-! ## A252609.P9247523132124358852

`record[A252615(A000096(A020986(n)))]`
-/

namespace A252609.P9247523132124358852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252609.P9247523132124358852

/-! ## A252609.P5081098991663238499

`record[A252615(A000096(A002260(n+1)))]`
-/

namespace A252609.P5081098991663238499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252609.P5081098991663238499

/-! ## A252609.P12270473782248016785

`record[A252615(A000096(A004736(n+1)))]`
-/

namespace A252609.P12270473782248016785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252609.P12270473782248016785

/-! ## A252609.P12473324577590536453

`record[A252615(A000096(A004741(n+1)))]`
-/

namespace A252609.P12473324577590536453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000096 (A004741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252609.P12473324577590536453

/-!
# A252610: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252610, there is no canonical definition to state claims against.
-/

/-! ## A252610.P2744876899806183776

`A252615(∑[n+3]+1)`
-/

namespace A252610.P2744876899806183776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252610.P2744876899806183776

/-! ## A252610.P2684100237738648513

`A252615(A034856(n+2))+A001222(C(n, n²)!)`
-/

namespace A252610.P2684100237738648513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A034856 (n + 2)).toNat + A001222 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A252610.P2684100237738648513

/-! ## A252610.P13207408165372301714

`A008683(C(n, n²)!)*A252615(A034856(n+2))`
-/

namespace A252610.P13207408165372301714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (Nat.choose n (n ^ 2))) * A252615 (A034856 (n + 2)).toNat

end

end A252610.P13207408165372301714

/-! ## A252610.P8687671010893121173

`A020639(C(n, n²)!)*A252615(A034856(n+2))`
-/

namespace A252610.P8687671010893121173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (Nat.choose n (n ^ 2))) * A252615 (A034856 (n + 2)).toNat

end

end A252610.P8687671010893121173

/-! ## A252610.P14496855180006429510

`(-1)^(10*A006530(n+2))*A252615(A034856(n+2))`
-/

namespace A252610.P14496855180006429510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (10 * A006530 (n + 2) : ℤ) * (A252615 (A034856 (n + 2)).toNat : ℚ)

end

end A252610.P14496855180006429510

/-!
# A252611: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252611, there is no canonical definition to state claims against.
-/

/-! ## A252611.P3655828637328390877

`A252615(C(n+5, 2)-3)`
-/

namespace A252611.P3655828637328390877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (Nat.choose (n + 5) 2 - 3)

end

end A252611.P3655828637328390877

/-! ## A252611.P11815823358972719586

`A252615(A141214(n+1))`
-/

namespace A252611.P11815823358972719586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A141214 (n + 1)).toNat

end

end A252611.P11815823358972719586

/-! ## A252611.P13519376279817054685

`A252615(A055998(n+2))`
-/

namespace A252611.P13519376279817054685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A055998 (n + 2)).toNat

end

end A252611.P13519376279817054685

/-! ## A252611.P1531897224163445181

`A252615(eq[3, A193592(n)])`
-/

namespace A252611.P1531897224163445181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252611.P1531897224163445181

/-! ## A252611.P11274220520794741369

`A252615(A052905(n+1)+2)`
-/

namespace A252611.P11274220520794741369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A052905 (n + 1) + 2).toNat

end

end A252611.P11274220520794741369

/-!
# A252612: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252612, there is no canonical definition to state claims against.
-/

/-! ## A252612.P14869060754478690675

`A252615(∑[n+5]+6)`
-/

namespace A252612.P14869060754478690675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252612.P14869060754478690675

/-!
# A252613: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252613, there is no canonical definition to state claims against.
-/

/-! ## A252613.P936230649539219211

`A252615(A052905(n+3))`
-/

namespace A252613.P936230649539219211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A052905 (n + 3)).toNat

end

end A252613.P936230649539219211

/-! ## A252613.P2064380040159474293

`A252615(eq[3, A219347(n)])`
-/

namespace A252613.P2064380040159474293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252613.P2064380040159474293

/-! ## A252613.P17071441119874403155

`A252615(A000217(n+6)-5)`
-/

namespace A252613.P17071441119874403155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000217 (n + 6) - 5).toNat

end

end A252613.P17071441119874403155

/-! ## A252613.P6368604932293948783

`A252615(A000124(n+6)-6)`
-/

namespace A252613.P6368604932293948783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000124 (n + 6) - 6).toNat

end

end A252613.P6368604932293948783

/-! ## A252613.P8413026248661668089

`A252615(Δ[A023545(n+2)]-1)`
-/

namespace A252613.P8413026248661668089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (f1 (n + 1) - f1 n - 1).toNat

end

end A252613.P8413026248661668089

/-!
# A252614: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252614, there is no canonical definition to state claims against.
-/

/-! ## A252614.P5436633264066217676

`A252615(A055999(n+4))`
-/

namespace A252614.P5436633264066217676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A055999 (n + 4)).toNat

end

end A252614.P5436633264066217676

/-! ## A252614.P3876331143786530870

`A252615(eq[4, A219347(n)])`
-/

namespace A252614.P3876331143786530870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252614.P3876331143786530870

/-! ## A252614.P16344319979990740571

`A252615(eq[6, A193592(n)])`
-/

namespace A252614.P16344319979990740571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252614.P16344319979990740571

/-! ## A252614.P11581241125941969197

`A252615(eq[10, A185782(n+1)])`
-/

namespace A252614.P11581241125941969197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252614.P11581241125941969197

/-! ## A252614.P8788267738651965003

`A252615(eq[7, A200370(n+1)])`
-/

namespace A252614.P8788267738651965003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252614.P8788267738651965003

/-!
# A252616: Number of (1+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252616, there is no canonical definition to state claims against.
-/

/-! ## A252616.P14896337929928700950

`A252615(∑[n]+1)`
-/

namespace A252616.P14896337929928700950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252616.P14896337929928700950

/-! ## A252616.P13787274157132535586

`record[A252615(∑[A057979(n)])]`
-/

namespace A252616.P13787274157132535586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252616.P13787274157132535586

/-! ## A252616.P13989680760530743135

`record[A010054(n)*A252615(n+1)]`
-/

namespace A252616.P13989680760530743135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252616.P13989680760530743135

/-! ## A252616.P10186004608278605296

`record[gcd(A002262(n), A252615(n+1))]`
-/

namespace A252616.P10186004608278605296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252615 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252616.P10186004608278605296

/-! ## A252616.P1184464821272608358

`record[(2-A002260(n+1))*A252615(n+1)]`
-/

namespace A252616.P1184464821272608358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A252615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252616.P1184464821272608358

/-!
# A252617: Number of (2+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252617, there is no canonical definition to state claims against.
-/

/-! ## A252617.P8135041274914395703

`A252615(∑[n+1]+2)`
-/

namespace A252617.P8135041274914395703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252617.P8135041274914395703

/-! ## A252617.P17640164764583297687

`record[gcd(A241981(n+1), A252615(n+3))]`
-/

namespace A252617.P17640164764583297687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241981 (n + 1)) (A252615 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252617.P17640164764583297687

/-! ## A252617.P16380671423920313191

`record[gcd(A122203(n), A252615(n+3))]`
-/

namespace A252617.P16380671423920313191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122203 n) (A252615 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252617.P16380671423920313191

/-!
# A252618: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252618, there is no canonical definition to state claims against.
-/

/-! ## A252618.P2458541492192049660

`A252615(∑[n+2]+4)`
-/

namespace A252618.P2458541492192049660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252618.P2458541492192049660

/-! ## A252618.P6313425763148512292

`lcm(A020985(n), A252615(A167614(n+1)))`
-/

namespace A252618.P6313425763148512292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252615 (A167614 (n + 1)).toNat)

end

end A252618.P6313425763148512292

/-! ## A252618.P4798615867307504003

`or(A037213(n), A252615(A167614(n+1)))`
-/

namespace A252618.P4798615867307504003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037213 n) (A252615 (A167614 (n + 1)).toNat)

end

end A252618.P4798615867307504003

/-! ## A252618.P7436281546450220286

`or(A063524(n), A252615(A167614(n+1)))`
-/

namespace A252618.P7436281546450220286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A252615 (A167614 (n + 1)).toNat)

end

end A252618.P7436281546450220286

/-! ## A252618.P10126903225319281560

`A252615(A167614(n+1))+A070204(n+1)`
-/

namespace A252618.P10126903225319281560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167614 (n + 1)).toNat + A070204 (n + 1)

end

end A252618.P10126903225319281560

/-!
# A252619: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252619, there is no canonical definition to state claims against.
-/

/-! ## A252619.P6390607667620447657

`A252615(∑[n+3]+7)`
-/

namespace A252619.P6390607667620447657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252619.P6390607667620447657

/-! ## A252619.P5565924146108921886

`A252615(A167614(n+2)+1)%A252620(n+1)`
-/

namespace A252619.P5565924146108921886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252615 (A167614 (n + 2) + 1).toNat) (A252620 (n + 1))

end

end A252619.P5565924146108921886

/-!
# A252620: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252620, there is no canonical definition to state claims against.
-/

/-! ## A252620.P15828203147997550582

`A252615(A000124(n+4)+4)`
-/

namespace A252620.P15828203147997550582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000124 (n + 4) + 4).toNat

end

end A252620.P15828203147997550582

/-! ## A252620.P1595108484277441605

`A252615(A000217(n+4)+5)`
-/

namespace A252620.P1595108484277441605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000217 (n + 4) + 5).toNat

end

end A252620.P1595108484277441605

/-! ## A252620.P16796549786413363293

`A252615(A055998(n+2)+8)`
-/

namespace A252620.P16796549786413363293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A055998 (n + 2) + 8).toNat

end

end A252620.P16796549786413363293

/-! ## A252620.P16193490713142273012

`A252615(A000096(n+4)-(n-1))`
-/

namespace A252620.P16193490713142273012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A252620.P16193490713142273012

/-! ## A252620.P863900620915074759

`A252615(A152947(n+8)-6-Δ[n²])`
-/

namespace A252620.P863900620915074759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A152947 (n + 8) - 6 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A252620.P863900620915074759

/-!
# A252621: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252621, there is no canonical definition to state claims against.
-/

/-! ## A252621.P8950931744924641099

`A252615(A167499(n+4)+1)`
-/

namespace A252621.P8950931744924641099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167499 (n + 4) + 1).toNat

end

end A252621.P8950931744924641099

/-! ## A252621.P17890224308473227675

`A252615(A167487(n+4)-1)`
-/

namespace A252621.P17890224308473227675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167487 (n + 4) - 1).toNat

end

end A252621.P17890224308473227675

/-! ## A252621.P4060085734473201825

`A252615(A077169(n+6)+1)`
-/

namespace A252621.P4060085734473201825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A077169 (n + 6) + 1).toNat

end

end A252621.P4060085734473201825

/-! ## A252621.P16946683644704671506

`A252615(A000217(n+5)+6)`
-/

namespace A252621.P16946683644704671506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000217 (n + 5) + 6).toNat

end

end A252621.P16946683644704671506

/-! ## A252621.P3230898588276568200

`A252615(A167614(n+5)+A001489(n+3))`
-/

namespace A252621.P3230898588276568200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167614 (n + 5) + A001489 (n + 3)).toNat

end

end A252621.P3230898588276568200

/-!
# A252622: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 8 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252622, there is no canonical definition to state claims against.
-/

/-! ## A252622.P9651542258408841344

`A252615(A167487(n+5))`
-/

namespace A252622.P9651542258408841344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167487 (n + 5)).toNat

end

end A252622.P9651542258408841344

/-! ## A252622.P6872349346910186278

`A252615(A167499(n+5)+2)`
-/

namespace A252622.P6872349346910186278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167499 (n + 5) + 2).toNat

end

end A252622.P6872349346910186278

/-! ## A252622.P18379146733763934908

`A252615(A167614(n+5)+4)`
-/

namespace A252622.P18379146733763934908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A167614 (n + 5) + 4).toNat

end

end A252622.P18379146733763934908

/-! ## A252622.P18051625683757996802

`A252615(A000217(n+6)+7)`
-/

namespace A252622.P18051625683757996802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A000217 (n + 6) + 7).toNat

end

end A252622.P18051625683757996802

/-! ## A252622.P3315446299730846018

`A252615(A034856(n+5)+9)`
-/

namespace A252622.P3315446299730846018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252615 (A034856 (n + 5) + 9).toNat

end

end A252622.P3315446299730846018

/-!
# A252623: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 3 6 or 8.

The programs for A252623, there is no canonical definition to state claims against.
-/

/-! ## A252623.P12829866784949669250

`A252628(∑[n]+1)`
-/

namespace A252623.P12829866784949669250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252623.P12829866784949669250

/-! ## A252623.P11041271775685517610

`lcm(2, A252628(A000124(n)))`
-/

namespace A252623.P11041271775685517610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252628 (A000124 n).toNat)

end

end A252623.P11041271775685517610

/-! ## A252623.P1443388900415634616

`record[A010054(n)*A252628(n+1)]`
-/

namespace A252623.P1443388900415634616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252623.P1443388900415634616

/-! ## A252623.P637330859022309813

`record[gcd(A002262(n), A252628(n+1))]`
-/

namespace A252623.P637330859022309813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252628 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252623.P637330859022309813

/-! ## A252623.P14326194382344614099

`record[(1-A014473(n))*A252628(n+1)]`
-/

namespace A252623.P14326194382344614099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014473 n) * A252628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252623.P14326194382344614099

/-!
# A252624: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 3 6 or 8.

The programs for A252624, there is no canonical definition to state claims against.
-/

/-! ## A252624.P1960252357242364169

`A252628(∑[n+1]+2)`
-/

namespace A252624.P1960252357242364169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252624.P1960252357242364169

/-! ## A252624.P2384886970448891812

`record[A010054(n)*A252628(n+2)]`
-/

namespace A252624.P2384886970448891812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252624.P2384886970448891812

/-! ## A252624.P6110216359131677067

`record[gcd(A002262(n), A252628(n+2))]`
-/

namespace A252624.P6110216359131677067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252628 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252624.P6110216359131677067

/-! ## A252624.P15506439114388969804

`lcm(2, A252628(A000096(n+1)))`
-/

namespace A252624.P15506439114388969804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252628 (A000096 (n + 1)).toNat)

end

end A252624.P15506439114388969804

/-!
# A252625: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 3 6 or 8.

The programs for A252625, there is no canonical definition to state claims against.
-/

/-! ## A252625.P52738466277698871

`A252628(∑[n+2]+4)`
-/

namespace A252625.P52738466277698871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252625.P52738466277698871

/-! ## A252625.P9846915321385221772

`lcm((-1)^n, A252628(A167614(n+1)))`
-/

namespace A252625.P9846915321385221772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252628 (A167614 (n + 1)).toNat)

end

end A252625.P9846915321385221772

/-! ## A252625.P3174890135378928015

`A252628(A167614(n+1))+A185238(n)`
-/

namespace A252625.P3174890135378928015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A167614 (n + 1)).toNat + A185238 n

end

end A252625.P3174890135378928015

/-! ## A252625.P8276591444423311317

`A252628(A167614(n+1))+A235145(n)`
-/

namespace A252625.P8276591444423311317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A167614 (n + 1)).toNat + A235145 n

end

end A252625.P8276591444423311317

/-! ## A252625.P14418141787964312374

`lcm(A252628(A167614(n+1)), A299741(n))`
-/

namespace A252625.P14418141787964312374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A252628 (A167614 (n + 1)).toNat) (A299741 n)

end

end A252625.P14418141787964312374

/-!
# A252626: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 3 6 or 8.

The programs for A252626, there is no canonical definition to state claims against.
-/

/-! ## A252626.P6213143794112802232

`A252628(A374004(n+1))`
-/

namespace A252626.P6213143794112802232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A374004 (n + 1)).toNat

end

end A252626.P6213143794112802232

/-! ## A252626.P13196108250516798706

`A252628(A052905(n)+9)`
-/

namespace A252626.P13196108250516798706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A052905 n + 9).toNat

end

end A252626.P13196108250516798706

/-! ## A252626.P12662913958668313703

`A252628(A055999(n)+10)`
-/

namespace A252626.P12662913958668313703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A055999 n + 10).toNat

end

end A252626.P12662913958668313703

/-! ## A252626.P7704086265408635747

`A252628(A167614(n+2)+1)`
-/

namespace A252626.P7704086265408635747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A167614 (n + 2) + 1).toNat

end

end A252626.P7704086265408635747

/-! ## A252626.P1088767326242671733

`A252628(∑[n+4]+3)`
-/

namespace A252626.P1088767326242671733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252626.P1088767326242671733

/-!
# A252627: Number of (n+2)X(5+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 1 3 6 or 8.

The programs for A252627, there is no canonical definition to state claims against.
-/

/-! ## A252627.P627344682251544922

`A252628(A374005(n+1))`
-/

namespace A252627.P627344682251544922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A374005 (n + 1)).toNat

end

end A252627.P627344682251544922

/-! ## A252627.P4842576297641305771

`A252628(A155212(n)+13)`
-/

namespace A252627.P4842576297641305771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A155212 n + 13).toNat

end

end A252627.P4842576297641305771

/-! ## A252627.P1115127326074669685

`A252628(A056000(n)+15)`
-/

namespace A252627.P1115127326074669685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A056000 n + 15).toNat

end

end A252627.P1115127326074669685

/-! ## A252627.P11813624786489718

`A252628(eq[7, A066657(n)])`
-/

namespace A252627.P11813624786489718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252627.P11813624786489718

/-! ## A252627.P15902873504362712296

`A252628(A051936(n+4)+14)`
-/

namespace A252627.P15902873504362712296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252628 (A051936 (n + 4) + 14).toNat

end

end A252627.P15902873504362712296

/-!
# A252629: a(n) = A064735(n) - A000040(n).

The programs for A252629, there is no canonical definition to state claims against.
-/

/-! ## A252629.P16516384104887465612

`A064735(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252629.P16516384104887465612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - A000040 (n + 1)

end

end A252629.P16516384104887465612

/-! ## A252629.P485747845423109399

`A064735(n+1)-p?[n+1-A006530(n+1)]`
-/

namespace A252629.P485747845423109399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252629.P485747845423109399

/-! ## A252629.P7222576285564029984

`A064735(n+1)-p?[A004442(n)+1]`
-/

namespace A252629.P7222576285564029984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252629.P7222576285564029984

/-! ## A252629.P9106171908971190578

`A064735(n+1)-record[A014963(n+2)]`
-/

namespace A252629.P9106171908971190578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252629.P9106171908971190578

/-! ## A252629.P8705750929554701474

`A064735(n+1)-record[A039635(n+2)]`
-/

namespace A252629.P8705750929554701474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252629.P8705750929554701474

/-! ## A252629.P14359874209527220568

`A381606(A008578(n+2))-A008578(n+2)`
-/

namespace A252629.P14359874209527220568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381606 (A008578 (n + 2)).toNat - A008578 (n + 2)

end

end A252629.P14359874209527220568

/-! ## A252629.P7194477769695402005

`A381606(A182986(n+2))-A182986(n+2)`
-/

namespace A252629.P7194477769695402005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381606 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A252629.P7194477769695402005

/-! ## A252629.P14182974760200181512

`A064735(n+1)-record[A064740(n+2)]`
-/

namespace A252629.P14182974760200181512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252629.P14182974760200181512

/-! ## A252629.P17864110363850839631

`A000040(A389647(n+1))-A000040(n+1)`
-/

namespace A252629.P17864110363850839631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A389647 (n + 1)).toNat - A000040 (n + 1)

end

end A252629.P17864110363850839631

/-! ## A252629.P225670088465925713

`A064735(n+1)-p?[A064736(n+1)]`
-/

namespace A252629.P225670088465925713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064735 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A252629.P225670088465925713

/-!
# A252632: Number of (n+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252632, there is no canonical definition to state claims against.
-/

/-! ## A252632.P16891603456667936664

`A252640((n+1)²+n²)`
-/

namespace A252632.P16891603456667936664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 ((n + 1) ^ 2 + n ^ 2)

end

end A252632.P16891603456667936664

/-! ## A252632.P957265387023534449

`record[A252640(A152271(n²))]`
-/

namespace A252632.P957265387023534449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252632.P957265387023534449

/-! ## A252632.P10467376630913003363

`record[A003982(n)*A252640(n+1)]`
-/

namespace A252632.P10467376630913003363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252632.P10467376630913003363

/-! ## A252632.P690875506424097256

`record[gcd(A003987(n), A252640(n+1))]`
-/

namespace A252632.P690875506424097256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A252640 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252632.P690875506424097256

/-! ## A252632.P10436755657878074944

`record[root(A252640(n+1), A280172(n+1))]`
-/

namespace A252632.P10436755657878074944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252640 (n + 1) : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252632.P10436755657878074944

/-!
# A252633: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252633, there is no canonical definition to state claims against.
-/

/-! ## A252633.P5045573264297814147

`A252640(∑[n+1])`
-/

namespace A252633.P5045573264297814147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252633.P5045573264297814147

/-! ## A252633.P16835895943679046898

`record[root(A252640(n+1), A027465(n))]`
-/

namespace A252633.P16835895943679046898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252640 (n + 1) : ℝ) ^ (1 / (A027465 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252633.P16835895943679046898

/-! ## A252633.P4806440984039010000

`record[gcd(A180663(n), A252640(n+1))]`
-/

namespace A252633.P4806440984039010000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180663 n) (A252640 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252633.P4806440984039010000

/-! ## A252633.P16969966888144979969

`record[root(A252640(n+1), A004736(n+1))]`
-/

namespace A252633.P16969966888144979969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252640 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252633.P16969966888144979969

/-! ## A252633.P18102335397075224116

`record[root(A252640(n+1), A239829(n+1))]`
-/

namespace A252633.P18102335397075224116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252640 (n + 1) : ℝ) ^ (1 / (A239829 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252633.P18102335397075224116

/-!
# A252634: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252634, there is no canonical definition to state claims against.
-/

/-! ## A252634.P16781055928343170338

`A252640(∑[n+2])`
-/

namespace A252634.P16781055928343170338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252634.P16781055928343170338

/-! ## A252634.P11429183490651265072

`record[A252640(A000096(A286622(n)))]`
-/

namespace A252634.P11429183490651265072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000096 (A286622 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252634.P11429183490651265072

/-! ## A252634.P17280230154682117772

`record[A252640(A000096(A328399(n)))]`
-/

namespace A252634.P17280230154682117772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252634.P17280230154682117772

/-! ## A252634.P6467666723412899643

`record[A252640(A000096(A002260(n+1)))]`
-/

namespace A252634.P6467666723412899643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252634.P6467666723412899643

/-! ## A252634.P1296890759428283457

`record[A252640(A000096(A050873(n+1)))]`
-/

namespace A252634.P1296890759428283457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000096 (A050873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252634.P1296890759428283457

/-!
# A252635: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252635, there is no canonical definition to state claims against.
-/

/-! ## A252635.P3912028450547986931

`A252640(∑[n+3]+1)`
-/

namespace A252635.P3912028450547986931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252635.P3912028450547986931

/-!
# A252636: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252636, there is no canonical definition to state claims against.
-/

/-! ## A252636.P4209623608260654305

`A252640(A155212(n)+5)`
-/

namespace A252636.P4209623608260654305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A155212 n + 5).toNat

end

end A252636.P4209623608260654305

/-! ## A252636.P16720441417651973126

`A252640(eq[3, A193592(n)])`
-/

namespace A252636.P16720441417651973126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252636.P16720441417651973126

/-! ## A252636.P14315110547851440284

`A252640(Δ[A034857(n+1)])`
-/

namespace A252636.P14315110547851440284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n).toNat

end

end A252636.P14315110547851440284

/-! ## A252636.P7185943682371978230

`A252640(Δ[A006416(n+2)])`
-/

namespace A252636.P7185943682371978230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n).toNat

end

end A252636.P7185943682371978230

/-! ## A252636.P14096025144930511880

`A252640(A052905(n+1)+2)`
-/

namespace A252636.P14096025144930511880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A052905 (n + 1) + 2).toNat

end

end A252636.P14096025144930511880

/-!
# A252637: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252637, there is no canonical definition to state claims against.
-/

/-! ## A252637.P17715555796929718595

`A252640(Δ[A264443(n)])`
-/

namespace A252637.P17715555796929718595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n).toNat

end

end A252637.P17715555796929718595

/-! ## A252637.P1622655560478883709

`A252640(A046691(n+3))`
-/

namespace A252637.P1622655560478883709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A046691 (n + 3)).toNat

end

end A252637.P1622655560478883709

/-! ## A252637.P14201562671802631979

`A252640(A056115(n)+11)`
-/

namespace A252637.P14201562671802631979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A056115 n + 11).toNat

end

end A252637.P14201562671802631979

/-! ## A252637.P11856415049115251280

`A252640(eq[4, A193592(n)])`
-/

namespace A252637.P11856415049115251280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252637.P11856415049115251280

/-! ## A252637.P15180128535747368236

`A252640(Δ[A023545(n+1)])`
-/

namespace A252637.P15180128535747368236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n).toNat

end

end A252637.P15180128535747368236

/-!
# A252638: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252638, there is no canonical definition to state claims against.
-/

/-! ## A252638.P13835048790103008996

`A252640(A052905(n+3))`
-/

namespace A252638.P13835048790103008996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A052905 (n + 3)).toNat

end

end A252638.P13835048790103008996

/-! ## A252638.P16911770968529661660

`A252640(eq[3, A219347(n)])`
-/

namespace A252638.P16911770968529661660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252638.P16911770968529661660

/-! ## A252638.P7969952895833017506

`A252640(eq[5, A193592(n)])`
-/

namespace A252638.P7969952895833017506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252638.P7969952895833017506

/-! ## A252638.P8594705889939307715

`A252640(eq[8, A185782(n+1)])`
-/

namespace A252638.P8594705889939307715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252638.P8594705889939307715

/-! ## A252638.P3872523981342254544

`A252640(Δ[Δ[A006504(n+1)]])`
-/

namespace A252638.P3872523981342254544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n).toNat

end

end A252638.P3872523981342254544

/-!
# A252639: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252639, there is no canonical definition to state claims against.
-/

/-! ## A252639.P3675381226368785996

`A252640(A055999(n+4))`
-/

namespace A252639.P3675381226368785996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A055999 (n + 4)).toNat

end

end A252639.P3675381226368785996

/-! ## A252639.P10785495849419899258

`A252640(eq[4, A219347(n)])`
-/

namespace A252639.P10785495849419899258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252639.P10785495849419899258

/-! ## A252639.P13831825806302333187

`A252640(eq[6, A193592(n)])`
-/

namespace A252639.P13831825806302333187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252639.P13831825806302333187

/-! ## A252639.P3965900572319684341

`A252640(eq[10, A185782(n+1)])`
-/

namespace A252639.P3965900572319684341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252639.P3965900572319684341

/-! ## A252639.P7898402025480274389

`A252640(eq[7, A200370(n+1)])`
-/

namespace A252639.P7898402025480274389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252639.P7898402025480274389

/-!
# A252641: Number of (1+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252641, there is no canonical definition to state claims against.
-/

/-! ## A252641.P3851958101530859696

`A252640(∑[n]+1)`
-/

namespace A252641.P3851958101530859696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252641.P3851958101530859696

/-! ## A252641.P16205706792438943733

`record[gcd(A002262(n), A252640(n+1))]`
-/

namespace A252641.P16205706792438943733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252640 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252641.P16205706792438943733

/-! ## A252641.P11256438387623202475

`record[(2-A002260(n+1))*A252640(n+1)]`
-/

namespace A252641.P11256438387623202475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002260 (n + 1)) * A252640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252641.P11256438387623202475

/-! ## A252641.P12029472049531894389

`A252640(A000124(n))+A025444(n)`
-/

namespace A252641.P12029472049531894389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000124 n).toNat + A025444 n

end

end A252641.P12029472049531894389

/-! ## A252641.P1622314734614829753

`lcm(A033999(n), A252640(A000124(n)))`
-/

namespace A252641.P1622314734614829753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252640 (A000124 n).toNat)

end

end A252641.P1622314734614829753

/-!
# A252642: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252642, there is no canonical definition to state claims against.
-/

/-! ## A252642.P11106133137136685202

`A252640(∑[n+1]+2)`
-/

namespace A252642.P11106133137136685202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252642.P11106133137136685202

/-! ## A252642.P1201749817360826756

`record[root(A252640(n+3), A283424(n))]`
-/

namespace A252642.P1201749817360826756
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252640 (n + 3) : ℝ) ^ (1 / (A283424 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252642.P1201749817360826756

/-!
# A252643: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252643, there is no canonical definition to state claims against.
-/

/-! ## A252643.P13620380591848313798

`A252640(∑[n+2]+4)`
-/

namespace A252643.P13620380591848313798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252643.P13620380591848313798

/-! ## A252643.P13512280284906986864

`lcm(1-and(2, n), A252640(A167614(n+1)))`
-/

namespace A252643.P13512280284906986864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A252640 (A167614 (n + 1)).toNat)

end

end A252643.P13512280284906986864

/-! ## A252643.P11833150741111398281

`A252640(A167614(n+1))+A178780(n)`
-/

namespace A252643.P11833150741111398281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A167614 (n + 1)).toNat + A178780 n

end

end A252643.P11833150741111398281

/-! ## A252643.P12831535587343715207

`lcm(A033999(n), A252640(A167614(n+1)))`
-/

namespace A252643.P12831535587343715207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252640 (A167614 (n + 1)).toNat)

end

end A252643.P12831535587343715207

/-! ## A252643.P18146932858784226093

`or(A000007(n), A252640(A167614(n+1)))`
-/

namespace A252643.P18146932858784226093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252640 (A167614 (n + 1)).toNat)

end

end A252643.P18146932858784226093

/-!
# A252644: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252644, there is no canonical definition to state claims against.
-/

/-! ## A252644.P7289862256850322617

`A252640(A052905(n)+9)`
-/

namespace A252644.P7289862256850322617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A052905 n + 9).toNat

end

end A252644.P7289862256850322617

/-! ## A252644.P6403456019629598669

`A252640(A055999(n)+10)`
-/

namespace A252644.P6403456019629598669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A055999 n + 10).toNat

end

end A252644.P6403456019629598669

/-! ## A252644.P9708279623739011586

`A252640(Δ[A008778(n)]+6)`
-/

namespace A252644.P9708279623739011586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n + 6).toNat

end

end A252644.P9708279623739011586

/-! ## A252644.P15395338465546609135

`A252640(A167614(n+2)+1)`
-/

namespace A252644.P15395338465546609135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A167614 (n + 2) + 1).toNat

end

end A252644.P15395338465546609135

/-! ## A252644.P605006038669120657

`A252640(A000096(n+2)+5)`
-/

namespace A252644.P605006038669120657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000096 (n + 2) + 5).toNat

end

end A252644.P605006038669120657

/-!
# A252645: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252645, there is no canonical definition to state claims against.
-/

/-! ## A252645.P4555276605528279736

`A252640(A167499(n+3))`
-/

namespace A252645.P4555276605528279736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A167499 (n + 3)).toNat

end

end A252645.P4555276605528279736

/-! ## A252645.P5406696737134852788

`A252640(A155212(n)+13)`
-/

namespace A252645.P5406696737134852788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A155212 n + 13).toNat

end

end A252645.P5406696737134852788

/-! ## A252645.P16170143297900110819

`A252640(A056000(n)+15)`
-/

namespace A252645.P16170143297900110819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A056000 n + 15).toNat

end

end A252645.P16170143297900110819

/-! ## A252645.P1903707218650844055

`A252640(A133263(n+4)+3)`
-/

namespace A252645.P1903707218650844055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A133263 (n + 4) + 3).toNat

end

end A252645.P1903707218650844055

/-! ## A252645.P8957712360370518309

`A252640(A000217(n+4)+5)`
-/

namespace A252645.P8957712360370518309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000217 (n + 4) + 5).toNat

end

end A252645.P8957712360370518309

/-!
# A252646: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252646, there is no canonical definition to state claims against.
-/

/-! ## A252646.P17624259609507989715

`A252640(A056115(n)+21)`
-/

namespace A252646.P17624259609507989715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A056115 n + 21).toNat

end

end A252646.P17624259609507989715

/-! ## A252646.P11156599153131232321

`A252640(Δ[A264443(n)]+10)`
-/

namespace A252646.P11156599153131232321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (f1 (n + 1) - f1 n + 10).toNat

end

end A252646.P11156599153131232321

/-! ## A252646.P1115386515204442163

`A252640(A167499(n+4)+1)`
-/

namespace A252646.P1115386515204442163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A167499 (n + 4) + 1).toNat

end

end A252646.P1115386515204442163

/-! ## A252646.P10473078371662000127

`A252640(A000124(n+5)+5)`
-/

namespace A252646.P10473078371662000127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A000124 (n + 5) + 5).toNat

end

end A252646.P10473078371662000127

/-! ## A252646.P16265415450045877086

`A252640(eq[7, A131818(n+1)])`
-/

namespace A252646.P16265415450045877086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252646.P16265415450045877086

/-!
# A252647: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252647, there is no canonical definition to state claims against.
-/

/-! ## A252647.P14385382874338187893

`A252640(A056119(n)+28)`
-/

namespace A252647.P14385382874338187893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A056119 n + 28).toNat

end

end A252647.P14385382874338187893

/-! ## A252647.P13951272078787366200

`A252640(eq[11, A066657(n)])`
-/

namespace A252647.P13951272078787366200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252647.P13951272078787366200

/-! ## A252647.P6308103685289340245

`A252640(A167614(n+5)+4)`
-/

namespace A252647.P6308103685289340245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A167614 (n + 5) + 4).toNat

end

end A252647.P6308103685289340245

/-! ## A252647.P12267835217661013451

`A252640(A155212(n+2)+15)`
-/

namespace A252647.P12267835217661013451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (A155212 (n + 2) + 15).toNat

end

end A252647.P12267835217661013451

/-! ## A252647.P14570275544603282892

`A252640(eq[8, A131818(n+1)])`
-/

namespace A252647.P14570275544603282892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252647.P14570275544603282892

/-!
# A252649: Number of positive integers that are less than or equal to n and have a primitive root.

The programs for A252649, the canonical program `A252649.P11680988129779242489` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252649 has offset 1).

The definition of A252649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252649.P14452882502935785089

`∑[char[A160377(n+1)]]`
-/

namespace A252649.P14452882502935785089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P14452882502935785089

namespace A252649

/-- `∑[char[A160377(n+1)]]` -/
def P14452882502935785089.Spec : Prop :=
  ∀ n, (P14452882502935785089.a n : ℤ) = A252649 (n + 1)

end A252649

/-! ## A252649.P11680988129779242489

`∑[A211487(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A252649

/-- `∑[A211487(n+1)]+1` -/
def P11680988129779242489.Spec : Prop :=
  ∀ n, P11680988129779242489.a n = A252649 (n + 1)

theorem P11680988129779242489.correct : P11680988129779242489.Spec := by
  intro n
  simp only [A252649, Nat.add_sub_cancel]

end A252649

/-! ## A252649.P2701389085344065541

`∑[A034380(n+1)%2]`
-/

namespace A252649.P2701389085344065541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034380 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P2701389085344065541

namespace A252649

/-- `∑[A034380(n+1)%2]` -/
def P2701389085344065541.Spec : Prop :=
  ∀ n, P2701389085344065541.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P4178513029097236585

`∑[A290084(n+1)%2]`
-/

namespace A252649.P4178513029097236585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290084 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P4178513029097236585

namespace A252649

/-- `∑[A290084(n+1)%2]` -/
def P4178513029097236585.Spec : Prop :=
  ∀ n, P4178513029097236585.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P12547397167433858139

`∑[A289625(n+1)%3]`
-/

namespace A252649.P12547397167433858139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289625 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P12547397167433858139

namespace A252649

/-- `∑[A289625(n+1)%3]` -/
def P12547397167433858139.Spec : Prop :=
  ∀ n, P12547397167433858139.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P3438361746714317643

`∑[C(A070667(n+1), n)]`
-/

namespace A252649.P3438361746714317643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070667 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P3438361746714317643

namespace A252649

/-- `∑[C(A070667(n+1), n)]` -/
def P3438361746714317643.Spec : Prop :=
  ∀ n, (P3438361746714317643.a n : ℤ) = A252649 (n + 1)

end A252649

/-! ## A252649.P7116103263484838380

`∑[floor(acot(A104194(n+1)))]`
-/

namespace A252649.P7116103263484838380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A104194 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P7116103263484838380

namespace A252649

/-- `∑[floor(acot(A104194(n+1)))]` -/
def P7116103263484838380.Spec : Prop :=
  ∀ n, P7116103263484838380.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P16354582191571632830

`∑[floor(1/A046072(n+1))]`
-/

namespace A252649.P16354582191571632830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A046072 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P16354582191571632830

namespace A252649

/-- `∑[floor(1/A046072(n+1))]` -/
def P16354582191571632830.Spec : Prop :=
  ∀ n, P16354582191571632830.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P6634834996447713395

`∑[round(1/A060594(n+1))]`
-/

namespace A252649.P6634834996447713395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A060594 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P6634834996447713395

namespace A252649

/-- `∑[round(1/A060594(n+1))]` -/
def P6634834996447713395.Spec : Prop :=
  ∀ n, P6634834996447713395.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P1575554509574201166

`∑[char[A318909(n+1)]]+1`
-/

namespace A252649.P1575554509574201166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318909 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252649.P1575554509574201166

namespace A252649

/-- `∑[char[A318909(n+1)]]+1` -/
def P1575554509574201166.Spec : Prop :=
  ∀ n, (P1575554509574201166.a n : ℤ) = A252649 (n + 1)

end A252649

/-! ## A252649.P14664120030627948669

`∑[char[A033948(n+1)-1]]`
-/

namespace A252649.P14664120030627948669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P14664120030627948669

namespace A252649

/-- `∑[char[A033948(n+1)-1]]` -/
def P14664120030627948669.Spec : Prop :=
  ∀ n, (P14664120030627948669.a n : ℤ) = A252649 (n + 1)

end A252649

/-! ## A252649.P8832967691984788819

`∑[ceil(A046144(n+1)/(n+1))]`
-/

namespace A252649.P8832967691984788819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046144 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P8832967691984788819

namespace A252649

/-- `∑[ceil(A046144(n+1)/(n+1))]` -/
def P8832967691984788819.Spec : Prop :=
  ∀ n, P8832967691984788819.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P10046813809991471737

`∑[abs(A008683(A060594(n+1)))]`
-/

namespace A252649.P10046813809991471737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A060594 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P10046813809991471737

namespace A252649

/-- `∑[abs(A008683(A060594(n+1)))]` -/
def P10046813809991471737.Spec : Prop :=
  ∀ n, P10046813809991471737.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P12654463126932843227

`∑[A008683(A034380(n+1)²)]`
-/

namespace A252649.P12654463126932843227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A034380 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P12654463126932843227

namespace A252649

/-- `∑[A008683(A034380(n+1)²)]` -/
def P12654463126932843227.Spec : Prop :=
  ∀ n, P12654463126932843227.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P14413894422815508985

`∑[A008683(A319100(n+1))²]`
-/

namespace A252649.P14413894422815508985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A319100 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P14413894422815508985

namespace A252649

/-- `∑[A008683(A319100(n+1))²]` -/
def P14413894422815508985.Spec : Prop :=
  ∀ n, P14413894422815508985.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P17493801093604313702

`∑[A008683(6*A034380(n+1))]`
-/

namespace A252649.P17493801093604313702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * A034380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P17493801093604313702

namespace A252649

/-- `∑[A008683(6*A034380(n+1))]` -/
def P17493801093604313702.Spec : Prop :=
  ∀ n, P17493801093604313702.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P5283719408431635940

`∑[∑{d}[A034380(n+1), A008683(#)]]`
-/

namespace A252649.P5283719408431635940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P5283719408431635940

namespace A252649

/-- `∑[∑{d}[A034380(n+1), A008683(#)]]` -/
def P5283719408431635940.Spec : Prop :=
  ∀ n, P5283719408431635940.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P7362756192317251376

`∑[∏{e}[A155828(n+1), A001221(#)]]`
-/

namespace A252649.P7362756192317251376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A001221 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P7362756192317251376

namespace A252649

/-- `∑[∏{e}[A155828(n+1), A001221(#)]]` -/
def P7362756192317251376.Spec : Prop :=
  ∀ n, P7362756192317251376.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P2255552003657004300

`∑[∏{e}[A155828(n+1), A155828(#)]]`
-/

namespace A252649.P2255552003657004300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A155828 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P2255552003657004300

namespace A252649

/-- `∑[∏{e}[A155828(n+1), A155828(#)]]` -/
def P2255552003657004300.Spec : Prop :=
  ∀ n, P2255552003657004300.a n = A252649 (n + 1)

end A252649

/-! ## A252649.P4491654520714843072

`∑[and(1, A000010(A155828(n+1)+1))]`
-/

namespace A252649.P4491654520714843072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A155828 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252649.P4491654520714843072

namespace A252649

/-- `∑[and(1, A000010(A155828(n+1)+1))]` -/
def P4491654520714843072.Spec : Prop :=
  ∀ n, P4491654520714843072.a n = A252649 (n + 1)

end A252649

/-!
# A252650: Expansion of (eta(q) * eta(q^2) * eta(q^3) / eta(q^6))^2 in powers of q.

The programs for A252650, there is no canonical definition to state claims against.
-/

/-! ## A252650.P7782032065766455112

`A230057(n)/A132954(n)`
-/

namespace A252650.P7782032065766455112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230057 n : ℚ) / (A132954 n : ℚ)

end

end A252650.P7782032065766455112

/-! ## A252650.P5354299643288498998

`A293386(∑[4*n])`
-/

namespace A252650.P5354299643288498998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252650.P5354299643288498998

/-! ## A252650.P6035755597836552909

`or(char[2], A293386(A001844(n)+2*n))`
-/

namespace A252650.P6035755597836552909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293386 (A001844 n + (2 * n : ℤ)).toNat)

end

end A252650.P6035755597836552909

/-! ## A252650.P3221660193054444486

`or(char[2], A293386(A001844(n)+n+n))`
-/

namespace A252650.P3221660193054444486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293386 (A001844 n + (n : ℤ) + (n : ℤ)).toNat)

end

end A252650.P3221660193054444486

/-! ## A252650.P2575749739443207689

`A293386(A046092(n))%(2*xor(-1, n²))`
-/

namespace A252650.P2575749739443207689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293386 (A046092 n).toNat) (2 * Int.xor (-1) (n ^ 2 : ℤ))

end

end A252650.P2575749739443207689

/-! ## A252650.P13084793747514573722

`A293386(A046092(n))%A000051(n)`
-/

namespace A252650.P13084793747514573722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293386 (A046092 n).toNat) (A000051 n)

end

end A252650.P13084793747514573722

/-! ## A252650.P379361342261844996

`(n+1)/A000027(n+1)*A293386(A001844(n)+n+n)`
-/

namespace A252650.P379361342261844996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000027 (n + 1) : ℚ) * (A293386 (A001844 n + (n : ℤ) + (n : ℤ)).toNat : ℚ)

end

end A252650.P379361342261844996

/-!
# A252651: Expansion of q^(-1/2) * (eta(q) * eta(q^2) * eta(q^6) / eta(q^3))^2 in powers of q.

The programs for A252651, the canonical program `A252651.P4540024866136707722` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252651 has offset 0).

The definition of A252651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252651.P13298383730658202401

`A263773(2*n+1)/6`
-/

namespace A252651.P13298383730658202401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263773 (2 * n + 1) : ℚ) / 6

end

end A252651.P13298383730658202401

namespace A252651

/-- `A263773(2*n+1)/6` -/
def P13298383730658202401.Spec : Prop :=
  ∀ n, P13298383730658202401.a n = (A252651 n : ℚ)

end A252651

/-! ## A252651.P3471934447766431067

`-(A252650(2*n+1)/2)`
-/

namespace A252651.P3471934447766431067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A252650 (2 * n + 1) : ℚ) / 2)

end

end A252651.P3471934447766431067

namespace A252651

/-- `-(A252650(2*n+1)/2)` -/
def P3471934447766431067.Spec : Prop :=
  ∀ n, P3471934447766431067.a n = (A252651 n : ℚ)

end A252651

/-! ## A252651.P9776859729767667863

`floor(A263773(A005408(n))/6)`
-/

namespace A252651.P9776859729767667863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263773 (A005408 n).toNat : ℚ) / 6⌋

end

end A252651.P9776859729767667863

namespace A252651

/-- `floor(A263773(A005408(n))/6)` -/
def P9776859729767667863.Spec : Prop :=
  ∀ n, P9776859729767667863.a n = A252651 n

end A252651

/-! ## A252651.P13953009572107755927

`(A263773(A005408(n))/6)%∑[A000040(n+1)]`
-/

namespace A252651.P13953009572107755927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A263773 (A005408 n).toNat : ℚ) / 6)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252651.P13953009572107755927

namespace A252651

/-- `(A263773(A005408(n))/6)%∑[A000040(n+1)]` -/
def P13953009572107755927.Spec : Prop :=
  ∀ n, P13953009572107755927.a n = A252651 n

end A252651

/-! ## A252651.P11721588865952449632

`A242874(2*n+1)/A242874(A124625(2*n))`
-/

namespace A252651.P11721588865952449632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242874 (2 * n + 1) : ℚ) / (A242874 (A124625 (2 * n)).toNat : ℚ)

end

end A252651.P11721588865952449632

namespace A252651

/-- `A242874(2*n+1)/A242874(A124625(2*n))` -/
def P11721588865952449632.Spec : Prop :=
  ∀ n, P11721588865952449632.a n = (A252651 n : ℚ)

end A252651

/-! ## A252651.P4540024866136707722

`A046913(2*n+1)/A061347(n+1)*A061347(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A252651

/-- `A046913(2*n+1)/A061347(n+1)*A061347(n+2)` -/
def P4540024866136707722.Spec : Prop :=
  ∀ n, P4540024866136707722.a n = (A252651 n : ℚ)

end A252651

/-! ## A252651.P18169103372756051057

`A116607(2*n+1)/(A061347(n+1)*A061347(n+2))`
-/

namespace A252651.P18169103372756051057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116607 (2 * n + 1) : ℚ) / (A061347 (n + 1) * A061347 (n + 2) : ℚ)

end

end A252651.P18169103372756051057

namespace A252651

/-- `A116607(2*n+1)/(A061347(n+1)*A061347(n+2))` -/
def P18169103372756051057.Spec : Prop :=
  ∀ n, P18169103372756051057.a n = (A252651 n : ℚ)

end A252651

/-!
# A252652: a(n) is the smallest nonnegative integer such that a(n)! contains a string of exactly n consecutive 0's, not including trailing 0's.

The programs for A252652, there is no canonical definition to state claims against.
-/

/-! ## A252652.P16013111236239266580

`A006666(7^n-n^5)+comp[comp[∑[n]]+n]`
-/

namespace A252652.P16013111236239266580
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (7 ^ n - n ^ 5) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A252652.P16013111236239266580

/-!
# A252653: Number of free polyominoes with n cells containing a complete self-avoiding walk.

The programs for A252653, there is no canonical definition to state claims against.
-/

/-! ## A252653.P17705684422492626614

`A332833(n)+A001462(A018190(n+1))`
-/

namespace A252653.P17705684422492626614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332833 n + A001462 (A018190 (n + 1)).toNat

end

end A252653.P17705684422492626614

/-! ## A252653.P7099034097741696525

`A001006(n)-A337682(A000045(n+2))`
-/

namespace A252653.P7099034097741696525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A337682 (A000045 (n + 2)).toNat

end

end A252653.P7099034097741696525

/-! ## A252653.P2494222346608576976

`A337125(A148073(n))`
-/

namespace A252653.P2494222346608576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A148073 n).toNat

end

end A252653.P2494222346608576976

/-! ## A252653.P16106131480395802907

`A135304(A090901(n+2))`
-/

namespace A252653.P16106131480395802907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A090901 (n + 2)).toNat

end

end A252653.P16106131480395802907

/-!
# A252654: Number of multisets of nonempty words with a total of n letters over n-ary alphabet.

The programs for A252654, there is no canonical definition to state claims against.
-/

/-! ## A252654.P13329359910578001286

`A144074(∑[4*n])`
-/

namespace A252654.P13329359910578001286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252654.P13329359910578001286

/-! ## A252654.P7132849220937043979

`A185246(n)+A144074(A046092(n))`
-/

namespace A252654.P7132849220937043979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A144074 (A046092 n).toNat

end

end A252654.P7132849220937043979

/-! ## A252654.P7045945854720722034

`gcd(A000038(n), A144074(A046092(n)))`
-/

namespace A252654.P7045945854720722034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144074 (A046092 n).toNat)

end

end A252654.P7045945854720722034

/-! ## A252654.P9819653453610559054

`or(A000007(n), A144074(A046092(n)))`
-/

namespace A252654.P9819653453610559054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144074 (A046092 n).toNat)

end

end A252654.P9819653453610559054

/-! ## A252654.P15228078639440211539

`or(A025469(n), A144074(A046092(n)))`
-/

namespace A252654.P15228078639440211539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A144074 (A046092 n).toNat)

end

end A252654.P15228078639440211539

/-!
# A252660: Numbers k such that 7^k - k is a semiprime.

The programs for A252660, there is no canonical definition to state claims against.
-/

/-! ## A252660.P17177732285266487786

`and(A023863(n+4), A065891(A167887(n+1)))`
-/

namespace A252660.P17177732285266487786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023863 (n + 4)) (A065891 (A167887 (n + 1)).toNat)

end

end A252660.P17177732285266487786

/-!
# A252661: Numbers m such that 8^m - m is a semiprime.

The programs for A252661, there is no canonical definition to state claims against.
-/

/-! ## A252661.P3759301682873064151

`3*A106306(a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A252661.P3759301682873064151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  3 * A106306 (a (n - 2)).toNat

end

end A252661.P3759301682873064151

/-!
# A252662: Numbers m such that 9^m - m is a semiprime.

The programs for A252662, there is no canonical definition to state claims against.
-/

/-! ## A252662.P11301246686021291785

`lt[A276557(A276505(n+4)), A276555(n+1)]`
-/

namespace A252662.P11301246686021291785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276557 (A276505 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A252662.P11301246686021291785

/-!
# A252665: Number of ways to write n as n = a*b*c*d*e with 1 <= a <= b <= c <= d <= e <= n.

The programs for A252665, there is no canonical definition to state claims against.
-/

/-! ## A252665.P10399209931294685506

`A001055(n+1)-A188041(A276390(n))`
-/

namespace A252665.P10399209931294685506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A188041 (A276390 n).toNat

end

end A252665.P10399209931294685506

/-! ## A252665.P10707328033290377422

`Δ[A096276(n)]-A102681(A165825(n+1))`
-/

namespace A252665.P10707328033290377422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102681 (A165825 (n + 1)).toNat

end

end A252665.P10707328033290377422

/-! ## A252665.P12431549644373936700

`A001055(n+1)-A025469(A165826(n+1))`
-/

namespace A252665.P12431549644373936700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A025469 (A165826 (n + 1)).toNat

end

end A252665.P12431549644373936700

/-! ## A252665.P5628484099832181199

`A001055(n+1)-A102681(A165825(n+1))`
-/

namespace A252665.P5628484099832181199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A102681 (A165825 (n + 1)).toNat

end

end A252665.P5628484099832181199

/-! ## A252665.P13814264947119907792

`A001055(n+1)-A185284(A273494(n+1))`
-/

namespace A252665.P13814264947119907792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A185284 (A273494 (n + 1)).toNat

end

end A252665.P13814264947119907792

/-! ## A252665.P17270907292943199702

`A167688(n+1)+A033273(n+1)-A178798(A329900(n+1))`
-/

namespace A252665.P17270907292943199702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (n + 1) + A033273 (n + 1) - A178798 (A329900 (n + 1)).toNat

end

end A252665.P17270907292943199702

/-! ## A252665.P3656555836482750612

`A003056(A228897(A057567(n+1)))`
-/

namespace A252665.P3656555836482750612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A228897 (A057567 (n + 1)).toNat).toNat

end

end A252665.P3656555836482750612

/-! ## A252665.P5584542690985935362

`A028422(n+1)+A002033(A002033(n)²)%2`
-/

namespace A252665.P5584542690985935362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + Int.tmod (A002033 (A002033 n ^ 2).toNat) 2

end

end A252665.P5584542690985935362

/-!
# A252669: a(n) is the smallest integer k such that n*k mod (n+k) = 1, or -1 if no such k exists.

The programs for A252669, there is no canonical definition to state claims against.
-/

/-! ## A252669.P9646917927294342758

`A259036(n+1)-(n+1)`
-/

namespace A252669.P9646917927294342758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - (n + 1 : ℤ)

end

end A252669.P9646917927294342758

/-! ## A252669.P2933003779307351348

`1-∑[1-Δ[A259036(n)]]`
-/

namespace A252669.P2933003779307351348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252669.P2933003779307351348

/-! ## A252669.P4076996685031660142

`A033677((n+1)²+1)-(n+1)`
-/

namespace A252669.P4076996685031660142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((n + 1) ^ 2 + 1) - (n + 1 : ℤ)

end

end A252669.P4076996685031660142

/-! ## A252669.P11309146368205511862

`A140271((n+1)²+1)-(n+1)`
-/

namespace A252669.P11309146368205511862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 ((n + 1) ^ 2 + 1) - (n + 1 : ℤ)

end

end A252669.P11309146368205511862

/-! ## A252669.P15580833549869504104

`A348582((n+1)²+1)-(n+1)`
-/

namespace A252669.P15580833549869504104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 ((n + 1) ^ 2 + 1) - (n + 1 : ℤ)

end

end A252669.P15580833549869504104

/-! ## A252669.P2974234045888686158

`∑[A057428(n)+Δ[A259036(n)]]`
-/

namespace A252669.P2974234045888686158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252669.P2974234045888686158

/-! ## A252669.P16162662391693558071

`∑[Δ[A259036(n)]-A057427(n)]`
-/

namespace A252669.P16162662391693558071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252669.P16162662391693558071

/-! ## A252669.P10865235612313171183

`∑[A004277(n)]%A259036(n+1)`
-/

namespace A252669.P10865235612313171183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A259036 (n + 1))

end

end A252669.P10865235612313171183

/-! ## A252669.P5134571097925380605

`A023443(A033677((n+1)²+1)-n)`
-/

namespace A252669.P5134571097925380605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033677 ((n + 1) ^ 2 + 1) - (n : ℤ)).toNat

end

end A252669.P5134571097925380605

/-!
# A252671: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252671, there is no canonical definition to state claims against.
-/

/-! ## A252671.P13070691664644167697

`A252679((n+1)²+n²)`
-/

namespace A252671.P13070691664644167697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 ((n + 1) ^ 2 + n ^ 2)

end

end A252671.P13070691664644167697

/-! ## A252671.P9505957493209602307

`A007318(∑[n])*A252679(A001844(n))`
-/

namespace A252671.P9505957493209602307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252679 (A001844 n).toNat

end

end A252671.P9505957493209602307

/-! ## A252671.P3007482630613821341

`char[A004448(n)]*A252679(A001844(n))`
-/

namespace A252671.P3007482630613821341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252679 (A001844 n).toNat

end

end A252671.P3007482630613821341

/-! ## A252671.P6924696221012588970

`A252679(A001844(n))+A000007(n+1)`
-/

namespace A252671.P6924696221012588970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A001844 n).toNat + A000007 (n + 1)

end

end A252671.P6924696221012588970

/-! ## A252671.P15585513992288531125

`A087960(2*n)²*A252679(A001844(n))`
-/

namespace A252671.P15585513992288531125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) ^ 2 * A252679 (A001844 n).toNat

end

end A252671.P15585513992288531125

/-!
# A252672: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252672, there is no canonical definition to state claims against.
-/

/-! ## A252672.P10318244433387136474

`A252679(∑[n+1])`
-/

namespace A252672.P10318244433387136474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252672.P10318244433387136474

/-! ## A252672.P7858544764881345850

`record[A252679(A130270(n+1))]`
-/

namespace A252672.P7858544764881345850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252672.P7858544764881345850

/-! ## A252672.P893243901343470989

`record[A104984(n)*A252679(n+1)]`
-/

namespace A252672.P893243901343470989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104984 n * A252679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252672.P893243901343470989

/-! ## A252672.P17138267586138759437

`record[A252679(n+1)/A110608(n)]`
-/

namespace A252672.P17138267586138759437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252679 (n + 1) : ℚ) / (A110608 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252672.P17138267586138759437

/-! ## A252672.P9385139838649296751

`record[root(A252679(n+1), A029653(n))]`
-/

namespace A252672.P9385139838649296751
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252679 (n + 1) : ℝ) ^ (1 / (A029653 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252672.P9385139838649296751

/-!
# A252673: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0, 2, 5, 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0, 2, 5, 6 or 7.

The programs for A252673, there is no canonical definition to state claims against.
-/

/-! ## A252673.P7406187614196498101

`A252679(∑[n+2])`
-/

namespace A252673.P7406187614196498101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252673.P7406187614196498101

/-! ## A252673.P9745106651190500359

`A252679(A000096(n+1))+char[33]`
-/

namespace A252673.P9745106651190500359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252673.P9745106651190500359

/-! ## A252673.P2111469898175917380

`or(A000007(n), A252679(A000096(n+1)))`
-/

namespace A252673.P2111469898175917380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252679 (A000096 (n + 1)).toNat)

end

end A252673.P2111469898175917380

/-! ## A252673.P15612174269011407276

`A000188(A014963(n+2))*A252679(A000096(n+1))`
-/

namespace A252673.P15612174269011407276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A014963 (n + 2)).toNat * A252679 (A000096 (n + 1)).toNat

end

end A252673.P15612174269011407276

/-! ## A252673.P15695213117798999324

`A014963(2*A001283(n+2))*A252679(A000096(n+1))`
-/

namespace A252673.P15695213117798999324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A001283 (n + 2)).toNat * A252679 (A000096 (n + 1)).toNat

end

end A252673.P15695213117798999324

/-!
# A252674: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252674, there is no canonical definition to state claims against.
-/

/-! ## A252674.P1353250993452307625

`A252679(∑[n+3]+1)`
-/

namespace A252674.P1353250993452307625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252674.P1353250993452307625

/-! ## A252674.P11984165961520996703

`A252679(A034856(n+2))+A000038(n)*A091018(n)`
-/

namespace A252674.P11984165961520996703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A034856 (n + 2)).toNat + A000038 n * A091018 n

end

end A252674.P11984165961520996703

/-! ## A252674.P351901197822220071

`A329697(2^(n+1))+A252679(A034856(n+2))`
-/

namespace A252674.P351901197822220071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (2 ^ (n + 1)) + A252679 (A034856 (n + 2)).toNat

end

end A252674.P351901197822220071

/-! ## A252674.P1093640230375428673

`A252679(A034856(n+2))+A005067(2^(n+1))`
-/

namespace A252674.P1093640230375428673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A034856 (n + 2)).toNat + A005067 (2 ^ (n + 1))

end

end A252674.P1093640230375428673

/-! ## A252674.P3782433055633881073

`A087207(2^(n+1))*A252679(A034856(n+2))`
-/

namespace A252674.P3782433055633881073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (2 ^ (n + 1)) * A252679 (A034856 (n + 2)).toNat

end

end A252674.P3782433055633881073

/-!
# A252675: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252675, there is no canonical definition to state claims against.
-/

/-! ## A252675.P13041225802433173933

`A252679(A141214(n+1))`
-/

namespace A252675.P13041225802433173933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A141214 (n + 1)).toNat

end

end A252675.P13041225802433173933

/-! ## A252675.P6791828240361691496

`A252679(A027379(n+2))`
-/

namespace A252675.P6791828240361691496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A027379 (n + 2)).toNat

end

end A252675.P6791828240361691496

/-! ## A252675.P9413212657496746079

`A252679(A056000(n)+7)`
-/

namespace A252675.P9413212657496746079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A056000 n + 7).toNat

end

end A252675.P9413212657496746079

/-! ## A252675.P1304752009712832047

`A252679(A052905(n+1)+2)`
-/

namespace A252675.P1304752009712832047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A052905 (n + 1) + 2).toNat

end

end A252675.P1304752009712832047

/-! ## A252675.P10736351442201166662

`A252679(eq[4, A002262(n+7)])`
-/

namespace A252675.P10736351442201166662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252675.P10736351442201166662

/-!
# A252676: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252676, there is no canonical definition to state claims against.
-/

/-! ## A252676.P2513854799245395861

`A252679(A046691(n+3))`
-/

namespace A252676.P2513854799245395861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A046691 (n + 3)).toNat

end

end A252676.P2513854799245395861

/-! ## A252676.P3131340907126215018

`A252679(Δ[A023545(n+1)])`
-/

namespace A252676.P3131340907126215018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (f1 (n + 1) - f1 n).toNat

end

end A252676.P3131340907126215018

/-! ## A252676.P2113580723667783395

`A252679(A000217(n+5)-4)`
-/

namespace A252676.P2113580723667783395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 5) - 4).toNat

end

end A252676.P2113580723667783395

/-! ## A252676.P8920123097306211076

`A252679(A000124(n+5)-5)`
-/

namespace A252676.P8920123097306211076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000124 (n + 5) - 5).toNat

end

end A252676.P8920123097306211076

/-! ## A252676.P3918892343807374164

`A252679(eq[4, A049286(n+1)])`
-/

namespace A252676.P3918892343807374164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252676.P3918892343807374164

/-!
# A252677: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252677, there is no canonical definition to state claims against.
-/

/-! ## A252677.P6865616396573446621

`A252679(A052905(n+3))`
-/

namespace A252677.P6865616396573446621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A052905 (n + 3)).toNat

end

end A252677.P6865616396573446621

/-! ## A252677.P2506360308635389292

`A252679(A000096(n+5)-4)`
-/

namespace A252677.P2506360308635389292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000096 (n + 5) - 4).toNat

end

end A252677.P2506360308635389292

/-! ## A252677.P16320643577393808732

`A252679(A000217(n+6)-5)`
-/

namespace A252677.P16320643577393808732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 6) - 5).toNat

end

end A252677.P16320643577393808732

/-! ## A252677.P13677532690835338414

`A252679(A000124(n+6)-6)`
-/

namespace A252677.P13677532690835338414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000124 (n + 6) - 6).toNat

end

end A252677.P13677532690835338414

/-! ## A252677.P5961487037278905815

`A252679(Δ[Δ[A006504(n+1)]])`
-/

namespace A252677.P5961487037278905815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (f1 (n + 1) - f1 n).toNat

end

end A252677.P5961487037278905815

/-!
# A252678: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252678, there is no canonical definition to state claims against.
-/

/-! ## A252678.P9997507389268524946

`A252679(A055999(n+4))`
-/

namespace A252678.P9997507389268524946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A055999 (n + 4)).toNat

end

end A252678.P9997507389268524946

/-! ## A252678.P11611062790356535874

`A252679(A052905(n+4)-1)`
-/

namespace A252678.P11611062790356535874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A052905 (n + 4) - 1).toNat

end

end A252678.P11611062790356535874

/-! ## A252678.P1572035135289539184

`A252679(A000096(n+6)-5)`
-/

namespace A252678.P1572035135289539184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000096 (n + 6) - 5).toNat

end

end A252678.P1572035135289539184

/-! ## A252678.P17719482629938214897

`A252679(A000217(n+6)+n+1)`
-/

namespace A252678.P17719482629938214897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A252678.P17719482629938214897

/-! ## A252678.P10189022972553913847

`A252679(A133263(n+5)+A004273(n+3))`
-/

namespace A252678.P10189022972553913847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A133263 (n + 5) + A004273 (n + 3)).toNat

end

end A252678.P10189022972553913847

/-!
# A252680: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252680, there is no canonical definition to state claims against.
-/

/-! ## A252680.P16105223638360068291

`A252679(∑[n]+1)`
-/

namespace A252680.P16105223638360068291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252680.P16105223638360068291

/-! ## A252680.P15087742224707280294

`record[A010054(n)*A252679(n+1)]`
-/

namespace A252680.P15087742224707280294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252680.P15087742224707280294

/-! ## A252680.P9933443263452425758

`record[gcd(A002262(n), A252679(n+1))]`
-/

namespace A252680.P9933443263452425758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252679 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252680.P9933443263452425758

/-! ## A252680.P16917356142968353900

`record[root(A252679(n+1), A002260(n+1))]`
-/

namespace A252680.P16917356142968353900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252679 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252680.P16917356142968353900

/-! ## A252680.P17141784079719750880

`lcm(A020985(n), A252679(A000124(n)))`
-/

namespace A252680.P17141784079719750880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252679 (A000124 n).toNat)

end

end A252680.P17141784079719750880

/-!
# A252681: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252681, there is no canonical definition to state claims against.
-/

/-! ## A252681.P15650073083183840149

`A252679(∑[n+1]+2)`
-/

namespace A252681.P15650073083183840149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252681.P15650073083183840149

/-! ## A252681.P14058916701459495571

`or(char[2], A252679(A133263(n+1)))`
-/

namespace A252681.P14058916701459495571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252679 (A133263 (n + 1)).toNat)

end

end A252681.P14058916701459495571

/-! ## A252681.P5650366291615037281

`A252679(A133263(n+1))+A000035(2*n)`
-/

namespace A252681.P5650366291615037281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A252681.P5650366291615037281

/-! ## A252681.P17686828033532092674

`A000045(2-C(2, n+2))*A252679(A133263(n+1))`
-/

namespace A252681.P17686828033532092674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Nat.choose 2 (n + 2)) * A252679 (A133263 (n + 1)).toNat

end

end A252681.P17686828033532092674

/-! ## A252681.P14212427318585646588

`A007318(A000096(n))*A252679(A133263(n+1))`
-/

namespace A252681.P14212427318585646588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A252679 (A133263 (n + 1)).toNat

end

end A252681.P14212427318585646588

/-!
# A252682: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252682, there is no canonical definition to state claims against.
-/

/-! ## A252682.P7191621280837869696

`A252679(∑[n+2]+4)`
-/

namespace A252682.P7191621280837869696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252682.P7191621280837869696

/-! ## A252682.P11395970377188240683

`A252679(A167614(n+1))+A000007(n+1)`
-/

namespace A252682.P11395970377188240683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A252682.P11395970377188240683

/-! ## A252682.P18178899994468368767

`A008836((n+1)²)*A252679(A167614(n+1))`
-/

namespace A252682.P18178899994468368767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A252679 (A167614 (n + 1)).toNat

end

end A252682.P18178899994468368767

/-! ## A252682.P2042251527130195309

`A252679(A167614(n+1))+A177063(2*n+3)`
-/

namespace A252682.P2042251527130195309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A167614 (n + 1)).toNat + A177063 (2 * n + 3)

end

end A252682.P2042251527130195309

/-! ## A252682.P18309911921127559354

`and(1, A003261(n+1))*A252679(A167614(n+1))`
-/

namespace A252682.P18309911921127559354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003261 (n + 1)) * A252679 (A167614 (n + 1)).toNat

end

end A252682.P18309911921127559354

/-!
# A252683: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252683, there is no canonical definition to state claims against.
-/

/-! ## A252683.P2786467891022851965

`A252679(A141214(n)+7)`
-/

namespace A252683.P2786467891022851965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A141214 n + 7).toNat

end

end A252683.P2786467891022851965

/-! ## A252683.P7416640587964361221

`A252679(A052905(n)+9)`
-/

namespace A252683.P7416640587964361221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A052905 n + 9).toNat

end

end A252683.P7416640587964361221

/-! ## A252683.P8892855312473987927

`A252679(A055999(n)+10)`
-/

namespace A252683.P8892855312473987927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A055999 n + 10).toNat

end

end A252683.P8892855312473987927

/-! ## A252683.P11049857922167165112

`A252679(A167614(n+2)+1)`
-/

namespace A252683.P11049857922167165112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A167614 (n + 2) + 1).toNat

end

end A252683.P11049857922167165112

/-! ## A252683.P17074593670204343084

`A252679(A133263(n+4)-(n+2))`
-/

namespace A252683.P17074593670204343084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A133263 (n + 4) - (n + 2 : ℤ)).toNat

end

end A252683.P17074593670204343084

/-!
# A252684: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252684, there is no canonical definition to state claims against.
-/

/-! ## A252684.P8456496022533888076

`A252679(A056000(n)+15)`
-/

namespace A252684.P8456496022533888076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A056000 n + 15).toNat

end

end A252684.P8456496022533888076

/-! ## A252684.P4111911175436300352

`A252679(A000217(n+4)+5)`
-/

namespace A252684.P4111911175436300352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 4) + 5).toNat

end

end A252684.P4111911175436300352

/-! ## A252684.P17074860616299433454

`A252679(eq[4, A002262(n)]+1)`
-/

namespace A252684.P17074860616299433454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252684.P17074860616299433454

/-! ## A252684.P6030606775749658044

`A252679(A000124(n+5)-(n+1))`
-/

namespace A252684.P6030606775749658044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A252684.P6030606775749658044

/-! ## A252684.P1333731206229722440

`A252679(A055999(n+3)-2*n)`
-/

namespace A252684.P1333731206229722440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A252684.P1333731206229722440

/-!
# A252685: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252685, there is no canonical definition to state claims against.
-/

/-! ## A252685.P8395191818925874130

`A252679(A167499(n+4)+1)`
-/

namespace A252685.P8395191818925874130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A167499 (n + 4) + 1).toNat

end

end A252685.P8395191818925874130

/-! ## A252685.P13958751771601302382

`A252679(A000096(n+4)+7)`
-/

namespace A252685.P13958751771601302382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000096 (n + 4) + 7).toNat

end

end A252685.P13958751771601302382

/-! ## A252685.P15792320420122023363

`A252679(A000217(n+5)+6)`
-/

namespace A252685.P15792320420122023363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 5) + 6).toNat

end

end A252685.P15792320420122023363

/-! ## A252685.P11608999995241793888

`A252679(A034856(n+4)+8)`
-/

namespace A252685.P11608999995241793888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A034856 (n + 4) + 8).toNat

end

end A252685.P11608999995241793888

/-! ## A252685.P15536590773841045412

`A252679(A161680(n+6)+6)`
-/

namespace A252685.P15536590773841045412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A161680 (n + 6) + 6).toNat

end

end A252685.P15536590773841045412

/-!
# A252686: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 2 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 2 5 6 or 7.

The programs for A252686, there is no canonical definition to state claims against.
-/

/-! ## A252686.P6827650550120426457

`A252679(A167499(n+5)+2)`
-/

namespace A252686.P6827650550120426457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A167499 (n + 5) + 2).toNat

end

end A252686.P6827650550120426457

/-! ## A252686.P6626599111324148971

`A252679(A000217(n+6)+7)`
-/

namespace A252686.P6626599111324148971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A000217 (n + 6) + 7).toNat

end

end A252686.P6626599111324148971

/-! ## A252686.P1799226937743051026

`A252679(A161680(n+7)+7)`
-/

namespace A252686.P1799226937743051026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A161680 (n + 7) + 7).toNat

end

end A252686.P1799226937743051026

/-! ## A252686.P14776177343675276329

`A252679(A179865(n+7)+7)`
-/

namespace A252686.P14776177343675276329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A179865 (n + 7) + 7).toNat

end

end A252686.P14776177343675276329

/-! ## A252686.P14429650685082036671

`A252679(A052905(n+5)-A004273(n+2))`
-/

namespace A252686.P14429650685082036671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252679 (A052905 (n + 5) - A004273 (n + 2)).toNat

end

end A252686.P14429650685082036671

/-!
# A252687: Number of (n+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252687, there is no canonical definition to state claims against.
-/

/-! ## A252687.P13360088742624775485

`A252695(∑[4*n]+1)`
-/

namespace A252687.P13360088742624775485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252687.P13360088742624775485

/-! ## A252687.P12990711928838413201

`lcm(2, A252695(A001844(n)))`
-/

namespace A252687.P12990711928838413201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252695 (A001844 n).toNat)

end

end A252687.P12990711928838413201

/-! ## A252687.P6434364182073379122

`A060576(3*n)*A252695(A001844(n))`
-/

namespace A252687.P6434364182073379122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (3 * n) * A252695 (A001844 n).toNat

end

end A252687.P6434364182073379122

/-! ## A252687.P15029772455657158975

`A252695(A001844(n))%A145298(n+1)`
-/

namespace A252687.P15029772455657158975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252695 (A001844 n).toNat) (A145298 (n + 1))

end

end A252687.P15029772455657158975

/-! ## A252687.P3746038750733823995

`A007318(C(2, n))*A252695(A001844(n))`
-/

namespace A252687.P3746038750733823995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252695 (A001844 n).toNat

end

end A252687.P3746038750733823995

/-!
# A252688: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252688, there is no canonical definition to state claims against.
-/

/-! ## A252688.P16660872111767278263

`A252695(∑[n]+1)`
-/

namespace A252688.P16660872111767278263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252688.P16660872111767278263

/-! ## A252688.P13121988646923778725

`and(-1, A252695(A000124(n)))`
-/

namespace A252688.P13121988646923778725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252695 (A000124 n).toNat)

end

end A252688.P13121988646923778725

/-! ## A252688.P7660854836778582883

`record[A252695(A249725(n+1))]`
-/

namespace A252688.P7660854836778582883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252688.P7660854836778582883

/-! ## A252688.P8544561334278858846

`record[A252695(A254052(n+1))]`
-/

namespace A252688.P8544561334278858846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252688.P8544561334278858846

/-! ## A252688.P16987965056090177615

`record[A252695(A257504(n+1))]`
-/

namespace A252688.P16987965056090177615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252688.P16987965056090177615

/-!
# A252689: Number of (n+2) X (2+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252689, there is no canonical definition to state claims against.
-/

/-! ## A252689.P6626312645887302458

`A252695(∑[n+1]+2)`
-/

namespace A252689.P6626312645887302458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252689.P6626312645887302458

/-! ## A252689.P8827367684776466414

`record[A252695(A008795(n)+2)]`
-/

namespace A252689.P8827367684776466414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252689.P8827367684776466414

/-! ## A252689.P17278041917899461607

`record[A010054(n)*A252695(n+2)]`
-/

namespace A252689.P17278041917899461607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252695 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252689.P17278041917899461607

/-! ## A252689.P560246886736763878

`record[A252695(n+2)/A152842(n)]`
-/

namespace A252689.P560246886736763878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252695 (n + 2) : ℚ) / (A152842 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252689.P560246886736763878

/-! ## A252689.P2126168838599497060

`record[A252695(n+3)/A108086(n)]`
-/

namespace A252689.P2126168838599497060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252695 (n + 3) : ℚ) / (A108086 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252689.P2126168838599497060

/-!
# A252690: Number of (n+2) X (3+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252690, there is no canonical definition to state claims against.
-/

/-! ## A252690.P11671243813984126820

`A252695(∑[n+2]+4)`
-/

namespace A252690.P11671243813984126820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252690.P11671243813984126820

/-! ## A252690.P7538757768171985081

`A252695(A167614(n+1))+char[29]`
-/

namespace A252690.P7538757768171985081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252690.P7538757768171985081

/-! ## A252690.P6048493804349609184

`A252695(A046691(n)+7)+char[31]`
-/

namespace A252690.P6048493804349609184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252690.P6048493804349609184

/-! ## A252690.P17187582576031112641

`A252695(A167614(n+1))*A291168(n)`
-/

namespace A252690.P17187582576031112641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167614 (n + 1)).toNat * A291168 n

end

end A252690.P17187582576031112641

/-! ## A252690.P11246397793488383355

`lcm(A114523(n), A252695(A167614(n+1)))`
-/

namespace A252690.P11246397793488383355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n) (A252695 (A167614 (n + 1)).toNat)

end

end A252690.P11246397793488383355

/-!
# A252691: Number of (n+2) X (4+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252691, there is no canonical definition to state claims against.
-/

/-! ## A252691.P13317351937641243687

`A252695(∑[n+3]+7)`
-/

namespace A252691.P13317351937641243687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252691.P13317351937641243687

/-! ## A252691.P16626056372574511305

`A252695(A052905(n)+9)+char[30]`
-/

namespace A252691.P16626056372574511305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252691.P16626056372574511305

/-! ## A252691.P17037824813702464752

`xor(1, xor(1, A252695(A055999(n)+10)))`
-/

namespace A252691.P17037824813702464752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A252695 (A055999 n + 10).toNat))

end

end A252691.P17037824813702464752

/-! ## A252691.P14288062437136278508

`A007318(C(2, n))*A252695(A052905(n)+9)`
-/

namespace A252691.P14288062437136278508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252695 (A052905 n + 9).toNat

end

end A252691.P14288062437136278508

/-! ## A252691.P963285438244636993

`A000108(C(2, n+2))*A252695(A055999(n)+10)`
-/

namespace A252691.P963285438244636993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A252695 (A055999 n + 10).toNat

end

end A252691.P963285438244636993

/-!
# A252692: Number of (n+2) X (5+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252692, there is no canonical definition to state claims against.
-/

/-! ## A252692.P15279263618949635041

`A252695(C(n+6, 2)-n)`
-/

namespace A252692.P15279263618949635041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (Nat.choose (n + 6) 2 - n)

end

end A252692.P15279263618949635041

/-! ## A252692.P2467221806939048967

`A252695(A374005(n+1))`
-/

namespace A252692.P2467221806939048967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A374005 (n + 1)).toNat

end

end A252692.P2467221806939048967

/-! ## A252692.P13442695585169994655

`A252695(A167499(n+3))`
-/

namespace A252692.P13442695585169994655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167499 (n + 3)).toNat

end

end A252692.P13442695585169994655

/-! ## A252692.P5407396522156320019

`A252695(A077169(n+5))`
-/

namespace A252692.P5407396522156320019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A077169 (n + 5)).toNat

end

end A252692.P5407396522156320019

/-! ## A252692.P213101882245926397

`A252695(A155212(n)+13)`
-/

namespace A252692.P213101882245926397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A155212 n + 13).toNat

end

end A252692.P213101882245926397

/-!
# A252693: Number of (n+2) X (6+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252693, there is no canonical definition to state claims against.
-/

/-! ## A252693.P10282015238377224290

`A252695(A374007(n+1))`
-/

namespace A252693.P10282015238377224290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A374007 (n + 1)).toNat

end

end A252693.P10282015238377224290

/-! ## A252693.P7869516245384497484

`A252695(A167499(n+4)+1)`
-/

namespace A252693.P7869516245384497484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167499 (n + 4) + 1).toNat

end

end A252693.P7869516245384497484

/-! ## A252693.P8925295554240556929

`A252695(A167487(n+4)-1)`
-/

namespace A252693.P8925295554240556929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167487 (n + 4) - 1).toNat

end

end A252693.P8925295554240556929

/-! ## A252693.P1484745596188255968

`A252695(A167614(n+4)+3)`
-/

namespace A252693.P1484745596188255968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A167614 (n + 4) + 3).toNat

end

end A252693.P1484745596188255968

/-! ## A252693.P16011431373625993207

`A252695(A000124(n+5)+5)`
-/

namespace A252693.P16011431373625993207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A000124 (n + 5) + 5).toNat

end

end A252693.P16011431373625993207

/-!
# A252694: Number of (n+2) X (7+2) 0..3 arrays with every consecutive three elements in every row and column having exactly two distinct values, and in every diagonal and antidiagonal not having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A252694, there is no canonical definition to state claims against.
-/

/-! ## A252694.P8104693863212237028

`A252695(A374008(n+1))`
-/

namespace A252694.P8104693863212237028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A374008 (n + 1)).toNat

end

end A252694.P8104693863212237028

/-! ## A252694.P6774351161550539577

`A252695(A056119(n)+28)`
-/

namespace A252694.P6774351161550539577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A056119 n + 28).toNat

end

end A252694.P6774351161550539577

/-! ## A252694.P11264704640247669768

`A252695(A000124(n+6)+6)`
-/

namespace A252694.P11264704640247669768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A000124 (n + 6) + 6).toNat

end

end A252694.P11264704640247669768

/-! ## A252694.P10149034726672129705

`A252695(A000096(n+5)+8)`
-/

namespace A252694.P10149034726672129705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A000096 (n + 5) + 8).toNat

end

end A252694.P10149034726672129705

/-! ## A252694.P7265380783743805051

`A252695(A000217(n+6)+7)`
-/

namespace A252694.P7265380783743805051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252695 (A000217 (n + 6) + 7).toNat

end

end A252694.P7265380783743805051

/-!
# A252696: Number of strings of length n over a 3-letter alphabet that do not begin with a nontrivial palindrome.

The programs for A252696, the canonical program `A252696.P6161401064542124124` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252696 has offset 0).

The definition of A252696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252696.P6161401064542124124

`3*a(n-1)-a(ceil(n/2))` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A252696

/-- `3*a(n-1)-a(ceil(n/2))` -/
def P6161401064542124124.Spec : Prop :=
  ∀ n, P6161401064542124124.a n = A252696 n

theorem P6161401064542124124.correct : P6161401064542124124.Spec := by
  intro n
  simp only [A252696]

end A252696

/-! ## A252696.P15529124607546701000

`A342238(eq[2, A193739(n)])`
-/

namespace A252696.P15529124607546701000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252696.P15529124607546701000

namespace A252696

/-- `A342238(eq[2, A193739(n)])` -/
def P15529124607546701000.Spec : Prop :=
  ∀ n, P15529124607546701000.a n = A252696 n

end A252696

/-! ## A252696.P945103461789949523

`A342238(eq[A025581(n), A035214(n)])`
-/

namespace A252696.P945103461789949523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A252696.P945103461789949523

namespace A252696

/-- `A342238(eq[A025581(n), A035214(n)])` -/
def P945103461789949523.Spec : Prop :=
  ∀ n, P945103461789949523.a n = A252696 n

end A252696

/-! ## A252696.P334453538909513142

`A342238(A034856(n+1))-A000007(n)`
-/

namespace A252696.P334453538909513142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A034856 (n + 1)).toNat - A000007 n

end

end A252696.P334453538909513142

namespace A252696

/-- `A342238(A034856(n+1))-A000007(n)` -/
def P334453538909513142.Spec : Prop :=
  ∀ n, P334453538909513142.a n = A252696 n

end A252696

/-! ## A252696.P6508208740634806152

`A342238(A034856(n+1))%A000302(n)`
-/

namespace A252696.P6508208740634806152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342238 (A034856 (n + 1)).toNat) (A000302 n)

end

end A252696.P6508208740634806152

namespace A252696

/-- `A342238(A034856(n+1))%A000302(n)` -/
def P6508208740634806152.Spec : Prop :=
  ∀ n, P6508208740634806152.a n = A252696 n

end A252696

/-! ## A252696.P1030633699234312515

`A342238(A034856(n+1)+2*A000007(n))`
-/

namespace A252696.P1030633699234312515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A034856 (n + 1) + 2 * A000007 n).toNat

end

end A252696.P1030633699234312515

namespace A252696

/-- `A342238(A034856(n+1)+2*A000007(n))` -/
def P1030633699234312515.Spec : Prop :=
  ∀ n, P1030633699234312515.a n = A252696 n

end A252696

/-! ## A252696.P13286000514088697896

`A342238(eq[A035214(n)+1, A342238(n+1)])`
-/

namespace A252696.P13286000514088697896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A252696.P13286000514088697896

namespace A252696

/-- `A342238(eq[A035214(n)+1, A342238(n+1)])` -/
def P13286000514088697896.Spec : Prop :=
  ∀ n, P13286000514088697896.a n = A252696 n

end A252696

/-! ## A252696.P2225095968523023765

`A342238(A000007(n)+A034856(n+1)+A000007(n))`
-/

namespace A252696.P2225095968523023765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000007 n + (A034856 (n + 1) + A000007 n)).toNat

end

end A252696.P2225095968523023765

namespace A252696

/-- `A342238(A000007(n)+A034856(n+1)+A000007(n))` -/
def P2225095968523023765.Spec : Prop :=
  ∀ n, P2225095968523023765.a n = A252696 n

end A252696

/-!
# A252697: Number of strings of length n over a 4-letter alphabet that do not begin with a palindrome.

The programs for A252697, there is no canonical definition to state claims against.
-/

/-! ## A252697.P5338210622027304797

`A342238(∑[n+3])`
-/

namespace A252697.P5338210622027304797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252697.P5338210622027304797

/-! ## A252697.P14603148625427975015

`record[A342238(A027379(A003602(n+1)))]`
-/

namespace A252697.P14603148625427975015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A027379 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252697.P14603148625427975015

/-! ## A252697.P6613147372754765906

`record[A342238(A055998(A032742(n+1)))]`
-/

namespace A252697.P6613147372754765906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A055998 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252697.P6613147372754765906

/-! ## A252697.P10409923161467988024

`record[A342238(A055998(A054531(n+1)))]`
-/

namespace A252697.P10409923161467988024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A055998 (A054531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252697.P10409923161467988024

/-! ## A252697.P4232715882828017462

`record[A342238(A055998(A340458(n+1)))]`
-/

namespace A252697.P4232715882828017462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A055998 (A340458 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252697.P4232715882828017462

/-!
# A252698: Number of strings of length n over a 5-letter alphabet that do not begin with a palindrome.

The programs for A252698, the canonical program `A252698.P9922927271270455625` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252698 has offset 0).

The definition of A252698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252698.P9922927271270455625

`5*a(n-1)-a(A065033(n))` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A252698

/-- `5*a(n-1)-a(A065033(n))` -/
def P9922927271270455625.Spec : Prop :=
  ∀ n, P9922927271270455625.a n = A252698 n

theorem P9922927271270455625.correct : P9922927271270455625.Spec := by
  intro n
  simp only [A252698]

end A252698

/-! ## A252698.P18207750088142119193

`A342238(∑[n+3]+n+3)`
-/

namespace A252698.P18207750088142119193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A252698.P18207750088142119193

namespace A252698

/-- `A342238(∑[n+3]+n+3)` -/
def P18207750088142119193.Spec : Prop :=
  ∀ n, P18207750088142119193.a n = A252698 n

end A252698

/-!
# A252699: Number of strings of length n over a 6-letter alphabet that do not begin with a palindrome.

The programs for A252699, there is no canonical definition to state claims against.
-/

/-! ## A252699.P10337775841176257802

`A342238(A052905(n+2))`
-/

namespace A252699.P10337775841176257802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A052905 (n + 2)).toNat

end

end A252699.P10337775841176257802

/-! ## A252699.P5210656868223846905

`A342238(eq[4, A025581(n)])`
-/

namespace A252699.P5210656868223846905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252699.P5210656868223846905

/-! ## A252699.P5493568708557096797

`A342238(A000096(n+4)-4)`
-/

namespace A252699.P5493568708557096797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000096 (n + 4) - 4).toNat

end

end A252699.P5493568708557096797

/-! ## A252699.P5675476238879371212

`A342238(A000217(n+5)-5)`
-/

namespace A252699.P5675476238879371212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A000217 (n + 5) - 5).toNat

end

end A252699.P5675476238879371212

/-! ## A252699.P9131578547625316600

`A342238(A161680(n+6)-5)`
-/

namespace A252699.P9131578547625316600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A161680 (n + 6) - 5).toNat

end

end A252699.P9131578547625316600

/-! ## A252699.P3100494264411821343

`A342238(eq[5, A004736(n+1)])`
-/

namespace A252699.P3100494264411821343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252699.P3100494264411821343

/-! ## A252699.P5852843083635208446

`A342238(Δ[A023545(n+1)]-1)`
-/

namespace A252699.P5852843083635208446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (f1 (n + 1) - f1 n - 1).toNat

end

end A252699.P5852843083635208446

/-! ## A252699.P16596762958321713166

`A342238(A027379(n+2)+n+3)`
-/

namespace A252699.P16596762958321713166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A027379 (n + 2) + (n + 3 : ℤ)).toNat

end

end A252699.P16596762958321713166

/-! ## A252699.P2701472097728239697

`A342238(A167614(n+2)+2*n+1)`
-/

namespace A252699.P2701472097728239697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (A167614 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A252699.P2701472097728239697

