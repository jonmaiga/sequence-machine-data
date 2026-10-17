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
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A028800: Nonsquares mod 87.

The programs for A028800, there is no canonical definition to state claims against.
-/

/-! ## A028800.P18176058769664188806

`comp[A010448(n+1)]`
-/

namespace A028800.P18176058769664188806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028800.P18176058769664188806

/-! ## A028800.P4044647519169277825

`comp[record[A010448(A158416(n))]]`
-/

namespace A028800.P4044647519169277825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028800.P4044647519169277825

/-! ## A028800.P16151954014773624050

`comp[record[A010448(A236858(n))]]`
-/

namespace A028800.P16151954014773624050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028800.P16151954014773624050

/-! ## A028800.P1594631902911503975

`comp[record[A010448(A329048(n))]]`
-/

namespace A028800.P1594631902911503975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028800.P1594631902911503975

/-! ## A028800.P4927095564790089193

`eq[char[A010448(n+1)], A063667(n)]`
-/

namespace A028800.P4927095564790089193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A028800.P4927095564790089193

/-! ## A028800.P5465670200734595640

`lt[acot(A011587(n)), A116373(n+1)]`
-/

namespace A028800.P5465670200734595640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A011587 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028800.P5465670200734595640

/-! ## A028800.P8519283683980434640

`lt[acot(A011587(n)), A116376(n+1)]`
-/

namespace A028800.P8519283683980434640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A011587 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028800.P8519283683980434640

/-! ## A028800.P5451958101251889331

`eq[char[A010448(n+1)], char[A016948(n+1)]]`
-/

namespace A028800.P5451958101251889331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010448 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016948 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A028800.P5451958101251889331

/-!
# A028801: Nonsquares mod 88.

The programs for A028801, there is no canonical definition to state claims against.
-/

/-! ## A028801.P4406339121459109866

`comp[A010449(n+1)]`
-/

namespace A028801.P4406339121459109866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028801.P4406339121459109866

/-! ## A028801.P13208816980965510546

`comp[Δ[A010449(A158416(n))]]`
-/

namespace A028801.P13208816980965510546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010449 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028801.P13208816980965510546

/-! ## A028801.P765818289590156076

`comp[record[A010449(A065648(n))]]`
-/

namespace A028801.P765818289590156076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010449 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028801.P765818289590156076

/-! ## A028801.P1676719589222698989

`comp[record[A010449(A133310(n))]]`
-/

namespace A028801.P1676719589222698989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010449 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028801.P1676719589222698989

/-! ## A028801.P18034614388413820024

`comp[record[A010449(A324347(n))]]`
-/

namespace A028801.P18034614388413820024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010449 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028801.P18034614388413820024

/-! ## A028801.P4086260400579751821

`∪[A047586(n+1), A267541(n)]`
-/

namespace A028801.P4086260400579751821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028801.P4086260400579751821

/-!
# A028802: Nonsquares mod 89.

The programs for A028802, there is no canonical definition to state claims against.
-/

/-! ## A028802.P13155925031580207823

`comp[n-(n²+n)%89]`
-/

namespace A028802.P13155925031580207823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 89 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028802.P13155925031580207823

/-! ## A028802.P5932097952412894223

`comp[A010450(n+1)]`
-/

namespace A028802.P5932097952412894223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028802.P5932097952412894223

/-! ## A028802.P15377984798170866544

`comp[n*A011601(n)]`
-/

namespace A028802.P15377984798170866544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028802.P15377984798170866544

/-! ## A028802.P6710458499939251014

`lt[A011601(2*n), sin(n)]`
-/

namespace A028802.P6710458499939251014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011601 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028802.P6710458499939251014

/-! ## A028802.P13404054641271330708

`comp[A114327(45*n)+n]+1`
-/

namespace A028802.P13404054641271330708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (45 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A028802.P13404054641271330708

/-!
# A028803: Nonsquares mod 90.

The programs for A028803, there is no canonical definition to state claims against.
-/

/-! ## A028803.P16885991003223668564

`comp[(n²-n)%(-90)+n]`
-/

namespace A028803.P16885991003223668564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (-90) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028803.P16885991003223668564

/-! ## A028803.P10145857995940647731

`comp[46*(round(sqrt(n+1))²-n)+n]`
-/

namespace A028803.P10145857995940647731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  46 * (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - (n : ℤ)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028803.P10145857995940647731

/-! ## A028803.P11260462189660432063

`and(comp[A010451(n+1)], -1)`
-/

namespace A028803.P11260462189660432063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010451 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A028803.P11260462189660432063

/-! ## A028803.P422189356502695406

`A296882(comp[A010451(n+1)])`
-/

namespace A028803.P422189356502695406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010451 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A028803.P422189356502695406

/-! ## A028803.P9532077587914269563

`∪[A047221(n+1), A268226(n+1)]`
-/

namespace A028803.P9532077587914269563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028803.P9532077587914269563

/-! ## A028803.P5269561463308563036

`∪[A233998(n+1), A268226(n+1)]`
-/

namespace A028803.P5269561463308563036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028803.P5269561463308563036

/-! ## A028803.P4524391997024967283

`∪[A268226(n+1), A329783(n+1)]`
-/

namespace A028803.P4524391997024967283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028803.P4524391997024967283

/-!
# A028804: Nonsquares mod 91.

The programs for A028804, there is no canonical definition to state claims against.
-/

/-! ## A028804.P225293652877130143

`comp[A010452(n+1)]`
-/

namespace A028804.P225293652877130143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028804.P225293652877130143

/-! ## A028804.P15064228563387333337

`comp[Δ[A010452(A158416(n))]]`
-/

namespace A028804.P15064228563387333337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010452 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028804.P15064228563387333337

/-! ## A028804.P15588253431640002844

`comp[record[A010452(A038569(n))]]`
-/

namespace A028804.P15588253431640002844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010452 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028804.P15588253431640002844

/-! ## A028804.P11053999476684843648

`comp[A010452(A038569(n))-A000007(n)]`
-/

namespace A028804.P11053999476684843648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010452 (A038569 n).toNat - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028804.P11053999476684843648

/-!
# A028805: Nonsquares mod 92.

The programs for A028805, there is no canonical definition to state claims against.
-/

/-! ## A028805.P7486991034246189318

`comp[A010453(n+1)]`
-/

namespace A028805.P7486991034246189318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028805.P7486991034246189318

/-! ## A028805.P18357418100470199785

`comp[Δ[A010453(A158416(n))]]`
-/

namespace A028805.P18357418100470199785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010453 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028805.P18357418100470199785

/-! ## A028805.P3467276488072274161

`∪[A042964(n+1), A278579(n+1)]`
-/

namespace A028805.P3467276488072274161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028805.P3467276488072274161

/-!
# A028806: Nonsquares mod 93.

The programs for A028806, there is no canonical definition to state claims against.
-/

/-! ## A028806.P8935455970468944767

`comp[A010454(n+1)]`
-/

namespace A028806.P8935455970468944767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028806.P8935455970468944767

/-! ## A028806.P1859842569119924558

`comp[Δ[A010454(A158416(n))]]`
-/

namespace A028806.P1859842569119924558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028806.P1859842569119924558

/-! ## A028806.P17115917774148997283

`comp[record[A010454(A065648(n))]]`
-/

namespace A028806.P17115917774148997283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028806.P17115917774148997283

/-! ## A028806.P4829821976433502746

`comp[record[A010454(A117910(n))]]`
-/

namespace A028806.P4829821976433502746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028806.P4829821976433502746

/-! ## A028806.P8523916285475780855

`comp[record[A010454(A328399(n))]]`
-/

namespace A028806.P8523916285475780855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010454 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028806.P8523916285475780855

/-! ## A028806.P4146519309120359627

`lt[A011588(n), A077896(A047400(n+1))]`
-/

namespace A028806.P4146519309120359627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (A047400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028806.P4146519309120359627

/-! ## A028806.P11016624111253201966

`lt[A011588(n), A259825(A042968(n+1))]`
-/

namespace A028806.P11016624111253201966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A042968 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028806.P11016624111253201966

/-!
# A028807: Nonsquares mod 94.

The programs for A028807, there is no canonical definition to state claims against.
-/

/-! ## A028807.P16751005271337259840

`comp[A010455(n+1)]`
-/

namespace A028807.P16751005271337259840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028807.P16751005271337259840

/-! ## A028807.P12551284510689323326

`lt[3, and(n, A011592(n))]`
-/

namespace A028807.P12551284510689323326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A011592 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028807.P12551284510689323326

/-! ## A028807.P15901754505642129972

`comp[A114327(47*n)+1]`
-/

namespace A028807.P15901754505642129972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (47 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028807.P15901754505642129972

/-! ## A028807.P15688574732586033428

`eq[A011592(n), A260196(n)]`
-/

namespace A028807.P15688574732586033428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028807.P15688574732586033428

/-! ## A028807.P3030981186299138111

`lt[A011592(n), A010051(n+1)]`
-/

namespace A028807.P3030981186299138111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028807.P3030981186299138111

/-!
# A028808: Nonsquares mod 95.

The programs for A028808, there is no canonical definition to state claims against.
-/

/-! ## A028808.P14932089009776395538

`comp[A010456(n+1)]`
-/

namespace A028808.P14932089009776395538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028808.P14932089009776395538

/-! ## A028808.P3395398390606046435

`comp[Δ[A010456(A158416(n))]]`
-/

namespace A028808.P3395398390606046435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028808.P3395398390606046435

/-! ## A028808.P346345351579013096

`eq[char[A010456(n+2)], A000122(n)]`
-/

namespace A028808.P346345351579013096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A028808.P346345351579013096

/-! ## A028808.P7144441199648596088

`lt[char[A010456(n+1)]*A108153(n), n]`
-/

namespace A028808.P7144441199648596088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A108153 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A028808.P7144441199648596088

/-! ## A028808.P463482234506005564

`comp[A010456(A158416(n))-A063524(n)]`
-/

namespace A028808.P463482234506005564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (A158416 n).toNat - A063524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028808.P463482234506005564

/-! ## A028808.P11339368903627609550

`comp[A010456(A158416(n))%A099980(n)]`
-/

namespace A028808.P11339368903627609550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010456 (A158416 n).toNat) (A099980 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028808.P11339368903627609550

/-!
# A028809: Nonsquares mod 96.

The programs for A028809, there is no canonical definition to state claims against.
-/

/-! ## A028809.P12481886481181072382

`comp[A010457(n+1)]`
-/

namespace A028809.P12481886481181072382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028809.P12481886481181072382

/-! ## A028809.P4714018575090405928

`comp[n²%A265026(n+1)]`
-/

namespace A028809.P4714018575090405928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A265026 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028809.P4714018575090405928

/-! ## A028809.P13746939391366796267

`comp[A000290(n)%A280510(n+2)]`
-/

namespace A028809.P13746939391366796267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A280510 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028809.P13746939391366796267

/-! ## A028809.P7778878408869490334

`eq[A010052(n), A102460(A345919(n+1))]`
-/

namespace A028809.P7778878408869490334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A345919 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028809.P7778878408869490334

/-!
# A028810: Nonsquares mod 97.

The programs for A028810, there is no canonical definition to state claims against.
-/

/-! ## A028810.P15294627866367492518

`comp[A010458(n+1)]`
-/

namespace A028810.P15294627866367492518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028810.P15294627866367492518

/-! ## A028810.P11985009191320265267

`comp[n*A011602(n)]`
-/

namespace A028810.P11985009191320265267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028810.P11985009191320265267

/-! ## A028810.P1581925526119244653

`lt[n*A011602(3*n), 0]`
-/

namespace A028810.P1581925526119244653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011602 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028810.P1581925526119244653

/-! ## A028810.P4291807448646076838

`eq[n, A011602(2*n)+1+n]`
-/

namespace A028810.P4291807448646076838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (2 * n) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028810.P4291807448646076838

/-! ## A028810.P8517112647234360222

`eq[A011602(n), A260196(n)]`
-/

namespace A028810.P8517112647234360222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028810.P8517112647234360222

/-!
# A028811: Nonsquares mod 98.

The programs for A028811, there is no canonical definition to state claims against.
-/

/-! ## A028811.P13949061253403382854

`comp[A010459(n+1)]`
-/

namespace A028811.P13949061253403382854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028811.P13949061253403382854

/-! ## A028811.P7993114699270015135

`comp[n²%A165828(n+1)]`
-/

namespace A028811.P7993114699270015135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A165828 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028811.P7993114699270015135

/-! ## A028811.P1971180841659761014

`comp[A233999(n+1)-1]+1`
-/

namespace A028811.P1971180841659761014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233999 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A028811.P1971180841659761014

/-! ## A028811.P2209618801663100618

`A047328(A160546(n+2))`
-/

namespace A028811.P2209618801663100618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (A160546 (n + 2)).toNat

end

end A028811.P2209618801663100618

/-! ## A028811.P10551875041763876267

`A047328(comp[A288115(Δ[n²])])`
-/

namespace A028811.P10551875041763876267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288115 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A028811.P10551875041763876267

/-! ## A028811.P16982054313260006716

`filter[A047328(n+2), A049240(#)]`
-/

namespace A028811.P16982054313260006716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A028811.P16982054313260006716

/-! ## A028811.P7770497322948773867

`filter[A047328(n+2), A267635(#)]`
-/

namespace A028811.P7770497322948773867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A028811.P7770497322948773867

/-! ## A028811.P13582348025018079618

`∩[A000037(n+1), A047328(n+1)]`
-/

namespace A028811.P13582348025018079618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028811.P13582348025018079618

/-! ## A028811.P9804781573803868619

`∩[A028983(n+1), A047328(n+1)]`
-/

namespace A028811.P9804781573803868619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028811.P9804781573803868619

/-! ## A028811.P14974200243407718240

`∩[A047328(n+1), A164514(n+1)]`
-/

namespace A028811.P14974200243407718240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028811.P14974200243407718240

/-!
# A028812: Nonsquares mod 99.

The programs for A028812, there is no canonical definition to state claims against.
-/

/-! ## A028812.P17843935429915016257

`comp[C((n²-1)%99+1, A352032(n+1))]`
-/

namespace A028812.P17843935429915016257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((n ^ 2 : ℤ) - 1) 99 + 1).toNat (A352032 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028812.P17843935429915016257

/-! ## A028812.P3827792312240953754

`∪[A268226(n+1), A267541(n)]`
-/

namespace A028812.P3827792312240953754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028812.P3827792312240953754

/-! ## A028812.P15078529777836653192

`A000037(lt[A027641(n), A274549(n+1)])`
-/

namespace A028812.P15078529777836653192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028812.P15078529777836653192

/-! ## A028812.P17287549589744417759

`A000037(lt[A191523(3*n+5), A250120(n)])`
-/

namespace A028812.P17287549589744417759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191523 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028812.P17287549589744417759

/-! ## A028812.P14737815187099934658

`A000037(lt[A191523(3*n+5), A005408(3*n)])`
-/

namespace A028812.P14737815187099934658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191523 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028812.P14737815187099934658

/-!
# A028813: Nonsquares mod 100.

The programs for A028813, there is no canonical definition to state claims against.
-/

/-! ## A028813.P4084926606349320490

`comp[A010461(n+1)]`
-/

namespace A028813.P4084926606349320490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028813.P4084926606349320490

/-! ## A028813.P3426515789527281923

`comp[A316347(n+7)]`
-/

namespace A028813.P3426515789527281923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028813.P3426515789527281923

/-! ## A028813.P16159565763208667815

`comp[∪[A238712(n+6), n²]]`
-/

namespace A028813.P16159565763208667815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 6)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028813.P16159565763208667815

/-! ## A028813.P184690989104052300

`comp[A002015(n)^val(n+1, 3)]`
-/

namespace A028813.P184690989104052300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002015 n ^ SequenceMachineLib.valuation (n + 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028813.P184690989104052300

/-! ## A028813.P2382866561027565647

`comp[n²%(10^(4/2))*A095831(n+1)]`
-/

namespace A028813.P2382866561027565647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((10 : ℝ) ^ ((4 : ℚ) / 2 : ℝ))) * A095831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028813.P2382866561027565647

/-! ## A028813.P11852029963193346543

`comp[gcd(4*n-1, comp[4*(n+1)])*A002015(n+1)]`
-/

namespace A028813.P11852029963193346543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((4 * n : ℤ) - 1) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) : ℤ) * A002015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028813.P11852029963193346543

/-!
# A028814: Expansion of (1-2*x)/((1-x)^3*(1-4*x)).

The programs for A028814, the canonical program `A028814.P3698331104977267745` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028814 has offset 0).

The definition of A028814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028814.P3698331104977267745

`∑[∑[record[∑[(-2)^n]]]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028814

/-- `∑[∑[record[∑[(-2)^n]]]]` -/
def P3698331104977267745.Spec : Prop :=
  ∀ n, P3698331104977267745.a n = A028814 n

theorem P3698331104977267745.correct : P3698331104977267745.Spec := by
  intro n
  simp only [A028814]

end A028814

/-! ## A028814.P1013022132059167007

`∑[∑[∑[ceil(4^n/2)]]]`
-/

namespace A028814.P1013022132059167007
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028814.P1013022132059167007

namespace A028814

/-- `∑[∑[∑[ceil(4^n/2)]]]` -/
def P1013022132059167007.Spec : Prop :=
  ∀ n, P1013022132059167007.a n = A028814 n

end A028814

/-! ## A028814.P171667680798398903

`∑[∑[∑[lcm(2, 4^n)]]]/2`
-/

namespace A028814.P171667680798398903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (4 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A028814.P171667680798398903

namespace A028814

/-- `∑[∑[∑[lcm(2, 4^n)]]]/2` -/
def P171667680798398903.Spec : Prop :=
  ∀ n, P171667680798398903.a n = (A028814 n : ℚ)

end A028814

/-! ## A028814.P11943354162297114401

`∑[1-n]+4*a(n-1)` with `a(0)=1`
-/

namespace A028814.P11943354162297114401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A028814.P11943354162297114401

namespace A028814

/-- `∑[1-n]+4*a(n-1)` -/
def P11943354162297114401.Spec : Prop :=
  ∀ n, P11943354162297114401.a n = A028814 n

end A028814

/-! ## A028814.P4145435547570094989

`4*a(n-1)-∑[n-1]` with `a(0)=1`
-/

namespace A028814.P4145435547570094989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028814.P4145435547570094989

namespace A028814

/-- `4*a(n-1)-∑[n-1]` -/
def P4145435547570094989.Spec : Prop :=
  ∀ n, P4145435547570094989.a n = A028814 n

end A028814

/-! ## A028814.P18301870615388738150

`4*a(n-1)+1-C(n, 2)` with `a(0)=1`
-/

namespace A028814.P18301870615388738150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + 1 - (Nat.choose n 2 : ℤ)

end

end A028814.P18301870615388738150

namespace A028814

/-- `4*a(n-1)+1-C(n, 2)` -/
def P18301870615388738150.Spec : Prop :=
  ∀ n, P18301870615388738150.a n = A028814 n

end A028814

/-! ## A028814.P14199253239316620074

`A160156(n)+a(n-1)` with `a(0)=1`
-/

namespace A028814.P14199253239316620074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160156 n + a (n - 1)

end

end A028814.P14199253239316620074

namespace A028814

/-- `A160156(n)+a(n-1)` -/
def P14199253239316620074.Spec : Prop :=
  ∀ n, P14199253239316620074.a n = A028814 n

end A028814

/-! ## A028814.P17552738844464230324

`∑[∑[A047849(n+1)]]/2`
-/

namespace A028814.P17552738844464230324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A028814.P17552738844464230324

namespace A028814

/-- `∑[∑[A047849(n+1)]]/2` -/
def P17552738844464230324.Spec : Prop :=
  ∀ n, P17552738844464230324.a n = (A028814 n : ℚ)

end A028814

/-! ## A028814.P11140063185341797487

`∑[A103196(2*n+1)]/2`
-/

namespace A028814.P11140063185341797487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A028814.P11140063185341797487

namespace A028814

/-- `∑[A103196(2*n+1)]/2` -/
def P11140063185341797487.Spec : Prop :=
  ∀ n, P11140063185341797487.a n = (A028814 n : ℚ)

end A028814

/-! ## A028814.P16104036602690223552

`abs(∑[∑[A167167(2*n+1)]])`
-/

namespace A028814.P16104036602690223552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A028814.P16104036602690223552

namespace A028814

/-- `abs(∑[∑[A167167(2*n+1)]])` -/
def P16104036602690223552.Spec : Prop :=
  ∀ n, P16104036602690223552.a n = A028814 n

end A028814

/-! ## A028814.P12183568284026297003

`A034299(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A028814.P12183568284026297003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034299 (2 * n) + a (n - 1)

end

end A028814.P12183568284026297003

namespace A028814

/-- `A034299(2*n)+a(n-1)` -/
def P12183568284026297003.Spec : Prop :=
  ∀ n, P12183568284026297003.a n = A028814 n

end A028814

/-! ## A028814.P10624647502156019772

`∑[∑[A014113(2*n+1)]]/2`
-/

namespace A028814.P10624647502156019772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A028814.P10624647502156019772

namespace A028814

/-- `∑[∑[A014113(2*n+1)]]/2` -/
def P10624647502156019772.Spec : Prop :=
  ∀ n, P10624647502156019772.a n = (A028814 n : ℚ)

end A028814

/-! ## A028814.P3336314468375838953

`∑[∑[A135231(2*n+1)]]/2`
-/

namespace A028814.P3336314468375838953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135231 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A028814.P3336314468375838953

namespace A028814

/-- `∑[∑[A135231(2*n+1)]]/2` -/
def P3336314468375838953.Spec : Prop :=
  ∀ n, P3336314468375838953.a n = (A028814 n : ℚ)

end A028814

/-! ## A028814.P17101800599346422783

`∑[∑[A081294(n)]]+a(n-1)` with `a(0)=1`
-/

namespace A028814.P17101800599346422783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A028814.P17101800599346422783

namespace A028814

/-- `∑[∑[A081294(n)]]+a(n-1)` -/
def P17101800599346422783.Spec : Prop :=
  ∀ n, P17101800599346422783.a n = A028814 n

end A028814

/-! ## A028814.P9823931829082787948

`∑[∑[record[A077925(n)]]-1]+n+1`
-/

namespace A028814.P9823931829082787948
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A028814.P9823931829082787948

namespace A028814

/-- `∑[∑[record[A077925(n)]]-1]+n+1` -/
def P9823931829082787948.Spec : Prop :=
  ∀ n, P9823931829082787948.a n = A028814 n

end A028814

/-! ## A028814.P9171005740086117427

`∑[A001045(n+1+n)]+a(n-1)` with `a(0)=1`
-/

namespace A028814.P9171005740086117427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A028814.P9171005740086117427

namespace A028814

/-- `∑[A001045(n+1+n)]+a(n-1)` -/
def P9171005740086117427.Spec : Prop :=
  ∀ n, P9171005740086117427.a n = A028814 n

end A028814

/-! ## A028814.P15557432514853400235

`A052161(n)-A389373(2*n)`
-/

namespace A028814.P15557432514853400235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052161 n - A389373 (2 * n)

end

end A028814.P15557432514853400235

namespace A028814

/-- `A052161(n)-A389373(2*n)` -/
def P15557432514853400235.Spec : Prop :=
  ∀ n, P15557432514853400235.a n = A028814 n

end A028814

/-! ## A028814.P15778203109204918441

`A045900(n+2)-A000041(n+2)`
-/

namespace A028814.P15778203109204918441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045900 (n + 2) - A000041 (n + 2)

end

end A028814.P15778203109204918441

namespace A028814

/-- `A045900(n+2)-A000041(n+2)` -/
def P15778203109204918441.Spec : Prop :=
  ∀ n, P15778203109204918441.a n = A028814 n

end A028814

/-! ## A028814.P156300475006011077

`A389373(2*n)+A000217(n+1)`
-/

namespace A028814.P156300475006011077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389373 (2 * n) + A000217 (n + 1)

end

end A028814.P156300475006011077

namespace A028814

/-- `A389373(2*n)+A000217(n+1)` -/
def P156300475006011077.Spec : Prop :=
  ∀ n, P156300475006011077.a n = A028814 n

end A028814

/-! ## A028814.P6494101410147324312

`2*A014825(n+1)-A052161(n)`
-/

namespace A028814.P6494101410147324312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014825 (n + 1) - A052161 n

end

end A028814.P6494101410147324312

namespace A028814

/-- `2*A014825(n+1)-A052161(n)` -/
def P6494101410147324312.Spec : Prop :=
  ∀ n, P6494101410147324312.a n = A028814 n

end A028814

/-!
# A028815: a(n) = prime(n) + 1 (starting with 1).

The programs for A028815, the canonical program `A028815.P810525423351225743` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028815 has offset 0).

The definition of A028815 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A028815.P810525423351225743

`A008578(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028815

/-- `A008578(n+1)+1` -/
def P810525423351225743.Spec : Prop :=
  ∀ n, P810525423351225743.a n = A028815 n

theorem P810525423351225743.correct : P810525423351225743.Spec := by
  intro n
  simp only [A028815]

end A028815

/-! ## A028815.P15110558924238294595

`A090178(n+1)-n`
-/

namespace A028815.P15110558924238294595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - (n : ℤ)

end

end A028815.P15110558924238294595

namespace A028815

/-- `A090178(n+1)-n` -/
def P15110558924238294595.Spec : Prop :=
  ∀ n, P15110558924238294595.a n = A028815 n

end A028815

/-! ## A028815.P1989774261205354065

`sqrt(A280076(n+1))+1`
-/

namespace A028815.P1989774261205354065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ) + 1

end

end A028815.P1989774261205354065

namespace A028815

/-- `sqrt(A280076(n+1))+1` -/
def P1989774261205354065.Spec : Prop :=
  ∀ n, P1989774261205354065.a n = (A028815 n : ℝ)

end A028815

/-! ## A028815.P15188373079323077130

`record[A259153(n+1)+1]`
-/

namespace A028815.P15188373079323077130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028815.P15188373079323077130

namespace A028815

/-- `record[A259153(n+1)+1]` -/
def P15188373079323077130.Spec : Prop :=
  ∀ n, P15188373079323077130.a n = A028815 n

end A028815

/-! ## A028815.P3193214495316585638

`ceil(cosh(log(A001747(n+1))))`
-/

namespace A028815.P3193214495316585638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A001747 (n + 1) : ℝ))⌉

end

end A028815.P3193214495316585638

namespace A028815

/-- `ceil(cosh(log(A001747(n+1))))` -/
def P3193214495316585638.Spec : Prop :=
  ∀ n, P3193214495316585638.a n = A028815 n

end A028815

/-! ## A028815.P155329819167852364

`A112773(n+1)/3+1`
-/

namespace A028815.P155329819167852364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112773 (n + 1) : ℚ) / 3 + 1

end

end A028815.P155329819167852364

namespace A028815

/-- `A112773(n+1)/3+1` -/
def P155329819167852364.Spec : Prop :=
  ∀ n, P155329819167852364.a n = (A028815 n : ℚ)

end A028815

/-! ## A028815.P10901540877292630734

`(A076274(n+1)+3)/2`
-/

namespace A028815.P10901540877292630734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076274 (n + 1) + 3 : ℚ) / 2

end

end A028815.P10901540877292630734

namespace A028815

/-- `(A076274(n+1)+3)/2` -/
def P10901540877292630734.Spec : Prop :=
  ∀ n, P10901540877292630734.a n = (A028815 n : ℚ)

end A028815

/-! ## A028815.P17898693569998397664

`(A176003(n+1)+5)/3`
-/

namespace A028815.P17898693569998397664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176003 (n + 1) + 5 : ℚ) / 3

end

end A028815.P17898693569998397664

namespace A028815

/-- `(A176003(n+1)+5)/3` -/
def P17898693569998397664.Spec : Prop :=
  ∀ n, P17898693569998397664.a n = (A028815 n : ℚ)

end A028815

/-! ## A028815.P16534789476776060890

`A162177(n+1)+2+n`
-/

namespace A028815.P16534789476776060890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + 2 + (n : ℤ)

end

end A028815.P16534789476776060890

namespace A028815

/-- `A162177(n+1)+2+n` -/
def P16534789476776060890.Spec : Prop :=
  ∀ n, P16534789476776060890.a n = A028815 n

end A028815

/-! ## A028815.P17770734515201727263

`A167136(n+1)+1-n`
-/

namespace A028815.P17770734515201727263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + (1 - (n : ℤ))

end

end A028815.P17770734515201727263

namespace A028815

/-- `A167136(n+1)+1-n` -/
def P17770734515201727263.Spec : Prop :=
  ∀ n, P17770734515201727263.a n = A028815 n

end A028815

/-! ## A028815.P12762121842743745053

`A054541(n)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A028815.P12762121842743745053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A054541 n + a (n - 1)

end

end A028815.P12762121842743745053

namespace A028815

/-- `A054541(n)+a(n-1)` -/
def P12762121842743745053.Spec : Prop :=
  ∀ n, P12762121842743745053.a n = A028815 n

end A028815

/-! ## A028815.P15978071549459737390

`A125266(n)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A028815.P15978071549459737390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A125266 n + a (n - 1)

end

end A028815.P15978071549459737390

namespace A028815

/-- `A125266(n)+a(n-1)` -/
def P15978071549459737390.Spec : Prop :=
  ∀ n, P15978071549459737390.a n = A028815 n

end A028815

/-! ## A028815.P8397822026289717966

`A164931(n+1)/(n+1)+1`
-/

namespace A028815.P8397822026289717966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164931 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A028815.P8397822026289717966

namespace A028815

/-- `A164931(n+1)/(n+1)+1` -/
def P8397822026289717966.Spec : Prop :=
  ∀ n, P8397822026289717966.a n = (A028815 n : ℚ)

end A028815

/-! ## A028815.P3817863356515023604

`A000040(n%a(n-1))+1` with `a(0)=2`
-/

namespace A028815.P3817863356515023604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat + 1

end

end A028815.P3817863356515023604

namespace A028815

/-- `A000040(n%a(n-1))+1` -/
def P3817863356515023604.Spec : Prop :=
  ∀ n, P3817863356515023604.a n = A028815 n

end A028815

/-! ## A028815.P2565789813868440237

`A000040(gcd(n, n*a(n-1)))+1` with `a(0)=2`
-/

namespace A028815.P2565789813868440237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1))) + 1

end

end A028815.P2565789813868440237

namespace A028815

/-- `A000040(gcd(n, n*a(n-1)))+1` -/
def P2565789813868440237.Spec : Prop :=
  ∀ n, P2565789813868440237.a n = A028815 n

end A028815

/-! ## A028815.P16113675666906294896

`A000040(C(n, a(n-1))+n)+1` with `a(0)=2`
-/

namespace A028815.P16113675666906294896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Nat.choose n (a (n - 1)).toNat + n) + 1

end

end A028815.P16113675666906294896

namespace A028815

/-- `A000040(C(n, a(n-1))+n)+1` -/
def P16113675666906294896.Spec : Prop :=
  ∀ n, P16113675666906294896.a n = A028815 n

end A028815

/-! ## A028815.P15452049028601168712

`Δ[A000040(n-1)+a(n-1)]+1` with `a(0)=1, a(1)=2`
-/

namespace A028815.P15452049028601168712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000040 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A028815.P15452049028601168712

namespace A028815

/-- `Δ[A000040(n-1)+a(n-1)]+1` -/
def P15452049028601168712.Spec : Prop :=
  ∀ n, P15452049028601168712.a n = A028815 n

end A028815

/-! ## A028815.P18033157721690249830

`A093515(A004280(n+1))`
-/

namespace A028815.P18033157721690249830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A004280 (n + 1)).toNat

end

end A028815.P18033157721690249830

namespace A028815

/-- `A093515(A004280(n+1))` -/
def P18033157721690249830.Spec : Prop :=
  ∀ n, P18033157721690249830.a n = A028815 n

end A028815

/-! ## A028815.P16307898643087270548

`A182986(n+1)+A054977(n)`
-/

namespace A028815.P16307898643087270548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A054977 n

end

end A028815.P16307898643087270548

namespace A028815

/-- `A182986(n+1)+A054977(n)` -/
def P16307898643087270548.Spec : Prop :=
  ∀ n, P16307898643087270548.a n = A028815 n

end A028815

/-! ## A028815.P971998374893665069

`A299763(n+1)+A000007(n)`
-/

namespace A028815.P971998374893665069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + A000007 n

end

end A028815.P971998374893665069

namespace A028815

/-- `A299763(n+1)+A000007(n)` -/
def P971998374893665069.Spec : Prop :=
  ∀ n, P971998374893665069.a n = A028815 n

end A028815

/-!
# A028816: Numbers k such that k^2 is a palindrome with an odd number of digits.

The programs for A028816, there is no canonical definition to state claims against.
-/

/-! ## A028816.P13704999570418250282

`A002778(A347457(n+1)%A230997(2*n+1))`
-/

namespace A028816.P13704999570418250282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (Int.tmod (A347457 (n + 1)) (A230997 (2 * n + 1))).toNat

end

end A028816.P13704999570418250282

/-! ## A028816.P15218605086591524374

`A002778(A318991(n+1)%A320325(2*(n+2)))`
-/

namespace A028816.P15218605086591524374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (Int.tmod (A318991 (n + 1)) (A320325 (2 * (n + 2)))).toNat

end

end A028816.P15218605086591524374

/-! ## A028816.P1291884544059924016

`A004086(record[A004086(A002778(n+1))])`
-/

namespace A028816.P1291884544059924016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A002778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028816.P1291884544059924016

/-! ## A028816.P9041137700528693289

`A002778(A347457(n+1)%A250237(n+4))`
-/

namespace A028816.P9041137700528693289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (Int.tmod (A347457 (n + 1)) (A250237 (n + 4))).toNat

end

end A028816.P9041137700528693289

/-! ## A028816.P14423438468087246113

`A002778(A347457(n+1))%A338607(2*(n+2))`
-/

namespace A028816.P14423438468087246113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002778 (A347457 (n + 1)).toNat) (A338607 (2 * (n + 2)))

end

end A028816.P14423438468087246113

/-!
# A028817: Palindromic squares with an odd number of digits.

The programs for A028817, there is no canonical definition to state claims against.
-/

/-! ## A028817.P15385499141219446142

`A028816(n+2)²`
-/

namespace A028817.P15385499141219446142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028816 (n + 2) ^ 2

end

end A028817.P15385499141219446142

/-! ## A028817.P9666919605178109009

`A028816(n+2)^(A000027(n+1)-(n-1))`
-/

namespace A028817.P9666919605178109009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A000027 (n + 1) - ((n : ℤ) - 1) : ℤ)

end

end A028817.P9666919605178109009

/-! ## A028817.P13194718139791151145

`A028816(n+2)^A000005(A007918(n))`
-/

namespace A028817.P13194718139791151145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A028817.P13194718139791151145

/-! ## A028817.P15395001800419828520

`A028816(A000027(n+2))*A028816(n+2)`
-/

namespace A028817.P15395001800419828520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028816 (A000027 (n + 2)).toNat * A028816 (n + 2)

end

end A028817.P15395001800419828520

/-! ## A028817.P12810608999475035044

`A028816(n+2)^A000005(A001913(n+1))`
-/

namespace A028817.P12810608999475035044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A000005 (A001913 (n + 1)).toNat : ℤ)

end

end A028817.P12810608999475035044

/-! ## A028817.P9506954329769478985

`A028816(n+2)^A000005(A037126(n+1))`
-/

namespace A028817.P9506954329769478985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A000005 (A037126 (n + 1)).toNat : ℤ)

end

end A028817.P9506954329769478985

/-! ## A028817.P15827931298315757092

`A028816(n+2)^A020639(A028815(n+2))`
-/

namespace A028817.P15827931298315757092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A020639 (A028815 (n + 2)).toNat : ℤ)

end

end A028817.P15827931298315757092

/-! ## A028817.P13343764228060292601

`A028816(n+2)^A000005(record[A014963(n+2)])`
-/

namespace A028817.P13343764228060292601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028816 (n + 2) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A028817.P13343764228060292601

/-!
# A028818: Palindromic squares with odd number of digits and non-palindromic and "non-core" square roots.

The programs for A028818, there is no canonical definition to state claims against.
-/

/-! ## A028818.P12441229418480654821

`A016106(n+1)²`
-/

namespace A028818.P12441229418480654821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016106 (n + 1) ^ 2

end

end A028818.P12441229418480654821

/-! ## A028818.P6773673849274091231

`A059744(comp[A279262(n+1)])²`
-/

namespace A028818.P6773673849274091231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279262 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A028818.P6773673849274091231

/-! ## A028818.P12507621879839258258

`A016106(n+1)^ratio[A000079(n)]`
-/

namespace A028818.P12507621879839258258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016106 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A028818.P12507621879839258258

/-! ## A028818.P4801028498156797757

`A016106(n+1)^dr(A083513(n+1))`
-/

namespace A028818.P4801028498156797757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016106 (n + 1) ^ SequenceMachineLib.digitalRoot (A083513 (n + 1))

end

end A028818.P4801028498156797757

/-! ## A028818.P3406468879501309300

`A016106(n+1)^A020639(2*(n+1))`
-/

namespace A028818.P3406468879501309300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016106 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A028818.P3406468879501309300

/-!
# A028819: Numbers whose square has its digits in nondecreasing order.

The programs for A028819, there is no canonical definition to state claims against.
-/

/-! ## A028819.P15620715287158495973

`sqrt(A028820(n+1))`
-/

namespace A028819.P15620715287158495973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028820 (n + 1) : ℝ)

end

end A028819.P15620715287158495973

/-! ## A028819.P3432624268993392337

`A028820(n+1)^(2/A040002(n))`
-/

namespace A028819.P3432624268993392337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028820 (n + 1) : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A028819.P3432624268993392337

/-! ## A028819.P647396781094038193

`∑{p}[A034444(n+1), root(A028820(n+1), #)]`
-/

namespace A028819.P647396781094038193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A028820 (n + 1) : ℝ) ^ (1 / (p : ℝ))

end

end A028819.P647396781094038193

/-! ## A028819.P12066551192065838074

`A028820(n+1)^(A005811(xor(n, n+1))/2)`
-/

namespace A028819.P12066551192065838074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028820 (n + 1) : ℝ) ^ ((A005811 (Nat.xor n (n + 1)) : ℚ) / 2 : ℝ)

end

end A028819.P12066551192065838074

/-! ## A028819.P15711258133647533462

`A028820(n+1)^(A002024(n+1)/A111650(n+1))`
-/

namespace A028819.P15711258133647533462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028820 (n + 1) : ℝ) ^ ((A002024 (n + 1) : ℚ) / (A111650 (n + 1) : ℚ) : ℝ)

end

end A028819.P15711258133647533462

/-! ## A028819.P4302555211535779462

`A028820(n+1)^(A336851(A233281(n+1))/2)`
-/

namespace A028819.P4302555211535779462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028820 (n + 1) : ℝ) ^ ((A336851 (A233281 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A028819.P4302555211535779462

/-!
# A028820: Squares with digits in nondecreasing order.

The programs for A028820, there is no canonical definition to state claims against.
-/

/-! ## A028820.P4891353653103684878

`A028819(n+1)²`
-/

namespace A028820.P4891353653103684878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1) ^ 2

end

end A028820.P4891353653103684878

/-! ## A028820.P2108280856663658397

`A028819((n+1)^2/(n+1))^2`
-/

namespace A028820.P2108280856663658397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A028820.P2108280856663658397

/-! ## A028820.P6777363904975693228

`record[A028819(A328399(n))²]`
-/

namespace A028820.P6777363904975693228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028820.P6777363904975693228

/-! ## A028820.P3227698275198893513

`record[A028819(A328399(n))]*A028819(n+1)`
-/

namespace A028820.P3227698275198893513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A028819 (n + 1)

end

end A028820.P3227698275198893513

/-! ## A028820.P15998089277022116739

`(-A028819(n+1))^A000005(A034913(n+1))`
-/

namespace A028820.P15998089277022116739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A028819 (n + 1) : ℚ) ^ (A000005 (A034913 (n + 1)).toNat : ℤ)

end

end A028820.P15998089277022116739

/-! ## A028820.P15744961103823113022

`A193581(A009994(n+1))+A028819(n+1)^2`
-/

namespace A028820.P15744961103823113022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A009994 (n + 1)).toNat + A028819 (n + 1) ^ 2

end

end A028820.P15744961103823113022

/-! ## A028820.P14764524093301182585

`(and(1, A176288(n))*A028819(n+1))^2`
-/

namespace A028820.P14764524093301182585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A176288 n) * A028819 (n + 1)) ^ 2

end

end A028820.P14764524093301182585

/-! ## A028820.P5554663791696105232

`A033364(A101095(n+3))+A028819(n+1)^2`
-/

namespace A028820.P5554663791696105232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033364 (A101095 (n + 3)).toNat + A028819 (n + 1) ^ 2

end

end A028820.P5554663791696105232

/-!
# A028821: Numbers k such that k^2 has digits in nonincreasing order.

The programs for A028821, there is no canonical definition to state claims against.
-/

/-! ## A028821.P12808210836967381827

`sqrt(A028822(n+1))`
-/

namespace A028821.P12808210836967381827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028822 (n + 1) : ℝ)

end

end A028821.P12808210836967381827

/-! ## A028821.P5939770236074529568

`A028822(n+1)^(1/A178815(n+1))`
-/

namespace A028821.P5939770236074529568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028822 (n + 1) : ℝ) ^ (1 / (A178815 (n + 1) : ℚ) : ℝ)

end

end A028821.P5939770236074529568

/-! ## A028821.P15642168657922963576

`A028822(n+1)^(A000027(n+1)/(2*(n+1)))`
-/

namespace A028821.P15642168657922963576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028822 (n + 1) : ℝ) ^ ((A000027 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) : ℝ)

end

end A028821.P15642168657922963576

/-! ## A028821.P9110353723466077834

`A028822(n+1)^(A001222(A007918(n))/2)`
-/

namespace A028821.P9110353723466077834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028822 (n + 1) : ℝ) ^ ((A001222 (A007918 n).toNat : ℚ) / 2 : ℝ)

end

end A028821.P9110353723466077834

/-! ## A028821.P13508718262083887666

`A028822(n+1)^(1/A020639(A000010(n+2)))`
-/

namespace A028821.P13508718262083887666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028822 (n + 1) : ℝ) ^ (1 / (A020639 (A000010 (n + 2)).toNat : ℚ) : ℝ)

end

end A028821.P13508718262083887666

/-!
# A028822: Squares with digits in nonincreasing order.

The programs for A028822, there is no canonical definition to state claims against.
-/

/-! ## A028822.P9501746159298781614

`A028821(n+1)²`
-/

namespace A028822.P9501746159298781614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1) ^ 2

end

end A028822.P9501746159298781614

/-! ## A028822.P136389701973306804

`A028821(n+1)^(2%A017510(n))`
-/

namespace A028822.P136389701973306804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028821 (n + 1) : ℚ) ^ (Int.tmod 2 (A017510 n) : ℤ)

end

end A028822.P136389701973306804

/-! ## A028822.P9279286423901174388

`A028821(n+1)^gcd(2, A011782(n))`
-/

namespace A028822.P9279286423901174388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1) ^ Int.gcd 2 (A011782 n)

end

end A028822.P9279286423901174388

/-! ## A028822.P4452494990264606853

`A028821(n+1)^A028832(∑[2*(n+1)])`
-/

namespace A028822.P4452494990264606853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028821 (n + 1) : ℚ) ^ (A028832 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A028822.P4452494990264606853

/-! ## A028822.P12526772522162487188

`A028821(n+1)^A000034(A005408(n))`
-/

namespace A028822.P12526772522162487188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028821 (n + 1) : ℚ) ^ (A000034 (A005408 n).toNat : ℤ)

end

end A028822.P12526772522162487188

/-! ## A028822.P11224345977986210890

`A028821(n+1)^A020639(A028815(n))`
-/

namespace A028822.P11224345977986210890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028821 (n + 1) : ℚ) ^ (A020639 (A028815 n).toNat : ℤ)

end

end A028822.P11224345977986210890

/-! ## A028822.P280470525227940147

`A028821(n+1)*A028821(A005408(n)-n)`
-/

namespace A028822.P280470525227940147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028821 (n + 1) * A028821 (A005408 n - (n : ℤ)).toNat

end

end A028822.P280470525227940147

/-! ## A028822.P7104916041362994188

`A028821(n+1)^A014963(A039593(n+1))`
-/

namespace A028822.P7104916041362994188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028821 (n + 1) : ℚ) ^ (A014963 (A039593 (n + 1)).toNat : ℤ)

end

end A028822.P7104916041362994188

/-!
# A028823: Numbers k such that k^2 + k + 17 is prime.

The programs for A028823, there is no canonical definition to state claims against.
-/

/-! ## A028823.P11987703484546248096

`floor(sqrt(A007635(n+1)-17))`
-/

namespace A028823.P11987703484546248096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007635 (n + 1) - 17)

end

end A028823.P11987703484546248096

/-! ## A028823.P2762914883123890246

`round(sqrt(A007635(n+1)-17)*A057427(n))`
-/

namespace A028823.P2762914883123890246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007635 (n + 1) - 17 : ℝ) * (A057427 n : ℝ))

end

end A028823.P2762914883123890246

/-! ## A028823.P5522972085730007446

`round(sqrt(A007635(n+1)-17))%A000145(n)`
-/

namespace A028823.P5522972085730007446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A007635 (n + 1) - 17 : ℝ))) (A000145 n)

end

end A028823.P5522972085730007446

/-! ## A028823.P2773105364722015030

`round(A000038(n+1)+sqrt(A007635(n+1)-17))`
-/

namespace A028823.P2773105364722015030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (n + 1) : ℝ) + Real.sqrt (A007635 (n + 1) - 17 : ℝ))

end

end A028823.P2773105364722015030

/-! ## A028823.P4259669182991321491

`round(A000007(n+1)+sqrt(A007635(n+1)-17))`
-/

namespace A028823.P4259669182991321491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (A007635 (n + 1) - 17 : ℝ))

end

end A028823.P4259669182991321491

/-! ## A028823.P12030623864643189017

`eq[1, ∑{e}[2*(∑[n]+8)+1, #]]`
-/

namespace A028823.P12030623864643189017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f4 j + 8) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028823.P12030623864643189017

/-! ## A028823.P14703296630821655476

`eq[1, A001222(n²+17+n)]`
-/

namespace A028823.P14703296630821655476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028823.P14703296630821655476

/-! ## A028823.P17669370248606824032

`eq[2, A000005(n²+17+n)]`
-/

namespace A028823.P17669370248606824032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028823.P17669370248606824032

/-! ## A028823.P14568552159250719610

`lt[A001222(n²+n+17), 2]`
-/

namespace A028823.P14568552159250719610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + n + 17)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028823.P14568552159250719610

/-!
# A028824: Squarefree degrees of irreducible representations of Mathieu group M_24.

The programs for A028824, there is no canonical definition to state claims against.
-/

/-! ## A028824.P7976112186886819841

`record[∏{p}[A003859(n+1), #]]`
-/

namespace A028824.P7976112186886819841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003859 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028824.P7976112186886819841

/-! ## A028824.P2855853179082162493

`record[A056554(A003859(n+1))]`
-/

namespace A028824.P2855853179082162493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A003859 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028824.P2855853179082162493

/-!
# A028825: List of sizes of conjugacy classes of Mathieu simple group M_24 of order 244823040.

The programs for A028825, there is no canonical definition to state claims against.
-/

/-! ## A028825.P4599735448357525148

`∑[A008612(A122201(A067030(n)))]`
-/

namespace A028825.P4599735448357525148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A122201 (A067030 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028825.P4599735448357525148

/-! ## A028825.P13765936657900657030

`A000523(record[A217670(n)+A005408(n)])`
-/

namespace A028825.P13765936657900657030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028825.P13765936657900657030

/-! ## A028825.P15496345041278151813

`A003056(eq[A046854(n), A256252(n+1)])`
-/

namespace A028825.P15496345041278151813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028825.P15496345041278151813

/-! ## A028825.P4889323856441742143

`A003056(eq[A256252(n+1), A256268(n)])`
-/

namespace A028825.P4889323856441742143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028825.P4889323856441742143

/-! ## A028825.P5223136647252569580

`A302478(n+4)-A070939(A052847(n+4))`
-/

namespace A028825.P5223136647252569580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 4) - A070939 (A052847 (n + 4)).toNat

end

end A028825.P5223136647252569580

/-!
# A028827: List of orders of elements of Conway simple group Co_3.

The programs for A028827, there is no canonical definition to state claims against.
-/

/-! ## A028827.P16559335624825503424

`∑[A135528(A211183(n)+A211178(n+1))]`
-/

namespace A028827.P16559335624825503424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A211183 n + A211178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028827.P16559335624825503424

/-! ## A028827.P13476050842390612975

`∑[A286493(A020484(A046817(n)))]`
-/

namespace A028827.P13476050842390612975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286493 (A020484 (A046817 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028827.P13476050842390612975

/-! ## A028827.P14678777215161550494

`∑[A015997(A114151(n))^n]`
-/

namespace A028827.P14678777215161550494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 (A114151 n).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028827.P14678777215161550494

/-!
# A028831: Expansion of g.f. (1+2*x+3*x^2)/(1-x-x^2-x^3-x^4).

The programs for A028831, the canonical program `A028831.P2081911990552926782` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028831 has offset 0).

The definition of A028831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028831.P2081911990552926782

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028831

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P2081911990552926782.Spec : Prop :=
  ∀ n, (P2081911990552926782.a n : ℤ) = A028831 n

theorem P2081911990552926782.correct : P2081911990552926782.Spec := by
  intro n
  simp only [A028831]

end A028831

/-! ## A028831.P7331391177079139640

`A251655(n+3)+A001631(n)`
-/

namespace A028831.P7331391177079139640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 3) + A001631 n

end

end A028831.P7331391177079139640

namespace A028831

/-- `A251655(n+3)+A001631(n)` -/
def P7331391177079139640.Spec : Prop :=
  ∀ n, P7331391177079139640.a n = A028831 n

end A028831

/-! ## A028831.P4186767422081482956

`A000288(n+3)-A251656(n+1)`
-/

namespace A028831.P4186767422081482956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 3) - A251656 (n + 1)

end

end A028831.P4186767422081482956

namespace A028831

/-- `A000288(n+3)-A251656(n+1)` -/
def P4186767422081482956.Spec : Prop :=
  ∀ n, P4186767422081482956.a n = A028831 n

end A028831

/-! ## A028831.P17092442398428630643

`A001648(n+1)-4*A000078(n)`
-/

namespace A028831.P17092442398428630643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1) - 4 * A000078 n

end

end A028831.P17092442398428630643

namespace A028831

/-- `A001648(n+1)-4*A000078(n)` -/
def P17092442398428630643.Spec : Prop :=
  ∀ n, P17092442398428630643.a n = A028831 n

end A028831

/-! ## A028831.P489593599272999016

`∑[A100532(n+1)]-A001630(n+2)`
-/

namespace A028831.P489593599272999016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001630 (n + 2)

end

end A028831.P489593599272999016

namespace A028831

/-- `∑[A100532(n+1)]-A001630(n+2)` -/
def P489593599272999016.Spec : Prop :=
  ∀ n, P489593599272999016.a n = A028831 n

end A028831

/-! ## A028831.P13240900471129764244

`A089074(n+1)+1-A000288(n+1)`
-/

namespace A028831.P13240900471129764244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 (n + 1) + (1 - A000288 (n + 1))

end

end A028831.P13240900471129764244

namespace A028831

/-- `A089074(n+1)+1-A000288(n+1)` -/
def P13240900471129764244.Spec : Prop :=
  ∀ n, P13240900471129764244.a n = A028831 n

end A028831

/-! ## A028831.P18215085462259945911

`A100532(n+2)-2*A251705(n+1)`
-/

namespace A028831.P18215085462259945911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 2) - 2 * A251705 (n + 1)

end

end A028831.P18215085462259945911

namespace A028831

/-- `A100532(n+2)-2*A251705(n+1)` -/
def P18215085462259945911.Spec : Prop :=
  ∀ n, P18215085462259945911.a n = A028831 n

end A028831

/-! ## A028831.P12630678152787087212

`A001648(n+1)+A251705(n)-A000288(n+1)`
-/

namespace A028831.P12630678152787087212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1) + (A251705 n - A000288 (n + 1))

end

end A028831.P12630678152787087212

namespace A028831

/-- `A001648(n+1)+A251705(n)-A000288(n+1)` -/
def P12630678152787087212.Spec : Prop :=
  ∀ n, P12630678152787087212.a n = A028831 n

end A028831

/-! ## A028831.P14630841607362053712

`A073817(n+1)+A251705(n)-A000288(n+1)`
-/

namespace A028831.P14630841607362053712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 1) + (A251705 n - A000288 (n + 1))

end

end A028831.P14630841607362053712

namespace A028831

/-- `A073817(n+1)+A251705(n)-A000288(n+1)` -/
def P14630841607362053712.Spec : Prop :=
  ∀ n, P14630841607362053712.a n = A028831 n

end A028831

/-! ## A028831.P5783907627565891677

`Δ[A089074(n+1)]-A251705(n+1)`
-/

namespace A028831.P5783907627565891677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251705 (n + 1)

end

end A028831.P5783907627565891677

namespace A028831

/-- `Δ[A089074(n+1)]-A251705(n+1)` -/
def P5783907627565891677.Spec : Prop :=
  ∀ n, P5783907627565891677.a n = A028831 n

end A028831

/-! ## A028831.P3833324080506685067

`(A001648(n+2)-A000288(n+1))/2`
-/

namespace A028831.P3833324080506685067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 2) - A000288 (n + 1) : ℚ) / 2

end

end A028831.P3833324080506685067

namespace A028831

/-- `(A001648(n+2)-A000288(n+1))/2` -/
def P3833324080506685067.Spec : Prop :=
  ∀ n, P3833324080506685067.a n = (A028831 n : ℚ)

end A028831

/-! ## A028831.P17293622188582867391

`A135492(n+2)/2-A000288(n+1)`
-/

namespace A028831.P17293622188582867391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135492 (n + 2) : ℚ) / 2 - (A000288 (n + 1) : ℚ)

end

end A028831.P17293622188582867391

namespace A028831

/-- `A135492(n+2)/2-A000288(n+1)` -/
def P17293622188582867391.Spec : Prop :=
  ∀ n, P17293622188582867391.a n = (A028831 n : ℚ)

end A028831

/-! ## A028831.P18375363732131547710

`A001648(n+2)-A135492(n+2)/2`
-/

namespace A028831.P18375363732131547710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001648 (n + 2) : ℚ) - (A135492 (n + 2) : ℚ) / 2

end

end A028831.P18375363732131547710

namespace A028831

/-- `A001648(n+2)-A135492(n+2)/2` -/
def P18375363732131547710.Spec : Prop :=
  ∀ n, P18375363732131547710.a n = (A028831 n : ℚ)

end A028831

/-! ## A028831.P17894831233706219121

`A001648(n+2)-(A251705(n)+A001648(n+1))`
-/

namespace A028831.P17894831233706219121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 2) - (A251705 n + A001648 (n + 1))

end

end A028831.P17894831233706219121

namespace A028831

/-- `A001648(n+2)-(A251705(n)+A001648(n+1))` -/
def P17894831233706219121.Spec : Prop :=
  ∀ n, P17894831233706219121.a n = A028831 n

end A028831

/-! ## A028831.P11140777316545107116

`Δ[Δ[A251654(n+4)]]`
-/

namespace A028831.P11140777316545107116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028831.P11140777316545107116

namespace A028831

/-- `Δ[Δ[A251654(n+4)]]` -/
def P11140777316545107116.Spec : Prop :=
  ∀ n, P11140777316545107116.a n = A028831 n

end A028831

/-! ## A028831.P17008243084388913180

`Δ[Δ[A089074(n+1)]]-A251703(n+1)`
-/

namespace A028831.P17008243084388913180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251703 (n + 1)

end

end A028831.P17008243084388913180

namespace A028831

/-- `Δ[Δ[A089074(n+1)]]-A251703(n+1)` -/
def P17008243084388913180.Spec : Prop :=
  ∀ n, P17008243084388913180.a n = A028831 n

end A028831

/-! ## A028831.P15717708512649029814

`Δ[Δ[A107066(n+1)]]-A251705(n+1)`
-/

namespace A028831.P15717708512649029814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251705 (n + 1)

end

end A028831.P15717708512649029814

namespace A028831

/-- `Δ[Δ[A107066(n+1)]]-A251705(n+1)` -/
def P15717708512649029814.Spec : Prop :=
  ∀ n, P15717708512649029814.a n = A028831 n

end A028831

/-!
# A028832: Number of distinct integers in period of continued fraction for sqrt(n), or 0 if n is a square.

The programs for A028832, there is no canonical definition to state claims against.
-/

/-! ## A028832.P9173807150597818895

`A003285(n+1)-A028833(n+1)`
-/

namespace A028832.P9173807150597818895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) - A028833 (n + 1)

end

end A028832.P9173807150597818895

/-! ## A028832.P12089453133028258783

`A067280(n+1)-(A028833(n+1)+1)`
-/

namespace A028832.P12089453133028258783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1) - (A028833 (n + 1) + 1)

end

end A028832.P12089453133028258783

/-! ## A028832.P4412893881979715877

`A023443(A067280(n+1)-A028833(n+1))`
-/

namespace A028832.P4412893881979715877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067280 (n + 1) - A028833 (n + 1)).toNat

end

end A028832.P4412893881979715877

/-! ## A028832.P12523455057756525992

`A267069(A067280(n+1)-A028833(n+1))`
-/

namespace A028832.P12523455057756525992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267069 (A067280 (n + 1) - A028833 (n + 1)).toNat

end

end A028832.P12523455057756525992

/-! ## A028832.P10350883372660947184

`A003285(n+1)+A028833(n+1)*A057428(n)`
-/

namespace A028832.P10350883372660947184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + A028833 (n + 1) * A057428 n

end

end A028832.P10350883372660947184

/-! ## A028832.P13131820998494297063

`A049240(n+1)*A097853(n+1)-A028833(n+1)`
-/

namespace A028832.P13131820998494297063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A097853 (n + 1) - A028833 (n + 1)

end

end A028832.P13131820998494297063

/-! ## A028832.P15923147226008248152

`A003285(A000027(n+1))+A001489(A028833(n+1))`
-/

namespace A028832.P15923147226008248152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000027 (n + 1)).toNat + A001489 (A028833 (n + 1)).toNat

end

end A028832.P15923147226008248152

/-! ## A028832.P1890672529547864940

`A096492(n+1)-Δ[floor(sqrt(n))]`
-/

namespace A028832.P1890672529547864940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A028832.P1890672529547864940

/-! ## A028832.P12307719306459475645

`log2(A275437(n))*A096492(n+1)`
-/

namespace A028832.P12307719306459475645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275437 n : ℝ) * (A096492 (n + 1) : ℝ)

end

end A028832.P12307719306459475645

/-! ## A028832.P10401226578994531309

`Δ[A028391(n)]*A096492(n+1)`
-/

namespace A028832.P10401226578994531309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A096492 (n + 1)

end

end A028832.P10401226578994531309

/-! ## A028832.P12126692907136668298

`lcm(Δ[A071028(n)], A096492(n+1))`
-/

namespace A028832.P12126692907136668298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A096492 (n + 1))

end

end A028832.P12126692907136668298

/-! ## A028832.P10110110074242051344

`A049240(n+1)*A096492(n+1)`
-/

namespace A028832.P10110110074242051344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A096492 (n + 1)

end

end A028832.P10110110074242051344

/-! ## A028832.P132415984488496287

`xor(A065803(n+1), A096492(n+1))`
-/

namespace A028832.P132415984488496287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065803 (n + 1)) (A096492 (n + 1))

end

end A028832.P132415984488496287

/-! ## A028832.P6078646209836080330

`A003285(A003285(n+1)²+1)*A096492(n+1)`
-/

namespace A028832.P6078646209836080330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A003285 (n + 1) ^ 2 + 1).toNat * A096492 (n + 1)

end

end A028832.P6078646209836080330

/-!
# A028833: Index of redundancy in period of continued fraction for sqrt(n).

The programs for A028833, there is no canonical definition to state claims against.
-/

/-! ## A028833.P11076064706984215163

`A003285(n+1)-A028832(n+1)`
-/

namespace A028833.P11076064706984215163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) - A028832 (n + 1)

end

end A028833.P11076064706984215163

/-! ## A028833.P5459865484920045359

`A067280(n+1)-(A028832(n+1)+1)`
-/

namespace A028833.P5459865484920045359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1) - (A028832 (n + 1) + 1)

end

end A028833.P5459865484920045359

/-! ## A028833.P12139836263239378078

`A097853(n+1)-A028310(A028832(n+1))`
-/

namespace A028833.P12139836263239378078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - A028310 (A028832 (n + 1)).toNat

end

end A028833.P12139836263239378078

/-! ## A028833.P16072795845422698691

`A097853(n+1)-A098925(A028832(n+1)²)`
-/

namespace A028833.P16072795845422698691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - A098925 (A028832 (n + 1) ^ 2).toNat

end

end A028833.P16072795845422698691

/-! ## A028833.P6172958116593239488

`(A097853(n+1)-A028832(n+1))%A034867(n)`
-/

namespace A028833.P6172958116593239488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (n + 1) - A028832 (n + 1)) (A034867 n)

end

end A028833.P6172958116593239488

/-! ## A028833.P3260958786802942436

`A049240(n+1)*A097853(n+1)-A028832(n+1)`
-/

namespace A028833.P3260958786802942436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A097853 (n + 1) - A028832 (n + 1)

end

end A028833.P3260958786802942436

/-! ## A028833.P1258534108761477741

`A003285(A000027(n+1))+A001489(A028832(n+1))`
-/

namespace A028833.P1258534108761477741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000027 (n + 1)).toNat + A001489 (A028832 (n + 1)).toNat

end

end A028833.P1258534108761477741

/-! ## A028833.P616753743404010324

`(A028832(n+1)*A070198(n))%A097853(n+1)`
-/

namespace A028833.P616753743404010324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028832 (n + 1) * A070198 n) (A097853 (n + 1))

end

end A028833.P616753743404010324

/-! ## A028833.P7964620076621902460

`A097853(n+1)-A096492(n+1)`
-/

namespace A028833.P7964620076621902460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - A096492 (n + 1)

end

end A028833.P7964620076621902460

/-! ## A028833.P14969662873110516780

`A028310(A003285(n+1))-A096492(n+1)`
-/

namespace A028833.P14969662873110516780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003285 (n + 1)).toNat - A096492 (n + 1)

end

end A028833.P14969662873110516780

/-! ## A028833.P16253012347150039412

`A098925(A003285(n+1)²)-A096492(n+1)`
-/

namespace A028833.P16253012347150039412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A003285 (n + 1) ^ 2).toNat - A096492 (n + 1)

end

end A028833.P16253012347150039412

/-! ## A028833.P227460322028279191

`A137734(A003285(n+1)²)-A096492(n+1)`
-/

namespace A028833.P227460322028279191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A003285 (n + 1) ^ 2).toNat - A096492 (n + 1)

end

end A028833.P227460322028279191

/-! ## A028833.P1095920415059614405

`(A003285(n+1)-A096492(n+1))%A034867(n)`
-/

namespace A028833.P1095920415059614405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003285 (n + 1) - A096492 (n + 1)) (A034867 n)

end

end A028833.P1095920415059614405

/-! ## A028833.P13792024497533820487

`A003285(n+1)+A065803(n+1)-A096492(n+1)`
-/

namespace A028833.P13792024497533820487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + (A065803 (n + 1) - A096492 (n + 1))

end

end A028833.P13792024497533820487

/-! ## A028833.P5193321508740481656

`A003285(n+1)-A049240(n+1)*A096492(n+1)`
-/

namespace A028833.P5193321508740481656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) - A049240 (n + 1) * A096492 (n + 1)

end

end A028833.P5193321508740481656

/-!
# A028834: Numbers whose sum of digits is a prime.

The programs for A028834, there is no canonical definition to state claims against.
-/

/-! ## A028834.P2684440859796358456

`A129630(n+1)+1`
-/

namespace A028834.P2684440859796358456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

end

end A028834.P2684440859796358456

/-! ## A028834.P3511390805016087595

`∪[A046704(n+1), A141642(n+1)]`
-/

namespace A028834.P3511390805016087595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028834.P3511390805016087595

/-! ## A028834.P8025525150004728133

`A020725(A129630(n+1))`
-/

namespace A028834.P8025525150004728133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

end

end A028834.P8025525150004728133

/-! ## A028834.P3238330857669300520

`eq[1, ∑{e}[A007953(n), #]]`
-/

namespace A028834.P3238330857669300520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028834.P3238330857669300520

/-! ## A028834.P10402099346130464170

`eq[1, A032741(∑{digits}[n, #])]`
-/

namespace A028834.P10402099346130464170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P10402099346130464170

/-! ## A028834.P14838942026222487191

`eq[1, A105700(∑{digits}[n, #])]`
-/

namespace A028834.P14838942026222487191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P14838942026222487191

/-! ## A028834.P13799690087876972878

`eq[2, A005128(∑{digits}[n, #])]`
-/

namespace A028834.P13799690087876972878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P13799690087876972878

/-! ## A028834.P17146479747788837547

`eq[2, A306509(n+1)]+1`
-/

namespace A028834.P17146479747788837547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028834.P17146479747788837547

/-! ## A028834.P11553070232649885160

`eq[1, A054024(∑{digits}[n+1, #])]+1`
-/

namespace A028834.P11553070232649885160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028834.P11553070232649885160

/-! ## A028834.P9680190984116463853

`eq[2, A000005(∑{digits}[n+1, #])]+1`
-/

namespace A028834.P9680190984116463853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028834.P9680190984116463853

/-! ## A028834.P9756964012597955088

`eq[1, A003415(A007953(n))]`
-/

namespace A028834.P9756964012597955088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P9756964012597955088

/-! ## A028834.P2265341800059907424

`eq[2, A074206(A118881(n))]`
-/

namespace A028834.P2265341800059907424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P2265341800059907424

/-! ## A028834.P15671956600133297094

`lt[1, A105700(A169805(n))]`
-/

namespace A028834.P15671956600133297094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028834.P15671956600133297094

/-! ## A028834.P15624437192023002250

`eq[2, A306509(A028310(n))]`
-/

namespace A028834.P15624437192023002250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P15624437192023002250

/-! ## A028834.P9253985805388672409

`lt[0, A105700(A007953(n)²)]`
-/

namespace A028834.P9253985805388672409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028834.P9253985805388672409

/-! ## A028834.P8326799188901140368

`eq[2, A032741(A007953(n)²)]`
-/

namespace A028834.P8326799188901140368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P8326799188901140368

/-! ## A028834.P6664081884343311214

`eq[2, A074206(A007953(n)²)]`
-/

namespace A028834.P6664081884343311214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P6664081884343311214

/-! ## A028834.P10762396692353657268

`eq[2, A078898(A007953(n)²)]`
-/

namespace A028834.P10762396692353657268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P10762396692353657268

/-! ## A028834.P15606068628096594384

`eq[2, A226378(A007953(n)²)]`
-/

namespace A028834.P15606068628096594384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P15606068628096594384

/-! ## A028834.P16124398623203775162

`eq[2, A284289(A007953(n)²)]`
-/

namespace A028834.P16124398623203775162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028834.P16124398623203775162

/-!
# A028835: Numbers whose iterated sum of digits is a prime.

The programs for A028835, the canonical program `A028835.P10047270723414419312` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028835 has offset 1).

The definition of A028835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028835.P10047270723414419312

`a(n-4)+9` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028835

/-- `a(n-4)+9` -/
def P10047270723414419312.Spec : Prop :=
  ∀ n, (P10047270723414419312.a n : ℤ) = A028835 (n + 1)

theorem P10047270723414419312.correct : P10047270723414419312.Spec := by
  intro n
  simp only [A028835, Nat.add_sub_cancel]

end A028835

/-! ## A028835.P4663171006802537637

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A028835.P4663171006802537637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028835.P4663171006802537637

namespace A028835

/-- `∑[floor(a(n-4))]` -/
def P4663171006802537637.Spec : Prop :=
  ∀ n, (P4663171006802537637.a n : ℤ) = A028835 (n + 1)

end A028835

/-! ## A028835.P12586590867843776698

`record[10%dr(n+1)+n+2]`
-/

namespace A028835.P12586590867843776698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028835.P12586590867843776698

namespace A028835

/-- `record[10%dr(n+1)+n+2]` -/
def P12586590867843776698.Spec : Prop :=
  ∀ n, (P12586590867843776698.a n : ℤ) = A028835 (n + 1)

end A028835

/-! ## A028835.P1959535434410374117

`∑[gcd(4, a(n-4))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A028835.P1959535434410374117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f1 =>
  Nat.gcd 4 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028835.P1959535434410374117

namespace A028835

/-- `∑[gcd(4, a(n-4))]` -/
def P1959535434410374117.Spec : Prop :=
  ∀ n, (P1959535434410374117.a n : ℤ) = A028835 (n + 1)

end A028835

/-! ## A028835.P18293826108789594025

`∑[a(n-4)%5]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A028835.P18293826108789594025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 4] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028835.P18293826108789594025

namespace A028835

/-- `∑[a(n-4)%5]` -/
def P18293826108789594025.Spec : Prop :=
  ∀ n, (P18293826108789594025.a n : ℤ) = A028835 (n + 1)

end A028835

/-! ## A028835.P13533275284390680652

`floor(A047300(n+1)+n/2)`
-/

namespace A028835.P13533275284390680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047300 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A028835.P13533275284390680652

namespace A028835

/-- `floor(A047300(n+1)+n/2)` -/
def P13533275284390680652.Spec : Prop :=
  ∀ n, P13533275284390680652.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P13763795841586809164

`A047372(n+1)+∑[char[2*n]]`
-/

namespace A028835.P13763795841586809164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047372 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A028835.P13763795841586809164

namespace A028835

/-- `A047372(n+1)+∑[char[2*n]]` -/
def P13763795841586809164.Spec : Prop :=
  ∀ n, P13763795841586809164.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P9274782538969126233

`∑[∑[3*n+1]%2*A280193(n)]+2*n+1`
-/

namespace A028835.P9274782538969126233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ) * A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A028835.P9274782538969126233

namespace A028835

/-- `∑[∑[3*n+1]%2*A280193(n)]+2*n+1` -/
def P9274782538969126233.Spec : Prop :=
  ∀ n, P9274782538969126233.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P14021079059830238409

`A047487(n+1)+A002265(n)`
-/

namespace A028835.P14021079059830238409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1) + A002265 n

end

end A028835.P14021079059830238409

namespace A028835

/-- `A047487(n+1)+A002265(n)` -/
def P14021079059830238409.Spec : Prop :=
  ∀ n, P14021079059830238409.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P12961613315423940768

`A047300(n+1)+A004526(n)`
-/

namespace A028835.P12961613315423940768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047300 (n + 1) + A004526 n

end

end A028835.P12961613315423940768

namespace A028835

/-- `A047300(n+1)+A004526(n)` -/
def P12961613315423940768.Spec : Prop :=
  ∀ n, P12961613315423940768.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P18241301844903525294

`A047331(n+1)+A004524(n)`
-/

namespace A028835.P18241301844903525294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047331 (n + 1) + A004524 n

end

end A028835.P18241301844903525294

namespace A028835

/-- `A047331(n+1)+A004524(n)` -/
def P18241301844903525294.Spec : Prop :=
  ∀ n, P18241301844903525294.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P4334998351163396584

`A047411(n+1)+A008621(n)`
-/

namespace A028835.P4334998351163396584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1) + A008621 n

end

end A028835.P4334998351163396584

namespace A028835

/-- `A047411(n+1)+A008621(n)` -/
def P4334998351163396584.Spec : Prop :=
  ∀ n, P4334998351163396584.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P11585557110724185410

`A047415(n+1)+A008624(n)`
-/

namespace A028835.P11585557110724185410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (n + 1) + A008624 n

end

end A028835.P11585557110724185410

namespace A028835

/-- `A047415(n+1)+A008624(n)` -/
def P11585557110724185410.Spec : Prop :=
  ∀ n, P11585557110724185410.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P17983127099348767086

`A047227(n+1)+A037915(n)`
-/

namespace A028835.P17983127099348767086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (n + 1) + A037915 n

end

end A028835.P17983127099348767086

namespace A028835

/-- `A047227(n+1)+A037915(n)` -/
def P17983127099348767086.Spec : Prop :=
  ∀ n, P17983127099348767086.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P14749986162810081680

`A057353(n)+A047247(n+1)`
-/

namespace A028835.P14749986162810081680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047247 (n + 1)

end

end A028835.P14749986162810081680

namespace A028835

/-- `A057353(n)+A047247(n+1)` -/
def P14749986162810081680.Spec : Prop :=
  ∀ n, P14749986162810081680.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P15069340648102077488

`A130766(n)+A001651(n+1)`
-/

namespace A028835.P15069340648102077488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A001651 (n + 1)

end

end A028835.P15069340648102077488

namespace A028835

/-- `A130766(n)+A001651(n+1)` -/
def P15069340648102077488.Spec : Prop :=
  ∀ n, P15069340648102077488.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P11930946569972654442

`A106249(n)+A047366(n+1)`
-/

namespace A028835.P11930946569972654442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + A047366 (n + 1)

end

end A028835.P11930946569972654442

namespace A028835

/-- `A106249(n)+A047366(n+1)` -/
def P11930946569972654442.Spec : Prop :=
  ∀ n, P11930946569972654442.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P7541284571311698895

`A129756(n)+A047294(n+1)`
-/

namespace A028835.P7541284571311698895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n + A047294 (n + 1)

end

end A028835.P7541284571311698895

namespace A028835

/-- `A129756(n)+A047294(n+1)` -/
def P7541284571311698895.Spec : Prop :=
  ∀ n, P7541284571311698895.a n = A028835 (n + 1)

end A028835

/-! ## A028835.P1721841071783312956

`A246552(n)+A047596(n+1)`
-/

namespace A028835.P1721841071783312956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 n + A047596 (n + 1)

end

end A028835.P1721841071783312956

namespace A028835

/-- `A246552(n)+A047596(n+1)` -/
def P1721841071783312956.Spec : Prop :=
  ∀ n, P1721841071783312956.a n = A028835 (n + 1)

end A028835

/-!
# A028836: Iterated sum of digits of n is a power of 2.

The programs for A028836, the canonical program `A028836.P6494476532856433041` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028836 has offset 1).

The definition of A028836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028836.P6494476532856433041

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028836

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P6494476532856433041.Spec : Prop :=
  ∀ n, P6494476532856433041.a n = A028836 (n + 1)

theorem P6494476532856433041.correct : P6494476532856433041.Spec := by
  intro n
  simp only [A028836, Nat.add_sub_cancel]

end A028836

/-! ## A028836.P10938607127916611061

`record[(n%9)!%5+n]`
-/

namespace A028836.P10938607127916611061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 9) % 5 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028836.P10938607127916611061

namespace A028836

/-- `record[(n%9)!%5+n]` -/
def P10938607127916611061.Spec : Prop :=
  ∀ n, (P10938607127916611061.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P12888435406262720685

`record[n+1-lcm(63, dr(n))]`
-/

namespace A028836.P12888435406262720685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lcm 63 (SequenceMachineLib.digitalRoot (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028836.P12888435406262720685

namespace A028836

/-- `record[n+1-lcm(63, dr(n))]` -/
def P12888435406262720685.Spec : Prop :=
  ∀ n, P12888435406262720685.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P10022509086314125334

`a(n-4)+9` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A028836.P10022509086314125334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 4) + 9

end

end A028836.P10022509086314125334

namespace A028836

/-- `a(n-4)+9` -/
def P10022509086314125334.Spec : Prop :=
  ∀ n, (P10022509086314125334.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P306404709526346672

`∑[4/a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028836.P306404709526346672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  4 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028836.P306404709526346672

namespace A028836

/-- `∑[4/a(n-2)]` -/
def P306404709526346672.Spec : Prop :=
  ∀ n, P306404709526346672.a n = (A028836 (n + 1) : ℚ)

end A028836

/-! ## A028836.P2224112797177132727

`floor(3*or(2, 3*n)/4)`
-/

namespace A028836.P2224112797177132727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.lor 2 (3 * n) : ℚ) / 4)⌋

end

end A028836.P2224112797177132727

namespace A028836

/-- `floor(3*or(2, 3*n)/4)` -/
def P2224112797177132727.Spec : Prop :=
  ∀ n, P2224112797177132727.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P1994795770371562408

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=2`
-/

namespace A028836.P1994795770371562408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028836.P1994795770371562408

namespace A028836

/-- `∑[abs(a(n-4))]` -/
def P1994795770371562408.Spec : Prop :=
  ∀ n, (P1994795770371562408.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P2746753520672868306

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028836.P2746753520672868306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028836.P2746753520672868306

namespace A028836

/-- `∑[floor(a(n-4))]` -/
def P2746753520672868306.Spec : Prop :=
  ∀ n, (P2746753520672868306.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P17112715095990258310

`record[n+1-32%dr(n+1)]`
-/

namespace A028836.P17112715095990258310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((32 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028836.P17112715095990258310

namespace A028836

/-- `record[n+1-32%dr(n+1)]` -/
def P17112715095990258310.Spec : Prop :=
  ∀ n, P17112715095990258310.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P7151813127430665445

`∑[gcd(4, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=2`
-/

namespace A028836.P7151813127430665445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 2] fun n f1 =>
  Nat.gcd 4 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028836.P7151813127430665445

namespace A028836

/-- `∑[gcd(4, a(n-4))]` -/
def P7151813127430665445.Spec : Prop :=
  ∀ n, (P7151813127430665445.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P18056568054508263090

`round(xor(2, n+1)/4+2*n)`
-/

namespace A028836.P18056568054508263090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) : ℚ) / 4 + (2 * n : ℚ))

end

end A028836.P18056568054508263090

namespace A028836

/-- `round(xor(2, n+1)/4+2*n)` -/
def P18056568054508263090.Spec : Prop :=
  ∀ n, P18056568054508263090.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P15085262060330448066

`∑[3%(val(n+1, 2)+2)]+n`
-/

namespace A028836.P15085262060330448066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (SequenceMachineLib.valuation (n + 1) 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A028836.P15085262060330448066

namespace A028836

/-- `∑[3%(val(n+1, 2)+2)]+n` -/
def P15085262060330448066.Spec : Prop :=
  ∀ n, (P15085262060330448066.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P11258926283096008555

`round(xor(2, n+1)/4)+n+n`
-/

namespace A028836.P11258926283096008555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) : ℚ) / 4) + (n : ℤ) + (n : ℤ)

end

end A028836.P11258926283096008555

namespace A028836

/-- `round(xor(2, n+1)/4)+n+n` -/
def P11258926283096008555.Spec : Prop :=
  ∀ n, P11258926283096008555.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P2203060029575067053

`∑[4*a(n-2)^(-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028836.P2203060029575067053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  4 * f1 (n - 2) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028836.P2203060029575067053

namespace A028836

/-- `∑[4*a(n-2)^(-1)]` -/
def P2203060029575067053.Spec : Prop :=
  ∀ n, P2203060029575067053.a n = (A028836 (n + 1) : ℚ)

end A028836

/-! ## A028836.P16237306060206372103

`lt[n+3, dr((2*n+1)*(n+1))+n]`
-/

namespace A028836.P16237306060206372103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n + 1) * (n + 1) : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028836.P16237306060206372103

namespace A028836

/-- `lt[n+3, dr((2*n+1)*(n+1))+n]` -/
def P16237306060206372103.Spec : Prop :=
  ∀ n, (P16237306060206372103.a n : ℤ) = A028836 (n + 1)

end A028836

/-! ## A028836.P2566823914495253887

`A110659(n)+2*n`
-/

namespace A028836.P2566823914495253887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n + (2 * n : ℤ)

end

end A028836.P2566823914495253887

namespace A028836

/-- `A110659(n)+2*n` -/
def P2566823914495253887.Spec : Prop :=
  ∀ n, P2566823914495253887.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P16367026008737809929

`∑[A176895(a(n-2))]-1` with `a(0)=2, a(1)=1`
-/

namespace A028836.P16367026008737809929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A176895 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A028836.P16367026008737809929

namespace A028836

/-- `∑[A176895(a(n-2))]-1` -/
def P16367026008737809929.Spec : Prop :=
  ∀ n, P16367026008737809929.a n = A028836 (n + 1)

end A028836

/-! ## A028836.P393858736161243047

`∑[A000032(gcd(n+1, n-3)-1)]-1`
-/

namespace A028836.P393858736161243047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A028836.P393858736161243047

namespace A028836

/-- `∑[A000032(gcd(n+1, n-3)-1)]-1` -/
def P393858736161243047.Spec : Prop :=
  ∀ n, P393858736161243047.a n = A028836 (n + 1)

end A028836

/-!
# A028837: Iterated sum of digits of n is a square.

The programs for A028837, the canonical program `A028837.P3532176170224365492` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028837 has offset 1).

The definition of A028837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028837.P3532176170224365492

`a(n-3)+9` with `a(0)=1, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028837

/-- `a(n-3)+9` -/
def P3532176170224365492.Spec : Prop :=
  ∀ n, (P3532176170224365492.a n : ℤ) = A028837 (n + 1)

theorem P3532176170224365492.correct : P3532176170224365492.Spec := by
  intro n
  simp only [A028837, Nat.add_sub_cancel]

end A028837

/-! ## A028837.P6807595822199939352

`∑[Δ[n²]%6]`
-/

namespace A028837.P6807595822199939352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P6807595822199939352

namespace A028837

/-- `∑[Δ[n²]%6]` -/
def P6807595822199939352.Spec : Prop :=
  ∀ n, P6807595822199939352.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P818458388664075105

`∑[2*n%3+1]`
-/

namespace A028837.P818458388664075105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P818458388664075105

namespace A028837

/-- `∑[2*n%3+1]` -/
def P818458388664075105.Spec : Prop :=
  ∀ n, (P818458388664075105.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P17635373368293305136

`∑[or(1, (2*n)%6)]`
-/

namespace A028837.P17635373368293305136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P17635373368293305136

namespace A028837

/-- `∑[or(1, (2*n)%6)]` -/
def P17635373368293305136.Spec : Prop :=
  ∀ n, (P17635373368293305136.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P9069898292208156956

`∑[dr(comp[2*n]%6)]`
-/

namespace A028837.P9069898292208156956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 6 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P9069898292208156956

namespace A028837

/-- `∑[dr(comp[2*n]%6)]` -/
def P9069898292208156956.Spec : Prop :=
  ∀ n, (P9069898292208156956.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P2484655082719092002

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A028837.P2484655082719092002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P2484655082719092002

namespace A028837

/-- `∑[abs(a(n-3))]` -/
def P2484655082719092002.Spec : Prop :=
  ∀ n, (P2484655082719092002.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P4103701507017756455

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A028837.P4103701507017756455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P4103701507017756455

namespace A028837

/-- `∑[dr(a(n-3))]` -/
def P4103701507017756455.Spec : Prop :=
  ∀ n, (P4103701507017756455.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P1232477758074444346

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A028837.P1232477758074444346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P1232477758074444346

namespace A028837

/-- `∑[floor(a(n-3))]` -/
def P1232477758074444346.Spec : Prop :=
  ∀ n, (P1232477758074444346.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P2473146494833680622

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A028837.P2473146494833680622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P2473146494833680622

namespace A028837

/-- `∑[ceil(a(n-3))]` -/
def P2473146494833680622.Spec : Prop :=
  ∀ n, (P2473146494833680622.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P17640154203566128901

`∑[round(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5`

`round` is left out, it is the identity on integers.
-/

namespace A028837.P17640154203566128901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P17640154203566128901

namespace A028837

/-- `∑[round(a(n-3))]` -/
def P17640154203566128901.Spec : Prop :=
  ∀ n, (P17640154203566128901.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P7155357533207374338

`gcd(3, n+1)+3*n`
-/

namespace A028837.P7155357533207374338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + 3 * n

end

end A028837.P7155357533207374338

namespace A028837

/-- `gcd(3, n+1)+3*n` -/
def P7155357533207374338.Spec : Prop :=
  ∀ n, (P7155357533207374338.a n : ℤ) = A028837 (n + 1)

end A028837

/-! ## A028837.P7559931865403450497

`∑[1--2*n%6]`
-/

namespace A028837.P7559931865403450497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (-(2 * n : ℤ)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P7559931865403450497

namespace A028837

/-- `∑[1--2*n%6]` -/
def P7559931865403450497.Spec : Prop :=
  ∀ n, P7559931865403450497.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P11477072570334439780

`floor(∑[dr(3*(n+1))/2])`
-/

namespace A028837.P11477072570334439780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (3 * (n + 1) : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A028837.P11477072570334439780

namespace A028837

/-- `floor(∑[dr(3*(n+1))/2])` -/
def P11477072570334439780.Spec : Prop :=
  ∀ n, P11477072570334439780.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P1072878458012013177

`∑[Δ[gcd(n, n+3)+n]+2]`
-/

namespace A028837.P1072878458012013177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 3) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P1072878458012013177

namespace A028837

/-- `∑[Δ[gcd(n, n+3)+n]+2]` -/
def P1072878458012013177.Spec : Prop :=
  ∀ n, P1072878458012013177.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P1144684559038494423

`∑[6-a(a(n-1))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=1`
-/

namespace A028837.P1144684559038494423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 1] fun n f1 =>
  6 - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028837.P1144684559038494423

namespace A028837

/-- `∑[6-a(a(n-1))]` -/
def P1144684559038494423.Spec : Prop :=
  ∀ n, P1144684559038494423.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P17237581873085274434

`record[n+2-dr((2*n+1)^4)]`
-/

namespace A028837.P17237581873085274434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 4 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028837.P17237581873085274434

namespace A028837

/-- `record[n+2-dr((2*n+1)^4)]` -/
def P17237581873085274434.Spec : Prop :=
  ∀ n, P17237581873085274434.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P13182027026520070982

`record[and(n+1, n+2)+2*n+1]-n`
-/

namespace A028837.P13182027026520070982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 2) + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A028837.P13182027026520070982

namespace A028837

/-- `record[and(n+1, n+2)+2*n+1]-n` -/
def P13182027026520070982.Spec : Prop :=
  ∀ n, P13182027026520070982.a n = A028837 (n + 1)

end A028837

/-! ## A028837.P17312287051283026555

`3*n-(a(n-2)-a(n-1))%4` with `a(0)=1, a(1)=4`
-/

namespace A028837.P17312287051283026555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (3 * n : ℤ) - Int.tmod (a (n - 2) - a (n - 1)) 4

end

end A028837.P17312287051283026555

namespace A028837

/-- `3*n-(a(n-2)-a(n-1))%4` -/
def P17312287051283026555.Spec : Prop :=
  ∀ n, P17312287051283026555.a n = A028837 (n + 1)

end A028837

/-!
# A028838: Numbers whose sum of digits is a power of 2.

The programs for A028838, the canonical program `A028838.P7018118556481425172` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028838 has offset 1).

The definition of A028838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028838.P7018118556481425172

`eq[1, A000120(A007953(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028838

/-- `eq[1, A000120(A007953(n))]` -/
def P7018118556481425172.Spec : Prop :=
  ∀ n, (P7018118556481425172.a n : ℤ) = A028838 (n + 1)

theorem P7018118556481425172.correct : P7018118556481425172.Spec := by
  intro n
  simp only [A028838, Nat.add_sub_cancel]

end A028838

/-! ## A028838.P12618055161160637460

`eq[1, A000120(A118881(n))]`
-/

namespace A028838.P12618055161160637460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P12618055161160637460

namespace A028838

/-- `eq[1, A000120(A118881(n))]` -/
def P12618055161160637460.Spec : Prop :=
  ∀ n, (P12618055161160637460.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P6117687965127781470

`eq[1, A030103(A007953(n)²)]`
-/

namespace A028838.P6117687965127781470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P6117687965127781470

namespace A028838

/-- `eq[1, A030103(A007953(n)²)]` -/
def P6117687965127781470.Spec : Prop :=
  ∀ n, (P6117687965127781470.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P3571576373388400575

`eq[1, A038573(A007953(n)²)]`
-/

namespace A028838.P3571576373388400575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P3571576373388400575

namespace A028838

/-- `eq[1, A038573(A007953(n)²)]` -/
def P3571576373388400575.Spec : Prop :=
  ∀ n, (P3571576373388400575.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P445432395582595792

`eq[1, A053737(A007953(n)²)]`
-/

namespace A028838.P445432395582595792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P445432395582595792

namespace A028838

/-- `eq[1, A053737(A007953(n)²)]` -/
def P445432395582595792.Spec : Prop :=
  ∀ n, (P445432395582595792.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P6135728370971247282

`eq[1, A281392(A007953(n)²)]`
-/

namespace A028838.P6135728370971247282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P6135728370971247282

namespace A028838

/-- `eq[1, A281392(A007953(n)²)]` -/
def P6135728370971247282.Spec : Prop :=
  ∀ n, (P6135728370971247282.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P11109187786130669516

`eq[1, A319652(A007953(n)²)]`
-/

namespace A028838.P11109187786130669516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P11109187786130669516

namespace A028838

/-- `eq[1, A319652(A007953(n)²)]` -/
def P11109187786130669516.Spec : Prop :=
  ∀ n, (P11109187786130669516.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P17046016866052214911

`eq[2, A001316(A007953(n)²)]`
-/

namespace A028838.P17046016866052214911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P17046016866052214911

namespace A028838

/-- `eq[2, A001316(A007953(n)²)]` -/
def P17046016866052214911.Spec : Prop :=
  ∀ n, (P17046016866052214911.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P148416834429354388

`eq[1, A000120(log2(A329562(n)))]`
-/

namespace A028838.P148416834429354388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P148416834429354388

namespace A028838

/-- `eq[1, A000120(log2(A329562(n)))]` -/
def P148416834429354388.Spec : Prop :=
  ∀ n, (P148416834429354388.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P10752878454594151318

`eq[1, A030101(2*A007953(n))]`
-/

namespace A028838.P10752878454594151318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P10752878454594151318

namespace A028838

/-- `eq[1, A030101(2*A007953(n))]` -/
def P10752878454594151318.Spec : Prop :=
  ∀ n, (P10752878454594151318.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P14289261847267840993

`eq[1, A038573(2*A007953(n))]`
-/

namespace A028838.P14289261847267840993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P14289261847267840993

namespace A028838

/-- `eq[1, A038573(2*A007953(n))]` -/
def P14289261847267840993.Spec : Prop :=
  ∀ n, (P14289261847267840993.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P3065459720189261526

`eq[1, A281392(2*A007953(n))]`
-/

namespace A028838.P3065459720189261526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P3065459720189261526

namespace A028838

/-- `eq[1, A281392(2*A007953(n))]` -/
def P3065459720189261526.Spec : Prop :=
  ∀ n, (P3065459720189261526.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P1179040982161409235

`eq[2, A001316(2*A007953(n))]`
-/

namespace A028838.P1179040982161409235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P1179040982161409235

namespace A028838

/-- `eq[2, A001316(2*A007953(n))]` -/
def P1179040982161409235.Spec : Prop :=
  ∀ n, (P1179040982161409235.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P5984748788121169921

`eq[2, A060632(2*A007953(n))]`
-/

namespace A028838.P5984748788121169921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P5984748788121169921

namespace A028838

/-- `eq[2, A060632(2*A007953(n))]` -/
def P5984748788121169921.Spec : Prop :=
  ∀ n, (P5984748788121169921.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P12524134391897389267

`eq[1, A000120(A062028(n)-n)]`
-/

namespace A028838.P12524134391897389267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P12524134391897389267

namespace A028838

/-- `eq[1, A000120(A062028(n)-n)]` -/
def P12524134391897389267.Spec : Prop :=
  ∀ n, (P12524134391897389267.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P3174817451557979156

`lt[A006530(A007953(n+1)), 3]+1`
-/

namespace A028838.P3174817451557979156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007953 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028838.P3174817451557979156

namespace A028838

/-- `lt[A006530(A007953(n+1)), 3]+1` -/
def P3174817451557979156.Spec : Prop :=
  ∀ n, (P3174817451557979156.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P5982138412705323673

`eq[1, A000120(A180018(n)+A000120(n))]`
-/

namespace A028838.P5982138412705323673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A180018 n + A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P5982138412705323673

namespace A028838

/-- `eq[1, A000120(A180018(n)+A000120(n))]` -/
def P5982138412705323673.Spec : Prop :=
  ∀ n, (P5982138412705323673.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P5900186340893530226

`eq[1, A000120(∑{digits}[n, #])]`
-/

namespace A028838.P5900186340893530226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P5900186340893530226

namespace A028838

/-- `eq[1, A000120(∑{digits}[n, #])]` -/
def P5900186340893530226.Spec : Prop :=
  ∀ n, (P5900186340893530226.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P17116042649421689510

`eq[1, A002487(∑{digits}[n, #])]`
-/

namespace A028838.P17116042649421689510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P17116042649421689510

namespace A028838

/-- `eq[1, A002487(∑{digits}[n, #])]` -/
def P17116042649421689510.Spec : Prop :=
  ∀ n, (P17116042649421689510.a n : ℤ) = A028838 (n + 1)

end A028838

/-! ## A028838.P9590624590834608762

`eq[4, A169784(A169805(n))]`
-/

namespace A028838.P9590624590834608762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028838.P9590624590834608762

namespace A028838

/-- `eq[4, A169784(A169805(n))]` -/
def P9590624590834608762.Spec : Prop :=
  ∀ n, (P9590624590834608762.a n : ℤ) = A028838 (n + 1)

end A028838

/-!
# A028839: Sum of digits of n is a square.

The programs for A028839, the canonical program `A028839.P5547678190636867317` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028839 has offset 1).

The definition of A028839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028839.P14085438010765871654

`eq[1, A002828(A007953(n))]`
-/

namespace A028839.P14085438010765871654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P14085438010765871654

namespace A028839

/-- `eq[1, A002828(A007953(n))]` -/
def P14085438010765871654.Spec : Prop :=
  ∀ n, (P14085438010765871654.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P5547678190636867317

`eq[1, A053186(A007953(n)+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028839

/-- `eq[1, A053186(A007953(n)+1)]` -/
def P5547678190636867317.Spec : Prop :=
  ∀ n, (P5547678190636867317.a n : ℤ) = A028839 (n + 1)

theorem P5547678190636867317.correct : P5547678190636867317.Spec := by
  intro n
  simp only [A028839, Nat.add_sub_cancel]

end A028839

/-! ## A028839.P2615627636734483847

`eq[2, A249111(A007953(n)+1)]`
-/

namespace A028839.P2615627636734483847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P2615627636734483847

namespace A028839

/-- `eq[2, A249111(A007953(n)+1)]` -/
def P2615627636734483847.Spec : Prop :=
  ∀ n, (P2615627636734483847.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P9842889642873424651

`eq[1, A049581(2*A007953(n))]`
-/

namespace A028839.P9842889642873424651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P9842889642873424651

namespace A028839

/-- `eq[1, A049581(2*A007953(n))]` -/
def P9842889642873424651.Spec : Prop :=
  ∀ n, (P9842889642873424651.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P4427870921774678957

`eq[1, A002828(A062028(n)-n)]`
-/

namespace A028839.P4427870921774678957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P4427870921774678957

namespace A028839

/-- `eq[1, A002828(A062028(n)-n)]` -/
def P4427870921774678957.Spec : Prop :=
  ∀ n, (P4427870921774678957.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P12762945059047019542

`lt[1, A000122(A062028(n)-n)]`
-/

namespace A028839.P12762945059047019542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028839.P12762945059047019542

namespace A028839

/-- `lt[1, A000122(A062028(n)-n)]` -/
def P12762945059047019542.Spec : Prop :=
  ∀ n, (P12762945059047019542.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P10202318383505682262

`record[(n+1)/A002828(A007953(n+1))]`
-/

namespace A028839.P10202318383505682262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002828 (A007953 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028839.P10202318383505682262

namespace A028839

/-- `record[(n+1)/A002828(A007953(n+1))]` -/
def P10202318383505682262.Spec : Prop :=
  ∀ n, P10202318383505682262.a n = (A028839 (n + 1) : ℚ)

end A028839

/-! ## A028839.P7711194136431315530

`eq[A007953(n), A048760(A007953(n)+1)]`
-/

namespace A028839.P7711194136431315530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028839.P7711194136431315530

namespace A028839

/-- `eq[A007953(n), A048760(A007953(n)+1)]` -/
def P7711194136431315530.Spec : Prop :=
  ∀ n, (P7711194136431315530.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P12008884436092627752

`eq[1, A049581(A007953(n)+A007953(n))]`
-/

namespace A028839.P12008884436092627752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A007953 n + A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P12008884436092627752

namespace A028839

/-- `eq[1, A049581(A007953(n)+A007953(n))]` -/
def P12008884436092627752.Spec : Prop :=
  ∀ n, (P12008884436092627752.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P13439549650051873769

`eq[2, A033759(2*A169805(n))]`
-/

namespace A028839.P13439549650051873769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (2 * A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P13439549650051873769

namespace A028839

/-- `eq[2, A033759(2*A169805(n))]` -/
def P13439549650051873769.Spec : Prop :=
  ∀ n, (P13439549650051873769.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P7668092421698582346

`eq[2, A033759(A169805(n)/2)]`
-/

namespace A028839.P7668092421698582346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P7668092421698582346

namespace A028839

/-- `eq[2, A033759(A169805(n)/2)]` -/
def P7668092421698582346.Spec : Prop :=
  ∀ n, (P7668092421698582346.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P2500606271659644608

`eq[1, A053186(1-A066568(n)+n)]`
-/

namespace A028839.P2500606271659644608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (1 - A066568 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P2500606271659644608

namespace A028839

/-- `eq[1, A053186(1-A066568(n)+n)]` -/
def P2500606271659644608.Spec : Prop :=
  ∀ n, (P2500606271659644608.a n : ℤ) = A028839 (n + 1)

end A028839

/-! ## A028839.P10217994040111984912

`eq[1, A053186(A160939(n+1)-n)]`
-/

namespace A028839.P10217994040111984912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A160939 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028839.P10217994040111984912

namespace A028839

/-- `eq[1, A053186(A160939(n+1)-n)]` -/
def P10217994040111984912.Spec : Prop :=
  ∀ n, (P10217994040111984912.a n : ℤ) = A028839 (n + 1)

end A028839

/-!
# A028840: Numbers k such that sum of digits of k is a Fibonacci number.

The programs for A028840, the canonical program `A028840.P997673951894890904` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028840 has offset 1).

The definition of A028840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028840.P997673951894890904

`eq[0, A066628(A007953(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028840

/-- `eq[0, A066628(A007953(n))]` -/
def P997673951894890904.Spec : Prop :=
  ∀ n, (P997673951894890904.a n : ℤ) = A028840 (n + 1)

theorem P997673951894890904.correct : P997673951894890904.Spec := by
  intro n
  simp only [A028840, Nat.add_sub_cancel]

end A028840

/-! ## A028840.P16298865768831168346

`eq[A118881(n), A286327(A118881(n))]`
-/

namespace A028840.P16298865768831168346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028840.P16298865768831168346

namespace A028840

/-- `eq[A118881(n), A286327(A118881(n))]` -/
def P16298865768831168346.Spec : Prop :=
  ∀ n, (P16298865768831168346.a n : ℤ) = A028840 (n + 1)

end A028840

/-! ## A028840.P15869629583491775122

`eq[1, A010056(A180018(n)+A000120(n))]`
-/

namespace A028840.P15869629583491775122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A180018 n + A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028840.P15869629583491775122

namespace A028840

/-- `eq[1, A010056(A180018(n)+A000120(n))]` -/
def P15869629583491775122.Spec : Prop :=
  ∀ n, (P15869629583491775122.a n : ℤ) = A028840 (n + 1)

end A028840

/-! ## A028840.P11099940366574974482

`eq[A007895(A007953(n)), A019429(2*n)]`
-/

namespace A028840.P11099940366574974482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028840.P11099940366574974482

namespace A028840

/-- `eq[A007895(A007953(n)), A019429(2*n)]` -/
def P11099940366574974482.Spec : Prop :=
  ∀ n, (P11099940366574974482.a n : ℤ) = A028840 (n + 1)

end A028840

/-! ## A028840.P2305877250102776001

`eq[1, A010056(A160939(n+1)-(n+1))]`
-/

namespace A028840.P2305877250102776001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A160939 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028840.P2305877250102776001

namespace A028840

/-- `eq[1, A010056(A160939(n+1)-(n+1))]` -/
def P2305877250102776001.Spec : Prop :=
  ∀ n, (P2305877250102776001.a n : ℤ) = A028840 (n + 1)

end A028840

/-! ## A028840.P15780010632251178350

`eq[A007895(A007953(n)), A057427(n)]`
-/

namespace A028840.P15780010632251178350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028840.P15780010632251178350

namespace A028840

/-- `eq[A007895(A007953(n)), A057427(n)]` -/
def P15780010632251178350.Spec : Prop :=
  ∀ n, (P15780010632251178350.a n : ℤ) = A028840 (n + 1)

end A028840

/-! ## A028840.P10839250175218987367

`eq[A007895(A007953(n)), A051904(n²+1)]`
-/

namespace A028840.P10839250175218987367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028840.P10839250175218987367

namespace A028840

/-- `eq[A007895(A007953(n)), A051904(n²+1)]` -/
def P10839250175218987367.Spec : Prop :=
  ∀ n, (P10839250175218987367.a n : ℤ) = A028840 (n + 1)

end A028840

/-!
# A028841: Iterated sum of digits of n is a Fibonacci number.

The programs for A028841, the canonical program `A028841.P17713255964003770243` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028841 has offset 1).

The definition of A028841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028841.P17713255964003770243

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028841

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P17713255964003770243.Spec : Prop :=
  ∀ n, P17713255964003770243.a n = A028841 (n + 1)

theorem P17713255964003770243.correct : P17713255964003770243.Spec := by
  intro n
  simp only [A028841, Nat.add_sub_cancel]

end A028841

/-! ## A028841.P12162786389410997314

`a(n-5)+9` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A028841.P12162786389410997314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 8] fun n a =>
  a (n - 5) + 9

end

end A028841.P12162786389410997314

namespace A028841

/-- `a(n-5)+9` -/
def P12162786389410997314.Spec : Prop :=
  ∀ n, (P12162786389410997314.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P10451204154284419540

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028841.P10451204154284419540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028841.P10451204154284419540

namespace A028841

/-- `∑[floor(a(n-5))]` -/
def P10451204154284419540.Spec : Prop :=
  ∀ n, (P10451204154284419540.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P11584250403296823214

`comp[record[(n%9)!%5+n]-4]`
-/

namespace A028841.P11584250403296823214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 9) % 5 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028841.P11584250403296823214

namespace A028841

/-- `comp[record[(n%9)!%5+n]-4]` -/
def P11584250403296823214.Spec : Prop :=
  ∀ n, (P11584250403296823214.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P5192209486135118754

`record[round(n+1-log2(dr((n+1)²)))]`
-/

namespace A028841.P5192209486135118754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.logb 2 (SequenceMachineLib.digitalRoot ((n + 1) ^ 2 : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028841.P5192209486135118754

namespace A028841

/-- `record[round(n+1-log2(dr((n+1)²)))]` -/
def P5192209486135118754.Spec : Prop :=
  ∀ n, P5192209486135118754.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P5462061389919867999

`∑[a(n-5)%4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=2`
-/

namespace A028841.P5462061389919867999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 2] fun n f1 =>
  f1 (n - 5) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028841.P5462061389919867999

namespace A028841

/-- `∑[a(n-5)%4]` -/
def P5462061389919867999.Spec : Prop :=
  ∀ n, (P5462061389919867999.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P18223203793962762886

`lt[dr((n+2)*(n+3))+n-1, n+3]`
-/

namespace A028841.P18223203793962762886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((n + 2) * (n + 3) : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028841.P18223203793962762886

namespace A028841

/-- `lt[dr((n+2)*(n+3))+n-1, n+3]` -/
def P18223203793962762886.Spec : Prop :=
  ∀ n, (P18223203793962762886.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P10744560180088589105

`comp[A028836(n+1)-4]`
-/

namespace A028841.P10744560180088589105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028841.P10744560180088589105

namespace A028841

/-- `comp[A028836(n+1)-4]` -/
def P10744560180088589105.Spec : Prop :=
  ∀ n, (P10744560180088589105.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P17123138950898419704

`comp[A056527(n+1)-7]`
-/

namespace A028841.P17123138950898419704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028841.P17123138950898419704

namespace A028841

/-- `comp[A056527(n+1)-7]` -/
def P17123138950898419704.Spec : Prop :=
  ∀ n, (P17123138950898419704.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P7447897833657573219

`A076839(n)+a(n-1)` with `a(0)=1`
-/

namespace A028841.P7447897833657573219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076839 n + a (n - 1)

end

end A028841.P7447897833657573219

namespace A028841

/-- `A076839(n)+a(n-1)` -/
def P7447897833657573219.Spec : Prop :=
  ∀ n, P7447897833657573219.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P7582330275282209213

`∪[A016789(n), A350667(n)]`
-/

namespace A028841.P7582330275282209213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028841.P7582330275282209213

namespace A028841

/-- `∪[A016789(n), A350667(n)]` -/
def P7582330275282209213.Spec : Prop :=
  ∀ n, (P7582330275282209213.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P2913941244896124870

`A173276(n)+A047287(n+1)`
-/

namespace A028841.P2913941244896124870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n + A047287 (n + 1)

end

end A028841.P2913941244896124870

namespace A028841

/-- `A173276(n)+A047287(n+1)` -/
def P2913941244896124870.Spec : Prop :=
  ∀ n, P2913941244896124870.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P7541698331936857944

`∪[A008585(n)+2, A350667(n)]`
-/

namespace A028841.P7541698331936857944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028841.P7541698331936857944

namespace A028841

/-- `∪[A008585(n)+2, A350667(n)]` -/
def P7541698331936857944.Spec : Prop :=
  ∀ n, (P7541698331936857944.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P4381789844631927960

`∪[A055264(n)+2, A350667(n)]`
-/

namespace A028841.P4381789844631927960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028841.P4381789844631927960

namespace A028841

/-- `∪[A055264(n)+2, A350667(n)]` -/
def P4381789844631927960.Spec : Prop :=
  ∀ n, (P4381789844631927960.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P16675980344437594961

`∪[A056020(n+1), A055264(n)+2]`
-/

namespace A028841.P16675980344437594961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028841.P16675980344437594961

namespace A028841

/-- `∪[A056020(n+1), A055264(n)+2]` -/
def P16675980344437594961.Spec : Prop :=
  ∀ n, (P16675980344437594961.a n : ℤ) = A028841 (n + 1)

end A028841

/-! ## A028841.P13766233214857607712

`∑[A076839(n+1)]+1-A076839(n+1)`
-/

namespace A028841.P13766233214857607712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A076839 (n + 1))

end

end A028841.P13766233214857607712

namespace A028841

/-- `∑[A076839(n+1)]+1-A076839(n+1)` -/
def P13766233214857607712.Spec : Prop :=
  ∀ n, P13766233214857607712.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P15717536445550891782

`A047373(n+2)-(n-A047373(n+1))`
-/

namespace A028841.P15717536445550891782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047373 (n + 2) - ((n : ℤ) - A047373 (n + 1))

end

end A028841.P15717536445550891782

namespace A028841

/-- `A047373(n+2)-(n-A047373(n+1))` -/
def P15717536445550891782.Spec : Prop :=
  ∀ n, P15717536445550891782.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P8013795257586761666

`A032796(n+1)+A005843(A002266(n+1))`
-/

namespace A028841.P8013795257586761666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (n + 1) + A005843 (A002266 (n + 1)).toNat

end

end A028841.P8013795257586761666

namespace A028841

/-- `A032796(n+1)+A005843(A002266(n+1))` -/
def P8013795257586761666.Spec : Prop :=
  ∀ n, P8013795257586761666.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P2210998793403442625

`2*n+1-∑[A131670(n+3)]`
-/

namespace A028841.P2210998793403442625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131670 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028841.P2210998793403442625

namespace A028841

/-- `2*n+1-∑[A131670(n+3)]` -/
def P2210998793403442625.Spec : Prop :=
  ∀ n, P2210998793403442625.a n = A028841 (n + 1)

end A028841

/-! ## A028841.P13391290225945530902

`A168183(A047607(n+2))`
-/

namespace A028841.P13391290225945530902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A047607 (n + 2)).toNat

end

end A028841.P13391290225945530902

namespace A028841

/-- `A168183(A047607(n+2))` -/
def P13391290225945530902.Spec : Prop :=
  ∀ n, P13391290225945530902.a n = A028841 (n + 1)

end A028841

/-!
# A028842: Numbers whose product of digits is prime.

The programs for A028842, there is no canonical definition to state claims against.
-/

/-! ## A028842.P3361684213317072492

`A307714(comp[n*comp[2*(n+1)]]+1)`
-/

namespace A028842.P3361684213317072492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A028842.P3361684213317072492

/-! ## A028842.P881958556236039441

`∩[A028843(n+1), A090274(n+1)]`
-/

namespace A028842.P881958556236039441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P881958556236039441

/-! ## A028842.P16523230230805484447

`∩[A028843(n+1), A307714(n+1)]`
-/

namespace A028842.P16523230230805484447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P16523230230805484447

/-! ## A028842.P4693281542270907761

`∩[A001742(n+1), A092620(n+1)]`
-/

namespace A028842.P4693281542270907761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P4693281542270907761

/-! ## A028842.P17924928374747099773

`∩[A092620(n+1), A307714(n+1)]`
-/

namespace A028842.P17924928374747099773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P17924928374747099773

/-! ## A028842.P347266138292182993

`eq[1, A105700(abs(A187844(n)))]`
-/

namespace A028842.P347266138292182993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028842.P347266138292182993

/-! ## A028842.P3060738034970328907

`∩[A028843(n+1), A062996(n+1)]`
-/

namespace A028842.P3060738034970328907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P3060738034970328907

/-! ## A028842.P14716757546639816322

`∩[A028843(n+1), A090273(n+1)]`
-/

namespace A028842.P14716757546639816322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P14716757546639816322

/-! ## A028842.P8562838788483813874

`∩[A118950(n+1), A307714(n+1)]`
-/

namespace A028842.P8562838788483813874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028842.P8562838788483813874

/-!
# A028843: Numbers whose iterated product of digits is a prime.

The programs for A028843, there is no canonical definition to state claims against.
-/

/-! ## A028843.P6872592914487516816

`lt[A185284(n), A047814(A007954(n))]`
-/

namespace A028843.P6872592914487516816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028843.P6872592914487516816

/-! ## A028843.P8743430759297395430

`eq[or(1, A165190(n)), A193238(n)]`
-/

namespace A028843.P8743430759297395430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165190 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028843.P8743430759297395430

/-! ## A028843.P15758889292910531244

`∑[A340101(Δ[A138697(3*n+4)])]`
-/

namespace A028843.P15758889292910531244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138697 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028843.P15758889292910531244

/-! ## A028843.P17190514354568708974

`eq[A000293(A165190(n)), A193238(n)]`
-/

namespace A028843.P17190514354568708974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000293 (A165190 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028843.P17190514354568708974

/-! ## A028843.P17569537268205693704

`eq[A041657(A165190(n)²), A193238(n)]`
-/

namespace A028843.P17569537268205693704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041657 (A165190 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028843.P17569537268205693704

/-!
# A028845: Iterated product of digits of n is a nonzero square.

The programs for A028845, there is no canonical definition to state claims against.
-/

/-! ## A028845.P365247194826775966

`∪[A034051(n+1), A050627(n+1)]`
-/

namespace A028845.P365247194826775966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028845.P365247194826775966

/-! ## A028845.P4394088029233099072

`eq[0, a(A171765(n))%n]` with `a(0)=9, a(1)=0, a(2)=2, a(3)=8, a(4)=0, a(5)=8`
-/

namespace A028845.P4394088029233099072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9, 0, 2, 8, 0, 8] fun n f2 =>
  f2 (A171765 n).toNat % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028845.P4394088029233099072

/-! ## A028845.P992695866898303364

`A231015(A135332(2*n+1))`
-/

namespace A028845.P992695866898303364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231015 (A135332 (2 * n + 1)).toNat

end

end A028845.P992695866898303364

/-! ## A028845.P12487200739854931912

`∑[A060130(A315256((n+1)*Δ[n^3]))]`
-/

namespace A028845.P12487200739854931912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A315256 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028845.P12487200739854931912

/-! ## A028845.P8826546255557273362

`or(A101688(A101879(n)), A311040(n))`
-/

namespace A028845.P8826546255557273362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101688 (A101879 n).toNat) (A311040 n)

end

end A028845.P8826546255557273362

/-!
# A028846: Numbers whose product of digits is a power of 2.

The programs for A028846, the canonical program `A028846.P7450383305862241760` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028846 has offset 1).

The definition of A028846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028846.P7450383305862241760

`A261189(A308496(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028846

/-- `A261189(A308496(n+1))` -/
def P7450383305862241760.Spec : Prop :=
  ∀ n, P7450383305862241760.a n = A028846 (n + 1)

theorem P7450383305862241760.correct : P7450383305862241760.Spec := by
  intro n
  simp only [A028846, Nat.add_sub_cancel]

end A028846

/-! ## A028846.P5870856368446059094

`eq[1, A000120(∏{digits}[n, #])]`
-/

namespace A028846.P5870856368446059094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028846.P5870856368446059094

namespace A028846

/-- `eq[1, A000120(∏{digits}[n, #])]` -/
def P5870856368446059094.Spec : Prop :=
  ∀ n, (P5870856368446059094.a n : ℤ) = A028846 (n + 1)

end A028846

/-! ## A028846.P3532542742996632507

`eq[1, A002487(∏{digits}[n, #])]`
-/

namespace A028846.P3532542742996632507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028846.P3532542742996632507

namespace A028846

/-- `eq[1, A002487(∏{digits}[n, #])]` -/
def P3532542742996632507.Spec : Prop :=
  ∀ n, (P3532542742996632507.a n : ℤ) = A028846 (n + 1)

end A028846

/-! ## A028846.P9590253540930551723

`eq[1, A000120(A007954(n))]`
-/

namespace A028846.P9590253540930551723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028846.P9590253540930551723

namespace A028846

/-- `eq[1, A000120(A007954(n))]` -/
def P9590253540930551723.Spec : Prop :=
  ∀ n, (P9590253540930551723.a n : ℤ) = A028846 (n + 1)

end A028846

/-! ## A028846.P13185217276106903638

`eq[2, A151572(2*A007954(n))]`
-/

namespace A028846.P13185217276106903638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 (2 * A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028846.P13185217276106903638

namespace A028846

/-- `eq[2, A151572(2*A007954(n))]` -/
def P13185217276106903638.Spec : Prop :=
  ∀ n, (P13185217276106903638.a n : ℤ) = A028846 (n + 1)

end A028846

/-!
# A028855: Number of prime unlabeled topologies (i.e., prime homeomorphism classes) on n points.

The programs for A028855, there is no canonical definition to state claims against.
-/

/-! ## A028855.P15060531633941567756

`A156242(A099295(2*n+3)%A130439(n+1))`
-/

namespace A028855.P15060531633941567756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (Int.tmod (A099295 (2 * n + 3)) (A130439 (n + 1))).toNat

end

end A028855.P15060531633941567756

/-!
# A028856: Number of prime unlabeled T_0 topologies (i.e., prime T_0 homeomorphism classes) on n points.

The programs for A028856, there is no canonical definition to state claims against.
-/

/-! ## A028856.P14852951228969141949

`A003963(9^n+C(n, n²)+1)`
-/

namespace A028856.P14852951228969141949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (9 ^ n + Nat.choose n (n ^ 2) + 1)

end

end A028856.P14852951228969141949

/-!
# A028857: Number of prime unlabeled connected topologies (i.e., prime connected homeomorphism classes) on n points.

The programs for A028857, there is no canonical definition to state claims against.
-/

/-! ## A028857.P11557603718267210396

`A233583(or(floor(3/4*5^n), floor(17^(n/2))))`
-/

namespace A028857.P11557603718267210396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor ⌊(3 : ℚ) / 4 * (5 ^ n : ℚ)⌋ ⌊(17 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋).toNat

end

end A028857.P11557603718267210396

/-!
# A028858: Number of prime unlabeled connected T_0 topologies (i.e., prime T_0 connected homeomorphism classes) on n points.

The programs for A028858, there is no canonical definition to state claims against.
-/

/-! ## A028858.P4359156103979093467

`A103826(A003426(2*n+1)*A046022(n+1))`
-/

namespace A028858.P4359156103979093467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103826 (A003426 (2 * n + 1) * A046022 (n + 1)).toNat

end

end A028858.P4359156103979093467

/-!
# A028859: a(n+2) = 2*a(n+1) + 2*a(n); a(0) = 1, a(1) = 3.

The programs for A028859, the canonical program `A028859.P2844454633362135006` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028859 has offset 0).

The definition of A028859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028859.P2844454633362135006

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028859

/-- `2*a(n-1)+2*a(n-2)` -/
def P2844454633362135006.Spec : Prop :=
  ∀ n, (P2844454633362135006.a n : ℤ) = A028859 n

theorem P2844454633362135006.correct : P2844454633362135006.Spec := by
  intro n
  simp only [A028859]

end A028859

/-! ## A028859.P17373957378626021860

`a(n-1)+A052945(n)` with `a(0)=1`
-/

namespace A028859.P17373957378626021860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A052945 n

end

end A028859.P17373957378626021860

namespace A028859

/-- `a(n-1)+A052945(n)` -/
def P17373957378626021860.Spec : Prop :=
  ∀ n, P17373957378626021860.a n = A028859 n

end A028859

/-! ## A028859.P13259830900242913984

`A002605(n+1)+A002605(n)`
-/

namespace A028859.P13259830900242913984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) + A002605 n

end

end A028859.P13259830900242913984

namespace A028859

/-- `A002605(n+1)+A002605(n)` -/
def P13259830900242913984.Spec : Prop :=
  ∀ n, P13259830900242913984.a n = A028859 n

end A028859

/-! ## A028859.P5616005353465103790

`3^n-A186244(n)`
-/

namespace A028859.P5616005353465103790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A186244 n

end

end A028859.P5616005353465103790

namespace A028859

/-- `3^n-A186244(n)` -/
def P5616005353465103790.Spec : Prop :=
  ∀ n, P5616005353465103790.a n = A028859 n

end A028859

/-! ## A028859.P5141829715274463530

`round((sqrt(3)+1)*a(n-1))` with `a(0)=1`
-/

namespace A028859.P5141829715274463530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ))

end

end A028859.P5141829715274463530

namespace A028859

/-- `round((sqrt(3)+1)*a(n-1))` -/
def P5141829715274463530.Spec : Prop :=
  ∀ n, P5141829715274463530.a n = A028859 n

end A028859

/-! ## A028859.P11678945447513547993

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A028859.P11678945447513547993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A028859.P11678945447513547993

namespace A028859

/-- `2*(a(n-1)+a(n-2))` -/
def P11678945447513547993.Spec : Prop :=
  ∀ n, (P11678945447513547993.a n : ℤ) = A028859 n

theorem P11678945447513547993.correct : P11678945447513547993.Spec := by
  intro n
  simp only [A028859, Nat.add_sub_cancel, A028859.P11678945447513547993.a, A028859.P2844454633362135006.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028859

/-! ## A028859.P317766581285317369

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A028859.P317766581285317369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A028859.P317766581285317369

namespace A028859

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P317766581285317369.Spec : Prop :=
  ∀ n, P317766581285317369.a n = A028859 n

end A028859

/-! ## A028859.P3511353449417268253

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A028859.P3511353449417268253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A028859.P3511353449417268253

namespace A028859

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P3511353449417268253.Spec : Prop :=
  ∀ n, P3511353449417268253.a n = A028859 n

end A028859

/-! ## A028859.P13345002779381782158

`2*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A028859.P13345002779381782158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A028859.P13345002779381782158

namespace A028859

/-- `2*(a(n-1)-round(-a(n-2)))` -/
def P13345002779381782158.Spec : Prop :=
  ∀ n, P13345002779381782158.a n = A028859 n

end A028859

/-! ## A028859.P12336727697437661503

`2*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A028859.P12336727697437661503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A028859.P12336727697437661503

namespace A028859

/-- `2*(a(n-1)-(char[1]-a(n-2)))` -/
def P12336727697437661503.Spec : Prop :=
  ∀ n, P12336727697437661503.a n = A028859 n

end A028859

/-! ## A028859.P6842813685563779147

`2-2*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A028859.P6842813685563779147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - 2 * (1 - a (n - 1) - a (n - 2))

end

end A028859.P6842813685563779147

namespace A028859

/-- `2-2*(1-a(n-1)-a(n-2))` -/
def P6842813685563779147.Spec : Prop :=
  ∀ n, P6842813685563779147.a n = A028859 n

end A028859

/-! ## A028859.P18176343978843056784

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=1, a(1)=3`
-/

namespace A028859.P18176343978843056784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A028859.P18176343978843056784

namespace A028859

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P18176343978843056784.Spec : Prop :=
  ∀ n, P18176343978843056784.a n = (A028859 n : ℚ)

end A028859

/-! ## A028859.P14622914275849477928

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A028859.P14622914275849477928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A028859.P14622914275849477928

namespace A028859

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P14622914275849477928.Spec : Prop :=
  ∀ n, (P14622914275849477928.a n : ℤ) = A028859 n

theorem P14622914275849477928.correct : P14622914275849477928.Spec := by
  intro n
  simp only [A028859, Nat.add_sub_cancel, A028859.P14622914275849477928.a, A028859.P2844454633362135006.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028859

/-! ## A028859.P13812822405680829588

`∑[A052945(n)]`
-/

namespace A028859.P13812822405680829588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028859.P13812822405680829588

namespace A028859

/-- `∑[A052945(n)]` -/
def P13812822405680829588.Spec : Prop :=
  ∀ n, P13812822405680829588.a n = A028859 n

end A028859

/-! ## A028859.P16867497854580406456

`A005666(n)+1`
-/

namespace A028859.P16867497854580406456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n + 1

end

end A028859.P16867497854580406456

namespace A028859

/-- `A005666(n)+1` -/
def P16867497854580406456.Spec : Prop :=
  ∀ n, P16867497854580406456.a n = A028859 n

end A028859

/-! ## A028859.P9812582384697432866

`A155020(n+1)`
-/

namespace A028859.P9812582384697432866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 1)

end

end A028859.P9812582384697432866

namespace A028859

/-- `A155020(n+1)` -/
def P9812582384697432866.Spec : Prop :=
  ∀ n, P9812582384697432866.a n = A028859 n

end A028859

/-! ## A028859.P2010240251203186805

`A038508(n+1)-2^n`
-/

namespace A028859.P2010240251203186805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 (n + 1) - (2 ^ n : ℤ)

end

end A028859.P2010240251203186805

namespace A028859

/-- `A038508(n+1)-2^n` -/
def P2010240251203186805.Spec : Prop :=
  ∀ n, P2010240251203186805.a n = A028859 n

end A028859

/-! ## A028859.P16908026317380361097

`A080040(n)+A028860(n)`
-/

namespace A028859.P16908026317380361097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n + A028860 n

end

end A028859.P16908026317380361097

namespace A028859

/-- `A080040(n)+A028860(n)` -/
def P16908026317380361097.Spec : Prop :=
  ∀ n, P16908026317380361097.a n = A028859 n

end A028859

/-! ## A028859.P15578209832617382828

`A002605(n)+∑[A026150(n)]`
-/

namespace A028859.P15578209832617382828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028859.P15578209832617382828

namespace A028859

/-- `A002605(n)+∑[A026150(n)]` -/
def P15578209832617382828.Spec : Prop :=
  ∀ n, P15578209832617382828.a n = A028859 n

end A028859

/-!
# A028860: a(n+2) = 2*a(n+1) + 2*a(n); a(0) = -1, a(1) = 1.

The programs for A028860, the canonical program `A028860.P5485938680263245250` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028860 has offset 0).

The definition of A028860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028860.P5485938680263245250

`2*a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028860

/-- `2*a(n-1)+2*a(n-2)` -/
def P5485938680263245250.Spec : Prop :=
  ∀ n, P5485938680263245250.a n = A028860 n

theorem P5485938680263245250.correct : P5485938680263245250.Spec := by
  intro n
  simp only [A028860]

end A028860

/-! ## A028860.P3477255451750352995

`2*(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=1`
-/

namespace A028860.P3477255451750352995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A028860.P3477255451750352995

namespace A028860

/-- `2*(a(n-1)+a(n-2))` -/
def P3477255451750352995.Spec : Prop :=
  ∀ n, P3477255451750352995.a n = A028860 n

theorem P3477255451750352995.correct : P3477255451750352995.Spec := by
  intro n
  simp only [A028860, Nat.add_sub_cancel, A028860.P3477255451750352995.a, A028860.P5485938680263245250.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028860

/-! ## A028860.P14612860620511211914

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=-1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A028860.P14612860620511211914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A028860.P14612860620511211914

namespace A028860

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P14612860620511211914.Spec : Prop :=
  ∀ n, P14612860620511211914.a n = A028860 n

theorem P14612860620511211914.correct : P14612860620511211914.Spec := by
  intro n
  simp only [A028860, Nat.add_sub_cancel, A028860.P14612860620511211914.a, A028860.P5485938680263245250.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028860

/-! ## A028860.P6947997559954006612

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=-1, a(1)=1`
-/

namespace A028860.P6947997559954006612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A028860.P6947997559954006612

namespace A028860

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P6947997559954006612.Spec : Prop :=
  ∀ n, P6947997559954006612.a n = A028860 n

theorem P6947997559954006612.correct : P6947997559954006612.Spec := by
  intro n
  simp only [A028860, Nat.add_sub_cancel, A028860.P6947997559954006612.a, A028860.P5485938680263245250.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028860

/-! ## A028860.P754626018358573569

`A028859(n)-A080040(n)`
-/

namespace A028860.P754626018358573569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - A080040 n

end

end A028860.P754626018358573569

namespace A028860

/-- `A028859(n)-A080040(n)` -/
def P754626018358573569.Spec : Prop :=
  ∀ n, P754626018358573569.a n = A028860 n

end A028860

/-! ## A028860.P13898631451052268214

`A083337(n)-∑[A026150(n)]`
-/

namespace A028860.P13898631451052268214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028860.P13898631451052268214

namespace A028860

/-- `A083337(n)-∑[A026150(n)]` -/
def P13898631451052268214.Spec : Prop :=
  ∀ n, P13898631451052268214.a n = A028860 n

end A028860

/-! ## A028860.P2753767408960346045

`∑[A052945(n)]-A080040(n)`
-/

namespace A028860.P2753767408960346045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080040 n

end

end A028860.P2753767408960346045

namespace A028860

/-- `∑[A052945(n)]-A080040(n)` -/
def P2753767408960346045.Spec : Prop :=
  ∀ n, P2753767408960346045.a n = A028860 n

end A028860

/-! ## A028860.P7065093760908199862

`Δ[A052948(n)-A002605(n)]`
-/

namespace A028860.P7065093760908199862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n - A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028860.P7065093760908199862

namespace A028860

/-- `Δ[A052948(n)-A002605(n)]` -/
def P7065093760908199862.Spec : Prop :=
  ∀ n, P7065093760908199862.a n = A028860 n

end A028860

/-! ## A028860.P5543983364167504038

`Δ[A052948(n)]-A026150(n)`
-/

namespace A028860.P5543983364167504038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026150 n

end

end A028860.P5543983364167504038

namespace A028860

/-- `Δ[A052948(n)]-A026150(n)` -/
def P5543983364167504038.Spec : Prop :=
  ∀ n, P5543983364167504038.a n = A028860 n

end A028860

/-! ## A028860.P9913376347260205056

`A083337(n)-A002605(n+1)`
-/

namespace A028860.P9913376347260205056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - A002605 (n + 1)

end

end A028860.P9913376347260205056

namespace A028860

/-- `A083337(n)-A002605(n+1)` -/
def P9913376347260205056.Spec : Prop :=
  ∀ n, P9913376347260205056.a n = A028860 n

end A028860

/-! ## A028860.P6681462953307295684

`A083337(n)-(A005665(n)+1)`
-/

namespace A028860.P6681462953307295684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - (A005665 n + 1)

end

end A028860.P6681462953307295684

namespace A028860

/-- `A083337(n)-(A005665(n)+1)` -/
def P6681462953307295684.Spec : Prop :=
  ∀ n, P6681462953307295684.a n = A028860 n

end A028860

/-! ## A028860.P7552770382212521509

`A108898(n)+1-A026150(n)`
-/

namespace A028860.P7552770382212521509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + (1 - A026150 n)

end

end A028860.P7552770382212521509

namespace A028860

/-- `A108898(n)+1-A026150(n)` -/
def P7552770382212521509.Spec : Prop :=
  ∀ n, P7552770382212521509.a n = A028860 n

end A028860

/-! ## A028860.P3837159850443615317

`A155020(n+1)-A080040(n)`
-/

namespace A028860.P3837159850443615317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 1) - A080040 n

end

end A028860.P3837159850443615317

namespace A028860

/-- `A155020(n+1)-A080040(n)` -/
def P3837159850443615317.Spec : Prop :=
  ∀ n, P3837159850443615317.a n = A028860 n

end A028860

/-! ## A028860.P10449858523553873997

`A293007(n+1)-A026150(n)`
-/

namespace A028860.P10449858523553873997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1) - A026150 n

end

end A028860.P10449858523553873997

namespace A028860

/-- `A293007(n+1)-A026150(n)` -/
def P10449858523553873997.Spec : Prop :=
  ∀ n, P10449858523553873997.a n = A028860 n

end A028860

/-! ## A028860.P6625399052172026592

`A038508(n+1)-A287594(n)`
-/

namespace A028860.P6625399052172026592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038508 (n + 1) - A287594 n

end

end A028860.P6625399052172026592

namespace A028860

/-- `A038508(n+1)-A287594(n)` -/
def P6625399052172026592.Spec : Prop :=
  ∀ n, P6625399052172026592.a n = A028860 n

end A028860

/-! ## A028860.P6994683103480786583

`2*A002605(n)-A026150(n)`
-/

namespace A028860.P6994683103480786583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002605 n - A026150 n

end

end A028860.P6994683103480786583

namespace A028860

/-- `2*A002605(n)-A026150(n)` -/
def P6994683103480786583.Spec : Prop :=
  ∀ n, P6994683103480786583.a n = A028860 n

end A028860

/-! ## A028860.P8173406726498952657

`A028859(n)-2*A026150(n)`
-/

namespace A028860.P8173406726498952657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - 2 * A026150 n

end

end A028860.P8173406726498952657

namespace A028860

/-- `A028859(n)-2*A026150(n)` -/
def P8173406726498952657.Spec : Prop :=
  ∀ n, P8173406726498952657.a n = A028860 n

end A028860

/-! ## A028860.P14042829565785183399

`A108898(n)+1-Δ[A002605(n)]`
-/

namespace A028860.P14042829565785183399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + (1 - (f1 (n + 1) - f1 n))

end

end A028860.P14042829565785183399

namespace A028860

/-- `A108898(n)+1-Δ[A002605(n)]` -/
def P14042829565785183399.Spec : Prop :=
  ∀ n, P14042829565785183399.a n = A028860 n

end A028860

/-! ## A028860.P9025180128980822830

`A083337(n)-∑[A080040(n)/2]`
-/

namespace A028860.P9025180128980822830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083337 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028860.P9025180128980822830

namespace A028860

/-- `A083337(n)-∑[A080040(n)/2]` -/
def P9025180128980822830.Spec : Prop :=
  ∀ n, P9025180128980822830.a n = (A028860 n : ℚ)

end A028860

/-!
# A028861: a(n) = floor( tan(Fibonacci(n)) ).

The programs for A028861, the canonical program `A028861.P13692793023123417358` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028861 has offset 0).

The definition of A028861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028861.P13692793023123417358

`floor(tan(A000045(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028861

/-- `floor(tan(A000045(n)))` -/
def P13692793023123417358.Spec : Prop :=
  ∀ n, P13692793023123417358.a n = A028861 n

theorem P13692793023123417358.correct : P13692793023123417358.Spec := by
  intro n
  simp only [A028861]

end A028861

/-! ## A028861.P14041219583281087358

`floor(tan(abs(A236191(n))))`
-/

namespace A028861.P14041219583281087358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (|A236191 n| : ℝ)⌋

end

end A028861.P14041219583281087358

namespace A028861

/-- `floor(tan(abs(A236191(n))))` -/
def P14041219583281087358.Spec : Prop :=
  ∀ n, P14041219583281087358.a n = A028861 n

end A028861

/-! ## A028861.P9673301596730997582

`floor(tan(A212804(n+1)))`
-/

namespace A028861.P9673301596730997582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A212804 (n + 1) : ℝ)⌋

end

end A028861.P9673301596730997582

namespace A028861

/-- `floor(tan(A212804(n+1)))` -/
def P9673301596730997582.Spec : Prop :=
  ∀ n, P9673301596730997582.a n = A028861 n

end A028861

/-! ## A028861.P16189506769143407200

`floor(tan(A157726(n)-3))`
-/

namespace A028861.P16189506769143407200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A157726 n - 3 : ℝ)⌋

end

end A028861.P16189506769143407200

namespace A028861

/-- `floor(tan(A157726(n)-3))` -/
def P16189506769143407200.Spec : Prop :=
  ∀ n, P16189506769143407200.a n = A028861 n

end A028861

/-! ## A028861.P15171455000443639701

`floor(tan(A002062(n)-n))`
-/

namespace A028861.P15171455000443639701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A002062 n - (n : ℤ) : ℝ)⌋

end

end A028861.P15171455000443639701

namespace A028861

/-- `floor(tan(A002062(n)-n))` -/
def P15171455000443639701.Spec : Prop :=
  ∀ n, P15171455000443639701.a n = A028861 n

end A028861

/-! ## A028861.P4268829927226746941

`floor(tan(Δ[a(n-2)+a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A028861.P4268829927226746941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A028861.P4268829927226746941

namespace A028861

/-- `floor(tan(Δ[a(n-2)+a(n-1)]))` -/
def P4268829927226746941.Spec : Prop :=
  ∀ n, P4268829927226746941.a n = A028861 n

end A028861

/-! ## A028861.P18138805884776469922

`floor(tan(Δ[A000071(n+1)]))`
-/

namespace A028861.P18138805884776469922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028861.P18138805884776469922

namespace A028861

/-- `floor(tan(Δ[A000071(n+1)]))` -/
def P18138805884776469922.Spec : Prop :=
  ∀ n, P18138805884776469922.a n = A028861 n

end A028861

/-! ## A028861.P17481121232128508099

`floor(tan(sqrt(A007598(n))))`
-/

namespace A028861.P17481121232128508099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.sqrt (A007598 n : ℝ))⌋

end

end A028861.P17481121232128508099

namespace A028861

/-- `floor(tan(sqrt(A007598(n))))` -/
def P17481121232128508099.Spec : Prop :=
  ∀ n, P17481121232128508099.a n = A028861 n

end A028861

/-! ## A028861.P11010084316499802657

`floor(tan(A039913(∑[n])))`
-/

namespace A028861.P11010084316499802657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A039913 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A028861.P11010084316499802657

namespace A028861

/-- `floor(tan(A039913(∑[n])))` -/
def P11010084316499802657.Spec : Prop :=
  ∀ n, P11010084316499802657.a n = A028861 n

end A028861

/-!
# A028862: [ sin(Fibonacci(n)) ].

The programs for A028862, the canonical program `A028862.P6686684322383971846` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028862 has offset 0).

The definition of A028862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028862.P6686684322383971846

`floor(sin(A000045(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028862

/-- `floor(sin(A000045(n)))` -/
def P6686684322383971846.Spec : Prop :=
  ∀ n, P6686684322383971846.a n = A028862 n

theorem P6686684322383971846.correct : P6686684322383971846.Spec := by
  intro n
  simp only [A028862]

end A028862

/-! ## A028862.P10661328301108192621

`floor(sin(abs(A236191(n))))`
-/

namespace A028862.P10661328301108192621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (|A236191 n| : ℝ)⌋

end

end A028862.P10661328301108192621

namespace A028862

/-- `floor(sin(abs(A236191(n))))` -/
def P10661328301108192621.Spec : Prop :=
  ∀ n, P10661328301108192621.a n = A028862 n

end A028862

/-! ## A028862.P6072942181542189641

`floor(sin(A001611(n)-1))`
-/

namespace A028862.P6072942181542189641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (A001611 n - 1 : ℝ)⌋

end

end A028862.P6072942181542189641

namespace A028862

/-- `floor(sin(A001611(n)-1))` -/
def P6072942181542189641.Spec : Prop :=
  ∀ n, P6072942181542189641.a n = A028862 n

end A028862

/-! ## A028862.P5810101381880257104

`floor(sin(A103609(2*n)))`
-/

namespace A028862.P5810101381880257104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (A103609 (2 * n) : ℝ)⌋

end

end A028862.P5810101381880257104

namespace A028862

/-- `floor(sin(A103609(2*n)))` -/
def P5810101381880257104.Spec : Prop :=
  ∀ n, P5810101381880257104.a n = A028862 n

end A028862

/-! ## A028862.P5212386126267769788

`floor(sin(Δ[a(n-2)+a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A028862.P5212386126267769788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌋

end

end A028862.P5212386126267769788

namespace A028862

/-- `floor(sin(Δ[a(n-2)+a(n-1)]))` -/
def P5212386126267769788.Spec : Prop :=
  ∀ n, P5212386126267769788.a n = A028862 n

end A028862

/-! ## A028862.P11016809233856221355

`floor(sin(Δ[A000071(n+1)]))`
-/

namespace A028862.P11016809233856221355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028862.P11016809233856221355

namespace A028862

/-- `floor(sin(Δ[A000071(n+1)]))` -/
def P11016809233856221355.Spec : Prop :=
  ∀ n, P11016809233856221355.a n = A028862 n

end A028862

/-! ## A028862.P7118087189520308176

`-ceil(sin(Δ[-A000045(n+1)]))`
-/

namespace A028862.P7118087189520308176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A028862.P7118087189520308176

namespace A028862

/-- `-ceil(sin(Δ[-A000045(n+1)]))` -/
def P7118087189520308176.Spec : Prop :=
  ∀ n, P7118087189520308176.a n = A028862 n

end A028862

/-! ## A028862.P14220579997485342560

`floor(sin(A000071(n+2)-A000071(n+1)))`
-/

namespace A028862.P14220579997485342560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (A000071 (n + 2) - A000071 (n + 1) : ℝ)⌋

end

end A028862.P14220579997485342560

namespace A028862

/-- `floor(sin(A000071(n+2)-A000071(n+1)))` -/
def P14220579997485342560.Spec : Prop :=
  ∀ n, P14220579997485342560.a n = A028862 n

end A028862

/-! ## A028862.P3013863535419592488

`floor(sin(A022087(n)/4))`
-/

namespace A028862.P3013863535419592488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin ((A022087 n : ℚ) / 4 : ℝ)⌋

end

end A028862.P3013863535419592488

namespace A028862

/-- `floor(sin(A022087(n)/4))` -/
def P3013863535419592488.Spec : Prop :=
  ∀ n, P3013863535419592488.a n = A028862 n

end A028862

/-! ## A028862.P8428484546493663227

`floor(sin(sqrt(A007598(n))))`
-/

namespace A028862.P8428484546493663227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (Real.sqrt (A007598 n : ℝ))⌋

end

end A028862.P8428484546493663227

namespace A028862

/-- `floor(sin(sqrt(A007598(n))))` -/
def P8428484546493663227.Spec : Prop :=
  ∀ n, P8428484546493663227.a n = A028862 n

end A028862

/-!
# A028863: [ cos(Fibonacci(n)) ].

The programs for A028863, the canonical program `A028863.P15688465033488288216` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028863 has offset 0).

The definition of A028863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028863.P15688465033488288216

`floor(cos(Δ[a(n-2)-a(n-1)]))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028863

/-- `floor(cos(Δ[a(n-2)-a(n-1)]))` -/
def P15688465033488288216.Spec : Prop :=
  ∀ n, P15688465033488288216.a n = A028863 n

theorem P15688465033488288216.correct : P15688465033488288216.Spec := by
  intro n
  simp only [A028863]

end A028863

/-! ## A028863.P1304113363746692028

`floor(cos(A000045(n)))`
-/

namespace A028863.P1304113363746692028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A000045 n : ℝ)⌋

end

end A028863.P1304113363746692028

namespace A028863

/-- `floor(cos(A000045(n)))` -/
def P1304113363746692028.Spec : Prop :=
  ∀ n, P1304113363746692028.a n = A028863 n

end A028863

/-! ## A028863.P9131608191402313700

`floor(cos(A236191(n)))`
-/

namespace A028863.P9131608191402313700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A236191 n : ℝ)⌋

end

end A028863.P9131608191402313700

namespace A028863

/-- `floor(cos(A236191(n)))` -/
def P9131608191402313700.Spec : Prop :=
  ∀ n, P9131608191402313700.a n = A028863 n

end A028863

/-! ## A028863.P4744321255280667917

`floor(cos(A212804(n+1)))`
-/

namespace A028863.P4744321255280667917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A212804 (n + 1) : ℝ)⌋

end

end A028863.P4744321255280667917

namespace A028863

/-- `floor(cos(A212804(n+1)))` -/
def P4744321255280667917.Spec : Prop :=
  ∀ n, P4744321255280667917.a n = A028863 n

end A028863

/-! ## A028863.P12574635281257911770

`floor(cos(1-A001611(n)))`
-/

namespace A028863.P12574635281257911770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 - A001611 n : ℝ)⌋

end

end A028863.P12574635281257911770

namespace A028863

/-- `floor(cos(1-A001611(n)))` -/
def P12574635281257911770.Spec : Prop :=
  ∀ n, P12574635281257911770.a n = A028863 n

end A028863

/-! ## A028863.P12533060941239398319

`floor(cos(Δ[A000071(n+1)]))`
-/

namespace A028863.P12533060941239398319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028863.P12533060941239398319

namespace A028863

/-- `floor(cos(Δ[A000071(n+1)]))` -/
def P12533060941239398319.Spec : Prop :=
  ∀ n, P12533060941239398319.a n = A028863 n

end A028863

/-! ## A028863.P12999586876375472726

`floor(cos(Δ[A337879(3*n+2)]))`
-/

namespace A028863.P12999586876375472726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337879 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028863.P12999586876375472726

namespace A028863

/-- `floor(cos(Δ[A337879(3*n+2)]))` -/
def P12999586876375472726.Spec : Prop :=
  ∀ n, P12999586876375472726.a n = A028863 n

end A028863

/-! ## A028863.P6709399110628223211

`floor(cos(A000108(n)-A263986(n)))`
-/

namespace A028863.P6709399110628223211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A000108 n - A263986 n : ℝ)⌋

end

end A028863.P6709399110628223211

namespace A028863

/-- `floor(cos(A000108(n)-A263986(n)))` -/
def P6709399110628223211.Spec : Prop :=
  ∀ n, P6709399110628223211.a n = A028863 n

end A028863

/-! ## A028863.P2935169872073173498

`floor(cos(A028304(2*n)-A263986(n)))`
-/

namespace A028863.P2935169872073173498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A028304 (2 * n) - A263986 n : ℝ)⌋

end

end A028863.P2935169872073173498

namespace A028863

/-- `floor(cos(A028304(2*n)-A263986(n)))` -/
def P2935169872073173498.Spec : Prop :=
  ∀ n, P2935169872073173498.a n = A028863 n

end A028863

/-! ## A028863.P7831789833559202154

`floor(cos(A126120(2*n)-A263986(n)))`
-/

namespace A028863.P7831789833559202154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A126120 (2 * n) - A263986 n : ℝ)⌋

end

end A028863.P7831789833559202154

namespace A028863

/-- `floor(cos(A126120(2*n)-A263986(n)))` -/
def P7831789833559202154.Spec : Prop :=
  ∀ n, P7831789833559202154.a n = A028863 n

end A028863

/-! ## A028863.P16923511424196831282

`floor(cos(A000984(n)/(n+1)-A263986(n)))`
-/

namespace A028863.P16923511424196831282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((A000984 n : ℚ) / (n + 1 : ℚ) - (A263986 n : ℚ) : ℝ)⌋

end

end A028863.P16923511424196831282

namespace A028863

/-- `floor(cos(A000984(n)/(n+1)-A263986(n)))` -/
def P16923511424196831282.Spec : Prop :=
  ∀ n, P16923511424196831282.a n = A028863 n

end A028863

/-!
# A028864: Primes with digits in nondecreasing order.

The programs for A028864, there is no canonical definition to state claims against.
-/

/-! ## A028864.P8416088545122323532

`p?[A009994(n+1)]`
-/

namespace A028864.P8416088545122323532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028864.P8416088545122323532

/-! ## A028864.P11427090292104746855

`p?[A032524(n+1)]`
-/

namespace A028864.P11427090292104746855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028864.P11427090292104746855

/-! ## A028864.P8236677458388726020

`p?[A190221(n+1)]`
-/

namespace A028864.P8236677458388726020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028864.P8236677458388726020

/-! ## A028864.P5767000511146593363

`p?[A381509(n+1)]`
-/

namespace A028864.P5767000511146593363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028864.P5767000511146593363

/-! ## A028864.P9101112867217530487

`p?[floor(floor((A052223(n+1)-1)/3)/3)]`
-/

namespace A028864.P9101112867217530487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A052223 (n + 1) - 1 : ℚ) / 3⌋ : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028864.P9101112867217530487

/-! ## A028864.P144670923271905835

`∩[A009994(n+1), A211654(n+1)]`
-/

namespace A028864.P144670923271905835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P144670923271905835

/-! ## A028864.P15524938554386568453

`∩[A211654(n+1), A381509(n+1)]`
-/

namespace A028864.P15524938554386568453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P15524938554386568453

/-! ## A028864.P11189983868102612552

`∩[A009994(n+1), A052085(n+1)]`
-/

namespace A028864.P11189983868102612552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P11189983868102612552

/-! ## A028864.P4244811051509489857

`∩[A052085(n+1), A381509(n+1)]`
-/

namespace A028864.P4244811051509489857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P4244811051509489857

/-! ## A028864.P18287955602640008245

`∩[A038618(n+1), A179239(n)]`
-/

namespace A028864.P18287955602640008245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P18287955602640008245

/-! ## A028864.P14016028190759264743

`∩[A009994(n+1), A038618(n+1)]`
-/

namespace A028864.P14016028190759264743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P14016028190759264743

/-! ## A028864.P660490206245805440

`∩[A032524(n+1), A038618(n+1)]`
-/

namespace A028864.P660490206245805440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P660490206245805440

/-! ## A028864.P2748949631563645528

`∩[A038618(n+1), A381509(n+1)]`
-/

namespace A028864.P2748949631563645528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P2748949631563645528

/-! ## A028864.P10843977741349768126

`∩[A009994(n+1), A040179(n+1)]`
-/

namespace A028864.P10843977741349768126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P10843977741349768126

/-! ## A028864.P17769765755608354390

`∩[A040179(n+1), A381509(n+1)]`
-/

namespace A028864.P17769765755608354390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P17769765755608354390

/-! ## A028864.P7865045863925090730

`∩[A009994(n+1), A040177(n+1)]`
-/

namespace A028864.P7865045863925090730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P7865045863925090730

/-! ## A028864.P13683488380728613794

`∩[A009994(n+1), A040184(n+1)]`
-/

namespace A028864.P13683488380728613794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P13683488380728613794

/-! ## A028864.P18206921844923909418

`∩[A009994(n+1), A040986(n+1)]`
-/

namespace A028864.P18206921844923909418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P18206921844923909418

/-! ## A028864.P17124601567463420277

`∩[A009994(n+1), A040990(n+1)]`
-/

namespace A028864.P17124601567463420277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P17124601567463420277

/-! ## A028864.P3914340020888797815

`∩[A032524(n+1), A040177(n+1)]`
-/

namespace A028864.P3914340020888797815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028864.P3914340020888797815

/-!
# A028865: Primes that when squared gives numbers with digits in nondecreasing order.

The programs for A028865, there is no canonical definition to state claims against.
-/

/-! ## A028865.P12628768562018696001

`sqrt(A028866(n+1))`
-/

namespace A028865.P12628768562018696001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028866 (n + 1) : ℝ)

end

end A028865.P12628768562018696001

/-! ## A028865.P13303265951343667848

`root(A028866(n+1), p?[A278522(n)])`
-/

namespace A028865.P13303265951343667848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278522 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028866 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A028865.P13303265951343667848

/-! ## A028865.P1767490439383681521

`root(A028866(n+1), p?[A060953(n+1)])`
-/

namespace A028865.P1767490439383681521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028866 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A028865.P1767490439383681521

/-! ## A028865.P4362112709976204481

`root(A028866(n+1), A014673(lcm(4, 2*n-1)))`
-/

namespace A028865.P4362112709976204481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028866 (n + 1) : ℝ) ^ (1 / (A014673 (Int.lcm 4 ((2 * n : ℤ) - 1)) : ℝ))

end

end A028865.P4362112709976204481

/-!
# A028866: Squares of primes having digits in nondecreasing order.

The programs for A028866, there is no canonical definition to state claims against.
-/

/-! ## A028866.P3173026482226592921

`A028865(n+1)²`
-/

namespace A028866.P3173026482226592921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028865 (n + 1) ^ 2

end

end A028866.P3173026482226592921

/-! ## A028866.P5396797760275463353

`A028865(n+1)^A000034(or(1, n))`
-/

namespace A028866.P5396797760275463353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028865 (n + 1) : ℚ) ^ (A000034 (Nat.lor 1 n) : ℤ)

end

end A028866.P5396797760275463353

/-! ## A028866.P5992018329636997736

`A028865(n+1)^dr(A028883(n+1))`
-/

namespace A028866.P5992018329636997736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028865 (n + 1) ^ SequenceMachineLib.digitalRoot (A028883 (n + 1))

end

end A028866.P5992018329636997736

/-! ## A028866.P6226588561022132107

`A028865(n+1)^A000005(A028864(n+1))`
-/

namespace A028866.P6226588561022132107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028865 (n + 1) : ℚ) ^ (A000005 (A028864 (n + 1)).toNat : ℤ)

end

end A028866.P6226588561022132107

/-! ## A028866.P5122644707706125771

`A028865(n+1)^A000005(A028867(n+1))`
-/

namespace A028866.P5122644707706125771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028865 (n + 1) : ℚ) ^ (A000005 (A028867 (n + 1)).toNat : ℤ)

end

end A028866.P5122644707706125771

/-!
# A028867: Primes with digits in nonincreasing order.

The programs for A028867, the canonical program `A028867.P8487174198516197309` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028867 has offset 1).

The definition of A028867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028867.P753783314690592632

`p?[A028912(n)]`
-/

namespace A028867.P753783314690592632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028867.P753783314690592632

namespace A028867

/-- `p?[A028912(n)]` -/
def P753783314690592632.Spec : Prop :=
  ∀ n, P753783314690592632.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P8487174198516197309

`p?[A009996(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028867

/-- `p?[A009996(n+1)]` -/
def P8487174198516197309.Spec : Prop :=
  ∀ n, P8487174198516197309.a n = A028867 (n + 1)

theorem P8487174198516197309.correct : P8487174198516197309.Spec := by
  intro n
  simp only [A028867, Nat.add_sub_cancel]

end A028867

/-! ## A028867.P2446171699908843829

`p?[A190220(n+1)]`
-/

namespace A028867.P2446171699908843829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028867.P2446171699908843829

namespace A028867

/-- `p?[A190220(n+1)]` -/
def P2446171699908843829.Spec : Prop :=
  ∀ n, P2446171699908843829.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P10589818177492901523

`∩[A009996(n+1), A211655(n+1)]`
-/

namespace A028867.P10589818177492901523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P10589818177492901523

namespace A028867

/-- `∩[A009996(n+1), A211655(n+1)]` -/
def P10589818177492901523.Spec : Prop :=
  ∀ n, (P10589818177492901523.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P1000279923869349250

`∩[A211655(n+1), A387938(n+1)]`
-/

namespace A028867.P1000279923869349250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P1000279923869349250

namespace A028867

/-- `∩[A211655(n+1), A387938(n+1)]` -/
def P1000279923869349250.Spec : Prop :=
  ∀ n, (P1000279923869349250.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P8014457319422372556

`∩[A211655(n+1), A028912(n)]`
-/

namespace A028867.P8014457319422372556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P8014457319422372556

namespace A028867

/-- `∩[A211655(n+1), A028912(n)]` -/
def P8014457319422372556.Spec : Prop :=
  ∀ n, (P8014457319422372556.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P2625405378928755252

`record[A006530(A028911(n))]`
-/

namespace A028867.P2625405378928755252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028867.P2625405378928755252

namespace A028867

/-- `record[A006530(A028911(n))]` -/
def P2625405378928755252.Spec : Prop :=
  ∀ n, P2625405378928755252.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P11158230240876771460

`filter[A028912(n), A010051(#)]`
-/

namespace A028867.P11158230240876771460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028867.P11158230240876771460

namespace A028867

/-- `filter[A028912(n), A010051(#)]` -/
def P11158230240876771460.Spec : Prop :=
  ∀ n, P11158230240876771460.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P589245211196772880

`record[A006530(A190220(n+2))]`
-/

namespace A028867.P589245211196772880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A190220 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028867.P589245211196772880

namespace A028867

/-- `record[A006530(A190220(n+2))]` -/
def P589245211196772880.Spec : Prop :=
  ∀ n, P589245211196772880.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P15694836888667228845

`record[A006530(A009996(n+3))]`
-/

namespace A028867.P15694836888667228845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A009996 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028867.P15694836888667228845

namespace A028867

/-- `record[A006530(A009996(n+3))]` -/
def P15694836888667228845.Spec : Prop :=
  ∀ n, P15694836888667228845.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P4594878753564896985

`filter[A190220(n+1), A010051(#)]`
-/

namespace A028867.P4594878753564896985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028867.P4594878753564896985

namespace A028867

/-- `filter[A190220(n+1), A010051(#)]` -/
def P4594878753564896985.Spec : Prop :=
  ∀ n, P4594878753564896985.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P15141764725977531146

`filter[A009996(n+2), A010051(#)]`
-/

namespace A028867.P15141764725977531146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028867.P15141764725977531146

namespace A028867

/-- `filter[A009996(n+2), A010051(#)]` -/
def P15141764725977531146.Spec : Prop :=
  ∀ n, P15141764725977531146.a n = A028867 (n + 1)

end A028867

/-! ## A028867.P8519523987295011143

`∩[A000040(n+1), A009996(n+1)]`
-/

namespace A028867.P8519523987295011143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P8519523987295011143

namespace A028867

/-- `∩[A000040(n+1), A009996(n+1)]` -/
def P8519523987295011143.Spec : Prop :=
  ∀ n, (P8519523987295011143.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P15355795701081851005

`∩[A009996(n+1), A038618(n+1)]`
-/

namespace A028867.P15355795701081851005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P15355795701081851005

namespace A028867

/-- `∩[A009996(n+1), A038618(n+1)]` -/
def P15355795701081851005.Spec : Prop :=
  ∀ n, (P15355795701081851005.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P17966101551903967128

`∩[A009996(n+1), A042986(n+1)]`
-/

namespace A028867.P17966101551903967128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P17966101551903967128

namespace A028867

/-- `∩[A009996(n+1), A042986(n+1)]` -/
def P17966101551903967128.Spec : Prop :=
  ∀ n, (P17966101551903967128.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P15595490091359715483

`∩[A009996(n+1), A052085(n+1)]`
-/

namespace A028867.P15595490091359715483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P15595490091359715483

namespace A028867

/-- `∩[A009996(n+1), A052085(n+1)]` -/
def P15595490091359715483.Spec : Prop :=
  ∀ n, (P15595490091359715483.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P825486808760516404

`∩[A009996(n+1), A076805(n+1)]`
-/

namespace A028867.P825486808760516404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P825486808760516404

namespace A028867

/-- `∩[A009996(n+1), A076805(n+1)]` -/
def P825486808760516404.Spec : Prop :=
  ∀ n, (P825486808760516404.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P7566794523334865947

`∩[A009996(n+1), A182140(n+1)]`
-/

namespace A028867.P7566794523334865947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P7566794523334865947

namespace A028867

/-- `∩[A009996(n+1), A182140(n+1)]` -/
def P7566794523334865947.Spec : Prop :=
  ∀ n, (P7566794523334865947.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P2483559748472006048

`∩[A009996(n+1), A371653(n+1)]`
-/

namespace A028867.P2483559748472006048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P2483559748472006048

namespace A028867

/-- `∩[A009996(n+1), A371653(n+1)]` -/
def P2483559748472006048.Spec : Prop :=
  ∀ n, (P2483559748472006048.a n : ℤ) = A028867 (n + 1)

end A028867

/-! ## A028867.P17898561807017704220

`∩[A371653(n+1), A387938(n+1)]`
-/

namespace A028867.P17898561807017704220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028867.P17898561807017704220

namespace A028867

/-- `∩[A371653(n+1), A387938(n+1)]` -/
def P17898561807017704220.Spec : Prop :=
  ∀ n, (P17898561807017704220.a n : ℤ) = A028867 (n + 1)

end A028867

/-!
# A028870: Numbers k such that k^2 - 2 is prime.

The programs for A028870, there is no canonical definition to state claims against.
-/

/-! ## A028870.P5090459803638259901

`sqrt(2+A028871(n+1))`
-/

namespace A028870.P5090459803638259901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 + A028871 (n + 1) : ℝ)

end

end A028870.P5090459803638259901

/-! ## A028870.P16384760933740475372

`A089623(n+1)+1`
-/

namespace A028870.P16384760933740475372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) + 1

end

end A028870.P16384760933740475372

/-! ## A028870.P18286142798747091443

`ceil(sqrt(A028871(n+1)))`
-/

namespace A028870.P18286142798747091443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028871 (n + 1) : ℝ)⌉

end

end A028870.P18286142798747091443

/-! ## A028870.P16489382903007629222

`record[A308085(n+1)+1+n]`
-/

namespace A028870.P16489382903007629222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028870.P16489382903007629222

/-! ## A028870.P10222528993354345321

`record[A308085(A006949(n))+A006949(n)]`
-/

namespace A028870.P10222528993354345321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A006949 n).toNat + A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028870.P10222528993354345321

/-! ## A028870.P10672588545624195781

`record[A308085(A005378(n))+A005378(n)]`
-/

namespace A028870.P10672588545624195781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A005378 n).toNat + A005378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028870.P10672588545624195781

/-! ## A028870.P1031567147662310053

`record[sqrt(A164314(n+2)+2)]`
-/

namespace A028870.P1031567147662310053
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164314 (n + 2) + 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028870.P1031567147662310053

/-! ## A028870.P4802325617717768879

`A020725(A089623(n+1))`
-/

namespace A028870.P4802325617717768879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A089623 (n + 1)).toNat

end

end A028870.P4802325617717768879

/-! ## A028870.P354530289394819245

`record[A308085(A008619(n))+A008619(n)]`
-/

namespace A028870.P354530289394819245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (A008619 n).toNat + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028870.P354530289394819245

/-! ## A028870.P15975172012570350291

`eq[n+1, A056895(2*n+1)]+2`
-/

namespace A028870.P15975172012570350291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056895 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A028870.P15975172012570350291

/-! ## A028870.P4013779406899265843

`ceil(sqrt(p?[n²-2]))`
-/

namespace A028870.P4013779406899265843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A028870.P4013779406899265843

/-! ## A028870.P10008576013441029658

`sqrt(p?[n²-2]+2)`
-/

namespace A028870.P10008576013441029658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℝ)

end

end A028870.P10008576013441029658

/-! ## A028870.P13836716530814856856

`ceil(sqrt(or(2, p?[n*(n+2)-1])))`
-/

namespace A028870.P13836716530814856856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℝ)⌉

end

end A028870.P13836716530814856856

/-! ## A028870.P13407532530436591460

`sqrt(or(2, p?[n*(n+2)-1])+2)`
-/

namespace A028870.P13407532530436591460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 2 : ℝ)

end

end A028870.P13407532530436591460

/-! ## A028870.P6039634216344438873

`floor(sqrt(p?[abs(1-n*(n+2))]+3))`
-/

namespace A028870.P6039634216344438873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n * (n + 2) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3)

end

end A028870.P6039634216344438873

/-! ## A028870.P11839848005188978880

`ceil(sqrt(p?[∑[2*n]+n-1]+1))`
-/

namespace A028870.P11839848005188978880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ)⌉

end

end A028870.P11839848005188978880

/-! ## A028870.P18436535966944103981

`round(sqrt(p?[A181106(n+1)]))`
-/

namespace A028870.P18436535966944103981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A028870.P18436535966944103981

/-! ## A028870.P13069253545128004226

`ceil(sqrt(p?[A005563(n)-1]))+(2*n)%2`
-/

namespace A028870.P13069253545128004226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉ + ((2 * n % 2 : ℕ) : ℤ)

end

end A028870.P13069253545128004226

/-!
# A028871: Primes of the form k^2 - 2.

The programs for A028871, there is no canonical definition to state claims against.
-/

/-! ## A028871.P2843741715652167930

`A028870(n+1)²-2`
-/

namespace A028871.P2843741715652167930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1) ^ 2 - 2

end

end A028871.P2843741715652167930

/-! ## A028871.P13754342234313611651

`(A089623(n+1)+1)²-2`
-/

namespace A028871.P13754342234313611651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089623 (n + 1) + 1) ^ 2 - 2

end

end A028871.P13754342234313611651

/-! ## A028871.P12960027742575251380

`record[A164314(n+2)]`
-/

namespace A028871.P12960027742575251380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028871.P12960027742575251380

/-! ## A028871.P6799543168145934849

`record[or(2, A059772(n+2))]`
-/

namespace A028871.P6799543168145934849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A059772 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028871.P6799543168145934849

/-! ## A028871.P3422253945705673253

`A008865(A028870(n+1))`
-/

namespace A028871.P3422253945705673253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A028870 (n + 1)).toNat

end

end A028871.P3422253945705673253

/-! ## A028871.P15964675540196432598

`A008865(A089623(n+1)+1)`
-/

namespace A028871.P15964675540196432598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A089623 (n + 1) + 1).toNat

end

end A028871.P15964675540196432598

/-! ## A028871.P13384691620967348048

`A000290(A089623(n+1)+1)-2`
-/

namespace A028871.P13384691620967348048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A089623 (n + 1) + 1).toNat - 2

end

end A028871.P13384691620967348048

/-! ## A028871.P18393567457648086757

`∩[A008865(n+1), A099228(n+1)]`
-/

namespace A028871.P18393567457648086757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P18393567457648086757

/-! ## A028871.P4803477648107987284

`∩[A008865(n+1), A113425(n+1)]`
-/

namespace A028871.P4803477648107987284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P4803477648107987284

/-! ## A028871.P9965643153920243828

`∩[A008865(n+1), A179273(n+1)]`
-/

namespace A028871.P9965643153920243828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P9965643153920243828

/-! ## A028871.P4095219390388181823

`∩[A113425(n+1), A179273(n+1)]`
-/

namespace A028871.P4095219390388181823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P4095219390388181823

/-! ## A028871.P2274509769165832460

`∩[A008865(n+1), A344990(n+1)]`
-/

namespace A028871.P2274509769165832460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P2274509769165832460

/-! ## A028871.P18367866387360208156

`2*A000096(A089623(n+1))-A028870(n+1)`
-/

namespace A028871.P18367866387360208156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000096 (A089623 (n + 1)).toNat - A028870 (n + 1)

end

end A028871.P18367866387360208156

/-! ## A028871.P12453647501233852236

`∩[A094786(n+1), A099228(n+1)]`
-/

namespace A028871.P12453647501233852236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P12453647501233852236

/-! ## A028871.P2919106639067226352

`∩[A094786(n+1), A344990(n+1)]`
-/

namespace A028871.P2919106639067226352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P2919106639067226352

/-! ## A028871.P15658805957445918816

`∩[A014616(n+1), A099228(n+1)]`
-/

namespace A028871.P15658805957445918816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P15658805957445918816

/-! ## A028871.P6428469187157368350

`∩[A014616(n+1), A113425(n+1)]`
-/

namespace A028871.P6428469187157368350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P6428469187157368350

/-! ## A028871.P13203209079664623522

`∩[A014616(n+1), A179273(n+1)]`
-/

namespace A028871.P13203209079664623522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P13203209079664623522

/-! ## A028871.P12473592807655189771

`∩[A099228(n+1), A184674(n+1)]`
-/

namespace A028871.P12473592807655189771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P12473592807655189771

/-! ## A028871.P1849278451346389479

`∩[A113425(n+1), A184674(n+1)]`
-/

namespace A028871.P1849278451346389479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028871.P1849278451346389479

/-!
# A028872: a(n) = n^2 - 3.

The programs for A028872, the canonical program `A028872.P3627102065561519303` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028872 has offset 2).

The definition of A028872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028872.P3627102065561519303

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=13`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028872

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3627102065561519303.Spec : Prop :=
  ∀ n, P3627102065561519303.a n = A028872 (n + 2)

theorem P3627102065561519303.correct : P3627102065561519303.Spec := by
  intro n
  simp only [A028872, Nat.add_sub_cancel]

end A028872

/-! ## A028872.P167608689240179094

`(n+2)²-3`
-/

namespace A028872.P167608689240179094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 3

end

end A028872.P167608689240179094

namespace A028872

/-- `(n+2)²-3` -/
def P167608689240179094.Spec : Prop :=
  ∀ n, P167608689240179094.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P5814290455886735846

`record[(2-n)²-3]`
-/

namespace A028872.P5814290455886735846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028872.P5814290455886735846

namespace A028872

/-- `record[(2-n)²-3]` -/
def P5814290455886735846.Spec : Prop :=
  ∀ n, P5814290455886735846.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P16071392422902201909

`∑[a(n-1)+2]` with `a(0)=1, a(1)=5`
-/

namespace A028872.P16071392422902201909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028872.P16071392422902201909

namespace A028872

/-- `∑[a(n-1)+2]` -/
def P16071392422902201909.Spec : Prop :=
  ∀ n, (P16071392422902201909.a n : ℤ) = A028872 (n + 2)

end A028872

/-! ## A028872.P3750255681908770535

`-xor(n*(n+4), -1)`
-/

namespace A028872.P3750255681908770535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * (n + 4) : ℤ) (-1)

end

end A028872.P3750255681908770535

namespace A028872

/-- `-xor(n*(n+4), -1)` -/
def P3750255681908770535.Spec : Prop :=
  ∀ n, P3750255681908770535.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P5901258614467476550

`((n+3)^4)%(n+4)²`
-/

namespace A028872.P5901258614467476550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 4 % (n + 4) ^ 2

end

end A028872.P5901258614467476550

namespace A028872

/-- `((n+3)^4)%(n+4)²` -/
def P5901258614467476550.Spec : Prop :=
  ∀ n, (P5901258614467476550.a n : ℤ) = A028872 (n + 2)

end A028872

/-! ## A028872.P6086578290136633718

`abs(xor(-1, (n+2)²)+4)`
-/

namespace A028872.P6086578290136633718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((n + 2) ^ 2 : ℤ) + 4|

end

end A028872.P6086578290136633718

namespace A028872

/-- `abs(xor(-1, (n+2)²)+4)` -/
def P6086578290136633718.Spec : Prop :=
  ∀ n, P6086578290136633718.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P3846250490507302277

`-(xor(-1, (n+2)²)+4)`
-/

namespace A028872.P3846250490507302277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) ((n + 2) ^ 2 : ℤ) + 4)

end

end A028872.P3846250490507302277

namespace A028872

/-- `-(xor(-1, (n+2)²)+4)` -/
def P3846250490507302277.Spec : Prop :=
  ∀ n, P3846250490507302277.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P12271469073819648518

`-or(2, ∑[-(2*n+3)])`
-/

namespace A028872.P12271469073819648518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028872.P12271469073819648518

namespace A028872

/-- `-or(2, ∑[-(2*n+3)])` -/
def P12271469073819648518.Spec : Prop :=
  ∀ n, P12271469073819648518.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P5243902183190003835

`∑[record[gcd(2, n+1)²+n]]`
-/

namespace A028872.P5243902183190003835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028872.P5243902183190003835

namespace A028872

/-- `∑[record[gcd(2, n+1)²+n]]` -/
def P5243902183190003835.Spec : Prop :=
  ∀ n, (P5243902183190003835.a n : ℤ) = A028872 (n + 2)

end A028872

/-! ## A028872.P12723683710594252335

`abs(or(2, -(n+1)*(n+3)))`
-/

namespace A028872.P12723683710594252335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-((n + 1) * (n + 3) : ℤ))|

end

end A028872.P12723683710594252335

namespace A028872

/-- `abs(or(2, -(n+1)*(n+3)))` -/
def P12723683710594252335.Spec : Prop :=
  ∀ n, P12723683710594252335.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P6648750270239056397

`abs(2-record[(n-1)*(n-3)])`
-/

namespace A028872.P6648750270239056397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A028872.P6648750270239056397

namespace A028872

/-- `abs(2-record[(n-1)*(n-3)])` -/
def P6648750270239056397.Spec : Prop :=
  ∀ n, P6648750270239056397.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P14713720778387091596

`floor((n+1)*(n+3-acot(n)))`
-/

namespace A028872.P14713720778387091596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((n + 3 : ℝ) - SequenceMachineLib.acot (n : ℝ))⌋

end

end A028872.P14713720778387091596

namespace A028872

/-- `floor((n+1)*(n+3-acot(n)))` -/
def P14713720778387091596.Spec : Prop :=
  ∀ n, P14713720778387091596.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P12929316142350492558

`floor((n+1)/acot(n+3)-ϕ)`
-/

namespace A028872.P12929316142350492558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) - Real.goldenRatio⌋

end

end A028872.P12929316142350492558

namespace A028872

/-- `floor((n+1)/acot(n+3)-ϕ)` -/
def P12929316142350492558.Spec : Prop :=
  ∀ n, P12929316142350492558.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P13116534167513233898

`round(n/acot(n+3)+n+1)`
-/

namespace A028872.P13116534167513233898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + (n + 1 : ℝ))

end

end A028872.P13116534167513233898

namespace A028872

/-- `round(n/acot(n+3)+n+1)` -/
def P13116534167513233898.Spec : Prop :=
  ∀ n, P13116534167513233898.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P511345018690810383

`abs(2*C(n+2, 2)+n-1)`
-/

namespace A028872.P511345018690810383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 1)|

end

end A028872.P511345018690810383

namespace A028872

/-- `abs(2*C(n+2, 2)+n-1)` -/
def P511345018690810383.Spec : Prop :=
  ∀ n, P511345018690810383.a n = A028872 (n + 2)

end A028872

/-! ## A028872.P12113083404079432332

`lcm(5, (n+1)²+2*n)/5`
-/

namespace A028872.P12113083404079432332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 ((n + 1) ^ 2 + 2 * n) : ℚ) / 5

end

end A028872.P12113083404079432332

namespace A028872

/-- `lcm(5, (n+1)²+2*n)/5` -/
def P12113083404079432332.Spec : Prop :=
  ∀ n, P12113083404079432332.a n = (A028872 (n + 2) : ℚ)

end A028872

/-! ## A028872.P9072963498028795392

`abs(2*n+a(n-1)+3)` with `a(0)=1`
-/

namespace A028872.P9072963498028795392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + 3)

end

end A028872.P9072963498028795392

namespace A028872

/-- `abs(2*n+a(n-1)+3)` -/
def P9072963498028795392.Spec : Prop :=
  ∀ n, (P9072963498028795392.a n : ℤ) = A028872 (n + 2)

end A028872

/-!
# A028873: Numbers k such that k^2 - 3 is prime.

The programs for A028873, there is no canonical definition to state claims against.
-/

/-! ## A028873.P6363870938968291667

`sqrt(A028874(n+1)+3)`
-/

namespace A028873.P6363870938968291667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028874 (n + 1) + 3 : ℝ)

end

end A028873.P6363870938968291667

/-! ## A028873.P10559508870103881015

`A162860(n+1)+2`
-/

namespace A028873.P10559508870103881015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162860 (n + 1) + 2

end

end A028873.P10559508870103881015

/-! ## A028873.P16400919273809933445

`2*A083022(n+1)`
-/

namespace A028873.P16400919273809933445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083022 (n + 1)

end

end A028873.P16400919273809933445

/-! ## A028873.P7513943857581791153

`ceil(sqrt(A028874(n+1)))`
-/

namespace A028873.P7513943857581791153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028874 (n + 1) : ℝ)⌉

end

end A028873.P7513943857581791153

/-! ## A028873.P3351768682445256143

`A083022(A000027(n+1))+A083022(n+1)`
-/

namespace A028873.P3351768682445256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083022 (A000027 (n + 1)).toNat + A083022 (n + 1)

end

end A028873.P3351768682445256143

/-! ## A028873.P7548132190843812553

`A083022(gcd(n+1, A219209(n+1)))+A083022(n+1)`
-/

namespace A028873.P7548132190843812553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083022 (Int.gcd (n + 1 : ℤ) (A219209 (n + 1))) + A083022 (n + 1)

end

end A028873.P7548132190843812553

/-! ## A028873.P3837174018583948523

`A004277(A083022(n+1))`
-/

namespace A028873.P3837174018583948523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A083022 (n + 1)).toNat

end

end A028873.P3837174018583948523

/-! ## A028873.P13514259667701097927

`A004275(A083022(n+1)+1)`
-/

namespace A028873.P13514259667701097927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A083022 (n + 1) + 1).toNat

end

end A028873.P13514259667701097927

/-! ## A028873.P2066671915883998389

`A005843(A083022(1-(n-A005843(n))))`
-/

namespace A028873.P2066671915883998389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083022 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A028873.P2066671915883998389

/-! ## A028873.P2397794548267598615

`A009056(A162860(n+1))`
-/

namespace A028873.P2397794548267598615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A162860 (n + 1)).toNat

end

end A028873.P2397794548267598615

/-! ## A028873.P5258020198676132438

`A004151(A083022(n+1)+A083022(n+1)+1)-1`
-/

namespace A028873.P5258020198676132438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A083022 (n + 1) + A083022 (n + 1) + 1).toNat - 1

end

end A028873.P5258020198676132438

/-! ## A028873.P7714539975729647897

`ceil(sqrt(p?[n²-3]))`
-/

namespace A028873.P7714539975729647897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A028873.P7714539975729647897

/-! ## A028873.P13790894934964964803

`round(sqrt(p?[n²-3]))`
-/

namespace A028873.P13790894934964964803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A028873.P13790894934964964803

/-! ## A028873.P12345798160632950698

`sqrt(p?[n²-3]+3)`
-/

namespace A028873.P12345798160632950698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℝ)

end

end A028873.P12345798160632950698

/-! ## A028873.P12870583021358228074

`ceil(sqrt(p?[(n+2)*(n-2)+1]+2))`
-/

namespace A028873.P12870583021358228074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℝ)⌉

end

end A028873.P12870583021358228074

/-!
# A028874: Primes of form k^2 - 3.

The programs for A028874, there is no canonical definition to state claims against.
-/

/-! ## A028874.P7935375394448893096

`A028873(n+1)²-3`
-/

namespace A028874.P7935375394448893096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1) ^ 2 - 3

end

end A028874.P7935375394448893096

/-! ## A028874.P1904982059499947256

`A082109(A083022(n+1)-1)`
-/

namespace A028874.P1904982059499947256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (A083022 (n + 1) - 1).toNat

end

end A028874.P1904982059499947256

/-! ## A028874.P12858138083232255629

`A082109(A162860(n+1)/2)`
-/

namespace A028874.P12858138083232255629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (SequenceMachineLib.roundAway ((A162860 (n + 1) : ℚ) / 2)).toNat

end

end A028874.P12858138083232255629

/-! ## A028874.P889409118987300626

`A082109((A038600(n+1)+A028873(n+1))%A038599(n+1)/2)`
-/

namespace A028874.P889409118987300626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (SequenceMachineLib.roundAway ((Int.tmod (A038600 (n + 1) + A028873 (n + 1)) (A038599 (n + 1)) : ℚ) / 2)).toNat

end

end A028874.P889409118987300626

/-! ## A028874.P17340192869960725325

`∩[(n+2)²-3, A053001(n+3)]`
-/

namespace A028874.P17340192869960725325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P17340192869960725325

/-! ## A028874.P2446099823059488562

`A028872(A028873(n+1))`
-/

namespace A028874.P2446099823059488562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028873 (n + 1)).toNat

end

end A028874.P2446099823059488562

/-! ## A028874.P5972230628591738897

`A245906(A162860(n+1))`
-/

namespace A028874.P5972230628591738897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245906 (A162860 (n + 1)).toNat

end

end A028874.P5972230628591738897

/-! ## A028874.P3072619404110774844

`A028872(A162860(n+1)+2)`
-/

namespace A028874.P3072619404110774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A162860 (n + 1) + 2).toNat

end

end A028874.P3072619404110774844

/-! ## A028874.P18423055301112538621

`A028872(2*A083022(n+1))`
-/

namespace A028874.P18423055301112538621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (2 * A083022 (n + 1)).toNat

end

end A028874.P18423055301112538621

/-! ## A028874.P10616489912632595423

`∩[A053001(n+2), A082109(n)]`
-/

namespace A028874.P10616489912632595423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P10616489912632595423

/-! ## A028874.P14854576849783095219

`∩[A053001(n+2), A267874(n)]`
-/

namespace A028874.P14854576849783095219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P14854576849783095219

/-! ## A028874.P5329758417275185260

`A053001(A028873(2*n+1-n))`
-/

namespace A028874.P5329758417275185260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A028873 (2 * n + 1 - n)).toNat

end

end A028874.P5329758417275185260

/-! ## A028874.P14204386464390764667

`A028872(A083022(n+1)+A083022(n+1))`
-/

namespace A028874.P14204386464390764667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A083022 (n + 1) + A083022 (n + 1)).toNat

end

end A028874.P14204386464390764667

/-! ## A028874.P9027318977116388695

`∩[A379154(n+1), A082109(n)]`
-/

namespace A028874.P9027318977116388695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P9027318977116388695

/-! ## A028874.P5861758733823501845

`∩[A379154(n+1), A267874(n)]`
-/

namespace A028874.P5861758733823501845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P5861758733823501845

/-! ## A028874.P392503042773819589

`∩[A123968(n+1), A379154(n+1)]`
-/

namespace A028874.P392503042773819589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P392503042773819589

/-! ## A028874.P9174010487489875493

`∩[A245906(n+1), A379154(n+1)]`
-/

namespace A028874.P9174010487489875493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P9174010487489875493

/-! ## A028874.P5420317845404763062

`∩[A292116(n+1), A379154(n+1)]`
-/

namespace A028874.P5420317845404763062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P5420317845404763062

/-! ## A028874.P14177690003032808879

`∩[A379154(n+1), A028872(n+2)]`
-/

namespace A028874.P14177690003032808879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P14177690003032808879

/-! ## A028874.P14342187708763393423

`∩[A379154(n+1), A079524(n)]`
-/

namespace A028874.P14342187708763393423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028874.P14342187708763393423

/-!
# A028875: a(n) = n^2 - 5.

The programs for A028875, the canonical program `A028875.P8156869436290036666` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028875 has offset 0).

The definition of A028875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-5` (program `A028875.P8156869436290036666`, by `A028875.P8156869436290036666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028875.P8156869436290036666

`n²-5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028875

/-- `n²-5` -/
def P8156869436290036666.Spec : Prop :=
  ∀ n, P8156869436290036666.a n = A028875 n

theorem P8156869436290036666.correct : P8156869436290036666.Spec := by
  intro n
  simp only [A028875]

end A028875

/-!
# A028876: Numbers k such that k^2 - 5 is prime.

The programs for A028876, there is no canonical definition to state claims against.
-/

/-! ## A028876.P15527477978628701097

`2*A352804(n+1)`
-/

namespace A028876.P15527477978628701097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352804 (n + 1)

end

end A028876.P15527477978628701097

/-! ## A028876.P993495096529852650

`ceil(sqrt(A028877(n+1)))`
-/

namespace A028876.P993495096529852650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028877 (n + 1) : ℝ)⌉

end

end A028876.P993495096529852650

/-! ## A028876.P8241189530524649500

`A000027(ceil(root(A028877(n+1), 2)))`
-/

namespace A028876.P8241189530524649500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(A028877 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌉.toNat

end

end A028876.P8241189530524649500

/-! ## A028876.P6762960960879447110

`A000027(root(A028877(n+1)+5, 2))`
-/

namespace A028876.P6762960960879447110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A028877 (n + 1) + 5 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A028876.P6762960960879447110

/-! ## A028876.P1674664791343260532

`A352804(A000027(n+1))+A352804(n+1)`
-/

namespace A028876.P1674664791343260532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352804 (A000027 (n + 1)).toNat + A352804 (n + 1)

end

end A028876.P1674664791343260532

/-! ## A028876.P9913005662350437009

`A004277(A352804(n+1))`
-/

namespace A028876.P9913005662350437009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A352804 (n + 1)).toNat

end

end A028876.P9913005662350437009

/-! ## A028876.P10886217184702489862

`A014681(floor(root(A028877(n+1), 2)))`
-/

namespace A028876.P10886217184702489862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 ⌊(A028877 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋.toNat

end

end A028876.P10886217184702489862

/-! ## A028876.P13008884609043347193

`ceil(sqrt(p?[n²-5]))`
-/

namespace A028876.P13008884609043347193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A028876.P13008884609043347193

/-! ## A028876.P1661250274235747602

`sqrt(p?[n²-5]+5)`
-/

namespace A028876.P1661250274235747602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5 : ℝ)

end

end A028876.P1661250274235747602

/-! ## A028876.P12916133723055160415

`ceil(root(p?[n²-5], 2))`
-/

namespace A028876.P12916133723055160415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))⌉

end

end A028876.P12916133723055160415

/-! ## A028876.P9444002304028828578

`floor(sqrt(p?[n*n%a(n-1)-5]+5))` with `a(0)=1`
-/

namespace A028876.P9444002304028828578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * Int.tmod (n : ℤ) (f1 (n - 1)) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5)

end

end A028876.P9444002304028828578

/-!
# A028877: Primes of form k^2 - 5.

The programs for A028877, there is no canonical definition to state claims against.
-/

/-! ## A028877.P4662937270778545237

`A028875(A028876(n+1))`
-/

namespace A028877.P4662937270778545237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028876 (n + 1)).toNat

end

end A028877.P4662937270778545237

/-! ## A028877.P7356382695227805401

`(2*A352804(n+1))²-5`
-/

namespace A028877.P7356382695227805401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A352804 (n + 1)) ^ 2 - 5

end

end A028877.P7356382695227805401

/-! ## A028877.P10142369269143086142

`record[A363347(n+3)]`
-/

namespace A028877.P10142369269143086142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028877.P10142369269143086142

/-! ## A028877.P6402368303023554899

`A363347(A028876(n+1)-1)`
-/

namespace A028877.P6402368303023554899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363347 (A028876 (n + 1) - 1).toNat

end

end A028877.P6402368303023554899

/-! ## A028877.P4775370303795631167

`A028875(2*A352804(n+1))`
-/

namespace A028877.P4775370303795631167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (2 * A352804 (n + 1)).toNat

end

end A028877.P4775370303795631167

/-! ## A028877.P11491572706286817760

`A028875(A352804(n+1)+A352804(n+1))`
-/

namespace A028877.P11491572706286817760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A352804 (n + 1) + A352804 (n + 1)).toNat

end

end A028877.P11491572706286817760

/-! ## A028877.P3993063536056237917

`A028872(A028876(n+1))-A020639(A028873(n+1))`
-/

namespace A028877.P3993063536056237917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A020639 (A028873 (n + 1)).toNat

end

end A028877.P3993063536056237917

/-! ## A028877.P13572276313203864606

`A028872(A028876(n+1))-A001222(A350455(n+2))`
-/

namespace A028877.P13572276313203864606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A001222 (A350455 (n + 2)).toNat

end

end A028877.P13572276313203864606

/-! ## A028877.P6602651630328451077

`A028872(A028876(n+1))-A001222(2*A000040(n+2))`
-/

namespace A028877.P6602651630328451077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A001222 (2 * A000040 (n + 2)).toNat

end

end A028877.P6602651630328451077

/-! ## A028877.P592923889243377243

`A028872(A028876(n+1))-A001222(A099610(n+1))`
-/

namespace A028877.P592923889243377243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A001222 (A099610 (n + 1)).toNat

end

end A028877.P592923889243377243

/-! ## A028877.P6870664858545143348

`A028872(A028876(n+1))-A000005(A028864(n+1))`
-/

namespace A028877.P6870664858545143348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A000005 (A028864 (n + 1)).toNat

end

end A028877.P6870664858545143348

/-! ## A028877.P3945074912857096000

`A028872(A028876(n+1))-A000005(A028867(n+1))`
-/

namespace A028877.P3945074912857096000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028876 (n + 1)).toNat - A000005 (A028867 (n + 1)).toNat

end

end A028877.P3945074912857096000

/-! ## A028877.P486134632306118353

`p?[n²-5]`
-/

namespace A028877.P486134632306118353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028877.P486134632306118353

/-! ## A028877.P944698428149628158

`or(1, p?[n^2-5])`
-/

namespace A028877.P944698428149628158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028877.P944698428149628158

/-! ## A028877.P8415849478991332042

`∏{d}[p?[n^2-5], #]`
-/

namespace A028877.P8415849478991332042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A028877.P8415849478991332042

/-! ## A028877.P5247283909652653905

`∏{p}[p?[n*(n+4)-1], #]`
-/

namespace A028877.P5247283909652653905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 4) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A028877.P5247283909652653905

/-! ## A028877.P9924416834188163043

`record[p?[A229525(n+1)]]`
-/

namespace A028877.P9924416834188163043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028877.P9924416834188163043

/-! ## A028877.P7987817613298162350

`∑{d}[p?[A000290(n)-5], #]-1`
-/

namespace A028877.P7987817613298162350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A028877.P7987817613298162350

/-! ## A028877.P10850657133113303226

`or(p?[A000290(n)-5], A287455(n+1))`
-/

namespace A028877.P10850657133113303226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A287455 (n + 1))

end

end A028877.P10850657133113303226

/-! ## A028877.P16743095390977564520

`∩[A122869(n+1), A028875(n)]`
-/

namespace A028877.P16743095390977564520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028877.P16743095390977564520

/-!
# A028878: a(n) = (n+3)^2 - 6.

The programs for A028878, the canonical program `A028878.P2945989185203519759` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028878 has offset 0).

The definition of A028878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-6` (program `A028878.P2945989185203519759`, by `A028878.P2945989185203519759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028878.P2945989185203519759

`(n+3)²-6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028878

/-- `(n+3)²-6` -/
def P2945989185203519759.Spec : Prop :=
  ∀ n, P2945989185203519759.a n = A028878 n

theorem P2945989185203519759.correct : P2945989185203519759.Spec := by
  intro n
  simp only [A028878]

end A028878

/-! ## A028878.P504732219974513922

`record[(3-n)²-6]`
-/

namespace A028878.P504732219974513922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028878.P504732219974513922

namespace A028878

/-- `record[(3-n)²-6]` -/
def P504732219974513922.Spec : Prop :=
  ∀ n, P504732219974513922.a n = A028878 n

end A028878

/-! ## A028878.P2517768647860282163

`∑[a(n-1)+2]` with `a(0)=3, a(1)=7`
-/

namespace A028878.P2517768647860282163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028878.P2517768647860282163

namespace A028878

/-- `∑[a(n-1)+2]` -/
def P2517768647860282163.Spec : Prop :=
  ∀ n, (P2517768647860282163.a n : ℤ) = A028878 n

end A028878

/-! ## A028878.P7517870879826805901

`or(2, n*(n+6)+1)`
-/

namespace A028878.P7517870879826805901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n * (n + 6) + 1)

end

end A028878.P7517870879826805901

namespace A028878

/-- `or(2, n*(n+6)+1)` -/
def P7517870879826805901.Spec : Prop :=
  ∀ n, (P7517870879826805901.a n : ℤ) = A028878 n

end A028878

/-! ## A028878.P12181967538088207346

`xor(2, n*(n+6)+1)`
-/

namespace A028878.P12181967538088207346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * (n + 6) + 1)

end

end A028878.P12181967538088207346

namespace A028878

/-- `xor(2, n*(n+6)+1)` -/
def P12181967538088207346.Spec : Prop :=
  ∀ n, (P12181967538088207346.a n : ℤ) = A028878 n

end A028878

/-! ## A028878.P12339411076914168639

`abs(2*n+a(n-1)+5)` with `a(0)=3`
-/

namespace A028878.P12339411076914168639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028878.P12339411076914168639

namespace A028878

/-- `abs(2*n+a(n-1)+5)` -/
def P12339411076914168639.Spec : Prop :=
  ∀ n, (P12339411076914168639.a n : ℤ) = A028878 n

theorem P12339411076914168639.correct : P12339411076914168639.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P12339411076914168639.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P12339411076914168639.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P13005490356609609628

`∑[(n+1)*2%(n+2)+3]`
-/

namespace A028878.P13005490356609609628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 2)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028878.P13005490356609609628

namespace A028878

/-- `∑[(n+1)*2%(n+2)+3]` -/
def P13005490356609609628.Spec : Prop :=
  ∀ n, (P13005490356609609628.a n : ℤ) = A028878 n

end A028878

/-! ## A028878.P16690681140341462119

`floor(2*n+a(n-1)+5)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A028878.P16690681140341462119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028878.P16690681140341462119

namespace A028878

/-- `floor(2*n+a(n-1)+5)` -/
def P16690681140341462119.Spec : Prop :=
  ∀ n, (P16690681140341462119.a n : ℤ) = A028878 n

theorem P16690681140341462119.correct : P16690681140341462119.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P16690681140341462119.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P16690681140341462119.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P7395651916516460654

`ceil(2*n+a(n-1)+5)` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A028878.P7395651916516460654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028878.P7395651916516460654

namespace A028878

/-- `ceil(2*n+a(n-1)+5)` -/
def P7395651916516460654.Spec : Prop :=
  ∀ n, (P7395651916516460654.a n : ℤ) = A028878 n

theorem P7395651916516460654.correct : P7395651916516460654.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P7395651916516460654.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P7395651916516460654.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P11859522062360933632

`round(2*n+a(n-1)+5)` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A028878.P11859522062360933632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028878.P11859522062360933632

namespace A028878

/-- `round(2*n+a(n-1)+5)` -/
def P11859522062360933632.Spec : Prop :=
  ∀ n, (P11859522062360933632.a n : ℤ) = A028878 n

theorem P11859522062360933632.correct : P11859522062360933632.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P11859522062360933632.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P11859522062360933632.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P14038981995230381625

`abs(3-(lcm(n+2, n+3)+n))`
-/

namespace A028878.P14038981995230381625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.lcm (n + 2) (n + 3) + n : ℤ)|

end

end A028878.P14038981995230381625

namespace A028878

/-- `abs(3-(lcm(n+2, n+3)+n))` -/
def P14038981995230381625.Spec : Prop :=
  ∀ n, P14038981995230381625.a n = A028878 n

end A028878

/-! ## A028878.P2791223835219272742

`floor(a(n-1)+5+n+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A028878.P2791223835219272742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 5 + n + n

end

end A028878.P2791223835219272742

namespace A028878

/-- `floor(a(n-1)+5+n+n)` -/
def P2791223835219272742.Spec : Prop :=
  ∀ n, (P2791223835219272742.a n : ℤ) = A028878 n

theorem P2791223835219272742.correct : P2791223835219272742.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P2791223835219272742.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P2791223835219272742.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P7654077939503313108

`2*((a(n-1)+5)/2+n)` with `a(0)=3`
-/

namespace A028878.P7654077939503313108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  2 * ((a (n - 1) + 5) / 2 + (n : ℚ))

end

end A028878.P7654077939503313108

namespace A028878

/-- `2*((a(n-1)+5)/2+n)` -/
def P7654077939503313108.Spec : Prop :=
  ∀ n, P7654077939503313108.a n = (A028878 n : ℚ)

theorem P7654077939503313108.correct : P7654077939503313108.Spec := by
  intro n
  induction n with
  | zero => simp [A028878, A028878.P7654077939503313108.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028878, Nat.add_sub_cancel, A028878.P7654077939503313108.a, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028878

/-! ## A028878.P6318473961309704246

`floor((n+1)/acot(n+3)+2*n)`
-/

namespace A028878.P6318473961309704246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + (2 * n : ℝ)⌋

end

end A028878.P6318473961309704246

namespace A028878

/-- `floor((n+1)/acot(n+3)+2*n)` -/
def P6318473961309704246.Spec : Prop :=
  ∀ n, P6318473961309704246.a n = A028878 n

end A028878

/-! ## A028878.P6690198030393689199

`round((n+1)/acot(n+3)+2*n)`
-/

namespace A028878.P6690198030393689199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + (2 * n : ℝ))

end

end A028878.P6690198030393689199

namespace A028878

/-- `round((n+1)/acot(n+3)+2*n)` -/
def P6690198030393689199.Spec : Prop :=
  ∀ n, P6690198030393689199.a n = A028878 n

end A028878

/-! ## A028878.P10042361557956340969

`∑[2*n-C(2, 2*n+1)+5]`
-/

namespace A028878.P10042361557956340969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose 2 (2 * n + 1) : ℤ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028878.P10042361557956340969

namespace A028878

/-- `∑[2*n-C(2, 2*n+1)+5]` -/
def P10042361557956340969.Spec : Prop :=
  ∀ n, P10042361557956340969.a n = A028878 n

end A028878

/-! ## A028878.P13689267832360151641

`Δ[(C(n+1, 2)+2*n)²]/(n+3)`
-/

namespace A028878.P13689267832360151641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 + 2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 3 : ℚ)

end

end A028878.P13689267832360151641

namespace A028878

/-- `Δ[(C(n+1, 2)+2*n)²]/(n+3)` -/
def P13689267832360151641.Spec : Prop :=
  ∀ n, P13689267832360151641.a n = (A028878 n : ℚ)

end A028878

/-! ## A028878.P9313423635330044754

`(lcm(2, 2*n)/(n+1)+n+3)*(n+1)`
-/

namespace A028878.P9313423635330044754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n) : ℚ) / (n + 1 : ℚ) + (n + 3 : ℚ)) * (n + 1 : ℚ)

end

end A028878.P9313423635330044754

namespace A028878

/-- `(lcm(2, 2*n)/(n+1)+n+3)*(n+1)` -/
def P9313423635330044754.Spec : Prop :=
  ∀ n, P9313423635330044754.a n = (A028878 n : ℚ)

end A028878

/-!
# A028879: Numbers k such that k^2 - 6 is prime.

The programs for A028879, there is no canonical definition to state claims against.
-/

/-! ## A028879.P7299313273687006893

`sqrt(A028880(n+1)+6)`
-/

namespace A028879.P7299313273687006893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028880 (n + 1) + 6 : ℝ)

end

end A028879.P7299313273687006893

/-! ## A028879.P18140070377652677014

`sqrt(p?[n²-6]+6)`
-/

namespace A028879.P18140070377652677014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 6

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 6 : ℝ)

end

end A028879.P18140070377652677014

/-! ## A028879.P15942752378492652690

`root(p?[n²-6]+6, 4)²`
-/

namespace A028879.P15942752378492652690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 6

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 6 : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A028879.P15942752378492652690

/-!
# A028880: Primes of the form n^2 - 6.

The programs for A028880, there is no canonical definition to state claims against.
-/

/-! ## A028880.P10534021061292870635

`A028879(n+1)²-6`
-/

namespace A028880.P10534021061292870635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1) ^ 2 - 6

end

end A028880.P10534021061292870635

/-! ## A028880.P3834094921314215679

`A028878(A028879(n+1)-3)`
-/

namespace A028880.P3834094921314215679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 (A028879 (n + 1) - 3).toNat

end

end A028880.P3834094921314215679

/-! ## A028880.P9872377494327807321

`A000290(or(1, A028879(n+1)))-6`
-/

namespace A028880.P9872377494327807321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A028879 (n + 1))).toNat - 6

end

end A028880.P9872377494327807321

/-! ## A028880.P14824705010822755766

`A028875(A028879(n+1))-A008620(C(2, n+1))`
-/

namespace A028880.P14824705010822755766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028879 (n + 1)).toNat - A008620 (Nat.choose 2 (n + 1))

end

end A028880.P14824705010822755766

/-! ## A028880.P4896779763261704067

`A028875(A028879(n+1))-(A005563(n)%(n+2))!`
-/

namespace A028880.P4896779763261704067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028879 (n + 1)).toNat - (Nat.factorial (Int.tmod (A005563 n) (n + 2 : ℤ)).toNat : ℤ)

end

end A028880.P4896779763261704067

/-! ## A028880.P3818036486508935153

`A028875(A028879(n+1))+A008683(A238086(n+1))`
-/

namespace A028880.P3818036486508935153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028879 (n + 1)).toNat + A008683 (A238086 (n + 1)).toNat

end

end A028880.P3818036486508935153

/-! ## A028880.P15907908273145883006

`A028875(A028879(n+1))-A001222(A158350(n+1))`
-/

namespace A028880.P15907908273145883006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028879 (n + 1)).toNat - A001222 (A158350 (n + 1)).toNat

end

end A028880.P15907908273145883006

/-! ## A028880.P10380424377053083850

`∩[A141373(n+1), A028878(n)]`
-/

namespace A028880.P10380424377053083850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028880.P10380424377053083850

/-! ## A028880.P9370181364412891522

`∩[A141373(n+1), A036572(n+3)]`
-/

namespace A028880.P9370181364412891522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036572 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028880.P9370181364412891522

/-! ## A028880.P13606246870978596950

`p?[n²-6]`
-/

namespace A028880.P13606246870978596950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028880.P13606246870978596950

/-!
# A028881: a(n) = n^2 - 7.

The programs for A028881, the canonical program `A028881.P11268468400886381584` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028881 has offset 3).

The definition of A028881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028881.P11268468400886381584

`(n+3)²-7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028881

/-- `(n+3)²-7` -/
def P11268468400886381584.Spec : Prop :=
  ∀ n, P11268468400886381584.a n = A028881 (n + 3)

theorem P11268468400886381584.correct : P11268468400886381584.Spec := by
  intro n
  simp only [A028881, Nat.add_sub_cancel]

end A028881

/-! ## A028881.P13594187652885929056

`record[(3-n)²-7]`
-/

namespace A028881.P13594187652885929056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028881.P13594187652885929056

namespace A028881

/-- `record[(3-n)²-7]` -/
def P13594187652885929056.Spec : Prop :=
  ∀ n, P13594187652885929056.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P3503817749380308534

`∑[a(n-1)+2]` with `a(0)=2, a(1)=7`
-/

namespace A028881.P3503817749380308534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028881.P3503817749380308534

namespace A028881

/-- `∑[a(n-1)+2]` -/
def P3503817749380308534.Spec : Prop :=
  ∀ n, (P3503817749380308534.a n : ℤ) = A028881 (n + 3)

end A028881

/-! ## A028881.P7792935543667282717

`abs(2*n+a(n-1)+5)` with `a(0)=2`
-/

namespace A028881.P7792935543667282717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028881.P7792935543667282717

namespace A028881

/-- `abs(2*n+a(n-1)+5)` -/
def P7792935543667282717.Spec : Prop :=
  ∀ n, (P7792935543667282717.a n : ℤ) = A028881 (n + 3)

theorem P7792935543667282717.correct : P7792935543667282717.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P7792935543667282717.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P7792935543667282717.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P1775945664612829085

`floor(2*n+a(n-1)+5)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028881.P1775945664612829085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028881.P1775945664612829085

namespace A028881

/-- `floor(2*n+a(n-1)+5)` -/
def P1775945664612829085.Spec : Prop :=
  ∀ n, (P1775945664612829085.a n : ℤ) = A028881 (n + 3)

theorem P1775945664612829085.correct : P1775945664612829085.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P1775945664612829085.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P1775945664612829085.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P5569635070399567452

`ceil(2*n+a(n-1)+5)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A028881.P5569635070399567452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028881.P5569635070399567452

namespace A028881

/-- `ceil(2*n+a(n-1)+5)` -/
def P5569635070399567452.Spec : Prop :=
  ∀ n, (P5569635070399567452.a n : ℤ) = A028881 (n + 3)

theorem P5569635070399567452.correct : P5569635070399567452.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P5569635070399567452.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P5569635070399567452.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P9689505559227055870

`round(2*n+a(n-1)+5)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A028881.P9689505559227055870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028881.P9689505559227055870

namespace A028881

/-- `round(2*n+a(n-1)+5)` -/
def P9689505559227055870.Spec : Prop :=
  ∀ n, (P9689505559227055870.a n : ℤ) = A028881 (n + 3)

theorem P9689505559227055870.correct : P9689505559227055870.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P9689505559227055870.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P9689505559227055870.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P13639636129952852685

`abs(4-(lcm(n+2, n+3)+n))`
-/

namespace A028881.P13639636129952852685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.lcm (n + 2) (n + 3) + n : ℤ)|

end

end A028881.P13639636129952852685

namespace A028881

/-- `abs(4-(lcm(n+2, n+3)+n))` -/
def P13639636129952852685.Spec : Prop :=
  ∀ n, P13639636129952852685.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P5846299650879422708

`abs(or(2, -((n+2)²+2*n)))`
-/

namespace A028881.P5846299650879422708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-((n + 2) ^ 2 + 2 * n : ℤ))|

end

end A028881.P5846299650879422708

namespace A028881

/-- `abs(or(2, -((n+2)²+2*n)))` -/
def P5846299650879422708.Spec : Prop :=
  ∀ n, P5846299650879422708.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P3880967543984677966

`-or(2, -((n+2)²+2*n))`
-/

namespace A028881.P3880967543984677966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-((n + 2) ^ 2 + 2 * n : ℤ))

end

end A028881.P3880967543984677966

namespace A028881

/-- `-or(2, -((n+2)²+2*n))` -/
def P3880967543984677966.Spec : Prop :=
  ∀ n, P3880967543984677966.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P2825481279682022178

`abs(xor(2, -((n+2)²+2*n)))`
-/

namespace A028881.P2825481279682022178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (-((n + 2) ^ 2 + 2 * n : ℤ))|

end

end A028881.P2825481279682022178

namespace A028881

/-- `abs(xor(2, -((n+2)²+2*n)))` -/
def P2825481279682022178.Spec : Prop :=
  ∀ n, P2825481279682022178.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P14587509748824591198

`-xor(2, -((n+2)²+2*n))`
-/

namespace A028881.P14587509748824591198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-((n + 2) ^ 2 + 2 * n : ℤ))

end

end A028881.P14587509748824591198

namespace A028881

/-- `-xor(2, -((n+2)²+2*n))` -/
def P14587509748824591198.Spec : Prop :=
  ∀ n, P14587509748824591198.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P9049829805564616482

`floor(a(n-1)+5+n+n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028881.P9049829805564616482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 5 + n + n

end

end A028881.P9049829805564616482

namespace A028881

/-- `floor(a(n-1)+5+n+n)` -/
def P9049829805564616482.Spec : Prop :=
  ∀ n, (P9049829805564616482.a n : ℤ) = A028881 (n + 3)

theorem P9049829805564616482.correct : P9049829805564616482.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P9049829805564616482.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P9049829805564616482.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P7767476748224978276

`abs(Δ[C(2*n, 2)]+(n+1)²)`
-/

namespace A028881.P7767476748224978276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n + 1) ^ 2 : ℤ)|

end

end A028881.P7767476748224978276

namespace A028881

/-- `abs(Δ[C(2*n, 2)]+(n+1)²)` -/
def P7767476748224978276.Spec : Prop :=
  ∀ n, P7767476748224978276.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P13244465941941367354

`2*((a(n-1)+5)/2+n)` with `a(0)=2`
-/

namespace A028881.P13244465941941367354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((a (n - 1) + 5) / 2 + (n : ℚ))

end

end A028881.P13244465941941367354

namespace A028881

/-- `2*((a(n-1)+5)/2+n)` -/
def P13244465941941367354.Spec : Prop :=
  ∀ n, P13244465941941367354.a n = (A028881 (n + 3) : ℚ)

theorem P13244465941941367354.correct : P13244465941941367354.Spec := by
  intro n
  induction n with
  | zero => simp [A028881, A028881.P13244465941941367354.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028881, Nat.add_sub_cancel, A028881.P13244465941941367354.a, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028881

/-! ## A028881.P4061986798241493635

`floor(3*n-∑[a(n-1)-2])` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A028881.P4061986798241493635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028881.P4061986798241493635

namespace A028881

/-- `floor(3*n-∑[a(n-1)-2])` -/
def P4061986798241493635.Spec : Prop :=
  ∀ n, P4061986798241493635.a n = A028881 (n + 3)

end A028881

/-! ## A028881.P16115367376530624387

`∑[gcd(2, C(2, n+2))²+2*n+1]`
-/

namespace A028881.P16115367376530624387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (n + 2)) ^ 2 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028881.P16115367376530624387

namespace A028881

/-- `∑[gcd(2, C(2, n+2))²+2*n+1]` -/
def P16115367376530624387.Spec : Prop :=
  ∀ n, (P16115367376530624387.a n : ℤ) = A028881 (n + 3)

end A028881

/-! ## A028881.P1866441422683684206

`∑[a(C(2, n+2))²+2*n+1]` with `a(0)=2`
-/

namespace A028881.P1866441422683684206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Nat.choose 2 (n + 2)) ^ 2 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028881.P1866441422683684206

namespace A028881

/-- `∑[a(C(2, n+2))²+2*n+1]` -/
def P1866441422683684206.Spec : Prop :=
  ∀ n, (P1866441422683684206.a n : ℤ) = A028881 (n + 3)

end A028881

/-!
# A028882: Numbers k such that k^2 - 7 is prime.

The programs for A028882, there is no canonical definition to state claims against.
-/

/-! ## A028882.P8153564096984128699

`sqrt(A028883(n+1)+7)`
-/

namespace A028882.P8153564096984128699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028883 (n + 1) + 7 : ℝ)

end

end A028882.P8153564096984128699

/-! ## A028882.P12294212377312092235

`sqrt(p?[n²-7]+7)`
-/

namespace A028882.P12294212377312092235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 7 : ℝ)

end

end A028882.P12294212377312092235

/-! ## A028882.P15733895006972089735

`root(p?[n²-7]+7, 2)`
-/

namespace A028882.P15733895006972089735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 7 : ℝ) ^ (1 / (2 : ℝ))

end

end A028882.P15733895006972089735

/-! ## A028882.P4715890088760471179

`ceil(sqrt(p?[A326118(3*n)]))`
-/

namespace A028882.P4715890088760471179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326118 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A028882.P4715890088760471179

/-! ## A028882.P15179641686222310016

`root(A028883(n+1)+7, A060236(∑[6*n]+11))`
-/

namespace A028882.P15179641686222310016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028883 (n + 1) + 7 : ℝ) ^ (1 / (A060236 (∑ j ∈ Finset.range (n + 1), f1 j + 11) : ℝ))

end

end A028882.P15179641686222310016

/-!
# A028883: Primes of the form k^2 - 7.

The programs for A028883, there is no canonical definition to state claims against.
-/

/-! ## A028883.P17106148099134229421

`A028882(n+1)²-7`
-/

namespace A028883.P17106148099134229421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028882 (n + 1) ^ 2 - 7

end

end A028883.P17106148099134229421

/-! ## A028883.P10989290630966982937

`A028881(A028882(n+1))`
-/

namespace A028883.P10989290630966982937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (A028882 (n + 1)).toNat

end

end A028883.P10989290630966982937

/-! ## A028883.P18055680478950382864

`A028875(A028882(n+1))-2%A003381(n+1)`
-/

namespace A028883.P18055680478950382864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028882 (n + 1)).toNat - Int.tmod 2 (A003381 (n + 1))

end

end A028883.P18055680478950382864

/-! ## A028883.P13281913154991582646

`A028875(A028882(n+1))-A000005(A028864(n+1))`
-/

namespace A028883.P13281913154991582646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028875 (A028882 (n + 1)).toNat - A000005 (A028864 (n + 1)).toNat

end

end A028883.P13281913154991582646

/-! ## A028883.P12195868614922465646

`p?[n²-7]`
-/

namespace A028883.P12195868614922465646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028883.P12195868614922465646

/-! ## A028883.P16860329630234434577

`∏{d}[p?[n^2-7], #]`
-/

namespace A028883.P16860329630234434577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A028883.P16860329630234434577

/-! ## A028883.P13106210783402382280

`∑{p}[p?[n^2-7], #]`
-/

namespace A028883.P13106210783402382280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A028883.P13106210783402382280

/-! ## A028883.P11465444905573937780

`∏{p}[p?[n^2-7], #]`
-/

namespace A028883.P11465444905573937780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A028883.P11465444905573937780

/-! ## A028883.P13292953570091733438

`abs(p?[A005563(n)-6]-1)+1`
-/

namespace A028883.P13292953570091733438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A028883.P13292953570091733438

/-!
# A028884: a(n) = (n + 3)^2 - 8.

The programs for A028884, the canonical program `A028884.P6863667227585996307` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028884 has offset 0).

The definition of A028884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)²-8` (program `A028884.P6863667227585996307`, by `A028884.P6863667227585996307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028884.P6863667227585996307

`(n+3)²-8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028884

/-- `(n+3)²-8` -/
def P6863667227585996307.Spec : Prop :=
  ∀ n, P6863667227585996307.a n = A028884 n

theorem P6863667227585996307.correct : P6863667227585996307.Spec := by
  intro n
  simp only [A028884]

end A028884

/-! ## A028884.P18218619473945463175

`record[(3-n)²-8]`
-/

namespace A028884.P18218619473945463175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028884.P18218619473945463175

namespace A028884

/-- `record[(3-n)²-8]` -/
def P18218619473945463175.Spec : Prop :=
  ∀ n, P18218619473945463175.a n = A028884 n

end A028884

/-! ## A028884.P9524156587945884069

`∑[a(n-1)+2]` with `a(0)=1, a(1)=7`
-/

namespace A028884.P9524156587945884069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028884.P9524156587945884069

namespace A028884

/-- `∑[a(n-1)+2]` -/
def P9524156587945884069.Spec : Prop :=
  ∀ n, (P9524156587945884069.a n : ℤ) = A028884 n

end A028884

/-! ## A028884.P15215668709626140017

`xor(2, ∑[2*n+5]-2)`
-/

namespace A028884.P15215668709626140017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A028884.P15215668709626140017

namespace A028884

/-- `xor(2, ∑[2*n+5]-2)` -/
def P15215668709626140017.Spec : Prop :=
  ∀ n, P15215668709626140017.a n = A028884 n

end A028884

/-! ## A028884.P17084930998146127765

`abs(2*n+a(n-1)+5)` with `a(0)=1`
-/

namespace A028884.P17084930998146127765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028884.P17084930998146127765

namespace A028884

/-- `abs(2*n+a(n-1)+5)` -/
def P17084930998146127765.Spec : Prop :=
  ∀ n, (P17084930998146127765.a n : ℤ) = A028884 n

theorem P17084930998146127765.correct : P17084930998146127765.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P17084930998146127765.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P17084930998146127765.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P16969343764312655645

`∑[(n+2)*2%(n+2)+1]`
-/

namespace A028884.P16969343764312655645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 % (n + 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028884.P16969343764312655645

namespace A028884

/-- `∑[(n+2)*2%(n+2)+1]` -/
def P16969343764312655645.Spec : Prop :=
  ∀ n, (P16969343764312655645.a n : ℤ) = A028884 n

end A028884

/-! ## A028884.P9757389460700492906

`floor(2*n+a(n-1)+5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A028884.P9757389460700492906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028884.P9757389460700492906

namespace A028884

/-- `floor(2*n+a(n-1)+5)` -/
def P9757389460700492906.Spec : Prop :=
  ∀ n, (P9757389460700492906.a n : ℤ) = A028884 n

theorem P9757389460700492906.correct : P9757389460700492906.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P9757389460700492906.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P9757389460700492906.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P17039509695464934521

`ceil(2*n+a(n-1)+5)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A028884.P17039509695464934521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028884.P17039509695464934521

namespace A028884

/-- `ceil(2*n+a(n-1)+5)` -/
def P17039509695464934521.Spec : Prop :=
  ∀ n, (P17039509695464934521.a n : ℤ) = A028884 n

theorem P17039509695464934521.correct : P17039509695464934521.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P17039509695464934521.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P17039509695464934521.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P8079027769860742192

`round(2*n+a(n-1)+5)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A028884.P8079027769860742192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + 5)

end

end A028884.P8079027769860742192

namespace A028884

/-- `round(2*n+a(n-1)+5)` -/
def P8079027769860742192.Spec : Prop :=
  ∀ n, (P8079027769860742192.a n : ℤ) = A028884 n

theorem P8079027769860742192.correct : P8079027769860742192.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P8079027769860742192.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P8079027769860742192.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P4816460027680178895

`abs(5-(lcm(n+2, n+3)+n))`
-/

namespace A028884.P4816460027680178895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (Nat.lcm (n + 2) (n + 3) + n : ℤ)|

end

end A028884.P4816460027680178895

namespace A028884

/-- `abs(5-(lcm(n+2, n+3)+n))` -/
def P4816460027680178895.Spec : Prop :=
  ∀ n, P4816460027680178895.a n = A028884 n

end A028884

/-! ## A028884.P8336670423707095102

`∑[n+1+4%(n+4)+n]`
-/

namespace A028884.P8336670423707095102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (4 % (n + 4) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028884.P8336670423707095102

namespace A028884

/-- `∑[n+1+4%(n+4)+n]` -/
def P8336670423707095102.Spec : Prop :=
  ∀ n, (P8336670423707095102.a n : ℤ) = A028884 n

end A028884

/-! ## A028884.P14483929105652085722

`floor(a(n-1)+5+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A028884.P14483929105652085722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 + n + n

end

end A028884.P14483929105652085722

namespace A028884

/-- `floor(a(n-1)+5+n+n)` -/
def P14483929105652085722.Spec : Prop :=
  ∀ n, (P14483929105652085722.a n : ℤ) = A028884 n

theorem P14483929105652085722.correct : P14483929105652085722.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P14483929105652085722.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P14483929105652085722.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P9639756651577821330

`2*((a(n-1)+5)/2+n)` with `a(0)=1`
-/

namespace A028884.P9639756651577821330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((a (n - 1) + 5) / 2 + (n : ℚ))

end

end A028884.P9639756651577821330

namespace A028884

/-- `2*((a(n-1)+5)/2+n)` -/
def P9639756651577821330.Spec : Prop :=
  ∀ n, P9639756651577821330.a n = (A028884 n : ℚ)

theorem P9639756651577821330.correct : P9639756651577821330.Spec := by
  intro n
  induction n with
  | zero => simp [A028884, A028884.P9639756651577821330.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A028884, Nat.add_sub_cancel, A028884.P9639756651577821330.a, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A028884

/-! ## A028884.P13429117696759747018

`and(2*n+(n+1)*(n+3), -3)`
-/

namespace A028884.P13429117696759747018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + (n + 1) * (n + 3) : ℤ) (-3)

end

end A028884.P13429117696759747018

namespace A028884

/-- `and(2*n+(n+1)*(n+3), -3)` -/
def P13429117696759747018.Spec : Prop :=
  ∀ n, P13429117696759747018.a n = A028884 n

end A028884

/-! ## A028884.P9304116634539287479

`floor(lcm(2, 2*n+1)+∑[2*n+1]-ϕ)`
-/

namespace A028884.P9304116634539287479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n + 1) : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.goldenRatio)⌋

end

end A028884.P9304116634539287479

namespace A028884

/-- `floor(lcm(2, 2*n+1)+∑[2*n+1]-ϕ)` -/
def P9304116634539287479.Spec : Prop :=
  ∀ n, P9304116634539287479.a n = A028884 n

end A028884

/-! ## A028884.P8501049971344697078

`(A140681(n)+3)/3`
-/

namespace A028884.P8501049971344697078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140681 n + 3 : ℚ) / 3

end

end A028884.P8501049971344697078

namespace A028884

/-- `(A140681(n)+3)/3` -/
def P8501049971344697078.Spec : Prop :=
  ∀ n, P8501049971344697078.a n = (A028884 n : ℚ)

end A028884

/-! ## A028884.P14663348714291350197

`(A139577(n)+2+n)/2`
-/

namespace A028884.P14663348714291350197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139577 n + 2 + (n : ℤ) : ℚ) / 2

end

end A028884.P14663348714291350197

namespace A028884

/-- `(A139577(n)+2+n)/2` -/
def P14663348714291350197.Spec : Prop :=
  ∀ n, P14663348714291350197.a n = (A028884 n : ℚ)

end A028884

/-! ## A028884.P10443541304535131078

`A017042(n)%A126587(n+1)`
-/

namespace A028884.P10443541304535131078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017042 n) (A126587 (n + 1))

end

end A028884.P10443541304535131078

namespace A028884

/-- `A017042(n)%A126587(n+1)` -/
def P10443541304535131078.Spec : Prop :=
  ∀ n, P10443541304535131078.a n = A028884 n

end A028884

/-!
# A028885: Numbers k such that k^2 - 8 is prime.

The programs for A028885, there is no canonical definition to state claims against.
-/

/-! ## A028885.P1256688800475607925

`ceil(sqrt(A028886(n+1)))`
-/

namespace A028885.P1256688800475607925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028886 (n + 1) : ℝ)⌉

end

end A028885.P1256688800475607925

/-! ## A028885.P14964761232033399750

`A141310(floor(sqrt(A028886(n+1))))`
-/

namespace A028885.P14964761232033399750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (Int.sqrt (A028886 (n + 1))).toNat

end

end A028885.P14964761232033399750

/-! ## A028885.P1635923095930840685

`A004442(floor(sqrt(A028886(n+1))))`
-/

namespace A028885.P1635923095930840685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.sqrt (A028886 (n + 1))).toNat

end

end A028885.P1635923095930840685

/-! ## A028885.P14674437234733693405

`A109613(floor(sqrt(A028886(n+1))))`
-/

namespace A028885.P14674437234733693405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.sqrt (A028886 (n + 1))).toNat

end

end A028885.P14674437234733693405

/-! ## A028885.P5342019154205801692

`A109613(round(sqrt(A028886(n+1))))`
-/

namespace A028885.P5342019154205801692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway (Real.sqrt (A028886 (n + 1) : ℝ))).toNat

end

end A028885.P5342019154205801692

/-! ## A028885.P5164430361322775938

`ceil(sqrt(p?[n²-8]))`
-/

namespace A028885.P5164430361322775938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉

end

end A028885.P5164430361322775938

/-! ## A028885.P9302786591787986948

`sqrt(p?[n²-8]+8)`
-/

namespace A028885.P9302786591787986948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 8 : ℝ)

end

end A028885.P9302786591787986948

/-! ## A028885.P9993046811686543864

`ceil(root(p?[n²-8], 2))`
-/

namespace A028885.P9993046811686543864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))⌉

end

end A028885.P9993046811686543864

/-! ## A028885.P513110865039737824

`eq[1, A001222(abs(9-n²)+1)]`
-/

namespace A028885.P513110865039737824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|9 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028885.P513110865039737824

/-! ## A028885.P14976920624043911877

`eq[2, A000005(abs(9-n²)+1)]`
-/

namespace A028885.P14976920624043911877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|9 - (n ^ 2 : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028885.P14976920624043911877

/-!
# A028886: Primes of the form k^2 - 8.

The programs for A028886, there is no canonical definition to state claims against.
-/

/-! ## A028886.P14641006040356360740

`A028885(n+1)²-8`
-/

namespace A028886.P14641006040356360740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1) ^ 2 - 8

end

end A028886.P14641006040356360740

/-! ## A028886.P7635299691370510398

`A028884(A028885(n+1)-3)`
-/

namespace A028886.P7635299691370510398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (A028885 (n + 1) - 3).toNat

end

end A028886.P7635299691370510398

/-! ## A028886.P3212380978386788500

`A057428(n+1)+A028881(A028885(n+1))`
-/

namespace A028886.P3212380978386788500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028881 (A028885 (n + 1)).toNat

end

end A028886.P3212380978386788500

/-! ## A028886.P16998867065840938661

`A028881(A028885(n+1))-A033999(2*n)`
-/

namespace A028886.P16998867065840938661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (A028885 (n + 1)).toNat - A033999 (2 * n)

end

end A028886.P16998867065840938661

/-! ## A028886.P5613462610947181829

`p?[n²-8]`
-/

namespace A028886.P5613462610947181829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028886.P5613462610947181829

/-! ## A028886.P3518162300307487175

`or(1, p?[n^2-8])`
-/

namespace A028886.P3518162300307487175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028886.P3518162300307487175

/-! ## A028886.P1721754511391241953

`∏{d}[p?[n^2-8], #]`
-/

namespace A028886.P1721754511391241953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A028886.P1721754511391241953

/-! ## A028886.P7519568461926497913

`∑{p}[p?[n^2-8], #]`
-/

namespace A028886.P7519568461926497913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A028886.P7519568461926497913

/-! ## A028886.P16442606068251649251

`and(-3, p?[n^2-8])`
-/

namespace A028886.P16442606068251649251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028886.P16442606068251649251

/-! ## A028886.P16800735912351502480

`∏{p}[p?[n*(n+6)+1], #]`
-/

namespace A028886.P16800735912351502480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 6) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A028886.P16800735912351502480

/-! ## A028886.P14577467159200973059

`abs(2-p?[abs(n-(n*(n+7)+1))])+2`
-/

namespace A028886.P14577467159200973059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (n * (n + 7) + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A028886.P14577467159200973059

/-! ## A028886.P11255352170171474000

`record[p?[A019303(n)²+n]]`
-/

namespace A028886.P11255352170171474000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n ^ 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028886.P11255352170171474000

/-! ## A028886.P16774607211450519250

`A000027(p?[a(n-1)+8*n])` with `a(0)=0, a(1)=1`
-/

namespace A028886.P16774607211450519250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A028886.P16774607211450519250

/-! ## A028886.P16760868200186909493

`∩[A007519(n+1), A028884(n)]`
-/

namespace A028886.P16760868200186909493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P16760868200186909493

/-! ## A028886.P16138857385814295623

`∩[A045390(n+1), A028884(n)]`
-/

namespace A028886.P16138857385814295623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P16138857385814295623

/-! ## A028886.P17808607576267088421

`∩[A209544(n+1), A028884(n)]`
-/

namespace A028886.P17808607576267088421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P17808607576267088421

/-! ## A028886.P10580953307001173629

`∩[A007519(n+1), A166147(n+1)]`
-/

namespace A028886.P10580953307001173629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P10580953307001173629

/-! ## A028886.P2909456211933481222

`∩[A045390(n+1), A166147(n+1)]`
-/

namespace A028886.P2909456211933481222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P2909456211933481222

/-! ## A028886.P14467980420859982112

`∩[A166147(n+1), A209544(n+1)]`
-/

namespace A028886.P14467980420859982112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P14467980420859982112

/-! ## A028886.P14102604467034271725

`∩[A007519(n+1), A036573(n+3)]`
-/

namespace A028886.P14102604467034271725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036573 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028886.P14102604467034271725

/-!
# A028887: Theta series of 4-dimensional 5-modular lattice with det 25 and minimal norm 2.

The programs for A028887, the canonical program `A028887.P10338197440813535976` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028887 has offset 0).

The definition of A028887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028887.P7124936987868207170

`A227131(5*n)`
-/

namespace A028887.P7124936987868207170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (5 * n)

end

end A028887.P7124936987868207170

namespace A028887

/-- `A227131(5*n)` -/
def P7124936987868207170.Spec : Prop :=
  ∀ n, P7124936987868207170.a n = A028887 n

end A028887

/-! ## A028887.P12806817933703347134

`A000027(A227131(lcm(5, n)))`
-/

namespace A028887.P12806817933703347134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A227131 (Nat.lcm 5 n)).toNat

end

end A028887.P12806817933703347134

namespace A028887

/-- `A000027(A227131(lcm(5, n)))` -/
def P12806817933703347134.Spec : Prop :=
  ∀ n, P12806817933703347134.a n = A028887 n

end A028887

/-! ## A028887.P14984155512103134755

`C(A227131(A008706(n)), gcd(n%2+1, n%6))`
-/

namespace A028887.P14984155512103134755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227131 (A008706 n).toNat).toNat (Nat.gcd (n % 2 + 1) (n % 6))

end

end A028887.P14984155512103134755

namespace A028887

/-- `C(A227131(A008706(n)), gcd(n%2+1, n%6))` -/
def P14984155512103134755.Spec : Prop :=
  ∀ n, (P14984155512103134755.a n : ℤ) = A028887 n

end A028887

/-! ## A028887.P12759245420046989345

`lcm(A227131(A008706(n)), A227131(n))`
-/

namespace A028887.P12759245420046989345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A227131 (A008706 n).toNat) (A227131 n)

end

end A028887.P12759245420046989345

namespace A028887

/-- `lcm(A227131(A008706(n)), A227131(n))` -/
def P12759245420046989345.Spec : Prop :=
  ∀ n, (P12759245420046989345.a n : ℤ) = A028887 n

end A028887

/-! ## A028887.P6552644204095939627

`or(A000007(n), A227131(A008706(n)))`
-/

namespace A028887.P6552644204095939627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A227131 (A008706 n).toNat)

end

end A028887.P6552644204095939627

namespace A028887

/-- `or(A000007(n), A227131(A008706(n)))` -/
def P6552644204095939627.Spec : Prop :=
  ∀ n, P6552644204095939627.a n = A028887 n

end A028887

/-! ## A028887.P15959895346545320618

`A227131(A008706(n))+A000007(n+1)`
-/

namespace A028887.P15959895346545320618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 (A008706 n).toNat + A000007 (n + 1)

end

end A028887.P15959895346545320618

namespace A028887

/-- `A227131(A008706(n))+A000007(n+1)` -/
def P15959895346545320618.Spec : Prop :=
  ∀ n, P15959895346545320618.a n = A028887 n

end A028887

/-! ## A028887.P5893828457175037058

`A227131(A008706(n))%A038479(n+1)`
-/

namespace A028887.P5893828457175037058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227131 (A008706 n).toNat) (A038479 (n + 1))

end

end A028887.P5893828457175037058

namespace A028887

/-- `A227131(A008706(n))%A038479(n+1)` -/
def P5893828457175037058.Spec : Prop :=
  ∀ n, P5893828457175037058.a n = A028887 n

end A028887

/-! ## A028887.P10338197440813535976

`A008458(∑{d}[n, A091703(#)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028887

/-- `A008458(∑{d}[n, A091703(#)])` -/
def P10338197440813535976.Spec : Prop :=
  ∀ n, P10338197440813535976.a n = A028887 n

theorem P10338197440813535976.correct : P10338197440813535976.Spec := by
  intro n
  simp only [A028887]

end A028887

/-! ## A028887.P2763793429874978598

`A249010(4*n)`
-/

namespace A028887.P2763793429874978598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249010 (4 * n)

end

end A028887.P2763793429874978598

namespace A028887

/-- `A249010(4*n)` -/
def P2763793429874978598.Spec : Prop :=
  ∀ n, P2763793429874978598.a n = A028887 n

end A028887

/-!
# A028888: Smaller of two successive primes with a palindromic product.

The programs for A028888, there is no canonical definition to state claims against.
-/

/-! ## A028888.P14482082635931453391

`A028979(n+1)/A028978(n+1)`
-/

namespace A028888.P14482082635931453391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028979 (n + 1) : ℚ) / (A028978 (n + 1) : ℚ)

end

end A028888.P14482082635931453391

/-!
# A028889: Numbers whose iterated product of digits is a power of 2.

The programs for A028889, the canonical program `A028889.P11147284336912574653` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028889 has offset 1).

The definition of A028889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028889.P9518316857067710085

`eq[8, lcm(8, A031347(n))]`
-/

namespace A028889.P9518316857067710085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A031347 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028889.P9518316857067710085

namespace A028889

/-- `eq[8, lcm(8, A031347(n))]` -/
def P9518316857067710085.Spec : Prop :=
  ∀ n, (P9518316857067710085.a n : ℤ) = A028889 (n + 1)

end A028889

/-! ## A028889.P11147284336912574653

`eq[0, a(A171765(n))%n]` with `a(0)=8`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028889

/-- `eq[0, a(A171765(n))%n]` -/
def P11147284336912574653.Spec : Prop :=
  ∀ n, (P11147284336912574653.a n : ℤ) = A028889 (n + 1)

theorem P11147284336912574653.correct : P11147284336912574653.Spec := by
  intro n
  simp only [A028889, Nat.add_sub_cancel]

end A028889

/-! ## A028889.P8849949058788322668

`eq[gcd(8, A051802(n)), A031347(n)]`
-/

namespace A028889.P8849949058788322668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A051802 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028889.P8849949058788322668

namespace A028889

/-- `eq[gcd(8, A051802(n)), A031347(n)]` -/
def P8849949058788322668.Spec : Prop :=
  ∀ n, (P8849949058788322668.a n : ℤ) = A028889 (n + 1)

end A028889

/-! ## A028889.P16603651903838814005

`lt[1, A030167(A007954(n))]`
-/

namespace A028889.P16603651903838814005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030167 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028889.P16603651903838814005

namespace A028889

/-- `lt[1, A030167(A007954(n))]` -/
def P16603651903838814005.Spec : Prop :=
  ∀ n, (P16603651903838814005.a n : ℤ) = A028889 (n + 1)

end A028889

/-! ## A028889.P12173856904568672776

`A028846(n+1)-A212172(A218116(n))`
-/

namespace A028889.P12173856904568672776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1) - A212172 (A218116 n).toNat

end

end A028889.P12173856904568672776

namespace A028889

/-- `A028846(n+1)-A212172(A218116(n))` -/
def P12173856904568672776.Spec : Prop :=
  ∀ n, P12173856904568672776.a n = A028889 (n + 1)

end A028889

/-!
# A028890: Product of digits of n is a nonzero Fibonacci number.

The programs for A028890, the canonical program `A028890.P17409885626667997560` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028890 has offset 1).

The definition of A028890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028890.P17409885626667997560

`eq[1, A007895(A007954(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028890

/-- `eq[1, A007895(A007954(n))]` -/
def P17409885626667997560.Spec : Prop :=
  ∀ n, (P17409885626667997560.a n : ℤ) = A028890 (n + 1)

theorem P17409885626667997560.correct : P17409885626667997560.Spec := by
  intro n
  simp only [A028890, Nat.add_sub_cancel]

end A028890

/-! ## A028890.P603379897882394202

`eq[A010056(A007954(n)), A168046(n)]`
-/

namespace A028890.P603379897882394202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028890.P603379897882394202

namespace A028890

/-- `eq[A010056(A007954(n)), A168046(n)]` -/
def P603379897882394202.Spec : Prop :=
  ∀ n, (P603379897882394202.a n : ℤ) = A028890 (n + 1)

end A028890

/-! ## A028890.P8956067249655604231

`eq[A003603(A051801(n)), A168046(n)]`
-/

namespace A028890.P8956067249655604231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028890.P8956067249655604231

namespace A028890

/-- `eq[A003603(A051801(n)), A168046(n)]` -/
def P8956067249655604231.Spec : Prop :=
  ∀ n, (P8956067249655604231.a n : ℤ) = A028890 (n + 1)

end A028890

/-! ## A028890.P11929976842678647065

`eq[A055641(n), A292031(A007954(n))]`
-/

namespace A028890.P11929976842678647065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028890.P11929976842678647065

namespace A028890

/-- `eq[A055641(n), A292031(A007954(n))]` -/
def P11929976842678647065.Spec : Prop :=
  ∀ n, (P11929976842678647065.a n : ℤ) = A028890 (n + 1)

end A028890

/-! ## A028890.P264447610183480835

`eq[A217096(n), A292031(A007954(n))]`
-/

namespace A028890.P264447610183480835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028890.P264447610183480835

namespace A028890

/-- `eq[A217096(n), A292031(A007954(n))]` -/
def P264447610183480835.Spec : Prop :=
  ∀ n, (P264447610183480835.a n : ℤ) = A028890 (n + 1)

end A028890

/-! ## A028890.P8154854260968016884

`eq[A217096(n), A292031(A051801(n))]`
-/

namespace A028890.P8154854260968016884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028890.P8154854260968016884

namespace A028890

/-- `eq[A217096(n), A292031(A051801(n))]` -/
def P8154854260968016884.Spec : Prop :=
  ∀ n, (P8154854260968016884.a n : ℤ) = A028890 (n + 1)

end A028890

/-!
# A028891: Iterated product of digits of n is a positive Fibonacci number.

The programs for A028891, there is no canonical definition to state claims against.
-/

/-! ## A028891.P12513418895749282656

`eq[0, a(A171765(n))%A212216(n)]` with `a(0)=8`
-/

namespace A028891.P12513418895749282656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  Int.tmod (f2 (A171765 n).toNat) (A212216 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028891.P12513418895749282656

/-!
# A028892: a(n) = Fibonacci(n) - 2^(floor(n/2)).

The programs for A028892, the canonical program `A028892.P5650523089754077425` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028892 has offset 0).

The definition of A028892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028892.P5650523089754077425

`A000045(n)-A016116(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028892

/-- `A000045(n)-A016116(n)` -/
def P5650523089754077425.Spec : Prop :=
  ∀ n, P5650523089754077425.a n = A028892 n

theorem P5650523089754077425.correct : P5650523089754077425.Spec := by
  intro n
  simp only [A028892]

end A028892

/-! ## A028892.P5173531447932648388

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=0, a(2)=-1, a(3)=0`
-/

namespace A028892.P5173531447932648388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1, 0] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4)

end

end A028892.P5173531447932648388

namespace A028892

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P5173531447932648388.Spec : Prop :=
  ∀ n, P5173531447932648388.a n = A028892 n

end A028892

/-! ## A028892.P980333669561820081

`A000045(n)-Δ[A052955(n)]`
-/

namespace A028892.P980333669561820081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A028892.P980333669561820081

namespace A028892

/-- `A000045(n)-Δ[A052955(n)]` -/
def P980333669561820081.Spec : Prop :=
  ∀ n, P980333669561820081.a n = A028892 n

end A028892

/-! ## A028892.P8507388949159372210

`A001611(n)-(A016116(n)+1)`
-/

namespace A028892.P8507388949159372210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A016116 n + 1)

end

end A028892.P8507388949159372210

namespace A028892

/-- `A001611(n)-(A016116(n)+1)` -/
def P8507388949159372210.Spec : Prop :=
  ∀ n, P8507388949159372210.a n = A028892 n

end A028892

/-! ## A028892.P13214498126195516558

`A212804(n+1)-A016116(n)`
-/

namespace A028892.P13214498126195516558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A016116 n

end

end A028892.P13214498126195516558

namespace A028892

/-- `A212804(n+1)-A016116(n)` -/
def P13214498126195516558.Spec : Prop :=
  ∀ n, P13214498126195516558.a n = A028892 n

end A028892

/-! ## A028892.P12547447049106795831

`A000045(n)-A158780(n+2)`
-/

namespace A028892.P12547447049106795831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A158780 (n + 2)

end

end A028892.P12547447049106795831

namespace A028892

/-- `A000045(n)-A158780(n+2)` -/
def P12547447049106795831.Spec : Prop :=
  ∀ n, P12547447049106795831.a n = A028892 n

end A028892

/-! ## A028892.P4252480631962073944

`A103609(2*n)-A016116(n)`
-/

namespace A028892.P4252480631962073944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A016116 n

end

end A028892.P4252480631962073944

namespace A028892

/-- `A103609(2*n)-A016116(n)` -/
def P4252480631962073944.Spec : Prop :=
  ∀ n, P4252480631962073944.a n = A028892 n

end A028892

/-! ## A028892.P11795802976542199394

`A000045(n)-A200675(2*n)`
-/

namespace A028892.P11795802976542199394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A200675 (2 * n)

end

end A028892.P11795802976542199394

namespace A028892

/-- `A000045(n)-A200675(2*n)` -/
def P11795802976542199394.Spec : Prop :=
  ∀ n, P11795802976542199394.a n = A028892 n

end A028892

/-! ## A028892.P9775024080595390256

`A000045(n)-A131575(or(1, n))`
-/

namespace A028892.P9775024080595390256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A131575 (Nat.lor 1 n)

end

end A028892.P9775024080595390256

namespace A028892

/-- `A000045(n)-A131575(or(1, n))` -/
def P9775024080595390256.Spec : Prop :=
  ∀ n, P9775024080595390256.a n = A028892 n

end A028892

/-! ## A028892.P5444029347636480225

`A000045(n)-abs(A117575(n+1))`
-/

namespace A028892.P5444029347636480225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - |A117575 (n + 1)|

end

end A028892.P5444029347636480225

namespace A028892

/-- `A000045(n)-abs(A117575(n+1))` -/
def P5444029347636480225.Spec : Prop :=
  ∀ n, P5444029347636480225.a n = A028892 n

end A028892

/-! ## A028892.P9279539347600797789

`A000045(n)-Δ[A164090(n+1)]`
-/

namespace A028892.P9279539347600797789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A028892.P9279539347600797789

namespace A028892

/-- `A000045(n)-Δ[A164090(n+1)]` -/
def P9279539347600797789.Spec : Prop :=
  ∀ n, P9279539347600797789.a n = A028892 n

end A028892

/-! ## A028892.P3754214356361044666

`A000045(n)-∏[gcd(2, A280193(n))]`
-/

namespace A028892.P3754214356361044666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A028892.P3754214356361044666

namespace A028892

/-- `A000045(n)-∏[gcd(2, A280193(n))]` -/
def P3754214356361044666.Spec : Prop :=
  ∀ n, P3754214356361044666.a n = A028892 n

end A028892

/-! ## A028892.P7440459591329905611

`A000045(n)-A000079(A004526(n))`
-/

namespace A028892.P7440459591329905611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000079 (A004526 n).toNat

end

end A028892.P7440459591329905611

namespace A028892

/-- `A000045(n)-A000079(A004526(n))` -/
def P7440459591329905611.Spec : Prop :=
  ∀ n, P7440459591329905611.a n = A028892 n

end A028892

/-! ## A028892.P17376479221500564303

`A000045(n)-A131577(A110654(n+1))`
-/

namespace A028892.P17376479221500564303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A131577 (A110654 (n + 1)).toNat

end

end A028892.P17376479221500564303

namespace A028892

/-- `A000045(n)-A131577(A110654(n+1))` -/
def P17376479221500564303.Spec : Prop :=
  ∀ n, P17376479221500564303.a n = A028892 n

end A028892

/-! ## A028892.P63493132546123710

`A000045(n)-A000079(A008619(n)-1)`
-/

namespace A028892.P63493132546123710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000079 (A008619 n - 1).toNat

end

end A028892.P63493132546123710

namespace A028892

/-- `A000045(n)-A000079(A008619(n)-1)` -/
def P63493132546123710.Spec : Prop :=
  ∀ n, P63493132546123710.a n = A028892 n

end A028892

/-! ## A028892.P17887144071379675795

`A000045(n)+A000045(n)-A295619(n)`
-/

namespace A028892.P17887144071379675795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000045 n - A295619 n)

end

end A028892.P17887144071379675795

namespace A028892

/-- `A000045(n)+A000045(n)-A295619(n)` -/
def P17887144071379675795.Spec : Prop :=
  ∀ n, P17887144071379675795.a n = A028892 n

end A028892

/-! ## A028892.P14128552006706093618

`A000045(n)-A000079(n-A110654(n))`
-/

namespace A028892.P14128552006706093618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000079 ((n : ℤ) - A110654 n).toNat

end

end A028892.P14128552006706093618

namespace A028892

/-- `A000045(n)-A000079(n-A110654(n))` -/
def P14128552006706093618.Spec : Prop :=
  ∀ n, P14128552006706093618.a n = A028892 n

end A028892

/-! ## A028892.P14100570902993040955

`A000045(n)-∏[A000034(n)]/A000034(n)`
-/

namespace A028892.P14100570902993040955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A028892.P14100570902993040955

namespace A028892

/-- `A000045(n)-∏[A000034(n)]/A000034(n)` -/
def P14100570902993040955.Spec : Prop :=
  ∀ n, P14100570902993040955.a n = (A028892 n : ℚ)

end A028892

/-! ## A028892.P17752802873725633096

`A000045(n)+A052955(n)-A052955(n+1)`
-/

namespace A028892.P17752802873725633096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A052955 n - A052955 (n + 1))

end

end A028892.P17752802873725633096

namespace A028892

/-- `A000045(n)+A052955(n)-A052955(n+1)` -/
def P17752802873725633096.Spec : Prop :=
  ∀ n, P17752802873725633096.a n = A028892 n

end A028892

/-! ## A028892.P11736337084911636682

`A000045(n)+A086341(n)-A097581(n+1)`
-/

namespace A028892.P11736337084911636682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A086341 n - A097581 (n + 1))

end

end A028892.P11736337084911636682

namespace A028892

/-- `A000045(n)+A086341(n)-A097581(n+1)` -/
def P11736337084911636682.Spec : Prop :=
  ∀ n, P11736337084911636682.a n = A028892 n

end A028892

/-!
# A028894: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +1 for 0, +3 for 1.

The programs for A028894, the canonical program `A028894.P10298057160581444621` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028894 has offset 1).

The definition of A028894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028894.P10298057160581444621

`A050141(n+1)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028894

/-- `A050141(n+1)+4*a(n-1)` -/
def P10298057160581444621.Spec : Prop :=
  ∀ n, P10298057160581444621.a n = A028894 (n + 1)

theorem P10298057160581444621.correct : P10298057160581444621.Spec := by
  intro n
  simp only [A028894, Nat.add_sub_cancel]

end A028894

/-! ## A028894.P15605157389877314183

`xor(∑[floor(4^n/2)], A066744(n+1))`
-/

namespace A028894.P15605157389877314183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A066744 (n + 1))

end

end A028894.P15605157389877314183

namespace A028894

/-- `xor(∑[floor(4^n/2)], A066744(n+1))` -/
def P15605157389877314183.Spec : Prop :=
  ∀ n, P15605157389877314183.a n = A028894 (n + 1)

end A028894

/-! ## A028894.P6797777731478165049

`or(4*a(n-1), Δ[A284625(n+1)])` with `a(0)=1`
-/

namespace A028894.P6797777731478165049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A028894.P6797777731478165049

namespace A028894

/-- `or(4*a(n-1), Δ[A284625(n+1)])` -/
def P6797777731478165049.Spec : Prop :=
  ∀ n, P6797777731478165049.a n = A028894 (n + 1)

end A028894

/-! ## A028894.P10447165724551684144

`A080675(n+1)-A066744(n+1)`
-/

namespace A028894.P10447165724551684144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A066744 (n + 1)

end

end A028894.P10447165724551684144

namespace A028894

/-- `A080675(n+1)-A066744(n+1)` -/
def P10447165724551684144.Spec : Prop :=
  ∀ n, P10447165724551684144.a n = A028894 (n + 1)

end A028894

/-! ## A028894.P11556286026058914163

`A321421(n)+1-A066744(n+1)`
-/

namespace A028894.P11556286026058914163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n + (1 - A066744 (n + 1))

end

end A028894.P11556286026058914163

namespace A028894

/-- `A321421(n)+1-A066744(n+1)` -/
def P11556286026058914163.Spec : Prop :=
  ∀ n, P11556286026058914163.a n = A028894 (n + 1)

end A028894

/-! ## A028894.P4742722983080812924

`Δ[A276886(n+2)]+4*a(n-1)` with `a(0)=1`
-/

namespace A028894.P4742722983080812924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 4 * a (n - 1)

end

end A028894.P4742722983080812924

namespace A028894

/-- `Δ[A276886(n+2)]+4*a(n-1)` -/
def P4742722983080812924.Spec : Prop :=
  ∀ n, P4742722983080812924.a n = A028894 (n + 1)

end A028894

/-!
# A028895: 5 times triangular numbers: a(n) = 5*n*(n+1)/2.

The programs for A028895, the canonical program `A028895.P13551597639118349483` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028895 has offset 0).

The definition of A028895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028895.P14656646202572761259

`5*n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028895.P14656646202572761259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) * ((n + 1 : ℚ) / 2))

end

end A028895.P14656646202572761259

namespace A028895

/-- `5*n*(n+1)/2` -/
def P14656646202572761259.Spec : Prop :=
  ∀ n, P14656646202572761259.a n = (A028895 n : ℚ)

end A028895

/-! ## A028895.P13551597639118349483

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=15`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028895

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13551597639118349483.Spec : Prop :=
  ∀ n, P13551597639118349483.a n = A028895 n

theorem P13551597639118349483.correct : P13551597639118349483.Spec := by
  intro n
  simp only [A028895]

end A028895

/-! ## A028895.P991687625723063011

`A005891(n)-1`
-/

namespace A028895.P991687625723063011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - 1

end

end A028895.P991687625723063011

namespace A028895

/-- `A005891(n)-1` -/
def P991687625723063011.Spec : Prop :=
  ∀ n, P991687625723063011.a n = A028895 n

end A028895

/-! ## A028895.P11279790313613202456

`A055998(3*n)-A055998(2*n)`
-/

namespace A028895.P11279790313613202456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (3 * n) - A055998 (2 * n)

end

end A028895.P11279790313613202456

namespace A028895

/-- `A055998(3*n)-A055998(2*n)` -/
def P11279790313613202456.Spec : Prop :=
  ∀ n, P11279790313613202456.a n = A028895 n

end A028895

/-! ## A028895.P5167755661154623776

`A130520(5*n+4)`
-/

namespace A028895.P5167755661154623776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * n + 4)

end

end A028895.P5167755661154623776

namespace A028895

/-- `A130520(5*n+4)` -/
def P5167755661154623776.Spec : Prop :=
  ∀ n, P5167755661154623776.a n = A028895 n

end A028895

/-! ## A028895.P13683902033873331084

`∑[n]/tan(acot(5))`
-/

namespace A028895.P13683902033873331084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (5 : ℝ))

end

end A028895.P13683902033873331084

namespace A028895

/-- `∑[n]/tan(acot(5))` -/
def P13683902033873331084.Spec : Prop :=
  ∀ n, P13683902033873331084.a n = (A028895 n : ℝ)

end A028895

/-! ## A028895.P9217392811313227111

`∑[n]/cot(atan(5))`
-/

namespace A028895.P9217392811313227111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (5 : ℝ))

end

end A028895.P9217392811313227111

namespace A028895

/-- `∑[n]/cot(atan(5))` -/
def P9217392811313227111.Spec : Prop :=
  ∀ n, P9217392811313227111.a n = (A028895 n : ℝ)

end A028895

/-! ## A028895.P3244854910256678278

`∑[n/cos(atan(2))²]`
-/

namespace A028895.P3244854910256678278
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.arctan (2 : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028895.P3244854910256678278

namespace A028895

/-- `∑[n/cos(atan(2))²]` -/
def P3244854910256678278.Spec : Prop :=
  ∀ n, P3244854910256678278.a n = (A028895 n : ℝ)

end A028895

/-! ## A028895.P14270200659008096314

`∑[n/sin(acot(2))²]`
-/

namespace A028895.P14270200659008096314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (SequenceMachineLib.acot (2 : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028895.P14270200659008096314

namespace A028895

/-- `∑[n/sin(acot(2))²]` -/
def P14270200659008096314.Spec : Prop :=
  ∀ n, P14270200659008096314.a n = (A028895 n : ℝ)

end A028895

/-! ## A028895.P7291835204690527688

`lcm(5, ∑[n]+1)-5`
-/

namespace A028895.P7291835204690527688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) - 5

end

end A028895.P7291835204690527688

namespace A028895

/-- `lcm(5, ∑[n]+1)-5` -/
def P7291835204690527688.Spec : Prop :=
  ∀ n, P7291835204690527688.a n = A028895 n

end A028895

/-! ## A028895.P1554009089815481325

`∑[a(n-1)+5]` with `a(0)=0`
-/

namespace A028895.P1554009089815481325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028895.P1554009089815481325

namespace A028895

/-- `∑[a(n-1)+5]` -/
def P1554009089815481325.Spec : Prop :=
  ∀ n, (P1554009089815481325.a n : ℤ) = A028895 n

end A028895

/-! ## A028895.P1410279310652545285

`∑[n]/(1-tanh(log(3)))`
-/

namespace A028895.P1410279310652545285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (1 - Real.tanh (Real.log (3 : ℝ)))

end

end A028895.P1410279310652545285

namespace A028895

/-- `∑[n]/(1-tanh(log(3)))` -/
def P1410279310652545285.Spec : Prop :=
  ∀ n, P1410279310652545285.a n = (A028895 n : ℝ)

end A028895

/-! ## A028895.P393704932014260658

`5*n+a(n-1)` with `a(0)=0`
-/

namespace A028895.P393704932014260658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 * n + a (n - 1)

end

end A028895.P393704932014260658

namespace A028895

/-- `5*n+a(n-1)` -/
def P393704932014260658.Spec : Prop :=
  ∀ n, (P393704932014260658.a n : ℤ) = A028895 n

end A028895

/-! ## A028895.P13967079988738365838

`-∑[a(n-1)-5]` with `a(0)=0`
-/

namespace A028895.P13967079988738365838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028895.P13967079988738365838

namespace A028895

/-- `-∑[a(n-1)-5]` -/
def P13967079988738365838.Spec : Prop :=
  ∀ n, P13967079988738365838.a n = A028895 n

end A028895

/-! ## A028895.P13314264683546180631

`6*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A028895.P13314264683546180631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A028895.P13314264683546180631

namespace A028895

/-- `6*n-(n-a(n-1))` -/
def P13314264683546180631.Spec : Prop :=
  ∀ n, P13314264683546180631.a n = A028895 n

end A028895

/-! ## A028895.P8161959252381462083

`∑[n]-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A028895.P8161959252381462083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A028895.P8161959252381462083

namespace A028895

/-- `∑[n]-∑[a(n-1)-4]` -/
def P8161959252381462083.Spec : Prop :=
  ∀ n, P8161959252381462083.a n = A028895 n

end A028895

/-! ## A028895.P2553221632569456975

`C(n+1, 2)+(n+1)*2*n`
-/

namespace A028895.P2553221632569456975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n + 1) * (2 * n)

end

end A028895.P2553221632569456975

namespace A028895

/-- `C(n+1, 2)+(n+1)*2*n` -/
def P2553221632569456975.Spec : Prop :=
  ∀ n, (P2553221632569456975.a n : ℤ) = A028895 n

end A028895

/-! ## A028895.P4767854093392909653

`a(n-1)/(1-2/(n+1))` with `a(0)=0, a(1)=5`
-/

namespace A028895.P4767854093392909653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) / (1 - 2 / (n + 1 : ℚ))

end

end A028895.P4767854093392909653

namespace A028895

/-- `a(n-1)/(1-2/(n+1))` -/
def P4767854093392909653.Spec : Prop :=
  ∀ n, P4767854093392909653.a n = (A028895 n : ℚ)

end A028895

/-!
# A028896: 6 times triangular numbers: a(n) = 3*n*(n+1).

The programs for A028896, the canonical program `A028896.P12671123993650379957` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028896 has offset 0).

The definition of A028896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)` (program `A028896.P12671123993650379957`, by `A028896.P12671123993650379957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028896.P12671123993650379957

`3*n*(n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028896

/-- `3*n*(n+1)` -/
def P12671123993650379957.Spec : Prop :=
  ∀ n, (P12671123993650379957.a n : ℤ) = A028896 n

theorem P12671123993650379957.correct : P12671123993650379957.Spec := by
  intro n
  simp only [A028896]

end A028896

/-! ## A028896.P11305040366140986396

`A003215(n)-1`
-/

namespace A028896.P11305040366140986396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - 1

end

end A028896.P11305040366140986396

namespace A028896

/-- `A003215(n)-1` -/
def P11305040366140986396.Spec : Prop :=
  ∀ n, P11305040366140986396.a n = A028896 n

end A028896

/-! ## A028896.P15084588591304242675

`A049598(n)/2`
-/

namespace A028896.P15084588591304242675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049598 n : ℚ) / 2

end

end A028896.P15084588591304242675

namespace A028896

/-- `A049598(n)/2` -/
def P15084588591304242675.Spec : Prop :=
  ∀ n, P15084588591304242675.a n = (A028896 n : ℚ)

end A028896

/-! ## A028896.P2516889442152459352

`A049450(n)+4*n`
-/

namespace A028896.P2516889442152459352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + (4 * n : ℤ)

end

end A028896.P2516889442152459352

namespace A028896

/-- `A049450(n)+4*n` -/
def P2516889442152459352.Spec : Prop :=
  ∀ n, P2516889442152459352.a n = A028896 n

end A028896

/-! ## A028896.P14561838296854139928

`A033996(n)-A002378(n)`
-/

namespace A028896.P14561838296854139928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A002378 n

end

end A028896.P14561838296854139928

namespace A028896

/-- `A033996(n)-A002378(n)` -/
def P14561838296854139928.Spec : Prop :=
  ∀ n, P14561838296854139928.a n = A028896 n

end A028896

/-! ## A028896.P15413918511649950962

`A124080(n)-A046092(n)`
-/

namespace A028896.P15413918511649950962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A046092 n

end

end A028896.P15413918511649950962

namespace A028896

/-- `A124080(n)-A046092(n)` -/
def P15413918511649950962.Spec : Prop :=
  ∀ n, P15413918511649950962.a n = A028896 n

end A028896

/-! ## A028896.P14214023247448353552

`A174709(6*n+5)`
-/

namespace A028896.P14214023247448353552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (6 * n + 5)

end

end A028896.P14214023247448353552

namespace A028896

/-- `A174709(6*n+5)` -/
def P14214023247448353552.Spec : Prop :=
  ∀ n, P14214023247448353552.a n = A028896 n

end A028896

/-! ## A028896.P15083883203051796949

`xor(1, Δ[n^3])`
-/

namespace A028896.P15083883203051796949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A028896.P15083883203051796949

namespace A028896

/-- `xor(1, Δ[n^3])` -/
def P15083883203051796949.Spec : Prop :=
  ∀ n, P15083883203051796949.a n = A028896 n

end A028896

/-! ## A028896.P6367752822906946435

`∑[n]/tan(acot(6))`
-/

namespace A028896.P6367752822906946435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (6 : ℝ))

end

end A028896.P6367752822906946435

namespace A028896

/-- `∑[n]/tan(acot(6))` -/
def P6367752822906946435.Spec : Prop :=
  ∀ n, P6367752822906946435.a n = (A028896 n : ℝ)

end A028896

/-! ## A028896.P4862558691243625549

`∑[n]/cot(atan(6))`
-/

namespace A028896.P4862558691243625549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (6 : ℝ))

end

end A028896.P4862558691243625549

namespace A028896

/-- `∑[n]/cot(atan(6))` -/
def P4862558691243625549.Spec : Prop :=
  ∀ n, P4862558691243625549.a n = (A028896 n : ℝ)

end A028896

/-! ## A028896.P7798639286214006697

`and(Δ[n^3], -2)`
-/

namespace A028896.P7798639286214006697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-2)

end

end A028896.P7798639286214006697

namespace A028896

/-- `and(Δ[n^3], -2)` -/
def P7798639286214006697.Spec : Prop :=
  ∀ n, P7798639286214006697.a n = A028896 n

end A028896

/-! ## A028896.P18105765091685179047

`lcm(2, 1-Δ[n^3])`
-/

namespace A028896.P18105765091685179047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A028896.P18105765091685179047

namespace A028896

/-- `lcm(2, 1-Δ[n^3])` -/
def P18105765091685179047.Spec : Prop :=
  ∀ n, (P18105765091685179047.a n : ℤ) = A028896 n

end A028896

/-! ## A028896.P7602343947323409578

`or(1, Δ[n^3])-1`
-/

namespace A028896.P7602343947323409578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 1

end

end A028896.P7602343947323409578

namespace A028896

/-- `or(1, Δ[n^3])-1` -/
def P7602343947323409578.Spec : Prop :=
  ∀ n, P7602343947323409578.a n = A028896 n

end A028896

/-! ## A028896.P17107725910786945804

`A045944(n)+n`
-/

namespace A028896.P17107725910786945804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n + (n : ℤ)

end

end A028896.P17107725910786945804

namespace A028896

/-- `A045944(n)+n` -/
def P17107725910786945804.Spec : Prop :=
  ∀ n, P17107725910786945804.a n = A028896 n

end A028896

/-! ## A028896.P17074416466577978156

`A005449(n)+A115067(n+1)`
-/

namespace A028896.P17074416466577978156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A115067 (n + 1)

end

end A028896.P17074416466577978156

namespace A028896

/-- `A005449(n)+A115067(n+1)` -/
def P17074416466577978156.Spec : Prop :=
  ∀ n, P17074416466577978156.a n = A028896 n

end A028896

/-!
# A028897: If n = Sum c_i 10^i then a(n) = Sum c_i 2^i.

The programs for A028897, there is no canonical definition to state claims against.
-/

/-! ## A028897.P404519832511281209

`and(or(30, n), A244158(n))`
-/

namespace A028897.P404519832511281209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.lor 30 n : ℤ) (A244158 n)

end

end A028897.P404519832511281209

/-! ## A028897.P406635336992134933

`and(A081594(n), A244158(n))`
-/

namespace A028897.P406635336992134933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081594 n) (A244158 n)

end

end A028897.P406635336992134933

/-! ## A028897.P594174066972377772

`and(-A040001(n), A244158(n))`
-/

namespace A028897.P594174066972377772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A040001 n) (A244158 n)

end

end A028897.P594174066972377772

/-! ## A028897.P15581047705859141348

`A033930(A051022(n))%(n+1)`
-/

namespace A028897.P15581047705859141348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033930 (A051022 n).toNat) (n + 1 : ℤ)

end

end A028897.P15581047705859141348

/-! ## A028897.P10183007126158122355

`A244158(n)-A059995(floor(sqrt(n)))`
-/

namespace A028897.P10183007126158122355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n - A059995 (Nat.sqrt n)

end

end A028897.P10183007126158122355

/-! ## A028897.P8572587934141672150

`xor(A059995(floor(n/10)), A244158(n))`
-/

namespace A028897.P8572587934141672150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059995 ⌊(n : ℚ) / 10⌋.toNat) (A244158 n)

end

end A028897.P8572587934141672150

/-! ## A028897.P1022798113574255790

`A244158(n)-A054899(A054899(n))`
-/

namespace A028897.P1022798113574255790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n - A054899 (A054899 n).toNat

end

end A028897.P1022798113574255790

/-! ## A028897.P10156595392984551984

`A007953(A056142(n))`
-/

namespace A028897.P10156595392984551984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A056142 n).toNat

end

end A028897.P10156595392984551984

/-! ## A028897.P16760553916806134628

`A007953(A056143(n))`
-/

namespace A028897.P16760553916806134628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A056143 n).toNat

end

end A028897.P16760553916806134628

/-! ## A028897.P15884715643280175937

`A322001(n)%p?[A265898(n)]`
-/

namespace A028897.P15884715643280175937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322001 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028897.P15884715643280175937

/-! ## A028897.P11073378307995383422

`A244158(n+1)-Δ[A244158(n)]`
-/

namespace A028897.P11073378307995383422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (n + 1) - (f1 (n + 1) - f1 n)

end

end A028897.P11073378307995383422

/-! ## A028897.P11332548898945174251

`A081594(n)%∑[A156230(n+1)]`
-/

namespace A028897.P11332548898945174251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081594 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028897.P11332548898945174251

/-! ## A028897.P1643307808011528453

`A244158(n)%∑[A156230(n+1)]`
-/

namespace A028897.P1643307808011528453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244158 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028897.P1643307808011528453

/-!
# A028899: Map n = Sum c_i 10^i to a(n) = Sum c_i 4^i.

The programs for A028899, there is no canonical definition to state claims against.
-/

/-! ## A028899.P15892858519364181346

`A028897(A051022(n))`
-/

namespace A028899.P15892858519364181346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A051022 n).toNat

end

end A028899.P15892858519364181346

/-! ## A028899.P3292115677471484784

`A122639(n)%A004281(n)`
-/

namespace A028899.P3292115677471484784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122639 n) (A004281 n)

end

end A028899.P3292115677471484784

