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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A137102: Numbers k such that k and k^2 use only the digits 2, 4, 6, 7 and 9.

The programs for A137102, there is no canonical definition to state claims against.
-/

/-! ## A137102.P3387258557341530296

`A079668(A377134(n+2))`
-/

namespace A137102.P3387258557341530296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079668 (A377134 (n + 2)).toNat

end

end A137102.P3387258557341530296

/-!
# A137103: Numbers k such that k and k^2 use only the digits 2, 4, 6 and 8.

The programs for A137103, there is no canonical definition to state claims against.
-/

/-! ## A137103.P10814249096191279507

`∩[A136994(n+1), A137101(n+1)]`
-/

namespace A137103.P10814249096191279507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137103.P10814249096191279507

/-! ## A137103.P1673161278775496725

`∩[A136994(n+1), A137104(n+1)]`
-/

namespace A137103.P1673161278775496725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137103.P1673161278775496725

/-! ## A137103.P6049797250975069195

`∩[A137072(n+1), A137101(n+1)]`
-/

namespace A137103.P6049797250975069195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137103.P6049797250975069195

/-! ## A137103.P13627347476624737061

`∩[A136994(n+1), A137095(n+1)]`
-/

namespace A137103.P13627347476624737061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137103.P13627347476624737061

/-! ## A137103.P17381434301941535711

`∩[A137095(n+1), A137101(n+1)]`
-/

namespace A137103.P17381434301941535711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137103.P17381434301941535711

/-!
# A137104: Numbers k such that k and k^2 use only the digits 2, 4, 6, 8 and 9.

The programs for A137104, there is no canonical definition to state claims against.
-/

/-! ## A137104.P15324290796441073265

`Δ[n^3]+A006530(A346313(n))`
-/

namespace A137104.P15324290796441073265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + A006530 (A346313 n).toNat

end

end A137104.P15324290796441073265

/-! ## A137104.P16604607585419191125

`∑[A122322(∑[A210554(2*(n+2))])]`
-/

namespace A137104.P16604607585419191125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210554 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122322 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137104.P16604607585419191125

/-!
# A137105: Numbers k such that k and k^2 use only the digits 2, 4, 6 and 9.

The programs for A137105, there is no canonical definition to state claims against.
-/

/-! ## A137105.P16608879641795620472

`∩[A136995(n+1), A137096(n+1)]`
-/

namespace A137105.P16608879641795620472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137105.P16608879641795620472

/-! ## A137105.P14491778340127689298

`∩[A136995(n+1), A137104(n+1)]`
-/

namespace A137105.P14491778340127689298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137105.P14491778340127689298

/-! ## A137105.P9895464190647060200

`∩[A137096(n+1), A137104(n+1)]`
-/

namespace A137105.P9895464190647060200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137105.P9895464190647060200

/-! ## A137105.P16753585378816919090

`∩[A136905(n+1), A136995(n+1)]`
-/

namespace A137105.P16753585378816919090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137105.P16753585378816919090

/-! ## A137105.P3372558206869381119

`∩[A137073(n+1), A137096(n+1)]`
-/

namespace A137105.P3372558206869381119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137105.P3372558206869381119

/-!
# A137106: Numbers k such that k and k^2 use only the digits 2, 4, 7 and 8.

The programs for A137106, there is no canonical definition to state claims against.
-/

/-! ## A137106.P6730037346863312952

`A137074(A008814(n))`
-/

namespace A137106.P6730037346863312952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137074 (A008814 n).toNat

end

end A137106.P6730037346863312952

/-! ## A137106.P17305909495904245940

`A137074(record[A079487(n)])`
-/

namespace A137106.P17305909495904245940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137074 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137106.P17305909495904245940

/-! ## A137106.P6079606467131080699

`A137074(A000433(n+1))`
-/

namespace A137106.P6079606467131080699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137074 (A000433 (n + 1)).toNat

end

end A137106.P6079606467131080699

/-! ## A137106.P18137977125264704999

`A137074(A007094(n+1))`
-/

namespace A137106.P18137977125264704999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137074 (A007094 (n + 1)).toNat

end

end A137106.P18137977125264704999

/-!
# A137108: Numbers k such that k and k^2 use only the digits 2, 4, 7 and 9.

The programs for A137108, there is no canonical definition to state claims against.
-/

/-! ## A137108.P16965336594197113055

`∩[A136907(n+1), A136998(n+1)]`
-/

namespace A137108.P16965336594197113055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137108.P16965336594197113055

/-! ## A137108.P3913677718042118326

`∩[A136907(n+1), A137075(n+1)]`
-/

namespace A137108.P3913677718042118326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137108.P3913677718042118326

/-! ## A137108.P6562204945486766425

`∩[A136907(n+1), A137098(n+1)]`
-/

namespace A137108.P6562204945486766425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137108.P6562204945486766425

/-!
# A137109: Numbers k such that k and k^2 use only the digits 2, 4, 8 and 9.

The programs for A137109, there is no canonical definition to state claims against.
-/

/-! ## A137109.P14421450055381591362

`∩[A136909(n+1), A137000(n+1)]`
-/

namespace A137109.P14421450055381591362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137109.P14421450055381591362

/-!
# A137110: Numbers k such that k and k^2 use only the digits 2, 5, 6 and 7.

The programs for A137110, there is no canonical definition to state claims against.
-/

/-! ## A137110.P35158197678782906

`∩[A136912(n+1), A137094(n+1)]`
-/

namespace A137110.P35158197678782906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137110.P35158197678782906

/-! ## A137110.P5442437417937431248

`∩[A137004(n+1), A137080(n+1)]`
-/

namespace A137110.P5442437417937431248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137110.P5442437417937431248

/-! ## A137110.P2636422706490647962

`∩[A137004(n+1), A137094(n+1)]`
-/

namespace A137110.P2636422706490647962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137110.P2636422706490647962

/-! ## A137110.P1598335961815707756

`∩[A137004(n+1), A137111(n+1)]`
-/

namespace A137110.P1598335961815707756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137110.P1598335961815707756

/-! ## A137110.P3317684907885773974

`∩[A137004(n+1), A137112(n+1)]`
-/

namespace A137110.P3317684907885773974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137110.P3317684907885773974

/-!
# A137113: Numbers k such that k and k^2 use only the digits 2, 5, 6 and 8.

The programs for A137113, there is no canonical definition to state claims against.
-/

/-! ## A137113.P5588029106562778724

`∩[A136913(n+1), A137005(n+1)]`
-/

namespace A137113.P5588029106562778724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137113.P5588029106562778724

/-!
# A137117: Numbers k such that k and k^2 use only the digits 2, 5, 7 and 9.

The programs for A137117, there is no canonical definition to state claims against.
-/

/-! ## A137117.P16498805718358483059

`∩[A136917(n+1), A137009(n+1)]`
-/

namespace A137117.P16498805718358483059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137117.P16498805718358483059

/-!
# A137120: Numbers k such that k and k^2 use only the digits 3, 4, 5 and 6.

The programs for A137120, there is no canonical definition to state claims against.
-/

/-! ## A137120.P6435097713844147146

`∑[6*10^n]`
-/

namespace A137120.P6435097713844147146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137120.P6435097713844147146

/-! ## A137120.P10348156301038470022

`ogf(6/(1-11x+10x^2))`
-/

namespace A137120.P10348156301038470022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -11, 10] n

end

end A137120.P10348156301038470022

/-! ## A137120.P4782437821935019573

`lcm(2, ∑[lcm(3, 10^n)])`
-/

namespace A137120.P4782437821935019573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (10 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137120.P4782437821935019573

/-! ## A137120.P3230483537522818590

`10*a(n-1)+6` with `a(0)=6`
-/

namespace A137120.P3230483537522818590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  10 * a (n - 1) + 6

end

end A137120.P3230483537522818590

/-! ## A137120.P8157886279755522995

`lcm(20, a(n-1))+6` with `a(0)=6`
-/

namespace A137120.P8157886279755522995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lcm 20 (a (n - 1)) + 6

end

end A137120.P8157886279755522995

/-!
# A137123: Numbers k such that k and k^2 use only the digits 3, 4, 5, 6 and 9.

The programs for A137123, there is no canonical definition to state claims against.
-/

/-! ## A137123.P18420200790314975239

`3*A048379(A094026(n))`
-/

namespace A137123.P18420200790314975239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048379 (A094026 n).toNat

end

end A137123.P18420200790314975239

/-! ## A137123.P15937375369969584703

`3*A004086(A094626(n+1))`
-/

namespace A137123.P15937375369969584703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004086 (A094626 (n + 1)).toNat

end

end A137123.P15937375369969584703

/-! ## A137123.P15478460940484810867

`A000027(3*A322925(n+1))`
-/

namespace A137123.P15478460940484810867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * A322925 (n + 1)).toNat

end

end A137123.P15478460940484810867

/-! ## A137123.P14391612381783776880

`3*A322925(A120126(n+1))`
-/

namespace A137123.P14391612381783776880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A322925 (A120126 (n + 1)).toNat

end

end A137123.P14391612381783776880

/-! ## A137123.P6365980495770896254

`A317320(a(n-1))+3` with `a(0)=3`
-/

namespace A137123.P6365980495770896254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A317320 (a (n - 1)).toNat + 3

end

end A137123.P6365980495770896254

/-!
# A137128: Numbers k such that k and k^2 use only the digits 3, 4, 6, 7 and 9.

The programs for A137128, there is no canonical definition to state claims against.
-/

/-! ## A137128.P2762711300008948274

`lcm(A004736(n+1), A285257(A327011(n)))`
-/

namespace A137128.P2762711300008948274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004736 (n + 1)) (A285257 (A327011 n).toNat)

end

end A137128.P2762711300008948274

/-!
# A137134: Numbers k such that k and k^2 use only the digits 3, 5, 6, 8 and 9.

The programs for A137134, there is no canonical definition to state claims against.
-/

/-! ## A137134.P16034836009392658059

`A285329(A128351(n+1))-A002487(3*(n+1))`
-/

namespace A137134.P16034836009392658059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285329 (A128351 (n + 1)).toNat - A002487 (3 * (n + 1))

end

end A137134.P16034836009392658059

/-!
# A137138: Numbers k such that k and k^2 use only the digits 3, 6, 8 and 9.

The programs for A137138, there is no canonical definition to state claims against.
-/

/-! ## A137138.P12332430717066546154

`A137134(A036470(n))`
-/

namespace A137138.P12332430717066546154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137134 (A036470 n).toNat

end

end A137138.P12332430717066546154

/-! ## A137138.P4183713355524364250

`A137134(A339510(n))`
-/

namespace A137138.P4183713355524364250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137134 (A339510 n).toNat

end

end A137138.P4183713355524364250

/-! ## A137138.P14034131439321679875

`A137134(A074177(n+1))`
-/

namespace A137138.P14034131439321679875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137134 (A074177 (n + 1)).toNat

end

end A137138.P14034131439321679875

/-! ## A137138.P4951509841986797320

`A137134(A088412(n+1))`
-/

namespace A137138.P4951509841986797320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137134 (A088412 (n + 1)).toNat

end

end A137138.P4951509841986797320

/-!
# A137144: Numbers k such that k and k^2 use only the digits 4, 6, 7 and 8.

The programs for A137144, there is no canonical definition to state claims against.
-/

/-! ## A137144.P11908705367722034779

`A137127(A027700(n+1))`
-/

namespace A137144.P11908705367722034779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137127 (A027700 (n + 1)).toNat

end

end A137144.P11908705367722034779

/-!
# A137145: Numbers k such that k and k^2 use only the digits 4, 6, 7, 8 and 9.

The programs for A137145, there is no canonical definition to state claims against.
-/

/-! ## A137145.P542145667476793463

`A186101(A119179(n+1)^A029103(n))`
-/

namespace A137145.P542145667476793463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (SequenceMachineLib.roundAway ((A119179 (n + 1) : ℚ) ^ (A029103 n : ℤ))).toNat

end

end A137145.P542145667476793463

/-!
# A137146: Numbers k such that k and k^2 use only the digits 5, 6, 7 and 8.

The programs for A137146, there is no canonical definition to state claims against.
-/

/-! ## A137146.P362616106728236574

`10*a(n-1)+6` with `a(0)=76`
-/

namespace A137146.P362616106728236574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [76] fun n a =>
  10 * a (n - 1) + 6

end

end A137146.P362616106728236574

/-! ## A137146.P8193398586425486105

`A002280(n+2)+10^(n+1)`
-/

namespace A137146.P8193398586425486105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 (n + 2) + (10 ^ (n + 1) : ℤ)

end

end A137146.P8193398586425486105

/-! ## A137146.P16622461729285270005

`A011557(n+1)+A002280(n+2)`
-/

namespace A137146.P16622461729285270005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + A002280 (n + 2)

end

end A137146.P16622461729285270005

/-! ## A137146.P7779542301290172210

`A002281(n+2)-A000042(n+1)`
-/

namespace A137146.P7779542301290172210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 2) - A000042 (n + 1)

end

end A137146.P7779542301290172210

/-! ## A137146.P13266605359794563474

`A002281(n+2)-A002275(n+1)`
-/

namespace A137146.P13266605359794563474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 (n + 2) - A002275 (n + 1)

end

end A137146.P13266605359794563474

/-!
# A137148: a(n) = k*phi(k), where k is the n-th nonprime number.

The programs for A137148, the canonical program `A137148.P10281140447083490938` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137148 has offset 1).

The definition of A137148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137148.P10281140447083490938

`A002618(A018252(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A137148

/-- `A002618(A018252(n+1))` -/
def P10281140447083490938.Spec : Prop :=
  ∀ n, P10281140447083490938.a n = A137148 (n + 1)

theorem P10281140447083490938.correct : P10281140447083490938.Spec := by
  intro n
  simp only [A137148, Nat.add_sub_cancel]

end A137148

/-! ## A137148.P10828917522646575536

`A018252(n+1)*A166362(n+1)`
-/

namespace A137148.P10828917522646575536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * A166362 (n + 1)

end

end A137148.P10828917522646575536

namespace A137148

/-- `A018252(n+1)*A166362(n+1)` -/
def P10828917522646575536.Spec : Prop :=
  ∀ n, P10828917522646575536.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P17700449069274784581

`A141468(n+2)*A166362(n+1)`
-/

namespace A137148.P17700449069274784581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) * A166362 (n + 1)

end

end A137148.P17700449069274784581

namespace A137148

/-- `A141468(n+2)*A166362(n+1)` -/
def P17700449069274784581.Spec : Prop :=
  ∀ n, P17700449069274784581.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P5596029853505780331

`A000010(A222307(2*n+1))*A222307(2*n+1)`
-/

namespace A137148.P5596029853505780331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A222307 (2 * n + 1)).toNat * A222307 (2 * n + 1)

end

end A137148.P5596029853505780331

namespace A137148

/-- `A000010(A222307(2*n+1))*A222307(2*n+1)` -/
def P5596029853505780331.Spec : Prop :=
  ∀ n, P5596029853505780331.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P2529216943113262988

`A002618(comp[p?[xor(1, n)+1]-1]+1)`
-/

namespace A137148.P2529216943113262988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A137148.P2529216943113262988

namespace A137148

/-- `A002618(comp[p?[xor(1, n)+1]-1]+1)` -/
def P2529216943113262988.Spec : Prop :=
  ∀ n, P2529216943113262988.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P14335475236548709894

`A002618(Δ[A051349(n)])`
-/

namespace A137148.P14335475236548709894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (f1 (n + 1) - f1 n).toNat

end

end A137148.P14335475236548709894

namespace A137148

/-- `A002618(Δ[A051349(n)])` -/
def P14335475236548709894.Spec : Prop :=
  ∀ n, P14335475236548709894.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P2920679494963156772

`A002618(A141468(n+2))`
-/

namespace A137148.P2920679494963156772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A141468 (n + 2)).toNat

end

end A137148.P2920679494963156772

namespace A137148

/-- `A002618(A141468(n+2))` -/
def P2920679494963156772.Spec : Prop :=
  ∀ n, P2920679494963156772.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P12451673101152489097

`A000010((comp[p?[xor(1, n)]-1]+1)²)`
-/

namespace A137148.P12451673101152489097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2)

end

end A137148.P12451673101152489097

namespace A137148

/-- `A000010((comp[p?[xor(1, n)]-1]+1)²)` -/
def P12451673101152489097.Spec : Prop :=
  ∀ n, P12451673101152489097.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P466284639036209642

`A000010(comp[n%2*p?[floor(n/2)]]²)`
-/

namespace A137148.P466284639036209642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A137148.P466284639036209642

namespace A137148

/-- `A000010(comp[n%2*p?[floor(n/2)]]²)` -/
def P466284639036209642.Spec : Prop :=
  ∀ n, P466284639036209642.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P11180786269378869351

`A000010((comp[p?[round(3*n/7)]-1]+1)²)`
-/

namespace A137148.P11180786269378869351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2)

end

end A137148.P11180786269378869351

namespace A137148

/-- `A000010((comp[p?[round(3*n/7)]-1]+1)²)` -/
def P11180786269378869351.Spec : Prop :=
  ∀ n, P11180786269378869351.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P8913530281960510788

`A000010(A062312(n+1))`
-/

namespace A137148.P8913530281960510788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062312 (n + 1)).toNat

end

end A137148.P8913530281960510788

namespace A137148

/-- `A000010(A062312(n+1))` -/
def P8913530281960510788.Spec : Prop :=
  ∀ n, P8913530281960510788.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P18165704008978471941

`A000010(A161753(n+2))`
-/

namespace A137148.P18165704008978471941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A161753 (n + 2)).toNat

end

end A137148.P18165704008978471941

namespace A137148

/-- `A000010(A161753(n+2))` -/
def P18165704008978471941.Spec : Prop :=
  ∀ n, P18165704008978471941.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P15877010516602509942

`A000010(Δ[A051349(n)]²)`
-/

namespace A137148.P15877010516602509942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A137148.P15877010516602509942

namespace A137148

/-- `A000010(Δ[A051349(n)]²)` -/
def P15877010516602509942.Spec : Prop :=
  ∀ n, P15877010516602509942.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P9571352146545707816

`A000010(A018252(n+1)²)`
-/

namespace A137148.P9571352146545707816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1) ^ 2).toNat

end

end A137148.P9571352146545707816

namespace A137148

/-- `A000010(A018252(n+1)²)` -/
def P9571352146545707816.Spec : Prop :=
  ∀ n, P9571352146545707816.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P5057268176032844499

`A000010(A141468(n+2)²)`
-/

namespace A137148.P5057268176032844499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141468 (n + 2) ^ 2).toNat

end

end A137148.P5057268176032844499

namespace A137148

/-- `A000010(A141468(n+2)²)` -/
def P5057268176032844499.Spec : Prop :=
  ∀ n, P5057268176032844499.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P18347681199146893270

`A000010(∑[A054546(n+1)]²)`
-/

namespace A137148.P18347681199146893270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A137148.P18347681199146893270

namespace A137148

/-- `A000010(∑[A054546(n+1)]²)` -/
def P18347681199146893270.Spec : Prop :=
  ∀ n, P18347681199146893270.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P5508072198582933391

`A000010(A222307(2*n+1)²)`
-/

namespace A137148.P5508072198582933391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A222307 (2 * n + 1) ^ 2).toNat

end

end A137148.P5508072198582933391

namespace A137148

/-- `A000010(A222307(2*n+1)²)` -/
def P5508072198582933391.Spec : Prop :=
  ∀ n, P5508072198582933391.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P17483912271021919044

`A000010((A139270(n+1)/2)²)`
-/

namespace A137148.P17483912271021919044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((A139270 (n + 1) : ℚ) / 2) ^ 2)).toNat

end

end A137148.P17483912271021919044

namespace A137148

/-- `A000010((A139270(n+1)/2)²)` -/
def P17483912271021919044.Spec : Prop :=
  ∀ n, P17483912271021919044.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P17790846868585697181

`A000010(A018252(n+1)*A018252(n+1))`
-/

namespace A137148.P17790846868585697181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1) * A018252 (n + 1)).toNat

end

end A137148.P17790846868585697181

namespace A137148

/-- `A000010(A018252(n+1)*A018252(n+1))` -/
def P17790846868585697181.Spec : Prop :=
  ∀ n, P17790846868585697181.a n = A137148 (n + 1)

end A137148

/-! ## A137148.P8277914883457159863

`A127466(A324600(n+1))`
-/

namespace A137148.P8277914883457159863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127466 (A324600 (n + 1)).toNat

end

end A137148.P8277914883457159863

namespace A137148

/-- `A127466(A324600(n+1))` -/
def P8277914883457159863.Spec : Prop :=
  ∀ n, P8277914883457159863.a n = A137148 (n + 1)

end A137148

/-!
# A137149: a(n) = (prime(n)-2)!.

The programs for A137149, there is no canonical definition to state claims against.
-/

/-! ## A137149.P4510705064947187086

`(p?[xor(1, n)]-2)!`
-/

namespace A137149.P4510705064947187086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2).toNat

end

end A137149.P4510705064947187086

/-! ## A137149.P11768054928015422593

`record[∑{p}[n, #-2]]!`
-/

namespace A137149.P11768054928015422593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137149.P11768054928015422593

/-! ## A137149.P12476469421963600658

`eq[1, ∑{e}[n+2, #]]!`
-/

namespace A137149.P12476469421963600658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137149.P12476469421963600658

/-! ## A137149.P14371924674089129758

`(eq[1, ∑{e}[n, #]]-2)!`
-/

namespace A137149.P14371924674089129758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2).toNat

end

end A137149.P14371924674089129758

/-! ## A137149.P2609073208961399680

`lt[∑{e}[n+2, #], 2]!`
-/

namespace A137149.P2609073208961399680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A137149.P2609073208961399680

/-!
# A137150: Degree of Lagrange resolvent of polynomial of composite degree.

The programs for A137150, there is no canonical definition to state claims against.
-/

/-! ## A137150.P13977033176589803429

`A058161(A018252(n+1))`
-/

namespace A137150.P13977033176589803429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058161 (A018252 (n + 1)).toNat

end

end A137150.P13977033176589803429

/-! ## A137150.P11857271402436541853

`A058161(sqrt(A062312(n+1)))`
-/

namespace A137150.P11857271402436541853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058161 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ))).toNat

end

end A137150.P11857271402436541853

/-! ## A137150.P12020522999874386501

`A060462(n+1)!/A166362(n+1)`
-/

namespace A137150.P12020522999874386501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A060462 (n + 1)).toNat : ℚ) / (A166362 (n + 1) : ℚ)

end

end A137150.P12020522999874386501

/-! ## A137150.P9317297765878535350

`record[A005171(n+1)*A058161(n+1)]`
-/

namespace A137150.P9317297765878535350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A058161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137150.P9317297765878535350

/-! ## A137150.P6605155899008233732

`A058161(A275823(A137148(n+1)))`
-/

namespace A137150.P6605155899008233732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058161 (A275823 (A137148 (n + 1)).toNat).toNat

end

end A137150.P6605155899008233732

/-! ## A137150.P14730848881758167950

`A062313(n+1)/A000010(A062312(n+1))`
-/

namespace A137150.P14730848881758167950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062313 (n + 1) : ℚ) / (A000010 (A062312 (n + 1)).toNat : ℚ)

end

end A137150.P14730848881758167950

/-!
# A137151: Triangle read by rows: A007318 * A026794.

The programs for A137151, there is no canonical definition to state claims against.
-/

/-! ## A137151.P13353044481822950298

`A134032(n+1)+A025469(A062966(n))`
-/

namespace A137151.P13353044481822950298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134032 (n + 1) + A025469 (A062966 n).toNat

end

end A137151.P13353044481822950298

/-! ## A137151.P7523647740788803964

`A134032(n+1)+A025466(A218482(n))`
-/

namespace A137151.P7523647740788803964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134032 (n + 1) + A025466 (A218482 n).toNat

end

end A137151.P7523647740788803964

/-! ## A137151.P6125841658328861922

`A276791(A005183(n))+A134032(n+1)`
-/

namespace A137151.P6125841658328861922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 (A005183 n).toNat + A134032 (n + 1)

end

end A137151.P6125841658328861922

/-! ## A137151.P7166619604854513621

`A316869(n)+A134032(A351870(n)+1)`
-/

namespace A137151.P7166619604854513621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n + A134032 (A351870 n + 1).toNat

end

end A137151.P7166619604854513621

/-! ## A137151.P5198462468831961646

`or(A060990(A098999(n+1)), A134032(n+1))`
-/

namespace A137151.P5198462468831961646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060990 (A098999 (n + 1)).toNat) (A134032 (n + 1))

end

end A137151.P5198462468831961646

/-!
# A137153: Triangle, read by rows, where T(n,k) = C(2^k + n-k-1, n-k).

The programs for A137153, the canonical program `A137153.P4047191576535174282` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137153 has offset 0).

The definition of A137153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137153.P4047191576535174282

`C(A059268(n)+A025581(n+1), A025581(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A137153

/-- `C(A059268(n)+A025581(n+1), A025581(n))` -/
def P4047191576535174282.Spec : Prop :=
  ∀ n, (P4047191576535174282.a n : ℤ) = A137153 n

theorem P4047191576535174282.correct : P4047191576535174282.Spec := by
  intro n
  simp only [A137153]

end A137153

/-! ## A137153.P8918925837998011816

`A092056((n²+n)%A080036(n))`
-/

namespace A137153.P8918925837998011816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A137153.P8918925837998011816

namespace A137153

/-- `A092056((n²+n)%A080036(n))` -/
def P8918925837998011816.Spec : Prop :=
  ∀ n, P8918925837998011816.a n = A137153 n

end A137153

/-! ## A137153.P5456127078536741286

`A092056(A061579(n)%A063007(n))`
-/

namespace A137153.P5456127078536741286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (Int.tmod (A061579 n) (A063007 n)).toNat

end

end A137153.P5456127078536741286

namespace A137153

/-- `A092056(A061579(n)%A063007(n))` -/
def P5456127078536741286.Spec : Prop :=
  ∀ n, P5456127078536741286.a n = A137153 n

end A137153

/-! ## A137153.P17461735844914416777

`A092056(gcd(A010816(n), A061579(n)))`
-/

namespace A137153.P17461735844914416777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (Int.gcd (A010816 n) (A061579 n))

end

end A137153.P17461735844914416777

namespace A137153

/-- `A092056(gcd(A010816(n), A061579(n)))` -/
def P17461735844914416777.Spec : Prop :=
  ∀ n, P17461735844914416777.a n = A137153 n

end A137153

/-! ## A137153.P13127787640390799720

`A092056((A114327(n)+n)%A168517(n))`
-/

namespace A137153.P13127787640390799720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (Int.tmod (A114327 n + (n : ℤ)) (A168517 n)).toNat

end

end A137153.P13127787640390799720

namespace A137153

/-- `A092056((A114327(n)+n)%A168517(n))` -/
def P13127787640390799720.Spec : Prop :=
  ∀ n, P13127787640390799720.a n = A137153 n

end A137153

/-! ## A137153.P14833276723471673420

`A092056(char[A014132(n+1)]*A061579(n))`
-/

namespace A137153.P14833276723471673420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A137153.P14833276723471673420

namespace A137153

/-- `A092056(char[A014132(n+1)]*A061579(n))` -/
def P14833276723471673420.Spec : Prop :=
  ∀ n, P14833276723471673420.a n = A137153 n

end A137153

/-! ## A137153.P3405996414572883928

`A092056(A061579(n))`
-/

namespace A137153.P3405996414572883928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (A061579 n).toNat

end

end A137153.P3405996414572883928

namespace A137153

/-- `A092056(A061579(n))` -/
def P3405996414572883928.Spec : Prop :=
  ∀ n, P3405996414572883928.a n = A137153 n

end A137153

/-! ## A137153.P14849480804252980772

`A092056(A114327(n)+n)`
-/

namespace A137153.P14849480804252980772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (A114327 n + (n : ℤ)).toNat

end

end A137153.P14849480804252980772

namespace A137153

/-- `A092056(A114327(n)+n)` -/
def P14849480804252980772.Spec : Prop :=
  ∀ n, P14849480804252980772.a n = A137153 n

end A137153

/-! ## A137153.P2107133697840379449

`A092056(A038722(n+1)-1)`
-/

namespace A137153.P2107133697840379449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092056 (A038722 (n + 1) - 1).toNat

end

end A137153.P2107133697840379449

namespace A137153

/-- `A092056(A038722(n+1)-1)` -/
def P2107133697840379449.Spec : Prop :=
  ∀ n, P2107133697840379449.a n = A137153 n

end A137153

/-!
# A137154: a(n) = Sum_{k=0..n} binomial(2^k + n-k-1, n-k); equals the row sums of triangle A137153.

The programs for A137154, there is no canonical definition to state claims against.
-/

/-! ## A137154.P1689843321390316258

`A383093(2^n)`
-/

namespace A137154.P1689843321390316258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383093 (2 ^ n)

end

end A137154.P1689843321390316258

/-! ## A137154.P6272106898235648759

`∑[A061017(A113059(n))]`
-/

namespace A137154.P6272106898235648759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A113059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137154.P6272106898235648759

/-! ## A137154.P12643001342574574442

`∑[A052410(A121392(n)²)]`
-/

namespace A137154.P12643001342574574442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A121392 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137154.P12643001342574574442

/-!
# A137155: a(n) = Sum_{k=0..[n/2]} C(2^k + n-2k-1, n-2k); equals the antidiagonal sums of triangle A137153.

The programs for A137155, there is no canonical definition to state claims against.
-/

/-! ## A137155.P2763614398582451506

`A257839((n+1)*a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A137155.P2763614398582451506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A257839 ((n + 1 : ℤ) * a (n - 1) + 3).toNat

end

end A137155.P2763614398582451506

/-! ## A137155.P3804226284650606191

`A054404(A331994(n+1)+A331875(n+1))`
-/

namespace A137155.P3804226284650606191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A331994 (n + 1) + A331875 (n + 1)).toNat

end

end A137155.P3804226284650606191

/-! ## A137155.P16065401183550457497

`A000194(A093542(n))`
-/

namespace A137155.P16065401183550457497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A093542 n).toNat

end

end A137155.P16065401183550457497

/-! ## A137155.P9955985985842390395

`A257639(A230958(n))`
-/

namespace A137155.P9955985985842390395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A230958 n).toNat

end

end A137155.P9955985985842390395

/-! ## A137155.P16001691532383964097

`A102823(A022857(n+1))`
-/

namespace A137155.P16001691532383964097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A022857 (n + 1)).toNat

end

end A137155.P16001691532383964097

/-!
# A137156: Matrix inverse of triangle A137153(n,k) = C(2^k+n-k-1, n-k), read by rows.

The programs for A137156, there is no canonical definition to state claims against.
-/

/-! ## A137156.P8027028464561147063

`A355635(A061579(n)%A123104(n))`
-/

namespace A137156.P8027028464561147063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355635 (Int.tmod (A061579 n) (A123104 (n + 31))).toNat

end

end A137156.P8027028464561147063

/-! ## A137156.P624023467554532886

`A355635(A061579(n))%A361622(n+1)`
-/

namespace A137156.P624023467554532886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355635 (A061579 n).toNat) (A361622 (n + 1))

end

end A137156.P624023467554532886

/-! ## A137156.P8559610188472979676

`A355635(lcm(A008836(2^n), A061579(n)))`
-/

namespace A137156.P8559610188472979676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355635 (Int.lcm (A008836 (2 ^ n)) (A061579 n))

end

end A137156.P8559610188472979676

/-! ## A137156.P14410249894764740599

`A355635(A061579(n)^A025142(3*n+5))`
-/

namespace A137156.P14410249894764740599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355635 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A025142 (3 * n + 5) : ℤ))).toNat

end

end A137156.P14410249894764740599

/-!
# A137157: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1+x)^(2*2^n).

The programs for A137157, there is no canonical definition to state claims against.
-/

/-! ## A137157.P3825742383550364041

`abs(A137156(A134869(n+1)))`
-/

namespace A137157.P3825742383550364041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137156 (A134869 (n + 1)).toNat|

end

end A137157.P3825742383550364041

/-! ## A137157.P13510615252683515575

`record[gcd(A137156(n), A355607(n))]`
-/

namespace A137157.P13510615252683515575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137156 n) (A355607 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137157.P13510615252683515575

/-! ## A137157.P6664890235793003317

`record[abs(A137156(A014132(n+1)))]`
-/

namespace A137157.P6664890235793003317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137156 (A014132 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137157.P6664890235793003317

/-! ## A137157.P610345649576444300

`record[A122188(n+1)*A137156(n)]`
-/

namespace A137157.P610345649576444300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122188 (n + 1) * A137156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137157.P610345649576444300

/-!
# A137158: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1+x)^(4*2^n).

The programs for A137158, there is no canonical definition to state claims against.
-/

/-! ## A137158.P10729706887380352630

`abs(A137156(A167614(n+1)-1))`
-/

namespace A137158.P10729706887380352630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137156 (A167614 (n + 1) - 1).toNat|

end

end A137158.P10729706887380352630

/-! ## A137158.P15001372815973182750

`gcd(A008683(4*(n+1)), A137156(A167614(n+1)-1))`
-/

namespace A137158.P15001372815973182750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (A137156 (A167614 (n + 1) - 1).toNat)

end

end A137158.P15001372815973182750

/-! ## A137158.P16387274619609159921

`record[gcd(A137156(n+2), A137176(n))]`
-/

namespace A137158.P16387274619609159921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137156 (n + 2)) (A137176 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137158.P16387274619609159921

/-!
# A137159: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1+x)^(8*2^n).

The programs for A137159, there is no canonical definition to state claims against.
-/

/-! ## A137159.P9023433208678609097

`abs(A137156(A167614(n+2)))`
-/

namespace A137159.P9023433208678609097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137156 (A167614 (n + 2)).toNat|

end

end A137159.P9023433208678609097

/-!
# A137160: G.f.: 1 = Sum_{n>=0} a(n)*x^n*(1-x)/(1+x)^(2^n).

The programs for A137160, there is no canonical definition to state claims against.
-/

/-! ## A137160.P12399989336812111101

`A036453(n+1)*A172401(n)`
-/

namespace A137160.P12399989336812111101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A172401 n

end

end A137160.P12399989336812111101

/-! ## A137160.P9636146729212102636

`A103517(n)/(n+1)*A172401(n)`
-/

namespace A137160.P9636146729212102636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (n + 1 : ℚ) * (A172401 n : ℚ)

end

end A137160.P9636146729212102636

/-! ## A137160.P12386105529622223793

`A020639(A141056(n))*A172401(n)`
-/

namespace A137160.P12386105529622223793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141056 n).toNat * A172401 n

end

end A137160.P12386105529622223793

/-! ## A137160.P4607973016437836482

`A001222(A001747(n+1))*A172401(n)`
-/

namespace A137160.P4607973016437836482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1)).toNat * A172401 n

end

end A137160.P4607973016437836482

/-! ## A137160.P11904566688449258567

`A001222(p?[A259576(n+3)]+1)*A172401(n)`
-/

namespace A137160.P11904566688449258567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat * A172401 n

end

end A137160.P11904566688449258567

/-!
# A137161: Starting at Step=0 from the sequence 1, 0, 1, 0, 1, 0, etc. (A059841) at any Step=n, with n>=1, any numbers of the previous step is inserted in the sequence any (2*n-1) numbers.

The programs for A137161, there is no canonical definition to state claims against.
-/

/-! ## A137161.P16884377103041897474

`char[comp[A137162(n)-1]]`
-/

namespace A137161.P16884377103041897474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137162 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A137161.P16884377103041897474

/-! ## A137161.P2442124934048507502

`1-char[A137162(round(sqrt(n)))-1]`
-/

namespace A137161.P2442124934048507502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137162 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137161.P2442124934048507502

/-! ## A137161.P16191945785470924464

`A137163(A131516(n))%2`
-/

namespace A137161.P16191945785470924464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137163 (A131516 n).toNat) 2

end

end A137161.P16191945785470924464

/-! ## A137161.P8270062470153531653

`A137163(A186421(n))%2`
-/

namespace A137161.P8270062470153531653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137163 (A186421 n).toNat) 2

end

end A137161.P8270062470153531653

/-! ## A137161.P2058425315900433550

`A137163(A237420(n))%2`
-/

namespace A137161.P2058425315900433550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137163 (A237420 n).toNat) 2

end

end A137161.P2058425315900433550

/-! ## A137161.P9913914932407096630

`and(A000322(n), A137163(A131516(n)))`
-/

namespace A137161.P9913914932407096630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A137163 (A131516 n).toNat)

end

end A137161.P9913914932407096630

/-! ## A137161.P9026483089309873962

`and(A008349(n), A137163(A131516(n)))`
-/

namespace A137161.P9026483089309873962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A137163 (A131516 n).toNat)

end

end A137161.P9026483089309873962

/-! ## A137161.P8954647756759988346

`and(A014641(n), A137163(A131516(n)))`
-/

namespace A137161.P8954647756759988346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014641 n) (A137163 (A131516 n).toNat)

end

end A137161.P8954647756759988346

/-! ## A137161.P5995643368001951122

`and(A016813(n), A137163(A131516(n)))`
-/

namespace A137161.P5995643368001951122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016813 n) (A137163 (A131516 n).toNat)

end

end A137161.P5995643368001951122

/-! ## A137161.P13668812980446950342

`and(A017077(n), A137163(A131516(n)))`
-/

namespace A137161.P13668812980446950342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017077 n) (A137163 (A131516 n).toNat)

end

end A137161.P13668812980446950342

/-!
# A137162: Position of zeros in A137161.

The programs for A137162, there is no canonical definition to state claims against.
-/

/-! ## A137162.P3944816819949249625

`eq[0, A137161(n)]+1`
-/

namespace A137162.P3944816819949249625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137162.P3944816819949249625

/-! ## A137162.P11394741546198708301

`eq[0, A137161((n-1)^(n%2))]`
-/

namespace A137162.P11394741546198708301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137162.P11394741546198708301

/-! ## A137162.P7761260873140750248

`A004442(eq[0, A137161(n)])`
-/

namespace A137162.P7761260873140750248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137162.P7761260873140750248

/-! ## A137162.P9985834985633074658

`A020725(eq[0, A137161(n)])`
-/

namespace A137162.P9985834985633074658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137162.P9985834985633074658

/-! ## A137162.P1943951877271406170

`A065475(eq[0, A137161(n)])`
-/

namespace A137162.P1943951877271406170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137162.P1943951877271406170

/-!
# A137163: Like sequence A137161 but starting from the sequence of natural number A000027.

The programs for A137163, there is no canonical definition to state claims against.
-/

/-! ## A137163.P14191090000604133749

`ceil(A278538(n+1)/A100617(A278539(n+1)))`
-/

namespace A137163.P14191090000604133749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278538 (n + 1) : ℚ) / (A100617 (A278539 (n + 1)).toNat : ℚ)⌉

end

end A137163.P14191090000604133749

/-! ## A137163.P4278104958420772513

`A278538(n+1)/A160094(A288039(n))`
-/

namespace A137163.P4278104958420772513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278538 (n + 1) : ℚ) / (A160094 (A288039 n).toNat : ℚ)

end

end A137163.P4278104958420772513

/-! ## A137163.P18032013931818688383

`gcd(A278538(n+1), A327928(A251655(n)))`
-/

namespace A137163.P18032013931818688383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278538 (n + 1)) (A327928 (A251655 n).toNat)

end

end A137163.P18032013931818688383

/-! ## A137163.P18258703742872275527

`A115571(5*A014963(n+5))`
-/

namespace A137163.P18258703742872275527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (5 * A014963 (n + 5)).toNat

end

end A137163.P18258703742872275527

/-! ## A137163.P5646192586945319382

`A278538((n+1)*A267338(3*n+4))`
-/

namespace A137163.P5646192586945319382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278538 ((n + 1 : ℤ) * A267338 (3 * n + 4)).toNat

end

end A137163.P5646192586945319382

/-!
# A137164: Lucky numbers (A000959) which are congruent to 0 mod 3.

The programs for A137164, there is no canonical definition to state claims against.
-/

/-! ## A137164.P18196268956541395512

`A000959(eq[3, gcd(3, A000959(n+1))]+1)`
-/

namespace A137164.P18196268956541395512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137164.P18196268956541395512

/-! ## A137164.P13060266645491633090

`A000959(eq[3, A000959(n+1)%6]+1)`
-/

namespace A137164.P13060266645491633090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137164.P13060266645491633090

/-! ## A137164.P3046523587024764960

`∩[3*n, A000959(n+1)]`
-/

namespace A137164.P3046523587024764960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P3046523587024764960

/-! ## A137164.P12198386244745991015

`filter[A016945(n), A145649(#)]`
-/

namespace A137164.P12198386244745991015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P12198386244745991015

/-! ## A137164.P15966239022069781417

`∩[A000959(n+1), A016945(n)]`
-/

namespace A137164.P15966239022069781417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P15966239022069781417

/-! ## A137164.P10266562663382182120

`∩[A000959(n+1), A016921(n)+2]`
-/

namespace A137164.P10266562663382182120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P10266562663382182120

/-! ## A137164.P2505599505107833145

`∩[A000959(n+1), A016885(n)+n]`
-/

namespace A137164.P2505599505107833145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P2505599505107833145

/-! ## A137164.P15261470129846485229

`∩[A000959(n+1), A017017(n)-n]`
-/

namespace A137164.P15261470129846485229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P15261470129846485229

/-! ## A137164.P6588180762433313944

`filter[A091361(n+2), A145649(#)]`
-/

namespace A137164.P6588180762433313944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P6588180762433313944

/-! ## A137164.P12801413145147308200

`filter[A277569(n+1), A145649(#)]`
-/

namespace A137164.P12801413145147308200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P12801413145147308200

/-! ## A137164.P13107422435261078961

`∩[A000959(n+1), A277569(n+1)]`
-/

namespace A137164.P13107422435261078961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P13107422435261078961

/-! ## A137164.P10715464939211825784

`lt[(n+1)%3, A145649(n+1)]+1`
-/

namespace A137164.P10715464939211825784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137164.P10715464939211825784

/-! ## A137164.P1046245315211167279

`∩[A000959(n+1), A277567(n+1)+2]`
-/

namespace A137164.P1046245315211167279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P1046245315211167279

/-! ## A137164.P18309573669593729226

`filter[A259754(n+1), A145649(#)]`
-/

namespace A137164.P18309573669593729226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P18309573669593729226

/-! ## A137164.P8228746196710413697

`∩[A000959(n+1), A259754(n+1)]`
-/

namespace A137164.P8228746196710413697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P8228746196710413697

/-! ## A137164.P7465719251289024317

`∩[A000959(n+1), A084089(n+1)+2]`
-/

namespace A137164.P7465719251289024317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137164.P7465719251289024317

/-! ## A137164.P6189386254350069794

`filter[A136290(n+1), A145649(#)]`
-/

namespace A137164.P6189386254350069794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P6189386254350069794

/-! ## A137164.P5109133004433384554

`filter[A008486(n+1), A145649(#)]`
-/

namespace A137164.P5109133004433384554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P5109133004433384554

/-! ## A137164.P6751713080008451275

`filter[A008585(n+1), A145649(#)]`
-/

namespace A137164.P6751713080008451275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P6751713080008451275

/-! ## A137164.P7987107262120823993

`filter[A047230(n+1), A145649(#)]`
-/

namespace A137164.P7987107262120823993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137164.P7987107262120823993

/-!
# A137165: Lucky numbers (A000959) which are congruent to 1 mod 3.

The programs for A137165, there is no canonical definition to state claims against.
-/

/-! ## A137165.P2464519818075694519

`A000959(eq[1, A000959(n+1)%3]+1)`
-/

namespace A137165.P2464519818075694519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137165.P2464519818075694519

/-! ## A137165.P11424108158395118847

`A000959(eq[1, gcd(3, A000959(n+1))]+1)`
-/

namespace A137165.P11424108158395118847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137165.P11424108158395118847

/-! ## A137165.P5019276205422758734

`A000959(eq[0, val(A000959(n+1), 3)]+1)`
-/

namespace A137165.P5019276205422758734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000959 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137165.P5019276205422758734

/-! ## A137165.P14357883270110419860

`A000959(record[(n+1)*A000959(n+2)%3]+1)`
-/

namespace A137165.P14357883270110419860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000959 (n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A137165.P14357883270110419860

/-! ## A137165.P5405617665390467295

`∩[3*n+1, A000959(n+1)]`
-/

namespace A137165.P5405617665390467295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P5405617665390467295

/-! ## A137165.P16939274689645448039

`filter[A000959(n+1), A187074(#)]`
-/

namespace A137165.P16939274689645448039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A137165.P16939274689645448039

/-! ## A137165.P11082757788180626638

`filter[A000959(n+1), A359374(#)]`
-/

namespace A137165.P11082757788180626638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A137165.P11082757788180626638

/-! ## A137165.P17380392184304541497

`filter[A000959(n+1), A373155(#)]`
-/

namespace A137165.P17380392184304541497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A137165.P17380392184304541497

/-! ## A137165.P18257161787320975480

`filter[A000959(n+1), A373156(#)]`
-/

namespace A137165.P18257161787320975480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A137165.P18257161787320975480

/-! ## A137165.P9983208973200256920

`filter[A000959(n+1), A374043(#)]`
-/

namespace A137165.P9983208973200256920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A137165.P9983208973200256920

/-! ## A137165.P9322767462264180950

`filter[A000959(n+1), A320106(#)]`
-/

namespace A137165.P9322767462264180950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A137165.P9322767462264180950

/-! ## A137165.P612999208304419912

`filter[A000959(n+1), A354354(#)]`
-/

namespace A137165.P612999208304419912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A137165.P612999208304419912

/-! ## A137165.P9932118627762551655

`filter[A016921(n), A145649(#)]`
-/

namespace A137165.P9932118627762551655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137165.P9932118627762551655

/-! ## A137165.P9788848836177498220

`∩[A000959(n+1), A016921(n)]`
-/

namespace A137165.P9788848836177498220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P9788848836177498220

/-! ## A137165.P3200749658202756624

`∩[A000959(n+1), A016945(n)-2]`
-/

namespace A137165.P3200749658202756624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P3200749658202756624

/-! ## A137165.P1589161149339445525

`∩[A000959(n+1), A016861(n)+n]`
-/

namespace A137165.P1589161149339445525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P1589161149339445525

/-! ## A137165.P14809366078462802835

`∩[A000959(n+1), A016993(n)-n]`
-/

namespace A137165.P14809366078462802835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P14809366078462802835

/-! ## A137165.P542616822397003446

`lt[n%3, A145649(n+1)]+1`
-/

namespace A137165.P542616822397003446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137165.P542616822397003446

/-! ## A137165.P8467889254750556603

`filter[A277567(n+1), A145649(#)]`
-/

namespace A137165.P8467889254750556603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137165.P8467889254750556603

/-! ## A137165.P16230453782614319086

`∩[A000959(n+1), A277567(n+1)]`
-/

namespace A137165.P16230453782614319086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137165.P16230453782614319086

/-!
# A137166: Sequence equals its 4th differences shifted by one index.

The programs for A137166, the canonical program `A137166.P422244817033812280` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137166 has offset 0).

The definition of A137166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137166.P422244817033812280

`4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137166

/-- `4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` -/
def P422244817033812280.Spec : Prop :=
  ∀ n, P422244817033812280.a n = A137166 n

theorem P422244817033812280.correct : P422244817033812280.Spec := by
  intro n
  simp only [A137166]

end A137166

/-! ## A137166.P3359691605567728559

`ogf((1-x+x^2)/(1-4x+6x^2-5x^3+x^4))`
-/

namespace A137166.P3359691605567728559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 6, -5, 1] n

end

end A137166.P3359691605567728559

namespace A137166

/-- `ogf((1-x+x^2)/(1-4x+6x^2-5x^3+x^4))` -/
def P3359691605567728559.Spec : Prop :=
  ∀ n, P3359691605567728559.a n = A137166 n

end A137166

/-! ## A137166.P2095037611561808612

`A027947(Δ[n²])`
-/

namespace A137166.P2095037611561808612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A137166.P2095037611561808612

namespace A137166

/-- `A027947(Δ[n²])` -/
def P2095037611561808612.Spec : Prop :=
  ∀ n, P2095037611561808612.a n = A137166 n

end A137166

/-! ## A137166.P4116202226575684703

`A079398(4*(n+1))`
-/

namespace A137166.P4116202226575684703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (4 * (n + 1))

end

end A137166.P4116202226575684703

namespace A137166

/-- `A079398(4*(n+1))` -/
def P4116202226575684703.Spec : Prop :=
  ∀ n, P4116202226575684703.a n = A137166 n

end A137166

/-! ## A137166.P14578763902784065565

`A122521(8*(n+1))`
-/

namespace A137166.P14578763902784065565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (8 * (n + 1))

end

end A137166.P14578763902784065565

namespace A137166

/-- `A122521(8*(n+1))` -/
def P14578763902784065565.Spec : Prop :=
  ∀ n, P14578763902784065565.a n = A137166 n

end A137166

/-! ## A137166.P3755786018582481050

`A122514(2*n)+A062200(2*n+1)`
-/

namespace A137166.P3755786018582481050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122514 (2 * n) + A062200 (2 * n + 1)

end

end A137166.P3755786018582481050

namespace A137166

/-- `A122514(2*n)+A062200(2*n+1)` -/
def P3755786018582481050.Spec : Prop :=
  ∀ n, P3755786018582481050.a n = A137166 n

end A137166

/-! ## A137166.P12295334293697124589

`A122514(2*n+1)+A122514(2*(n+1))`
-/

namespace A137166.P12295334293697124589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122514 (2 * n + 1) + A122514 (2 * (n + 1))

end

end A137166.P12295334293697124589

namespace A137166

/-- `A122514(2*n+1)+A122514(2*(n+1))` -/
def P12295334293697124589.Spec : Prop :=
  ∀ n, P12295334293697124589.a n = A137166 n

end A137166

/-! ## A137166.P3789485048574675266

`Δ[A027959(Δ[n²])]`
-/

namespace A137166.P3789485048574675266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027959 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137166.P3789485048574675266

namespace A137166

/-- `Δ[A027959(Δ[n²])]` -/
def P3789485048574675266.Spec : Prop :=
  ∀ n, P3789485048574675266.a n = A137166 n

end A137166

/-! ## A137166.P16017756785119506799

`Δ[A079398(Δ[A000217(2*n)])]`
-/

namespace A137166.P16017756785119506799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137166.P16017756785119506799

namespace A137166

/-- `Δ[A079398(Δ[A000217(2*n)])]` -/
def P16017756785119506799.Spec : Prop :=
  ∀ n, P16017756785119506799.a n = A137166 n

end A137166

/-! ## A137166.P12897240385387904272

`A027959(2*n+3)-A027959(2*n+1)`
-/

namespace A137166.P12897240385387904272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027959 (2 * n + 3) - A027959 (2 * n + 1)

end

end A137166.P12897240385387904272

namespace A137166

/-- `A027959(2*n+3)-A027959(2*n+1)` -/
def P12897240385387904272.Spec : Prop :=
  ∀ n, P12897240385387904272.a n = A137166 n

end A137166

/-! ## A137166.P8616557595582826190

`2*A027947(2*n+1)-A027947(2*n+1)`
-/

namespace A137166.P8616557595582826190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027947 (2 * n + 1) - A027947 (2 * n + 1)

end

end A137166.P8616557595582826190

namespace A137166

/-- `2*A027947(2*n+1)-A027947(2*n+1)` -/
def P8616557595582826190.Spec : Prop :=
  ∀ n, P8616557595582826190.a n = A137166 n

end A137166

/-! ## A137166.P6845931347161040148

`Δ[Δ[A027947(2*n)]]`
-/

namespace A137166.P6845931347161040148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137166.P6845931347161040148

namespace A137166

/-- `Δ[Δ[A027947(2*n)]]` -/
def P6845931347161040148.Spec : Prop :=
  ∀ n, P6845931347161040148.a n = A137166 n

end A137166

/-!
# A137167: Semiprimes that do not contain any other semiprimes as a substring.

The programs for A137167, there is no canonical definition to state claims against.
-/

/-! ## A137167.P6406715636218293880

`A001358(eq[A025890(n), A045698(n)])`
-/

namespace A137167.P6406715636218293880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137167.P6406715636218293880

/-! ## A137167.P9799948543686017441

`A001358(lt[A032572(2*n+5), A007953(2*n+1)])`
-/

namespace A137167.P9799948543686017441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032572 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137167.P9799948543686017441

/-! ## A137167.P2598264144656710723

`eq[p?[A299196(n)], A105700(n)]`
-/

namespace A137167.P2598264144656710723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A137167.P2598264144656710723

/-! ## A137167.P7405919201680594787

`eq[p?[A299196(n)], A284289(n)]`
-/

namespace A137167.P7405919201680594787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A137167.P7405919201680594787

/-! ## A137167.P16355531009301997364

`A001358(A062399(n)+A001156(n))`
-/

namespace A137167.P16355531009301997364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A062399 n + A001156 n).toNat

end

end A137167.P16355531009301997364

/-!
# A137168: Lucky numbers (A000959) which are congruent to 1 mod 4.

The programs for A137168, there is no canonical definition to state claims against.
-/

/-! ## A137168.P9068510547609661493

`∪[A137190(n+1), A137194(n+1)]`
-/

namespace A137168.P9068510547609661493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P9068510547609661493

/-! ## A137168.P4749128144071559443

`A000959(eq[1, A000959(n+1)%4]+1)`
-/

namespace A137168.P4749128144071559443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137168.P4749128144071559443

/-! ## A137168.P16595416364857285884

`A000959(eq[1, and(3, A000959(n+1))]+1)`
-/

namespace A137168.P16595416364857285884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137168.P16595416364857285884

/-! ## A137168.P10004986458654785677

`∩[A000959(n+1), A306277(n+1)+n]`
-/

namespace A137168.P10004986458654785677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P10004986458654785677

/-! ## A137168.P18346284111091791494

`lt[and(2, n), A145649(n+1)]+1`
-/

namespace A137168.P18346284111091791494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137168.P18346284111091791494

/-! ## A137168.P6966851274573820573

`filter[A016813(n), A145649(#)]`
-/

namespace A137168.P6966851274573820573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P6966851274573820573

/-! ## A137168.P6577334887700493448

`∩[A000959(n+1), A016813(n)]`
-/

namespace A137168.P6577334887700493448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P6577334887700493448

/-! ## A137168.P11686366388703404039

`∩[A000959(n+1), A004767(n)-2]`
-/

namespace A137168.P11686366388703404039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P11686366388703404039

/-! ## A137168.P6878818333287474706

`∩[A000959(n+1), A016777(n)+n]`
-/

namespace A137168.P6878818333287474706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P6878818333287474706

/-! ## A137168.P10444624444469331813

`∩[A000959(n+1), A016861(n)-n]`
-/

namespace A137168.P10444624444469331813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P10444624444469331813

/-! ## A137168.P4534272028383147042

`lt[(n+1)%A112049(n+1), A145649(n+1)]+1`
-/

namespace A137168.P4534272028383147042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A112049 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137168.P4534272028383147042

/-! ## A137168.P6383480293810990122

`filter[A112652(n+1), A145649(#)]`
-/

namespace A137168.P6383480293810990122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P6383480293810990122

/-! ## A137168.P7838795645683717611

`filter[A277549(n+1), A145649(#)]`
-/

namespace A137168.P7838795645683717611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P7838795645683717611

/-! ## A137168.P4832098516167714555

`∩[A000959(n+1), A112652(n)]`
-/

namespace A137168.P4832098516167714555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P4832098516167714555

/-! ## A137168.P13875006824530277218

`filter[A080455(2*n+1), A145649(#)]`
-/

namespace A137168.P13875006824530277218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P13875006824530277218

/-! ## A137168.P15006645911529166872

`∩[A000959(n+1), A277549(n+1)]`
-/

namespace A137168.P15006645911529166872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P15006645911529166872

/-! ## A137168.P910922570761707187

`∩[A000959(n+1), A055050(n+1)-2]`
-/

namespace A137168.P910922570761707187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P910922570761707187

/-! ## A137168.P9772317964890672288

`filter[A304868(n+1), A145649(#)]`
-/

namespace A137168.P9772317964890672288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P9772317964890672288

/-! ## A137168.P5689351573585213237

`∩[A000959(n+1), A304868(n+1)]`
-/

namespace A137168.P5689351573585213237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137168.P5689351573585213237

/-! ## A137168.P6669811180188970419

`filter[A026448(n+1), A145649(#)]`
-/

namespace A137168.P6669811180188970419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137168.P6669811180188970419

/-!
# A137169: a(0) = 2; for n>0, a(n) = smallest number m > a(n-1) such that both m-n and m+n are primes.

The programs for A137169, there is no canonical definition to state claims against.
-/

/-! ## A137169.P11210675960263969573

`p?[abs(A097805(A132044(2*n))-n)]+n`
-/

namespace A137169.P11210675960263969573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097805 (A132044 (2 * n)).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A137169.P11210675960263969573

/-! ## A137169.P867307087476684403

`A004736(A009196(n)+comp[2*n+3])+n+1`
-/

namespace A137169.P867307087476684403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A009196 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat + (n + 1 : ℤ)

end

end A137169.P867307087476684403

/-! ## A137169.P14915360931091153744

`eq[A008622(n), A342585(A130330(n))]`
-/

namespace A137169.P14915360931091153744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A130330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137169.P14915360931091153744

/-! ## A137169.P14343575597900032907

`eq[A045843(A265887(n+1)), A130321(n)]`
-/

namespace A137169.P14343575597900032907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A265887 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137169.P14343575597900032907

/-! ## A137169.P8325209381719083819

`eq[A238343(n), A348806(A226314(n+1))]`
-/

namespace A137169.P8325209381719083819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348806 (A226314 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137169.P8325209381719083819

/-!
# A137170: Lucky numbers (A000959) which are congruent to 3 mod 4.

The programs for A137170, there is no canonical definition to state claims against.
-/

/-! ## A137170.P4933777724405318246

`∪[A137192(n+1), A137196(n+1)]`
-/

namespace A137170.P4933777724405318246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P4933777724405318246

/-! ## A137170.P10529055843870966155

`A000959(eq[3, A000959(n+1)%4]+1)`
-/

namespace A137170.P10529055843870966155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137170.P10529055843870966155

/-! ## A137170.P3995709901445412202

`A000959(eq[2, and(2, A000959(n+1))]+1)`
-/

namespace A137170.P3995709901445412202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000959 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137170.P3995709901445412202

/-! ## A137170.P13215476006688834471

`∩[4*n+3, A000959(n+1)]`
-/

namespace A137170.P13215476006688834471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P13215476006688834471

/-! ## A137170.P10549605127497386056

`record[(4*n+3)*A145649(4*n+3)+1]-1`
-/

namespace A137170.P10549605127497386056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A145649 (4 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A137170.P10549605127497386056

/-! ## A137170.P4998008303760708340

`filter[A092899(n+1), A145649(#)]`
-/

namespace A137170.P4998008303760708340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P4998008303760708340

/-! ## A137170.P12660442249120488359

`lt[and(2, n+2), A145649(n+1)]+1`
-/

namespace A137170.P12660442249120488359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137170.P12660442249120488359

/-! ## A137170.P16725581729431587121

`filter[A004767(n), A145649(#)]`
-/

namespace A137170.P16725581729431587121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P16725581729431587121

/-! ## A137170.P4936560412640682205

`filter[A083031(n+2), A145649(#)]`
-/

namespace A137170.P4936560412640682205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P4936560412640682205

/-! ## A137170.P3887510966229482492

`filter[A131098(n+2), A145649(#)]`
-/

namespace A137170.P3887510966229482492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P3887510966229482492

/-! ## A137170.P7377265759952636421

`∩[A000959(n+1), A004767(n)]`
-/

namespace A137170.P7377265759952636421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P7377265759952636421

/-! ## A137170.P16451447301444737890

`filter[A267363(2*n+1), A145649(#)]`
-/

namespace A137170.P16451447301444737890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267363 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P16451447301444737890

/-! ## A137170.P11330226312465220997

`∩[A000959(n+1), A083031(n+1)]`
-/

namespace A137170.P11330226312465220997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P11330226312465220997

/-! ## A137170.P6570745011253350167

`∩[A000959(n+1), A016813(n)+2]`
-/

namespace A137170.P6570745011253350167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P6570745011253350167

/-! ## A137170.P4857491018366117934

`∩[A000959(n+1), A016885(n)-n]`
-/

namespace A137170.P4857491018366117934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137170.P4857491018366117934

/-! ## A137170.P14865936116592446365

`lt[A112049(n+1)%2, A145649(n+1)]+1`
-/

namespace A137170.P14865936116592446365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112049 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137170.P14865936116592446365

/-! ## A137170.P17581977901538197577

`lt[A145649(A112049(n+1)), A145649(n+1)]+1`
-/

namespace A137170.P17581977901538197577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A112049 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137170.P17581977901538197577

/-! ## A137170.P2969325491500236765

`filter[A013574(n+1), A145649(#)]`
-/

namespace A137170.P2969325491500236765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P2969325491500236765

/-! ## A137170.P18372422157801272524

`filter[A055050(n+1), A145649(#)]`
-/

namespace A137170.P18372422157801272524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P18372422157801272524

/-! ## A137170.P15114581008058724666

`filter[A319279(n+2), A145649(#)]`
-/

namespace A137170.P15114581008058724666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137170.P15114581008058724666

/-!
# A137171: Interleaved reading of A000749 and its first to third differences.

The programs for A137171, there is no canonical definition to state claims against.
-/

/-! ## A137171.P7140068251398209222

`A376650(3*(n+1))%A242905(n+1)`
-/

namespace A137171.P7140068251398209222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376650 (3 * (n + 1))) (A242905 (n + 1))

end

end A137171.P7140068251398209222

/-! ## A137171.P2440890421059645523

`A376650(3*n+3)+A010815(A075595(n+1))`
-/

namespace A137171.P2440890421059645523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376650 (3 * n + 3) + A010815 (A075595 (n + 1)).toNat

end

end A137171.P2440890421059645523

/-! ## A137171.P13197225666490658331

`A376650(3*n+3)*A376663(A376665(n+1))`
-/

namespace A137171.P13197225666490658331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376650 (3 * n + 3) * A376663 (A376665 (n + 1)).toNat

end

end A137171.P13197225666490658331

/-! ## A137171.P4339452936816937982

`or(A340599(A156278(n)), A376650(3*(n+1)))`
-/

namespace A137171.P4339452936816937982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A340599 (A156278 n).toNat) (A376650 (3 * (n + 1)))

end

end A137171.P4339452936816937982

/-! ## A137171.P4955316495414424797

`A233427(A233427(2*(n+1)))*A376650(3*(n+1))`
-/

namespace A137171.P4955316495414424797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233427 (A233427 (2 * (n + 1))).toNat * A376650 (3 * (n + 1))

end

end A137171.P4955316495414424797

/-!
# A137172: Numbers in the array A137171.

The programs for A137172, there is no canonical definition to state claims against.
-/

/-! ## A137172.P713270239291626801

`eq[1, char[A137171(n)]]`
-/

namespace A137172.P713270239291626801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137172.P713270239291626801

/-! ## A137172.P7153454487306151179

`eq[1, char[A323100(n)]]`
-/

namespace A137172.P7153454487306151179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323100 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137172.P7153454487306151179

/-! ## A137172.P10195016975025264737

`eq[n, n*char[A323346(n)]]`
-/

namespace A137172.P10195016975025264737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323346 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137172.P10195016975025264737

/-! ## A137172.P17957293124320224911

`eq[char[A323346(n)], A057427(n)]`
-/

namespace A137172.P17957293124320224911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323346 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A137172.P17957293124320224911

/-! ## A137172.P9491948812806786294

`eq[1, char[A094266(n)]]`
-/

namespace A137172.P9491948812806786294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094266 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137172.P9491948812806786294

/-!
# A137173: A006516 at positions with even indices, A007582 at positions with odd indices.

The programs for A137173, the canonical program `A137173.P10508704498159823418` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137173 has offset 0).

The definition of A137173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137173.P10508704498159823418

`a(xor(1, n-2))+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137173

/-- `a(xor(1, n-2))+3*a(n-2)` -/
def P10508704498159823418.Spec : Prop :=
  ∀ n, (P10508704498159823418.a n : ℤ) = A137173 n

theorem P10508704498159823418.correct : P10508704498159823418.Spec := by
  intro n
  simp only [A137173]

end A137173

/-! ## A137173.P7553904630051805550

`A005418(Δ[A000982(n)])-A131575(n+1)`
-/

namespace A137173.P7553904630051805550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (f1 (n + 1) - f1 n).toNat - A131575 (n + 1)

end

end A137173.P7553904630051805550

namespace A137173

/-- `A005418(Δ[A000982(n)])-A131575(n+1)` -/
def P7553904630051805550.Spec : Prop :=
  ∀ n, P7553904630051805550.a n = A137173 n

end A137173

/-! ## A137173.P12638529125129356148

`floor(A171663(n)/4)`
-/

namespace A137173.P12638529125129356148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171663 n : ℚ) / 4⌋

end

end A137173.P12638529125129356148

namespace A137173

/-- `floor(A171663(n)/4)` -/
def P12638529125129356148.Spec : Prop :=
  ∀ n, P12638529125129356148.a n = A137173 n

end A137173

/-! ## A137173.P7969428711587701853

`C(A228693(n+1), 2)`
-/

namespace A137173.P7969428711587701853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228693 (n + 1)).toNat 2

end

end A137173.P7969428711587701853

namespace A137173

/-- `C(A228693(n+1), 2)` -/
def P7969428711587701853.Spec : Prop :=
  ∀ n, (P7969428711587701853.a n : ℤ) = A137173 n

end A137173

/-! ## A137173.P10069765481429184921

`floor(A086341(n)²/8)`
-/

namespace A137173.P10069765481429184921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086341 n ^ 2 : ℚ) / 8⌋

end

end A137173.P10069765481429184921

namespace A137173

/-- `floor(A086341(n)²/8)` -/
def P10069765481429184921.Spec : Prop :=
  ∀ n, P10069765481429184921.a n = A137173 n

end A137173

/-! ## A137173.P884067060134943952

`C(A016116(n)+(n%2)^(n+1), 2)`
-/

namespace A137173.P884067060134943952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016116 n + (((n % 2) ^ (n + 1) : ℕ) : ℤ)).toNat 2

end

end A137173.P884067060134943952

namespace A137173

/-- `C(A016116(n)+(n%2)^(n+1), 2)` -/
def P884067060134943952.Spec : Prop :=
  ∀ n, (P884067060134943952.a n : ℤ) = A137173 n

end A137173

/-! ## A137173.P5786192540014466788

`C(A016116(n)+A000035(n), 2)`
-/

namespace A137173.P5786192540014466788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016116 n + A000035 n).toNat 2

end

end A137173.P5786192540014466788

namespace A137173

/-- `C(A016116(n)+A000035(n), 2)` -/
def P5786192540014466788.Spec : Prop :=
  ∀ n, (P5786192540014466788.a n : ℤ) = A137173 n

end A137173

/-! ## A137173.P11986629092030787914

`C(A308663(A134519(n+1)), 2)`
-/

namespace A137173.P11986629092030787914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A308663 (A134519 (n + 1)).toNat).toNat 2

end

end A137173.P11986629092030787914

namespace A137173

/-- `C(A308663(A134519(n+1)), 2)` -/
def P11986629092030787914.Spec : Prop :=
  ∀ n, (P11986629092030787914.a n : ℤ) = A137173 n

end A137173

/-!
# A137174: First differences of A138383.

The programs for A137174, the canonical program `A137174.P13634936289925099927` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137174 has offset 1).

The definition of A137174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137174.P13634936289925099927

`Δ[A138383(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137174

/-- `Δ[A138383(n)]` -/
def P13634936289925099927.Spec : Prop :=
  ∀ n, P13634936289925099927.a n = A137174 (n + 1)

theorem P13634936289925099927.correct : P13634936289925099927.Spec := by
  intro n
  simp only [A137174, Nat.add_sub_cancel]

end A137174

/-! ## A137174.P7149981863673484791

`A138383(n+1)-A138383(n)`
-/

namespace A137174.P7149981863673484791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1) - A138383 n

end

end A137174.P7149981863673484791

namespace A137174

/-- `A138383(n+1)-A138383(n)` -/
def P7149981863673484791.Spec : Prop :=
  ∀ n, P7149981863673484791.a n = A137174 (n + 1)

theorem P7149981863673484791.correct : P7149981863673484791.Spec := by
  intro n
  simp only [A137174, Nat.add_sub_cancel, A137174.P7149981863673484791.a, A137174.P13634936289925099927.f1, A137174.P13634936289925099927.a, SequenceMachineLib.memo_apply]

end A137174

/-! ## A137174.P186374678930093785

`Δ[Δ[A000217(A182986(n+1))]]`
-/

namespace A137174.P186374678930093785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A182986 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P186374678930093785

namespace A137174

/-- `Δ[Δ[A000217(A182986(n+1))]]` -/
def P186374678930093785.Spec : Prop :=
  ∀ n, P186374678930093785.a n = A137174 (n + 1)

end A137174

/-! ## A137174.P6420956416940786121

`Δ[Δ[record[A341885(n+1)]]]`
-/

namespace A137174.P6420956416940786121
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P6420956416940786121

namespace A137174

/-- `Δ[Δ[record[A341885(n+1)]]]` -/
def P6420956416940786121.Spec : Prop :=
  ∀ n, P6420956416940786121.a n = A137174 (n + 1)

end A137174

/-! ## A137174.P6670712657122487412

`Δ[Δ[A007437(A008578(n+1))]]`
-/

namespace A137174.P6670712657122487412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (A008578 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P6670712657122487412

namespace A137174

/-- `Δ[Δ[A007437(A008578(n+1))]]` -/
def P6670712657122487412.Spec : Prop :=
  ∀ n, P6670712657122487412.a n = A137174 (n + 1)

end A137174

/-! ## A137174.P13241596951631597628

`Δ[Δ[A253145(A008578(n+1)-1)]]`
-/

namespace A137174.P13241596951631597628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A008578 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P13241596951631597628

namespace A137174

/-- `Δ[Δ[A253145(A008578(n+1)-1)]]` -/
def P13241596951631597628.Spec : Prop :=
  ∀ n, P13241596951631597628.a n = A137174 (n + 1)

end A137174

/-! ## A137174.P1189775722992824692

`Δ[Δ[A341885(2*A008578(n+1))]]`
-/

namespace A137174.P1189775722992824692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341885 (2 * A008578 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P1189775722992824692

namespace A137174

/-- `Δ[Δ[A341885(2*A008578(n+1))]]` -/
def P1189775722992824692.Spec : Prop :=
  ∀ n, P1189775722992824692.a n = A137174 (n + 1)

end A137174

/-! ## A137174.P12804021412671901130

`Δ[A109921(2*n+1)+A109921(2*(n+1))]`
-/

namespace A137174.P12804021412671901130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109921 (2 * n + 1) + A109921 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P12804021412671901130

namespace A137174

/-- `Δ[A109921(2*n+1)+A109921(2*(n+1))]` -/
def P12804021412671901130.Spec : Prop :=
  ∀ n, P12804021412671901130.a n = A137174 (n + 1)

end A137174

/-!
# A137176: Hyperlucas number array T(r,n) = L(n)^(r), read by ascending antidiagonals (r >= 0, n >= 0).

The programs for A137176, there is no canonical definition to state claims against.
-/

/-! ## A137176.P5434098266190391319

`A227177(A051162(A222060(n)²))`
-/

namespace A137176.P5434098266190391319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A051162 (A222060 n ^ 2).toNat).toNat

end

end A137176.P5434098266190391319

/-! ## A137176.P15557112632464338747

`A287272(A340556(n))+A002262(n)`
-/

namespace A137176.P15557112632464338747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A340556 n).toNat + A002262 n

end

end A137176.P15557112632464338747

/-! ## A137176.P4730020424586231564

`A287272(A340556(n))+A163351(n)`
-/

namespace A137176.P4730020424586231564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A340556 n).toNat + A163351 n

end

end A137176.P4730020424586231564

/-! ## A137176.P4550557647487820011

`A287272(A340556(n))+A166352(n)`
-/

namespace A137176.P4550557647487820011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A340556 n).toNat + A166352 n

end

end A137176.P4550557647487820011

/-! ## A137176.P4936066552724989033

`A287272(A340556(n))+A001222(A059268(n))`
-/

namespace A137176.P4936066552724989033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A340556 n).toNat + A001222 (A059268 n).toNat

end

end A137176.P4936066552724989033

/-!
# A137178: a(n) = sum_(1..n) [S2(n)mod 2 - floor(5*S2(n)/7)mod 2], where S2(n) = binary weight of n.

The programs for A137178, there is no canonical definition to state claims against.
-/

/-! ## A137178.P6318248945168580511

`∑[A378972(A000120(n))]`
-/

namespace A137178.P6318248945168580511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378972 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137178.P6318248945168580511

/-! ## A137178.P5802600510607509671

`abs(∑[A187097(A001316(n))])`
-/

namespace A137178.P5802600510607509671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187097 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A137178.P5802600510607509671

/-! ## A137178.P11371975536762875566

`∑[A378972(∑[A088705(n)])]`
-/

namespace A137178.P11371975536762875566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378972 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137178.P11371975536762875566

/-! ## A137178.P5773320804621651700

`∑[A008683(A093659(n))]-1`
-/

namespace A137178.P5773320804621651700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137178.P5773320804621651700

/-! ## A137178.P8740832280605189957

`∑[A115360(A000120(n)+5)]`
-/

namespace A137178.P8740832280605189957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (A000120 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137178.P8740832280605189957

/-! ## A137178.P3903015297309427807

`∑[A378972(val(A246037(n), 2))]`
-/

namespace A137178.P3903015297309427807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378972 (SequenceMachineLib.valuation (A246037 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137178.P3903015297309427807

/-! ## A137178.P7548896093628484381

`∑[A008683(A000120(n)!)]-1`
-/

namespace A137178.P7548896093628484381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A000120 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137178.P7548896093628484381

/-! ## A137178.P16507750888315375807

`∑[A008683(∑{e}[A001316(n), #]!)]-1`
-/

namespace A137178.P16507750888315375807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137178.P16507750888315375807

/-! ## A137178.P15801874492061232176

`A023443(∑[A008683(A093659(n))])`
-/

namespace A137178.P15801874492061232176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A093659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137178.P15801874492061232176

/-! ## A137178.P4875541873668228092

`∑[A015329(A102376(n))]`
-/

namespace A137178.P4875541873668228092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A102376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137178.P4875541873668228092

/-!
# A137179: a(n) = the smallest positive integer m such that d(m) + d(m+1) = n, where d(m) is the number of positive divisors of m. (a(n) is the smallest m where A092405(m) = n.)

The programs for A137179, there is no canonical definition to state claims against.
-/

/-! ## A137179.P17001069873137315094

`A175427(A175143(n+1)+1)`
-/

namespace A137179.P17001069873137315094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A175143 (n + 1) + 1).toNat

end

end A137179.P17001069873137315094

/-! ## A137179.P11646951845059285953

`A226130(A001006(n))+comp[2*n+3]`
-/

namespace A137179.P11646951845059285953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (A001006 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A137179.P11646951845059285953

/-! ## A137179.P2758240515012052087

`A351719(n+1)-A267358(A000108(n))`
-/

namespace A137179.P2758240515012052087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1) - A267358 (A000108 n).toNat

end

end A137179.P2758240515012052087

/-! ## A137179.P2108977020075272004

`A351719(n+1)-A286746(A022917(n))`
-/

namespace A137179.P2108977020075272004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1) - A286746 (A022917 n).toNat

end

end A137179.P2108977020075272004

/-! ## A137179.P14630638555167934160

`A351719(n+1)-A117929(A140864(n+1))`
-/

namespace A137179.P14630638555167934160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1) - A117929 (A140864 (n + 1)).toNat

end

end A137179.P14630638555167934160

/-!
# A137180: Number of palindromes in the range [1,n] inclusive.

The programs for A137180, there is no canonical definition to state claims against.
-/

/-! ## A137180.P9009157084453984634

`A136687(n)-1`
-/

namespace A137180.P9009157084453984634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 n - 1

end

end A137180.P9009157084453984634

/-! ## A137180.P7197051567775929105

`∑[A136522(n)]-1`
-/

namespace A137180.P7197051567775929105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137180.P7197051567775929105

/-! ## A137180.P13817611464314074524

`∑[char[A077526(n+1)]]`
-/

namespace A137180.P13817611464314074524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077526 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P13817611464314074524

/-! ## A137180.P16242944499167943142

`∑[char[A261423(n+1)]]`
-/

namespace A137180.P16242944499167943142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P16242944499167943142

/-! ## A137180.P9662820097648332453

`∑[char[A262038(n+1)]]`
-/

namespace A137180.P9662820097648332453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P9662820097648332453

/-! ## A137180.P17007240423153108520

`∑[char[A002113(n+2)]]`
-/

namespace A137180.P17007240423153108520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P17007240423153108520

/-! ## A137180.P5304046079714921046

`∑[char[A261423(n)]]-1`
-/

namespace A137180.P5304046079714921046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P5304046079714921046

/-! ## A137180.P16907481094009777222

`∑[char[A261914(n)]]-1`
-/

namespace A137180.P16907481094009777222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P16907481094009777222

/-! ## A137180.P11536267439217388281

`∑[char[A262038(n)]]-1`
-/

namespace A137180.P11536267439217388281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P11536267439217388281

/-! ## A137180.P17926502924008932579

`∑[char[A330420(n)]]-1`
-/

namespace A137180.P17926502924008932579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330420 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P17926502924008932579

/-! ## A137180.P4136292289169431345

`∑[char[A056544(n+1)]]`
-/

namespace A137180.P4136292289169431345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P4136292289169431345

/-! ## A137180.P16561237343514639608

`∑[char[A082216(n+1)]]`
-/

namespace A137180.P16561237343514639608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P16561237343514639608

/-! ## A137180.P14356520395908552976

`∑[char[A020485(n)]]-1`
-/

namespace A137180.P14356520395908552976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P14356520395908552976

/-! ## A137180.P2159253545712029101

`∑[char[A082216(n)]]-1`
-/

namespace A137180.P2159253545712029101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P2159253545712029101

/-! ## A137180.P12646962667169176181

`∑[char[A262188(n)]]-1`
-/

namespace A137180.P12646962667169176181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P12646962667169176181

/-! ## A137180.P12548336034096714982

`∑[char[A047813(n+1)]]`
-/

namespace A137180.P12548336034096714982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137180.P12548336034096714982

/-! ## A137180.P14677975724954585531

`∑[char[A047813(n)]]-1`
-/

namespace A137180.P14677975724954585531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P14677975724954585531

/-! ## A137180.P16880531155047841533

`∑[char[A262087(n)]]-1`
-/

namespace A137180.P16880531155047841533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P16880531155047841533

/-! ## A137180.P4835115162719523239

`∑[char[A265525(n)]]-1`
-/

namespace A137180.P4835115162719523239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A137180.P4835115162719523239

/-! ## A137180.P14785646776191922295

`A070198(n)%A136687(n)`
-/

namespace A137180.P14785646776191922295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A136687 n)

end

end A137180.P14785646776191922295

/-!
# A137181: Maximal number of symbols in terms generated by an inefficient set of rewrite rules for flattening combinator expressions of initial size n.

The programs for A137181, there is no canonical definition to state claims against.
-/

/-! ## A137181.P6628817619377823061

`2^a(n-3)+2*a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`
-/

namespace A137181.P6628817619377823061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32] fun n a =>
  2 ^ a (n - 3) + 2 * a (n - 3) + 1

end

end A137181.P6628817619377823061

/-! ## A137181.P5696530953784165460

`record[gcd(A172437(n+1), A295679(n+3))]`
-/

namespace A137181.P5696530953784165460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172437 (n + 1)) (A295679 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137181.P5696530953784165460

/-!
# A137182: Lucky numbers (A000959) which are congruent to 0 mod 7.

The programs for A137182, there is no canonical definition to state claims against.
-/

/-! ## A137182.P15144439675366702968

`A000959(eq[0, A000959(n+1)%7]+1)`
-/

namespace A137182.P15144439675366702968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137182.P15144439675366702968

/-! ## A137182.P5317150721975524242

`∩[A000959(n+1), 7*n]`
-/

namespace A137182.P5317150721975524242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A137182.P5317150721975524242

/-! ## A137182.P16506814686910055156

`∩[A147587(n), A000959(n+1)]`
-/

namespace A137182.P16506814686910055156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137182.P16506814686910055156

/-! ## A137182.P14229792003491952828

`∩[A154609(n)+2+n, A000959(n+1)]`
-/

namespace A137182.P14229792003491952828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n + 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137182.P14229792003491952828

/-! ## A137182.P18224601127661627963

`filter[A147587(n), A145649(#)]`
-/

namespace A137182.P18224601127661627963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P18224601127661627963

/-! ## A137182.P7001594489501108742

`filter[A147601(n), A145649(#)]`
-/

namespace A137182.P7001594489501108742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P7001594489501108742

/-! ## A137182.P9636967095054214561

`filter[A008589(n+1), A145649(#)]`
-/

namespace A137182.P9636967095054214561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P9636967095054214561

/-! ## A137182.P3813394179422310849

`∩[A008589(n), A000959(n+1)]`
-/

namespace A137182.P3813394179422310849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137182.P3813394179422310849

/-! ## A137182.P4751033241328021087

`∩[A016921(n+1)+n, A000959(n+2)]`
-/

namespace A137182.P4751033241328021087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137182.P4751033241328021087

/-! ## A137182.P10409287795006904239

`lt[(n+1)%7, A145649(n+1)]+1`
-/

namespace A137182.P10409287795006904239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137182.P10409287795006904239

/-! ## A137182.P18247092710642924557

`filter[A168374(2*(n+1)), A145649(#)]`
-/

namespace A137182.P18247092710642924557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P18247092710642924557

/-! ## A137182.P15755405127252350015

`filter[A047359(2*(n+1)), A145649(#)]`
-/

namespace A137182.P15755405127252350015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047359 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P15755405127252350015

/-! ## A137182.P4643385182689181856

`filter[A047375(2*(n+1)), A145649(#)]`
-/

namespace A137182.P4643385182689181856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047375 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P4643385182689181856

/-! ## A137182.P15683572365371574416

`filter[A047386(2*(n+1)), A145649(#)]`
-/

namespace A137182.P15683572365371574416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137182.P15683572365371574416

/-! ## A137182.P3749780793300593125

`filter[A000959(n+1), A082784(#)]`
-/

namespace A137182.P3749780793300593125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A137182.P3749780793300593125

/-! ## A137182.P2972123325510782183

`A147587(eq[0, A265859(A147587(n))])`
-/

namespace A137182.P2972123325510782183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (A147587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137182.P2972123325510782183

/-!
# A137183: Lucky numbers (A000959) which are congruent to 1 mod 7.

The programs for A137183, there is no canonical definition to state claims against.
-/

/-! ## A137183.P14487983566484768135

`∩[14*n+1, A000959(n+1)]`
-/

namespace A137183.P14487983566484768135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P14487983566484768135

/-! ## A137183.P12369805196099492437

`A000959(eq[1, A000959(n+1)%7]+1)`
-/

namespace A137183.P12369805196099492437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137183.P12369805196099492437

/-! ## A137183.P869267917510150676

`∩[A000959(n+1), A131877(n)]`
-/

namespace A137183.P869267917510150676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P869267917510150676

/-! ## A137183.P7617835840156292377

`filter[A131877(n), A145649(#)]`
-/

namespace A137183.P7617835840156292377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P7617835840156292377

/-! ## A137183.P1783531900683170394

`filter[A016993(n), A145649(#)]`
-/

namespace A137183.P1783531900683170394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P1783531900683170394

/-! ## A137183.P4297171399725687185

`filter[A026474(n+1), A145649(#)]`
-/

namespace A137183.P4297171399725687185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P4297171399725687185

/-! ## A137183.P7761677251079033513

`∩[A000959(n+1), A016993(n)]`
-/

namespace A137183.P7761677251079033513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P7761677251079033513

/-! ## A137183.P5592654345149115616

`filter[A113801(2*n+1), A145649(#)]`
-/

namespace A137183.P5592654345149115616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P5592654345149115616

/-! ## A137183.P17771119395222967210

`∩[A000959(n+1), A008589(n)+1]`
-/

namespace A137183.P17771119395222967210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P17771119395222967210

/-! ## A137183.P14766105078837842027

`∩[A000959(n+1), A026474(n+1)]`
-/

namespace A137183.P14766105078837842027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P14766105078837842027

/-! ## A137183.P8020144154736858221

`∩[A000959(n+1), A017005(n)-1]`
-/

namespace A137183.P8020144154736858221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P8020144154736858221

/-! ## A137183.P17575810401277609186

`∩[A000959(n+1), A017017(n)-2]`
-/

namespace A137183.P17575810401277609186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P17575810401277609186

/-! ## A137183.P16911938066823602565

`∩[A000959(n+1), A016921(n)+n]`
-/

namespace A137183.P16911938066823602565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P16911938066823602565

/-! ## A137183.P6921579991825404126

`∩[A000959(n+1), A017077(n)-n]`
-/

namespace A137183.P6921579991825404126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P6921579991825404126

/-! ## A137183.P1738479720398442449

`∩[A000959(n+1), A306278(n+1)-1]`
-/

namespace A137183.P1738479720398442449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137183.P1738479720398442449

/-! ## A137183.P723880927578931635

`filter[A151971(2*(n+1)), A145649(#)]`
-/

namespace A137183.P723880927578931635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151971 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P723880927578931635

/-! ## A137183.P14298529370000226954

`lt[n%7, A145649(n+1)]+1`
-/

namespace A137183.P14298529370000226954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137183.P14298529370000226954

/-! ## A137183.P11531599012948306843

`filter[A047336(2*n+1), A145649(#)]`
-/

namespace A137183.P11531599012948306843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P11531599012948306843

/-! ## A137183.P8373739719345568822

`filter[A047346(2*n+1), A145649(#)]`
-/

namespace A137183.P8373739719345568822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P8373739719345568822

/-! ## A137183.P734293725185938995

`filter[A047353(2*n+1), A145649(#)]`
-/

namespace A137183.P734293725185938995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137183.P734293725185938995

/-!
# A137184: Lucky numbers (A000959) which are congruent to 2 mod 7.

The programs for A137184, there is no canonical definition to state claims against.
-/

/-! ## A137184.P11443091803707662170

`A000959(eq[2, A000959(n+1)%7]+1)`
-/

namespace A137184.P11443091803707662170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A137184.P11443091803707662170

/-! ## A137184.P6188499096757395181

`∩[7*n+2, A000959(n+2)]`
-/

namespace A137184.P6188499096757395181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P6188499096757395181

/-! ## A137184.P15409597477124375268

`∩[A000959(n+1), A147587(n)+2]`
-/

namespace A137184.P15409597477124375268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P15409597477124375268

/-! ## A137184.P1273830549539237285

`filter[A017005(n), A145649(#)]`
-/

namespace A137184.P1273830549539237285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P1273830549539237285

/-! ## A137184.P17068695198499247683

`filter[A026476(n+3), A145649(#)]`
-/

namespace A137184.P17068695198499247683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P17068695198499247683

/-! ## A137184.P2120360034037335035

`∩[A000959(n+1), A017005(n)]`
-/

namespace A137184.P2120360034037335035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P2120360034037335035

/-! ## A137184.P18331052227063806536

`filter[A063094(2*(n+1)), A145649(#)]`
-/

namespace A137184.P18331052227063806536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P18331052227063806536

/-! ## A137184.P230953405912652329

`filter[A113805(2*(n+1)), A145649(#)]`
-/

namespace A137184.P230953405912652329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P230953405912652329

/-! ## A137184.P17305855542079178120

`∩[A000959(n+1), A016993(n)+1]`
-/

namespace A137184.P17305855542079178120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P17305855542079178120

/-! ## A137184.P14524348023807477559

`∩[A000959(n+1), A008589(n)+2]`
-/

namespace A137184.P14524348023807477559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P14524348023807477559

/-! ## A137184.P18184583202061942773

`∩[A000959(n+1), A017017(n)-1]`
-/

namespace A137184.P18184583202061942773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P18184583202061942773

/-! ## A137184.P4205674258821578790

`∩[A000959(n+1), A017029(n)-2]`
-/

namespace A137184.P4205674258821578790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P4205674258821578790

/-! ## A137184.P7050772526696811876

`∩[A000959(n+1), A306278(n+1)-2]`
-/

namespace A137184.P7050772526696811876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P7050772526696811876

/-! ## A137184.P11891252438315724285

`A017005(eq[1, A145649(A017005(n))])`
-/

namespace A137184.P11891252438315724285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A017005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137184.P11891252438315724285

/-! ## A137184.P11814735662507434162

`∩[A000959(n+1), A182341(n+1)+2]`
-/

namespace A137184.P11814735662507434162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182341 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137184.P11814735662507434162

/-! ## A137184.P5578886018165712696

`lt[(n+6)%7, A145649(n+1)]+1`
-/

namespace A137184.P5578886018165712696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137184.P5578886018165712696

/-! ## A137184.P12298547613498195990

`filter[A047276(2*n+1), A145649(#)]`
-/

namespace A137184.P12298547613498195990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P12298547613498195990

/-! ## A137184.P11913609787442609293

`filter[A047348(2*n+1), A145649(#)]`
-/

namespace A137184.P11913609787442609293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P11913609787442609293

/-! ## A137184.P14617005744257141524

`filter[A047358(2*n+1), A145649(#)]`
-/

namespace A137184.P14617005744257141524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P14617005744257141524

/-! ## A137184.P6189263876108110747

`filter[A047385(2*n+1), A145649(#)]`
-/

namespace A137184.P6189263876108110747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137184.P6189263876108110747

/-!
# A137185: Lucky numbers (A000959) which are congruent to 3 mod 7.

The programs for A137185, there is no canonical definition to state claims against.
-/

/-! ## A137185.P17973892230013220850

`∩[7*n+3, A000959(n+2)]`
-/

namespace A137185.P17973892230013220850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P17973892230013220850

/-! ## A137185.P12161825016120510739

`∩[A000959(n+1), A131877(n)+2]`
-/

namespace A137185.P12161825016120510739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P12161825016120510739

/-! ## A137185.P9051187616388332088

`filter[A017017(n), A145649(#)]`
-/

namespace A137185.P9051187616388332088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P9051187616388332088

/-! ## A137185.P3814693694568549826

`∩[A000959(n+1), A017017(n)]`
-/

namespace A137185.P3814693694568549826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P3814693694568549826

/-! ## A137185.P9779615273862618277

`filter[A113803(2*n+1), A145649(#)]`
-/

namespace A137185.P9779615273862618277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P9779615273862618277

/-! ## A137185.P2100245063938935137

`∩[A000959(n+1), A017005(n)+1]`
-/

namespace A137185.P2100245063938935137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P2100245063938935137

/-! ## A137185.P9156612608041963553

`∩[A000959(n+1), A016993(n)+2]`
-/

namespace A137185.P9156612608041963553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P9156612608041963553

/-! ## A137185.P13380450626228656418

`∩[A000959(n+1), A017029(n)-1]`
-/

namespace A137185.P13380450626228656418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P13380450626228656418

/-! ## A137185.P2155903901326995814

`∩[A000959(n+1), A017041(n)-2]`
-/

namespace A137185.P2155903901326995814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P2155903901326995814

/-! ## A137185.P11042380497234854355

`∩[A000959(n+1), A016945(n)+n]`
-/

namespace A137185.P11042380497234854355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P11042380497234854355

/-! ## A137185.P11010859502807794191

`∩[A000959(n+1), A017101(n)-n]`
-/

namespace A137185.P11010859502807794191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P11010859502807794191

/-! ## A137185.P4184505000809009947

`∩[A000959(n+1), A306278(n+1)+1]`
-/

namespace A137185.P4184505000809009947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P4184505000809009947

/-! ## A137185.P4461046711393886023

`∩[A000959(n+1), A026474(n+1)+2]`
-/

namespace A137185.P4461046711393886023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P4461046711393886023

/-! ## A137185.P561054730369651372

`∩[A000959(n+1), A326663(n+1)-2]`
-/

namespace A137185.P561054730369651372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326663 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137185.P561054730369651372

/-! ## A137185.P4253112336355453542

`lt[(3*n+1)%7, A145649(n+1)]+1`
-/

namespace A137185.P4253112336355453542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137185.P4253112336355453542

/-! ## A137185.P1631289542839024881

`filter[A047280(2*n+1), A145649(#)]`
-/

namespace A137185.P1631289542839024881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P1631289542839024881

/-! ## A137185.P7093034621362088649

`filter[A047341(2*n+1), A145649(#)]`
-/

namespace A137185.P7093034621362088649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P7093034621362088649

/-! ## A137185.P16850852388510942256

`filter[A047389(2*n+1), A145649(#)]`
-/

namespace A137185.P16850852388510942256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P16850852388510942256

/-! ## A137185.P7468750095745055523

`filter[A168331(2*n+1), A145649(#)]`
-/

namespace A137185.P7468750095745055523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P7468750095745055523

/-! ## A137185.P17835755614621373913

`filter[A168376(2*n+1), A145649(#)]`
-/

namespace A137185.P17835755614621373913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168376 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137185.P17835755614621373913

/-!
# A137186: Lucky numbers (A000959) which are congruent to 4 mod 7.

The programs for A137186, there is no canonical definition to state claims against.
-/

/-! ## A137186.P16822299514714802357

`∩[7*n+11, A000959(n+2)]`
-/

namespace A137186.P16822299514714802357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P16822299514714802357

/-! ## A137186.P11821375522566766433

`∩[A000959(n+1), A358053(n+1)-2]`
-/

namespace A137186.P11821375522566766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P11821375522566766433

/-! ## A137186.P15820876962616957152

`filter[A017029(n), A145649(#)]`
-/

namespace A137186.P15820876962616957152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P15820876962616957152

/-! ## A137186.P1473900293101170899

`filter[A306278(n+3), A145649(#)]`
-/

namespace A137186.P1473900293101170899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P1473900293101170899

/-! ## A137186.P12888182297836157520

`∩[A000959(n+1), A017029(n)]`
-/

namespace A137186.P12888182297836157520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P12888182297836157520

/-! ## A137186.P18221825931284116047

`∩[A137165(n+1), A017029(n)]`
-/

namespace A137186.P18221825931284116047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P18221825931284116047

/-! ## A137186.P784523391852361080

`filter[A063237(2*(n+1)), A145649(#)]`
-/

namespace A137186.P784523391852361080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P784523391852361080

/-! ## A137186.P6622165973626222542

`filter[A113803(2*(n+1)), A145649(#)]`
-/

namespace A137186.P6622165973626222542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P6622165973626222542

/-! ## A137186.P3239413993133369626

`∩[A000959(n+1), A017017(n)+1]`
-/

namespace A137186.P3239413993133369626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P3239413993133369626

/-! ## A137186.P9995404005449799985

`∩[A000959(n+1), A306278(n+1)]`
-/

namespace A137186.P9995404005449799985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P9995404005449799985

/-! ## A137186.P13075053648542220645

`∩[A137165(n+1), A306278(n+1)]`
-/

namespace A137186.P13075053648542220645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P13075053648542220645

/-! ## A137186.P13262522257761336986

`∩[A000959(n+1), A017005(n)+2]`
-/

namespace A137186.P13262522257761336986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P13262522257761336986

/-! ## A137186.P14079188768654720568

`∩[A000959(n+1), A017041(n)-1]`
-/

namespace A137186.P14079188768654720568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P14079188768654720568

/-! ## A137186.P14121535938720860556

`∩[A000959(n+1), A017053(n)-2]`
-/

namespace A137186.P14121535938720860556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P14121535938720860556

/-! ## A137186.P17267904932639646513

`∩[A000959(n+1), A326663(n+1)-1]`
-/

namespace A137186.P17267904932639646513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326663 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P17267904932639646513

/-! ## A137186.P7013278635007976383

`filter[A168212(3*n+1), A145649(#)]`
-/

namespace A137186.P7013278635007976383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P7013278635007976383

/-! ## A137186.P957351659181029279

`filter[A168373(3*n+1), A145649(#)]`
-/

namespace A137186.P957351659181029279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168373 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P957351659181029279

/-! ## A137186.P9241726343405720470

`∩[A047374(n+1), A137165(n+1)]`
-/

namespace A137186.P9241726343405720470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137186.P9241726343405720470

/-! ## A137186.P15188517206555376228

`filter[A315671(2*n+1), A145649(#)]`
-/

namespace A137186.P15188517206555376228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137186.P15188517206555376228

/-!
# A137187: Lucky numbers (A000959) which are congruent to 5 mod 7.

The programs for A137187, there is no canonical definition to state claims against.
-/

/-! ## A137187.P18154141921589532454

`∩[A000959(n+1), 7*n+5]`
-/

namespace A137187.P18154141921589532454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A137187.P18154141921589532454

/-! ## A137187.P16650294048279732564

`∩[A147587(n)+12, A000959(n+2)]`
-/

namespace A137187.P16650294048279732564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P16650294048279732564

/-! ## A137187.P12918161078863201992

`filter[A019430(2*n+1), A145649(#)]`
-/

namespace A137187.P12918161078863201992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P12918161078863201992

/-! ## A137187.P16584081690927719718

`filter[A017041(n), A145649(#)]`
-/

namespace A137187.P16584081690927719718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P16584081690927719718

/-! ## A137187.P12025925298358172043

`∩[A031879(n+1), A017041(n)]`
-/

namespace A137187.P12025925298358172043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P12025925298358172043

/-! ## A137187.P6486077784838919576

`∩[A137164(n+1), A017041(n)]`
-/

namespace A137187.P6486077784838919576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P6486077784838919576

/-! ## A137187.P15838456608889445501

`filter[A113805(2*n+1), A145649(#)]`
-/

namespace A137187.P15838456608889445501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P15838456608889445501

/-! ## A137187.P9046252368075585777

`filter[A326663(2*n+1), A145649(#)]`
-/

namespace A137187.P9046252368075585777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P9046252368075585777

/-! ## A137187.P4945176591099081091

`∩[A116728(n+1), A137164(n+1)]`
-/

namespace A137187.P4945176591099081091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P4945176591099081091

/-! ## A137187.P17289647065247571500

`∩[A031879(n+1), A326663(n+1)]`
-/

namespace A137187.P17289647065247571500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P17289647065247571500

/-! ## A137187.P10826020462346147313

`∩[A137164(n+1), A326663(n+1)]`
-/

namespace A137187.P10826020462346147313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P10826020462346147313

/-! ## A137187.P10221918016663367685

`∩[A017041(2*n), A000959(n+2)]`
-/

namespace A137187.P10221918016663367685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P10221918016663367685

/-! ## A137187.P2209899568074465146

`filter[A047385(3*n+1), A145649(#)]`
-/

namespace A137187.P2209899568074465146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P2209899568074465146

/-! ## A137187.P17114218971974742905

`filter[A168336(3*n+1), A145649(#)]`
-/

namespace A137187.P17114218971974742905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168336 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137187.P17114218971974742905

/-! ## A137187.P17012042704191831619

`∩[A047374(n+1), A137164(n+1)]`
-/

namespace A137187.P17012042704191831619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P17012042704191831619

/-! ## A137187.P6414031930211219444

`∩[A137164(n+1), A310763(n)]`
-/

namespace A137187.P6414031930211219444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137187.P6414031930211219444

/-!
# A137188: Lucky numbers (A000959) which are congruent to 6 mod 7.

The programs for A137188, there is no canonical definition to state claims against.
-/

/-! ## A137188.P14817198291634147190

`∩[8*n+6-n, A000959(n+2)]`
-/

namespace A137188.P14817198291634147190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P14817198291634147190

/-! ## A137188.P4958071388889095702

`∩[A000959(n+1), A358053(n+1)]`
-/

namespace A137188.P4958071388889095702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P4958071388889095702

/-! ## A137188.P4735529783648619997

`∩[A000959(n+1), A131877(n)-2]`
-/

namespace A137188.P4735529783648619997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P4735529783648619997

/-! ## A137188.P13604841404973177591

`filter[A358053(n+1), A145649(#)]`
-/

namespace A137188.P13604841404973177591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P13604841404973177591

/-! ## A137188.P7576165587667735203

`filter[A017053(n), A145649(#)]`
-/

namespace A137188.P7576165587667735203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P7576165587667735203

/-! ## A137188.P1972302485665908104

`∩[A000959(n+1), A017053(n)]`
-/

namespace A137188.P1972302485665908104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P1972302485665908104

/-! ## A137188.P7898451434288507416

`filter[A113801(2*(n+1)), A145649(#)]`
-/

namespace A137188.P7898451434288507416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P7898451434288507416

/-! ## A137188.P1001398202919686918

`∩[A000959(n+1), A017041(n)+1]`
-/

namespace A137188.P1001398202919686918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P1001398202919686918

/-! ## A137188.P9457159763208153289

`∩[A000959(n+1), A017029(n)+2]`
-/

namespace A137188.P9457159763208153289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P9457159763208153289

/-! ## A137188.P15838521469410947069

`∩[A000959(n+1), A306278(n+1)+2]`
-/

namespace A137188.P15838521469410947069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P15838521469410947069

/-! ## A137188.P18298568062053264403

`∩[A000959(n+2), A004770(n+2)-n]`
-/

namespace A137188.P18298568062053264403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P18298568062053264403

/-! ## A137188.P12809591800084799860

`A017053(eq[1, A145649(A017053(n))])`
-/

namespace A137188.P12809591800084799860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A017053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137188.P12809591800084799860

/-! ## A137188.P1146610931310160235

`∩[A000959(n+1), A008589(n)-1]`
-/

namespace A137188.P1146610931310160235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P1146610931310160235

/-! ## A137188.P10175860511402222755

`∩[A000959(n+1), A016993(n)-2]`
-/

namespace A137188.P10175860511402222755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P10175860511402222755

/-! ## A137188.P6804095515495345967

`∩[A000959(n+1), A026474(n+1)-2]`
-/

namespace A137188.P6804095515495345967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137188.P6804095515495345967

/-! ## A137188.P16270196140892162671

`lt[(n+2)%7, A145649(n+1)]+1`
-/

namespace A137188.P16270196140892162671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137188.P16270196140892162671

/-! ## A137188.P6086808852589362009

`filter[A047276(2*(n+1)), A145649(#)]`
-/

namespace A137188.P6086808852589362009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P6086808852589362009

/-! ## A137188.P15064845533819539250

`filter[A047280(2*(n+1)), A145649(#)]`
-/

namespace A137188.P15064845533819539250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P15064845533819539250

/-! ## A137188.P6348204196923437182

`filter[A168332(2*n+1), A145649(#)]`
-/

namespace A137188.P6348204196923437182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137188.P6348204196923437182

/-!
# A137189: Numbers n such that no odd Fibonacci is divisible by n and n is not a multiple of another number in this sequence.

The programs for A137189, there is no canonical definition to state claims against.
-/

/-! ## A137189.P15767124974163199905

`∪[p?[13*n+3]², A133247(n+1)]`
-/

namespace A137189.P15767124974163199905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A137189.P15767124974163199905

/-! ## A137189.P14779024787375555238

`∪[A004809(n+1), A133247(n+1)]`
-/

namespace A137189.P14779024787375555238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P14779024787375555238

/-! ## A137189.P2194914684143973096

`∪[A004820(n+1), A133247(n+1)]`
-/

namespace A137189.P2194914684143973096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P2194914684143973096

/-! ## A137189.P2389638259356477488

`∪[A020261(n+1), A133247(n+1)]`
-/

namespace A137189.P2389638259356477488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P2389638259356477488

/-! ## A137189.P3044363255628959829

`∪[A045793(n+1), A133247(n+1)]`
-/

namespace A137189.P3044363255628959829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P3044363255628959829

/-! ## A137189.P3770221470263973490

`∪[A133247(n+1), A159775(n+1)]`
-/

namespace A137189.P3770221470263973490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P3770221470263973490

/-! ## A137189.P3385942134441486470

`∪[A133247(n+1), A238120(n+1)]`
-/

namespace A137189.P3385942134441486470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P3385942134441486470

/-! ## A137189.P7416833831354485650

`∪[A133247(n+1), A054344(n+2)]`
-/

namespace A137189.P7416833831354485650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137189.P7416833831354485650

/-!
# A137190: Lucky numbers (A000959) which are congruent to 1 mod 8.

The programs for A137190, there is no canonical definition to state claims against.
-/

/-! ## A137190.P13055203719377024109

`record[A000959(n+1)/A000959(n+1)%8]`
-/

namespace A137190.P13055203719377024109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) / (Int.tmod (A000959 (n + 1)) 8 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137190.P13055203719377024109

/-! ## A137190.P16445270582706207429

`filter[A017077(n), A145649(#)]`
-/

namespace A137190.P16445270582706207429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P16445270582706207429

/-! ## A137190.P6474846281255136046

`∩[A000959(n+1), A017077(n)]`
-/

namespace A137190.P6474846281255136046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P6474846281255136046

/-! ## A137190.P7939087606139519495

`∩[A137168(n+1), A017077(n)]`
-/

namespace A137190.P7939087606139519495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P7939087606139519495

/-! ## A137190.P4305329539501640079

`∩[A000959(n+1), A017101(n)-2]`
-/

namespace A137190.P4305329539501640079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P4305329539501640079

/-! ## A137190.P18162337799674038962

`∩[A000959(n+1), A016993(n)+n]`
-/

namespace A137190.P18162337799674038962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P18162337799674038962

/-! ## A137190.P2572724648564381202

`filter[A234000(n+1), A145649(#)]`
-/

namespace A137190.P2572724648564381202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P2572724648564381202

/-! ## A137190.P6055135079961301215

`filter[A151973(n+2), A145649(#)]`
-/

namespace A137190.P6055135079961301215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P6055135079961301215

/-! ## A137190.P6095533500514290723

`∩[A000959(n+1), A151973(n+1)]`
-/

namespace A137190.P6095533500514290723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P6095533500514290723

/-! ## A137190.P11738498603164746922

`∩[A000959(n+1), A234000(n+1)]`
-/

namespace A137190.P11738498603164746922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P11738498603164746922

/-! ## A137190.P11182467019074267678

`∩[A137168(n+1), A151973(n+1)]`
-/

namespace A137190.P11182467019074267678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P11182467019074267678

/-! ## A137190.P6309539501864763811

`∩[A137168(n+1), A234000(n+1)]`
-/

namespace A137190.P6309539501864763811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P6309539501864763811

/-! ## A137190.P17135139710175658150

`∩[A000959(n+1), A055046(n+1)-2]`
-/

namespace A137190.P17135139710175658150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P17135139710175658150

/-! ## A137190.P9066635917296913522

`∩[A000959(n+1), A143029(n+1)-2]`
-/

namespace A137190.P9066635917296913522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143029 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P9066635917296913522

/-! ## A137190.P15556368600979940692

`filter[A233457(n+2), A145649(#)]`
-/

namespace A137190.P15556368600979940692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P15556368600979940692

/-! ## A137190.P560143312748438213

`∩[A000959(n+1), A233457(n+1)]`
-/

namespace A137190.P560143312748438213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P560143312748438213

/-! ## A137190.P6732242076928187188

`∩[A137168(n+1), A233457(n+1)]`
-/

namespace A137190.P6732242076928187188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137190.P6732242076928187188

/-! ## A137190.P8136903067920654648

`filter[A047452(n+1), A145649(#)]`
-/

namespace A137190.P8136903067920654648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P8136903067920654648

/-! ## A137190.P3728608043003519314

`filter[A047461(n+1), A145649(#)]`
-/

namespace A137190.P3728608043003519314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P3728608043003519314

/-! ## A137190.P11870054836635190351

`filter[A047468(n+1), A145649(#)]`
-/

namespace A137190.P11870054836635190351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137190.P11870054836635190351

/-!
# A137191: Number of n-celled polyiamonds with perimeter < n+2.

The programs for A137191, there is no canonical definition to state claims against.
-/

/-! ## A137191.P1439980696886595869

`A000577(n+1)-A131481(n+1)`
-/

namespace A137191.P1439980696886595869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A131481 (n + 1)

end

end A137191.P1439980696886595869

/-! ## A137191.P17483242557143549819

`A000577(A000027(n+1))%A131481(n+1)`
-/

namespace A137191.P17483242557143549819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (A000027 (n + 1)).toNat) (A131481 (n + 1))

end

end A137191.P17483242557143549819

/-! ## A137191.P8976304985267116918

`A000577(n+1)%A131481(A028310(n+1))`
-/

namespace A137191.P8976304985267116918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (n + 1)) (A131481 (A028310 (n + 1)).toNat)

end

end A137191.P8976304985267116918

/-! ## A137191.P7815358725281308263

`A000577(A023443(n+2))%A131481(n+1)`
-/

namespace A137191.P7815358725281308263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (A023443 (n + 2)).toNat) (A131481 (n + 1))

end

end A137191.P7815358725281308263

/-! ## A137191.P9797020463481997064

`A000577(A032742(2*(n+1)))%A131481(n+1)`
-/

namespace A137191.P9797020463481997064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (A032742 (2 * (n + 1))).toNat) (A131481 (n + 1))

end

end A137191.P9797020463481997064

/-!
# A137192: Lucky numbers (A000959) which are congruent to 3 mod 8.

The programs for A137192, there is no canonical definition to state claims against.
-/

/-! ## A137192.P16198593172579631310

`∩[A000959(n+1), 8*n+3]`
-/

namespace A137192.P16198593172579631310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A137192.P16198593172579631310

/-! ## A137192.P12970759243979891548

`filter[A017101(n), A145649(#)]`
-/

namespace A137192.P12970759243979891548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P12970759243979891548

/-! ## A137192.P15438084624913090904

`∩[A137170(n+1), A017101(n)]`
-/

namespace A137192.P15438084624913090904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137192.P15438084624913090904

/-! ## A137192.P6186340774565967371

`A017101(eq[1, A145649(A017101(n))])`
-/

namespace A137192.P6186340774565967371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137192.P6186340774565967371

/-! ## A137192.P6588347625707970259

`filter[A137170(n+1), A073089(#)]`
-/

namespace A137192.P6588347625707970259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A137192.P6588347625707970259

/-! ## A137192.P8869409133595456679

`filter[A055046(n+1), A145649(#)]`
-/

namespace A137192.P8869409133595456679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P8869409133595456679

/-! ## A137192.P6920741491651183015

`∩[A055046(n+1), A137170(n+1)]`
-/

namespace A137192.P6920741491651183015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137192.P6920741491651183015

/-! ## A137192.P1447660298708515356

`filter[A143029(n+1), A145649(#)]`
-/

namespace A137192.P1447660298708515356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P1447660298708515356

/-! ## A137192.P13865884872102211838

`∩[A137170(n+1), A143029(n+1)]`
-/

namespace A137192.P13865884872102211838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137192.P13865884872102211838

/-! ## A137192.P11969466591038218185

`filter[A047398(n+1), A145649(#)]`
-/

namespace A137192.P11969466591038218185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P11969466591038218185

/-! ## A137192.P2782835191602915871

`filter[A047457(n+1), A145649(#)]`
-/

namespace A137192.P2782835191602915871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P2782835191602915871

/-! ## A137192.P9700581999856993295

`filter[A047473(n+1), A145649(#)]`
-/

namespace A137192.P9700581999856993295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P9700581999856993295

/-! ## A137192.P17216924474607891364

`filter[A047470(n+2), A145649(#)]`
-/

namespace A137192.P17216924474607891364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P17216924474607891364

/-! ## A137192.P13061784454776940871

`filter[A004767(2*n), A145649(#)]`
-/

namespace A137192.P13061784454776940871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P13061784454776940871

/-! ## A137192.P14143957599008839237

`filter[A047471(2*(n+1)), A145649(#)]`
-/

namespace A137192.P14143957599008839237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P14143957599008839237

/-! ## A137192.P11531692338526791715

`filter[A047621(2*n+1), A145649(#)]`
-/

namespace A137192.P11531692338526791715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P11531692338526791715

/-! ## A137192.P14539314922165922816

`filter[A083031(2*(n+1)), A145649(#)]`
-/

namespace A137192.P14539314922165922816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P14539314922165922816

/-! ## A137192.P1415536312619212545

`filter[A168378(2*n+1), A145649(#)]`
-/

namespace A137192.P1415536312619212545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P1415536312619212545

/-! ## A137192.P446540539795557726

`filter[A234011(2*n+1), A145649(#)]`
-/

namespace A137192.P446540539795557726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P446540539795557726

/-! ## A137192.P6245049894029275775

`filter[A234431(2*n+1), A145649(#)]`
-/

namespace A137192.P6245049894029275775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234431 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137192.P6245049894029275775

/-!
# A137193: Number of n-celled polyhexes with perimeter < 4n+2.

The programs for A137193, there is no canonical definition to state claims against.
-/

/-! ## A137193.P17142344945908010336

`A000228(n+1)-A038142(n+1)`
-/

namespace A137193.P17142344945908010336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A038142 (n + 1)

end

end A137193.P17142344945908010336

/-! ## A137193.P5563087272122627971

`A038143(n+1)+A000228(n+1)-A002216(n+1)`
-/

namespace A137193.P5563087272122627971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038143 (n + 1) + (A000228 (n + 1) - A002216 (n + 1))

end

end A137193.P5563087272122627971

/-! ## A137193.P14326672473590263815

`A018190(n+1)+A038144(n+1)-A038142(n+1)`
-/

namespace A137193.P14326672473590263815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A038144 (n + 1) - A038142 (n + 1))

end

end A137193.P14326672473590263815

/-! ## A137193.P6663153530399729376

`A038143(n+1)+A005963(n+1)`
-/

namespace A137193.P6663153530399729376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038143 (n + 1) + A005963 (n + 1)

end

end A137193.P6663153530399729376

/-! ## A137193.P7391916670582551738

`A005963(n+1)+A002216(n+1)-A038142(n+1)`
-/

namespace A137193.P7391916670582551738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005963 (n + 1) + (A002216 (n + 1) - A038142 (n + 1))

end

end A137193.P7391916670582551738

/-!
# A137194: Lucky numbers (A000959) which are congruent to 5 mod 8.

The programs for A137194, there is no canonical definition to state claims against.
-/

/-! ## A137194.P11952378553956886600

`filter[A004770(n+1), A145649(#)]`
-/

namespace A137194.P11952378553956886600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P11952378553956886600

/-! ## A137194.P6359006828686746065

`∩[A000959(n+1), A004770(n+1)]`
-/

namespace A137194.P6359006828686746065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P6359006828686746065

/-! ## A137194.P17519367063971953455

`∩[A004770(n+1), A137168(n+1)]`
-/

namespace A137194.P17519367063971953455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P17519367063971953455

/-! ## A137194.P904936128502099245

`∩[A000959(n+1), A017101(n)+2]`
-/

namespace A137194.P904936128502099245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P904936128502099245

/-! ## A137194.P1597942325126253416

`∩[A000959(n+1), A004771(n)-2]`
-/

namespace A137194.P1597942325126253416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P1597942325126253416

/-! ## A137194.P17361052726961189370

`∩[A000959(n+1), A017041(n)+n]`
-/

namespace A137194.P17361052726961189370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P17361052726961189370

/-! ## A137194.P17479899404607750636

`filter[A055045(n+1), A145649(#)]`
-/

namespace A137194.P17479899404607750636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P17479899404607750636

/-! ## A137194.P13832019072690291956

`∩[A000959(n+1), A055045(n+1)]`
-/

namespace A137194.P13832019072690291956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P13832019072690291956

/-! ## A137194.P12288168935258252017

`∩[A055045(n+1), A137168(n+1)]`
-/

namespace A137194.P12288168935258252017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P12288168935258252017

/-! ## A137194.P6508388506559639087

`∩[A000959(n+1), A055046(n+1)+2]`
-/

namespace A137194.P6508388506559639087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P6508388506559639087

/-! ## A137194.P653159967038430377

`∩[A000959(n+1), A004215(n+1)-2]`
-/

namespace A137194.P653159967038430377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P653159967038430377

/-! ## A137194.P13764368839888591351

`∩[A000959(n+1), A143029(n+1)+2]`
-/

namespace A137194.P13764368839888591351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143029 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137194.P13764368839888591351

/-! ## A137194.P9671440149955415389

`filter[A047436(n+1), A145649(#)]`
-/

namespace A137194.P9671440149955415389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P9671440149955415389

/-! ## A137194.P8384086251458863253

`filter[A047608(n+1), A145649(#)]`
-/

namespace A137194.P8384086251458863253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P8384086251458863253

/-! ## A137194.P5441022815359542673

`filter[A047617(n+1), A145649(#)]`
-/

namespace A137194.P5441022815359542673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P5441022815359542673

/-! ## A137194.P10912206645146419362

`filter[A047615(n+2), A145649(#)]`
-/

namespace A137194.P10912206645146419362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P10912206645146419362

/-! ## A137194.P1685815853550410986

`filter[A004766(2*n+1), A145649(#)]`
-/

namespace A137194.P1685815853550410986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P1685815853550410986

/-! ## A137194.P2587485104164057523

`filter[A016813(2*n+1), A145649(#)]`
-/

namespace A137194.P2587485104164057523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P2587485104164057523

/-! ## A137194.P9352998598969001562

`filter[A047550(2*n+1), A145649(#)]`
-/

namespace A137194.P9352998598969001562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P9352998598969001562

/-! ## A137194.P10364156013812763983

`filter[A168392(2*n+1), A145649(#)]`
-/

namespace A137194.P10364156013812763983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137194.P10364156013812763983

/-!
# A137195: Even-indexed coefficients related to Kirchhoff index of hexagonal (benzene) chains.

The programs for A137195, there is no canonical definition to state claims against.
-/

/-! ## A137195.P15788776408303156772

`∑[∑[A321655(2*n+1)]-n]`
-/

namespace A137195.P15788776408303156772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137195.P15788776408303156772

/-!
# A137196: Lucky numbers (A000959) which are congruent to 7 mod 8.

The programs for A137196, there is no canonical definition to state claims against.
-/

/-! ## A137196.P12860744750601745796

`∩[A000959(n+1), 8*n+7]`
-/

namespace A137196.P12860744750601745796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A137196.P12860744750601745796

/-! ## A137196.P728462021603169237

`record[(8*n+7)*A145649(8*n+7)]`
-/

namespace A137196.P728462021603169237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A145649 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137196.P728462021603169237

/-! ## A137196.P5461766328472721254

`filter[A004771(n), A145649(#)]`
-/

namespace A137196.P5461766328472721254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P5461766328472721254

/-! ## A137196.P14156083022009832210

`filter[A133655(n+1), A145649(#)]`
-/

namespace A137196.P14156083022009832210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P14156083022009832210

/-! ## A137196.P749252438813887503

`∩[A004771(n), A000959(n+1)]`
-/

namespace A137196.P749252438813887503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P749252438813887503

/-! ## A137196.P7579007662265841224

`∩[A137170(n+1), A004771(n)]`
-/

namespace A137196.P7579007662265841224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P7579007662265841224

/-! ## A137196.P2890212308136707960

`∩[A137170(n+1), A133655(n)]`
-/

namespace A137196.P2890212308136707960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P2890212308136707960

/-! ## A137196.P7226879307769762557

`∩[A008589(n+1)+n, A000959(n+2)]`
-/

namespace A137196.P7226879307769762557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P7226879307769762557

/-! ## A137196.P6613695911424503866

`filter[A004215(n+1), A145649(#)]`
-/

namespace A137196.P6613695911424503866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P6613695911424503866

/-! ## A137196.P1324648669020338552

`∩[A004215(n+1), A137170(n+1)]`
-/

namespace A137196.P1324648669020338552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P1324648669020338552

/-! ## A137196.P4786055053798667658

`filter[A214328(n+2), A145649(#)]`
-/

namespace A137196.P4786055053798667658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P4786055053798667658

/-! ## A137196.P14059831618072432632

`∩[A137170(n+1), A214328(n+1)]`
-/

namespace A137196.P14059831618072432632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P14059831618072432632

/-! ## A137196.P6377985176395284543

`∩[A004214(n+1), A137170(n+1)]`
-/

namespace A137196.P6377985176395284543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137196.P6377985176395284543

/-! ## A137196.P18065835877041021802

`filter[A047524(n+1), A145649(#)]`
-/

namespace A137196.P18065835877041021802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P18065835877041021802

/-! ## A137196.P17211390343749922067

`filter[A047535(n+1), A145649(#)]`
-/

namespace A137196.P17211390343749922067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P17211390343749922067

/-! ## A137196.P704357247278405457

`filter[A047589(n+1), A145649(#)]`
-/

namespace A137196.P704357247278405457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P704357247278405457

/-! ## A137196.P7404897275522976773

`filter[A047521(n+2), A145649(#)]`
-/

namespace A137196.P7404897275522976773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P7404897275522976773

/-! ## A137196.P11777744290109333869

`filter[A004767(2*n+1), A145649(#)]`
-/

namespace A137196.P11777744290109333869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P11777744290109333869

/-! ## A137196.P11631653608150109024

`filter[A047522(2*(n+1)), A145649(#)]`
-/

namespace A137196.P11631653608150109024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P11631653608150109024

/-! ## A137196.P13582689058483990163

`filter[A168379(2*n+1), A145649(#)]`
-/

namespace A137196.P13582689058483990163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168379 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A137196.P13582689058483990163

/-!
# A137198: Sarrus numbers that become prime when two is added.

The programs for A137198, there is no canonical definition to state claims against.
-/

/-! ## A137198.P17160651740415678303

`A224695((A305306(n)+1)%2+n+1)`
-/

namespace A137198.P17160651740415678303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224695 (Int.tmod (A305306 n + 1) 2 + (n + 1 : ℤ)).toNat

end

end A137198.P17160651740415678303

/-! ## A137198.P4750475882740483396

`p?[A001567(n+1)+2]-2`
-/

namespace A137198.P4750475882740483396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A137198.P4750475882740483396

/-! ## A137198.P6555747837991991248

`p?[A192297(n+1)+2]-2`
-/

namespace A137198.P6555747837991991248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A137198.P6555747837991991248

/-! ## A137198.P14142885047890254006

`∩[A000040(n+1)-2, A001567(n+1)]`
-/

namespace A137198.P14142885047890254006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137198.P14142885047890254006

/-!
# A137199: a(n)=a(n-1)+3a(n-2)+a(n-3).

The programs for A137199, the canonical program `A137199.P4171463353060273449` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137199 has offset 0).

The definition of A137199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)+a(n-3)` (program `A137199.P4171463353060273449`, by `A137199.P4171463353060273449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137199.P4171463353060273449

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137199

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P4171463353060273449.Spec : Prop :=
  ∀ n, (P4171463353060273449.a n : ℤ) = A137199 n

theorem P4171463353060273449.correct : P4171463353060273449.Spec := by
  intro n
  simp only [A137199]

end A137199

/-! ## A137199.P11161321546578564781

`ogf((-1+3x^2)/(-1+x+3x^2+x^3))`
-/

namespace A137199.P11161321546578564781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -1, -3, -1] n

end

end A137199.P11161321546578564781

namespace A137199

/-- `ogf((-1+3x^2)/(-1+x+3x^2+x^3))` -/
def P11161321546578564781.Spec : Prop :=
  ∀ n, P11161321546578564781.a n = A137199 n

end A137199

/-! ## A137199.P4608361099528247619

`a(n-2)+2*(a(n-1)-(-1)^n)` with `a(0)=1, a(1)=1`
-/

namespace A137199.P4608361099528247619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * (a (n - 1) - (-1) ^ n)

end

end A137199.P4608361099528247619

namespace A137199

/-- `a(n-2)+2*(a(n-1)-(-1)^n)` -/
def P4608361099528247619.Spec : Prop :=
  ∀ n, P4608361099528247619.a n = A137199 n

end A137199

/-! ## A137199.P9635482579241611574

`a(n-2)-2*((-1)^n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A137199.P9635482579241611574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 2 * ((-1) ^ n - a (n - 1))

end

end A137199.P9635482579241611574

namespace A137199

/-- `a(n-2)-2*((-1)^n-a(n-1))` -/
def P9635482579241611574.Spec : Prop :=
  ∀ n, P9635482579241611574.a n = A137199 n

end A137199

/-! ## A137199.P10845550650960276098

`a(n-2)-2*(xor(1, n)-a(n-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A137199.P10845550650960276098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 2 * ((Nat.xor 1 n : ℤ) - a (n - 1) - (n : ℤ))

end

end A137199.P10845550650960276098

namespace A137199

/-- `a(n-2)-2*(xor(1, n)-a(n-1)-n)` -/
def P10845550650960276098.Spec : Prop :=
  ∀ n, P10845550650960276098.a n = A137199 n

end A137199

/-! ## A137199.P17439517026104622379

`A002203(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A137199.P17439517026104622379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002203 (n - 1) - a (n - 1)

end

end A137199.P17439517026104622379

namespace A137199

/-- `A002203(n-1)-a(n-1)` -/
def P17439517026104622379.Spec : Prop :=
  ∀ n, P17439517026104622379.a n = A137199 n

end A137199

/-! ## A137199.P14774671428010305934

`A099425(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A137199.P14774671428010305934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A099425 (n - 1) - a (n - 1)

end

end A137199.P14774671428010305934

namespace A137199

/-- `A099425(n-1)-a(n-1)` -/
def P14774671428010305934.Spec : Prop :=
  ∀ n, P14774671428010305934.a n = A137199 n

end A137199

/-! ## A137199.P14796611908272397748

`∑[A001333(n)]-A111955(n)`
-/

namespace A137199.P14796611908272397748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111955 n

end

end A137199.P14796611908272397748

namespace A137199

/-- `∑[A001333(n)]-A111955(n)` -/
def P14796611908272397748.Spec : Prop :=
  ∀ n, P14796611908272397748.a n = A137199 n

end A137199

/-! ## A137199.P10145824054864668390

`A000129(n+1)-A111955(n)`
-/

namespace A137199.P10145824054864668390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A111955 n

end

end A137199.P10145824054864668390

namespace A137199

/-- `A000129(n+1)-A111955(n)` -/
def P10145824054864668390.Spec : Prop :=
  ∀ n, P10145824054864668390.a n = A137199 n

end A137199

/-! ## A137199.P7892239696287334619

`A111954(n+1)-A078343(n)`
-/

namespace A137199.P7892239696287334619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (n + 1) - A078343 n

end

end A137199.P7892239696287334619

namespace A137199

/-- `A111954(n+1)-A078343(n)` -/
def P7892239696287334619.Spec : Prop :=
  ∀ n, P7892239696287334619.a n = A137199 n

end A137199

/-! ## A137199.P9337159442721862257

`A182143(n)-A163271(n+1)`
-/

namespace A137199.P9337159442721862257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n - A163271 (n + 1)

end

end A137199.P9337159442721862257

namespace A137199

/-- `A182143(n)-A163271(n+1)` -/
def P9337159442721862257.Spec : Prop :=
  ∀ n, P9337159442721862257.a n = A137199 n

end A137199

/-! ## A137199.P13308798558437414194

`A182143(n)-2*A000129(n)`
-/

namespace A137199.P13308798558437414194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n - 2 * A000129 n

end

end A137199.P13308798558437414194

namespace A137199

/-- `A182143(n)-2*A000129(n)` -/
def P13308798558437414194.Spec : Prop :=
  ∀ n, P13308798558437414194.a n = A137199 n

end A137199

/-! ## A137199.P17855944839588028923

`A105635(n)+A113225(n)-A111955(n)`
-/

namespace A137199.P17855944839588028923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n + (A113225 n - A111955 n)

end

end A137199.P17855944839588028923

namespace A137199

/-- `A105635(n)+A113225(n)-A111955(n)` -/
def P17855944839588028923.Spec : Prop :=
  ∀ n, P17855944839588028923.a n = A137199 n

end A137199

/-! ## A137199.P2514830932238838857

`A135138(n)+A135139(n)-A111955(n)`
-/

namespace A137199.P2514830932238838857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135138 n + (A135139 n - A111955 n)

end

end A137199.P2514830932238838857

namespace A137199

/-- `A135138(n)+A135139(n)-A111955(n)` -/
def P2514830932238838857.Spec : Prop :=
  ∀ n, P2514830932238838857.a n = A137199 n

end A137199

/-! ## A137199.P15791799985774358625

`A001333(n)+A182143(n)-A001333(n+1)`
-/

namespace A137199.P15791799985774358625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A182143 n - A001333 (n + 1))

end

end A137199.P15791799985774358625

namespace A137199

/-- `A001333(n)+A182143(n)-A001333(n+1)` -/
def P15791799985774358625.Spec : Prop :=
  ∀ n, P15791799985774358625.a n = A137199 n

end A137199

/-! ## A137199.P13571122082758019032

`A097076(n+1)+A097076(n)-A111955(n)`
-/

namespace A137199.P13571122082758019032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A097076 n - A111955 n)

end

end A137199.P13571122082758019032

namespace A137199

/-- `A097076(n+1)+A097076(n)-A111955(n)` -/
def P13571122082758019032.Spec : Prop :=
  ∀ n, P13571122082758019032.a n = A137199 n

end A137199

/-! ## A137199.P15890858228439382935

`2*A111955(n+1)-A051927(n+1)`
-/

namespace A137199.P15890858228439382935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111955 (n + 1) - A051927 (n + 1)

end

end A137199.P15890858228439382935

namespace A137199

/-- `2*A111955(n+1)-A051927(n+1)` -/
def P15890858228439382935.Spec : Prop :=
  ∀ n, P15890858228439382935.a n = A137199 n

end A137199

/-! ## A137199.P13291144469758912518

`A078343(n+1)-(A111955(n)+A001333(n))`
-/

namespace A137199.P13291144469758912518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) - (A111955 n + A001333 n)

end

end A137199.P13291144469758912518

namespace A137199

/-- `A078343(n+1)-(A111955(n)+A001333(n))` -/
def P13291144469758912518.Spec : Prop :=
  ∀ n, P13291144469758912518.a n = A137199 n

end A137199

/-! ## A137199.P10011029849525083812

`Δ[A163271(n+1)-A000034(n)]-A163271(n+1)`
-/

namespace A137199.P10011029849525083812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163271 (n + 1)

end

end A137199.P10011029849525083812

namespace A137199

/-- `Δ[A163271(n+1)-A000034(n)]-A163271(n+1)` -/
def P10011029849525083812.Spec : Prop :=
  ∀ n, P10011029849525083812.a n = A137199 n

end A137199

