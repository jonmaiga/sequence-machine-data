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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A189300: Positions of 1 in A189298; complement of A189299.

The programs for A189300, there is no canonical definition to state claims against.
-/

/-! ## A189300.P13985672091323802103

`eq[1, A189298(n+1)]+1`
-/

namespace A189300.P13985672091323802103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189300.P13985672091323802103

/-! ## A189300.P16845231377955991242

`filter[A133398(n+1), A189298(#)]`
-/

namespace A189300.P16845231377955991242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189298 (f1 j).toNat = 1) n)

end

end A189300.P16845231377955991242

/-! ## A189300.P11078632249385391346

`filter[A305800(n+1), A189298(#)]`
-/

namespace A189300.P11078632249385391346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189298 (f1 j).toNat = 1) n)

end

end A189300.P11078632249385391346

/-! ## A189300.P2938035652420710858

`filter[A305801(n+1), A189298(#)]`
-/

namespace A189300.P2938035652420710858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189298 (f1 j).toNat = 1) n)

end

end A189300.P2938035652420710858

/-! ## A189300.P17495703289211542480

`record[A000027(n+1)*A189298(n+1)]`
-/

namespace A189300.P17495703289211542480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P17495703289211542480

/-! ## A189300.P13243512539727449627

`eq[n, A028310(n)*A189298(A028310(n))]`
-/

namespace A189300.P13243512539727449627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A189298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189300.P13243512539727449627

/-! ## A189300.P6139354471622756807

`record[A008619(2*n)*A189298(n+1)]`
-/

namespace A189300.P6139354471622756807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P6139354471622756807

/-! ## A189300.P5020041774317604353

`record[A052938(2*n)*A189298(n+1)]`
-/

namespace A189300.P5020041774317604353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) * A189298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P5020041774317604353

/-! ## A189300.P15732682617833319616

`record[A080513(n)*A189298(A080513(n))]`
-/

namespace A189300.P15732682617833319616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A189298 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P15732682617833319616

/-! ## A189300.P13751045545966534246

`record[A008620(3*n)*A189298(n+1)]`
-/

namespace A189300.P13751045545966534246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) * A189298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P13751045545966534246

/-! ## A189300.P4946571389706965894

`record[A008611(n)*A189298(A008620(n))]`
-/

namespace A189300.P4946571389706965894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189298 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P4946571389706965894

/-! ## A189300.P7915117005705375392

`record[A063942(n)*A189298(A008620(n))]`
-/

namespace A189300.P7915117005705375392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 n * A189298 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P7915117005705375392

/-! ## A189300.P14990724585271373627

`record[A034887(n)*A189298(A034887(n))]`
-/

namespace A189300.P14990724585271373627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189298 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P14990724585271373627

/-! ## A189300.P4810145963361938640

`record[A008621(n)*A189298(A008621(n))]`
-/

namespace A189300.P4810145963361938640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189298 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189300.P4810145963361938640

/-!
# A189301: Zero-one sequence based on A026147: a(A026147(k))=a(k); a(A181155(k))=1-a(k), a(1)=0.

The programs for A189301, there is no canonical definition to state claims against.
-/

/-! ## A189301.P12185218331135563044

`char[A189303(n+1)-1]`
-/

namespace A189301.P12185218331135563044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189301.P12185218331135563044

/-! ## A189301.P10396089239971099856

`char[comp[A189302(n+1)-1]]`
-/

namespace A189301.P10396089239971099856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189301.P10396089239971099856

/-! ## A189301.P14503144102483250624

`1-char[A189302(ceil(n/2)+1)-1]`
-/

namespace A189301.P14503144102483250624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (⌈(n : ℚ) / 2⌉ + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189301.P14503144102483250624

/-! ## A189301.P5184650888683909147

`char[A023443(A189303(n+1))]`
-/

namespace A189301.P5184650888683909147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189303 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189301.P5184650888683909147

/-! ## A189301.P8522275186065737398

`char[A023443(comp[A189302(n+1)])]`
-/

namespace A189301.P8522275186065737398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189301.P8522275186065737398

/-! ## A189301.P13464754574750486073

`char[A260196(n)+A189303(n+1)]`
-/

namespace A189301.P13464754574750486073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189301.P13464754574750486073

/-!
# A189302: Positions of 0 in A189301; complement of A189303.

The programs for A189302, there is no canonical definition to state claims against.
-/

/-! ## A189302.P17061331221750916009

`eq[0, A189301(n+1)]+1`
-/

namespace A189302.P17061331221750916009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189302.P17061331221750916009

/-! ## A189302.P4074526522531846115

`lt[2*A189301(abs(1-n)+1), 1]`
-/

namespace A189302.P4074526522531846115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189301 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A189302.P4074526522531846115

/-! ## A189302.P3074523263622272191

`record[(n+2)/(A189301(n+2)+1)]`
-/

namespace A189302.P3074523263622272191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A189301 (n + 2) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189302.P3074523263622272191

/-! ## A189302.P757324427256807030

`eq[floor(acot(n)), A189301(A028310(n))]`
-/

namespace A189302.P757324427256807030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189302.P757324427256807030

/-! ## A189302.P6936421660064659568

`record[A102393(n)-A189301(n+1)]`
-/

namespace A189302.P6936421660064659568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102393 n - A189301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189302.P6936421660064659568

/-! ## A189302.P6383986916946002536

`record[or(-A189301(n+1), A000027(n+1))]`
-/

namespace A189302.P6383986916946002536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A189301 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189302.P6383986916946002536

/-! ## A189302.P1543777882818927375

`lt[A000010(n+1)*A189301(n+1), 1]+1`
-/

namespace A189302.P1543777882818927375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A189301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189302.P1543777882818927375

/-! ## A189302.P10060885714518726250

`lt[A000040(n+1)*A189301(n+1), 1]+1`
-/

namespace A189302.P10060885714518726250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A189301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189302.P10060885714518726250

/-! ## A189302.P12285172660541125222

`lt[A000203(n+1)*A189301(n+1), 1]+1`
-/

namespace A189302.P12285172660541125222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A189301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189302.P12285172660541125222

/-! ## A189302.P2978742596053757907

`lt[A020639(n+1)*A189301(n+1), 1]+1`
-/

namespace A189302.P2978742596053757907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A189301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189302.P2978742596053757907

/-!
# A189303: Positions of 1 in A189301; complement of A189302.

The programs for A189303, there is no canonical definition to state claims against.
-/

/-! ## A189303.P13384191784828019098

`lt[0, A189301(n+1)]+1`
-/

namespace A189303.P13384191784828019098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189303.P13384191784828019098

/-! ## A189303.P5752090444991202107

`eq[1, A189301(n+2)]+2`
-/

namespace A189303.P5752090444991202107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A189303.P5752090444991202107

/-! ## A189303.P8752866794854361819

`comp[A189302(n+1)-1]+1`
-/

namespace A189303.P8752866794854361819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189303.P8752866794854361819

/-! ## A189303.P2739507950925368002

`lt[0, A189301(A028310(n))]`
-/

namespace A189303.P2739507950925368002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189303.P2739507950925368002

/-! ## A189303.P12861351309032223811

`filter[A051340(n), A189301(#)]`
-/

namespace A189303.P12861351309032223811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A189303.P12861351309032223811

/-! ## A189303.P1966836294333018785

`filter[A152271(n), A189301(#)]`
-/

namespace A189303.P1966836294333018785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A189303.P1966836294333018785

/-! ## A189303.P2224449541832885282

`filter[A158416(n), A189301(#)]`
-/

namespace A189303.P2224449541832885282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A189303.P2224449541832885282

/-! ## A189303.P15214042356846556958

`filter[A282738(n), A189301(#)]`
-/

namespace A189303.P15214042356846556958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A189303.P15214042356846556958

/-! ## A189303.P1297629159118033074

`filter[A344180(n), A189301(#)]`
-/

namespace A189303.P1297629159118033074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A189303.P1297629159118033074

/-! ## A189303.P10967366011181184087

`A020725(eq[1, A189301(n+1)])`
-/

namespace A189303.P10967366011181184087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189303.P10967366011181184087

/-!
# A189304: Number of n X n array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189304, there is no canonical definition to state claims against.
-/

/-! ## A189304.P16839921811059891859

`A189312(∑[4*n]+1)`
-/

namespace A189304.P16839921811059891859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189304.P16839921811059891859

/-!
# A189305: Number of n X 2 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189305, the canonical program `A189305.P14080242105180682459` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189305 has offset 1).

The definition of A189305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189305.P17705591513805716750

`ogf((2+6x+x^2-4x^3+x^4)/(1-4x-8x^2+4x^4-x^5))`
-/

namespace A189305.P17705591513805716750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 1, -4, 1] [1, -4, -8, 0, 4, -1] n

end

end A189305.P17705591513805716750

namespace A189305

/-- `ogf((2+6x+x^2-4x^3+x^4)/(1-4x-8x^2+4x^4-x^5))` -/
def P17705591513805716750.Spec : Prop :=
  ∀ n, P17705591513805716750.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P14080242105180682459

`A002524(2*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189305

/-- `A002524(2*(n+1))` -/
def P14080242105180682459.Spec : Prop :=
  ∀ n, P14080242105180682459.a n = A189305 (n + 1)

theorem P14080242105180682459.correct : P14080242105180682459.Spec := by
  intro n
  simp only [A189305, Nat.add_sub_cancel]

end A189305

/-! ## A189305.P17492532017836954358

`record[A002524(A004442(n)+1)]`
-/

namespace A189305.P17492532017836954358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P17492532017836954358

namespace A189305

/-- `record[A002524(A004442(n)+1)]` -/
def P17492532017836954358.Spec : Prop :=
  ∀ n, P17492532017836954358.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P12215688673661247410

`record[A002524(A014681(n+1))]`
-/

namespace A189305.P12215688673661247410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P12215688673661247410

namespace A189305

/-- `record[A002524(A014681(n+1))]` -/
def P12215688673661247410.Spec : Prop :=
  ∀ n, P12215688673661247410.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P247112547144779065

`record[A002524(A131380(n+1))]`
-/

namespace A189305.P247112547144779065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A131380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P247112547144779065

namespace A189305

/-- `record[A002524(A131380(n+1))]` -/
def P247112547144779065.Spec : Prop :=
  ∀ n, P247112547144779065.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P11101970689740201537

`record[A002524(A029578(n+3))]`
-/

namespace A189305.P11101970689740201537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P11101970689740201537

namespace A189305

/-- `record[A002524(A029578(n+3))]` -/
def P11101970689740201537.Spec : Prop :=
  ∀ n, P11101970689740201537.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P15440978218799375412

`record[A002524(2*A008611(n))]`
-/

namespace A189305.P15440978218799375412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P15440978218799375412

namespace A189305

/-- `record[A002524(2*A008611(n))]` -/
def P15440978218799375412.Spec : Prop :=
  ∀ n, P15440978218799375412.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P4661006638349505716

`record[A002524(2*A008612(n))]`
-/

namespace A189305.P4661006638349505716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P4661006638349505716

namespace A189305

/-- `record[A002524(2*A008612(n))]` -/
def P4661006638349505716.Spec : Prop :=
  ∀ n, P4661006638349505716.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P6014099990832881075

`record[A002524(2*A028242(n))]`
-/

namespace A189305.P6014099990832881075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P6014099990832881075

namespace A189305

/-- `record[A002524(2*A028242(n))]` -/
def P6014099990832881075.Spec : Prop :=
  ∀ n, P6014099990832881075.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P1899907158252839459

`record[A002524(2*A028920(n))]`
-/

namespace A189305.P1899907158252839459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P1899907158252839459

namespace A189305

/-- `record[A002524(2*A028920(n))]` -/
def P1899907158252839459.Spec : Prop :=
  ∀ n, P1899907158252839459.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P15813565468931218015

`record[A002524(2*A106249(n))]`
-/

namespace A189305.P15813565468931218015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P15813565468931218015

namespace A189305

/-- `record[A002524(2*A106249(n))]` -/
def P15813565468931218015.Spec : Prop :=
  ∀ n, P15813565468931218015.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P15466345687838305981

`record[A002524(A010673(n+1)+n)]`
-/

namespace A189305.P15466345687838305981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A010673 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P15466345687838305981

namespace A189305

/-- `record[A002524(A010673(n+1)+n)]` -/
def P15466345687838305981.Spec : Prop :=
  ∀ n, P15466345687838305981.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P9746130979673101501

`ratio[A002524(2*n)]*A002524(2*n)`
-/

namespace A189305.P9746130979673101501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A002524 (2 * n) : ℚ)

end

end A189305.P9746130979673101501

namespace A189305

/-- `ratio[A002524(2*n)]*A002524(2*n)` -/
def P9746130979673101501.Spec : Prop :=
  ∀ n, P9746130979673101501.a n = (A189305 (n + 1) : ℚ)

end A189305

/-! ## A189305.P4566668082666169376

`A002524(A005843(n+1))/and(1, A055580(n))`
-/

namespace A189305.P4566668082666169376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002524 (A005843 (n + 1)).toNat : ℚ) / (Int.land 1 (A055580 n) : ℚ)

end

end A189305.P4566668082666169376

namespace A189305

/-- `A002524(A005843(n+1))/and(1, A055580(n))` -/
def P4566668082666169376.Spec : Prop :=
  ∀ n, P4566668082666169376.a n = (A189305 (n + 1) : ℚ)

end A189305

/-! ## A189305.P12425853080902684547

`A002525(2*n+3)-A002525(2*(n+1))`
-/

namespace A189305.P12425853080902684547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (2 * n + 3) - A002525 (2 * (n + 1))

end

end A189305.P12425853080902684547

namespace A189305

/-- `A002525(2*n+3)-A002525(2*(n+1))` -/
def P12425853080902684547.Spec : Prop :=
  ∀ n, P12425853080902684547.a n = A189305 (n + 1)

end A189305

/-! ## A189305.P25010866314043613

`record[A002524(A193358(n+1))]`
-/

namespace A189305.P25010866314043613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (A193358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189305.P25010866314043613

namespace A189305

/-- `record[A002524(A193358(n+1))]` -/
def P25010866314043613.Spec : Prop :=
  ∀ n, P25010866314043613.a n = A189305 (n + 1)

end A189305

/-!
# A189306: Number of nX3 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189306, there is no canonical definition to state claims against.
-/

/-! ## A189306.P676308966752902090

`A189312(∑[n+2]+4)`
-/

namespace A189306.P676308966752902090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189306.P676308966752902090

/-! ## A189306.P7273150038920828251

`or(A000007(n), A189312(A167614(n+1)))`
-/

namespace A189306.P7273150038920828251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A189312 (A167614 (n + 1)).toNat)

end

end A189306.P7273150038920828251

/-! ## A189306.P17577658152673372337

`A189312(A167614(n+1))+A000007(n+1)`
-/

namespace A189306.P17577658152673372337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A189306.P17577658152673372337

/-! ## A189306.P13383638837143053072

`A189312(A167614(n+1))*A272901(n+1)`
-/

namespace A189306.P13383638837143053072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A167614 (n + 1)).toNat * A272901 (n + 1)

end

end A189306.P13383638837143053072

/-! ## A189306.P18140791534806732946

`A189312(A167614(n+1))%A189307(n+1)`
-/

namespace A189306.P18140791534806732946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189312 (A167614 (n + 1)).toNat) (A189307 (n + 1))

end

end A189306.P18140791534806732946

/-!
# A189307: Number of nX4 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189307, there is no canonical definition to state claims against.
-/

/-! ## A189307.P13352758373003802840

`A189312(A374004(n+1))`
-/

namespace A189307.P13352758373003802840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A374004 (n + 1)).toNat

end

end A189307.P13352758373003802840

/-! ## A189307.P2523447307483976697

`A189312(A052905(n)+9)`
-/

namespace A189307.P2523447307483976697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A052905 n + 9).toNat

end

end A189307.P2523447307483976697

/-! ## A189307.P12388430024011992741

`A189312(A055999(n)+10)`
-/

namespace A189307.P12388430024011992741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A055999 n + 10).toNat

end

end A189307.P12388430024011992741

/-! ## A189307.P6435790678276558661

`A189312(Δ[A008778(n)]+6)`
-/

namespace A189307.P6435790678276558661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (f1 (n + 1) - f1 n + 6).toNat

end

end A189307.P6435790678276558661

/-! ## A189307.P7758138177000484178

`A189312(A167614(n+2)+1)`
-/

namespace A189307.P7758138177000484178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A167614 (n + 2) + 1).toNat

end

end A189307.P7758138177000484178

/-!
# A189308: Number of nX5 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189308, there is no canonical definition to state claims against.
-/

/-! ## A189308.P8396998408449496384

`A189312(A374005(n+1))`
-/

namespace A189308.P8396998408449496384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A374005 (n + 1)).toNat

end

end A189308.P8396998408449496384

/-! ## A189308.P2884768831754849133

`A189312(A141214(n+1)+8)`
-/

namespace A189308.P2884768831754849133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A141214 (n + 1) + 8).toNat

end

end A189308.P2884768831754849133

/-! ## A189308.P10478074756356181413

`A189312(eq[6, A131818(n+1)])`
-/

namespace A189308.P10478074756356181413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189308.P10478074756356181413

/-! ## A189308.P3496981827460870316

`A189312(Δ[A264443(n)])`
-/

namespace A189308.P3496981827460870316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (f1 (n + 1) - f1 n).toNat

end

end A189308.P3496981827460870316

/-! ## A189308.P8763381127436199100

`A189312(eq[5, A239144(n)])`
-/

namespace A189308.P8763381127436199100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189308.P8763381127436199100

/-!
# A189309: Number of nX6 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189309, there is no canonical definition to state claims against.
-/

/-! ## A189309.P10772473722112071631

`A189312(A374007(n+1))`
-/

namespace A189309.P10772473722112071631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A374007 (n + 1)).toNat

end

end A189309.P10772473722112071631

/-! ## A189309.P7121238256073869596

`A189312(eq[7, A131818(n+1)])`
-/

namespace A189309.P7121238256073869596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189309.P7121238256073869596

/-! ## A189309.P7063671986864003509

`A189312(A052905(n+3))`
-/

namespace A189309.P7063671986864003509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A052905 (n + 3)).toNat

end

end A189309.P7063671986864003509

/-! ## A189309.P7622875047646569520

`A189312(Δ[A264443(n+1)]-1)`
-/

namespace A189309.P7622875047646569520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (f1 (n + 1) - f1 n - 1).toNat

end

end A189309.P7622875047646569520

/-!
# A189310: Number of nX7 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189310, there is no canonical definition to state claims against.
-/

/-! ## A189310.P4181403348606849756

`A189312(A374008(n+1))`
-/

namespace A189310.P4181403348606849756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A374008 (n + 1)).toNat

end

end A189310.P4181403348606849756

/-! ## A189310.P17531938906665648118

`A189312(eq[8, A131818(n+1)])`
-/

namespace A189310.P17531938906665648118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189310.P17531938906665648118

/-!
# A189311: Number of nX8 array permutations with each element moving zero or one space diagonally, horizontally or vertically.

The programs for A189311, there is no canonical definition to state claims against.
-/

/-! ## A189311.P14882385445999311476

`A189312(A374009(n+1))`
-/

namespace A189311.P14882385445999311476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (A374009 (n + 1)).toNat

end

end A189311.P14882385445999311476

/-! ## A189311.P972085939625064808

`A189312(eq[7, A193592(n)])`
-/

namespace A189311.P972085939625064808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189311.P972085939625064808

/-!
# A189313: Primes p such that 2*omega(4p) = omega(4p+2), where omega(k) is the number of distinct primes dividing k, A001221.

The programs for A189313, the canonical program `A189313.P3199727323441189786` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189313 has offset 1).

The definition of A189313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189313.P3199727323441189786

`record[A020639(eq[3, A001221(2*n+1)])]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A189313

/-- `record[A020639(eq[3, A001221(2*n+1)])]` -/
def P3199727323441189786.Spec : Prop :=
  ∀ n, P3199727323441189786.a n = A189313 (n + 1)

theorem P3199727323441189786.correct : P3199727323441189786.Spec := by
  intro n
  simp only [A189313, Nat.add_sub_cancel]

end A189313

/-! ## A189313.P14998454153314858544

`p?[A065260(A214195(n+1))]`
-/

namespace A189313.P14998454153314858544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A214195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189313.P14998454153314858544

namespace A189313

/-- `p?[A065260(A214195(n+1))]` -/
def P14998454153314858544.Spec : Prop :=
  ∀ n, P14998454153314858544.a n = A189313 (n + 1)

end A189313

/-! ## A189313.P1308031844563379106

`p?[A008619(xor(2, A214195(n+1)))]`
-/

namespace A189313.P1308031844563379106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 2 (A214195 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A189313.P1308031844563379106

namespace A189313

/-- `p?[A008619(xor(2, A214195(n+1)))]` -/
def P1308031844563379106.Spec : Prop :=
  ∀ n, P1308031844563379106.a n = A189313 (n + 1)

end A189313

/-! ## A189313.P5734434151608231520

`record[A020639(A004524(A033992(n+1)))]`
-/

namespace A189313.P5734434151608231520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004524 (A033992 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189313.P5734434151608231520

namespace A189313

/-- `record[A020639(A004524(A033992(n+1)))]` -/
def P5734434151608231520.Spec : Prop :=
  ∀ n, P5734434151608231520.a n = A189313 (n + 1)

end A189313

/-! ## A189313.P1436245007249849522

`record[A020639(A004524(A278569(n+1)))]`
-/

namespace A189313.P1436245007249849522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004524 (A278569 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189313.P1436245007249849522

namespace A189313

/-- `record[A020639(A004524(A278569(n+1)))]` -/
def P1436245007249849522.Spec : Prop :=
  ∀ n, P1436245007249849522.a n = A189313 (n + 1)

end A189313

/-!
# A189314: Nonprimes k such that 2*omega(4k) = omega(4k+2), where omega(j) is the number of distinct primes dividing j, A001221.

The programs for A189314, there is no canonical definition to state claims against.
-/

/-! ## A189314.P488868278576778501

`A328593(A211682(n+2)-A007318(n))`
-/

namespace A189314.P488868278576778501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A211682 (n + 2) - A007318 n).toNat

end

end A189314.P488868278576778501

/-! ## A189314.P11785307039088938377

`A321126(lcm(A084367(n), A230893(n+1)))`
-/

namespace A189314.P11785307039088938377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (Int.lcm (A084367 n) (A230893 (n + 1)))

end

end A189314.P11785307039088938377

/-!
# A189315: Expansion of g.f. 5*(1-3*x+x^2)/(1-5*x+5*x^2).

The programs for A189315, the canonical program `A189315.P6208520211747134913` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189315 has offset 0).

The definition of A189315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-15x+5x^2)/(1-5x+5x^2))` (program `A189315.P6208520211747134913`, by `A189315.P6208520211747134913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189315.P6208520211747134913

`ogf((5-15x+5x^2)/(1-5x+5x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189315

/-- `ogf((5-15x+5x^2)/(1-5x+5x^2))` -/
def P6208520211747134913.Spec : Prop :=
  ∀ n, P6208520211747134913.a n = A189315 n

theorem P6208520211747134913.correct : P6208520211747134913.Spec := by
  intro n
  simp only [A189315]

end A189315

/-! ## A189315.P15301490014209327514

`5*a(n-1)-5*a(n-2)` with `a(0)=5, a(1)=10, a(2)=30`
-/

namespace A189315.P15301490014209327514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 10, 30] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2)

end

end A189315.P15301490014209327514

namespace A189315

/-- `5*a(n-1)-5*a(n-2)` -/
def P15301490014209327514.Spec : Prop :=
  ∀ n, P15301490014209327514.a n = A189315 n

end A189315

/-! ## A189315.P12331884810753394425

`5*A147748(n)`
-/

namespace A189315.P12331884810753394425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A147748 n

end

end A189315.P12331884810753394425

namespace A189315

/-- `5*A147748(n)` -/
def P12331884810753394425.Spec : Prop :=
  ∀ n, P12331884810753394425.a n = A189315 n

end A189315

/-! ## A189315.P14131674586952436755

`5*A178381(2*n)`
-/

namespace A189315.P14131674586952436755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A178381 (2 * n)

end

end A189315.P14131674586952436755

namespace A189315

/-- `5*A178381(2*n)` -/
def P14131674586952436755.Spec : Prop :=
  ∀ n, P14131674586952436755.a n = A189315 n

end A189315

/-! ## A189315.P1531590184050291267

`a(n-1)+2*A081567(n)` with `a(0)=5, a(1)=10`
-/

namespace A189315.P1531590184050291267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n a =>
  a (n - 1) + 2 * A081567 n

end

end A189315.P1531590184050291267

namespace A189315

/-- `a(n-1)+2*A081567(n)` -/
def P1531590184050291267.Spec : Prop :=
  ∀ n, P1531590184050291267.a n = A189315 n

end A189315

/-! ## A189315.P1804786855284528330

`A000007(n)+2*A020876(n)`
-/

namespace A189315.P1804786855284528330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A020876 n

end

end A189315.P1804786855284528330

namespace A189315

/-- `A000007(n)+2*A020876(n)` -/
def P1804786855284528330.Spec : Prop :=
  ∀ n, P1804786855284528330.a n = A189315 n

end A189315

/-! ## A189315.P15068318088605656856

`5*(A136775(n+1)-A093131(n))`
-/

namespace A189315.P15068318088605656856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A136775 (n + 1) - A093131 n)

end

end A189315.P15068318088605656856

namespace A189315

/-- `5*(A136775(n+1)-A093131(n))` -/
def P15068318088605656856.Spec : Prop :=
  ∀ n, P15068318088605656856.a n = A189315 n

end A189315

/-! ## A189315.P3142074168775405958

`(A093123(n+1)+A000007(n))/A000079(n)`
-/

namespace A189315.P3142074168775405958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093123 (n + 1) + A000007 n : ℚ) / (A000079 n : ℚ)

end

end A189315.P3142074168775405958

namespace A189315

/-- `(A093123(n+1)+A000007(n))/A000079(n)` -/
def P3142074168775405958.Spec : Prop :=
  ∀ n, P3142074168775405958.a n = (A189315 n : ℚ)

end A189315

/-!
# A189316: Expansion of g.f. 5*(1-x-x^2)/((1+x)*(1-3*x+x^2)).

The programs for A189316, the canonical program `A189316.P10853464402875354144` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189316 has offset 0).

The definition of A189316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-5x-5x^2)/(1-2x-2x^2+x^3))` (program `A189316.P10853464402875354144`, by `A189316.P10853464402875354144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189316.P10853464402875354144

`ogf((5-5x-5x^2)/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189316

/-- `ogf((5-5x-5x^2)/(1-2x-2x^2+x^3))` -/
def P10853464402875354144.Spec : Prop :=
  ∀ n, P10853464402875354144.a n = A189316 n

theorem P10853464402875354144.correct : P10853464402875354144.Spec := by
  intro n
  simp only [A189316]

end A189316

/-! ## A189316.P198141518545290360

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=5, a(1)=5, a(2)=15`
-/

namespace A189316.P198141518545290360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 15] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A189316.P198141518545290360

namespace A189316

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P198141518545290360.Spec : Prop :=
  ∀ n, P198141518545290360.a n = A189316 n

end A189316

/-! ## A189316.P4974835360053449073

`5*A126116(2*n)`
-/

namespace A189316.P4974835360053449073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A126116 (2 * n)

end

end A189316.P4974835360053449073

namespace A189316

/-- `5*A126116(2*n)` -/
def P4974835360053449073.Spec : Prop :=
  ∀ n, P4974835360053449073.a n = A189316 n

end A189316

/-! ## A189316.P23030220266836626

`(-1)^n+2*A000032(2*n)`
-/

namespace A189316.P23030220266836626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2 * A000032 (2 * n)

end

end A189316.P23030220266836626

namespace A189316

/-- `(-1)^n+2*A000032(2*n)` -/
def P23030220266836626.Spec : Prop :=
  ∀ n, P23030220266836626.a n = A189316 n

end A189316

/-! ## A189316.P4771728875261839903

`A047946(n)+A005248(n)`
-/

namespace A189316.P4771728875261839903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 n + A005248 n

end

end A189316.P4771728875261839903

namespace A189316

/-- `A047946(n)+A005248(n)` -/
def P4771728875261839903.Spec : Prop :=
  ∀ n, P4771728875261839903.a n = A189316 n

end A189316

/-! ## A189316.P13080839712592053365

`A110391(n)+A001254(n)`
-/

namespace A189316.P13080839712592053365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 n + A001254 n

end

end A189316.P13080839712592053365

namespace A189316

/-- `A110391(n)+A001254(n)` -/
def P13080839712592053365.Spec : Prop :=
  ∀ n, P13080839712592053365.a n = A189316 n

end A189316

/-! ## A189316.P662153821892478837

`A171089(n)-A033999(n)`
-/

namespace A189316.P662153821892478837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171089 n - A033999 n

end

end A189316.P662153821892478837

namespace A189316

/-- `A171089(n)-A033999(n)` -/
def P662153821892478837.Spec : Prop :=
  ∀ n, P662153821892478837.a n = A189316 n

end A189316

/-! ## A189316.P15822061969224882509

`A110391(n)+abs(A075150(n))`
-/

namespace A189316.P15822061969224882509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 n + |A075150 n|

end

end A189316.P15822061969224882509

namespace A189316

/-- `A110391(n)+abs(A075150(n))` -/
def P15822061969224882509.Spec : Prop :=
  ∀ n, P15822061969224882509.a n = A189316 n

end A189316

/-! ## A189316.P16736380953130615471

`A033999(n)+2*A005248(n)`
-/

namespace A189316.P16736380953130615471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A005248 n

end

end A189316.P16736380953130615471

namespace A189316

/-- `A033999(n)+2*A005248(n)` -/
def P16736380953130615471.Spec : Prop :=
  ∀ n, P16736380953130615471.a n = A189316 n

end A189316

/-! ## A189316.P10902197147394508966

`A047946(n)+A000032(2*n)`
-/

namespace A189316.P10902197147394508966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 n + A000032 (2 * n)

end

end A189316.P10902197147394508966

namespace A189316

/-- `A047946(n)+A000032(2*n)` -/
def P10902197147394508966.Spec : Prop :=
  ∀ n, P10902197147394508966.a n = A189316 n

end A189316

/-! ## A189316.P11357238453506764540

`A075091(2*n)+A033999(n)`
-/

namespace A189316.P11357238453506764540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 (2 * n) + A033999 n

end

end A189316.P11357238453506764540

namespace A189316

/-- `A075091(2*n)+A033999(n)` -/
def P11357238453506764540.Spec : Prop :=
  ∀ n, P11357238453506764540.a n = A189316 n

end A189316

/-! ## A189316.P13545127108063048461

`A174971(n)+2*A110391(n)`
-/

namespace A189316.P13545127108063048461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + 2 * A110391 n

end

end A189316.P13545127108063048461

namespace A189316

/-- `A174971(n)+2*A110391(n)` -/
def P13545127108063048461.Spec : Prop :=
  ∀ n, P13545127108063048461.a n = A189316 n

end A189316

/-! ## A189316.P6088154879590218884

`2*A047946(n)-A033999(n)`
-/

namespace A189316.P6088154879590218884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047946 n - A033999 n

end

end A189316.P6088154879590218884

namespace A189316

/-- `2*A047946(n)-A033999(n)` -/
def P6088154879590218884.Spec : Prop :=
  ∀ n, P6088154879590218884.a n = A189316 n

end A189316

/-! ## A189316.P9736254931913858000

`2*A001254(n)-A174971(n)`
-/

namespace A189316.P9736254931913858000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001254 n - A174971 n

end

end A189316.P9736254931913858000

namespace A189316

/-- `2*A001254(n)-A174971(n)` -/
def P9736254931913858000.Spec : Prop :=
  ∀ n, P9736254931913858000.a n = A189316 n

end A189316

/-! ## A189316.P15099680796264253281

`A005248(n)+A171089(n)/2`
-/

namespace A189316.P15099680796264253281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℚ) + (A171089 n : ℚ) / 2

end

end A189316.P15099680796264253281

namespace A189316

/-- `A005248(n)+A171089(n)/2` -/
def P15099680796264253281.Spec : Prop :=
  ∀ n, P15099680796264253281.a n = (A189316 n : ℚ)

end A189316

/-! ## A189316.P12864916140925747407

`A292616(2*n)+A056594(2*n)`
-/

namespace A189316.P12864916140925747407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292616 (2 * n) + A056594 (2 * n)

end

end A189316.P12864916140925747407

namespace A189316

/-- `A292616(2*n)+A056594(2*n)` -/
def P12864916140925747407.Spec : Prop :=
  ∀ n, P12864916140925747407.a n = A189316 n

end A189316

/-! ## A189316.P4917323707769055923

`2*A000032(2*n)-A033999(n+1)`
-/

namespace A189316.P4917323707769055923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (2 * n) - A033999 (n + 1)

end

end A189316.P4917323707769055923

namespace A189316

/-- `2*A000032(2*n)-A033999(n+1)` -/
def P4917323707769055923.Spec : Prop :=
  ∀ n, P4917323707769055923.a n = A189316 n

end A189316

/-! ## A189316.P17725133875910742617

`2*A000032(2*n)-A163805(2*n+1)`
-/

namespace A189316.P17725133875910742617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (2 * n) - A163805 (2 * n + 1)

end

end A189316.P17725133875910742617

namespace A189316

/-- `2*A000032(2*n)-A163805(2*n+1)` -/
def P17725133875910742617.Spec : Prop :=
  ∀ n, P17725133875910742617.a n = A189316 n

end A189316

/-! ## A189316.P7962271188158155814

`5*(abs(A000045(Δ[n²])-(A001654(n)+1))+1)`
-/

namespace A189316.P7962271188158155814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (|A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (A001654 n + 1)| + 1)

end

end A189316.P7962271188158155814

namespace A189316

/-- `5*(abs(A000045(Δ[n²])-(A001654(n)+1))+1)` -/
def P7962271188158155814.Spec : Prop :=
  ∀ n, P7962271188158155814.a n = A189316 n

end A189316

/-!
# A189317: Expansion of 5*(1-6*x+x^2)/(1-10*x+5*x^2).

The programs for A189317, the canonical program `A189317.P2611389771276063884` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189317 has offset 0).

The definition of A189317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-30x+5x^2)/(1-10x+5x^2))` (program `A189317.P2611389771276063884`, by `A189317.P2611389771276063884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189317.P2611389771276063884

`ogf((5-30x+5x^2)/(1-10x+5x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189317

/-- `ogf((5-30x+5x^2)/(1-10x+5x^2))` -/
def P2611389771276063884.Spec : Prop :=
  ∀ n, P2611389771276063884.a n = A189317 n

theorem P2611389771276063884.correct : P2611389771276063884.Spec := by
  intro n
  simp only [A189317]

end A189317

/-! ## A189317.P640329476750685832

`10*a(n-1)-5*a(n-2)` with `a(0)=5, a(1)=20, a(2)=180`
-/

namespace A189317.P640329476750685832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 20, 180] fun n a =>
  10 * a (n - 1) - 5 * a (n - 2)

end

end A189317.P640329476750685832

namespace A189317

/-- `10*a(n-1)-5*a(n-2)` -/
def P640329476750685832.Spec : Prop :=
  ∀ n, P640329476750685832.a n = A189317 n

end A189317

/-! ## A189317.P17182920680504226447

`5*A189334(n)`
-/

namespace A189317.P17182920680504226447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A189334 n

end

end A189317.P17182920680504226447

namespace A189317

/-- `5*A189334(n)` -/
def P17182920680504226447.Spec : Prop :=
  ∀ n, P17182920680504226447.a n = A189317 n

end A189317

/-! ## A189317.P4987610028158584359

`5*A212500(A004277(n))`
-/

namespace A189317.P4987610028158584359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A212500 (A004277 n).toNat

end

end A189317.P4987610028158584359

namespace A189317

/-- `5*A212500(A004277(n))` -/
def P4987610028158584359.Spec : Prop :=
  ∀ n, P4987610028158584359.a n = A189317 n

end A189317

/-! ## A189317.P11933863199396936249

`A005592(n)*A189315(n)`
-/

namespace A189317.P11933863199396936249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n * A189315 n

end

end A189317.P11933863199396936249

namespace A189317

/-- `A005592(n)*A189315(n)` -/
def P11933863199396936249.Spec : Prop :=
  ∀ n, P11933863199396936249.a n = A189317 n

end A189317

/-! ## A189317.P17555343018049921385

`lcm(A189315(n), A189334(n))`
-/

namespace A189317.P17555343018049921385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A189315 n) (A189334 n)

end

end A189317.P17555343018049921385

namespace A189317

/-- `lcm(A189315(n), A189334(n))` -/
def P17555343018049921385.Spec : Prop :=
  ∀ n, (P17555343018049921385.a n : ℤ) = A189317 n

end A189317

/-! ## A189317.P4970306389657627847

`5*A005592(n)*A147748(n)`
-/

namespace A189317.P4970306389657627847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A005592 n * A147748 n)

end

end A189317.P4970306389657627847

namespace A189317

/-- `5*A005592(n)*A147748(n)` -/
def P4970306389657627847.Spec : Prop :=
  ∀ n, P4970306389657627847.a n = A189317 n

end A189317

/-!
# A189318: Expansion of 5*(1-2*x)/(1-3*x-2*x^2+4*x^3).

The programs for A189318, the canonical program `A189318.P14706434184801915784` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189318 has offset 0).

The definition of A189318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-10x)/(1-3x-2x^2+4x^3))` (program `A189318.P14706434184801915784`, by `A189318.P14706434184801915784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189318.P14706434184801915784

`ogf((5-10x)/(1-3x-2x^2+4x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189318

/-- `ogf((5-10x)/(1-3x-2x^2+4x^3))` -/
def P14706434184801915784.Spec : Prop :=
  ∀ n, P14706434184801915784.a n = A189318 n

theorem P14706434184801915784.correct : P14706434184801915784.Spec := by
  intro n
  simp only [A189318]

end A189318

/-! ## A189318.P302746995796324408

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=5, a(1)=5, a(2)=25`
-/

namespace A189318.P302746995796324408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 25] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A189318.P302746995796324408

namespace A189318

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P302746995796324408.Spec : Prop :=
  ∀ n, P302746995796324408.a n = A189318 n

end A189318

/-! ## A189318.P7470940615436396312

`5*A052899(n)`
-/

namespace A189318.P7470940615436396312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A052899 n

end

end A189318.P7470940615436396312

namespace A189318

/-- `5*A052899(n)` -/
def P7470940615436396312.Spec : Prop :=
  ∀ n, P7470940615436396312.a n = A189318 n

end A189318

/-! ## A189318.P4388692097261969441

`∑[ogf((-5+10x)/(-1+2x+4x^2))]`
-/

namespace A189318.P4388692097261969441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10] [1, -2, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189318.P4388692097261969441

namespace A189318

/-- `∑[ogf((-5+10x)/(-1+2x+4x^2))]` -/
def P4388692097261969441.Spec : Prop :=
  ∀ n, P4388692097261969441.a n = A189318 n

end A189318

/-! ## A189318.P14895948400115152201

`∑[2*(a(n-1)+2*a(n-2))]` with `a(0)=5, a(1)=0`
-/

namespace A189318.P14895948400115152201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  2 * (f1 (n - 1) + 2 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189318.P14895948400115152201

namespace A189318

/-- `∑[2*(a(n-1)+2*a(n-2))]` -/
def P14895948400115152201.Spec : Prop :=
  ∀ n, (P14895948400115152201.a n : ℤ) = A189318 n

end A189318

/-! ## A189318.P12511789484275609223

`2*(a(n-1)+2*a(n-2))-5` with `a(0)=5, a(1)=5`
-/

namespace A189318.P12511789484275609223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  2 * (a (n - 1) + 2 * a (n - 2)) - 5

end

end A189318.P12511789484275609223

namespace A189318

/-- `2*(a(n-1)+2*a(n-2))-5` -/
def P12511789484275609223.Spec : Prop :=
  ∀ n, P12511789484275609223.a n = A189318 n

end A189318

/-! ## A189318.P8780193657692471498

`2*a(n-1)-(5-4*a(n-2))` with `a(0)=5, a(1)=5`
-/

namespace A189318.P8780193657692471498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  2 * a (n - 1) - (5 - 4 * a (n - 2))

end

end A189318.P8780193657692471498

namespace A189318

/-- `2*a(n-1)-(5-4*a(n-2))` -/
def P8780193657692471498.Spec : Prop :=
  ∀ n, P8780193657692471498.a n = A189318 n

end A189318

/-! ## A189318.P3026786464401712099

`Δ[A209084(n)]+1`
-/

namespace A189318.P3026786464401712099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A189318.P3026786464401712099

namespace A189318

/-- `Δ[A209084(n)]+1` -/
def P3026786464401712099.Spec : Prop :=
  ∀ n, P3026786464401712099.a n = A189318 n

end A189318

/-! ## A189318.P48452926010101021

`2*A087131(n)+1`
-/

namespace A189318.P48452926010101021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087131 n + 1

end

end A189318.P48452926010101021

namespace A189318

/-- `2*A087131(n)+1` -/
def P48452926010101021.Spec : Prop :=
  ∀ n, P48452926010101021.a n = A189318 n

end A189318

/-! ## A189318.P4651335827645847987

`4*A084057(n)+1`
-/

namespace A189318.P4651335827645847987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084057 n + 1

end

end A189318.P4651335827645847987

namespace A189318

/-- `4*A084057(n)+1` -/
def P4651335827645847987.Spec : Prop :=
  ∀ n, P4651335827645847987.a n = A189318 n

end A189318

/-! ## A189318.P12092315070747165372

`2*A272263(n)+3`
-/

namespace A189318.P12092315070747165372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272263 n + 3

end

end A189318.P12092315070747165372

namespace A189318

/-- `2*A272263(n)+3` -/
def P12092315070747165372.Spec : Prop :=
  ∀ n, P12092315070747165372.a n = A189318 n

end A189318

/-! ## A189318.P4009557091220376204

`4*A203579(n)-3`
-/

namespace A189318.P4009557091220376204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A203579 n - 3

end

end A189318.P4009557091220376204

namespace A189318

/-- `4*A203579(n)-3` -/
def P4009557091220376204.Spec : Prop :=
  ∀ n, P4009557091220376204.a n = A189318 n

end A189318

/-! ## A189318.P9317047185617326509

`Δ[2*A006483(n)]+1`
-/

namespace A189318.P9317047185617326509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A189318.P9317047185617326509

namespace A189318

/-- `Δ[2*A006483(n)]+1` -/
def P9317047185617326509.Spec : Prop :=
  ∀ n, P9317047185617326509.a n = A189318 n

end A189318

/-! ## A189318.P3657855396892858300

`Δ[2*A103435(n)]+1`
-/

namespace A189318.P3657855396892858300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A189318.P3657855396892858300

namespace A189318

/-- `Δ[2*A103435(n)]+1` -/
def P3657855396892858300.Spec : Prop :=
  ∀ n, P3657855396892858300.a n = A189318 n

end A189318

/-! ## A189318.P1467929861235418866

`Δ[abs(A086344(n+1))]+1`
-/

namespace A189318.P1467929861235418866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086344 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A189318.P1467929861235418866

namespace A189318

/-- `Δ[abs(A086344(n+1))]+1` -/
def P1467929861235418866.Spec : Prop :=
  ∀ n, P1467929861235418866.a n = A189318 n

end A189318

/-! ## A189318.P11702114320128537703

`2^(n+1)*A000032(n)+1`
-/

namespace A189318.P11702114320128537703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000032 n + 1

end

end A189318.P11702114320128537703

namespace A189318

/-- `2^(n+1)*A000032(n)+1` -/
def P11702114320128537703.Spec : Prop :=
  ∀ n, P11702114320128537703.a n = A189318 n

end A189318

/-! ## A189318.P17461358184633417099

`∑[5*2^n*Δ[A000045(n)]]`
-/

namespace A189318.P17461358184633417099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((2 ^ n : ℤ) * (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189318.P17461358184633417099

namespace A189318

/-- `∑[5*2^n*Δ[A000045(n)]]` -/
def P17461358184633417099.Spec : Prop :=
  ∀ n, P17461358184633417099.a n = A189318 n

end A189318

/-! ## A189318.P5628435431011977777

`Δ[A000045(n)*A198633(n)]+1`
-/

namespace A189318.P5628435431011977777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A189318.P5628435431011977777

namespace A189318

/-- `Δ[A000045(n)*A198633(n)]+1` -/
def P5628435431011977777.Spec : Prop :=
  ∀ n, P5628435431011977777.a n = A189318 n

end A189318

/-! ## A189318.P6536481515921419566

`A000032(n)*A011782(n+2)+1`
-/

namespace A189318.P6536481515921419566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A011782 (n + 2) + 1

end

end A189318.P6536481515921419566

namespace A189318

/-- `A000032(n)*A011782(n+2)+1` -/
def P6536481515921419566.Spec : Prop :=
  ∀ n, P6536481515921419566.a n = A189318 n

end A189318

/-! ## A189318.P7673289185530224518

`2*A000032(n)*A000079(n)+1`
-/

namespace A189318.P7673289185530224518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 n * A000079 n) + 1

end

end A189318.P7673289185530224518

namespace A189318

/-- `2*A000032(n)*A000079(n)+1` -/
def P7673289185530224518.Spec : Prop :=
  ∀ n, P7673289185530224518.a n = A189318 n

end A189318

/-!
# A189319: Number of nondecreasing arrangements of n+2 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189319, there is no canonical definition to state claims against.
-/

/-! ## A189319.P4313053949323323393

`A189326(∑[4*n]+1)`
-/

namespace A189319.P4313053949323323393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189319.P4313053949323323393

/-! ## A189319.P7563987734856837217

`and(-1, A189326(A001844(n)))`
-/

namespace A189319.P7563987734856837217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A189326 (A001844 n).toNat)

end

end A189319.P7563987734856837217

/-! ## A189319.P8596241016141484102

`A189326(n²+(n+1)²)%A227712(n)`
-/

namespace A189319.P8596241016141484102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (n ^ 2 + (n + 1) ^ 2)) (A227712 n)

end

end A189319.P8596241016141484102

/-! ## A189319.P9661819324224490634

`A007318(C(2, n))*A189326((n+1)²+n²)`
-/

namespace A189319.P9661819324224490634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189326 ((n + 1) ^ 2 + n ^ 2)

end

end A189319.P9661819324224490634

/-! ## A189319.P15365702121602659996

`A007318(∑[n])*A189326(A001844(n))`
-/

namespace A189319.P15365702121602659996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A189326 (A001844 n).toNat

end

end A189319.P15365702121602659996

/-!
# A189320: Number of nondecreasing arrangements of n+2 numbers in 0..3 with the last equal to 3 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189320, the canonical program `A189320.P12030736316793344149` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189320 has offset 1).

The definition of A189320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189320.P12030736316793344149

`a(n-1)+6` with `a(0)=5, a(1)=7, a(2)=11, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189320

/-- `a(n-1)+6` -/
def P12030736316793344149.Spec : Prop :=
  ∀ n, (P12030736316793344149.a n : ℤ) = A189320 (n + 1)

theorem P12030736316793344149.correct : P12030736316793344149.Spec := by
  intro n
  simp only [A189320, Nat.add_sub_cancel]

end A189320

/-!
# A189321: Number of nondecreasing arrangements of n+2 numbers in 0..4 with the last equal to 4 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189321, the canonical program `A189321.P5445217685994656672` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189321 has offset 1).

The definition of A189321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189321.P5445217685994656672

`ogf((7-9x+5x^2+x^3+x^4-x^5-x^6-x^7)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189321

/-- `ogf((7-9x+5x^2+x^3+x^4-x^5-x^6-x^7)/(1-3x+3x^2-x^3))` -/
def P5445217685994656672.Spec : Prop :=
  ∀ n, P5445217685994656672.a n = A189321 (n + 1)

theorem P5445217685994656672.correct : P5445217685994656672.Spec := by
  intro n
  simp only [A189321, Nat.add_sub_cancel]

end A189321

/-! ## A189321.P11428590966677042040

`A189326(∑[n+4]+3)`
-/

namespace A189321.P11428590966677042040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A189321.P11428590966677042040

namespace A189321

/-- `A189326(∑[n+4]+3)` -/
def P11428590966677042040.Spec : Prop :=
  ∀ n, P11428590966677042040.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P14586161443241982682

`or(char[4], A189326(A055998(n+2)))`
-/

namespace A189321.P14586161443241982682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189326 (A055998 (n + 2)).toNat)

end

end A189321.P14586161443241982682

namespace A189321

/-- `or(char[4], A189326(A055998(n+2)))` -/
def P14586161443241982682.Spec : Prop :=
  ∀ n, P14586161443241982682.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P13880540203013773132

`A189326(A055998(n+2))%A069473(n)`
-/

namespace A189321.P13880540203013773132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A055998 (n + 2)).toNat) (A069473 n)

end

end A189321.P13880540203013773132

namespace A189321

/-- `A189326(A055998(n+2))%A069473(n)` -/
def P13880540203013773132.Spec : Prop :=
  ∀ n, P13880540203013773132.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P8981183502865301204

`A189326(A055998(n+2))+A000007(n+1)`
-/

namespace A189321.P8981183502865301204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A189321.P8981183502865301204

namespace A189321

/-- `A189326(A055998(n+2))+A000007(n+1)` -/
def P8981183502865301204.Spec : Prop :=
  ∀ n, P8981183502865301204.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P16622341029193061988

`A189326(A055998(n+2))+A000038(n+1)`
-/

namespace A189321.P16622341029193061988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A055998 (n + 2)).toNat + A000038 (n + 1)

end

end A189321.P16622341029193061988

namespace A189321

/-- `A189326(A055998(n+2))+A000038(n+1)` -/
def P16622341029193061988.Spec : Prop :=
  ∀ n, P16622341029193061988.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P5502684673040552031

`A007318(C(2, n))*A189326(A055998(n+2))`
-/

namespace A189321.P5502684673040552031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189326 (A055998 (n + 2)).toNat

end

end A189321.P5502684673040552031

namespace A189321

/-- `A007318(C(2, n))*A189326(A055998(n+2))` -/
def P5502684673040552031.Spec : Prop :=
  ∀ n, P5502684673040552031.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P7937128492366064243

`A000203(gcd(n, n+1))*A189326(A055998(n+2))`
-/

namespace A189321.P7937128492366064243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A189326 (A055998 (n + 2)).toNat

end

end A189321.P7937128492366064243

namespace A189321

/-- `A000203(gcd(n, n+1))*A189326(A055998(n+2))` -/
def P7937128492366064243.Spec : Prop :=
  ∀ n, P7937128492366064243.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P17216619835793073656

`A008683(n+1)²!*A189326(A055998(n+2))`
-/

namespace A189321.P17216619835793073656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A189326 (A055998 (n + 2)).toNat

end

end A189321.P17216619835793073656

namespace A189321

/-- `A008683(n+1)²!*A189326(A055998(n+2))` -/
def P17216619835793073656.Spec : Prop :=
  ∀ n, P17216619835793073656.a n = A189321 (n + 1)

end A189321

/-! ## A189321.P13713466345524122267

`A007318(A014963(4*n+2))*A189326(A055998(n+2))`
-/

namespace A189321.P13713466345524122267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (4 * n + 2)).toNat * A189326 (A055998 (n + 2)).toNat

end

end A189321.P13713466345524122267

namespace A189321

/-- `A007318(A014963(4*n+2))*A189326(A055998(n+2))` -/
def P13713466345524122267.Spec : Prop :=
  ∀ n, P13713466345524122267.a n = A189321 (n + 1)

end A189321

/-!
# A189322: Number of nondecreasing arrangements of n+2 numbers in 0..5 with the last equal to 5 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189322, the canonical program `A189322.P15233738523797897497` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189322 has offset 1).

The definition of A189322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189322.P15233738523797897497

`ogf((8-4x+5x^2+3x^3+9x^4+9x^5+5x^6+3x^7)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189322

/-- `ogf((8-4x+5x^2+3x^3+9x^4+9x^5+5x^6+3x^7)/(1-2x+x^2))` -/
def P15233738523797897497.Spec : Prop :=
  ∀ n, P15233738523797897497.a n = A189322 (n + 1)

theorem P15233738523797897497.correct : P15233738523797897497.Spec := by
  intro n
  simp only [A189322, Nat.add_sub_cancel]

end A189322

/-!
# A189323: Number of nondecreasing arrangements of n+2 numbers in 0..6 with the last equal to 6 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189323, the canonical program `A189323.P13416945748606454081` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189323 has offset 1).

The definition of A189323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189323.P13416945748606454081

`ogf((10-12x+12x^2+8x^4+5x^5+4x^6-5x^7-5x^8-4x^9-x^10)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189323

/-- `ogf((10-12x+12x^2+8x^4+5x^5+4x^6-5x^7-5x^8-4x^9-x^10)/(1-3x+3x^2-x^3))` -/
def P13416945748606454081.Spec : Prop :=
  ∀ n, P13416945748606454081.a n = A189323 (n + 1)

theorem P13416945748606454081.correct : P13416945748606454081.Spec := by
  intro n
  simp only [A189323, Nat.add_sub_cancel]

end A189323

/-! ## A189323.P6744004838171145740

`A189326(∑[n+6]+10)`
-/

namespace A189323.P6744004838171145740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A189323.P6744004838171145740

namespace A189323

/-- `A189326(∑[n+6]+10)` -/
def P6744004838171145740.Spec : Prop :=
  ∀ n, P6744004838171145740.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P15515133632990586042

`xor(1, xor(1, A189326(A052905(n+3))))`
-/

namespace A189323.P15515133632990586042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A189326 (A052905 (n + 3)).toNat))

end

end A189323.P15515133632990586042

namespace A189323

/-- `xor(1, xor(1, A189326(A052905(n+3))))` -/
def P15515133632990586042.Spec : Prop :=
  ∀ n, P15515133632990586042.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P2202330489662974066

`abs(1-A189326(A055998(n+4)-2))+1`
-/

namespace A189323.P2202330489662974066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A189326 (A055998 (n + 4) - 2).toNat| + 1

end

end A189323.P2202330489662974066

namespace A189323

/-- `abs(1-A189326(A055998(n+4)-2))+1` -/
def P2202330489662974066.Spec : Prop :=
  ∀ n, P2202330489662974066.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P18046071734816899633

`A189326(A052905(n+3))%A016949(n)`
-/

namespace A189323.P18046071734816899633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A052905 (n + 3)).toNat) (A016949 n)

end

end A189323.P18046071734816899633

namespace A189323

/-- `A189326(A052905(n+3))%A016949(n)` -/
def P18046071734816899633.Spec : Prop :=
  ∀ n, P18046071734816899633.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P7277461768378784353

`and(A153881(n+2), A189326(A052905(n+3)))`
-/

namespace A189323.P7277461768378784353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 2)) (A189326 (A052905 (n + 3)).toNat)

end

end A189323.P7277461768378784353

namespace A189323

/-- `and(A153881(n+2), A189326(A052905(n+3)))` -/
def P7277461768378784353.Spec : Prop :=
  ∀ n, P7277461768378784353.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P7801427324992492508

`A189326(A052905(n+3))+A010051((n+1)²)`
-/

namespace A189323.P7801427324992492508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A052905 (n + 3)).toNat + A010051 ((n + 1) ^ 2)

end

end A189323.P7801427324992492508

namespace A189323

/-- `A189326(A052905(n+3))+A010051((n+1)²)` -/
def P7801427324992492508.Spec : Prop :=
  ∀ n, P7801427324992492508.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P9345606301540485193

`A007318(C(2, n))*A189326(A133263(n+6)-7)`
-/

namespace A189323.P9345606301540485193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189326 (A133263 (n + 6) - 7).toNat

end

end A189323.P9345606301540485193

namespace A189323

/-- `A007318(C(2, n))*A189326(A133263(n+6)-7)` -/
def P9345606301540485193.Spec : Prop :=
  ∀ n, P9345606301540485193.a n = A189323 (n + 1)

end A189323

/-! ## A189323.P11313793940133072604

`A189326(A133263(n+6)-7)/A007318(C(2, n²))`
-/

namespace A189323.P11313793940133072604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189326 (A133263 (n + 6) - 7).toNat : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A189323.P11313793940133072604

namespace A189323

/-- `A189326(A133263(n+6)-7)/A007318(C(2, n²))` -/
def P11313793940133072604.Spec : Prop :=
  ∀ n, P11313793940133072604.a n = (A189323 (n + 1) : ℚ)

end A189323

/-! ## A189323.P4710553706656595934

`A189326(A133263(n+6)-7)+A008683(8*n+4)`
-/

namespace A189323.P4710553706656595934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A133263 (n + 6) - 7).toNat + A008683 (8 * n + 4)

end

end A189323.P4710553706656595934

namespace A189323

/-- `A189326(A133263(n+6)-7)+A008683(8*n+4)` -/
def P4710553706656595934.Spec : Prop :=
  ∀ n, P4710553706656595934.a n = A189323 (n + 1)

end A189323

/-!
# A189324: Number of nondecreasing arrangements of n+2 numbers in 0..7 with the last equal to 7 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189324, the canonical program `A189324.P726688797644937929` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189324 has offset 1).

The definition of A189324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189324.P726688797644937929

`ogf((11-5x+8x^2+6x^3+20x^4+26x^5+30x^6+25x^7+14x^8+5x^9)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189324

/-- `ogf((11-5x+8x^2+6x^3+20x^4+26x^5+30x^6+25x^7+14x^8+5x^9)/(1-2x+x^2))` -/
def P726688797644937929.Spec : Prop :=
  ∀ n, P726688797644937929.a n = A189324 (n + 1)

theorem P726688797644937929.correct : P726688797644937929.Spec := by
  intro n
  simp only [A189324, Nat.add_sub_cancel]

end A189324

/-!
# A189325: Number of nondecreasing arrangements of n+2 numbers in 0..8 with the last equal to 8 and each after the second equal to the sum of one or two of the preceding four.

The programs for A189325, the canonical program `A189325.P8529578476652839947` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189325 has offset 1).

The definition of A189325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189325.P8529578476652839947

`ogf((13-28x+31x^2-9x^3+10x^4+3x^5+7x^6-21x^7-14x^8-10x^9+2x^10+10x^11+7x^12+x^13)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189325

/-- `ogf((13-28x+31x^2-9x^3+10x^4+3x^5+7x^6-21x^7-14x^8-10x^9+2x^10+10x^11+7x^12+x^13)/(1-4x+6x^2-4x^3+x^4))` -/
def P8529578476652839947.Spec : Prop :=
  ∀ n, P8529578476652839947.a n = A189325 (n + 1)

theorem P8529578476652839947.correct : P8529578476652839947.Spec := by
  intro n
  simp only [A189325, Nat.add_sub_cancel]

end A189325

/-! ## A189325.P17057813338102302350

`A189326(eq[7, A193592(n)])`
-/

namespace A189325.P17057813338102302350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189325.P17057813338102302350

namespace A189325

/-- `A189326(eq[7, A193592(n)])` -/
def P17057813338102302350.Spec : Prop :=
  ∀ n, P17057813338102302350.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P5877602282969163286

`A189326(A155212(n+4)+1)`
-/

namespace A189325.P5877602282969163286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A155212 (n + 4) + 1).toNat

end

end A189325.P5877602282969163286

namespace A189325

/-- `A189326(A155212(n+4)+1)` -/
def P5877602282969163286.Spec : Prop :=
  ∀ n, P5877602282969163286.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P18043636942227424812

`A189326(A055999(n+5)-1)`
-/

namespace A189325.P18043636942227424812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A055999 (n + 5) - 1).toNat

end

end A189325.P18043636942227424812

namespace A189325

/-- `A189326(A055999(n+5)-1)` -/
def P18043636942227424812.Spec : Prop :=
  ∀ n, P18043636942227424812.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P4264200337407789968

`A189326(A052905(n+5)-2)`
-/

namespace A189325.P4264200337407789968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A052905 (n + 5) - 2).toNat

end

end A189325.P4264200337407789968

namespace A189325

/-- `A189326(A052905(n+5)-2)` -/
def P4264200337407789968.Spec : Prop :=
  ∀ n, P4264200337407789968.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P10947513038090149725

`A189326(A046691(n+6)-3)`
-/

namespace A189325.P10947513038090149725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A046691 (n + 6) - 3).toNat

end

end A189325.P10947513038090149725

namespace A189325

/-- `A189326(A046691(n+6)-3)` -/
def P10947513038090149725.Spec : Prop :=
  ∀ n, P10947513038090149725.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P13743100570427495333

`A189326(A027379(n+6)-4)`
-/

namespace A189325.P13743100570427495333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A027379 (n + 6) - 4).toNat

end

end A189325.P13743100570427495333

namespace A189325

/-- `A189326(A027379(n+6)-4)` -/
def P13743100570427495333.Spec : Prop :=
  ∀ n, P13743100570427495333.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P14767686467284766514

`A189326(A000096(n+7)-6)`
-/

namespace A189325.P14767686467284766514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000096 (n + 7) - 6).toNat

end

end A189325.P14767686467284766514

namespace A189325

/-- `A189326(A000096(n+7)-6)` -/
def P14767686467284766514.Spec : Prop :=
  ∀ n, P14767686467284766514.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P10619864878729671170

`A189326(A000217(n+8)-7)`
-/

namespace A189325.P10619864878729671170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000217 (n + 8) - 7).toNat

end

end A189325.P10619864878729671170

namespace A189325

/-- `A189326(A000217(n+8)-7)` -/
def P10619864878729671170.Spec : Prop :=
  ∀ n, P10619864878729671170.a n = A189325 (n + 1)

end A189325

/-! ## A189325.P17165185901134313522

`A189326(A000124(n+8)-8)`
-/

namespace A189325.P17165185901134313522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000124 (n + 8) - 8).toNat

end

end A189325.P17165185901134313522

namespace A189325

/-- `A189326(A000124(n+8)-8)` -/
def P17165185901134313522.Spec : Prop :=
  ∀ n, P17165185901134313522.a n = A189325 (n + 1)

end A189325

/-!
# A189326: T(n,k)=Number of nondecreasing arrangements of n+2 numbers in 0..k with the last equal to k and each after the second equal to the sum of one or two of the preceding four.

The programs for A189326, there is no canonical definition to state claims against.
-/

/-! ## A189326.P11190769532604984244

`A190041(n+1)+A184159(A099594(n))`
-/

namespace A189326.P11190769532604984244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (n + 1) + A184159 (A099594 n).toNat

end

end A189326.P11190769532604984244

/-! ## A189326.P10719806074081474225

`A190041(n+1)+A163510(A157273(n))`
-/

namespace A189326.P10719806074081474225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190041 (n + 1) + A163510 (A157273 n).toNat

end

end A189326.P10719806074081474225

/-! ## A189326.P12620896982657508989

`A288707(A324571(n+2))+A190041(n+1)`
-/

namespace A189326.P12620896982657508989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (A324571 (n + 2)).toNat + A190041 (n + 1)

end

end A189326.P12620896982657508989

/-! ## A189326.P16888001996517292533

`A360109(A360096(n+4))+A190041(n+1)`
-/

namespace A189326.P16888001996517292533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (A360096 (n + 4)).toNat + A190041 (n + 1)

end

end A189326.P16888001996517292533

/-! ## A189326.P13912473865854506026

`A373264(A077615(n+1))+A190041(n+1)`
-/

namespace A189326.P13912473865854506026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373264 (A077615 (n + 1)).toNat + A190041 (n + 1)

end

end A189326.P13912473865854506026

/-!
# A189327: Number of nondecreasing arrangements of 4 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189327, the canonical program `A189327.P6122547685204206992` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189327 has offset 1).

The definition of A189327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189327.P6122547685204206992

`∑[3-∑[xor(n, (-1)^n)]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189327

/-- `∑[3-∑[xor(n, (-1)^n)]]` -/
def P6122547685204206992.Spec : Prop :=
  ∀ n, P6122547685204206992.a n = A189327 (n + 1)

theorem P6122547685204206992.correct : P6122547685204206992.Spec := by
  intro n
  simp only [A189327, Nat.add_sub_cancel]

end A189327

/-! ## A189327.P17476294494795964951

`∑[∑[ogf((2+6x+3x^2)/(1+2x+x^2))]]`
-/

namespace A189327.P17476294494795964951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189327.P17476294494795964951

namespace A189327

/-- `∑[∑[ogf((2+6x+3x^2)/(1+2x+x^2))]]` -/
def P17476294494795964951.Spec : Prop :=
  ∀ n, P17476294494795964951.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P17981625940171431243

`ogf((2+6x+3x^2)/(1-2x^2+x^4))`
-/

namespace A189327.P17981625940171431243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 3] [1, 0, -2, 0, 1] n

end

end A189327.P17981625940171431243

namespace A189327

/-- `ogf((2+6x+3x^2)/(1-2x^2+x^4))` -/
def P17981625940171431243.Spec : Prop :=
  ∀ n, P17981625940171431243.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P13076459646393512448

`∑[Δ[lcm(2, n+1)/2]+2]`
-/

namespace A189327.P13076459646393512448
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189327.P13076459646393512448

namespace A189327

/-- `∑[Δ[lcm(2, n+1)/2]+2]` -/
def P13076459646393512448.Spec : Prop :=
  ∀ n, P13076459646393512448.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P8087001136425747924

`∑[∑[-xor(1, a(n-1))]]` with `a(0)=2, a(1)=2`
-/

namespace A189327.P8087001136425747924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  -Int.xor 1 (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189327.P8087001136425747924

namespace A189327

/-- `∑[∑[-xor(1, a(n-1))]]` -/
def P8087001136425747924.Spec : Prop :=
  ∀ n, P8087001136425747924.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P17103871460320421511

`Δ[n²]+(n+2)/gcd(2, n)`
-/

namespace A189327.P17103871460320421511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (n + 2 : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A189327.P17103871460320421511

namespace A189327

/-- `Δ[n²]+(n+2)/gcd(2, n)` -/
def P17103871460320421511.Spec : Prop :=
  ∀ n, P17103871460320421511.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P11117461563999057790

`∑[a(n-2)-(-1)^n]` with `a(0)=2, a(1)=4`
-/

namespace A189327.P11117461563999057790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189327.P11117461563999057790

namespace A189327

/-- `∑[a(n-2)-(-1)^n]` -/
def P11117461563999057790.Spec : Prop :=
  ∀ n, P11117461563999057790.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P15077876176821456109

`∑[3-∑[(n+1)*(-1)^n]]`
-/

namespace A189327.P15077876176821456109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189327.P15077876176821456109

namespace A189327

/-- `∑[3-∑[(n+1)*(-1)^n]]` -/
def P15077876176821456109.Spec : Prop :=
  ∀ n, P15077876176821456109.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P7465510570503678795

`a(n-2)+and(1, n)+5` with `a(0)=2, a(1)=6`
-/

namespace A189327.P7465510570503678795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 2) + (Nat.land 1 n + 5)

end

end A189327.P7465510570503678795

namespace A189327

/-- `a(n-2)+and(1, n)+5` -/
def P7465510570503678795.Spec : Prop :=
  ∀ n, (P7465510570503678795.a n : ℤ) = A189327 (n + 1)

end A189327

/-! ## A189327.P14034084399346799662

`Δ[n²]+gcd(n+2, ∑[n+1])`
-/

namespace A189327.P14034084399346799662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A189327.P14034084399346799662

namespace A189327

/-- `Δ[n²]+gcd(n+2, ∑[n+1])` -/
def P14034084399346799662.Spec : Prop :=
  ∀ n, P14034084399346799662.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P6269086591075191298

`(n+2)*∑[and(1, n)]-∑[n-2]`
-/

namespace A189327.P6269086591075191298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A189327.P6269086591075191298

namespace A189327

/-- `(n+2)*∑[and(1, n)]-∑[n-2]` -/
def P6269086591075191298.Spec : Prop :=
  ∀ n, P6269086591075191298.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P10521996115082831058

`∑[11-a(n-1)]-a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A189327.P10521996115082831058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A189327.P10521996115082831058

namespace A189327

/-- `∑[11-a(n-1)]-a(n-1)` -/
def P10521996115082831058.Spec : Prop :=
  ∀ n, P10521996115082831058.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P12728575927380989094

`2*n+1-(n+2)/or(n, -2)`
-/

namespace A189327.P12728575927380989094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) - (n + 2 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)

end

end A189327.P12728575927380989094

namespace A189327

/-- `2*n+1-(n+2)/or(n, -2)` -/
def P12728575927380989094.Spec : Prop :=
  ∀ n, P12728575927380989094.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P16334545477897419347

`∑[n+2]%(n+2)+2*(n+1)`
-/

namespace A189327.P16334545477897419347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) + 2 * (n + 1)

end

end A189327.P16334545477897419347

namespace A189327

/-- `∑[n+2]%(n+2)+2*(n+1)` -/
def P16334545477897419347.Spec : Prop :=
  ∀ n, (P16334545477897419347.a n : ℤ) = A189327 (n + 1)

end A189327

/-! ## A189327.P7503963242561143952

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=7, a(3)=12`
-/

namespace A189327.P7503963242561143952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 7, 12] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A189327.P7503963242561143952

namespace A189327

/-- `2*a(n-2)-a(n-4)` -/
def P7503963242561143952.Spec : Prop :=
  ∀ n, P7503963242561143952.a n = A189327 (n + 1)

end A189327

/-! ## A189327.P14297768533770217059

`(n+2)/(2-and(1, n))+2*n+1`
-/

namespace A189327.P14297768533770217059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ) + (2 * n + 1 : ℚ)

end

end A189327.P14297768533770217059

namespace A189327

/-- `(n+2)/(2-and(1, n))+2*n+1` -/
def P14297768533770217059.Spec : Prop :=
  ∀ n, P14297768533770217059.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P10079762849779953755

`gcd((n+2)², C(n+2, 2))+2*n+1`
-/

namespace A189327.P10079762849779953755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ 2) (Nat.choose (n + 2) 2) + (2 * n + 1)

end

end A189327.P10079762849779953755

namespace A189327

/-- `gcd((n+2)², C(n+2, 2))+2*n+1` -/
def P10079762849779953755.Spec : Prop :=
  ∀ n, (P10079762849779953755.a n : ℤ) = A189327 (n + 1)

end A189327

/-! ## A189327.P4541267619505070564

`(n+2)/(and(1, n+1)+1)+2*n+1`
-/

namespace A189327.P4541267619505070564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ) + (2 * n + 1 : ℚ)

end

end A189327.P4541267619505070564

namespace A189327

/-- `(n+2)/(and(1, n+1)+1)+2*n+1` -/
def P4541267619505070564.Spec : Prop :=
  ∀ n, P4541267619505070564.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P1071712225989233625

`lcm(n+3, C(n+3, 2))/(n+3)+2*n+1`
-/

namespace A189327.P1071712225989233625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (Nat.choose (n + 3) 2) : ℚ) / (n + 3 : ℚ) + (2 * n + 1 : ℚ)

end

end A189327.P1071712225989233625

namespace A189327

/-- `lcm(n+3, C(n+3, 2))/(n+3)+2*n+1` -/
def P1071712225989233625.Spec : Prop :=
  ∀ n, P1071712225989233625.a n = (A189327 (n + 1) : ℚ)

end A189327

/-! ## A189327.P15911396661391563936

`Δ[A210978(n)]+n+1`
-/

namespace A189327.P15911396661391563936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A189327.P15911396661391563936

namespace A189327

/-- `Δ[A210978(n)]+n+1` -/
def P15911396661391563936.Spec : Prop :=
  ∀ n, P15911396661391563936.a n = A189327 (n + 1)

end A189327

/-!
# A189328: Number of nondecreasing arrangements of 5 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189328, the canonical program `A189328.P16105181521168813110` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189328 has offset 1).

The definition of A189328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189328.P16105181521168813110

`ogf((2+14x+45x^2+103x^3+180x^4+264x^5+326x^6+350x^7+322x^8+258x^9+173x^10+97x^11+40x^12+11x^13)/(1+3x+5x^2+5x^3+2x^4-3x^5-8x^6-10x^7-8x^8-3x^9+2x^10+5x^11+5x^12+3x^13+x^14))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189328

/-- `ogf((2+14x+45x^2+103x^3+180x^4+264x^5+326x^6+350x^7+322x^8+258x^9+173x^10+97x^11+40x^12+11x^13)/(1+3x+5x^2+5x^3+2x^4-3x^5-8x^6-10x^7-8x^8-3x^9+2x^10+5x^11+5x^12+3x^13+x^14))` -/
def P16105181521168813110.Spec : Prop :=
  ∀ n, P16105181521168813110.a n = A189328 (n + 1)

theorem P16105181521168813110.correct : P16105181521168813110.Spec := by
  intro n
  simp only [A189328, Nat.add_sub_cancel]

end A189328

/-! ## A189328.P13374154178023375445

`A189326(∑[n+2]+4)`
-/

namespace A189328.P13374154178023375445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189328.P13374154178023375445

namespace A189328

/-- `A189326(∑[n+2]+4)` -/
def P13374154178023375445.Spec : Prop :=
  ∀ n, P13374154178023375445.a n = A189328 (n + 1)

end A189328

/-! ## A189328.P3304512977652425932

`and(-1, A189326(A167614(n+1)))`
-/

namespace A189328.P3304512977652425932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A189326 (A167614 (n + 1)).toNat)

end

end A189328.P3304512977652425932

namespace A189328

/-- `and(-1, A189326(A167614(n+1)))` -/
def P3304512977652425932.Spec : Prop :=
  ∀ n, P3304512977652425932.a n = A189328 (n + 1)

end A189328

/-! ## A189328.P12426803870344217583

`or(char[2], A189326(A046691(n)+7))`
-/

namespace A189328.P12426803870344217583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189326 (A046691 n + 7).toNat)

end

end A189328.P12426803870344217583

namespace A189328

/-- `or(char[2], A189326(A046691(n)+7))` -/
def P12426803870344217583.Spec : Prop :=
  ∀ n, P12426803870344217583.a n = A189328 (n + 1)

end A189328

/-! ## A189328.P4485198369839886035

`A189326(A167499(n)+n)%(n+4)²`
-/

namespace A189328.P4485198369839886035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A167499 n + (n : ℤ)).toNat) ((n + 4) ^ 2 : ℤ)

end

end A189328.P4485198369839886035

namespace A189328

/-- `A189326(A167499(n)+n)%(n+4)²` -/
def P4485198369839886035.Spec : Prop :=
  ∀ n, P4485198369839886035.a n = A189328 (n + 1)

end A189328

/-! ## A189328.P5751636442631154729

`A189326(A034856(n+1)+5)%(n+2)²`
-/

namespace A189328.P5751636442631154729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A034856 (n + 1) + 5).toNat) ((n + 2) ^ 2 : ℤ)

end

end A189328.P5751636442631154729

namespace A189328

/-- `A189326(A034856(n+1)+5)%(n+2)²` -/
def P5751636442631154729.Spec : Prop :=
  ∀ n, P5751636442631154729.a n = A189328 (n + 1)

end A189328

/-! ## A189328.P8584354685450155135

`A000005(gcd(n, n+1))*A189326(A046691(n)+7)`
-/

namespace A189328.P8584354685450155135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A189326 (A046691 n + 7).toNat

end

end A189328.P8584354685450155135

namespace A189328

/-- `A000005(gcd(n, n+1))*A189326(A046691(n)+7)` -/
def P8584354685450155135.Spec : Prop :=
  ∀ n, P8584354685450155135.a n = A189328 (n + 1)

end A189328

/-!
# A189329: Number of nondecreasing arrangements of 6 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189329, there is no canonical definition to state claims against.
-/

/-! ## A189329.P13337421236001294060

`A189326(∑[n+3]+7)`
-/

namespace A189329.P13337421236001294060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A189329.P13337421236001294060

/-! ## A189329.P9407327126981911833

`or(char[4], A189326(A055999(n)+10))`
-/

namespace A189329.P9407327126981911833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189326 (A055999 n + 10).toNat)

end

end A189329.P9407327126981911833

/-! ## A189329.P15743784127045406677

`or(char[4], A189326(A167614(n+2)+1))`
-/

namespace A189329.P15743784127045406677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189326 (A167614 (n + 2) + 1).toNat)

end

end A189329.P15743784127045406677

/-! ## A189329.P1936689302004828510

`A189326(Δ[A008778(n)]+6)+n%-1`
-/

namespace A189329.P1936689302004828510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (f1 (n + 1) - f1 n + 6).toNat + Int.tmod (n : ℤ) (-1)

end

end A189329.P1936689302004828510

/-! ## A189329.P691160144107005461

`A189326(Δ[A008778(n)]+6)%A001545(n)`
-/

namespace A189329.P691160144107005461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (f1 (n + 1) - f1 n + 6).toNat) (A001545 n)

end

end A189329.P691160144107005461

/-! ## A189329.P1288248643634121885

`A007318(C(2, n))*A189326(A055999(n)+10)`
-/

namespace A189329.P1288248643634121885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189326 (A055999 n + 10).toNat

end

end A189329.P1288248643634121885

/-! ## A189329.P4280242918675474546

`A189326(A055999(n)+10)%A000203((n+4)²)`
-/

namespace A189329.P4280242918675474546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A055999 n + 10).toNat) (A000203 ((n + 4) ^ 2))

end

end A189329.P4280242918675474546

/-! ## A189329.P9656278245875095325

`A189326(Δ[A008778(n)]+6)+A000007(n+1)`
-/

namespace A189329.P9656278245875095325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (f1 (n + 1) - f1 n + 6).toNat + A000007 (n + 1)

end

end A189329.P9656278245875095325

/-! ## A189329.P4854940459004707152

`A007318(C(2, n))*A189326(A167614(n+2)+1)`
-/

namespace A189329.P4854940459004707152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A189326 (A167614 (n + 2) + 1).toNat

end

end A189329.P4854940459004707152

/-!
# A189330: Number of nondecreasing arrangements of 7 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189330, there is no canonical definition to state claims against.
-/

/-! ## A189330.P8352268062005965001

`A189326(∑[n+4]+11)`
-/

namespace A189330.P8352268062005965001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A189330.P8352268062005965001

/-! ## A189330.P8600851919705906868

`or(char[7], A189326(A167499(n+3)))`
-/

namespace A189330.P8600851919705906868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189326 (A167499 (n + 3)).toNat)

end

end A189330.P8600851919705906868

/-! ## A189330.P9129941192667017223

`A189326(A167499(n+3))%A064059(n)`
-/

namespace A189330.P9129941192667017223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189326 (A167499 (n + 3)).toNat) (A064059 n)

end

end A189330.P9129941192667017223

/-! ## A189330.P8785278221853810561

`A189326(A167499(n+3))+char[A177682(n)]`
-/

namespace A189330.P8785278221853810561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189330.P8785278221853810561

/-! ## A189330.P9386412835983228464

`A189326(A167499(n+3))+A000007(n+1)`
-/

namespace A189330.P9386412835983228464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 3)).toNat + A000007 (n + 1)

end

end A189330.P9386412835983228464

/-! ## A189330.P1299878673248918187

`A189326(A167499(n+3))+val(A000040(n+1), 4)`
-/

namespace A189330.P1299878673248918187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A189330.P1299878673248918187

/-! ## A189330.P5711442105147293469

`A189326(A167499(n+3))+val(A006530(n+1), 4)`
-/

namespace A189330.P5711442105147293469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 3)).toNat + (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 4 : ℤ)

end

end A189330.P5711442105147293469

/-! ## A189330.P2000593133148531160

`A007318(floor(1/(n+1)))*A189326(A167499(n+3))`
-/

namespace A189330.P2000593133148531160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A189326 (A167499 (n + 3)).toNat

end

end A189330.P2000593133148531160

/-!
# A189331: Number of nondecreasing arrangements of 8 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189331, there is no canonical definition to state claims against.
-/

/-! ## A189331.P1944955567305400452

`A189326(A166136(n+4))`
-/

namespace A189331.P1944955567305400452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A166136 (n + 4)).toNat

end

end A189331.P1944955567305400452

/-! ## A189331.P3835581329451797988

`A189326(A056115(n)+21)`
-/

namespace A189331.P3835581329451797988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A056115 n + 21).toNat

end

end A189331.P3835581329451797988

/-! ## A189331.P12840659908099383834

`A189326(A167499(n+4)+1)`
-/

namespace A189331.P12840659908099383834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 4) + 1).toNat

end

end A189331.P12840659908099383834

/-! ## A189331.P8908620788103911006

`A189326(A167487(n+4)-1)`
-/

namespace A189331.P8908620788103911006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167487 (n + 4) - 1).toNat

end

end A189331.P8908620788103911006

/-! ## A189331.P10706681570226107828

`A189326(A167614(n+4)+3)`
-/

namespace A189331.P10706681570226107828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167614 (n + 4) + 3).toNat

end

end A189331.P10706681570226107828

/-! ## A189331.P1096164493118085570

`A189326(A000124(n+5)+5)`
-/

namespace A189331.P1096164493118085570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000124 (n + 5) + 5).toNat

end

end A189331.P1096164493118085570

/-! ## A189331.P17175498172688747863

`A189326(A134869(n+5)+5)`
-/

namespace A189331.P17175498172688747863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A134869 (n + 5) + 5).toNat

end

end A189331.P17175498172688747863

/-! ## A189331.P2988997721449162223

`A189326(A000096(n+4)+7)`
-/

namespace A189331.P2988997721449162223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000096 (n + 4) + 7).toNat

end

end A189331.P2988997721449162223

/-! ## A189331.P8089127605534109538

`A189326(A000217(n+5)+6)`
-/

namespace A189331.P8089127605534109538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000217 (n + 5) + 6).toNat

end

end A189331.P8089127605534109538

/-! ## A189331.P6256787204040961572

`A189326(A046691(n+3)+10)`
-/

namespace A189331.P6256787204040961572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A046691 (n + 3) + 10).toNat

end

end A189331.P6256787204040961572

/-!
# A189332: Number of nondecreasing arrangements of 9 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189332, there is no canonical definition to state claims against.
-/

/-! ## A189332.P2047753747001171620

`A189326(C(n+8, 2)-n)`
-/

namespace A189332.P2047753747001171620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (Nat.choose (n + 8) 2 - n)

end

end A189332.P2047753747001171620

/-! ## A189332.P15775284333252876544

`A189326(A056119(n)+28)`
-/

namespace A189332.P15775284333252876544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A056119 n + 28).toNat

end

end A189332.P15775284333252876544

/-! ## A189332.P2751473497541572646

`A189326(A166136(n+5)+1)`
-/

namespace A189332.P2751473497541572646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A166136 (n + 5) + 1).toNat

end

end A189332.P2751473497541572646

/-! ## A189332.P8017161328603931474

`A189326(A167499(n+5)+2)`
-/

namespace A189332.P8017161328603931474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 5) + 2).toNat

end

end A189332.P8017161328603931474

/-! ## A189332.P13184523868178689428

`A189326(A167614(n+5)+4)`
-/

namespace A189332.P13184523868178689428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167614 (n + 5) + 4).toNat

end

end A189332.P13184523868178689428

/-! ## A189332.P17600284802706332528

`A189326(A000124(n+6)+6)`
-/

namespace A189332.P17600284802706332528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000124 (n + 6) + 6).toNat

end

end A189332.P17600284802706332528

/-! ## A189332.P8604679563221529162

`A189326(A134869(n+6)+6)`
-/

namespace A189332.P8604679563221529162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A134869 (n + 6) + 6).toNat

end

end A189332.P8604679563221529162

/-! ## A189332.P1109337226836557905

`A189326(A000096(n+5)+8)`
-/

namespace A189332.P1109337226836557905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000096 (n + 5) + 8).toNat

end

end A189332.P1109337226836557905

/-! ## A189332.P1380111013883909409

`A189326(A000217(n+6)+7)`
-/

namespace A189332.P1380111013883909409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000217 (n + 6) + 7).toNat

end

end A189332.P1380111013883909409

/-! ## A189332.P3322401658034005337

`A189326(A027379(n+4)+10)`
-/

namespace A189332.P3322401658034005337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A027379 (n + 4) + 10).toNat

end

end A189332.P3322401658034005337

/-!
# A189333: Number of nondecreasing arrangements of 10 numbers in 0..n with the last equal to n and each after the second equal to the sum of one or two of the preceding four.

The programs for A189333, there is no canonical definition to state claims against.
-/

/-! ## A189333.P8822612890250378823

`A189326(A167487(n+6)+1)`
-/

namespace A189333.P8822612890250378823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167487 (n + 6) + 1).toNat

end

end A189333.P8822612890250378823

/-! ## A189333.P8218644317360206598

`A189326(A166136(n+6)+2)`
-/

namespace A189333.P8218644317360206598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A166136 (n + 6) + 2).toNat

end

end A189333.P8218644317360206598

/-! ## A189333.P11413188536949954327

`A189326(A167499(n+6)+3)`
-/

namespace A189333.P11413188536949954327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167499 (n + 6) + 3).toNat

end

end A189333.P11413188536949954327

/-! ## A189333.P10373304507557852271

`A189326(A167614(n+6)+5)`
-/

namespace A189333.P10373304507557852271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A167614 (n + 6) + 5).toNat

end

end A189333.P10373304507557852271

/-! ## A189333.P2222316726936299308

`A189326(A000124(n+7)+7)`
-/

namespace A189333.P2222316726936299308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000124 (n + 7) + 7).toNat

end

end A189333.P2222316726936299308

/-! ## A189333.P4945901392326385036

`A189326(A134869(n+7)+7)`
-/

namespace A189333.P4945901392326385036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A134869 (n + 7) + 7).toNat

end

end A189333.P4945901392326385036

/-! ## A189333.P13022615787064122583

`A189326(A000217(n+7)+8)`
-/

namespace A189333.P13022615787064122583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000217 (n + 7) + 8).toNat

end

end A189333.P13022615787064122583

/-! ## A189333.P17913216523749433665

`A189326(A046691(n+5)+12)`
-/

namespace A189333.P17913216523749433665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A046691 (n + 5) + 12).toNat

end

end A189333.P17913216523749433665

/-! ## A189333.P6717200988235601691

`A189326(A052905(n+4)+13)`
-/

namespace A189333.P6717200988235601691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A052905 (n + 4) + 13).toNat

end

end A189333.P6717200988235601691

/-! ## A189333.P12854540141088293954

`A189326(A000096(n+7)-(n-1))`
-/

namespace A189333.P12854540141088293954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189326 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A189333.P12854540141088293954

/-!
# A189334: Expansion of g.f. (1-6*x+x^2)/(1-10*x+5*x^2).

The programs for A189334, the canonical program `A189334.P2997227692128036238` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189334 has offset 0).

The definition of A189334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x+x^2)/(1-10x+5x^2))` (program `A189334.P2997227692128036238`, by `A189334.P2997227692128036238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189334.P2997227692128036238

`ogf((1-6x+x^2)/(1-10x+5x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189334

/-- `ogf((1-6x+x^2)/(1-10x+5x^2))` -/
def P2997227692128036238.Spec : Prop :=
  ∀ n, P2997227692128036238.a n = A189334 n

theorem P2997227692128036238.correct : P2997227692128036238.Spec := by
  intro n
  simp only [A189334]

end A189334

/-! ## A189334.P11948132578718232409

`10*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=4, a(2)=36`
-/

namespace A189334.P11948132578718232409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 36] fun n a =>
  10 * a (n - 1) - 5 * a (n - 2)

end

end A189334.P11948132578718232409

namespace A189334

/-- `10*a(n-1)-5*a(n-2)` -/
def P11948132578718232409.Spec : Prop :=
  ∀ n, P11948132578718232409.a n = A189334 n

end A189334

/-! ## A189334.P13886574936591654626

`A189317(n)/5`
-/

namespace A189334.P13886574936591654626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189317 n : ℚ) / 5

end

end A189334.P13886574936591654626

namespace A189334

/-- `A189317(n)/5` -/
def P13886574936591654626.Spec : Prop :=
  ∀ n, P13886574936591654626.a n = (A189334 n : ℚ)

end A189334

/-! ## A189334.P11228222042263057687

`A212500(comp[2*(n+1)]+1)`
-/

namespace A189334.P11228222042263057687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212500 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A189334.P11228222042263057687

namespace A189334

/-- `A212500(comp[2*(n+1)]+1)` -/
def P11228222042263057687.Spec : Prop :=
  ∀ n, P11228222042263057687.a n = A189334 n

end A189334

/-! ## A189334.P8392201486287227121

`A220673(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A189334.P8392201486287227121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A220673 (n - 1) - a (n - 1)

end

end A189334.P8392201486287227121

namespace A189334

/-- `A220673(n-1)-a(n-1)` -/
def P8392201486287227121.Spec : Prop :=
  ∀ n, P8392201486287227121.a n = A189334 n

end A189334

/-! ## A189334.P12535517330842357656

`record[and((-1)^n, A212500(n+1))]`
-/

namespace A189334.P12535517330842357656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A212500 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189334.P12535517330842357656

namespace A189334

/-- `record[and((-1)^n, A212500(n+1))]` -/
def P12535517330842357656.Spec : Prop :=
  ∀ n, P12535517330842357656.a n = A189334 n

end A189334

/-! ## A189334.P6769518927015850810

`A005592(n)*A147748(n)`
-/

namespace A189334.P6769518927015850810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n * A147748 n

end

end A189334.P6769518927015850810

namespace A189334

/-- `A005592(n)*A147748(n)` -/
def P6769518927015850810.Spec : Prop :=
  ∀ n, P6769518927015850810.a n = A189334 n

end A189334

/-!
# A189335: Number of n X n binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189335, there is no canonical definition to state claims against.
-/

/-! ## A189335.P4704137062041354688

`A189343(∑[4*n]+1)`
-/

namespace A189335.P4704137062041354688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189335.P4704137062041354688

/-! ## A189335.P16490582873255766784

`record[A189343(Δ[A235355(n)])]`
-/

namespace A189335.P16490582873255766784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189335.P16490582873255766784

/-! ## A189335.P17892992483019001687

`A189343(A001844(n))+char[8]`
-/

namespace A189335.P17892992483019001687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A189335.P17892992483019001687

/-! ## A189335.P4173660505818257859

`record[A003982(n)*A189343(n+1)]`
-/

namespace A189335.P4173660505818257859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189335.P4173660505818257859

/-!
# A189336: Number of nX2 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189336, the canonical program `A189336.P6843450456178606218` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189336 has offset 1).

The definition of A189336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189336.P6843450456178606218

`record[2*a(n-1)+a(n-4)-a(n-3)]²` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189336

/-- `record[2*a(n-1)+a(n-4)-a(n-3)]²` -/
def P6843450456178606218.Spec : Prop :=
  ∀ n, P6843450456178606218.a n = A189336 (n + 1)

theorem P6843450456178606218.correct : P6843450456178606218.Spec := by
  intro n
  simp only [A189336, Nat.add_sub_cancel]

end A189336

/-! ## A189336.P889613273334418390

`A049864(n+3)²`
-/

namespace A189336.P889613273334418390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 3) ^ 2

end

end A189336.P889613273334418390

namespace A189336

/-- `A049864(n+3)²` -/
def P889613273334418390.Spec : Prop :=
  ∀ n, P889613273334418390.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P5753038482860587584

`Δ[A049858(n+3)]²`
-/

namespace A189336.P5753038482860587584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A189336.P5753038482860587584

namespace A189336

/-- `Δ[A049858(n+3)]²` -/
def P5753038482860587584.Spec : Prop :=
  ∀ n, P5753038482860587584.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P8851231461149461200

`Δ[Δ[A290987(n+1)]]²`
-/

namespace A189336.P8851231461149461200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A189336.P8851231461149461200

namespace A189336

/-- `Δ[Δ[A290987(n+1)]]²` -/
def P8851231461149461200.Spec : Prop :=
  ∀ n, P8851231461149461200.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P16559131501898035029

`(∑[A059633(n+3)]+1)²`
-/

namespace A189336.P16559131501898035029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A189336.P16559131501898035029

namespace A189336

/-- `(∑[A059633(n+3)]+1)²` -/
def P16559131501898035029.Spec : Prop :=
  ∀ n, P16559131501898035029.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P4728546628271575129

`(∑[∑[A049856(n+2)]]+1)²`
-/

namespace A189336.P4728546628271575129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A189336.P4728546628271575129

namespace A189336

/-- `(∑[∑[A049856(n+2)]]+1)²` -/
def P4728546628271575129.Spec : Prop :=
  ∀ n, P4728546628271575129.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P12634207724812347636

`(A049863(n+2)-A049875(n))²`
-/

namespace A189336.P12634207724812347636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049863 (n + 2) - A049875 n) ^ 2

end

end A189336.P12634207724812347636

namespace A189336

/-- `(A049863(n+2)-A049875(n))²` -/
def P12634207724812347636.Spec : Prop :=
  ∀ n, P12634207724812347636.a n = A189336 (n + 1)

end A189336

/-! ## A189336.P14997139085682788084

`Δ[A049858(n+3)]^A020639(2*(n+1))`
-/

namespace A189336.P14997139085682788084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A189336.P14997139085682788084

namespace A189336

/-- `Δ[A049858(n+3)]^A020639(2*(n+1))` -/
def P14997139085682788084.Spec : Prop :=
  ∀ n, P14997139085682788084.a n = (A189336 (n + 1) : ℚ)

end A189336

/-! ## A189336.P13284847803269153298

`A189337(n+1)^(2/3)`
-/

namespace A189336.P13284847803269153298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A189337 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A189336.P13284847803269153298

namespace A189336

/-- `A189337(n+1)^(2/3)` -/
def P13284847803269153298.Spec : Prop :=
  ∀ n, P13284847803269153298.a n = (A189336 (n + 1) : ℝ)

end A189336

/-! ## A189336.P5061450675251968036

`A189337(n+1)/A049864(n+3)`
-/

namespace A189336.P5061450675251968036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189337 (n + 1) : ℚ) / (A049864 (n + 3) : ℚ)

end

end A189336.P5061450675251968036

namespace A189336

/-- `A189337(n+1)/A049864(n+3)` -/
def P5061450675251968036.Spec : Prop :=
  ∀ n, P5061450675251968036.a n = (A189336 (n + 1) : ℚ)

end A189336

/-!
# A189337: Number of nX3 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189337, the canonical program `A189337.P16748108321966298711` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189337 has offset 1).

The definition of A189337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189337.P16748108321966298711

`A049864(n+3)^3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189337

/-- `A049864(n+3)^3` -/
def P16748108321966298711.Spec : Prop :=
  ∀ n, P16748108321966298711.a n = A189337 (n + 1)

theorem P16748108321966298711.correct : P16748108321966298711.Spec := by
  intro n
  simp only [A189337, Nat.add_sub_cancel]

end A189337

/-! ## A189337.P6203244269501324356

`sqrt(A189336(n+1))^3`
-/

namespace A189337.P6203244269501324356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189336 (n + 1) : ℝ) ^ 3

end

end A189337.P6203244269501324356

namespace A189337

/-- `sqrt(A189336(n+1))^3` -/
def P6203244269501324356.Spec : Prop :=
  ∀ n, P6203244269501324356.a n = (A189337 (n + 1) : ℝ)

end A189337

/-! ## A189337.P10569627054068220161

`Δ[A049858(n+3)]^3`
-/

namespace A189337.P10569627054068220161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A189337.P10569627054068220161

namespace A189337

/-- `Δ[A049858(n+3)]^3` -/
def P10569627054068220161.Spec : Prop :=
  ∀ n, P10569627054068220161.a n = A189337 (n + 1)

end A189337

/-! ## A189337.P4059330089345625791

`Δ[Δ[A290987(n+1)]]^3`
-/

namespace A189337.P4059330089345625791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A189337.P4059330089345625791

namespace A189337

/-- `Δ[Δ[A290987(n+1)]]^3` -/
def P4059330089345625791.Spec : Prop :=
  ∀ n, P4059330089345625791.a n = A189337 (n + 1)

end A189337

/-! ## A189337.P14904645466849553511

`(∑[A059633(n+3)]+1)^3`
-/

namespace A189337.P14904645466849553511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 3

end

end A189337.P14904645466849553511

namespace A189337

/-- `(∑[A059633(n+3)]+1)^3` -/
def P14904645466849553511.Spec : Prop :=
  ∀ n, P14904645466849553511.a n = A189337 (n + 1)

end A189337

/-! ## A189337.P11032150046406094804

`A049864(n+3)*A189336(n+1)`
-/

namespace A189337.P11032150046406094804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 3) * A189336 (n + 1)

end

end A189337.P11032150046406094804

namespace A189337

/-- `A049864(n+3)*A189336(n+1)` -/
def P11032150046406094804.Spec : Prop :=
  ∀ n, P11032150046406094804.a n = A189337 (n + 1)

end A189337

/-! ## A189337.P2217761346097578712

`(A049863(n+2)-A049875(n))*(A049863(n+2)-A049875(n))²`
-/

namespace A189337.P2217761346097578712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049863 (n + 2) - A049875 n) * (A049863 (n + 2) - A049875 n) ^ 2

end

end A189337.P2217761346097578712

namespace A189337

/-- `(A049863(n+2)-A049875(n))*(A049863(n+2)-A049875(n))²` -/
def P2217761346097578712.Spec : Prop :=
  ∀ n, P2217761346097578712.a n = A189337 (n + 1)

end A189337

/-! ## A189337.P16975030849052376013

`sqrt(A189336(n+1)^3)`
-/

namespace A189337.P16975030849052376013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189336 (n + 1) ^ 3 : ℝ)

end

end A189337.P16975030849052376013

namespace A189337

/-- `sqrt(A189336(n+1)^3)` -/
def P16975030849052376013.Spec : Prop :=
  ∀ n, P16975030849052376013.a n = (A189337 (n + 1) : ℝ)

end A189337

/-!
# A189338: Number of nX4 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189338, there is no canonical definition to state claims against.
-/

/-! ## A189338.P978279955179942342

`A189343(∑[n+3]+7)`
-/

namespace A189338.P978279955179942342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A189338.P978279955179942342

/-!
# A189339: Number of nX5 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189339, there is no canonical definition to state claims against.
-/

/-! ## A189339.P396739943430687244

`A189343(A167499(n+3))`
-/

namespace A189339.P396739943430687244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A167499 (n + 3)).toNat

end

end A189339.P396739943430687244

/-! ## A189339.P12356843723744232496

`A189343(A155212(n)+13)`
-/

namespace A189339.P12356843723744232496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A155212 n + 13).toNat

end

end A189339.P12356843723744232496

/-! ## A189339.P6343472995049931446

`A189343(A056000(n)+15)`
-/

namespace A189339.P6343472995049931446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A056000 n + 15).toNat

end

end A189339.P6343472995049931446

/-! ## A189339.P5583489773978957248

`A189343(eq[7, A066657(n)])`
-/

namespace A189339.P5583489773978957248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189339.P5583489773978957248

/-! ## A189339.P17755364550879505491

`A189343(A145018(n+5)+1)`
-/

namespace A189339.P17755364550879505491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A145018 (n + 5) + 1).toNat

end

end A189339.P17755364550879505491

/-!
# A189340: Number of n X 6 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189340, there is no canonical definition to state claims against.
-/

/-! ## A189340.P12556570824853731601

`A189343(A166136(n+4))`
-/

namespace A189340.P12556570824853731601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A166136 (n + 4)).toNat

end

end A189340.P12556570824853731601

/-! ## A189340.P16043357332405279401

`A189343(A056115(n)+21)`
-/

namespace A189340.P16043357332405279401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A056115 n + 21).toNat

end

end A189340.P16043357332405279401

/-! ## A189340.P9566678504606460485

`A189343(A167614(n+4)+3)`
-/

namespace A189340.P9566678504606460485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A167614 (n + 4) + 3).toNat

end

end A189340.P9566678504606460485

/-! ## A189340.P18425080389206929487

`A189343(eq[7, A131818(n+1)])`
-/

namespace A189340.P18425080389206929487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189340.P18425080389206929487

/-! ## A189340.P14808017101032963402

`A189343(A374007(n+1))`
-/

namespace A189340.P14808017101032963402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A374007 (n + 1)).toNat

end

end A189340.P14808017101032963402

/-!
# A189341: Number of nX7 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189341, there is no canonical definition to state claims against.
-/

/-! ## A189341.P3449850737179858110

`A189343(A167487(n+5))`
-/

namespace A189341.P3449850737179858110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A167487 (n + 5)).toNat

end

end A189341.P3449850737179858110

/-! ## A189341.P11219900034275659010

`A189343(eq[11, A066657(n)])`
-/

namespace A189341.P11219900034275659010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189341.P11219900034275659010

/-! ## A189341.P14934221365775463758

`A189343(A133263(n+6)+5)`
-/

namespace A189341.P14934221365775463758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A133263 (n + 6) + 5).toNat

end

end A189341.P14934221365775463758

/-! ## A189341.P1904044425355719220

`A189343(eq[8, A131818(n+1)])`
-/

namespace A189341.P1904044425355719220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189341.P1904044425355719220

/-! ## A189341.P11052330293783528079

`A189343(A374008(n+1))`
-/

namespace A189341.P11052330293783528079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A374008 (n + 1)).toNat

end

end A189341.P11052330293783528079

/-!
# A189342: Number of nX8 binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189342, there is no canonical definition to state claims against.
-/

/-! ## A189342.P6860882495925459426

`A189343(A374009(n+1))`
-/

namespace A189342.P6860882495925459426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (A374009 (n + 1)).toNat

end

end A189342.P6860882495925459426

/-! ## A189342.P17595634871449626661

`A189343(eq[5, A219347(n)])`
-/

namespace A189342.P17595634871449626661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189342.P17595634871449626661

/-! ## A189342.P5723947964835678787

`A189343(eq[7, A193592(n)])`
-/

namespace A189342.P5723947964835678787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189342.P5723947964835678787

/-! ## A189342.P17634749848965031185

`A189343(eq[13, A066657(n)])`
-/

namespace A189342.P17634749848965031185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189342.P17634749848965031185

/-!
# A189343: T(n,k)=Number of nXk binary arrays without the pattern 1 0 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A189343, there is no canonical definition to state claims against.
-/

/-! ## A189343.P3857972180652236589

`A189779(n+1)%p?[n^3+n+91]`
-/

namespace A189343.P3857972180652236589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n + 91

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189779 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A189343.P3857972180652236589

/-! ## A189343.P8861188209217009404

`A302042(2*A189779(n+1))`
-/

namespace A189343.P8861188209217009404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (2 * A189779 (n + 1)).toNat

end

end A189343.P8861188209217009404

/-! ## A189343.P14878936062717098650

`A302043(2*A189779(n+1))`
-/

namespace A189343.P14878936062717098650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (2 * A189779 (n + 1)).toNat

end

end A189343.P14878936062717098650

/-! ## A189343.P115738833973298864

`A304529(2*A189779(n+1))`
-/

namespace A189343.P115738833973298864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (2 * A189779 (n + 1)).toNat

end

end A189343.P115738833973298864

/-! ## A189343.P67911736865187035

`A305425(2*A189779(n+1))`
-/

namespace A189343.P67911736865187035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (2 * A189779 (n + 1)).toNat

end

end A189343.P67911736865187035

/-!
# A189344: Numbers with prime factorization pq^2r^2s^2.

The programs for A189344, there is no canonical definition to state claims against.
-/

/-! ## A189344.P10766011835877190091

`∩[A350416(n+1), A386798(n+1)]`
-/

namespace A189344.P10766011835877190091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189344.P10766011835877190091

/-! ## A189344.P3370864522780078027

`filter[A350416(n+1), A212793(#)]`
-/

namespace A189344.P3370864522780078027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A189344.P3370864522780078027

/-! ## A189344.P6578740996307004317

`filter[A350416(n+1), A358753(#)]`
-/

namespace A189344.P6578740996307004317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A189344.P6578740996307004317

/-! ## A189344.P301740614981181892

`filter[A350416(n+1), A359429(#)]`
-/

namespace A189344.P301740614981181892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A189344.P301740614981181892

/-! ## A189344.P6506244820188236812

`filter[A386798(n+1), A358753(#)]`
-/

namespace A189344.P6506244820188236812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A189344.P6506244820188236812

/-! ## A189344.P13928151493427161801

`filter[A386798(n+1), A359464(#)]`
-/

namespace A189344.P13928151493427161801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A189344.P13928151493427161801

/-!
# A189345: Number of ways to choose four points in an n X n grid (or geoplane).

The programs for A189345, the canonical program `A189345.P868113389278444458` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189345 has offset 1).

The definition of A189345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189345.P868113389278444458

`C((n+1)², 4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189345

/-- `C((n+1)², 4)` -/
def P868113389278444458.Spec : Prop :=
  ∀ n, (P868113389278444458.a n : ℤ) = A189345 (n + 1)

theorem P868113389278444458.correct : P868113389278444458.Spec := by
  intro n
  simp only [A189345, Nat.add_sub_cancel]

end A189345

/-! ## A189345.P9101099594378043687

`1/24*(n+1)²*((n+1)²-1)*((n+1)²-2)*((n+1)²-3)`
-/

namespace A189345.P9101099594378043687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * ((n + 1) ^ 2 : ℚ) * (((n + 1) ^ 2 : ℤ) - 1 : ℚ) * (((n + 1) ^ 2 : ℤ) - 2 : ℚ) * (((n + 1) ^ 2 : ℤ) - 3 : ℚ)

end

end A189345.P9101099594378043687

namespace A189345

/-- `1/24*(n+1)²*((n+1)²-1)*((n+1)²-2)*((n+1)²-3)` -/
def P9101099594378043687.Spec : Prop :=
  ∀ n, P9101099594378043687.a n = (A189345 (n + 1) : ℚ)

theorem P9101099594378043687.correct : P9101099594378043687.Spec := by
  intro n
  simp only [A189345, Nat.add_sub_cancel, A189345.P9101099594378043687.a, A189345.P868113389278444458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189345

/-! ## A189345.P9222485743647797077

`∑[abs(Δ[C(n², 4)])]`
-/

namespace A189345.P9222485743647797077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189345.P9222485743647797077

namespace A189345

/-- `∑[abs(Δ[C(n², 4)])]` -/
def P9222485743647797077.Spec : Prop :=
  ∀ n, P9222485743647797077.a n = A189345 (n + 1)

end A189345

/-! ## A189345.P16662350508393794035

`-∑[-Δ[C(n², 4)]]`
-/

namespace A189345.P16662350508393794035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189345.P16662350508393794035

namespace A189345

/-- `-∑[-Δ[C(n², 4)]]` -/
def P16662350508393794035.Spec : Prop :=
  ∀ n, P16662350508393794035.a n = A189345 (n + 1)

end A189345

/-! ## A189345.P8377021232983972127

`record[C(A349315(n)², 4)]`
-/

namespace A189345.P8377021232983972127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349315 n ^ 2).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P8377021232983972127

namespace A189345

/-- `record[C(A349315(n)², 4)]` -/
def P8377021232983972127.Spec : Prop :=
  ∀ n, (P8377021232983972127.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P2181448195515148632

`C(C(A005563(n), 2), 2)/3`
-/

namespace A189345.P2181448195515148632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (A005563 n).toNat 2) 2 : ℚ) / 3

end

end A189345.P2181448195515148632

namespace A189345

/-- `C(C(A005563(n), 2), 2)/3` -/
def P2181448195515148632.Spec : Prop :=
  ∀ n, P2181448195515148632.a n = (A189345 (n + 1) : ℚ)

end A189345

/-! ## A189345.P1168079117515222797

`record[C(n², 4)-char[1]]`
-/

namespace A189345.P1168079117515222797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 4 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P1168079117515222797

namespace A189345

/-- `record[C(n², 4)-char[1]]` -/
def P1168079117515222797.Spec : Prop :=
  ∀ n, P1168079117515222797.a n = A189345 (n + 1)

end A189345

/-! ## A189345.P10815222734144090192

`A002415(n+1)+A002415(n)*A083374(n+2)`
-/

namespace A189345.P10815222734144090192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A002415 n * A083374 (n + 2)

end

end A189345.P10815222734144090192

namespace A189345

/-- `A002415(n+1)+A002415(n)*A083374(n+2)` -/
def P10815222734144090192.Spec : Prop :=
  ∀ n, P10815222734144090192.a n = A189345 (n + 1)

end A189345

/-! ## A189345.P11660219073199751602

`record[C(A260253(n), 4)]`
-/

namespace A189345.P11660219073199751602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260253 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P11660219073199751602

namespace A189345

/-- `record[C(A260253(n), 4)]` -/
def P11660219073199751602.Spec : Prop :=
  ∀ n, (P11660219073199751602.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P8000992927272820226

`record[C(A000463(n+1), 4)]`
-/

namespace A189345.P8000992927272820226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000463 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P8000992927272820226

namespace A189345

/-- `record[C(A000463(n+1), 4)]` -/
def P8000992927272820226.Spec : Prop :=
  ∀ n, (P8000992927272820226.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P17354805960882534602

`record[C(A115881(n+1), 4)]`
-/

namespace A189345.P17354805960882534602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115881 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P17354805960882534602

namespace A189345

/-- `record[C(A115881(n+1), 4)]` -/
def P17354805960882534602.Spec : Prop :=
  ∀ n, (P17354805960882534602.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P3552772207828446220

`record[C(A007891(n+1), 4)]`
-/

namespace A189345.P3552772207828446220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007891 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P3552772207828446220

namespace A189345

/-- `record[C(A007891(n+1), 4)]` -/
def P3552772207828446220.Spec : Prop :=
  ∀ n, (P3552772207828446220.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P4825449299124851094

`record[C(A007892(n+1), 4)]`
-/

namespace A189345.P4825449299124851094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007892 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P4825449299124851094

namespace A189345

/-- `record[C(A007892(n+1), 4)]` -/
def P4825449299124851094.Spec : Prop :=
  ∀ n, (P4825449299124851094.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P13798218911427540127

`record[C(A333352(n+1), 4)]`
-/

namespace A189345.P13798218911427540127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333352 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P13798218911427540127

namespace A189345

/-- `record[C(A333352(n+1), 4)]` -/
def P13798218911427540127.Spec : Prop :=
  ∀ n, (P13798218911427540127.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P1359088269719476743

`record[C(A091435(n), 4)]`
-/

namespace A189345.P1359088269719476743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A091435 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P1359088269719476743

namespace A189345

/-- `record[C(A091435(n), 4)]` -/
def P1359088269719476743.Spec : Prop :=
  ∀ n, (P1359088269719476743.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P6107705213590078414

`record[C(A126114(n+1), 4)]`
-/

namespace A189345.P6107705213590078414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126114 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189345.P6107705213590078414

namespace A189345

/-- `record[C(A126114(n+1), 4)]` -/
def P6107705213590078414.Spec : Prop :=
  ∀ n, (P6107705213590078414.a n : ℤ) = A189345 (n + 1)

end A189345

/-! ## A189345.P13764515746626124853

`A050534(n*(n+2))/3`
-/

namespace A189345.P13764515746626124853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 (n * (n + 2)) : ℚ) / 3

end

end A189345.P13764515746626124853

namespace A189345

/-- `A050534(n*(n+2))/3` -/
def P13764515746626124853.Spec : Prop :=
  ∀ n, P13764515746626124853.a n = (A189345 (n + 1) : ℚ)

theorem P13764515746626124853.correct : P13764515746626124853.Spec := by
  intro n
  simp only [A189345, Nat.add_sub_cancel, A189345.P13764515746626124853.a, A189345.P868113389278444458.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189345

/-! ## A189345.P4101483016817563099

`A014626((n+1)²)-(n+1)²`
-/

namespace A189345.P4101483016817563099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A189345.P4101483016817563099

namespace A189345

/-- `A014626((n+1)²)-(n+1)²` -/
def P4101483016817563099.Spec : Prop :=
  ∀ n, P4101483016817563099.a n = A189345 (n + 1)

end A189345

/-!
# A189346: Number of sets of four points on an n X n grid (or geoboard), exactly three of which are collinear.

The programs for A189346, there is no canonical definition to state claims against.
-/

/-! ## A189346.P5675497441566430289

`A334710(∑[4*n]+1)`
-/

namespace A189346.P5675497441566430289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189346.P5675497441566430289

/-! ## A189346.P4435086436492536662

`A334713(A001096(n)+1)`
-/

namespace A189346.P4435086436492536662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334713 (A001096 n + 1).toNat

end

end A189346.P4435086436492536662

/-!
# A189347: Number of n X n array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189347, there is no canonical definition to state claims against.
-/

/-! ## A189347.P4882520895294794812

`A189355(∑[4*n]+1)`
-/

namespace A189347.P4882520895294794812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189347.P4882520895294794812

/-! ## A189347.P7295146143612375867

`and(-2, A189355((Δ[n²]²+1)/2))`
-/

namespace A189347.P7295146143612375867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A189355 (SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1 : ℚ) / 2)).toNat)

end

end A189347.P7295146143612375867

/-! ## A189347.P8270174502748398846

`lcm(2, A189355(A001844(n)))`
-/

namespace A189347.P8270174502748398846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A189355 (A001844 n).toNat)

end

end A189347.P8270174502748398846

/-! ## A189347.P3137995955708104399

`record[A189355(Δ[A235355(n)])]`
-/

namespace A189347.P3137995955708104399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189347.P3137995955708104399

/-!
# A189348: Number of n X 2 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189348, the canonical program `A189348.P12475582589925899739` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189348 has offset 1).

The definition of A189348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189348.P7348220487284569780

`ogf((1+x-2x^2-3x^3+x^4)/(1-3x-3x^2+3x^3+3x^4-x^5))`
-/

namespace A189348.P7348220487284569780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -3, 1] [1, -3, -3, 3, 3, -1] n

end

end A189348.P7348220487284569780

namespace A189348

/-- `ogf((1+x-2x^2-3x^3+x^4)/(1-3x-3x^2+3x^3+3x^4-x^5))` -/
def P7348220487284569780.Spec : Prop :=
  ∀ n, P7348220487284569780.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P12475582589925899739

`3*a(n-1)+3*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=45, a(4)=160`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189348

/-- `3*a(n-1)+3*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P12475582589925899739.Spec : Prop :=
  ∀ n, P12475582589925899739.a n = A189348 (n + 1)

theorem P12475582589925899739.correct : P12475582589925899739.Spec := by
  intro n
  simp only [A189348, Nat.add_sub_cancel]

end A189348

/-! ## A189348.P14619095026072923713

`A033305(2*(n+1))`
-/

namespace A189348.P14619095026072923713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (2 * (n + 1))

end

end A189348.P14619095026072923713

namespace A189348

/-- `A033305(2*(n+1))` -/
def P14619095026072923713.Spec : Prop :=
  ∀ n, P14619095026072923713.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P10829442561501344988

`record[A033305(and(n, n+1))]`
-/

namespace A189348.P10829442561501344988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189348.P10829442561501344988

namespace A189348

/-- `record[A033305(and(n, n+1))]` -/
def P10829442561501344988.Spec : Prop :=
  ∀ n, P10829442561501344988.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P1896270830448675905

`record[A033305(n%8+n)]`
-/

namespace A189348.P1896270830448675905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n % 8 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189348.P1896270830448675905

namespace A189348

/-- `record[A033305(n%8+n)]` -/
def P1896270830448675905.Spec : Prop :=
  ∀ n, P1896270830448675905.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P2475101177992168410

`A321048(2*(n+1))+1`
-/

namespace A189348.P2475101177992168410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (2 * (n + 1)) + 1

end

end A189348.P2475101177992168410

namespace A189348

/-- `A321048(2*(n+1))+1` -/
def P2475101177992168410.Spec : Prop :=
  ∀ n, P2475101177992168410.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P6337632807939284653

`record[A033305(A014681(n))]`
-/

namespace A189348.P6337632807939284653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189348.P6337632807939284653

namespace A189348

/-- `record[A033305(A014681(n))]` -/
def P6337632807939284653.Spec : Prop :=
  ∀ n, P6337632807939284653.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P11996755218735391443

`record[(1-A000035(n))*A033305(n)]`
-/

namespace A189348.P11996755218735391443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A033305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189348.P11996755218735391443

namespace A189348

/-- `record[(1-A000035(n))*A033305(n)]` -/
def P11996755218735391443.Spec : Prop :=
  ∀ n, P11996755218735391443.a n = A189348 (n + 1)

end A189348

/-! ## A189348.P362538342946202973

`sqrt(A263385(2*n+1))`
-/

namespace A189348.P362538342946202973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263385 (2 * n + 1) : ℝ)

end

end A189348.P362538342946202973

namespace A189348

/-- `sqrt(A263385(2*n+1))` -/
def P362538342946202973.Spec : Prop :=
  ∀ n, P362538342946202973.a n = (A189348 (n + 1) : ℝ)

end A189348

/-!
# A189349: Number of nX3 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189349, there is no canonical definition to state claims against.
-/

/-! ## A189349.P11158596570246439709

`A189355(∑[n+2]+4)`
-/

namespace A189349.P11158596570246439709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189349.P11158596570246439709

/-! ## A189349.P1812828116836406289

`A189355(A167614(n+1))+A185246(n)`
-/

namespace A189349.P1812828116836406289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A167614 (n + 1)).toNat + A185246 n

end

end A189349.P1812828116836406289

/-! ## A189349.P10682558043533737447

`A189355(A167614(n+1))%A028032(n)`
-/

namespace A189349.P10682558043533737447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189355 (A167614 (n + 1)).toNat) (A028032 n)

end

end A189349.P10682558043533737447

/-! ## A189349.P3849389629986459767

`lcm(A131017(n), A189355(A167614(n+1)))`
-/

namespace A189349.P3849389629986459767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131017 n) (A189355 (A167614 (n + 1)).toNat)

end

end A189349.P3849389629986459767

/-! ## A189349.P17118224808843348804

`A189355(A167614(n+1))+A036877(n+1)`
-/

namespace A189349.P17118224808843348804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A167614 (n + 1)).toNat + A036877 (n + 1)

end

end A189349.P17118224808843348804

/-!
# A189350: Number of nX4 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189350, there is no canonical definition to state claims against.
-/

/-! ## A189350.P3501357221311824688

`A189355(A374004(n+1))`
-/

namespace A189350.P3501357221311824688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A374004 (n + 1)).toNat

end

end A189350.P3501357221311824688

/-! ## A189350.P10837711589540802464

`A189355(A141214(n)+7)`
-/

namespace A189350.P10837711589540802464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A141214 n + 7).toNat

end

end A189350.P10837711589540802464

/-! ## A189350.P9996126851188641507

`A189355(A052905(n)+9)`
-/

namespace A189350.P9996126851188641507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A052905 n + 9).toNat

end

end A189350.P9996126851188641507

/-! ## A189350.P17272921343514320710

`A189355(A055999(n)+10)`
-/

namespace A189350.P17272921343514320710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A055999 n + 10).toNat

end

end A189350.P17272921343514320710

/-! ## A189350.P3366029735192015134

`A189355(A167614(n+2)+1)`
-/

namespace A189350.P3366029735192015134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A167614 (n + 2) + 1).toNat

end

end A189350.P3366029735192015134

/-!
# A189351: Number of nX5 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189351, there is no canonical definition to state claims against.
-/

/-! ## A189351.P6452600497952144597

`A189355(A374005(n+1))`
-/

namespace A189351.P6452600497952144597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A374005 (n + 1)).toNat

end

end A189351.P6452600497952144597

/-! ## A189351.P14296500452207278471

`A189355(A167614(n+3)+2)`
-/

namespace A189351.P14296500452207278471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A167614 (n + 3) + 2).toNat

end

end A189351.P14296500452207278471

/-! ## A189351.P12790784049589503775

`A189355(eq[6, A131818(n+1)])`
-/

namespace A189351.P12790784049589503775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189351.P12790784049589503775

/-! ## A189351.P14290850540066406795

`A189355(Δ[A264443(n)])`
-/

namespace A189351.P14290850540066406795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (f1 (n + 1) - f1 n).toNat

end

end A189351.P14290850540066406795

/-! ## A189351.P13688878189539370633

`A189355(eq[4, A193592(n)])`
-/

namespace A189351.P13688878189539370633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189351.P13688878189539370633

/-!
# A189352: Number of nX6 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189352, there is no canonical definition to state claims against.
-/

/-! ## A189352.P3904959556532964584

`A189355(A374007(n+1))`
-/

namespace A189352.P3904959556532964584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A374007 (n + 1)).toNat

end

end A189352.P3904959556532964584

/-! ## A189352.P29128016536083298

`A189355(eq[7, A131818(n+1)])`
-/

namespace A189352.P29128016536083298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189352.P29128016536083298

/-! ## A189352.P5000068240604593588

`A189355(eq[3, A219347(n)])`
-/

namespace A189352.P5000068240604593588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189352.P5000068240604593588

/-! ## A189352.P10907128108341141375

`A189355(eq[5, A193592(n)])`
-/

namespace A189352.P10907128108341141375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189352.P10907128108341141375

/-! ## A189352.P13599840750311047364

`A189355(eq[6, A200370(n+1)])`
-/

namespace A189352.P13599840750311047364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189352.P13599840750311047364

/-!
# A189353: Number of nX7 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189353, there is no canonical definition to state claims against.
-/

/-! ## A189353.P6606884224454980712

`A189355(A374008(n+1))`
-/

namespace A189353.P6606884224454980712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A374008 (n + 1)).toNat

end

end A189353.P6606884224454980712

/-! ## A189353.P13572071082522024399

`A189355(eq[8, A131818(n+1)])`
-/

namespace A189353.P13572071082522024399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189353.P13572071082522024399

/-! ## A189353.P13458426162396037225

`A189355(eq[4, A219347(n)])`
-/

namespace A189353.P13458426162396037225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189353.P13458426162396037225

/-! ## A189353.P16435932910934703101

`A189355(eq[6, A193592(n)])`
-/

namespace A189353.P16435932910934703101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189353.P16435932910934703101

/-! ## A189353.P16226082519473657100

`A189355(eq[7, A200370(n+1)])`
-/

namespace A189353.P16226082519473657100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189353.P16226082519473657100

/-!
# A189354: Number of nX8 array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189354, there is no canonical definition to state claims against.
-/

/-! ## A189354.P1020963760071713266

`A189355(A374009(n+1))`
-/

namespace A189354.P1020963760071713266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (A374009 (n + 1)).toNat

end

end A189354.P1020963760071713266

/-! ## A189354.P9504597686613703580

`A189355(eq[9, A131818(n+1)])`
-/

namespace A189354.P9504597686613703580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189354.P9504597686613703580

/-! ## A189354.P1937309365377909334

`A189355(eq[7, A193592(n)])`
-/

namespace A189354.P1937309365377909334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189354.P1937309365377909334

/-!
# A189355: T(n,k) is the number of n X k array permutations with each element moving one space diagonally, horizontally or vertically.

The programs for A189355, there is no canonical definition to state claims against.
-/

/-! ## A189355.P17946618073582682139

`xor(A136575(A056941(n)), A221800(n+1))`
-/

namespace A189355.P17946618073582682139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136575 (A056941 n).toNat) (A221800 (n + 1))

end

end A189355.P17946618073582682139

/-! ## A189355.P9267915537191135205

`A220845(A298834(n+1)+A060187(n+1))`
-/

namespace A189355.P9267915537191135205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A298834 (n + 1) + A060187 (n + 1)).toNat

end

end A189355.P9267915537191135205

/-!
# A189356: a(n) gives y-values solving the Diophantine equation 2*x^2 + (x-1)^2 = y^2 for positive x.

The programs for A189356, the canonical program `A189356.P2393841925753768480` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189356 has offset 1).

The definition of A189356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189356.P15027961198729037615

`ogf((3-x)/(1-14x+x^2))`
-/

namespace A189356.P15027961198729037615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -14, 1] n

end

end A189356.P15027961198729037615

namespace A189356

/-- `ogf((3-x)/(1-14x+x^2))` -/
def P15027961198729037615.Spec : Prop :=
  ∀ n, P15027961198729037615.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P2393841925753768480

`14*a(n-1)-a(n-2)` with `a(0)=3, a(1)=41`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189356

/-- `14*a(n-1)-a(n-2)` -/
def P2393841925753768480.Spec : Prop :=
  ∀ n, P2393841925753768480.a n = A189356 (n + 1)

theorem P2393841925753768480.correct : P2393841925753768480.Spec := by
  intro n
  simp only [A189356, Nat.add_sub_cancel]

end A189356

/-! ## A189356.P1994116825120204988

`floor((sqrt(3)+2)²*a(n-1))` with `a(0)=3`
-/

namespace A189356.P1994116825120204988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A189356.P1994116825120204988

namespace A189356

/-- `floor((sqrt(3)+2)²*a(n-1))` -/
def P1994116825120204988.Spec : Prop :=
  ∀ n, P1994116825120204988.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P10160741616745136576

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=3`
-/

namespace A189356.P10160741616745136576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189356.P10160741616745136576

namespace A189356

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P10160741616745136576.Spec : Prop :=
  ∀ n, P10160741616745136576.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P16801950475016857801

`A001835(2*(n+1))`
-/

namespace A189356.P16801950475016857801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (2 * (n + 1))

end

end A189356.P16801950475016857801

namespace A189356

/-- `A001835(2*(n+1))` -/
def P16801950475016857801.Spec : Prop :=
  ∀ n, P16801950475016857801.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P6745942464097820402

`A079935(2*(n+1))`
-/

namespace A189356.P6745942464097820402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (2 * (n + 1))

end

end A189356.P6745942464097820402

namespace A189356

/-- `A079935(2*(n+1))` -/
def P6745942464097820402.Spec : Prop :=
  ∀ n, P6745942464097820402.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P3215523783958405332

`A375098(3*n+1)`
-/

namespace A189356.P3215523783958405332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375098 (3 * n + 1)

end

end A189356.P3215523783958405332

namespace A189356

/-- `A375098(3*n+1)` -/
def P3215523783958405332.Spec : Prop :=
  ∀ n, P3215523783958405332.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P17714600667651772385

`A005246(4*(n+1))`
-/

namespace A189356.P17714600667651772385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (4 * (n + 1))

end

end A189356.P17714600667651772385

namespace A189356

/-- `A005246(4*(n+1))` -/
def P17714600667651772385.Spec : Prop :=
  ∀ n, P17714600667651772385.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P8082256675502221205

`A002530(4*n+3)`
-/

namespace A189356.P8082256675502221205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (4 * n + 3)

end

end A189356.P8082256675502221205

namespace A189356

/-- `A002530(4*n+3)` -/
def P8082256675502221205.Spec : Prop :=
  ∀ n, P8082256675502221205.a n = A189356 (n + 1)

end A189356

/-! ## A189356.P16260126401926796692

`A048788(4*n+3)`
-/

namespace A189356.P16260126401926796692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (4 * n + 3)

end

end A189356.P16260126401926796692

namespace A189356

/-- `A048788(4*n+3)` -/
def P16260126401926796692.Spec : Prop :=
  ∀ n, P16260126401926796692.a n = A189356 (n + 1)

end A189356

/-!
# A189357: Number of partitions of n into distinct parts where all differences between consecutive parts are even.

The programs for A189357, there is no canonical definition to state claims against.
-/

/-! ## A189357.P11173482686431216507

`A035457(A028310(n))+A000700(n)`
-/

namespace A189357.P11173482686431216507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A028310 n).toNat + A000700 n

end

end A189357.P11173482686431216507

/-! ## A189357.P15257221698935637273

`A035457(A000007(n)+n)+A000700(n)`
-/

namespace A189357.P15257221698935637273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A000007 n + (n : ℤ)).toNat + A000700 n

end

end A189357.P15257221698935637273

/-! ## A189357.P3222264880537302810

`A000700(n)-(A000007(n)-A035457(n))`
-/

namespace A189357.P3222264880537302810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - (A000007 n - A035457 n)

end

end A189357.P3222264880537302810

/-! ## A189357.P15665839822415027469

`(A035457(n)+A000700(n))/A054977(n)`
-/

namespace A189357.P15665839822415027469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035457 n + A000700 n : ℚ) / (A054977 n : ℚ)

end

end A189357.P15665839822415027469

/-! ## A189357.P15882691807687987708

`A000700(n)-A035457(n)*A057428(n)`
-/

namespace A189357.P15882691807687987708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A035457 n * A057428 n

end

end A189357.P15882691807687987708

/-! ## A189357.P15843476968622381132

`A000700(n)+A035457(n)%A000041(n)`
-/

namespace A189357.P15843476968622381132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + Int.tmod (A035457 n) (A000041 n)

end

end A189357.P15843476968622381132

/-! ## A189357.P13760352563574621034

`A035457(n)+A000700(n)%A036469(n)`
-/

namespace A189357.P13760352563574621034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n + Int.tmod (A000700 n) (A036469 n)

end

end A189357.P13760352563574621034

/-! ## A189357.P8944687725492168686

`A035457(n)+A000700(A171173((n+1)²))`
-/

namespace A189357.P8944687725492168686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n + A000700 (A171173 ((n + 1) ^ 2)).toNat

end

end A189357.P8944687725492168686

/-!
# A189358: Number of permutations p of 1,2,...,n satisfying |p(i+1)-p(i)|<>3 and |p(j+3)-p(j)|<>1 for all i=1..n-1, j=1..n-3.

The programs for A189358, there is no canonical definition to state claims against.
-/

/-! ## A189358.P17938969894062996760

`A143999(A048500(n))`
-/

namespace A189358.P17938969894062996760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143999 (A048500 n).toNat

end

end A189358.P17938969894062996760

/-! ## A189358.P16340916653016679802

`A170887(A330455(n))`
-/

namespace A189358.P16340916653016679802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170887 (A330455 n).toNat

end

end A189358.P16340916653016679802

/-! ## A189358.P4069102333689415696

`A389584(A151408(n))`
-/

namespace A189358.P4069102333689415696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389584 (A151408 n).toNat

end

end A189358.P4069102333689415696

/-!
# A189359: Number of homogeneous games for n players.

The programs for A189359, there is no canonical definition to state claims against.
-/

/-! ## A189359.P5946068897781816748

`∑[A022493(n)]-1`
-/

namespace A189359.P5946068897781816748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189359.P5946068897781816748

/-! ## A189359.P11444498419952934253

`∑[A175579(∑[n]+1)]-1`
-/

namespace A189359.P11444498419952934253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189359.P11444498419952934253

/-! ## A189359.P17312944530576678802

`∑[A218579(∑[n+1])]-1`
-/

namespace A189359.P17312944530576678802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218579 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189359.P17312944530576678802

/-! ## A189359.P6493021094493378434

`∑[A294220(∑[4*n])]-1`
-/

namespace A189359.P6493021094493378434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294220 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189359.P6493021094493378434

/-! ## A189359.P3699334297345908079

`A321800(n)+∑[A022493(n)]`
-/

namespace A189359.P3699334297345908079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189359.P3699334297345908079

/-!
# A189360: Number of self-dual homogeneous games for n players.

The programs for A189360, there is no canonical definition to state claims against.
-/

/-! ## A189360.P15468620195194268651

`Δ[A306677(a(n-1)+1)+n]` with `a(0)=2`
-/

namespace A189360.P15468620195194268651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A306677 (f1 (n - 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189360.P15468620195194268651

/-! ## A189360.P11576933736768749794

`A118977(∑[∑[A005968(n)]])`
-/

namespace A189360.P11576933736768749794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005968 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189360.P11576933736768749794

/-! ## A189360.P181210097472523165

`A090223(round(sqrt(A097048(n+1))))`
-/

namespace A189360.P181210097472523165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (SequenceMachineLib.roundAway (Real.sqrt (A097048 (n + 1) : ℝ))).toNat

end

end A189360.P181210097472523165

/-! ## A189360.P12262888005518824053

`A185217(A063886(n))+A000332(n)`
-/

namespace A189360.P12262888005518824053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 (A063886 n).toNat + A000332 n

end

end A189360.P12262888005518824053

/-!
# A189361: a(n) = n + floor(n*s/r) + floor(n*t/r); r=1, s=sqrt(2), t=sqrt(3).

The programs for A189361, the canonical program `A189361.P15483579227930621539` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189361 has offset 1).

The definition of A189361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189361.P17596935364268340975

`n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*sqrt(3))`
-/

namespace A189361.P17596935364268340975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊2 * ((n + 1 : ℝ) / Real.sqrt (2 : ℝ))⌋ + ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A189361.P17596935364268340975

namespace A189361

/-- `n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*sqrt(3))` -/
def P17596935364268340975.Spec : Prop :=
  ∀ n, P17596935364268340975.a n = A189361 (n + 1)

end A189361

/-! ## A189361.P15483579227930621539

`∑[A007538(n+1)+A276864(n+1)-2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189361

/-- `∑[A007538(n+1)+A276864(n+1)-2]` -/
def P15483579227930621539.Spec : Prop :=
  ∀ n, P15483579227930621539.a n = A189361 (n + 1)

theorem P15483579227930621539.correct : P15483579227930621539.Spec := by
  intro n
  simp only [A189361, Nat.add_sub_cancel]

end A189361

/-! ## A189361.P3878717733496937963

`∑[Δ[A329791(n)]+1]`
-/

namespace A189361.P3878717733496937963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189361.P3878717733496937963

namespace A189361

/-- `∑[Δ[A329791(n)]+1]` -/
def P3878717733496937963.Spec : Prop :=
  ∀ n, P3878717733496937963.a n = A189361 (n + 1)

end A189361

/-! ## A189361.P6283538874777035990

`∑[A329779(Δ[A329791(n)])]`
-/

namespace A189361.P6283538874777035990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329779 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189361.P6283538874777035990

namespace A189361

/-- `∑[A329779(Δ[A329791(n)])]` -/
def P6283538874777035990.Spec : Prop :=
  ∀ n, P6283538874777035990.a n = A189361 (n + 1)

end A189361

/-! ## A189361.P7904939193862479047

`∑[A329781(Δ[A329791(n)])]`
-/

namespace A189361.P7904939193862479047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329781 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189361.P7904939193862479047

namespace A189361

/-- `∑[A329781(Δ[A329791(n)])]` -/
def P7904939193862479047.Spec : Prop :=
  ∀ n, P7904939193862479047.a n = A189361 (n + 1)

end A189361

/-!
# A189362: a(n) = n + floor(n*r/s) + floor(n*t/s); r=1, s=sqrt(2), t=sqrt(3).

The programs for A189362, the canonical program `A189362.P16228109364574491910` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189362 has offset 1).

The definition of A189362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189362.P16228109364574491910

`A277644(n+1)+A003152(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189362

/-- `A277644(n+1)+A003152(n+1)` -/
def P16228109364574491910.Spec : Prop :=
  ∀ n, P16228109364574491910.a n = A189362 (n + 1)

theorem P16228109364574491910.correct : P16228109364574491910.Spec := by
  intro n
  simp only [A189362, Nat.add_sub_cancel]

end A189362

/-! ## A189362.P13595211441977481526

`A194146(n+1)-A194920(n+1)`
-/

namespace A189362.P13595211441977481526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194146 (n + 1) - A194920 (n + 1)

end

end A189362.P13595211441977481526

namespace A189362

/-- `A194146(n+1)-A194920(n+1)` -/
def P13595211441977481526.Spec : Prop :=
  ∀ n, P13595211441977481526.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P13175572462886703762

`A080755(n+1)+A277644(n+1)-1`
-/

namespace A189362.P13175572462886703762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) + (A277644 (n + 1) - 1)

end

end A189362.P13175572462886703762

namespace A189362

/-- `A080755(n+1)+A277644(n+1)-1` -/
def P13175572462886703762.Spec : Prop :=
  ∀ n, P13175572462886703762.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P12238426517405230715

`A171975(A051755(n+2))+A003152(n+1)`
-/

namespace A189362.P12238426517405230715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171975 (A051755 (n + 2)).toNat + A003152 (n + 1)

end

end A189362.P12238426517405230715

namespace A189362

/-- `A171975(A051755(n+2))+A003152(n+1)` -/
def P12238426517405230715.Spec : Prop :=
  ∀ n, P12238426517405230715.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P3798454104229783993

`A004526(A022840(n+1))+A003152(n+1)`
-/

namespace A189362.P3798454104229783993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022840 (n + 1)).toNat + A003152 (n + 1)

end

end A189362.P3798454104229783993

namespace A189362

/-- `A004526(A022840(n+1))+A003152(n+1)` -/
def P3798454104229783993.Spec : Prop :=
  ∀ n, P3798454104229783993.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P13367270368474883888

`A277644(n+1)+A002265(A286927(n+1))`
-/

namespace A189362.P13367270368474883888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + A002265 (A286927 (n + 1)).toNat

end

end A189362.P13367270368474883888

namespace A189362

/-- `A277644(n+1)+A002265(A286927(n+1))` -/
def P13367270368474883888.Spec : Prop :=
  ∀ n, P13367270368474883888.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P2395030468116380611

`A233583(A277644(n+1)+A080755(n+1))`
-/

namespace A189362.P2395030468116380611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A277644 (n + 1) + A080755 (n + 1)).toNat

end

end A189362.P2395030468116380611

namespace A189362

/-- `A233583(A277644(n+1)+A080755(n+1))` -/
def P2395030468116380611.Spec : Prop :=
  ∀ n, P2395030468116380611.a n = A189362 (n + 1)

end A189362

/-! ## A189362.P7807159414241151530

`A003152(n+1)+A000196(∑[A007310(n+1)])`
-/

namespace A189362.P7807159414241151530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189362.P7807159414241151530

namespace A189362

/-- `A003152(n+1)+A000196(∑[A007310(n+1)])` -/
def P7807159414241151530.Spec : Prop :=
  ∀ n, P7807159414241151530.a n = A189362 (n + 1)

end A189362

/-!
# A189363: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(2), t=sqrt(3).

The programs for A189363, the canonical program `A189363.P18061180172451342699` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189363 has offset 1).

The definition of A189363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189363.P18061180172451342699

`A184808(n+1)+A097337(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189363

/-- `A184808(n+1)+A097337(n+1)` -/
def P18061180172451342699.Spec : Prop :=
  ∀ n, P18061180172451342699.a n = A189363 (n + 1)

theorem P18061180172451342699.correct : P18061180172451342699.Spec := by
  intro n
  simp only [A189363, Nat.add_sub_cancel]

end A189363

/-! ## A189363.P16584092846292688016

`A186539(n+1)+A171974(n+1)`
-/

namespace A189363.P16584092846292688016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A171974 (n + 1)

end

end A189363.P16584092846292688016

namespace A189363

/-- `A186539(n+1)+A171974(n+1)` -/
def P16584092846292688016.Spec : Prop :=
  ∀ n, P16584092846292688016.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P10593030756739806779

`A184808(n+1)+A194979(n+1)-1`
-/

namespace A189363.P10593030756739806779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + (A194979 (n + 1) - 1)

end

end A189363.P10593030756739806779

namespace A189363

/-- `A184808(n+1)+A194979(n+1)-1` -/
def P10593030756739806779.Spec : Prop :=
  ∀ n, P10593030756739806779.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P11325915212384434110

`n+1+A184808(n+1)-A195072(n+1)`
-/

namespace A189363.P11325915212384434110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A184808 (n + 1) - A195072 (n + 1))

end

end A189363.P11325915212384434110

namespace A189363

/-- `n+1+A184808(n+1)-A195072(n+1)` -/
def P11325915212384434110.Spec : Prop :=
  ∀ n, P11325915212384434110.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P17104939360609728400

`A184808(n+1)+A189386(n+1)-A003151(n+1)`
-/

namespace A189363.P17104939360609728400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + (A189386 (n + 1) - A003151 (n + 1))

end

end A189363.P17104939360609728400

namespace A189363

/-- `A184808(n+1)+A189386(n+1)-A003151(n+1)` -/
def P17104939360609728400.Spec : Prop :=
  ∀ n, P17104939360609728400.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P17320082912583896876

`A184808(n+1)+A004526(A189369(n+1)-A184808(n+1))`
-/

namespace A189363.P17320082912583896876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A004526 (A189369 (n + 1) - A184808 (n + 1)).toNat

end

end A189363.P17320082912583896876

namespace A189363

/-- `A184808(n+1)+A004526(A189369(n+1)-A184808(n+1))` -/
def P17320082912583896876.Spec : Prop :=
  ∀ n, P17320082912583896876.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P17369839672864388938

`A184808(n+1)+A123108(A189369(n+1)-A184808(n+1))`
-/

namespace A189363.P17369839672864388938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A123108 (A189369 (n + 1) - A184808 (n + 1)).toNat

end

end A189363.P17369839672864388938

namespace A189363

/-- `A184808(n+1)+A123108(A189369(n+1)-A184808(n+1))` -/
def P17369839672864388938.Spec : Prop :=
  ∀ n, P17369839672864388938.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P36072965997561355

`A184808(n+1)+A002264(A022838(n+1))`
-/

namespace A189363.P36072965997561355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A002264 (A022838 (n + 1)).toNat

end

end A189363.P36072965997561355

namespace A189363

/-- `A184808(n+1)+A002264(A022838(n+1))` -/
def P36072965997561355.Spec : Prop :=
  ∀ n, P36072965997561355.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P10799425522574841095

`∑[A276856(A184808(n+1))]-A195072(n+1)`
-/

namespace A189363.P10799425522574841095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (A184808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195072 (n + 1)

end

end A189363.P10799425522574841095

namespace A189363

/-- `∑[A276856(A184808(n+1))]-A195072(n+1)` -/
def P10799425522574841095.Spec : Prop :=
  ∀ n, P10799425522574841095.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P8194936452602494759

`A186539(n+1)+A172476(A103517(n))`
-/

namespace A189363.P8194936452602494759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A172476 (A103517 n).toNat

end

end A189363.P8194936452602494759

namespace A189363

/-- `A186539(n+1)+A172476(A103517(n))` -/
def P8194936452602494759.Spec : Prop :=
  ∀ n, P8194936452602494759.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P9404194608871982485

`A186539(n+1)+A002264(A022840(n+1))`
-/

namespace A189363.P9404194608871982485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A002264 (A022840 (n + 1)).toNat

end

end A189363.P9404194608871982485

namespace A189363

/-- `A186539(n+1)+A002264(A022840(n+1))` -/
def P9404194608871982485.Spec : Prop :=
  ∀ n, P9404194608871982485.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P8219005431579333622

`A171974(n+1)+A002264(A182778(n+1))`
-/

namespace A189363.P8219005431579333622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + A002264 (A182778 (n + 1)).toNat

end

end A189363.P8219005431579333622

namespace A189363

/-- `A171974(n+1)+A002264(A182778(n+1))` -/
def P8219005431579333622.Spec : Prop :=
  ∀ n, P8219005431579333622.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P16952057042278256373

`A004526(A189369(n+1)+A184808(n+1))`
-/

namespace A189363.P16952057042278256373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189369 (n + 1) + A184808 (n + 1)).toNat

end

end A189363.P16952057042278256373

namespace A189363

/-- `A004526(A189369(n+1)+A184808(n+1))` -/
def P16952057042278256373.Spec : Prop :=
  ∀ n, P16952057042278256373.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P8341700391040408568

`A123108(A189369(n+1)+A184808(n+1))`
-/

namespace A189363.P8341700391040408568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189369 (n + 1) + A184808 (n + 1)).toNat

end

end A189363.P8341700391040408568

namespace A189363

/-- `A123108(A189369(n+1)+A184808(n+1))` -/
def P8341700391040408568.Spec : Prop :=
  ∀ n, P8341700391040408568.a n = A189363 (n + 1)

end A189363

/-! ## A189363.P18053258731255028124

`A097337(n+1)+A002264(A277645(n+1))`
-/

namespace A189363.P18053258731255028124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + A002264 (A277645 (n + 1)).toNat

end

end A189363.P18053258731255028124

namespace A189363

/-- `A097337(n+1)+A002264(A277645(n+1))` -/
def P18053258731255028124.Spec : Prop :=
  ∀ n, P18053258731255028124.a n = A189363 (n + 1)

end A189363

/-!
# A189364: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=(1+sqrt(5))/2.

The programs for A189364, the canonical program `A189364.P501909001437529268` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189364 has offset 1).

The definition of A189364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189364.P501909001437529268

`n+1+floor((n+1)*sqrt(2))+floor((n+1)*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189364

/-- `n+1+floor((n+1)*sqrt(2))+floor((n+1)*(1+sqrt(5))/2)` -/
def P501909001437529268.Spec : Prop :=
  ∀ n, P501909001437529268.a n = A189364 (n + 1)

theorem P501909001437529268.correct : P501909001437529268.Spec := by
  intro n
  simp only [A189364, Nat.add_sub_cancel]

end A189364

/-! ## A189364.P1162490950237657858

`floor(A000201(n+1)+(A140868(n+1)-n)/2)`
-/

namespace A189364.P1162490950237657858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000201 (n + 1) : ℚ) + (A140868 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A189364.P1162490950237657858

namespace A189364

/-- `floor(A000201(n+1)+(A140868(n+1)-n)/2)` -/
def P1162490950237657858.Spec : Prop :=
  ∀ n, P1162490950237657858.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P5884897002531028104

`floor(A000201(n+1)+sqrt(A087055(n+1))+1+n)`
-/

namespace A189364.P5884897002531028104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000201 (n + 1) : ℝ) + (Real.sqrt (A087055 (n + 1) : ℝ) + 1 + (n : ℝ))⌋

end

end A189364.P5884897002531028104

namespace A189364

/-- `floor(A000201(n+1)+sqrt(A087055(n+1))+1+n)` -/
def P5884897002531028104.Spec : Prop :=
  ∀ n, P5884897002531028104.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P9558121793180382641

`A000027(A005206(n)+A001952(n+1))`
-/

namespace A189364.P9558121793180382641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005206 n + A001952 (n + 1)).toNat

end

end A189364.P9558121793180382641

namespace A189364

/-- `A000027(A005206(n)+A001952(n+1))` -/
def P9558121793180382641.Spec : Prop :=
  ∀ n, P9558121793180382641.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P17387232006429196480

`A000027(A000201(n+1)+∑[A097509(n)]-1)`
-/

namespace A189364.P17387232006429196480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000201 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A189364.P17387232006429196480

namespace A189364

/-- `A000027(A000201(n+1)+∑[A097509(n)]-1)` -/
def P17387232006429196480.Spec : Prop :=
  ∀ n, P17387232006429196480.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P2019109416594694468

`A000027(A000201(n+1)+A087057(n+1)+n)`
-/

namespace A189364.P2019109416594694468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000201 (n + 1) + (A087057 (n + 1) + (n : ℤ))).toNat

end

end A189364.P2019109416594694468

namespace A189364

/-- `A000027(A000201(n+1)+A087057(n+1)+n)` -/
def P2019109416594694468.Spec : Prop :=
  ∀ n, P2019109416594694468.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P14278048249231025278

`A000027(A000201(n+1)+A184922(n+1)-n)`
-/

namespace A189364.P14278048249231025278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000201 (n + 1) + (A184922 (n + 1) - (n : ℤ))).toNat

end

end A189364.P14278048249231025278

namespace A189364

/-- `A000027(A000201(n+1)+A184922(n+1)-n)` -/
def P14278048249231025278.Spec : Prop :=
  ∀ n, P14278048249231025278.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P6319294993851184508

`A000027(A000201(n+1)+∑[A188037(n+1)+2])`
-/

namespace A189364.P6319294993851184508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000201 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189364.P6319294993851184508

namespace A189364

/-- `A000027(A000201(n+1)+∑[A188037(n+1)+2])` -/
def P6319294993851184508.Spec : Prop :=
  ∀ n, P6319294993851184508.a n = A189364 (n + 1)

end A189364

/-! ## A189364.P9393130561369575752

`A028310(A005206(n)+A001952(n+1))`
-/

namespace A189364.P9393130561369575752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A005206 n + A001952 (n + 1)).toNat

end

end A189364.P9393130561369575752

namespace A189364

/-- `A028310(A005206(n)+A001952(n+1))` -/
def P9393130561369575752.Spec : Prop :=
  ∀ n, P9393130561369575752.a n = A189364 (n + 1)

end A189364

/-!
# A189365: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(2), t=(1+sqrt(5))/2.

The programs for A189365, the canonical program `A189365.P5059908635465645335` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189365 has offset 1).

The definition of A189365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189365.P5059908635465645335

`n+1+floor((n+1)/sqrt(2))+floor((n+1)*ϕ/sqrt(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189365

/-- `n+1+floor((n+1)/sqrt(2))+floor((n+1)*ϕ/sqrt(2))` -/
def P5059908635465645335.Spec : Prop :=
  ∀ n, P5059908635465645335.a n = A189365 (n + 1)

theorem P5059908635465645335.correct : P5059908635465645335.Spec := by
  intro n
  simp only [A189365, Nat.add_sub_cancel]

end A189365

/-! ## A189365.P14754428928741993197

`round(log(sqrt(A241332(n+1))))`
-/

namespace A189365.P14754428928741993197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A241332 (n + 1) : ℝ)))

end

end A189365.P14754428928741993197

namespace A189365

/-- `round(log(sqrt(A241332(n+1))))` -/
def P14754428928741993197.Spec : Prop :=
  ∀ n, P14754428928741993197.a n = A189365 (n + 1)

end A189365

/-! ## A189365.P2694330121665013239

`A118759(A101803(3*(n+1))+n)`
-/

namespace A189365.P2694330121665013239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A101803 (3 * (n + 1)) + (n : ℤ)).toNat

end

end A189365.P2694330121665013239

namespace A189365

/-- `A118759(A101803(3*(n+1))+n)` -/
def P2694330121665013239.Spec : Prop :=
  ∀ n, P2694330121665013239.a n = A189365 (n + 1)

end A189365

/-! ## A189365.P10068690959389051426

`A000196(3*(n+1)*A182769(n+1))`
-/

namespace A189365.P10068690959389051426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((3 * (n + 1) : ℤ) * A182769 (n + 1)).toNat

end

end A189365.P10068690959389051426

namespace A189365

/-- `A000196(3*(n+1)*A182769(n+1))` -/
def P10068690959389051426.Spec : Prop :=
  ∀ n, P10068690959389051426.a n = A189365 (n + 1)

end A189365

/-! ## A189365.P8133599681303532534

`A003059((ceil((n+1)/(2-sqrt(2)))+n)*A016777(n))`
-/

namespace A189365.P8133599681303532534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉ + (n : ℤ)) * A016777 n).toNat

end

end A189365.P8133599681303532534

namespace A189365

/-- `A003059((ceil((n+1)/(2-sqrt(2)))+n)*A016777(n))` -/
def P8133599681303532534.Spec : Prop :=
  ∀ n, P8133599681303532534.a n = A189365 (n + 1)

end A189365

/-!
# A189366: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(2), t=(1+sqrt(5))/2.

The programs for A189366, the canonical program `A189366.P1155710565310274126` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189366 has offset 1).

The definition of A189366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189366.P1155710565310274126

`n+1+floor(2*(n+1)/(1+sqrt(5)))+floor(2*(n+1)*sqrt(2)/(1+sqrt(5)))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189366

/-- `n+1+floor(2*(n+1)/(1+sqrt(5)))+floor(2*(n+1)*sqrt(2)/(1+sqrt(5)))` -/
def P1155710565310274126.Spec : Prop :=
  ∀ n, P1155710565310274126.a n = A189366 (n + 1)

theorem P1155710565310274126.correct : P1155710565310274126.Spec := by
  intro n
  simp only [A189366, Nat.add_sub_cancel]

end A189366

/-! ## A189366.P18141981854437173700

`A002265(A101865(n+1)+A004526(n))`
-/

namespace A189366.P18141981854437173700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A101865 (n + 1) + A004526 n).toNat

end

end A189366.P18141981854437173700

namespace A189366

/-- `A002265(A101865(n+1)+A004526(n))` -/
def P18141981854437173700.Spec : Prop :=
  ∀ n, P18141981854437173700.a n = A189366 (n + 1)

end A189366

/-! ## A189366.P5866644367607182883

`A002264(A134862(n+1)-A003231(n+1))`
-/

namespace A189366.P5866644367607182883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A134862 (n + 1) - A003231 (n + 1)).toNat

end

end A189366.P5866644367607182883

namespace A189366

/-- `A002264(A134862(n+1)-A003231(n+1))` -/
def P5866644367607182883.Spec : Prop :=
  ∀ n, P5866644367607182883.a n = A189366 (n + 1)

end A189366

/-! ## A189366.P6492253138697558971

`A140100(A000201(n+1)%A359476(2*n+1))`
-/

namespace A189366.P6492253138697558971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (Int.tmod (A000201 (n + 1)) (A359476 (2 * n + 1))).toNat

end

end A189366.P6492253138697558971

namespace A189366

/-- `A140100(A000201(n+1)%A359476(2*n+1))` -/
def P6492253138697558971.Spec : Prop :=
  ∀ n, P6492253138697558971.a n = A189366 (n + 1)

end A189366

/-!
# A189367: a(n) = n + [n*s/r] + [n*t/r]; r=2, s=sqrt(2), t=sqrt(3).

The programs for A189367, the canonical program `A189367.P16534971809272517782` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189367 has offset 1).

The definition of A189367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189367.P16534971809272517782

`n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*sqrt(3)/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189367

/-- `n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*sqrt(3)/2)` -/
def P16534971809272517782.Spec : Prop :=
  ∀ n, P16534971809272517782.a n = A189367 (n + 1)

theorem P16534971809272517782.correct : P16534971809272517782.Spec := by
  intro n
  simp only [A189367, Nat.add_sub_cancel]

end A189367

/-! ## A189367.P8679197408455947590

`floor(A003152(n+1)+A022838(n+1)/2)`
-/

namespace A189367.P8679197408455947590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003152 (n + 1) : ℚ) + (A022838 (n + 1) : ℚ) / 2⌋

end

end A189367.P8679197408455947590

namespace A189367

/-- `floor(A003152(n+1)+A022838(n+1)/2)` -/
def P8679197408455947590.Spec : Prop :=
  ∀ n, P8679197408455947590.a n = A189367 (n + 1)

end A189367

/-! ## A189367.P15743234069975875945

`A004526(A189395(n+1)+A003152(n+1))`
-/

namespace A189367.P15743234069975875945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189395 (n + 1) + A003152 (n + 1)).toNat

end

end A189367.P15743234069975875945

namespace A189367

/-- `A004526(A189395(n+1)+A003152(n+1))` -/
def P15743234069975875945.Spec : Prop :=
  ∀ n, P15743234069975875945.a n = A189367 (n + 1)

end A189367

/-!
# A189368: a(n) = n + [n*r/s] + [n*t/s]; r=2, s=sqrt(2), t=sqrt(3).

The programs for A189368, the canonical program `A189368.P15994184676642170965` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189368 has offset 1).

The definition of A189368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189368.P15994184676642170965

`n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*sqrt(3)/sqrt(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189368

/-- `n+1+floor(2*(n+1)/sqrt(2))+floor((n+1)*sqrt(3)/sqrt(2))` -/
def P15994184676642170965.Spec : Prop :=
  ∀ n, P15994184676642170965.a n = A189368 (n + 1)

theorem P15994184676642170965.correct : P15994184676642170965.Spec := by
  intro n
  simp only [A189368, Nat.add_sub_cancel]

end A189368

/-! ## A189368.P12188636580430822872

`A367066(A277734(n+1))`
-/

namespace A189368.P12188636580430822872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A277734 (n + 1)).toNat

end

end A189368.P12188636580430822872

namespace A189368

/-- `A367066(A277734(n+1))` -/
def P12188636580430822872.Spec : Prop :=
  ∀ n, P12188636580430822872.a n = A189368 (n + 1)

end A189368

/-! ## A189368.P50055300202492966

`∑[A091304(A026533(n+1))+2]`
-/

namespace A189368.P50055300202492966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A026533 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189368.P50055300202492966

namespace A189368

/-- `∑[A091304(A026533(n+1))+2]` -/
def P50055300202492966.Spec : Prop :=
  ∀ n, P50055300202492966.a n = A189368 (n + 1)

end A189368

/-!
# A189369: a(n) = n + [n*r/t] + [n*s/t]; r=2, s=sqrt(2), t=sqrt(3).

The programs for A189369, the canonical program `A189369.P4383959305531583721` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189369 has offset 1).

The definition of A189369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189369.P4383959305531583721

`n+1+floor(2*(n+1)/sqrt(3))+floor((n+1)*sqrt(2)/sqrt(3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189369

/-- `n+1+floor(2*(n+1)/sqrt(3))+floor((n+1)*sqrt(2)/sqrt(3))` -/
def P4383959305531583721.Spec : Prop :=
  ∀ n, P4383959305531583721.a n = A189369 (n + 1)

theorem P4383959305531583721.correct : P4383959305531583721.Spec := by
  intro n
  simp only [A189369, Nat.add_sub_cancel]

end A189369

/-! ## A189369.P2545880626902130680

`A233583(A189397(2*(n+1))-n)`
-/

namespace A189369.P2545880626902130680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A189397 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A189369.P2545880626902130680

namespace A189369

/-- `A233583(A189397(2*(n+1))-n)` -/
def P2545880626902130680.Spec : Prop :=
  ∀ n, P2545880626902130680.a n = A189369 (n + 1)

end A189369

/-! ## A189369.P297510294608657552

`A371214(A075318(n+1))`
-/

namespace A189369.P297510294608657552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371214 (A075318 (n + 1)).toNat

end

end A189369.P297510294608657552

namespace A189369

/-- `A371214(A075318(n+1))` -/
def P297510294608657552.Spec : Prop :=
  ∀ n, P297510294608657552.a n = A189369 (n + 1)

end A189369

/-!
# A189370: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=sqrt(2), t=sqrt(5).

The programs for A189370, the canonical program `A189370.P15670140634862535567` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189370 has offset 1).

The definition of A189370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189370.P15670140634862535567

`n+1+floor((n+1)*sqrt(2))+floor((n+1)*sqrt(5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189370

/-- `n+1+floor((n+1)*sqrt(2))+floor((n+1)*sqrt(5))` -/
def P15670140634862535567.Spec : Prop :=
  ∀ n, P15670140634862535567.a n = A189370 (n + 1)

theorem P15670140634862535567.correct : P15670140634862535567.Spec := by
  intro n
  simp only [A189370, Nat.add_sub_cancel]

end A189370

/-! ## A189370.P5627283272084908679

`abs(A080754(n+1)+floor((n+1)*sqrt(5))-1)`
-/

namespace A189370.P5627283272084908679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080754 (n + 1) + (⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ - 1)|

end

end A189370.P5627283272084908679

namespace A189370

/-- `abs(A080754(n+1)+floor((n+1)*sqrt(5))-1)` -/
def P5627283272084908679.Spec : Prop :=
  ∀ n, P5627283272084908679.a n = A189370 (n + 1)

end A189370

/-! ## A189370.P5402769015482224256

`A000027(A001961(n+1)+A001952(n+1))`
-/

namespace A189370.P5402769015482224256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001961 (n + 1) + A001952 (n + 1)).toNat

end

end A189370.P5402769015482224256

namespace A189370

/-- `A000027(A001961(n+1)+A001952(n+1))` -/
def P5402769015482224256.Spec : Prop :=
  ∀ n, P5402769015482224256.a n = A189370 (n + 1)

end A189370

/-! ## A189370.P5006883910643096248

`∑{d}[A009001(2*n), A001961((n+1)/#)+A001952(n+1)]`
-/

namespace A189370.P5006883910643096248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A001961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + A001952 (n + 1))

end

end A189370.P5006883910643096248

namespace A189370

/-- `∑{d}[A009001(2*n), A001961((n+1)/#)+A001952(n+1)]` -/
def P5006883910643096248.Spec : Prop :=
  ∀ n, P5006883910643096248.a n = A189370 (n + 1)

end A189370

/-! ## A189370.P2285113389490103801

`(A001961(n+1)+A001952(n+1))%A048215(n+3)`
-/

namespace A189370.P2285113389490103801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001961 (n + 1) + A001952 (n + 1)) (A048215 (n + 3))

end

end A189370.P2285113389490103801

namespace A189370

/-- `(A001961(n+1)+A001952(n+1))%A048215(n+3)` -/
def P2285113389490103801.Spec : Prop :=
  ∀ n, P2285113389490103801.a n = A189370 (n + 1)

end A189370

/-! ## A189370.P1681884857496901351

`A028310(A022839(n+1)+A003151(n+1))`
-/

namespace A189370.P1681884857496901351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022839 (n + 1) + A003151 (n + 1)).toNat

end

end A189370.P1681884857496901351

namespace A189370

/-- `A028310(A022839(n+1)+A003151(n+1))` -/
def P1681884857496901351.Spec : Prop :=
  ∀ n, P1681884857496901351.a n = A189370 (n + 1)

end A189370

/-!
# A189371: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=sqrt(2), t=sqrt(5).

The programs for A189371, the canonical program `A189371.P9232595875761904738` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189371 has offset 1).

The definition of A189371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189371.P9232595875761904738

`n+1+floor((n+1)/sqrt(2))+floor((n+1)*sqrt(5)/sqrt(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189371

/-- `n+1+floor((n+1)/sqrt(2))+floor((n+1)*sqrt(5)/sqrt(2))` -/
def P9232595875761904738.Spec : Prop :=
  ∀ n, P9232595875761904738.a n = A189371 (n + 1)

theorem P9232595875761904738.correct : P9232595875761904738.Spec := by
  intro n
  simp only [A189371, Nat.add_sub_cancel]

end A189371

/-! ## A189371.P16528638652029945602

`A004526(A187395(n+1)-2*A194920(n+1))`
-/

namespace A189371.P16528638652029945602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187395 (n + 1) - 2 * A194920 (n + 1)).toNat

end

end A189371.P16528638652029945602

namespace A189371

/-- `A004526(A187395(n+1)-2*A194920(n+1))` -/
def P16528638652029945602.Spec : Prop :=
  ∀ n, P16528638652029945602.a n = A189371 (n + 1)

end A189371

/-! ## A189371.P2429407719234819055

`A004526(A187395(n+1)-A194920(n+1)-A194920(n+1))`
-/

namespace A189371.P2429407719234819055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187395 (n + 1) - A194920 (n + 1) - A194920 (n + 1)).toNat

end

end A189371.P2429407719234819055

namespace A189371

/-- `A004526(A187395(n+1)-A194920(n+1)-A194920(n+1))` -/
def P2429407719234819055.Spec : Prop :=
  ∀ n, P2429407719234819055.a n = A189371 (n + 1)

end A189371

/-! ## A189371.P14065124261548162955

`ceil(log2(A117881(2*n+1)))`
-/

namespace A189371.P14065124261548162955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A117881 (2 * n + 1) : ℝ)⌉

end

end A189371.P14065124261548162955

namespace A189371

/-- `ceil(log2(A117881(2*n+1)))` -/
def P14065124261548162955.Spec : Prop :=
  ∀ n, P14065124261548162955.a n = A189371 (n + 1)

end A189371

/-! ## A189371.P13676825317493458392

`floor(log2(A213530(n+1)))`
-/

namespace A189371.P13676825317493458392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A213530 (n + 1)).toNat

end

end A189371.P13676825317493458392

namespace A189371

/-- `floor(log2(A213530(n+1)))` -/
def P13676825317493458392.Spec : Prop :=
  ∀ n, (P13676825317493458392.a n : ℤ) = A189371 (n + 1)

end A189371

/-!
# A189372: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=sqrt(2), t=sqrt(5).

The programs for A189372, the canonical program `A189372.P9587715647194284659` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189372 has offset 1).

The definition of A189372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189372.P9587715647194284659

`n+1+floor((n+1)/sqrt(5))+floor((n+1)*sqrt(2)/sqrt(5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189372

/-- `n+1+floor((n+1)/sqrt(5))+floor((n+1)*sqrt(2)/sqrt(5))` -/
def P9587715647194284659.Spec : Prop :=
  ∀ n, P9587715647194284659.a n = A189372 (n + 1)

theorem P9587715647194284659.correct : P9587715647194284659.Spec := by
  intro n
  simp only [A189372, Nat.add_sub_cancel]

end A189372

/-!
# A189374: Expansion of 1/((1-x)^5*(x^2+x+1)^3).

The programs for A189374, the canonical program `A189374.P5292362854933782751` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189374 has offset 0).

The definition of A189374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-3x^3+6x^4-3x^5+3x^6-6x^7+3x^8-x^9+2x^10-x^11))` (program `A189374.P5292362854933782751`, by `A189374.P5292362854933782751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189374.P5292362854933782751

`ogf(1/(1-2x+x^2-3x^3+6x^4-3x^5+3x^6-6x^7+3x^8-x^9+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189374

/-- `ogf(1/(1-2x+x^2-3x^3+6x^4-3x^5+3x^6-6x^7+3x^8-x^9+2x^10-x^11))` -/
def P5292362854933782751.Spec : Prop :=
  ∀ n, P5292362854933782751.a n = A189374 n

theorem P5292362854933782751.correct : P5292362854933782751.Spec := by
  intro n
  simp only [A189374]

end A189374

/-! ## A189374.P12900086935841135135

`(2*a(n-1)+2*a(n-2)+(8+n)*a(n-3))/n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A189374.P12900086935841135135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (2 * a (n - 1) + 2 * a (n - 2) + (8 + n : ℚ) * a (n - 3)) / (n : ℚ)

end

end A189374.P12900086935841135135

namespace A189374

/-- `(2*a(n-1)+2*a(n-2)+(8+n)*a(n-3))/n` -/
def P12900086935841135135.Spec : Prop :=
  ∀ n, P12900086935841135135.a n = (A189374 n : ℚ)

end A189374

/-! ## A189374.P14687329121811719956

`∑[C(floor(n/3)+3, 3)]`
-/

namespace A189374.P14687329121811719956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 3⌋ + 3).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189374.P14687329121811719956

namespace A189374

/-- `∑[C(floor(n/3)+3, 3)]` -/
def P14687329121811719956.Spec : Prop :=
  ∀ n, (P14687329121811719956.a n : ℤ) = A189374 n

end A189374

/-! ## A189374.P3199523957516952995

`a(n-1)+C(floor(n/3)+3, 3)` with `a(0)=1`
-/

namespace A189374.P3199523957516952995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌊(n : ℚ) / 3⌋ + 3).toNat 3

end

end A189374.P3199523957516952995

namespace A189374

/-- `a(n-1)+C(floor(n/3)+3, 3)` -/
def P3199523957516952995.Spec : Prop :=
  ∀ n, (P3199523957516952995.a n : ℤ) = A189374 n

end A189374

/-! ## A189374.P16561409583669649064

`∑[A190717(n)]`
-/

namespace A189374.P16561409583669649064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189374.P16561409583669649064

namespace A189374

/-- `∑[A190717(n)]` -/
def P16561409583669649064.Spec : Prop :=
  ∀ n, P16561409583669649064.a n = A189374 n

end A189374

/-! ## A189374.P12679015066979257000

`∑[A000292(∑[char[3*n]])]`
-/

namespace A189374.P12679015066979257000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189374.P12679015066979257000

namespace A189374

/-- `∑[A000292(∑[char[3*n]])]` -/
def P12679015066979257000.Spec : Prop :=
  ∀ n, P12679015066979257000.a n = A189374 n

end A189374

/-! ## A189374.P12451796966890486509

`∑[A058187(n-ceil(n/3))]`
-/

namespace A189374.P12451796966890486509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 ((n : ℤ) - ⌈(n : ℚ) / 3⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189374.P12451796966890486509

namespace A189374

/-- `∑[A058187(n-ceil(n/3))]` -/
def P12451796966890486509.Spec : Prop :=
  ∀ n, P12451796966890486509.a n = A189374 n

end A189374

/-! ## A189374.P959514184338759954

`A144677(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A189374.P959514184338759954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A144677 n + a (n - 3)

end

end A189374.P959514184338759954

namespace A189374

/-- `A144677(n)+a(n-3)` -/
def P959514184338759954.Spec : Prop :=
  ∀ n, P959514184338759954.a n = A189374 n

end A189374

/-! ## A189374.P15132438823701218800

`∑[A007531(floor(n/3)+3)/6]`
-/

namespace A189374.P15132438823701218800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (⌊(n : ℚ) / 3⌋ + 3).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189374.P15132438823701218800

namespace A189374

/-- `∑[A007531(floor(n/3)+3)/6]` -/
def P15132438823701218800.Spec : Prop :=
  ∀ n, P15132438823701218800.a n = (A189374 n : ℚ)

end A189374

/-!
# A189375: Expansion of 1/((1-x)^5*(x^3+x^2+x+1)^3).

The programs for A189375, the canonical program `A189375.P8256140124751403034` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189375 has offset 0).

The definition of A189375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-3x^4+6x^5-3x^6+3x^8-6x^9+3x^10-x^12+2x^13-x^14))` (program `A189375.P8256140124751403034`, by `A189375.P8256140124751403034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189375.P8256140124751403034

`ogf(1/(1-2x+x^2-3x^4+6x^5-3x^6+3x^8-6x^9+3x^10-x^12+2x^13-x^14))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189375

/-- `ogf(1/(1-2x+x^2-3x^4+6x^5-3x^6+3x^8-6x^9+3x^10-x^12+2x^13-x^14))` -/
def P8256140124751403034.Spec : Prop :=
  ∀ n, P8256140124751403034.a n = A189375 n

theorem P8256140124751403034.correct : P8256140124751403034.Spec := by
  intro n
  simp only [A189375]

end A189375

/-! ## A189375.P10981030962306857793

`∑[C(floor(n/4)+3, 3)]`
-/

namespace A189375.P10981030962306857793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 4⌋ + 3).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189375.P10981030962306857793

namespace A189375

/-- `∑[C(floor(n/4)+3, 3)]` -/
def P10981030962306857793.Spec : Prop :=
  ∀ n, (P10981030962306857793.a n : ℤ) = A189375 n

end A189375

/-! ## A189375.P18099318376374797322

`a(n-1)+C(floor(n/4)+3, 3)` with `a(0)=1`
-/

namespace A189375.P18099318376374797322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌊(n : ℚ) / 4⌋ + 3).toNat 3

end

end A189375.P18099318376374797322

namespace A189375

/-- `a(n-1)+C(floor(n/4)+3, 3)` -/
def P18099318376374797322.Spec : Prop :=
  ∀ n, (P18099318376374797322.a n : ℤ) = A189375 n

end A189375

/-! ## A189375.P13803419997733764193

`∑[A190718(n)]`
-/

namespace A189375.P13803419997733764193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189375.P13803419997733764193

namespace A189375

/-- `∑[A190718(n)]` -/
def P13803419997733764193.Spec : Prop :=
  ∀ n, P13803419997733764193.a n = A189375 n

end A189375

/-! ## A189375.P15786476043332307394

`∑[A058187(floor(n/2))]`
-/

namespace A189375.P15786476043332307394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189375.P15786476043332307394

namespace A189375

/-- `∑[A058187(floor(n/2))]` -/
def P15786476043332307394.Spec : Prop :=
  ∀ n, P15786476043332307394.a n = A189375 n

end A189375

/-! ## A189375.P10841620549334949399

`∑[A000292(∑[char[4*n]])]`
-/

namespace A189375.P10841620549334949399
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189375.P10841620549334949399

namespace A189375

/-- `∑[A000292(∑[char[4*n]])]` -/
def P10841620549334949399.Spec : Prop :=
  ∀ n, P10841620549334949399.a n = A189375 n

end A189375

/-! ## A189375.P7634221385540285924

`A115269(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A189375.P7634221385540285924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A115269 n - a (n - 2)

end

end A189375.P7634221385540285924

namespace A189375

/-- `A115269(n)-a(n-2)` -/
def P7634221385540285924.Spec : Prop :=
  ∀ n, P7634221385540285924.a n = A189375 n

end A189375

/-! ## A189375.P4389652153942933573

`∑[2*A000292(A004526(∑[(n+1)%2]+1))]/2`
-/

namespace A189375.P4389652153942933573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 (A004526 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A189375.P4389652153942933573

namespace A189375

/-- `∑[2*A000292(A004526(∑[(n+1)%2]+1))]/2` -/
def P4389652153942933573.Spec : Prop :=
  ∀ n, P4389652153942933573.a n = (A189375 n : ℚ)

end A189375

/-!
# A189376: Expansion of 1/((1-x)^5*(x^3+x^2+x+1)^2).

The programs for A189376, the canonical program `A189376.P7874013622437474448` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189376 has offset 0).

The definition of A189376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-2x^4+6x^5-6x^6+2x^7+x^8-3x^9+3x^10-x^11))` (program `A189376.P7874013622437474448`, by `A189376.P7874013622437474448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189376.P7874013622437474448

`ogf(1/(1-3x+3x^2-x^3-2x^4+6x^5-6x^6+2x^7+x^8-3x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189376

/-- `ogf(1/(1-3x+3x^2-x^3-2x^4+6x^5-6x^6+2x^7+x^8-3x^9+3x^10-x^11))` -/
def P7874013622437474448.Spec : Prop :=
  ∀ n, P7874013622437474448.a n = A189376 n

theorem P7874013622437474448.correct : P7874013622437474448.Spec := by
  intro n
  simp only [A189376]

end A189376

/-! ## A189376.P13636133752006314375

`∑[A144678(n)]`
-/

namespace A189376.P13636133752006314375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P13636133752006314375

namespace A189376

/-- `∑[A144678(n)]` -/
def P13636133752006314375.Spec : Prop :=
  ∀ n, P13636133752006314375.a n = A189376 n

end A189376

/-! ## A189376.P17882518959657586541

`∑[∑[C(floor(n/4)+2, 2)]]`
-/

namespace A189376.P17882518959657586541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 4⌋ + 2).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P17882518959657586541

namespace A189376

/-- `∑[∑[C(floor(n/4)+2, 2)]]` -/
def P17882518959657586541.Spec : Prop :=
  ∀ n, (P17882518959657586541.a n : ℤ) = A189376 n

end A189376

/-! ## A189376.P10327821561003559746

`∑[∑[A008805(floor(n/2))]]`
-/

namespace A189376.P10327821561003559746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P10327821561003559746

namespace A189376

/-- `∑[∑[A008805(floor(n/2))]]` -/
def P10327821561003559746.Spec : Prop :=
  ∀ n, P10327821561003559746.a n = A189376 n

end A189376

/-! ## A189376.P10536086718338950010

`∑[∑[A000217(floor(n/4)+1)]]`
-/

namespace A189376.P10536086718338950010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (⌊(n : ℚ) / 4⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P10536086718338950010

namespace A189376

/-- `∑[∑[A000217(floor(n/4)+1)]]` -/
def P10536086718338950010.Spec : Prop :=
  ∀ n, P10536086718338950010.a n = A189376 n

end A189376

/-! ## A189376.P755132437189131211

`∑[∑[A000096(A002265(n))+1]]`
-/

namespace A189376.P755132437189131211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002265 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P755132437189131211

namespace A189376

/-- `∑[∑[A000096(A002265(n))+1]]` -/
def P755132437189131211.Spec : Prop :=
  ∀ n, P755132437189131211.a n = A189376 n

end A189376

/-! ## A189376.P17594455297087383772

`∑[∑[A000124(A002265(n)+1)-1]]`
-/

namespace A189376.P17594455297087383772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002265 n + 1).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P17594455297087383772

namespace A189376

/-- `∑[∑[A000124(A002265(n)+1)-1]]` -/
def P17594455297087383772.Spec : Prop :=
  ∀ n, P17594455297087383772.a n = A189376 n

end A189376

/-! ## A189376.P3714989347494672117

`∑[∑[A025834(3*n)]]`
-/

namespace A189376.P3714989347494672117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025834 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P3714989347494672117

namespace A189376

/-- `∑[∑[A025834(3*n)]]` -/
def P3714989347494672117.Spec : Prop :=
  ∀ n, P3714989347494672117.a n = A189376 n

end A189376

/-! ## A189376.P7401770870889288576

`∑[A029082(2*n+n+2)]`
-/

namespace A189376.P7401770870889288576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029082 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P7401770870889288576

namespace A189376

/-- `∑[A029082(2*n+n+2)]` -/
def P7401770870889288576.Spec : Prop :=
  ∀ n, P7401770870889288576.a n = A189376 n

end A189376

/-! ## A189376.P17277502073661211718

`∑[∑[A007401(a(n-4)+1)]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A189376.P17277502073661211718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f2 =>
  A007401 (f2 (n - 4) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P17277502073661211718

namespace A189376

/-- `∑[∑[A007401(a(n-4)+1)]]` -/
def P17277502073661211718.Spec : Prop :=
  ∀ n, P17277502073661211718.a n = A189376 n

end A189376

/-! ## A189376.P18244848441155877560

`∑[∑[A133825(A038714(n))]]`
-/

namespace A189376.P18244848441155877560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (A038714 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189376.P18244848441155877560

namespace A189376

/-- `∑[∑[A133825(A038714(n))]]` -/
def P18244848441155877560.Spec : Prop :=
  ∀ n, P18244848441155877560.a n = A189376 n

end A189376

/-!
# A189377: a(n) = n + floor(ns/r) + floor(nt/r) with r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

The programs for A189377, the canonical program `A189377.P501354726350902764` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189377 has offset 1).

The definition of A189377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189377.P345304054664643693

`eq[1, A327174(n+1)+A327174(n)]`
-/

namespace A189377.P345304054664643693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1) + A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189377.P345304054664643693

namespace A189377

/-- `eq[1, A327174(n+1)+A327174(n)]` -/
def P345304054664643693.Spec : Prop :=
  ∀ n, (P345304054664643693.a n : ℤ) = A189377 (n + 1)

end A189377

/-! ## A189377.P501354726350902764

`A004526(n)+or(A000035(n), A000201(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189377

/-- `A004526(n)+or(A000035(n), A000201(n+1))` -/
def P501354726350902764.Spec : Prop :=
  ∀ n, P501354726350902764.a n = A189377 (n + 1)

theorem P501354726350902764.correct : P501354726350902764.Spec := by
  intro n
  simp only [A189377, Nat.add_sub_cancel]

end A189377

/-! ## A189377.P8282829223318846773

`A382116(A188222(n+1))`
-/

namespace A189377.P8282829223318846773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382116 (A188222 (n + 1)).toNat

end

end A189377.P8282829223318846773

namespace A189377

/-- `A382116(A188222(n+1))` -/
def P8282829223318846773.Spec : Prop :=
  ∀ n, P8282829223318846773.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P11939647643025458358

`A035336(n+1)-A187485(A000201(n+1))`
-/

namespace A189377.P11939647643025458358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A187485 (A000201 (n + 1)).toNat

end

end A189377.P11939647643025458358

namespace A189377

/-- `A035336(n+1)-A187485(A000201(n+1))` -/
def P11939647643025458358.Spec : Prop :=
  ∀ n, P11939647643025458358.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P13875061676662887041

`A005206(A032766(A000201(n+1))+n)`
-/

namespace A189377.P13875061676662887041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A032766 (A000201 (n + 1)).toNat + (n : ℤ)).toNat

end

end A189377.P13875061676662887041

namespace A189377

/-- `A005206(A032766(A000201(n+1))+n)` -/
def P13875061676662887041.Spec : Prop :=
  ∀ n, P13875061676662887041.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P16247693557267182499

`A307294(A003622(n+1))-1`
-/

namespace A189377.P16247693557267182499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (A003622 (n + 1)).toNat - 1

end

end A189377.P16247693557267182499

namespace A189377

/-- `A307294(A003622(n+1))-1` -/
def P16247693557267182499.Spec : Prop :=
  ∀ n, P16247693557267182499.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P13060811829415404208

`A307294(A219636(2*(n+1)))-1`
-/

namespace A189377.P13060811829415404208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (A219636 (2 * (n + 1))).toNat - 1

end

end A189377.P13060811829415404208

namespace A189377

/-- `A307294(A219636(2*(n+1)))-1` -/
def P13060811829415404208.Spec : Prop :=
  ∀ n, P13060811829415404208.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P3064157521114187777

`record[A000201(n+1)-A159917(2*n)]`
-/

namespace A189377.P3064157521114187777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A159917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189377.P3064157521114187777

namespace A189377

/-- `record[A000201(n+1)-A159917(2*n)]` -/
def P3064157521114187777.Spec : Prop :=
  ∀ n, P3064157521114187777.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P5297604653972364988

`A187485(A187485(2*(n+1)))-A008619(A187485(2*n+1))`
-/

namespace A189377.P5297604653972364988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (A187485 (2 * (n + 1))).toNat - A008619 (A187485 (2 * n + 1)).toNat

end

end A189377.P5297604653972364988

namespace A189377

/-- `A187485(A187485(2*(n+1)))-A008619(A187485(2*n+1))` -/
def P5297604653972364988.Spec : Prop :=
  ∀ n, P5297604653972364988.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P9754492323269632298

`A188222(A001950(n+1))+A188222(n+1)-A001950(n+1)`
-/

namespace A189377.P9754492323269632298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 (A001950 (n + 1)).toNat + (A188222 (n + 1) - A001950 (n + 1))

end

end A189377.P9754492323269632298

namespace A189377

/-- `A188222(A001950(n+1))+A188222(n+1)-A001950(n+1)` -/
def P9754492323269632298.Spec : Prop :=
  ∀ n, P9754492323269632298.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P6216282416935904495

`record[A123108(A002251(n))+A004526(n)]`
-/

namespace A189377.P6216282416935904495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002251 n).toNat + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189377.P6216282416935904495

namespace A189377

/-- `record[A123108(A002251(n))+A004526(n)]` -/
def P6216282416935904495.Spec : Prop :=
  ∀ n, P6216282416935904495.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P15442256868323549415

`record[A004526(A002251(n+1))+A004526(n+1)]`
-/

namespace A189377.P15442256868323549415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002251 (n + 1)).toNat + A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189377.P15442256868323549415

namespace A189377

/-- `record[A004526(A002251(n+1))+A004526(n+1)]` -/
def P15442256868323549415.Spec : Prop :=
  ∀ n, P15442256868323549415.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P13162295781393811512

`record[A123108(A002251(n+1))+A123108(n+1)]`
-/

namespace A189377.P13162295781393811512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A002251 (n + 1)).toNat + A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189377.P13162295781393811512

namespace A189377

/-- `record[A123108(A002251(n+1))+A123108(n+1)]` -/
def P13162295781393811512.Spec : Prop :=
  ∀ n, P13162295781393811512.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P14528904047586733181

`A004526(A000201(n+1))+A004526(A001950(n+1))`
-/

namespace A189377.P14528904047586733181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000201 (n + 1)).toNat + A004526 (A001950 (n + 1)).toNat

end

end A189377.P14528904047586733181

namespace A189377

/-- `A004526(A000201(n+1))+A004526(A001950(n+1))` -/
def P14528904047586733181.Spec : Prop :=
  ∀ n, P14528904047586733181.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P9169851986708781408

`A060143(A219636(A001950(n+1)+1))`
-/

namespace A189377.P9169851986708781408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A219636 (A001950 (n + 1) + 1).toNat).toNat

end

end A189377.P9169851986708781408

namespace A189377

/-- `A060143(A219636(A001950(n+1)+1))` -/
def P9169851986708781408.Spec : Prop :=
  ∀ n, P9169851986708781408.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P11985669314620463734

`eq[char[A003623(n+1)], A005713(2*n)]`
-/

namespace A189377.P11985669314620463734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189377.P11985669314620463734

namespace A189377

/-- `eq[char[A003623(n+1)], A005713(2*n)]` -/
def P11985669314620463734.Spec : Prop :=
  ∀ n, (P11985669314620463734.a n : ℤ) = A189377 (n + 1)

end A189377

/-! ## A189377.P4456293905550320556

`A008619(A014601(A022342(n+1))+n)`
-/

namespace A189377.P4456293905550320556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A014601 (A022342 (n + 1)).toNat + (n : ℤ)).toNat

end

end A189377.P4456293905550320556

namespace A189377

/-- `A008619(A014601(A022342(n+1))+n)` -/
def P4456293905550320556.Spec : Prop :=
  ∀ n, P4456293905550320556.a n = A189377 (n + 1)

end A189377

/-! ## A189377.P4594305706386859965

`A065033(A042948(A000201(n+1))+n)`
-/

namespace A189377.P4594305706386859965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042948 (A000201 (n + 1)).toNat + (n : ℤ)).toNat

end

end A189377.P4594305706386859965

namespace A189377

/-- `A065033(A042948(A000201(n+1))+n)` -/
def P4594305706386859965.Spec : Prop :=
  ∀ n, P4594305706386859965.a n = A189377 (n + 1)

end A189377

/-!
# A189378: a(n) = n + [nr/s] + [nt/s]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

The programs for A189378, the canonical program `A189378.P12164205168119732610` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189378 has offset 1).

The definition of A189378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189378.P3935505065531545404

`round(ϕ*floor((n+1)*ϕ^3))`
-/

namespace A189378.P3935505065531545404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 3⌋ : ℝ))

end

end A189378.P3935505065531545404

namespace A189378

/-- `round(ϕ*floor((n+1)*ϕ^3))` -/
def P3935505065531545404.Spec : Prop :=
  ∀ n, P3935505065531545404.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P12164205168119732610

`A184901(n+1)+2*(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189378

/-- `A184901(n+1)+2*(n+1)` -/
def P12164205168119732610.Spec : Prop :=
  ∀ n, P12164205168119732610.a n = A189378 (n + 1)

theorem P12164205168119732610.correct : P12164205168119732610.Spec := by
  intro n
  simp only [A189378, Nat.add_sub_cancel]

end A189378

/-! ## A189378.P16091490107557345711

`floor(A001962(n+1)+ϕ*(n+1))`
-/

namespace A189378.P16091490107557345711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001962 (n + 1) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A189378.P16091490107557345711

namespace A189378

/-- `floor(A001962(n+1)+ϕ*(n+1))` -/
def P16091490107557345711.Spec : Prop :=
  ∀ n, P16091490107557345711.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P16489406333954977979

`A001962(n+1)+∑[A001468(n)]`
-/

namespace A189378.P16489406333954977979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189378.P16489406333954977979

namespace A189378

/-- `A001962(n+1)+∑[A001468(n)]` -/
def P16489406333954977979.Spec : Prop :=
  ∀ n, P16489406333954977979.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P16027810722133383127

`A001962(n+1)+A000201(n+1)`
-/

namespace A189378.P16027810722133383127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) + A000201 (n + 1)

end

end A189378.P16027810722133383127

namespace A189378

/-- `A001962(n+1)+A000201(n+1)` -/
def P16027810722133383127.Spec : Prop :=
  ∀ n, P16027810722133383127.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P14688148834223205219

`A004937(n+1)+A003623(n+1)`
-/

namespace A189378.P14688148834223205219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n + 1) + A003623 (n + 1)

end

end A189378.P14688148834223205219

namespace A189378

/-- `A004937(n+1)+A003623(n+1)` -/
def P14688148834223205219.Spec : Prop :=
  ∀ n, P14688148834223205219.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P16404301086624322822

`A189379(n+1)+A089910(n+1)`
-/

namespace A189378.P16404301086624322822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + A089910 (n + 1)

end

end A189378.P16404301086624322822

namespace A189378

/-- `A189379(n+1)+A089910(n+1)` -/
def P16404301086624322822.Spec : Prop :=
  ∀ n, P16404301086624322822.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P17960356586874591180

`A368649(n+1)+A283233(n+1)`
-/

namespace A189378.P17960356586874591180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368649 (n + 1) + A283233 (n + 1)

end

end A189378.P17960356586874591180

namespace A189378

/-- `A368649(n+1)+A283233(n+1)` -/
def P17960356586874591180.Spec : Prop :=
  ∀ n, P17960356586874591180.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P15461232500872778248

`A190508(n+1)-A001950(n+1)`
-/

namespace A189378.P15461232500872778248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (n + 1) - A001950 (n + 1)

end

end A189378.P15461232500872778248

namespace A189378

/-- `A190508(n+1)-A001950(n+1)` -/
def P15461232500872778248.Spec : Prop :=
  ∀ n, P15461232500872778248.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P9287507718888760806

`A003231(n+1)+∑[A276863(n+1)]`
-/

namespace A189378.P9287507718888760806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189378.P9287507718888760806

namespace A189378

/-- `A003231(n+1)+∑[A276863(n+1)]` -/
def P9287507718888760806.Spec : Prop :=
  ∀ n, P9287507718888760806.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P12885179039701252352

`∑[A276867(n+1)+A276863(n+1)]`
-/

namespace A189378.P12885179039701252352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 1) + A276863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189378.P12885179039701252352

namespace A189378

/-- `∑[A276867(n+1)+A276863(n+1)]` -/
def P12885179039701252352.Spec : Prop :=
  ∀ n, P12885179039701252352.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P2915516088477300534

`A003623(n+1)+A189379(n+1)+1`
-/

namespace A189378.P2915516088477300534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + (A189379 (n + 1) + 1)

end

end A189378.P2915516088477300534

namespace A189378

/-- `A003623(n+1)+A189379(n+1)+1` -/
def P2915516088477300534.Spec : Prop :=
  ∀ n, P2915516088477300534.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P17705861610408919780

`A035336(n+1)+A189379(n+1)+2`
-/

namespace A189378.P17705861610408919780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + (A189379 (n + 1) + 2)

end

end A189378.P17705861610408919780

namespace A189378

/-- `A035336(n+1)+A189379(n+1)+2` -/
def P17705861610408919780.Spec : Prop :=
  ∀ n, P17705861610408919780.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P8904169296351240643

`A026351(n+1)+A003622(2*(n+1))`
-/

namespace A189378.P8904169296351240643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) + A003622 (2 * (n + 1))

end

end A189378.P8904169296351240643

namespace A189378

/-- `A026351(n+1)+A003622(2*(n+1))` -/
def P8904169296351240643.Spec : Prop :=
  ∀ n, P8904169296351240643.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P11520030561333050916

`A189379(n+1)+ceil(ϕ*A001950(n+1))`
-/

namespace A189378.P11520030561333050916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + ⌈Real.goldenRatio * (A001950 (n + 1) : ℝ)⌉

end

end A189378.P11520030561333050916

namespace A189378

/-- `A189379(n+1)+ceil(ϕ*A001950(n+1))` -/
def P11520030561333050916.Spec : Prop :=
  ∀ n, P11520030561333050916.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P1664669076367752369

`A001950(n+1)+A001962(n+1)-(n+1)`
-/

namespace A189378.P1664669076367752369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A001962 (n + 1) - (n + 1 : ℤ))

end

end A189378.P1664669076367752369

namespace A189378

/-- `A001950(n+1)+A001962(n+1)-(n+1)` -/
def P1664669076367752369.Spec : Prop :=
  ∀ n, P1664669076367752369.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P1452463949104891362

`A001961(n+1)+A001950(n+1)+3*(n+1)`
-/

namespace A189378.P1452463949104891362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1) + A001950 (n + 1) + (3 * (n + 1) : ℤ)

end

end A189378.P1452463949104891362

namespace A189378

/-- `A001961(n+1)+A001950(n+1)+3*(n+1)` -/
def P1452463949104891362.Spec : Prop :=
  ∀ n, P1452463949104891362.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P5240839582316053688

`A189379(n+1)+A035338(n)-A035337(n)+2`
-/

namespace A189378.P5240839582316053688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + (A035338 n - A035337 n + 2)

end

end A189378.P5240839582316053688

namespace A189378

/-- `A189379(n+1)+A035338(n)-A035337(n)+2` -/
def P5240839582316053688.Spec : Prop :=
  ∀ n, P5240839582316053688.a n = A189378 (n + 1)

end A189378

/-! ## A189378.P3079147312409515385

`A189379(n+1)+A000201(n+1)+A001950(n+1)+1`
-/

namespace A189378.P3079147312409515385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + (A000201 (n + 1) + (A001950 (n + 1) + 1))

end

end A189378.P3079147312409515385

namespace A189378

/-- `A189379(n+1)+A000201(n+1)+A001950(n+1)+1` -/
def P3079147312409515385.Spec : Prop :=
  ∀ n, P3079147312409515385.a n = A189378 (n + 1)

end A189378

/-!
# A189379: n+[nr/t]+[ns/t]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

The programs for A189379, the canonical program `A189379.P14150552323631578711` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189379 has offset 1).

The definition of A189379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189379.P4382043369090795380

`round(n*ϕ²+ϕ)`
-/

namespace A189379.P4382043369090795380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio)

end

end A189379.P4382043369090795380

namespace A189379

/-- `round(n*ϕ²+ϕ)` -/
def P4382043369090795380.Spec : Prop :=
  ∀ n, P4382043369090795380.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P1088576135987281692

`n-round(ϕ*xor(n, -1))`
-/

namespace A189379.P1088576135987281692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ))

end

end A189379.P1088576135987281692

namespace A189379

/-- `n-round(ϕ*xor(n, -1))` -/
def P1088576135987281692.Spec : Prop :=
  ∀ n, P1088576135987281692.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P290250560134169269

`round(ϕ*C(n+1, n))+n`
-/

namespace A189379.P290250560134169269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)) + (n : ℤ)

end

end A189379.P290250560134169269

namespace A189379

/-- `round(ϕ*C(n+1, n))+n` -/
def P290250560134169269.Spec : Prop :=
  ∀ n, P290250560134169269.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P12578604196526753620

`record[xor(1, n)]+round((n+1)/ϕ)`
-/

namespace A189379.P12578604196526753620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.goldenRatio)

end

end A189379.P12578604196526753620

namespace A189379

/-- `record[xor(1, n)]+round((n+1)/ϕ)` -/
def P12578604196526753620.Spec : Prop :=
  ∀ n, P12578604196526753620.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P15774698003427442157

`round((n+1)/ϕ)+or(1, 2*n)`
-/

namespace A189379.P15774698003427442157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.goldenRatio) + (Nat.lor 1 (2 * n) : ℤ)

end

end A189379.P15774698003427442157

namespace A189379

/-- `round((n+1)/ϕ)+or(1, 2*n)` -/
def P15774698003427442157.Spec : Prop :=
  ∀ n, P15774698003427442157.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P9262527349112428794

`round((n+1)/ϕ)+xor(1, 2*n)`
-/

namespace A189379.P9262527349112428794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.goldenRatio) + (Nat.xor 1 (2 * n) : ℤ)

end

end A189379.P9262527349112428794

namespace A189379

/-- `round((n+1)/ϕ)+xor(1, 2*n)` -/
def P9262527349112428794.Spec : Prop :=
  ∀ n, P9262527349112428794.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P16154211134394534787

`round(ϕ*(n+1))+gcd(n, 2*n)`
-/

namespace A189379.P16154211134394534787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n + 1 : ℝ)) + (Nat.gcd n (2 * n) : ℤ)

end

end A189379.P16154211134394534787

namespace A189379

/-- `round(ϕ*(n+1))+gcd(n, 2*n)` -/
def P16154211134394534787.Spec : Prop :=
  ∀ n, P16154211134394534787.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P14150552323631578711

`∑[A006340(n)]+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189379

/-- `∑[A006340(n)]+n` -/
def P14150552323631578711.Spec : Prop :=
  ∀ n, P14150552323631578711.a n = A189379 (n + 1)

theorem P14150552323631578711.correct : P14150552323631578711.Spec := by
  intro n
  simp only [A189379, Nat.add_sub_cancel]

end A189379

/-! ## A189379.P5856701443995812160

`A004937(n+1)-1`
-/

namespace A189379.P5856701443995812160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n + 1) - 1

end

end A189379.P5856701443995812160

namespace A189379

/-- `A004937(n+1)-1` -/
def P5856701443995812160.Spec : Prop :=
  ∀ n, P5856701443995812160.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P9760819602842152268

`A007067(n+1)+n`
-/

namespace A189379.P9760819602842152268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + (n : ℤ)

end

end A189379.P9760819602842152268

namespace A189379

/-- `A007067(n+1)+n` -/
def P9760819602842152268.Spec : Prop :=
  ∀ n, P9760819602842152268.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P3651330500573882979

`∑[A334413(n)+2]-1`
-/

namespace A189379.P3651330500573882979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A189379.P3651330500573882979

namespace A189379

/-- `∑[A334413(n)+2]-1` -/
def P3651330500573882979.Spec : Prop :=
  ∀ n, P3651330500573882979.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P15450100845604069608

`A184656(n+1)+1+n`
-/

namespace A189379.P15450100845604069608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (n + 1) + 1 + (n : ℤ)

end

end A189379.P15450100845604069608

namespace A189379

/-- `A184656(n+1)+1+n` -/
def P15450100845604069608.Spec : Prop :=
  ∀ n, P15450100845604069608.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P8035566760380080714

`A368649(n+1)-(n+2)`
-/

namespace A189379.P8035566760380080714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368649 (n + 1) - (n + 2 : ℤ)

end

end A189379.P8035566760380080714

namespace A189379

/-- `A368649(n+1)-(n+2)` -/
def P8035566760380080714.Spec : Prop :=
  ∀ n, P8035566760380080714.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P6975742150317123353

`floor((A001962(n+1)-1)/2)`
-/

namespace A189379.P6975742150317123353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001962 (n + 1) - 1 : ℚ) / 2⌋

end

end A189379.P6975742150317123353

namespace A189379

/-- `floor((A001962(n+1)-1)/2)` -/
def P6975742150317123353.Spec : Prop :=
  ∀ n, P6975742150317123353.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P3287993719273434388

`floor(A003622(2*(n+1))/2)`
-/

namespace A189379.P3287993719273434388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003622 (2 * (n + 1)) : ℚ) / 2⌋

end

end A189379.P3287993719273434388

namespace A189379

/-- `floor(A003622(2*(n+1))/2)` -/
def P3287993719273434388.Spec : Prop :=
  ∀ n, P3287993719273434388.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P1108389361975980585

`A050508(n+1)/(n+1)+n`
-/

namespace A189379.P1108389361975980585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050508 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A189379.P1108389361975980585

namespace A189379

/-- `A050508(n+1)/(n+1)+n` -/
def P1108389361975980585.Spec : Prop :=
  ∀ n, P1108389361975980585.a n = (A189379 (n + 1) : ℚ)

end A189379

/-! ## A189379.P15612548354057165591

`A006340(n)+A004937(n)`
-/

namespace A189379.P15612548354057165591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n + A004937 n

end

end A189379.P15612548354057165591

namespace A189379

/-- `A006340(n)+A004937(n)` -/
def P15612548354057165591.Spec : Prop :=
  ∀ n, P15612548354057165591.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P18000969678625651377

`A249115(n+1)+A001961(n+1)`
-/

namespace A189379.P18000969678625651377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) + A001961 (n + 1)

end

end A189379.P18000969678625651377

namespace A189379

/-- `A249115(n+1)+A001961(n+1)` -/
def P18000969678625651377.Spec : Prop :=
  ∀ n, P18000969678625651377.a n = A189379 (n + 1)

end A189379

/-! ## A189379.P10978134358888092850

`A189378(n+1)%A089910(n+1)`
-/

namespace A189379.P10978134358888092850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189378 (n + 1)) (A089910 (n + 1))

end

end A189379.P10978134358888092850

namespace A189379

/-- `A189378(n+1)%A089910(n+1)` -/
def P10978134358888092850.Spec : Prop :=
  ∀ n, P10978134358888092850.a n = A189379 (n + 1)

end A189379

/-!
# A189380: a(n) = n + floor(n*s/r) + floor(n*t/r); r=1, s=-1+sqrt(2), t=1+sqrt(2).

The programs for A189380, the canonical program `A189380.P14201053897506400212` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189380 has offset 1).

The definition of A189380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189380.P14201053897506400212

`n+1+floor((n+1)*(sqrt(2)-1))+floor((n+1)*(sqrt(2)+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189380

/-- `n+1+floor((n+1)*(sqrt(2)-1))+floor((n+1)*(sqrt(2)+1))` -/
def P14201053897506400212.Spec : Prop :=
  ∀ n, P14201053897506400212.a n = A189380 (n + 1)

theorem P14201053897506400212.correct : P14201053897506400212.Spec := by
  intro n
  simp only [A189380, Nat.add_sub_cancel]

end A189380

/-! ## A189380.P842913430949990210

`∑[A136500(Δ[A001951(n)])]`
-/

namespace A189380.P842913430949990210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136500 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189380.P842913430949990210

namespace A189380

/-- `∑[A136500(Δ[A001951(n)])]` -/
def P842913430949990210.Spec : Prop :=
  ∀ n, P842913430949990210.a n = A189380 (n + 1)

end A189380

/-! ## A189380.P14259227568622524587

`A188383(n+1)%A187338(n+1)`
-/

namespace A189380.P14259227568622524587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188383 (n + 1)) (A187338 (n + 1))

end

end A189380.P14259227568622524587

namespace A189380

/-- `A188383(n+1)%A187338(n+1)` -/
def P14259227568622524587.Spec : Prop :=
  ∀ n, P14259227568622524587.a n = A189380 (n + 1)

end A189380

/-! ## A189380.P12781847033240892473

`A182770(A003151(n+1))`
-/

namespace A189380.P12781847033240892473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182770 (A003151 (n + 1)).toNat

end

end A189380.P12781847033240892473

namespace A189380

/-- `A182770(A003151(n+1))` -/
def P12781847033240892473.Spec : Prop :=
  ∀ n, P12781847033240892473.a n = A189380 (n + 1)

end A189380

/-! ## A189380.P12781737782459622470

`A023443(A276888(n+2))`
-/

namespace A189380.P12781737782459622470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276888 (n + 2)).toNat

end

end A189380.P12781737782459622470

namespace A189380

/-- `A023443(A276888(n+2))` -/
def P12781737782459622470.Spec : Prop :=
  ∀ n, P12781737782459622470.a n = A189380 (n + 1)

end A189380

/-!
# A189381: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=-1+sqrt(2), t=1+sqrt(2).

The programs for A189381, the canonical program `A189381.P9735201408529761016` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189381 has offset 1).

The definition of A189381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189381.P9735201408529761016

`n+1+floor((n+1)/(sqrt(2)-1))+floor((n+1)*(sqrt(2)+1)/(sqrt(2)-1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189381

/-- `n+1+floor((n+1)/(sqrt(2)-1))+floor((n+1)*(sqrt(2)+1)/(sqrt(2)-1))` -/
def P9735201408529761016.Spec : Prop :=
  ∀ n, P9735201408529761016.a n = A189381 (n + 1)

theorem P9735201408529761016.correct : P9735201408529761016.Spec := by
  intro n
  simp only [A189381, Nat.add_sub_cancel]

end A189381

/-! ## A189381.P10264028028818572619

`A000027(A330171(n+1)-(n+1))`
-/

namespace A189381.P10264028028818572619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A330171 (n + 1) - (n + 1 : ℤ)).toNat

end

end A189381.P10264028028818572619

namespace A189381

/-- `A000027(A330171(n+1)-(n+1))` -/
def P10264028028818572619.Spec : Prop :=
  ∀ n, P10264028028818572619.a n = A189381 (n + 1)

end A189381

/-! ## A189381.P18028180637681123898

`A000027(A187393(n+1)+A003151(n+1))`
-/

namespace A189381.P18028180637681123898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A187393 (n + 1) + A003151 (n + 1)).toNat

end

end A189381.P18028180637681123898

namespace A189381

/-- `A000027(A187393(n+1)+A003151(n+1))` -/
def P18028180637681123898.Spec : Prop :=
  ∀ n, P18028180637681123898.a n = A189381 (n + 1)

end A189381

/-! ## A189381.P8641387358192058487

`A087156(A001952(n+1)+floor((sqrt(8)+3)*(n+1)))`
-/

namespace A189381.P8641387358192058487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A001952 (n + 1) + ⌊(Real.sqrt (8 : ℝ) + 3) * (n + 1 : ℝ)⌋).toNat

end

end A189381.P8641387358192058487

namespace A189381

/-- `A087156(A001952(n+1)+floor((sqrt(8)+3)*(n+1)))` -/
def P8641387358192058487.Spec : Prop :=
  ∀ n, P8641387358192058487.a n = A189381 (n + 1)

end A189381

/-! ## A189381.P18407498978568842834

`A087156(A190336(2*(n+1))+A001952(n+1))`
-/

namespace A189381.P18407498978568842834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A190336 (2 * (n + 1)) + A001952 (n + 1)).toNat

end

end A189381.P18407498978568842834

namespace A189381

/-- `A087156(A190336(2*(n+1))+A001952(n+1))` -/
def P18407498978568842834.Spec : Prop :=
  ∀ n, P18407498978568842834.a n = A189381 (n + 1)

end A189381

/-! ## A189381.P14868778626917702655

`A049472(A189459(2*(n+1))+A080754(n+1))`
-/

namespace A189381.P14868778626917702655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A189459 (2 * (n + 1)) + A080754 (n + 1)).toNat

end

end A189381.P14868778626917702655

namespace A189381

/-- `A049472(A189459(2*(n+1))+A080754(n+1))` -/
def P14868778626917702655.Spec : Prop :=
  ∀ n, P14868778626917702655.a n = A189381 (n + 1)

end A189381

/-! ## A189381.P11568528481761402626

`A088462(A197878(A197878(n+1))-(n+1))`
-/

namespace A189381.P11568528481761402626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A197878 (A197878 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A189381.P11568528481761402626

namespace A189381

/-- `A088462(A197878(A197878(n+1))-(n+1))` -/
def P11568528481761402626.Spec : Prop :=
  ∀ n, P11568528481761402626.a n = A189381 (n + 1)

end A189381

/-!
# A189382: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=-1+sqrt(2), t=1+sqrt(2).

The programs for A189382, the canonical program `A189382.P5819315872404076927` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189382 has offset 1).

The definition of A189382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189382.P5819315872404076927

`n+1+floor((n+1)/(sqrt(2)+1))+floor((n+1)*(sqrt(2)-1)/(sqrt(2)+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189382

/-- `n+1+floor((n+1)/(sqrt(2)+1))+floor((n+1)*(sqrt(2)-1)/(sqrt(2)+1))` -/
def P5819315872404076927.Spec : Prop :=
  ∀ n, P5819315872404076927.a n = A189382 (n + 1)

theorem P5819315872404076927.correct : P5819315872404076927.Spec := by
  intro n
  simp only [A189382, Nat.add_sub_cancel]

end A189382

/-! ## A189382.P11093049629850953407

`comp[A257175(n)+2*n]`
-/

namespace A189382.P11093049629850953407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189382.P11093049629850953407

namespace A189382

/-- `comp[A257175(n)+2*n]` -/
def P11093049629850953407.Spec : Prop :=
  ∀ n, (P11093049629850953407.a n : ℤ) = A189382 (n + 1)

end A189382

/-! ## A189382.P913829030991579977

`∑[char[A006338(n+1)+n]+1]`
-/

namespace A189382.P913829030991579977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006338 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189382.P913829030991579977

namespace A189382

/-- `∑[char[A006338(n+1)+n]+1]` -/
def P913829030991579977.Spec : Prop :=
  ∀ n, (P913829030991579977.a n : ℤ) = A189382 (n + 1)

end A189382

/-! ## A189382.P12445150870182303330

`A004767(n)%A003153(n+1)`
-/

namespace A189382.P12445150870182303330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A003153 (n + 1))

end

end A189382.P12445150870182303330

namespace A189382

/-- `A004767(n)%A003153(n+1)` -/
def P12445150870182303330.Spec : Prop :=
  ∀ n, P12445150870182303330.a n = A189382 (n + 1)

end A189382

/-! ## A189382.P15183655907360292698

`A286923(n+1)%A022842(n+1)`
-/

namespace A189382.P15183655907360292698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286923 (n + 1)) (A022842 (n + 1))

end

end A189382.P15183655907360292698

namespace A189382

/-- `A286923(n+1)%A022842(n+1)` -/
def P15183655907360292698.Spec : Prop :=
  ∀ n, P15183655907360292698.a n = A189382 (n + 1)

end A189382

/-! ## A189382.P5783973377195763543

`A172474(A001951(A195179(n+1)+n))`
-/

namespace A189382.P5783973377195763543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A001951 (A195179 (n + 1) + (n : ℤ)).toNat).toNat

end

end A189382.P5783973377195763543

namespace A189382

/-- `A172474(A001951(A195179(n+1)+n))` -/
def P5783973377195763543.Spec : Prop :=
  ∀ n, P5783973377195763543.a n = A189382 (n + 1)

end A189382

/-! ## A189382.P16962761473691746551

`A002260(A001614((n+1)²))`
-/

namespace A189382.P16962761473691746551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001614 ((n + 1) ^ 2)).toNat

end

end A189382.P16962761473691746551

namespace A189382

/-- `A002260(A001614((n+1)²))` -/
def P16962761473691746551.Spec : Prop :=
  ∀ n, P16962761473691746551.a n = A189382 (n + 1)

end A189382

/-!
# A189383: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1/sqrt(2), t=1/sqrt(3).

The programs for A189383, the canonical program `A189383.P3171606788887366574` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189383 has offset 1).

The definition of A189383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189383.P3171606788887366574

`A097337(n+1)+A003152(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189383

/-- `A097337(n+1)+A003152(n+1)` -/
def P3171606788887366574.Spec : Prop :=
  ∀ n, P3171606788887366574.a n = A189383 (n + 1)

theorem P3171606788887366574.correct : P3171606788887366574.Spec := by
  intro n
  simp only [A189383, Nat.add_sub_cancel]

end A189383

/-! ## A189383.P17509560120685447217

`A182771(n+1)-A194920(n+1)`
-/

namespace A189383.P17509560120685447217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182771 (n + 1) - A194920 (n + 1)

end

end A189383.P17509560120685447217

namespace A189383

/-- `A182771(n+1)-A194920(n+1)` -/
def P17509560120685447217.Spec : Prop :=
  ∀ n, P17509560120685447217.a n = A189383 (n + 1)

end A189383

/-! ## A189383.P6238767184018068080

`A182769(n+1)-A195072(n+1)`
-/

namespace A189383.P6238767184018068080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1) - A195072 (n + 1)

end

end A189383.P6238767184018068080

namespace A189383

/-- `A182769(n+1)-A195072(n+1)` -/
def P6238767184018068080.Spec : Prop :=
  ∀ n, P6238767184018068080.a n = A189383 (n + 1)

end A189383

/-! ## A189383.P6669742992314939758

`A003152(n+1)+∑[char[A022838(n+1)]]`
-/

namespace A189383.P6669742992314939758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189383.P6669742992314939758

namespace A189383

/-- `A003152(n+1)+∑[char[A022838(n+1)]]` -/
def P6669742992314939758.Spec : Prop :=
  ∀ n, P6669742992314939758.a n = A189383 (n + 1)

end A189383

/-! ## A189383.P18397440293475376617

`A189386(n+1)+A189395(n+1)-A189361(n+1)`
-/

namespace A189383.P18397440293475376617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189386 (n + 1) + (A189395 (n + 1) - A189361 (n + 1))

end

end A189383.P18397440293475376617

namespace A189383

/-- `A189386(n+1)+A189395(n+1)-A189361(n+1)` -/
def P18397440293475376617.Spec : Prop :=
  ∀ n, P18397440293475376617.a n = A189383 (n + 1)

end A189383

/-! ## A189383.P18390718890234853384

`A049472(n+1)+Δ[A022778(n+1)]+n`
-/

namespace A189383.P18390718890234853384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A189383.P18390718890234853384

namespace A189383

/-- `A049472(n+1)+Δ[A022778(n+1)]+n` -/
def P18390718890234853384.Spec : Prop :=
  ∀ n, P18390718890234853384.a n = A189383 (n + 1)

end A189383

/-!
# A189384: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=1/sqrt(3).

The programs for A189384, the canonical program `A189384.P17768416561206798456` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189384 has offset 1).

The definition of A189384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189384.P17768416561206798456

`A171974(n+1)+A003151(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189384

/-- `A171974(n+1)+A003151(n+1)` -/
def P17768416561206798456.Spec : Prop :=
  ∀ n, P17768416561206798456.a n = A189384 (n + 1)

theorem P17768416561206798456.correct : P17768416561206798456.Spec := by
  intro n
  simp only [A189384, Nat.add_sub_cancel]

end A189384

/-! ## A189384.P6251657378121015588

`A184808(n+1)+A001951(n+1)`
-/

namespace A189384.P6251657378121015588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A001951 (n + 1)

end

end A189384.P6251657378121015588

namespace A189384

/-- `A184808(n+1)+A001951(n+1)` -/
def P6251657378121015588.Spec : Prop :=
  ∀ n, P6251657378121015588.a n = A189384 (n + 1)

end A189384

/-! ## A189384.P77832676942247611

`A087057(n+1)+A171974(n+1)+n`
-/

namespace A189384.P77832676942247611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + (A171974 (n + 1) + (n : ℤ))

end

end A189384.P77832676942247611

namespace A189384

/-- `A087057(n+1)+A171974(n+1)+n` -/
def P77832676942247611.Spec : Prop :=
  ∀ n, P77832676942247611.a n = A189384 (n + 1)

end A189384

/-! ## A189384.P10395503942722520717

`n+1+A171974(n+1)+A001951(n+1)`
-/

namespace A189384.P10395503942722520717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A171974 (n + 1) + A001951 (n + 1))

end

end A189384.P10395503942722520717

namespace A189384

/-- `n+1+A171974(n+1)+A001951(n+1)` -/
def P10395503942722520717.Spec : Prop :=
  ∀ n, P10395503942722520717.a n = A189384 (n + 1)

end A189384

/-! ## A189384.P7670622752964072941

`A189387(2*(n+1))-(n+1)`
-/

namespace A189384.P7670622752964072941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189387 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A189384.P7670622752964072941

namespace A189384

/-- `A189387(2*(n+1))-(n+1)` -/
def P7670622752964072941.Spec : Prop :=
  ∀ n, P7670622752964072941.a n = A189384 (n + 1)

end A189384

/-! ## A189384.P14415307702941060633

`A172476(2*(n+1))+A003151(n+1)`
-/

namespace A189384.P14415307702941060633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (2 * (n + 1)) + A003151 (n + 1)

end

end A189384.P14415307702941060633

namespace A189384

/-- `A172476(2*(n+1))+A003151(n+1)` -/
def P14415307702941060633.Spec : Prop :=
  ∀ n, P14415307702941060633.a n = A189384 (n + 1)

end A189384

/-! ## A189384.P9791485739522564867

`A184808(n+1)+A074840(A003151(n+1))`
-/

namespace A189384.P9791485739522564867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A074840 (A003151 (n + 1)).toNat

end

end A189384.P9791485739522564867

namespace A189384

/-- `A184808(n+1)+A074840(A003151(n+1))` -/
def P9791485739522564867.Spec : Prop :=
  ∀ n, P9791485739522564867.a n = A189384 (n + 1)

end A189384

/-!
# A189385: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1/sqrt(2), t=1/sqrt(3).

The programs for A189385, the canonical program `A189385.P6860432978536082996` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189385 has offset 1).

The definition of A189385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189385.P1636503910063201625

`A184809(n+1)+∑[A080757(n)]`
-/

namespace A189385.P1636503910063201625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184809 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189385.P1636503910063201625

namespace A189385

/-- `A184809(n+1)+∑[A080757(n)]` -/
def P1636503910063201625.Spec : Prop :=
  ∀ n, P1636503910063201625.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P6860432978536082996

`A184809(n+1)+A022838(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189385

/-- `A184809(n+1)+A022838(n+1)` -/
def P6860432978536082996.Spec : Prop :=
  ∀ n, P6860432978536082996.a n = A189385 (n + 1)

theorem P6860432978536082996.correct : P6860432978536082996.Spec := by
  intro n
  simp only [A189385, Nat.add_sub_cancel]

end A189385

/-! ## A189385.P580582099894321912

`A277644(n+1)+A054088(n+1)`
-/

namespace A189385.P580582099894321912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + A054088 (n + 1)

end

end A189385.P580582099894321912

namespace A189385

/-- `A277644(n+1)+A054088(n+1)` -/
def P580582099894321912.Spec : Prop :=
  ∀ n, P580582099894321912.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P5355968726053600444

`A277644(n+1)+∑[A007538(n+1)]`
-/

namespace A189385.P5355968726053600444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189385.P5355968726053600444

namespace A189385

/-- `A277644(n+1)+∑[A007538(n+1)]` -/
def P5355968726053600444.Spec : Prop :=
  ∀ n, P5355968726053600444.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P12471046364521047002

`A180122(n+1)+A277644(n+1)+1`
-/

namespace A189385.P12471046364521047002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + (A277644 (n + 1) + 1)

end

end A189385.P12471046364521047002

namespace A189385

/-- `A180122(n+1)+A277644(n+1)+1` -/
def P12471046364521047002.Spec : Prop :=
  ∀ n, P12471046364521047002.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P2699894009417574371

`A180122(n+1)+A184809(n+1)-n`
-/

namespace A189385.P2699894009417574371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + (A184809 (n + 1) - (n : ℤ))

end

end A189385.P2699894009417574371

namespace A189385

/-- `A180122(n+1)+A184809(n+1)-n` -/
def P2699894009417574371.Spec : Prop :=
  ∀ n, P2699894009417574371.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P15646630231960539016

`A022838(n+1)+A194146(n+1)-(n+1)`
-/

namespace A189385.P15646630231960539016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (A194146 (n + 1) - (n + 1 : ℤ))

end

end A189385.P15646630231960539016

namespace A189385

/-- `A022838(n+1)+A194146(n+1)-(n+1)` -/
def P15646630231960539016.Spec : Prop :=
  ∀ n, P15646630231960539016.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P786996267759225135

`A189388(n+1)+A277644(n+1)-A022840(n+1)`
-/

namespace A189385.P786996267759225135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189388 (n + 1) + (A277644 (n + 1) - A022840 (n + 1))

end

end A189385.P786996267759225135

namespace A189385

/-- `A189388(n+1)+A277644(n+1)-A022840(n+1)` -/
def P786996267759225135.Spec : Prop :=
  ∀ n, P786996267759225135.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P3698297518374462259

`A180122(n+1)+A008619(A022840(n+1))`
-/

namespace A189385.P3698297518374462259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + A008619 (A022840 (n + 1)).toNat

end

end A189385.P3698297518374462259

namespace A189385

/-- `A180122(n+1)+A008619(A022840(n+1))` -/
def P3698297518374462259.Spec : Prop :=
  ∀ n, P3698297518374462259.a n = A189385 (n + 1)

end A189385

/-! ## A189385.P15559914397953164678

`A172476(A277645(n+1))+A022838(n+1)`
-/

namespace A189385.P15559914397953164678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A277645 (n + 1)).toNat + A022838 (n + 1)

end

end A189385.P15559914397953164678

namespace A189385

/-- `A172476(A277645(n+1))+A022838(n+1)` -/
def P15559914397953164678.Spec : Prop :=
  ∀ n, P15559914397953164678.a n = A189385 (n + 1)

end A189385

/-!
# A189386: a(n) = n+[ns/r]+[nt/r]; r=1, s=sqrt(2), t=1/sqrt(3), []=floor.

The programs for A189386, the canonical program `A189386.P11089141247144542646` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189386 has offset 1).

The definition of A189386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189386.P3600731321385539622

`ceil((n+1)/sqrt(3))+floor((n+1)*sqrt(2)+n)`
-/

namespace A189386.P3600731321385539622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌉ + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

end

end A189386.P3600731321385539622

namespace A189386

/-- `ceil((n+1)/sqrt(3))+floor((n+1)*sqrt(2)+n)` -/
def P3600731321385539622.Spec : Prop :=
  ∀ n, P3600731321385539622.a n = A189386 (n + 1)

end A189386

/-! ## A189386.P15153463323678671589

`A000027(A001952(n+1)-(n+1-floor((n+1)/sqrt(3))))`
-/

namespace A189386.P15153463323678671589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001952 (n + 1) - ((n + 1 : ℤ) - ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋)).toNat

end

end A189386.P15153463323678671589

namespace A189386

/-- `A000027(A001952(n+1)-(n+1-floor((n+1)/sqrt(3))))` -/
def P15153463323678671589.Spec : Prop :=
  ∀ n, P15153463323678671589.a n = A189386 (n + 1)

end A189386

/-! ## A189386.P11089141247144542646

`A000027(A097337(n+1)+A003151(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189386

/-- `A000027(A097337(n+1)+A003151(n+1))` -/
def P11089141247144542646.Spec : Prop :=
  ∀ n, P11089141247144542646.a n = A189386 (n + 1)

theorem P11089141247144542646.correct : P11089141247144542646.Spec := by
  intro n
  simp only [A189386, Nat.add_sub_cancel]

end A189386

/-! ## A189386.P6145623162040263638

`∑[A001221(A334543(3*n+1)²)]`
-/

namespace A189386.P6145623162040263638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A334543 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189386.P6145623162040263638

namespace A189386

/-- `∑[A001221(A334543(3*n+1)²)]` -/
def P6145623162040263638.Spec : Prop :=
  ∀ n, P6145623162040263638.a n = A189386 (n + 1)

end A189386

/-! ## A189386.P5255942866251085158

`∑[(A000292(A078843(n+1))-2)%5]`
-/

namespace A189386.P5255942866251085158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A078843 (n + 1)).toNat - 2) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189386.P5255942866251085158

namespace A189386

/-- `∑[(A000292(A078843(n+1))-2)%5]` -/
def P5255942866251085158.Spec : Prop :=
  ∀ n, P5255942866251085158.a n = A189386 (n + 1)

end A189386

/-!
# A189387: a(n) = n+[nr/s]+[nt/s]; r=1, s=sqrt(2), t=1/sqrt(3).

The programs for A189387, the canonical program `A189387.P8714726190965222879` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189387 has offset 1).

The definition of A189387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189387.P15533814629476252929

`A003152(n+1)+∑[char[A022840(n+1)]]`
-/

namespace A189387.P15533814629476252929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189387.P15533814629476252929

namespace A189387

/-- `A003152(n+1)+∑[char[A022840(n+1)]]` -/
def P15533814629476252929.Spec : Prop :=
  ∀ n, P15533814629476252929.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P8714726190965222879

`A004526(A171974(n+1))+A003152(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189387

/-- `A004526(A171974(n+1))+A003152(n+1)` -/
def P8714726190965222879.Spec : Prop :=
  ∀ n, P8714726190965222879.a n = A189387 (n + 1)

theorem P8714726190965222879.correct : P8714726190965222879.Spec := by
  intro n
  simp only [A189387, Nat.add_sub_cancel]

end A189387

/-! ## A189387.P6610131166514429577

`A189397(n+1)+A195072(n+1)-A194920(n+1)`
-/

namespace A189387.P6610131166514429577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189397 (n + 1) + (A195072 (n + 1) - A194920 (n + 1))

end

end A189387.P6610131166514429577

namespace A189387

/-- `A189397(n+1)+A195072(n+1)-A194920(n+1)` -/
def P6610131166514429577.Spec : Prop :=
  ∀ n, P6610131166514429577.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P4019619683592927293

`A184808(n+1)+A004526(A188376(n+1)-A184808(n+1))`
-/

namespace A189387.P4019619683592927293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184808 (n + 1) + A004526 (A188376 (n + 1) - A184808 (n + 1)).toNat

end

end A189387.P4019619683592927293

namespace A189387

/-- `A184808(n+1)+A004526(A188376(n+1)-A184808(n+1))` -/
def P4019619683592927293.Spec : Prop :=
  ∀ n, P4019619683592927293.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P14400799916439253435

`A172476(n+1)+A003152(n+1)`
-/

namespace A189387.P14400799916439253435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (n + 1) + A003152 (n + 1)

end

end A189387.P14400799916439253435

namespace A189387

/-- `A172476(n+1)+A003152(n+1)` -/
def P14400799916439253435.Spec : Prop :=
  ∀ n, P14400799916439253435.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P5306367413482060360

`A003152(n+1)+A002264(A277644(n+1))`
-/

namespace A189387.P5306367413482060360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + A002264 (A277644 (n + 1)).toNat

end

end A189387.P5306367413482060360

namespace A189387

/-- `A003152(n+1)+A002264(A277644(n+1))` -/
def P5306367413482060360.Spec : Prop :=
  ∀ n, P5306367413482060360.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P15687516369473478267

`A004526(A188376(n+1)+A184808(n+1))`
-/

namespace A189387.P15687516369473478267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A188376 (n + 1) + A184808 (n + 1)).toNat

end

end A189387.P15687516369473478267

namespace A189387

/-- `A004526(A188376(n+1)+A184808(n+1))` -/
def P15687516369473478267.Spec : Prop :=
  ∀ n, P15687516369473478267.a n = A189387 (n + 1)

end A189387

/-! ## A189387.P17664047462317119703

`A123108(A188376(n+1)+A184808(n+1))`
-/

namespace A189387.P17664047462317119703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A188376 (n + 1) + A184808 (n + 1)).toNat

end

end A189387.P17664047462317119703

namespace A189387

/-- `A123108(A188376(n+1)+A184808(n+1))` -/
def P17664047462317119703.Spec : Prop :=
  ∀ n, P17664047462317119703.a n = A189387 (n + 1)

end A189387

/-!
# A189388: a(n) = n+[nr/t]+[ns/t]; r=1, s=sqrt(2), t=1/sqrt(3).

The programs for A189388, the canonical program `A189388.P12396350069555707353` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189388 has offset 1).

The definition of A189388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189388.P1666960402162837966

`floor((sqrt(3)+1)*(n+1))+floor((n+1)*sqrt(6))`
-/

namespace A189388.P1666960402162837966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (n + 1 : ℝ)⌋ + ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋

end

end A189388.P1666960402162837966

namespace A189388

/-- `floor((sqrt(3)+1)*(n+1))+floor((n+1)*sqrt(6))` -/
def P1666960402162837966.Spec : Prop :=
  ∀ n, P1666960402162837966.a n = A189388 (n + 1)

end A189388

/-! ## A189388.P2101923934750847551

`∑[A276856(n+1)+A007538(n+1)]`
-/

namespace A189388.P2101923934750847551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276856 (n + 1) + A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189388.P2101923934750847551

namespace A189388

/-- `∑[A276856(n+1)+A007538(n+1)]` -/
def P2101923934750847551.Spec : Prop :=
  ∀ n, P2101923934750847551.a n = A189388 (n + 1)

end A189388

/-! ## A189388.P4212317692514955791

`A000027(A022840(n+1)+floor((sqrt(3)+1)*(n+1)))`
-/

namespace A189388.P4212317692514955791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022840 (n + 1) + ⌊(Real.sqrt (3 : ℝ) + 1) * (n + 1 : ℝ)⌋).toNat

end

end A189388.P4212317692514955791

namespace A189388

/-- `A000027(A022840(n+1)+floor((sqrt(3)+1)*(n+1)))` -/
def P4212317692514955791.Spec : Prop :=
  ∀ n, P4212317692514955791.a n = A189388 (n + 1)

end A189388

/-! ## A189388.P12396350069555707353

`A000027(A054088(n+1)+A022840(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189388

/-- `A000027(A054088(n+1)+A022840(n+1))` -/
def P12396350069555707353.Spec : Prop :=
  ∀ n, P12396350069555707353.a n = A189388 (n + 1)

theorem P12396350069555707353.correct : P12396350069555707353.Spec := by
  intro n
  simp only [A189388, Nat.add_sub_cancel]

end A189388

/-! ## A189388.P13419658418944907546

`abs(A054088(n+1)+A189396(n+1)-A003151(n+1))`
-/

namespace A189388.P13419658418944907546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054088 (n + 1) + (A189396 (n + 1) - A003151 (n + 1))|

end

end A189388.P13419658418944907546

namespace A189388

/-- `abs(A054088(n+1)+A189396(n+1)-A003151(n+1))` -/
def P13419658418944907546.Spec : Prop :=
  ∀ n, P13419658418944907546.a n = A189388 (n + 1)

end A189388

/-!
# A189389: Number of permutations p of [n] such that (n-p(i)+i) mod n >= 5 for all i.

The programs for A189389, there is no canonical definition to state claims against.
-/

/-! ## A189389.P844046163228811510

`A363526(A004111(n))^A076512(n+1)`
-/

namespace A189389.P844046163228811510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363526 (A004111 n).toNat : ℚ) ^ (A076512 (n + 1) : ℤ)

end

end A189389.P844046163228811510

/-! ## A189389.P16585964397417938676

`A125987(A107247(n+1))^A261923(n)`
-/

namespace A189389.P16585964397417938676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125987 (A107247 (n + 1)).toNat : ℚ) ^ (A261923 n : ℤ)

end

end A189389.P16585964397417938676

/-! ## A189389.P9463983822852022692

`A363526(A004111(n))^A332897(n+1)`
-/

namespace A189389.P9463983822852022692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363526 (A004111 n).toNat : ℚ) ^ (A332897 (n + 1) : ℤ)

end

end A189389.P9463983822852022692

/-! ## A189389.P16699173875528831854

`A319759(ceil(∑[n/4]))`
-/

namespace A189389.P16699173875528831854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A189389.P16699173875528831854

/-! ## A189389.P5517248888476034826

`A371215(A145456(n))`
-/

namespace A189389.P5517248888476034826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371215 (A145456 n).toNat

end

end A189389.P5517248888476034826

/-!
# A189390: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

The programs for A189390, the canonical program `A189390.P722462694232908460` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189390 has offset 0).

The definition of A189390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189390.P722462694232908460

`n*2^n-A189391(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189390

/-- `n*2^n-A189391(n)` -/
def P722462694232908460.Spec : Prop :=
  ∀ n, P722462694232908460.a n = A189390 n

theorem P722462694232908460.correct : P722462694232908460.Spec := by
  intro n
  simp only [A189390]

end A189390

/-! ## A189390.P2115869550916699146

`∑{#}[n, #*C(n, floor(#/2))]`
-/

namespace A189390.P2115869550916699146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k * Nat.choose n ⌊(k : ℚ) / 2⌋.toNat

end

end A189390.P2115869550916699146

namespace A189390

/-- `∑{#}[n, #*C(n, floor(#/2))]` -/
def P2115869550916699146.Spec : Prop :=
  ∀ n, (P2115869550916699146.a n : ℤ) = A189390 n

end A189390

/-! ## A189390.P636148080908476482

`A189162(n+1)-2^n`
-/

namespace A189390.P636148080908476482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) - (2 ^ n : ℤ)

end

end A189390.P636148080908476482

namespace A189390

/-- `A189162(n+1)-2^n` -/
def P636148080908476482.Spec : Prop :=
  ∀ n, P636148080908476482.a n = A189390 n

theorem P636148080908476482.correct : P636148080908476482.Spec := by
  intro n
  simp only [A189390, Nat.add_sub_cancel, A189390.P636148080908476482.a, A189390.P722462694232908460.a, A189162, A189162.P11362982788040175534.a, A189391, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189390

/-! ## A189390.P6194695720997070037

`A206603(n)+A001787(n)`
-/

namespace A189390.P6194695720997070037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A001787 n

end

end A189390.P6194695720997070037

namespace A189390

/-- `A206603(n)+A001787(n)` -/
def P6194695720997070037.Spec : Prop :=
  ∀ n, P6194695720997070037.a n = A189390 n

end A189390

/-! ## A189390.P3859487139700006476

`A001787(n+1)-A099325(n)`
-/

namespace A189390.P3859487139700006476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A099325 n

end

end A189390.P3859487139700006476

namespace A189390

/-- `A001787(n+1)-A099325(n)` -/
def P3859487139700006476.Spec : Prop :=
  ∀ n, P3859487139700006476.a n = A189390 n

end A189390

/-! ## A189390.P23394612072378331

`A053220(n+1)-A099326(n)`
-/

namespace A189390.P23394612072378331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) - A099326 n

end

end A189390.P23394612072378331

namespace A189390

/-- `A053220(n+1)-A099326(n)` -/
def P23394612072378331.Spec : Prop :=
  ∀ n, P23394612072378331.a n = A189390 n

end A189390

/-! ## A189390.P14228076511737819186

`A189391(n)+2*A206603(n)`
-/

namespace A189390.P14228076511737819186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + 2 * A206603 n

end

end A189390.P14228076511737819186

namespace A189390

/-- `A189391(n)+2*A206603(n)` -/
def P14228076511737819186.Spec : Prop :=
  ∀ n, P14228076511737819186.a n = A189390 n

end A189390

/-! ## A189390.P11653687507402057088

`A206603(n)+n*A131577(n)`
-/

namespace A189390.P11653687507402057088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + (n : ℤ) * A131577 n

end

end A189390.P11653687507402057088

namespace A189390

/-- `A206603(n)+n*A131577(n)` -/
def P11653687507402057088.Spec : Prop :=
  ∀ n, P11653687507402057088.a n = A189390 n

end A189390

/-! ## A189390.P672311262299351706

`A294175(n)+n*A045621(n)`
-/

namespace A189390.P672311262299351706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + (n : ℤ) * A045621 n

end

end A189390.P672311262299351706

namespace A189390

/-- `A294175(n)+n*A045621(n)` -/
def P672311262299351706.Spec : Prop :=
  ∀ n, P672311262299351706.a n = A189390 n

end A189390

/-! ## A189390.P10288072293457411223

`A001787(n)+A001787(n)-A189391(n)`
-/

namespace A189390.P10288072293457411223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (A001787 n - A189391 n)

end

end A189390.P10288072293457411223

namespace A189390

/-- `A001787(n)+A001787(n)-A189391(n)` -/
def P10288072293457411223.Spec : Prop :=
  ∀ n, P10288072293457411223.a n = A189390 n

end A189390

/-! ## A189390.P16682376960017829582

`∑[A001792(n)]+A206603(n)-A001792(n)`
-/

namespace A189390.P16682376960017829582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A206603 n - A001792 n)

end

end A189390.P16682376960017829582

namespace A189390

/-- `∑[A001792(n)]+A206603(n)-A001792(n)` -/
def P16682376960017829582.Spec : Prop :=
  ∀ n, P16682376960017829582.a n = A189390 n

end A189390

/-! ## A189390.P2960746734116895296

`A189391(n)+A189162(n+1)-A099325(n)`
-/

namespace A189390.P2960746734116895296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + A189162 (n + 1) - A099325 n

end

end A189390.P2960746734116895296

namespace A189390

/-- `A189391(n)+A189162(n+1)-A099325(n)` -/
def P2960746734116895296.Spec : Prop :=
  ∀ n, P2960746734116895296.a n = A189390 n

theorem P2960746734116895296.correct : P2960746734116895296.Spec := by
  intro n
  simp only [A189390, Nat.add_sub_cancel, A189390.P2960746734116895296.a, A189390.P722462694232908460.a, A099325, A099325.P12936310421759002979.f1, A099325.P12936310421759002979.a, A189162, A189162.P11362982788040175534.a, A189391, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189390

/-! ## A189390.P525773339638688206

`A189162(n+1)+A000225(n)-A000225(n+1)`
-/

namespace A189390.P525773339638688206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) + A000225 n - A000225 (n + 1)

end

end A189390.P525773339638688206

namespace A189390

/-- `A189162(n+1)+A000225(n)-A000225(n+1)` -/
def P525773339638688206.Spec : Prop :=
  ∀ n, P525773339638688206.a n = A189390 n

theorem P525773339638688206.correct : P525773339638688206.Spec := by
  intro n
  simp only [A189390, Nat.add_sub_cancel, A189390.P525773339638688206.a, A189390.P722462694232908460.a, A000225, A000225.P6535533121115206393.a, A189162, A189162.P11362982788040175534.a, A189391, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189390

/-! ## A189390.P17280920921391014764

`A099326(n+1)-(A099325(n+1)+A099325(n))`
-/

namespace A189390.P17280920921391014764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 (n + 1) - (A099325 (n + 1) + A099325 n)

end

end A189390.P17280920921391014764

namespace A189390

/-- `A099326(n+1)-(A099325(n+1)+A099325(n))` -/
def P17280920921391014764.Spec : Prop :=
  ∀ n, P17280920921391014764.a n = A189390 n

end A189390

/-! ## A189390.P3995262432894519586

`A189391(n+1)+A206603(n+1)-A099325(n)`
-/

namespace A189390.P3995262432894519586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (n + 1) + (A206603 (n + 1) - A099325 n)

end

end A189390.P3995262432894519586

namespace A189390

/-- `A189391(n+1)+A206603(n+1)-A099325(n)` -/
def P3995262432894519586.Spec : Prop :=
  ∀ n, P3995262432894519586.a n = A189390 n

end A189390

/-! ## A189390.P10521888495771348819

`∑{#}[n, C(n, floor(#/2))*#]`
-/

namespace A189390.P10521888495771348819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n ⌊(k : ℚ) / 2⌋.toNat * k

end

end A189390.P10521888495771348819

namespace A189390

/-- `∑{#}[n, C(n, floor(#/2))*#]` -/
def P10521888495771348819.Spec : Prop :=
  ∀ n, (P10521888495771348819.a n : ℤ) = A189390 n

end A189390

/-!
# A189391: The minimum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

The programs for A189391, the canonical program `A189391.P15865450611382863579` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189391 has offset 0).

The definition of A189391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189391.P15865450611382863579

`∑{#}[floor((n-1)/2), (2*n-4*#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189391

/-- `∑{#}[floor((n-1)/2), (2*n-4*#-1)*C(n, #)]` -/
def P15865450611382863579.Spec : Prop :=
  ∀ n, P15865450611382863579.a n = A189391 n

theorem P15865450611382863579.correct : P15865450611382863579.Spec := by
  intro n
  simp only [A189391]

end A189391

/-! ## A189391.P8056155733493856481

`A099325(n)-2^n`
-/

namespace A189391.P8056155733493856481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - (2 ^ n : ℤ)

end

end A189391.P8056155733493856481

namespace A189391

/-- `A099325(n)-2^n` -/
def P8056155733493856481.Spec : Prop :=
  ∀ n, P8056155733493856481.a n = A189391 n

theorem P8056155733493856481.correct : P8056155733493856481.Spec := by
  intro n
  simp only [A189391, Nat.add_sub_cancel, A189391.P8056155733493856481.a, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, A099325, A099325.P12936310421759002979.f1, A099325.P12936310421759002979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189391

/-! ## A189391.P5388899062284491220

`A134389(n+1)-2^(n+1)`
-/

namespace A189391.P5388899062284491220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134389 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A189391.P5388899062284491220

namespace A189391

/-- `A134389(n+1)-2^(n+1)` -/
def P5388899062284491220.Spec : Prop :=
  ∀ n, P5388899062284491220.a n = A189391 n

end A189391

/-! ## A189391.P11503851492924731421

`A107373(n+1)+A100071(n)`
-/

namespace A189391.P11503851492924731421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + A100071 n

end

end A189391.P11503851492924731421

namespace A189391

/-- `A107373(n+1)+A100071(n)` -/
def P11503851492924731421.Spec : Prop :=
  ∀ n, P11503851492924731421.a n = A189391 n

end A189391

/-! ## A189391.P7370878842393803562

`A100071(n+1)-A027306(n)`
-/

namespace A189391.P7370878842393803562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) - A027306 n

end

end A189391.P7370878842393803562

namespace A189391

/-- `A100071(n+1)-A027306(n)` -/
def P7370878842393803562.Spec : Prop :=
  ∀ n, P7370878842393803562.a n = A189391 n

end A189391

/-! ## A189391.P3523238445495222841

`2*A100071(n)-A058622(n)`
-/

namespace A189391.P3523238445495222841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100071 n - A058622 n

end

end A189391.P3523238445495222841

namespace A189391

/-- `2*A100071(n)-A058622(n)` -/
def P3523238445495222841.Spec : Prop :=
  ∀ n, P3523238445495222841.a n = A189391 n

end A189391

/-! ## A189391.P15976608341908098115

`n*A001405(n)-A294175(n)`
-/

namespace A189391.P15976608341908098115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 n - A294175 n

end

end A189391.P15976608341908098115

namespace A189391

/-- `n*A001405(n)-A294175(n)` -/
def P15976608341908098115.Spec : Prop :=
  ∀ n, P15976608341908098115.a n = A189391 n

end A189391

/-! ## A189391.P7794813850678649060

`A058622(n)+2*A107373(n+1)`
-/

namespace A189391.P7794813850678649060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 n + 2 * A107373 (n + 1)

end

end A189391.P7794813850678649060

namespace A189391

/-- `A058622(n)+2*A107373(n+1)` -/
def P7794813850678649060.Spec : Prop :=
  ∀ n, P7794813850678649060.a n = A189391 n

end A189391

/-! ## A189391.P17594086324472978964

`A107373(n+1)+n*A210736(n)`
-/

namespace A189391.P17594086324472978964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (n : ℤ) * A210736 n

end

end A189391.P17594086324472978964

namespace A189391

/-- `A107373(n+1)+n*A210736(n)` -/
def P17594086324472978964.Spec : Prop :=
  ∀ n, P17594086324472978964.a n = A189391 n

end A189391

/-! ## A189391.P2255940794629768079

`A107373(n+1)+A056040(n)*A057979(n+1)`
-/

namespace A189391.P2255940794629768079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + A056040 n * A057979 (n + 1)

end

end A189391.P2255940794629768079

namespace A189391

/-- `A107373(n+1)+A056040(n)*A057979(n+1)` -/
def P2255940794629768079.Spec : Prop :=
  ∀ n, P2255940794629768079.a n = A189391 n

end A189391

/-! ## A189391.P7918230260670931006

`A152548(n)-A099325(n)`
-/

namespace A189391.P7918230260670931006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 n - A099325 n

end

end A189391.P7918230260670931006

namespace A189391

/-- `A152548(n)-A099325(n)` -/
def P7918230260670931006.Spec : Prop :=
  ∀ n, P7918230260670931006.a n = A189391 n

end A189391

/-! ## A189391.P14834008769002911423

`(A305612(n+1)-A099325(n+1))/2`
-/

namespace A189391.P14834008769002911423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305612 (n + 1) - A099325 (n + 1) : ℚ) / 2

end

end A189391.P14834008769002911423

namespace A189391

/-- `(A305612(n+1)-A099325(n+1))/2` -/
def P14834008769002911423.Spec : Prop :=
  ∀ n, P14834008769002911423.a n = (A189391 n : ℚ)

end A189391

/-! ## A189391.P17765998112802030954

`A099326(n)-A001792(n)`
-/

namespace A189391.P17765998112802030954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A001792 n

end

end A189391.P17765998112802030954

namespace A189391

/-- `A099326(n)-A001792(n)` -/
def P17765998112802030954.Spec : Prop :=
  ∀ n, P17765998112802030954.a n = A189391 n

end A189391

/-! ## A189391.P13137166389482302256

`A001792(n)-A182555(n)`
-/

namespace A189391.P13137166389482302256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A182555 n

end

end A189391.P13137166389482302256

namespace A189391

/-- `A001792(n)-A182555(n)` -/
def P13137166389482302256.Spec : Prop :=
  ∀ n, P13137166389482302256.a n = A189391 n

end A189391

/-! ## A189391.P11278988655104173930

`A001787(n)-A206603(n)`
-/

namespace A189391.P11278988655104173930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A206603 n

end

end A189391.P11278988655104173930

namespace A189391

/-- `A001787(n)-A206603(n)` -/
def P11278988655104173930.Spec : Prop :=
  ∀ n, P11278988655104173930.a n = A189391 n

theorem P11278988655104173930.correct : P11278988655104173930.Spec := by
  intro n
  simp only [A189391, Nat.add_sub_cancel, A189391.P11278988655104173930.a, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, A001787, A001787.P18099519164826187117.a, A206603, A206603.P3063521816794991771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189391

/-! ## A189391.P4477502586029684299

`A230137(n)-A130783(n)`
-/

namespace A189391.P4477502586029684299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230137 n - A130783 n

end

end A189391.P4477502586029684299

namespace A189391

/-- `A230137(n)-A130783(n)` -/
def P4477502586029684299.Spec : Prop :=
  ∀ n, P4477502586029684299.a n = A189391 n

end A189391

/-! ## A189391.P12581197651472952803

`A099326(n)-A049610(n+2)`
-/

namespace A189391.P12581197651472952803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A049610 (n + 2)

end

end A189391.P12581197651472952803

namespace A189391

/-- `A099326(n)-A049610(n+2)` -/
def P12581197651472952803.Spec : Prop :=
  ∀ n, P12581197651472952803.a n = A189391 n

end A189391

/-! ## A189391.P179656991288875752

`n*A131577(n)-A206603(n)`
-/

namespace A189391.P179656991288875752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 n - A206603 n

end

end A189391.P179656991288875752

namespace A189391

/-- `n*A131577(n)-A206603(n)` -/
def P179656991288875752.Spec : Prop :=
  ∀ n, P179656991288875752.a n = A189391 n

end A189391

/-! ## A189391.P4806781647182691948

`A036289(n)-A189390(n)`
-/

namespace A189391.P4806781647182691948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - A189390 n

end

end A189391.P4806781647182691948

namespace A189391

/-- `A036289(n)-A189390(n)` -/
def P4806781647182691948.Spec : Prop :=
  ∀ n, P4806781647182691948.a n = A189391 n

theorem P4806781647182691948.correct : P4806781647182691948.Spec := by
  intro n
  simp only [A189391, Nat.add_sub_cancel, A189391.P4806781647182691948.a, A189391.P15865450611382863579.f1, A189391.P15865450611382863579.a, A036289, A036289.P13525419631139213940.a, A189390, A189390.P722462694232908460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A189391

/-! ## A189391.P1171999938919778171

`A189390(n)+1-A206604(n)`
-/

namespace A189391.P1171999938919778171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 n + (1 - A206604 n)

end

end A189391.P1171999938919778171

namespace A189391

/-- `A189390(n)+1-A206604(n)` -/
def P1171999938919778171.Spec : Prop :=
  ∀ n, P1171999938919778171.a n = A189391 n

end A189391

/-!
# A189393: a(n) = phi(n^4).

The programs for A189393, the canonical program `A189393.P14759760009596929175` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189393 has offset 1).

The definition of A189393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010((n+1)^4)` (program `A189393.P14759760009596929175`, by `A189393.P14759760009596929175.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A189393.P4367631312156147727

`(n+1)^3*A000010(n+1)`
-/

namespace A189393.P4367631312156147727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000010 (n + 1)

end

end A189393.P4367631312156147727

namespace A189393

/-- `(n+1)^3*A000010(n+1)` -/
def P4367631312156147727.Spec : Prop :=
  ∀ n, P4367631312156147727.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P14759760009596929175

`A000010((n+1)^4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A189393

/-- `A000010((n+1)^4)` -/
def P14759760009596929175.Spec : Prop :=
  ∀ n, P14759760009596929175.a n = A189393 (n + 1)

theorem P14759760009596929175.correct : P14759760009596929175.Spec := by
  intro n
  simp only [A189393, Nat.add_sub_cancel]

end A189393

/-! ## A189393.P3969877218528171465

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3`
-/

namespace A189393.P3969877218528171465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((n + 1) ^ 3 : ℚ)

end

end A189393.P3969877218528171465

namespace A189393

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*(n+1)^3` -/
def P3969877218528171465.Spec : Prop :=
  ∀ n, P3969877218528171465.a n = (A189393 (n + 1) : ℚ)

end A189393

/-! ## A189393.P13947967965399185248

`(n+1)*A053191(n+1)`
-/

namespace A189393.P13947967965399185248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053191 (n + 1)

end

end A189393.P13947967965399185248

namespace A189393

/-- `(n+1)*A053191(n+1)` -/
def P13947967965399185248.Spec : Prop :=
  ∀ n, P13947967965399185248.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P473676466059691377

`A238533(n+1)/(n+1)`
-/

namespace A189393.P473676466059691377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A189393.P473676466059691377

namespace A189393

/-- `A238533(n+1)/(n+1)` -/
def P473676466059691377.Spec : Prop :=
  ∀ n, P473676466059691377.a n = (A189393 (n + 1) : ℚ)

end A189393

/-! ## A189393.P13799690210439858435

`(n+1)²*Δ[A240877(n)]`
-/

namespace A189393.P13799690210439858435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A189393.P13799690210439858435

namespace A189393

/-- `(n+1)²*Δ[A240877(n)]` -/
def P13799690210439858435.Spec : Prop :=
  ∀ n, P13799690210439858435.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P10654635708778871051

`(n+1)²*A002618(n+1)`
-/

namespace A189393.P10654635708778871051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002618 (n + 1)

end

end A189393.P10654635708778871051

namespace A189393

/-- `(n+1)²*A002618(n+1)` -/
def P10654635708778871051.Spec : Prop :=
  ∀ n, P10654635708778871051.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P7006448684271911818

`A306411(n+1)/(n+1)²`
-/

namespace A189393.P7006448684271911818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A189393.P7006448684271911818

namespace A189393

/-- `A306411(n+1)/(n+1)²` -/
def P7006448684271911818.Spec : Prop :=
  ∀ n, P7006448684271911818.a n = (A189393 (n + 1) : ℚ)

end A189393

/-! ## A189393.P14994149248251612142

`A239442(n+1)/(n+1)^3`
-/

namespace A189393.P14994149248251612142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A189393.P14994149248251612142

namespace A189393

/-- `A239442(n+1)/(n+1)^3` -/
def P14994149248251612142.Spec : Prop :=
  ∀ n, P14994149248251612142.a n = (A189393 (n + 1) : ℚ)

end A189393

/-! ## A189393.P8170046682846233019

`(A109606(n+1)+1)*(n+1)^3`
-/

namespace A189393.P8170046682846233019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 3 : ℤ)

end

end A189393.P8170046682846233019

namespace A189393

/-- `(A109606(n+1)+1)*(n+1)^3` -/
def P8170046682846233019.Spec : Prop :=
  ∀ n, P8170046682846233019.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P3216369362098944960

`((n+1)²-A053650(n+1))*(n+1)²`
-/

namespace A189393.P3216369362098944960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A053650 (n + 1)) * ((n + 1) ^ 2 : ℤ)

end

end A189393.P3216369362098944960

namespace A189393

/-- `((n+1)²-A053650(n+1))*(n+1)²` -/
def P3216369362098944960.Spec : Prop :=
  ∀ n, P3216369362098944960.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P14237634565080980649

`(n+1)*A000010(C(n+1, n))*(n+1)²`
-/

namespace A189393.P14237634565080980649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (Nat.choose (n + 1) n) * ((n + 1) ^ 2 : ℤ)

end

end A189393.P14237634565080980649

namespace A189393

/-- `(n+1)*A000010(C(n+1, n))*(n+1)²` -/
def P14237634565080980649.Spec : Prop :=
  ∀ n, P14237634565080980649.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P12358017516510653351

`(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*#]`
-/

namespace A189393.P12358017516510653351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ))

end

end A189393.P12358017516510653351

namespace A189393

/-- `(n+1)^3*∑{d}[n+1, A008683((n+1)/#)*#]` -/
def P12358017516510653351.Spec : Prop :=
  ∀ n, P12358017516510653351.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P11497958907431144344

`A000010(n+1)*∑[A003215(n)]`
-/

namespace A189393.P11497958907431144344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189393.P11497958907431144344

namespace A189393

/-- `A000010(n+1)*∑[A003215(n)]` -/
def P11497958907431144344.Spec : Prop :=
  ∀ n, P11497958907431144344.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P2204151961957296137

`Δ[A000217(n)²]*Δ[A002088(n)]`
-/

namespace A189393.P2204151961957296137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A189393.P2204151961957296137

namespace A189393

/-- `Δ[A000217(n)²]*Δ[A002088(n)]` -/
def P2204151961957296137.Spec : Prop :=
  ∀ n, P2204151961957296137.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P5627860003599308796

`A000010(n+1)*A000578(n+1)`
-/

namespace A189393.P5627860003599308796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000578 (n + 1)

end

end A189393.P5627860003599308796

namespace A189393

/-- `A000010(n+1)*A000578(n+1)` -/
def P5627860003599308796.Spec : Prop :=
  ∀ n, P5627860003599308796.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P16407477583592461585

`A306411(n+1)%A179824(n+2)`
-/

namespace A189393.P16407477583592461585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306411 (n + 1)) (A179824 (n + 2))

end

end A189393.P16407477583592461585

namespace A189393

/-- `A306411(n+1)%A179824(n+2)` -/
def P16407477583592461585.Spec : Prop :=
  ∀ n, P16407477583592461585.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P9296750747048340685

`A306412(n+1)%A179824(n+2)`
-/

namespace A189393.P9296750747048340685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306412 (n + 1)) (A179824 (n + 2))

end

end A189393.P9296750747048340685

namespace A189393

/-- `A306412(n+1)%A179824(n+2)` -/
def P9296750747048340685.Spec : Prop :=
  ∀ n, P9296750747048340685.a n = A189393 (n + 1)

end A189393

/-! ## A189393.P13940393984291734728

`A053191(n+1)²/A002618(n+1)`
-/

namespace A189393.P13940393984291734728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) ^ 2 : ℚ) / (A002618 (n + 1) : ℚ)

end

end A189393.P13940393984291734728

namespace A189393

/-- `A053191(n+1)²/A002618(n+1)` -/
def P13940393984291734728.Spec : Prop :=
  ∀ n, P13940393984291734728.a n = (A189393 (n + 1) : ℚ)

end A189393

/-!
# A189394: Highly composite numbers whose number of divisors is also highly composite.

The programs for A189394, there is no canonical definition to state claims against.
-/

/-! ## A189394.P9839066123546837111

`∩[A002182(n+1), A335831(n+1)]`
-/

namespace A189394.P9839066123546837111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189394.P9839066123546837111

/-! ## A189394.P15161791870594717465

`∩[A097212(n+1), A335831(n+1)]`
-/

namespace A189394.P15161791870594717465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189394.P15161791870594717465

/-! ## A189394.P13455674644518429479

`∩[A140999(n+1), A335831(n+1)]`
-/

namespace A189394.P13455674644518429479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189394.P13455674644518429479

/-! ## A189394.P1672522203868604174

`∩[A194096(n+1), A335831(n+1)]`
-/

namespace A189394.P1672522203868604174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189394.P1672522203868604174

/-!
# A189395: a(n) = n + [n*s/r] + [n*t/r]; r=1, s=1/sqrt(2), t=sqrt(3).

The programs for A189395, the canonical program `A189395.P7157659040481121584` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189395 has offset 1).

The definition of A189395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189395.P7157659040481121584

`n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*sqrt(3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189395

/-- `n+1+floor((n+1)*sqrt(2)/2)+floor((n+1)*sqrt(3))` -/
def P7157659040481121584.Spec : Prop :=
  ∀ n, P7157659040481121584.a n = A189395 (n + 1)

theorem P7157659040481121584.correct : P7157659040481121584.Spec := by
  intro n
  simp only [A189395, Nat.add_sub_cancel]

end A189395

/-! ## A189395.P10383745465339191778

`A157477(A017029(n))`
-/

namespace A189395.P10383745465339191778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A017029 n).toNat

end

end A189395.P10383745465339191778

namespace A189395

/-- `A157477(A017029(n))` -/
def P10383745465339191778.Spec : Prop :=
  ∀ n, P10383745465339191778.a n = A189395 (n + 1)

end A189395

/-! ## A189395.P9028931283969770063

`A157477(A304499(n))`
-/

namespace A189395.P9028931283969770063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A304499 n).toNat

end

end A189395.P9028931283969770063

namespace A189395

/-- `A157477(A304499(n))` -/
def P9028931283969770063.Spec : Prop :=
  ∀ n, P9028931283969770063.a n = A189395 (n + 1)

end A189395

/-!
# A189396: a(n) = n + [n*r/s] + [n*t/s]; r=1, s=1/sqrt(2), t=sqrt(3).

The programs for A189396, the canonical program `A189396.P16635342819396178957` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189396 has offset 1).

The definition of A189396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189396.P16635342819396178957

`n+1+floor((n+1)*sqrt(6))+floor((n+1)*sqrt(2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A189396

/-- `n+1+floor((n+1)*sqrt(6))+floor((n+1)*sqrt(2))` -/
def P16635342819396178957.Spec : Prop :=
  ∀ n, P16635342819396178957.a n = A189396 (n + 1)

theorem P16635342819396178957.correct : P16635342819396178957.Spec := by
  intro n
  simp only [A189396, Nat.add_sub_cancel]

end A189396

/-!
# A189397: a(n) = n + [n*r/t] + [n*s/t]; r=1, s=1/sqrt(2), t=sqrt(3).

The programs for A189397, the canonical program `A189397.P15555838332013234681` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189397 has offset 1).

The definition of A189397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189397.P7350193961803942863

`A186539(n+1)+∑[char[A022840(n+1)]]`
-/

namespace A189397.P7350193961803942863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A189397.P7350193961803942863

namespace A189397

/-- `A186539(n+1)+∑[char[A022840(n+1)]]` -/
def P7350193961803942863.Spec : Prop :=
  ∀ n, P7350193961803942863.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P4039573819339430237

`A194979(n+1)+A194986(n+1)+n-1`
-/

namespace A189397.P4039573819339430237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) + (A194986 (n + 1) + ((n : ℤ) - 1))

end

end A189397.P4039573819339430237

namespace A189397

/-- `A194979(n+1)+A194986(n+1)+n-1` -/
def P4039573819339430237.Spec : Prop :=
  ∀ n, P4039573819339430237.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P15555838332013234681

`A186539(n+1)+A004526(A171974(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A189397

/-- `A186539(n+1)+A004526(A171974(n+1))` -/
def P15555838332013234681.Spec : Prop :=
  ∀ n, P15555838332013234681.a n = A189397 (n + 1)

theorem P15555838332013234681.correct : P15555838332013234681.Spec := by
  intro n
  simp only [A189397, Nat.add_sub_cancel]

end A189397

/-! ## A189397.P9087728456768211915

`A189363(n+1)-A110654(A171974(n+1))`
-/

namespace A189397.P9087728456768211915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189363 (n + 1) - A110654 (A171974 (n + 1)).toNat

end

end A189397.P9087728456768211915

namespace A189397

/-- `A189363(n+1)-A110654(A171974(n+1))` -/
def P9087728456768211915.Spec : Prop :=
  ∀ n, P9087728456768211915.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P4246578716584655882

`A186539(n+1)+A004526(A189363(n+1)-A186539(n+1))`
-/

namespace A189397.P4246578716584655882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A004526 (A189363 (n + 1) - A186539 (n + 1)).toNat

end

end A189397.P4246578716584655882

namespace A189397

/-- `A186539(n+1)+A004526(A189363(n+1)-A186539(n+1))` -/
def P4246578716584655882.Spec : Prop :=
  ∀ n, P4246578716584655882.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P14686378222475450946

`A186539(n+1)+A172476(n+1)`
-/

namespace A189397.P14686378222475450946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A172476 (n + 1)

end

end A189397.P14686378222475450946

namespace A189397

/-- `A186539(n+1)+A172476(n+1)` -/
def P14686378222475450946.Spec : Prop :=
  ∀ n, P14686378222475450946.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P6423314105092964032

`A186539(n+1)+A002264(A277644(n+1))`
-/

namespace A189397.P6423314105092964032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A002264 (A277644 (n + 1)).toNat

end

end A189397.P6423314105092964032

namespace A189397

/-- `A186539(n+1)+A002264(A277644(n+1))` -/
def P6423314105092964032.Spec : Prop :=
  ∀ n, P6423314105092964032.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P476984082247058126

`A004526(A189363(n+1)+A186539(n+1))`
-/

namespace A189397.P476984082247058126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189363 (n + 1) + A186539 (n + 1)).toNat

end

end A189397.P476984082247058126

namespace A189397

/-- `A004526(A189363(n+1)+A186539(n+1))` -/
def P476984082247058126.Spec : Prop :=
  ∀ n, P476984082247058126.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P708783485856787825

`A123108(A189363(n+1)+A186539(n+1))`
-/

namespace A189397.P708783485856787825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189363 (n + 1) + A186539 (n + 1)).toNat

end

end A189397.P708783485856787825

namespace A189397

/-- `A123108(A189363(n+1)+A186539(n+1))` -/
def P708783485856787825.Spec : Prop :=
  ∀ n, P708783485856787825.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P8928821029353159802

`A004526(A171974(n+1))+A002264(A182778(n+1))`
-/

namespace A189397.P8928821029353159802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171974 (n + 1)).toNat + A002264 (A182778 (n + 1)).toNat

end

end A189397.P8928821029353159802

namespace A189397

/-- `A004526(A171974(n+1))+A002264(A182778(n+1))` -/
def P8928821029353159802.Spec : Prop :=
  ∀ n, P8928821029353159802.a n = A189397 (n + 1)

end A189397

/-! ## A189397.P462952909275703503

`A002264(A182778(n+1))+A002264(A277644(n+1))`
-/

namespace A189397.P462952909275703503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A182778 (n + 1)).toNat + A002264 (A277644 (n + 1)).toNat

end

end A189397.P462952909275703503

namespace A189397

/-- `A002264(A182778(n+1))+A002264(A277644(n+1))` -/
def P462952909275703503.Spec : Prop :=
  ∀ n, P462952909275703503.a n = A189397 (n + 1)

end A189397

/-!
# A189398: a(n) = 2^d(1) * 3^d(2) * ... * prime(k)^d(k), where d(1)d(2)...d(k) is the decimal representation of n.

The programs for A189398, there is no canonical definition to state claims against.
-/

/-! ## A189398.P13857336887145238564

`A054842(A004086(n+1))`
-/

namespace A189398.P13857336887145238564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A004086 (n + 1)).toNat

end

end A189398.P13857336887145238564

/-! ## A189398.P14518621591124189426

`A054842(A056964(n+1)-(n+1))`
-/

namespace A189398.P14518621591124189426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A189398.P14518621591124189426

/-! ## A189398.P11429784791342586794

`A061509(A044332(n+1))`
-/

namespace A189398.P11429784791342586794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (A044332 (n + 1)).toNat

end

end A189398.P11429784791342586794

/-! ## A189398.P1079916846369925847

`A061509(A028242(2*n+3))%A000323(2*(n+2))`
-/

namespace A189398.P1079916846369925847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061509 (A028242 (2 * n + 3)).toNat) (A000323 (2 * (n + 2)))

end

end A189398.P1079916846369925847

/-! ## A189398.P8956018207261817787

`A061509(n+1)*A168046(A062045(n+1))`
-/

namespace A189398.P8956018207261817787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 (n + 1) * A168046 (A062045 (n + 1)).toNat

end

end A189398.P8956018207261817787

/-! ## A189398.P13024589812048280328

`A061509(n+1)%A299273(A046738(n+1))`
-/

namespace A189398.P13024589812048280328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061509 (n + 1)) (A299273 (A046738 (n + 1)).toNat)

end

end A189398.P13024589812048280328

/-! ## A189398.P16884992625592435216

`A358842(A202141(n))+A061509(n+1)`
-/

namespace A189398.P16884992625592435216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (A202141 n).toNat + A061509 (n + 1)

end

end A189398.P16884992625592435216

/-! ## A189398.P7406420671727830177

`A001222(A052188(n+2))*A061509(n+1)`
-/

namespace A189398.P7406420671727830177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052188 (n + 2)).toNat * A061509 (n + 1)

end

end A189398.P7406420671727830177

/-! ## A189398.P4784194375335540932

`A061509(n+1)%A061495(A007089(n))`
-/

namespace A189398.P4784194375335540932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061509 (n + 1)) (A061495 (A007089 n).toNat)

end

end A189398.P4784194375335540932

/-! ## A189398.P4514732469427598494

`A266144(A000040(3*n+5))+A061509(n+1)`
-/

namespace A189398.P4514732469427598494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266144 (A000040 (3 * n + 5)).toNat + A061509 (n + 1)

end

end A189398.P4514732469427598494

/-!
# A189399: n+[ns/r]+[nt/r]; r=1, s=sqrt(e), t=e.

The programs for A189399, the canonical program `A189399.P1112579676270563252` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189399 has offset 1).

The definition of A189399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189399.P5193981567220617303

`A189400(n+1)+A189403(n+1)-A189401(n+1)`
-/

namespace A189399.P5193981567220617303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189400 (n + 1) + (A189403 (n + 1) - A189401 (n + 1))

end

end A189399.P5193981567220617303

namespace A189399

/-- `A189400(n+1)+A189403(n+1)-A189401(n+1)` -/
def P5193981567220617303.Spec : Prop :=
  ∀ n, P5193981567220617303.a n = A189399 (n + 1)

theorem P5193981567220617303.correct : P5193981567220617303.Spec := by
  intro n
  simp only [A189399, Nat.add_sub_cancel, A189399.P5193981567220617303.a, A189399.P1112579676270563252.a, A000572, A000572.P3578859663019225295.a, A061402, A061402.P2254178269698688534.a, A189400, A189400.P13699763659893574540.a, A189401, A189401.P4880423856562258179.a, A189403, A189403.P8871410371183353853.a, A032634, A032634.P6588867285997603959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A189399

/-! ## A189399.P1112579676270563252

`A061402(n+1)+A000572(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A189399

/-- `A061402(n+1)+A000572(n+1)` -/
def P1112579676270563252.Spec : Prop :=
  ∀ n, P1112579676270563252.a n = A189399 (n + 1)

theorem P1112579676270563252.correct : P1112579676270563252.Spec := by
  intro n
  simp only [A189399, Nat.add_sub_cancel]

end A189399

/-! ## A189399.P5250616640745372535

`A061402(n+1)+A121384(n+1)+n`
-/

namespace A189399.P5250616640745372535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 (n + 1) + (A121384 (n + 1) + (n : ℤ))

end

end A189399.P5250616640745372535

namespace A189399

/-- `A061402(n+1)+A121384(n+1)+n` -/
def P5250616640745372535.Spec : Prop :=
  ∀ n, P5250616640745372535.a n = A189399 (n + 1)

end A189399

/-! ## A189399.P14567084085363142344

`n+1+A061402(n+1)+A022843(n+1)`
-/

namespace A189399.P14567084085363142344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A061402 (n + 1) + A022843 (n + 1))

end

end A189399.P14567084085363142344

namespace A189399

/-- `n+1+A061402(n+1)+A022843(n+1)` -/
def P14567084085363142344.Spec : Prop :=
  ∀ n, P14567084085363142344.a n = A189399 (n + 1)

end A189399

/-! ## A189399.P14166825474203868654

`n+1+A108599(A054385(n+1))+A061402(n+1)`
-/

namespace A189399.P14166825474203868654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A108599 (A054385 (n + 1)).toNat + A061402 (n + 1))

end

end A189399.P14166825474203868654

namespace A189399

/-- `n+1+A108599(A054385(n+1))+A061402(n+1)` -/
def P14166825474203868654.Spec : Prop :=
  ∀ n, P14166825474203868654.a n = A189399 (n + 1)

end A189399

