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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B004.C004
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
# A116000: phi(n) + sigma(n) gives a semiprime (A001358).

The programs for A116000, there is no canonical definition to state claims against.
-/

/-! ## A116000.P5381939708516663635

`∪[A067350(n+1), A296249(n)]`
-/

namespace A116000.P5381939708516663635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P5381939708516663635

/-! ## A116000.P8413072333368050482

`eq[1, A002264(A067349(n+1))]+1`
-/

namespace A116000.P8413072333368050482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A067349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116000.P8413072333368050482

/-! ## A116000.P14748021690802560683

`eq[2, A001222(A065387(n+1))]+1`
-/

namespace A116000.P14748021690802560683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116000.P14748021690802560683

/-! ## A116000.P7067673591972257373

`∪[A049010(n+1), A067350(n+1)]`
-/

namespace A116000.P7067673591972257373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P7067673591972257373

/-! ## A116000.P10989022579889067852

`∪[A051948(n+1), A067350(n+1)]`
-/

namespace A116000.P10989022579889067852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P10989022579889067852

/-! ## A116000.P16779966763551942979

`∪[A063948(n+1), A067350(n+1)]`
-/

namespace A116000.P16779966763551942979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P16779966763551942979

/-! ## A116000.P15964001837236216096

`∪[A064690(n+1), A067350(n+1)]`
-/

namespace A116000.P15964001837236216096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P15964001837236216096

/-! ## A116000.P10986807614262661473

`∪[A067350(n+1), A175787(n+1)]`
-/

namespace A116000.P10986807614262661473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P10986807614262661473

/-! ## A116000.P7323253283490384339

`∪[A067350(n+1), A223220(n+1)]`
-/

namespace A116000.P7323253283490384339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P7323253283490384339

/-! ## A116000.P12695589696176372485

`∪[A067350(n+1), A232444(n+1)]`
-/

namespace A116000.P12695589696176372485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116000.P12695589696176372485

/-!
# A116001: sigma(n) - phi(n) gives a semiprime (A001358).

The programs for A116001, the canonical program `A116001.P13832285988926112300` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116001 has offset 1).

The definition of A116001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116001.P13832285988926112300

`eq[2, A001222(A051612(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116001

/-- `eq[2, A001222(A051612(n+2))]+2` -/
def P13832285988926112300.Spec : Prop :=
  ∀ n, (P13832285988926112300.a n : ℤ) = A116001 (n + 1)

theorem P13832285988926112300.correct : P13832285988926112300.Spec := by
  intro n
  simp only [A116001, Nat.add_sub_cancel]

end A116001

/-!
# A116002: n*phi(n)*phi(phi(n)) is a square.

The programs for A116002, there is no canonical definition to state claims against.
-/

/-! ## A116002.P10127288448587418567

`A275823(A075578(n))`
-/

namespace A116002.P10127288448587418567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A075578 n).toNat

end

end A116002.P10127288448587418567

/-! ## A116002.P9129748252522220140

`A050399(record[A143380(n)²])`
-/

namespace A116002.P9129748252522220140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116002.P9129748252522220140

/-! ## A116002.P7261926612902572647

`A253560(record[A143380(n)²])`
-/

namespace A116002.P7261926612902572647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116002.P7261926612902572647

/-!
# A116003: n*phi(n)*phi(phi(n)) is a fourth power.

The programs for A116003, there is no canonical definition to state claims against.
-/

/-! ## A116003.P2275979352323337665

`∩[A078164(n+1), A116002(n+1)]`
-/

namespace A116003.P2275979352323337665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116003.P2275979352323337665

/-! ## A116003.P5298066300236377324

`A373319(A002202(n+1)²²)`
-/

namespace A116003.P5298066300236377324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373319 ((A002202 (n + 1) ^ 2) ^ 2).toNat

end

end A116003.P5298066300236377324

/-!
# A116006: n*phi(n)*phi(phi(n)) is a triangular number.

The programs for A116006, there is no canonical definition to state claims against.
-/

/-! ## A116006.P11625016555345603710

`record[A160014(∑[A002943(n)+1])]`
-/

namespace A116006.P11625016555345603710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116006.P11625016555345603710

/-!
# A116010: n+prime(n)+prime(prime(n)) is a triangular number, where prime(n) is the n-th prime.

The programs for A116010, there is no canonical definition to state claims against.
-/

/-! ## A116010.P9957724796348291257

`A305303(A304934(n)²)`
-/

namespace A116010.P9957724796348291257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305303 (A304934 n ^ 2).toNat

end

end A116010.P9957724796348291257

/-!
# A116014: Numbers k such that k + sigma(k) + sigma(sigma(k)) is a square.

The programs for A116014, there is no canonical definition to state claims against.
-/

/-! ## A116014.P6317010321460463263

`A002024(A056744(3*n+2))`
-/

namespace A116014.P6317010321460463263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056744 (3 * n + 2)).toNat

end

end A116014.P6317010321460463263

/-!
# A116017: Numbers m such that m + sigma(m) is a repdigit.

The programs for A116017, there is no canonical definition to state claims against.
-/

/-! ## A116017.P10338845965422258470

`A347655(A011860(n)²)+n`
-/

namespace A116017.P10338845965422258470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A011860 n ^ 2).toNat + (n : ℤ)

end

end A116017.P10338845965422258470

/-! ## A116017.P1392578456683328713

`∩[A115895(n+1), A292050(n+1)]`
-/

namespace A116017.P1392578456683328713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116017.P1392578456683328713

/-! ## A116017.P4059393668813794002

`∪[A000961(n+1), A002024(A007696(n+1))]`
-/

namespace A116017.P4059393668813794002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007696 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116017.P4059393668813794002

/-! ## A116017.P7679989343627426600

`∪[A005100(n+1), A002024(A007696(n+1))]`
-/

namespace A116017.P7679989343627426600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007696 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116017.P7679989343627426600

/-!
# A116018: Numbers n such that n + phi(n) is a repdigit.

The programs for A116018, there is no canonical definition to state claims against.
-/

/-! ## A116018.P8912168944338081791

`eq[A000007(n), A037904(A225530(n)+n)]`
-/

namespace A116018.P8912168944338081791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116018.P8912168944338081791

/-! ## A116018.P15618988781082173203

`eq[A000038(n), A151949(A225530(n)+n)]`
-/

namespace A116018.P15618988781082173203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116018.P15618988781082173203

/-! ## A116018.P12419126722479116117

`A115896(lt[A022629(n), A174904(n)])`
-/

namespace A116018.P12419126722479116117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116018.P12419126722479116117

/-! ## A116018.P1712973896068581347

`∩[A115896(n+1), A289868(n)]`
-/

namespace A116018.P1712973896068581347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289868 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116018.P1712973896068581347

/-! ## A116018.P3628772368758189949

`∩[A048266(n+1), A115896(n+1)]`
-/

namespace A116018.P3628772368758189949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116018.P3628772368758189949

/-!
# A116020: Numbers n such that sigma(n) - phi(n) is a repdigit greater than 2.

The programs for A116020, there is no canonical definition to state claims against.
-/

/-! ## A116020.P2657837424590489961

`A116030(∩[A005555(n), A106000(n)])`
-/

namespace A116020.P2657837424590489961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106000 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A116020.P2657837424590489961

/-! ## A116020.P5245051106134642225

`∩[A116030(n+1), A130048(n+1)]`
-/

namespace A116020.P5245051106134642225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116020.P5245051106134642225

/-! ## A116020.P8045317185592003788

`∩[A116030(n+1), A247151(n+1)]`
-/

namespace A116020.P8045317185592003788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116020.P8045317185592003788

/-! ## A116020.P11469606222643075024

`∩[A116030(n+1), A359077(n+1)]`
-/

namespace A116020.P11469606222643075024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116020.P11469606222643075024

/-! ## A116020.P7563344683405927253

`A116030(A032555(n+1))`
-/

namespace A116020.P7563344683405927253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (A032555 (n + 1)).toNat

end

end A116020.P7563344683405927253

/-!
# A116022: n*phi(n)*phi(phi(n)) is a palindrome.

The programs for A116022, there is no canonical definition to state claims against.
-/

/-! ## A116022.P9973639960725176555

`∑[∑[A185356(A163934(n+1))]]`
-/

namespace A116022.P9973639960725176555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185356 (A163934 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116022.P9973639960725176555

/-!
# A116023: The n-th prime plus n gives a semiprime (A001358).

The programs for A116023, there is no canonical definition to state claims against.
-/

/-! ## A116023.P8643078653571825370

`eq[1, A064911(A167136(n+1))]`
-/

namespace A116023.P8643078653571825370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A167136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P8643078653571825370

/-! ## A116023.P6650920722049686575

`eq[2, A001222(A014688(n+1))]+1`
-/

namespace A116023.P6650920722049686575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116023.P6650920722049686575

/-! ## A116023.P12587864867261676177

`eq[2, A001222(A090178(n+1)-1)]`
-/

namespace A116023.P12587864867261676177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090178 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P12587864867261676177

/-! ## A116023.P18012854121464004778

`eq[2, A001222(A008578(n+1)+n)]`
-/

namespace A116023.P18012854121464004778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P18012854121464004778

/-! ## A116023.P9118868199305365230

`eq[2, A008481(A008578(n+1)+n)]`
-/

namespace A116023.P9118868199305365230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A008578 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P9118868199305365230

/-! ## A116023.P4126970348664717527

`eq[2, A001222(sqrt(A280076(n+1))+n)]`
-/

namespace A116023.P4126970348664717527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P4126970348664717527

/-! ## A116023.P17252213210714166003

`eq[2, A001222(A008864(n+1)+n)]+1`
-/

namespace A116023.P17252213210714166003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008864 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116023.P17252213210714166003

/-! ## A116023.P11563513260836383345

`eq[2, A001222(A000040(abs(1-n)+1)+n)]`
-/

namespace A116023.P11563513260836383345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116023.P11563513260836383345

/-! ## A116023.P13440026760489381989

`eq[2, A001222(A000040(n+1)+1+n)]+1`
-/

namespace A116023.P13440026760489381989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116023.P13440026760489381989

/-! ## A116023.P37827197342624772

`eq[2, A001222(record[A006530(n+2)]+1+n)]+1`
-/

namespace A116023.P37827197342624772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116023.P37827197342624772

/-!
# A116024: The n-th prime minus n gives a semiprime (A001358).

The programs for A116024, the canonical program `A116024.P7378432602794831852` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116024 has offset 1).

The definition of A116024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116024.P7378432602794831852

`eq[2, ∑{e}[A000040(abs(1-n)+1)-n, #]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A116024

/-- `eq[2, ∑{e}[A000040(abs(1-n)+1)-n, #]]` -/
def P7378432602794831852.Spec : Prop :=
  ∀ n, (P7378432602794831852.a n : ℤ) = A116024 (n + 1)

theorem P7378432602794831852.correct : P7378432602794831852.Spec := by
  intro n
  simp only [A116024, Nat.add_sub_cancel]

end A116024

/-! ## A116024.P12073242083399573947

`eq[2, A001222(A014689(n+1))]+1`
-/

namespace A116024.P12073242083399573947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116024.P12073242083399573947

namespace A116024

/-- `eq[2, A001222(A014689(n+1))]+1` -/
def P12073242083399573947.Spec : Prop :=
  ∀ n, (P12073242083399573947.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P16483836860677426765

`eq[2, A001222(A008578(n+1)-n)]`
-/

namespace A116024.P16483836860677426765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116024.P16483836860677426765

namespace A116024

/-- `eq[2, A001222(A008578(n+1)-n)]` -/
def P16483836860677426765.Spec : Prop :=
  ∀ n, (P16483836860677426765.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P1109077707740549399

`eq[2, A033273(A008578(n+1)-n)]`
-/

namespace A116024.P1109077707740549399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116024.P1109077707740549399

namespace A116024

/-- `eq[2, A033273(A008578(n+1)-n)]` -/
def P1109077707740549399.Spec : Prop :=
  ∀ n, (P1109077707740549399.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P17827823120311907471

`eq[2, A001222(A000040(n+1)-(n+1))]+1`
-/

namespace A116024.P17827823120311907471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116024.P17827823120311907471

namespace A116024

/-- `eq[2, A001222(A000040(n+1)-(n+1))]+1` -/
def P17827823120311907471.Spec : Prop :=
  ∀ n, (P17827823120311907471.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P2836830778859844864

`eq[1, A252736(A008578(n+1)-n)]`
-/

namespace A116024.P2836830778859844864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116024.P2836830778859844864

namespace A116024

/-- `eq[1, A252736(A008578(n+1)-n)]` -/
def P2836830778859844864.Spec : Prop :=
  ∀ n, (P2836830778859844864.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P23024521674705153

`eq[2, A034836(A008578(n+1)-n)]`
-/

namespace A116024.P23024521674705153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116024.P23024521674705153

namespace A116024

/-- `eq[2, A034836(A008578(n+1)-n)]` -/
def P23024521674705153.Spec : Prop :=
  ∀ n, (P23024521674705153.a n : ℤ) = A116024 (n + 1)

end A116024

/-! ## A116024.P13576868664131017022

`lt[n, A210615(A008578(n+1)-n)]`
-/

namespace A116024.P13576868664131017022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116024.P13576868664131017022

namespace A116024

/-- `lt[n, A210615(A008578(n+1)-n)]` -/
def P13576868664131017022.Spec : Prop :=
  ∀ n, (P13576868664131017022.a n : ℤ) = A116024 (n + 1)

end A116024

/-!
# A116025: sigma(n) plus n gives a semiprime (A001358).

The programs for A116025, the canonical program `A116025.P17078714560364940834` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116025 has offset 1).

The definition of A116025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116025.P17078714560364940834

`eq[2, A001222(∑{d}[n+1, #]+n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116025

/-- `eq[2, A001222(∑{d}[n+1, #]+n+1)]+1` -/
def P17078714560364940834.Spec : Prop :=
  ∀ n, (P17078714560364940834.a n : ℤ) = A116025 (n + 1)

theorem P17078714560364940834.correct : P17078714560364940834.Spec := by
  intro n
  simp only [A116025, Nat.add_sub_cancel]

end A116025

/-! ## A116025.P4871654935559674957

`eq[2, A001222(A155085(n+1))]+1`
-/

namespace A116025.P4871654935559674957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116025.P4871654935559674957

namespace A116025

/-- `eq[2, A001222(A155085(n+1))]+1` -/
def P4871654935559674957.Spec : Prop :=
  ∀ n, (P4871654935559674957.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P2990038112019461061

`eq[2, A001222(A039653(n)+1+n)]`
-/

namespace A116025.P2990038112019461061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039653 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116025.P2990038112019461061

namespace A116025

/-- `eq[2, A001222(A039653(n)+1+n)]` -/
def P2990038112019461061.Spec : Prop :=
  ∀ n, (P2990038112019461061.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P131106866096253881

`eq[3, A066637(A039653(n)+1+n)]`
-/

namespace A116025.P131106866096253881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (A039653 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116025.P131106866096253881

namespace A116025

/-- `eq[3, A066637(A039653(n)+1+n)]` -/
def P131106866096253881.Spec : Prop :=
  ∀ n, (P131106866096253881.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P5483797043992689216

`eq[2, A001222(A000203(n+1)+n+1)]+1`
-/

namespace A116025.P5483797043992689216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116025.P5483797043992689216

namespace A116025

/-- `eq[2, A001222(A000203(n+1)+n+1)]+1` -/
def P5483797043992689216.Spec : Prop :=
  ∀ n, (P5483797043992689216.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P6366870424966006072

`eq[2, A001222(A074400(n+1)/2+n+1)]+1`
-/

namespace A116025.P6366870424966006072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + (n : ℚ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116025.P6366870424966006072

namespace A116025

/-- `eq[2, A001222(A074400(n+1)/2+n+1)]+1` -/
def P6366870424966006072.Spec : Prop :=
  ∀ n, (P6366870424966006072.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P18390102606916197254

`eq[2, A226378(∑{d}[n, #]+n)]`
-/

namespace A116025.P18390102606916197254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (∑ d ∈ Nat.divisors (f3 n), d + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116025.P18390102606916197254

namespace A116025

/-- `eq[2, A226378(∑{d}[n, #]+n)]` -/
def P18390102606916197254.Spec : Prop :=
  ∀ n, (P18390102606916197254.a n : ℤ) = A116025 (n + 1)

end A116025

/-! ## A116025.P9284553229321415093

`eq[2, A008481(A155085(A233583(n+1)))]`
-/

namespace A116025.P9284553229321415093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A155085 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116025.P9284553229321415093

namespace A116025

/-- `eq[2, A008481(A155085(A233583(n+1)))]` -/
def P9284553229321415093.Spec : Prop :=
  ∀ n, (P9284553229321415093.a n : ℤ) = A116025 (n + 1)

end A116025

/-!
# A116026: phi(n) plus n gives a semiprime (A001358).

The programs for A116026, there is no canonical definition to state claims against.
-/

/-! ## A116026.P4174414602786960308

`eq[2, A001222(A225530(n)+n)]`
-/

namespace A116026.P4174414602786960308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116026.P4174414602786960308

/-! ## A116026.P1662145240300870391

`eq[2, A008481(A225530(n)+n)]`
-/

namespace A116026.P1662145240300870391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116026.P1662145240300870391

/-! ## A116026.P1600324638394194125

`eq[2, A076526(A225530(n)+n)]`
-/

namespace A116026.P1600324638394194125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116026.P1600324638394194125

/-! ## A116026.P662874585630751367

`eq[2, A281118(A225530(n)+n)]`
-/

namespace A116026.P662874585630751367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116026.P662874585630751367

/-! ## A116026.P10448810772126941809

`eq[2, A319685(A225530(n)+n)]`
-/

namespace A116026.P10448810772126941809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319685 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116026.P10448810772126941809

/-! ## A116026.P10580994799498303739

`eq[2, A001222(A121048(n+1))]+1`
-/

namespace A116026.P10580994799498303739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A121048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116026.P10580994799498303739

/-! ## A116026.P6970246825705163762

`eq[2, A001222(A039649(n+1)+n)]+1`
-/

namespace A116026.P6970246825705163762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039649 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116026.P6970246825705163762

/-! ## A116026.P7367264254906856449

`eq[2, A001222(Δ[A002088(n)]+n+1)]+1`
-/

namespace A116026.P7367264254906856449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116026.P7367264254906856449

/-! ## A116026.P10606025168876182138

`eq[1, A064911(A000010(n+1)+n+1)]+1`
-/

namespace A116026.P10606025168876182138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116026.P10606025168876182138

/-! ## A116026.P13379961621802276463

`eq[2, A001222(A000010(n+1)+1+n)]+1`
-/

namespace A116026.P13379961621802276463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116026.P13379961621802276463

/-!
# A116027: Numbers k such that k + phi(k) + phi(phi(k)) is a repdigit.

The programs for A116027, there is no canonical definition to state claims against.
-/

/-! ## A116027.P10682851519664241270

`A116044(A077168(n))`
-/

namespace A116027.P10682851519664241270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116044 (A077168 n).toNat

end

end A116027.P10682851519664241270

/-! ## A116027.P7026988127896139732

`A097449(A116044(n+1))`
-/

namespace A116027.P7026988127896139732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A116044 (n + 1)).toNat

end

end A116027.P7026988127896139732

/-! ## A116027.P13414372150326579767

`A116044(A008908(2^n))`
-/

namespace A116027.P13414372150326579767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116044 (A008908 (2 ^ n)).toNat

end

end A116027.P13414372150326579767

/-! ## A116027.P12298541554064806260

`record[A116044(A326154(n+2))]`
-/

namespace A116027.P12298541554064806260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116044 (A326154 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116027.P12298541554064806260

/-! ## A116027.P10585265706043096951

`∩[A090109(n+1), A116044(n+1)]`
-/

namespace A116027.P10585265706043096951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116027.P10585265706043096951

/-!
# A116028: Numbers k such that k + sigma(k) + sigma(sigma(k)) is a repdigit.

The programs for A116028, there is no canonical definition to state claims against.
-/

/-! ## A116028.P8842711347511786295

`∩[A116049(n+1), A296610(n)]`
-/

namespace A116028.P8842711347511786295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116028.P8842711347511786295

/-!
# A116029: Numbers n such that n + sigma(n) + phi(n) is a repdigit.

The programs for A116029, there is no canonical definition to state claims against.
-/

/-! ## A116029.P5701784052263101122

`∩[A116032(n+1), A005555(n)]`
-/

namespace A116029.P5701784052263101122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116029.P5701784052263101122

/-! ## A116029.P9201175213015964659

`∩[A116032(n+1), A226537(n+1)]`
-/

namespace A116029.P9201175213015964659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116029.P9201175213015964659

/-! ## A116029.P12164253869692612360

`∩[A116032(n+1), A366186(n+1)]`
-/

namespace A116029.P12164253869692612360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116029.P12164253869692612360

/-! ## A116029.P2847293888312645069

`∩[A116032(n+1), A389680(n+1)]`
-/

namespace A116029.P2847293888312645069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116029.P2847293888312645069

/-!
# A116031: sigma(n)-phi(n) and sigma(n)+phi(n) are two palindromes greater than 2.

The programs for A116031, there is no canonical definition to state claims against.
-/

/-! ## A116031.P17563598293658787327

`∩[A115897(n+1), A116030(n+1)]`
-/

namespace A116031.P17563598293658787327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116031.P17563598293658787327

/-!
# A116032: Numbers k such that k + sigma(k) + phi(k) is a palindrome.

The programs for A116032, there is no canonical definition to state claims against.
-/

/-! ## A116032.P9320592022927620901

`∑[A006519(A148798(n))]`
-/

namespace A116032.P9320592022927620901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A148798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116032.P9320592022927620901

/-! ## A116032.P5171750089610939034

`∑[A006519(A148800(n))]`
-/

namespace A116032.P5171750089610939034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A148800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116032.P5171750089610939034

/-! ## A116032.P11206486114715491987

`A338265(A116029(n+1))`
-/

namespace A116032.P11206486114715491987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A116029 (n + 1)).toNat

end

end A116032.P11206486114715491987

/-! ## A116032.P17061681085508807069

`eq[3, A210946(A210955(n+2))]`
-/

namespace A116032.P17061681085508807069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210946 (A210955 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116032.P17061681085508807069

/-! ## A116032.P7394971402026938961

`∑[A342416(∏[A000265(n+2)])]`
-/

namespace A116032.P7394971402026938961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342416 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116032.P7394971402026938961

/-!
# A116033: Numbers k such that sigma(k) plus the k-th prime is a prime.

The programs for A116033, the canonical program `A116033.P14025104746418871322` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116033 has offset 1).

The definition of A116033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116033.P14025104746418871322

`lt[A001222(∑{d}[n+1, #]+A000040(n+1)), 2]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116033

/-- `lt[A001222(∑{d}[n+1, #]+A000040(n+1)), 2]+1` -/
def P14025104746418871322.Spec : Prop :=
  ∀ n, (P14025104746418871322.a n : ℤ) = A116033 (n + 1)

theorem P14025104746418871322.correct : P14025104746418871322.Spec := by
  intro n
  simp only [A116033, Nat.add_sub_cancel]

end A116033

/-! ## A116033.P13870709219615544428

`lt[A000005(∑{d}[n+1, #]+A000040(n+1)), 3]+1`
-/

namespace A116033.P13870709219615544428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + A000040 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A116033.P13870709219615544428

namespace A116033

/-- `lt[A000005(∑{d}[n+1, #]+A000040(n+1)), 3]+1` -/
def P13870709219615544428.Spec : Prop :=
  ∀ n, (P13870709219615544428.a n : ℤ) = A116033 (n + 1)

end A116033

/-! ## A116033.P13038480593262092263

`eq[1, A001222(A000203(n+1)+A000040(n+1))]+1`
-/

namespace A116033.P13038480593262092263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116033.P13038480593262092263

namespace A116033

/-- `eq[1, A001222(A000203(n+1)+A000040(n+1))]+1` -/
def P13038480593262092263.Spec : Prop :=
  ∀ n, (P13038480593262092263.a n : ℤ) = A116033 (n + 1)

end A116033

/-! ## A116033.P4117312834353750055

`eq[2, A000005(A000203(n+1)+A000040(n+1))]+1`
-/

namespace A116033.P4117312834353750055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116033.P4117312834353750055

namespace A116033

/-- `eq[2, A000005(A000203(n+1)+A000040(n+1))]+1` -/
def P4117312834353750055.Spec : Prop :=
  ∀ n, (P4117312834353750055.a n : ℤ) = A116033 (n + 1)

end A116033

/-! ## A116033.P7219064509321262045

`lt[A344440(A000203(n+1)+A000040(n+1)), 2]+1`
-/

namespace A116033.P7219064509321262045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344440 (A000203 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A116033.P7219064509321262045

namespace A116033

/-- `lt[A344440(A000203(n+1)+A000040(n+1)), 2]+1` -/
def P7219064509321262045.Spec : Prop :=
  ∀ n, (P7219064509321262045.a n : ℤ) = A116033 (n + 1)

end A116033

/-!
# A116034: Numbers k such that phi(k) + prime(k) is a prime.

The programs for A116034, the canonical program `A116034.P9264514749823738249` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116034 has offset 1).

The definition of A116034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116034.P9264514749823738249

`eq[1, A001222(A000010(n+1)+A000040(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116034

/-- `eq[1, A001222(A000010(n+1)+A000040(n+1))]+1` -/
def P9264514749823738249.Spec : Prop :=
  ∀ n, (P9264514749823738249.a n : ℤ) = A116034 (n + 1)

theorem P9264514749823738249.correct : P9264514749823738249.Spec := by
  intro n
  simp only [A116034, Nat.add_sub_cancel]

end A116034

/-! ## A116034.P18092821497591833951

`eq[2, A000005(A000010(n+1)+A000040(n+1))]+1`
-/

namespace A116034.P18092821497591833951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P18092821497591833951

namespace A116034

/-- `eq[2, A000005(A000010(n+1)+A000040(n+1))]+1` -/
def P18092821497591833951.Spec : Prop :=
  ∀ n, (P18092821497591833951.a n : ℤ) = A116034 (n + 1)

end A116034

/-! ## A116034.P14570012705219319309

`eq[1, A054024(A000010(n+1)+A000040(n+1))]+1`
-/

namespace A116034.P14570012705219319309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A000010 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P14570012705219319309

namespace A116034

/-- `eq[1, A054024(A000010(n+1)+A000040(n+1))]+1` -/
def P14570012705219319309.Spec : Prop :=
  ∀ n, (P14570012705219319309.a n : ℤ) = A116034 (n + 1)

end A116034

/-! ## A116034.P3669565810318586911

`eq[1, A003415(A000040(n+1)+A000010(n+1))]+1`
-/

namespace A116034.P3669565810318586911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 1) + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P3669565810318586911

namespace A116034

/-- `eq[1, A003415(A000040(n+1)+A000010(n+1))]+1` -/
def P3669565810318586911.Spec : Prop :=
  ∀ n, (P3669565810318586911.a n : ℤ) = A116034 (n + 1)

end A116034

/-! ## A116034.P15080356962208002381

`eq[1, A032741(A000010(n+1)+A000040(n+1))]+1`
-/

namespace A116034.P15080356962208002381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000010 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P15080356962208002381

namespace A116034

/-- `eq[1, A032741(A000010(n+1)+A000040(n+1))]+1` -/
def P15080356962208002381.Spec : Prop :=
  ∀ n, (P15080356962208002381.a n : ℤ) = A116034 (n + 1)

end A116034

/-! ## A116034.P3016030417332349561

`eq[1, A033676(A000040(n+1)+A000010(n+1))]+1`
-/

namespace A116034.P3016030417332349561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000040 (n + 1) + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116034.P3016030417332349561

namespace A116034

/-- `eq[1, A033676(A000040(n+1)+A000010(n+1))]+1` -/
def P3016030417332349561.Spec : Prop :=
  ∀ n, (P3016030417332349561.a n : ℤ) = A116034 (n + 1)

end A116034

/-!
# A116035: Numbers k such that k + phi(k) + sigma(k) is a prime.

The programs for A116035, the canonical program `A116035.P8183643849721833258` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116035 has offset 1).

The definition of A116035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116035.P8183643849721833258

`eq[1, A001222(A065387(n+1)+n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116035

/-- `eq[1, A001222(A065387(n+1)+n+1)]+1` -/
def P8183643849721833258.Spec : Prop :=
  ∀ n, (P8183643849721833258.a n : ℤ) = A116035 (n + 1)

theorem P8183643849721833258.correct : P8183643849721833258.Spec := by
  intro n
  simp only [A116035, Nat.add_sub_cancel]

end A116035

/-! ## A116035.P14926341834783263869

`eq[2, A300223(A065387(n+1)+n+1)]+1`
-/

namespace A116035.P14926341834783263869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300223 (A065387 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116035.P14926341834783263869

namespace A116035

/-- `eq[2, A300223(A065387(n+1)+n+1)]+1` -/
def P14926341834783263869.Spec : Prop :=
  ∀ n, (P14926341834783263869.a n : ℤ) = A116035 (n + 1)

end A116035

/-! ## A116035.P3638546264638299743

`lt[A000005(A065387(n+1)+n+1), 3]+1`
-/

namespace A116035.P3638546264638299743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065387 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A116035.P3638546264638299743

namespace A116035

/-- `lt[A000005(A065387(n+1)+n+1), 3]+1` -/
def P3638546264638299743.Spec : Prop :=
  ∀ n, (P3638546264638299743.a n : ℤ) = A116035 (n + 1)

end A116035

/-! ## A116035.P5560581900168118105

`eq[0, A191558(A065387(n+1)+n+1)]+1`
-/

namespace A116035.P5560581900168118105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A065387 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116035.P5560581900168118105

namespace A116035

/-- `eq[0, A191558(A065387(n+1)+n+1)]+1` -/
def P5560581900168118105.Spec : Prop :=
  ∀ n, (P5560581900168118105.a n : ℤ) = A116035 (n + 1)

end A116035

/-! ## A116035.P2479547596231449775

`record[A014963(A065387(n+1)+n+1)-A065387(n+1)]`
-/

namespace A116035.P2479547596231449775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A065387 (n + 1) + (n + 1 : ℤ)).toNat - A065387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116035.P2479547596231449775

namespace A116035

/-- `record[A014963(A065387(n+1)+n+1)-A065387(n+1)]` -/
def P2479547596231449775.Spec : Prop :=
  ∀ n, P2479547596231449775.a n = A116035 (n + 1)

end A116035

/-!
# A116036: Numbers k such that k + prime(k) + prime(prime(k)) is a prime, where prime(k) denotes the k-th prime.

The programs for A116036, the canonical program `A116036.P15843045991152988973` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116036 has offset 1).

The definition of A116036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116036.P15843045991152988973

`lt[A001222(A073136(n+1)+n+1), 2]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116036

/-- `lt[A001222(A073136(n+1)+n+1), 2]+1` -/
def P15843045991152988973.Spec : Prop :=
  ∀ n, (P15843045991152988973.a n : ℤ) = A116036 (n + 1)

theorem P15843045991152988973.correct : P15843045991152988973.Spec := by
  intro n
  simp only [A116036, Nat.add_sub_cancel]

end A116036

/-! ## A116036.P13003334680457787953

`record[A277692(A228139(n+1))+1]`
-/

namespace A116036.P13003334680457787953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A228139 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116036.P13003334680457787953

namespace A116036

/-- `record[A277692(A228139(n+1))+1]` -/
def P13003334680457787953.Spec : Prop :=
  ∀ n, P13003334680457787953.a n = A116036 (n + 1)

end A116036

/-! ## A116036.P9582344112553448923

`record[A334954(A152211(n+2)-A032741(n))]`
-/

namespace A116036.P9582344112553448923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A152211 (n + 2) - A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116036.P9582344112553448923

namespace A116036

/-- `record[A334954(A152211(n+2)-A032741(n))]` -/
def P9582344112553448923.Spec : Prop :=
  ∀ n, P9582344112553448923.a n = A116036 (n + 1)

end A116036

/-! ## A116036.P13691624702955503861

`∩[A065033(A321321(3*(n+1))), A004274(n)]`
-/

namespace A116036.P13691624702955503861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A321321 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116036.P13691624702955503861

namespace A116036

/-- `∩[A065033(A321321(3*(n+1))), A004274(n)]` -/
def P13691624702955503861.Spec : Prop :=
  ∀ n, (P13691624702955503861.a n : ℤ) = A116036 (n + 1)

end A116036

/-! ## A116036.P6214171432487284552

`∩[A065033(A321321(3*(n+1))), A047255(n+1)]`
-/

namespace A116036.P6214171432487284552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A321321 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116036.P6214171432487284552

namespace A116036

/-- `∩[A065033(A321321(3*(n+1))), A047255(n+1)]` -/
def P6214171432487284552.Spec : Prop :=
  ∀ n, (P6214171432487284552.a n : ℤ) = A116036 (n + 1)

end A116036

/-!
# A116044: n+phi(n)+phi(phi(n)) is a palindrome.

The programs for A116044, there is no canonical definition to state claims against.
-/

/-! ## A116044.P7804869928520516635

`A116027(n+1)%A202777(A262616(n))`
-/

namespace A116044.P7804869928520516635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116027 (n + 1)) (A202777 (A262616 n).toNat)

end

end A116044.P7804869928520516635

/-!
# A116045: n+phi(n)+phi(phi(n)) is a prime.

The programs for A116045, there is no canonical definition to state claims against.
-/

/-! ## A116045.P577974293809380798

`record[A151800(n)-A167754(n+1)]`
-/

namespace A116045.P577974293809380798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A167754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116045.P577974293809380798

/-! ## A116045.P16669166072249455655

`eq[val(n+1, 2), A050370(A255256(n))]`
-/

namespace A116045.P16669166072249455655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A255256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A116045.P16669166072249455655

/-! ## A116045.P12363660295473011190

`lt[A035184(n+2), char[A093093(n+1)]]`
-/

namespace A116045.P12363660295473011190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A116045.P12363660295473011190

/-! ## A116045.P14324304789945926925

`eq[A219204(n), A344874(A008619(n))]`
-/

namespace A116045.P14324304789945926925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116045.P14324304789945926925

/-! ## A116045.P6329868078940976240

`eq[A007814(n+1), A221878(A007318(n))]`
-/

namespace A116045.P6329868078940976240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221878 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116045.P6329868078940976240

/-!
# A116054: n times pi(n) is a palindrome, where pi(n) = PrimePi(n) = A000720(n).

The programs for A116054, there is no canonical definition to state claims against.
-/

/-! ## A116054.P5230620344724677541

`eq[A000007(n), A261424(n*A230980(n))]`
-/

namespace A116054.P5230620344724677541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 ((n : ℤ) * A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116054.P5230620344724677541

/-! ## A116054.P678768542824207080

`eq[A000038(n), A064834(n*A230980(n))]`
-/

namespace A116054.P678768542824207080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 ((n : ℤ) * A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116054.P678768542824207080

/-! ## A116054.P4266266925604477159

`eq[A054977(n), A261675(n*A230980(n))]`
-/

namespace A116054.P4266266925604477159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 ((n : ℤ) * A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116054.P4266266925604477159

/-! ## A116054.P9097036509156880378

`eq[A057427(n), A261675(n*A230980(n))]`
-/

namespace A116054.P9097036509156880378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 ((n : ℤ) * A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116054.P9097036509156880378

/-!
# A116058: n times the n-th prime is made of nontrivial runs of identical digits.

The programs for A116058, there is no canonical definition to state claims against.
-/

/-! ## A116058.P8497069846619353420

`A116060(n+1)/A116059(n+1)`
-/

namespace A116058.P8497069846619353420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116060 (n + 1) : ℚ) / (A116059 (n + 1) : ℚ)

end

end A116058.P8497069846619353420

/-!
# A116059: The prime p times its index gives a number that is made of nontrivial runs of identical digits.

The programs for A116059, there is no canonical definition to state claims against.
-/

/-! ## A116059.P8166314469621132288

`A116060(n+1)/A116058(n+1)`
-/

namespace A116059.P8166314469621132288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116060 (n + 1) : ℚ) / (A116058 (n + 1) : ℚ)

end

end A116059.P8166314469621132288

/-!
# A116060: Numbers made of nontrivial runs of identical digits obtained multiplying a number m by the m-th prime.

The programs for A116060, there is no canonical definition to state claims against.
-/

/-! ## A116060.P12891461092171155674

`A116058(n+1)*A116059(n+1)`
-/

namespace A116060.P12891461092171155674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116058 (n + 1) * A116059 (n + 1)

end

end A116060.P12891461092171155674

/-! ## A116060.P15976853270492703890

`lcm(A116058(n+1), A116059(n-log2(1/2)))`
-/

namespace A116060.P15976853270492703890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A116058 (n + 1)) (A116059 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A116060.P15976853270492703890

/-!
# A116063: Semiprimes (A001358) made of nontrivial runs of identical digits.

The programs for A116063, there is no canonical definition to state claims against.
-/

/-! ## A116063.P16743502949745140142

`filter[A033023(n+1), A064911(#)]`
-/

namespace A116063.P16743502949745140142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A116063.P16743502949745140142

/-! ## A116063.P2826073871186597366

`filter[A033023(n+1), A280710(#)]`
-/

namespace A116063.P2826073871186597366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A116063.P2826073871186597366

/-! ## A116063.P4544300565487393316

`filter[A033023(n+1), A354927(#)]`
-/

namespace A116063.P4544300565487393316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A116063.P4544300565487393316

/-! ## A116063.P15140042129110601363

`∩[A001358(n+1), A033023(n+1)]`
-/

namespace A116063.P15140042129110601363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116063.P15140042129110601363

/-! ## A116063.P13086788710984104148

`∩[A006881(n+1), A033023(n+1)]`
-/

namespace A116063.P13086788710984104148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116063.P13086788710984104148

/-!
# A116066: Numbers k such that both k and the k-th prime have nondecreasing digits.

The programs for A116066, there is no canonical definition to state claims against.
-/

/-! ## A116066.P8856820450832585591

`∩[A009994(n+1), A000720(A028864(n+1))]`
-/

namespace A116066.P8856820450832585591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028864 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116066.P8856820450832585591

/-!
# A116067: Numbers k such that both k and the k-th prime have nonincreasing digits.

The programs for A116067, there is no canonical definition to state claims against.
-/

/-! ## A116067.P7885484898538896591

`∩[A009996(n+1), A000720(A028867(n+1))]`
-/

namespace A116067.P7885484898538896591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028867 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116067.P7885484898538896591

/-! ## A116067.P8227590750106001517

`∑[A320747(A017983(n)+A003681(n+1))]`
-/

namespace A116067.P8227590750106001517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320747 (A017983 n + A003681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116067.P8227590750106001517

/-!
# A116068: Numbers k such that k has nondecreasing digits and the k-th prime has nonincreasing digits.

The programs for A116068, there is no canonical definition to state claims against.
-/

/-! ## A116068.P11975554257217442519

`∩[A009994(n+1), A000720(A028867(n+1))]`
-/

namespace A116068.P11975554257217442519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028867 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116068.P11975554257217442519

/-!
# A116069: Numbers k such that k has nonincreasing digits and the k-th prime has nondecreasing digits.

The programs for A116069, there is no canonical definition to state claims against.
-/

/-! ## A116069.P11794547991971693404

`∩[A009996(n+1), A000720(A028864(n+1))]`
-/

namespace A116069.P11794547991971693404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028864 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116069.P11794547991971693404

/-! ## A116069.P13884549269534386129

`∩[A056239(A028864(n+1)), A009996(n+2)]`
-/

namespace A116069.P13884549269534386129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A028864 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116069.P13884549269534386129

/-! ## A116069.P7152322991471822255

`∑[A347439(A111587(n))]`
-/

namespace A116069.P7152322991471822255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (A111587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116069.P7152322991471822255

/-! ## A116069.P16082952138576589886

`eq[A108782(n), A109488(n)]`
-/

namespace A116069.P16082952138576589886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116069.P16082952138576589886

/-! ## A116069.P7164888304719523559

`eq[A108782(n), A147770(n)]`
-/

namespace A116069.P7164888304719523559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116069.P7164888304719523559

/-!
# A116071: Triangle T, read by rows, equal to Pascal's triangle to the matrix power of Pascal's triangle, so that T = C^C, where C(n,k) = binomial(n,k) and T(n,k) = A000248(n-k)*C(n,k).

The programs for A116071, there is no canonical definition to state claims against.
-/

/-! ## A116071.P13784917789020289662

`A007318(n)*A000248(A025581(n))`
-/

namespace A116071.P13784917789020289662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000248 (A025581 n).toNat

end

end A116071.P13784917789020289662

/-! ## A116071.P7293558350279894049

`abs(A000248(A025581(n))*A108086(n))`
-/

namespace A116071.P7293558350279894049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000248 (A025581 n).toNat * A108086 n|

end

end A116071.P7293558350279894049

/-! ## A116071.P11622265702289874319

`abs(A000248(A025581(n))*A130595(n))`
-/

namespace A116071.P11622265702289874319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000248 (A025581 n).toNat * A130595 n|

end

end A116071.P11622265702289874319

/-! ## A116071.P4524064955165362000

`sqrt(A008459(n))*A000248(A025581(n))`
-/

namespace A116071.P4524064955165362000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000248 (A025581 n).toNat : ℝ)

end

end A116071.P4524064955165362000

/-! ## A116071.P17225506597384402919

`Δ[A102363(n)]*A000248(A025581(n))`
-/

namespace A116071.P17225506597384402919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000248 (A025581 n).toNat

end

end A116071.P17225506597384402919

/-! ## A116071.P5923503232427667044

`(A014473(n)+1)*A000248(A025581(n))`
-/

namespace A116071.P5923503232427667044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000248 (A025581 n).toNat

end

end A116071.P5923503232427667044

/-! ## A116071.P16274362754850087122

`A000248(A025581(n))/2*A028326(n)`
-/

namespace A116071.P16274362754850087122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000248 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A116071.P16274362754850087122

/-! ## A116071.P1417790124037428495

`ceil(A124927(n)/2)*A000248(A025581(n))`
-/

namespace A116071.P1417790124037428495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉ * A000248 (A025581 n).toNat

end

end A116071.P1417790124037428495

/-! ## A116071.P138252875509586269

`A013620(n)/A036561(n)*A000248(A025581(n))`
-/

namespace A116071.P138252875509586269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A036561 n : ℚ) * (A000248 (A025581 n).toNat : ℚ)

end

end A116071.P138252875509586269

/-! ## A116071.P17042643310971050183

`A259760(∑[2*n]%comp[∑[n]])`
-/

namespace A116071.P17042643310971050183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259760 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A116071.P17042643310971050183

/-!
# A116072: Central terms of triangle A116071, which equals Pascal's triangle to the matrix power of Pascal's triangle.

The programs for A116072, there is no canonical definition to state claims against.
-/

/-! ## A116072.P2569156969968295087

`(n+1)*A000108(n)*A000248(n)`
-/

namespace A116072.P2569156969968295087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A000248 n

end

end A116072.P2569156969968295087

/-! ## A116072.P3948958339847041603

`C(2*n, n)*A000248(n)`
-/

namespace A116072.P3948958339847041603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000248 n

end

end A116072.P3948958339847041603

/-! ## A116072.P16832467126258886412

`A000248(n)*A000984(n)`
-/

namespace A116072.P16832467126258886412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n * A000984 n

end

end A116072.P16832467126258886412

/-! ## A116072.P16036687286434451909

`record[A126869(n)]*A000248(n)`
-/

namespace A116072.P16036687286434451909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000248 n

end

end A116072.P16036687286434451909

/-! ## A116072.P8898523109960902223

`record[A126930(n)]*A000248(n)`
-/

namespace A116072.P8898523109960902223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000248 n

end

end A116072.P8898523109960902223

/-! ## A116072.P1932910468704913382

`A000108(n)*A052512(n+1)`
-/

namespace A116072.P1932910468704913382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A052512 (n + 1)

end

end A116072.P1932910468704913382

/-! ## A116072.P3317977922941713715

`A000248(n)*A126869(2*n)`
-/

namespace A116072.P3317977922941713715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n * A126869 (2 * n)

end

end A116072.P3317977922941713715

/-! ## A116072.P15487398497838999280

`A000248(n)*A126930(2*n)`
-/

namespace A116072.P15487398497838999280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n * A126930 (2 * n)

end

end A116072.P15487398497838999280

/-! ## A116072.P18407325287820767901

`(n+1)*A000108(n)*A143397(∑[n]+n)`
-/

namespace A116072.P18407325287820767901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A143397 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A116072.P18407325287820767901

/-! ## A116072.P1031411275898209165

`A000248(n)*A007318(A046092(n))`
-/

namespace A116072.P1031411275898209165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n * A007318 (A046092 n).toNat

end

end A116072.P1031411275898209165

/-!
# A116073: Sum of the divisors of n that are not divisible by 5.

The programs for A116073, the canonical program `A116073.P184077794381179264` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116073 has offset 1).

The definition of A116073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116073.P184077794381179264

`∑{d}[n+1, #%lcm(5, #)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A116073

/-- `∑{d}[n+1, #%lcm(5, #)]` -/
def P184077794381179264.Spec : Prop :=
  ∀ n, (P184077794381179264.a n : ℤ) = A116073 (n + 1)

theorem P184077794381179264.correct : P184077794381179264.Spec := by
  intro n
  simp only [A116073, Nat.add_sub_cancel]

end A116073

/-! ## A116073.P5253211884748469177

`∑{d}[n+1, A091703(#)]`
-/

namespace A116073.P5253211884748469177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091703 d

end

end A116073.P5253211884748469177

namespace A116073

/-- `∑{d}[n+1, A091703(#)]` -/
def P5253211884748469177.Spec : Prop :=
  ∀ n, P5253211884748469177.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P14585792305638422563

`∑{d}[A132739(n+1), #]`
-/

namespace A116073.P14585792305638422563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A116073.P14585792305638422563

namespace A116073

/-- `∑{d}[A132739(n+1), #]` -/
def P14585792305638422563.Spec : Prop :=
  ∀ n, (P14585792305638422563.a n : ℤ) = A116073 (n + 1)

end A116073

/-! ## A116073.P16209036339032128221

`∑{d}[n+1, #*A011558(#)]`
-/

namespace A116073.P16209036339032128221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011558 d

end

end A116073.P16209036339032128221

namespace A116073

/-- `∑{d}[n+1, #*A011558(#)]` -/
def P16209036339032128221.Spec : Prop :=
  ∀ n, P16209036339032128221.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P17235482865732938247

`A000203((n+1)/5^val(n+1, 5))`
-/

namespace A116073.P17235482865732938247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))).toNat

end

end A116073.P17235482865732938247

namespace A116073

/-- `A000203((n+1)/5^val(n+1, 5))` -/
def P17235482865732938247.Spec : Prop :=
  ∀ n, P17235482865732938247.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P718155491917417079

`A000203(A132739(n+1))`
-/

namespace A116073.P718155491917417079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A132739 (n + 1)).toNat

end

end A116073.P718155491917417079

namespace A116073

/-- `A000203(A132739(n+1))` -/
def P718155491917417079.Spec : Prop :=
  ∀ n, P718155491917417079.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P13334522843010778829

`A284152(n+1)+A284150(n+1)`
-/

namespace A116073.P13334522843010778829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (n + 1) + A284150 (n + 1)

end

end A116073.P13334522843010778829

namespace A116073

/-- `A284152(n+1)+A284150(n+1)` -/
def P13334522843010778829.Spec : Prop :=
  ∀ n, P13334522843010778829.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P16711457507682970147

`A283118(n+1)-A274535(n+1)`
-/

namespace A116073.P16711457507682970147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283118 (n + 1) - A274535 (n + 1)

end

end A116073.P16711457507682970147

namespace A116073

/-- `A283118(n+1)-A274535(n+1)` -/
def P16711457507682970147.Spec : Prop :=
  ∀ n, P16711457507682970147.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P15266622462164792873

`A000203((n+1)/A060904(n+1))`
-/

namespace A116073.P15266622462164792873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A116073.P15266622462164792873

namespace A116073

/-- `A000203((n+1)/A060904(n+1))` -/
def P15266622462164792873.Spec : Prop :=
  ∀ n, P15266622462164792873.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P3666269615145612570

`A000203(n+1)/A339747(n+1)`
-/

namespace A116073.P3666269615145612570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A339747 (n + 1) : ℚ)

end

end A116073.P3666269615145612570

namespace A116073

/-- `A000203(n+1)/A339747(n+1)` -/
def P3666269615145612570.Spec : Prop :=
  ∀ n, P3666269615145612570.a n = (A116073 (n + 1) : ℚ)

end A116073

/-! ## A116073.P13053513746251886942

`A285896((n+1)/A060904(n+1))`
-/

namespace A116073.P13053513746251886942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A116073.P13053513746251886942

namespace A116073

/-- `A285896((n+1)/A060904(n+1))` -/
def P13053513746251886942.Spec : Prop :=
  ∀ n, P13053513746251886942.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P11235514956065365544

`gcd(A000203(n+1), A283118(n+1))`
-/

namespace A116073.P11235514956065365544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A283118 (n + 1))

end

end A116073.P11235514956065365544

namespace A116073

/-- `gcd(A000203(n+1), A283118(n+1))` -/
def P11235514956065365544.Spec : Prop :=
  ∀ n, (P11235514956065365544.a n : ℤ) = A116073 (n + 1)

end A116073

/-! ## A116073.P10574907700018565911

`gcd(A074400(n+1), A285896(n+1))`
-/

namespace A116073.P10574907700018565911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074400 (n + 1)) (A285896 (n + 1))

end

end A116073.P10574907700018565911

namespace A116073

/-- `gcd(A074400(n+1), A285896(n+1))` -/
def P10574907700018565911.Spec : Prop :=
  ∀ n, (P10574907700018565911.a n : ℤ) = A116073 (n + 1)

end A116073

/-! ## A116073.P10160890555396315183

`A109091(n+1)+2*A284152(n+1)`
-/

namespace A116073.P10160890555396315183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1) + 2 * A284152 (n + 1)

end

end A116073.P10160890555396315183

namespace A116073

/-- `A109091(n+1)+2*A284152(n+1)` -/
def P10160890555396315183.Spec : Prop :=
  ∀ n, P10160890555396315183.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P2534336921353689301

`2*A284150(n+1)-A109091(n+1)`
-/

namespace A116073.P2534336921353689301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284150 (n + 1) - A109091 (n + 1)

end

end A116073.P2534336921353689301

namespace A116073

/-- `2*A284150(n+1)-A109091(n+1)` -/
def P2534336921353689301.Spec : Prop :=
  ∀ n, P2534336921353689301.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P10996089047792673177

`A284097(n+1)+A284152(n+1)+A284103(n+1)`
-/

namespace A116073.P10996089047792673177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + (A284152 (n + 1) + A284103 (n + 1))

end

end A116073.P10996089047792673177

namespace A116073

/-- `A284097(n+1)+A284152(n+1)+A284103(n+1)` -/
def P10996089047792673177.Spec : Prop :=
  ∀ n, P10996089047792673177.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P2506260338955688382

`A284150(n+1)+A284281(n+1)+A284280(n+1)`
-/

namespace A116073.P2506260338955688382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) + (A284281 (n + 1) + A284280 (n + 1))

end

end A116073.P2506260338955688382

namespace A116073

/-- `A284150(n+1)+A284281(n+1)+A284280(n+1)` -/
def P2506260338955688382.Spec : Prop :=
  ∀ n, P2506260338955688382.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P11570172307213190036

`A074400(n+1)+A283118(n+1)-A319527(n+1)`
-/

namespace A116073.P11570172307213190036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (A283118 (n + 1) - A319527 (n + 1))

end

end A116073.P11570172307213190036

namespace A116073

/-- `A074400(n+1)+A283118(n+1)-A319527(n+1)` -/
def P11570172307213190036.Spec : Prop :=
  ∀ n, P11570172307213190036.a n = A116073 (n + 1)

end A116073

/-! ## A116073.P3103931720832399312

`A028887(n+1)/6`
-/

namespace A116073.P3103931720832399312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028887 (n + 1) : ℚ) / 6

end

end A116073.P3103931720832399312

namespace A116073

/-- `A028887(n+1)/6` -/
def P3103931720832399312.Spec : Prop :=
  ∀ n, P3103931720832399312.a n = (A116073 (n + 1) : ℚ)

end A116073

/-! ## A116073.P10884978034034039509

`A146076(A132739(2*(n+1)))/2`
-/

namespace A116073.P10884978034034039509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (A132739 (2 * (n + 1))).toNat : ℚ) / 2

end

end A116073.P10884978034034039509

namespace A116073

/-- `A146076(A132739(2*(n+1)))/2` -/
def P10884978034034039509.Spec : Prop :=
  ∀ n, P10884978034034039509.a n = (A116073 (n + 1) : ℚ)

end A116073

/-!
# A116078: Column 0 of triangle A116077.

The programs for A116078, the canonical program `A116078.P123251626147989566` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116078 has offset 0).

The definition of A116078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116078.P123251626147989566

`A139262(n)+A000984(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116078

/-- `A139262(n)+A000984(n)` -/
def P123251626147989566.Spec : Prop :=
  ∀ n, P123251626147989566.a n = A116078 n

theorem P123251626147989566.correct : P123251626147989566.Spec := by
  intro n
  simp only [A116078]

end A116078

/-! ## A116078.P3098886899415085083

`A139262(n)+record[A126869(n)]`
-/

namespace A116078.P3098886899415085083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116078.P3098886899415085083

namespace A116078

/-- `A139262(n)+record[A126869(n)]` -/
def P3098886899415085083.Spec : Prop :=
  ∀ n, P3098886899415085083.a n = A116078 n

end A116078

/-! ## A116078.P16556478998973897051

`A139262(n)+A001405(2*n)`
-/

namespace A116078.P16556478998973897051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A001405 (2 * n)

end

end A116078.P16556478998973897051

namespace A116078

/-- `A139262(n)+A001405(2*n)` -/
def P16556478998973897051.Spec : Prop :=
  ∀ n, P16556478998973897051.a n = A116078 n

end A116078

/-! ## A116078.P5868590149685084211

`A191309(2*n)+A000984(n)`
-/

namespace A116078.P5868590149685084211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * n) + A000984 n

end

end A116078.P5868590149685084211

namespace A116078

/-- `A191309(2*n)+A000984(n)` -/
def P5868590149685084211.Spec : Prop :=
  ∀ n, P5868590149685084211.a n = A116078 n

end A116078

/-! ## A116078.P10833951806911616310

`A139262(n)+A126869(2*n)`
-/

namespace A116078.P10833951806911616310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A126869 (2 * n)

end

end A116078.P10833951806911616310

namespace A116078

/-- `A139262(n)+A126869(2*n)` -/
def P10833951806911616310.Spec : Prop :=
  ∀ n, P10833951806911616310.a n = A116078 n

end A116078

/-! ## A116078.P18298992814847179527

`A398446(n+3)-A000302(n)`
-/

namespace A116078.P18298992814847179527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398446 (n + 3) - A000302 n

end

end A116078.P18298992814847179527

namespace A116078

/-- `A398446(n+3)-A000302(n)` -/
def P18298992814847179527.Spec : Prop :=
  ∀ n, P18298992814847179527.a n = A116078 n

end A116078

/-! ## A116078.P7183516984925787651

`A191520(2*n+1)+A114121(n)`
-/

namespace A116078.P7183516984925787651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191520 (2 * n + 1) + A114121 n

end

end A116078.P7183516984925787651

namespace A116078

/-- `A191520(2*n+1)+A114121(n)` -/
def P7183516984925787651.Spec : Prop :=
  ∀ n, P7183516984925787651.a n = A116078 n

end A116078

/-! ## A116078.P8701646739522321429

`A191309(2*n)+A001405(2*n)`
-/

namespace A116078.P8701646739522321429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * n) + A001405 (2 * n)

end

end A116078.P8701646739522321429

namespace A116078

/-- `A191309(2*n)+A001405(2*n)` -/
def P8701646739522321429.Spec : Prop :=
  ∀ n, P8701646739522321429.a n = A116078 n

end A116078

/-! ## A116078.P15724268262549226975

`A000108(n)+A139262(n)+A001791(n)`
-/

namespace A116078.P15724268262549226975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A139262 n + A001791 n)

end

end A116078.P15724268262549226975

namespace A116078

/-- `A000108(n)+A139262(n)+A001791(n)` -/
def P15724268262549226975.Spec : Prop :=
  ∀ n, P15724268262549226975.a n = A116078 n

end A116078

/-! ## A116078.P8994822922260240599

`A034275(n+1)-A394529(n)`
-/

namespace A116078.P8994822922260240599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034275 (n + 1) - A394529 n

end

end A116078.P8994822922260240599

namespace A116078

/-- `A034275(n+1)-A394529(n)` -/
def P8994822922260240599.Spec : Prop :=
  ∀ n, P8994822922260240599.a n = A116078 n

end A116078

/-!
# A116079: Number of connected triangle-free graphs on n nodes with chromatic number 3.

The programs for A116079, there is no canonical definition to state claims against.
-/

/-! ## A116079.P14378845207269458331

`A243326(A052382(n+1))-A243323(n+1)`
-/

namespace A116079.P14378845207269458331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A052382 (n + 1)).toNat - A243323 (n + 1)

end

end A116079.P14378845207269458331

/-! ## A116079.P14799366501867274633

`A243326(A062179(n+1))-A243323(n+1)`
-/

namespace A116079.P14799366501867274633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A062179 (n + 1)).toNat - A243323 (n + 1)

end

end A116079.P14799366501867274633

/-! ## A116079.P16903053419428862538

`A243326(A103357(n+1))-A243323(n+1)`
-/

namespace A116079.P16903053419428862538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A103357 (n + 1)).toNat - A243323 (n + 1)

end

end A116079.P16903053419428862538

/-! ## A116079.P5831719648712478679

`A243326(A225580(n+1))-A243323(n+1)`
-/

namespace A116079.P5831719648712478679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A225580 (n + 1)).toNat - A243323 (n + 1)

end

end A116079.P5831719648712478679

/-! ## A116079.P18231994059910466463

`A243326(n+1)-A243323(A325364(n+1))`
-/

namespace A116079.P18231994059910466463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (n + 1) - A243323 (A325364 (n + 1)).toNat

end

end A116079.P18231994059910466463

/-!
# A116081: Final nonzero digit of n^n.

The programs for A116081, the canonical program `A116081.P4267909738443248128` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116081 has offset 1).

The definition of A116081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116081.P4267909738443248128

`(((n+1)/10^val(n+1, 10))^(n%8+1))%10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A116081

/-- `(((n+1)/10^val(n+1, 10))^(n%8+1))%10` -/
def P4267909738443248128.Spec : Prop :=
  ∀ n, P4267909738443248128.a n = A116081 (n + 1)

theorem P4267909738443248128.correct : P4267909738443248128.Spec := by
  intro n
  simp only [A116081, Nat.add_sub_cancel]

end A116081

/-! ## A116081.P13148628435776245951

`(A004151(n+1)^A010883(n))%10`
-/

namespace A116081.P13148628435776245951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004151 (n + 1) : ℚ) ^ (A010883 n : ℤ))) 10

end

end A116081.P13148628435776245951

namespace A116081

/-- `(A004151(n+1)^A010883(n))%10` -/
def P13148628435776245951.Spec : Prop :=
  ∀ n, P13148628435776245951.a n = A116081 (n + 1)

end A116081

/-! ## A116081.P14524553565312764656

`(A004719(n+1)^A010883(n))%10`
-/

namespace A116081.P14524553565312764656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004719 (n + 1) : ℚ) ^ (A010883 n : ℤ))) 10

end

end A116081.P14524553565312764656

namespace A116081

/-- `(A004719(n+1)^A010883(n))%10` -/
def P14524553565312764656.Spec : Prop :=
  ∀ n, P14524553565312764656.a n = A116081 (n + 1)

end A116081

/-! ## A116081.P11615375988178641855

`(A065881(n+1)^A010883(n))%10`
-/

namespace A116081.P11615375988178641855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A065881 (n + 1) : ℚ) ^ (A010883 n : ℤ))) 10

end

end A116081.P11615375988178641855

namespace A116081

/-- `(A065881(n+1)^A010883(n))%10` -/
def P11615375988178641855.Spec : Prop :=
  ∀ n, P11615375988178641855.a n = A116081 (n + 1)

end A116081

/-! ## A116081.P10148346577802816745

`(A004151(n+1)^A020723(n))%10`
-/

namespace A116081.P10148346577802816745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004151 (n + 1) : ℚ) ^ (A020723 n : ℤ))) 10

end

end A116081.P10148346577802816745

namespace A116081

/-- `(A004151(n+1)^A020723(n))%10` -/
def P10148346577802816745.Spec : Prop :=
  ∀ n, P10148346577802816745.a n = A116081 (n + 1)

end A116081

/-! ## A116081.P12669058718268810358

`(A004719(n+1)^A020723(n))%10`
-/

namespace A116081.P12669058718268810358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004719 (n + 1) : ℚ) ^ (A020723 n : ℤ))) 10

end

end A116081.P12669058718268810358

namespace A116081

/-- `(A004719(n+1)^A020723(n))%10` -/
def P12669058718268810358.Spec : Prop :=
  ∀ n, P12669058718268810358.a n = A116081 (n + 1)

end A116081

/-!
# A116082: a(n) = C(n,7) + C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

The programs for A116082, the canonical program `A116082.P16490829087811432884` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116082 has offset 0).

The definition of A116082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116082.P16490829087811432884

`A008860(n)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A116082

/-- `A008860(n)-1` -/
def P16490829087811432884.Spec : Prop :=
  ∀ n, P16490829087811432884.a n = A116082 n

theorem P16490829087811432884.correct : P16490829087811432884.Spec := by
  intro n
  simp only [A116082]

end A116082

/-! ## A116082.P4323278175466838781

`Δ[A008861(n)]-1`
-/

namespace A116082.P4323278175466838781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P4323278175466838781

namespace A116082

/-- `Δ[A008861(n)]-1` -/
def P4323278175466838781.Spec : Prop :=
  ∀ n, P4323278175466838781.a n = A116082 n

end A116082

/-! ## A116082.P17260335546835836902

`A362195(n)-1+n`
-/

namespace A116082.P17260335546835836902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n - 1 + (n : ℤ)

end

end A116082.P17260335546835836902

namespace A116082

/-- `A362195(n)-1+n` -/
def P17260335546835836902.Spec : Prop :=
  ∀ n, P17260335546835836902.a n = A116082 n

end A116082

/-! ## A116082.P10792319355324917426

`A362195(n)+A023443(n)`
-/

namespace A116082.P10792319355324917426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n + A023443 n

end

end A116082.P10792319355324917426

namespace A116082

/-- `A362195(n)+A023443(n)` -/
def P10792319355324917426.Spec : Prop :=
  ∀ n, P10792319355324917426.a n = A116082 n

end A116082

/-! ## A116082.P12301618129277391043

`A362195(n)-A024000(n)`
-/

namespace A116082.P12301618129277391043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n - A024000 n

end

end A116082.P12301618129277391043

namespace A116082

/-- `A362195(n)-A024000(n)` -/
def P12301618129277391043.Spec : Prop :=
  ∀ n, P12301618129277391043.a n = A116082 n

end A116082

/-! ## A116082.P7695940388931385071

`∑[A008859(n)]-A008859(n)`
-/

namespace A116082.P7695940388931385071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008859 n

end

end A116082.P7695940388931385071

namespace A116082

/-- `∑[A008859(n)]-A008859(n)` -/
def P7695940388931385071.Spec : Prop :=
  ∀ n, P7695940388931385071.a n = A116082 n

end A116082

/-! ## A116082.P15078742661011552124

`∑[A008860(n)]%A008861(n)`
-/

namespace A116082.P15078742661011552124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008861 n)

end

end A116082.P15078742661011552124

namespace A116082

/-- `∑[A008860(n)]%A008861(n)` -/
def P15078742661011552124.Spec : Prop :=
  ∀ n, P15078742661011552124.a n = A116082 n

end A116082

/-! ## A116082.P6353642285285667651

`A008862(n)-A115205(n+1)`
-/

namespace A116082.P6353642285285667651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n - A115205 (n + 1)

end

end A116082.P6353642285285667651

namespace A116082

/-- `A008862(n)-A115205(n+1)` -/
def P6353642285285667651.Spec : Prop :=
  ∀ n, P6353642285285667651.a n = A116082 n

end A116082

/-! ## A116082.P14900684680835961787

`∑[A000579(n)]+A006261(n)-1`
-/

namespace A116082.P14900684680835961787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A006261 n - 1)

end

end A116082.P14900684680835961787

namespace A116082

/-- `∑[A000579(n)]+A006261(n)-1` -/
def P14900684680835961787.Spec : Prop :=
  ∀ n, P14900684680835961787.a n = A116082 n

end A116082

/-! ## A116082.P12246983898219323216

`A188558(n+1)-(A188557(n+1)+1)`
-/

namespace A116082.P12246983898219323216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - (A188557 (n + 1) + 1)

end

end A116082.P12246983898219323216

namespace A116082

/-- `A188558(n+1)-(A188557(n+1)+1)` -/
def P12246983898219323216.Spec : Prop :=
  ∀ n, P12246983898219323216.a n = A116082 n

end A116082

/-! ## A116082.P140032892725399865

`Δ[A362196(n)]`
-/

namespace A116082.P140032892725399865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116082.P140032892725399865

namespace A116082

/-- `Δ[A362196(n)]` -/
def P140032892725399865.Spec : Prop :=
  ∀ n, P140032892725399865.a n = A116082 n

end A116082

/-! ## A116082.P16806126702757268241

`Δ[A116690(n)]-1`
-/

namespace A116082.P16806126702757268241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P16806126702757268241

namespace A116082

/-- `Δ[A116690(n)]-1` -/
def P16806126702757268241.Spec : Prop :=
  ∀ n, P16806126702757268241.a n = A116082 n

end A116082

/-! ## A116082.P1458007062719556728

`Δ[Δ[A008862(n)]]-1`
-/

namespace A116082.P1458007062719556728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P1458007062719556728

namespace A116082

/-- `Δ[Δ[A008862(n)]]-1` -/
def P1458007062719556728.Spec : Prop :=
  ∀ n, P1458007062719556728.a n = A116082 n

end A116082

/-! ## A116082.P16876951937603988150

`Δ[Δ[A362197(n)]]-1`
-/

namespace A116082.P16876951937603988150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P16876951937603988150

namespace A116082

/-- `Δ[Δ[A362197(n)]]-1` -/
def P16876951937603988150.Spec : Prop :=
  ∀ n, P16876951937603988150.a n = A116082 n

end A116082

/-! ## A116082.P18126992371218789450

`A362196(n+1)-A362196(n)`
-/

namespace A116082.P18126992371218789450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 (n + 1) - A362196 n

end

end A116082.P18126992371218789450

namespace A116082

/-- `A362196(n+1)-A362196(n)` -/
def P18126992371218789450.Spec : Prop :=
  ∀ n, P18126992371218789450.a n = A116082 n

end A116082

/-! ## A116082.P3086849376698138714

`Δ[A188559(n+1)]-(A188557(n+1)+1)`
-/

namespace A116082.P3086849376698138714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A188557 (n + 1) + 1)

end

end A116082.P3086849376698138714

namespace A116082

/-- `Δ[A188559(n+1)]-(A188557(n+1)+1)` -/
def P3086849376698138714.Spec : Prop :=
  ∀ n, P3086849376698138714.a n = A116082 n

end A116082

/-! ## A116082.P16239753716081811012

`Δ[A188559(n+1)-A188558(n+1)]-1`
-/

namespace A116082.P16239753716081811012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - A188558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P16239753716081811012

namespace A116082

/-- `Δ[A188559(n+1)-A188558(n+1)]-1` -/
def P16239753716081811012.Spec : Prop :=
  ∀ n, P16239753716081811012.a n = A116082 n

end A116082

/-! ## A116082.P3267831955716727327

`Δ[Δ[Δ[A008863(n)]]]-1`
-/

namespace A116082.P3267831955716727327
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A116082.P3267831955716727327

namespace A116082

/-- `Δ[Δ[Δ[A008863(n)]]]-1` -/
def P3267831955716727327.Spec : Prop :=
  ∀ n, P3267831955716727327.a n = A116082 n

end A116082

/-! ## A116082.P15743011806933385422

`A000225(n)-A035040(n)`
-/

namespace A116082.P15743011806933385422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A035040 n

end

end A116082.P15743011806933385422

namespace A116082

/-- `A000225(n)-A035040(n)` -/
def P15743011806933385422.Spec : Prop :=
  ∀ n, P15743011806933385422.a n = A116082 n

end A116082

/-! ## A116082.P18123667896011202420

`A000079(n)-(A035040(n)+1)`
-/

namespace A116082.P18123667896011202420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A035040 n + 1)

end

end A116082.P18123667896011202420

namespace A116082

/-- `A000079(n)-(A035040(n)+1)` -/
def P18123667896011202420.Spec : Prop :=
  ∀ n, P18123667896011202420.a n = A116082 n

end A116082

/-!
# A116083: Numbers k such that phi(sigma(k)) - sigma(phi(k)) = 1.

The programs for A116083, there is no canonical definition to state claims against.
-/

/-! ## A116083.P12226499983325322490

`2^(∏[gcd(2, n)]-1)*3^(n%2)`
-/

namespace A116083.P12226499983325322490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ) * (3 ^ (n % 2) : ℚ)

end

end A116083.P12226499983325322490

/-! ## A116083.P8214863223702096701

`2*gcd(a(n-1), a(n-2))*a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A116083.P8214863223702096701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  2 * (Nat.gcd (a (n - 1)) (a (n - 2)) * a (n - 2))

end

end A116083.P8214863223702096701

/-! ## A116083.P18055295604786580464

`A122756(∪[2^n, ∑[2^n]])`
-/

namespace A116083.P18055295604786580464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A116083.P18055295604786580464

/-! ## A116083.P7801339967378683847

`3^(n%2)*A081294(2^floor(n/2))`
-/

namespace A116083.P7801339967378683847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A081294 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A116083.P7801339967378683847

/-! ## A116083.P6486670155872374979

`A122756(A097110(n))`
-/

namespace A116083.P6486670155872374979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (A097110 n).toNat

end

end A116083.P6486670155872374979

/-!
# A116084: Number of partitions of 1 into distinct fractions i/j with 1<=i

The programs for A116084, there is no canonical definition to state claims against.
-/

/-! ## A116084.P4772704335545293711

`A154888(n+1)-1`
-/

namespace A116084.P4772704335545293711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154888 (n + 1) - 1

end

end A116084.P4772704335545293711

/-! ## A116084.P14905190548228039325

`A116085(n)+a(n-1)` with `a(0)=0`
-/

namespace A116084.P14905190548228039325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A116085 n + a (n - 1)

end

end A116084.P14905190548228039325

/-! ## A116084.P1939267574833804431

`∑[A116085(round(sqrt(n²+1)))]`
-/

namespace A116084.P1939267574833804431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116084.P1939267574833804431

/-! ## A116084.P6432390672080318467

`abs(1-A154888(-xor(n, -1)))`
-/

namespace A116084.P6432390672080318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A154888 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A116084.P6432390672080318467

/-! ## A116084.P5071824250036370471

`∑[A116085(A000038(n)+n)]-1`
-/

namespace A116084.P5071824250036370471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A116084.P5071824250036370471

/-!
# A116085: First differences of A116084.

The programs for A116085, there is no canonical definition to state claims against.
-/

/-! ## A116085.P9277706160403938024

`A116084(n+2)-A116084(n+1)`
-/

namespace A116085.P9277706160403938024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116084 (n + 2) - A116084 (n + 1)

end

end A116085.P9277706160403938024

/-! ## A116085.P1203324142766218596

`Δ[A116084(n+1)]`
-/

namespace A116085.P1203324142766218596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116085.P1203324142766218596

/-! ## A116085.P4127548782572971395

`Δ[A154888(n+1)]`
-/

namespace A116085.P4127548782572971395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116085.P4127548782572971395

/-! ## A116085.P18347348377314027182

`abs(Δ[A154888(-xor(n, -1))])`
-/

namespace A116085.P18347348377314027182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154888 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A116085.P18347348377314027182

/-! ## A116085.P7860113386676691803

`abs(Δ[A154888(Δ[n²]-n)])`
-/

namespace A116085.P7860113386676691803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154888 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A116085.P7860113386676691803

/-!
# A116086: Perfect powers n with no primes between n and the next larger perfect power, which is in A116455.

The programs for A116086, there is no canonical definition to state claims against.
-/

/-! ## A116086.P3828576116366733491

`A001597(A274605(n+1))`
-/

namespace A116086.P3828576116366733491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A274605 (n + 1)).toNat

end

end A116086.P3828576116366733491

/-! ## A116086.P10562525621408724568

`A378249(A377466(n+1))`
-/

namespace A116086.P10562525621408724568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A377466 (n + 1)).toNat

end

end A116086.P10562525621408724568

/-! ## A116086.P16725385413157652382

`A045542(A274605(n+1)-1)+1`
-/

namespace A116086.P16725385413157652382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (A274605 (n + 1) - 1).toNat + 1

end

end A116086.P16725385413157652382

/-! ## A116086.P1684125963216956753

`gcd(A157985(A274605(n+1)), A347470(n))`
-/

namespace A116086.P1684125963216956753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157985 (A274605 (n + 1)).toNat) (A347470 n)

end

end A116086.P1684125963216956753

/-! ## A116086.P1730555307738550126

`lcm(A020985(n), A157985(A274605(n+1)))`
-/

namespace A116086.P1730555307738550126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157985 (A274605 (n + 1)).toNat)

end

end A116086.P1730555307738550126

/-!
# A116087: Number of distinct prime factors of P(F(n)) where F(n) is the Fibonacci number and P(n) is the unrestricted partition number.

The programs for A116087, there is no canonical definition to state claims against.
-/

/-! ## A116087.P1279725171501061246

`A087175(A274163(n))`
-/

namespace A116087.P1279725171501061246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A274163 n).toNat

end

end A116087.P1279725171501061246

/-! ## A116087.P9866958670738564512

`A087175(A129713(∑[n]))`
-/

namespace A116087.P9866958670738564512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A129713 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A116087.P9866958670738564512

/-! ## A116087.P16746425413293991327

`A087175(A324969(n+1))`
-/

namespace A116087.P16746425413293991327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A324969 (n + 1)).toNat

end

end A116087.P16746425413293991327

/-! ## A116087.P7114477370291038891

`A087175(Δ[record[A131332(n+2)]])`
-/

namespace A116087.P7114477370291038891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131332 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (f1 (n + 1) - f1 n).toNat

end

end A116087.P7114477370291038891

/-! ## A116087.P15542432087467604089

`A087175(or(char[n²], A000045(n)))`
-/

namespace A116087.P15542432087467604089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000045 n)).toNat

end

end A116087.P15542432087467604089

/-!
# A116088: Riordan array (1, x*(1+x)^2).

The programs for A116088, the canonical program `A116088.P545449340874699905` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116088 has offset 0).

The definition of A116088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116088.P16069784527481359210

`abs(A109970(n))`
-/

namespace A116088.P16069784527481359210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109970 n|

end

end A116088.P16069784527481359210

namespace A116088

/-- `abs(A109970(n))` -/
def P16069784527481359210.Spec : Prop :=
  ∀ n, P16069784527481359210.a n = A116088 n

end A116088

/-! ## A116088.P3525559109868088727

`A085478(n)-A085475(n)`
-/

namespace A116088.P3525559109868088727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - A085475 n

end

end A116088.P3525559109868088727

namespace A116088

/-- `A085478(n)-A085475(n)` -/
def P3525559109868088727.Spec : Prop :=
  ∀ n, P3525559109868088727.a n = A116088 n

end A116088

/-! ## A116088.P17966914508567821604

`A097807(n)*A109970(n)`
-/

namespace A116088.P17966914508567821604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A109970 n

end

end A116088.P17966914508567821604

namespace A116088

/-- `A097807(n)*A109970(n)` -/
def P17966914508567821604.Spec : Prop :=
  ∀ n, P17966914508567821604.a n = A116088 n

end A116088

/-! ## A116088.P12141881046021344811

`gcd(A000038(n), A109970(n))`
-/

namespace A116088.P12141881046021344811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109970 n)

end

end A116088.P12141881046021344811

namespace A116088

/-- `gcd(A000038(n), A109970(n))` -/
def P12141881046021344811.Spec : Prop :=
  ∀ n, (P12141881046021344811.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P238780606451838945

`lcm(A003989(n+1), A109970(n))`
-/

namespace A116088.P238780606451838945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003989 (n + 1)) (A109970 n)

end

end A116088.P238780606451838945

namespace A116088

/-- `lcm(A003989(n+1), A109970(n))` -/
def P238780606451838945.Spec : Prop :=
  ∀ n, (P238780606451838945.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P545449340874699905

`C(2*A002262(n), A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116088

/-- `C(2*A002262(n), A025581(n))` -/
def P545449340874699905.Spec : Prop :=
  ∀ n, (P545449340874699905.a n : ℤ) = A116088 n

theorem P545449340874699905.correct : P545449340874699905.Spec := by
  intro n
  simp only [A116088]

end A116088

/-! ## A116088.P377423228540611659

`C(2*A191532(n), A025581(n))`
-/

namespace A116088.P377423228540611659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A191532 n).toNat (A025581 n).toNat

end

end A116088.P377423228540611659

namespace A116088

/-- `C(2*A191532(n), A025581(n))` -/
def P377423228540611659.Spec : Prop :=
  ∀ n, (P377423228540611659.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P5160147741959356993

`C(log2(A059268(n)²), A025581(n))`
-/

namespace A116088.P5160147741959356993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n ^ 2 : ℝ))).toNat (A025581 n).toNat

end

end A116088.P5160147741959356993

namespace A116088

/-- `C(log2(A059268(n)²), A025581(n))` -/
def P5160147741959356993.Spec : Prop :=
  ∀ n, (P5160147741959356993.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P5644157235677912761

`C(A158405(n+1)-1, A025581(n))`
-/

namespace A116088.P5644157235677912761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (n + 1) - 1).toNat (A025581 n).toNat

end

end A116088.P5644157235677912761

namespace A116088

/-- `C(A158405(n+1)-1, A025581(n))` -/
def P5644157235677912761.Spec : Prop :=
  ∀ n, (P5644157235677912761.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P6185230815235324942

`C(2*A057554(2*n+1), A057554(2*(n+1)))`
-/

namespace A116088.P6185230815235324942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A057554 (2 * n + 1)).toNat (A057554 (2 * (n + 1))).toNat

end

end A116088.P6185230815235324942

namespace A116088

/-- `C(2*A057554(2*n+1), A057554(2*(n+1)))` -/
def P6185230815235324942.Spec : Prop :=
  ∀ n, (P6185230815235324942.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P3971244317979339211

`C(A005843(A002262(n)), A025581(n))`
-/

namespace A116088.P3971244317979339211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005843 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A116088.P3971244317979339211

namespace A116088

/-- `C(A005843(A002262(n)), A025581(n))` -/
def P3971244317979339211.Spec : Prop :=
  ∀ n, (P3971244317979339211.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P17565693049201585409

`C(A051162(n)-A025581(n), A025581(n))`
-/

namespace A116088.P17565693049201585409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n - A025581 n).toNat (A025581 n).toNat

end

end A116088.P17565693049201585409

namespace A116088

/-- `C(A051162(n)-A025581(n), A025581(n))` -/
def P17565693049201585409.Spec : Prop :=
  ∀ n, (P17565693049201585409.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P7670566002542143353

`C(A134478(n)-A025581(n), A025581(n))`
-/

namespace A116088.P7670566002542143353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n - A025581 n).toNat (A025581 n).toNat

end

end A116088.P7670566002542143353

namespace A116088

/-- `C(A134478(n)-A025581(n), A025581(n))` -/
def P7670566002542143353.Spec : Prop :=
  ∀ n, (P7670566002542143353.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P14304611676429817021

`C(A005843(A057554(2*n+1)), A057554(2*(n+1)))`
-/

namespace A116088.P14304611676429817021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005843 (A057554 (2 * n + 1)).toNat).toNat (A057554 (2 * (n + 1))).toNat

end

end A116088.P14304611676429817021

namespace A116088

/-- `C(A005843(A057554(2*n+1)), A057554(2*(n+1)))` -/
def P14304611676429817021.Spec : Prop :=
  ∀ n, (P14304611676429817021.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P13366172059510007164

`C(2*A002262(n), A002262(A061579(n)))`
-/

namespace A116088.P13366172059510007164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A002262 n).toNat (A002262 (A061579 n).toNat).toNat

end

end A116088.P13366172059510007164

namespace A116088

/-- `C(2*A002262(n), A002262(A061579(n)))` -/
def P13366172059510007164.Spec : Prop :=
  ∀ n, (P13366172059510007164.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P10611733908250586026

`C(2*A025581(A061579(n)), A025581(n))`
-/

namespace A116088.P10611733908250586026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A025581 (A061579 n).toNat).toNat (A025581 n).toNat

end

end A116088.P10611733908250586026

namespace A116088

/-- `C(2*A025581(A061579(n)), A025581(n))` -/
def P10611733908250586026.Spec : Prop :=
  ∀ n, (P10611733908250586026.a n : ℤ) = A116088 n

end A116088

/-! ## A116088.P14664519416164724777

`A052553(A245300(n)+A114327(n))`
-/

namespace A116088.P14664519416164724777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (A245300 n + A114327 n).toNat

end

end A116088.P14664519416164724777

namespace A116088

/-- `A052553(A245300(n)+A114327(n))` -/
def P14664519416164724777.Spec : Prop :=
  ∀ n, P14664519416164724777.a n = A116088 n

end A116088

/-! ## A116088.P16723716813308626267

`A026729(A245300(n)+A002262(n))`
-/

namespace A116088.P16723716813308626267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A245300 n + A002262 n).toNat

end

end A116088.P16723716813308626267

namespace A116088

/-- `A026729(A245300(n)+A002262(n))` -/
def P16723716813308626267.Spec : Prop :=
  ∀ n, P16723716813308626267.a n = A116088 n

end A116088

/-! ## A116088.P6452495484056522638

`∑{d}[A109970(n), A000010(#)]`
-/

namespace A116088.P6452495484056522638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A116088.P6452495484056522638

namespace A116088

/-- `∑{d}[A109970(n), A000010(#)]` -/
def P6452495484056522638.Spec : Prop :=
  ∀ n, P6452495484056522638.a n = A116088 n

end A116088

/-!
# A116089: Riordan array (1, x*(1+x)^3).

The programs for A116089, the canonical program `A116089.P15958432724052264868` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116089 has offset 0).

The definition of A116089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116089.P15543817188411758607

`C(A008585(n-C(∑[char[∑[n]]], 2)), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A116089.P15543817188411758607
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A116089.P15543817188411758607

namespace A116089

/-- `C(A008585(n-C(∑[char[∑[n]]], 2)), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P15543817188411758607.Spec : Prop :=
  ∀ n, (P15543817188411758607.a n : ℤ) = A116089 n

end A116089

/-! ## A116089.P15958432724052264868

`C(A008585(A002262(n)), A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116089

/-- `C(A008585(A002262(n)), A025581(n))` -/
def P15958432724052264868.Spec : Prop :=
  ∀ n, (P15958432724052264868.a n : ℤ) = A116089 n

theorem P15958432724052264868.correct : P15958432724052264868.Spec := by
  intro n
  simp only [A116089]

end A116089

/-! ## A116089.P16146914043284943857

`C(A008585(A191532(n)), A025581(n))`
-/

namespace A116089.P16146914043284943857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (A191532 n).toNat).toNat (A025581 n).toNat

end

end A116089.P16146914043284943857

namespace A116089

/-- `C(A008585(A191532(n)), A025581(n))` -/
def P16146914043284943857.Spec : Prop :=
  ∀ n, (P16146914043284943857.a n : ℤ) = A116089 n

end A116089

/-! ## A116089.P2057865638033984135

`C(A008486(A002262(n)), A144257(n+1))`
-/

namespace A116089.P2057865638033984135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008486 (A002262 n).toNat).toNat (A144257 (n + 1)).toNat

end

end A116089.P2057865638033984135

namespace A116089

/-- `C(A008486(A002262(n)), A144257(n+1))` -/
def P2057865638033984135.Spec : Prop :=
  ∀ n, (P2057865638033984135.a n : ℤ) = A116089 n

end A116089

/-! ## A116089.P3225960883776271878

`C(A008585(n-A057944(n)), A025581(n))`
-/

namespace A116089.P3225960883776271878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 ((n : ℤ) - A057944 n).toNat).toNat (A025581 n).toNat

end

end A116089.P3225960883776271878

namespace A116089

/-- `C(A008585(n-A057944(n)), A025581(n))` -/
def P3225960883776271878.Spec : Prop :=
  ∀ n, (P3225960883776271878.a n : ℤ) = A116089 n

end A116089

/-!
# A116090: Expansion of 1/(1-x^2*(1+x)^3).

The programs for A116090, the canonical program `A116090.P17059679567664752963` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116090 has offset 0).

The definition of A116090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116090.P17059679567664752963

`a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A116090

/-- `a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` -/
def P17059679567664752963.Spec : Prop :=
  ∀ n, (P17059679567664752963.a n : ℤ) = A116090 n

theorem P17059679567664752963.correct : P17059679567664752963.Spec := by
  intro n
  simp only [A116090]

end A116090

/-! ## A116090.P8055718298833999104

`A001687(3*n+1)`
-/

namespace A116090.P8055718298833999104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (3 * n + 1)

end

end A116090.P8055718298833999104

namespace A116090

/-- `A001687(3*n+1)` -/
def P8055718298833999104.Spec : Prop :=
  ∀ n, P8055718298833999104.a n = A116090 n

end A116090

/-! ## A116090.P13052230432412697610

`or(char[2], A001687(A016777(n)))`
-/

namespace A116090.P13052230432412697610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001687 (A016777 n).toNat)

end

end A116090.P13052230432412697610

namespace A116090

/-- `or(char[2], A001687(A016777(n)))` -/
def P13052230432412697610.Spec : Prop :=
  ∀ n, P13052230432412697610.a n = A116090 n

end A116090

/-! ## A116090.P12925946043855461527

`gcd(A000038(n), A001687(A016777(n)))`
-/

namespace A116090.P12925946043855461527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001687 (A016777 n).toNat)

end

end A116090.P12925946043855461527

namespace A116090

/-- `gcd(A000038(n), A001687(A016777(n)))` -/
def P12925946043855461527.Spec : Prop :=
  ∀ n, (P12925946043855461527.a n : ℤ) = A116090 n

end A116090

/-! ## A116090.P7521714297983106741

`A001687(A016777(n))+A000038(n+1)`
-/

namespace A116090.P7521714297983106741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A016777 n).toNat + A000038 (n + 1)

end

end A116090.P7521714297983106741

namespace A116090

/-- `A001687(A016777(n))+A000038(n+1)` -/
def P7521714297983106741.Spec : Prop :=
  ∀ n, P7521714297983106741.a n = A116090 n

end A116090

/-! ## A116090.P14162935490439571645

`A001687(A016777(n))-A000038(n)*A001687(n)`
-/

namespace A116090.P14162935490439571645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A016777 n).toNat - A000038 n * A001687 n

end

end A116090.P14162935490439571645

namespace A116090

/-- `A001687(A016777(n))-A000038(n)*A001687(n)` -/
def P14162935490439571645.Spec : Prop :=
  ∀ n, P14162935490439571645.a n = A116090 n

end A116090

/-! ## A116090.P10841737659486772079

`A375315(n)-a(n-1)` with `a(0)=1`
-/

namespace A116090.P10841737659486772079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375315 n - a (n - 1)

end

end A116090.P10841737659486772079

namespace A116090

/-- `A375315(n)-a(n-1)` -/
def P10841737659486772079.Spec : Prop :=
  ∀ n, P10841737659486772079.a n = A116090 n

end A116090

/-! ## A116090.P1715241661418227924

`A375315(n+1)-(A375364(n+1)+A375364(n))`
-/

namespace A116090.P1715241661418227924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375315 (n + 1) - (A375364 (n + 1) + A375364 n)

end

end A116090.P1715241661418227924

namespace A116090

/-- `A375315(n+1)-(A375364(n+1)+A375364(n))` -/
def P1715241661418227924.Spec : Prop :=
  ∀ n, P1715241661418227924.a n = A116090 n

end A116090

/-! ## A116090.P14330220168570778727

`and(A001687(A016777(n)), A290195(n))`
-/

namespace A116090.P14330220168570778727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001687 (A016777 n).toNat) (A290195 n)

end

end A116090.P14330220168570778727

namespace A116090

/-- `and(A001687(A016777(n)), A290195(n))` -/
def P14330220168570778727.Spec : Prop :=
  ∀ n, P14330220168570778727.a n = A116090 n

end A116090

/-! ## A116090.P12762599086056826312

`A001687(A016777(n))%A207171(n+1)`
-/

namespace A116090.P12762599086056826312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001687 (A016777 n).toNat) (A207171 (n + 1))

end

end A116090.P12762599086056826312

namespace A116090

/-- `A001687(A016777(n))%A207171(n+1)` -/
def P12762599086056826312.Spec : Prop :=
  ∀ n, P12762599086056826312.a n = A116090 n

end A116090

/-!
# A116091: Expansion of 1/sqrt(1+4*x+16*x^2).

The programs for A116091, there is no canonical definition to state claims against.
-/

/-! ## A116091.P15685754726488751681

`(-1)^n*A012000(n)`
-/

namespace A116091.P15685754726488751681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012000 n

end

end A116091.P15685754726488751681

/-! ## A116091.P7109250356395521167

`A012000(n)*A033999(n)`
-/

namespace A116091.P7109250356395521167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012000 n * A033999 n

end

end A116091.P7109250356395521167

/-! ## A116091.P10595635830278877428

`A012000(n)/A033999(n+2)`
-/

namespace A116091.P10595635830278877428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012000 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A116091.P10595635830278877428

/-! ## A116091.P1485428416107365004

`A012000(n)*A057077(2*n)`
-/

namespace A116091.P1485428416107365004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012000 n * A057077 (2 * n)

end

end A116091.P1485428416107365004

/-! ## A116091.P16390631059952377396

`A012000(n)/A008683(A323503(n))`
-/

namespace A116091.P16390631059952377396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012000 n : ℚ) / (A008683 (A323503 n).toNat : ℚ)

end

end A116091.P16390631059952377396

/-! ## A116091.P7929069499314142323

`A116092(n)/2^n`
-/

namespace A116091.P7929069499314142323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116092 n : ℚ) / (2 ^ n : ℚ)

end

end A116091.P7929069499314142323

/-! ## A116091.P15223589381419055368

`A307884(∑[n+3]+n+3)`
-/

namespace A116091.P15223589381419055368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307884 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A116091.P15223589381419055368

/-!
# A116092: Expansion of 1/sqrt(1+8*x+64*x^2).

The programs for A116092, there is no canonical definition to state claims against.
-/

/-! ## A116092.P5043963402738381411

`2^n*A116091(n)`
-/

namespace A116092.P5043963402738381411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A116091 n

end

end A116092.P5043963402738381411

/-! ## A116092.P1237013831364591629

`(-2)^n*A012000(n)`
-/

namespace A116092.P1237013831364591629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A012000 n

end

end A116092.P1237013831364591629

/-! ## A116092.P15970931663407052161

`A012000(n)*A122803(n)`
-/

namespace A116092.P15970931663407052161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012000 n * A122803 n

end

end A116092.P15970931663407052161

/-! ## A116092.P5419285795337028291

`A116091(n)*A131577(n+1)`
-/

namespace A116092.P5419285795337028291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116091 n * A131577 (n + 1)

end

end A116092.P5419285795337028291

/-! ## A116092.P3538395277672139664

`A000051(n)*A116091(n)-A116091(n)`
-/

namespace A116092.P3538395277672139664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A116091 n - A116091 n

end

end A116092.P3538395277672139664

/-! ## A116092.P5356181861058904535

`A116091(n)/A098331(n)*A098337(n)`
-/

namespace A116092.P5356181861058904535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116091 n : ℚ) / (A098331 n : ℚ) * (A098337 n : ℚ)

end

end A116092.P5356181861058904535

/-!
# A116093: Expansion of 1/sqrt(1+4*x+12*x^2).

The programs for A116093, there is no canonical definition to state claims against.
-/

/-! ## A116093.P6163965812166045532

`A033999(n)*A098336(n)`
-/

namespace A116093.P6163965812166045532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098336 n

end

end A116093.P6163965812166045532

/-! ## A116093.P9587739408294229515

`A009001(2*n)*A098336(n)`
-/

namespace A116093.P9587739408294229515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A098336 n

end

end A116093.P9587739408294229515

/-! ## A116093.P6017884581996224057

`A098336(n)*A309873(A141310(n))`
-/

namespace A116093.P6017884581996224057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098336 n * A309873 (A141310 n).toNat

end

end A116093.P6017884581996224057

/-! ## A116093.P6582048894879132637

`A098336(n)/A009001(A020744(n))`
-/

namespace A116093.P6582048894879132637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098336 n : ℚ) / (A009001 (A020744 n).toNat : ℚ)

end

end A116093.P6582048894879132637

/-! ## A116093.P16120813184626972575

`A012000(n)/A116091(n)*A098336(n)`
-/

namespace A116093.P16120813184626972575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012000 n : ℚ) / (A116091 n : ℚ) * (A098336 n : ℚ)

end

end A116093.P16120813184626972575

/-! ## A116093.P15849893031952489730

`A307819(∑[n+3])`
-/

namespace A116093.P15849893031952489730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307819 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116093.P15849893031952489730

/-!
# A116098: Numbers k such that k concatenated with k-9 gives the product of two numbers which differ by 6.

The programs for A116098, there is no canonical definition to state claims against.
-/

/-! ## A116098.P8170191772692590875

`Δ[∑[10^n-1]^gcd(11, n)]+2`
-/

namespace A116098.P8170191772692590875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ Nat.gcd 11 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A116098.P8170191772692590875

/-! ## A116098.P15216788889398245107

`∑[Δ[10^n]^C(n, ∑{digits}[n, #])]+2`
-/

namespace A116098.P15216788889398245107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ Nat.choose n ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A116098.P15216788889398245107

/-! ## A116098.P6968794367376095189

`abs(10^∑[n^(n-dr(n))]-1)+2`
-/

namespace A116098.P6968794367376095189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(10 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - 1| + 2

end

end A116098.P6968794367376095189

/-! ## A116098.P5494893236364448880

`ceil(10^∑[n^(n-dr(n))]-1+ϕ)`
-/

namespace A116098.P5494893236364448880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) - 1 + Real.goldenRatio⌉

end

end A116098.P5494893236364448880

/-! ## A116098.P14819352272734895171

`abs(10^∑[∑[char[10*n]]^n]-1)+2`
-/

namespace A116098.P14819352272734895171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1| + 2

end

end A116098.P14819352272734895171

