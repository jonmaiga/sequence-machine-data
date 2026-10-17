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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065300: Numbers k such that the sum of divisors of k is a squarefree number.

The programs for A065300, there is no canonical definition to state claims against.
-/

/-! ## A065300.P15637732379894797960

`∪[A065301(n+1), A086368(n+1)]`
-/

namespace A065300.P15637732379894797960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065300.P15637732379894797960

/-! ## A065300.P15453503580199047850

`eq[1, A326038(n+1)]+1`
-/

namespace A065300.P15453503580199047850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P15453503580199047850

/-! ## A065300.P164916658363137734

`eq[1, A326039(n+1)]+1`
-/

namespace A065300.P164916658363137734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P164916658363137734

/-! ## A065300.P16814635325931680584

`eq[n, A326044(n+1)]+1`
-/

namespace A065300.P16814635325931680584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P16814635325931680584

/-! ## A065300.P17704017429800656865

`eq[1, A007424(A000203(n+1))]+1`
-/

namespace A065300.P17704017429800656865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P17704017429800656865

/-! ## A065300.P728465115017684183

`lt[A048146(A155085(n+1)-(n+1)), 1]+1`
-/

namespace A065300.P728465115017684183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P728465115017684183

/-! ## A065300.P5147236256973089902

`lt[A048146(2*(n+1)-A033879(n+1)), 1]+1`
-/

namespace A065300.P5147236256973089902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P5147236256973089902

/-! ## A065300.P13071856593756203733

`lt[A048146(A074400(n+1)/2), 1]+1`
-/

namespace A065300.P13071856593756203733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P13071856593756203733

/-! ## A065300.P3834293401752654813

`lt[A048146(A088580(n+1)-1), 1]+1`
-/

namespace A065300.P3834293401752654813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A088580 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P3834293401752654813

/-! ## A065300.P1854474562330695445

`lt[A048146(A064987(n+1)/(n+1)), 1]+1`
-/

namespace A065300.P1854474562330695445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P1854474562330695445

/-! ## A065300.P4014289589377163251

`lt[A048146(A082052(n+1)+A050449(n+1)), 1]+1`
-/

namespace A065300.P4014289589377163251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A082052 (n + 1) + A050449 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P4014289589377163251

/-! ## A065300.P5864815936846359292

`lt[A048146(A070039(n+1)+A070038(n+1)), 1]+1`
-/

namespace A065300.P5864815936846359292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A070039 (n + 1) + A070038 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P5864815936846359292

/-! ## A065300.P10164969960035114942

`lt[A325974(A088580(n+1)-1), 1]+1`
-/

namespace A065300.P10164969960035114942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (A088580 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P10164969960035114942

/-! ## A065300.P13463700337548053578

`lt[A326128(A088580(n+1)-1), 1]+1`
-/

namespace A065300.P13463700337548053578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A088580 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P13463700337548053578

/-! ## A065300.P5073481361314374847

`lt[A325974(A074400(n+1)/2), 1]+1`
-/

namespace A065300.P5073481361314374847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P5073481361314374847

/-! ## A065300.P8481609168834162352

`lt[A326128(A074400(n+1)/2), 1]+1`
-/

namespace A065300.P8481609168834162352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065300.P8481609168834162352

/-! ## A065300.P13830510610497929361

`eq[1, A003557(A276528(n+1))]+1`
-/

namespace A065300.P13830510610497929361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A276528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P13830510610497929361

/-! ## A065300.P14947087438050472113

`eq[1, A085731(∑{d}[n+1, #])]+1`
-/

namespace A065300.P14947087438050472113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065300.P14947087438050472113

/-!
# A065301: Numbers k such that both k and the sum of its divisors are squarefree numbers.

The programs for A065301, there is no canonical definition to state claims against.
-/

/-! ## A065301.P10407528379517801426

`∪[A049097(n+1), A065302(n+1)]`
-/

namespace A065301.P10407528379517801426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P10407528379517801426

/-! ## A065301.P13714321488755647553

`∩[A281292(n+1), A386424(n+1)]`
-/

namespace A065301.P13714321488755647553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P13714321488755647553

/-! ## A065301.P13092568934320897250

`∩[A065300(n+1), A281292(n+1)]`
-/

namespace A065301.P13092568934320897250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P13092568934320897250

/-! ## A065301.P12660800445328415614

`∩[A065300(n+1), A386424(n+1)]`
-/

namespace A065301.P12660800445328415614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P12660800445328415614

/-! ## A065301.P4393345265642194336

`filter[A065300(n+1), A008966(#)]`
-/

namespace A065301.P4393345265642194336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A065301.P4393345265642194336

/-! ## A065301.P2633307249353720933

`filter[A386424(n+1), A008966(#)]`
-/

namespace A065301.P2633307249353720933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A065301.P2633307249353720933

/-! ## A065301.P2972437222137105047

`filter[A065300(n+1), A359377(#)]`
-/

namespace A065301.P2972437222137105047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A065301.P2972437222137105047

/-! ## A065301.P524339382599892658

`filter[A065300(n+1), A380467(#)]`
-/

namespace A065301.P524339382599892658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A065301.P524339382599892658

/-! ## A065301.P4649019804733096548

`filter[A386424(n+1), A354923(#)]`
-/

namespace A065301.P4649019804733096548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A065301.P4649019804733096548

/-! ## A065301.P10047461941981471731

`filter[A386424(n+1), A354924(#)]`
-/

namespace A065301.P10047461941981471731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A065301.P10047461941981471731

/-! ## A065301.P6975891468642527458

`filter[A386424(n+1), A359377(#)]`
-/

namespace A065301.P6975891468642527458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A065301.P6975891468642527458

/-! ## A065301.P6142663234305873676

`filter[A386424(n+1), A380467(#)]`
-/

namespace A065301.P6142663234305873676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A065301.P6142663234305873676

/-! ## A065301.P2961146608168899569

`∩[A065300(n+1), A235050(n+1)]`
-/

namespace A065301.P2961146608168899569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P2961146608168899569

/-! ## A065301.P3409630806825585821

`∩[A235050(n+1), A386424(n+1)]`
-/

namespace A065301.P3409630806825585821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P3409630806825585821

/-! ## A065301.P3182409962110417848

`∩[A065300(n+1), A380468(n+1)]`
-/

namespace A065301.P3182409962110417848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P3182409962110417848

/-! ## A065301.P18107174423732270956

`∩[A380468(n+1), A386424(n+1)]`
-/

namespace A065301.P18107174423732270956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P18107174423732270956

/-! ## A065301.P884244134611814097

`∩[A065300(n+1), A380525(n+1)]`
-/

namespace A065301.P884244134611814097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P884244134611814097

/-! ## A065301.P4100409400719318333

`∩[A380525(n+1), A386424(n+1)]`
-/

namespace A065301.P4100409400719318333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P4100409400719318333

/-! ## A065301.P7553275198271079562

`∩[A020893(n+1), A065300(n+1)]`
-/

namespace A065301.P7553275198271079562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P7553275198271079562

/-! ## A065301.P14660622990233900409

`∩[A020893(n+1), A386424(n+1)]`
-/

namespace A065301.P14660622990233900409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065301.P14660622990233900409

/-!
# A065302: Squarefree nonprime numbers whose sum of divisors is also squarefree.

The programs for A065302, there is no canonical definition to state claims against.
-/

/-! ## A065302.P2788021812788177567

`∩[A065301(n+1), A380478(n+1)]`
-/

namespace A065302.P2788021812788177567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P2788021812788177567

/-! ## A065302.P683940363619771654

`∩[A065301(n+1), A207574(n+1)]`
-/

namespace A065302.P683940363619771654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P683940363619771654

/-! ## A065302.P15900756739541655920

`∩[A207574(n+1), A386424(n+1)]`
-/

namespace A065302.P15900756739541655920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P15900756739541655920

/-! ## A065302.P12757913482562143747

`∩[A380478(n+1), A386424(n+1)]`
-/

namespace A065302.P12757913482562143747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P12757913482562143747

/-! ## A065302.P101953582302333131

`∩[A065301(n+1), A216780(n+1)]`
-/

namespace A065302.P101953582302333131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P101953582302333131

/-! ## A065302.P2221336078585235589

`∩[A065300(n+1), A207574(n+1)]`
-/

namespace A065302.P2221336078585235589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P2221336078585235589

/-! ## A065302.P2116732627778843540

`∩[A065300(n+1), A380478(n+1)]`
-/

namespace A065302.P2116732627778843540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P2116732627778843540

/-! ## A065302.P17639106380140070645

`∩[A065301(n+1), A124982(n+1)]`
-/

namespace A065302.P17639106380140070645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P17639106380140070645

/-! ## A065302.P13611443834824008099

`∩[A065301(n+1), A359875(n+1)]`
-/

namespace A065302.P13611443834824008099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065302.P13611443834824008099

/-! ## A065302.P972197586200719621

`filter[A065301(n+1), A354819(#)]`
-/

namespace A065302.P972197586200719621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A065302.P972197586200719621

/-! ## A065302.P8850336721449954616

`filter[A065301(n+1), A354927(#)]`
-/

namespace A065302.P8850336721449954616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A065302.P8850336721449954616

/-! ## A065302.P4674151881138928608

`filter[A065301(n+1), A356170(#)]`
-/

namespace A065302.P4674151881138928608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356170 (f1 j).toNat = 1) n)

end

end A065302.P4674151881138928608

/-! ## A065302.P16680373336555746977

`filter[A065301(n+1), A359156(#)]`
-/

namespace A065302.P16680373336555746977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359156 (f1 j).toNat = 1) n)

end

end A065302.P16680373336555746977

/-! ## A065302.P18077904294384195656

`filter[A065301(n+1), A359170(#)]`
-/

namespace A065302.P18077904294384195656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A065302.P18077904294384195656

/-! ## A065302.P3571264102128268770

`filter[A065301(n+1), A359370(#)]`
-/

namespace A065302.P3571264102128268770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A065302.P3571264102128268770

/-! ## A065302.P3407397243487069451

`filter[A065301(n+1), A359430(#)]`
-/

namespace A065302.P3407397243487069451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A065302.P3407397243487069451

/-! ## A065302.P5111893442205902172

`filter[A065301(n+1), A359464(#)]`
-/

namespace A065302.P5111893442205902172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A065302.P5111893442205902172

/-! ## A065302.P2354001011548846729

`filter[A065301(n+1), A359764(#)]`
-/

namespace A065302.P2354001011548846729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A065302.P2354001011548846729

/-! ## A065302.P11126194568522295367

`filter[A065301(n+1), A359787(#)]`
-/

namespace A065302.P11126194568522295367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A065302.P11126194568522295367

/-! ## A065302.P7601408423158045631

`filter[A065301(n+1), A361024(#)]`
-/

namespace A065302.P7601408423158045631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361024 (f1 j).toNat = 1) n)

end

end A065302.P7601408423158045631

/-!
# A065303: Neither n nor sigma(n) is squarefree.

The programs for A065303, there is no canonical definition to state claims against.
-/

/-! ## A065303.P3205960015531483907

`eq[A008683(A000203(n+1)), A013586(n+1)]+1`
-/

namespace A065303.P3205960015531483907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065303.P3205960015531483907

/-! ## A065303.P4469848519935788602

`A100716(lt[A103997(3*n+1), A232864(n)])`
-/

namespace A065303.P4469848519935788602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065303.P4469848519935788602

/-!
# A065305: Triangular array giving means of two odd primes: T(n,k) = (n-th prime + k-th prime)/2, n >= k >= 2.

The programs for A065305, the canonical program `A065305.P13588559578432600534` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065305 has offset 2).

The definition of A065305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065305.P11296272980534647565

`A116366(n+1)/2`
-/

namespace A065305.P11296272980534647565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116366 (n + 1) : ℚ) / 2

end

end A065305.P11296272980534647565

namespace A065305

/-- `A116366(n+1)/2` -/
def P11296272980534647565.Spec : Prop :=
  ∀ n, P11296272980534647565.a n = (A065305 (n + 2) : ℚ)

end A065305

/-! ## A065305.P13588559578432600534

`A001281(A116366(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065305

/-- `A001281(A116366(n+1))` -/
def P13588559578432600534.Spec : Prop :=
  ∀ n, P13588559578432600534.a n = A065305 (n + 2)

theorem P13588559578432600534.correct : P13588559578432600534.Spec := by
  intro n
  simp only [A065305, Nat.add_sub_cancel]

end A065305

/-! ## A065305.P6037822085610424386

`A002265(2*A116366(n+1))`
-/

namespace A065305.P6037822085610424386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A116366 (n + 1)).toNat

end

end A065305.P6037822085610424386

namespace A065305

/-- `A002265(2*A116366(n+1))` -/
def P6037822085610424386.Spec : Prop :=
  ∀ n, P6037822085610424386.a n = A065305 (n + 2)

end A065305

/-! ## A065305.P10088296264008134853

`A065342(A080036(n+1))/2`
-/

namespace A065305.P10088296264008134853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065342 (A080036 (n + 1)).toNat : ℚ) / 2

end

end A065305.P10088296264008134853

namespace A065305

/-- `A065342(A080036(n+1))/2` -/
def P10088296264008134853.Spec : Prop :=
  ∀ n, P10088296264008134853.a n = (A065305 (n + 2) : ℚ)

end A065305

/-! ## A065305.P8677301510342138699

`A065342(A014132(n+1)+1)/2`
-/

namespace A065305.P8677301510342138699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065342 (A014132 (n + 1) + 1).toNat : ℚ) / 2

end

end A065305.P8677301510342138699

namespace A065305

/-- `A065342(A014132(n+1)+1)/2` -/
def P8677301510342138699.Spec : Prop :=
  ∀ n, P8677301510342138699.a n = (A065305 (n + 2) : ℚ)

end A065305

/-! ## A065305.P426596069697099347

`A002265(A116366(n+1)+A116366(n+1))`
-/

namespace A065305.P426596069697099347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A116366 (n + 1) + A116366 (n + 1)).toNat

end

end A065305.P426596069697099347

namespace A065305

/-- `A002265(A116366(n+1)+A116366(n+1))` -/
def P426596069697099347.Spec : Prop :=
  ∀ n, P426596069697099347.a n = A065305 (n + 2)

end A065305

/-! ## A065305.P4924264344127571980

`A349905(A087112(n+1))/2`
-/

namespace A065305.P4924264344127571980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349905 (A087112 (n + 1)).toNat : ℚ) / 2

end

end A065305.P4924264344127571980

namespace A065305

/-- `A349905(A087112(n+1))/2` -/
def P4924264344127571980.Spec : Prop :=
  ∀ n, P4924264344127571980.a n = (A065305 (n + 2) : ℚ)

end A065305

/-! ## A065305.P823276192778925791

`A392781(A373844(n+1))`
-/

namespace A065305.P823276192778925791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392781 (A373844 (n + 1)).toNat

end

end A065305.P823276192778925791

namespace A065305

/-- `A392781(A373844(n+1))` -/
def P823276192778925791.Spec : Prop :=
  ∀ n, P823276192778925791.a n = A065305 (n + 2)

end A065305

/-! ## A065305.P8128579520504708994

`A389809(n+1)-A086802(n+2)`
-/

namespace A065305.P8128579520504708994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) - A086802 (n + 2)

end

end A065305.P8128579520504708994

namespace A065305

/-- `A389809(n+1)-A086802(n+2)` -/
def P8128579520504708994.Spec : Prop :=
  ∀ n, P8128579520504708994.a n = A065305 (n + 2)

end A065305

/-! ## A065305.P2986246340042942051

`A086802(n+2)+A000040(A002260(n+1)+1)`
-/

namespace A065305.P2986246340042942051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086802 (n + 2) + A000040 (A002260 (n + 1) + 1).toNat

end

end A065305.P2986246340042942051

namespace A065305

/-- `A086802(n+2)+A000040(A002260(n+1)+1)` -/
def P2986246340042942051.Spec : Prop :=
  ∀ n, P2986246340042942051.a n = A065305 (n + 2)

end A065305

/-!
# A065306: The Goldbach permutation: take A065305, cross out repetitions and subtract 2 from each term.

The programs for A065306, there is no canonical definition to state claims against.
-/

/-! ## A065306.P2143444047835672169

`A260580(n+1)-2`
-/

namespace A065306.P2143444047835672169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (n + 1) - 2

end

end A065306.P2143444047835672169

/-! ## A065306.P9510025605925794180

`A023444(A260580(n+1))`
-/

namespace A065306.P9510025605925794180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A260580 (n + 1)).toNat

end

end A065306.P9510025605925794180

/-! ## A065306.P3055072058271471729

`A033270(xor(1, A000040(A260580(n+1))))`
-/

namespace A065306.P3055072058271471729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (Int.xor 1 (A000040 (A260580 (n + 1)).toNat)).toNat

end

end A065306.P3055072058271471729

/-! ## A065306.P12340737621224897488

`A276193(A000005(A139317(n+1)))+A260580(n+1)`
-/

namespace A065306.P12340737621224897488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276193 (A000005 (A139317 (n + 1)).toNat).toNat + A260580 (n + 1)

end

end A065306.P12340737621224897488

/-!
# A065308: a(n) = prime(n - pi(n)).

The programs for A065308, the canonical program `A065308.P10618243787799868121` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065308 has offset 1).

The definition of A065308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065308.P10618243787799868121

`A000040(∑[∏{p}[n+1, C(#%n, #)]])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065308

/-- `A000040(∑[∏{p}[n+1, C(#%n, #)]])` -/
def P10618243787799868121.Spec : Prop :=
  ∀ n, P10618243787799868121.a n = A065308 (n + 1)

theorem P10618243787799868121.correct : P10618243787799868121.Spec := by
  intro n
  simp only [A065308, Nat.add_sub_cancel]

end A065308

/-! ## A065308.P2142431414453626924

`A000040(A062298(n+1))`
-/

namespace A065308.P2142431414453626924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062298 (n + 1)).toNat

end

end A065308.P2142431414453626924

namespace A065308

/-- `A000040(A062298(n+1))` -/
def P2142431414453626924.Spec : Prop :=
  ∀ n, P2142431414453626924.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P11902965044136096143

`A026234(A179278(n+1))`
-/

namespace A065308.P11902965044136096143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A179278 (n + 1)).toNat

end

end A065308.P11902965044136096143

namespace A065308

/-- `A026234(A179278(n+1))` -/
def P11902965044136096143.Spec : Prop :=
  ∀ n, P11902965044136096143.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P17992987865225783036

`A000040(∑[A005171(n+1)])`
-/

namespace A065308.P17992987865225783036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065308.P17992987865225783036

namespace A065308

/-- `A000040(∑[A005171(n+1)])` -/
def P17992987865225783036.Spec : Prop :=
  ∀ n, P17992987865225783036.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P17797685195639176493

`A000040(A065855(n+1)+1)`
-/

namespace A065308.P17797685195639176493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065855 (n + 1) + 1).toNat

end

end A065308.P17797685195639176493

namespace A065308

/-- `A000040(A065855(n+1)+1)` -/
def P17797685195639176493.Spec : Prop :=
  ∀ n, P17797685195639176493.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P17555300023318939606

`A008578(A062298(n+1)+1)`
-/

namespace A065308.P17555300023318939606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A062298 (n + 1) + 1).toNat

end

end A065308.P17555300023318939606

namespace A065308

/-- `A008578(A062298(n+1)+1)` -/
def P17555300023318939606.Spec : Prop :=
  ∀ n, P17555300023318939606.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P13092605338404159985

`A008578(A065855(n+1)+2)`
-/

namespace A065308.P13092605338404159985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065855 (n + 1) + 2).toNat

end

end A065308.P13092605338404159985

namespace A065308

/-- `A008578(A065855(n+1)+2)` -/
def P13092605338404159985.Spec : Prop :=
  ∀ n, P13092605338404159985.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P12789334691484986245

`A000040(∑[1-A010051(n+1)])`
-/

namespace A065308.P12789334691484986245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065308.P12789334691484986245

namespace A065308

/-- `A000040(∑[1-A010051(n+1)])` -/
def P12789334691484986245.Spec : Prop :=
  ∀ n, P12789334691484986245.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P15382037216343951209

`A000040(∑[A014684(n+1)-n])`
-/

namespace A065308.P15382037216343951209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065308.P15382037216343951209

namespace A065308

/-- `A000040(∑[A014684(n+1)-n])` -/
def P15382037216343951209.Spec : Prop :=
  ∀ n, P15382037216343951209.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P3659163332948566566

`A000040(1-A000720(n+1)+n)`
-/

namespace A065308.P3659163332948566566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A000720 (n + 1) + (n : ℤ)).toNat

end

end A065308.P3659163332948566566

namespace A065308

/-- `A000040(1-A000720(n+1)+n)` -/
def P3659163332948566566.Spec : Prop :=
  ∀ n, P3659163332948566566.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P16897115798735030042

`A000040(n+1)-A065309(n+1)`
-/

namespace A065308.P16897115798735030042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065309 (n + 1)

end

end A065308.P16897115798735030042

namespace A065308

/-- `A000040(n+1)-A065309(n+1)` -/
def P16897115798735030042.Spec : Prop :=
  ∀ n, P16897115798735030042.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P1426753185030592799

`A008578(n+2-A000720(n+1))`
-/

namespace A065308.P1426753185030592799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 2 : ℤ) - A000720 (n + 1)).toNat

end

end A065308.P1426753185030592799

namespace A065308

/-- `A008578(n+2-A000720(n+1))` -/
def P1426753185030592799.Spec : Prop :=
  ∀ n, P1426753185030592799.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P2974761253098645923

`A000040(2-A036234(n+1)+n)`
-/

namespace A065308.P2974761253098645923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A036234 (n + 1) + (n : ℤ)).toNat

end

end A065308.P2974761253098645923

namespace A065308

/-- `A000040(2-A036234(n+1)+n)` -/
def P2974761253098645923.Spec : Prop :=
  ∀ n, P2974761253098645923.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P16578382717846266505

`A182986(n+2-A000720(n+1))`
-/

namespace A065308.P16578382717846266505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 ((n + 2 : ℤ) - A000720 (n + 1)).toNat

end

end A065308.P16578382717846266505

namespace A065308

/-- `A182986(n+2-A000720(n+1))` -/
def P16578382717846266505.Spec : Prop :=
  ∀ n, P16578382717846266505.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P15447440953993796929

`A000040(∑[(1-A061007(n+1))²])`
-/

namespace A065308.P15447440953993796929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A061007 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065308.P15447440953993796929

namespace A065308

/-- `A000040(∑[(1-A061007(n+1))²])` -/
def P15447440953993796929.Spec : Prop :=
  ∀ n, P15447440953993796929.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P3939650587358376795

`A000040(A165634(A338215(n+1)))`
-/

namespace A065308.P3939650587358376795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A165634 (A338215 (n + 1)).toNat).toNat

end

end A065308.P3939650587358376795

namespace A065308

/-- `A000040(A165634(A338215(n+1)))` -/
def P3939650587358376795.Spec : Prop :=
  ∀ n, P3939650587358376795.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P1651700361318818048

`A008578(A152993(n+1)+A000005(n+1))`
-/

namespace A065308.P1651700361318818048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A152993 (n + 1) + A000005 (n + 1)).toNat

end

end A065308.P1651700361318818048

namespace A065308

/-- `A008578(A152993(n+1)+A000005(n+1))` -/
def P1651700361318818048.Spec : Prop :=
  ∀ n, P1651700361318818048.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P6151287060882275808

`A026234(A018252(n+1-A000720(n+1)))`
-/

namespace A065308.P6151287060882275808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A018252 ((n + 1 : ℤ) - A000720 (n + 1)).toNat).toNat

end

end A065308.P6151287060882275808

namespace A065308

/-- `A026234(A018252(n+1-A000720(n+1)))` -/
def P6151287060882275808.Spec : Prop :=
  ∀ n, P6151287060882275808.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P2650111089935436406

`A005117(A071403(n+1-A000720(n+1)))`
-/

namespace A065308.P2650111089935436406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A071403 ((n + 1 : ℤ) - A000720 (n + 1)).toNat).toNat

end

end A065308.P2650111089935436406

namespace A065308

/-- `A005117(A071403(n+1-A000720(n+1)))` -/
def P2650111089935436406.Spec : Prop :=
  ∀ n, P2650111089935436406.a n = A065308 (n + 1)

end A065308

/-! ## A065308.P13774118548593988725

`A085818(A085971(n+1-A000720(n+1)))`
-/

namespace A065308.P13774118548593988725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (A085971 ((n + 1 : ℤ) - A000720 (n + 1)).toNat).toNat

end

end A065308.P13774118548593988725

namespace A065308

/-- `A085818(A085971(n+1-A000720(n+1)))` -/
def P13774118548593988725.Spec : Prop :=
  ∀ n, P13774118548593988725.a n = A065308 (n + 1)

end A065308

/-!
# A065309: a(n) = prime(n) - prime(n - pi(n)).

The programs for A065309, the canonical program `A065309.P487679729421554723` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065309 has offset 1).

The definition of A065309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065309.P487679729421554723

`A000040(n+1)-A000040(n-A000720(n+1)+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065309

/-- `A000040(n+1)-A000040(n-A000720(n+1)+1)` -/
def P487679729421554723.Spec : Prop :=
  ∀ n, P487679729421554723.a n = A065309 (n + 1)

theorem P487679729421554723.correct : P487679729421554723.Spec := by
  intro n
  simp only [A065309, Nat.add_sub_cancel]

end A065309

/-! ## A065309.P1853140197978529719

`A000040(n+1)-A065308(n+1)`
-/

namespace A065309.P1853140197978529719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065308 (n + 1)

end

end A065309.P1853140197978529719

namespace A065309

/-- `A000040(n+1)-A065308(n+1)` -/
def P1853140197978529719.Spec : Prop :=
  ∀ n, P1853140197978529719.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P1161258785333661256

`A006093(n+1)+1-A065308(n+1)`
-/

namespace A065309.P1161258785333661256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A065308 (n + 1))

end

end A065309.P1161258785333661256

namespace A065309

/-- `A006093(n+1)+1-A065308(n+1)` -/
def P1161258785333661256.Spec : Prop :=
  ∀ n, P1161258785333661256.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P13051930302571225522

`A014692(n+1)-A065308(n+1)+n`
-/

namespace A065309.P13051930302571225522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A065308 (n + 1) + (n : ℤ)

end

end A065309.P13051930302571225522

namespace A065309

/-- `A014692(n+1)-A065308(n+1)+n` -/
def P13051930302571225522.Spec : Prop :=
  ∀ n, P13051930302571225522.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P5818913975962413603

`A000040(n+1)-A000040(A062298(n+1))`
-/

namespace A065309.P5818913975962413603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 (A062298 (n + 1)).toNat

end

end A065309.P5818913975962413603

namespace A065309

/-- `A000040(n+1)-A000040(A062298(n+1))` -/
def P5818913975962413603.Spec : Prop :=
  ∀ n, P5818913975962413603.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P9713116710010289337

`A006093(n+1)-A006093(A062298(n+1))`
-/

namespace A065309.P9713116710010289337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006093 (A062298 (n + 1)).toNat

end

end A065309.P9713116710010289337

namespace A065309

/-- `A006093(n+1)-A006093(A062298(n+1))` -/
def P9713116710010289337.Spec : Prop :=
  ∀ n, P9713116710010289337.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P5751799010540395477

`A008864(n+1)-A008864(A062298(n+1))`
-/

namespace A065309.P5751799010540395477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A008864 (A062298 (n + 1)).toNat

end

end A065309.P5751799010540395477

namespace A065309

/-- `A008864(n+1)-A008864(A062298(n+1))` -/
def P5751799010540395477.Spec : Prop :=
  ∀ n, P5751799010540395477.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P13960924912715652945

`A040976(n+1)-A040976(A062298(n+1))`
-/

namespace A065309.P13960924912715652945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A040976 (A062298 (n + 1)).toNat

end

end A065309.P13960924912715652945

namespace A065309

/-- `A040976(n+1)-A040976(A062298(n+1))` -/
def P13960924912715652945.Spec : Prop :=
  ∀ n, P13960924912715652945.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P14897751874641265313

`A000040(n+1)-A000040(∑[A005171(n+1)])`
-/

namespace A065309.P14897751874641265313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065309.P14897751874641265313

namespace A065309

/-- `A000040(n+1)-A000040(∑[A005171(n+1)])` -/
def P14897751874641265313.Spec : Prop :=
  ∀ n, P14897751874641265313.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P4910555365578680883

`A000040(n+1)-A000040(A065855(n+1)+1)`
-/

namespace A065309.P4910555365578680883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 (A065855 (n + 1) + 1).toNat

end

end A065309.P4910555365578680883

namespace A065309

/-- `A000040(n+1)-A000040(A065855(n+1)+1)` -/
def P4910555365578680883.Spec : Prop :=
  ∀ n, P4910555365578680883.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P12298158349447027068

`A006093(n+1)-A006093(A065855(n+1)+1)`
-/

namespace A065309.P12298158349447027068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006093 (A065855 (n + 1) + 1).toNat

end

end A065309.P12298158349447027068

namespace A065309

/-- `A006093(n+1)-A006093(A065855(n+1)+1)` -/
def P12298158349447027068.Spec : Prop :=
  ∀ n, P12298158349447027068.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P7430160316556968838

`A095116(n+1)-(A095116(A062298(n+1))+A000720(n+1))`
-/

namespace A065309.P7430160316556968838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (A095116 (A062298 (n + 1)).toNat + A000720 (n + 1))

end

end A065309.P7430160316556968838

namespace A065309

/-- `A095116(n+1)-(A095116(A062298(n+1))+A000720(n+1))` -/
def P7430160316556968838.Spec : Prop :=
  ∀ n, P7430160316556968838.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P17272047695651619452

`A008578(n+2)-A065308(n+1)`
-/

namespace A065309.P17272047695651619452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A065308 (n + 1)

end

end A065309.P17272047695651619452

namespace A065309

/-- `A008578(n+2)-A065308(n+1)` -/
def P17272047695651619452.Spec : Prop :=
  ∀ n, P17272047695651619452.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P9290630310153515271

`A008578(n+2)-A008578(A086936(n+2))`
-/

namespace A065309.P9290630310153515271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A008578 (A086936 (n + 2)).toNat

end

end A065309.P9290630310153515271

namespace A065309

/-- `A008578(n+2)-A008578(A086936(n+2))` -/
def P9290630310153515271.Spec : Prop :=
  ∀ n, P9290630310153515271.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P10240720727058353751

`p?[A324813(n+1)]-A065308(n+1)`
-/

namespace A065309.P10240720727058353751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065308 (n + 1)

end

end A065309.P10240720727058353751

namespace A065309

/-- `p?[A324813(n+1)]-A065308(n+1)` -/
def P10240720727058353751.Spec : Prop :=
  ∀ n, P10240720727058353751.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P10585764709842090274

`record[A000010(n+1)]-A000010(A065308(n+1))`
-/

namespace A065309.P10585764709842090274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000010 (A065308 (n + 1)).toNat

end

end A065309.P10585764709842090274

namespace A065309

/-- `record[A000010(n+1)]-A000010(A065308(n+1))` -/
def P10585764709842090274.Spec : Prop :=
  ∀ n, P10585764709842090274.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P4577448002898476029

`A065308(A018252(n+1))-A065308(n+1)`
-/

namespace A065309.P4577448002898476029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065308 (A018252 (n + 1)).toNat - A065308 (n + 1)

end

end A065309.P4577448002898476029

namespace A065309

/-- `A065308(A018252(n+1))-A065308(n+1)` -/
def P4577448002898476029.Spec : Prop :=
  ∀ n, P4577448002898476029.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P17048684110599076756

`A065308(A002808(n+1)-1)-A065308(n+1)`
-/

namespace A065309.P17048684110599076756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065308 (A002808 (n + 1) - 1).toNat - A065308 (n + 1)

end

end A065309.P17048684110599076756

namespace A065309

/-- `A065308(A002808(n+1)-1)-A065308(n+1)` -/
def P17048684110599076756.Spec : Prop :=
  ∀ n, P17048684110599076756.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P3321050071973302461

`p?[A014681(n)]-A065308(n+1)`
-/

namespace A065309.P3321050071973302461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A065308 (n + 1)

end

end A065309.P3321050071973302461

namespace A065309

/-- `p?[A014681(n)]-A065308(n+1)` -/
def P3321050071973302461.Spec : Prop :=
  ∀ n, P3321050071973302461.a n = A065309 (n + 1)

end A065309

/-! ## A065309.P10104261595536414084

`A000040(n+1)-A000040(log2(A089819(n+1)))`
-/

namespace A065309.P10104261595536414084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A089819 (n + 1) : ℝ))).toNat

end

end A065309.P10104261595536414084

namespace A065309

/-- `A000040(n+1)-A000040(log2(A089819(n+1)))` -/
def P10104261595536414084.Spec : Prop :=
  ∀ n, P10104261595536414084.a n = A065309 (n + 1)

end A065309

/-!
# A065310: Number of occurrences of n-th prime in A065308, where A065308(j) = prime(j - pi(j)).

The programs for A065310, the canonical program `A065310.P13031903484145223612` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065310 has offset 1).

The definition of A065310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065310.P13031903484145223612

`Δ[A018252(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065310

/-- `Δ[A018252(n+1)]` -/
def P13031903484145223612.Spec : Prop :=
  ∀ n, P13031903484145223612.a n = A065310 (n + 1)

theorem P13031903484145223612.correct : P13031903484145223612.Spec := by
  intro n
  simp only [A065310, Nat.add_sub_cancel]

end A065310

/-! ## A065310.P11348888457689510468

`Δ[A141468(n+2)]`
-/

namespace A065310.P11348888457689510468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065310.P11348888457689510468

namespace A065310

/-- `Δ[A141468(n+2)]` -/
def P11348888457689510468.Spec : Prop :=
  ∀ n, P11348888457689510468.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P12881294790013388281

`Δ[A222307(2*n+1)]`
-/

namespace A065310.P12881294790013388281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065310.P12881294790013388281

namespace A065310

/-- `Δ[A222307(2*n+1)]` -/
def P12881294790013388281.Spec : Prop :=
  ∀ n, P12881294790013388281.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P5987188244536031027

`abs(Δ[A018252(2*n-(n-1))])`
-/

namespace A065310.P5987188244536031027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A065310.P5987188244536031027

namespace A065310

/-- `abs(Δ[A018252(2*n-(n-1))])` -/
def P5987188244536031027.Spec : Prop :=
  ∀ n, P5987188244536031027.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P12874870818840377517

`A073445(n-1)+a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A065310.P12874870818840377517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A073445 (n - 1) + a (n - 1)

end

end A065310.P12874870818840377517

namespace A065310

/-- `A073445(n-1)+a(n-1)` -/
def P12874870818840377517.Spec : Prop :=
  ∀ n, P12874870818840377517.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P17024656080623747940

`A073169(n+1)-A073425(n)`
-/

namespace A065310.P17024656080623747940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) - A073425 n

end

end A065310.P17024656080623747940

namespace A065310

/-- `A073169(n+1)-A073425(n)` -/
def P17024656080623747940.Spec : Prop :=
  ∀ n, P17024656080623747940.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P16722500906195372671

`A002808(n+1)-A018252(n+1)`
-/

namespace A065310.P16722500906195372671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A018252 (n + 1)

end

end A065310.P16722500906195372671

namespace A065310

/-- `A002808(n+1)-A018252(n+1)` -/
def P16722500906195372671.Spec : Prop :=
  ∀ n, P16722500906195372671.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P16622743138708277192

`A014237(n+1)-A038529(n+1)`
-/

namespace A065310.P16622743138708277192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1) - A038529 (n + 1)

end

end A065310.P16622743138708277192

namespace A065310

/-- `A014237(n+1)-A038529(n+1)` -/
def P16622743138708277192.Spec : Prop :=
  ∀ n, P16622743138708277192.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P980851880900045880

`A064799(n+1)-A022797(n+1)`
-/

namespace A065310.P980851880900045880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A022797 (n + 1)

end

end A065310.P980851880900045880

namespace A065310

/-- `A064799(n+1)-A022797(n+1)` -/
def P980851880900045880.Spec : Prop :=
  ∀ n, P980851880900045880.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P9725619310344113269

`A022798(n+1)-A171639(n+1)`
-/

namespace A065310.P9725619310344113269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) - A171639 (n + 1)

end

end A065310.P9725619310344113269

namespace A065310

/-- `A022798(n+1)-A171639(n+1)` -/
def P9725619310344113269.Spec : Prop :=
  ∀ n, P9725619310344113269.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P13409103540738954464

`A161811(n+1)-A054546(n+1)`
-/

namespace A065310.P13409103540738954464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1) - A054546 (n + 1)

end

end A065310.P13409103540738954464

namespace A065310

/-- `A161811(n+1)-A054546(n+1)` -/
def P13409103540738954464.Spec : Prop :=
  ∀ n, P13409103540738954464.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P9466856205952446504

`A129189(n+1)-A163249(n+1)`
-/

namespace A065310.P9466856205952446504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129189 (n + 1) - A163249 (n + 1)

end

end A065310.P9466856205952446504

namespace A065310

/-- `A129189(n+1)-A163249(n+1)` -/
def P9466856205952446504.Spec : Prop :=
  ∀ n, P9466856205952446504.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P1735809974113938500

`A161843(n+1)-A166037(n+1)`
-/

namespace A065310.P1735809974113938500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161843 (n + 1) - A166037 (n + 1)

end

end A065310.P1735809974113938500

namespace A065310

/-- `A161843(n+1)-A166037(n+1)` -/
def P1735809974113938500.Spec : Prop :=
  ∀ n, P1735809974113938500.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P1247660436098564181

`A161537(n+1)-A171504(n+1)`
-/

namespace A065310.P1247660436098564181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1) - A171504 (n + 1)

end

end A065310.P1247660436098564181

namespace A065310

/-- `A161537(n+1)-A171504(n+1)` -/
def P1247660436098564181.Spec : Prop :=
  ∀ n, P1247660436098564181.a n = A065310 (n + 1)

end A065310

/-! ## A065310.P5152394820530988145

`A018252(n+2)-A018252(n+1)`
-/

namespace A065310.P5152394820530988145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A018252 (n + 1)

end

end A065310.P5152394820530988145

namespace A065310

/-- `A018252(n+2)-A018252(n+1)` -/
def P5152394820530988145.Spec : Prop :=
  ∀ n, P5152394820530988145.a n = A065310 (n + 1)

theorem P5152394820530988145.correct : P5152394820530988145.Spec := by
  intro n
  simp only [A065310, Nat.add_sub_cancel, A065310.P5152394820530988145.a, A065310.P13031903484145223612.f1, A065310.P13031903484145223612.a, SequenceMachineLib.memo_apply]

end A065310

/-!
# A065311: Primes which occur exactly twice in the sequence of a(n) = prime(n) - prime(n - pi(n)) = A065308(n).

The programs for A065311, the canonical program `A065311.P12801822224862950029` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065311 has offset 1).

The definition of A065311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065311.P12801822224862950029

`A065994(n+3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065311

/-- `A065994(n+3)` -/
def P12801822224862950029.Spec : Prop :=
  ∀ n, P12801822224862950029.a n = A065311 (n + 1)

theorem P12801822224862950029.correct : P12801822224862950029.Spec := by
  intro n
  simp only [A065311, Nat.add_sub_cancel]

end A065311

/-! ## A065311.P5982641196918394377

`A000040(A014689(n+3))`
-/

namespace A065311.P5982641196918394377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014689 (n + 3)).toNat

end

end A065311.P5982641196918394377

namespace A065311

/-- `A000040(A014689(n+3))` -/
def P5982641196918394377.Spec : Prop :=
  ∀ n, P5982641196918394377.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P6444491840922172852

`A000040(∑[A135732(n+1)])`
-/

namespace A065311.P6444491840922172852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065311.P6444491840922172852

namespace A065311

/-- `A000040(∑[A135732(n+1)])` -/
def P6444491840922172852.Spec : Prop :=
  ∀ n, P6444491840922172852.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P62641062703639495

`A000040(Δ[A112997(n+2)])`
-/

namespace A065311.P62641062703639495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A065311.P62641062703639495

namespace A065311

/-- `A000040(Δ[A112997(n+2)])` -/
def P62641062703639495.Spec : Prop :=
  ∀ n, P62641062703639495.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P4731734699335129442

`A000040(A065890(n+3)+1)`
-/

namespace A065311.P4731734699335129442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065890 (n + 3) + 1).toNat

end

end A065311.P4731734699335129442

namespace A065311

/-- `A000040(A065890(n+3)+1)` -/
def P4731734699335129442.Spec : Prop :=
  ∀ n, P4731734699335129442.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P7336912224767922159

`A000040(A014692(n+3)-1)`
-/

namespace A065311.P7336912224767922159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014692 (n + 3) - 1).toNat

end

end A065311.P7336912224767922159

namespace A065311

/-- `A000040(A014692(n+3)-1)` -/
def P7336912224767922159.Spec : Prop :=
  ∀ n, P7336912224767922159.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P7511642520454829328

`A000040(eq[2, A054546(n+1)])`
-/

namespace A065311.P7511642520454829328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065311.P7511642520454829328

namespace A065311

/-- `A000040(eq[2, A054546(n+1)])` -/
def P7511642520454829328.Spec : Prop :=
  ∀ n, P7511642520454829328.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P11264166820549912609

`A000040(A154115(n+2)-n)`
-/

namespace A065311.P11264166820549912609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154115 (n + 2) - (n : ℤ)).toNat

end

end A065311.P11264166820549912609

namespace A065311

/-- `A000040(A154115(n+2)-n)` -/
def P11264166820549912609.Spec : Prop :=
  ∀ n, P11264166820549912609.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P8103005339151176519

`A158611(A165972(n+2)-n)`
-/

namespace A065311.P8103005339151176519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A165972 (n + 2) - (n : ℤ)).toNat

end

end A065311.P8103005339151176519

namespace A065311

/-- `A158611(A165972(n+2)-n)` -/
def P8103005339151176519.Spec : Prop :=
  ∀ n, P8103005339151176519.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P11618648119720223643

`A000040(A086801(n+3)-n)`
-/

namespace A065311.P11618648119720223643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086801 (n + 3) - (n : ℤ)).toNat

end

end A065311.P11618648119720223643

namespace A065311

/-- `A000040(A086801(n+3)-n)` -/
def P11618648119720223643.Spec : Prop :=
  ∀ n, P11618648119720223643.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P12629506383582352960

`A000040(∑[A001223(n+2)]-n)`
-/

namespace A065311.P12629506383582352960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A065311.P12629506383582352960

namespace A065311

/-- `A000040(∑[A001223(n+2)]-n)` -/
def P12629506383582352960.Spec : Prop :=
  ∀ n, P12629506383582352960.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P8227980281559659874

`p?[A006005(A008578(n+1)-n)]`
-/

namespace A065311.P8227980281559659874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065311.P8227980281559659874

namespace A065311

/-- `p?[A006005(A008578(n+1)-n)]` -/
def P8227980281559659874.Spec : Prop :=
  ∀ n, P8227980281559659874.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P3956362650390027039

`record[A000040(A162753(2*n)-n)]`
-/

namespace A065311.P3956362650390027039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A162753 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065311.P3956362650390027039

namespace A065311

/-- `record[A000040(A162753(2*n)-n)]` -/
def P3956362650390027039.Spec : Prop :=
  ∀ n, P3956362650390027039.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P14950786453530741766

`A000040(A173072(n+3)+n+1)`
-/

namespace A065311.P14950786453530741766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173072 (n + 3) + (n + 1 : ℤ)).toNat

end

end A065311.P14950786453530741766

namespace A065311

/-- `A000040(A173072(n+3)+n+1)` -/
def P14950786453530741766.Spec : Prop :=
  ∀ n, P14950786453530741766.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P16712316671303756701

`A065091(A154115(n+2)-(n+1))`
-/

namespace A065311.P16712316671303756701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A154115 (n + 2) - (n + 1 : ℤ)).toNat

end

end A065311.P16712316671303756701

namespace A065311

/-- `A065091(A154115(n+2)-(n+1))` -/
def P16712316671303756701.Spec : Prop :=
  ∀ n, P16712316671303756701.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P15722178995549134008

`A008578(A065091(n+2)-(n+2))`
-/

namespace A065311.P15722178995549134008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065091 (n + 2) - (n + 2 : ℤ)).toNat

end

end A065311.P15722178995549134008

namespace A065311

/-- `A008578(A065091(n+2)-(n+2))` -/
def P15722178995549134008.Spec : Prop :=
  ∀ n, P15722178995549134008.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P13870291686424846755

`A000040(A131733(n+3)+n+2)`
-/

namespace A065311.P13870291686424846755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131733 (n + 3) + (n + 2 : ℤ)).toNat

end

end A065311.P13870291686424846755

namespace A065311

/-- `A000040(A131733(n+3)+n+2)` -/
def P13870291686424846755.Spec : Prop :=
  ∀ n, P13870291686424846755.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P2551303266817349723

`A000040(A165972(n+2)-(n+2))`
-/

namespace A065311.P2551303266817349723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A165972 (n + 2) - (n + 2 : ℤ)).toNat

end

end A065311.P2551303266817349723

namespace A065311

/-- `A000040(A165972(n+2)-(n+2))` -/
def P2551303266817349723.Spec : Prop :=
  ∀ n, P2551303266817349723.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P14328894880863366812

`A000040(A168580(n+1)+2*n)`
-/

namespace A065311.P14328894880863366812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A168580 (n + 1) + (2 * n : ℤ)).toNat

end

end A065311.P14328894880863366812

namespace A065311

/-- `A000040(A168580(n+1)+2*n)` -/
def P14328894880863366812.Spec : Prop :=
  ∀ n, P14328894880863366812.a n = A065311 (n + 1)

end A065311

/-! ## A065311.P2166625148545027212

`A000040(A169606(2*n+1)-n)`
-/

namespace A065311.P2166625148545027212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A169606 (2 * n + 1) - (n : ℤ)).toNat

end

end A065311.P2166625148545027212

namespace A065311

/-- `A000040(A169606(2*n+1)-n)` -/
def P2166625148545027212.Spec : Prop :=
  ∀ n, P2166625148545027212.a n = A065311 (n + 1)

end A065311

/-!
# A065312: Primes which occur exactly once in A065308 (prime(n - pi(n))).

The programs for A065312, the canonical program `A065312.P1319422233856677202` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065312 has offset 1).

The definition of A065312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065312.P6684308344941347399

`A000040(comp[Δ[A082500(n+1)]])`
-/

namespace A065312.P6684308344941347399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065312.P6684308344941347399

namespace A065312

/-- `A000040(comp[Δ[A082500(n+1)]])` -/
def P6684308344941347399.Spec : Prop :=
  ∀ n, P6684308344941347399.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P1319422233856677202

`A093515(A068780(n+1)-2+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065312

/-- `A093515(A068780(n+1)-2+n)` -/
def P1319422233856677202.Spec : Prop :=
  ∀ n, P1319422233856677202.a n = A065312 (n + 1)

theorem P1319422233856677202.correct : P1319422233856677202.Spec := by
  intro n
  simp only [A065312, Nat.add_sub_cancel]

end A065312

/-! ## A065312.P14312967271896695891

`A000040((A068780(n+1)+n)/2)`
-/

namespace A065312.P14312967271896695891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A068780 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A065312.P14312967271896695891

namespace A065312

/-- `A000040((A068780(n+1)+n)/2)` -/
def P14312967271896695891.Spec : Prop :=
  ∀ n, P14312967271896695891.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P11869049342562075664

`A000040(comp[record[A008472(n+1)]-n])`
-/

namespace A065312.P11869049342562075664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065312.P11869049342562075664

namespace A065312

/-- `A000040(comp[record[A008472(n+1)]-n])` -/
def P11869049342562075664.Spec : Prop :=
  ∀ n, P11869049342562075664.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P1640759682618764679

`A000040(comp[comp[A018252(n+1)]-n])`
-/

namespace A065312.P1640759682618764679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065312.P1640759682618764679

namespace A065312

/-- `A000040(comp[comp[A018252(n+1)]-n])` -/
def P1640759682618764679.Spec : Prop :=
  ∀ n, P1640759682618764679.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P12848948091533479688

`A000040(comp[A014689(n+1)-1]+1)`
-/

namespace A065312.P12848948091533479688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A065312.P12848948091533479688

namespace A065312

/-- `A000040(comp[A014689(n+1)-1]+1)` -/
def P12848948091533479688.Spec : Prop :=
  ∀ n, P12848948091533479688.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P15162702695059303246

`A000040(comp[∑[A001223(n+1)-1]]+1)`
-/

namespace A065312.P15162702695059303246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A065312.P15162702695059303246

namespace A065312

/-- `A000040(comp[∑[A001223(n+1)-1]]+1)` -/
def P15162702695059303246.Spec : Prop :=
  ∀ n, P15162702695059303246.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P2976825969765929408

`A000040(comp[A000040(n+1)-(n+2)]+1)`
-/

namespace A065312.P2976825969765929408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A065312.P2976825969765929408

namespace A065312

/-- `A000040(comp[A000040(n+1)-(n+2)]+1)` -/
def P2976825969765929408.Spec : Prop :=
  ∀ n, P2976825969765929408.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P17551592621977626517

`A040976(comp[record[A000010(n+1)]-(n+1)]+1)+2`
-/

namespace A065312.P17551592621977626517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 2

end

end A065312.P17551592621977626517

namespace A065312

/-- `A040976(comp[record[A000010(n+1)]-(n+1)]+1)+2` -/
def P17551592621977626517.Spec : Prop :=
  ∀ n, P17551592621977626517.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P5564906893706676249

`A000040(A000720(A005381(n+1))+n)`
-/

namespace A065312.P5564906893706676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A005381 (n + 1)).toNat + (n : ℤ)).toNat

end

end A065312.P5564906893706676249

namespace A065312

/-- `A000040(A000720(A005381(n+1))+n)` -/
def P5564906893706676249.Spec : Prop :=
  ∀ n, P5564906893706676249.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P18109314780678529739

`p?[A008578(n+1)*A054546(n+1)]`
-/

namespace A065312.P18109314780678529739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065312.P18109314780678529739

namespace A065312

/-- `p?[A008578(n+1)*A054546(n+1)]` -/
def P18109314780678529739.Spec : Prop :=
  ∀ n, P18109314780678529739.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P5112138360442099049

`A026234(A068780(n+1))`
-/

namespace A065312.P5112138360442099049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A068780 (n + 1)).toNat

end

end A065312.P5112138360442099049

namespace A065312

/-- `A026234(A068780(n+1))` -/
def P5112138360442099049.Spec : Prop :=
  ∀ n, P5112138360442099049.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P9004232327343801473

`p?[A026234(A018252(n+2)-1)]`
-/

namespace A065312.P9004232327343801473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A018252 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065312.P9004232327343801473

namespace A065312

/-- `p?[A026234(A018252(n+2)-1)]` -/
def P9004232327343801473.Spec : Prop :=
  ∀ n, P9004232327343801473.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P3241928768027087452

`A026239(A005381(n+1))`
-/

namespace A065312.P3241928768027087452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A005381 (n + 1)).toNat

end

end A065312.P3241928768027087452

namespace A065312

/-- `A026239(A005381(n+1))` -/
def P3241928768027087452.Spec : Prop :=
  ∀ n, P3241928768027087452.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P6556972306108191416

`A026239(A068780(n+1)+1)`
-/

namespace A065312.P6556972306108191416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A068780 (n + 1) + 1).toNat

end

end A065312.P6556972306108191416

namespace A065312

/-- `A026239(A068780(n+1)+1)` -/
def P6556972306108191416.Spec : Prop :=
  ∀ n, P6556972306108191416.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P10132362573592206514

`p?[A026239(A018252(n+1)+1)]`
-/

namespace A065312.P10132362573592206514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065312.P10132362573592206514

namespace A065312

/-- `p?[A026239(A018252(n+1)+1)]` -/
def P10132362573592206514.Spec : Prop :=
  ∀ n, P10132362573592206514.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P17738014390931647813

`A082500(2*comp[Δ[A082500(n+1)]])`
-/

namespace A065312.P17738014390931647813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065312.P17738014390931647813

namespace A065312

/-- `A082500(2*comp[Δ[A082500(n+1)]])` -/
def P17738014390931647813.Spec : Prop :=
  ∀ n, P17738014390931647813.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P748735201442273996

`p?[A026239(A073846(2*n+1)+1)]`
-/

namespace A065312.P748735201442273996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A073846 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065312.P748735201442273996

namespace A065312

/-- `p?[A026239(A073846(2*n+1)+1)]` -/
def P748735201442273996.Spec : Prop :=
  ∀ n, P748735201442273996.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P10187330794206667033

`p?[A026234(A067747(2*(n+1))-1)]`
-/

namespace A065312.P10187330794206667033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A067747 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065312.P10187330794206667033

namespace A065312

/-- `p?[A026234(A067747(2*(n+1))-1)]` -/
def P10187330794206667033.Spec : Prop :=
  ∀ n, P10187330794206667033.a n = A065312 (n + 1)

end A065312

/-! ## A065312.P13941262634362986299

`A000040(record[A205793(n+3)])`
-/

namespace A065312.P13941262634362986299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065312.P13941262634362986299

namespace A065312

/-- `A000040(record[A205793(n+3)])` -/
def P13941262634362986299.Spec : Prop :=
  ∀ n, P13941262634362986299.a n = A065312 (n + 1)

end A065312

/-!
# A065313: a(n) = pi(n*pi(n)).

The programs for A065313, the canonical program `A065313.P140214373438614317` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065313 has offset 1).

The definition of A065313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065313.P140214373438614317

`A000720((n+1)*∑[A080545(n+1)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065313

/-- `A000720((n+1)*∑[A080545(n+1)])` -/
def P140214373438614317.Spec : Prop :=
  ∀ n, P140214373438614317.a n = A065313 (n + 1)

theorem P140214373438614317.correct : P140214373438614317.Spec := by
  intro n
  simp only [A065313, Nat.add_sub_cancel]

end A065313

/-! ## A065313.P6721263302993271580

`A000720((n+1)*(A033270(n+1)+1))`
-/

namespace A065313.P6721263302993271580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A033270 (n + 1) + 1)).toNat

end

end A065313.P6721263302993271580

namespace A065313

/-- `A000720((n+1)*(A033270(n+1)+1))` -/
def P6721263302993271580.Spec : Prop :=
  ∀ n, P6721263302993271580.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P7103171345126774413

`A000720((n+1)*A000720(or(1, n)+1))`
-/

namespace A065313.P7103171345126774413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A000720 (Nat.lor 1 n + 1)).toNat

end

end A065313.P7103171345126774413

namespace A065313

/-- `A000720((n+1)*A000720(or(1, n)+1))` -/
def P7103171345126774413.Spec : Prop :=
  ∀ n, P7103171345126774413.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P17779860483430633548

`A000720((n+1)*A000720(gcd(2, n)+n))`
-/

namespace A065313.P17779860483430633548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A000720 (Nat.gcd 2 n + n)).toNat

end

end A065313.P17779860483430633548

namespace A065313

/-- `A000720((n+1)*A000720(gcd(2, n)+n))` -/
def P17779860483430633548.Spec : Prop :=
  ∀ n, P17779860483430633548.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P7749483054324103433

`A000720((n+1)*∑[and(1, A257727(n+1))])`
-/

namespace A065313.P7749483054324103433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A257727 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065313.P7749483054324103433

namespace A065313

/-- `A000720((n+1)*∑[and(1, A257727(n+1))])` -/
def P7749483054324103433.Spec : Prop :=
  ∀ n, P7749483054324103433.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P7447235784481465454

`A000720((n+1)*A249727(A061536(n+1)))`
-/

namespace A065313.P7447235784481465454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A249727 (A061536 (n + 1)).toNat).toNat

end

end A065313.P7447235784481465454

namespace A065313

/-- `A000720((n+1)*A249727(A061536(n+1)))` -/
def P7447235784481465454.Spec : Prop :=
  ∀ n, P7447235784481465454.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P15249485125188571709

`A230980(A128913(n+1))`
-/

namespace A065313.P15249485125188571709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A128913 (n + 1)).toNat

end

end A065313.P15249485125188571709

namespace A065313

/-- `A230980(A128913(n+1))` -/
def P15249485125188571709.Spec : Prop :=
  ∀ n, P15249485125188571709.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P9682123618093765902

`A230980((n+1)*A000720(n+1))`
-/

namespace A065313.P9682123618093765902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n + 1 : ℤ) * A000720 (n + 1)).toNat

end

end A065313.P9682123618093765902

namespace A065313

/-- `A230980((n+1)*A000720(n+1))` -/
def P9682123618093765902.Spec : Prop :=
  ∀ n, P9682123618093765902.a n = A065313 (n + 1)

end A065313

/-! ## A065313.P5806113347118949424

`A230980((n+1)*A230980(n+1))`
-/

namespace A065313.P5806113347118949424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ((n + 1 : ℤ) * A230980 (n + 1)).toNat

end

end A065313.P5806113347118949424

namespace A065313

/-- `A230980((n+1)*A230980(n+1))` -/
def P5806113347118949424.Spec : Prop :=
  ∀ n, P5806113347118949424.a n = A065313 (n + 1)

end A065313

/-!
# A065315: Smallest prime divisor of n-th primorial + (n+1)-st prime.

The programs for A065315, there is no canonical definition to state claims against.
-/

/-! ## A065315.P13044596521201709637

`p?[A338331(2*n+1)+A276085(2*n+1)]`
-/

namespace A065315.P13044596521201709637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (2 * n + 1) + A276085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065315.P13044596521201709637

/-! ## A065315.P13703929115674345907

`A020639(A060881(n+1))`
-/

namespace A065315.P13703929115674345907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060881 (n + 1)).toNat

end

end A065315.P13703929115674345907

/-!
# A065317: Largest prime divisor of the sum of the n-th primorial and the (n+1)-st prime.

The programs for A065317, there is no canonical definition to state claims against.
-/

/-! ## A065317.P16595518775177388799

`A006530(A060881(n+1))`
-/

namespace A065317.P16595518775177388799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060881 (n + 1)).toNat

end

end A065317.P16595518775177388799

/-! ## A065317.P2347958456058167028

`A006530(A002110(n+1)+A001097(n+1))`
-/

namespace A065317.P2347958456058167028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002110 (n + 1) + A001097 (n + 1)).toNat

end

end A065317.P2347958456058167028

/-!
# A065328: a(n) is the number of primes less than or equal to prime(n) - n.

The programs for A065328, the canonical program `A065328.P3641646369412658988` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065328 has offset 1).

The definition of A065328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065328.P3641646369412658988

`A334614(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065328

/-- `A334614(n+1)-(n+1)` -/
def P3641646369412658988.Spec : Prop :=
  ∀ n, P3641646369412658988.a n = A065328 (n + 1)

theorem P3641646369412658988.correct : P3641646369412658988.Spec := by
  intro n
  simp only [A065328, Nat.add_sub_cancel]

end A065328

/-! ## A065328.P12635542190095368759

`A000720(A014689(n+1))`
-/

namespace A065328.P12635542190095368759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014689 (n + 1)).toNat

end

end A065328.P12635542190095368759

namespace A065328

/-- `A000720(A014689(n+1))` -/
def P12635542190095368759.Spec : Prop :=
  ∀ n, P12635542190095368759.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P11934995081155932629

`A000720(∑[A075526(n)]-n)`
-/

namespace A065328.P11934995081155932629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A065328.P11934995081155932629

namespace A065328

/-- `A000720(∑[A075526(n)]-n)` -/
def P11934995081155932629.Spec : Prop :=
  ∀ n, P11934995081155932629.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P10777469903059391465

`A000720(A065890(n+1)+1)`
-/

namespace A065328.P10777469903059391465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065890 (n + 1) + 1).toNat

end

end A065328.P10777469903059391465

namespace A065328

/-- `A000720(A065890(n+1)+1)` -/
def P10777469903059391465.Spec : Prop :=
  ∀ n, P10777469903059391465.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P10325747022992024115

`A000720(A014692(n+1)-1)`
-/

namespace A065328.P10325747022992024115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014692 (n + 1) - 1).toNat

end

end A065328.P10325747022992024115

namespace A065328

/-- `A000720(A014692(n+1)-1)` -/
def P10325747022992024115.Spec : Prop :=
  ∀ n, P10325747022992024115.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P7762916238669970482

`A000720(A006093(n+1)-n)`
-/

namespace A065328.P7762916238669970482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006093 (n + 1) - (n : ℤ)).toNat

end

end A065328.P7762916238669970482

namespace A065328

/-- `A000720(A006093(n+1)-n)` -/
def P7762916238669970482.Spec : Prop :=
  ∀ n, P7762916238669970482.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P16010380681483993689

`A000720(∑[A054541(n+1)-1])`
-/

namespace A065328.P16010380681483993689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065328.P16010380681483993689

namespace A065328

/-- `A000720(∑[A054541(n+1)-1])` -/
def P16010380681483993689.Spec : Prop :=
  ∀ n, P16010380681483993689.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P11633272553674192295

`A000720(A000040(n+1)-(n+1))`
-/

namespace A065328.P11633272553674192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

end

end A065328.P11633272553674192295

namespace A065328

/-- `A000720(A000040(n+1)-(n+1))` -/
def P11633272553674192295.Spec : Prop :=
  ∀ n, P11633272553674192295.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P635330510920450022

`A000720(A008864(n+1)-(n+2))`
-/

namespace A065328.P635330510920450022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008864 (n + 1) - (n + 2 : ℤ)).toNat

end

end A065328.P635330510920450022

namespace A065328

/-- `A000720(A008864(n+1)-(n+2))` -/
def P635330510920450022.Spec : Prop :=
  ∀ n, P635330510920450022.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P12664056012202213977

`A334614(n+1)%A000027(n+1)`
-/

namespace A065328.P12664056012202213977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334614 (n + 1)) (A000027 (n + 1))

end

end A065328.P12664056012202213977

namespace A065328

/-- `A334614(n+1)%A000027(n+1)` -/
def P12664056012202213977.Spec : Prop :=
  ∀ n, P12664056012202213977.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P14362426997300821237

`A000720(A095116(n+1)-(2*n+1))`
-/

namespace A065328.P14362426997300821237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095116 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A065328.P14362426997300821237

namespace A065328

/-- `A000720(A095116(n+1)-(2*n+1))` -/
def P14362426997300821237.Spec : Prop :=
  ∀ n, P14362426997300821237.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P11597573737415170868

`A000720(A008578(n+2)-(n+1))`
-/

namespace A065328.P11597573737415170868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008578 (n + 2) - (n + 1 : ℤ)).toNat

end

end A065328.P11597573737415170868

namespace A065328

/-- `A000720(A008578(n+2)-(n+1))` -/
def P11597573737415170868.Spec : Prop :=
  ∀ n, P11597573737415170868.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P7360679807805246808

`A000720(A182986(n+2)-(n+1))`
-/

namespace A065328.P7360679807805246808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A182986 (n + 2) - (n + 1 : ℤ)).toNat

end

end A065328.P7360679807805246808

namespace A065328

/-- `A000720(A182986(n+2)-(n+1))` -/
def P7360679807805246808.Spec : Prop :=
  ∀ n, P7360679807805246808.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P7765781848898003130

`A000720(record[A000010(n+1)]-n)`
-/

namespace A065328.P7765781848898003130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A065328.P7765781848898003130

namespace A065328

/-- `A000720(record[A000010(n+1)]-n)` -/
def P7765781848898003130.Spec : Prop :=
  ∀ n, P7765781848898003130.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P7529407682266599018

`A000720(A000010(A000040(n+1))-n)`
-/

namespace A065328.P7529407682266599018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A000040 (n + 1)).toNat - (n : ℤ)).toNat

end

end A065328.P7529407682266599018

namespace A065328

/-- `A000720(A000010(A000040(n+1))-n)` -/
def P7529407682266599018.Spec : Prop :=
  ∀ n, P7529407682266599018.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P16070005421233383002

`A000720(eq[1, A001222(n+1)]-n)`
-/

namespace A065328.P16070005421233383002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - n)

end

end A065328.P16070005421233383002

namespace A065328

/-- `A000720(eq[1, A001222(n+1)]-n)` -/
def P16070005421233383002.Spec : Prop :=
  ∀ n, P16070005421233383002.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P9845191804658275848

`A000720(A067747(2*n+1)-(n+1))`
-/

namespace A065328.P9845191804658275848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067747 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A065328.P9845191804658275848

namespace A065328

/-- `A000720(A067747(2*n+1)-(n+1))` -/
def P9845191804658275848.Spec : Prop :=
  ∀ n, P9845191804658275848.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P14576913922334467530

`A000720(A109763(2*n+1)-(n+1))`
-/

namespace A065328.P14576913922334467530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A109763 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A065328.P14576913922334467530

namespace A065328

/-- `A000720(A109763(2*n+1)-(n+1))` -/
def P14576913922334467530.Spec : Prop :=
  ∀ n, P14576913922334467530.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P11696279938886712710

`A000720(A134735(2*n+1)-(n+1))`
-/

namespace A065328.P11696279938886712710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134735 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A065328.P11696279938886712710

namespace A065328

/-- `A000720(A134735(2*n+1)-(n+1))` -/
def P11696279938886712710.Spec : Prop :=
  ∀ n, P11696279938886712710.a n = A065328 (n + 1)

end A065328

/-! ## A065328.P4720886758189682926

`A000720(A082500(2*(n+1))-A082500(2*n+1))`
-/

namespace A065328.P4720886758189682926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082500 (2 * (n + 1)) - A082500 (2 * n + 1)).toNat

end

end A065328.P4720886758189682926

namespace A065328

/-- `A000720(A082500(2*(n+1))-A082500(2*n+1))` -/
def P4720886758189682926.Spec : Prop :=
  ∀ n, P4720886758189682926.a n = A065328 (n + 1)

end A065328

/-!
# A065329: Square array read by antidiagonals giving number of binary trees of height n with k points on the n-th level (n,k>0).

The programs for A065329, there is no canonical definition to state claims against.
-/

/-! ## A065329.P9728674870347668617

`A007862(A056971(n+1))*A099089(n)`
-/

namespace A065329.P9728674870347668617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A056971 (n + 1)).toNat * A099089 n

end

end A065329.P9728674870347668617

/-! ## A065329.P6513434404489162108

`and(A078972(A204876(n+1)), A368584(n))`
-/

namespace A065329.P6513434404489162108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078972 (A204876 (n + 1)).toNat) (A368584 n)

end

end A065329.P6513434404489162108

/-! ## A065329.P5877463175738865250

`A355997(n+2)/A212637(A128367(n+1))`
-/

namespace A065329.P5877463175738865250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355997 (n + 2) : ℚ) / (A212637 (A128367 (n + 1)).toNat : ℚ)

end

end A065329.P5877463175738865250

/-! ## A065329.P14841036353792135150

`and(A313688(2*n), A321597(A346523(2*n+1)))`
-/

namespace A065329.P14841036353792135150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A313688 (2 * n)) (A321597 (A346523 (2 * n + 1)).toNat)

end

end A065329.P14841036353792135150

/-!
# A065330: Largest divisor of n coprime to 6. I.e., a(n) = max { k | gcd(n,k)=k and gcd(k,6)=1 }.

The programs for A065330, the canonical program `A065330.P5168762924759292098` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065330 has offset 1).

The definition of A065330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065330.P11598577447903176468

`floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)`
-/

namespace A065330.P11598577447903176468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A065330.P11598577447903176468

namespace A065330

/-- `floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3)` -/
def P11598577447903176468.Spec : Prop :=
  ∀ n, P11598577447903176468.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P11109818684441374477

`ceil((n+1)/2^val(n+1, 2))/3^val(n+1, 3)`
-/

namespace A065330.P11109818684441374477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A065330.P11109818684441374477

namespace A065330

/-- `ceil((n+1)/2^val(n+1, 2))/3^val(n+1, 3)` -/
def P11109818684441374477.Spec : Prop :=
  ∀ n, P11109818684441374477.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P6897655465057500061

`round((n+1)/2^val(n+1, 2))/3^val(n+1, 3)`
-/

namespace A065330.P6897655465057500061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A065330.P6897655465057500061

namespace A065330

/-- `round((n+1)/2^val(n+1, 2))/3^val(n+1, 3)` -/
def P6897655465057500061.Spec : Prop :=
  ∀ n, P6897655465057500061.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P1150677775631095604

`gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3))`
-/

namespace A065330.P1150677775631095604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)))

end

end A065330.P1150677775631095604

namespace A065330

/-- `gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3))` -/
def P1150677775631095604.Spec : Prop :=
  ∀ n, (P1150677775631095604.a n : ℤ) = A065330 (n + 1)

end A065330

/-! ## A065330.P4115281997329013886

`(n+1)/A065331(n+1)`
-/

namespace A065330.P4115281997329013886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (n + 1) : ℚ)

end

end A065330.P4115281997329013886

namespace A065330

/-- `(n+1)/A065331(n+1)` -/
def P4115281997329013886.Spec : Prop :=
  ∀ n, P4115281997329013886.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P5322651579161230926

`gcd(n+1, A140215(n+1))`
-/

namespace A065330.P5322651579161230926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A140215 (n + 1))

end

end A065330.P5322651579161230926

namespace A065330

/-- `gcd(n+1, A140215(n+1))` -/
def P5322651579161230926.Spec : Prop :=
  ∀ n, (P5322651579161230926.a n : ℤ) = A065330 (n + 1)

end A065330

/-! ## A065330.P6955284184537041882

`A000265((n+1)/3^val(n+1, 3))`
-/

namespace A065330.P6955284184537041882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A065330.P6955284184537041882

namespace A065330

/-- `A000265((n+1)/3^val(n+1, 3))` -/
def P6955284184537041882.Spec : Prop :=
  ∀ n, P6955284184537041882.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P5504281466503384903

`A038502(or(1, (n+1)/2^val(n+1, 2)))`
-/

namespace A065330.P5504281466503384903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A065330.P5504281466503384903

namespace A065330

/-- `A038502(or(1, (n+1)/2^val(n+1, 2)))` -/
def P5504281466503384903.Spec : Prop :=
  ∀ n, P5504281466503384903.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P5168762924759292098

`A038502(or(1, (n+1)/(or(n, n+1)-n)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065330

/-- `A038502(or(1, (n+1)/(or(n, n+1)-n)))` -/
def P5168762924759292098.Spec : Prop :=
  ∀ n, P5168762924759292098.a n = A065330 (n + 1)

theorem P5168762924759292098.correct : P5168762924759292098.Spec := by
  intro n
  simp only [A065330, Nat.add_sub_cancel]

end A065330

/-! ## A065330.P9023109420486842441

`A038502(or(1, (n+1)/xor(n, or(n, n+1))))`
-/

namespace A065330.P9023109420486842441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)))).toNat

end

end A065330.P9023109420486842441

namespace A065330

/-- `A038502(or(1, (n+1)/xor(n, or(n, n+1))))` -/
def P9023109420486842441.Spec : Prop :=
  ∀ n, P9023109420486842441.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P6102479769802470130

`floor((n+1)/3^val(n+1, 3))/A006519(n+1)`
-/

namespace A065330.P6102479769802470130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)⌋ : ℚ) / (A006519 (n + 1) : ℚ)

end

end A065330.P6102479769802470130

namespace A065330

/-- `floor((n+1)/3^val(n+1, 3))/A006519(n+1)` -/
def P6102479769802470130.Spec : Prop :=
  ∀ n, P6102479769802470130.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P14622078463093939767

`abs((n+1)/(or(n, n+1)-n))/A038500(n+1)`
-/

namespace A065330.P14622078463093939767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)| / (A038500 (n + 1) : ℚ)

end

end A065330.P14622078463093939767

namespace A065330

/-- `abs((n+1)/(or(n, n+1)-n))/A038500(n+1)` -/
def P14622078463093939767.Spec : Prop :=
  ∀ n, P14622078463093939767.a n = (A065330 (n + 1) : ℚ)

end A065330

/-! ## A065330.P4483780787864827648

`A038502(A000265(n+1))`
-/

namespace A065330.P4483780787864827648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A000265 (n + 1)).toNat

end

end A065330.P4483780787864827648

namespace A065330

/-- `A038502(A000265(n+1))` -/
def P4483780787864827648.Spec : Prop :=
  ∀ n, P4483780787864827648.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P18100532390105279584

`A093411(A038502(n+1))`
-/

namespace A065330.P18100532390105279584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A038502 (n + 1)).toNat

end

end A065330.P18100532390105279584

namespace A065330

/-- `A093411(A038502(n+1))` -/
def P18100532390105279584.Spec : Prop :=
  ∀ n, P18100532390105279584.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P1466797425619256352

`A007310(A126760(n+1))`
-/

namespace A065330.P1466797425619256352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A126760 (n + 1)).toNat

end

end A065330.P1466797425619256352

namespace A065330

/-- `A007310(A126760(n+1))` -/
def P1466797425619256352.Spec : Prop :=
  ∀ n, P1466797425619256352.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P6515932946897020010

`A354202(A354203(n+1))`
-/

namespace A065330.P6515932946897020010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354202 (A354203 (n + 1)).toNat

end

end A065330.P6515932946897020010

namespace A065330

/-- `A354202(A354203(n+1))` -/
def P6515932946897020010.Spec : Prop :=
  ∀ n, P6515932946897020010.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P14428958127708765805

`A007310(A126759(n+1)-1)`
-/

namespace A065330.P14428958127708765805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A126759 (n + 1) - 1).toNat

end

end A065330.P14428958127708765805

namespace A065330

/-- `A007310(A126759(n+1)-1)` -/
def P14428958127708765805.Spec : Prop :=
  ∀ n, P14428958127708765805.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P12583049544784640700

`A060904(n+1)*A165725(n+1)`
-/

namespace A065330.P12583049544784640700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 1) * A165725 (n + 1)

end

end A065330.P12583049544784640700

namespace A065330

/-- `A060904(n+1)*A165725(n+1)` -/
def P12583049544784640700.Spec : Prop :=
  ∀ n, P12583049544784640700.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P3706260222727377506

`A248909(n+1)*A343431(n+1)`
-/

namespace A065330.P3706260222727377506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1) * A343431 (n + 1)

end

end A065330.P3706260222727377506

namespace A065330

/-- `A248909(n+1)*A343431(n+1)` -/
def P3706260222727377506.Spec : Prop :=
  ∀ n, P3706260222727377506.a n = A065330 (n + 1)

end A065330

/-! ## A065330.P7894953303643920058

`A000265((n+1)/A038500(n+1))`
-/

namespace A065330.P7894953303643920058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A065330.P7894953303643920058

namespace A065330

/-- `A000265((n+1)/A038500(n+1))` -/
def P7894953303643920058.Spec : Prop :=
  ∀ n, P7894953303643920058.a n = A065330 (n + 1)

end A065330

/-!
# A065331: Largest 3-smooth divisor of n.

The programs for A065331, the canonical program `A065331.P8774004989157438008` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065331 has offset 1).

The definition of A065331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065331.P8774004989157438008

`A006519(n+1)*A038500(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065331

/-- `A006519(n+1)*A038500(n+1)` -/
def P8774004989157438008.Spec : Prop :=
  ∀ n, P8774004989157438008.a n = A065331 (n + 1)

theorem P8774004989157438008.correct : P8774004989157438008.Spec := by
  intro n
  simp only [A065331, Nat.add_sub_cancel]

end A065331

/-! ## A065331.P266191986385627740

`2^A007814(n+1)*3^A007949(n+1)`
-/

namespace A065331.P266191986385627740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A065331.P266191986385627740

namespace A065331

/-- `2^A007814(n+1)*3^A007949(n+1)` -/
def P266191986385627740.Spec : Prop :=
  ∀ n, P266191986385627740.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P2018887880271518229

`gcd(n+1, (n+13)^9)`
-/

namespace A065331.P2018887880271518229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((n + 13) ^ 9)

end

end A065331.P2018887880271518229

namespace A065331

/-- `gcd(n+1, (n+13)^9)` -/
def P2018887880271518229.Spec : Prop :=
  ∀ n, (P2018887880271518229.a n : ℤ) = A065331 (n + 1)

end A065331

/-! ## A065331.P17477366195188061883

`2^val(n+1, 2)*3^val(n+1, 3)`
-/

namespace A065331.P17477366195188061883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3

end

end A065331.P17477366195188061883

namespace A065331

/-- `2^val(n+1, 2)*3^val(n+1, 3)` -/
def P17477366195188061883.Spec : Prop :=
  ∀ n, (P17477366195188061883.a n : ℤ) = A065331 (n + 1)

end A065331

/-! ## A065331.P8318671242621343923

`(n+1)/A065330(n+1)`
-/

namespace A065331.P8318671242621343923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065330 (n + 1) : ℚ)

end

end A065331.P8318671242621343923

namespace A065331

/-- `(n+1)/A065330(n+1)` -/
def P8318671242621343923.Spec : Prop :=
  ∀ n, P8318671242621343923.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P8425206361288191237

`∏{d}[n+1, gcd(6, A014963(#))]`
-/

namespace A065331.P8425206361288191237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd 6 (A014963 d)

end

end A065331.P8425206361288191237

namespace A065331

/-- `∏{d}[n+1, gcd(6, A014963(#))]` -/
def P8425206361288191237.Spec : Prop :=
  ∀ n, (P8425206361288191237.a n : ℤ) = A065331 (n + 1)

end A065331

/-! ## A065331.P16777790443743278083

`A003586(A322026(n+1))`
-/

namespace A065331.P16777790443743278083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A322026 (n + 1)).toNat

end

end A065331.P16777790443743278083

namespace A065331

/-- `A003586(A322026(n+1))` -/
def P16777790443743278083.Spec : Prop :=
  ∀ n, P16777790443743278083.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P2213348024355127793

`A065338(A355582(n+1))`
-/

namespace A065331.P2213348024355127793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A355582 (n + 1)).toNat

end

end A065331.P2213348024355127793

namespace A065331

/-- `A065338(A355582(n+1))` -/
def P2213348024355127793.Spec : Prop :=
  ∀ n, P2213348024355127793.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P2930352854742967659

`A355582(A072438(n+1))`
-/

namespace A065331.P2930352854742967659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A072438 (n + 1)).toNat

end

end A065331.P2930352854742967659

namespace A065331

/-- `A355582(A072438(n+1))` -/
def P2930352854742967659.Spec : Prop :=
  ∀ n, P2930352854742967659.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P1812696917874855751

`A355582(A132739(n+1))`
-/

namespace A065331.P1812696917874855751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A132739 (n + 1)).toNat

end

end A065331.P1812696917874855751

namespace A065331

/-- `A355582(A132739(n+1))` -/
def P1812696917874855751.Spec : Prop :=
  ∀ n, P1812696917874855751.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P15254339437613027823

`A160467(n+1)*A370180(n+1)`
-/

namespace A065331.P15254339437613027823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A370180 (n + 1)

end

end A065331.P15254339437613027823

namespace A065331

/-- `A160467(n+1)*A370180(n+1)` -/
def P15254339437613027823.Spec : Prop :=
  ∀ n, P15254339437613027823.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P5693211598791118276

`(n+1)/A038502(A000265(n+1))`
-/

namespace A065331.P5693211598791118276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A038502 (A000265 (n + 1)).toNat : ℚ)

end

end A065331.P5693211598791118276

namespace A065331

/-- `(n+1)/A038502(A000265(n+1))` -/
def P5693211598791118276.Spec : Prop :=
  ∀ n, P5693211598791118276.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P9775754238435987390

`(n+1)/A007310(A126760(n+1))`
-/

namespace A065331.P9775754238435987390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007310 (A126760 (n + 1)).toNat : ℚ)

end

end A065331.P9775754238435987390

namespace A065331

/-- `(n+1)/A007310(A126760(n+1))` -/
def P9775754238435987390.Spec : Prop :=
  ∀ n, P9775754238435987390.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P4037807353659391453

`A132739((n+1)/A165725(n+1))`
-/

namespace A065331.P4037807353659391453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A165725 (n + 1) : ℚ))).toNat

end

end A065331.P4037807353659391453

namespace A065331

/-- `A132739((n+1)/A165725(n+1))` -/
def P4037807353659391453.Spec : Prop :=
  ∀ n, P4037807353659391453.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P12323716969736651655

`A355582((n+1)/A060904(n+1))`
-/

namespace A065331.P12323716969736651655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A065331.P12323716969736651655

namespace A065331

/-- `A355582((n+1)/A060904(n+1))` -/
def P12323716969736651655.Spec : Prop :=
  ∀ n, P12323716969736651655.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P4847100465087650935

`A355582((n+1)/A170818(n+1))`
-/

namespace A065331.P4847100465087650935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A170818 (n + 1) : ℚ))).toNat

end

end A065331.P4847100465087650935

namespace A065331

/-- `A355582((n+1)/A170818(n+1))` -/
def P4847100465087650935.Spec : Prop :=
  ∀ n, P4847100465087650935.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P17320057842500795457

`A385138(n+1)/A186099(n+1)`
-/

namespace A065331.P17320057842500795457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385138 (n + 1) : ℚ) / (A186099 (n + 1) : ℚ)

end

end A065331.P17320057842500795457

namespace A065331

/-- `A385138(n+1)/A186099(n+1)` -/
def P17320057842500795457.Spec : Prop :=
  ∀ n, P17320057842500795457.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P6847669423988598456

`A355582((n+1)/A343431(n+1))`
-/

namespace A065331.P6847669423988598456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343431 (n + 1) : ℚ))).toNat

end

end A065331.P6847669423988598456

namespace A065331

/-- `A355582((n+1)/A343431(n+1))` -/
def P6847669423988598456.Spec : Prop :=
  ∀ n, P6847669423988598456.a n = A065331 (n + 1)

end A065331

/-! ## A065331.P13529723403338241669

`(n+1)/A000265((n+1)/A038500(n+1))`
-/

namespace A065331.P13529723403338241669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat : ℚ)

end

end A065331.P13529723403338241669

namespace A065331

/-- `(n+1)/A000265((n+1)/A038500(n+1))` -/
def P13529723403338241669.Spec : Prop :=
  ∀ n, P13529723403338241669.a n = (A065331 (n + 1) : ℚ)

end A065331

/-! ## A065331.P1102822558649587794

`∑{d}[n+1, A065332(#)*A232991((n+1)/#-1)]`
-/

namespace A065331.P1102822558649587794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A065331.P1102822558649587794

namespace A065331

/-- `∑{d}[n+1, A065332(#)*A232991((n+1)/#-1)]` -/
def P1102822558649587794.Spec : Prop :=
  ∀ n, P1102822558649587794.a n = A065331 (n + 1)

end A065331

/-!
# A065332: 3-smooth numbers in their natural position, gaps filled with 0.

The programs for A065332, the canonical program `A065332.P6967155800797600570` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065332 has offset 1).

The definition of A065332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065332.P6967155800797600570

`(n+1)*∏{p}[n+1, floor(3/#)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065332

/-- `(n+1)*∏{p}[n+1, floor(3/#)]` -/
def P6967155800797600570.Spec : Prop :=
  ∀ n, P6967155800797600570.a n = A065332 (n + 1)

theorem P6967155800797600570.correct : P6967155800797600570.Spec := by
  intro n
  simp only [A065332, Nat.add_sub_cancel]

end A065332

/-! ## A065332.P8851362485332985850

`(n+1)*round(∏{p}[n+1, 2/#])`
-/

namespace A065332.P8851362485332985850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), 2 / (p : ℚ))

end

end A065332.P8851362485332985850

namespace A065332

/-- `(n+1)*round(∏{p}[n+1, 2/#])` -/
def P8851362485332985850.Spec : Prop :=
  ∀ n, P8851362485332985850.a n = A065332 (n + 1)

end A065332

/-! ## A065332.P13092971244734089738

`C(A065331(n+1), n)`
-/

namespace A065332.P13092971244734089738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065331 (n + 1)).toNat n

end

end A065332.P13092971244734089738

namespace A065332

/-- `C(A065331(n+1), n)` -/
def P13092971244734089738.Spec : Prop :=
  ∀ n, (P13092971244734089738.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P5760079745141844656

`C(A065338(n+1), n)`
-/

namespace A065332.P5760079745141844656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065338 (n + 1)).toNat n

end

end A065332.P5760079745141844656

namespace A065332

/-- `C(A065338(n+1), n)` -/
def P5760079745141844656.Spec : Prop :=
  ∀ n, (P5760079745141844656.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P18435670440358677483

`C(A066262(n+1), n)`
-/

namespace A065332.P18435670440358677483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066262 (n + 1)).toNat n

end

end A065332.P18435670440358677483

namespace A065332

/-- `C(A066262(n+1), n)` -/
def P18435670440358677483.Spec : Prop :=
  ∀ n, (P18435670440358677483.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P13450943704102584229

`C(A079065(n+1), n)`
-/

namespace A065332.P13450943704102584229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079065 (n + 1)).toNat n

end

end A065332.P13450943704102584229

namespace A065332

/-- `C(A079065(n+1), n)` -/
def P13450943704102584229.Spec : Prop :=
  ∀ n, (P13450943704102584229.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P1583667379158513830

`C(A290732(n+1), n)`
-/

namespace A065332.P1583667379158513830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290732 (n + 1)).toNat n

end

end A065332.P1583667379158513830

namespace A065332

/-- `C(A290732(n+1), n)` -/
def P1583667379158513830.Spec : Prop :=
  ∀ n, (P1583667379158513830.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P8391879999876979869

`C(A318510(n+1), n)`
-/

namespace A065332.P8391879999876979869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318510 (n + 1)).toNat n

end

end A065332.P8391879999876979869

namespace A065332

/-- `C(A318510(n+1), n)` -/
def P8391879999876979869.Spec : Prop :=
  ∀ n, (P8391879999876979869.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P3755759394910349350

`C(A347123(n+1), n)`
-/

namespace A065332.P3755759394910349350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A347123 (n + 1)).toNat n

end

end A065332.P3755759394910349350

namespace A065332

/-- `C(A347123(n+1), n)` -/
def P3755759394910349350.Spec : Prop :=
  ∀ n, (P3755759394910349350.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P12019707503076607067

`(n+1)*char[A230445(n)]`
-/

namespace A065332.P12019707503076607067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A065332.P12019707503076607067

namespace A065332

/-- `(n+1)*char[A230445(n)]` -/
def P12019707503076607067.Spec : Prop :=
  ∀ n, (P12019707503076607067.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P7399123747356106123

`(n+1)*A065333(n+1)`
-/

namespace A065332.P7399123747356106123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065333 (n + 1)

end

end A065332.P7399123747356106123

namespace A065332

/-- `(n+1)*A065333(n+1)` -/
def P7399123747356106123.Spec : Prop :=
  ∀ n, P7399123747356106123.a n = A065332 (n + 1)

end A065332

/-! ## A065332.P3903757815003275239

`C(C(A064553(n+1), n), n)`
-/

namespace A065332.P3903757815003275239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A064553 (n + 1)).toNat n) n

end

end A065332.P3903757815003275239

namespace A065332

/-- `C(C(A064553(n+1), n), n)` -/
def P3903757815003275239.Spec : Prop :=
  ∀ n, (P3903757815003275239.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P12257051787612272182

`(n+1)*char[A069353(n+1)]`
-/

namespace A065332.P12257051787612272182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A065332.P12257051787612272182

namespace A065332

/-- `(n+1)*char[A069353(n+1)]` -/
def P12257051787612272182.Spec : Prop :=
  ∀ n, (P12257051787612272182.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P7608780268950205501

`(n+1)*A340363(3*(n+1))`
-/

namespace A065332.P7608780268950205501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340363 (3 * (n + 1))

end

end A065332.P7608780268950205501

namespace A065332

/-- `(n+1)*A340363(3*(n+1))` -/
def P7608780268950205501.Spec : Prop :=
  ∀ n, P7608780268950205501.a n = A065332 (n + 1)

end A065332

/-! ## A065332.P12762325365914396142

`(n+1)*A340373(3*(n+1))`
-/

namespace A065332.P12762325365914396142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340373 (3 * (n + 1))

end

end A065332.P12762325365914396142

namespace A065332

/-- `(n+1)*A340373(3*(n+1))` -/
def P12762325365914396142.Spec : Prop :=
  ∀ n, P12762325365914396142.a n = A065332 (n + 1)

end A065332

/-! ## A065332.P15717293522168015713

`(n+1)%C(5, A006530(n+1))!`
-/

namespace A065332.P15717293522168015713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.factorial (Nat.choose 5 (A006530 (n + 1)).toNat)

end

end A065332.P15717293522168015713

namespace A065332

/-- `(n+1)%C(5, A006530(n+1))!` -/
def P15717293522168015713.Spec : Prop :=
  ∀ n, (P15717293522168015713.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P1159665916451112498

`(n+1)*val(A006530(3*(n+1)), 3)`
-/

namespace A065332.P1159665916451112498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A006530 (3 * (n + 1))).toNat 3

end

end A065332.P1159665916451112498

namespace A065332

/-- `(n+1)*val(A006530(3*(n+1)), 3)` -/
def P1159665916451112498.Spec : Prop :=
  ∀ n, (P1159665916451112498.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P11029098214736172627

`(n+1)*C(2, A001221(6*(n+1)))`
-/

namespace A065332.P11029098214736172627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (A001221 (6 * (n + 1))).toNat

end

end A065332.P11029098214736172627

namespace A065332

/-- `(n+1)*C(2, A001221(6*(n+1)))` -/
def P11029098214736172627.Spec : Prop :=
  ∀ n, (P11029098214736172627.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P12477443618971139289

`(n+1)*C(3, A006530(2*n+n+3))`
-/

namespace A065332.P12477443618971139289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 3 (A006530 (2 * n + (n + 3))).toNat

end

end A065332.P12477443618971139289

namespace A065332

/-- `(n+1)*C(3, A006530(2*n+n+3))` -/
def P12477443618971139289.Spec : Prop :=
  ∀ n, (P12477443618971139289.a n : ℤ) = A065332 (n + 1)

end A065332

/-! ## A065332.P12902805526289443441

`C(gcd(n+1, A000010(2*n+n+3)), n)`
-/

namespace A065332.P12902805526289443441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n + 1 : ℤ) (A000010 (2 * n + (n + 3)))) n

end

end A065332.P12902805526289443441

namespace A065332

/-- `C(gcd(n+1, A000010(2*n+n+3)), n)` -/
def P12902805526289443441.Spec : Prop :=
  ∀ n, (P12902805526289443441.a n : ℤ) = A065332 (n + 1)

end A065332

/-!
# A065333: Characteristic function of 3-smooth numbers, i.e., numbers of the form 2^i*3^j (i, j >= 0).

The programs for A065333, the canonical program `A065333.P1505503991428848330` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065333 has offset 1).

The definition of A065333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065333.P1505503991428848330

`∏{p}[n+1, floor(3/#)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065333

/-- `∏{p}[n+1, floor(3/#)]` -/
def P1505503991428848330.Spec : Prop :=
  ∀ n, P1505503991428848330.a n = A065333 (n + 1)

theorem P1505503991428848330.correct : P1505503991428848330.Spec := by
  intro n
  simp only [A065333, Nat.add_sub_cancel]

end A065333

/-! ## A065333.P10631309821414771991

`round(∏{p}[n+1, 2/#])`
-/

namespace A065333.P10631309821414771991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), 2 / (p : ℚ))

end

end A065333.P10631309821414771991

namespace A065333

/-- `round(∏{p}[n+1, 2/#])` -/
def P10631309821414771991.Spec : Prop :=
  ∀ n, P10631309821414771991.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P14588946093944112988

`round(acot(∏{p}[n+1, log2(#)]))`
-/

namespace A065333.P14588946093944112988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (∏ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)))

end

end A065333.P14588946093944112988

namespace A065333

/-- `round(acot(∏{p}[n+1, log2(#)]))` -/
def P14588946093944112988.Spec : Prop :=
  ∀ n, P14588946093944112988.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P17181394046283566814

`C(5, ∑{p}[6*(n+1), #])`
-/

namespace A065333.P17181394046283566814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A065333.P17181394046283566814

namespace A065333

/-- `C(5, ∑{p}[6*(n+1), #])` -/
def P17181394046283566814.Spec : Prop :=
  ∀ n, (P17181394046283566814.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P5096759013622559185

`C(6, ∏{p}[6*(n+1), #])`
-/

namespace A065333.P5096759013622559185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065333.P5096759013622559185

namespace A065333

/-- `C(6, ∏{p}[6*(n+1), #])` -/
def P5096759013622559185.Spec : Prop :=
  ∀ n, (P5096759013622559185.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P11649630016606104084

`∏{p}[n+1, C(3, #)]%2`
-/

namespace A065333.P11649630016606104084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p) % 2

end

end A065333.P11649630016606104084

namespace A065333

/-- `∏{p}[n+1, C(3, #)]%2` -/
def P11649630016606104084.Spec : Prop :=
  ∀ n, (P11649630016606104084.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P1880469961985837337

`round(3/∑{p}[3*(n+1), #])`
-/

namespace A065333.P1880469961985837337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))

end

end A065333.P1880469961985837337

namespace A065333

/-- `round(3/∑{p}[3*(n+1), #])` -/
def P1880469961985837337.Spec : Prop :=
  ∀ n, P1880469961985837337.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P8550282255406824197

`floor(5/∑{p}[3*(n+1), #])`
-/

namespace A065333.P8550282255406824197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A065333.P8550282255406824197

namespace A065333

/-- `floor(5/∑{p}[3*(n+1), #])` -/
def P8550282255406824197.Spec : Prop :=
  ∀ n, P8550282255406824197.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P11338403035979361869

`round(2^∑{p}[n+1, 2-#])`
-/

namespace A065333.P11338403035979361869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (2 - (p : ℤ)) : ℤ))

end

end A065333.P11338403035979361869

namespace A065333

/-- `round(2^∑{p}[n+1, 2-#])` -/
def P11338403035979361869.Spec : Prop :=
  ∀ n, P11338403035979361869.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P16539723976734944326

`floor(ϕ^∑{p}[n+1, 3-#])`
-/

namespace A065333.P16539723976734944326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (∑ p ∈ Nat.primeFactors (f1 n), (3 - (p : ℤ)) : ℤ)⌋

end

end A065333.P16539723976734944326

namespace A065333

/-- `floor(ϕ^∑{p}[n+1, 3-#])` -/
def P16539723976734944326.Spec : Prop :=
  ∀ n, P16539723976734944326.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P10669212364334143295

`floor(∏{p}[n+1, ϕ^(3-#)])`
-/

namespace A065333.P10669212364334143295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), Real.goldenRatio ^ (3 - (p : ℤ) : ℤ)⌋

end

end A065333.P10669212364334143295

namespace A065333

/-- `floor(∏{p}[n+1, ϕ^(3-#)])` -/
def P10669212364334143295.Spec : Prop :=
  ∀ n, P10669212364334143295.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P2469441117165355187

`∏{p}[n+1, ceil(-3/#)]²`
-/

namespace A065333.P2469441117165355187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌈-(3 / (p : ℚ))⌉) ^ 2

end

end A065333.P2469441117165355187

namespace A065333

/-- `∏{p}[n+1, ceil(-3/#)]²` -/
def P2469441117165355187.Spec : Prop :=
  ∀ n, P2469441117165355187.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P14863497780477226757

`char[A230445(n)]`
-/

namespace A065333.P14863497780477226757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A065333.P14863497780477226757

namespace A065333

/-- `char[A230445(n)]` -/
def P14863497780477226757.Spec : Prop :=
  ∀ n, (P14863497780477226757.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P12372517357671683218

`char[A069353(n+1)]`
-/

namespace A065333.P12372517357671683218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A065333.P12372517357671683218

namespace A065333

/-- `char[A069353(n+1)]` -/
def P12372517357671683218.Spec : Prop :=
  ∀ n, (P12372517357671683218.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P10040022813326316780

`char[A036561(n)-1]`
-/

namespace A065333.P10040022813326316780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A065333.P10040022813326316780

namespace A065333

/-- `char[A036561(n)-1]` -/
def P10040022813326316780.Spec : Prop :=
  ∀ n, (P10040022813326316780.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P1372183769432198292

`char[A175840(n)-1]`
-/

namespace A065333.P1372183769432198292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A065333.P1372183769432198292

namespace A065333

/-- `char[A175840(n)-1]` -/
def P1372183769432198292.Spec : Prop :=
  ∀ n, (P1372183769432198292.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P6411158343406252166

`char[A247936(n)-1]`
-/

namespace A065333.P6411158343406252166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A065333.P6411158343406252166

namespace A065333

/-- `char[A247936(n)-1]` -/
def P6411158343406252166.Spec : Prop :=
  ∀ n, (P6411158343406252166.a n : ℤ) = A065333 (n + 1)

end A065333

/-! ## A065333.P17645673724629462535

`A340363(3*(n+1))`
-/

namespace A065333.P17645673724629462535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (3 * (n + 1))

end

end A065333.P17645673724629462535

namespace A065333

/-- `A340363(3*(n+1))` -/
def P17645673724629462535.Spec : Prop :=
  ∀ n, P17645673724629462535.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P3796794028103988024

`A340373(3*(n+1))`
-/

namespace A065333.P3796794028103988024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (3 * (n + 1))

end

end A065333.P3796794028103988024

namespace A065333

/-- `A340373(3*(n+1))` -/
def P3796794028103988024.Spec : Prop :=
  ∀ n, P3796794028103988024.a n = A065333 (n + 1)

end A065333

/-! ## A065333.P17664620299138424075

`A385044(n+1)%2`
-/

namespace A065333.P17664620299138424075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385044 (n + 1)) 2

end

end A065333.P17664620299138424075

namespace A065333

/-- `A385044(n+1)%2` -/
def P17664620299138424075.Spec : Prop :=
  ∀ n, P17664620299138424075.a n = A065333 (n + 1)

end A065333

/-!
# A065334: 2-exponents to represent 3-smooth numbers (A065332).

The programs for A065334, the canonical program `A065334.P13791881819872043413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065334 has offset 1).

The definition of A065334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065334.P13791881819872043413

`A007814(n+1)*A065333(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065334

/-- `A007814(n+1)*A065333(n+1)` -/
def P13791881819872043413.Spec : Prop :=
  ∀ n, P13791881819872043413.a n = A065334 (n + 1)

theorem P13791881819872043413.correct : P13791881819872043413.Spec := by
  intro n
  simp only [A065334, Nat.add_sub_cancel]

end A065334

/-! ## A065334.P17252963098748672169

`val(n+1, 2)*A316341(∏{p}[n+1, #])`
-/

namespace A065334.P17252963098748672169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A316341 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065334.P17252963098748672169

namespace A065334

/-- `val(n+1, 2)*A316341(∏{p}[n+1, #])` -/
def P17252963098748672169.Spec : Prop :=
  ∀ n, P17252963098748672169.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P608305441579057255

`val(n+1, 2)%(C(A347123(n+1), n)+1)`
-/

namespace A065334.P608305441579057255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % (Nat.choose (A347123 (n + 1)).toNat n + 1)

end

end A065334.P608305441579057255

namespace A065334

/-- `val(n+1, 2)%(C(A347123(n+1), n)+1)` -/
def P608305441579057255.Spec : Prop :=
  ∀ n, (P608305441579057255.a n : ℤ) = A065334 (n + 1)

end A065334

/-! ## A065334.P15828639983280833607

`Δ[A011371(n)]*A252372(n+1)`
-/

namespace A065334.P15828639983280833607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A252372 (n + 1)

end

end A065334.P15828639983280833607

namespace A065334

/-- `Δ[A011371(n)]*A252372(n+1)` -/
def P15828639983280833607.Spec : Prop :=
  ∀ n, P15828639983280833607.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P291850613987478547

`A051628(n+1)*A065333(n+1)`
-/

namespace A065334.P291850613987478547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (n + 1) * A065333 (n + 1)

end

end A065334.P291850613987478547

namespace A065334

/-- `A051628(n+1)*A065333(n+1)` -/
def P291850613987478547.Spec : Prop :=
  ∀ n, P291850613987478547.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P720160358708172531

`A007814(n+1)*A252372(n+1)`
-/

namespace A065334.P720160358708172531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A252372 (n + 1)

end

end A065334.P720160358708172531

namespace A065334

/-- `A007814(n+1)*A252372(n+1)` -/
def P720160358708172531.Spec : Prop :=
  ∀ n, P720160358708172531.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P565460010799384604

`A007814(n+1)*A252374(n+1)`
-/

namespace A065334.P565460010799384604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A252374 (n + 1)

end

end A065334.P565460010799384604

namespace A065334

/-- `A007814(n+1)*A252374(n+1)` -/
def P565460010799384604.Spec : Prop :=
  ∀ n, P565460010799384604.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P7414242617598685980

`A065333(n+1)*A246270(n+1)`
-/

namespace A065334.P7414242617598685980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A246270 (n + 1)

end

end A065334.P7414242617598685980

namespace A065334

/-- `A065333(n+1)*A246270(n+1)` -/
def P7414242617598685980.Spec : Prop :=
  ∀ n, P7414242617598685980.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P11022856738458516767

`A065333(n+1)*A257991(n+1)`
-/

namespace A065334.P11022856738458516767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A257991 (n + 1)

end

end A065334.P11022856738458516767

namespace A065334

/-- `A065333(n+1)*A257991(n+1)` -/
def P11022856738458516767.Spec : Prop :=
  ∀ n, P11022856738458516767.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P6943623937021672440

`A065333(n+1)*A343938(n+1)`
-/

namespace A065334.P6943623937021672440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A343938 (n + 1)

end

end A065334.P6943623937021672440

namespace A065334

/-- `A065333(n+1)*A343938(n+1)` -/
def P6943623937021672440.Spec : Prop :=
  ∀ n, P6943623937021672440.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P14870395135422144665

`A065333(n+1)*A373592(n+1)`
-/

namespace A065334.P14870395135422144665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A373592 (n + 1)

end

end A065334.P14870395135422144665

namespace A065334

/-- `A065333(n+1)*A373592(n+1)` -/
def P14870395135422144665.Spec : Prop :=
  ∀ n, P14870395135422144665.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P1792314843916573594

`and(A007814(n+1), A378641(n+1))`
-/

namespace A065334.P1792314843916573594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007814 (n + 1)) (A378641 (n + 1))

end

end A065334.P1792314843916573594

namespace A065334

/-- `and(A007814(n+1), A378641(n+1))` -/
def P1792314843916573594.Spec : Prop :=
  ∀ n, P1792314843916573594.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P8804547420319068838

`∑{d}[A065332(n+1), A232991(#+2)]`
-/

namespace A065334.P8804547420319068838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A232991 (d + 2)

end

end A065334.P8804547420319068838

namespace A065334

/-- `∑{d}[A065332(n+1), A232991(#+2)]` -/
def P8804547420319068838.Spec : Prop :=
  ∀ n, P8804547420319068838.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P17886496649175414885

`(A035191(n+1)-1)*A065333(n+1)`
-/

namespace A065334.P17886496649175414885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035191 (n + 1) - 1) * A065333 (n + 1)

end

end A065334.P17886496649175414885

namespace A065334

/-- `(A035191(n+1)-1)*A065333(n+1)` -/
def P17886496649175414885.Spec : Prop :=
  ∀ n, P17886496649175414885.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P2718649454286384223

`C(2, A336155(n+1))*A007814(n+1)`
-/

namespace A065334.P2718649454286384223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A336155 (n + 1)).toNat : ℤ) * A007814 (n + 1)

end

end A065334.P2718649454286384223

namespace A065334

/-- `C(2, A336155(n+1))*A007814(n+1)` -/
def P2718649454286384223.Spec : Prop :=
  ∀ n, P2718649454286384223.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P15730204645372816202

`∑{d}[n+1, A007814(#)*A355688((n+1)/#)]`
-/

namespace A065334.P15730204645372816202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007814 d * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065334.P15730204645372816202

namespace A065334

/-- `∑{d}[n+1, A007814(#)*A355688((n+1)/#)]` -/
def P15730204645372816202.Spec : Prop :=
  ∀ n, P15730204645372816202.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P14577986523360170470

`∑{d}[n+1, A072078(#)*A292273((n+1)/#)]`
-/

namespace A065334.P14577986523360170470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A292273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065334.P14577986523360170470

namespace A065334

/-- `∑{d}[n+1, A072078(#)*A292273((n+1)/#)]` -/
def P14577986523360170470.Spec : Prop :=
  ∀ n, P14577986523360170470.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P16287822457203884973

`∑{d}[n+1, A168570(#)*A209635((n+1)/#)]`
-/

namespace A065334.P16287822457203884973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168570 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065334.P16287822457203884973

namespace A065334

/-- `∑{d}[n+1, A168570(#)*A209635((n+1)/#)]` -/
def P16287822457203884973.Spec : Prop :=
  ∀ n, P16287822457203884973.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P2807384231190626459

`A001222(A006519(n+1))*A065333(n+1)`
-/

namespace A065334.P2807384231190626459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006519 (n + 1)).toNat * A065333 (n + 1)

end

end A065334.P2807384231190626459

namespace A065334

/-- `A001222(A006519(n+1))*A065333(n+1)` -/
def P2807384231190626459.Spec : Prop :=
  ∀ n, P2807384231190626459.a n = A065334 (n + 1)

end A065334

/-! ## A065334.P8312392855221418388

`A007814(n+1)*A057427(A065332(n+1))`
-/

namespace A065334.P8312392855221418388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A057427 (A065332 (n + 1)).toNat

end

end A065334.P8312392855221418388

namespace A065334

/-- `A007814(n+1)*A057427(A065332(n+1))` -/
def P8312392855221418388.Spec : Prop :=
  ∀ n, P8312392855221418388.a n = A065334 (n + 1)

end A065334

/-!
# A065335: 3-exponents to represent 3-smooth numbers (A065332).

The programs for A065335, the canonical program `A065335.P13783723182241918212` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065335 has offset 1).

The definition of A065335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, A065333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065335.P13783723182241918212

`A007949(n+1)*A065333(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065335

/-- `A007949(n+1)*A065333(n+1)` -/
def P13783723182241918212.Spec : Prop :=
  ∀ n, P13783723182241918212.a n = A065335 (n + 1)

theorem P13783723182241918212.correct : P13783723182241918212.Spec := by
  intro n
  simp only [A065335, Nat.add_sub_cancel]

end A065335

/-! ## A065335.P5402879045876186577

`val(A053585(n+1), 3)`
-/

namespace A065335.P5402879045876186577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053585 (n + 1)).toNat 3

end

end A065335.P5402879045876186577

namespace A065335

/-- `val(A053585(n+1), 3)` -/
def P5402879045876186577.Spec : Prop :=
  ∀ n, (P5402879045876186577.a n : ℤ) = A065335 (n + 1)

end A065335

/-! ## A065335.P8716365206834994784

`val(n+1, 3)*val(A006530(n+1), 3)`
-/

namespace A065335.P8716365206834994784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 * SequenceMachineLib.valuation (A006530 (n + 1)).toNat 3

end

end A065335.P8716365206834994784

namespace A065335

/-- `val(n+1, 3)*val(A006530(n+1), 3)` -/
def P8716365206834994784.Spec : Prop :=
  ∀ n, (P8716365206834994784.a n : ℤ) = A065335 (n + 1)

end A065335

/-! ## A065335.P3626626774446762173

`val((n+1)/and(n+1, -(n+1)), A000040(∏{p}[n+1, #-1]))`
-/

namespace A065335.P3626626774446762173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat (A000040 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat).toNat

end

end A065335.P3626626774446762173

namespace A065335

/-- `val((n+1)/and(n+1, -(n+1)), A000040(∏{p}[n+1, #-1]))` -/
def P3626626774446762173.Spec : Prop :=
  ∀ n, (P3626626774446762173.a n : ℤ) = A065335 (n + 1)

end A065335

/-! ## A065335.P11679864472727088989

`A007949(A053585(n+1))`
-/

namespace A065335.P11679864472727088989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A053585 (n + 1)).toNat

end

end A065335.P11679864472727088989

namespace A065335

/-- `A007949(A053585(n+1))` -/
def P11679864472727088989.Spec : Prop :=
  ∀ n, P11679864472727088989.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P11451161184972015780

`A069283(A065332(n+1))`
-/

namespace A065335.P11451161184972015780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A065332 (n + 1)).toNat

end

end A065335.P11451161184972015780

namespace A065335

/-- `A069283(A065332(n+1))` -/
def P11451161184972015780.Spec : Prop :=
  ∀ n, P11451161184972015780.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P14347641301550185108

`A091009(2*A053585(n+1))`
-/

namespace A065335.P14347641301550185108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (2 * A053585 (n + 1)).toNat

end

end A065335.P14347641301550185108

namespace A065335

/-- `A091009(2*A053585(n+1))` -/
def P14347641301550185108.Spec : Prop :=
  ∀ n, P14347641301550185108.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P16352682958790228670

`A049115(n+1)*A065333(n+1)`
-/

namespace A065335.P16352682958790228670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) * A065333 (n + 1)

end

end A065335.P16352682958790228670

namespace A065335

/-- `A049115(n+1)*A065333(n+1)` -/
def P16352682958790228670.Spec : Prop :=
  ∀ n, P16352682958790228670.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P2369273496404947329

`A065333(n+1)*A065339(n+1)`
-/

namespace A065335.P2369273496404947329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A065339 (n + 1)

end

end A065335.P2369273496404947329

namespace A065335

/-- `A065333(n+1)*A065339(n+1)` -/
def P2369273496404947329.Spec : Prop :=
  ∀ n, P2369273496404947329.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P15386406249600875885

`A065333(n+1)*A087436(n+1)`
-/

namespace A065335.P15386406249600875885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A087436 (n + 1)

end

end A065335.P15386406249600875885

namespace A065335

/-- `A065333(n+1)*A087436(n+1)` -/
def P15386406249600875885.Spec : Prop :=
  ∀ n, P15386406249600875885.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P575332951759635923

`A065333(n+1)*A257992(n+1)`
-/

namespace A065335.P575332951759635923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A257992 (n + 1)

end

end A065335.P575332951759635923

namespace A065335

/-- `A065333(n+1)*A257992(n+1)` -/
def P575332951759635923.Spec : Prop :=
  ∀ n, P575332951759635923.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P16549980811036543039

`A065333(n+1)*A257994(n+1)`
-/

namespace A065335.P16549980811036543039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A257994 (n + 1)

end

end A065335.P16549980811036543039

namespace A065335

/-- `A065333(n+1)*A257994(n+1)` -/
def P16549980811036543039.Spec : Prop :=
  ∀ n, P16549980811036543039.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P13434898037789772929

`A007949(n+1)*A340363(n+1)`
-/

namespace A065335.P13434898037789772929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A340363 (n + 1)

end

end A065335.P13434898037789772929

namespace A065335

/-- `A007949(n+1)*A340363(n+1)` -/
def P13434898037789772929.Spec : Prop :=
  ∀ n, P13434898037789772929.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P499422451131088665

`A007949(n+1)*A340373(n+1)`
-/

namespace A065335.P499422451131088665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A340373 (n + 1)

end

end A065335.P499422451131088665

namespace A065335

/-- `A007949(n+1)*A340373(n+1)` -/
def P499422451131088665.Spec : Prop :=
  ∀ n, P499422451131088665.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P11192237752904276093

`A065333(n+1)*A302242(n+1)`
-/

namespace A065335.P11192237752904276093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A302242 (n + 1)

end

end A065335.P11192237752904276093

namespace A065335

/-- `A065333(n+1)*A302242(n+1)` -/
def P11192237752904276093.Spec : Prop :=
  ∀ n, P11192237752904276093.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P504047530037785103

`A065333(n+1)*A318995(n+1)`
-/

namespace A065335.P504047530037785103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A318995 (n + 1)

end

end A065335.P504047530037785103

namespace A065335

/-- `A065333(n+1)*A318995(n+1)` -/
def P504047530037785103.Spec : Prop :=
  ∀ n, P504047530037785103.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P11296861212303014379

`A065333(n+1)*A325033(n+1)`
-/

namespace A065335.P11296861212303014379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A325033 (n + 1)

end

end A065335.P11296861212303014379

namespace A065335

/-- `A065333(n+1)*A325033(n+1)` -/
def P11296861212303014379.Spec : Prop :=
  ∀ n, P11296861212303014379.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P1507011645463167855

`A065333(n+1)*A329697(n+1)`
-/

namespace A065335.P1507011645463167855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A329697 (n + 1)

end

end A065335.P1507011645463167855

namespace A065335

/-- `A065333(n+1)*A329697(n+1)` -/
def P1507011645463167855.Spec : Prop :=
  ∀ n, P1507011645463167855.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P13145338860633844885

`A065333(n+1)*A331410(n+1)`
-/

namespace A065335.P13145338860633844885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A331410 (n + 1)

end

end A065335.P13145338860633844885

namespace A065335

/-- `A065333(n+1)*A331410(n+1)` -/
def P13145338860633844885.Spec : Prop :=
  ∀ n, P13145338860633844885.a n = A065335 (n + 1)

end A065335

/-! ## A065335.P12200593449997563834

`A065333(n+1)*A334862(n+1)`
-/

namespace A065335.P12200593449997563834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * A334862 (n + 1)

end

end A065335.P12200593449997563834

namespace A065335

/-- `A065333(n+1)*A334862(n+1)` -/
def P12200593449997563834.Spec : Prop :=
  ∀ n, P12200593449997563834.a n = A065335 (n + 1)

end A065335

/-!
# A065336: a(0) = 1; thereafter, a(n) is the smallest number such that Sum_{m = 0 .. n-1} a(m)*a(m+1) is a square.

The programs for A065336, there is no canonical definition to state claims against.
-/

/-! ## A065336.P4300577571357470929

`(gcd(1-n, floor(n/2))²+n)%A270211(∏{p}[n+1, #])`
-/

namespace A065336.P4300577571357470929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 2 + n : ℤ) (A270211 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A065336.P4300577571357470929

/-! ## A065336.P11384359278816514388

`A079097(n)%p?[A228218(n+1)]`
-/

namespace A065336.P11384359278816514388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079097 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A065336.P11384359278816514388

/-! ## A065336.P11098625488326676839

`((2-A133622(n+1))²+n)%A034690(A326258(3*n+5))`
-/

namespace A065336.P11098625488326676839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 - A133622 (n + 1)) ^ 2 + (n : ℤ)) (A034690 (A326258 (3 * n + 5)).toNat)

end

end A065336.P11098625488326676839

/-! ## A065336.P6662033400435240070

`A000005((5-(-1)^n)^floor(n/2))`
-/

namespace A065336.P6662033400435240070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 - (-1) ^ n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A065336.P6662033400435240070

/-! ## A065336.P11657827659364174156

`(gcd(C(n, 2), xor(1, n))²+n)%A093793(n+1)`
-/

namespace A065336.P11657827659364174156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) ^ 2 + n : ℤ) (A093793 (n + 1))

end

end A065336.P11657827659364174156

/-!
# A065338: a(1) = 1, a(p) = p mod 4 for p prime and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A065338, the canonical program `A065338.P7781026467081312542` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065338 has offset 1).

The definition of A065338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065338.P7827542733654779257

`2^A007814(n+1)*3^A065339(n+1)`
-/

namespace A065338.P7827542733654779257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A065339 (n + 1) : ℤ)

end

end A065338.P7827542733654779257

namespace A065338

/-- `2^A007814(n+1)*3^A065339(n+1)` -/
def P7827542733654779257.Spec : Prop :=
  ∀ n, P7827542733654779257.a n = (A065338 (n + 1) : ℚ)

end A065338

/-! ## A065338.P7781026467081312542

`∏{d}[n+1, A014963(#)%4]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065338

/-- `∏{d}[n+1, A014963(#)%4]` -/
def P7781026467081312542.Spec : Prop :=
  ∀ n, P7781026467081312542.a n = A065338 (n + 1)

theorem P7781026467081312542.correct : P7781026467081312542.Spec := by
  intro n
  simp only [A065338, Nat.add_sub_cancel]

end A065338

/-! ## A065338.P7480970983318722373

`∏{d}[n+1, and(3, A014963((n+1)/#))]`
-/

namespace A065338.P7480970983318722373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.land 3 (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A065338.P7480970983318722373

namespace A065338

/-- `∏{d}[n+1, and(3, A014963((n+1)/#))]` -/
def P7480970983318722373.Spec : Prop :=
  ∀ n, P7480970983318722373.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P4920593044012591602

`A079065(A072438(n+1))`
-/

namespace A065338.P4920593044012591602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A072438 (n + 1)).toNat

end

end A065338.P4920593044012591602

namespace A065338

/-- `A079065(A072438(n+1))` -/
def P4920593044012591602.Spec : Prop :=
  ∀ n, P4920593044012591602.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P7070016443136336222

`A006519(n+1)*A278509(n+1)`
-/

namespace A065338.P7070016443136336222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A278509 (n + 1)

end

end A065338.P7070016443136336222

namespace A065338

/-- `A006519(n+1)*A278509(n+1)` -/
def P7070016443136336222.Spec : Prop :=
  ∀ n, P7070016443136336222.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P11688936225523048686

`lcm(A065331(n+1), A278509(n+1))`
-/

namespace A065338.P11688936225523048686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065331 (n + 1)) (A278509 (n + 1))

end

end A065338.P11688936225523048686

namespace A065338

/-- `lcm(A065331(n+1), A278509(n+1))` -/
def P11688936225523048686.Spec : Prop :=
  ∀ n, (P11688936225523048686.a n : ℤ) = A065338 (n + 1)

end A065338

/-! ## A065338.P3453055306612112873

`A065331((n+1)/3^val(n+1, 3))*A278509(n+1)`
-/

namespace A065338.P3453055306612112873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat * A278509 (n + 1)

end

end A065338.P3453055306612112873

namespace A065338

/-- `A065331((n+1)/3^val(n+1, 3))*A278509(n+1)` -/
def P3453055306612112873.Spec : Prop :=
  ∀ n, P3453055306612112873.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P5118149569818000983

`A065331(A038502(n+1))*A278509(n+1)`
-/

namespace A065338.P5118149569818000983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A038502 (n + 1)).toNat * A278509 (n + 1)

end

end A065338.P5118149569818000983

namespace A065338

/-- `A065331(A038502(n+1))*A278509(n+1)` -/
def P5118149569818000983.Spec : Prop :=
  ∀ n, P5118149569818000983.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P783808169252184667

`A065331((n+1)/A038500(n+1))*A278509(n+1)`
-/

namespace A065338.P783808169252184667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat * A278509 (n + 1)

end

end A065338.P783808169252184667

namespace A065338

/-- `A065331((n+1)/A038500(n+1))*A278509(n+1)` -/
def P783808169252184667.Spec : Prop :=
  ∀ n, P783808169252184667.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P5599507327363113167

`A003960(A319984(n+1))`
-/

namespace A065338.P5599507327363113167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A319984 (n + 1)).toNat

end

end A065338.P5599507327363113167

namespace A065338

/-- `A003960(A319984(n+1))` -/
def P5599507327363113167.Spec : Prop :=
  ∀ n, P5599507327363113167.a n = A065338 (n + 1)

end A065338

/-! ## A065338.P4118771521235324654

`A003963(2*A319984(n+1))`
-/

namespace A065338.P4118771521235324654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A319984 (n + 1)).toNat

end

end A065338.P4118771521235324654

namespace A065338

/-- `A003963(2*A319984(n+1))` -/
def P4118771521235324654.Spec : Prop :=
  ∀ n, P4118771521235324654.a n = A065338 (n + 1)

end A065338

/-!
# A065339: Number of primes congruent to 3 modulo 4 dividing n (with multiplicity).

The programs for A065339, the canonical program `A065339.P16341535631047481743` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065339 has offset 1).

The definition of A065339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065339.P15348662472497074081

`A001222(n+1)-A007814(n+1)-A083025(n+1)`
-/

namespace A065339.P15348662472497074081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (n + 1) - A083025 (n + 1)

end

end A065339.P15348662472497074081

namespace A065339

/-- `A001222(n+1)-A007814(n+1)-A083025(n+1)` -/
def P15348662472497074081.Spec : Prop :=
  ∀ n, P15348662472497074081.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P16341535631047481743

`val(A065338(n+1), 3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065339

/-- `val(A065338(n+1), 3)` -/
def P16341535631047481743.Spec : Prop :=
  ∀ n, (P16341535631047481743.a n : ℤ) = A065339 (n + 1)

theorem P16341535631047481743.correct : P16341535631047481743.Spec := by
  intro n
  simp only [A065339, Nat.add_sub_cancel]

end A065339

/-! ## A065339.P419345868324629198

`val(A278509(n+1), 3)`
-/

namespace A065339.P419345868324629198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278509 (n + 1)).toNat 3

end

end A065339.P419345868324629198

namespace A065339

/-- `val(A278509(n+1), 3)` -/
def P419345868324629198.Spec : Prop :=
  ∀ n, (P419345868324629198.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P13471134397563466478

`val(A319984(n+1), 5)`
-/

namespace A065339.P13471134397563466478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319984 (n + 1)).toNat 5

end

end A065339.P13471134397563466478

namespace A065339

/-- `val(A319984(n+1), 5)` -/
def P13471134397563466478.Spec : Prop :=
  ∀ n, (P13471134397563466478.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P6696435588822519249

`∑{d}[n+1, A354033(#)]`
-/

namespace A065339.P6696435588822519249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354033 d

end

end A065339.P6696435588822519249

namespace A065339

/-- `∑{d}[n+1, A354033(#)]` -/
def P6696435588822519249.Spec : Prop :=
  ∀ n, P6696435588822519249.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P6906987446765034809

`∑{e}[A097706(n+1), #]`
-/

namespace A065339.P6906987446765034809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A065339.P6906987446765034809

namespace A065339

/-- `∑{e}[A097706(n+1), #]` -/
def P6906987446765034809.Spec : Prop :=
  ∀ n, (P6906987446765034809.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P17352661918817413452

`∑{e}[A286363(n+1), #]`
-/

namespace A065339.P17352661918817413452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A065339.P17352661918817413452

namespace A065339

/-- `∑{e}[A286363(n+1), #]` -/
def P17352661918817413452.Spec : Prop :=
  ∀ n, (P17352661918817413452.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P7757910175083665219

`val(∏{d}[n+1, A014963(#)%4], 3)`
-/

namespace A065339.P7757910175083665219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 d) 4).toNat 3

end

end A065339.P7757910175083665219

namespace A065339

/-- `val(∏{d}[n+1, A014963(#)%4], 3)` -/
def P7757910175083665219.Spec : Prop :=
  ∀ n, (P7757910175083665219.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P14901186691565368436

`val(∏{d}[n+1, and(3, A014963((n+1)/#))], 3)`
-/

namespace A065339.P14901186691565368436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f1 n), Int.land 3 (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)).toNat 3

end

end A065339.P14901186691565368436

namespace A065339

/-- `val(∏{d}[n+1, and(3, A014963((n+1)/#))], 3)` -/
def P14901186691565368436.Spec : Prop :=
  ∀ n, (P14901186691565368436.a n : ℤ) = A065339 (n + 1)

end A065339

/-! ## A065339.P16653557659873811507

`A007949(A065338(n+1))`
-/

namespace A065339.P16653557659873811507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A065338 (n + 1)).toNat

end

end A065339.P16653557659873811507

namespace A065339

/-- `A007949(A065338(n+1))` -/
def P16653557659873811507.Spec : Prop :=
  ∀ n, P16653557659873811507.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P2810771096728781745

`A001222(A097706(n+1))`
-/

namespace A065339.P2810771096728781745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097706 (n + 1)).toNat

end

end A065339.P2810771096728781745

namespace A065339

/-- `A001222(A097706(n+1))` -/
def P2810771096728781745.Spec : Prop :=
  ∀ n, P2810771096728781745.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P7636657538877979484

`A087436(A072438(n+1))`
-/

namespace A065339.P7636657538877979484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A072438 (n + 1)).toNat

end

end A065339.P7636657538877979484

namespace A065339

/-- `A087436(A072438(n+1))` -/
def P7636657538877979484.Spec : Prop :=
  ∀ n, P7636657538877979484.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P17967267423926632000

`A001222(A278509(n+1))`
-/

namespace A065339.P17967267423926632000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278509 (n + 1)).toNat

end

end A065339.P17967267423926632000

namespace A065339

/-- `A001222(A278509(n+1))` -/
def P17967267423926632000.Spec : Prop :=
  ∀ n, P17967267423926632000.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P12999804183343207909

`A001222(A286363(n+1))`
-/

namespace A065339.P12999804183343207909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286363 (n + 1)).toNat

end

end A065339.P12999804183343207909

namespace A065339

/-- `A001222(A286363(n+1))` -/
def P12999804183343207909.Spec : Prop :=
  ∀ n, P12999804183343207909.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P13195011793068303327

`A246270(A064989(n+1))`
-/

namespace A065339.P13195011793068303327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (A064989 (n + 1)).toNat

end

end A065339.P13195011793068303327

namespace A065339

/-- `A246270(A064989(n+1))` -/
def P13195011793068303327.Spec : Prop :=
  ∀ n, P13195011793068303327.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P9145056978218222682

`A378879(A000265(n+1))`
-/

namespace A065339.P9145056978218222682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (A000265 (n + 1)).toNat

end

end A065339.P9145056978218222682

namespace A065339

/-- `A378879(A000265(n+1))` -/
def P9145056978218222682.Spec : Prop :=
  ∀ n, P9145056978218222682.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P3389702015513898586

`A378879(A132740(n+1))`
-/

namespace A065339.P3389702015513898586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (A132740 (n + 1)).toNat

end

end A065339.P3389702015513898586

namespace A065339

/-- `A378879(A132740(n+1))` -/
def P3389702015513898586.Spec : Prop :=
  ∀ n, P3389702015513898586.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P7991176641491473425

`A257992(A332808(n+1))`
-/

namespace A065339.P7991176641491473425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A332808 (n + 1)).toNat

end

end A065339.P7991176641491473425

namespace A065339

/-- `A257992(A332808(n+1))` -/
def P7991176641491473425.Spec : Prop :=
  ∀ n, P7991176641491473425.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P10586816199947475224

`∑{d}[A278509(n+1), A001221(#)]`
-/

namespace A065339.P10586816199947475224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A065339.P10586816199947475224

namespace A065339

/-- `∑{d}[A278509(n+1), A001221(#)]` -/
def P10586816199947475224.Spec : Prop :=
  ∀ n, P10586816199947475224.a n = A065339 (n + 1)

end A065339

/-! ## A065339.P12793719556673394524

`A083025(n+1)-A079635(n+1)`
-/

namespace A065339.P12793719556673394524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A079635 (n + 1)

end

end A065339.P12793719556673394524

namespace A065339

/-- `A083025(n+1)-A079635(n+1)` -/
def P12793719556673394524.Spec : Prop :=
  ∀ n, P12793719556673394524.a n = A065339 (n + 1)

end A065339

/-!
# A065340: Third diagonal of triangle in A046740.

The programs for A065340, there is no canonical definition to state claims against.
-/

/-! ## A065340.P1672296403700281932

`A070315(n+4)+A070313(n+3)`
-/

namespace A065340.P1672296403700281932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070315 (n + 4) + A070313 (n + 3)

end

end A065340.P1672296403700281932

/-! ## A065340.P16802409540881763354

`A176200(A034856(n+1))+A070315(n+4)`
-/

namespace A065340.P16802409540881763354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 (A034856 (n + 1)).toNat + A070315 (n + 4)

end

end A065340.P16802409540881763354

/-! ## A065340.P9137130881996753527

`A046740(∑[n+2]+5)`
-/

namespace A065340.P9137130881996753527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046740 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A065340.P9137130881996753527

/-! ## A065340.P16195027488352632203

`record[A046740(A000124(n)+3)]`
-/

namespace A065340.P16195027488352632203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046740 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065340.P16195027488352632203

/-! ## A065340.P1285748613930311343

`A065826(A167614(n+1))-∑[A125128(n+1)]`
-/

namespace A065340.P1285748613930311343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065826 (A167614 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065340.P1285748613930311343

/-!
# A065341: Mersenne composites: 2^prime(m) - 1 is not a prime.

The programs for A065341, there is no canonical definition to state claims against.
-/

/-! ## A065341.P15603421437455654588

`2^A054723(n+1)-1`
-/

namespace A065341.P15603421437455654588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054723 (n + 1) : ℤ) - 1

end

end A065341.P15603421437455654588

/-! ## A065341.P9956579204546403025

`record[A131952(n+1)]`
-/

namespace A065341.P9956579204546403025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065341.P9956579204546403025

/-! ## A065341.P9994968062171387924

`2^p?[A143584(n+1)]-1`
-/

namespace A065341.P9994968062171387924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ) - 1

end

end A065341.P9994968062171387924

/-! ## A065341.P10668090119574150710

`A000225(A054723(n+1))`
-/

namespace A065341.P10668090119574150710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A054723 (n + 1)).toNat

end

end A065341.P10668090119574150710

/-! ## A065341.P10917850571737861038

`A001348(A135980(n+1))`
-/

namespace A065341.P10917850571737861038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (A135980 (n + 1)).toNat

end

end A065341.P10917850571737861038

/-! ## A065341.P18039812717586170137

`record[A064078(A143584(n+1))]`
-/

namespace A065341.P18039812717586170137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (A143584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065341.P18039812717586170137

/-! ## A065341.P3949028420748597006

`A019320(p?[comp[A000043(n+1)]])`
-/

namespace A065341.P3949028420748597006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065341.P3949028420748597006

/-! ## A065341.P13751200578141508605

`A000225(p?[comp[A072226(n+1)]])`
-/

namespace A065341.P13751200578141508605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065341.P13751200578141508605

/-! ## A065341.P6285519752311440655

`A019320(p?[comp[A072226(n+1)]])`
-/

namespace A065341.P6285519752311440655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065341.P6285519752311440655

/-! ## A065341.P13465094419970261808

`A019320(p?[comp[A161508(n+1)]])`
-/

namespace A065341.P13465094419970261808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A065341.P13465094419970261808

/-!
# A065342: Triangle of sum of two primes: prime(n)+prime(k) with n >= k >= 1.

The programs for A065342, the canonical program `A065342.P17350315595011203306` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065342 has offset 1).

The definition of A065342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065342.P17350315595011203306

`A037126(n+1)+A005145(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065342

/-- `A037126(n+1)+A005145(n+1)` -/
def P17350315595011203306.Spec : Prop :=
  ∀ n, P17350315595011203306.a n = A065342 (n + 1)

theorem P17350315595011203306.correct : P17350315595011203306.Spec := by
  intro n
  simp only [A065342, Nat.add_sub_cancel]

end A065342

/-! ## A065342.P5379093229943979318

`A086800(n+1)+2*A037126(n+1)`
-/

namespace A065342.P5379093229943979318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (n + 1) + 2 * A037126 (n + 1)

end

end A065342.P5379093229943979318

namespace A065342

/-- `A086800(n+1)+2*A037126(n+1)` -/
def P5379093229943979318.Spec : Prop :=
  ∀ n, P5379093229943979318.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P2613861207459494140

`2*A005145(n+1)-A086800(n+1)`
-/

namespace A065342.P2613861207459494140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005145 (n + 1) - A086800 (n + 1)

end

end A065342.P2613861207459494140

namespace A065342

/-- `2*A005145(n+1)-A086800(n+1)` -/
def P2613861207459494140.Spec : Prop :=
  ∀ n, P2613861207459494140.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P13927035792620559887

`A051599(A057944(n))+A037126(n+1)`
-/

namespace A065342.P13927035792620559887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A057944 n).toNat + A037126 (n + 1)

end

end A065342.P13927035792620559887

namespace A065342

/-- `A051599(A057944(n))+A037126(n+1)` -/
def P13927035792620559887.Spec : Prop :=
  ∀ n, P13927035792620559887.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P9996188556984771376

`A005145(n+1)+A000040(A002260(n+1))`
-/

namespace A065342.P9996188556984771376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + A000040 (A002260 (n + 1)).toNat

end

end A065342.P9996188556984771376

namespace A065342

/-- `A005145(n+1)+A000040(A002260(n+1))` -/
def P9996188556984771376.Spec : Prop :=
  ∀ n, P9996188556984771376.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P4627655653569408256

`A005145(n+1)+A000040(A002262(n)+1)`
-/

namespace A065342.P4627655653569408256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + A000040 (A002262 n + 1).toNat

end

end A065342.P4627655653569408256

namespace A065342

/-- `A005145(n+1)+A000040(A002262(n)+1)` -/
def P4627655653569408256.Spec : Prop :=
  ∀ n, P4627655653569408256.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P1627148390430106562

`A037126(n+1)+A000040(A002024(n+1))`
-/

namespace A065342.P1627148390430106562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A000040 (A002024 (n + 1)).toNat

end

end A065342.P1627148390430106562

namespace A065342

/-- `A037126(n+1)+A000040(A002024(n+1))` -/
def P1627148390430106562.Spec : Prop :=
  ∀ n, P1627148390430106562.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P3816799476375719021

`A037126(n+1)+A026239(A111653(n+1))`
-/

namespace A065342.P3816799476375719021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A026239 (A111653 (n + 1)).toNat

end

end A065342.P3816799476375719021

namespace A065342

/-- `A037126(n+1)+A026239(A111653(n+1))` -/
def P3816799476375719021.Spec : Prop :=
  ∀ n, P3816799476375719021.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P9939003237161287501

`A037126(n+1)+A008578(A003057(n+2))`
-/

namespace A065342.P9939003237161287501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A008578 (A003057 (n + 2)).toNat

end

end A065342.P9939003237161287501

namespace A065342

/-- `A037126(n+1)+A008578(A003057(n+2))` -/
def P9939003237161287501.Spec : Prop :=
  ∀ n, P9939003237161287501.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P12794810903985724030

`A037126(n+1)+A000040(A003057(n+2)-1)`
-/

namespace A065342.P12794810903985724030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A000040 (A003057 (n + 2) - 1).toNat

end

end A065342.P12794810903985724030

namespace A065342

/-- `A037126(n+1)+A000040(A003057(n+2)-1)` -/
def P12794810903985724030.Spec : Prop :=
  ∀ n, P12794810903985724030.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P17634429857835147513

`A005145(n+1)+A087112(n+1)/A005145(n+1)`
-/

namespace A065342.P17634429857835147513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005145 (n + 1) : ℚ) + (A087112 (n + 1) : ℚ) / (A005145 (n + 1) : ℚ)

end

end A065342.P17634429857835147513

namespace A065342

/-- `A005145(n+1)+A087112(n+1)/A005145(n+1)` -/
def P17634429857835147513.Spec : Prop :=
  ∀ n, P17634429857835147513.a n = (A065342 (n + 1) : ℚ)

end A065342

/-! ## A065342.P5304408239220978029

`A000040(A002024(n+1))+A000040(A002260(n+1))`
-/

namespace A065342.P5304408239220978029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1)).toNat + A000040 (A002260 (n + 1)).toNat

end

end A065342.P5304408239220978029

namespace A065342

/-- `A000040(A002024(n+1))+A000040(A002260(n+1))` -/
def P5304408239220978029.Spec : Prop :=
  ∀ n, P5304408239220978029.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P14920831806795985963

`A000040(A002262(n)+1)+A000040(A003056(n)+1)`
-/

namespace A065342.P14920831806795985963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat + A000040 (A003056 n + 1).toNat

end

end A065342.P14920831806795985963

namespace A065342

/-- `A000040(A002262(n)+1)+A000040(A003056(n)+1)` -/
def P14920831806795985963.Spec : Prop :=
  ∀ n, P14920831806795985963.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P3688505144155919053

`A037126(n+1)+A037126(A127739(n+1))`
-/

namespace A065342.P3688505144155919053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A037126 (A127739 (n + 1)).toNat

end

end A065342.P3688505144155919053

namespace A065342

/-- `A037126(n+1)+A037126(A127739(n+1))` -/
def P3688505144155919053.Spec : Prop :=
  ∀ n, P3688505144155919053.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P12909023141643121991

`A037126(A004736(n+1)+n)+A037126(n+1)`
-/

namespace A065342.P12909023141643121991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A004736 (n + 1) + (n : ℤ)).toNat + A037126 (n + 1)

end

end A065342.P12909023141643121991

namespace A065342

/-- `A037126(A004736(n+1)+n)+A037126(n+1)` -/
def P12909023141643121991.Spec : Prop :=
  ∀ n, P12909023141643121991.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P3509846962398670809

`A037126(n+1)+A006530(A077320(n+1))`
-/

namespace A065342.P3509846962398670809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A006530 (A077320 (n + 1)).toNat

end

end A065342.P3509846962398670809

namespace A065342

/-- `A037126(n+1)+A006530(A077320(n+1))` -/
def P3509846962398670809.Spec : Prop :=
  ∀ n, P3509846962398670809.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P13504470442907999317

`2*A006530(A077320(n+1))-A086800(n+1)`
-/

namespace A065342.P13504470442907999317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A077320 (n + 1)).toNat - A086800 (n + 1)

end

end A065342.P13504470442907999317

namespace A065342

/-- `2*A006530(A077320(n+1))-A086800(n+1)` -/
def P13504470442907999317.Spec : Prop :=
  ∀ n, P13504470442907999317.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P2923836339057189484

`A006530(A077320(n+1))+A000040(A002260(n+1))`
-/

namespace A065342.P2923836339057189484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077320 (n + 1)).toNat + A000040 (A002260 (n + 1)).toNat

end

end A065342.P2923836339057189484

namespace A065342

/-- `A006530(A077320(n+1))+A000040(A002260(n+1))` -/
def P2923836339057189484.Spec : Prop :=
  ∀ n, P2923836339057189484.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P9183727645303857837

`A000040(A349520(2*n+1))+A000040(A349520(2*(n+1)))`
-/

namespace A065342.P9183727645303857837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A349520 (2 * n + 1)).toNat + A000040 (A349520 (2 * (n + 1))).toNat

end

end A065342.P9183727645303857837

namespace A065342

/-- `A000040(A349520(2*n+1))+A000040(A349520(2*(n+1)))` -/
def P9183727645303857837.Spec : Prop :=
  ∀ n, P9183727645303857837.a n = A065342 (n + 1)

end A065342

/-! ## A065342.P5174523562118219205

`A037126(2*A093995(n+1))+A037126(n+1)`
-/

namespace A065342.P5174523562118219205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (2 * A093995 (n + 1)).toNat + A037126 (n + 1)

end

end A065342.P5174523562118219205

namespace A065342

/-- `A037126(2*A093995(n+1))+A037126(n+1)` -/
def P5174523562118219205.Spec : Prop :=
  ∀ n, P5174523562118219205.a n = A065342 (n + 1)

end A065342

/-!
# A065344: a(n) = binomial(2*n,n) mod ((n+1)*(n+2)).

The programs for A065344, the canonical program `A065344.P697457149190660026` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065344 has offset 1).

The definition of A065344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065344.P9425654667255294415

`(n+2)*A067770(n+1)`
-/

namespace A065344.P9425654667255294415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A067770 (n + 1)

end

end A065344.P9425654667255294415

namespace A065344

/-- `(n+2)*A067770(n+1)` -/
def P9425654667255294415.Spec : Prop :=
  ∀ n, P9425654667255294415.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P697457149190660026

`A065345(n+1)%Δ[A180118(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065344

/-- `A065345(n+1)%Δ[A180118(n)]` -/
def P697457149190660026.Spec : Prop :=
  ∀ n, P697457149190660026.a n = A065344 (n + 1)

theorem P697457149190660026.correct : P697457149190660026.Spec := by
  intro n
  simp only [A065344, Nat.add_sub_cancel]

end A065344

/-! ## A065344.P8677660412684433870

`A065346(n+1)%Δ[A180118(n)]`
-/

namespace A065344.P8677660412684433870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065346 (n + 1)) (f1 (n + 1) - f1 n)

end

end A065344.P8677660412684433870

namespace A065344

/-- `A065346(n+1)%Δ[A180118(n)]` -/
def P8677660412684433870.Spec : Prop :=
  ∀ n, P8677660412684433870.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P3764250876527027526

`(A065346(n+1)+A002378(n+2))%A002378(n+2)`
-/

namespace A065344.P3764250876527027526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065346 (n + 1) + A002378 (n + 2)) (A002378 (n + 2))

end

end A065344.P3764250876527027526

namespace A065344

/-- `(A065346(n+1)+A002378(n+2))%A002378(n+2)` -/
def P3764250876527027526.Spec : Prop :=
  ∀ n, P3764250876527027526.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P7703653508825011431

`(n+2)*A000108(n+1)%(n+3)`
-/

namespace A065344.P7703653508825011431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A000108 (n + 1)) (n + 3 : ℤ)

end

end A065344.P7703653508825011431

namespace A065344

/-- `(n+2)*A000108(n+1)%(n+3)` -/
def P7703653508825011431.Spec : Prop :=
  ∀ n, P7703653508825011431.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P1247366279790541712

`Δ[A006134(n)]%A002378(n+2)`
-/

namespace A065344.P1247366279790541712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002378 (n + 2))

end

end A065344.P1247366279790541712

namespace A065344

/-- `Δ[A006134(n)]%A002378(n+2)` -/
def P1247366279790541712.Spec : Prop :=
  ∀ n, P1247366279790541712.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P18211992028723904224

`A000984(n+1)%A002378(n+2)`
-/

namespace A065344.P18211992028723904224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (A002378 (n + 2))

end

end A065344.P18211992028723904224

namespace A065344

/-- `A000984(n+1)%A002378(n+2)` -/
def P18211992028723904224.Spec : Prop :=
  ∀ n, P18211992028723904224.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P17260582583767540065

`record[A081668(n+1)]%A002378(n+2)`
-/

namespace A065344.P17260582583767540065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002378 (n + 2))

end

end A065344.P17260582583767540065

namespace A065344

/-- `record[A081668(n+1)]%A002378(n+2)` -/
def P17260582583767540065.Spec : Prop :=
  ∀ n, P17260582583767540065.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P7228035847971500408

`(2*A001700(n))%A110660(2*(n+2))`
-/

namespace A065344.P7228035847971500408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A001700 n) (A110660 (2 * (n + 2)))

end

end A065344.P7228035847971500408

namespace A065344

/-- `(2*A001700(n))%A110660(2*(n+2))` -/
def P7228035847971500408.Spec : Prop :=
  ∀ n, P7228035847971500408.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P17109146312834303183

`A001405(2*(n+1))%A035106(2*(n+2))`
-/

namespace A065344.P17109146312834303183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * (n + 1))) (A035106 (2 * (n + 2)))

end

end A065344.P17109146312834303183

namespace A065344

/-- `A001405(2*(n+1))%A035106(2*(n+2))` -/
def P17109146312834303183.Spec : Prop :=
  ∀ n, P17109146312834303183.a n = A065344 (n + 1)

end A065344

/-! ## A065344.P9872411407577980794

`A005843(A001700(n)%A000217(n+2))`
-/

namespace A065344.P9872411407577980794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A001700 n) (A000217 (n + 2))).toNat

end

end A065344.P9872411407577980794

namespace A065344

/-- `A005843(A001700(n)%A000217(n+2))` -/
def P9872411407577980794.Spec : Prop :=
  ∀ n, P9872411407577980794.a n = A065344 (n + 1)

end A065344

/-!
# A065345: a(n) = binomial(2*n,n) mod ((n+1)*(n+2)*(n+3)).

The programs for A065345, the canonical program `A065345.P8497618122950480372` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065345 has offset 1).

The definition of A065345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065345.P8497618122950480372

`A065346(n+1)%A007531(n+4)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065345

/-- `A065346(n+1)%A007531(n+4)` -/
def P8497618122950480372.Spec : Prop :=
  ∀ n, P8497618122950480372.a n = A065345 (n + 1)

theorem P8497618122950480372.correct : P8497618122950480372.Spec := by
  intro n
  simp only [A065345, Nat.add_sub_cancel]

end A065345

/-! ## A065345.P4404884182947532694

`A000984(n+1)%A007531(n+4)`
-/

namespace A065345.P4404884182947532694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) (A007531 (n + 4))

end

end A065345.P4404884182947532694

namespace A065345

/-- `A000984(n+1)%A007531(n+4)` -/
def P4404884182947532694.Spec : Prop :=
  ∀ n, P4404884182947532694.a n = A065345 (n + 1)

end A065345

/-! ## A065345.P8984901479998444364

`A126869(2*(n+1))%A331433(n+1)`
-/

namespace A065345.P8984901479998444364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126869 (2 * (n + 1))) (A331433 (n + 1))

end

end A065345.P8984901479998444364

namespace A065345

/-- `A126869(2*(n+1))%A331433(n+1)` -/
def P8984901479998444364.Spec : Prop :=
  ∀ n, P8984901479998444364.a n = A065345 (n + 1)

end A065345

/-! ## A065345.P1782672159142535075

`A063886(2*(n+1))%A007531(n+4)`
-/

namespace A065345.P1782672159142535075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063886 (2 * (n + 1))) (A007531 (n + 4))

end

end A065345.P1782672159142535075

namespace A065345

/-- `A063886(2*(n+1))%A007531(n+4)` -/
def P1782672159142535075.Spec : Prop :=
  ∀ n, P1782672159142535075.a n = A065345 (n + 1)

end A065345

/-!
# A065346: a(n) = binomial(2*n, n) mod ((n+1)*(n+2)*(n+3)*(n+4)).

The programs for A065346, the canonical program `A065346.P4756572142742502174` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065346 has offset 1).

The definition of A065346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065346.P4756572142742502174

`A001405(2*(n+1))%(A002378(n+2)*A002378(n+4))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065346

/-- `A001405(2*(n+1))%(A002378(n+2)*A002378(n+4))` -/
def P4756572142742502174.Spec : Prop :=
  ∀ n, P4756572142742502174.a n = A065346 (n + 1)

theorem P4756572142742502174.correct : P4756572142742502174.Spec := by
  intro n
  simp only [A065346, Nat.add_sub_cancel]

end A065346

/-! ## A065346.P18198993950440754184

`A005843(A001700(n))%A158536(n)`
-/

namespace A065346.P18198993950440754184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A001700 n).toNat) (A158536 n)

end

end A065346.P18198993950440754184

namespace A065346

/-- `A005843(A001700(n))%A158536(n)` -/
def P18198993950440754184.Spec : Prop :=
  ∀ n, P18198993950440754184.a n = A065346 (n + 1)

end A065346

/-! ## A065346.P12601693008342057084

`A000984(n+1)/A070939(A228910(n))`
-/

namespace A065346.P12601693008342057084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A070939 (A228910 n).toNat : ℚ)

end

end A065346.P12601693008342057084

namespace A065346

/-- `A000984(n+1)/A070939(A228910(n))` -/
def P12601693008342057084.Spec : Prop :=
  ∀ n, P12601693008342057084.a n = (A065346 (n + 1) : ℚ)

end A065346

/-!
# A065347: Positions of zeros in A065344, i.e., binomial(2n,n) mod ((n+1)*(n+2)) = 0.

The programs for A065347, the canonical program `A065347.P5764445465654465881` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065347 has offset 1).

The definition of A065347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065347.P15974080263472841466

`comp[A019469(n+1)-2]`
-/

namespace A065347.P15974080263472841466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019469 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065347.P15974080263472841466

namespace A065347

/-- `comp[A019469(n+1)-2]` -/
def P15974080263472841466.Spec : Prop :=
  ∀ n, (P15974080263472841466.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P11733807370611466615

`A019470(n+2)-2`
-/

namespace A065347.P11733807370611466615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 2) - 2

end

end A065347.P11733807370611466615

namespace A065347

/-- `A019470(n+2)-2` -/
def P11733807370611466615.Spec : Prop :=
  ∀ n, P11733807370611466615.a n = A065347 (n + 1)

end A065347

/-! ## A065347.P9593846168915738661

`∑[A036234(Δ[A019470(n+1)])]`
-/

namespace A065347.P9593846168915738661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065347.P9593846168915738661

namespace A065347

/-- `∑[A036234(Δ[A019470(n+1)])]` -/
def P9593846168915738661.Spec : Prop :=
  ∀ n, P9593846168915738661.a n = A065347 (n + 1)

end A065347

/-! ## A065347.P13175174297251890218

`eq[0, A067770(n)]`
-/

namespace A065347.P13175174297251890218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065347.P13175174297251890218

namespace A065347

/-- `eq[0, A067770(n)]` -/
def P13175174297251890218.Spec : Prop :=
  ∀ n, (P13175174297251890218.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P5764445465654465881

`eq[0, A065344(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065347

/-- `eq[0, A065344(n+1)]+1` -/
def P5764445465654465881.Spec : Prop :=
  ∀ n, (P5764445465654465881.a n : ℤ) = A065347 (n + 1)

theorem P5764445465654465881.correct : P5764445465654465881.Spec := by
  intro n
  simp only [A065347, Nat.add_sub_cancel]

end A065347

/-! ## A065347.P2310027688520008078

`A023444(A019470(n+2))`
-/

namespace A065347.P2310027688520008078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A019470 (n + 2)).toNat

end

end A065347.P2310027688520008078

namespace A065347

/-- `A023444(A019470(n+2))` -/
def P2310027688520008078.Spec : Prop :=
  ∀ n, P2310027688520008078.a n = A065347 (n + 1)

end A065347

/-! ## A065347.P16127563421934639028

`lt[A067770(n), A347697(n)]`
-/

namespace A065347.P16127563421934639028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065347.P16127563421934639028

namespace A065347

/-- `lt[A067770(n), A347697(n)]` -/
def P16127563421934639028.Spec : Prop :=
  ∀ n, (P16127563421934639028.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P17726345242954638629

`lt[(A000045(n)*A067770(n))², n]`
-/

namespace A065347.P17726345242954638629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n * A067770 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065347.P17726345242954638629

namespace A065347

/-- `lt[(A000045(n)*A067770(n))², n]` -/
def P17726345242954638629.Spec : Prop :=
  ∀ n, (P17726345242954638629.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P12322521903540082270

`eq[0, A000108(n)%(n+2)]`
-/

namespace A065347.P12322521903540082270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065347.P12322521903540082270

namespace A065347

/-- `eq[0, A000108(n)%(n+2)]` -/
def P12322521903540082270.Spec : Prop :=
  ∀ n, (P12322521903540082270.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P8869502230281098707

`lt[A097331(2*n+1)%(n+2), 1]`
-/

namespace A065347.P8869502230281098707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065347.P8869502230281098707

namespace A065347

/-- `lt[A097331(2*n+1)%(n+2), 1]` -/
def P8869502230281098707.Spec : Prop :=
  ∀ n, (P8869502230281098707.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P3516006855529544776

`eq[0, C(2*n, n)%(n+2)]`
-/

namespace A065347.P3516006855529544776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065347.P3516006855529544776

namespace A065347

/-- `eq[0, C(2*n, n)%(n+2)]` -/
def P3516006855529544776.Spec : Prop :=
  ∀ n, (P3516006855529544776.a n : ℤ) = A065347 (n + 1)

end A065347

/-! ## A065347.P586853210402775932

`eq[n+2, gcd(n+2, C(2*n, n))]`
-/

namespace A065347.P586853210402775932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (Nat.choose (2 * n) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065347.P586853210402775932

namespace A065347

/-- `eq[n+2, gcd(n+2, C(2*n, n))]` -/
def P586853210402775932.Spec : Prop :=
  ∀ n, (P586853210402775932.a n : ℤ) = A065347 (n + 1)

end A065347

/-!
# A065348: Positions of zeros in A065345.

The programs for A065348, the canonical program `A065348.P1935091354727821189` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065348 has offset 1).

The definition of A065348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065348.P1935091354727821189

`eq[0, A065345(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065348

/-- `eq[0, A065345(n+1)]+1` -/
def P1935091354727821189.Spec : Prop :=
  ∀ n, (P1935091354727821189.a n : ℤ) = A065348 (n + 1)

theorem P1935091354727821189.correct : P1935091354727821189.Spec := by
  intro n
  simp only [A065348, Nat.add_sub_cancel]

end A065348

/-! ## A065348.P3014198381747099154

`eq[0, A065345(A028310(n))]`
-/

namespace A065348.P3014198381747099154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065348.P3014198381747099154

namespace A065348

/-- `eq[0, A065345(A028310(n))]` -/
def P3014198381747099154.Spec : Prop :=
  ∀ n, (P3014198381747099154.a n : ℤ) = A065348 (n + 1)

end A065348

/-! ## A065348.P1373284182504576573

`eq[0, A065345(A138153(n+1))]`
-/

namespace A065348.P1373284182504576573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065348.P1373284182504576573

namespace A065348

/-- `eq[0, A065345(A138153(n+1))]` -/
def P1373284182504576573.Spec : Prop :=
  ∀ n, (P1373284182504576573.a n : ℤ) = A065348 (n + 1)

end A065348

/-! ## A065348.P15034841439732026606

`eq[0, A065345(A065033(2*n))]`
-/

namespace A065348.P15034841439732026606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065348.P15034841439732026606

namespace A065348

/-- `eq[0, A065345(A065033(2*n))]` -/
def P15034841439732026606.Spec : Prop :=
  ∀ n, (P15034841439732026606.a n : ℤ) = A065348 (n + 1)

end A065348

/-! ## A065348.P13725707220445688939

`eq[0, A065345(A233583(n+1))]`
-/

namespace A065348.P13725707220445688939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065348.P13725707220445688939

namespace A065348

/-- `eq[0, A065345(A233583(n+1))]` -/
def P13725707220445688939.Spec : Prop :=
  ∀ n, (P13725707220445688939.a n : ℤ) = A065348 (n + 1)

end A065348

/-!
# A065349: Positions of zeros in A065346.

The programs for A065349, the canonical program `A065349.P18239229015317001529` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065349 has offset 1).

The definition of A065349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065349.P18239229015317001529

`eq[0, A065346(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065349

/-- `eq[0, A065346(n+1)]+1` -/
def P18239229015317001529.Spec : Prop :=
  ∀ n, (P18239229015317001529.a n : ℤ) = A065349 (n + 1)

theorem P18239229015317001529.correct : P18239229015317001529.Spec := by
  intro n
  simp only [A065349, Nat.add_sub_cancel]

end A065349

/-! ## A065349.P17099091210280705980

`A065475(eq[0, A065346(n+1)])`
-/

namespace A065349.P17099091210280705980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065349.P17099091210280705980

namespace A065349

/-- `A065475(eq[0, A065346(n+1)])` -/
def P17099091210280705980.Spec : Prop :=
  ∀ n, P17099091210280705980.a n = A065349 (n + 1)

end A065349

/-! ## A065349.P5669475781210226239

`A153152(eq[0, A065346(n+1)])`
-/

namespace A065349.P5669475781210226239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065349.P5669475781210226239

namespace A065349

/-- `A153152(eq[0, A065346(n+1)])` -/
def P5669475781210226239.Spec : Prop :=
  ∀ n, P5669475781210226239.a n = A065349 (n + 1)

end A065349

/-! ## A065349.P18217271516748894156

`lt[A065346(n+1), A000120(n)]+1`
-/

namespace A065349.P18217271516748894156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065349.P18217271516748894156

namespace A065349

/-- `lt[A065346(n+1), A000120(n)]+1` -/
def P18217271516748894156.Spec : Prop :=
  ∀ n, (P18217271516748894156.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P5428152154620478856

`lt[A065346(n+1), A000982(n)]+1`
-/

namespace A065349.P5428152154620478856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065349.P5428152154620478856

namespace A065349

/-- `lt[A065346(n+1), A000982(n)]+1` -/
def P5428152154620478856.Spec : Prop :=
  ∀ n, (P5428152154620478856.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P17911190789030869794

`lt[A065346(n+1), A052938(n)]+1`
-/

namespace A065349.P17911190789030869794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065349.P17911190789030869794

namespace A065349

/-- `lt[A065346(n+1), A052938(n)]+1` -/
def P17911190789030869794.Spec : Prop :=
  ∀ n, (P17911190789030869794.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P1051494672954136876

`lt[A065346(n+1), A280253(n)]+1`
-/

namespace A065349.P1051494672954136876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065349.P1051494672954136876

namespace A065349

/-- `lt[A065346(n+1), A280253(n)]+1` -/
def P1051494672954136876.Spec : Prop :=
  ∀ n, (P1051494672954136876.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P7493677748112111475

`lt[A065346(n+1), A280263(n)]+1`
-/

namespace A065349.P7493677748112111475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065349.P7493677748112111475

namespace A065349

/-- `lt[A065346(n+1), A280263(n)]+1` -/
def P7493677748112111475.Spec : Prop :=
  ∀ n, (P7493677748112111475.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P4405256519285967292

`eq[0, A065346(A138153(n+1))]`
-/

namespace A065349.P4405256519285967292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065349.P4405256519285967292

namespace A065349

/-- `eq[0, A065346(A138153(n+1))]` -/
def P4405256519285967292.Spec : Prop :=
  ∀ n, (P4405256519285967292.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P5500550748586373974

`eq[A065346(A123108(2*n)), A067770(n)]`
-/

namespace A065349.P5500550748586373974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065349.P5500550748586373974

namespace A065349

/-- `eq[A065346(A123108(2*n)), A067770(n)]` -/
def P5500550748586373974.Spec : Prop :=
  ∀ n, (P5500550748586373974.a n : ℤ) = A065349 (n + 1)

end A065349

/-! ## A065349.P81208242690428174

`eq[0, A065346(A233583(n+1))]`
-/

namespace A065349.P81208242690428174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065349.P81208242690428174

namespace A065349

/-- `eq[0, A065346(A233583(n+1))]` -/
def P81208242690428174.Spec : Prop :=
  ∀ n, (P81208242690428174.a n : ℤ) = A065349 (n + 1)

end A065349

/-!
# A065350: a(n) = binomial(2*n, n) mod (n+1)^2.

The programs for A065350, the canonical program `A065350.P8131813115170436845` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065350 has offset 1).

The definition of A065350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065350.P8131813115170436845

`A000108(n+1)%(n+2)*(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065350

/-- `A000108(n+1)%(n+2)*(n+2)` -/
def P8131813115170436845.Spec : Prop :=
  ∀ n, P8131813115170436845.a n = A065350 (n + 1)

theorem P8131813115170436845.correct : P8131813115170436845.Spec := by
  intro n
  simp only [A065350, Nat.add_sub_cancel]

end A065350

/-! ## A065350.P3197838531631509194

`Δ[A006134(n)]%(n+2)²`
-/

namespace A065350.P3197838531631509194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 2) ^ 2 : ℤ)

end

end A065350.P3197838531631509194

namespace A065350

/-- `Δ[A006134(n)]%(n+2)²` -/
def P3197838531631509194.Spec : Prop :=
  ∀ n, P3197838531631509194.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P17707572003687727303

`A000984(n+1)%(n+2)²`
-/

namespace A065350.P17707572003687727303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 (n + 1)) ((n + 2) ^ 2 : ℤ)

end

end A065350.P17707572003687727303

namespace A065350

/-- `A000984(n+1)%(n+2)²` -/
def P17707572003687727303.Spec : Prop :=
  ∀ n, P17707572003687727303.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P6385634789887908435

`record[A126869(n+2)]%(n+2)²`
-/

namespace A065350.P6385634789887908435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 2) ^ 2 : ℤ)

end

end A065350.P6385634789887908435

namespace A065350

/-- `record[A126869(n+2)]%(n+2)²` -/
def P6385634789887908435.Spec : Prop :=
  ∀ n, P6385634789887908435.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P12182109160194461875

`record[A126930(n+2)]%(n+2)²`
-/

namespace A065350.P12182109160194461875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 2) ^ 2 : ℤ)

end

end A065350.P12182109160194461875

namespace A065350

/-- `record[A126930(n+2)]%(n+2)²` -/
def P12182109160194461875.Spec : Prop :=
  ∀ n, P12182109160194461875.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P15333923815490190893

`A063886(A103517(n))%(n+2)²`
-/

namespace A065350.P15333923815490190893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063886 (A103517 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A065350.P15333923815490190893

namespace A065350

/-- `A063886(A103517(n))%(n+2)²` -/
def P15333923815490190893.Spec : Prop :=
  ∀ n, P15333923815490190893.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P9109468433523977911

`A337499(A005408(n))%(n+2)²`
-/

namespace A065350.P9109468433523977911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337499 (A005408 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A065350.P9109468433523977911

namespace A065350

/-- `A337499(A005408(n))%(n+2)²` -/
def P9109468433523977911.Spec : Prop :=
  ∀ n, P9109468433523977911.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P7263615340731729975

`A126869(A005843(n+1))%(n+2)²`
-/

namespace A065350.P7263615340731729975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126869 (A005843 (n + 1)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A065350.P7263615340731729975

namespace A065350

/-- `A126869(A005843(n+1))%(n+2)²` -/
def P7263615340731729975.Spec : Prop :=
  ∀ n, P7263615340731729975.a n = A065350 (n + 1)

end A065350

/-! ## A065350.P2597474930487042806

`(A005430(n+1)/(n+1))%(n+2)²`
-/

namespace A065350.P2597474930487042806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005430 (n + 1) : ℚ) / (n + 1 : ℚ))) ((n + 2) ^ 2 : ℤ)

end

end A065350.P2597474930487042806

namespace A065350

/-- `(A005430(n+1)/(n+1))%(n+2)²` -/
def P2597474930487042806.Spec : Prop :=
  ∀ n, P2597474930487042806.a n = A065350 (n + 1)

end A065350

/-!
# A065352: Smallest m such that C(2m,m) is divisible by (m+n)!/m!.

The programs for A065352, there is no canonical definition to state claims against.
-/

/-! ## A065352.P2668861832523642134

`∑[A007306(∏[ceil(2^(n-2)+n)])]`
-/

namespace A065352.P2668861832523642134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065352.P2668861832523642134

/-! ## A065352.P4438045145636894474

`xor(5, ∑[A297442(a(n-1))+5])` with `a(0)=4, a(1)=2`
-/

namespace A065352.P4438045145636894474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A297442 (f1 (n - 1)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065352.P4438045145636894474

/-!
# A065353: Decimal representation of palindromes extracted from the Golden String using ever increasing Fibonacci-style subdivisions.

The programs for A065353, there is no canonical definition to state claims against.
-/

/-! ## A065353.P823012627499893903

`A038572(xor(1, A005203(n)))`
-/

namespace A065353.P823012627499893903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor 1 (A005203 n)).toNat

end

end A065353.P823012627499893903

/-! ## A065353.P2806423592601275693

`A038572(A057077(2*n)+A005203(n))`
-/

namespace A065353.P2806423592601275693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A057077 (2 * n) + A005203 n).toNat

end

end A065353.P2806423592601275693

/-! ## A065353.P9089428859863516157

`A038572(xor(1, A063896(n+1)-A288581(n)))`
-/

namespace A065353.P9089428859863516157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor 1 (A063896 (n + 1) - A288581 n)).toNat

end

end A065353.P9089428859863516157

/-!
# A065354: Decimal representation of binary palindromes extracted from the Golden String using ever-increasing Lucas-style subdivisions.

The programs for A065354, there is no canonical definition to state claims against.
-/

/-! ## A065354.P14594311064337853889

`A289440(A195220(n+2)+A158833(n+1))`
-/

namespace A065354.P14594311064337853889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (A195220 (n + 2) + A158833 (n + 1)).toNat

end

end A065354.P14594311064337853889

/-!
# A065355: a(n) = n! - Sum_{k=0..n-1} k!.

The programs for A065355, the canonical program `A065355.P6179604654936762676` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065355 has offset 0).

The definition of A065355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065355.P6179604654936762676

`A000142(n)-A003422(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065355

/-- `A000142(n)-A003422(n)` -/
def P6179604654936762676.Spec : Prop :=
  ∀ n, P6179604654936762676.a n = A065355 n

theorem P6179604654936762676.correct : P6179604654936762676.Spec := by
  intro n
  simp only [A065355]

end A065355

/-! ## A065355.P13737905491932288233

`2*n!-∑[n!]`
-/

namespace A065355.P13737905491932288233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065355.P13737905491932288233

namespace A065355

/-- `2*n!-∑[n!]` -/
def P13737905491932288233.Spec : Prop :=
  ∀ n, P13737905491932288233.a n = A065355 n

end A065355

/-! ## A065355.P16673539556663843378

`n!+n!-∑[n!]`
-/

namespace A065355.P16673539556663843378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + ((Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A065355.P16673539556663843378

namespace A065355

/-- `n!+n!-∑[n!]` -/
def P16673539556663843378.Spec : Prop :=
  ∀ n, P16673539556663843378.a n = A065355 n

end A065355

/-! ## A065355.P10050194252438845861

`n!-(∑[n!]-n!)`
-/

namespace A065355.P10050194252438845861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ))

end

end A065355.P10050194252438845861

namespace A065355

/-- `n!-(∑[n!]-n!)` -/
def P10050194252438845861.Spec : Prop :=
  ∀ n, P10050194252438845861.a n = A065355 n

end A065355

/-! ## A065355.P10940235083446449140

`a(n-1)+(n-2)*(n-1)!` with `a(0)=1`
-/

namespace A065355.P10940235083446449140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 2) * (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A065355.P10940235083446449140

namespace A065355

/-- `a(n-1)+(n-2)*(n-1)!` -/
def P10940235083446449140.Spec : Prop :=
  ∀ n, P10940235083446449140.a n = A065355 n

end A065355

/-! ## A065355.P595853915758231192

`n!-∑[A104150(n)]`
-/

namespace A065355.P595853915758231192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065355.P595853915758231192

namespace A065355

/-- `n!-∑[A104150(n)]` -/
def P595853915758231192.Spec : Prop :=
  ∀ n, P595853915758231192.a n = A065355 n

end A065355

/-! ## A065355.P10212818704638152452

`A208529(n+2)-∑[n!]`
-/

namespace A065355.P10212818704638152452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208529 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065355.P10212818704638152452

namespace A065355

/-- `A208529(n+2)-∑[n!]` -/
def P10212818704638152452.Spec : Prop :=
  ∀ n, P10212818704638152452.a n = A065355 n

end A065355

/-! ## A065355.P12660152811429201739

`abs(A067078(n+1)-(n!+1))`
-/

namespace A065355.P12660152811429201739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067078 (n + 1) - (Nat.factorial n + 1 : ℤ)|

end

end A065355.P12660152811429201739

namespace A065355

/-- `abs(A067078(n+1)-(n!+1))` -/
def P12660152811429201739.Spec : Prop :=
  ∀ n, P12660152811429201739.a n = A065355 n

end A065355

/-! ## A065355.P2264879032037543807

`A020543(n)-A007489(n)`
-/

namespace A065355.P2264879032037543807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020543 n - A007489 n

end

end A065355.P2264879032037543807

namespace A065355

/-- `A020543(n)-A007489(n)` -/
def P2264879032037543807.Spec : Prop :=
  ∀ n, P2264879032037543807.a n = A065355 n

end A065355

/-!
# A065356: Final digits of A065355(n) (in reverse order) for sufficiently large n.

The programs for A065356, there is no canonical definition to state claims against.
-/

/-! ## A065356.P6163872640931893845

`A000007(n)+9-A025016(n)`
-/

namespace A065356.P6163872640931893845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A025016 n)

end

end A065356.P6163872640931893845

/-! ## A065356.P10212513354847693613

`9-A025016(n)-A073097(2*n)`
-/

namespace A065356.P10212513354847693613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A025016 n - A073097 (2 * n)

end

end A065356.P10212513354847693613

/-! ## A065356.P2710828646931210368

`A102376(n)%2+9-A025016(n)`
-/

namespace A065356.P2710828646931210368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102376 n) 2 + (9 - A025016 n)

end

end A065356.P2710828646931210368

/-! ## A065356.P14412265775051593018

`A008706(n)%5+9-A025016(n)`
-/

namespace A065356.P14412265775051593018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 n) 5 + (9 - A025016 n)

end

end A065356.P14412265775051593018

/-! ## A065356.P16263930869573062483

`A000035(A001316(n))+9-A025016(n)`
-/

namespace A065356.P16263930869573062483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001316 n).toNat + (9 - A025016 n)

end

end A065356.P16263930869573062483

/-! ## A065356.P9633550094205934224

`A000035(A004016(n))+9-A025016(n)`
-/

namespace A065356.P9633550094205934224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004016 n).toNat + (9 - A025016 n)

end

end A065356.P9633550094205934224

/-! ## A065356.P13617685216570279410

`A000035(A005875(n))+9-A025016(n)`
-/

namespace A065356.P13617685216570279410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005875 n).toNat + (9 - A025016 n)

end

end A065356.P13617685216570279410

/-! ## A065356.P5080729556488855279

`A008683(A008574(n))+9-A025016(n)`
-/

namespace A065356.P5080729556488855279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (9 - A025016 n)

end

end A065356.P5080729556488855279

/-! ## A065356.P9411097187184933780

`A154269(A005408(n))+9-A025016(n)`
-/

namespace A065356.P9411097187184933780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A005408 n).toNat + (9 - A025016 n)

end

end A065356.P9411097187184933780

/-! ## A065356.P12738783939081715059

`A000035(A000010(n+2))+9-A025016(n)`
-/

namespace A065356.P12738783939081715059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 2)).toNat + (9 - A025016 n)

end

end A065356.P12738783939081715059

/-! ## A065356.P7777300849738788317

`9-A082648(n+1)`
-/

namespace A065356.P7777300849738788317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A082648 (n + 1)

end

end A065356.P7777300849738788317

/-! ## A065356.P13991728868933472634

`A064733(n)+A064734(n)-A025016(n)`
-/

namespace A065356.P13991728868933472634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064733 n + (A064734 n - A025016 n)

end

end A065356.P13991728868933472634

/-! ## A065356.P18191859093144986114

`A010052(A130824(n))+9-A025016(n)`
-/

namespace A065356.P18191859093144986114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A130824 n).toNat + (9 - A025016 n)

end

end A065356.P18191859093144986114

/-! ## A065356.P6127483274639312356

`A000035(A008458(n))+9-A025016(n)`
-/

namespace A065356.P6127483274639312356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008458 n).toNat + (9 - A025016 n)

end

end A065356.P6127483274639312356

/-! ## A065356.P13705111755061941300

`A010051(A023036(n))+9-A025016(n)`
-/

namespace A065356.P13705111755061941300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A023036 n).toNat + (9 - A025016 n)

end

end A065356.P13705111755061941300

/-! ## A065356.P9520205793022817842

`A230277(A008486(n))+9-A025016(n)`
-/

namespace A065356.P9520205793022817842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230277 (A008486 n).toNat + (9 - A025016 n)

end

end A065356.P9520205793022817842

/-! ## A065356.P9709721640673663453

`A010051(A000954(n))+9-A025016(n)`
-/

namespace A065356.P9709721640673663453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000954 n).toNat + (9 - A025016 n)

end

end A065356.P9709721640673663453

/-! ## A065356.P6533653460648855292

`A008683(A160239(n))+9-A025016(n)`
-/

namespace A065356.P6533653460648855292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A160239 n).toNat + (9 - A025016 n)

end

end A065356.P6533653460648855292

/-! ## A065356.P12317992428298007753

`A010054(A000124(n))+9-A025016(n)`
-/

namespace A065356.P12317992428298007753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000124 n).toNat + (9 - A025016 n)

end

end A065356.P12317992428298007753

/-!
# A065357: a(n) = (-1)^pi(n) where pi(n) is the number of primes <= n.

The programs for A065357, the canonical program `A065357.P5981080689720192330` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065357 has offset 0).

The definition of A065357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065357.P9637368026444673688

`Δ[A278603(n)]`
-/

namespace A065357.P9637368026444673688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065357.P9637368026444673688

namespace A065357

/-- `Δ[A278603(n)]` -/
def P9637368026444673688.Spec : Prop :=
  ∀ n, P9637368026444673688.a n = A065357 n

end A065357

/-! ## A065357.P18166491842525363786

`(-1)^A230980(n)`
-/

namespace A065357.P18166491842525363786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A230980 n : ℤ)

end

end A065357.P18166491842525363786

namespace A065357

/-- `(-1)^A230980(n)` -/
def P18166491842525363786.Spec : Prop :=
  ∀ n, P18166491842525363786.a n = (A065357 n : ℚ)

end A065357

/-! ## A065357.P5981080689720192330

`1-2*A131378(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065357

/-- `1-2*A131378(n)` -/
def P5981080689720192330.Spec : Prop :=
  ∀ n, P5981080689720192330.a n = A065357 n

theorem P5981080689720192330.correct : P5981080689720192330.Spec := by
  intro n
  simp only [A065357]

end A065357

/-! ## A065357.P4950007953376480166

`2*A131377(n)-1`
-/

namespace A065357.P4950007953376480166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131377 n - 1

end

end A065357.P4950007953376480166

namespace A065357

/-- `2*A131377(n)-1` -/
def P4950007953376480166.Spec : Prop :=
  ∀ n, P4950007953376480166.a n = A065357 n

end A065357

/-! ## A065357.P7299606607523859833

`(-1)^(2-(A095117(n)+n))`
-/

namespace A065357.P7299606607523859833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (2 - (A095117 n + (n : ℤ)) : ℤ)

end

end A065357.P7299606607523859833

namespace A065357

/-- `(-1)^(2-(A095117(n)+n))` -/
def P7299606607523859833.Spec : Prop :=
  ∀ n, P7299606607523859833.a n = (A065357 n : ℚ)

end A065357

/-! ## A065357.P1619635405304147901

`1-2*char[A057812(n+1)]`
-/

namespace A065357.P1619635405304147901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A065357.P1619635405304147901

namespace A065357

/-- `1-2*char[A057812(n+1)]` -/
def P1619635405304147901.Spec : Prop :=
  ∀ n, P1619635405304147901.a n = A065357 n

end A065357

/-! ## A065357.P17548253696257173747

`1-2*∑[char[A000040(n+1)]]%2`
-/

namespace A065357.P17548253696257173747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℕ) : ℤ)

end

end A065357.P17548253696257173747

namespace A065357

/-- `1-2*∑[char[A000040(n+1)]]%2` -/
def P17548253696257173747.Spec : Prop :=
  ∀ n, P17548253696257173747.a n = A065357 n

end A065357

/-! ## A065357.P8401972730922992655

`1-2*∑[char[A006530(n+2)]]%2`
-/

namespace A065357.P8401972730922992655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℕ) : ℤ)

end

end A065357.P8401972730922992655

namespace A065357

/-- `1-2*∑[char[A006530(n+2)]]%2` -/
def P8401972730922992655.Spec : Prop :=
  ∀ n, P8401972730922992655.a n = A065357 n

end A065357

/-! ## A065357.P13077464053773550823

`A195017(A151800(n))`
-/

namespace A065357.P13077464053773550823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A151800 n).toNat

end

end A065357.P13077464053773550823

namespace A065357

/-- `A195017(A151800(n))` -/
def P13077464053773550823.Spec : Prop :=
  ∀ n, P13077464053773550823.a n = A065357 n

end A065357

/-! ## A065357.P8461652018618127086

`A195017(A007918(n+1))`
-/

namespace A065357.P8461652018618127086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A007918 (n + 1)).toNat

end

end A065357.P8461652018618127086

namespace A065357

/-- `A195017(A007918(n+1))` -/
def P8461652018618127086.Spec : Prop :=
  ∀ n, P8461652018618127086.a n = A065357 n

end A065357

/-! ## A065357.P3937400454671347262

`A009001(2*A230980(n))`
-/

namespace A065357.P3937400454671347262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * A230980 n).toNat

end

end A065357.P3937400454671347262

namespace A065357

/-- `A009001(2*A230980(n))` -/
def P3937400454671347262.Spec : Prop :=
  ∀ n, P3937400454671347262.a n = A065357 n

end A065357

/-! ## A065357.P13086730886682649265

`A056594(2*A230980(n))`
-/

namespace A065357.P13086730886682649265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A230980 n).toNat

end

end A065357.P13086730886682649265

namespace A065357

/-- `A056594(2*A230980(n))` -/
def P13086730886682649265.Spec : Prop :=
  ∀ n, P13086730886682649265.a n = A065357 n

end A065357

/-! ## A065357.P17943465615931121735

`A131377(n)-A131378(n)`
-/

namespace A065357.P17943465615931121735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n - A131378 n

end

end A065357.P17943465615931121735

namespace A065357

/-- `A131377(n)-A131378(n)` -/
def P17943465615931121735.Spec : Prop :=
  ∀ n, P17943465615931121735.a n = A065357 n

end A065357

/-! ## A065357.P1874268707251905205

`1-2*A071986(A028310(n))`
-/

namespace A065357.P1874268707251905205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A071986 (A028310 n).toNat

end

end A065357.P1874268707251905205

namespace A065357

/-- `1-2*A071986(A028310(n))` -/
def P1874268707251905205.Spec : Prop :=
  ∀ n, P1874268707251905205.a n = A065357 n

end A065357

/-! ## A065357.P15945046540222315937

`1-A007877(2*A230980(n))`
-/

namespace A065357.P15945046540222315937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007877 (2 * A230980 n).toNat

end

end A065357.P15945046540222315937

namespace A065357

/-- `1-A007877(2*A230980(n))` -/
def P15945046540222315937.Spec : Prop :=
  ∀ n, P15945046540222315937.a n = A065357 n

end A065357

/-! ## A065357.P12652053986004287668

`A278603(n+1)-A278603(n)`
-/

namespace A065357.P12652053986004287668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (n + 1) - A278603 n

end

end A065357.P12652053986004287668

namespace A065357

/-- `A278603(n+1)-A278603(n)` -/
def P12652053986004287668.Spec : Prop :=
  ∀ n, P12652053986004287668.a n = A065357 n

end A065357

/-! ## A065357.P6954196293294393687

`1-2*A071986(A014684(n+1))`
-/

namespace A065357.P6954196293294393687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A071986 (A014684 (n + 1)).toNat

end

end A065357.P6954196293294393687

namespace A065357

/-- `1-2*A071986(A014684(n+1))` -/
def P6954196293294393687.Spec : Prop :=
  ∀ n, P6954196293294393687.a n = A065357 n

end A065357

/-! ## A065357.P11472844982931754438

`(A057427(n)-2)^∑[char[A000040(n+1)]]`
-/

namespace A065357.P11472844982931754438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n - 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065357.P11472844982931754438

namespace A065357

/-- `(A057427(n)-2)^∑[char[A000040(n+1)]]` -/
def P11472844982931754438.Spec : Prop :=
  ∀ n, P11472844982931754438.a n = A065357 n

end A065357

/-! ## A065357.P4465311135246201353

`2*∑[A000203(a(A001222(n)))]%2-1` with `a(0)=7`
-/

namespace A065357.P4465311135246201353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A000203 (f1 (A001222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 - 1

end

end A065357.P4465311135246201353

namespace A065357

/-- `2*∑[A000203(a(A001222(n)))]%2-1` -/
def P4465311135246201353.Spec : Prop :=
  ∀ n, P4465311135246201353.a n = A065357 n

end A065357

/-! ## A065357.P3759015676769554793

`A165326(comp[A018252(n+2)+n])`
-/

namespace A065357.P3759015676769554793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065357.P3759015676769554793

namespace A065357

/-- `A165326(comp[A018252(n+2)+n])` -/
def P3759015676769554793.Spec : Prop :=
  ∀ n, P3759015676769554793.a n = A065357 n

end A065357

/-!
# A065358: The Jacob's Ladder sequence: a(n) = Sum_{k=1..n} (-1)^pi(k), where pi = A000720.

The programs for A065358, the canonical program `A065358.P6265050914822267748` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065358 has offset 0).

The definition of A065358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065358.P8151778185822927099

`A278603(n+1)-1`
-/

namespace A065358.P8151778185822927099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (n + 1) - 1

end

end A065358.P8151778185822927099

namespace A065358

/-- `A278603(n+1)-1` -/
def P8151778185822927099.Spec : Prop :=
  ∀ n, P8151778185822927099.a n = A065358 n

end A065358

/-! ## A065358.P6265050914822267748

`n-2*A131808(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065358

/-- `n-2*A131808(n)` -/
def P6265050914822267748.Spec : Prop :=
  ∀ n, P6265050914822267748.a n = A065358 n

theorem P6265050914822267748.correct : P6265050914822267748.Spec := by
  intro n
  simp only [A065358]

end A065358

/-! ## A065358.P16313682821880746142

`∑[A065357(n)]-1`
-/

namespace A065358.P16313682821880746142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065358.P16313682821880746142

namespace A065358

/-- `∑[A065357(n)]-1` -/
def P16313682821880746142.Spec : Prop :=
  ∀ n, P16313682821880746142.a n = A065358 n

end A065358

/-! ## A065358.P5886916838133712798

`n-∑[2*A131378(n)]`
-/

namespace A065358.P5886916838133712798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065358.P5886916838133712798

namespace A065358

/-- `n-∑[2*A131378(n)]` -/
def P5886916838133712798.Spec : Prop :=
  ∀ n, P5886916838133712798.a n = A065358 n

end A065358

/-! ## A065358.P12572469851078815967

`n-∑[1-Δ[A278603(n)]]`
-/

namespace A065358.P12572469851078815967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065358.P12572469851078815967

namespace A065358

/-- `n-∑[1-Δ[A278603(n)]]` -/
def P12572469851078815967.Spec : Prop :=
  ∀ n, P12572469851078815967.a n = A065358 n

end A065358

/-! ## A065358.P15004172025226105905

`∑[2*A131377(n)-1]-1`
-/

namespace A065358.P15004172025226105905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131377 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065358.P15004172025226105905

namespace A065358

/-- `∑[2*A131377(n)-1]-1` -/
def P15004172025226105905.Spec : Prop :=
  ∀ n, P15004172025226105905.a n = A065358 n

end A065358

/-! ## A065358.P6420045829201420444

`n-2*∑[char[A057812(n+1)]]`
-/

namespace A065358.P6420045829201420444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A065358.P6420045829201420444

namespace A065358

/-- `n-2*∑[char[A057812(n+1)]]` -/
def P6420045829201420444.Spec : Prop :=
  ∀ n, P6420045829201420444.a n = A065358 n

end A065358

/-! ## A065358.P1025996634805182846

`n-2*∑[∑[char[A006530(n+2)]]%2]`
-/

namespace A065358.P1025996634805182846
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A065358.P1025996634805182846

namespace A065358

/-- `n-2*∑[∑[char[A006530(n+2)]]%2]` -/
def P1025996634805182846.Spec : Prop :=
  ∀ n, P1025996634805182846.a n = A065358 n

end A065358

/-! ## A065358.P1481288948758779141

`∑[A332823(A007918(n+1))]-1`
-/

namespace A065358.P1481288948758779141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A007918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065358.P1481288948758779141

namespace A065358

/-- `∑[A332823(A007918(n+1))]-1` -/
def P1481288948758779141.Spec : Prop :=
  ∀ n, P1481288948758779141.a n = A065358 n

end A065358

/-! ## A065358.P6177296118151465621

`Δ[∑[A278603(n)]-n]`
-/

namespace A065358.P6177296118151465621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065358.P6177296118151465621

namespace A065358

/-- `Δ[∑[A278603(n)]-n]` -/
def P6177296118151465621.Spec : Prop :=
  ∀ n, P6177296118151465621.a n = A065358 n

end A065358

/-!
# A065359: Alternating bit sum for n: replace 2^k with (-1)^k in binary expansion of n.

The programs for A065359, the canonical program `A065359.P2716114422933254065` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065359 has offset 0).

The definition of A065359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065359.P2716114422933254065

`A139351(n)-A139352(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065359

/-- `A139351(n)-A139352(n)` -/
def P2716114422933254065.Spec : Prop :=
  ∀ n, P2716114422933254065.a n = A065359 n

theorem P2716114422933254065.correct : P2716114422933254065.Spec := by
  intro n
  simp only [A065359]

end A065359

/-! ## A065359.P7730917802953669421

`A195017(A019565(n))`
-/

namespace A065359.P7730917802953669421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A019565 n).toNat

end

end A065359.P7730917802953669421

namespace A065359

/-- `A195017(A019565(n))` -/
def P7730917802953669421.Spec : Prop :=
  ∀ n, P7730917802953669421.a n = A065359 n

end A065359

/-! ## A065359.P6376963421287970312

`n%2-a(floor(n/2))` with `a(0)=0`
-/

namespace A065359.P6376963421287970312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat

end

end A065359.P6376963421287970312

namespace A065359

/-- `n%2-a(floor(n/2))` -/
def P6376963421287970312.Spec : Prop :=
  ∀ n, P6376963421287970312.a n = A065359 n

end A065359

/-! ## A065359.P11203118261688055845

`2-(a(floor(n/2))+gcd(2, n))` with `a(0)=0`
-/

namespace A065359.P11203118261688055845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ))

end

end A065359.P11203118261688055845

namespace A065359

/-- `2-(a(floor(n/2))+gcd(2, n))` -/
def P11203118261688055845.Spec : Prop :=
  ∀ n, P11203118261688055845.a n = A065359 n

end A065359

/-! ## A065359.P11164217060512759470

`1-(a(floor(n/2))+and(1, n+1))` with `a(0)=0`
-/

namespace A065359.P11164217060512759470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.land 1 (n + 1) : ℤ))

end

end A065359.P11164217060512759470

namespace A065359

/-- `1-(a(floor(n/2))+and(1, n+1))` -/
def P11164217060512759470.Spec : Prop :=
  ∀ n, P11164217060512759470.a n = A065359 n

end A065359

/-! ## A065359.P8368058952533018739

`∑[-(a(n-1)+a(floor(n/2)))]` with `a(0)=0, a(1)=1`
-/

namespace A065359.P8368058952533018739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -(f1 (n - 1) + f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065359.P8368058952533018739

namespace A065359

/-- `∑[-(a(n-1)+a(floor(n/2)))]` -/
def P8368058952533018739.Spec : Prop :=
  ∀ n, P8368058952533018739.a n = A065359 n

end A065359

/-! ## A065359.P4103307656591337521

`1-(a(floor(n/2))+val(n²+2, 2))` with `a(0)=0`
-/

namespace A065359.P4103307656591337521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a ⌊(n : ℚ) / 2⌋.toNat + (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ))

end

end A065359.P4103307656591337521

namespace A065359

/-- `1-(a(floor(n/2))+val(n²+2, 2))` -/
def P4103307656591337521.Spec : Prop :=
  ∀ n, P4103307656591337521.a n = A065359 n

end A065359

/-! ## A065359.P9507051305867396550

`a(n-2)-(a(floor(n/2))-a(abs(floor(n/2)-1)))` with `a(0)=0, a(1)=1`
-/

namespace A065359.P9507051305867396550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (a ⌊(n : ℚ) / 2⌋.toNat - a |⌊(n : ℚ) / 2⌋ - 1|.toNat)

end

end A065359.P9507051305867396550

namespace A065359

/-- `a(n-2)-(a(floor(n/2))-a(abs(floor(n/2)-1)))` -/
def P9507051305867396550.Spec : Prop :=
  ∀ n, P9507051305867396550.a n = A065359 n

end A065359

/-! ## A065359.P9740447436013609728

`n-3*A123087(n)`
-/

namespace A065359.P9740447436013609728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A123087 n

end

end A065359.P9740447436013609728

namespace A065359

/-- `n-3*A123087(n)` -/
def P9740447436013609728.Spec : Prop :=
  ∀ n, P9740447436013609728.a n = A065359 n

end A065359

/-! ## A065359.P18094597941314415961

`A068639(n)-A123087(n)`
-/

namespace A065359.P18094597941314415961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n - A123087 n

end

end A065359.P18094597941314415961

namespace A065359

/-- `A068639(n)-A123087(n)` -/
def P18094597941314415961.Spec : Prop :=
  ∀ n, P18094597941314415961.a n = A065359 n

end A065359

/-! ## A065359.P4589820999365742229

`A160381(n)-A160382(n)`
-/

namespace A065359.P4589820999365742229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n - A160382 n

end

end A065359.P4589820999365742229

namespace A065359

/-- `A160381(n)-A160382(n)` -/
def P4589820999365742229.Spec : Prop :=
  ∀ n, P4589820999365742229.a n = A065359 n

end A065359

/-! ## A065359.P15021615822271713941

`2*A068639(n)-A050292(n)`
-/

namespace A065359.P15021615822271713941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068639 n - A050292 n

end

end A065359.P15021615822271713941

namespace A065359

/-- `2*A068639(n)-A050292(n)` -/
def P15021615822271713941.Spec : Prop :=
  ∀ n, P15021615822271713941.a n = A065359 n

end A065359

/-! ## A065359.P9218418206595916426

`2*A139351(n)-A000120(n)`
-/

namespace A065359.P9218418206595916426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139351 n - A000120 n

end

end A065359.P9218418206595916426

namespace A065359

/-- `2*A139351(n)-A000120(n)` -/
def P9218418206595916426.Spec : Prop :=
  ∀ n, P9218418206595916426.a n = A065359 n

end A065359

/-! ## A065359.P17126063046866757933

`A000120(n)-2*A139352(n)`
-/

namespace A065359.P17126063046866757933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - 2 * A139352 n

end

end A065359.P17126063046866757933

namespace A065359

/-- `A000120(n)-2*A139352(n)` -/
def P17126063046866757933.Spec : Prop :=
  ∀ n, P17126063046866757933.a n = A065359 n

end A065359

/-! ## A065359.P13385358316407340030

`2*A050292(n)-A197911(n)`
-/

namespace A065359.P13385358316407340030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050292 n - A197911 n

end

end A065359.P13385358316407340030

namespace A065359

/-- `2*A050292(n)-A197911(n)` -/
def P13385358316407340030.Spec : Prop :=
  ∀ n, P13385358316407340030.a n = A065359 n

end A065359

/-! ## A065359.P1784119190103971046

`A000120(A059905(n))-A139352(n)`
-/

namespace A065359.P1784119190103971046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 n).toNat - A139352 n

end

end A065359.P1784119190103971046

namespace A065359

/-- `A000120(A059905(n))-A139352(n)` -/
def P1784119190103971046.Spec : Prop :=
  ∀ n, P1784119190103971046.a n = A065359 n

end A065359

/-! ## A065359.P15950771181058084558

`A139351(n)-A000120(A059906(n))`
-/

namespace A065359.P15950771181058084558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A000120 (A059906 n).toNat

end

end A065359.P15950771181058084558

namespace A065359

/-- `A139351(n)-A000120(A059906(n))` -/
def P15950771181058084558.Spec : Prop :=
  ∀ n, P15950771181058084558.a n = A065359 n

end A065359

/-! ## A065359.P9314054702305871631

`A139351(n)-A000120(A063695(n))`
-/

namespace A065359.P9314054702305871631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A000120 (A063695 n).toNat

end

end A065359.P9314054702305871631

namespace A065359

/-- `A139351(n)-A000120(A063695(n))` -/
def P9314054702305871631.Spec : Prop :=
  ∀ n, P9314054702305871631.a n = A065359 n

end A065359

/-! ## A065359.P8934584452595070123

`A160381(n)-A000120(A292372(n))`
-/

namespace A065359.P8934584452595070123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n - A000120 (A292372 n).toNat

end

end A065359.P8934584452595070123

namespace A065359

/-- `A160381(n)-A000120(A292372(n))` -/
def P8934584452595070123.Spec : Prop :=
  ∀ n, P8934584452595070123.a n = A065359 n

end A065359

/-!
# A065360: Alternating sum of "negabits". Replace (-2)^k with (-1)^k in negabinary expansion of n.

The programs for A065360, the canonical program `A065360.P15066176197117585318` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065360 has offset 1).

The definition of A065360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065360.P15066176197117585318

`∑[1-val(3*n+1, 2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065360

/-- `∑[1-val(3*n+1, 2)]` -/
def P15066176197117585318.Spec : Prop :=
  ∀ n, P15066176197117585318.a n = A065360 (n + 1)

theorem P15066176197117585318.correct : P15066176197117585318.Spec := by
  intro n
  simp only [A065360, Nat.add_sub_cancel]

end A065360

/-! ## A065360.P18417507275751201673

`1-(val(3*n+1, 2)-a(n-1))` with `a(0)=1`
-/

namespace A065360.P18417507275751201673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((SequenceMachineLib.valuation (3 * n + 1) 2 : ℤ) - a (n - 1))

end

end A065360.P18417507275751201673

namespace A065360

/-- `1-(val(3*n+1, 2)-a(n-1))` -/
def P18417507275751201673.Spec : Prop :=
  ∀ n, P18417507275751201673.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P7866767905171940546

`∑[1-A371093(n)]`
-/

namespace A065360.P7866767905171940546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A371093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P7866767905171940546

namespace A065360

/-- `∑[1-A371093(n)]` -/
def P7866767905171940546.Spec : Prop :=
  ∀ n, P7866767905171940546.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P4025548060725345437

`∑[2-A375961(n)]`
-/

namespace A065360.P4025548060725345437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A375961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P4025548060725345437

namespace A065360

/-- `∑[2-A375961(n)]` -/
def P4025548060725345437.Spec : Prop :=
  ∀ n, P4025548060725345437.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P2636772072541596779

`∑[3-A087229(n)]`
-/

namespace A065360.P2636772072541596779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A087229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P2636772072541596779

namespace A065360

/-- `∑[3-A087229(n)]` -/
def P2636772072541596779.Spec : Prop :=
  ∀ n, P2636772072541596779.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P11756138121547324114

`A065359(A005351(n+1))`
-/

namespace A065360.P11756138121547324114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A005351 (n + 1)).toNat

end

end A065360.P11756138121547324114

namespace A065360

/-- `A065359(A005351(n+1))` -/
def P11756138121547324114.Spec : Prop :=
  ∀ n, P11756138121547324114.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P9754796852564346140

`∑[1-A244417(3*n+1)]`
-/

namespace A065360.P9754796852564346140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244417 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P9754796852564346140

namespace A065360

/-- `∑[1-A244417(3*n+1)]` -/
def P9754796852564346140.Spec : Prop :=
  ∀ n, P9754796852564346140.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P9785743456163499364

`∑[2-A072078(3*n+1)]`
-/

namespace A065360.P9785743456163499364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A072078 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P9785743456163499364

namespace A065360

/-- `∑[2-A072078(3*n+1)]` -/
def P9785743456163499364.Spec : Prop :=
  ∀ n, P9785743456163499364.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P4674012688157153336

`∑[3-A087230(2*n)]`
-/

namespace A065360.P4674012688157153336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A087230 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P4674012688157153336

namespace A065360

/-- `∑[3-A087230(2*n)]` -/
def P4674012688157153336.Spec : Prop :=
  ∀ n, P4674012688157153336.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P3028018667004189429

`-A065359(A005352(2*(n+1)))`
-/

namespace A065360.P3028018667004189429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065359 (A005352 (2 * (n + 1))).toNat

end

end A065360.P3028018667004189429

namespace A065360

/-- `-A065359(A005352(2*(n+1)))` -/
def P3028018667004189429.Spec : Prop :=
  ∀ n, P3028018667004189429.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P4415042065664527984

`1-A065359(A005352(2*n+1))`
-/

namespace A065360.P4415042065664527984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 (A005352 (2 * n + 1)).toNat

end

end A065360.P4415042065664527984

namespace A065360

/-- `1-A065359(A005352(2*n+1))` -/
def P4415042065664527984.Spec : Prop :=
  ∀ n, P4415042065664527984.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P15572022710981400195

`A065359(2*A005352(2*(n+1)))`
-/

namespace A065360.P15572022710981400195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * A005352 (2 * (n + 1))).toNat

end

end A065360.P15572022710981400195

namespace A065360

/-- `A065359(2*A005352(2*(n+1)))` -/
def P15572022710981400195.Spec : Prop :=
  ∀ n, P15572022710981400195.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P9747677108044324805

`∑[1-A007814(3*n+1)]`
-/

namespace A065360.P9747677108044324805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007814 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P9747677108044324805

namespace A065360

/-- `∑[1-A007814(3*n+1)]` -/
def P9747677108044324805.Spec : Prop :=
  ∀ n, P9747677108044324805.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P1460311327789859485

`∑[1-A169611(3*n+1)]`
-/

namespace A065360.P1460311327789859485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A169611 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P1460311327789859485

namespace A065360

/-- `∑[1-A169611(3*n+1)]` -/
def P1460311327789859485.Spec : Prop :=
  ∀ n, P1460311327789859485.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P17080331386235204462

`∑[2-A001511(3*n+1)]`
-/

namespace A065360.P17080331386235204462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001511 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P17080331386235204462

namespace A065360

/-- `∑[2-A001511(3*n+1)]` -/
def P17080331386235204462.Spec : Prop :=
  ∀ n, P17080331386235204462.a n = A065360 (n + 1)

end A065360

/-! ## A065360.P1536798120739950155

`∑[A088705(2*n+1+n)]`
-/

namespace A065360.P1536798120739950155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P1536798120739950155

namespace A065360

/-- `∑[A088705(2*n+1+n)]` -/
def P1536798120739950155.Spec : Prop :=
  ∀ n, P1536798120739950155.a n = A065360 (n + 1)

end A065360

/-!
# A065361: Rebase n from 3 to 2. Replace 3^k with 2^k in ternary expansion of n.

The programs for A065361, the canonical program `A065361.P17377270535182688236` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065361 has offset 0).

The definition of A065361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065361.P17377270535182688236

`2*a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065361

/-- `2*a(floor(n/3))+n-3*floor(n/3)` -/
def P17377270535182688236.Spec : Prop :=
  ∀ n, P17377270535182688236.a n = A065361 n

theorem P17377270535182688236.correct : P17377270535182688236.Spec := by
  intro n
  simp only [A065361]

end A065361

/-! ## A065361.P7697597909208614056

`A289831(n)+A289814(n)`
-/

namespace A065361.P7697597909208614056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n + A289814 n

end

end A065361.P7697597909208614056

namespace A065361

/-- `A289831(n)+A289814(n)` -/
def P7697597909208614056.Spec : Prop :=
  ∀ n, P7697597909208614056.a n = A065361 n

end A065361

/-! ## A065361.P17652337635702236231

`A289813(n)+2*A289814(n)`
-/

namespace A065361.P17652337635702236231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + 2 * A289814 n

end

end A065361.P17652337635702236231

namespace A065361

/-- `A289813(n)+2*A289814(n)` -/
def P17652337635702236231.Spec : Prop :=
  ∀ n, P17652337635702236231.a n = A065361 n

end A065361

/-! ## A065361.P6464028181843292080

`2*A289831(n)-A289813(n)`
-/

namespace A065361.P6464028181843292080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289831 n - A289813 n

end

end A065361.P6464028181843292080

namespace A065361

/-- `2*A289831(n)-A289813(n)` -/
def P6464028181843292080.Spec : Prop :=
  ∀ n, P6464028181843292080.a n = A065361 n

end A065361

/-! ## A065361.P9910771873733732986

`2*A289831(n)-A289831(A244042(n))`
-/

namespace A065361.P9910771873733732986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289831 n - A289831 (A244042 n).toNat

end

end A065361.P9910771873733732986

namespace A065361

/-- `2*A289831(n)-A289831(A244042(n))` -/
def P9910771873733732986.Spec : Prop :=
  ∀ n, P9910771873733732986.a n = A065361 n

end A065361

/-! ## A065361.P15632280328706032916

`A289813(n-A117966(n))+A289813(n)`
-/

namespace A065361.P15632280328706032916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 ((n : ℤ) - A117966 n).toNat + A289813 n

end

end A065361.P15632280328706032916

namespace A065361

/-- `A289813(n-A117966(n))+A289813(n)` -/
def P15632280328706032916.Spec : Prop :=
  ∀ n, P15632280328706032916.a n = A065361 n

end A065361

/-! ## A065361.P7368729206209740782

`A289831(n-A244042(n))+A289831(n)`
-/

namespace A065361.P7368729206209740782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 ((n : ℤ) - A244042 n).toNat + A289831 n

end

end A065361.P7368729206209740782

namespace A065361

/-- `A289831(n-A244042(n))+A289831(n)` -/
def P7368729206209740782.Spec : Prop :=
  ∀ n, P7368729206209740782.a n = A065361 n

end A065361

/-! ## A065361.P17509434377418151912

`A289831(n)+A289813(A374362(n))`
-/

namespace A065361.P17509434377418151912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n + A289813 (A374362 n).toNat

end

end A065361.P17509434377418151912

namespace A065361

/-- `A289831(n)+A289813(A374362(n))` -/
def P17509434377418151912.Spec : Prop :=
  ∀ n, P17509434377418151912.a n = A065361 n

end A065361

/-! ## A065361.P11324006550878489910

`A059261(A023717(n))`
-/

namespace A065361.P11324006550878489910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A023717 n).toNat

end

end A065361.P11324006550878489910

namespace A065361

/-- `A059261(A023717(n))` -/
def P11324006550878489910.Spec : Prop :=
  ∀ n, P11324006550878489910.a n = A065361 n

end A065361

/-! ## A065361.P5211114513925055623

`A289831(A374363(n)+n)`
-/

namespace A065361.P5211114513925055623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A374363 n + (n : ℤ)).toNat

end

end A065361.P5211114513925055623

namespace A065361

/-- `A289831(A374363(n)+n)` -/
def P5211114513925055623.Spec : Prop :=
  ∀ n, P5211114513925055623.a n = A065361 n

end A065361

/-! ## A065361.P358931376554268561

`A289831(2*n-A374362(n))`
-/

namespace A065361.P358931376554268561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 ((2 * n : ℤ) - A374362 n).toNat

end

end A065361.P358931376554268561

namespace A065361

/-- `A289831(2*n-A374362(n))` -/
def P358931376554268561.Spec : Prop :=
  ∀ n, P358931376554268561.a n = A065361 n

end A065361

/-! ## A065361.P13075143078900667390

`A289831(n)+A289813(A004488(n))`
-/

namespace A065361.P13075143078900667390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n + A289813 (A004488 n).toNat

end

end A065361.P13075143078900667390

namespace A065361

/-- `A289831(n)+A289813(A004488(n))` -/
def P13075143078900667390.Spec : Prop :=
  ∀ n, P13075143078900667390.a n = A065361 n

end A065361

/-! ## A065361.P748214606754402640

`A289831(A005836(A289831(n)+1)+n)`
-/

namespace A065361.P748214606754402640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A005836 (A289831 n + 1).toNat + (n : ℤ)).toNat

end

end A065361.P748214606754402640

namespace A065361

/-- `A289831(A005836(A289831(n)+1)+n)` -/
def P748214606754402640.Spec : Prop :=
  ∀ n, P748214606754402640.a n = A065361 n

end A065361

/-! ## A065361.P3376291863927299150

`A289814(A004488(n))+2*A289814(n)`
-/

namespace A065361.P3376291863927299150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A004488 n).toNat + 2 * A289814 n

end

end A065361.P3376291863927299150

namespace A065361

/-- `A289814(A004488(n))+2*A289814(n)` -/
def P3376291863927299150.Spec : Prop :=
  ∀ n, P3376291863927299150.a n = A065361 n

end A065361

/-! ## A065361.P11556858125175734123

`A289813(n)+2*A289813(A004488(n))`
-/

namespace A065361.P11556858125175734123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + 2 * A289813 (A004488 n).toNat

end

end A065361.P11556858125175734123

namespace A065361

/-- `A289813(n)+2*A289813(A004488(n))` -/
def P11556858125175734123.Spec : Prop :=
  ∀ n, P11556858125175734123.a n = A065361 n

end A065361

/-! ## A065361.P14686471712209112586

`A289814(A256293(n))+2*A289814(n)`
-/

namespace A065361.P14686471712209112586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A256293 n).toNat + 2 * A289814 n

end

end A065361.P14686471712209112586

namespace A065361

/-- `A289814(A256293(n))+2*A289814(n)` -/
def P14686471712209112586.Spec : Prop :=
  ∀ n, P14686471712209112586.a n = A065361 n

end A065361

/-! ## A065361.P5892575648763950735

`A289814(A244042(n)+n)+A289814(n)`
-/

namespace A065361.P5892575648763950735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A244042 n + (n : ℤ)).toNat + A289814 n

end

end A065361.P5892575648763950735

namespace A065361

/-- `A289814(A244042(n)+n)+A289814(n)` -/
def P5892575648763950735.Spec : Prop :=
  ∀ n, P5892575648763950735.a n = A065361 n

end A065361

/-! ## A065361.P6129021238092427905

`A289813(A004488(n)+n)-A289813(n)`
-/

namespace A065361.P6129021238092427905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A004488 n + (n : ℤ)).toNat - A289813 n

end

end A065361.P6129021238092427905

namespace A065361

/-- `A289813(A004488(n)+n)-A289813(n)` -/
def P6129021238092427905.Spec : Prop :=
  ∀ n, P6129021238092427905.a n = A065361 n

end A065361

/-! ## A065361.P5002080427320515881

`A289831(A004488(n))-(A289813(n)-A289831(n))`
-/

namespace A065361.P5002080427320515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A004488 n).toNat - (A289813 n - A289831 n)

end

end A065361.P5002080427320515881

namespace A065361

/-- `A289831(A004488(n))-(A289813(n)-A289831(n))` -/
def P5002080427320515881.Spec : Prop :=
  ∀ n, P5002080427320515881.a n = A065361 n

end A065361

/-! ## A065361.P15275203532618169572

`A343228(A374362(n)+n)`
-/

namespace A065361.P15275203532618169572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A374362 n + (n : ℤ)).toNat

end

end A065361.P15275203532618169572

namespace A065361

/-- `A343228(A374362(n)+n)` -/
def P15275203532618169572.Spec : Prop :=
  ∀ n, P15275203532618169572.a n = A065361 n

end A065361

/-!
# A065362: Rebase n from 4 to 2. Replace 4^k with 2^k in quaternary expansion of n.

The programs for A065362, there is no canonical definition to state claims against.
-/

/-! ## A065362.P3865486772724476051

`A059261(A163355(2*(n+1)))`
-/

namespace A065362.P3865486772724476051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163355 (2 * (n + 1))).toNat

end

end A065362.P3865486772724476051

/-! ## A065362.P3006371626326750189

`A393253(n+1)+A059906(n+1)`
-/

namespace A065362.P3006371626326750189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (n + 1) + A059906 (n + 1)

end

end A065362.P3006371626326750189

/-! ## A065362.P16358965577467338321

`A059905(n+1)+2*A059906(n+1)`
-/

namespace A065362.P16358965577467338321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (n + 1) + 2 * A059906 (n + 1)

end

end A065362.P16358965577467338321

/-! ## A065362.P627325379826393564

`A393253(n+1)+A393253(n+1)-A059905(n+1)`
-/

namespace A065362.P627325379826393564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (n + 1) + (A393253 (n + 1) - A059905 (n + 1))

end

end A065362.P627325379826393564

/-! ## A065362.P2776919288897555462

`A059906(n+1)+A371459(n+1)+A371442(n+1)`
-/

namespace A065362.P2776919288897555462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (n + 1) + (A371459 (n + 1) + A371442 (n + 1))

end

end A065362.P2776919288897555462

/-! ## A065362.P5254582070023057656

`A051162(A054239(n+1))`
-/

namespace A065362.P5254582070023057656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A054239 (n + 1)).toNat

end

end A065362.P5254582070023057656

/-! ## A065362.P4641629652765299607

`A393253(2*(n+1))`
-/

namespace A065362.P4641629652765299607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (2 * (n + 1))

end

end A065362.P4641629652765299607

/-! ## A065362.P9599556532221630624

`A393253(Δ[(n+1)²])-1`
-/

namespace A065362.P9599556532221630624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A065362.P9599556532221630624

/-! ## A065362.P12098357263985820367

`A059905(2*(n+1))+A059905(n+1)`
-/

namespace A065362.P12098357263985820367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (2 * (n + 1)) + A059905 (n + 1)

end

end A065362.P12098357263985820367

/-! ## A065362.P8180729226360879419

`A059906(A005843(n+1))+A005843(A059906(n+1))`
-/

namespace A065362.P8180729226360879419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A005843 (n + 1)).toNat + A005843 (A059906 (n + 1)).toNat

end

end A065362.P8180729226360879419

/-! ## A065362.P13011772769976443235

`A215088(A037459(n+1))`
-/

namespace A065362.P13011772769976443235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215088 (A037459 (n + 1)).toNat

end

end A065362.P13011772769976443235

/-! ## A065362.P474735675100340159

`A215088(A020654(n+2))`
-/

namespace A065362.P474735675100340159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215088 (A020654 (n + 2)).toNat

end

end A065362.P474735675100340159

/-! ## A065362.P14715269681134984118

`A215089(A037460(n+1))`
-/

namespace A065362.P14715269681134984118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215089 (A037460 (n + 1)).toNat

end

end A065362.P14715269681134984118

/-! ## A065362.P5666501032951082075

`A203580(A037461(n+1))`
-/

namespace A065362.P5666501032951082075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A037461 (n + 1)).toNat

end

end A065362.P5666501032951082075

/-! ## A065362.P17894607453749428295

`A028897(A007090(n+1))`
-/

namespace A065362.P17894607453749428295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A007090 (n + 1)).toNat

end

end A065362.P17894607453749428295

/-! ## A065362.P4611603797705497649

`A028897(record[A064770(n+1)])`
-/

namespace A065362.P4611603797705497649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065362.P4611603797705497649

/-!
# A065363: Sum of balanced ternary digits in n. Replace 3^k with 1 in balanced ternary expansion of n.

The programs for A065363, the canonical program `A065363.P10338292447349607337` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065363 has offset 0).

The definition of A065363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065363.P2166226583753135861

`A134024(n)-A134022(n)`
-/

namespace A065363.P2166226583753135861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n - A134022 n

end

end A065363.P2166226583753135861

namespace A065363

/-- `A134024(n)-A134022(n)` -/
def P2166226583753135861.Spec : Prop :=
  ∀ n, P2166226583753135861.a n = A065363 n

end A065363

/-! ## A065363.P10338292447349607337

`A053735(2*n)-A053735(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065363

/-- `A053735(2*n)-A053735(n)` -/
def P10338292447349607337.Spec : Prop :=
  ∀ n, P10338292447349607337.a n = A065363 n

theorem P10338292447349607337.correct : P10338292447349607337.Spec := by
  intro n
  simp only [A065363]

end A065363

/-! ## A065363.P13759419111449543685

`A350229(n)-n`
-/

namespace A065363.P13759419111449543685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 n - (n : ℤ)

end

end A065363.P13759419111449543685

namespace A065363

/-- `A350229(n)-n` -/
def P13759419111449543685.Spec : Prop :=
  ∀ n, P13759419111449543685.a n = A065363 n

end A065363

/-! ## A065363.P2563702210056276946

`n-∑[2*A253786(n)]`
-/

namespace A065363.P2563702210056276946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065363.P2563702210056276946

namespace A065363

/-- `n-∑[2*A253786(n)]` -/
def P2563702210056276946.Spec : Prop :=
  ∀ n, P2563702210056276946.a n = A065363 n

end A065363

/-! ## A065363.P14012073859312883912

`A089643(n)-A000989(n)`
-/

namespace A065363.P14012073859312883912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n - A000989 n

end

end A065363.P14012073859312883912

namespace A065363

/-- `A089643(n)-A000989(n)` -/
def P14012073859312883912.Spec : Prop :=
  ∀ n, P14012073859312883912.a n = A065363 n

end A065363

/-! ## A065363.P17235987733936295487

`∑{digits}[A140267(n), A140318(#)]`
-/

namespace A065363.P17235987733936295487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140318 x).sum

end

end A065363.P17235987733936295487

namespace A065363

/-- `∑{digits}[A140267(n), A140318(#)]` -/
def P17235987733936295487.Spec : Prop :=
  ∀ n, P17235987733936295487.a n = A065363 n

end A065363

/-! ## A065363.P13339186392709546784

`2*A134024(n)-A005812(n)`
-/

namespace A065363.P13339186392709546784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134024 n - A005812 n

end

end A065363.P13339186392709546784

namespace A065363

/-- `2*A134024(n)-A005812(n)` -/
def P13339186392709546784.Spec : Prop :=
  ∀ n, P13339186392709546784.a n = A065363 n

end A065363

/-! ## A065363.P12876522447919806216

`A005812(n)-2*A134022(n)`
-/

namespace A065363.P12876522447919806216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n - 2 * A134022 n

end

end A065363.P12876522447919806216

namespace A065363

/-- `A005812(n)-2*A134022(n)` -/
def P12876522447919806216.Spec : Prop :=
  ∀ n, P12876522447919806216.a n = A065363 n

end A065363

/-! ## A065363.P9801518285546606687

`∑{digits}[A140267(n), A140287(#+1)]`
-/

namespace A065363.P9801518285546606687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140287 (x + 1)).sum

end

end A065363.P9801518285546606687

namespace A065363

/-- `∑{digits}[A140267(n), A140287(#+1)]` -/
def P9801518285546606687.Spec : Prop :=
  ∀ n, P9801518285546606687.a n = A065363 n

end A065363

/-! ## A065363.P11495456804537440129

`∑{digits}[A140267(n), A140302(#+1)]`
-/

namespace A065363.P11495456804537440129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A140302 (x + 1)).sum

end

end A065363.P11495456804537440129

namespace A065363

/-- `∑{digits}[A140267(n), A140302(#+1)]` -/
def P11495456804537440129.Spec : Prop :=
  ∀ n, P11495456804537440129.a n = A065363 n

end A065363

/-! ## A065363.P15090970271709571117

`n-A005843(A127427(n)-n)`
-/

namespace A065363.P15090970271709571117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005843 (A127427 n - (n : ℤ)).toNat

end

end A065363.P15090970271709571117

namespace A065363

/-- `n-A005843(A127427(n)-n)` -/
def P15090970271709571117.Spec : Prop :=
  ∀ n, P15090970271709571117.a n = A065363 n

end A065363

/-! ## A065363.P7055030504526318562

`A174574(n)-A174574(A028310(n)-1)`
-/

namespace A065363.P7055030504526318562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 n - A174574 (A028310 n - 1).toNat

end

end A065363.P7055030504526318562

namespace A065363

/-- `A174574(n)-A174574(A028310(n)-1)` -/
def P7055030504526318562.Spec : Prop :=
  ∀ n, P7055030504526318562.a n = A065363 n

end A065363

/-! ## A065363.P12393774941939549523

`2*A005812(A060372(n))-A005812(n)`
-/

namespace A065363.P12393774941939549523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005812 (A060372 n).toNat - A005812 n

end

end A065363.P12393774941939549523

namespace A065363

/-- `2*A005812(A060372(n))-A005812(n)` -/
def P12393774941939549523.Spec : Prop :=
  ∀ n, P12393774941939549523.a n = A065363 n

end A065363

/-! ## A065363.P6953510170572334183

`A005812(n)-2*A005812(A060373(n))`
-/

namespace A065363.P6953510170572334183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n - 2 * A005812 (A060373 n).toNat

end

end A065363.P6953510170572334183

namespace A065363

/-- `A005812(n)-2*A005812(A060373(n))` -/
def P6953510170572334183.Spec : Prop :=
  ∀ n, P6953510170572334183.a n = A065363 n

end A065363

/-! ## A065363.P11598640990495248260

`A089643(n)+A089643(n)-A053735(n)`
-/

namespace A065363.P11598640990495248260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n + (A089643 n - A053735 n)

end

end A065363.P11598640990495248260

namespace A065363

/-- `A089643(n)+A089643(n)-A053735(n)` -/
def P11598640990495248260.Spec : Prop :=
  ∀ n, P11598640990495248260.a n = A065363 n

end A065363

/-! ## A065363.P1068546381515119792

`A053735(n)-A000989(n)-A000989(n)`
-/

namespace A065363.P1068546381515119792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A000989 n - A000989 n

end

end A065363.P1068546381515119792

namespace A065363

/-- `A053735(n)-A000989(n)-A000989(n)` -/
def P1068546381515119792.Spec : Prop :=
  ∀ n, P1068546381515119792.a n = A065363 n

end A065363

/-! ## A065363.P15746986420178459430

`A065359(A006288(n))`
-/

namespace A065363.P15746986420178459430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A006288 n).toNat

end

end A065363.P15746986420178459430

namespace A065363

/-- `A065359(A006288(n))` -/
def P15746986420178459430.Spec : Prop :=
  ∀ n, P15746986420178459430.a n = A065363 n

end A065363

/-! ## A065363.P14959687443466247205

`A096288(2*n)-A096288(n)`
-/

namespace A065363.P14959687443466247205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (2 * n) - A096288 n

end

end A065363.P14959687443466247205

namespace A065363

/-- `A096288(2*n)-A096288(n)` -/
def P14959687443466247205.Spec : Prop :=
  ∀ n, P14959687443466247205.a n = A065363 n

end A065363

/-! ## A065363.P6429571200088676954

`A180017(2*n)-A180017(n)`
-/

namespace A065363.P6429571200088676954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (2 * n) - A180017 n

end

end A065363.P6429571200088676954

namespace A065363

/-- `A180017(2*n)-A180017(n)` -/
def P6429571200088676954.Spec : Prop :=
  ∀ n, P6429571200088676954.a n = A065363 n

end A065363

/-! ## A065363.P10744362405941313850

`A230641(A005843(n))-(A230641(n)+n)`
-/

namespace A065363.P10744362405941313850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (A005843 n).toNat - (A230641 n + (n : ℤ))

end

end A065363.P10744362405941313850

namespace A065363

/-- `A230641(A005843(n))-(A230641(n)+n)` -/
def P10744362405941313850.Spec : Prop :=
  ∀ n, P10744362405941313850.a n = A065363 n

end A065363

/-!
# A065364: Alternating sum of balanced ternary digits in n. Replace 3^k with (-1)^k in balanced ternary expansion of n.

The programs for A065364, the canonical program `A065364.P12653479554998272928` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065364 has offset 1).

The definition of A065364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065364.P15730091239452414577

`∑[2-A089608(A064216(n+1))]`
-/

namespace A065364.P15730091239452414577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089608 (A064216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P15730091239452414577

namespace A065364

/-- `∑[2-A089608(A064216(n+1))]` -/
def P15730091239452414577.Spec : Prop :=
  ∀ n, P15730091239452414577.a n = A065364 (n + 1)

end A065364

/-! ## A065364.P12653479554998272928

`∑[A009001(A163746(A047789(n)))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065364

/-- `∑[A009001(A163746(A047789(n)))]` -/
def P12653479554998272928.Spec : Prop :=
  ∀ n, P12653479554998272928.a n = A065364 (n + 1)

theorem P12653479554998272928.correct : P12653479554998272928.Spec := by
  intro n
  simp only [A065364, Nat.add_sub_cancel]

end A065364

/-! ## A065364.P16350394127671322806

`∑[A138950(A038500(2*n+1))]`
-/

namespace A065364.P16350394127671322806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (A038500 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P16350394127671322806

namespace A065364

/-- `∑[A138950(A038500(2*n+1))]` -/
def P16350394127671322806.Spec : Prop :=
  ∀ n, P16350394127671322806.a n = A065364 (n + 1)

end A065364

/-! ## A065364.P3048958548349099894

`∑[A132429(A065331(2*n+1))]`
-/

namespace A065364.P3048958548349099894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (A065331 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P3048958548349099894

namespace A065364

/-- `∑[A132429(A065331(2*n+1))]` -/
def P3048958548349099894.Spec : Prop :=
  ∀ n, P3048958548349099894.a n = A065364 (n + 1)

end A065364

/-! ## A065364.P12661281231201404328

`A065368(2*n+1)-A065368(n)`
-/

namespace A065364.P12661281231201404328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065368 (2 * n + 1) - A065368 n

end

end A065364.P12661281231201404328

namespace A065364

/-- `A065368(2*n+1)-A065368(n)` -/
def P12661281231201404328.Spec : Prop :=
  ∀ n, P12661281231201404328.a n = A065364 (n + 1)

end A065364

/-! ## A065364.P795626977273502381

`∑[A138952(A038500(A005408(n)))]`
-/

namespace A065364.P795626977273502381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (A038500 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P795626977273502381

namespace A065364

/-- `∑[A138952(A038500(A005408(n)))]` -/
def P795626977273502381.Spec : Prop :=
  ∀ n, P795626977273502381.a n = A065364 (n + 1)

end A065364

/-! ## A065364.P11576804285926855146

`A195017(A101278(2*n+1))+A195017(A101278(3*n))`
-/

namespace A065364.P11576804285926855146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A101278 (2 * n + 1)).toNat + A195017 (A101278 (3 * n)).toNat

end

end A065364.P11576804285926855146

namespace A065364

/-- `A195017(A101278(2*n+1))+A195017(A101278(3*n))` -/
def P11576804285926855146.Spec : Prop :=
  ∀ n, P11576804285926855146.a n = A065364 (n + 1)

end A065364

/-!
# A065365: Replace 3^k with 2^k in balanced ternary expansion of n.

The programs for A065365, the canonical program `A065365.P7263896479732553066` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065365 has offset 1).

The definition of A065365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065365.P7263896479732553066

`∑[2-2^val(Δ[n²], 3)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065365

/-- `∑[2-2^val(Δ[n²], 3)]` -/
def P7263896479732553066.Spec : Prop :=
  ∀ n, P7263896479732553066.a n = A065365 (n + 1)

theorem P7263896479732553066.correct : P7263896479732553066.Spec := by
  intro n
  simp only [A065365, Nat.add_sub_cancel]

end A065365

/-! ## A065365.P15982575735648235894

`∑[2-A318666(2*n+1)]`
-/

namespace A065365.P15982575735648235894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A318666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065365.P15982575735648235894

namespace A065365

/-- `∑[2-A318666(2*n+1)]` -/
def P15982575735648235894.Spec : Prop :=
  ∀ n, P15982575735648235894.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P4674236123543663791

`∑[2-2^A253786(n+1)]`
-/

namespace A065365.P4674236123543663791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (2 : ℚ) ^ (A253786 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065365.P4674236123543663791

namespace A065365

/-- `∑[2-2^A253786(n+1)]` -/
def P4674236123543663791.Spec : Prop :=
  ∀ n, P4674236123543663791.a n = (A065365 (n + 1) : ℚ)

end A065365

/-! ## A065365.P7510531791473731477

`A289831(n+1-A060373(n+1))`
-/

namespace A065365.P7510531791473731477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 ((n + 1 : ℤ) - A060373 (n + 1)).toNat

end

end A065365.P7510531791473731477

namespace A065365

/-- `A289831(n+1-A060373(n+1))` -/
def P7510531791473731477.Spec : Prop :=
  ∀ n, P7510531791473731477.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P3989724521407057630

`∑[2-A061392(A047789(n))]`
-/

namespace A065365.P3989724521407057630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061392 (A047789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065365.P3989724521407057630

namespace A065365

/-- `∑[2-A061392(A047789(n))]` -/
def P3989724521407057630.Spec : Prop :=
  ∀ n, P3989724521407057630.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P9258965316326188692

`A343228(n+1)-A343229(n+1)`
-/

namespace A065365.P9258965316326188692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (n + 1) - A343229 (n + 1)

end

end A065365.P9258965316326188692

namespace A065365

/-- `A343228(n+1)-A343229(n+1)` -/
def P9258965316326188692.Spec : Prop :=
  ∀ n, P9258965316326188692.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P6274036294388171645

`A289813(A060372(n+1))-A343229(n+1)`
-/

namespace A065365.P6274036294388171645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A060372 (n + 1)).toNat - A343229 (n + 1)

end

end A065365.P6274036294388171645

namespace A065365

/-- `A289813(A060372(n+1))-A343229(n+1)` -/
def P6274036294388171645.Spec : Prop :=
  ∀ n, P6274036294388171645.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P16031887308913197465

`A343228(n+1)-A289813(A060373(n+1))`
-/

namespace A065365.P16031887308913197465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (n + 1) - A289813 (A060373 (n + 1)).toNat

end

end A065365.P16031887308913197465

namespace A065365

/-- `A343228(n+1)-A289813(A060373(n+1))` -/
def P16031887308913197465.Spec : Prop :=
  ∀ n, P16031887308913197465.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P11026872046927503211

`A343228(n+1)+A343228(n+1)-A343231(n+1)`
-/

namespace A065365.P11026872046927503211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (n + 1) + (A343228 (n + 1) - A343231 (n + 1))

end

end A065365.P11026872046927503211

namespace A065365

/-- `A343228(n+1)+A343228(n+1)-A343231(n+1)` -/
def P11026872046927503211.Spec : Prop :=
  ∀ n, P11026872046927503211.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P5668487593948744561

`A343231(n+1)-(A343229(n+1)+A343229(n+1))`
-/

namespace A065365.P5668487593948744561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (n + 1) - (A343229 (n + 1) + A343229 (n + 1))

end

end A065365.P5668487593948744561

namespace A065365

/-- `A343231(n+1)-(A343229(n+1)+A343229(n+1))` -/
def P5668487593948744561.Spec : Prop :=
  ∀ n, P5668487593948744561.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P11757013397291266967

`∑[2-2^A007949(2*n+1)]`
-/

namespace A065365.P11757013397291266967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (2 : ℚ) ^ (A007949 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065365.P11757013397291266967

namespace A065365

/-- `∑[2-2^A007949(2*n+1)]` -/
def P11757013397291266967.Spec : Prop :=
  ∀ n, P11757013397291266967.a n = (A065365 (n + 1) : ℚ)

end A065365

/-! ## A065365.P7834472288998575867

`A065361(2*n+1)-A065361(n)`
-/

namespace A065365.P7834472288998575867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (2 * n + 1) - A065361 n

end

end A065365.P7834472288998575867

namespace A065365

/-- `A065361(2*n+1)-A065361(n)` -/
def P7834472288998575867.Spec : Prop :=
  ∀ n, P7834472288998575867.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P5127827594832279743

`A328749(A117968(n+1))`
-/

namespace A065365.P5127827594832279743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A117968 (n + 1)).toNat

end

end A065365.P5127827594832279743

namespace A065365

/-- `A328749(A117968(n+1))` -/
def P5127827594832279743.Spec : Prop :=
  ∀ n, P5127827594832279743.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P12211204887927330252

`A328749(A157671(A338246(n+1)))`
-/

namespace A065365.P12211204887927330252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A157671 (A338246 (n + 1)).toNat).toNat

end

end A065365.P12211204887927330252

namespace A065365

/-- `A328749(A157671(A338246(n+1)))` -/
def P12211204887927330252.Spec : Prop :=
  ∀ n, P12211204887927330252.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P12464178934197594072

`A328749(A338247(n+1)+A132141(n+1))`
-/

namespace A065365.P12464178934197594072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A338247 (n + 1) + A132141 (n + 1)).toNat

end

end A065365.P12464178934197594072

namespace A065365

/-- `A328749(A338247(n+1)+A132141(n+1))` -/
def P12464178934197594072.Spec : Prop :=
  ∀ n, P12464178934197594072.a n = A065365 (n + 1)

end A065365

/-! ## A065365.P17087581306996628668

`A059905(A006288(n+1))`
-/

namespace A065365.P17087581306996628668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A006288 (n + 1)).toNat

end

end A065365.P17087581306996628668

namespace A065365

/-- `A059905(A006288(n+1))` -/
def P17087581306996628668.Spec : Prop :=
  ∀ n, P17087581306996628668.a n = A065365 (n + 1)

end A065365

/-!
# A065367: Replace 3^k with (-3)^k in balanced ternary expansion of n.

The programs for A065367, the canonical program `A065367.P971973594092129975` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065367 has offset 1).

The definition of A065367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065367.P971973594092129975

`A065369(Δ[n²])-A065369(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065367

/-- `A065369(Δ[n²])-A065369(n)` -/
def P971973594092129975.Spec : Prop :=
  ∀ n, P971973594092129975.a n = A065367 (n + 1)

theorem P971973594092129975.correct : P971973594092129975.Spec := by
  intro n
  simp only [A065367, Nat.add_sub_cancel]

end A065367

/-! ## A065367.P2875360266240420169

`∑[A065369(2*n+1)-A065369(2*n)]`
-/

namespace A065367.P2875360266240420169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (2 * n + 1) - A065369 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065367.P2875360266240420169

namespace A065367

/-- `∑[A065369(2*n+1)-A065369(2*n)]` -/
def P2875360266240420169.Spec : Prop :=
  ∀ n, P2875360266240420169.a n = A065367 (n + 1)

end A065367

/-! ## A065367.P2488346670571872479

`A065369(2*n+1)-2*A105186(n)+n`
-/

namespace A065367.P2488346670571872479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (2 * n + 1) - 2 * A105186 n + (n : ℤ)

end

end A065367.P2488346670571872479

namespace A065367

/-- `A065369(2*n+1)-2*A105186(n)+n` -/
def P2488346670571872479.Spec : Prop :=
  ∀ n, P2488346670571872479.a n = A065367 (n + 1)

end A065367

/-! ## A065367.P18259430123052918045

`A065369(A005408(n))-(2*A105186(n)-n)`
-/

namespace A065367.P18259430123052918045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A005408 n).toNat - (2 * A105186 n - (n : ℤ))

end

end A065367.P18259430123052918045

namespace A065367

/-- `A065369(A005408(n))-(2*A105186(n)-n)` -/
def P18259430123052918045.Spec : Prop :=
  ∀ n, P18259430123052918045.a n = A065367 (n + 1)

end A065367

/-! ## A065367.P8777672229532001073

`A065369(A005408(n))-(A005843(A105186(n))-n)`
-/

namespace A065367.P8777672229532001073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (A005408 n).toNat - (A005843 (A105186 n).toNat - (n : ℤ))

end

end A065367.P8777672229532001073

namespace A065367

/-- `A065369(A005408(n))-(A005843(A105186(n))-n)` -/
def P8777672229532001073.Spec : Prop :=
  ∀ n, P8777672229532001073.a n = A065367 (n + 1)

end A065367

/-!
# A065368: Alternating sum of ternary digits in n. Replace 3^k with (-1)^k in ternary expansion of n.

The programs for A065368, the canonical program `A065368.P9462335240614552270` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065368 has offset 0).

The definition of A065368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065368.P9462335240614552270

`n%3-a(floor(n/3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065368

/-- `n%3-a(floor(n/3))` -/
def P9462335240614552270.Spec : Prop :=
  ∀ n, P9462335240614552270.a n = A065368 n

theorem P9462335240614552270.correct : P9462335240614552270.Spec := by
  intro n
  simp only [A065368]

end A065368

/-! ## A065368.P8919590028700365799

`4*A051068(n)-3*n`
-/

namespace A065368.P8919590028700365799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051068 n - (3 * n : ℤ)

end

end A065368.P8919590028700365799

namespace A065368

/-- `4*A051068(n)-3*n` -/
def P8919590028700365799.Spec : Prop :=
  ∀ n, P8919590028700365799.a n = A065368 n

end A065368

/-! ## A065368.P15453736739263939145

`n-∑[(2*A163533(n))²]`
-/

namespace A065368.P15453736739263939145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A163533 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065368.P15453736739263939145

namespace A065368

/-- `n-∑[(2*A163533(n))²]` -/
def P15453736739263939145.Spec : Prop :=
  ∀ n, P15453736739263939145.a n = A065368 n

end A065368

/-! ## A065368.P11471439252456661978

`A010872(n)-a(floor(n/3))` with `a(0)=0`
-/

namespace A065368.P11471439252456661978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010872 n - a ⌊(n : ℚ) / 3⌋.toNat

end

end A065368.P11471439252456661978

namespace A065368

/-- `A010872(n)-a(floor(n/3))` -/
def P11471439252456661978.Spec : Prop :=
  ∀ n, P11471439252456661978.a n = A065368 n

end A065368

/-! ## A065368.P16077665107515209712

`A010882(n)-1-a(floor(n/3))` with `a(0)=0`
-/

namespace A065368.P16077665107515209712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010882 n - 1 - a ⌊(n : ℚ) / 3⌋.toNat

end

end A065368.P16077665107515209712

namespace A065368

/-- `A010882(n)-1-a(floor(n/3))` -/
def P16077665107515209712.Spec : Prop :=
  ∀ n, P16077665107515209712.a n = A065368 n

end A065368

/-! ## A065368.P10396429566823086888

`2*A053735(n)-A053830(n)`
-/

namespace A065368.P10396429566823086888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A053830 n

end

end A065368.P10396429566823086888

namespace A065368

/-- `2*A053735(n)-A053830(n)` -/
def P10396429566823086888.Spec : Prop :=
  ∀ n, P10396429566823086888.a n = A065368 n

end A065368

/-! ## A065368.P9913395006236898990

`A005843(A053735(n))-A053830(n)`
-/

namespace A065368.P9913395006236898990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053735 n).toNat - A053830 n

end

end A065368.P9913395006236898990

namespace A065368

/-- `A005843(A053735(n))-A053830(n)` -/
def P9913395006236898990.Spec : Prop :=
  ∀ n, P9913395006236898990.a n = A065368 n

end A065368

/-! ## A065368.P2276544191527606632

`(A053830(A008585(n))-A053830(n))/2`
-/

namespace A065368.P2276544191527606632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053830 (A008585 n).toNat - A053830 n : ℚ) / 2

end

end A065368.P2276544191527606632

namespace A065368

/-- `(A053830(A008585(n))-A053830(n))/2` -/
def P2276544191527606632.Spec : Prop :=
  ∀ n, P2276544191527606632.a n = (A065368 n : ℚ)

end A065368

/-! ## A065368.P8732104621197756575

`A173523(n+1)+A053735(n)-A173529(n+1)`
-/

namespace A065368.P8732104621197756575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + (A053735 n - A173529 (n + 1))

end

end A065368.P8732104621197756575

namespace A065368

/-- `A173523(n+1)+A053735(n)-A173529(n+1)` -/
def P8732104621197756575.Spec : Prop :=
  ∀ n, P8732104621197756575.a n = A065368 n

end A065368

/-! ## A065368.P15071443679351714202

`A053830(A008486(n))-A004277(A053735(n))`
-/

namespace A065368.P15071443679351714202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A008486 n).toNat - A004277 (A053735 n).toNat

end

end A065368.P15071443679351714202

namespace A065368

/-- `A053830(A008486(n))-A004277(A053735(n))` -/
def P15071443679351714202.Spec : Prop :=
  ∀ n, P15071443679351714202.a n = A065368 n

end A065368

/-! ## A065368.P6960912457163986365

`1-(a(floor(n/3))-(A011655(n)-A011655(n+1)))` with `a(0)=0`
-/

namespace A065368.P6960912457163986365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (a ⌊(n : ℚ) / 3⌋.toNat - (A011655 n - A011655 (n + 1)))

end

end A065368.P6960912457163986365

namespace A065368

/-- `1-(a(floor(n/3))-(A011655(n)-A011655(n+1)))` -/
def P6960912457163986365.Spec : Prop :=
  ∀ n, P6960912457163986365.a n = A065368 n

end A065368

/-! ## A065368.P17551451075929304636

`A346688(A023717(n))`
-/

namespace A065368.P17551451075929304636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (A023717 n).toNat

end

end A065368.P17551451075929304636

namespace A065368

/-- `A346688(A023717(n))` -/
def P17551451075929304636.Spec : Prop :=
  ∀ n, P17551451075929304636.a n = A065368 n

end A065368

/-! ## A065368.P1599772559420150658

`A346690(A037454(n))`
-/

namespace A065368.P1599772559420150658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (A037454 n).toNat

end

end A065368.P1599772559420150658

namespace A065368

/-- `A346690(A037454(n))` -/
def P1599772559420150658.Spec : Prop :=
  ∀ n, P1599772559420150658.a n = A065368 n

end A065368

/-! ## A065368.P15855523663600625000

`A346690(lt[A190595(n), 3])`
-/

namespace A065368.P15855523663600625000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065368.P15855523663600625000

namespace A065368

/-- `A346690(lt[A190595(n), 3])` -/
def P15855523663600625000.Spec : Prop :=
  ∀ n, P15855523663600625000.a n = A065368 n

end A065368

/-! ## A065368.P17837828467236265214

`A346691(A037455(n))`
-/

namespace A065368.P17837828467236265214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346691 (A037455 n).toNat

end

end A065368.P17837828467236265214

namespace A065368

/-- `A346691(A037455(n))` -/
def P17837828467236265214.Spec : Prop :=
  ∀ n, P17837828467236265214.a n = A065368 n

end A065368

/-! ## A065368.P2388218604382948213

`A346731(A037456(n))`
-/

namespace A065368.P2388218604382948213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 (A037456 n).toNat

end

end A065368.P2388218604382948213

namespace A065368

/-- `A346731(A037456(n))` -/
def P2388218604382948213.Spec : Prop :=
  ∀ n, P2388218604382948213.a n = A065368 n

end A065368

/-! ## A065368.P14146713997714417404

`A053830(2*A037314(n))-A053830(n)`
-/

namespace A065368.P14146713997714417404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (2 * A037314 n).toNat - A053830 n

end

end A065368.P14146713997714417404

namespace A065368

/-- `A053830(2*A037314(n))-A053830(n)` -/
def P14146713997714417404.Spec : Prop :=
  ∀ n, P14146713997714417404.a n = A065368 n

end A065368

/-! ## A065368.P1387454428821132480

`A053830(A338086(n)/2)-A053830(n)`
-/

namespace A065368.P1387454428821132480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (SequenceMachineLib.roundAway ((A338086 n : ℚ) / 2)).toNat - A053830 n

end

end A065368.P1387454428821132480

namespace A065368

/-- `A053830(A338086(n)/2)-A053830(n)` -/
def P1387454428821132480.Spec : Prop :=
  ∀ n, P1387454428821132480.a n = A065368 n

end A065368

/-! ## A065368.P4546499595179371274

`A346732(A037314(n))`
-/

namespace A065368.P4546499595179371274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037314 n).toNat

end

end A065368.P4546499595179371274

namespace A065368

/-- `A346732(A037314(n))` -/
def P4546499595179371274.Spec : Prop :=
  ∀ n, P4546499595179371274.a n = A065368 n

end A065368

/-! ## A065368.P3713589318985851737

`A195017(A101278(n))`
-/

namespace A065368.P3713589318985851737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A101278 n).toNat

end

end A065368.P3713589318985851737

namespace A065368

/-- `A195017(A101278(n))` -/
def P3713589318985851737.Spec : Prop :=
  ∀ n, P3713589318985851737.a n = A065368 n

end A065368

/-!
# A065369: Replace 3^k with (-3)^k in ternary expansion of n.

The programs for A065369, the canonical program `A065369.P17665126162398518660` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065369 has offset 0).

The definition of A065369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065369.P17665126162398518660

`2*A105186(n)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065369

/-- `2*A105186(n)-n` -/
def P17665126162398518660.Spec : Prop :=
  ∀ n, P17665126162398518660.a n = A065369 n

theorem P17665126162398518660.correct : P17665126162398518660.Spec := by
  intro n
  simp only [A065369]

end A065369

/-! ## A065369.P11974854475815339725

`A005843(A105186(n))-n`
-/

namespace A065369.P11974854475815339725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A105186 n).toNat - (n : ℤ)

end

end A065369.P11974854475815339725

namespace A065369

/-- `A005843(A105186(n))-n` -/
def P11974854475815339725.Spec : Prop :=
  ∀ n, P11974854475815339725.a n = A065369 n

end A065369

/-! ## A065369.P15134570610821096744

`n-(A005408(n)-A005408(A105186(n)))`
-/

namespace A065369.P15134570610821096744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005408 n - A005408 (A105186 n).toNat)

end

end A065369.P15134570610821096744

namespace A065369

/-- `n-(A005408(n)-A005408(A105186(n)))` -/
def P15134570610821096744.Spec : Prop :=
  ∀ n, P15134570610821096744.a n = A065369 n

end A065369

/-! ## A065369.P9776151038854614759

`A105186(A028310(n))+A105186(n)-A028310(n)`
-/

namespace A065369.P9776151038854614759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 (A028310 n).toNat + (A105186 n - A028310 n)

end

end A065369.P9776151038854614759

namespace A065369

/-- `A105186(A028310(n))+A105186(n)-A028310(n)` -/
def P9776151038854614759.Spec : Prop :=
  ∀ n, P9776151038854614759.a n = A065369 n

end A065369

/-! ## A065369.P9231597802426048904

`A105186(n)+A117571(A105186(n))-A117571(n)`
-/

namespace A065369.P9231597802426048904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n + (A117571 (A105186 n).toNat - A117571 n)

end

end A065369.P9231597802426048904

namespace A065369

/-- `A105186(n)+A117571(A105186(n))-A117571(n)` -/
def P9231597802426048904.Spec : Prop :=
  ∀ n, P9231597802426048904.a n = A065369 n

end A065369

/-! ## A065369.P12906834617355328382

`A105186(n)+A105186(n)-A163332(A163332(n))`
-/

namespace A065369.P12906834617355328382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n + (A105186 n - A163332 (A163332 n).toNat)

end

end A065369.P12906834617355328382

namespace A065369

/-- `A105186(n)+A105186(n)-A163332(A163332(n))` -/
def P12906834617355328382.Spec : Prop :=
  ∀ n, P12906834617355328382.a n = A065369 n

end A065369

/-! ## A065369.P9371363410358906536

`A105186(n)+A105186(n)-A222254(A222254(n))`
-/

namespace A065369.P9371363410358906536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n + (A105186 n - A222254 (A222254 n).toNat)

end

end A065369.P9371363410358906536

namespace A065369

/-- `A105186(n)+A105186(n)-A222254(A222254(n))` -/
def P9371363410358906536.Spec : Prop :=
  ∀ n, P9371363410358906536.a n = A065369 n

end A065369

/-! ## A065369.P1871042590707421515

`A105186(n)+A330396(A105186(n))-A330396(n)`
-/

namespace A065369.P1871042590707421515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n + (A330396 (A105186 n).toNat - A330396 n)

end

end A065369.P1871042590707421515

namespace A065369

/-- `A105186(n)+A330396(A105186(n))-A330396(n)` -/
def P1871042590707421515.Spec : Prop :=
  ∀ n, P1871042590707421515.a n = A065369 n

end A065369

/-! ## A065369.P9560463539479516137

`A105186(n)+A105186(n)-A163327(A163327(n))`
-/

namespace A065369.P9560463539479516137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n + (A105186 n - A163327 (A163327 n).toNat)

end

end A065369.P9560463539479516137

namespace A065369

/-- `A105186(n)+A105186(n)-A163327(A163327(n))` -/
def P9560463539479516137.Spec : Prop :=
  ∀ n, P9560463539479516137.a n = A065369 n

end A065369

/-! ## A065369.P7832660474954228625

`2*A037314(A002262(A163331(n)))-n`
-/

namespace A065369.P7832660474954228625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037314 (A002262 (A163331 n).toNat).toNat - (n : ℤ)

end

end A065369.P7832660474954228625

namespace A065369

/-- `2*A037314(A002262(A163331(n)))-n` -/
def P7832660474954228625.Spec : Prop :=
  ∀ n, P7832660474954228625.a n = A065369 n

end A065369

/-! ## A065369.P8472822171685139163

`A163327(n)-(A002265(A163327(n)+n)+n)`
-/

namespace A065369.P8472822171685139163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n - (A002265 (A163327 n + (n : ℤ)).toNat + (n : ℤ))

end

end A065369.P8472822171685139163

namespace A065369

/-- `A163327(n)-(A002265(A163327(n)+n)+n)` -/
def P8472822171685139163.Spec : Prop :=
  ∀ n, P8472822171685139163.a n = A065369 n

end A065369

/-!
# A065370: The next smallest pair of numbers is taken so that a(2n-1)/a(2n) converges to e = exp(1).

The programs for A065370, there is no canonical definition to state claims against.
-/

/-! ## A065370.P4789701392116061236

`A172263(A077896(n)+A003269(n))`
-/

namespace A065370.P4789701392116061236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A077896 n + A003269 n).toNat

end

end A065370.P4789701392116061236

/-! ## A065370.P10219011827331723067

`A235492(A292225(n+1)+A077896(n))`
-/

namespace A065370.P10219011827331723067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A292225 (n + 1) + A077896 n).toNat

end

end A065370.P10219011827331723067

/-!
# A065371: a(1) = 1, a(prime(i)) = prime(i) - i for i > 0 and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A065371, the canonical program `A065371.P2462499187440685859` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065371 has offset 1).

The definition of A065371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065371.P2462499187440685859

`∏{d}[n+1, A062298(A014963(#))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065371

/-- `∏{d}[n+1, A062298(A014963(#))]` -/
def P2462499187440685859.Spec : Prop :=
  ∀ n, P2462499187440685859.a n = A065371 (n + 1)

theorem P2462499187440685859.correct : P2462499187440685859.Spec := by
  intro n
  simp only [A065371, Nat.add_sub_cancel]

end A065371

/-! ## A065371.P2158477856201891423

`∏{d}[A000265(n+1), A048864(A014963(#))]`
-/

namespace A065371.P2158477856201891423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A048864 (A014963 d).toNat

end

end A065371.P2158477856201891423

namespace A065371

/-- `∏{d}[A000265(n+1), A048864(A014963(#))]` -/
def P2158477856201891423.Spec : Prop :=
  ∀ n, P2158477856201891423.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P18416376111426961936

`∏{d}[n+1, A048864(A014963(#²))]`
-/

namespace A065371.P18416376111426961936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A048864 (A014963 (d ^ 2)).toNat

end

end A065371.P18416376111426961936

namespace A065371

/-- `∏{d}[n+1, A048864(A014963(#²))]` -/
def P18416376111426961936.Spec : Prop :=
  ∀ n, P18416376111426961936.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P6553110450027667638

`∏{e}[A181821(n+1), A014689(#)]`
-/

namespace A065371.P6553110450027667638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014689 (Nat.factorization (f1 n).natAbs p)

end

end A065371.P6553110450027667638

namespace A065371

/-- `∏{e}[A181821(n+1), A014689(#)]` -/
def P6553110450027667638.Spec : Prop :=
  ∀ n, P6553110450027667638.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P9449180151335601943

`∏{e}[A181821(n+1), A000040(#)-#]`
-/

namespace A065371.P9449180151335601943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000040 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A065371.P9449180151335601943

namespace A065371

/-- `∏{e}[A181821(n+1), A000040(#)-#]` -/
def P9449180151335601943.Spec : Prop :=
  ∀ n, P9449180151335601943.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P17564591897355423948

`∏{e}[A181821(n+1), A030291(#)-#]`
-/

namespace A065371.P17564591897355423948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A030291 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A065371.P17564591897355423948

namespace A065371

/-- `∏{e}[A181821(n+1), A030291(#)-#]` -/
def P17564591897355423948.Spec : Prop :=
  ∀ n, P17564591897355423948.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P10415202226729301293

`∏{e}[A181821(n+1), A095285(#)-#]`
-/

namespace A065371.P10415202226729301293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A095285 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A065371.P10415202226729301293

namespace A065371

/-- `∏{e}[A181821(n+1), A095285(#)-#]` -/
def P10415202226729301293.Spec : Prop :=
  ∀ n, P10415202226729301293.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P8924896788529320093

`∏{e}[A181821(n+1), A095313(#)-#]`
-/

namespace A065371.P8924896788529320093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A095313 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A065371.P8924896788529320093

namespace A065371

/-- `∏{e}[A181821(n+1), A095313(#)-#]` -/
def P8924896788529320093.Spec : Prop :=
  ∀ n, P8924896788529320093.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P14199350745456159371

`∏{e}[A181821(n+1), A216883(#)-#]`
-/

namespace A065371.P14199350745456159371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A216883 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A065371.P14199350745456159371

namespace A065371

/-- `∏{e}[A181821(n+1), A216883(#)-#]` -/
def P14199350745456159371.Spec : Prop :=
  ∀ n, P14199350745456159371.a n = A065371 (n + 1)

end A065371

/-! ## A065371.P16940095714685691801

`∏{e}[A181821(n+1), A102614(A000040(#))]`
-/

namespace A065371.P16940095714685691801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A102614 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A065371.P16940095714685691801

namespace A065371

/-- `∏{e}[A181821(n+1), A102614(A000040(#))]` -/
def P16940095714685691801.Spec : Prop :=
  ∀ n, P16940095714685691801.a n = A065371 (n + 1)

end A065371

/-!
# A065372: a(n) = A065371(A065371(n)).

The programs for A065372, the canonical program `A065372.P6024978409983988564` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065372 has offset 1).

The definition of A065372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065372.P6024978409983988564

`A065371(A065371(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065372

/-- `A065371(A065371(n+1))` -/
def P6024978409983988564.Spec : Prop :=
  ∀ n, P6024978409983988564.a n = A065372 (n + 1)

theorem P6024978409983988564.correct : P6024978409983988564.Spec := by
  intro n
  simp only [A065372, Nat.add_sub_cancel]

end A065372

/-! ## A065372.P7800345966801529774

`A075158(A007305(A075158(A120250(A120250(n+1)))))`
-/

namespace A065372.P7800345966801529774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A007305 (A075158 (A120250 (A120250 (n + 1)).toNat).toNat).toNat).toNat

end

end A065372.P7800345966801529774

namespace A065372

/-- `A075158(A007305(A075158(A120250(A120250(n+1)))))` -/
def P7800345966801529774.Spec : Prop :=
  ∀ n, P7800345966801529774.a n = A065372 (n + 1)

end A065372

/-!
# A065373: Number of iterations of A065371 starting at n until 1 is reached.

The programs for A065373, the canonical program `A065373.P8556550290844581984` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065373 has offset 1).

The definition of A065373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065373.P8556550290844581984

`a(A065371(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065373

/-- `a(A065371(n+1)-1)+1` -/
def P8556550290844581984.Spec : Prop :=
  ∀ n, (P8556550290844581984.a n : ℤ) = A065373 (n + 1)

theorem P8556550290844581984.correct : P8556550290844581984.Spec := by
  intro n
  simp only [A065373, Nat.add_sub_cancel]

end A065373

/-! ## A065373.P6090695390004336432

`∑{e}[A090847(A006530(n+1)), A003958(#)]`
-/

namespace A065373.P6090695390004336432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090847 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003958 (Nat.factorization (f1 n).natAbs p)

end

end A065373.P6090695390004336432

namespace A065373

/-- `∑{e}[A090847(A006530(n+1)), A003958(#)]` -/
def P6090695390004336432.Spec : Prop :=
  ∀ n, P6090695390004336432.a n = A065373 (n + 1)

end A065373

/-! ## A065373.P11183028973962340348

`A033265(A117366(n+1))%A254008(n+1)`
-/

namespace A065373.P11183028973962340348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033265 (A117366 (n + 1)).toNat) (A254008 (n + 1))

end

end A065373.P11183028973962340348

namespace A065373

/-- `A033265(A117366(n+1))%A254008(n+1)` -/
def P11183028973962340348.Spec : Prop :=
  ∀ n, P11183028973962340348.a n = A065373 (n + 1)

end A065373

/-! ## A065373.P4143284672961585741

`∑{p}[A186431(A061395(n+1)), A001221(#)]`
-/

namespace A065373.P4143284672961585741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186431 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A065373.P4143284672961585741

namespace A065373

/-- `∑{p}[A186431(A061395(n+1)), A001221(#)]` -/
def P4143284672961585741.Spec : Prop :=
  ∀ n, P4143284672961585741.a n = A065373 (n + 1)

end A065373

/-! ## A065373.P8198270877110733486

`∑{p}[A186431(A061395(n+1)), A080304(#)]`
-/

namespace A065373.P8198270877110733486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186431 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A080304 p

end

end A065373.P8198270877110733486

namespace A065373

/-- `∑{p}[A186431(A061395(n+1)), A080304(#)]` -/
def P8198270877110733486.Spec : Prop :=
  ∀ n, P8198270877110733486.a n = A065373 (n + 1)

end A065373

/-!
# A065374: Smallest k such that f(f(...f(k))) > 1, where f(k) = A065371(k) is iterated n times.

The programs for A065374, there is no canonical definition to state claims against.
-/

/-! ## A065374.P13822147520935198778

`record[p?[A258025(A219915(n+1))]]`
-/

namespace A065374.P13822147520935198778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (A219915 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065374.P13822147520935198778

/-! ## A065374.P14960928025479324298

`A291284(A015891(n+1)+A000005(n+1))`
-/

namespace A065374.P14960928025479324298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A015891 (n + 1) + A000005 (n + 1)).toNat

end

end A065374.P14960928025479324298

/-!
# A065376: Primes of the form p + k^2, p prime and k > 0.

The programs for A065376, there is no canonical definition to state claims against.
-/

/-! ## A065376.P12498864025117806031

`p?[A058654(n+1)]`
-/

namespace A065376.P12498864025117806031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065376.P12498864025117806031

/-! ## A065376.P14129077941558621947

`p?[comp[A064233(n+1)]]`
-/

namespace A065376.P14129077941558621947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065376.P14129077941558621947

/-! ## A065376.P16099264458271550193

`record[A006530(A058654(n+3))]`
-/

namespace A065376.P16099264458271550193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A058654 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065376.P16099264458271550193

/-! ## A065376.P12571949032964860187

`p?[lt[A317683(n), A317682(n)]]`
-/

namespace A065376.P12571949032964860187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065376.P12571949032964860187

/-! ## A065376.P2567832318595586118

`filter[A058654(n+1), A010051(#)]`
-/

namespace A065376.P2567832318595586118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065376.P2567832318595586118

/-! ## A065376.P2567249747413107026

`∩[A000040(n+1), A058654(n+1)]`
-/

namespace A065376.P2567249747413107026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P2567249747413107026

/-! ## A065376.P1033585916764623702

`∩[A004139(n+1), A058654(n+1)]`
-/

namespace A065376.P1033585916764623702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P1033585916764623702

/-! ## A065376.P2476082708545055145

`∩[A006005(n+1), A058654(n+1)]`
-/

namespace A065376.P2476082708545055145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P2476082708545055145

/-! ## A065376.P8575555614753100340

`∩[A008578(n+1), A058654(n+1)]`
-/

namespace A065376.P8575555614753100340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P8575555614753100340

/-! ## A065376.P16723502489175177037

`∩[A045319(n+1), A058654(n+1)]`
-/

namespace A065376.P16723502489175177037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P16723502489175177037

/-! ## A065376.P15188894818820395966

`∩[A058654(n+1), A065091(n+1)]`
-/

namespace A065376.P15188894818820395966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P15188894818820395966

/-! ## A065376.P13812407941045754750

`∩[A058654(n+1), A158611(n+1)]`
-/

namespace A065376.P13812407941045754750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P13812407941045754750

/-! ## A065376.P9985817083616194039

`∩[A058654(n+1), A182986(n+1)]`
-/

namespace A065376.P9985817083616194039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P9985817083616194039

/-! ## A065376.P17665015393545572872

`filter[A058654(n+1), A080339(#)]`
-/

namespace A065376.P17665015393545572872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A065376.P17665015393545572872

/-! ## A065376.P6231950384419263840

`filter[A058654(n+1), A080545(#)]`
-/

namespace A065376.P6231950384419263840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A065376.P6231950384419263840

/-! ## A065376.P1656534188016629413

`p?[A157928(A283183(n+1))+n]`
-/

namespace A065376.P1656534188016629413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A283183 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065376.P1656534188016629413

/-! ## A065376.P14924068115447793800

`p?[comp[A065377(n+1)]]`
-/

namespace A065376.P14924068115447793800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065377 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065376.P14924068115447793800

/-! ## A065376.P1690606034535056173

`∩[A058654(n+1), A372059(n+1)]`
-/

namespace A065376.P1690606034535056173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065376.P1690606034535056173

/-!
# A065377: Primes not of the form p + k^2, with p prime and k > 0.

The programs for A065377, there is no canonical definition to state claims against.
-/

/-! ## A065377.P11024793292021827236

`p?[A064233(n+1)]`
-/

namespace A065377.P11024793292021827236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065377.P11024793292021827236

/-! ## A065377.P7936306178844844625

`p?[A143989(n+1)]`
-/

namespace A065377.P7936306178844844625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065377.P7936306178844844625

/-! ## A065377.P4828294754831644833

`eq[1, A283183(n+1)]+1`
-/

namespace A065377.P4828294754831644833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065377.P4828294754831644833

/-! ## A065377.P17840504218187234519

`record[A006530(A064233(n+2))]`
-/

namespace A065377.P17840504218187234519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064233 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065377.P17840504218187234519

/-! ## A065377.P14086178976395814325

`record[A020639(A143989(n+2))]`
-/

namespace A065377.P14086178976395814325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143989 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065377.P14086178976395814325

/-!
# A065378: Primes p such that p^2 is a palindromic square.

The programs for A065378, there is no canonical definition to state claims against.
-/

/-! ## A065378.P8693583652972756178

`sqrt(A065379(n+1))`
-/

namespace A065378.P8693583652972756178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065379 (n + 1) : ℝ)

end

end A065378.P8693583652972756178

/-! ## A065378.P3447471191705232253

`root(A065379(n+1), A040001((n+2)!))`
-/

namespace A065378.P3447471191705232253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065379 (n + 1) : ℝ) ^ (1 / (A040001 (Nat.factorial (n + 2)) : ℝ))

end

end A065378.P3447471191705232253

/-!
# A065379: Palindromic squares with a prime root.

The programs for A065379, there is no canonical definition to state claims against.
-/

/-! ## A065379.P11313348524491023433

`A065378(n+1)²`
-/

namespace A065379.P11313348524491023433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065378 (n + 1) ^ 2

end

end A065379.P11313348524491023433

/-!
# A065380: Primes of the form p + 2^k, p prime and k >= 0.

The programs for A065380, there is no canonical definition to state claims against.
-/

/-! ## A065380.P9770583420540756734

`p?[A118955(n+1)]`
-/

namespace A065380.P9770583420540756734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065380.P9770583420540756734

/-! ## A065380.P11868937731829981707

`record[A006530(2*A118955(n+1))]`
-/

namespace A065380.P11868937731829981707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A118955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065380.P11868937731829981707

/-! ## A065380.P3082588669851438386

`record[A006530(lcm(2, A118955(n+1)))]`
-/

namespace A065380.P3082588669851438386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A118955 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065380.P3082588669851438386

/-! ## A065380.P12764627586693246665

`record[A006530(or(1, A118955(n+1)))]`
-/

namespace A065380.P12764627586693246665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A118955 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065380.P12764627586693246665

/-! ## A065380.P15479451876070163061

`∩[A000040(n+1), A118955(n+1)]`
-/

namespace A065380.P15479451876070163061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P15479451876070163061

/-! ## A065380.P979814712488574240

`∩[A006005(n+1), A118955(n+1)]`
-/

namespace A065380.P979814712488574240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P979814712488574240

/-! ## A065380.P4723116441438619150

`∩[A008578(n+1), A118955(n+1)]`
-/

namespace A065380.P4723116441438619150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P4723116441438619150

/-! ## A065380.P17057922174318198872

`∩[A065091(n+1), A118955(n+1)]`
-/

namespace A065380.P17057922174318198872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P17057922174318198872

/-! ## A065380.P7207827488577446002

`∩[A118955(n+1), A158611(n+1)]`
-/

namespace A065380.P7207827488577446002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P7207827488577446002

/-! ## A065380.P10996736030699109343

`∩[A118955(n+1), A182986(n+1)]`
-/

namespace A065380.P10996736030699109343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065380.P10996736030699109343

/-! ## A065380.P4223135530954607597

`p?[A198277(A109925(n+1))%2+n]`
-/

namespace A065380.P4223135530954607597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A109925 (n + 1)).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065380.P4223135530954607597

/-! ## A065380.P12584675663095943839

`A014963(record[A014963(A118955(n+1))])`
-/

namespace A065380.P12584675663095943839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065380.P12584675663095943839

/-! ## A065380.P2682777934190797065

`record[A000010(A218044(n+1))+1]`
-/

namespace A065380.P2682777934190797065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A218044 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065380.P2682777934190797065

/-!
# A065381: Primes not of the form p + 2^k, p prime and k >= 0.

The programs for A065381, there is no canonical definition to state claims against.
-/

/-! ## A065381.P8548242447085084643

`p?[A006286(n+1)-1]`
-/

namespace A065381.P8548242447085084643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006286 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065381.P8548242447085084643

/-! ## A065381.P10909732776477623160

`record[(1-A078687(n+1))*A000040(n+1)]`
-/

namespace A065381.P10909732776477623160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A078687 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065381.P10909732776477623160

/-! ## A065381.P7736980748926679458

`record[A006530(2*A006285(n+1))]`
-/

namespace A065381.P7736980748926679458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065381.P7736980748926679458

/-! ## A065381.P10641302366035659205

`record[A006530(A006285(n+1)+A006285(n+1))]`
-/

namespace A065381.P10641302366035659205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006285 (n + 1) + A006285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065381.P10641302366035659205

/-! ## A065381.P17170755018892619209

`p?[A118954(n+1)]`
-/

namespace A065381.P17170755018892619209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065381.P17170755018892619209

/-! ## A065381.P6177361888272561970

`record[A020639(A118954(n+2))]`
-/

namespace A065381.P6177361888272561970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118954 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065381.P6177361888272561970

/-! ## A065381.P4259254544715307481

`∩[A000040(n+1), A118954(n+1)]`
-/

namespace A065381.P4259254544715307481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P4259254544715307481

/-! ## A065381.P8140617491547199497

`∩[A000430(n+1), A118954(n+1)]`
-/

namespace A065381.P8140617491547199497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P8140617491547199497

/-! ## A065381.P9674367588141074417

`∩[A025584(n+1), A118954(n+1)]`
-/

namespace A065381.P9674367588141074417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P9674367588141074417

/-! ## A065381.P6722680461276377580

`∩[A045319(n+1), A118954(n+1)]`
-/

namespace A065381.P6722680461276377580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P6722680461276377580

/-! ## A065381.P3832627865278964316

`∩[A045344(n+1), A118954(n+1)]`
-/

namespace A065381.P3832627865278964316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P3832627865278964316

/-! ## A065381.P15317536350477628473

`∩[A079603(n+1), A118954(n+1)]`
-/

namespace A065381.P15317536350477628473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P15317536350477628473

/-! ## A065381.P13145130848957982551

`∩[A093515(n+1), A118954(n+1)]`
-/

namespace A065381.P13145130848957982551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P13145130848957982551

/-! ## A065381.P18328912085303356978

`∩[A116974(n+1), A118954(n+1)]`
-/

namespace A065381.P18328912085303356978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P18328912085303356978

/-! ## A065381.P12547869178388809898

`∩[A118954(n+1), A189710(n+1)]`
-/

namespace A065381.P12547869178388809898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065381.P12547869178388809898

/-! ## A065381.P8529719902658511534

`p?[(A109925(n+1)+1)*(n+1)]`
-/

namespace A065381.P8529719902658511534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109925 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065381.P8529719902658511534

/-!
# A065382: Number of primes between n(n+1)/2 (exclusive) and (n+1)(n+2)/2 (inclusive).

The programs for A065382, there is no canonical definition to state claims against.
-/

/-! ## A065382.P4238722406630869269

`A066888(n+1)`
-/

namespace A065382.P4238722406630869269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (n + 1)

end

end A065382.P4238722406630869269

/-! ## A065382.P13585568114723755103

`A282518(A181440(n+1))`
-/

namespace A065382.P13585568114723755103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (A181440 (n + 1)).toNat

end

end A065382.P13585568114723755103

/-! ## A065382.P9631781590386679656

`A282518(A348776(n+1))`
-/

namespace A065382.P9631781590386679656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282518 (A348776 (n + 1)).toNat

end

end A065382.P9631781590386679656

/-! ## A065382.P551410469210920814

`A090970(A054977(n)²+n)`
-/

namespace A065382.P551410469210920814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A065382.P551410469210920814

/-! ## A065382.P8512822946553336846

`A090970(n+1)+A000007(n)`
-/

namespace A065382.P8512822946553336846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (n + 1) + A000007 n

end

end A065382.P8512822946553336846

/-! ## A065382.P4128572015542901720

`A054977(n)*A090970(n+1)`
-/

namespace A065382.P4128572015542901720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A090970 (n + 1)

end

end A065382.P4128572015542901720

/-! ## A065382.P10272589090937472648

`A090970(n+1)+A144845(n)%2`
-/

namespace A065382.P10272589090937472648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (n + 1) + Int.tmod (A144845 n) 2

end

end A065382.P10272589090937472648

/-! ## A065382.P13936203897447453935

`Δ[A111208(n+1)]`
-/

namespace A065382.P13936203897447453935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065382.P13936203897447453935

/-! ## A065382.P14003960401849073459

`A111208(n+2)-A111208(n+1)`
-/

namespace A065382.P14003960401849073459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (n + 2) - A111208 (n + 1)

end

end A065382.P14003960401849073459

/-! ## A065382.P16782338160994580691

`A014085(n+1)+A194189(n+1)-A194189(n+2)`
-/

namespace A065382.P16782338160994580691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1) + (A194189 (n + 1) - A194189 (n + 2))

end

end A065382.P16782338160994580691

/-! ## A065382.P5321596480818784215

`A014963(2*A008486(n))*A090970(n+1)`
-/

namespace A065382.P5321596480818784215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A008486 n).toNat * A090970 (n + 1)

end

end A065382.P5321596480818784215

/-! ## A065382.P10200713653724737481

`A090970(A214710(3*n+1)²+n)`
-/

namespace A065382.P10200713653724737481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090970 (A214710 (3 * n + 1) ^ 2 + (n : ℤ)).toNat

end

end A065382.P10200713653724737481

/-! ## A065382.P10329725275877844620

`Δ[A000720(∑[n+1])]`
-/

namespace A065382.P10329725275877844620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065382.P10329725275877844620

/-! ## A065382.P15634370021428425371

`Δ[A036234(∑[n+1])]`
-/

namespace A065382.P15634370021428425371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065382.P15634370021428425371

/-! ## A065382.P1652057814738094645

`Δ[A230980(∑[n+1])]`
-/

namespace A065382.P1652057814738094645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065382.P1652057814738094645

/-! ## A065382.P2046261628414827175

`Δ[A033270(A097050(n+1))]`
-/

namespace A065382.P2046261628414827175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A097050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065382.P2046261628414827175

/-!
# A065383: a(n) = smallest prime >= n*(n + 1)/2.

The programs for A065383, the canonical program `A065383.P2629360467203917195` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065383 has offset 0).

The definition of A065383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065383.P2629360467203917195

`A151800(and(∑[n], -2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065383

/-- `A151800(and(∑[n], -2))` -/
def P2629360467203917195.Spec : Prop :=
  ∀ n, P2629360467203917195.a n = A065383 n

theorem P2629360467203917195.correct : P2629360467203917195.Spec := by
  intro n
  simp only [A065383]

end A065383

/-! ## A065383.P8870979755865158660

`A151800(abs(1-∑[n]))`
-/

namespace A065383.P8870979755865158660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A065383.P8870979755865158660

namespace A065383

/-- `A151800(abs(1-∑[n]))` -/
def P8870979755865158660.Spec : Prop :=
  ∀ n, P8870979755865158660.a n = A065383 n

end A065383

/-! ## A065383.P14564180807513574654

`p?[A151800(A215098(n))]`
-/

namespace A065383.P14564180807513574654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A215098 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065383.P14564180807513574654

namespace A065383

/-- `p?[A151800(A215098(n))]` -/
def P14564180807513574654.Spec : Prop :=
  ∀ n, P14564180807513574654.a n = A065383 n

end A065383

/-! ## A065383.P8058173295484485344

`p?[A151800(∑[A201629(n)])]`
-/

namespace A065383.P8058173295484485344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065383.P8058173295484485344

namespace A065383

/-- `p?[A151800(∑[A201629(n)])]` -/
def P8058173295484485344.Spec : Prop :=
  ∀ n, P8058173295484485344.a n = A065383 n

end A065383

/-! ## A065383.P432966029062150586

`p?[A151800(A179865(n+1)-1)]`
-/

namespace A065383.P432966029062150586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A179865 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065383.P432966029062150586

namespace A065383

/-- `p?[A151800(A179865(n+1)-1)]` -/
def P432966029062150586.Spec : Prop :=
  ∀ n, P432966029062150586.a n = A065383 n

end A065383

/-! ## A065383.P12400986073638284597

`A151800(A003600(n)-A000125(n))%(A000217(n+3)+4)`
-/

namespace A065383.P12400986073638284597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A003600 n - A000125 n).toNat) (A000217 (n + 3) + 4)

end

end A065383.P12400986073638284597

namespace A065383

/-- `A151800(A003600(n)-A000125(n))%(A000217(n+3)+4)` -/
def P12400986073638284597.Spec : Prop :=
  ∀ n, P12400986073638284597.a n = A065383 n

end A065383

/-! ## A065383.P4896242188406433177

`A097050(n)-A000122(A208156(n+1))`
-/

namespace A065383.P4896242188406433177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097050 n - A000122 (A208156 (n + 1)).toNat

end

end A065383.P4896242188406433177

namespace A065383

/-- `A097050(n)-A000122(A208156(n+1))` -/
def P4896242188406433177.Spec : Prop :=
  ∀ n, P4896242188406433177.a n = A065383 n

end A065383

/-! ## A065383.P11642128015990217784

`A060264(A011848(n+1))`
-/

namespace A065383.P11642128015990217784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A011848 (n + 1)).toNat

end

end A065383.P11642128015990217784

namespace A065383

/-- `A060264(A011848(n+1))` -/
def P11642128015990217784.Spec : Prop :=
  ∀ n, P11642128015990217784.a n = A065383 n

end A065383

/-! ## A065383.P1164604833908137071

`A007918(∑[n])`
-/

namespace A065383.P1164604833908137071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065383.P1164604833908137071

namespace A065383

/-- `A007918(∑[n])` -/
def P1164604833908137071.Spec : Prop :=
  ∀ n, P1164604833908137071.a n = A065383 n

end A065383

/-! ## A065383.P13246623817555710042

`A007920(∑[n])+∑[n]`
-/

namespace A065383.P13246623817555710042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A065383.P13246623817555710042

namespace A065383

/-- `A007920(∑[n])+∑[n]` -/
def P13246623817555710042.Spec : Prop :=
  ∀ n, P13246623817555710042.a n = A065383 n

end A065383

/-! ## A065383.P8246370533309725806

`(n²+n)/2+A007920((n²+n)/2)`
-/

namespace A065383.P8246370533309725806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 + (A007920 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ)

end

end A065383.P8246370533309725806

namespace A065383

/-- `(n²+n)/2+A007920((n²+n)/2)` -/
def P8246370533309725806.Spec : Prop :=
  ∀ n, P8246370533309725806.a n = (A065383 n : ℚ)

end A065383

/-! ## A065383.P3281132235382713762

`A014963(A151800(∑[n-char[1]]))`
-/

namespace A065383.P3281132235382713762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A065383.P3281132235382713762

namespace A065383

/-- `A014963(A151800(∑[n-char[1]]))` -/
def P3281132235382713762.Spec : Prop :=
  ∀ n, P3281132235382713762.a n = A065383 n

end A065383

/-! ## A065383.P17510596320311378472

`A014963(A007918(A000217(n)))`
-/

namespace A065383.P17510596320311378472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007918 (A000217 n).toNat).toNat

end

end A065383.P17510596320311378472

namespace A065383

/-- `A014963(A007918(A000217(n)))` -/
def P17510596320311378472.Spec : Prop :=
  ∀ n, P17510596320311378472.a n = A065383 n

end A065383

/-! ## A065383.P2327149434672101996

`A001222(A007918(n))*A007918(A000217(n))`
-/

namespace A065383.P2327149434672101996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A007918 (A000217 n).toNat

end

end A065383.P2327149434672101996

namespace A065383

/-- `A001222(A007918(n))*A007918(A000217(n))` -/
def P2327149434672101996.Spec : Prop :=
  ∀ n, P2327149434672101996.a n = A065383 n

end A065383

/-! ## A065383.P14080800163488025699

`A001222(A007918(n))*A007918(A179865(n+1))`
-/

namespace A065383.P14080800163488025699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A007918 (A179865 (n + 1)).toNat

end

end A065383.P14080800163488025699

namespace A065383

/-- `A001222(A007918(n))*A007918(A179865(n+1))` -/
def P14080800163488025699.Spec : Prop :=
  ∀ n, P14080800163488025699.a n = A065383 n

end A065383

/-! ## A065383.P4623641845612310071

`A174373(∑[n+1]+2)`
-/

namespace A065383.P4623641845612310071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174373 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A065383.P4623641845612310071

namespace A065383

/-- `A174373(∑[n+1]+2)` -/
def P4623641845612310071.Spec : Prop :=
  ∀ n, P4623641845612310071.a n = A065383 n

end A065383

/-! ## A065383.P8623575012423653145

`p?[lcm(A004736(n+1), A151800(n))]`
-/

namespace A065383.P8623575012423653145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004736 (n + 1)) (A151800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065383.P8623575012423653145

namespace A065383

/-- `p?[lcm(A004736(n+1), A151800(n))]` -/
def P8623575012423653145.Spec : Prop :=
  ∀ n, (P8623575012423653145.a n : ℤ) = A065383 n

end A065383

/-! ## A065383.P13172006735763243120

`A308052(A060798(n+1))`
-/

namespace A065383.P13172006735763243120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A060798 (n + 1)).toNat

end

end A065383.P13172006735763243120

namespace A065383

/-- `A308052(A060798(n+1))` -/
def P13172006735763243120.Spec : Prop :=
  ∀ n, P13172006735763243120.a n = A065383 n

end A065383

/-! ## A065383.P167194370185780859

`A308052(A103505(n+1))`
-/

namespace A065383.P167194370185780859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A103505 (n + 1)).toNat

end

end A065383.P167194370185780859

namespace A065383

/-- `A308052(A103505(n+1))` -/
def P167194370185780859.Spec : Prop :=
  ∀ n, P167194370185780859.a n = A065383 n

end A065383

/-! ## A065383.P18210906650450898310

`A097050(n)-A000122(n²+5)`
-/

namespace A065383.P18210906650450898310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097050 n - A000122 (n ^ 2 + 5)

end

end A065383.P18210906650450898310

namespace A065383

/-- `A097050(n)-A000122(n²+5)` -/
def P18210906650450898310.Spec : Prop :=
  ∀ n, P18210906650450898310.a n = A065383 n

end A065383

/-!
# A065384: Largest prime <= n * (n + 1) / 2.

The programs for A065384, there is no canonical definition to state claims against.
-/

/-! ## A065384.P13610239402730137073

`A000217(n+2)-A375752(n+2)`
-/

namespace A065384.P13610239402730137073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A375752 (n + 2)

end

end A065384.P13610239402730137073

/-! ## A065384.P9567551036984704494

`A000040(A111208(n+2))`
-/

namespace A065384.P9567551036984704494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111208 (n + 2)).toNat

end

end A065384.P9567551036984704494

/-! ## A065384.P18205383477957447759

`A000040(∑[A065382(n+1)])`
-/

namespace A065384.P18205383477957447759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065384.P18205383477957447759

/-! ## A065384.P13792450884456649402

`A000040(∑[A066888(n+1)])`
-/

namespace A065384.P13792450884456649402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065384.P13792450884456649402

/-! ## A065384.P2845964789727289265

`A065091(∑[A065382(n+1)]-1)`
-/

namespace A065384.P2845964789727289265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A065384.P2845964789727289265

/-! ## A065384.P3564072757182780002

`A000040(A000720(C(n+3, 2)))`
-/

namespace A065384.P3564072757182780002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (Nat.choose (n + 3) 2)).toNat

end

end A065384.P3564072757182780002

/-! ## A065384.P13603199057711690130

`A000040(A000720(∑[n+2]+1))`
-/

namespace A065384.P13603199057711690130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A065384.P13603199057711690130

/-! ## A065384.P13701814907368316215

`A118749(A001840(n+1))`
-/

namespace A065384.P13701814907368316215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (A001840 (n + 1)).toNat

end

end A065384.P13701814907368316215

/-! ## A065384.P16615276629114654787

`A118749(A211004(n+1))`
-/

namespace A065384.P16615276629114654787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (A211004 (n + 1)).toNat

end

end A065384.P16615276629114654787

/-! ## A065384.P12960311425481278502

`A070801(A078773(A151800(∑[n+2])))`
-/

namespace A065384.P12960311425481278502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (A078773 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A065384.P12960311425481278502

/-! ## A065384.P14866154726199269560

`record[p?[A038722(n+1)]]`
-/

namespace A065384.P14866154726199269560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P14866154726199269560

/-! ## A065384.P16912954702546420132

`record[A006530(A038722(n+2))]`
-/

namespace A065384.P16912954702546420132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P16912954702546420132

/-! ## A065384.P18180225021561341986

`record[A006530(2*A004736(n+1)+n+1)]`
-/

namespace A065384.P18180225021561341986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A004736 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P18180225021561341986

/-! ## A065384.P2347640800159431876

`record[p?[A114327(n)+1+n]]`
-/

namespace A065384.P2347640800159431876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P2347640800159431876

/-! ## A065384.P8937320897276393574

`record[p?[A002024(n+1)²-n]]`
-/

namespace A065384.P8937320897276393574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P8937320897276393574

/-! ## A065384.P3682336878631538395

`record[A006530(A061579(n+1)+1)]`
-/

namespace A065384.P3682336878631538395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061579 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065384.P3682336878631538395

/-! ## A065384.P16848171470657282218

`A007917(A000217(n+2))`
-/

namespace A065384.P16848171470657282218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000217 (n + 2)).toNat

end

end A065384.P16848171470657282218

/-! ## A065384.P12634286507381878519

`A064989(A077128(n+2))`
-/

namespace A065384.P12634286507381878519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A077128 (n + 2)).toNat

end

end A065384.P12634286507381878519

/-! ## A065384.P13607604368997901848

`A335285(A350295(n+3))`
-/

namespace A065384.P13607604368997901848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A350295 (n + 3)).toNat

end

end A065384.P13607604368997901848

/-!
# A065385: Numbers m at which value of cototient function (A051953) reaches a new record: cototient(m) > cototient(k) for all k < m.

The programs for A065385, there is no canonical definition to state claims against.
-/

/-! ## A065385.P13069323770177681984

`∑[A076249(abs(1-n))]-1`
-/

namespace A065385.P13069323770177681984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076249 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A065385.P13069323770177681984

/-! ## A065385.P9878877690113403704

`∑[A076249(floor(n²/(n+1)))]`
-/

namespace A065385.P9878877690113403704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076249 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065385.P9878877690113403704

/-! ## A065385.P15301345602176365418

`A076249(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A065385.P15301345602176365418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076249 (n - 1) + a (n - 1)

end

end A065385.P15301345602176365418

/-! ## A065385.P11371652377509773204

`A076249(n-1)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A065385.P11371652377509773204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076249 (n - 1) - A001489 (a (n - 1)).toNat

end

end A065385.P11371652377509773204

/-! ## A065385.P6064326050503987369

`lt[A163001(n+1), A163894(n)]`
-/

namespace A065385.P6064326050503987369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065385.P6064326050503987369

/-!
# A065386: Successive record values of the cototient function (A051953).

The programs for A065386, the canonical program `A065386.P10145385021084767959` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065386 has offset 1).

The definition of A065386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065386.P3853509199478796297

`record[1-A000010(n+1)+n]`
-/

namespace A065386.P3853509199478796297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P3853509199478796297

namespace A065386

/-- `record[1-A000010(n+1)+n]` -/
def P3853509199478796297.Spec : Prop :=
  ∀ n, P3853509199478796297.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P18386241077839964689

`A065385(n+1)-A000010(A065385(n+1))`
-/

namespace A065386.P18386241077839964689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065385 (n + 1) - A000010 (A065385 (n + 1)).toNat

end

end A065386.P18386241077839964689

namespace A065386

/-- `A065385(n+1)-A000010(A065385(n+1))` -/
def P18386241077839964689.Spec : Prop :=
  ∀ n, P18386241077839964689.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P5342497357167157976

`record[A324347(n)-A000010(A324347(n))]`
-/

namespace A065386.P5342497357167157976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324347 n - A000010 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P5342497357167157976

namespace A065386

/-- `record[A324347(n)-A000010(A324347(n))]` -/
def P5342497357167157976.Spec : Prop :=
  ∀ n, P5342497357167157976.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P4428683078648136341

`record[A305296(n)-A000010(A305296(n))]`
-/

namespace A065386.P4428683078648136341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305296 n - A000010 (A305296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P4428683078648136341

namespace A065386

/-- `record[A305296(n)-A000010(A305296(n))]` -/
def P4428683078648136341.Spec : Prop :=
  ∀ n, P4428683078648136341.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P10145385021084767959

`record[A053158(n+1)-(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065386

/-- `record[A053158(n+1)-(n+1)]` -/
def P10145385021084767959.Spec : Prop :=
  ∀ n, P10145385021084767959.a n = A065386 (n + 1)

theorem P10145385021084767959.correct : P10145385021084767959.Spec := by
  intro n
  simp only [A065386, Nat.add_sub_cancel]

end A065386

/-! ## A065386.P6768549680503641736

`record[A004277(n)-A000010(A004277(n))]`
-/

namespace A065386.P6768549680503641736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A000010 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P6768549680503641736

namespace A065386

/-- `record[A004277(n)-A000010(A004277(n))]` -/
def P6768549680503641736.Spec : Prop :=
  ∀ n, P6768549680503641736.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P15473954747911881960

`record[A004279(n)-A000010(A004279(n))]`
-/

namespace A065386.P15473954747911881960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n - A000010 (A004279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P15473954747911881960

namespace A065386

/-- `record[A004279(n)-A000010(A004279(n))]` -/
def P15473954747911881960.Spec : Prop :=
  ∀ n, P15473954747911881960.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P10855413252890761891

`record[A051953(n+1)]`
-/

namespace A065386.P10855413252890761891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P10855413252890761891

namespace A065386

/-- `record[A051953(n+1)]` -/
def P10855413252890761891.Spec : Prop :=
  ∀ n, P10855413252890761891.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P17338460595216766538

`record[A062830(n)-1]`
-/

namespace A065386.P17338460595216766538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P17338460595216766538

namespace A065386

/-- `record[A062830(n)-1]` -/
def P17338460595216766538.Spec : Prop :=
  ∀ n, P17338460595216766538.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P8115733391776257946

`record[A219428(n+1)+1]`
-/

namespace A065386.P8115733391776257946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P8115733391776257946

namespace A065386

/-- `record[A219428(n+1)+1]` -/
def P8115733391776257946.Spec : Prop :=
  ∀ n, P8115733391776257946.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P9765341679217235770

`record[n-A109606(n+1)]`
-/

namespace A065386.P9765341679217235770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P9765341679217235770

namespace A065386

/-- `record[n-A109606(n+1)]` -/
def P9765341679217235770.Spec : Prop :=
  ∀ n, P9765341679217235770.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P16776305891337625742

`record[2-A039649(n+1)+n]`
-/

namespace A065386.P16776305891337625742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039649 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P16776305891337625742

namespace A065386

/-- `record[2-A039649(n+1)+n]` -/
def P16776305891337625742.Spec : Prop :=
  ∀ n, P16776305891337625742.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P6451171364120517834

`record[A053650(n+1)/(n+1)]`
-/

namespace A065386.P6451171364120517834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P6451171364120517834

namespace A065386

/-- `record[A053650(n+1)/(n+1)]` -/
def P6451171364120517834.Spec : Prop :=
  ∀ n, P6451171364120517834.a n = (A065386 (n + 1) : ℚ)

end A065386

/-! ## A065386.P14777960754277314627

`A051953(A065385(n+1))`
-/

namespace A065386.P14777960754277314627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A065385 (n + 1)).toNat

end

end A065386.P14777960754277314627

namespace A065386

/-- `A051953(A065385(n+1))` -/
def P14777960754277314627.Spec : Prop :=
  ∀ n, P14777960754277314627.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P5095451414734047505

`record[A024000(A000010(n+1))+n]`
-/

namespace A065386.P5095451414734047505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A000010 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P5095451414734047505

namespace A065386

/-- `record[A024000(A000010(n+1))+n]` -/
def P5095451414734047505.Spec : Prop :=
  ∀ n, P5095451414734047505.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P13645517186633602186

`record[A006949(n)-A000010(A006949(n))]`
-/

namespace A065386.P13645517186633602186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n - A000010 (A006949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P13645517186633602186

namespace A065386

/-- `record[A006949(n)-A000010(A006949(n))]` -/
def P13645517186633602186.Spec : Prop :=
  ∀ n, P13645517186633602186.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P1892636233275148383

`record[A007843(n)-A000010(A007843(n))]`
-/

namespace A065386.P1892636233275148383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - A000010 (A007843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P1892636233275148383

namespace A065386

/-- `record[A007843(n)-A000010(A007843(n))]` -/
def P1892636233275148383.Spec : Prop :=
  ∀ n, P1892636233275148383.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P661602823428114041

`record[A028310(n)-A000010(A028310(n))]`
-/

namespace A065386.P661602823428114041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A000010 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P661602823428114041

namespace A065386

/-- `record[A028310(n)-A000010(A028310(n))]` -/
def P661602823428114041.Spec : Prop :=
  ∀ n, P661602823428114041.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P5219632044346464125

`record[A319700(2*(n+1))]`
-/

namespace A065386.P5219632044346464125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P5219632044346464125

namespace A065386

/-- `record[A319700(2*(n+1))]` -/
def P5219632044346464125.Spec : Prop :=
  ∀ n, P5219632044346464125.a n = A065386 (n + 1)

end A065386

/-! ## A065386.P6847015272072579810

`record[A020915(n)-A000010(A020915(n))]`
-/

namespace A065386.P6847015272072579810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - A000010 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065386.P6847015272072579810

namespace A065386

/-- `record[A020915(n)-A000010(A020915(n))]` -/
def P6847015272072579810.Spec : Prop :=
  ∀ n, P6847015272072579810.a n = A065386 (n + 1)

end A065386

/-!
# A065387: a(n) = sigma(n) + phi(n).

The programs for A065387, the canonical program `A065387.P11284875715279330998` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065387 has offset 1).

The definition of A065387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065387.P11284875715279330998

`A000203(n+1)+A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065387

/-- `A000203(n+1)+A000010(n+1)` -/
def P11284875715279330998.Spec : Prop :=
  ∀ n, P11284875715279330998.a n = A065387 (n + 1)

theorem P11284875715279330998.correct : P11284875715279330998.Spec := by
  intro n
  simp only [A065387, Nat.add_sub_cancel]

end A065387

/-! ## A065387.P3281718917889584960

`A209187(n+1)+1+n`
-/

namespace A065387.P3281718917889584960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + 1 + (n : ℤ)

end

end A065387.P3281718917889584960

namespace A065387

/-- `A209187(n+1)+1+n` -/
def P3281718917889584960.Spec : Prop :=
  ∀ n, P3281718917889584960.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P12114092385376657232

`∑{d}[n+1, #]+Δ[A005728(n)]`
-/

namespace A065387.P12114092385376657232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A065387.P12114092385376657232

namespace A065387

/-- `∑{d}[n+1, #]+Δ[A005728(n)]` -/
def P12114092385376657232.Spec : Prop :=
  ∀ n, P12114092385376657232.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P9527453838068236965

`A051709(n+1)+2*(n+1)`
-/

namespace A065387.P9527453838068236965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 * (n + 1) : ℤ)

end

end A065387.P9527453838068236965

namespace A065387

/-- `A051709(n+1)+2*(n+1)` -/
def P9527453838068236965.Spec : Prop :=
  ∀ n, P9527453838068236965.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P17263687430416285686

`A349137(Δ[n²])+∑{d}[n+1, #]`
-/

namespace A065387.P17263687430416285686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A065387.P17263687430416285686

namespace A065387

/-- `A349137(Δ[n²])+∑{d}[n+1, #]` -/
def P17263687430416285686.Spec : Prop :=
  ∀ n, P17263687430416285686.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P8335478826689979170

`∑{d}[n+1, #]+sqrt(A127473(n+1))`
-/

namespace A065387.P8335478826689979170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ)

end

end A065387.P8335478826689979170

namespace A065387

/-- `∑{d}[n+1, #]+sqrt(A127473(n+1))` -/
def P8335478826689979170.Spec : Prop :=
  ∀ n, P8335478826689979170.a n = (A065387 (n + 1) : ℝ)

end A065387

/-! ## A065387.P14947251696708434758

`∑{d}[n+1, #*A007423((n+1)/#)]`
-/

namespace A065387.P14947251696708434758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065387.P14947251696708434758

namespace A065387

/-- `∑{d}[n+1, #*A007423((n+1)/#)]` -/
def P14947251696708434758.Spec : Prop :=
  ∀ n, P14947251696708434758.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P3456481840089264193

`Δ[A160664(n)+A002088(n)]`
-/

namespace A065387.P3456481840089264193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065387.P3456481840089264193

namespace A065387

/-- `Δ[A160664(n)+A002088(n)]` -/
def P3456481840089264193.Spec : Prop :=
  ∀ n, P3456481840089264193.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P5269536884850544992

`Δ[A160664(n)+A005728(n)]`
-/

namespace A065387.P5269536884850544992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065387.P5269536884850544992

namespace A065387

/-- `Δ[A160664(n)+A005728(n)]` -/
def P5269536884850544992.Spec : Prop :=
  ∀ n, P5269536884850544992.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P4692167089880338397

`A000203(n+1)+Δ[A002088(n)]`
-/

namespace A065387.P4692167089880338397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065387.P4692167089880338397

namespace A065387

/-- `A000203(n+1)+Δ[A002088(n)]` -/
def P4692167089880338397.Spec : Prop :=
  ∀ n, P4692167089880338397.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P17869932484082572274

`A000203(n+1)+Δ[A005728(n)]`
-/

namespace A065387.P17869932484082572274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065387.P17869932484082572274

namespace A065387

/-- `A000203(n+1)+Δ[A005728(n)]` -/
def P17869932484082572274.Spec : Prop :=
  ∀ n, P17869932484082572274.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P3860294332445757698

`A000010(n+1)+Δ[A160664(n)]`
-/

namespace A065387.P3860294332445757698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065387.P3860294332445757698

namespace A065387

/-- `A000010(n+1)+Δ[A160664(n)]` -/
def P3860294332445757698.Spec : Prop :=
  ∀ n, P3860294332445757698.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P1774324793513158969

`A063070(n+1)+A007503(n+1)`
-/

namespace A065387.P1774324793513158969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) + A007503 (n + 1)

end

end A065387.P1774324793513158969

namespace A065387

/-- `A063070(n+1)+A007503(n+1)` -/
def P1774324793513158969.Spec : Prop :=
  ∀ n, P1774324793513158969.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P15134409247741860240

`A039653(n+1)+A039649(n+1)`
-/

namespace A065387.P15134409247741860240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + A039649 (n + 1)

end

end A065387.P15134409247741860240

namespace A065387

/-- `A039653(n+1)+A039649(n+1)` -/
def P15134409247741860240.Spec : Prop :=
  ∀ n, P15134409247741860240.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P5307193546229854011

`A121048(n+1)+A001065(n+1)`
-/

namespace A065387.P5307193546229854011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + A001065 (n + 1)

end

end A065387.P5307193546229854011

namespace A065387

/-- `A121048(n+1)+A001065(n+1)` -/
def P5307193546229854011.Spec : Prop :=
  ∀ n, P5307193546229854011.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P6565108157917761895

`A065608(n+1)+A061468(n+1)`
-/

namespace A065387.P6565108157917761895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A061468 (n + 1)

end

end A065387.P6565108157917761895

namespace A065387

/-- `A065608(n+1)+A061468(n+1)` -/
def P6565108157917761895.Spec : Prop :=
  ∀ n, P6565108157917761895.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P13402594036281548482

`A109606(n+1)+A088580(n+1)`
-/

namespace A065387.P13402594036281548482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A088580 (n + 1)

end

end A065387.P13402594036281548482

namespace A065387

/-- `A109606(n+1)+A088580(n+1)` -/
def P13402594036281548482.Spec : Prop :=
  ∀ n, P13402594036281548482.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P4482560438068479272

`A158901(n+1)+A073757(n+1)`
-/

namespace A065387.P4482560438068479272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + A073757 (n + 1)

end

end A065387.P4482560438068479272

namespace A065387

/-- `A158901(n+1)+A073757(n+1)` -/
def P4482560438068479272.Spec : Prop :=
  ∀ n, P4482560438068479272.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P10040794852567799119

`A152991(n+1)+A082515(n+1)`
-/

namespace A065387.P10040794852567799119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) + A082515 (n + 1)

end

end A065387.P10040794852567799119

namespace A065387

/-- `A152991(n+1)+A082515(n+1)` -/
def P10040794852567799119.Spec : Prop :=
  ∀ n, P10040794852567799119.a n = A065387 (n + 1)

end A065387

/-! ## A065387.P3383919042419945087

`A255385(n+1)+A000005(n+1)`
-/

namespace A065387.P3383919042419945087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) + A000005 (n + 1)

end

end A065387.P3383919042419945087

namespace A065387

/-- `A255385(n+1)+A000005(n+1)` -/
def P3383919042419945087.Spec : Prop :=
  ∀ n, P3383919042419945087.a n = A065387 (n + 1)

end A065387

/-!
# A065388: Record values for sigma(m) + phi(m): sum of sigma and totient is larger than for any previous number.

The programs for A065388, the canonical program `A065388.P11226850039941885690` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065388 has offset 1).

The definition of A065388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065388.P1229039640839256857

`record[A000203(n+1)+A000010(n+1)]`
-/

namespace A065388.P1229039640839256857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P1229039640839256857

namespace A065388

/-- `record[A000203(n+1)+A000010(n+1)]` -/
def P1229039640839256857.Spec : Prop :=
  ∀ n, P1229039640839256857.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P7077808684240344656

`A000010(A015702(n+1))+∑{d}[A015702(n+1), #]`
-/

namespace A065388.P7077808684240344656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A015702 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A065388.P7077808684240344656

namespace A065388

/-- `A000010(A015702(n+1))+∑{d}[A015702(n+1), #]` -/
def P7077808684240344656.Spec : Prop :=
  ∀ n, P7077808684240344656.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P10148107606063318932

`A000010(A015702(n+1))+A000203(A015702(n+1))`
-/

namespace A065388.P10148107606063318932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A015702 (n + 1)).toNat + A000203 (A015702 (n + 1)).toNat

end

end A065388.P10148107606063318932

namespace A065388

/-- `A000010(A015702(n+1))+A000203(A015702(n+1))` -/
def P10148107606063318932.Spec : Prop :=
  ∀ n, P10148107606063318932.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P11226850039941885690

`record[A051709(n+1)+2*(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065388

/-- `record[A051709(n+1)+2*(n+1)]` -/
def P11226850039941885690.Spec : Prop :=
  ∀ n, P11226850039941885690.a n = A065388 (n + 1)

theorem P11226850039941885690.correct : P11226850039941885690.Spec := by
  intro n
  simp only [A065388, Nat.add_sub_cancel]

end A065388

/-! ## A065388.P8354995986219880861

`record[A000010(n+1)+2*(n+1)-A033879(n+1)]`
-/

namespace A065388.P8354995986219880861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((2 * (n + 1) : ℤ) - A033879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P8354995986219880861

namespace A065388

/-- `record[A000010(n+1)+2*(n+1)-A033879(n+1)]` -/
def P8354995986219880861.Spec : Prop :=
  ∀ n, P8354995986219880861.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P8887851701795506079

`record[A000010(n+1)+A155085(n+1)-(n+1)]`
-/

namespace A065388.P8887851701795506079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P8887851701795506079

namespace A065388

/-- `record[A000010(n+1)+A155085(n+1)-(n+1)]` -/
def P8887851701795506079.Spec : Prop :=
  ∀ n, P8887851701795506079.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P1447522198785871627

`record[A000010(n+1)+A074400(n+1)/2]`
-/

namespace A065388.P1447522198785871627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P1447522198785871627

namespace A065388

/-- `record[A000010(n+1)+A074400(n+1)/2]` -/
def P1447522198785871627.Spec : Prop :=
  ∀ n, P1447522198785871627.a n = (A065388 (n + 1) : ℚ)

end A065388

/-! ## A065388.P16649247472879850190

`record[A000010(n+1)+ceil(A002659(n+1)/2)]`
-/

namespace A065388.P16649247472879850190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ⌈(A002659 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P16649247472879850190

namespace A065388

/-- `record[A000010(n+1)+ceil(A002659(n+1)/2)]` -/
def P16649247472879850190.Spec : Prop :=
  ∀ n, P16649247472879850190.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P8428994141507896697

`record[A065387(n+1)]`
-/

namespace A065388.P8428994141507896697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P8428994141507896697

namespace A065388

/-- `record[A065387(n+1)]` -/
def P8428994141507896697.Spec : Prop :=
  ∀ n, P8428994141507896697.a n = A065388 (n + 1)

end A065388

/-! ## A065388.P6770881129989601442

`record[A209187(n+1)+1+n]`
-/

namespace A065388.P6770881129989601442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065388.P6770881129989601442

namespace A065388

/-- `record[A209187(n+1)+1+n]` -/
def P6770881129989601442.Spec : Prop :=
  ∀ n, P6770881129989601442.a n = A065388 (n + 1)

end A065388

/-!
# A065389: Numbers m such that sigma(phi(m)) sets a new record, i.e., sigma(phi(m)) > sigma(phi(k)) for all k < m numbers.

The programs for A065389, there is no canonical definition to state claims against.
-/

/-! ## A065389.P16836562173068462201

`record[or(1, A345941(A342798(n+1)))]`
-/

namespace A065389.P16836562173068462201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A345941 (A342798 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065389.P16836562173068462201

/-! ## A065389.P10425571257033452693

`A008792(lt[A008807(n), n])`
-/

namespace A065389.P10425571257033452693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008792 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065389.P10425571257033452693

/-! ## A065389.P665493787560192948

`record[A002487(A128373(n+2))]`
-/

namespace A065389.P665493787560192948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065389.P665493787560192948

/-! ## A065389.P14399475600910959901

`A353768(A205590(n+3))+A006005(n+1)`
-/

namespace A065389.P14399475600910959901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 (A205590 (n + 3)).toNat + A006005 (n + 1)

end

end A065389.P14399475600910959901

/-!
# A065390: Peak values reached by A062402 at the sites listed in A065389.

The programs for A065390, the canonical program `A065390.P11259095994126347679` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065390 has offset 1).

The definition of A065390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065390.P11259095994126347679

`record[A000203(A000010(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A065390

/-- `record[A000203(A000010(n+1))]` -/
def P11259095994126347679.Spec : Prop :=
  ∀ n, P11259095994126347679.a n = A065390 (n + 1)

theorem P11259095994126347679.correct : P11259095994126347679.Spec := by
  intro n
  simp only [A065390, Nat.add_sub_cancel]

end A065390

/-! ## A065390.P15440687076911990009

`∑{d}[A000010(A065389(n+1)), #]`
-/

namespace A065390.P15440687076911990009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A065390.P15440687076911990009

namespace A065390

/-- `∑{d}[A000010(A065389(n+1)), #]` -/
def P15440687076911990009.Spec : Prop :=
  ∀ n, (P15440687076911990009.a n : ℤ) = A065390 (n + 1)

end A065390

/-! ## A065390.P3457556939441347730

`A000203(A000010(A065389(n+1)))`
-/

namespace A065390.P3457556939441347730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A065389 (n + 1)).toNat).toNat

end

end A065390.P3457556939441347730

namespace A065390

/-- `A000203(A000010(A065389(n+1)))` -/
def P3457556939441347730.Spec : Prop :=
  ∀ n, P3457556939441347730.a n = A065390 (n + 1)

end A065390

/-! ## A065390.P7918044478363510198

`record[A000203(A090127(n+1))]`
-/

namespace A065390.P7918044478363510198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A090127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P7918044478363510198

namespace A065390

/-- `record[A000203(A090127(n+1))]` -/
def P7918044478363510198.Spec : Prop :=
  ∀ n, P7918044478363510198.a n = A065390 (n + 1)

end A065390

/-! ## A065390.P6015520555208583050

`record[∑{d}[A000010(comp[2*n]), #]]`
-/

namespace A065390.P6015520555208583050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P6015520555208583050

namespace A065390

/-- `record[∑{d}[A000010(comp[2*n]), #]]` -/
def P6015520555208583050.Spec : Prop :=
  ∀ n, (P6015520555208583050.a n : ℤ) = A065390 (n + 1)

end A065390

/-! ## A065390.P7144929345927234509

`record[A000203(A037225(n))]`
-/

namespace A065390.P7144929345927234509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A037225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P7144929345927234509

namespace A065390

/-- `record[A000203(A037225(n))]` -/
def P7144929345927234509.Spec : Prop :=
  ∀ n, P7144929345927234509.a n = A065390 (n + 1)

end A065390

/-! ## A065390.P2515856204864255365

`record[A000203(A319997(2*n+1))]`
-/

namespace A065390.P2515856204864255365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A319997 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P2515856204864255365

namespace A065390

/-- `record[A000203(A319997(2*n+1))]` -/
def P2515856204864255365.Spec : Prop :=
  ∀ n, P2515856204864255365.a n = A065390 (n + 1)

end A065390

/-! ## A065390.P12612619749378723055

`record[A074400(A000010(n+2))/2]`
-/

namespace A065390.P12612619749378723055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (A000010 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P12612619749378723055

namespace A065390

/-- `record[A074400(A000010(n+2))/2]` -/
def P12612619749378723055.Spec : Prop :=
  ∀ n, P12612619749378723055.a n = (A065390 (n + 1) : ℚ)

end A065390

/-! ## A065390.P11441833221997236480

`record[A000203(A337937(n+1))]`
-/

namespace A065390.P11441833221997236480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A337937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P11441833221997236480

namespace A065390

/-- `record[A000203(A337937(n+1))]` -/
def P11441833221997236480.Spec : Prop :=
  ∀ n, P11441833221997236480.a n = A065390 (n + 1)

end A065390

/-! ## A065390.P12520563698952954527

`record[A000203(A358039(n+1))]`
-/

namespace A065390.P12520563698952954527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A358039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P12520563698952954527

namespace A065390

/-- `record[A000203(A358039(n+1))]` -/
def P12520563698952954527.Spec : Prop :=
  ∀ n, P12520563698952954527.a n = A065390 (n + 1)

end A065390

/-!
# A065391: Numbers m such that A062401(m) = phi(sigma(m)) is increasing to a record value, i.e., A062401(m) represents a new peak, so that A062401(m) > A062401(k) for all k < m.

The programs for A065391, there is no canonical definition to state claims against.
-/

/-! ## A065391.P7574409402137718850

`∪[A308162(2*(n+2))², A000079(n)]`
-/

namespace A065391.P7574409402137718850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308162 (2 * (n + 2)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065391.P7574409402137718850

/-! ## A065391.P15643145230080407366

`∩[A306013(n+1), A398303(n+1)]`
-/

namespace A065391.P15643145230080407366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065391.P15643145230080407366

/-! ## A065391.P4248316467134797273

`∪[A068952(2*n+1), A069050(n+1)]`
-/

namespace A065391.P4248316467134797273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068952 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065391.P4248316467134797273

/-! ## A065391.P17151931661722861373

`∪[A068952(2*n+1), A000225(n+1)+1]`
-/

namespace A065391.P17151931661722861373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068952 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065391.P17151931661722861373

/-! ## A065391.P17231121888649526062

`∪[A363657(n+1), A327527(A002110(n))]`
-/

namespace A065391.P17231121888649526062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A002110 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065391.P17231121888649526062

/-!
# A065392: a(n) = A062401(A065391(n)): phi(sigma(m)) peak values for numbers m (listed in A065391) at which those peaks are first reached.

The programs for A065392, there is no canonical definition to state claims against.
-/

/-! ## A065392.P309154856465863558

`A065391(n+1)-A295301(A065391(n+1))`
-/

namespace A065392.P309154856465863558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065391 (n + 1) - A295301 (A065391 (n + 1)).toNat

end

end A065392.P309154856465863558

/-! ## A065392.P14527614326032751940

`A000010(∑{d}[A065391(n+1), #])`
-/

namespace A065392.P14527614326032751940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A065392.P14527614326032751940

/-! ## A065392.P5136543743954695518

`A000010(A000203(A065391(n+1)))`
-/

namespace A065392.P5136543743954695518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A065391 (n + 1)).toNat).toNat

end

end A065392.P5136543743954695518

/-! ## A065392.P399377920323648848

`record[A000010(A000203(n+1))]`
-/

namespace A065392.P399377920323648848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065392.P399377920323648848

/-! ## A065392.P11212126758326907021

`record[A000010(A086293(n+1))]`
-/

namespace A065392.P11212126758326907021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A086293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065392.P11212126758326907021

/-!
# A065393: Sigma(phi(m)) - phi(sigma(m)) is increasing at these values of m.

The programs for A065393, there is no canonical definition to state claims against.
-/

/-! ## A065393.P5809206343379091025

`A078133(A328242(n+1)+1)`
-/

namespace A065393.P5809206343379091025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A328242 (n + 1) + 1).toNat

end

end A065393.P5809206343379091025

/-! ## A065393.P2323160954551144711

`A080191(lt[A323100(n+1), n])`
-/

namespace A065393.P2323160954551144711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323100 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065393.P2323160954551144711

/-! ## A065393.P6865990286081384340

`p?[∑[A008441(A077355(n+1))]]`
-/

namespace A065393.P6865990286081384340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A077355 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065393.P6865990286081384340

/-! ## A065393.P7916049287388307819

`p?[A005843(n)-A029431(n)!]`
-/

namespace A065393.P7916049287388307819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (Nat.factorial (A029431 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065393.P7916049287388307819

/-! ## A065393.P16842961910530269295

`A060264(A261342(n+1)%A367299(3*n+5))`
-/

namespace A065393.P16842961910530269295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (Int.tmod (A261342 (n + 1)) (A367299 (3 * n + 5))).toNat

end

end A065393.P16842961910530269295

/-!
# A065394: Increasing values of A065395: a(n) = A065395(A065393(n)).

The programs for A065394, the canonical program `A065394.P16057630150760024369` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065394 has offset 1).

The definition of A065394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065394.P7084700019950374272

`record[A065395(n+3)]`
-/

namespace A065394.P7084700019950374272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065394.P7084700019950374272

namespace A065394

/-- `record[A065395(n+3)]` -/
def P7084700019950374272.Spec : Prop :=
  ∀ n, P7084700019950374272.a n = A065394 (n + 1)

end A065394

/-! ## A065394.P16776536456051734841

`A065395(A065393(n+1))`
-/

namespace A065394.P16776536456051734841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (A065393 (n + 1)).toNat

end

end A065394.P16776536456051734841

namespace A065394

/-- `A065395(A065393(n+1))` -/
def P16776536456051734841.Spec : Prop :=
  ∀ n, P16776536456051734841.a n = A065394 (n + 1)

end A065394

/-! ## A065394.P16057630150760024369

`record[A062402(2*n+3)-A062401(2*n+3)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065394

/-- `record[A062402(2*n+3)-A062401(2*n+3)]` -/
def P16057630150760024369.Spec : Prop :=
  ∀ n, P16057630150760024369.a n = A065394 (n + 1)

theorem P16057630150760024369.correct : P16057630150760024369.Spec := by
  intro n
  simp only [A065394, Nat.add_sub_cancel]

end A065394

/-! ## A065394.P901063078170006231

`record[A028310(A065395(Δ[n²]))]`
-/

namespace A065394.P901063078170006231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A065395 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065394.P901063078170006231

namespace A065394

/-- `record[A028310(A065395(Δ[n²]))]` -/
def P901063078170006231.Spec : Prop :=
  ∀ n, P901063078170006231.a n = A065394 (n + 1)

end A065394

/-!
# A065395: Commutator of sigma and phi functions.

The programs for A065395, the canonical program `A065395.P2489415890937249786` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065395 has offset 1).

The definition of A065395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065395.P2489415890937249786

`A062402(n+1)-A062401(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065395

/-- `A062402(n+1)-A062401(n+1)` -/
def P2489415890937249786.Spec : Prop :=
  ∀ n, P2489415890937249786.a n = A065395 (n + 1)

theorem P2489415890937249786.correct : P2489415890937249786.Spec := by
  intro n
  simp only [A065395, Nat.add_sub_cancel]

end A065395

/-! ## A065395.P4734781691622756178

`A295302(n+1)+A295301(n+1)`
-/

namespace A065395.P4734781691622756178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1) + A295301 (n + 1)

end

end A065395.P4734781691622756178

namespace A065395

/-- `A295302(n+1)+A295301(n+1)` -/
def P4734781691622756178.Spec : Prop :=
  ∀ n, P4734781691622756178.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P6356064385371947129

`A062402(n+1)-A000010(∑{d}[n+1, #])`
-/

namespace A065395.P6356064385371947129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A065395.P6356064385371947129

namespace A065395

/-- `A062402(n+1)-A000010(∑{d}[n+1, #])` -/
def P6356064385371947129.Spec : Prop :=
  ∀ n, P6356064385371947129.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P10650631596555837691

`A000203(Δ[A005728(n)])-A062401(n+1)`
-/

namespace A065395.P10650631596555837691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat - A062401 (n + 1)

end

end A065395.P10650631596555837691

namespace A065395

/-- `A000203(Δ[A005728(n)])-A062401(n+1)` -/
def P10650631596555837691.Spec : Prop :=
  ∀ n, P10650631596555837691.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P5975040031289612009

`A062402(n+1)-A000010(Δ[A160664(n)])`
-/

namespace A065395.P5975040031289612009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A065395.P5975040031289612009

namespace A065395

/-- `A062402(n+1)-A000010(Δ[A160664(n)])` -/
def P5975040031289612009.Spec : Prop :=
  ∀ n, P5975040031289612009.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P9817546314121054693

`A000203(A000010(n+1))-A062401(n+1)`
-/

namespace A065395.P9817546314121054693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat - A062401 (n + 1)

end

end A065395.P9817546314121054693

namespace A065395

/-- `A000203(A000010(n+1))-A062401(n+1)` -/
def P9817546314121054693.Spec : Prop :=
  ∀ n, P9817546314121054693.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P806185012448649632

`A062402(n+1)-A000010(A000203(n+1))`
-/

namespace A065395.P806185012448649632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A000010 (A000203 (n + 1)).toNat

end

end A065395.P806185012448649632

namespace A065395

/-- `A062402(n+1)-A000010(A000203(n+1))` -/
def P806185012448649632.Spec : Prop :=
  ∀ n, P806185012448649632.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P1897843098802336984

`A000203(A109606(n+1)+1)-A062401(n+1)`
-/

namespace A065395.P1897843098802336984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109606 (n + 1) + 1).toNat - A062401 (n + 1)

end

end A065395.P1897843098802336984

namespace A065395

/-- `A000203(A109606(n+1)+1)-A062401(n+1)` -/
def P1897843098802336984.Spec : Prop :=
  ∀ n, P1897843098802336984.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P459961594615091197

`A062402(n+1)-A000010(A001065(n+1)+n+1)`
-/

namespace A065395.P459961594615091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A000010 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A065395.P459961594615091197

namespace A065395

/-- `A062402(n+1)-A000010(A001065(n+1)+n+1)` -/
def P459961594615091197.Spec : Prop :=
  ∀ n, P459961594615091197.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P9963907970924512121

`A062402(n+1)-(A353636(n+1)+A000010(n+1))`
-/

namespace A065395.P9963907970924512121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - (A353636 (n + 1) + A000010 (n + 1))

end

end A065395.P9963907970924512121

namespace A065395

/-- `A062402(n+1)-(A353636(n+1)+A000010(n+1))` -/
def P9963907970924512121.Spec : Prop :=
  ∀ n, P9963907970924512121.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P5692272061888699313

`A062402(n+1)-A000010(A064987(n+1)/(n+1))`
-/

namespace A065395.P5692272061888699313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A000010 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A065395.P5692272061888699313

namespace A065395

/-- `A062402(n+1)-A000010(A064987(n+1)/(n+1))` -/
def P5692272061888699313.Spec : Prop :=
  ∀ n, P5692272061888699313.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P13184233784424138126

`A000203(A000010(n+1))-A000010(A000203(n+1))`
-/

namespace A065395.P13184233784424138126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat - A000010 (A000203 (n + 1)).toNat

end

end A065395.P13184233784424138126

namespace A065395

/-- `A000203(A000010(n+1))-A000010(A000203(n+1))` -/
def P13184233784424138126.Spec : Prop :=
  ∀ n, P13184233784424138126.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P16873499458891992176

`A062402(n+1)-A349137(A002659(n+1))`
-/

namespace A065395.P16873499458891992176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - A349137 (A002659 (n + 1)).toNat

end

end A065395.P16873499458891992176

namespace A065395

/-- `A062402(n+1)-A349137(A002659(n+1))` -/
def P16873499458891992176.Spec : Prop :=
  ∀ n, P16873499458891992176.a n = A065395 (n + 1)

end A065395

/-! ## A065395.P3329080032778074299

`A062402(n+1)-(A109606(A001065(n+1)+n+1)+1)`
-/

namespace A065395.P3329080032778074299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - (A109606 (A001065 (n + 1) + (n + 1 : ℤ)).toNat + 1)

end

end A065395.P3329080032778074299

namespace A065395

/-- `A062402(n+1)-(A109606(A001065(n+1)+n+1)+1)` -/
def P3329080032778074299.Spec : Prop :=
  ∀ n, P3329080032778074299.a n = A065395 (n + 1)

end A065395

/-!
# A065396: Primes of the form p + k*(k+1) / 2, p prime and k > 0.

The programs for A065396, there is no canonical definition to state claims against.
-/

/-! ## A065396.P18019989356186919423

`p?[n*A157928(A132399(n))]`
-/

namespace A065396.P18019989356186919423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157928 (A132399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065396.P18019989356186919423

/-! ## A065396.P10872709264131874017

`p?[(n+1)%(A132399(A000265(n+1))+n)]`
-/

namespace A065396.P10872709264131874017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A132399 (A000265 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065396.P10872709264131874017

/-! ## A065396.P3277626352600647300

`eq[A068346(n), A130706(A132399(n))]`
-/

namespace A065396.P3277626352600647300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A132399 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065396.P3277626352600647300

/-! ## A065396.P5837129158753344767

`lt[A048671(A028310(n)), A132399(n)]`
-/

namespace A065396.P5837129158753344767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065396.P5837129158753344767

/-! ## A065396.P14871001281128775898

`lt[A048671(A028310(n)), A224362(n)]`
-/

namespace A065396.P14871001281128775898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065396.P14871001281128775898

/-! ## A065396.P11151028354696941105

`p?[n*A008966((n+1)*A285572(n+1)+1)]`
-/

namespace A065396.P11151028354696941105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008966 ((n + 1 : ℤ) * A285572 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065396.P11151028354696941105

/-! ## A065396.P15142199060550854975

`p?[A167743(A000720(n+10))+n]`
-/

namespace A065396.P15142199060550854975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A000720 (n + 10)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065396.P15142199060550854975

/-!
# A065398: Fibonacci numbers whose digits sum to a prime.

The programs for A065398, there is no canonical definition to state claims against.
-/

/-! ## A065398.P13714587059821618383

`A000045(A178837(n+1))`
-/

namespace A065398.P13714587059821618383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A178837 (n + 1)).toNat

end

end A065398.P13714587059821618383

/-! ## A065398.P12562267128440466531

`A020695(A178837(n+1)-3)`
-/

namespace A065398.P12562267128440466531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A178837 (n + 1) - 3).toNat

end

end A065398.P12562267128440466531

/-! ## A065398.P3620914872994646682

`A103609(2*A178837(n+1))`
-/

namespace A065398.P3620914872994646682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A178837 (n + 1)).toNat

end

end A065398.P3620914872994646682

/-! ## A065398.P17289267505827414518

`A000071(A178837(n+1))+char[A074679(n)]`
-/

namespace A065398.P17289267505827414518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A178837 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065398.P17289267505827414518

/-! ## A065398.P3992347587462906126

`A103609(A178837(n+1)+A178837(n+1)+1)`
-/

namespace A065398.P3992347587462906126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A178837 (n + 1) + (A178837 (n + 1) + 1)).toNat

end

end A065398.P3992347587462906126

/-! ## A065398.P1311620167984805251

`A257993(A001844(n))+A000071(A178837(n+1))`
-/

namespace A065398.P1311620167984805251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A001844 n).toNat + A000071 (A178837 (n + 1)).toNat

end

end A065398.P1311620167984805251

/-! ## A065398.P16427415148990399499

`A257993(A006450(n+2)-2)+A000071(A178837(n+1))`
-/

namespace A065398.P16427415148990399499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A006450 (n + 2) - 2).toNat + A000071 (A178837 (n + 1)).toNat

end

end A065398.P16427415148990399499

