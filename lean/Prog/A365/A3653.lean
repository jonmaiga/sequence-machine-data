import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A365300: a(n) is the smallest nonnegative integer such that the sum of any four ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365300, there is no canonical definition to state claims against.
-/

/-! ## A365300.P10624013376318908481

`A365515(A141214(n+1))`
-/

namespace A365300.P10624013376318908481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A141214 (n + 1)).toNat

end

end A365300.P10624013376318908481

/-! ## A365300.P17915693595961451107

`A365515(A027379(n+2))`
-/

namespace A365300.P17915693595961451107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A027379 (n + 2)).toNat

end

end A365300.P17915693595961451107

/-! ## A365300.P14029924383002181

`A365515(A155212(n)+5)`
-/

namespace A365300.P14029924383002181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A155212 n + 5).toNat

end

end A365300.P14029924383002181

/-! ## A365300.P11646830215136075478

`A365515(A056000(n)+7)`
-/

namespace A365300.P11646830215136075478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A056000 n + 7).toNat

end

end A365300.P11646830215136075478

/-! ## A365300.P17632909867470138714

`A365515(eq[3, A193592(n)])`
-/

namespace A365300.P17632909867470138714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365300.P17632909867470138714

/-!
# A365301: a(n) is the smallest nonnegative integer such that the sum of any five ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365301, there is no canonical definition to state claims against.
-/

/-! ## A365301.P8982354762244847403

`A365515(A056115(n)+11)`
-/

namespace A365301.P8982354762244847403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A056115 n + 11).toNat

end

end A365301.P8982354762244847403

/-! ## A365301.P16618662097358019400

`A365515(eq[4, A193592(n)])`
-/

namespace A365301.P16618662097358019400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365301.P16618662097358019400

/-! ## A365301.P12968590686851332648

`A365515(A055999(n+2)+2)`
-/

namespace A365301.P12968590686851332648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A055999 (n + 2) + 2).toNat

end

end A365301.P12968590686851332648

/-! ## A365301.P10250257091736024681

`A365515(A000124(n+4)+n)`
-/

namespace A365301.P10250257091736024681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A365301.P10250257091736024681

/-! ## A365301.P8117188949266769336

`A365515(Δ[A055831(n+4)]+1)`
-/

namespace A365301.P8117188949266769336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (f1 (n + 1) - f1 n + 1).toNat

end

end A365301.P8117188949266769336

/-!
# A365302: a(n) is the smallest nonnegative integer such that the sum of any six ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365302, there is no canonical definition to state claims against.
-/

/-! ## A365302.P14961274515197750134

`A365515(eq[3, A219347(n)])`
-/

namespace A365302.P14961274515197750134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365302.P14961274515197750134

/-! ## A365302.P8640193440680737181

`A365515(eq[5, A193592(n)])`
-/

namespace A365302.P8640193440680737181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365302.P8640193440680737181

/-! ## A365302.P3565114727617491172

`A365515(Δ[A055831(n+5)])`
-/

namespace A365302.P3565114727617491172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (f1 (n + 1) - f1 n).toNat

end

end A365302.P3565114727617491172

/-! ## A365302.P17217371302690878711

`A347570(A052905(n+3))-1`
-/

namespace A365302.P17217371302690878711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347570 (A052905 (n + 3)).toNat - 1

end

end A365302.P17217371302690878711

/-! ## A365302.P17253066247733135786

`A365515(eq[6, A193739(n)]+1)`
-/

namespace A365302.P17253066247733135786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A365302.P17253066247733135786

/-!
# A365303: a(n) is the smallest nonnegative integer such that the sum of any seven ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365303, there is no canonical definition to state claims against.
-/

/-! ## A365303.P8275015814877679059

`A365515(A055999(n+4))`
-/

namespace A365303.P8275015814877679059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A055999 (n + 4)).toNat

end

end A365303.P8275015814877679059

/-! ## A365303.P13703559184146619506

`A365515(eq[6, A193592(n)])`
-/

namespace A365303.P13703559184146619506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365303.P13703559184146619506

/-! ## A365303.P12034759260462735907

`A365515(eq[6, A025581(n)]+1)`
-/

namespace A365303.P12034759260462735907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A365303.P12034759260462735907

/-! ## A365303.P7990773731146779097

`A365515(eq[7, A200370(n+1)])`
-/

namespace A365303.P7990773731146779097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365303.P7990773731146779097

/-! ## A365303.P10879970234811054951

`A365515(eq[A384914(n+1)+3, A219347(n)])`
-/

namespace A365303.P10879970234811054951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384914 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365303.P10879970234811054951

/-!
# A365304: a(n) is the smallest nonnegative integer such that the sum of any eight ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365304, there is no canonical definition to state claims against.
-/

/-! ## A365304.P1101405055669544391

`A365515(eq[5, A219347(n)])`
-/

namespace A365304.P1101405055669544391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365304.P1101405055669544391

/-! ## A365304.P2382061969408645173

`A365515(eq[7, A193592(n)])`
-/

namespace A365304.P2382061969408645173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365304.P2382061969408645173

/-! ## A365304.P1028046605379686152

`A365515(A000124(n+7)+n)`
-/

namespace A365304.P1028046605379686152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A000124 (n + 7) + (n : ℤ)).toNat

end

end A365304.P1028046605379686152

/-!
# A365305: a(n) is the smallest nonnegative integer such that the sum of any nine ordered terms a(k), k<=n (repetitions allowed), is unique.

The programs for A365305, there is no canonical definition to state claims against.
-/

/-! ## A365305.P846829972814497761

`∑{d}[A332390(C(3*n+2, 2)), #²]`
-/

namespace A365305.P846829972814497761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (Nat.choose (3 * n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A365305.P846829972814497761

/-!
# A365306: Maximal reset threshold over all binary partial finite automata of n states.

The programs for A365306, there is no canonical definition to state claims against.
-/

/-! ## A365306.P10548615032352542749

`floor(∑[2*n]/(ϕ-(n-1)/(n+3)))`
-/

namespace A365306.P10548615032352542749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (Real.goldenRatio - (((n : ℤ) - 1 : ℚ) / (n + 3 : ℚ) : ℝ))⌋

end

end A365306.P10548615032352542749

/-! ## A365306.P18108781674386118648

`∑[floor(log(A141004(n)))]`
-/

namespace A365306.P18108781674386118648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A141004 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365306.P18108781674386118648

/-! ## A365306.P11898850430536015894

`∑[floor(log(A379993(n)))]`
-/

namespace A365306.P11898850430536015894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A379993 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365306.P11898850430536015894

/-! ## A365306.P6400011948620822195

`∑[floor(log2(A116456(n)))]`
-/

namespace A365306.P6400011948620822195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A116456 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365306.P6400011948620822195

/-! ## A365306.P1850803298373782158

`ceil(∑[log(A349291(n))])`
-/

namespace A365306.P1850803298373782158
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A349291 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A365306.P1850803298373782158

/-!
# A365308: Powers of primorials P(k)^m, k > 1, m > 1, where P(k) = A002110(k).

The programs for A365308, there is no canonical definition to state claims against.
-/

/-! ## A365308.P14133826611718496369

`∩[A322793(n+1), A325374(n+1)]`
-/

namespace A365308.P14133826611718496369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P14133826611718496369

/-! ## A365308.P13891472671624012135

`∩[A100778(n+1), A368682(n+1)]`
-/

namespace A365308.P13891472671624012135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P13891472671624012135

/-! ## A365308.P10302244732728983002

`∩[A322793(n+1), A368682(n+1)]`
-/

namespace A365308.P10302244732728983002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P10302244732728983002

/-! ## A365308.P12833902296920517988

`∩[A325374(n+1), A368681(n+1)]`
-/

namespace A365308.P12833902296920517988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P12833902296920517988

/-! ## A365308.P17782188220316514920

`∩[A325374(n+1), A368682(n+1)]`
-/

namespace A365308.P17782188220316514920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P17782188220316514920

/-! ## A365308.P17079208587111507860

`∩[A133808(n+1), A368682(n+1)]`
-/

namespace A365308.P17079208587111507860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P17079208587111507860

/-! ## A365308.P11519909000865785973

`∩[A317087(n+1), A368682(n+1)]`
-/

namespace A365308.P11519909000865785973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P11519909000865785973

/-! ## A365308.P1555526964112135801

`∩[A056153(n+1), A322793(n+1)]`
-/

namespace A365308.P1555526964112135801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P1555526964112135801

/-! ## A365308.P7745824331542994484

`∩[A100778(n+1), A380446(n+1)]`
-/

namespace A365308.P7745824331542994484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P7745824331542994484

/-! ## A365308.P15022931117620333831

`∩[A322793(n+1), A380446(n+1)]`
-/

namespace A365308.P15022931117620333831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365308.P15022931117620333831

/-!
# A365310: a(n) = 2^(2^n) + 2^(2^(n+1)-1).

The programs for A365310, the canonical program `A365310.P9363571024602279806` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365310 has offset 0).

The definition of A365310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365310.P9363571024602279806

`2^2^n+2^(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365310

/-- `2^2^n+2^(2^(n+1)-1)` -/
def P9363571024602279806.Spec : Prop :=
  ∀ n, P9363571024602279806.a n = (A365310 n : ℚ)

end A365310

/-! ## A365310.P5117368159013456017

`A028403(2^n)`
-/

namespace A365310.P5117368159013456017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (2 ^ n)

end

end A365310.P5117368159013456017

namespace A365310

/-- `A028403(2^n)` -/
def P5117368159013456017.Spec : Prop :=
  ∀ n, P5117368159013456017.a n = A365310 n

end A365310

/-! ## A365310.P13001203578366378342

`2*(A119572(n)-1)`
-/

namespace A365310.P13001203578366378342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119572 n - 1)

end

end A365310.P13001203578366378342

namespace A365310

/-- `2*(A119572(n)-1)` -/
def P13001203578366378342.Spec : Prop :=
  ∀ n, P13001203578366378342.a n = A365310 n

end A365310

/-!
# A365311: Number of strict integer partitions with sum <= n that can be linearly combined using nonnegative coefficients to obtain n.

The programs for A365311, there is no canonical definition to state claims against.
-/

/-! ## A365311.P3627678641463740402

`A237668(n)+A000523(A006575(n+1))`
-/

namespace A365311.P3627678641463740402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237668 n + A000523 (A006575 (n + 1)).toNat

end

end A365311.P3627678641463740402

/-!
# A365313: Prime powers (A246655) q such that 3 is a nonzero square in the finite field F_q.

The programs for A365313, the canonical program `A365313.P10204782068029342441` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365313 has offset 1).

The definition of A365313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365313.P10204782068029342441

`filter[A091998(n+1), A069513(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A365313

/-- `filter[A091998(n+1), A069513(#)]` -/
def P10204782068029342441.Spec : Prop :=
  ∀ n, P10204782068029342441.a n = A365313 (n + 1)

theorem P10204782068029342441.correct : P10204782068029342441.Spec := by
  intro n
  simp only [A365313, Nat.add_sub_cancel]

end A365313

/-! ## A365313.P16224428728990298421

`filter[A091998(n+1), A211487(#)]`
-/

namespace A365313.P16224428728990298421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A365313.P16224428728990298421

namespace A365313

/-- `filter[A091998(n+1), A211487(#)]` -/
def P16224428728990298421.Spec : Prop :=
  ∀ n, P16224428728990298421.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P7575815606052080228

`filter[A091998(n+1), A340373(#)]`
-/

namespace A365313.P7575815606052080228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A365313.P7575815606052080228

namespace A365313

/-- `filter[A091998(n+1), A340373(#)]` -/
def P7575815606052080228.Spec : Prop :=
  ∀ n, P7575815606052080228.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P9713465167127341622

`filter[A091998(n+2), A340363(#)]`
-/

namespace A365313.P9713465167127341622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A365313.P9713465167127341622

namespace A365313

/-- `filter[A091998(n+2), A340363(#)]` -/
def P9713465167127341622.Spec : Prop :=
  ∀ n, P9713465167127341622.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P1687183370420941931

`filter[A091998(n+2), A354923(#)]`
-/

namespace A365313.P1687183370420941931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A365313.P1687183370420941931

namespace A365313

/-- `filter[A091998(n+2), A354923(#)]` -/
def P1687183370420941931.Spec : Prop :=
  ∀ n, P1687183370420941931.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P4381693764450335731

`filter[A091998(n+2), A354924(#)]`
-/

namespace A365313.P4381693764450335731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A365313.P4381693764450335731

namespace A365313

/-- `filter[A091998(n+2), A354924(#)]` -/
def P4381693764450335731.Spec : Prop :=
  ∀ n, P4381693764450335731.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P4025123156708281730

`∩[A091998(n+1), A128603(n+1)]`
-/

namespace A365313.P4025123156708281730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365313.P4025123156708281730

namespace A365313

/-- `∩[A091998(n+1), A128603(n+1)]` -/
def P4025123156708281730.Spec : Prop :=
  ∀ n, (P4025123156708281730.a n : ℤ) = A365313 (n + 1)

end A365313

/-! ## A365313.P2491827840377515027

`∩[A091998(n+1), A185189(n+1)]`
-/

namespace A365313.P2491827840377515027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365313.P2491827840377515027

namespace A365313

/-- `∩[A091998(n+1), A185189(n+1)]` -/
def P2491827840377515027.Spec : Prop :=
  ∀ n, (P2491827840377515027.a n : ℤ) = A365313 (n + 1)

end A365313

/-! ## A365313.P9591373784558027576

`∩[A246655(n+1), A091998(n+1)]`
-/

namespace A365313.P9591373784558027576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365313.P9591373784558027576

namespace A365313

/-- `∩[A246655(n+1), A091998(n+1)]` -/
def P9591373784558027576.Spec : Prop :=
  ∀ n, (P9591373784558027576.a n : ℤ) = A365313 (n + 1)

end A365313

/-! ## A365313.P8097992570981580929

`∩[A070776(n+1), A091998(n+1)]`
-/

namespace A365313.P8097992570981580929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365313.P8097992570981580929

namespace A365313

/-- `∩[A070776(n+1), A091998(n+1)]` -/
def P8097992570981580929.Spec : Prop :=
  ∀ n, (P8097992570981580929.a n : ℤ) = A365313 (n + 1)

end A365313

/-! ## A365313.P16546542637391729211

`∩[A075592(n+1), A091998(n+1)]`
-/

namespace A365313.P16546542637391729211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365313.P16546542637391729211

namespace A365313

/-- `∩[A075592(n+1), A091998(n+1)]` -/
def P16546542637391729211.Spec : Prop :=
  ∀ n, (P16546542637391729211.a n : ℤ) = A365313 (n + 1)

end A365313

/-! ## A365313.P7578227304473035381

`filter[A047266(2*(n+1)), A069513(#)]`
-/

namespace A365313.P7578227304473035381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365313.P7578227304473035381

namespace A365313

/-- `filter[A047266(2*(n+1)), A069513(#)]` -/
def P7578227304473035381.Spec : Prop :=
  ∀ n, P7578227304473035381.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P17844018248411031997

`filter[A003662(n+1), A174275(#)]`
-/

namespace A365313.P17844018248411031997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P17844018248411031997

namespace A365313

/-- `filter[A003662(n+1), A174275(#)]` -/
def P17844018248411031997.Spec : Prop :=
  ∀ n, P17844018248411031997.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P15734514540054239806

`filter[A074226(n+1), A174275(#)]`
-/

namespace A365313.P15734514540054239806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P15734514540054239806

namespace A365313

/-- `filter[A074226(n+1), A174275(#)]` -/
def P15734514540054239806.Spec : Prop :=
  ∀ n, P15734514540054239806.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P15018055640388165355

`filter[A091998(n+1), A174275(#)]`
-/

namespace A365313.P15018055640388165355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P15018055640388165355

namespace A365313

/-- `filter[A091998(n+1), A174275(#)]` -/
def P15018055640388165355.Spec : Prop :=
  ∀ n, P15018055640388165355.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P13427846229073206746

`filter[A349707(n+2), A174275(#)]`
-/

namespace A365313.P13427846229073206746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P13427846229073206746

namespace A365313

/-- `filter[A349707(n+2), A174275(#)]` -/
def P13427846229073206746.Spec : Prop :=
  ∀ n, P13427846229073206746.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P11388601248310478104

`filter[A004443(3*n), A174275(#)]`
-/

namespace A365313.P11388601248310478104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P11388601248310478104

namespace A365313

/-- `filter[A004443(3*n), A174275(#)]` -/
def P11388601248310478104.Spec : Prop :=
  ∀ n, P11388601248310478104.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P8481626789290137292

`filter[A047266(2*(n+1)), A174275(#)]`
-/

namespace A365313.P8481626789290137292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P8481626789290137292

namespace A365313

/-- `filter[A047266(2*(n+1)), A174275(#)]` -/
def P8481626789290137292.Spec : Prop :=
  ∀ n, P8481626789290137292.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P4493783320922742430

`filter[A304804(2*n), A174275(#)]`
-/

namespace A365313.P4493783320922742430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P4493783320922742430

namespace A365313

/-- `filter[A304804(2*n), A174275(#)]` -/
def P4493783320922742430.Spec : Prop :=
  ∀ n, P4493783320922742430.a n = A365313 (n + 1)

end A365313

/-! ## A365313.P9327843367095670001

`filter[A304808(2*n), A174275(#)]`
-/

namespace A365313.P9327843367095670001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304808 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A365313.P9327843367095670001

namespace A365313

/-- `filter[A304808(2*n), A174275(#)]` -/
def P9327843367095670001.Spec : Prop :=
  ∀ n, P9327843367095670001.a n = A365313 (n + 1)

end A365313

/-!
# A365314: Number of unordered pairs of distinct positive integers <= n that can be linearly combined using nonnegative coefficients to obtain n.

The programs for A365314, there is no canonical definition to state claims against.
-/

/-! ## A365314.P3411222817121117903

`C(n, 2)-A365320(n)`
-/

namespace A365314.P3411222817121117903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A365320 n

end

end A365314.P3411222817121117903

/-! ## A365314.P4145175715058461191

`A161680(n)-A365320(n)`
-/

namespace A365314.P4145175715058461191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A365320 n

end

end A365314.P4145175715058461191

/-! ## A365314.P12183157879153313966

`A000217(n)-(A365320(n)+n)`
-/

namespace A365314.P12183157879153313966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A365320 n + (n : ℤ))

end

end A365314.P12183157879153313966

/-! ## A365314.P17161602691580441218

`A083920(A000217(n))-A365320(n)`
-/

namespace A365314.P17161602691580441218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A000217 n).toNat - A365320 n

end

end A365314.P17161602691580441218

/-! ## A365314.P13327732069781907571

`log2(A006125(n))-A365320(n)`
-/

namespace A365314.P13327732069781907571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006125 n : ℝ) - (A365320 n : ℝ)

end

end A365314.P13327732069781907571

/-!
# A365315: Number of unordered pairs of distinct positive integers <= n that can be linearly combined using positive coefficients to obtain n.

The programs for A365315, there is no canonical definition to state claims against.
-/

/-! ## A365315.P14715204702129298138

`C(n, 2)-A365321(n)`
-/

namespace A365315.P14715204702129298138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A365321 n

end

end A365315.P14715204702129298138

/-! ## A365315.P4137547884683572650

`A161680(n)-A365321(n)`
-/

namespace A365315.P4137547884683572650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A365321 n

end

end A365315.P4137547884683572650

/-! ## A365315.P1527468292215119429

`A000217(n)-(A365321(n)+n)`
-/

namespace A365315.P1527468292215119429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A365321 n + (n : ℤ))

end

end A365315.P1527468292215119429

/-!
# A365316: a(n) = number of visible diamonds (squares rotated by 45 degrees) with diagonal 2 in the large square bounded by the parabola y=x^2 and starting from the point (0, 2n).

The programs for A365316, there is no canonical definition to state claims against.
-/

/-! ## A365316.P1557578897602529903

`A061579(n)+A004273(A075349(n+1))`
-/

namespace A365316.P1557578897602529903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + A004273 (A075349 (n + 1)).toNat

end

end A365316.P1557578897602529903

/-!
# A365320: Number of pairs of distinct positive integers <= n that cannot be linearly combined with nonnegative coefficients to obtain n.

The programs for A365320, there is no canonical definition to state claims against.
-/

/-! ## A365320.P568774610706355271

`C(n, 2)-A365314(n)`
-/

namespace A365320.P568774610706355271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A365314 n

end

end A365320.P568774610706355271

/-! ## A365320.P10683326295572591554

`A161680(n)-A365314(n)`
-/

namespace A365320.P10683326295572591554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A365314 n

end

end A365320.P10683326295572591554

/-!
# A365321: Number of pairs of distinct positive integers <= n that cannot be linearly combined with positive coefficients to obtain n.

The programs for A365321, there is no canonical definition to state claims against.
-/

/-! ## A365321.P17669534671153632906

`C(n, 2)-A365315(n)`
-/

namespace A365321.P17669534671153632906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A365315 n

end

end A365321.P17669534671153632906

/-! ## A365321.P11668742570905662640

`A161680(n)-A365315(n)`
-/

namespace A365321.P11668742570905662640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A365315 n

end

end A365321.P11668742570905662640

/-! ## A365321.P530200255537235288

`A000217(n)-(A365315(n)+n)`
-/

namespace A365321.P530200255537235288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A365315 n + (n : ℤ))

end

end A365321.P530200255537235288

/-! ## A365321.P14087414996567502654

`A004526(A002061(n))-A365315(n)`
-/

namespace A365321.P14087414996567502654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002061 n).toNat - A365315 n

end

end A365321.P14087414996567502654

/-! ## A365321.P13050133836187535576

`A365314(n)+A365320(n)-A365315(n)`
-/

namespace A365321.P13050133836187535576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365314 n + (A365320 n - A365315 n)

end

end A365321.P13050133836187535576

/-!
# A365322: Number of subsets of {1..n} that cannot be linearly combined using positive coefficients to obtain n.

The programs for A365322, there is no canonical definition to state claims against.
-/

/-! ## A365322.P15958748362760972208

`2^n-A088314(n)`
-/

namespace A365322.P15958748362760972208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088314 n

end

end A365322.P15958748362760972208

/-! ## A365322.P11052453573222737906

`2^n-(A365042(n)+1)`
-/

namespace A365322.P11052453573222737906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A365042 n + 1)

end

end A365322.P11052453573222737906

/-! ## A365322.P9553460090137033487

`A000225(n)-A365042(n)`
-/

namespace A365322.P9553460090137033487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A365042 n

end

end A365322.P9553460090137033487

/-! ## A365322.P9813797875123095998

`abs(A000079(n)-A088314(n))`
-/

namespace A365322.P9813797875123095998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A088314 n|

end

end A365322.P9813797875123095998

/-! ## A365322.P3824712077316379669

`and(-A088314(n), A000225(n))`
-/

namespace A365322.P3824712077316379669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A088314 n) (A000225 n)

end

end A365322.P3824712077316379669

/-! ## A365322.P14855414704917480746

`A085489(n)+A088809(n)-A088314(n)`
-/

namespace A365322.P14855414704917480746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A088314 n)

end

end A365322.P14855414704917480746

/-! ## A365322.P8469099663345448353

`A070880(n+1)+A088314(n+1)-A088314(n)`
-/

namespace A365322.P8469099663345448353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070880 (n + 1) + (A088314 (n + 1) - A088314 n)

end

end A365322.P8469099663345448353

/-!
# A365324: a(1) = 2, a(n) = k + 1, where k is the least number greater than a(n-1) such that rad(k) | a(n-1), where rad(n) = A007947(n).

The programs for A365324, there is no canonical definition to state claims against.
-/

/-! ## A365324.P11584207828236752425

`A289280(a(n-1))+1` with `a(0)=2`
-/

namespace A365324.P11584207828236752425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A289280 (a (n - 1)).toNat + 1

end

end A365324.P11584207828236752425

/-!
# A365326: a(n) is the smallest positive number k such that k^2 - 1 and k^2 + 1 each have exactly n distinct prime divisors.

The programs for A365326, there is no canonical definition to state claims against.
-/

/-! ## A365326.P8109394087588197702

`A130807(A077854(n))`
-/

namespace A365326.P8109394087588197702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130807 (A077854 n).toNat

end

end A365326.P8109394087588197702

/-!
# A365330: Expansion of e.g.f. x^3/(1-x-x^2-x^3)^2.

The programs for A365330, the canonical program `A365330.P9580767705041975083` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365330 has offset 0).

The definition of A365330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365330.P9580767705041975083

`A000142(n)*A073778(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A365330

/-- `A000142(n)*A073778(n+1)` -/
def P9580767705041975083.Spec : Prop :=
  ∀ n, P9580767705041975083.a n = A365330 n

theorem P9580767705041975083.correct : P9580767705041975083.Spec := by
  intro n
  simp only [A365330]

end A365330

/-! ## A365330.P1984156069420414008

`A073778(n+1)*A130534(∑[n])`
-/

namespace A365330.P1984156069420414008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (n + 1) * A130534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365330.P1984156069420414008

namespace A365330

/-- `A073778(n+1)*A130534(∑[n])` -/
def P1984156069420414008.Spec : Prop :=
  ∀ n, P1984156069420414008.a n = A365330 n

end A365330

/-! ## A365330.P11056170290771964080

`A073778(n+1)*A369833(n)`
-/

namespace A365330.P11056170290771964080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073778 (n + 1) * A369833 n

end

end A365330.P11056170290771964080

namespace A365330

/-- `A073778(n+1)*A369833(n)` -/
def P11056170290771964080.Spec : Prop :=
  ∀ n, P11056170290771964080.a n = A365330 n

end A365330

/-! ## A365330.P10016002810763697978

`A000142(n)*A053186(A307444(n))`
-/

namespace A365330.P10016002810763697978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A053186 (A307444 n).toNat

end

end A365330.P10016002810763697978

namespace A365330

/-- `A000142(n)*A053186(A307444(n))` -/
def P10016002810763697978.Spec : Prop :=
  ∀ n, P10016002810763697978.a n = A365330 n

end A365330

/-!
# A365331: The number of divisors of the largest square dividing n.

The programs for A365331, the canonical program `A365331.P9498320090856852280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365331 has offset 1).

The definition of A365331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365331.P9498320090856852280

`A000005(A008833(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365331

/-- `A000005(A008833(n+1))` -/
def P9498320090856852280.Spec : Prop :=
  ∀ n, P9498320090856852280.a n = A365331 (n + 1)

theorem P9498320090856852280.correct : P9498320090856852280.Spec := by
  intro n
  simp only [A365331, Nat.add_sub_cancel]

end A365331

/-! ## A365331.P16835565985834682615

`A000005((n+1)/A007913(n+1))`
-/

namespace A365331.P16835565985834682615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365331.P16835565985834682615

namespace A365331

/-- `A000005((n+1)/A007913(n+1))` -/
def P16835565985834682615.Spec : Prop :=
  ∀ n, P16835565985834682615.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P12047332490889326691

`∏{e}[n+1, or(1, #)]`
-/

namespace A365331.P12047332490889326691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 (Nat.factorization (f1 n) p)

end

end A365331.P12047332490889326691

namespace A365331

/-- `∏{e}[n+1, or(1, #)]` -/
def P12047332490889326691.Spec : Prop :=
  ∀ n, (P12047332490889326691.a n : ℤ) = A365331 (n + 1)

end A365331

/-! ## A365331.P9122528406988401180

`∏{e}[∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #], #]`
-/

namespace A365331.P9122528406988401180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A365331.P9122528406988401180

namespace A365331

/-- `∏{e}[∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #], #]` -/
def P9122528406988401180.Spec : Prop :=
  ∀ n, (P9122528406988401180.a n : ℤ) = A365331 (n + 1)

end A365331

/-! ## A365331.P8683074899139845383

`∏{e}[n+1, A109613(#)]`
-/

namespace A365331.P8683074899139845383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A109613 (Nat.factorization (f1 n) p)

end

end A365331.P8683074899139845383

namespace A365331

/-- `∏{e}[n+1, A109613(#)]` -/
def P8683074899139845383.Spec : Prop :=
  ∀ n, P8683074899139845383.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P8205053269434859294

`∏{e}[A356191(n+1), #]`
-/

namespace A365331.P8205053269434859294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365331.P8205053269434859294

namespace A365331

/-- `∏{e}[A356191(n+1), #]` -/
def P8205053269434859294.Spec : Prop :=
  ∀ n, (P8205053269434859294.a n : ℤ) = A365331 (n + 1)

end A365331

/-! ## A365331.P2711880310283879879

`A048691(A000188(n+1))`
-/

namespace A365331.P2711880310283879879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A000188 (n + 1)).toNat

end

end A365331.P2711880310283879879

namespace A365331

/-- `A048691(A000188(n+1))` -/
def P2711880310283879879.Spec : Prop :=
  ∀ n, P2711880310283879879.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P16199406156213067494

`A365345(A003557(n+1))`
-/

namespace A365331.P16199406156213067494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365345 (A003557 (n + 1)).toNat

end

end A365331.P16199406156213067494

namespace A365331

/-- `A365345(A003557(n+1))` -/
def P16199406156213067494.Spec : Prop :=
  ∀ n, P16199406156213067494.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P4166909665225736551

`A000005(A000188(n+1)²)`
-/

namespace A365331.P4166909665225736551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1) ^ 2).toNat

end

end A365331.P4166909665225736551

namespace A365331

/-- `A000005(A000188(n+1)²)` -/
def P4166909665225736551.Spec : Prop :=
  ∀ n, P4166909665225736551.a n = A365331 (n + 1)

theorem P4166909665225736551.correct : P4166909665225736551.Spec := by
  intro n
  simp only [A365331, Nat.add_sub_cancel, A365331.P4166909665225736551.a, A365331.P9498320090856852280.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365331

/-! ## A365331.P18309329204647092831

`A365345(A000188(n+1)²)`
-/

namespace A365331.P18309329204647092831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365345 (A000188 (n + 1) ^ 2).toNat

end

end A365331.P18309329204647092831

namespace A365331

/-- `A365345(A000188(n+1)²)` -/
def P18309329204647092831.Spec : Prop :=
  ∀ n, P18309329204647092831.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P2488542670321813231

`A032741(A000188(n+1)²)+1`
-/

namespace A365331.P2488542670321813231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000188 (n + 1) ^ 2).toNat + 1

end

end A365331.P2488542670321813231

namespace A365331

/-- `A032741(A000188(n+1)²)+1` -/
def P2488542670321813231.Spec : Prop :=
  ∀ n, P2488542670321813231.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P4532526140473494796

`A000005((A057918(n+1)+1)²)`
-/

namespace A365331.P4532526140473494796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A057918 (n + 1) + 1) ^ 2).toNat

end

end A365331.P4532526140473494796

namespace A365331

/-- `A000005((A057918(n+1)+1)²)` -/
def P4532526140473494796.Spec : Prop :=
  ∀ n, P4532526140473494796.a n = A365331 (n + 1)

theorem P4532526140473494796.correct : P4532526140473494796.Spec := by
  intro n
  simp only [A365331, Nat.add_sub_cancel, A365331.P4532526140473494796.a, A365331.P9498320090856852280.a, A000005, A000005.P16091521709108585461.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A057918, A057918.P8779601029509101892.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365331

/-! ## A365331.P15952651446684177111

`A000005(A337101(2*(n+1))²)`
-/

namespace A365331.P15952651446684177111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337101 (2 * (n + 1)) ^ 2).toNat

end

end A365331.P15952651446684177111

namespace A365331

/-- `A000005(A337101(2*(n+1))²)` -/
def P15952651446684177111.Spec : Prop :=
  ∀ n, P15952651446684177111.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P5312017962115864152

`A365401(n+1)*A370079(n+1)`
-/

namespace A365331.P5312017962115864152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365401 (n + 1) * A370079 (n + 1)

end

end A365331.P5312017962115864152

namespace A365331

/-- `A365401(n+1)*A370079(n+1)` -/
def P5312017962115864152.Spec : Prop :=
  ∀ n, P5312017962115864152.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P13891340215512735299

`A048691((n+1)/A019554(n+1))`
-/

namespace A365331.P13891340215512735299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A365331.P13891340215512735299

namespace A365331

/-- `A048691((n+1)/A019554(n+1))` -/
def P13891340215512735299.Spec : Prop :=
  ∀ n, P13891340215512735299.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P16460223026216117318

`A365345((n+1)/A007913(n+1))`
-/

namespace A365331.P16460223026216117318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365331.P16460223026216117318

namespace A365331

/-- `A365345((n+1)/A007913(n+1))` -/
def P16460223026216117318.Spec : Prop :=
  ∀ n, P16460223026216117318.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P11674859471337512387

`A357669(A008833(2*n+1-n))`
-/

namespace A365331.P11674859471337512387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A008833 (2 * n + 1 - n)).toNat

end

end A365331.P11674859471337512387

namespace A365331

/-- `A357669(A008833(2*n+1-n))` -/
def P11674859471337512387.Spec : Prop :=
  ∀ n, P11674859471337512387.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P650090477452105540

`∑{d}[n+1, A046951(#)*A227291((n+1)/#)]`
-/

namespace A365331.P650090477452105540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365331.P650090477452105540

namespace A365331

/-- `∑{d}[n+1, A046951(#)*A227291((n+1)/#)]` -/
def P650090477452105540.Spec : Prop :=
  ∀ n, P650090477452105540.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P1620619143547738977

`∑{d}[n+1, A008836(#)*A322327((n+1)/#)]`
-/

namespace A365331.P1620619143547738977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A322327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365331.P1620619143547738977

namespace A365331

/-- `∑{d}[n+1, A008836(#)*A322327((n+1)/#)]` -/
def P1620619143547738977.Spec : Prop :=
  ∀ n, P1620619143547738977.a n = A365331 (n + 1)

end A365331

/-! ## A365331.P10651020272123024428

`∑{d}[n+1, A000005(#)*A390490((n+1)/#)]`
-/

namespace A365331.P10651020272123024428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A390490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365331.P10651020272123024428

namespace A365331

/-- `∑{d}[n+1, A000005(#)*A390490((n+1)/#)]` -/
def P10651020272123024428.Spec : Prop :=
  ∀ n, P10651020272123024428.a n = A365331 (n + 1)

end A365331

/-!
# A365332: The sum of divisors of the largest square dividing n.

The programs for A365332, the canonical program `A365332.P7111243968687331237` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365332 has offset 1).

The definition of A365332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365332.P7111243968687331237

`A000203(A008833(n+1))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A365332

/-- `A000203(A008833(n+1))` -/
def P7111243968687331237.Spec : Prop :=
  ∀ n, P7111243968687331237.a n = A365332 (n + 1)

theorem P7111243968687331237.correct : P7111243968687331237.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel]

end A365332

/-! ## A365332.P15086121475666677735

`∑{d}[∏{p}[n+1, #^val(n+1, #²)]², #]`
-/

namespace A365332.P15086121475666677735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A365332.P15086121475666677735

namespace A365332

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)]², #]` -/
def P15086121475666677735.Spec : Prop :=
  ∀ n, (P15086121475666677735.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P12689033582062166774

`∑{d}[A008833(n+1), #]`
-/

namespace A365332.P12689033582062166774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P12689033582062166774

namespace A365332

/-- `∑{d}[A008833(n+1), #]` -/
def P12689033582062166774.Spec : Prop :=
  ∀ n, (P12689033582062166774.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P3532324304065940767

`∑{d}[A358272(n+1), #]`
-/

namespace A365332.P3532324304065940767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P3532324304065940767

namespace A365332

/-- `∑{d}[A358272(n+1), #]` -/
def P3532324304065940767.Spec : Prop :=
  ∀ n, (P3532324304065940767.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P12873326137915673800

`∑{d}[A000188(n+1)², #]`
-/

namespace A365332.P12873326137915673800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P12873326137915673800

namespace A365332

/-- `∑{d}[A000188(n+1)², #]` -/
def P12873326137915673800.Spec : Prop :=
  ∀ n, (P12873326137915673800.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P17682220442017980886

`∑{d}[A336642(n+1)+1, #]`
-/

namespace A365332.P17682220442017980886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P17682220442017980886

namespace A365332

/-- `∑{d}[A336642(n+1)+1, #]` -/
def P17682220442017980886.Spec : Prop :=
  ∀ n, (P17682220442017980886.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P10758143719002112741

`∑{d}[A337101(2*(n+1))², #]`
-/

namespace A365332.P10758143719002112741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365332.P10758143719002112741

namespace A365332

/-- `∑{d}[A337101(2*(n+1))², #]` -/
def P10758143719002112741.Spec : Prop :=
  ∀ n, (P10758143719002112741.a n : ℤ) = A365332 (n + 1)

end A365332

/-! ## A365332.P11185088572405455174

`A065764(A000188(n+1))`
-/

namespace A365332.P11185088572405455174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A000188 (n + 1)).toNat

end

end A365332.P11185088572405455174

namespace A365332

/-- `A065764(A000188(n+1))` -/
def P11185088572405455174.Spec : Prop :=
  ∀ n, P11185088572405455174.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P13202653397813633153

`A365346(A003557(n+1))`
-/

namespace A365332.P13202653397813633153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A003557 (n + 1)).toNat

end

end A365332.P13202653397813633153

namespace A365332

/-- `A365346(A003557(n+1))` -/
def P13202653397813633153.Spec : Prop :=
  ∀ n, P13202653397813633153.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P15508465536057442870

`A000203(A000188(n+1)²)`
-/

namespace A365332.P15508465536057442870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1) ^ 2).toNat

end

end A365332.P15508465536057442870

namespace A365332

/-- `A000203(A000188(n+1)²)` -/
def P15508465536057442870.Spec : Prop :=
  ∀ n, P15508465536057442870.a n = A365332 (n + 1)

theorem P15508465536057442870.correct : P15508465536057442870.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel, A365332.P15508465536057442870.a, A365332.P7111243968687331237.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365332

/-! ## A365332.P3526026607583666018

`A351568(A000188(n+1)²)`
-/

namespace A365332.P3526026607583666018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A000188 (n + 1) ^ 2).toNat

end

end A365332.P3526026607583666018

namespace A365332

/-- `A351568(A000188(n+1)²)` -/
def P3526026607583666018.Spec : Prop :=
  ∀ n, P3526026607583666018.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P5487669681676758814

`A365346(A000188(n+1)²)`
-/

namespace A365332.P5487669681676758814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365346 (A000188 (n + 1) ^ 2).toNat

end

end A365332.P5487669681676758814

namespace A365332

/-- `A365346(A000188(n+1)²)` -/
def P5487669681676758814.Spec : Prop :=
  ∀ n, P5487669681676758814.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P11435140825850841594

`A369717(A000188(n+1)²)`
-/

namespace A365332.P11435140825850841594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369717 (A000188 (n + 1) ^ 2).toNat

end

end A365332.P11435140825850841594

namespace A365332

/-- `A369717(A000188(n+1)²)` -/
def P11435140825850841594.Spec : Prop :=
  ∀ n, P11435140825850841594.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P12127786628454637912

`A000203(A336642(n+1)+1)`
-/

namespace A365332.P12127786628454637912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336642 (n + 1) + 1).toNat

end

end A365332.P12127786628454637912

namespace A365332

/-- `A000203(A336642(n+1)+1)` -/
def P12127786628454637912.Spec : Prop :=
  ∀ n, P12127786628454637912.a n = A365332 (n + 1)

theorem P12127786628454637912.correct : P12127786628454637912.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel, A365332.P12127786628454637912.a, A365332.P7111243968687331237.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A336642, A336642.P17825345798901579858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365332

/-! ## A365332.P7872410069519347880

`A000203((A057918(n+1)+1)²)`
-/

namespace A365332.P7872410069519347880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((A057918 (n + 1) + 1) ^ 2).toNat

end

end A365332.P7872410069519347880

namespace A365332

/-- `A000203((A057918(n+1)+1)²)` -/
def P7872410069519347880.Spec : Prop :=
  ∀ n, P7872410069519347880.a n = A365332 (n + 1)

theorem P7872410069519347880.correct : P7872410069519347880.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel, A365332.P7872410069519347880.a, A365332.P7111243968687331237.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A057918, A057918.P8779601029509101892.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365332

/-! ## A365332.P196906961774561138

`A326126(A000188(n+1)²)+1`
-/

namespace A365332.P196906961774561138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (A000188 (n + 1) ^ 2).toNat + 1

end

end A365332.P196906961774561138

namespace A365332

/-- `A326126(A000188(n+1)²)+1` -/
def P196906961774561138.Spec : Prop :=
  ∀ n, P196906961774561138.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P8809982869646371120

`A088580(A000188(n+1)²)-1`
-/

namespace A365332.P8809982869646371120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A000188 (n + 1) ^ 2).toNat - 1

end

end A365332.P8809982869646371120

namespace A365332

/-- `A088580(A000188(n+1)²)-1` -/
def P8809982869646371120.Spec : Prop :=
  ∀ n, P8809982869646371120.a n = A365332 (n + 1)

theorem P8809982869646371120.correct : P8809982869646371120.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel, A365332.P8809982869646371120.a, A365332.P7111243968687331237.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365332

/-! ## A365332.P15181833936278142966

`A000203(A337101(2*(n+1))²)`
-/

namespace A365332.P15181833936278142966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337101 (2 * (n + 1)) ^ 2).toNat

end

end A365332.P15181833936278142966

namespace A365332

/-- `A000203(A337101(2*(n+1))²)` -/
def P15181833936278142966.Spec : Prop :=
  ∀ n, P15181833936278142966.a n = A365332 (n + 1)

end A365332

/-! ## A365332.P10404674053903254561

`A000203(n+1-A326055(n+1))`
-/

namespace A365332.P10404674053903254561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) - A326055 (n + 1)).toNat

end

end A365332.P10404674053903254561

namespace A365332

/-- `A000203(n+1-A326055(n+1))` -/
def P10404674053903254561.Spec : Prop :=
  ∀ n, P10404674053903254561.a n = A365332 (n + 1)

theorem P10404674053903254561.correct : P10404674053903254561.Spec := by
  intro n
  simp only [A365332, Nat.add_sub_cancel, A365332.P10404674053903254561.a, A365332.P7111243968687331237.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A326055, A326055.P11347868664017450431.a, A033879, A033879.P5965131822542929609.a, A326054, A326054.P11521875358712095530.a, A326053, A326053.P16383788461503311404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365332

/-! ## A365332.P2905808346537277873

`A000203((n+1)/A007913(n+1))`
-/

namespace A365332.P2905808346537277873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365332.P2905808346537277873

namespace A365332

/-- `A000203((n+1)/A007913(n+1))` -/
def P2905808346537277873.Spec : Prop :=
  ∀ n, P2905808346537277873.a n = A365332 (n + 1)

end A365332

/-!
# A365333: The number of exponentially odd coreful divisors of the largest square dividing n.

The programs for A365333, the canonical program `A365333.P16754517503052846213` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365333 has offset 1).

The definition of A365333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365333.P16754517503052846213

`A325837(A008833(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365333

/-- `A325837(A008833(n+1))` -/
def P16754517503052846213.Spec : Prop :=
  ∀ n, P16754517503052846213.a n = A365333 (n + 1)

theorem P16754517503052846213.correct : P16754517503052846213.Spec := by
  intro n
  simp only [A365333, Nat.add_sub_cancel]

end A365333

/-! ## A365333.P5199257130813968783

`∏{e}[∏{p}[n+1, #^val(n+1, #²)], #]`
-/

namespace A365333.P5199257130813968783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A365333.P5199257130813968783

namespace A365333

/-- `∏{e}[∏{p}[n+1, #^val(n+1, #²)], #]` -/
def P5199257130813968783.Spec : Prop :=
  ∀ n, (P5199257130813968783.a n : ℤ) = A365333 (n + 1)

end A365333

/-! ## A365333.P8858770416409050422

`∏{e}[A000188(n+1), #]`
-/

namespace A365333.P8858770416409050422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365333.P8858770416409050422

namespace A365333

/-- `∏{e}[A000188(n+1), #]` -/
def P8858770416409050422.Spec : Prop :=
  ∀ n, (P8858770416409050422.a n : ℤ) = A365333 (n + 1)

end A365333

/-! ## A365333.P6544374937596517646

`∏{e}[sqrt(A336642(n+1)+1), #]`
-/

namespace A365333.P6544374937596517646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A336642 (n + 1) + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A365333.P6544374937596517646

namespace A365333

/-- `∏{e}[sqrt(A336642(n+1)+1), #]` -/
def P6544374937596517646.Spec : Prop :=
  ∀ n, (P6544374937596517646.a n : ℤ) = A365333 (n + 1)

end A365333

/-! ## A365333.P12108443979319907114

`∏{e}[A355264(n+1)/(n+1), #]`
-/

namespace A365333.P12108443979319907114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A365333.P12108443979319907114

namespace A365333

/-- `∏{e}[A355264(n+1)/(n+1), #]` -/
def P12108443979319907114.Spec : Prop :=
  ∀ n, (P12108443979319907114.a n : ℤ) = A365333 (n + 1)

end A365333

/-! ## A365333.P16231865307738904997

`∑{d}[n+1, A008836(#)*A369310((n+1)/#)]`
-/

namespace A365333.P16231865307738904997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A369310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365333.P16231865307738904997

namespace A365333

/-- `∑{d}[n+1, A008836(#)*A369310((n+1)/#)]` -/
def P16231865307738904997.Spec : Prop :=
  ∀ n, P16231865307738904997.a n = A365333 (n + 1)

end A365333

/-! ## A365333.P17358929923745166465

`A366902(A070292(2*(n+1))%A175525(n+3))`
-/

namespace A365333.P17358929923745166465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (Int.tmod (A070292 (2 * (n + 1))) (A175525 (n + 3))).toNat

end

end A365333.P17358929923745166465

namespace A365333

/-- `A366902(A070292(2*(n+1))%A175525(n+3))` -/
def P17358929923745166465.Spec : Prop :=
  ∀ n, P17358929923745166465.a n = A365333 (n + 1)

end A365333

/-!
# A365334: The sum of exponentially odd divisors of the largest square dividing n.

The programs for A365334, the canonical program `A365334.P7348562216077771551` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365334 has offset 1).

The definition of A365334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365334.P7348562216077771551

`A033634(A008833(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365334

/-- `A033634(A008833(n+1))` -/
def P7348562216077771551.Spec : Prop :=
  ∀ n, P7348562216077771551.a n = A365334 (n + 1)

theorem P7348562216077771551.correct : P7348562216077771551.Spec := by
  intro n
  simp only [A365334, Nat.add_sub_cancel]

end A365334

/-! ## A365334.P18412413580674024160

`A033634((n+1)/∏{p}[n+1, #])`
-/

namespace A365334.P18412413580674024160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A365334.P18412413580674024160

namespace A365334

/-- `A033634((n+1)/∏{p}[n+1, #])` -/
def P18412413580674024160.Spec : Prop :=
  ∀ n, P18412413580674024160.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P10867020173711969877

`A033634(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A365334.P10867020173711969877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A365334.P10867020173711969877

namespace A365334

/-- `A033634(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P10867020173711969877.Spec : Prop :=
  ∀ n, P10867020173711969877.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P5531685535029320739

`A033634(A003557(n+1))`
-/

namespace A365334.P5531685535029320739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A003557 (n + 1)).toNat

end

end A365334.P5531685535029320739

namespace A365334

/-- `A033634(A003557(n+1))` -/
def P5531685535029320739.Spec : Prop :=
  ∀ n, P5531685535029320739.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P18311730767875670604

`A380322(A000188(n+1))`
-/

namespace A365334.P18311730767875670604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380322 (A000188 (n + 1)).toNat

end

end A365334.P18311730767875670604

namespace A365334

/-- `A380322(A000188(n+1))` -/
def P18311730767875670604.Spec : Prop :=
  ∀ n, P18311730767875670604.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P15695114296949487313

`A033634(A000188(n+1)²)`
-/

namespace A365334.P15695114296949487313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A000188 (n + 1) ^ 2).toNat

end

end A365334.P15695114296949487313

namespace A365334

/-- `A033634(A000188(n+1)²)` -/
def P15695114296949487313.Spec : Prop :=
  ∀ n, P15695114296949487313.a n = A365334 (n + 1)

theorem P15695114296949487313.correct : P15695114296949487313.Spec := by
  intro n
  simp only [A365334, Nat.add_sub_cancel, A365334.P15695114296949487313.a, A365334.P7348562216077771551.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A033634, A033634.P7485427623378639722.f1, A033634.P7485427623378639722.a, A295316, A295316.P1217032388411146580.a, A005361, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365334

/-! ## A365334.P13781834942403060927

`A033634((n+1)/A007913(n+1))`
-/

namespace A365334.P13781834942403060927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365334.P13781834942403060927

namespace A365334

/-- `A033634((n+1)/A007913(n+1))` -/
def P13781834942403060927.Spec : Prop :=
  ∀ n, P13781834942403060927.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P649619253610996725

`A033634((n+1)/A007947(n+1))`
-/

namespace A365334.P649619253610996725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A365334.P649619253610996725

namespace A365334

/-- `A033634((n+1)/A007947(n+1))` -/
def P649619253610996725.Spec : Prop :=
  ∀ n, P649619253610996725.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P10914815864773639286

`A365336(A003557(n+1)²)`
-/

namespace A365334.P10914815864773639286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A003557 (n + 1) ^ 2).toNat

end

end A365334.P10914815864773639286

namespace A365334

/-- `A365336(A003557(n+1)²)` -/
def P10914815864773639286.Spec : Prop :=
  ∀ n, P10914815864773639286.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P13271780396486607350

`A365336(A102631(n+1))`
-/

namespace A365334.P13271780396486607350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A102631 (n + 1)).toNat

end

end A365334.P13271780396486607350

namespace A365334

/-- `A365336(A102631(n+1))` -/
def P13271780396486607350.Spec : Prop :=
  ∀ n, P13271780396486607350.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P10397729444700743745

`A365336((n+1)*A003557(n+1))`
-/

namespace A365334.P10397729444700743745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A365334.P10397729444700743745

namespace A365334

/-- `A365336((n+1)*A003557(n+1))` -/
def P10397729444700743745.Spec : Prop :=
  ∀ n, P10397729444700743745.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P14809410519950895416

`A365336(A008833(n+1)²)`
-/

namespace A365334.P14809410519950895416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A008833 (n + 1) ^ 2).toNat

end

end A365334.P14809410519950895416

namespace A365334

/-- `A365336(A008833(n+1)²)` -/
def P14809410519950895416.Spec : Prop :=
  ∀ n, P14809410519950895416.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P18260638838188878005

`A365336(A000188(n+1)²²)`
-/

namespace A365334.P18260638838188878005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 ((A000188 (n + 1) ^ 2) ^ 2).toNat

end

end A365334.P18260638838188878005

namespace A365334

/-- `A365336(A000188(n+1)²²)` -/
def P18260638838188878005.Spec : Prop :=
  ∀ n, P18260638838188878005.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P1360017047116128485

`A365336((n+1)*A008833(n+1))`
-/

namespace A365334.P1360017047116128485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A365334.P1360017047116128485

namespace A365334

/-- `A365336((n+1)*A008833(n+1))` -/
def P1360017047116128485.Spec : Prop :=
  ∀ n, P1360017047116128485.a n = A365334 (n + 1)

end A365334

/-! ## A365334.P17833980019705381163

`A365336(A003557((n+1)²))`
-/

namespace A365334.P17833980019705381163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A003557 ((n + 1) ^ 2)).toNat

end

end A365334.P17833980019705381163

namespace A365334

/-- `A365336(A003557((n+1)²))` -/
def P17833980019705381163.Spec : Prop :=
  ∀ n, P17833980019705381163.a n = A365334 (n + 1)

end A365334

/-!
# A365335: The number of exponentially odd coreful divisors of the square root of the largest square dividing n.

The programs for A365335, the canonical program `A365335.P17558981587538508230` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365335 has offset 1).

The definition of A365335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365335.P17558981587538508230

`A325837(A000188(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365335

/-- `A325837(A000188(n+1))` -/
def P17558981587538508230.Spec : Prop :=
  ∀ n, P17558981587538508230.a n = A365335 (n + 1)

theorem P17558981587538508230.correct : P17558981587538508230.Spec := by
  intro n
  simp only [A365335, Nat.add_sub_cancel]

end A365335

/-! ## A365335.P6802726948866606095

`A348041(Δ[A007094(n)])`
-/

namespace A365335.P6802726948866606095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348041 (f1 (n + 1) - f1 n).toNat

end

end A365335.P6802726948866606095

namespace A365335

/-- `A348041(Δ[A007094(n)])` -/
def P6802726948866606095.Spec : Prop :=
  ∀ n, P6802726948866606095.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P6163875290726352613

`A380560(Δ[A007094(n)])`
-/

namespace A365335.P6163875290726352613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380560 (f1 (n + 1) - f1 n).toNat

end

end A365335.P6163875290726352613

namespace A365335

/-- `A380560(Δ[A007094(n)])` -/
def P6163875290726352613.Spec : Prop :=
  ∀ n, P6163875290726352613.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P12018130390561110271

`A151692(Δ[A007094(n)])!`
-/

namespace A365335.P12018130390561110271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151692 (f1 (n + 1) - f1 n).toNat).toNat

end

end A365335.P12018130390561110271

namespace A365335

/-- `A151692(Δ[A007094(n)])!` -/
def P12018130390561110271.Spec : Prop :=
  ∀ n, (P12018130390561110271.a n : ℤ) = A365335 (n + 1)

end A365335

/-! ## A365335.P14855515266997531486

`A196564(3^A007814(n+1))`
-/

namespace A365335.P14855515266997531486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A007814 (n + 1) : ℤ))).toNat

end

end A365335.P14855515266997531486

namespace A365335

/-- `A196564(3^A007814(n+1))` -/
def P14855515266997531486.Spec : Prop :=
  ∀ n, P14855515266997531486.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P6959343213163078616

`∏{e}[A007318(xor(n, n+1)+1), #]`
-/

namespace A365335.P6959343213163078616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365335.P6959343213163078616

namespace A365335

/-- `∏{e}[A007318(xor(n, n+1)+1), #]` -/
def P6959343213163078616.Spec : Prop :=
  ∀ n, (P6959343213163078616.a n : ℤ) = A365335 (n + 1)

end A365335

/-! ## A365335.P11721705904807258550

`∏{e}[A288102(n+1), A187187(#)]`
-/

namespace A365335.P11721705904807258550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A187187 (Nat.factorization (f1 n).natAbs p)

end

end A365335.P11721705904807258550

namespace A365335

/-- `∏{e}[A288102(n+1), A187187(#)]` -/
def P11721705904807258550.Spec : Prop :=
  ∀ n, P11721705904807258550.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P15648953770509336336

`A344590(A212180(n+1)^6)`
-/

namespace A365335.P15648953770509336336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A212180 (n + 1) ^ 6).toNat

end

end A365335.P15648953770509336336

namespace A365335

/-- `A344590(A212180(n+1)^6)` -/
def P15648953770509336336.Spec : Prop :=
  ∀ n, P15648953770509336336.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P9166040428324284629

`gcd(2, A273866(A006519(n+1)))`
-/

namespace A365335.P9166040428324284629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A273866 (A006519 (n + 1)).toNat)

end

end A365335.P9166040428324284629

namespace A365335

/-- `gcd(2, A273866(A006519(n+1)))` -/
def P9166040428324284629.Spec : Prop :=
  ∀ n, (P9166040428324284629.a n : ℤ) = A365335 (n + 1)

end A365335

/-! ## A365335.P14000483983203991286

`A091050(A206581(n+5)*A366902(n+1))`
-/

namespace A365335.P14000483983203991286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A206581 (n + 5) * A366902 (n + 1)).toNat

end

end A365335.P14000483983203991286

namespace A365335

/-- `A091050(A206581(n+5)*A366902(n+1))` -/
def P14000483983203991286.Spec : Prop :=
  ∀ n, P14000483983203991286.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P8474255797759899312

`A151692(8*A000005(n+1))`
-/

namespace A365335.P8474255797759899312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (8 * A000005 (n + 1)).toNat

end

end A365335.P8474255797759899312

namespace A365335

/-- `A151692(8*A000005(n+1))` -/
def P8474255797759899312.Spec : Prop :=
  ∀ n, P8474255797759899312.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P4657870606385067336

`A046951(A372361(n+2)+1)`
-/

namespace A365335.P4657870606385067336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A372361 (n + 2) + 1).toNat

end

end A365335.P4657870606385067336

namespace A365335

/-- `A046951(A372361(n+2)+1)` -/
def P4657870606385067336.Spec : Prop :=
  ∀ n, P4657870606385067336.a n = A365335 (n + 1)

end A365335

/-! ## A365335.P4704446654533861633

`A316782(A034964(3*n+4)-A084558(n))`
-/

namespace A365335.P4704446654533861633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (A034964 (3 * n + 4) - A084558 n).toNat

end

end A365335.P4704446654533861633

namespace A365335

/-- `A316782(A034964(3*n+4)-A084558(n))` -/
def P4704446654533861633.Spec : Prop :=
  ∀ n, P4704446654533861633.a n = A365335 (n + 1)

end A365335

/-!
# A365336: The sum of exponentially odd divisors of the square root of the largest square dividing n.

The programs for A365336, the canonical program `A365336.P7053891073090803951` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365336 has offset 1).

The definition of A365336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365336.P7053891073090803951

`A033634(A000188(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365336

/-- `A033634(A000188(n+1))` -/
def P7053891073090803951.Spec : Prop :=
  ∀ n, P7053891073090803951.a n = A365336 (n + 1)

theorem P7053891073090803951.correct : P7053891073090803951.Spec := by
  intro n
  simp only [A365336, Nat.add_sub_cancel]

end A365336

/-! ## A365336.P13742667806783489654

`A033634(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A365336.P13742667806783489654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A365336.P13742667806783489654

namespace A365336

/-- `A033634(∏{p}[n+1, #^val(n+1, #²)])` -/
def P13742667806783489654.Spec : Prop :=
  ∀ n, P13742667806783489654.a n = A365336 (n + 1)

end A365336

/-! ## A365336.P9692856159621038574

`A033634(A057918(n+1)+1)`
-/

namespace A365336.P9692856159621038574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A057918 (n + 1) + 1).toNat

end

end A365336.P9692856159621038574

namespace A365336

/-- `A033634(A057918(n+1)+1)` -/
def P9692856159621038574.Spec : Prop :=
  ∀ n, P9692856159621038574.a n = A365336 (n + 1)

theorem P9692856159621038574.correct : P9692856159621038574.Spec := by
  intro n
  simp only [A365336, Nat.add_sub_cancel, A365336.P9692856159621038574.a, A365336.P7053891073090803951.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A033634, A033634.P7485427623378639722.f1, A033634.P7485427623378639722.a, A057918, A057918.P8779601029509101892.a, A295316, A295316.P1217032388411146580.a, A005361, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365336

/-! ## A365336.P14121448022967487351

`A033634((n+1)/A019554(n+1))`
-/

namespace A365336.P14121448022967487351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A365336.P14121448022967487351

namespace A365336

/-- `A033634((n+1)/A019554(n+1))` -/
def P14121448022967487351.Spec : Prop :=
  ∀ n, P14121448022967487351.a n = A365336 (n + 1)

end A365336

/-! ## A365336.P16748659908514083626

`A033634(A355264(n+1)/(n+1))`
-/

namespace A365336.P16748659908514083626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((A355264 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A365336.P16748659908514083626

namespace A365336

/-- `A033634(A355264(n+1)/(n+1))` -/
def P16748659908514083626.Spec : Prop :=
  ∀ n, P16748659908514083626.a n = A365336 (n + 1)

end A365336

/-! ## A365336.P4955417993438769215

`A033634(sqrt((n+1)/A007913(n+1)))`
-/

namespace A365336.P4955417993438769215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A365336.P4955417993438769215

namespace A365336

/-- `A033634(sqrt((n+1)/A007913(n+1)))` -/
def P4955417993438769215.Spec : Prop :=
  ∀ n, P4955417993438769215.a n = A365336 (n + 1)

end A365336

/-! ## A365336.P7200232098283412679

`A033634(sqrt(A059479(n+1))/(n+1))`
-/

namespace A365336.P7200232098283412679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway (Real.sqrt (A059479 (n + 1) : ℝ) / (n + 1 : ℝ))).toNat

end

end A365336.P7200232098283412679

namespace A365336

/-- `A033634(sqrt(A059479(n+1))/(n+1))` -/
def P7200232098283412679.Spec : Prop :=
  ∀ n, P7200232098283412679.a n = A365336 (n + 1)

end A365336

/-!
# A365337: The sum of divisors of the largest exponentially odd number dividing n.

The programs for A365337, the canonical program `A365337.P17860016322392539795` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365337 has offset 1).

The definition of A365337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365337.P17860016322392539795

`A000203(A350390(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365337

/-- `A000203(A350390(n+1))` -/
def P17860016322392539795.Spec : Prop :=
  ∀ n, P17860016322392539795.a n = A365337 (n + 1)

theorem P17860016322392539795.correct : P17860016322392539795.Spec := by
  intro n
  simp only [A365337, Nat.add_sub_cancel]

end A365337

/-! ## A365337.P286385339639631645

`∑{d}[((1+n)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #], #]`
-/

namespace A365337.P286385339639631645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365337.P286385339639631645

namespace A365337

/-- `∑{d}[((1+n)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #], #]` -/
def P286385339639631645.Spec : Prop :=
  ∀ n, (P286385339639631645.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P16355101885610281145

`∑{d}[A350390(n+1), #]`
-/

namespace A365337.P16355101885610281145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365337.P16355101885610281145

namespace A365337

/-- `∑{d}[A350390(n+1), #]` -/
def P16355101885610281145.Spec : Prop :=
  ∀ n, (P16355101885610281145.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P7810670426127002977

`∑{d}[(n+1)/A336643(n+1), #]`
-/

namespace A365337.P7810670426127002977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336643 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365337.P7810670426127002977

namespace A365337

/-- `∑{d}[(n+1)/A336643(n+1), #]` -/
def P7810670426127002977.Spec : Prop :=
  ∀ n, (P7810670426127002977.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P7237865804039239416

`∑{d}[gcd(n+1, A011262(n+1)), #]`
-/

namespace A365337.P7237865804039239416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A365337.P7237865804039239416

namespace A365337

/-- `∑{d}[gcd(n+1, A011262(n+1)), #]` -/
def P7237865804039239416.Spec : Prop :=
  ∀ n, (P7237865804039239416.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P7315000844456980442

`∑{d}[(n+1)/A007913((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A365337.P7315000844456980442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365337.P7315000844456980442

namespace A365337

/-- `∑{d}[(n+1)/A007913((n+1)/∏{p}[n+1, #]), #]` -/
def P7315000844456980442.Spec : Prop :=
  ∀ n, (P7315000844456980442.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P1699633462762195865

`A000203(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])`
-/

namespace A365337.P1699633462762195865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A365337.P1699633462762195865

namespace A365337

/-- `A000203(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])` -/
def P1699633462762195865.Spec : Prop :=
  ∀ n, P1699633462762195865.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P10255948587449665951

`∑{d}[A102631(A019554(n+1)), #]`
-/

namespace A365337.P10255948587449665951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A019554 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365337.P10255948587449665951

namespace A365337

/-- `∑{d}[A102631(A019554(n+1)), #]` -/
def P10255948587449665951.Spec : Prop :=
  ∀ n, (P10255948587449665951.a n : ℤ) = A365337 (n + 1)

end A365337

/-! ## A365337.P2531423297530924389

`A000203((n+1)/A336643(n+1))`
-/

namespace A365337.P2531423297530924389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A365337.P2531423297530924389

namespace A365337

/-- `A000203((n+1)/A336643(n+1))` -/
def P2531423297530924389.Spec : Prop :=
  ∀ n, P2531423297530924389.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P973724708102148750

`A188999((n+1)/A336643(n+1))`
-/

namespace A365337.P973724708102148750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A365337.P973724708102148750

namespace A365337

/-- `A188999((n+1)/A336643(n+1))` -/
def P973724708102148750.Spec : Prop :=
  ∀ n, P973724708102148750.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P15918216316029844806

`A392087(n+1)/A173557(n+1)`
-/

namespace A365337.P15918216316029844806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392087 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A365337.P15918216316029844806

namespace A365337

/-- `A392087(n+1)/A173557(n+1)` -/
def P15918216316029844806.Spec : Prop :=
  ∀ n, P15918216316029844806.a n = (A365337 (n + 1) : ℚ)

end A365337

/-! ## A365337.P9399836213832521397

`A351569((n+1)/A336643(n+1))`
-/

namespace A365337.P9399836213832521397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A365337.P9399836213832521397

namespace A365337

/-- `A351569((n+1)/A336643(n+1))` -/
def P9399836213832521397.Spec : Prop :=
  ∀ n, P9399836213832521397.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P8628318221173041648

`A365349((n+1)/A336643(n+1))`
-/

namespace A365337.P8628318221173041648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365349 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A365337.P8628318221173041648

namespace A365337

/-- `A365349((n+1)/A336643(n+1))` -/
def P8628318221173041648.Spec : Prop :=
  ∀ n, P8628318221173041648.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P4853133175291143425

`A351569(A350390(2*n+1-n))`
-/

namespace A365337.P4853133175291143425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A350390 (2 * n + 1 - n)).toNat

end

end A365337.P4853133175291143425

namespace A365337

/-- `A351569(A350390(2*n+1-n))` -/
def P4853133175291143425.Spec : Prop :=
  ∀ n, P4853133175291143425.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P5996590153863549121

`A000203((n+1)/A007913(A011264(n+1)))`
-/

namespace A365337.P5996590153863549121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (A011264 (n + 1)).toNat : ℚ))).toNat

end

end A365337.P5996590153863549121

namespace A365337

/-- `A000203((n+1)/A007913(A011264(n+1)))` -/
def P5996590153863549121.Spec : Prop :=
  ∀ n, P5996590153863549121.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P1288817928306532782

`A335341(A053143(n+1))`
-/

namespace A365337.P1288817928306532782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A053143 (n + 1)).toNat

end

end A365337.P1288817928306532782

namespace A365337

/-- `A335341(A053143(n+1))` -/
def P1288817928306532782.Spec : Prop :=
  ∀ n, P1288817928306532782.a n = A365337 (n + 1)

end A365337

/-! ## A365337.P13206841335201012485

`∑{d}[A003557(A019554(n+1)²), #]`
-/

namespace A365337.P13206841335201012485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A019554 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365337.P13206841335201012485

namespace A365337

/-- `∑{d}[A003557(A019554(n+1)²), #]` -/
def P13206841335201012485.Spec : Prop :=
  ∀ n, (P13206841335201012485.a n : ℤ) = A365337 (n + 1)

end A365337

/-!
# A365339: Length of the longest subsequence of 1,...,n on which the Euler totient function phi A000010 is nondecreasing.

The programs for A365339, there is no canonical definition to state claims against.
-/

/-! ## A365339.P11268266033790025430

`A365397(n+1)+A365398(n+1)-A365400(n+1)`
-/

namespace A365339.P11268266033790025430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365397 (n + 1) + (A365398 (n + 1) - A365400 (n + 1))

end

end A365339.P11268266033790025430

/-! ## A365339.P16308450194081355437

`∑[A363676(A318885(n+1))%2]+1`
-/

namespace A365339.P16308450194081355437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363676 (A318885 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A365339.P16308450194081355437

/-! ## A365339.P14570542509130334686

`∑[A128370(3*n+1)%2]`
-/

namespace A365339.P14570542509130334686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128370 (3 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365339.P14570542509130334686

/-! ## A365339.P11743470093319580047

`A000523(2*A024431(n))`
-/

namespace A365339.P11743470093319580047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A024431 n).toNat

end

end A365339.P11743470093319580047

/-! ## A365339.P989706685249969274

`A238845(2*A024431(n))`
-/

namespace A365339.P989706685249969274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * A024431 n).toNat

end

end A365339.P989706685249969274

/-!
# A365340: a(n) = (4*n)!/(3*n+1)!.

The programs for A365340, the canonical program `A365340.P3771936836746351564` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365340 has offset 0).

The definition of A365340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365340.P16897110384681019452

`A000142(n)*A002293(n)`
-/

namespace A365340.P16897110384681019452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002293 n

end

end A365340.P16897110384681019452

namespace A365340

/-- `A000142(n)*A002293(n)` -/
def P16897110384681019452.Spec : Prop :=
  ∀ n, P16897110384681019452.a n = A365340 n

end A365340

/-! ## A365340.P3771936836746351564

`(4*n)!/(3*n+1)!`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365340

/-- `(4*n)!/(3*n+1)!` -/
def P3771936836746351564.Spec : Prop :=
  ∀ n, P3771936836746351564.a n = (A365340 n : ℚ)

end A365340

/-! ## A365340.P10380968604212052493

`n!*A002293(n)`
-/

namespace A365340.P10380968604212052493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002293 n

end

end A365340.P10380968604212052493

namespace A365340

/-- `n!*A002293(n)` -/
def P10380968604212052493.Spec : Prop :=
  ∀ n, P10380968604212052493.a n = A365340 n

end A365340

/-! ## A365340.P9506447721090738388

`n!*A124753(3*n)`
-/

namespace A365340.P9506447721090738388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A124753 (3 * n)

end

end A365340.P9506447721090738388

namespace A365340

/-- `n!*A124753(3*n)` -/
def P9506447721090738388.Spec : Prop :=
  ∀ n, P9506447721090738388.a n = A365340 n

end A365340

/-! ## A365340.P11995415187031541296

`n!*A243663(∑[abs(1-n)])`
-/

namespace A365340.P11995415187031541296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A243663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365340.P11995415187031541296

namespace A365340

/-- `n!*A243663(∑[abs(1-n)])` -/
def P11995415187031541296.Spec : Prop :=
  ∀ n, P11995415187031541296.a n = A365340 n

end A365340

/-!
# A365341: a(n) = (5*n)!/(4*n+1)!.

The programs for A365341, the canonical program `A365341.P11718460894782233926` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365341 has offset 0).

The definition of A365341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365341.P11718460894782233926

`A000142(n)*A002294(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A365341

/-- `A000142(n)*A002294(n)` -/
def P11718460894782233926.Spec : Prop :=
  ∀ n, P11718460894782233926.a n = A365341 n

theorem P11718460894782233926.correct : P11718460894782233926.Spec := by
  intro n
  simp only [A365341]

end A365341

/-! ## A365341.P11713646044572414409

`C(5*n, n)/(4*n+1)*n!`
-/

namespace A365341.P11713646044572414409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℚ) / (4 * n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A365341.P11713646044572414409

namespace A365341

/-- `C(5*n, n)/(4*n+1)*n!` -/
def P11713646044572414409.Spec : Prop :=
  ∀ n, P11713646044572414409.a n = (A365341 n : ℚ)

end A365341

/-! ## A365341.P17950000289589348926

`n!*A002294(n)`
-/

namespace A365341.P17950000289589348926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002294 n

end

end A365341.P17950000289589348926

namespace A365341

/-- `n!*A002294(n)` -/
def P17950000289589348926.Spec : Prop :=
  ∀ n, P17950000289589348926.a n = A365341 n

end A365341

/-! ## A365341.P3010858438822457065

`n!*A143546(2*n)`
-/

namespace A365341.P3010858438822457065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A143546 (2 * n)

end

end A365341.P3010858438822457065

namespace A365341

/-- `n!*A143546(2*n)` -/
def P3010858438822457065.Spec : Prop :=
  ∀ n, P3010858438822457065.a n = A365341 n

end A365341

/-! ## A365341.P5299438432080939339

`A001449(n)/(4*n+1)*n!`
-/

namespace A365341.P5299438432080939339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (4 * n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A365341.P5299438432080939339

namespace A365341

/-- `A001449(n)/(4*n+1)*n!` -/
def P5299438432080939339.Spec : Prop :=
  ∀ n, P5299438432080939339.a n = (A365341 n : ℚ)

end A365341

/-!
# A365342: Positions of records in A087704.

The programs for A365342, there is no canonical definition to state claims against.
-/

/-! ## A365342.P6153739876049928406

`A243855(A007228(n))-floor(2*ϕ*n)%2`
-/

namespace A365342.P6153739876049928406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243855 (A007228 n).toNat - Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

end

end A365342.P6153739876049928406

/-!
# A365344: a(0) = 0; for n > 0, a(n) is the largest distance squared on a square spiral between a(n-1) and any previous occurrence of a(n-1). If a(n-1) has not previously occurred then a(n) = 0.

The programs for A365344, there is no canonical definition to state claims against.
-/

/-! ## A365344.P1789518102544222185

`A366543(n)%A003064(n)`
-/

namespace A365344.P1789518102544222185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366543 n) (A003064 n)

end

end A365344.P1789518102544222185

/-! ## A365344.P10063169715129363195

`lcm(A123271(n+2), A366543(n))`
-/

namespace A365344.P10063169715129363195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A366543 n)

end

end A365344.P10063169715129363195

/-! ## A365344.P7027722775059244997

`A366543(n/A123271(n+2)²)`
-/

namespace A365344.P7027722775059244997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366543 (SequenceMachineLib.roundAway ((n : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A365344.P7027722775059244997

/-! ## A365344.P10383300248315134738

`A003415(A181848(n+1))*A366543(n)`
-/

namespace A365344.P10383300248315134738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A181848 (n + 1)).toNat * A366543 n

end

end A365344.P10383300248315134738

/-! ## A365344.P254946018039045944

`A366543(n)%A000018(n)`
-/

namespace A365344.P254946018039045944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366543 n) (A000018 n)

end

end A365344.P254946018039045944

/-!
# A365345: The number of divisors of the smallest square divisible by n.

The programs for A365345, the canonical program `A365345.P13783101688852051196` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365345 has offset 1).

The definition of A365345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365345.P13783101688852051196

`A000005(A053143(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365345

/-- `A000005(A053143(n+1))` -/
def P13783101688852051196.Spec : Prop :=
  ∀ n, P13783101688852051196.a n = A365345 (n + 1)

theorem P13783101688852051196.correct : P13783101688852051196.Spec := by
  intro n
  simp only [A365345, Nat.add_sub_cancel]

end A365345

/-! ## A365345.P18412857252904031703

`A000005((n+1)*A007913(n+1))`
-/

namespace A365345.P18412857252904031703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A365345.P18412857252904031703

namespace A365345

/-- `A000005((n+1)*A007913(n+1))` -/
def P18412857252904031703.Spec : Prop :=
  ∀ n, P18412857252904031703.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P9370295386580777371

`∏{e}[n+1, or(1, #+1)]`
-/

namespace A365345.P9370295386580777371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 (Nat.factorization (f1 n) p + 1)

end

end A365345.P9370295386580777371

namespace A365345

/-- `∏{e}[n+1, or(1, #+1)]` -/
def P9370295386580777371.Spec : Prop :=
  ∀ n, (P9370295386580777371.a n : ℤ) = A365345 (n + 1)

end A365345

/-! ## A365345.P18048554032672449114

`∏{e}[A350390(n+1), #+2]`
-/

namespace A365345.P18048554032672449114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A365345.P18048554032672449114

namespace A365345

/-- `∏{e}[A350390(n+1), #+2]` -/
def P18048554032672449114.Spec : Prop :=
  ∀ n, (P18048554032672449114.a n : ℤ) = A365345 (n + 1)

end A365345

/-! ## A365345.P8513054959742976245

`∏{e}[n+1, C(#+2, 2)]/(1-A338228(n+1)+n)`
-/

namespace A365345.P8513054959742976245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℚ) / (1 - A338228 (n + 1) + (n : ℤ) : ℚ)

end

end A365345.P8513054959742976245

namespace A365345

/-- `∏{e}[n+1, C(#+2, 2)]/(1-A338228(n+1)+n)` -/
def P8513054959742976245.Spec : Prop :=
  ∀ n, P8513054959742976245.a n = (A365345 (n + 1) : ℚ)

end A365345

/-! ## A365345.P2117643016685214547

`A048691(A019554(n+1))`
-/

namespace A365345.P2117643016685214547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A019554 (n + 1)).toNat

end

end A365345.P2117643016685214547

namespace A365345

/-- `A048691(A019554(n+1))` -/
def P2117643016685214547.Spec : Prop :=
  ∀ n, P2117643016685214547.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P14215709724659991794

`A343443(A350390(n+1))`
-/

namespace A365345.P14215709724659991794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A350390 (n + 1)).toNat

end

end A365345.P14215709724659991794

namespace A365345

/-- `A343443(A350390(n+1))` -/
def P14215709724659991794.Spec : Prop :=
  ∀ n, P14215709724659991794.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P7705444287529346300

`A007425(n+1)/A046951(n+1)`
-/

namespace A365345.P7705444287529346300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A046951 (n + 1) : ℚ)

end

end A365345.P7705444287529346300

namespace A365345

/-- `A007425(n+1)/A046951(n+1)` -/
def P7705444287529346300.Spec : Prop :=
  ∀ n, P7705444287529346300.a n = (A365345 (n + 1) : ℚ)

end A365345

/-! ## A365345.P17291291475254391301

`∑{d}[n+1, A008966(#)*A365402((n+1)/#)]`
-/

namespace A365345.P17291291475254391301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365402 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365345.P17291291475254391301

namespace A365345

/-- `∑{d}[n+1, A008966(#)*A365402((n+1)/#)]` -/
def P17291291475254391301.Spec : Prop :=
  ∀ n, P17291291475254391301.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P10351876669954406450

`A007425(n+1)/gcd(A007425(n+1), A140773(n+1))`
-/

namespace A365345.P10351876669954406450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (Int.gcd (A007425 (n + 1)) (A140773 (n + 1)) : ℚ)

end

end A365345.P10351876669954406450

namespace A365345

/-- `A007425(n+1)/gcd(A007425(n+1), A140773(n+1))` -/
def P10351876669954406450.Spec : Prop :=
  ∀ n, P10351876669954406450.a n = (A365345 (n + 1) : ℚ)

end A365345

/-! ## A365345.P16232405949797816789

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², #+1]`
-/

namespace A365345.P16232405949797816789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A365345.P16232405949797816789

namespace A365345

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², #+1]` -/
def P16232405949797816789.Spec : Prop :=
  ∀ n, (P16232405949797816789.a n : ℤ) = A365345 (n + 1)

end A365345

/-! ## A365345.P6636800365638116059

`∏{e}[(n+1)*∏{p}[n+1, #], A109613(#)]`
-/

namespace A365345.P6636800365638116059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A109613 (Nat.factorization (f1 n) p)

end

end A365345.P6636800365638116059

namespace A365345

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A109613(#)]` -/
def P6636800365638116059.Spec : Prop :=
  ∀ n, P6636800365638116059.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P2900272515343276661

`A000005(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)`
-/

namespace A365345.P2900272515343276661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2)).toNat

end

end A365345.P2900272515343276661

namespace A365345

/-- `A000005(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)` -/
def P2900272515343276661.Spec : Prop :=
  ∀ n, P2900272515343276661.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P2542590036138687543

`A000005((n+1)*(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)`
-/

namespace A365345.P2542590036138687543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / (((∑ k ∈ Finset.range (f1 n + 1), (⌊((k + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 1) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)) ^ 2 : ℤ) : ℚ)))).toNat

end

end A365345.P2542590036138687543

namespace A365345

/-- `A000005((n+1)*(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)` -/
def P2542590036138687543.Spec : Prop :=
  ∀ n, P2542590036138687543.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P17598647756118664211

`A000005(A019554(n+1)²)`
-/

namespace A365345.P17598647756118664211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 (n + 1) ^ 2).toNat

end

end A365345.P17598647756118664211

namespace A365345

/-- `A000005(A019554(n+1)²)` -/
def P17598647756118664211.Spec : Prop :=
  ∀ n, P17598647756118664211.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P11337053925382930865

`A000005(A019554(n+1)*A019554(n+1))`
-/

namespace A365345.P11337053925382930865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A365345.P11337053925382930865

namespace A365345

/-- `A000005(A019554(n+1)*A019554(n+1))` -/
def P11337053925382930865.Spec : Prop :=
  ∀ n, P11337053925382930865.a n = A365345 (n + 1)

theorem P11337053925382930865.correct : P11337053925382930865.Spec := by
  intro n
  simp only [A365345, Nat.add_sub_cancel, A365345.P11337053925382930865.a, A365345.P13783101688852051196.a, A000005, A000005.P16091521709108585461.a, A019554, A019554.P934973065694448032.a, A053143, A053143.P2973590149006615306.a, A007913, A007913.P8131970495124731496.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A365345

/-! ## A365345.P10195860944743954563

`A000005(A000290((n+1)/A000188(n+1)))`
-/

namespace A365345.P10195860944743954563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A365345.P10195860944743954563

namespace A365345

/-- `A000005(A000290((n+1)/A000188(n+1)))` -/
def P10195860944743954563.Spec : Prop :=
  ∀ n, P10195860944743954563.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P11524918431399983843

`A000005((A071974(n+1)*A071975(n+1))²)`
-/

namespace A365345.P11524918431399983843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A071974 (n + 1) * A071975 (n + 1)) ^ 2).toNat

end

end A365345.P11524918431399983843

namespace A365345

/-- `A000005((A071974(n+1)*A071975(n+1))²)` -/
def P11524918431399983843.Spec : Prop :=
  ∀ n, P11524918431399983843.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P12914662929166241648

`∑{d}[A053143(n+1), A336643(A336643(#))]`
-/

namespace A365345.P12914662929166241648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A336643 (A336643 d).toNat

end

end A365345.P12914662929166241648

namespace A365345

/-- `∑{d}[A053143(n+1), A336643(A336643(#))]` -/
def P12914662929166241648.Spec : Prop :=
  ∀ n, P12914662929166241648.a n = A365345 (n + 1)

end A365345

/-! ## A365345.P2889849641621474616

`A365331(A064549(n+1))`
-/

namespace A365345.P2889849641621474616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365331 (A064549 (n + 1)).toNat

end

end A365345.P2889849641621474616

namespace A365345

/-- `A365331(A064549(n+1))` -/
def P2889849641621474616.Spec : Prop :=
  ∀ n, P2889849641621474616.a n = A365345 (n + 1)

end A365345

/-!
# A365346: The sum of divisors of the smallest square divisible by n.

The programs for A365346, the canonical program `A365346.P13037943139291011402` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365346 has offset 1).

The definition of A365346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365346.P13037943139291011402

`A000203(A053143(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365346

/-- `A000203(A053143(n+1))` -/
def P13037943139291011402.Spec : Prop :=
  ∀ n, P13037943139291011402.a n = A365346 (n + 1)

theorem P13037943139291011402.correct : P13037943139291011402.Spec := by
  intro n
  simp only [A365346, Nat.add_sub_cancel]

end A365346

/-! ## A365346.P119757053439755660

`A000203((n+1)*A007913(n+1))`
-/

namespace A365346.P119757053439755660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A365346.P119757053439755660

namespace A365346

/-- `A000203((n+1)*A007913(n+1))` -/
def P119757053439755660.Spec : Prop :=
  ∀ n, P119757053439755660.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P9255357033657750397

`A065764((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A365346.P9255357033657750397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A365346.P9255357033657750397

namespace A365346

/-- `A065764((n+1)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P9255357033657750397.Spec : Prop :=
  ∀ n, P9255357033657750397.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P12559924441619483172

`A065764(A019554(n+1))`
-/

namespace A365346.P12559924441619483172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A019554 (n + 1)).toNat

end

end A365346.P12559924441619483172

namespace A365346

/-- `A065764(A019554(n+1))` -/
def P12559924441619483172.Spec : Prop :=
  ∀ n, P12559924441619483172.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P14965157267831599017

`A001001(n+1)/A035316(n+1)`
-/

namespace A365346.P14965157267831599017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001001 (n + 1) : ℚ) / (A035316 (n + 1) : ℚ)

end

end A365346.P14965157267831599017

namespace A365346

/-- `A001001(n+1)/A035316(n+1)` -/
def P14965157267831599017.Spec : Prop :=
  ∀ n, P14965157267831599017.a n = (A365346 (n + 1) : ℚ)

end A365346

/-! ## A365346.P15516120778435890059

`∑{d}[((1+n)/∏{p}[n+1, #^val(n+1, #²)])², #]`
-/

namespace A365346.P15516120778435890059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365346.P15516120778435890059

namespace A365346

/-- `∑{d}[((1+n)/∏{p}[n+1, #^val(n+1, #²)])², #]` -/
def P15516120778435890059.Spec : Prop :=
  ∀ n, (P15516120778435890059.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P10904728177430949170

`∑{d}[(n+1)*(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]², #]`
-/

namespace A365346.P10904728177430949170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (((∑ k ∈ Finset.range (f2 n + 1), (⌊((k + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 1) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)) ^ 2 : ℤ) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365346.P10904728177430949170

namespace A365346

/-- `∑{d}[(n+1)*(n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]², #]` -/
def P10904728177430949170.Spec : Prop :=
  ∀ n, (P10904728177430949170.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P7294387350913006423

`∑{d}[A053143(n+1), #]`
-/

namespace A365346.P7294387350913006423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365346.P7294387350913006423

namespace A365346

/-- `∑{d}[A053143(n+1), #]` -/
def P7294387350913006423.Spec : Prop :=
  ∀ n, (P7294387350913006423.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P9842334091958188193

`∑{d}[A019554(n+1)², #]`
-/

namespace A365346.P9842334091958188193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365346.P9842334091958188193

namespace A365346

/-- `∑{d}[A019554(n+1)², #]` -/
def P9842334091958188193.Spec : Prop :=
  ∀ n, (P9842334091958188193.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P15968932365252541398

`∑{d}[A071975(A350390(n+1))², #]`
-/

namespace A365346.P15968932365252541398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A350390 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365346.P15968932365252541398

namespace A365346

/-- `∑{d}[A071975(A350390(n+1))², #]` -/
def P15968932365252541398.Spec : Prop :=
  ∀ n, (P15968932365252541398.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P9858234643728372163

`∑{d}[A008833((1+n)*∏{p}[n+1, #]), #]`
-/

namespace A365346.P9858234643728372163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((1 + n) * (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365346.P9858234643728372163

namespace A365346

/-- `∑{d}[A008833((1+n)*∏{p}[n+1, #]), #]` -/
def P9858234643728372163.Spec : Prop :=
  ∀ n, (P9858234643728372163.a n : ℤ) = A365346 (n + 1)

end A365346

/-! ## A365346.P8747264480231477581

`A000203(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)`
-/

namespace A365346.P8747264480231477581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2)).toNat

end

end A365346.P8747264480231477581

namespace A365346

/-- `A000203(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)` -/
def P8747264480231477581.Spec : Prop :=
  ∀ n, P8747264480231477581.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P17329818766697759214

`A000203(A019554(n+1)²)`
-/

namespace A365346.P17329818766697759214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019554 (n + 1) ^ 2).toNat

end

end A365346.P17329818766697759214

namespace A365346

/-- `A000203(A019554(n+1)²)` -/
def P17329818766697759214.Spec : Prop :=
  ∀ n, P17329818766697759214.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P7514258775137343955

`A000203(A019554(n+1)*A019554(n+1))`
-/

namespace A365346.P7514258775137343955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A365346.P7514258775137343955

namespace A365346

/-- `A000203(A019554(n+1)*A019554(n+1))` -/
def P7514258775137343955.Spec : Prop :=
  ∀ n, P7514258775137343955.a n = A365346 (n + 1)

theorem P7514258775137343955.correct : P7514258775137343955.Spec := by
  intro n
  simp only [A365346, Nat.add_sub_cancel, A365346.P7514258775137343955.a, A365346.P13037943139291011402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A019554, A019554.P934973065694448032.a, A053143, A053143.P2973590149006615306.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A365346

/-! ## A365346.P17285343726815622352

`A000203(A000290((n+1)/A000188(n+1)))`
-/

namespace A365346.P17285343726815622352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A365346.P17285343726815622352

namespace A365346

/-- `A000203(A000290((n+1)/A000188(n+1)))` -/
def P17285343726815622352.Spec : Prop :=
  ∀ n, P17285343726815622352.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P9904162928099044375

`A000203(A351600(n+1)/A035316(n+1))`
-/

namespace A365346.P9904162928099044375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A351600 (n + 1) : ℚ) / (A035316 (n + 1) : ℚ))).toNat

end

end A365346.P9904162928099044375

namespace A365346

/-- `A000203(A351600(n+1)/A035316(n+1))` -/
def P9904162928099044375.Spec : Prop :=
  ∀ n, P9904162928099044375.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P2407570698070330929

`A000203(A000188(n+1)²*A055491(n+1))`
-/

namespace A365346.P2407570698070330929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1) ^ 2 * A055491 (n + 1)).toNat

end

end A365346.P2407570698070330929

namespace A365346

/-- `A000203(A000188(n+1)²*A055491(n+1))` -/
def P2407570698070330929.Spec : Prop :=
  ∀ n, P2407570698070330929.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P7432109604913401913

`A351568(A019554(n+1)²)`
-/

namespace A365346.P7432109604913401913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A019554 (n + 1) ^ 2).toNat

end

end A365346.P7432109604913401913

namespace A365346

/-- `A351568(A019554(n+1)²)` -/
def P7432109604913401913.Spec : Prop :=
  ∀ n, P7432109604913401913.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P6527533268701845728

`A365332(A064549(n+1))`
-/

namespace A365346.P6527533268701845728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365332 (A064549 (n + 1)).toNat

end

end A365346.P6527533268701845728

namespace A365346

/-- `A365332(A064549(n+1))` -/
def P6527533268701845728.Spec : Prop :=
  ∀ n, P6527533268701845728.a n = A365346 (n + 1)

end A365346

/-! ## A365346.P13484258967149392284

`A365332(A019554(n+1)²)`
-/

namespace A365346.P13484258967149392284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365332 (A019554 (n + 1) ^ 2).toNat

end

end A365346.P13484258967149392284

namespace A365346

/-- `A365332(A019554(n+1)²)` -/
def P13484258967149392284.Spec : Prop :=
  ∀ n, P13484258967149392284.a n = A365346 (n + 1)

end A365346

/-!
# A365347: The sum of divisors of the smallest number whose square is divisible by n.

The programs for A365347, the canonical program `A365347.P15432224358011895387` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365347 has offset 1).

The definition of A365347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365347.P15432224358011895387

`A000203(A019554(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A365347

/-- `A000203(A019554(n+1))` -/
def P15432224358011895387.Spec : Prop :=
  ∀ n, P15432224358011895387.a n = A365347 (n + 1)

theorem P15432224358011895387.correct : P15432224358011895387.Spec := by
  intro n
  simp only [A365347, Nat.add_sub_cancel]

end A365347

/-! ## A365347.P10073127993179490588

`∑{d}[(1+n)/∏{p}[n+1, #^val(n+1, #²)], #]`
-/

namespace A365347.P10073127993179490588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365347.P10073127993179490588

namespace A365347

/-- `∑{d}[(1+n)/∏{p}[n+1, #^val(n+1, #²)], #]` -/
def P10073127993179490588.Spec : Prop :=
  ∀ n, (P10073127993179490588.a n : ℤ) = A365347 (n + 1)

end A365347

/-! ## A365347.P1019036325102299068

`∑{d}[A019554(n+1), #]`
-/

namespace A365347.P1019036325102299068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365347.P1019036325102299068

namespace A365347

/-- `∑{d}[A019554(n+1), #]` -/
def P1019036325102299068.Spec : Prop :=
  ∀ n, (P1019036325102299068.a n : ℤ) = A365347 (n + 1)

end A365347

/-! ## A365347.P8408239804392290374

`∑{d}[sqrt(A053143(n+1)), #]`
-/

namespace A365347.P8408239804392290374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A365347.P8408239804392290374

namespace A365347

/-- `∑{d}[sqrt(A053143(n+1)), #]` -/
def P8408239804392290374.Spec : Prop :=
  ∀ n, (P8408239804392290374.a n : ℤ) = A365347 (n + 1)

end A365347

/-! ## A365347.P7865169348034363449

`A000203((1+n)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A365347.P7865169348034363449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A365347.P7865169348034363449

namespace A365347

/-- `A000203((1+n)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P7865169348034363449.Spec : Prop :=
  ∀ n, P7865169348034363449.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P13523150179541708831

`∑{d}[A071975(A350390(n+1)), #]`
-/

namespace A365347.P13523150179541708831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A350390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365347.P13523150179541708831

namespace A365347

/-- `∑{d}[A071975(A350390(n+1)), #]` -/
def P13523150179541708831.Spec : Prop :=
  ∀ n, (P13523150179541708831.a n : ℤ) = A365347 (n + 1)

end A365347

/-! ## A365347.P4195410793490348736

`A000203((n+1)/A000188(n+1))`
-/

namespace A365347.P4195410793490348736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A365347.P4195410793490348736

namespace A365347

/-- `A000203((n+1)/A000188(n+1))` -/
def P4195410793490348736.Spec : Prop :=
  ∀ n, P4195410793490348736.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P17211394900283757243

`∑{d}[A000188(n+1)*A007913(n+1), #]`
-/

namespace A365347.P17211394900283757243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365347.P17211394900283757243

namespace A365347

/-- `∑{d}[A000188(n+1)*A007913(n+1), #]` -/
def P17211394900283757243.Spec : Prop :=
  ∀ n, (P17211394900283757243.a n : ℤ) = A365347 (n + 1)

end A365347

/-! ## A365347.P4718588141798913282

`A000203(A340774(n+1)/A069290(n+1))`
-/

namespace A365347.P4718588141798913282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A340774 (n + 1) : ℚ) / (A069290 (n + 1) : ℚ))).toNat

end

end A365347.P4718588141798913282

namespace A365347

/-- `A000203(A340774(n+1)/A069290(n+1))` -/
def P4718588141798913282.Spec : Prop :=
  ∀ n, P4718588141798913282.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P15201278768016709922

`A390664(A355264(n+1))`
-/

namespace A365347.P15201278768016709922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390664 (A355264 (n + 1)).toNat

end

end A365347.P15201278768016709922

namespace A365347

/-- `A390664(A355264(n+1))` -/
def P15201278768016709922.Spec : Prop :=
  ∀ n, P15201278768016709922.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P7774526630929018806

`A340774(A019554(n+1)²)/A019554(n+1)`
-/

namespace A365347.P7774526630929018806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340774 (A019554 (n + 1) ^ 2).toNat : ℚ) / (A019554 (n + 1) : ℚ)

end

end A365347.P7774526630929018806

namespace A365347

/-- `A340774(A019554(n+1)²)/A019554(n+1)` -/
def P7774526630929018806.Spec : Prop :=
  ∀ n, P7774526630929018806.a n = (A365347 (n + 1) : ℚ)

end A365347

/-! ## A365347.P2999912000890501342

`A069290(A053143(n+1))`
-/

namespace A365347.P2999912000890501342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A053143 (n + 1)).toNat

end

end A365347.P2999912000890501342

namespace A365347

/-- `A069290(A053143(n+1))` -/
def P2999912000890501342.Spec : Prop :=
  ∀ n, P2999912000890501342.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P17559860012577362100

`A069290(A064549(n+1))`
-/

namespace A365347.P17559860012577362100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A064549 (n + 1)).toNat

end

end A365347.P17559860012577362100

namespace A365347

/-- `A069290(A064549(n+1))` -/
def P17559860012577362100.Spec : Prop :=
  ∀ n, P17559860012577362100.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P13937487768846133013

`A069290(A019554(n+1)²)`
-/

namespace A365347.P13937487768846133013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A019554 (n + 1) ^ 2).toNat

end

end A365347.P13937487768846133013

namespace A365347

/-- `A069290(A019554(n+1)²)` -/
def P13937487768846133013.Spec : Prop :=
  ∀ n, P13937487768846133013.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P16445734881260939

`A390664((n+1)*A019554(n+1))`
-/

namespace A365347.P16445734881260939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390664 ((n + 1 : ℤ) * A019554 (n + 1)).toNat

end

end A365347.P16445734881260939

namespace A365347

/-- `A390664((n+1)*A019554(n+1))` -/
def P16445734881260939.Spec : Prop :=
  ∀ n, P16445734881260939.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P9598494707716276941

`A390664((n+1)*A019555(n+1))`
-/

namespace A365347.P9598494707716276941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390664 ((n + 1 : ℤ) * A019555 (n + 1)).toNat

end

end A365347.P9598494707716276941

namespace A365347

/-- `A390664((n+1)*A019555(n+1))` -/
def P9598494707716276941.Spec : Prop :=
  ∀ n, P9598494707716276941.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P12057804888136497134

`A000203(A000188((n+1)*A007947(n+1)))`
-/

namespace A365347.P12057804888136497134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A365347.P12057804888136497134

namespace A365347

/-- `A000203(A000188((n+1)*A007947(n+1)))` -/
def P12057804888136497134.Spec : Prop :=
  ∀ n, P12057804888136497134.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P9965995123931580178

`A000203(A019555((n+1)*A019555(n+1)))`
-/

namespace A365347.P9965995123931580178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019555 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A365347.P9965995123931580178

namespace A365347

/-- `A000203(A019555((n+1)*A019555(n+1)))` -/
def P9965995123931580178.Spec : Prop :=
  ∀ n, P9965995123931580178.a n = A365347 (n + 1)

end A365347

/-! ## A365347.P15065312041521438228

`A069290((A340774(n+1)/A069290(n+1))²)`
-/

namespace A365347.P15065312041521438228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (SequenceMachineLib.roundAway (((A340774 (n + 1) : ℚ) / (A069290 (n + 1) : ℚ)) ^ 2)).toNat

end

end A365347.P15065312041521438228

namespace A365347

/-- `A069290((A340774(n+1)/A069290(n+1))²)` -/
def P15065312041521438228.Spec : Prop :=
  ∀ n, P15065312041521438228.a n = A365347 (n + 1)

end A365347

/-!
# A365348: The number of divisors of the smallest exponentially odd number divisible by n.

The programs for A365348, the canonical program `A365348.P17779330658801885884` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365348 has offset 1).

The definition of A365348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365348.P17779330658801885884

`A000005(A356191(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365348

/-- `A000005(A356191(n+1))` -/
def P17779330658801885884.Spec : Prop :=
  ∀ n, P17779330658801885884.a n = A365348 (n + 1)

theorem P17779330658801885884.correct : P17779330658801885884.Spec := by
  intro n
  simp only [A365348, Nat.add_sub_cancel]

end A365348

/-! ## A365348.P9740393214345441376

`∏{e}[n+1, or(1, #)+1]`
-/

namespace A365348.P9740393214345441376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lor 1 (Nat.factorization (f1 n) p) + 1)

end

end A365348.P9740393214345441376

namespace A365348

/-- `∏{e}[n+1, or(1, #)+1]` -/
def P9740393214345441376.Spec : Prop :=
  ∀ n, (P9740393214345441376.a n : ℤ) = A365348 (n + 1)

end A365348

/-! ## A365348.P2195816550060842338

`∏{e}[n+1, gcd(2, #)+#]`
-/

namespace A365348.P2195816550060842338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.gcd 2 (Nat.factorization (f1 n) p) + Nat.factorization (f1 n) p)

end

end A365348.P2195816550060842338

namespace A365348

/-- `∏{e}[n+1, gcd(2, #)+#]` -/
def P2195816550060842338.Spec : Prop :=
  ∀ n, (P2195816550060842338.a n : ℤ) = A365348 (n + 1)

end A365348

/-! ## A365348.P9968842019585914652

`∏{e}[A356191(n+1), #+1]`
-/

namespace A365348.P9968842019585914652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A365348.P9968842019585914652

namespace A365348

/-- `∏{e}[A356191(n+1), #+1]` -/
def P9968842019585914652.Spec : Prop :=
  ∀ n, (P9968842019585914652.a n : ℤ) = A365348 (n + 1)

end A365348

/-! ## A365348.P9475194426057743052

`A034444(n+1)*A046951(n+1)`
-/

namespace A365348.P9475194426057743052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A046951 (n + 1)

end

end A365348.P9475194426057743052

namespace A365348

/-- `A034444(n+1)*A046951(n+1)` -/
def P9475194426057743052.Spec : Prop :=
  ∀ n, P9475194426057743052.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P5888596010611568568

`A056624(n+1)*A400140(n+1)`
-/

namespace A365348.P5888596010611568568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1) * A400140 (n + 1)

end

end A365348.P5888596010611568568

namespace A365348

/-- `A056624(n+1)*A400140(n+1)` -/
def P5888596010611568568.Spec : Prop :=
  ∀ n, P5888596010611568568.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P7473760138603671818

`A369757(n+1)/A056671(n+1)`
-/

namespace A365348.P7473760138603671818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369757 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A365348.P7473760138603671818

namespace A365348

/-- `A369757(n+1)/A056671(n+1)` -/
def P7473760138603671818.Spec : Prop :=
  ∀ n, P7473760138603671818.a n = (A365348 (n + 1) : ℚ)

end A365348

/-! ## A365348.P403087303140218488

`∑{d}[n+1, A046951(#)*A189022((n+1)/#)]`
-/

namespace A365348.P403087303140218488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A189022 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365348.P403087303140218488

namespace A365348

/-- `∑{d}[n+1, A046951(#)*A189022((n+1)/#)]` -/
def P403087303140218488.Spec : Prop :=
  ∀ n, P403087303140218488.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P10373725784749593054

`∑{d}[n+1, A008966(#)*A365401((n+1)/#)]`
-/

namespace A365348.P10373725784749593054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365348.P10373725784749593054

namespace A365348

/-- `∑{d}[n+1, A008966(#)*A365401((n+1)/#)]` -/
def P10373725784749593054.Spec : Prop :=
  ∀ n, P10373725784749593054.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P4836125652234252808

`A000005(A000188(n+1))*A034444(n+1)`
-/

namespace A365348.P4836125652234252808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat * A034444 (n + 1)

end

end A365348.P4836125652234252808

namespace A365348

/-- `A000005(A000188(n+1))*A034444(n+1)` -/
def P4836125652234252808.Spec : Prop :=
  ∀ n, P4836125652234252808.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P2417229448177879015

`A000005(A007947(n+1))*A046951(n+1)`
-/

namespace A365348.P2417229448177879015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A046951 (n + 1)

end

end A365348.P2417229448177879015

namespace A365348

/-- `A000005(A007947(n+1))*A046951(n+1)` -/
def P2417229448177879015.Spec : Prop :=
  ∀ n, P2417229448177879015.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P13184449021877160589

`A034444(n+1)*A365171(A008833(n+1))`
-/

namespace A365348.P13184449021877160589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A365171 (A008833 (n + 1)).toNat

end

end A365348.P13184449021877160589

namespace A365348

/-- `A034444(n+1)*A365171(A008833(n+1))` -/
def P13184449021877160589.Spec : Prop :=
  ∀ n, P13184449021877160589.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P9113160441062021241

`(A056626(n+1)+A056624(n+1))*A034444(n+1)`
-/

namespace A365348.P9113160441062021241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056626 (n + 1) + A056624 (n + 1)) * A034444 (n + 1)

end

end A365348.P9113160441062021241

namespace A365348

/-- `(A056626(n+1)+A056624(n+1))*A034444(n+1)` -/
def P9113160441062021241.Spec : Prop :=
  ∀ n, P9113160441062021241.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P6945035434040797545

`A000005(A000188(n+1))*A000005(A007947(n+1))`
-/

namespace A365348.P6945035434040797545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat * A000005 (A007947 (n + 1)).toNat

end

end A365348.P6945035434040797545

namespace A365348

/-- `A000005(A000188(n+1))*A000005(A007947(n+1))` -/
def P6945035434040797545.Spec : Prop :=
  ∀ n, P6945035434040797545.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P10392153717955031731

`A000005(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])`
-/

namespace A365348.P10392153717955031731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A365348.P10392153717955031731

namespace A365348

/-- `A000005(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])` -/
def P10392153717955031731.Spec : Prop :=
  ∀ n, P10392153717955031731.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P13901608361757732664

`A000005((n+1)*A336643(n+1))`
-/

namespace A365348.P13901608361757732664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365348.P13901608361757732664

namespace A365348

/-- `A000005((n+1)*A336643(n+1))` -/
def P13901608361757732664.Spec : Prop :=
  ∀ n, P13901608361757732664.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P10040094026089799289

`A000005((n+1)*A007913(A011264(n+1)))`
-/

namespace A365348.P10040094026089799289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A007913 (A011264 (n + 1)).toNat).toNat

end

end A365348.P10040094026089799289

namespace A365348

/-- `A000005((n+1)*A007913(A011264(n+1)))` -/
def P10040094026089799289.Spec : Prop :=
  ∀ n, P10040094026089799289.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P4896902595125446644

`∏{e}[(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])², #]`
-/

namespace A365348.P4896902595125446644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f3 n), p)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A365348.P4896902595125446644

namespace A365348

/-- `∏{e}[(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])², #]` -/
def P4896902595125446644.Spec : Prop :=
  ∀ n, (P4896902595125446644.a n : ℤ) = A365348 (n + 1)

end A365348

/-! ## A365348.P17490479588976697068

`A286324(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])`
-/

namespace A365348.P17490479588976697068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A365348.P17490479588976697068

namespace A365348

/-- `A286324(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])` -/
def P17490479588976697068.Spec : Prop :=
  ∀ n, P17490479588976697068.a n = A365348 (n + 1)

end A365348

/-! ## A365348.P16403164058311930053

`A286324((n+1)*A336643(n+1))`
-/

namespace A365348.P16403164058311930053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365348.P16403164058311930053

namespace A365348

/-- `A286324((n+1)*A336643(n+1))` -/
def P16403164058311930053.Spec : Prop :=
  ∀ n, P16403164058311930053.a n = A365348 (n + 1)

end A365348

/-!
# A365349: The sum of divisors of the smallest exponentially odd number divisible by n.

The programs for A365349, the canonical program `A365349.P11526077117599832562` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365349 has offset 1).

The definition of A365349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365349.P11526077117599832562

`A000203(A356191(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A365349

/-- `A000203(A356191(n+1))` -/
def P11526077117599832562.Spec : Prop :=
  ∀ n, P11526077117599832562.a n = A365349 (n + 1)

theorem P11526077117599832562.correct : P11526077117599832562.Spec := by
  intro n
  simp only [A365349, Nat.add_sub_cancel]

end A365349

/-! ## A365349.P3728343931561984160

`∑{d}[∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #], #]`
-/

namespace A365349.P3728343931561984160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A365349.P3728343931561984160

namespace A365349

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #], #]` -/
def P3728343931561984160.Spec : Prop :=
  ∀ n, (P3728343931561984160.a n : ℤ) = A365349 (n + 1)

end A365349

/-! ## A365349.P1890247032248760844

`∑{d}[A356191(1+n), #]`
-/

namespace A365349.P1890247032248760844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A365349.P1890247032248760844

namespace A365349

/-- `∑{d}[A356191(1+n), #]` -/
def P1890247032248760844.Spec : Prop :=
  ∀ n, (P1890247032248760844.a n : ℤ) = A365349 (n + 1)

end A365349

/-! ## A365349.P16340506096656062422

`2^∑{p}[n+1, log2(#+1)]*A035316(n+1)`
-/

namespace A365349.P16340506096656062422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p + 1 : ℝ)) * (A035316 (n + 1) : ℝ)

end

end A365349.P16340506096656062422

namespace A365349

/-- `2^∑{p}[n+1, log2(#+1)]*A035316(n+1)` -/
def P16340506096656062422.Spec : Prop :=
  ∀ n, P16340506096656062422.a n = (A365349 (n + 1) : ℝ)

end A365349

/-! ## A365349.P12075249378079664485

`A035316(n+1)*A048250(n+1)`
-/

namespace A365349.P12075249378079664485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) * A048250 (n + 1)

end

end A365349.P12075249378079664485

namespace A365349

/-- `A035316(n+1)*A048250(n+1)` -/
def P12075249378079664485.Spec : Prop :=
  ∀ n, P12075249378079664485.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P3282623675174724825

`A367990(n+1)*A400144(n+1)`
-/

namespace A365349.P3282623675174724825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367990 (n + 1) * A400144 (n + 1)

end

end A365349.P3282623675174724825

namespace A365349

/-- `A367990(n+1)*A400144(n+1)` -/
def P3282623675174724825.Spec : Prop :=
  ∀ n, P3282623675174724825.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P520029671147301349

`A369758(n+1)/A091306(n+1)`
-/

namespace A365349.P520029671147301349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369758 (n + 1) : ℚ) / (A091306 (n + 1) : ℚ)

end

end A365349.P520029671147301349

namespace A365349

/-- `A369758(n+1)/A091306(n+1)` -/
def P520029671147301349.Spec : Prop :=
  ∀ n, P520029671147301349.a n = (A365349 (n + 1) : ℚ)

end A365349

/-! ## A365349.P1958775157486991279

`A000203(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])`
-/

namespace A365349.P1958775157486991279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A365349.P1958775157486991279

namespace A365349

/-- `A000203(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])` -/
def P1958775157486991279.Spec : Prop :=
  ∀ n, P1958775157486991279.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P16794545500176522683

`A000203((n+1)*A336643(n+1))`
-/

namespace A365349.P16794545500176522683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365349.P16794545500176522683

namespace A365349

/-- `A000203((n+1)*A336643(n+1))` -/
def P16794545500176522683.Spec : Prop :=
  ∀ n, P16794545500176522683.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P15441312043317467879

`A000203(A007947(n+1)*A008833(n+1))`
-/

namespace A365349.P15441312043317467879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) * A008833 (n + 1)).toNat

end

end A365349.P15441312043317467879

namespace A365349

/-- `A000203(A007947(n+1)*A008833(n+1))` -/
def P15441312043317467879.Spec : Prop :=
  ∀ n, P15441312043317467879.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P4425206865375265831

`A000203((n+1)*A007913(A011264(n+1)))`
-/

namespace A365349.P4425206865375265831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A007913 (A011264 (n + 1)).toNat).toNat

end

end A365349.P4425206865375265831

namespace A365349

/-- `A000203((n+1)*A007913(A011264(n+1)))` -/
def P4425206865375265831.Spec : Prop :=
  ∀ n, P4425206865375265831.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P2158161656441466658

`A000203(A000188(n+1)²*A007947(n+1))`
-/

namespace A365349.P2158161656441466658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000188 (n + 1) ^ 2 * A007947 (n + 1)).toNat

end

end A365349.P2158161656441466658

namespace A365349

/-- `A000203(A000188(n+1)²*A007947(n+1))` -/
def P2158161656441466658.Spec : Prop :=
  ∀ n, P2158161656441466658.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P5023248655095805715

`A351569((n+1)*A336643(n+1))`
-/

namespace A365349.P5023248655095805715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365349.P5023248655095805715

namespace A365349

/-- `A351569((n+1)*A336643(n+1))` -/
def P5023248655095805715.Spec : Prop :=
  ∀ n, P5023248655095805715.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P11417303717999599876

`A188999((n+1)*A336643(n+1))`
-/

namespace A365349.P11417303717999599876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365349.P11417303717999599876

namespace A365349

/-- `A188999((n+1)*A336643(n+1))` -/
def P11417303717999599876.Spec : Prop :=
  ∀ n, P11417303717999599876.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P650974105627521918

`A365337((n+1)*A336643(n+1))`
-/

namespace A365349.P650974105627521918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365337 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365349.P650974105627521918

namespace A365349

/-- `A365337((n+1)*A336643(n+1))` -/
def P650974105627521918.Spec : Prop :=
  ∀ n, P650974105627521918.a n = A365349 (n + 1)

end A365349

/-! ## A365349.P13912669096057502613

`A365337(A064549(n+1))`
-/

namespace A365349.P13912669096057502613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365337 (A064549 (n + 1)).toNat

end

end A365349.P13912669096057502613

namespace A365349

/-- `A365337(A064549(n+1))` -/
def P13912669096057502613.Spec : Prop :=
  ∀ n, P13912669096057502613.a n = A365349 (n + 1)

end A365349

/-!
# A365353: Number of free corner-connected 4-dimensional polyhypercubes with n cells.

The programs for A365353, there is no canonical definition to state claims against.
-/

/-! ## A365353.P8879814822131523289

`A324161(A330469(n)+A235046(n+2))`
-/

namespace A365353.P8879814822131523289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (A330469 n + A235046 (n + 2)).toNat

end

end A365353.P8879814822131523289

/-!
# A365354: Number of free edge-connected 4-dimensional polyhypercubes with n cells.

The programs for A365354, there is no canonical definition to state claims against.
-/

/-! ## A365354.P1668923048053119344

`A026904(A086093(n+1))`
-/

namespace A365354.P1668923048053119344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026904 (A086093 (n + 1)).toNat

end

end A365354.P1668923048053119344

/-!
# A365356: Number of free face-connected 4-dimensional polyhypercubes with n cells.

The programs for A365356, there is no canonical definition to state claims against.
-/

/-! ## A365356.P10104311503716739722

`A135941(A064092(n))`
-/

namespace A365356.P10104311503716739722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135941 (A064092 n).toNat

end

end A365356.P10104311503716739722

/-!
# A365357: Number of free 4-dimensional polyhypercubes with n cells, allowing corner- and face-connections.

The programs for A365357, there is no canonical definition to state claims against.
-/

/-! ## A365357.P6790026906702061962

`A046100(A376099(n)+A008646(n))`
-/

namespace A365357.P6790026906702061962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A376099 n + A008646 n).toNat

end

end A365357.P6790026906702061962

/-!
# A365360: Number of free 4-dimensional polyhypercubes with n cells, allowing corner- and 3-face-connections.

The programs for A365360, there is no canonical definition to state claims against.
-/

/-! ## A365360.P9581409512667708196

`A077773(C(n²+2, n)-n)`
-/

namespace A365360.P9581409512667708196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (Nat.choose (n ^ 2 + 2) n - n)

end

end A365360.P9581409512667708196

/-!
# A365363: Number of free 4-dimensional polyhypercubes with n cells, allowing face- and 3-face-connections.

The programs for A365363, there is no canonical definition to state claims against.
-/

/-! ## A365363.P8154277459087377966

`A004396(∑[A206401(n+1)])`
-/

namespace A365363.P8154277459087377966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365363.P8154277459087377966

/-!
# A365368: First integer > n reached under iteration of map x -> (5/3)*round(x) when started at n, or -1 if no such integer is ever reached.

The programs for A365368, there is no canonical definition to state claims against.
-/

/-! ## A365368.P8843308603799601662

`5*A365369(n+1)`
-/

namespace A365368.P8843308603799601662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A365369 (n + 1)

end

end A365368.P8843308603799601662

/-! ## A365368.P8847868099604348311

`A008587(A365369(n+1))`
-/

namespace A365368.P8847868099604348311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A365369 (n + 1)).toNat

end

end A365368.P8847868099604348311

/-! ## A365368.P8991451779003434621

`A008706(A365369(n+1)%A016840(n))`
-/

namespace A365368.P8991451779003434621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A365369 (n + 1)) (A016840 n)).toNat

end

end A365368.P8991451779003434621

/-! ## A365368.P9883610196594531323

`A008706(A365369(n+1))%A101767(n+1)`
-/

namespace A365368.P9883610196594531323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A365369 (n + 1)).toNat) (A101767 (n + 1))

end

end A365368.P9883610196594531323

/-!
# A365369: A365368/5, except when A365368(n) = -1, then a(n) = -1.

The programs for A365369, there is no canonical definition to state claims against.
-/

/-! ## A365369.P5530703784231530687

`A365368(n+1)/5`
-/

namespace A365369.P5530703784231530687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365368 (n + 1) : ℚ) / 5

end

end A365369.P5530703784231530687

/-! ## A365369.P11447372532239944561

`A255590(A365368(1+n))`
-/

namespace A365369.P11447372532239944561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (A365368 (1 + n)).toNat

end

end A365369.P11447372532239944561

/-!
# A365372: Array read by ascending antidiagonals: A(n, k) = n*(k*n^2 - 1) with k > 0.

The programs for A365372, the canonical program `A365372.P17172574265970221799` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365372 has offset 1).

The definition of A365372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*((col(n)+1)*(row(n)-col(n)+1)²-1)` (program `A365372.P17172574265970221799`, by `A365372.P17172574265970221799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A365372.P17172574265970221799

`(row(n)-col(n)+1)*((col(n)+1)*(row(n)-col(n)+1)²-1)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365372

/-- `(row(n)-col(n)+1)*((col(n)+1)*(row(n)-col(n)+1)²-1)` -/
def P17172574265970221799.Spec : Prop :=
  ∀ n, P17172574265970221799.a n = A365372 (n + 1)

theorem P17172574265970221799.correct : P17172574265970221799.Spec := by
  intro n
  simp only [A365372, Nat.add_sub_cancel]

end A365372

/-!
# A365373: a(n) = n*(3*n^4 + 15*n^3 + 25*n^2 - 15*n - 28)/60.

The programs for A365373, the canonical program `A365373.P4114578376088839030` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365373 has offset 0).

The definition of A365373 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A365373.anchor (n : ℕ) : (A365373 n : ℚ) = ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 25 * n ^ 2 : ℤ) - (15 * n : ℤ) - 28) : ℚ) / 60` in `Proof.A365.A365373`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A365373.P11834288433902299372

`ogf((7x^2-2x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A365373.P11834288433902299372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 7, -2, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A365373.P11834288433902299372

namespace A365373

/-- `ogf((7x^2-2x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11834288433902299372.Spec : Prop :=
  ∀ n, P11834288433902299372.a n = A365373 n

end A365373

/-! ## A365373.P4114578376088839030

`n*(3*n^4+15*n^3+25*n²-15*n-28)/60`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365373

/-- `n*(3*n^4+15*n^3+25*n²-15*n-28)/60` -/
def P4114578376088839030.Spec : Prop :=
  ∀ n, P4114578376088839030.a n = (A365373 n : ℚ)

end A365373

/-! ## A365373.P568408877586129829

`∑[C(n+1, 2)²-n]`
-/

namespace A365373.P568408877586129829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365373.P568408877586129829

namespace A365373

/-- `∑[C(n+1, 2)²-n]` -/
def P568408877586129829.Spec : Prop :=
  ∀ n, P568408877586129829.a n = A365373 n

end A365373

/-! ## A365373.P18411740504530032012

`∑[xor(2, ∑[n]²+2)-n]`
-/

namespace A365373.P18411740504530032012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365373.P18411740504530032012

namespace A365373

/-- `∑[xor(2, ∑[n]²+2)-n]` -/
def P18411740504530032012.Spec : Prop :=
  ∀ n, P18411740504530032012.a n = A365373 n

end A365373

/-! ## A365373.P704490643829651857

`∑[∑[n]^or(2, char[1])-n]`
-/

namespace A365373.P704490643829651857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.lor 2 (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365373.P704490643829651857

namespace A365373

/-- `∑[∑[n]^or(2, char[1])-n]` -/
def P704490643829651857.Spec : Prop :=
  ∀ n, P704490643829651857.a n = A365373 n

end A365373

/-! ## A365373.P7117060925241830521

`∑[∑[n]^xor(2, char[1])-n]`
-/

namespace A365373.P7117060925241830521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.xor 2 (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365373.P7117060925241830521

namespace A365373

/-- `∑[∑[n]^xor(2, char[1])-n]` -/
def P7117060925241830521.Spec : Prop :=
  ∀ n, P7117060925241830521.a n = A365373 n

end A365373

/-! ## A365373.P10383070932109088351

`∑[(∑[n+1]+1)*C(n, 2)]`
-/

namespace A365373.P10383070932109088351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365373.P10383070932109088351

namespace A365373

/-- `∑[(∑[n+1]+1)*C(n, 2)]` -/
def P10383070932109088351.Spec : Prop :=
  ∀ n, (P10383070932109088351.a n : ℤ) = A365373 n

end A365373

/-! ## A365373.P15078430890761429292

`a(n-1)+∑[n]²-n` with `a(0)=0`
-/

namespace A365373.P15078430890761429292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))

end

end A365373.P15078430890761429292

namespace A365373

/-- `a(n-1)+∑[n]²-n` -/
def P15078430890761429292.Spec : Prop :=
  ∀ n, P15078430890761429292.a n = A365373 n

end A365373

/-! ## A365373.P3020402757331150443

`∑[n]²-(n-a(n-1))` with `a(0)=0`
-/

namespace A365373.P3020402757331150443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((n : ℤ) - a (n - 1))

end

end A365373.P3020402757331150443

namespace A365373

/-- `∑[n]²-(n-a(n-1))` -/
def P3020402757331150443.Spec : Prop :=
  ∀ n, P3020402757331150443.a n = A365373 n

end A365373

/-! ## A365373.P11543749436110629914

`∑[n^3]+a(n-1)-n` with `a(0)=0`
-/

namespace A365373.P11543749436110629914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) - (n : ℤ)

end

end A365373.P11543749436110629914

namespace A365373

/-- `∑[n^3]+a(n-1)-n` -/
def P11543749436110629914.Spec : Prop :=
  ∀ n, P11543749436110629914.a n = A365373 n

end A365373

/-! ## A365373.P6156900166141899917

`∑[n^3]-floor(n-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A365373.P6156900166141899917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 1))

end

end A365373.P6156900166141899917

namespace A365373

/-- `∑[n^3]-floor(n-a(n-1))` -/
def P6156900166141899917.Spec : Prop :=
  ∀ n, P6156900166141899917.a n = A365373 n

end A365373

/-! ## A365373.P15512030007993616312

`C(n+1, 2)²+a(n-1)-n` with `a(0)=0`
-/

namespace A365373.P15512030007993616312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) + (a (n - 1) - (n : ℤ))

end

end A365373.P15512030007993616312

namespace A365373

/-- `C(n+1, 2)²+a(n-1)-n` -/
def P15512030007993616312.Spec : Prop :=
  ∀ n, P15512030007993616312.a n = A365373 n

end A365373

/-! ## A365373.P14315295809977544948

`A024166(n)-∑[n]`
-/

namespace A365373.P14315295809977544948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A365373.P14315295809977544948

namespace A365373

/-- `A024166(n)-∑[n]` -/
def P14315295809977544948.Spec : Prop :=
  ∀ n, P14315295809977544948.a n = A365373 n

end A365373

/-!
# A365374: Numbers k such that squaring each digit and concatenating them forms a palindrome.

The programs for A365374, there is no canonical definition to state claims against.
-/

/-! ## A365374.P13364747644875004016

`eq[A004086(A048385(n)), A048385(n)]`
-/

namespace A365374.P13364747644875004016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A048385 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365374.P13364747644875004016

/-! ## A365374.P1659956839460421237

`eq[1, A136522(A048385(n))]`
-/

namespace A365374.P1659956839460421237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365374.P1659956839460421237

/-! ## A365374.P7675984908119011934

`eq[A033665(3*n)²/2, A033665(n)]`
-/

namespace A365374.P7675984908119011934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033665 (3 * n) ^ 2 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A365374.P7675984908119011934

/-! ## A365374.P9579556653455060071

`eq[A033665(3*n), A290734(A033665(n))]`
-/

namespace A365374.P9579556653455060071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290734 (A033665 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365374.P9579556653455060071

/-!
# A365376: Number of subsets of {1..n} with a subset summing to n.

The programs for A365376, there is no canonical definition to state claims against.
-/

/-! ## A365376.P11657900410751532031

`2^n-A365377(n)`
-/

namespace A365376.P11657900410751532031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365377 n

end

end A365376.P11657900410751532031

/-! ## A365376.P14152936650221055336

`abs(A000079(n)-A365377(n))`
-/

namespace A365376.P14152936650221055336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A365377 n|

end

end A365376.P14152936650221055336

/-! ## A365376.P2579579923238629323

`A000051(n)-(A365377(n)+1)`
-/

namespace A365376.P2579579923238629323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A365377 n + 1)

end

end A365376.P2579579923238629323

/-! ## A365376.P14168301748122558381

`A000225(n)-A365377(n)+1`
-/

namespace A365376.P14168301748122558381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A365377 n + 1

end

end A365376.P14168301748122558381

/-! ## A365376.P12479211670133045575

`A085489(n)+A088809(n)-A365377(n)`
-/

namespace A365376.P12479211670133045575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A365377 n)

end

end A365376.P12479211670133045575

/-!
# A365377: Number of subsets of {1..n} without a subset summing to n.

The programs for A365377, there is no canonical definition to state claims against.
-/

/-! ## A365377.P5965836770839255187

`2^n-A365376(n)`
-/

namespace A365377.P5965836770839255187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365376 n

end

end A365377.P5965836770839255187

/-! ## A365377.P14861003744425107713

`abs(A000079(n)-A365376(n))`
-/

namespace A365377.P14861003744425107713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A365376 n|

end

end A365377.P14861003744425107713

/-! ## A365377.P12918778630857751840

`and(-A365376(n), A000225(n))`
-/

namespace A365377.P12918778630857751840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A365376 n) (A000225 n)

end

end A365377.P12918778630857751840

/-! ## A365377.P8918900023263325477

`A000051(n)-(A365376(n)+1)`
-/

namespace A365377.P8918900023263325477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A365376 n + 1)

end

end A365377.P8918900023263325477

/-! ## A365377.P17058400291237672936

`A000918(n)-A365376(n)+2`
-/

namespace A365377.P17058400291237672936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A365376 n + 2

end

end A365377.P17058400291237672936

/-!
# A365378: Number of partitions of positive integers < n whose distinct parts cannot be linearly combined using nonnegative coefficients to obtain n.

The programs for A365378, there is no canonical definition to state claims against.
-/

/-! ## A365378.P15095359440668663403

`A000070(n)-(A365379(n)+1)`
-/

namespace A365378.P15095359440668663403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - (A365379 n + 1)

end

end A365378.P15095359440668663403

/-! ## A365378.P298177563781462466

`A026905(n+1)-(A365379(n)+A000041(n+1))`
-/

namespace A365378.P298177563781462466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - (A365379 n + A000041 (n + 1))

end

end A365378.P298177563781462466

/-!
# A365379: Number of partitions of positive integers <= n whose distinct parts can be linearly combined using nonnegative coefficients to obtain n.

The programs for A365379, there is no canonical definition to state claims against.
-/

/-! ## A365379.P7986816224394510116

`A000070(n)-1-A365378(n)`
-/

namespace A365379.P7986816224394510116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - 1 - A365378 n

end

end A365379.P7986816224394510116

/-!
# A365380: Number of subsets of {1..n} that cannot be linearly combined using nonnegative coefficients to obtain n.

The programs for A365380, there is no canonical definition to state claims against.
-/

/-! ## A365380.P15413388056430901851

`2^(n+1)-A365073(n+1)`
-/

namespace A365380.P15413388056430901851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A365073 (n + 1)

end

end A365380.P15413388056430901851

/-! ## A365380.P15696784723994982681

`A085489(n+1)+A088809(n+1)-A365073(n+1)`
-/

namespace A365380.P15696784723994982681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 (n + 1) + (A088809 (n + 1) - A365073 (n + 1))

end

end A365380.P15696784723994982681

/-! ## A365380.P4961321335453471150

`A088314(n+1)+A365322(n+1)-A365073(n+1)`
-/

namespace A365380.P4961321335453471150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 (n + 1) + (A365322 (n + 1) - A365073 (n + 1))

end

end A365380.P4961321335453471150

/-! ## A365380.P16420810757688116560

`A367222(n+1)+A367223(n+1)-A365073(n+1)`
-/

namespace A365380.P16420810757688116560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367222 (n + 1) + (A367223 (n + 1) - A365073 (n + 1))

end

end A365380.P16420810757688116560

/-! ## A365380.P16861280894983136129

`A365376(n+1)+A365377(n+1)-A365073(n+1)`
-/

namespace A365380.P16861280894983136129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365376 (n + 1) + (A365377 (n + 1) - A365073 (n + 1))

end

end A365380.P16861280894983136129

/-!
# A365383: Triangle read by rows where T(n,k) is the number of integer partitions of n that can be linearly combined with nonnegative coefficients to obtain k.

The programs for A365383, there is no canonical definition to state claims against.
-/

/-! ## A365383.P14074410278359285746

`A328855(A081954(n+1))`
-/

namespace A365383.P14074410278359285746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328855 (A081954 (n + 1)).toNat

end

end A365383.P14074410278359285746

/-! ## A365383.P7563888361251984949

`A368105(A108687(n+1))`
-/

namespace A365383.P7563888361251984949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368105 (A108687 (n + 1)).toNat

end

end A365383.P7563888361251984949

/-! ## A365383.P9833582001121292434

`A352550(A081954(n+1)^2)`
-/

namespace A365383.P9833582001121292434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (A081954 (n + 1) ^ 2).toNat

end

end A365383.P9833582001121292434

/-! ## A365383.P4272112990885292393

`A368105(A108748(n+1))`
-/

namespace A365383.P4272112990885292393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368105 (A108748 (n + 1)).toNat

end

end A365383.P4272112990885292393

/-! ## A365383.P10445377955542971829

`row(A255555(n+1)%A103393(3*n+1))`
-/

namespace A365383.P10445377955542971829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Int.tmod (A255555 (n + 1)) (A103393 (3 * n + 1))).toNat

end

end A365383.P10445377955542971829

/-!
# A365385: a(n) = A331410(A163511(n)).

The programs for A365385, the canonical program `A365385.P9341511432702516708` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365385 has offset 0).

The definition of A365385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365385.P9341511432702516708

`A331410(A163511(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365385

/-- `A331410(A163511(n))` -/
def P9341511432702516708.Spec : Prop :=
  ∀ n, P9341511432702516708.a n = A365385 n

theorem P9341511432702516708.correct : P9341511432702516708.Spec := by
  intro n
  simp only [A365385]

end A365385

/-! ## A365385.P975483233404336093

`A334108(A253565(n))`
-/

namespace A365385.P975483233404336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A253565 n).toNat

end

end A365385.P975483233404336093

namespace A365385

/-- `A334108(A253565(n))` -/
def P975483233404336093.Spec : Prop :=
  ∀ n, P975483233404336093.a n = A365385 n

end A365385

/-! ## A365385.P12859065311010844691

`A331410(A332817(n))`
-/

namespace A365385.P12859065311010844691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A332817 n).toNat

end

end A365385.P12859065311010844691

namespace A365385

/-- `A331410(A332817(n))` -/
def P12859065311010844691.Spec : Prop :=
  ∀ n, P12859065311010844691.a n = A365385 n

end A365385

/-! ## A365385.P9849969153693296257

`A331410(A364258(n)+n)`
-/

namespace A365385.P9849969153693296257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A364258 n + (n : ℤ)).toNat

end

end A365385.P9849969153693296257

namespace A365385

/-- `A331410(A364258(n)+n)` -/
def P9849969153693296257.Spec : Prop :=
  ∀ n, P9849969153693296257.a n = A365385 n

theorem P9849969153693296257.correct : P9849969153693296257.Spec := by
  intro n
  simp only [A365385, Nat.add_sub_cancel, A365385.P9849969153693296257.a, A365385.P9341511432702516708.a, A163511, A163511.P5635496813650871695.a, A331410, A331410.P1765792121065572382.a, A364258, A364258.P6786196179042320049.a, A087436, A087436.P13287701826401831056.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A336467, A336467.P6879531493608964417.a, A000265, A000265.P16482698636471710744.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A007814, A007814.P13537437864234730737.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A206787, A206787.P5835391057460083436.a, A336651, A336651.P16001873672567347965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A010684, A010684.P11440423886746696901.a, A030101, A030101.P16184294017372777612.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A204455, A204455.P9449319865665436464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365385

/-! ## A365385.P7358881235378887723

`A331410(A332213(A332214(2*n)))`
-/

namespace A365385.P7358881235378887723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A332213 (A332214 (2 * n)).toNat).toNat

end

end A365385.P7358881235378887723

namespace A365385

/-- `A331410(A332213(A332214(2*n)))` -/
def P7358881235378887723.Spec : Prop :=
  ∀ n, P7358881235378887723.a n = A365385 n

end A365385

/-!
# A365386: Lexicographically earliest infinite sequence such that a(i) = a(j) => A331410(i) = A331410(j) and A365385(i) = A365385(j) for all i, j >= 1.

The programs for A365386, there is no canonical definition to state claims against.
-/

/-! ## A365386.P2081150831898762637

`A366791(A132314(n+1))`
-/

namespace A365386.P2081150831898762637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366791 (A132314 (n + 1)).toNat

end

end A365386.P2081150831898762637

/-! ## A365386.P14846411479194851052

`A001222(3^A366791(n+1))`
-/

namespace A365386.P14846411479194851052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A366791 (n + 1) : ℤ))).toNat

end

end A365386.P14846411479194851052

/-! ## A365386.P13318311704706777853

`A329697(3^A366791(n+1))`
-/

namespace A365386.P13318311704706777853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A366791 (n + 1) : ℤ))).toNat

end

end A365386.P13318311704706777853

/-! ## A365386.P6581682165355396152

`A366791(n+1)%A082182(n+1)`
-/

namespace A365386.P6581682165355396152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366791 (n + 1)) (A082182 (n + 1))

end

end A365386.P6581682165355396152

/-! ## A365386.P11141045379510229908

`A336834(A078536(n))*A366791(n+1)`
-/

namespace A365386.P11141045379510229908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336834 (A078536 n).toNat * A366791 (n + 1)

end

end A365386.P11141045379510229908

/-!
# A365387: a(n) = A331410(n) * A331410(A163511(n)).

The programs for A365387, the canonical program `A365387.P12565499775502910515` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365387 has offset 1).

The definition of A365387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365387.P18348785038547429955

`A331410(n+1)*A365385(n+1)`
-/

namespace A365387.P18348785038547429955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) * A365385 (n + 1)

end

end A365387.P18348785038547429955

namespace A365387

/-- `A331410(n+1)*A365385(n+1)` -/
def P18348785038547429955.Spec : Prop :=
  ∀ n, P18348785038547429955.a n = A365387 (n + 1)

end A365387

/-! ## A365387.P12565499775502910515

`A331410(n+1)*A331410(A163511(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365387

/-- `A331410(n+1)*A331410(A163511(n+1))` -/
def P12565499775502910515.Spec : Prop :=
  ∀ n, P12565499775502910515.a n = A365387 (n + 1)

theorem P12565499775502910515.correct : P12565499775502910515.Spec := by
  intro n
  simp only [A365387, Nat.add_sub_cancel]

end A365387

/-! ## A365387.P13565407415861362965

`A331410(2*(n+1))*A331410(A332817(n+1))`
-/

namespace A365387.P13565407415861362965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (2 * (n + 1)) * A331410 (A332817 (n + 1)).toNat

end

end A365387.P13565407415861362965

namespace A365387

/-- `A331410(2*(n+1))*A331410(A332817(n+1))` -/
def P13565407415861362965.Spec : Prop :=
  ∀ n, P13565407415861362965.a n = A365387 (n + 1)

end A365387

/-! ## A365387.P18130483772804515468

`(A336922((n+1)²)-A336922(n+1))*A365385(n+1)`
-/

namespace A365387.P18130483772804515468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336922 ((n + 1) ^ 2) - A336922 (n + 1)) * A365385 (n + 1)

end

end A365387.P18130483772804515468

namespace A365387

/-- `(A336922((n+1)²)-A336922(n+1))*A365385(n+1)` -/
def P18130483772804515468.Spec : Prop :=
  ∀ n, P18130483772804515468.a n = A365387 (n + 1)

end A365387

/-! ## A365387.P17694826433555680938

`A365385(A243071(2*(n+1)))*A365385(n+1)`
-/

namespace A365387.P17694826433555680938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365385 (A243071 (2 * (n + 1))).toNat * A365385 (n + 1)

end

end A365387.P17694826433555680938

namespace A365387

/-- `A365385(A243071(2*(n+1)))*A365385(n+1)` -/
def P17694826433555680938.Spec : Prop :=
  ∀ n, P17694826433555680938.a n = A365387 (n + 1)

end A365387

/-!
# A365389: a(n) = A365390(n) - 1.

The programs for A365389, there is no canonical definition to state claims against.
-/

/-! ## A365389.P2727975179861545809

`A365390(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365389.P2727975179861545809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365390 (n + 1) - 1

end

end A365389.P2727975179861545809

/-! ## A365389.P17956755225798591993

`A373201(A332879(n+1))+A365390(n+1)`
-/

namespace A365389.P17956755225798591993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373201 (A332879 (n + 1)).toNat + A365390 (n + 1)

end

end A365389.P17956755225798591993

/-! ## A365389.P16479973000010361614

`A023443(A365390(n+1))`
-/

namespace A365389.P16479973000010361614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A365390 (n + 1)).toNat

end

end A365389.P16479973000010361614

/-! ## A365389.P2540972385050067208

`A183010(A365390(3*(n+1)))%A365390(n+1)`
-/

namespace A365389.P2540972385050067208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183010 (A365390 (3 * (n + 1))).toNat) (A365390 (n + 1))

end

end A365389.P2540972385050067208

/-! ## A365389.P5161993032048413961

`A373201(A365390(3*(n+1)))+A365390(n+1)`
-/

namespace A365389.P5161993032048413961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373201 (A365390 (3 * (n + 1))).toNat + A365390 (n + 1)

end

end A365389.P5161993032048413961

/-!
# A365390: Inverse permutation of A356867, where A356867 is Sycamore's Doudna variant D(3).

The programs for A365390, there is no canonical definition to state claims against.
-/

/-! ## A365390.P4054312021388924997

`A365389(n+1)+1`
-/

namespace A365390.P4054312021388924997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365389 (n + 1) + 1

end

end A365390.P4054312021388924997

/-! ## A365390.P16583444468401904307

`A303707(A032672(n+1))*A356867(n+1)`
-/

namespace A365390.P16583444468401904307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A032672 (n + 1)).toNat * A356867 (n + 1)

end

end A365390.P16583444468401904307

/-!
# A365391: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336158(i) = A336158(j) and A365425(i) = A365425(j) for all i, j >= 1.

The programs for A365391, there is no canonical definition to state claims against.
-/

/-! ## A365391.P14922381747792715454

`xor(A005873(A026797(n+1)), A336390(n+1))`
-/

namespace A365391.P14922381747792715454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005873 (A026797 (n + 1)).toNat) (A336390 (n + 1))

end

end A365391.P14922381747792715454

/-!
# A365393: Lexicographically earliest infinite sequence such that a(i) = a(j) => A364492(i) = A364492(j) for all i, j >= 0, where A364492(n) is the denominator of n / A163511(n).

The programs for A365393, there is no canonical definition to state claims against.
-/

/-! ## A365393.P4593635506818287254

`A366286(n)-A026803(A335465(2*n+3))`
-/

namespace A365393.P4593635506818287254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366286 n - A026803 (A335465 (2 * n + 3)).toNat

end

end A365393.P4593635506818287254

/-! ## A365393.P8866409282746040531

`A366286(n%∑[A232467(n)])`
-/

namespace A365393.P8866409282746040531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366286 (Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A365393.P8866409282746040531

/-! ## A365393.P2480544970016154057

`A366286(n)%A107275(n+1)`
-/

namespace A365393.P2480544970016154057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366286 n) (A107275 (n + 1))

end

end A365393.P2480544970016154057

/-! ## A365393.P10342472357806067862

`gcd(A133437(2*n+5), A366286(n))`
-/

namespace A365393.P10342472357806067862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133437 (2 * n + 5)) (A366286 n)

end

end A365393.P10342472357806067862

/-! ## A365393.P2511764636996180196

`A366286(n)+A000007(A265066(n))`
-/

namespace A365393.P2511764636996180196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366286 n + A000007 (A265066 n).toNat

end

end A365393.P2511764636996180196

/-!
# A365394: Lexicographically earliest infinite sequence such that a(i) = a(j) => A365425(i) = A365425(j) and A365426(i) = A365426(j) for all i, j >= 0.

The programs for A365394, there is no canonical definition to state claims against.
-/

/-! ## A365394.P8911333426521587702

`A365391(A004277(2*n)*A329562(n))`
-/

namespace A365394.P8911333426521587702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365391 (A004277 (2 * n) * A329562 n).toNat

end

end A365394.P8911333426521587702

/-! ## A365394.P6319751190324839198

`A336390(A028310(n))%A236919(3*(n+1))`
-/

namespace A365394.P6319751190324839198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336390 (A028310 n).toNat) (A236919 (3 * (n + 1)))

end

end A365394.P6319751190324839198

/-! ## A365394.P16819718617929993727

`A336390(A011782(n))*A336390(A028310(n))`
-/

namespace A365394.P16819718617929993727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336390 (A011782 n).toNat * A336390 (A028310 n).toNat

end

end A365394.P16819718617929993727

/-! ## A365394.P15300657089900401849

`A336390(A008574(n))%A066085(3*n+5)`
-/

namespace A365394.P15300657089900401849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336390 (A008574 n).toNat) (A066085 (3 * n + 5))

end

end A365394.P15300657089900401849

/-! ## A365394.P10974025341722323900

`A365391(A028310(n))%A189686(n+1)`
-/

namespace A365394.P10974025341722323900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365391 (A028310 n).toNat) (A189686 (n + 1))

end

end A365394.P10974025341722323900

/-!
# A365395: Lexicographically earliest infinite sequence such that a(i) = a(j) => A365425(i) = A365425(j) and A365427(i) = A365427(j) for all i, j >= 0.

The programs for A365395, there is no canonical definition to state claims against.
-/

/-! ## A365395.P9003422607567889750

`A366792(n*A117401(n))`
-/

namespace A365395.P9003422607567889750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366792 ((n : ℤ) * A117401 n).toNat

end

end A365395.P9003422607567889750

/-! ## A365395.P11181096420256434738

`A366792(n*A256691(n+1))`
-/

namespace A365395.P11181096420256434738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366792 ((n : ℤ) * A256691 (n + 1)).toNat

end

end A365395.P11181096420256434738

/-! ## A365395.P4683416319068727007

`A366792(n)%A045544(n+1)`
-/

namespace A365395.P4683416319068727007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366792 n) (A045544 (n + 1))

end

end A365395.P4683416319068727007

/-! ## A365395.P12275670282167009414

`A366792((n*(1+(n+1)%2))%A107848(n+2))`
-/

namespace A365395.P12275670282167009414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366792 (Int.tmod ((n * (1 + (n + 1) % 2) : ℕ) : ℤ) (A107848 (n + 2))).toNat

end

end A365395.P12275670282167009414

/-! ## A365395.P8551447613200726753

`A366792(n)+A053399(A022166(n))`
-/

namespace A365395.P8551447613200726753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366792 n + A053399 (A022166 n).toNat

end

end A365395.P8551447613200726753

/-!
# A365396: Inverse permutation to A243571.

The programs for A365396, there is no canonical definition to state claims against.
-/

/-! ## A365396.P15291721105983364110

`A345253(n+1)-A058348(A034296(n))`
-/

namespace A365396.P15291721105983364110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1) - A058348 (A034296 n).toNat

end

end A365396.P15291721105983364110

/-!
# A365397: a(n) = 64 + A000720(n) - A365398(n).

The programs for A365397, there is no canonical definition to state claims against.
-/

/-! ## A365397.P18112442579517806027

`64+A000720(n+1)-A365398(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365397.P18112442579517806027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 + A000720 (n + 1) - A365398 (n + 1)

end

end A365397.P18112442579517806027

/-! ## A365397.P2222493104125195815

`A365339(n+1)+A365400(n+1)-A365398(n+1)`
-/

namespace A365397.P2222493104125195815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365339 (n + 1) + (A365400 (n + 1) - A365398 (n + 1))

end

end A365397.P2222493104125195815

/-! ## A365397.P9826538640155281341

`63-A330168(A052847(n))`
-/

namespace A365397.P9826538640155281341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 - A330168 (A052847 n).toNat

end

end A365397.P9826538640155281341

/-! ## A365397.P11721524670288087932

`64-A072491(A174743(n))`
-/

namespace A365397.P11721524670288087932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - A072491 (A174743 n).toNat

end

end A365397.P11721524670288087932

/-! ## A365397.P7172948281881213876

`64-A072491(∑[A250003(n)+A000079(n)])`
-/

namespace A365397.P7172948281881213876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - A072491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365397.P7172948281881213876

/-!
# A365398: Length of the longest subsequence of 1, ..., n on which sigma, the sum of the divisors of n (A000203), is nondecreasing.

The programs for A365398, there is no canonical definition to state claims against.
-/

/-! ## A365398.P15303333865757173143

`A365339(n+1)+A365400(n+1)-A365397(n+1)`
-/

namespace A365398.P15303333865757173143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365339 (n + 1) + (A365400 (n + 1) - A365397 (n + 1))

end

end A365398.P15303333865757173143

/-! ## A365398.P7910130033491206395

`A365399(n+1)%A025419(n+1)`
-/

namespace A365398.P7910130033491206395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365399 (n + 1)) (A025419 (n + 1))

end

end A365398.P7910130033491206395

/-! ## A365398.P16532338312017315797

`A365399(n+1)+A049087(A016116(n))`
-/

namespace A365398.P16532338312017315797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365399 (n + 1) + A049087 (A016116 n).toNat

end

end A365398.P16532338312017315797

/-! ## A365398.P3230868240009867382

`A365399(n+1)+A000007(A193589(n))`
-/

namespace A365398.P3230868240009867382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365399 (n + 1) + A000007 (A193589 n).toNat

end

end A365398.P3230868240009867382

/-! ## A365398.P13300011098990832537

`A054977(A147663(n))*A365399(n+1)`
-/

namespace A365398.P13300011098990832537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A147663 n).toNat * A365399 (n + 1)

end

end A365398.P13300011098990832537

