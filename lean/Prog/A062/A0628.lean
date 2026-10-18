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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A062800: Primes of form 100*k + 1.

The programs for A062800, the canonical program `A062800.P7485131151254025437` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062800 has offset 1).

The definition of A062800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062800.P15386771219290458744

`A158128(A166457(n+1))`
-/

namespace A062800.P15386771219290458744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A166457 (n + 1)).toNat

end

end A062800.P15386771219290458744

namespace A062800

/-- `A158128(A166457(n+1))` -/
def P15386771219290458744.Spec : Prop :=
  ∀ n, P15386771219290458744.a n = A062800 (n + 1)

end A062800

/-! ## A062800.P7485131151254025437

`∩[A141881(n+1), A141927(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062800

/-- `∩[A141881(n+1), A141927(n+1)]` -/
def P7485131151254025437.Spec : Prop :=
  ∀ n, (P7485131151254025437.a n : ℤ) = A062800 (n + 1)

theorem P7485131151254025437.correct : P7485131151254025437.Spec := by
  intro n
  simp only [A062800, Nat.add_sub_cancel]

end A062800

/-! ## A062800.P2319083357155475735

`p?[10*10*n+1]`
-/

namespace A062800.P2319083357155475735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A062800.P2319083357155475735

namespace A062800

/-- `p?[10*10*n+1]` -/
def P2319083357155475735.Spec : Prop :=
  ∀ n, (P2319083357155475735.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P17863781570587878666

`or(1, p?[A158128(n+1)])`
-/

namespace A062800.P17863781570587878666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A062800.P17863781570587878666

namespace A062800

/-- `or(1, p?[A158128(n+1)])` -/
def P17863781570587878666.Spec : Prop :=
  ∀ n, P17863781570587878666.a n = A062800 (n + 1)

end A062800

/-! ## A062800.P13165178916755773457

`∩[A141881(n+1), A158128(n+1)]`
-/

namespace A062800.P13165178916755773457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P13165178916755773457

namespace A062800

/-- `∩[A141881(n+1), A158128(n+1)]` -/
def P13165178916755773457.Spec : Prop :=
  ∀ n, (P13165178916755773457.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P17996058869990684407

`∩[A141927(n+1), A158128(n+1)]`
-/

namespace A062800.P17996058869990684407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P17996058869990684407

namespace A062800

/-- `∩[A141927(n+1), A158128(n+1)]` -/
def P17996058869990684407.Spec : Prop :=
  ∀ n, (P17996058869990684407.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P8703200673084524477

`∩[A141881(n+1), A172469(n+1)]`
-/

namespace A062800.P8703200673084524477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P8703200673084524477

namespace A062800

/-- `∩[A141881(n+1), A172469(n+1)]` -/
def P8703200673084524477.Spec : Prop :=
  ∀ n, (P8703200673084524477.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P17270640164663091689

`∩[A158128(n+1), A172469(n+1)]`
-/

namespace A062800.P17270640164663091689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P17270640164663091689

namespace A062800

/-- `∩[A158128(n+1), A172469(n+1)]` -/
def P17270640164663091689.Spec : Prop :=
  ∀ n, (P17270640164663091689.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P16941259770599769114

`∩[A158128(n+1), A179446(n+1)]`
-/

namespace A062800.P16941259770599769114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P16941259770599769114

namespace A062800

/-- `∩[A158128(n+1), A179446(n+1)]` -/
def P16941259770599769114.Spec : Prop :=
  ∀ n, (P16941259770599769114.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P13283589390355050969

`∩[A033205(n+1), A141927(n+1)]`
-/

namespace A062800.P13283589390355050969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P13283589390355050969

namespace A062800

/-- `∩[A033205(n+1), A141927(n+1)]` -/
def P13283589390355050969.Spec : Prop :=
  ∀ n, (P13283589390355050969.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P13624237448643526786

`∩[A033205(n+1), A158128(n+1)]`
-/

namespace A062800.P13624237448643526786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P13624237448643526786

namespace A062800

/-- `∩[A033205(n+1), A158128(n+1)]` -/
def P13624237448643526786.Spec : Prop :=
  ∀ n, (P13624237448643526786.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P3089102767575314348

`∩[A141927(n+1), A216815(n+1)]`
-/

namespace A062800.P3089102767575314348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P3089102767575314348

namespace A062800

/-- `∩[A141927(n+1), A216815(n+1)]` -/
def P3089102767575314348.Spec : Prop :=
  ∀ n, (P3089102767575314348.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P18431373243382362882

`∩[A158128(n+1), A216815(n+1)]`
-/

namespace A062800.P18431373243382362882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P18431373243382362882

namespace A062800

/-- `∩[A158128(n+1), A216815(n+1)]` -/
def P18431373243382362882.Spec : Prop :=
  ∀ n, (P18431373243382362882.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P7613562527162354037

`∩[A030430(n+1), A158128(n+1)]`
-/

namespace A062800.P7613562527162354037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P7613562527162354037

namespace A062800

/-- `∩[A030430(n+1), A158128(n+1)]` -/
def P7613562527162354037.Spec : Prop :=
  ∀ n, (P7613562527162354037.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P6707961240530805174

`∩[A045453(n+1), A158128(n+1)]`
-/

namespace A062800.P6707961240530805174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P6707961240530805174

namespace A062800

/-- `∩[A045453(n+1), A158128(n+1)]` -/
def P6707961240530805174.Spec : Prop :=
  ∀ n, (P6707961240530805174.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P3737808469585564234

`∩[A091729(n+1), A141927(n+1)]`
-/

namespace A062800.P3737808469585564234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P3737808469585564234

namespace A062800

/-- `∩[A091729(n+1), A141927(n+1)]` -/
def P3737808469585564234.Spec : Prop :=
  ∀ n, (P3737808469585564234.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P6911259953831354342

`∩[A056709(n+1), A158128(n+1)]`
-/

namespace A062800.P6911259953831354342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P6911259953831354342

namespace A062800

/-- `∩[A056709(n+1), A158128(n+1)]` -/
def P6911259953831354342.Spec : Prop :=
  ∀ n, (P6911259953831354342.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P15973646227180792527

`∩[A158128(n+1), A273460(n+1)]`
-/

namespace A062800.P15973646227180792527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P15973646227180792527

namespace A062800

/-- `∩[A158128(n+1), A273460(n+1)]` -/
def P15973646227180792527.Spec : Prop :=
  ∀ n, (P15973646227180792527.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P17480818254551533066

`∩[A046501(n+1), A158128(n+1)]`
-/

namespace A062800.P17480818254551533066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P17480818254551533066

namespace A062800

/-- `∩[A046501(n+1), A158128(n+1)]` -/
def P17480818254551533066.Spec : Prop :=
  ∀ n, (P17480818254551533066.a n : ℤ) = A062800 (n + 1)

end A062800

/-! ## A062800.P12829544051196307066

`∩[A117682(n+1), A158128(n+1)]`
-/

namespace A062800.P12829544051196307066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P12829544051196307066

namespace A062800

/-- `∩[A117682(n+1), A158128(n+1)]` -/
def P12829544051196307066.Spec : Prop :=
  ∀ n, (P12829544051196307066.a n : ℤ) = A062800 (n + 1)

end A062800

/-!
# A062801: Number of 2 X 2 non-singular integer matrices with entries from {0,...,n}.

The programs for A062801, the canonical program `A062801.P17256889499220257639` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062801 has offset 0).

The definition of A062801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062801.P17750524903242286487

`(n+1)^4-A059306(n)`
-/

namespace A062801.P17750524903242286487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A059306 n

end

end A062801.P17750524903242286487

namespace A062801

/-- `(n+1)^4-A059306(n)` -/
def P17750524903242286487.Spec : Prop :=
  ∀ n, P17750524903242286487.a n = A062801 n

end A062801

/-! ## A062801.P16740227459448025399

`2*(A210373(n)+A210372(n))`
-/

namespace A062801.P16740227459448025399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210373 n + A210372 n)

end

end A062801.P16740227459448025399

namespace A062801

/-- `2*(A210373(n)+A210372(n))` -/
def P16740227459448025399.Spec : Prop :=
  ∀ n, P16740227459448025399.a n = A062801 n

end A062801

/-! ## A062801.P12303305007707135310

`A210370(n)+2*A210372(n)`
-/

namespace A062801.P12303305007707135310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210370 n + 2 * A210372 n

end

end A062801.P12303305007707135310

namespace A062801

/-- `A210370(n)+2*A210372(n)` -/
def P12303305007707135310.Spec : Prop :=
  ∀ n, P12303305007707135310.a n = A062801 n

end A062801

/-! ## A062801.P8576541949916961358

`2*(A210290(n)-A059306(n))`
-/

namespace A062801.P8576541949916961358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A210290 n - A059306 n)

end

end A062801.P8576541949916961358

namespace A062801

/-- `2*(A210290(n)-A059306(n))` -/
def P8576541949916961358.Spec : Prop :=
  ∀ n, P8576541949916961358.a n = A062801 n

end A062801

/-! ## A062801.P17256889499220257639

`(n+1)²²-∑[A016813(A209295(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062801

/-- `(n+1)²²-∑[A016813(A209295(n))]` -/
def P17256889499220257639.Spec : Prop :=
  ∀ n, P17256889499220257639.a n = A062801 n

theorem P17256889499220257639.correct : P17256889499220257639.Spec := by
  intro n
  simp only [A062801]

end A062801

/-! ## A062801.P2913926812566430375

`A210369(n)+A210370(n)-A059306(n)`
-/

namespace A062801.P2913926812566430375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n + (A210370 n - A059306 n)

end

end A062801.P2913926812566430375

namespace A062801

/-- `A210369(n)+A210370(n)-A059306(n)` -/
def P2913926812566430375.Spec : Prop :=
  ∀ n, P2913926812566430375.a n = A062801 n

end A062801

/-! ## A062801.P1939764225454320142

`A005353(n+1)+A020478(n+1)-A059306(n)`
-/

namespace A062801.P1939764225454320142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005353 (n + 1) + (A020478 (n + 1) - A059306 n)

end

end A062801.P1939764225454320142

namespace A062801

/-- `A005353(n+1)+A020478(n+1)-A059306(n)` -/
def P1939764225454320142.Spec : Prop :=
  ∀ n, P1939764225454320142.a n = A062801 n

end A062801

/-! ## A062801.P17287242269444990078

`A134506(n+1)+A211056(n+1)-A059306(n)`
-/

namespace A062801.P17287242269444990078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134506 (n + 1) + (A211056 (n + 1) - A059306 n)

end

end A062801.P17287242269444990078

namespace A062801

/-- `A134506(n+1)+A211056(n+1)-A059306(n)` -/
def P17287242269444990078.Spec : Prop :=
  ∀ n, P17287242269444990078.a n = A062801 n

end A062801

/-!
# A062803: Number of solutions to x^2 == y^2 (mod n).

The programs for A062803, the canonical program `A062803.P16752899596176720456` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062803 has offset 1).

The definition of A062803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332794, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062803.P16752899596176720456

`A327767(n+1)*A332794(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062803

/-- `A327767(n+1)*A332794(n+1)` -/
def P16752899596176720456.Spec : Prop :=
  ∀ n, P16752899596176720456.a n = A062803 (n + 1)

theorem P16752899596176720456.correct : P16752899596176720456.Spec := by
  intro n
  simp only [A062803, Nat.add_sub_cancel]

end A062803

/-! ## A062803.P14827745558464873571

`2*A378298(n+1)+n+1`
-/

namespace A062803.P14827745558464873571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378298 (n + 1) + (n + 1 : ℤ)

end

end A062803.P14827745558464873571

namespace A062803

/-- `2*A378298(n+1)+n+1` -/
def P14827745558464873571.Spec : Prop :=
  ∀ n, P14827745558464873571.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P9864299504238610843

`A368739(n+1)/A000034(n)`
-/

namespace A062803.P9864299504238610843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368739 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A062803.P9864299504238610843

namespace A062803

/-- `A368739(n+1)/A000034(n)` -/
def P9864299504238610843.Spec : Prop :=
  ∀ n, P9864299504238610843.a n = (A062803 (n + 1) : ℚ)

end A062803

/-! ## A062803.P4533737485981979986

`A004277(A007814(n+1))*A255655(n+1)`
-/

namespace A062803.P4533737485981979986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007814 (n + 1)).toNat * A255655 (n + 1)

end

end A062803.P4533737485981979986

namespace A062803

/-- `A004277(A007814(n+1))*A255655(n+1)` -/
def P4533737485981979986.Spec : Prop :=
  ∀ n, P4533737485981979986.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P125245864162016463

`A344372(n+1)-A000035(n)*A368736(n+1)`
-/

namespace A062803.P125245864162016463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344372 (n + 1) - A000035 n * A368736 (n + 1)

end

end A062803.P125245864162016463

namespace A062803

/-- `A344372(n+1)-A000035(n)*A368736(n+1)` -/
def P125245864162016463.Spec : Prop :=
  ∀ n, P125245864162016463.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P664499868045340256

`A368736(n+1)+A368739(n+1)-A344372(n+1)`
-/

namespace A062803.P664499868045340256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368736 (n + 1) + (A368739 (n + 1) - A344372 (n + 1))

end

end A062803.P664499868045340256

namespace A062803

/-- `A368736(n+1)+A368739(n+1)-A344372(n+1)` -/
def P664499868045340256.Spec : Prop :=
  ∀ n, P664499868045340256.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P14130897694536121930

`A000010(n+1)/A062570(n+1)*A368739(n+1)`
-/

namespace A062803.P14130897694536121930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ) * (A368739 (n + 1) : ℚ)

end

end A062803.P14130897694536121930

namespace A062803

/-- `A000010(n+1)/A062570(n+1)*A368739(n+1)` -/
def P14130897694536121930.Spec : Prop :=
  ∀ n, P14130897694536121930.a n = (A062803 (n + 1) : ℚ)

end A062803

/-! ## A062803.P4123466374328941649

`A204988(n+1)*A368736(n+1)`
-/

namespace A062803.P4123466374328941649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (n + 1) * A368736 (n + 1)

end

end A062803.P4123466374328941649

namespace A062803

/-- `A204988(n+1)*A368736(n+1)` -/
def P4123466374328941649.Spec : Prop :=
  ∀ n, P4123466374328941649.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P6981080690444393483

`gcd(2, n+1)*A344371(A066043(n+1))`
-/

namespace A062803.P6981080690444393483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A344371 (A066043 (n + 1)).toNat

end

end A062803.P6981080690444393483

namespace A062803

/-- `gcd(2, n+1)*A344371(A066043(n+1))` -/
def P6981080690444393483.Spec : Prop :=
  ∀ n, P6981080690444393483.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P9228577114807598299

`A000034(n)*A344371(A066043(n+1))`
-/

namespace A062803.P9228577114807598299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A344371 (A066043 (n + 1)).toNat

end

end A062803.P9228577114807598299

namespace A062803

/-- `A000034(n)*A344371(A066043(n+1))` -/
def P9228577114807598299.Spec : Prop :=
  ∀ n, P9228577114807598299.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P14698097833097623043

`(A000035(n)+1)*A344371(A066043(n+1))`
-/

namespace A062803.P14698097833097623043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A344371 (A066043 (n + 1)).toNat

end

end A062803.P14698097833097623043

namespace A062803

/-- `(A000035(n)+1)*A344371(A066043(n+1))` -/
def P14698097833097623043.Spec : Prop :=
  ∀ n, P14698097833097623043.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P5621024355950908168

`abs(A327767(n+1)*A344371(A066043(n+1)))`
-/

namespace A062803.P5621024355950908168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327767 (n + 1) * A344371 (A066043 (n + 1)).toNat|

end

end A062803.P5621024355950908168

namespace A062803

/-- `abs(A327767(n+1)*A344371(A066043(n+1)))` -/
def P5621024355950908168.Spec : Prop :=
  ∀ n, P5621024355950908168.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P12109546986774358977

`Δ[A001651(n+1)]*A344371(A066043(n+1))`
-/

namespace A062803.P12109546986774358977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A344371 (A066043 (n + 1)).toNat

end

end A062803.P12109546986774358977

namespace A062803

/-- `Δ[A001651(n+1)]*A344371(A066043(n+1))` -/
def P12109546986774358977.Spec : Prop :=
  ∀ n, P12109546986774358977.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P4445505386146063617

`A005843(A378298(n+1))+n+1`
-/

namespace A062803.P4445505386146063617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A378298 (n + 1)).toNat + (n + 1 : ℤ)

end

end A062803.P4445505386146063617

namespace A062803

/-- `A005843(A378298(n+1))+n+1` -/
def P4445505386146063617.Spec : Prop :=
  ∀ n, P4445505386146063617.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P4757258786781274619

`A026741(A368739(n+1))`
-/

namespace A062803.P4757258786781274619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A368739 (n + 1)).toNat

end

end A062803.P4757258786781274619

namespace A062803

/-- `A026741(A368739(n+1))` -/
def P4757258786781274619.Spec : Prop :=
  ∀ n, P4757258786781274619.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P15077409743896286795

`A366561(∑[n+1])`
-/

namespace A062803.P15077409743896286795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062803.P15077409743896286795

namespace A062803

/-- `A366561(∑[n+1])` -/
def P15077409743896286795.Spec : Prop :=
  ∀ n, P15077409743896286795.a n = A062803 (n + 1)

end A062803

/-! ## A062803.P3953680383811580897

`A265331(A028878(n))*A344371(A066043(n+1))`
-/

namespace A062803.P3953680383811580897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A028878 n).toNat * A344371 (A066043 (n + 1)).toNat

end

end A062803.P3953680383811580897

namespace A062803

/-- `A265331(A028878(n))*A344371(A066043(n+1))` -/
def P3953680383811580897.Spec : Prop :=
  ∀ n, P3953680383811580897.a n = A062803 (n + 1)

end A062803

/-!
# A062804: phi(n) - floor(n^(1/3))*tau(n) = 0.

The programs for A062804, there is no canonical definition to state claims against.
-/

/-! ## A062804.P2591927665023125637

`A190899(n*a(n-2))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A062804.P2591927665023125637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A190899 ((n : ℤ) * a (n - 2)).toNat

end

end A062804.P2591927665023125637

/-! ## A062804.P1649124834779036441

`∑[A243849(A036505(n))]`
-/

namespace A062804.P1649124834779036441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243849 (A036505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062804.P1649124834779036441

/-!
# A062805: a(n) = Sum_{i=1..n} i*n^(n-i).

The programs for A062805, there is no canonical definition to state claims against.
-/

/-! ## A062805.P571424742193008249

`n*A058128(round(sqrt(n²+1)))`
-/

namespace A062805.P571424742193008249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058128 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A062805.P571424742193008249

/-! ## A062805.P6840782263349781959

`A023811(A028310(n))+A023037(n)`
-/

namespace A062805.P6840782263349781959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023811 (A028310 n).toNat + A023037 n

end

end A062805.P6840782263349781959

/-! ## A062805.P15328813064488455821

`n*(A031973(n)-A068475(n))`
-/

namespace A062805.P15328813064488455821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A031973 n - A068475 n)

end

end A062805.P15328813064488455821

/-! ## A062805.P10368918421081782820

`A031972(n)-A062813(A028310(n))`
-/

namespace A062805.P10368918421081782820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 n - A062813 (A028310 n).toNat

end

end A062805.P10368918421081782820

/-! ## A062805.P4334459019217225842

`A023037(n)+A031972(n)-A068475(n)`
-/

namespace A062805.P4334459019217225842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 n + (A031972 n - A068475 n)

end

end A062805.P4334459019217225842

/-!
# A062806: a(n) = Sum_{i=1..n} i*n^i.

The programs for A062806, there is no canonical definition to state claims against.
-/

/-! ## A062806.P14786584219246250084

`(n+1)*A068475(n+1)`
-/

namespace A062806.P14786584219246250084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068475 (n + 1)

end

end A062806.P14786584219246250084

/-! ## A062806.P10154666042555339296

`A189001(n+1)-A031973(n+1)`
-/

namespace A062806.P10154666042555339296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189001 (n + 1) - A031973 (n + 1)

end

end A062806.P10154666042555339296

/-! ## A062806.P6432705648096017024

`lcm(A000027(n+1), A068475(A000027(n+1)))`
-/

namespace A062806.P6432705648096017024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A068475 (A000027 (n + 1)).toNat)

end

end A062806.P6432705648096017024

/-! ## A062806.P8474817552524441186

`lcm(A028310(n+1), A068475(A028310(n+1)))`
-/

namespace A062806.P8474817552524441186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (n + 1)) (A068475 (A028310 (n + 1)).toNat)

end

end A062806.P8474817552524441186

/-! ## A062806.P12728385562411168849

`lcm(A068475(A090108(n+1)), A090108(n+1))`
-/

namespace A062806.P12728385562411168849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068475 (A090108 (n + 1)).toNat) (A090108 (n + 1))

end

end A062806.P12728385562411168849

/-!
# A062807: a(n) = Sum_{i=1..n} i*(n-i)^i.

The programs for A062807, there is no canonical definition to state claims against.
-/

/-! ## A062807.P41947940941385378

`A101495(n+1)-A026898(n)`
-/

namespace A062807.P41947940941385378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101495 (n + 1) - A026898 n

end

end A062807.P41947940941385378

/-! ## A062807.P461516857835704203

`A101495(n+1)-Δ[A103439(n)]`
-/

namespace A062807.P461516857835704203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101495 (n + 1) - (f1 (n + 1) - f1 n)

end

end A062807.P461516857835704203

/-! ## A062807.P12801203097457667448

`A101495(n+1)-Δ[A104879(n)]`
-/

namespace A062807.P12801203097457667448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101495 (n + 1) - (f1 (n + 1) - f1 n)

end

end A062807.P12801203097457667448

/-!
# A062808: a(n) = Sum_{i=1..n} n^i * (n - i).

The programs for A062808, there is no canonical definition to state claims against.
-/

/-! ## A062808.P8046408106866482297

`∑[Δ[A062805(n)]-1]`
-/

namespace A062808.P8046408106866482297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062808.P8046408106866482297

/-! ## A062808.P7471006660744944022

`A062805(n+1)-(n+1)`
-/

namespace A062808.P7471006660744944022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062805 (n + 1) - (n + 1 : ℤ)

end

end A062808.P7471006660744944022

/-! ## A062808.P13148269620113555199

`(n+1)*A023811(n+1)`
-/

namespace A062808.P13148269620113555199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023811 (n + 1)

end

end A062808.P13148269620113555199

/-! ## A062808.P10249542416198041243

`(n+1)*(A058128(n+1)-1)`
-/

namespace A062808.P10249542416198041243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A058128 (n + 1) - 1)

end

end A062808.P10249542416198041243

/-! ## A062808.P2729232011759349860

`lcm(A005843(n)-n+1, A023811(n+1))`
-/

namespace A062808.P2729232011759349860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005843 n - (n : ℤ) + 1) (A023811 (n + 1))

end

end A062808.P2729232011759349860

/-! ## A062808.P4405560328300197091

`lcm(A023811(n+1), A065033(A005408(n)))`
-/

namespace A062808.P4405560328300197091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023811 (n + 1)) (A065033 (A005408 n).toNat)

end

end A062808.P4405560328300197091

/-! ## A062808.P14625903259322086322

`lcm(A023811(A028310(n+1)), A028310(n+1))`
-/

namespace A062808.P14625903259322086322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023811 (A028310 (n + 1)).toNat) (A028310 (n + 1))

end

end A062808.P14625903259322086322

/-! ## A062808.P17847434365151230375

`(A058128(n+1)+A008836(A000040(n+2)))*(n+1)`
-/

namespace A062808.P17847434365151230375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058128 (n + 1) + A008836 (A000040 (n + 2)).toNat) * (n + 1 : ℤ)

end

end A062808.P17847434365151230375

/-! ## A062808.P14590865436708846256

`A347274(n+1)/(n+1)-(n+1)`
-/

namespace A062808.P14590865436708846256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347274 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A062808.P14590865436708846256

/-!
# A062809: a(n) = Sum_{i=1..n} (n - i)^(1 + i).

The programs for A062809, there is no canonical definition to state claims against.
-/

/-! ## A062809.P3866212457344303007

`∑[A047970(n)-1]`
-/

namespace A062809.P3866212457344303007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P3866212457344303007

/-! ## A062809.P9948429388383554905

`∑[∑[A112532(n)]-1]`
-/

namespace A062809.P9948429388383554905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P9948429388383554905

/-! ## A062809.P11283262280062221672

`∑[Δ[A003101(n)]-1]`
-/

namespace A062809.P11283262280062221672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P11283262280062221672

/-! ## A062809.P11849597441255757231

`∑[Δ[A026898(n)]-1]`
-/

namespace A062809.P11849597441255757231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P11849597441255757231

/-! ## A062809.P11273931141352132413

`∑[Δ[Δ[A103439(n)]]-1]`
-/

namespace A062809.P11273931141352132413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P11273931141352132413

/-! ## A062809.P5327981985186488222

`A003101(n+1)-(n+1)`
-/

namespace A062809.P5327981985186488222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (n + 1) - (n + 1 : ℤ)

end

end A062809.P5327981985186488222

/-! ## A062809.P6854992307402992321

`A026898(n+1)-(n+2)`
-/

namespace A062809.P6854992307402992321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 1) - (n + 2 : ℤ)

end

end A062809.P6854992307402992321

/-! ## A062809.P12790249542549114088

`Δ[A103439(n+1)]-(n+2)`
-/

namespace A062809.P12790249542549114088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A062809.P12790249542549114088

/-! ## A062809.P14535482340541796778

`Δ[A104879(n+1)]-(n+2)`
-/

namespace A062809.P14535482340541796778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A062809.P14535482340541796778

/-! ## A062809.P14988031390503553057

`∑[A242431(∑[n])-1]`
-/

namespace A062809.P14988031390503553057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242431 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062809.P14988031390503553057

/-!
# A062810: a(n) = Sum_{i=1..n} i^(n - i) + (n - i)^i.

The programs for A062810, there is no canonical definition to state claims against.
-/

/-! ## A062810.P7884883333463946881

`2*A003101(n)+1`
-/

namespace A062810.P7884883333463946881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003101 n + 1

end

end A062810.P7884883333463946881

/-! ## A062810.P7304982560150140403

`2*A026898(n)-1`
-/

namespace A062810.P7304982560150140403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026898 n - 1

end

end A062810.P7304982560150140403

/-! ## A062810.P8662722522938456555

`Δ[2*A103439(n)]-1`
-/

namespace A062810.P8662722522938456555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A062810.P8662722522938456555

/-! ## A062810.P467758522560738971

`Δ[2*A104879(n)]-1`
-/

namespace A062810.P467758522560738971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A062810.P467758522560738971

/-! ## A062810.P6696563184343218657

`2*(A101494(∑[n+1])-1)+1`
-/

namespace A062810.P6696563184343218657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101494 (∑ j ∈ Finset.range (n + 1), f1 j) - 1) + 1

end

end A062810.P6696563184343218657

/-! ## A062810.P17475711244776698208

`A026898(n)+A003101(n)`
-/

namespace A062810.P17475711244776698208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n + A003101 n

end

end A062810.P17475711244776698208

/-! ## A062810.P8077361252852966272

`A003101(n)+Δ[A103439(n)]`
-/

namespace A062810.P8077361252852966272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + (f1 (n + 1) - f1 n)

end

end A062810.P8077361252852966272

/-! ## A062810.P1835938893677890241

`2*A101494(A253145(n))-1`
-/

namespace A062810.P1835938893677890241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101494 (A253145 n).toNat - 1

end

end A062810.P1835938893677890241

/-! ## A062810.P17844608233585073667

`A026898(n)-(1-Δ[A104879(n)])`
-/

namespace A062810.P17844608233585073667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - (1 - (f1 (n + 1) - f1 n))

end

end A062810.P17844608233585073667

/-! ## A062810.P6887289620805248357

`Δ[A001489(n)+2*A103439(n)]`
-/

namespace A062810.P6887289620805248357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + 2 * A103439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062810.P6887289620805248357

/-!
# A062811: a(n) = Sum_{i=1..n} i^(n - i) + (i - n)^i.

The programs for A062811, there is no canonical definition to state claims against.
-/

/-! ## A062811.P18305350169162630503

`2*A353016(n+1)-1`
-/

namespace A062811.P18305350169162630503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353016 (n + 1) - 1

end

end A062811.P18305350169162630503

/-! ## A062811.P12234449584106172896

`A026898(n)-A349852(n)`
-/

namespace A062811.P12234449584106172896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n - A349852 n

end

end A062811.P12234449584106172896

/-! ## A062811.P6779463420896423011

`A038125(n+1)+A003101(n)`
-/

namespace A062811.P6779463420896423011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038125 (n + 1) + A003101 n

end

end A062811.P6779463420896423011

/-! ## A062811.P4866721888676078734

`A003101(n)+1-A349852(n)`
-/

namespace A062811.P4866721888676078734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n + (1 - A349852 n)

end

end A062811.P4866721888676078734

/-! ## A062811.P10389442353443781541

`A101494(∑[n+1])-A349852(n)`
-/

namespace A062811.P10389442353443781541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j) - A349852 n

end

end A062811.P10389442353443781541

/-! ## A062811.P17725929909078883982

`A038125(n+1)+A026898(n)-1`
-/

namespace A062811.P17725929909078883982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038125 (n + 1) + (A026898 n - 1)

end

end A062811.P17725929909078883982

/-!
# A062812: a(n) = Sum_{i=1..n} i^(n - i) + (-1)^(n - i)*(n - i)^i.

The programs for A062812, there is no canonical definition to state claims against.
-/

/-! ## A062812.P17341610180664493830

`A026898(n)+A033999(n)*A349852(n)`
-/

namespace A062812.P17341610180664493830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n + A033999 n * A349852 n

end

end A062812.P17341610180664493830

/-! ## A062812.P8217376300936650074

`A118460(A121797(n+1))`
-/

namespace A062812.P8217376300936650074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118460 (A121797 (n + 1)).toNat

end

end A062812.P8217376300936650074

/-! ## A062812.P8938493775472059991

`A130446(A054878(n)+n)`
-/

namespace A062812.P8938493775472059991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A054878 n + (n : ℤ)).toNat

end

end A062812.P8938493775472059991

/-!
# A062813: a(n) = Sum_{i=0..n-1} i*n^i.

The programs for A062813, there is no canonical definition to state claims against.
-/

/-! ## A062813.P8094052743379176973

`record[Δ[A300326(A300293(n))]]`
-/

namespace A062813.P8094052743379176973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300326 (A300293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062813.P8094052743379176973

/-! ## A062813.P14690018690521252676

`A000312(n+1)-A058128(n+1)`
-/

namespace A062813.P14690018690521252676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A058128 (n + 1)

end

end A062813.P14690018690521252676

/-! ## A062813.P6026062568949069885

`A068475(n+1)-A023037(n+1)`
-/

namespace A062813.P6026062568949069885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 (n + 1) - A023037 (n + 1)

end

end A062813.P6026062568949069885

/-! ## A062813.P6948566271820176153

`A031972(n+1)-A062805(n+1)`
-/

namespace A062813.P6948566271820176153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 (n + 1) - A062805 (n + 1)

end

end A062813.P6948566271820176153

/-! ## A062813.P16799329756524530238

`A189001(n+1)%A031973(n+1)-1`
-/

namespace A062813.P16799329756524530238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189001 (n + 1)) (A031973 (n + 1)) - 1

end

end A062813.P16799329756524530238

/-! ## A062813.P14816503961914504584

`n*A062805(n+1)-A062808(n+1)`
-/

namespace A062813.P14816503961914504584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062805 (n + 1) - A062808 (n + 1)

end

end A062813.P14816503961914504584

/-!
# A062814: a(n) = Sum_{i=0..n-1} i * (n - i)^(n - i).

The programs for A062814, there is no canonical definition to state claims against.
-/

/-! ## A062814.P5928024087241313540

`∑[∑[n^n]-1]`
-/

namespace A062814.P5928024087241313540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062814.P5928024087241313540

/-! ## A062814.P13243104639888006554

`lcm((-1)^n, ∑[∑[lcm(n, (-n)^n)]])`
-/

namespace A062814.P13243104639888006554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062814.P13243104639888006554

/-! ## A062814.P18389597917568943920

`n^n+2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062814.P18389597917568943920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ n : ℤ) + (2 * a (n - 1) - a (n - 2))

end

end A062814.P18389597917568943920

/-! ## A062814.P194192371811716298

`abs(∑[A062970(n)-1])`
-/

namespace A062814.P194192371811716298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A062814.P194192371811716298

/-! ## A062814.P12506312435129169455

`or(∑[A001923(n)], char[1])`
-/

namespace A062814.P12506312435129169455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A062814.P12506312435129169455

/-! ## A062814.P17012863985824861450

`∑[∑[A000312(n)]]-(n+1)`
-/

namespace A062814.P17012863985824861450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A062814.P17012863985824861450

/-! ## A062814.P7791135197064200714

`∑[∑[A014566(n)]]-∑[n+2]`
-/

namespace A062814.P7791135197064200714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A062814.P7791135197064200714

/-! ## A062814.P8578658018957443023

`A001478(n+1)+∑[∑[n^n]]`
-/

namespace A062814.P8578658018957443023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062814.P8578658018957443023

/-! ## A062814.P9921297750159816824

`∑[A001923(A028310(n))]-1`
-/

namespace A062814.P9921297750159816824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062814.P9921297750159816824

/-! ## A062814.P2148828325257929274

`A007318(∑[n])*∑[A001923(n)]`
-/

namespace A062814.P2148828325257929274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A062814.P2148828325257929274

/-!
# A062815: a(n) = Sum_{i=1..n} i^(i+1).

The programs for A062815, there is no canonical definition to state claims against.
-/

/-! ## A062815.P1967677085979528223

`∑[record[(n-1)^n]]`
-/

namespace A062815.P1967677085979528223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062815.P1967677085979528223

/-! ## A062815.P9151465774762017280

`∑[(n+1)^(n+2)]`
-/

namespace A062815.P9151465774762017280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062815.P9151465774762017280

/-! ## A062815.P4771658899489032037

`record[(n-1)^n]+a(n-1)` with `a(0)=1`
-/

namespace A062815.P4771658899489032037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A062815.P4771658899489032037

/-! ## A062815.P16069379335233675112

`a(n-1)+(n+1)^(n+2)` with `a(0)=1`
-/

namespace A062815.P16069379335233675112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ (n + 2)

end

end A062815.P16069379335233675112

/-! ## A062815.P1368835013687752104

`A095937(n+2)-1`
-/

namespace A062815.P1368835013687752104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095937 (n + 2) - 1

end

end A062815.P1368835013687752104

/-! ## A062815.P13171480422760448022

`A007778(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A062815.P13171480422760448022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007778 (n + 1) + a (n - 1)

end

end A062815.P13171480422760448022

/-! ## A062815.P6472785593398049656

`A007778(n+2)-A306377(n+2)`
-/

namespace A062815.P6472785593398049656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 2) - A306377 (n + 2)

end

end A062815.P6472785593398049656

/-!
# A062816: a(n) = phi(n)*tau(n) - 2n = A000010(n)*A000005(n) - 2*n.

The programs for A062816, the canonical program `A062816.P6661153086151831594` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062816 has offset 1).

The definition of A062816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062816.P6720008526459351437

`A062355(n+1)-2*(n+1)`
-/

namespace A062816.P6720008526459351437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) - (2 * (n + 1) : ℤ)

end

end A062816.P6720008526459351437

namespace A062816

/-- `A062355(n+1)-2*(n+1)` -/
def P6720008526459351437.Spec : Prop :=
  ∀ n, P6720008526459351437.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P6661153086151831594

`A000010(n+1)*A000005(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062816

/-- `A000010(n+1)*A000005(n+1)-2*(n+1)` -/
def P6661153086151831594.Spec : Prop :=
  ∀ n, P6661153086151831594.a n = A062816 (n + 1)

theorem P6661153086151831594.correct : P6661153086151831594.Spec := by
  intro n
  simp only [A062816, Nat.add_sub_cancel]

end A062816

/-! ## A062816.P7435490589567714136

`A079535(n+1)-(n+1)`
-/

namespace A062816.P7435490589567714136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (n + 1 : ℤ)

end

end A062816.P7435490589567714136

namespace A062816

/-- `A079535(n+1)-(n+1)` -/
def P7435490589567714136.Spec : Prop :=
  ∀ n, P7435490589567714136.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P1712371444792137120

`A079536(n+1)-(2*n+2-∑{d}[n+1, #])`
-/

namespace A062816.P1712371444792137120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) - ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)))

end

end A062816.P1712371444792137120

namespace A062816

/-- `A079536(n+1)-(2*n+2-∑{d}[n+1, #])` -/
def P1712371444792137120.Spec : Prop :=
  ∀ n, P1712371444792137120.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P10489889565546938060

`A079536(n+1)+A033880(n+1)`
-/

namespace A062816.P10489889565546938060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + A033880 (n + 1)

end

end A062816.P10489889565546938060

namespace A062816

/-- `A079536(n+1)+A033880(n+1)` -/
def P10489889565546938060.Spec : Prop :=
  ∀ n, P10489889565546938060.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P13839217508008564068

`A079536(n+1)-A033879(n+1)`
-/

namespace A062816.P13839217508008564068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) - A033879 (n + 1)

end

end A062816.P13839217508008564068

namespace A062816

/-- `A079536(n+1)-A033879(n+1)` -/
def P13839217508008564068.Spec : Prop :=
  ∀ n, P13839217508008564068.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P13877441320501530710

`A079536(n+1)+∑[A340793(n+1)-2]`
-/

namespace A062816.P13877441320501530710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062816.P13877441320501530710

namespace A062816

/-- `A079536(n+1)+∑[A340793(n+1)-2]` -/
def P13877441320501530710.Spec : Prop :=
  ∀ n, P13877441320501530710.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P8798246245165037374

`A079536(n+1)-(3*(n+1)-A155085(n+1))`
-/

namespace A062816.P8798246245165037374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) - ((3 * (n + 1) : ℤ) - A155085 (n + 1))

end

end A062816.P8798246245165037374

namespace A062816

/-- `A079536(n+1)-(3*(n+1)-A155085(n+1))` -/
def P8798246245165037374.Spec : Prop :=
  ∀ n, P8798246245165037374.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P4190423511695257518

`∑{d}[n+1, A000010(n+1)-A000010(#)]-(n+1)`
-/

namespace A062816.P4190423511695257518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (n + 1) - A000010 d) - (n + 1 : ℤ)

end

end A062816.P4190423511695257518

namespace A062816

/-- `∑{d}[n+1, A000010(n+1)-A000010(#)]-(n+1)` -/
def P4190423511695257518.Spec : Prop :=
  ∀ n, P4190423511695257518.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P13885751410329831302

`A079536(n+1)-(A005408(n)+1-∑{d}[n+1, #])`
-/

namespace A062816.P13885751410329831302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) - (A005408 n + 1 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A062816.P13885751410329831302

namespace A062816

/-- `A079536(n+1)-(A005408(n)+1-∑{d}[n+1, #])` -/
def P13885751410329831302.Spec : Prop :=
  ∀ n, P13885751410329831302.a n = A062816 (n + 1)

end A062816

/-! ## A062816.P16317611401440441060

`A079536(n+1)-(2*n-A064987(n+1)/(n+1)+2)`
-/

namespace A062816.P16317611401440441060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079536 (n + 1) : ℚ) - ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A062816.P16317611401440441060

namespace A062816

/-- `A079536(n+1)-(2*n-A064987(n+1)/(n+1)+2)` -/
def P16317611401440441060.Spec : Prop :=
  ∀ n, P16317611401440441060.a n = (A062816 (n + 1) : ℚ)

end A062816

/-! ## A062816.P17880083922361033078

`A079536(n+1)+1-Δ[A123327(n+1)]`
-/

namespace A062816.P17880083922361033078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A062816.P17880083922361033078

namespace A062816

/-- `A079536(n+1)+1-Δ[A123327(n+1)]` -/
def P17880083922361033078.Spec : Prop :=
  ∀ n, P17880083922361033078.a n = A062816 (n + 1)

end A062816

/-!
# A062817: a(n) = Sum_{i=0..n} i^(n - i)*(n - i)^i.

The programs for A062817, there is no canonical definition to state claims against.
-/

/-! ## A062817.P18064952727884022464

`A132270(A390706(n))+A000982(n)`
-/

namespace A062817.P18064952727884022464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A390706 n).toNat + A000982 n

end

end A062817.P18064952727884022464

/-!
# A062818: Values of Moebius transform of perfect numbers, A000396.

The programs for A062818, there is no canonical definition to state claims against.
-/

/-! ## A062818.P4571992476268228241

`A110346(p?[2^n-1])-A185351(∏{e}[n+1, #+1])`
-/

namespace A062818.P4571992476268228241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110346 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A185351 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A062818.P4571992476268228241

/-!
# A062819: Inverse Moebius transform of perfect numbers, A000396.

The programs for A062819, there is no canonical definition to state claims against.
-/

/-! ## A062819.P981413850244772157

`∑{d}[n+1, A000396(#)]`
-/

namespace A062819.P981413850244772157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000396 d

end

end A062819.P981413850244772157

/-! ## A062819.P12282980885442723028

`record[∑{d}[A057979(n), A000396(#)]]`
-/

namespace A062819.P12282980885442723028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000396 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062819.P12282980885442723028

/-! ## A062819.P7482534294332505489

`record[∑{d}[A127648(n), A000396(#)]]`
-/

namespace A062819.P7482534294332505489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000396 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062819.P7482534294332505489

/-! ## A062819.P8203223024942383884

`A185351(A034729(n+1)+1)`
-/

namespace A062819.P8203223024942383884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (A034729 (n + 1) + 1).toNat

end

end A062819.P8203223024942383884

/-!
# A062820: Sum_{k=1..n} p(k)*mu(k).

The programs for A062820, the canonical program `A062820.P14889107755262625484` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062820 has offset 1).

The definition of A062820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062820.P14889107755262625484

`∑[A062007(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062820

/-- `∑[A062007(n+1)]` -/
def P14889107755262625484.Spec : Prop :=
  ∀ n, P14889107755262625484.a n = A062820 (n + 1)

theorem P14889107755262625484.correct : P14889107755262625484.Spec := by
  intro n
  simp only [A062820, Nat.add_sub_cancel]

end A062820

/-! ## A062820.P12443211101546484245

`∑[Δ[A007504(n)]*A008683(n+1)]`
-/

namespace A062820.P12443211101546484245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P12443211101546484245

namespace A062820

/-- `∑[Δ[A007504(n)]*A008683(n+1)]` -/
def P12443211101546484245.Spec : Prop :=
  ∀ n, P12443211101546484245.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P1075338185936393786

`∑[A000040(n+1)*A008683(n+1)]`
-/

namespace A062820.P1075338185936393786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P1075338185936393786

namespace A062820

/-- `∑[A000040(n+1)*A008683(n+1)]` -/
def P1075338185936393786.Spec : Prop :=
  ∀ n, P1075338185936393786.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P6655807488498016794

`∑[sqrt(A001248(n+1))*A008683(n+1)]`
-/

namespace A062820.P6655807488498016794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A008683 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P6655807488498016794

namespace A062820

/-- `∑[sqrt(A001248(n+1))*A008683(n+1)]` -/
def P6655807488498016794.Spec : Prop :=
  ∀ n, P6655807488498016794.a n = (A062820 (n + 1) : ℝ)

end A062820

/-! ## A062820.P7351200185332315907

`∑[A008683(n+1)*∑[A054541(n+1)]]`
-/

namespace A062820.P7351200185332315907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P7351200185332315907

namespace A062820

/-- `∑[A008683(n+1)*∑[A054541(n+1)]]` -/
def P7351200185332315907.Spec : Prop :=
  ∀ n, P7351200185332315907.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P1497179167730694942

`∑[record[A259153(n+2)]*A008683(n+1)]`
-/

namespace A062820.P1497179167730694942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P1497179167730694942

namespace A062820

/-- `∑[record[A259153(n+2)]*A008683(n+1)]` -/
def P1497179167730694942.Spec : Prop :=
  ∀ n, P1497179167730694942.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P5692890735732335502

`∑[(A006093(n+1)+1)*A008683(n+1)]`
-/

namespace A062820.P5692890735732335502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P5692890735732335502

namespace A062820

/-- `∑[(A006093(n+1)+1)*A008683(n+1)]` -/
def P5692890735732335502.Spec : Prop :=
  ∀ n, P5692890735732335502.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P7401960649862938694

`∑[(A040976(n+1)+2)*A008683(n+1)]`
-/

namespace A062820.P7401960649862938694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P7401960649862938694

namespace A062820

/-- `∑[(A040976(n+1)+2)*A008683(n+1)]` -/
def P7401960649862938694.Spec : Prop :=
  ∀ n, P7401960649862938694.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P8056798593584167417

`∑[(A113935(n+1)-3)*A008683(n+1)]`
-/

namespace A062820.P8056798593584167417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 1) - 3) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P8056798593584167417

namespace A062820

/-- `∑[(A113935(n+1)-3)*A008683(n+1)]` -/
def P8056798593584167417.Spec : Prop :=
  ∀ n, P8056798593584167417.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P16637960036500496465

`∑[A001748(n+1)/3*A008683(n+1)]`
-/

namespace A062820.P16637960036500496465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 * (A008683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P16637960036500496465

namespace A062820

/-- `∑[A001748(n+1)/3*A008683(n+1)]` -/
def P16637960036500496465.Spec : Prop :=
  ∀ n, P16637960036500496465.a n = (A062820 (n + 1) : ℚ)

end A062820

/-! ## A062820.P16652964035033401677

`∑[(A175222(n+1)-5)*A008683(n+1)]`
-/

namespace A062820.P16652964035033401677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175222 (n + 1) - 5) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P16652964035033401677

namespace A062820

/-- `∑[(A175222(n+1)-5)*A008683(n+1)]` -/
def P16652964035033401677.Spec : Prop :=
  ∀ n, P16652964035033401677.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P3250519032108638355

`∑[A162512(n+1)%2*A000040(n+1)]`
-/

namespace A062820.P3250519032108638355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P3250519032108638355

namespace A062820

/-- `∑[A162512(n+1)%2*A000040(n+1)]` -/
def P3250519032108638355.Spec : Prop :=
  ∀ n, P3250519032108638355.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P16034077870652125958

`∑[A328502(n+1)%2*A000040(n+1)]`
-/

namespace A062820.P16034077870652125958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328502 (n + 1)) 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P16034077870652125958

namespace A062820

/-- `∑[A328502(n+1)%2*A000040(n+1)]` -/
def P16034077870652125958.Spec : Prop :=
  ∀ n, P16034077870652125958.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P8700559900966763100

`∑[A008683(n+1)*A008578(n+2)]`
-/

namespace A062820.P8700559900966763100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P8700559900966763100

namespace A062820

/-- `∑[A008683(n+1)*A008578(n+2)]` -/
def P8700559900966763100.Spec : Prop :=
  ∀ n, P8700559900966763100.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P10475922051288180813

`∑[A008683(n+1)*record[A006530(n+2)]]`
-/

namespace A062820.P10475922051288180813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P10475922051288180813

namespace A062820

/-- `∑[A008683(n+1)*record[A006530(n+2)]]` -/
def P10475922051288180813.Spec : Prop :=
  ∀ n, P10475922051288180813.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P7810003811217387289

`∑[A008683(n+1)*record[A020639(n+2)]]`
-/

namespace A062820.P7810003811217387289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P7810003811217387289

namespace A062820

/-- `∑[A008683(n+1)*record[A020639(n+2)]]` -/
def P7810003811217387289.Spec : Prop :=
  ∀ n, P7810003811217387289.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P998418321653591993

`∑[(record[A000010(n+1)]+1)*A008683(n+1)]`
-/

namespace A062820.P998418321653591993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P998418321653591993

namespace A062820

/-- `∑[(record[A000010(n+1)]+1)*A008683(n+1)]` -/
def P998418321653591993.Spec : Prop :=
  ∀ n, P998418321653591993.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P1129019024639888678

`∑[(eq[2, A000005(n+1)]+1)*A008683(n+1)]`
-/

namespace A062820.P1129019024639888678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P1129019024639888678

namespace A062820

/-- `∑[(eq[2, A000005(n+1)]+1)*A008683(n+1)]` -/
def P1129019024639888678.Spec : Prop :=
  ∀ n, P1129019024639888678.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P7023480072711993362

`∑[A008683(n+1)*p?[A018252(n+1)-7]]`
-/

namespace A062820.P7023480072711993362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P7023480072711993362

namespace A062820

/-- `∑[A008683(n+1)*p?[A018252(n+1)-7]]` -/
def P7023480072711993362.Spec : Prop :=
  ∀ n, P7023480072711993362.a n = A062820 (n + 1)

end A062820

/-! ## A062820.P11184841763859115358

`∑[A008683(n+1)*p?[A001057(n)]]`
-/

namespace A062820.P11184841763859115358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P11184841763859115358

namespace A062820

/-- `∑[A008683(n+1)*p?[A001057(n)]]` -/
def P11184841763859115358.Spec : Prop :=
  ∀ n, P11184841763859115358.a n = A062820 (n + 1)

end A062820

/-!
# A062821: Number of divisors of totient of n.

The programs for A062821, the canonical program `A062821.P4034696018881516945` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062821 has offset 1).

The definition of A062821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062821.P4034696018881516945

`A000005(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062821

/-- `A000005(A000010(n+1))` -/
def P4034696018881516945.Spec : Prop :=
  ∀ n, P4034696018881516945.a n = A062821 (n + 1)

theorem P4034696018881516945.correct : P4034696018881516945.Spec := by
  intro n
  simp only [A062821, Nat.add_sub_cancel]

end A062821

/-! ## A062821.P1626471456095295444

`A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A062821.P1626471456095295444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A062821.P1626471456095295444

namespace A062821

/-- `A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P1626471456095295444.Spec : Prop :=
  ∀ n, P1626471456095295444.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P3953866213181930859

`A000005(Δ[A002088(n)])`
-/

namespace A062821.P3953866213181930859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A062821.P3953866213181930859

namespace A062821

/-- `A000005(Δ[A002088(n)])` -/
def P3953866213181930859.Spec : Prop :=
  ∀ n, P3953866213181930859.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P1518930140489513030

`A000005(Δ[A005728(n)])`
-/

namespace A062821.P1518930140489513030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A062821.P1518930140489513030

namespace A062821

/-- `A000005(Δ[A005728(n)])` -/
def P1518930140489513030.Spec : Prop :=
  ∀ n, P1518930140489513030.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P7464853825736191586

`A000005(A277906(n+1))`
-/

namespace A062821.P7464853825736191586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A277906 (n + 1)).toNat

end

end A062821.P7464853825736191586

namespace A062821

/-- `A000005(A277906(n+1))` -/
def P7464853825736191586.Spec : Prop :=
  ∀ n, P7464853825736191586.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P16085959548378605641

`A320111(A140434(n+1))`
-/

namespace A062821.P16085959548378605641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A140434 (n + 1)).toNat

end

end A062821.P16085959548378605641

namespace A062821

/-- `A320111(A140434(n+1))` -/
def P16085959548378605641.Spec : Prop :=
  ∀ n, P16085959548378605641.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P11768861009155209167

`A000005(sqrt(A127473(n+1)))`
-/

namespace A062821.P11768861009155209167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A062821.P11768861009155209167

namespace A062821

/-- `A000005(sqrt(A127473(n+1)))` -/
def P11768861009155209167.Spec : Prop :=
  ∀ n, P11768861009155209167.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P16358237060469772454

`A000005(A109606(n+1)+1)`
-/

namespace A062821.P16358237060469772454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (n + 1) + 1).toNat

end

end A062821.P16358237060469772454

namespace A062821

/-- `A000005(A109606(n+1)+1)` -/
def P16358237060469772454.Spec : Prop :=
  ∀ n, P16358237060469772454.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P11643217574849883348

`A000005(A039649(n+1)-1)`
-/

namespace A062821.P11643217574849883348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039649 (n + 1) - 1).toNat

end

end A062821.P11643217574849883348

namespace A062821

/-- `A000005(A039649(n+1)-1)` -/
def P11643217574849883348.Spec : Prop :=
  ∀ n, P11643217574849883348.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P15242188287793942172

`A320111(2*A000010(n+1))`
-/

namespace A062821.P15242188287793942172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A000010 (n + 1)).toNat

end

end A062821.P15242188287793942172

namespace A062821

/-- `A320111(2*A000010(n+1))` -/
def P15242188287793942172.Spec : Prop :=
  ∀ n, P15242188287793942172.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P297600443677488391

`A000005(A349137(2*n+1))`
-/

namespace A062821.P297600443677488391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349137 (2 * n + 1)).toNat

end

end A062821.P297600443677488391

namespace A062821

/-- `A000005(A349137(2*n+1))` -/
def P297600443677488391.Spec : Prop :=
  ∀ n, P297600443677488391.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P3971855417284822159

`A000005(n-A219428(n+1))`
-/

namespace A062821.P3971855417284822159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A062821.P3971855417284822159

namespace A062821

/-- `A000005(n-A219428(n+1))` -/
def P3971855417284822159.Spec : Prop :=
  ∀ n, P3971855417284822159.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P8431402766125741387

`∑{d}[A000010(n+1), A054977(#)]`
-/

namespace A062821.P8431402766125741387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A062821.P8431402766125741387

namespace A062821

/-- `∑{d}[A000010(n+1), A054977(#)]` -/
def P8431402766125741387.Spec : Prop :=
  ∀ n, P8431402766125741387.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P4372915578302161812

`∑{d}[A000010(n+1), A057427(#)]`
-/

namespace A062821.P4372915578302161812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A062821.P4372915578302161812

namespace A062821

/-- `∑{d}[A000010(n+1), A057427(#)]` -/
def P4372915578302161812.Spec : Prop :=
  ∀ n, P4372915578302161812.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P4281925115220140266

`A193453(n+1)+A193386(n+1)`
-/

namespace A062821.P4281925115220140266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (n + 1) + A193386 (n + 1)

end

end A062821.P4281925115220140266

namespace A062821

/-- `A193453(n+1)+A193386(n+1)` -/
def P4281925115220140266.Spec : Prop :=
  ∀ n, P4281925115220140266.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P17278687190169561340

`A385122(n+1)+A163109(n+1)`
-/

namespace A062821.P17278687190169561340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385122 (n + 1) + A163109 (n + 1)

end

end A062821.P17278687190169561340

namespace A062821

/-- `A385122(n+1)+A163109(n+1)` -/
def P17278687190169561340.Spec : Prop :=
  ∀ n, P17278687190169561340.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P6260004761442619003

`A000005(n+1-A051953(n+1))`
-/

namespace A062821.P6260004761442619003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A062821.P6260004761442619003

namespace A062821

/-- `A000005(n+1-A051953(n+1))` -/
def P6260004761442619003.Spec : Prop :=
  ∀ n, P6260004761442619003.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P4531325524117950025

`A000005(A002618(n+1)/(n+1))`
-/

namespace A062821.P4531325524117950025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A062821.P4531325524117950025

namespace A062821

/-- `A000005(A002618(n+1)/(n+1))` -/
def P4531325524117950025.Spec : Prop :=
  ∀ n, P4531325524117950025.a n = A062821 (n + 1)

end A062821

/-! ## A062821.P6465426371938456573

`A340273(A000010(2*n+1-n))`
-/

namespace A062821.P6465426371938456573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (A000010 (2 * n + 1 - n)).toNat

end

end A062821.P6465426371938456573

namespace A062821

/-- `A340273(A000010(2*n+1-n))` -/
def P6465426371938456573.Spec : Prop :=
  ∀ n, P6465426371938456573.a n = A062821 (n + 1)

end A062821

/-!
# A062822: Sum of divisors of the squarefree numbers: sigma(A005117(n)).

The programs for A062822, the canonical program `A062822.P9758035009921016818` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062822 has offset 1).

The definition of A062822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062822.P9758035009921016818

`A000203(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A062822

/-- `A000203(A005117(n+1))` -/
def P9758035009921016818.Spec : Prop :=
  ∀ n, P9758035009921016818.a n = A062822 (n + 1)

theorem P9758035009921016818.correct : P9758035009921016818.Spec := by
  intro n
  simp only [A062822, Nat.add_sub_cancel]

end A062822

/-! ## A062822.P16999392123978302093

`∑{d}[record[A007913(n+1)], #]`
-/

namespace A062822.P16999392123978302093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062822.P16999392123978302093

namespace A062822

/-- `∑{d}[record[A007913(n+1)], #]` -/
def P16999392123978302093.Spec : Prop :=
  ∀ n, (P16999392123978302093.a n : ℤ) = A062822 (n + 1)

end A062822

/-! ## A062822.P3451993085911537016

`∑{d}[record[A007947(n+1)], #]`
-/

namespace A062822.P3451993085911537016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062822.P3451993085911537016

namespace A062822

/-- `∑{d}[record[A007947(n+1)], #]` -/
def P3451993085911537016.Spec : Prop :=
  ∀ n, (P3451993085911537016.a n : ℤ) = A062822 (n + 1)

end A062822

/-! ## A062822.P14424418073072170260

`A000203(comp[A105570(n)])`
-/

namespace A062822.P14424418073072170260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A062822.P14424418073072170260

namespace A062822

/-- `A000203(comp[A105570(n)])` -/
def P14424418073072170260.Spec : Prop :=
  ∀ n, P14424418073072170260.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P2157098783296177585

`A000203(sqrt(A062503(n+1)))`
-/

namespace A062822.P2157098783296177585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A062822.P2157098783296177585

namespace A062822

/-- `A000203(sqrt(A062503(n+1)))` -/
def P2157098783296177585.Spec : Prop :=
  ∀ n, P2157098783296177585.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P8726275611105869418

`A000203(record[A003967(n+1)])`
-/

namespace A062822.P8726275611105869418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P8726275611105869418

namespace A062822

/-- `A000203(record[A003967(n+1)])` -/
def P8726275611105869418.Spec : Prop :=
  ∀ n, P8726275611105869418.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P9301772626676620542

`A003959(record[A003967(n+1)])`
-/

namespace A062822.P9301772626676620542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P9301772626676620542

namespace A062822

/-- `A003959(record[A003967(n+1)])` -/
def P9301772626676620542.Spec : Prop :=
  ∀ n, P9301772626676620542.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P5106732044477804621

`A000203(record[A007913(n+1)])`
-/

namespace A062822.P5106732044477804621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P5106732044477804621

namespace A062822

/-- `A000203(record[A007913(n+1)])` -/
def P5106732044477804621.Spec : Prop :=
  ∀ n, P5106732044477804621.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P11013944766932691089

`A000203(record[A007947(n+1)])`
-/

namespace A062822.P11013944766932691089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P11013944766932691089

namespace A062822

/-- `A000203(record[A007947(n+1)])` -/
def P11013944766932691089.Spec : Prop :=
  ∀ n, P11013944766932691089.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P8754619026258649286

`A003959(record[A007913(n+1)])`
-/

namespace A062822.P8754619026258649286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P8754619026258649286

namespace A062822

/-- `A003959(record[A007913(n+1)])` -/
def P8754619026258649286.Spec : Prop :=
  ∀ n, P8754619026258649286.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P7654032243479493271

`A000203(record[A055231(n+1)])`
-/

namespace A062822.P7654032243479493271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P7654032243479493271

namespace A062822

/-- `A000203(record[A055231(n+1)])` -/
def P7654032243479493271.Spec : Prop :=
  ∀ n, P7654032243479493271.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P18178552709867180091

`A000203(record[A055653(n+1)])`
-/

namespace A062822.P18178552709867180091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P18178552709867180091

namespace A062822

/-- `A000203(record[A055653(n+1)])` -/
def P18178552709867180091.Spec : Prop :=
  ∀ n, P18178552709867180091.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P16265665804027184318

`A000203(record[A083346(n+1)])`
-/

namespace A062822.P16265665804027184318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P16265665804027184318

namespace A062822

/-- `A000203(record[A083346(n+1)])` -/
def P16265665804027184318.Spec : Prop :=
  ∀ n, P16265665804027184318.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P977755485059896353

`A000203(record[A325814(n+1)])`
-/

namespace A062822.P977755485059896353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P977755485059896353

namespace A062822

/-- `A000203(record[A325814(n+1)])` -/
def P977755485059896353.Spec : Prop :=
  ∀ n, P977755485059896353.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P13391687030795726690

`A000203(record[A325978(n+1)])`
-/

namespace A062822.P13391687030795726690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P13391687030795726690

namespace A062822

/-- `A000203(record[A325978(n+1)])` -/
def P13391687030795726690.Spec : Prop :=
  ∀ n, P13391687030795726690.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P1336083099009848348

`A003959(record[A325978(n+1)])`
-/

namespace A062822.P1336083099009848348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062822.P1336083099009848348

namespace A062822

/-- `A003959(record[A325978(n+1)])` -/
def P1336083099009848348.Spec : Prop :=
  ∀ n, P1336083099009848348.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P16881170030656139642

`A000203(A133466(n+1)/4)`
-/

namespace A062822.P16881170030656139642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A133466 (n + 1) : ℚ) / 4)).toNat

end

end A062822.P16881170030656139642

namespace A062822

/-- `A000203(A133466(n+1)/4)` -/
def P16881170030656139642.Spec : Prop :=
  ∀ n, P16881170030656139642.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P3754830194391790673

`A000203(A243348(n+1)+n+1)`
-/

namespace A062822.P3754830194391790673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A243348 (n + 1) + (n + 1 : ℤ)).toNat

end

end A062822.P3754830194391790673

namespace A062822

/-- `A000203(A243348(n+1)+n+1)` -/
def P3754830194391790673.Spec : Prop :=
  ∀ n, P3754830194391790673.a n = A062822 (n + 1)

end A062822

/-! ## A062822.P12686317729410812016

`A073245(n+1)/A005117(n+1)`
-/

namespace A062822.P12686317729410812016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073245 (n + 1) : ℚ) / (A005117 (n + 1) : ℚ)

end

end A062822.P12686317729410812016

namespace A062822

/-- `A073245(n+1)/A005117(n+1)` -/
def P12686317729410812016.Spec : Prop :=
  ∀ n, P12686317729410812016.a n = (A062822 (n + 1) : ℚ)

end A062822

/-!
# A062823: Numbers k such that the number of divisors of k divides the number of divisors of the totient of k.

The programs for A062823, the canonical program `A062823.P15371580975150479790` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062823 has offset 1).

The definition of A062823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062823.P15371580975150479790

`eq[0, A000005(A000010(n+1))%A000005(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062823

/-- `eq[0, A000005(A000010(n+1))%A000005(n+1)]+1` -/
def P15371580975150479790.Spec : Prop :=
  ∀ n, (P15371580975150479790.a n : ℤ) = A062823 (n + 1)

theorem P15371580975150479790.correct : P15371580975150479790.Spec := by
  intro n
  simp only [A062823, Nat.add_sub_cancel]

end A062823

/-! ## A062823.P8141493807528354822

`record[or(A304750(n+1), A304794(n+4))]`
-/

namespace A062823.P8141493807528354822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A304750 (n + 1)) (A304794 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062823.P8141493807528354822

namespace A062823

/-- `record[or(A304750(n+1), A304794(n+4))]` -/
def P8141493807528354822.Spec : Prop :=
  ∀ n, P8141493807528354822.a n = A062823 (n + 1)

end A062823

/-!
# A062824: a(n) = Ch(A005117(n)) where Ch(n) is Chowla's function and A005117(n) are the squarefree numbers.

The programs for A062824, the canonical program `A062824.P11206584974579503261` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062824 has offset 1).

The definition of A062824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062824.P11206584974579503261

`A048050(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A062824

/-- `A048050(A005117(n+1))` -/
def P11206584974579503261.Spec : Prop :=
  ∀ n, P11206584974579503261.a n = A062824 (n + 1)

theorem P11206584974579503261.correct : P11206584974579503261.Spec := by
  intro n
  simp only [A062824, Nat.add_sub_cancel]

end A062824

/-! ## A062824.P14254279114295766278

`A057428(n)+A034460(A005117(n+1))`
-/

namespace A062824.P14254279114295766278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A034460 (A005117 (n + 1)).toNat

end

end A062824.P14254279114295766278

namespace A062824

/-- `A057428(n)+A034460(A005117(n+1))` -/
def P14254279114295766278.Spec : Prop :=
  ∀ n, P14254279114295766278.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P1212235744916308557

`A326188(A005117(n+1))%A001844(n)`
-/

namespace A062824.P1212235744916308557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326188 (A005117 (n + 1)).toNat) (A001844 n)

end

end A062824.P1212235744916308557

namespace A062824

/-- `A326188(A005117(n+1))%A001844(n)` -/
def P1212235744916308557.Spec : Prop :=
  ∀ n, P1212235744916308557.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P8482918514180385479

`A048050(record[∏{p}[n, #]])`
-/

namespace A062824.P8482918514180385479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A062824.P8482918514180385479

namespace A062824

/-- `A048050(record[∏{p}[n, #]])` -/
def P8482918514180385479.Spec : Prop :=
  ∀ n, P8482918514180385479.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P2892113930153234990

`A048050(record[A007947(n+1)])`
-/

namespace A062824.P2892113930153234990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062824.P2892113930153234990

namespace A062824

/-- `A048050(record[A007947(n+1)])` -/
def P2892113930153234990.Spec : Prop :=
  ∀ n, P2892113930153234990.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P3878443397525499884

`A048050(record[A019554(n+1)])`
-/

namespace A062824.P3878443397525499884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062824.P3878443397525499884

namespace A062824

/-- `A048050(record[A019554(n+1)])` -/
def P3878443397525499884.Spec : Prop :=
  ∀ n, P3878443397525499884.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P8213062959343505631

`A001065(A005117(n+1))-A057427(n)`
-/

namespace A062824.P8213062959343505631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005117 (n + 1)).toNat - A057427 n

end

end A062824.P8213062959343505631

namespace A062824

/-- `A001065(A005117(n+1))-A057427(n)` -/
def P8213062959343505631.Spec : Prop :=
  ∀ n, P8213062959343505631.a n = A062824 (n + 1)

end A062824

/-! ## A062824.P14236891465857757898

`A308135(A005117(n+1))-A093521(2*(n+1))`
-/

namespace A062824.P14236891465857757898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (A005117 (n + 1)).toNat - A093521 (2 * (n + 1))

end

end A062824.P14236891465857757898

namespace A062824

/-- `A308135(A005117(n+1))-A093521(2*(n+1))` -/
def P14236891465857757898.Spec : Prop :=
  ∀ n, P14236891465857757898.a n = A062824 (n + 1)

end A062824

/-!
# A062825: Ch(n-th nonprime) where Ch(n) is Chowla's function, cf. A048050.

The programs for A062825, the canonical program `A062825.P9883742102294151601` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062825 has offset 1).

The definition of A062825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062825.P9883742102294151601

`A162195(n+1)+A057428(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062825

/-- `A162195(n+1)+A057428(n)` -/
def P9883742102294151601.Spec : Prop :=
  ∀ n, P9883742102294151601.a n = A062825 (n + 1)

theorem P9883742102294151601.correct : P9883742102294151601.Spec := by
  intro n
  simp only [A062825, Nat.add_sub_cancel]

end A062825

/-! ## A062825.P12164637367502023085

`A162195(n+1)-A057427(n)`
-/

namespace A062825.P12164637367502023085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1) - A057427 n

end

end A062825.P12164637367502023085

namespace A062825

/-- `A162195(n+1)-A057427(n)` -/
def P12164637367502023085.Spec : Prop :=
  ∀ n, P12164637367502023085.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P9714912058629798320

`A162195(n+1)-A019428(A005843(n))`
-/

namespace A062825.P9714912058629798320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 1) - A019428 (A005843 n).toNat

end

end A062825.P9714912058629798320

namespace A062825

/-- `A162195(n+1)-A019428(A005843(n))` -/
def P9714912058629798320.Spec : Prop :=
  ∀ n, P9714912058629798320.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P3175738637311020768

`A048050(A018252(n+1))`
-/

namespace A062825.P3175738637311020768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A018252 (n + 1)).toNat

end

end A062825.P3175738637311020768

namespace A062825

/-- `A048050(A018252(n+1))` -/
def P3175738637311020768.Spec : Prop :=
  ∀ n, P3175738637311020768.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P765455430515474421

`A048050(A065090(n+2))`
-/

namespace A062825.P765455430515474421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A065090 (n + 2)).toNat

end

end A062825.P765455430515474421

namespace A062825

/-- `A048050(A065090(n+2))` -/
def P765455430515474421.Spec : Prop :=
  ∀ n, P765455430515474421.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P1708119199800958914

`A048050(A141468(n+2))`
-/

namespace A062825.P1708119199800958914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A141468 (n + 2)).toNat

end

end A062825.P1708119199800958914

namespace A062825

/-- `A048050(A141468(n+2))` -/
def P1708119199800958914.Spec : Prop :=
  ∀ n, P1708119199800958914.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P16603510128972472951

`A048050(comp[record[A008472(n+1)]])`
-/

namespace A062825.P16603510128972472951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A062825.P16603510128972472951

namespace A062825

/-- `A048050(comp[record[A008472(n+1)]])` -/
def P16603510128972472951.Spec : Prop :=
  ∀ n, P16603510128972472951.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P3184437521158430066

`A048050(eq[C(2, n), A029834(n+1)]+1)`
-/

namespace A062825.P3184437521158430066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062825.P3184437521158430066

namespace A062825

/-- `A048050(eq[C(2, n), A029834(n+1)]+1)` -/
def P3184437521158430066.Spec : Prop :=
  ∀ n, P3184437521158430066.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P1929683066832360871

`A048050(lt[n, (A048050(n+1)+1)²]+1)`
-/

namespace A062825.P1929683066832360871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048050 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A062825.P1929683066832360871

namespace A062825

/-- `A048050(lt[n, (A048050(n+1)+1)²]+1)` -/
def P1929683066832360871.Spec : Prop :=
  ∀ n, P1929683066832360871.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P14465892396026640126

`A048050(lt[A014681(n), A039653(n)])`
-/

namespace A062825.P14465892396026640126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062825.P14465892396026640126

namespace A062825

/-- `A048050(lt[A014681(n), A039653(n)])` -/
def P14465892396026640126.Spec : Prop :=
  ∀ n, P14465892396026640126.a n = A062825 (n + 1)

end A062825

/-! ## A062825.P2367259864148633757

`A048050(comp[A008472(n+1)-A048050(n+1)])`
-/

namespace A062825.P2367259864148633757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A048050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A062825.P2367259864148633757

namespace A062825

/-- `A048050(comp[A008472(n+1)-A048050(n+1)])` -/
def P2367259864148633757.Spec : Prop :=
  ∀ n, P2367259864148633757.a n = A062825 (n + 1)

end A062825

/-!
# A062826: Square nialpdromes not ending in 0.

The programs for A062826, there is no canonical definition to state claims against.
-/

/-! ## A062826.P15198117882974240419

`A355063(lt[1, A299483(3*n+2)])`
-/

namespace A062826.P15198117882974240419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299483 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A062826.P15198117882974240419

/-! ## A062826.P6609516913133755006

`A355063(lt[A025478(n+1), A053289(n+3)])`
-/

namespace A062826.P6609516913133755006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355063 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062826.P6609516913133755006

/-! ## A062826.P14318789079826226130

`record[A350388(A355063(n+1))]`
-/

namespace A062826.P14318789079826226130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A355063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062826.P14318789079826226130

/-! ## A062826.P1551878505015880558

`filter[A028822(n+1), A011558(#)]`
-/

namespace A062826.P1551878505015880558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A062826.P1551878505015880558

/-! ## A062826.P17089623927898428086

`filter[A028822(n+1), A168046(#)]`
-/

namespace A062826.P17089623927898428086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A062826.P17089623927898428086

/-!
# A062827: Variation of Stechkin's function, A055004.

The programs for A062827, there is no canonical definition to state claims against.
-/

/-! ## A062827.P14131569197230997612

`∑[A223133(A324221(n))]-1`
-/

namespace A062827.P14131569197230997612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 (A324221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062827.P14131569197230997612

/-! ## A062827.P12904774270091401641

`A390447(3*n+2)+A102283(A302656(3*n+2))`
-/

namespace A062827.P12904774270091401641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (3 * n + 2) + A102283 (A302656 (3 * n + 2)).toNat

end

end A062827.P12904774270091401641

/-!
# A062828: a(n) = gcd(2n, n(n+1)/2).

The programs for A062828, the canonical program `A062828.P2496503783535357165` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062828 has offset 1).

The definition of A062828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062828.P2496503783535357165

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=2, a(4)=5, a(5)=3, a(6)=14, a(7)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062828

/-- `2*a(n-4)-a(n-8)` -/
def P2496503783535357165.Spec : Prop :=
  ∀ n, P2496503783535357165.a n = A062828 (n + 1)

theorem P2496503783535357165.correct : P2496503783535357165.Spec := by
  intro n
  simp only [A062828, Nat.add_sub_cancel]

end A062828

/-! ## A062828.P3605146214687859400

`gcd(C(n², 2), ∑[1-n])`
-/

namespace A062828.P3605146214687859400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n ^ 2) 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062828.P3605146214687859400

namespace A062828

/-- `gcd(C(n², 2), ∑[1-n])` -/
def P3605146214687859400.Spec : Prop :=
  ∀ n, (P3605146214687859400.a n : ℤ) = A062828 (n + 1)

end A062828

/-! ## A062828.P15700257033090168999

`gcd(∑[n+1], ∑[n-1])`
-/

namespace A062828.P15700257033090168999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A062828.P15700257033090168999

namespace A062828

/-- `gcd(∑[n+1], ∑[n-1])` -/
def P15700257033090168999.Spec : Prop :=
  ∀ n, (P15700257033090168999.a n : ℤ) = A062828 (n + 1)

end A062828

/-! ## A062828.P12034335555346066242

`(n+1)/2*gcd(4, n+2)`
-/

namespace A062828.P12034335555346066242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (Nat.gcd 4 (n + 2) : ℚ)

end

end A062828.P12034335555346066242

namespace A062828

/-- `(n+1)/2*gcd(4, n+2)` -/
def P12034335555346066242.Spec : Prop :=
  ∀ n, P12034335555346066242.a n = (A062828 (n + 1) : ℚ)

end A062828

/-! ## A062828.P4001413071685707698

`lcm(and(2, n)+2, n+1)/2`
-/

namespace A062828.P4001413071685707698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.land 2 n + 2) (n + 1) : ℚ) / 2

end

end A062828.P4001413071685707698

namespace A062828

/-- `lcm(and(2, n)+2, n+1)/2` -/
def P4001413071685707698.Spec : Prop :=
  ∀ n, P4001413071685707698.a n = (A062828 (n + 1) : ℚ)

end A062828

/-! ## A062828.P10261432555038377576

`4/lcm(4, n+2)*∑[n+1]`
-/

namespace A062828.P10261432555038377576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.lcm 4 (n + 2) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062828.P10261432555038377576

namespace A062828

/-- `4/lcm(4, n+2)*∑[n+1]` -/
def P10261432555038377576.Spec : Prop :=
  ∀ n, P10261432555038377576.a n = (A062828 (n + 1) : ℚ)

end A062828

/-! ## A062828.P1868488587351449143

`sqrt(A227168(n+1))`
-/

namespace A062828.P1868488587351449143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A227168 (n + 1) : ℝ)

end

end A062828.P1868488587351449143

namespace A062828

/-- `sqrt(A227168(n+1))` -/
def P1868488587351449143.Spec : Prop :=
  ∀ n, P1868488587351449143.a n = (A062828 (n + 1) : ℝ)

end A062828

/-! ## A062828.P17232490367436717621

`(n+1)/2^A131729(n)`
-/

namespace A062828.P17232490367436717621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (A131729 n : ℤ)

end

end A062828.P17232490367436717621

namespace A062828

/-- `(n+1)/2^A131729(n)` -/
def P17232490367436717621.Spec : Prop :=
  ∀ n, P17232490367436717621.a n = (A062828 (n + 1) : ℚ)

end A062828

/-! ## A062828.P9421537240573199707

`A257942(n)/A176743(n)`
-/

namespace A062828.P9421537240573199707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257942 n : ℚ) / (A176743 n : ℚ)

end

end A062828.P9421537240573199707

namespace A062828

/-- `A257942(n)/A176743(n)` -/
def P9421537240573199707.Spec : Prop :=
  ∀ n, P9421537240573199707.a n = (A062828 (n + 1) : ℚ)

end A062828

/-! ## A062828.P1300085040446066485

`lcm(A030640(n), A130658(n))`
-/

namespace A062828.P1300085040446066485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030640 n) (A130658 n)

end

end A062828.P1300085040446066485

namespace A062828

/-- `lcm(A030640(n), A130658(n))` -/
def P1300085040446066485.Spec : Prop :=
  ∀ n, (P1300085040446066485.a n : ℤ) = A062828 (n + 1)

end A062828

/-! ## A062828.P8140676944691236050

`A060819(n+1)*A130658(n)`
-/

namespace A062828.P8140676944691236050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A130658 n

end

end A062828.P8140676944691236050

namespace A062828

/-- `A060819(n+1)*A130658(n)` -/
def P8140676944691236050.Spec : Prop :=
  ∀ n, P8140676944691236050.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P8092132747541399282

`A051724(n+1)*A306764(n)`
-/

namespace A062828.P8092132747541399282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1) * A306764 n

end

end A062828.P8092132747541399282

namespace A062828

/-- `A051724(n+1)*A306764(n)` -/
def P8092132747541399282.Spec : Prop :=
  ∀ n, P8092132747541399282.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P4078806004517153621

`A026741(n+1)*A236398(n+1)`
-/

namespace A062828.P4078806004517153621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A236398 (n + 1)

end

end A062828.P4078806004517153621

namespace A062828

/-- `A026741(n+1)*A236398(n+1)` -/
def P4078806004517153621.Spec : Prop :=
  ∀ n, P4078806004517153621.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P14932239938944489333

`gcd(2, A057521(n+2))*A026741(n+1)`
-/

namespace A062828.P14932239938944489333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A057521 (n + 2)) : ℤ) * A026741 (n + 1)

end

end A062828.P14932239938944489333

namespace A062828

/-- `gcd(2, A057521(n+2))*A026741(n+1)` -/
def P14932239938944489333.Spec : Prop :=
  ∀ n, P14932239938944489333.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P14280819126719097689

`abs(1-gcd(A000217(n+1), A184636(n+1)))+1`
-/

namespace A062828.P14280819126719097689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Int.gcd (A000217 (n + 1)) (A184636 (n + 1)) : ℤ)| + 1

end

end A062828.P14280819126719097689

namespace A062828

/-- `abs(1-gcd(A000217(n+1), A184636(n+1)))+1` -/
def P14280819126719097689.Spec : Prop :=
  ∀ n, P14280819126719097689.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P13965372767376625163

`A026741(A026741(n+1))*A130658(n)`
-/

namespace A062828.P13965372767376625163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1)).toNat * A130658 n

end

end A062828.P13965372767376625163

namespace A062828

/-- `A026741(A026741(n+1))*A130658(n)` -/
def P13965372767376625163.Spec : Prop :=
  ∀ n, P13965372767376625163.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P8119654095686189326

`A060819(n+1)*A176895(A052928(n))`
-/

namespace A062828.P8119654095686189326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A176895 (A052928 n).toNat

end

end A062828.P8119654095686189326

namespace A062828

/-- `A060819(n+1)*A176895(A052928(n))` -/
def P8119654095686189326.Spec : Prop :=
  ∀ n, P8119654095686189326.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P15900843229968386942

`A000027(gcd(A000217(n+1), A002378(n)))`
-/

namespace A062828.P15900843229968386942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A000217 (n + 1)) (A002378 n))

end

end A062828.P15900843229968386942

namespace A062828

/-- `A000027(gcd(A000217(n+1), A002378(n)))` -/
def P15900843229968386942.Spec : Prop :=
  ∀ n, P15900843229968386942.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P16056103829601965434

`A026741(n+1)*A040001(A145051(n+1))`
-/

namespace A062828.P16056103829601965434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A040001 (A145051 (n + 1)).toNat

end

end A062828.P16056103829601965434

namespace A062828

/-- `A026741(n+1)*A040001(A145051(n+1))` -/
def P16056103829601965434.Spec : Prop :=
  ∀ n, P16056103829601965434.a n = A062828 (n + 1)

end A062828

/-! ## A062828.P3706690361223889168

`A000217(n+1)*A130658(n)/A176743(n)`
-/

namespace A062828.P3706690361223889168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) * A130658 n : ℚ) / (A176743 n : ℚ)

end

end A062828.P3706690361223889168

namespace A062828

/-- `A000217(n+1)*A130658(n)/A176743(n)` -/
def P3706690361223889168.Spec : Prop :=
  ∀ n, P3706690361223889168.a n = (A062828 (n + 1) : ℚ)

end A062828

/-!
# A062830: a(n) = #{ 0 <= k <= n : K(n, k) = 0 } where K(n, k) is the Kronecker symbol. This is the number of integers 0 <= k <= n that are not coprime to n.

The programs for A062830, the canonical program `A062830.P994650721519872774` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062830 has offset 0).

The definition of A062830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062830.P16204964859965100444

`1-A384710(n)+n`
-/

namespace A062830.P16204964859965100444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A384710 n + (n : ℤ)

end

end A062830.P16204964859965100444

namespace A062830

/-- `1-A384710(n)+n` -/
def P16204964859965100444.Spec : Prop :=
  ∀ n, P16204964859965100444.a n = A062830 n

end A062830

/-! ## A062830.P994650721519872774

`A181440(n+1)-A000010(A028310(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062830

/-- `A181440(n+1)-A000010(A028310(n))` -/
def P994650721519872774.Spec : Prop :=
  ∀ n, P994650721519872774.a n = A062830 n

theorem P994650721519872774.correct : P994650721519872774.Spec := by
  intro n
  simp only [A062830]

end A062830

/-! ## A062830.P1388338452190522416

`A028310(n)+1-A225530(n)`
-/

namespace A062830.P1388338452190522416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A225530 n)

end

end A062830.P1388338452190522416

namespace A062830

/-- `A028310(n)+1-A225530(n)` -/
def P1388338452190522416.Spec : Prop :=
  ∀ n, P1388338452190522416.a n = A062830 n

end A062830

/-! ## A062830.P7001916292957012426

`A233583(n+2)-A225530(n)`
-/

namespace A062830.P7001916292957012426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2) - A225530 n

end

end A062830.P7001916292957012426

namespace A062830

/-- `A233583(n+2)-A225530(n)` -/
def P7001916292957012426.Spec : Prop :=
  ∀ n, P7001916292957012426.a n = A062830 n

end A062830

/-! ## A062830.P6403695957209742508

`A054977(n)+n-A225530(n)`
-/

namespace A062830.P6403695957209742508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ((n : ℤ) - A225530 n)

end

end A062830.P6403695957209742508

namespace A062830

/-- `A054977(n)+n-A225530(n)` -/
def P6403695957209742508.Spec : Prop :=
  ∀ n, P6403695957209742508.a n = A062830 n

end A062830

/-! ## A062830.P9032431515567298806

`A051953(n+1)+Δ[A225530(n)]`
-/

namespace A062830.P9032431515567298806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (f1 (n + 1) - f1 n)

end

end A062830.P9032431515567298806

namespace A062830

/-- `A051953(n+1)+Δ[A225530(n)]` -/
def P9032431515567298806.Spec : Prop :=
  ∀ n, P9032431515567298806.a n = A062830 n

end A062830

/-!
# A062831: Number of ways n can be expressed as the sum of a nonzero square and 1 or a prime.

The programs for A062831, there is no canonical definition to state claims against.
-/

/-! ## A062831.P17338725898514440017

`A064272(round(sqrt(n²+1))+1)+char[(n+1)²]`
-/

namespace A062831.P17338725898514440017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A062831.P17338725898514440017

/-! ## A062831.P3553070304675194504

`floor((A283183(n+1)+A000122(n))/2)`
-/

namespace A062831.P3553070304675194504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A283183 (n + 1) + A000122 n : ℚ) / 2⌋

end

end A062831.P3553070304675194504

/-! ## A062831.P16319744406569718017

`A004526(A283183(n+1)+A000122(n))`
-/

namespace A062831.P16319744406569718017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A283183 (n + 1) + A000122 n).toNat

end

end A062831.P16319744406569718017

/-! ## A062831.P9690092318103153135

`A008619(A283183(n+1)+A000122(n))-1`
-/

namespace A062831.P9690092318103153135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A283183 (n + 1) + A000122 n).toNat - 1

end

end A062831.P9690092318103153135

/-! ## A062831.P12370429697452882752

`A002265(2*(A283183(n+1)+A000122(n)))`
-/

namespace A062831.P12370429697452882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A283183 (n + 1) + A000122 n)).toNat

end

end A062831.P12370429697452882752

/-! ## A062831.P10320290991273836884

`val(A007052(A283183(n+1)+A000122(n)), 2)`
-/

namespace A062831.P10320290991273836884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007052 (A283183 (n + 1) + A000122 n).toNat).toNat 2

end

end A062831.P10320290991273836884

/-! ## A062831.P1262619393589088215

`A220400(2^(A283183(n+1)+A000122(n)))`
-/

namespace A062831.P1262619393589088215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A283183 (n + 1) + A000122 n : ℤ))).toNat

end

end A062831.P1262619393589088215

/-!
# A062832: Numbers k such that k and k+2 have the same number of divisors.

The programs for A062832, the canonical program `A062832.P107409337447898240` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062832 has offset 1).

The definition of A062832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6968 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062832.P13591737350186513073

`A067888(n+1)-1`
-/

namespace A062832.P13591737350186513073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1) - 1

end

end A062832.P13591737350186513073

namespace A062832

/-- `A067888(n+1)-1` -/
def P13591737350186513073.Spec : Prop :=
  ∀ n, P13591737350186513073.a n = A062832 (n + 1)

end A062832

/-! ## A062832.P107409337447898240

`eq[A000005(n+1), A000005(n+3)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062832

/-- `eq[A000005(n+1), A000005(n+3)]+1` -/
def P107409337447898240.Spec : Prop :=
  ∀ n, (P107409337447898240.a n : ℤ) = A062832 (n + 1)

theorem P107409337447898240.correct : P107409337447898240.Spec := by
  intro n
  simp only [A062832, Nat.add_sub_cancel]

end A062832

/-! ## A062832.P10984194708174085784

`eq[A092405(n+2), A092405(n+1)]+1`
-/

namespace A062832.P10984194708174085784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062832.P10984194708174085784

namespace A062832

/-- `eq[A092405(n+2), A092405(n+1)]+1` -/
def P10984194708174085784.Spec : Prop :=
  ∀ n, (P10984194708174085784.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P12105645226894849559

`A020725(eq[A000005(n+1), A000005(n+3)])`
-/

namespace A062832.P12105645226894849559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062832.P12105645226894849559

namespace A062832

/-- `A020725(eq[A000005(n+1), A000005(n+3)])` -/
def P12105645226894849559.Spec : Prop :=
  ∀ n, P12105645226894849559.a n = A062832 (n + 1)

end A062832

/-! ## A062832.P16236712987322515338

`A065475(eq[A000005(n+1), A000005(n+3)])`
-/

namespace A062832.P16236712987322515338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062832.P16236712987322515338

namespace A062832

/-- `A065475(eq[A000005(n+1), A000005(n+3)])` -/
def P16236712987322515338.Spec : Prop :=
  ∀ n, P16236712987322515338.a n = A062832 (n + 1)

end A062832

/-! ## A062832.P15789045040682811202

`eq[0, Δ[A092338(n+1)]]`
-/

namespace A062832.P15789045040682811202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062832.P15789045040682811202

namespace A062832

/-- `eq[0, Δ[A092338(n+1)]]` -/
def P15789045040682811202.Spec : Prop :=
  ∀ n, (P15789045040682811202.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P6683986264044097883

`lt[1, A093492(n+1)+1]`
-/

namespace A062832.P6683986264044097883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093492 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062832.P6683986264044097883

namespace A062832

/-- `lt[1, A093492(n+1)+1]` -/
def P6683986264044097883.Spec : Prop :=
  ∀ n, (P6683986264044097883.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P7285949878439277157

`A023443(A067888(n+1))`
-/

namespace A062832.P7285949878439277157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067888 (n + 1)).toNat

end

end A062832.P7285949878439277157

namespace A062832

/-- `A023443(A067888(n+1))` -/
def P7285949878439277157.Spec : Prop :=
  ∀ n, P7285949878439277157.a n = A062832 (n + 1)

end A062832

/-! ## A062832.P13700913249563384792

`eq[A032741(n), A325765(n+1)]`
-/

namespace A062832.P13700913249563384792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P13700913249563384792

namespace A062832

/-- `eq[A032741(n), A325765(n+1)]` -/
def P13700913249563384792.Spec : Prop :=
  ∀ n, (P13700913249563384792.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P9003785620383140148

`eq[A032741(n+2), A032741(n)]`
-/

namespace A062832.P9003785620383140148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P9003785620383140148

namespace A062832

/-- `eq[A032741(n+2), A032741(n)]` -/
def P9003785620383140148.Spec : Prop :=
  ∀ n, (P9003785620383140148.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P10730544028532055368

`eq[A145154(n+2), A145154(n)]`
-/

namespace A062832.P10730544028532055368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P10730544028532055368

namespace A062832

/-- `eq[A145154(n+2), A145154(n)]` -/
def P10730544028532055368.Spec : Prop :=
  ∀ n, (P10730544028532055368.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P18379196740116100630

`eq[A319410(n+2), A319410(n)]`
-/

namespace A062832.P18379196740116100630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P18379196740116100630

namespace A062832

/-- `eq[A319410(n+2), A319410(n)]` -/
def P18379196740116100630.Spec : Prop :=
  ∀ n, (P18379196740116100630.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P6022016559998361829

`eq[A092338(n+1), A092338(n+2)]`
-/

namespace A062832.P6022016559998361829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P6022016559998361829

namespace A062832

/-- `eq[A092338(n+1), A092338(n+2)]` -/
def P6022016559998361829.Spec : Prop :=
  ∀ n, (P6022016559998361829.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P12801239289646048217

`eq[2*A051950(n+2), A051951(n)]`
-/

namespace A062832.P12801239289646048217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051950 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P12801239289646048217

namespace A062832

/-- `eq[2*A051950(n+2), A051951(n)]` -/
def P12801239289646048217.Spec : Prop :=
  ∀ n, (P12801239289646048217.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P10641202129738498876

`eq[A000005(n+2), A000005(A028310(n))]`
-/

namespace A062832.P10641202129738498876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P10641202129738498876

namespace A062832

/-- `eq[A000005(n+2), A000005(A028310(n))]` -/
def P10641202129738498876.Spec : Prop :=
  ∀ n, (P10641202129738498876.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P16354251939078830312

`eq[A334954(n+2), A334954(A028310(n))]`
-/

namespace A062832.P16354251939078830312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P16354251939078830312

namespace A062832

/-- `eq[A334954(n+2), A334954(A028310(n))]` -/
def P16354251939078830312.Spec : Prop :=
  ∀ n, (P16354251939078830312.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P17745439399918056184

`eq[A338506(n+2), A338506(A028310(n))]`
-/

namespace A062832.P17745439399918056184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P17745439399918056184

namespace A062832

/-- `eq[A338506(n+2), A338506(A028310(n))]` -/
def P17745439399918056184.Spec : Prop :=
  ∀ n, (P17745439399918056184.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P4365381589627809905

`eq[A000005(A143051(n+1)), A000005(n+2)]`
-/

namespace A062832.P4365381589627809905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A143051 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P4365381589627809905

namespace A062832

/-- `eq[A000005(A143051(n+1)), A000005(n+2)]` -/
def P4365381589627809905.Spec : Prop :=
  ∀ n, (P4365381589627809905.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P15308727348573027754

`eq[A000005(A065033(2*n)), A000005(n+2)]`
-/

namespace A062832.P15308727348573027754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P15308727348573027754

namespace A062832

/-- `eq[A000005(A065033(2*n)), A000005(n+2)]` -/
def P15308727348573027754.Spec : Prop :=
  ∀ n, (P15308727348573027754.a n : ℤ) = A062832 (n + 1)

end A062832

/-! ## A062832.P7649670641168477967

`eq[A000005(A123108(2*n)), A000005(n+2)]`
-/

namespace A062832.P7649670641168477967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062832.P7649670641168477967

namespace A062832

/-- `eq[A000005(A123108(2*n)), A000005(n+2)]` -/
def P7649670641168477967.Spec : Prop :=
  ∀ n, (P7649670641168477967.a n : ℤ) = A062832 (n + 1)

end A062832

/-!
# A062833: a(n) = 2 * n! / number of divisors of n.

The programs for A062833, there is no canonical definition to state claims against.
-/

/-! ## A062833.P1744168113688238644

`2*A062358(n+1)`
-/

namespace A062833.P1744168113688238644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062358 (n + 1)

end

end A062833.P1744168113688238644

/-! ## A062833.P8539995676009161406

`2*(n+1)!/A000005(n+1)`
-/

namespace A062833.P8539995676009161406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.factorial (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A062833.P8539995676009161406

/-! ## A062833.P6465035235953344242

`A052849(n+1)/A000005(n+1)`
-/

namespace A062833.P6465035235953344242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052849 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062833.P6465035235953344242

/-! ## A062833.P15841988507125137105

`A098558(n+1)/A000005(n+1)`
-/

namespace A062833.P15841988507125137105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098558 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062833.P15841988507125137105

/-! ## A062833.P3252604335653573794

`A208529(n+3)/A000005(n+1)`
-/

namespace A062833.P3252604335653573794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208529 (n + 3) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062833.P3252604335653573794

/-!
# A062835: a(1) = 0; for n > 1 a(n) = sum of divisors of n^2-1; or sigma(A005563(n-1)).

The programs for A062835, the canonical program `A062835.P3225163006798721246` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062835 has offset 1).

The definition of A062835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062835.P3225163006798721246

`∑{d}[n*(n+2), #]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062835

/-- `∑{d}[n*(n+2), #]` -/
def P3225163006798721246.Spec : Prop :=
  ∀ n, (P3225163006798721246.a n : ℤ) = A062835 (n + 1)

theorem P3225163006798721246.correct : P3225163006798721246.Spec := by
  intro n
  simp only [A062835, Nat.add_sub_cancel]

end A062835

/-! ## A062835.P3561161805809414955

`∑{d}[A005563(n), #]%A057813(n)`
-/

namespace A062835.P3561161805809414955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A057813 n)

end

end A062835.P3561161805809414955

namespace A062835

/-- `∑{d}[A005563(n), #]%A057813(n)` -/
def P3561161805809414955.Spec : Prop :=
  ∀ n, P3561161805809414955.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P12640902906872478724

`∑{d}[A005563(n), #]/A000120(A001316(n))`
-/

namespace A062835.P12640902906872478724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A000120 (A001316 n).toNat : ℚ)

end

end A062835.P12640902906872478724

namespace A062835

/-- `∑{d}[A005563(n), #]/A000120(A001316(n))` -/
def P12640902906872478724.Spec : Prop :=
  ∀ n, P12640902906872478724.a n = (A062835 (n + 1) : ℚ)

end A062835

/-! ## A062835.P8829322142231092103

`A000203((n+2)*gcd(n, n*a(n-1)))` with `a(0)=0`
-/

namespace A062835.P8829322142231092103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000203 ((n + 2) * Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A062835.P8829322142231092103

namespace A062835

/-- `A000203((n+2)*gcd(n, n*a(n-1)))` -/
def P8829322142231092103.Spec : Prop :=
  ∀ n, P8829322142231092103.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P12100435702449467775

`Δ[A000203((n+1)*(n-1))+a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A062835.P12100435702449467775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000203 ((n + 1 : ℤ) * ((n : ℤ) - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062835.P12100435702449467775

namespace A062835

/-- `Δ[A000203((n+1)*(n-1))+a(n-1)]` -/
def P12100435702449467775.Spec : Prop :=
  ∀ n, P12100435702449467775.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P15882068085287480153

`A000203(record[abs(1-n²)])-A000007(n)`
-/

namespace A062835.P15882068085287480153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000007 n

end

end A062835.P15882068085287480153

namespace A062835

/-- `A000203(record[abs(1-n²)])-A000007(n)` -/
def P15882068085287480153.Spec : Prop :=
  ∀ n, P15882068085287480153.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P16023940587477985168

`A000203(A132411(n+1))%A132432(n)`
-/

namespace A062835.P16023940587477985168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A132411 (n + 1)).toNat) (A132432 n)

end

end A062835.P16023940587477985168

namespace A062835

/-- `A000203(A132411(n+1))%A132432(n)` -/
def P16023940587477985168.Spec : Prop :=
  ∀ n, P16023940587477985168.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P734996448992543666

`A337177(A132411(n+1))`
-/

namespace A062835.P734996448992543666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337177 (A132411 (n + 1)).toNat

end

end A062835.P734996448992543666

namespace A062835

/-- `A337177(A132411(n+1))` -/
def P734996448992543666.Spec : Prop :=
  ∀ n, P734996448992543666.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P16179469729742383247

`A245092(A132209(n)+2*n)`
-/

namespace A062835.P16179469729742383247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A132209 n + (2 * n : ℤ)).toNat

end

end A062835.P16179469729742383247

namespace A062835

/-- `A245092(A132209(n)+2*n)` -/
def P16179469729742383247.Spec : Prop :=
  ∀ n, P16179469729742383247.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P8213511722440133576

`A245092(A132209(n)+n+n)`
-/

namespace A062835.P8213511722440133576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A132209 n + (n : ℤ) + (n : ℤ)).toNat

end

end A062835.P8213511722440133576

namespace A062835

/-- `A245092(A132209(n)+n+n)` -/
def P8213511722440133576.Spec : Prop :=
  ∀ n, P8213511722440133576.a n = A062835 (n + 1)

end A062835

/-! ## A062835.P14492335081503911709

`A245092(A142463(n)+A004277(n))`
-/

namespace A062835.P14492335081503911709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A142463 n + A004277 n).toNat

end

end A062835.P14492335081503911709

namespace A062835

/-- `A245092(A142463(n)+A004277(n))` -/
def P14492335081503911709.Spec : Prop :=
  ∀ n, P14492335081503911709.a n = A062835 (n + 1)

end A062835

/-!
# A062836: Floor[ Sum_{k=1..n,p(k)^2} / Sum_{k=1..n,p(k)-1} ].

The programs for A062836, the canonical program `A062836.P109274199651695140` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062836 has offset 1).

The definition of A062836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062836.P10814671656536862293

`floor(A024450(n+1)/A101301(n+1))`
-/

namespace A062836.P10814671656536862293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024450 (n + 1) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P10814671656536862293

namespace A062836

/-- `floor(A024450(n+1)/A101301(n+1))` -/
def P10814671656536862293.Spec : Prop :=
  ∀ n, P10814671656536862293.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P109274199651695140

`floor(A024450(n+1)/∑[A006093(n+1)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062836

/-- `floor(A024450(n+1)/∑[A006093(n+1)])` -/
def P109274199651695140.Spec : Prop :=
  ∀ n, P109274199651695140.a n = A062836 (n + 1)

theorem P109274199651695140.correct : P109274199651695140.Spec := by
  intro n
  simp only [A062836, Nat.add_sub_cancel]

end A062836

/-! ## A062836.P2987357674858084840

`floor(∑[A001248(n+1)]/A101301(n+1))`
-/

namespace A062836.P2987357674858084840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P2987357674858084840

namespace A062836

/-- `floor(∑[A001248(n+1)]/A101301(n+1))` -/
def P2987357674858084840.Spec : Prop :=
  ∀ n, P2987357674858084840.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P14242866705451369165

`floor(∑[A000040(n+1)²]/A101301(n+1))`
-/

namespace A062836.P14242866705451369165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P14242866705451369165

namespace A062836

/-- `floor(∑[A000040(n+1)²]/A101301(n+1))` -/
def P14242866705451369165.Spec : Prop :=
  ∀ n, P14242866705451369165.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P73399285210261123

`floor(∑[A273960(n+1)²]/A101301(n+1))`
-/

namespace A062836.P73399285210261123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P73399285210261123

namespace A062836

/-- `floor(∑[A273960(n+1)²]/A101301(n+1))` -/
def P73399285210261123.Spec : Prop :=
  ∀ n, P73399285210261123.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P15896516756545570219

`floor(∑[A049001(n+1)+2]/A101301(n+1))`
-/

namespace A062836.P15896516756545570219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P15896516756545570219

namespace A062836

/-- `floor(∑[A049001(n+1)+2]/A101301(n+1))` -/
def P15896516756545570219.Spec : Prop :=
  ∀ n, P15896516756545570219.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P4106005772955680410

`floor(∑[(A006093(n+1)+1)²]/A101301(n+1))`
-/

namespace A062836.P4106005772955680410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P4106005772955680410

namespace A062836

/-- `floor(∑[(A006093(n+1)+1)²]/A101301(n+1))` -/
def P4106005772955680410.Spec : Prop :=
  ∀ n, P4106005772955680410.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P4318677839676737179

`floor(∑[(1-A008864(n+1))²]/A101301(n+1))`
-/

namespace A062836.P4318677839676737179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P4318677839676737179

namespace A062836

/-- `floor(∑[(1-A008864(n+1))²]/A101301(n+1))` -/
def P4318677839676737179.Spec : Prop :=
  ∀ n, P4318677839676737179.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P10421981148195579916

`floor(∑[(A040976(n+1)+2)²]/A101301(n+1))`
-/

namespace A062836.P10421981148195579916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P10421981148195579916

namespace A062836

/-- `floor(∑[(A040976(n+1)+2)²]/A101301(n+1))` -/
def P10421981148195579916.Spec : Prop :=
  ∀ n, P10421981148195579916.a n = A062836 (n + 1)

end A062836

/-! ## A062836.P1659287740148850461

`floor(∑[(A014692(n+1)+n)²]/A101301(n+1))`
-/

namespace A062836.P1659287740148850461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A101301 (n + 1) : ℚ)⌋

end

end A062836.P1659287740148850461

namespace A062836

/-- `floor(∑[(A014692(n+1)+n)²]/A101301(n+1))` -/
def P1659287740148850461.Spec : Prop :=
  ∀ n, P1659287740148850461.a n = A062836 (n + 1)

end A062836

/-!
# A062837: Numbers k such that k, 2*k+1, 3*k+1 are all squarefree.

The programs for A062837, there is no canonical definition to state claims against.
-/

/-! ## A062837.P335276519173913434

`record[gcd(A190846(2*(n+1)), A190846(3*(n+1)))]`
-/

namespace A062837.P335276519173913434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190846 (2 * (n + 1))) (A190846 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062837.P335276519173913434

/-! ## A062837.P2894328046617061169

`eq[A049419(2*n+1), A323239(A005449(n))]`
-/

namespace A062837.P2894328046617061169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A005449 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062837.P2894328046617061169

/-! ## A062837.P731404427635059916

`eq[A008966(A033570(n)), A255326(n)]`
-/

namespace A062837.P731404427635059916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A033570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062837.P731404427635059916

/-! ## A062837.P10501320499747153795

`eq[A327564(A000326(2*n+3)), A348038(n+1)]+1`
-/

namespace A062837.P10501320499747153795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327564 (A000326 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062837.P10501320499747153795

/-! ## A062837.P5450023192040484330

`eq[A000188(A033951(n+1)+1), A040406(n)]`
-/

namespace A062837.P5450023192040484330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A033951 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062837.P5450023192040484330

/-!
# A062838: Cubes of squarefree numbers.

The programs for A062838, the canonical program `A062838.P4769683379412633527` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062838 has offset 1).

The definition of A062838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062838.P4769683379412633527

`A005117(n+1)^3`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A062838

/-- `A005117(n+1)^3` -/
def P4769683379412633527.Spec : Prop :=
  ∀ n, P4769683379412633527.a n = A062838 (n + 1)

theorem P4769683379412633527.correct : P4769683379412633527.Spec := by
  intro n
  simp only [A062838, Nat.add_sub_cancel]

end A062838

/-! ## A062838.P10975682623927549089

`comp[A105570(n)]^3`
-/

namespace A062838.P10975682623927549089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A062838.P10975682623927549089

namespace A062838

/-- `comp[A105570(n)]^3` -/
def P10975682623927549089.Spec : Prop :=
  ∀ n, (P10975682623927549089.a n : ℤ) = A062838 (n + 1)

end A062838

/-! ## A062838.P6652712445624810800

`sqrt(A062503(n+1)^3)`
-/

namespace A062838.P6652712445624810800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) ^ 3 : ℝ)

end

end A062838.P6652712445624810800

namespace A062838

/-- `sqrt(A062503(n+1)^3)` -/
def P6652712445624810800.Spec : Prop :=
  ∀ n, P6652712445624810800.a n = (A062838 (n + 1) : ℝ)

end A062838

/-! ## A062838.P14471486450703761602

`record[A003967(n+1)^3]`
-/

namespace A062838.P14471486450703761602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P14471486450703761602

namespace A062838

/-- `record[A003967(n+1)^3]` -/
def P14471486450703761602.Spec : Prop :=
  ∀ n, P14471486450703761602.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P9633481280034590296

`record[A007913(n+1)^3]`
-/

namespace A062838.P9633481280034590296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P9633481280034590296

namespace A062838

/-- `record[A007913(n+1)^3]` -/
def P9633481280034590296.Spec : Prop :=
  ∀ n, P9633481280034590296.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P199537423751762748

`record[A007947(n+1)^3]`
-/

namespace A062838.P199537423751762748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P199537423751762748

namespace A062838

/-- `record[A007947(n+1)^3]` -/
def P199537423751762748.Spec : Prop :=
  ∀ n, P199537423751762748.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P6014850145591253712

`record[A055653(n+1)^3]`
-/

namespace A062838.P6014850145591253712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P6014850145591253712

namespace A062838

/-- `record[A055653(n+1)^3]` -/
def P6014850145591253712.Spec : Prop :=
  ∀ n, P6014850145591253712.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P1296499222961690507

`record[A325814(n+1)^3]`
-/

namespace A062838.P1296499222961690507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P1296499222961690507

namespace A062838

/-- `record[A325814(n+1)^3]` -/
def P1296499222961690507.Spec : Prop :=
  ∀ n, P1296499222961690507.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P2893909851492217665

`(A243348(n+1)+n+1)^3`
-/

namespace A062838.P2893909851492217665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243348 (n + 1) + (n + 1 : ℤ)) ^ 3

end

end A062838.P2893909851492217665

namespace A062838

/-- `(A243348(n+1)+n+1)^3` -/
def P2893909851492217665.Spec : Prop :=
  ∀ n, P2893909851492217665.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P16183921215008250427

`record[(n+1)^(A008683(n+1)²+2)]`
-/

namespace A062838.P16183921215008250427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (n + 1) ^ 2 + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P16183921215008250427

namespace A062838

/-- `record[(n+1)^(A008683(n+1)²+2)]` -/
def P16183921215008250427.Spec : Prop :=
  ∀ n, P16183921215008250427.a n = (A062838 (n + 1) : ℚ)

end A062838

/-! ## A062838.P17028508554607742008

`A005117(n+1)*A062503(n+1)`
-/

namespace A062838.P17028508554607742008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) * A062503 (n + 1)

end

end A062838.P17028508554607742008

namespace A062838

/-- `A005117(n+1)*A062503(n+1)` -/
def P17028508554607742008.Spec : Prop :=
  ∀ n, P17028508554607742008.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P15079175232201956901

`A005117(n+1)²*comp[A105570(n)]`
-/

namespace A062838.P15079175232201956901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A062838.P15079175232201956901

namespace A062838

/-- `A005117(n+1)²*comp[A105570(n)]` -/
def P15079175232201956901.Spec : Prop :=
  ∀ n, P15079175232201956901.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P7177153615213030954

`record[A003967(n+1)]*A062503(n+1)`
-/

namespace A062838.P7177153615213030954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A062503 (n + 1)

end

end A062838.P7177153615213030954

namespace A062838

/-- `record[A003967(n+1)]*A062503(n+1)` -/
def P7177153615213030954.Spec : Prop :=
  ∀ n, P7177153615213030954.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P1211308959769883806

`(A368249(n+1)+A005117(n+1))*A005117(n+1)`
-/

namespace A062838.P1211308959769883806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A368249 (n + 1) + A005117 (n + 1)) * A005117 (n + 1)

end

end A062838.P1211308959769883806

namespace A062838

/-- `(A368249(n+1)+A005117(n+1))*A005117(n+1)` -/
def P1211308959769883806.Spec : Prop :=
  ∀ n, P1211308959769883806.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P14703486086428064095

`A062503(n+1)*A382888(A371188(n+1))`
-/

namespace A062838.P14703486086428064095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1) * A382888 (A371188 (n + 1)).toNat

end

end A062838.P14703486086428064095

namespace A062838

/-- `A062503(n+1)*A382888(A371188(n+1))` -/
def P14703486086428064095.Spec : Prop :=
  ∀ n, P14703486086428064095.a n = A062838 (n + 1)

end A062838

/-! ## A062838.P5392823466808068682

`record[∏{p}[n, #^3]]`
-/

namespace A062838.P5392823466808068682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P5392823466808068682

namespace A062838

/-- `record[∏{p}[n, #^3]]` -/
def P5392823466808068682.Spec : Prop :=
  ∀ n, (P5392823466808068682.a n : ℤ) = A062838 (n + 1)

end A062838

/-! ## A062838.P5416421599427130115

`eq[n, ∏{p}[n, #]]^3`
-/

namespace A062838.P5416421599427130115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A062838.P5416421599427130115

namespace A062838

/-- `eq[n, ∏{p}[n, #]]^3` -/
def P5416421599427130115.Spec : Prop :=
  ∀ n, (P5416421599427130115.a n : ℤ) = A062838 (n + 1)

end A062838

/-! ## A062838.P10881300246176262540

`record[∏{p}[n, #²]]*record[∏{p}[n, #]]`
-/

namespace A062838.P10881300246176262540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A062838.P10881300246176262540

namespace A062838

/-- `record[∏{p}[n, #²]]*record[∏{p}[n, #]]` -/
def P10881300246176262540.Spec : Prop :=
  ∀ n, (P10881300246176262540.a n : ℤ) = A062838 (n + 1)

end A062838

/-! ## A062838.P14639654888982665841

`record[(n+1)^(3/∏{e}[n+1, #])]`
-/

namespace A062838.P14639654888982665841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (3 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P14639654888982665841

namespace A062838

/-- `record[(n+1)^(3/∏{e}[n+1, #])]` -/
def P14639654888982665841.Spec : Prop :=
  ∀ n, P14639654888982665841.a n = (A062838 (n + 1) : ℝ)

end A062838

/-! ## A062838.P18293255784588190592

`record[∏{p}[n+1, #²²]/(n+1)]`
-/

namespace A062838.P18293255784588190592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (p ^ 2) ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062838.P18293255784588190592

namespace A062838

/-- `record[∏{p}[n+1, #²²]/(n+1)]` -/
def P18293255784588190592.Spec : Prop :=
  ∀ n, P18293255784588190592.a n = (A062838 (n + 1) : ℚ)

end A062838

/-!
# A062839: a(n) = floor((prime(n-1)+prime(n+1))/2).

The programs for A062839, the canonical program `A062839.P16129045088072440583` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062839 has offset 1).

The definition of A062839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062839.P16129045088072440583

`floor(A048448(n+1)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062839

/-- `floor(A048448(n+1)/2)` -/
def P16129045088072440583.Spec : Prop :=
  ∀ n, P16129045088072440583.a n = A062839 (n + 1)

theorem P16129045088072440583.correct : P16129045088072440583.Spec := by
  intro n
  simp only [A062839, Nat.add_sub_cancel]

end A062839

/-! ## A062839.P6695607556050684321

`A065091(n+1)-A162345(n+1)`
-/

namespace A062839.P6695607556050684321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A162345 (n + 1)

end

end A062839.P6695607556050684321

namespace A062839

/-- `A065091(n+1)-A162345(n+1)` -/
def P6695607556050684321.Spec : Prop :=
  ∀ n, P6695607556050684321.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P14013382509268847098

`A162800(n+1)+A162800(n)-A006005(n+1)`
-/

namespace A062839.P14013382509268847098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 1) + (A162800 n - A006005 (n + 1))

end

end A062839.P14013382509268847098

namespace A062839

/-- `A162800(n+1)+A162800(n)-A006005(n+1)` -/
def P14013382509268847098.Spec : Prop :=
  ∀ n, P14013382509268847098.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P11940293460295271920

`ceil(sqrt(A176098(n+2)-2))`
-/

namespace A062839.P11940293460295271920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A176098 (n + 2) - 2 : ℝ)⌉

end

end A062839.P11940293460295271920

namespace A062839

/-- `ceil(sqrt(A176098(n+2)-2))` -/
def P11940293460295271920.Spec : Prop :=
  ∀ n, P11940293460295271920.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P9147258067203690934

`A000040(n+2)-A162345(n+1)`
-/

namespace A062839.P9147258067203690934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A162345 (n + 1)

end

end A062839.P9147258067203690934

namespace A062839

/-- `A000040(n+2)-A162345(n+1)` -/
def P9147258067203690934.Spec : Prop :=
  ∀ n, P9147258067203690934.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P3356509909553031582

`A006005(n+2)-A162345(n+1)`
-/

namespace A062839.P3356509909553031582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - A162345 (n + 1)

end

end A062839.P3356509909553031582

namespace A062839

/-- `A006005(n+2)-A162345(n+1)` -/
def P3356509909553031582.Spec : Prop :=
  ∀ n, P3356509909553031582.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P3347267406041365238

`A000040(n+2)+A162800(n)-A162800(n+1)`
-/

namespace A062839.P3347267406041365238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A162800 n - A162800 (n + 1))

end

end A062839.P3347267406041365238

namespace A062839

/-- `A000040(n+2)+A162800(n)-A162800(n+1)` -/
def P3347267406041365238.Spec : Prop :=
  ∀ n, P3347267406041365238.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P8183527153785045884

`A008578(n+3)-A162345(n+1)`
-/

namespace A062839.P8183527153785045884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) - A162345 (n + 1)

end

end A062839.P8183527153785045884

namespace A062839

/-- `A008578(n+3)-A162345(n+1)` -/
def P8183527153785045884.Spec : Prop :=
  ∀ n, P8183527153785045884.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P12688311207776751027

`record[A020639(n+3)]-A162345(n+1)`
-/

namespace A062839.P12688311207776751027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A162345 (n + 1)

end

end A062839.P12688311207776751027

namespace A062839

/-- `record[A020639(n+3)]-A162345(n+1)` -/
def P12688311207776751027.Spec : Prop :=
  ∀ n, P12688311207776751027.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P5572177139876935885

`record[A285712(n+1)]+floor(A000040(n+2)/2)`
-/

namespace A062839.P5572177139876935885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊(A000040 (n + 2) : ℚ) / 2⌋

end

end A062839.P5572177139876935885

namespace A062839

/-- `record[A285712(n+1)]+floor(A000040(n+2)/2)` -/
def P5572177139876935885.Spec : Prop :=
  ∀ n, P5572177139876935885.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P11637086347570355011

`A051697(A024675(n+1))-A162345(n+1)`
-/

namespace A062839.P11637086347570355011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A024675 (n + 1)).toNat - A162345 (n + 1)

end

end A062839.P11637086347570355011

namespace A062839

/-- `A051697(A024675(n+1))-A162345(n+1)` -/
def P11637086347570355011.Spec : Prop :=
  ∀ n, P11637086347570355011.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P10979659327733707027

`A004525(A048448(n+1))`
-/

namespace A062839.P10979659327733707027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048448 (n + 1)).toNat

end

end A062839.P10979659327733707027

namespace A062839

/-- `A004525(A048448(n+1))` -/
def P10979659327733707027.Spec : Prop :=
  ∀ n, P10979659327733707027.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P3465146065176059514

`A004525(comp[A018252(n+1)]+p?[2*n+1])`
-/

namespace A062839.P3465146065176059514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A062839.P3465146065176059514

namespace A062839

/-- `A004525(comp[A018252(n+1)]+p?[2*n+1])` -/
def P3465146065176059514.Spec : Prop :=
  ∀ n, P3465146065176059514.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P16344154195827397775

`A004525(comp[A018252(n+1)]+A000040(n+2))`
-/

namespace A062839.P16344154195827397775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000040 (n + 2)).toNat

end

end A062839.P16344154195827397775

namespace A062839

/-- `A004525(comp[A018252(n+1)]+A000040(n+2))` -/
def P16344154195827397775.Spec : Prop :=
  ∀ n, P16344154195827397775.a n = A062839 (n + 1)

end A062839

/-! ## A062839.P12988942825153503342

`A004526(comp[A018252(n+1)]+A000040(n+2))`
-/

namespace A062839.P12988942825153503342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000040 (n + 2)).toNat

end

end A062839.P12988942825153503342

namespace A062839

/-- `A004526(comp[A018252(n+1)]+A000040(n+2))` -/
def P12988942825153503342.Spec : Prop :=
  ∀ n, P12988942825153503342.a n = A062839 (n + 1)

end A062839

/-!
# A062842: Maximum number of zeros in the representation of n in any base.

The programs for A062842, there is no canonical definition to state claims against.
-/

/-! ## A062842.P16446669960040173283

`A157754(lcm(n+1, A263673(n)))`
-/

namespace A062842.P16446669960040173283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.lcm (n + 1 : ℤ) (A263673 n))

end

end A062842.P16446669960040173283

/-! ## A062842.P15029238933550136682

`A028310(A023416(n+1))%A019276(n+1)`
-/

namespace A062842.P15029238933550136682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A023416 (n + 1)).toNat) (A019276 (n + 1))

end

end A062842.P15029238933550136682

/-! ## A062842.P4284786924721826252

`A137735(A139329(n+1))%A067651(n+1)`
-/

namespace A062842.P4284786924721826252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 (A139329 (n + 1)).toNat) (A067651 (n + 1))

end

end A062842.P4284786924721826252

/-! ## A062842.P17740576497570961263

`A067029(A073138(n+1)%A336192(n+1))`
-/

namespace A062842.P17740576497570961263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.tmod (A073138 (n + 1)) (A336192 (n + 1))).toNat

end

end A062842.P17740576497570961263

/-! ## A062842.P11205759024305474185

`A028310(A080791(2*n+3))%A260780(n+2)`
-/

namespace A062842.P11205759024305474185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A080791 (2 * n + 3)).toNat) (A260780 (n + 2))

end

end A062842.P11205759024305474185

/-!
# A062843: Maximum number of ones in the representation of n in any base.

The programs for A062843, there is no canonical definition to state claims against.
-/

/-! ## A062843.P15029147158866963695

`A067132(gcd(A001405(n), A032085(n+1)))`
-/

namespace A062843.P15029147158866963695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (Int.gcd (A001405 n) (A032085 (n + 1)))

end

end A062843.P15029147158866963695

/-! ## A062843.P17523778328322610128

`A228693((A000120(n+1)+1)%A136108(n))`
-/

namespace A062843.P17523778328322610128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (Int.tmod (A000120 (n + 1) + 1) (A136108 n)).toNat

end

end A062843.P17523778328322610128

/-! ## A062843.P13525049780607059588

`A352202(A115511(2*n+1)-n)`
-/

namespace A062843.P13525049780607059588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352202 (A115511 (2 * n + 1) - (n : ℤ)).toNat

end

end A062843.P13525049780607059588

/-! ## A062843.P2547923094239115863

`A070939(A231351(A231351(2*n+1)+1))-1`
-/

namespace A062843.P2547923094239115863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A231351 (A231351 (2 * n + 1) + 1).toNat).toNat - 1

end

end A062843.P2547923094239115863

/-! ## A062843.P3184910359378479443

`A000120(A101279(n+1)+A056629(3*n+1))`
-/

namespace A062843.P3184910359378479443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A101279 (n + 1) + A056629 (3 * n + 1)).toNat

end

end A062843.P3184910359378479443

/-!
# A062845: When expressed in base 2 and then interpreted in base 3, is a multiple of the original number.

The programs for A062845, there is no canonical definition to state claims against.
-/

/-! ## A062845.P7016361221864410983

`record[gcd(n, A005836(n+1))]`
-/

namespace A062845.P7016361221864410983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A005836 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062845.P7016361221864410983

/-! ## A062845.P11227744629188813937

`record[gcd(A003278(n+1)-1, A103205(n))]`
-/

namespace A062845.P11227744629188813937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003278 (n + 1) - 1) (A103205 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062845.P11227744629188813937

/-! ## A062845.P3124459242650281904

`record[gcd(A033159(n+1)-2, A091311(n))]`
-/

namespace A062845.P3124459242650281904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033159 (n + 1) - 2) (A091311 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062845.P3124459242650281904

/-! ## A062845.P17738987632782176566

`lt[lcm(n, A005836(n+1)), A003278(n+1)]`
-/

namespace A062845.P17738987632782176566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A005836 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062845.P17738987632782176566

/-! ## A062845.P15919331692497295888

`record[gcd(n, A240400(A008619(n)))]`
-/

namespace A062845.P15919331692497295888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A240400 (A008619 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062845.P15919331692497295888

/-!
# A062846: When expressed in base 2 and then interpreted in base 4, is a multiple of the original number.

The programs for A062846, the canonical program `A062846.P15925224058452454034` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062846 has offset 1).

The definition of A062846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062846.P5145479600490084036

`eq[2, A283751(n)]`
-/

namespace A062846.P5145479600490084036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062846.P5145479600490084036

namespace A062846

/-- `eq[2, A283751(n)]` -/
def P5145479600490084036.Spec : Prop :=
  ∀ n, (P5145479600490084036.a n : ℤ) = A062846 (n + 1)

end A062846

/-! ## A062846.P15925224058452454034

`record[gcd(n, A000695(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062846

/-- `record[gcd(n, A000695(n))]` -/
def P15925224058452454034.Spec : Prop :=
  ∀ n, (P15925224058452454034.a n : ℤ) = A062846 (n + 1)

theorem P15925224058452454034.correct : P15925224058452454034.Spec := by
  intro n
  simp only [A062846, Nat.add_sub_cancel]

end A062846

/-! ## A062846.P7833227840201108014

`record[gcd(A062880(n), A181983(n))]`
-/

namespace A062846.P7833227840201108014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062880 n) (A181983 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P7833227840201108014

namespace A062846

/-- `record[gcd(A062880(n), A181983(n))]` -/
def P7833227840201108014.Spec : Prop :=
  ∀ n, (P7833227840201108014.a n : ℤ) = A062846 (n + 1)

end A062846

/-! ## A062846.P13728341541581552187

`record[gcd(A038608(n), A213673(n))]`
-/

namespace A062846.P13728341541581552187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A213673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P13728341541581552187

namespace A062846

/-- `record[gcd(A038608(n), A213673(n))]` -/
def P13728341541581552187.Spec : Prop :=
  ∀ n, (P13728341541581552187.a n : ℤ) = A062846 (n + 1)

end A062846

/-! ## A062846.P4594574995087260865

`record[A005843(n)/A135853(A283751(n))]`
-/

namespace A062846.P4594574995087260865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A135853 (A283751 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P4594574995087260865

namespace A062846

/-- `record[A005843(n)/A135853(A283751(n))]` -/
def P4594574995087260865.Spec : Prop :=
  ∀ n, P4594574995087260865.a n = (A062846 (n + 1) : ℚ)

end A062846

/-! ## A062846.P8459651314727692942

`lt[A283751(2*n), 3]`
-/

namespace A062846.P8459651314727692942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283751 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062846.P8459651314727692942

namespace A062846

/-- `lt[A283751(2*n), 3]` -/
def P8459651314727692942.Spec : Prop :=
  ∀ n, (P8459651314727692942.a n : ℤ) = A062846 (n + 1)

end A062846

/-! ## A062846.P5565655312041786390

`record[A005843(2*n)/A283751(2*n)²]`
-/

namespace A062846.P5565655312041786390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (2 * n) : ℚ) / (A283751 (2 * n) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P5565655312041786390

namespace A062846

/-- `record[A005843(2*n)/A283751(2*n)²]` -/
def P5565655312041786390.Spec : Prop :=
  ∀ n, P5565655312041786390.a n = (A062846 (n + 1) : ℚ)

end A062846

/-!
# A062847: When expressed in base 2 and then interpreted in base 6, is a multiple of the original number.

The programs for A062847, there is no canonical definition to state claims against.
-/

/-! ## A062847.P7523286279803224691

`record[gcd(n, A033043(n))]`
-/

namespace A062847.P7523286279803224691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033043 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062847.P7523286279803224691

/-! ## A062847.P11496785790857624648

`record[gcd(A097252(n)/5, A005843(n))]`
-/

namespace A062847.P11496785790857624648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A097252 n : ℚ) / 5)) (A005843 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062847.P11496785790857624648

/-! ## A062847.P14532213290495920044

`record[gcd(2*n, A037454(A005836(n+1)))]`
-/

namespace A062847.P14532213290495920044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A037454 (A005836 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062847.P14532213290495920044

/-! ## A062847.P13318836743353063605

`lt[A004773(A342634(n)), A184389(2*n+3)]`
-/

namespace A062847.P13318836743353063605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A342634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062847.P13318836743353063605

/-! ## A062847.P12066061121537425404

`eq[A325334(A057335(n)), A325334(n)]`
-/

namespace A062847.P12066061121537425404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A057335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062847.P12066061121537425404

/-!
# A062848: When expressed in base 2 and then interpreted in base 7, is a multiple of the original number.

The programs for A062848, there is no canonical definition to state claims against.
-/

/-! ## A062848.P18028284614259224374

`eq[n, gcd(n, A033044(n+1))]`
-/

namespace A062848.P18028284614259224374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033044 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062848.P18028284614259224374

/-! ## A062848.P664628070192365227

`A004788(A001803(n)-1)`
-/

namespace A062848.P664628070192365227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A001803 n - 1).toNat

end

end A062848.P664628070192365227

/-!
# A062849: When expressed in base 2 and then interpreted in base 8, is a multiple of the original number.

The programs for A062849, the canonical program `A062849.P14264521753656188479` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062849 has offset 1).

The definition of A062849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062849.P3871678943855988749

`record[gcd(n, A033045(n))]`
-/

namespace A062849.P3871678943855988749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062849.P3871678943855988749

namespace A062849

/-- `record[gcd(n, A033045(n))]` -/
def P3871678943855988749.Spec : Prop :=
  ∀ n, (P3871678943855988749.a n : ℤ) = A062849 (n + 1)

end A062849

/-! ## A062849.P14264521753656188479

`record[gcd(A147845(n+1)-1, lcm(3, n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062849

/-- `record[gcd(A147845(n+1)-1, lcm(3, n))]` -/
def P14264521753656188479.Spec : Prop :=
  ∀ n, (P14264521753656188479.a n : ℤ) = A062849 (n + 1)

theorem P14264521753656188479.correct : P14264521753656188479.Spec := by
  intro n
  simp only [A062849, Nat.add_sub_cancel]

end A062849

/-! ## A062849.P5520286811398447575

`eq[0, A033045(n)%A028310(n)]`
-/

namespace A062849.P5520286811398447575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033045 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062849.P5520286811398447575

namespace A062849

/-- `eq[0, A033045(n)%A028310(n)]` -/
def P5520286811398447575.Spec : Prop :=
  ∀ n, (P5520286811398447575.a n : ℤ) = A062849 (n + 1)

end A062849

/-! ## A062849.P6132249458629795305

`lt[((A147845(n+1)-1)/2)%A028310(n), 1]`
-/

namespace A062849.P6132249458629795305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A147845 (n + 1) - 1 : ℚ) / 2)) (A028310 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062849.P6132249458629795305

namespace A062849

/-- `lt[((A147845(n+1)-1)/2)%A028310(n), 1]` -/
def P6132249458629795305.Spec : Prop :=
  ∀ n, (P6132249458629795305.a n : ℤ) = A062849 (n + 1)

end A062849

/-! ## A062849.P7281943511632279517

`lt[A037456(A003278(n+1)-1)%A028310(n), 1]`
-/

namespace A062849.P7281943511632279517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037456 (A003278 (n + 1) - 1).toNat) (A028310 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062849.P7281943511632279517

namespace A062849

/-- `lt[A037456(A003278(n+1)-1)%A028310(n), 1]` -/
def P7281943511632279517.Spec : Prop :=
  ∀ n, (P7281943511632279517.a n : ℤ) = A062849 (n + 1)

end A062849

/-! ## A062849.P3954856970458177706

`record[gcd(ceil(n/2), A037456(A005836(n+1)))]`
-/

namespace A062849.P3954856970458177706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n : ℚ) / 2⌉ (A037456 (A005836 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062849.P3954856970458177706

namespace A062849

/-- `record[gcd(ceil(n/2), A037456(A005836(n+1)))]` -/
def P3954856970458177706.Spec : Prop :=
  ∀ n, (P3954856970458177706.a n : ℤ) = A062849 (n + 1)

end A062849

/-! ## A062849.P11394877418957102567

`lt[(A037456(2*(A033162(n+1)-3))/2)%A028310(n), 1]`
-/

namespace A062849.P11394877418957102567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A037456 (2 * (A033162 (n + 1) - 3)).toNat : ℚ) / 2)) (A028310 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062849.P11394877418957102567

namespace A062849

/-- `lt[(A037456(2*(A033162(n+1)-3))/2)%A028310(n), 1]` -/
def P11394877418957102567.Spec : Prop :=
  ∀ n, (P11394877418957102567.a n : ℤ) = A062849 (n + 1)

end A062849

/-!
# A062850: When expressed in base 2 and then interpreted in base 9, is a multiple of the original number.

The programs for A062850, there is no canonical definition to state claims against.
-/

/-! ## A062850.P8125768909834886034

`record[gcd(n, A033046(n))]`
-/

namespace A062850.P8125768909834886034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033046 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062850.P8125768909834886034

/-! ## A062850.P16058627626564693403

`∪[A220102(A084684(2*n)), A000566(n)]`
-/

namespace A062850.P16058627626564693403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220102 (A084684 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062850.P16058627626564693403

/-!
# A062851: Number of k such that 1 < k < n X n and k not of the form ij for 1 <= {i, j} <= n.

The programs for A062851, there is no canonical definition to state claims against.
-/

/-! ## A062851.P11884236448823137452

`∑[A062855(n+1)]`
-/

namespace A062851.P11884236448823137452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P11884236448823137452

/-! ## A062851.P18387798822772183911

`n²-A373716(n+1)`
-/

namespace A062851.P18387798822772183911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A373716 (n + 1)

end

end A062851.P18387798822772183911

/-! ## A062851.P15023233679672293093

`∑[abs(Δ[n²-A027384(n)])]`
-/

namespace A062851.P15023233679672293093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A027384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P15023233679672293093

/-! ## A062851.P8530183507649648934

`(n+1)²-A027424(n+1)`
-/

namespace A062851.P8530183507649648934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A027424 (n + 1)

end

end A062851.P8530183507649648934

/-! ## A062851.P4611061780388637255

`∑[Δ[n²]-A062854(n+1)]`
-/

namespace A062851.P4611061780388637255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P4611061780388637255

/-! ## A062851.P50735693950760864

`∑[A108407(round(acot(n)+n))+n]`
-/

namespace A062851.P50735693950760864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P50735693950760864

/-! ## A062851.P3325582033009153949

`a(n-1)+A108407(n)+n` with `a(0)=0`
-/

namespace A062851.P3325582033009153949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A108407 n + (n : ℤ))

end

end A062851.P3325582033009153949

/-! ## A062851.P4589426334293207717

`∑[A108407(abs(1-n)+1)+n]`
-/

namespace A062851.P4589426334293207717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P4589426334293207717

/-! ## A062851.P8576330482045753118

`(n+1)²+1-A027384(n+1)`
-/

namespace A062851.P8576330482045753118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (1 - A027384 (n + 1))

end

end A062851.P8576330482045753118

/-! ## A062851.P16893679676364882357

`A000027(n+1)²-∑[A062854(n+1)]`
-/

namespace A062851.P16893679676364882357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062851.P16893679676364882357

/-! ## A062851.P2860345699086259189

`∑[A108407(n+1)+n]-A108407(n+1)`
-/

namespace A062851.P2860345699086259189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108407 (n + 1)

end

end A062851.P2860345699086259189

/-! ## A062851.P3971417089752813076

`A000217(n+1)+A000217(n)-A027424(n+1)`
-/

namespace A062851.P3971417089752813076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A027424 (n + 1))

end

end A062851.P3971417089752813076

/-!
# A062852: Largest n-digit strong pseudoprimes (in base 2).

The programs for A062852, there is no canonical definition to state claims against.
-/

/-! ## A062852.P16041144440879216814

`A001262(A055552(n+4))`
-/

namespace A062852.P16041144440879216814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (A055552 (n + 4)).toNat

end

end A062852.P16041144440879216814

/-!
# A062853: When expressed in base 3 and then interpreted in base 4, is a multiple of the original number.

The programs for A062853, there is no canonical definition to state claims against.
-/

/-! ## A062853.P15716543684009593382

`eq[n, gcd(n, A023717(n))]`
-/

namespace A062853.P15716543684009593382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A023717 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062853.P15716543684009593382

/-! ## A062853.P5854934068919496396

`eq[0, A023717(n)%A028310(n)]`
-/

namespace A062853.P5854934068919496396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062853.P5854934068919496396

/-! ## A062853.P7860109827708906214

`lt[lcm(n, A023717(n)), A023713(n+2)]`
-/

namespace A062853.P7860109827708906214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A023717 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062853.P7860109827708906214

/-!
# A062854: First differences of A027424.

The programs for A062854, there is no canonical definition to state claims against.
-/

/-! ## A062854.P11647721665130435079

`Δ[A027384(n)]`
-/

namespace A062854.P11647721665130435079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062854.P11647721665130435079

/-! ## A062854.P14354453234775148330

`Δ[n²]-A062855(n+1)`
-/

namespace A062854.P14354453234775148330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A062855 (n + 1)

end

end A062854.P14354453234775148330

/-! ## A062854.P10121424110524473547

`n+1-A108407(abs(1-n)+1)`
-/

namespace A062854.P10121424110524473547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108407 (|1 - (n : ℤ)| + 1).toNat

end

end A062854.P10121424110524473547

/-! ## A062854.P3589232342183611089

`A027384(n+1)-A027384(n)`
-/

namespace A062854.P3589232342183611089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - A027384 n

end

end A062854.P3589232342183611089

/-! ## A062854.P14664514910075055099

`1-A108407(A028310(n))+n`
-/

namespace A062854.P14664514910075055099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108407 (A028310 n).toNat + (n : ℤ)

end

end A062854.P14664514910075055099

/-! ## A062854.P3906487859008239191

`A333995(n+1)+A080339(n+1)`
-/

namespace A062854.P3906487859008239191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333995 (n + 1) + A080339 (n + 1)

end

end A062854.P3906487859008239191

/-! ## A062854.P15148530946297814466

`A027424(n+1)%A027384(n)+1`
-/

namespace A062854.P15148530946297814466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027424 (n + 1)) (A027384 n) + 1

end

end A062854.P15148530946297814466

/-! ## A062854.P5368943896538828996

`A000007(n)+Δ[A027424(A028310(n))]`
-/

namespace A062854.P5368943896538828996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062854.P5368943896538828996

/-! ## A062854.P3034678705040379698

`A027424(n+1)-(A373716(n+1)+A062855(n+1))`
-/

namespace A062854.P3034678705040379698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (A373716 (n + 1) + A062855 (n + 1))

end

end A062854.P3034678705040379698

/-! ## A062854.P8331870066276305317

`A027424(n+1)+A000007(n)-A027424(A028310(n))`
-/

namespace A062854.P8331870066276305317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A000007 n - A027424 (A028310 n).toNat)

end

end A062854.P8331870066276305317

/-! ## A062854.P6642081946516646250

`1-(A108407(A065033(2*n))-n)`
-/

namespace A062854.P6642081946516646250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A108407 (A065033 (2 * n)).toNat - (n : ℤ))

end

end A062854.P6642081946516646250

/-! ## A062854.P14010870219733953112

`Δ[A027420(∑[n])]`
-/

namespace A062854.P14010870219733953112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062854.P14010870219733953112

/-! ## A062854.P6986058891715663968

`Δ[A027421(∑[n])]`
-/

namespace A062854.P6986058891715663968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062854.P6986058891715663968

/-! ## A062854.P11234186696332902858

`Δ[record[A027420(n)]]`
-/

namespace A062854.P11234186696332902858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062854.P11234186696332902858

/-! ## A062854.P13354964998318884126

`Δ[record[A027421(n)]]`
-/

namespace A062854.P13354964998318884126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062854.P13354964998318884126

/-!
# A062855: First differences of A062851.

The programs for A062855, there is no canonical definition to state claims against.
-/

/-! ## A062855.P1752475231363913224

`Δ[n²-A027384(n)]`
-/

namespace A062855.P1752475231363913224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A027384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062855.P1752475231363913224

/-! ## A062855.P3174184524793202907

`Δ[n²]-A062854(n+1)`
-/

namespace A062855.P3174184524793202907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A062854 (n + 1)

end

end A062855.P3174184524793202907

/-! ## A062855.P8607832524618245482

`A108407(round(acot(n)+n))+n`
-/

namespace A062855.P8607832524618245482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + (n : ℤ)

end

end A062855.P8607832524618245482

/-! ## A062855.P3417822059018663303

`A108407(abs(1-n)+1)+n`
-/

namespace A062855.P3417822059018663303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108407 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

end

end A062855.P3417822059018663303

/-! ## A062855.P5857518269226046831

`A005408(n)-Δ[A027384(n)]`
-/

namespace A062855.P5857518269226046831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A062855.P5857518269226046831

/-! ## A062855.P14528313911746965064

`A000027(n+1)-A062854(n+1)+n`
-/

namespace A062855.P14528313911746965064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A062854 (n + 1) + (n : ℤ)

end

end A062855.P14528313911746965064

/-! ## A062855.P14866127466688339453

`A000290(n+1)-(A062854(n+1)+A000290(n))`
-/

namespace A062855.P14866127466688339453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A062854 (n + 1) + A000290 n)

end

end A062855.P14866127466688339453

/-! ## A062855.P11838154319291357287

`Δ[n²-record[A027420(n)]]`
-/

namespace A062855.P11838154319291357287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062855.P11838154319291357287

/-! ## A062855.P4709967981895791766

`Δ[n²-record[A027421(n)]]`
-/

namespace A062855.P4709967981895791766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062855.P4709967981895791766

/-! ## A062855.P4254696113944630079

`Δ[n²-A027420((n²+n)/2)]`
-/

namespace A062855.P4254696113944630079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A027420 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062855.P4254696113944630079

/-!
# A062856: In the square multiplication table of size A062857(n), the smallest number which appears n times.

The programs for A062856, there is no canonical definition to state claims against.
-/

/-! ## A062856.P12890151255055870386

`A057144(A062857(n+1))`
-/

namespace A062856.P12890151255055870386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A062857 (n + 1)).toNat

end

end A062856.P12890151255055870386

/-! ## A062856.P8071526025171522902

`A057144(record[A046933(n+2)])`
-/

namespace A062856.P8071526025171522902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062856.P8071526025171522902

/-! ## A062856.P16853619970353349647

`filter[A362865(2*n+3), A322586(#)]`
-/

namespace A062856.P16853619970353349647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362865 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A062856.P16853619970353349647

/-! ## A062856.P18445839100586474810

`A291185(n+1)*A333252(∑[∑{d}[n, #]]+1)`
-/

namespace A062856.P18445839100586474810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291185 (n + 1) * A333252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A062856.P18445839100586474810

/-! ## A062856.P4227312167062794288

`lcm(A055640(A053699(n)), A062857(n+1))`
-/

namespace A062856.P4227312167062794288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055640 (A053699 n).toNat) (A062857 (n + 1))

end

end A062856.P4227312167062794288

/-!
# A062858: In the triangular multiplication table of size A062859(n), the smallest number which appears n times.

The programs for A062858, there is no canonical definition to state claims against.
-/

/-! ## A062858.P2625310992744071122

`A062856(Δ[n²])`
-/

namespace A062858.P2625310992744071122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062858.P2625310992744071122

/-! ## A062858.P4867937227978466824

`or(1, char[2])*A062856(2*n+1)`
-/

namespace A062858.P4867937227978466824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ) * A062856 (2 * n + 1)

end

end A062858.P4867937227978466824

/-! ## A062858.P18179615424457022059

`gcd(n, n+1)*A062856(n+1+n)`
-/

namespace A062858.P18179615424457022059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A062856 (n + 1 + n)

end

end A062858.P18179615424457022059

/-! ## A062858.P4988641466079371682

`lcm(A007318(n), A062856(2*n+1))`
-/

namespace A062858.P4988641466079371682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A062856 (2 * n + 1))

end

end A062858.P4988641466079371682

/-! ## A062858.P2279163233357848875

`or(A000007(n), A062856(2*n+1))`
-/

namespace A062858.P2279163233357848875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A062856 (2 * n + 1))

end

end A062858.P2279163233357848875

/-! ## A062858.P16313961876623477177

`A062856(2*n+1)+char[A023046(n)]`
-/

namespace A062858.P16313961876623477177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023046 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P16313961876623477177

/-! ## A062858.P14527121875945702130

`A062856(2*n+1)+char[A305268(n)]`
-/

namespace A062858.P14527121875945702130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305268 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P14527121875945702130

/-! ## A062858.P58924057481924990

`A062856(2*n+1)+char[A346998(n)]`
-/

namespace A062858.P58924057481924990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P58924057481924990

/-! ## A062858.P3103453648327692132

`A062856(2*n+1)+A000007(n+1)`
-/

namespace A062858.P3103453648327692132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + A000007 (n + 1)

end

end A062858.P3103453648327692132

/-! ## A062858.P3572557675519066813

`A062856(2*n+1)/A177702(3*n)`
-/

namespace A062858.P3572557675519066813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062856 (2 * n + 1) : ℚ) / (A177702 (3 * n) : ℚ)

end

end A062858.P3572557675519066813

/-! ## A062858.P11405022495556794057

`A062856(2*n+1)%A061730(n+1)`
-/

namespace A062858.P11405022495556794057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062856 (2 * n + 1)) (A061730 (n + 1))

end

end A062858.P11405022495556794057

/-! ## A062858.P13773095246380702519

`A062856(2*n+1)+char[A025336(n+1)]`
-/

namespace A062858.P13773095246380702519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P13773095246380702519

/-! ## A062858.P18153848653587764073

`A062856(2*n+1)+char[A125565(n+1)]`
-/

namespace A062858.P18153848653587764073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125565 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P18153848653587764073

/-! ## A062858.P2435641322906503652

`A062856(2*n+1)+char[A270303(n+1)]`
-/

namespace A062858.P2435641322906503652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270303 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P2435641322906503652

/-! ## A062858.P14935375068333847186

`A062856(2*n+1)+char[A124041(n+3)]`
-/

namespace A062858.P14935375068333847186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124041 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P14935375068333847186

/-! ## A062858.P9494604510818134360

`A062856(2*n+1)+char[A342427(n+3)]`
-/

namespace A062858.P9494604510818134360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342427 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062858.P9494604510818134360

/-! ## A062858.P1557089341856942802

`A062856(A285251(n+1))-A130706(n)`
-/

namespace A062858.P1557089341856942802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (A285251 (n + 1)).toNat - A130706 n

end

end A062858.P1557089341856942802

/-! ## A062858.P6210187884041116918

`A003557(A258570(n+1))*A062856(2*n+1)`
-/

namespace A062858.P6210187884041116918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A258570 (n + 1)).toNat * A062856 (2 * n + 1)

end

end A062858.P6210187884041116918

/-! ## A062858.P8067997515339177633

`A057144(A062859(n+1))`
-/

namespace A062858.P8067997515339177633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A062859 (n + 1)).toNat

end

end A062858.P8067997515339177633

/-! ## A062858.P11019517092396546912

`A057144(A062857(Δ[n²]))`
-/

namespace A062858.P11019517092396546912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (A062857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A062858.P11019517092396546912

/-!
# A062859: Size of smallest triangular multiplication table which contains some number n times.

The programs for A062859, there is no canonical definition to state claims against.
-/

/-! ## A062859.P1283620647935544244

`A062857(Δ[n²])`
-/

namespace A062859.P1283620647935544244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062859.P1283620647935544244

/-! ## A062859.P2725499985474104229

`record[A062857(n^(n%2))]`
-/

namespace A062859.P2725499985474104229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062859.P2725499985474104229

/-! ## A062859.P10128396588148532879

`and(-1, A062857(2*n+1))`
-/

namespace A062859.P10128396588148532879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A062857 (2 * n + 1))

end

end A062859.P10128396588148532879

/-! ## A062859.P8459192476317769077

`record[(-1)^n*A062857(n+1)]`
-/

namespace A062859.P8459192476317769077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062859.P8459192476317769077

/-! ## A062859.P7082892591467677759

`record[A062857((n+1)/2^val(n+1, 2))]`
-/

namespace A062859.P7082892591467677759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062859.P7082892591467677759

/-! ## A062859.P16116182229207598841

`A000027(A062857(2*n+1))`
-/

namespace A062859.P16116182229207598841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A062857 (2 * n + 1)).toNat

end

end A062859.P16116182229207598841

/-! ## A062859.P3889301654291370796

`filter[A062857(2*n+1), A005171(#)]`
-/

namespace A062859.P3889301654291370796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A062859.P3889301654291370796

/-! ## A062859.P9918226885975009464

`filter[A062857(2*n+1), A093521(#)]`
-/

namespace A062859.P9918226885975009464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A062859.P9918226885975009464

/-! ## A062859.P5708072333737601075

`filter[A062857(2*n+1), A283265(#)]`
-/

namespace A062859.P5708072333737601075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A062859.P5708072333737601075

/-! ## A062859.P6823642259324614121

`filter[A062857(2*n+1), A347950(#)]`
-/

namespace A062859.P6823642259324614121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A062859.P6823642259324614121

/-! ## A062859.P5353718154068737760

`∑{d}[A062857(2*n+1), A000010(#)]`
-/

namespace A062859.P5353718154068737760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A062859.P5353718154068737760

/-!
# A062860: Smallest j with n nodes in its riff (rooted index-functional forest).

The programs for A062860, there is no canonical definition to state claims against.
-/

/-! ## A062860.P6619661453002065282

`Δ[A319755(n+1)+A016116(n)]`
-/

namespace A062860.P6619661453002065282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319755 (n + 1) + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062860.P6619661453002065282

/-! ## A062860.P10008779119536719595

`A002024(or(A147623(n), A149172(n)))`
-/

namespace A062860.P10008779119536719595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A147623 n) (A149172 n)).toNat

end

end A062860.P10008779119536719595

/-! ## A062860.P18027149569772726273

`A123578(or(A147623(n), A149172(n)))`
-/

namespace A062860.P18027149569772726273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor (A147623 n) (A149172 n)).toNat

end

end A062860.P18027149569772726273

/-! ## A062860.P17011489358586696840

`A002024(or(A212685(n), A340329(n)))`
-/

namespace A062860.P17011489358586696840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A212685 n) (A340329 n)).toNat

end

end A062860.P17011489358586696840

/-! ## A062860.P3961945673661587268

`A123578(or(A212685(n), A340329(n)))`
-/

namespace A062860.P3961945673661587268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor (A212685 n) (A340329 n)).toNat

end

end A062860.P3961945673661587268

/-!
# A062861: Numbers which are sums of squares of consecutive numbers (possibly including squares of negative numbers).

The programs for A062861, there is no canonical definition to state claims against.
-/

/-! ## A062861.P9294867229733566992

`∪[A212015(n+1), n²]`
-/

namespace A062861.P9294867229733566992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A062861.P9294867229733566992

/-! ## A062861.P5430812044662765482

`∪[A212016(n+1), n²]`
-/

namespace A062861.P5430812044662765482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A062861.P5430812044662765482

/-! ## A062861.P10113637860160628388

`∪[A000290(n), A212015(n+1)]`
-/

namespace A062861.P10113637860160628388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062861.P10113637860160628388

/-! ## A062861.P17694053232691987564

`∪[A000290(n), A212016(n+1)]`
-/

namespace A062861.P17694053232691987564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062861.P17694053232691987564

/-! ## A062861.P5074603102026539962

`∪[A034705(n+1), A212015(n+1)]`
-/

namespace A062861.P5074603102026539962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062861.P5074603102026539962

/-! ## A062861.P3824253889298229175

`∪[A034705(n+1), A212016(n+1)]`
-/

namespace A062861.P3824253889298229175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062861.P3824253889298229175

/-! ## A062861.P15655995944560445931

`∪[A034705(n+1), A288631(n+1)]`
-/

namespace A062861.P15655995944560445931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062861.P15655995944560445931

/-! ## A062861.P13569437022359292265

`lt[0, A062862(n)]`
-/

namespace A062861.P13569437022359292265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062861.P13569437022359292265

/-!
# A062863: Numbers which cannot be written as sums of squares of consecutive numbers (even allowing squares of negative numbers).

The programs for A062863, there is no canonical definition to state claims against.
-/

/-! ## A062863.P6041798253745152206

`comp[A062861(n)]`
-/

namespace A062863.P6041798253745152206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A062863.P6041798253745152206

/-! ## A062863.P4941622306308054169

`comp[∪[A212015(n+1), n²]]`
-/

namespace A062863.P4941622306308054169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P4941622306308054169

/-! ## A062863.P18034978117501016621

`comp[∪[A212016(n+1), n²]]`
-/

namespace A062863.P18034978117501016621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P18034978117501016621

/-! ## A062863.P5632060218605560602

`comp[∪[A000290(n), A212015(n+1)]]`
-/

namespace A062863.P5632060218605560602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P5632060218605560602

/-! ## A062863.P7658370944400418629

`comp[∪[A000290(n), A212016(n+1)]]`
-/

namespace A062863.P7658370944400418629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P7658370944400418629

/-! ## A062863.P4270118081994173022

`comp[∪[A034705(n+1), A212015(n+1)]]`
-/

namespace A062863.P4270118081994173022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P4270118081994173022

/-! ## A062863.P4706943423701831402

`comp[∪[A034705(n+1), A288631(n+1)]]`
-/

namespace A062863.P4706943423701831402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288631 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A062863.P4706943423701831402

/-! ## A062863.P10216468655775288462

`eq[0, A062862(n)]`
-/

namespace A062863.P10216468655775288462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062863.P10216468655775288462

/-! ## A062863.P14899880146239710139

`eq[0, char[A062861(A130361(n))]]`
-/

namespace A062863.P14899880146239710139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062861 (A130361 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062863.P14899880146239710139

/-! ## A062863.P2817722068852360977

`lt[A062862(n), acot(A000010(n+1))]`
-/

namespace A062863.P2817722068852360977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062862 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000010 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A062863.P2817722068852360977

/-!
# A062864: When expressed in base 3 and then interpreted in base 5, is a multiple of the original number.

The programs for A062864, there is no canonical definition to state claims against.
-/

/-! ## A062864.P7183928594494088723

`eq[n, gcd(n, A020654(A023717(n)+1))]`
-/

namespace A062864.P7183928594494088723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A020654 (A023717 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062864.P7183928594494088723

/-! ## A062864.P13595086535219135115

`A350356(A353871(n+1))`
-/

namespace A062864.P13595086535219135115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A353871 (n + 1)).toNat

end

end A062864.P13595086535219135115

/-!
# A062865: When expressed in base 3 and then interpreted in base 6, is a multiple of the original number.

The programs for A062865, there is no canonical definition to state claims against.
-/

/-! ## A062865.P9694974947179667437

`record[gcd(n, A037454(n))]`
-/

namespace A062865.P9694974947179667437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037454 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062865.P9694974947179667437

/-! ## A062865.P13167703591719516930

`eq[0, A037454(n)%A028310(n)]`
-/

namespace A062865.P13167703591719516930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037454 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062865.P13167703591719516930

/-! ## A062865.P3019805069188927888

`lt[lcm(n, A037454(n)), A037454(n+1)]`
-/

namespace A062865.P3019805069188927888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A037454 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062865.P3019805069188927888

/-! ## A062865.P14105104474275924568

`eq[dr(A008459(n)), A301333(n)]`
-/

namespace A062865.P14105104474275924568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008459 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062865.P14105104474275924568

/-! ## A062865.P4655876449854511248

`eq[A232989(n), A286564(n+1)]`
-/

namespace A062865.P4655876449854511248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062865.P4655876449854511248

/-!
# A062868: Number of permutations of degree n with barycenter 0.

The programs for A062868, there is no canonical definition to state claims against.
-/

/-! ## A062868.P1365522885522846371

`A062866(∑[A004275(abs(1-n))])`
-/

namespace A062868.P1365522885522846371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062868.P1365522885522846371

/-! ## A062868.P8157650073072981991

`2*A179566(n)-A000142(n)`
-/

namespace A062868.P8157650073072981991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179566 n - A000142 n

end

end A062868.P8157650073072981991

/-! ## A062868.P1981053243967959924

`A062867(A022856(n+2))`
-/

namespace A062868.P1981053243967959924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062867 (A022856 (n + 2)).toNat

end

end A062868.P1981053243967959924

/-! ## A062868.P8509171945004272206

`A062867(A016028(n+1)-1)`
-/

namespace A062868.P8509171945004272206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062867 (A016028 (n + 1) - 1).toNat

end

end A062868.P8509171945004272206

/-! ## A062868.P13695638838462773440

`A062867(∑[n]+1-A004275(n))`
-/

namespace A062868.P13695638838462773440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062867 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A004275 n).toNat

end

end A062868.P13695638838462773440

/-!
# A062870: Number of permutations of degree n with greatest sum of distances.

The programs for A062870, there is no canonical definition to state claims against.
-/

/-! ## A062870.P10149837629630633215

`floor(n/2)!²*n^(n%2)`
-/

namespace A062870.P10149837629630633215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 * n ^ (n % 2)

end

end A062870.P10149837629630633215

/-! ## A062870.P10125376967132024045

`A081123(n)²*A093178(n)`
-/

namespace A062870.P10125376967132024045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n ^ 2 * A093178 n

end

end A062870.P10125376967132024045

/-! ## A062870.P16860698662236173010

`A004526(n)!²*A093178(n)`
-/

namespace A062870.P16860698662236173010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004526 n).toNat ^ 2 : ℤ) * A093178 n

end

end A062870.P16860698662236173010

/-! ## A062870.P9061422319767814917

`A123108(n)!²*A093178(n)`
-/

namespace A062870.P9061422319767814917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A123108 n).toNat ^ 2 : ℤ) * A093178 n

end

end A062870.P9061422319767814917

/-! ## A062870.P1229892860435648562

`(A133265(n)-1)*A081123(n)²`
-/

namespace A062870.P1229892860435648562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133265 n - 1) * A081123 n ^ 2

end

end A062870.P1229892860435648562

/-! ## A062870.P3514375388158103661

`A001044(A123108(n))*A093178(n)`
-/

namespace A062870.P3514375388158103661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A123108 n).toNat * A093178 n

end

end A062870.P3514375388158103661

/-! ## A062870.P10692792442502739737

`A010551(n)+A010551(n)-A180064(n)`
-/

namespace A062870.P10692792442502739737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 n + (A010551 n - A180064 n)

end

end A062870.P10692792442502739737

/-! ## A062870.P925270751285541040

`n!/A128014(n)`
-/

namespace A062870.P925270751285541040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A128014 n : ℚ)

end

end A062870.P925270751285541040

/-! ## A062870.P4312471584326689164

`n!/A001405(and(n, -2))`
-/

namespace A062870.P4312471584326689164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A001405 (Int.land (n : ℤ) (-2)).toNat : ℚ)

end

end A062870.P4312471584326689164

/-! ## A062870.P5096806566717869046

`n!/A007318(∑[2*n*char[2*n]])`
-/

namespace A062870.P5096806566717869046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A062870.P5096806566717869046

/-!
# A062871: a(n) is the integer part of the geometric mean of n! and n^n.

The programs for A062871, the canonical program `A062871.P9685211352614810899` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062871 has offset 0).

The definition of A062871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062871.P9685211352614810899

`floor(sqrt(n!*n^n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062871

/-- `floor(sqrt(n!*n^n))` -/
def P9685211352614810899.Spec : Prop :=
  ∀ n, (P9685211352614810899.a n : ℤ) = A062871 n

theorem P9685211352614810899.correct : P9685211352614810899.Spec := by
  intro n
  simp only [A062871]

end A062871

/-! ## A062871.P14589817298348229323

`floor(sqrt(A061711(n)))`
-/

namespace A062871.P14589817298348229323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A061711 n)

end

end A062871.P14589817298348229323

namespace A062871

/-- `floor(sqrt(A061711(n)))` -/
def P14589817298348229323.Spec : Prop :=
  ∀ n, P14589817298348229323.a n = A062871 n

end A062871

/-! ## A062871.P8921661465725241272

`floor(sqrt(A231601(2*n)))`
-/

namespace A062871.P8921661465725241272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A231601 (2 * n))

end

end A062871.P8921661465725241272

namespace A062871

/-- `floor(sqrt(A231601(2*n)))` -/
def P8921661465725241272.Spec : Prop :=
  ∀ n, P8921661465725241272.a n = A062871 n

end A062871

/-! ## A062871.P4538260577777591397

`floor(A061711(n)/A062872(n))`
-/

namespace A062871.P4538260577777591397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061711 n : ℚ) / (A062872 n : ℚ)⌋

end

end A062871.P4538260577777591397

namespace A062871

/-- `floor(A061711(n)/A062872(n))` -/
def P4538260577777591397.Spec : Prop :=
  ∀ n, P4538260577777591397.a n = A062871 n

end A062871

/-! ## A062871.P8699447471300758307

`floor(sqrt(A000142(n)*A000312(n)))`
-/

namespace A062871.P8699447471300758307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000142 n * A000312 n)

end

end A062871.P8699447471300758307

namespace A062871

/-- `floor(sqrt(A000142(n)*A000312(n)))` -/
def P8699447471300758307.Spec : Prop :=
  ∀ n, P8699447471300758307.a n = A062871 n

end A062871

/-!
# A062872: Nearest integer to geometric mean of n! and n^n.

The programs for A062872, the canonical program `A062872.P3829301829728092408` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062872 has offset 0).

The definition of A062872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062872.P3829301829728092408

`round(sqrt(n!*n^n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062872

/-- `round(sqrt(n!*n^n))` -/
def P3829301829728092408.Spec : Prop :=
  ∀ n, P3829301829728092408.a n = A062872 n

theorem P3829301829728092408.correct : P3829301829728092408.Spec := by
  intro n
  simp only [A062872]

end A062872

/-! ## A062872.P12278022439010071891

`round(sqrt(A061711(n)))`
-/

namespace A062872.P12278022439010071891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A061711 n : ℝ))

end

end A062872.P12278022439010071891

namespace A062872

/-- `round(sqrt(A061711(n)))` -/
def P12278022439010071891.Spec : Prop :=
  ∀ n, P12278022439010071891.a n = A062872 n

end A062872

/-! ## A062872.P14946968634841965675

`round(sqrt(A231601(2*n)))`
-/

namespace A062872.P14946968634841965675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A231601 (2 * n) : ℝ))

end

end A062872.P14946968634841965675

namespace A062872

/-- `round(sqrt(A231601(2*n)))` -/
def P14946968634841965675.Spec : Prop :=
  ∀ n, P14946968634841965675.a n = A062872 n

end A062872

/-! ## A062872.P5335461739333223138

`floor(sqrt(A062871(n)+A061711(n)))`
-/

namespace A062872.P5335461739333223138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A062871 n + A061711 n)

end

end A062872.P5335461739333223138

namespace A062872

/-- `floor(sqrt(A062871(n)+A061711(n)))` -/
def P5335461739333223138.Spec : Prop :=
  ∀ n, P5335461739333223138.a n = A062872 n

end A062872

/-!
# A062873: Nearest integer to arithmetic mean of n! and n^n.

The programs for A062873, there is no canonical definition to state claims against.
-/

/-! ## A062873.P6218837842892980312

`ceil((n!+n^n)/2)`
-/

namespace A062873.P6218837842892980312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n + n ^ n : ℚ) / 2⌉

end

end A062873.P6218837842892980312

/-! ## A062873.P13207412465134268884

`round((n!+n^n)/2)`
-/

namespace A062873.P13207412465134268884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n + n ^ n : ℚ) / 2)

end

end A062873.P13207412465134268884

/-! ## A062873.P5759014780798681323

`ceil((A000142(n)+n^n)/2)`
-/

namespace A062873.P5759014780798681323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000142 n + (n ^ n : ℤ) : ℚ) / 2⌉

end

end A062873.P5759014780798681323

/-! ## A062873.P873807325116715106

`floor((A014566(n)+A000142(n))/2)`
-/

namespace A062873.P873807325116715106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014566 n + A000142 n : ℚ) / 2⌋

end

end A062873.P873807325116715106

/-! ## A062873.P6517194140024674605

`ceil((A000312(n)+A000142(n))/2)`
-/

namespace A062873.P6517194140024674605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000312 n + A000142 n : ℚ) / 2⌉

end

end A062873.P6517194140024674605

/-!
# A062874: Integer part of arithmetic mean of n! and n^n.

The programs for A062874, there is no canonical definition to state claims against.
-/

/-! ## A062874.P4629753667763827078

`char[1]+A062873(n)-A000035(n)`
-/

namespace A062874.P4629753667763827078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A062873 n - A000035 n)

end

end A062874.P4629753667763827078

/-! ## A062874.P13033084219527182239

`floor((n!+n^n)/2)`
-/

namespace A062874.P13033084219527182239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + n ^ n : ℚ) / 2⌋

end

end A062874.P13033084219527182239

/-! ## A062874.P15487065475594409995

`ceil((n!+n^n-1)/2)`
-/

namespace A062874.P15487065475594409995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial n + n ^ n : ℤ) - 1 : ℚ) / 2⌉

end

end A062874.P15487065475594409995

/-! ## A062874.P13969512293822461180

`floor(A053042(A028310(n))/2)`
-/

namespace A062874.P13969512293822461180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053042 (A028310 n).toNat : ℚ) / 2⌋

end

end A062874.P13969512293822461180

/-! ## A062874.P2346106839389701653

`floor((A000312(n)+A000142(n))/2)`
-/

namespace A062874.P2346106839389701653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 n + A000142 n : ℚ) / 2⌋

end

end A062874.P2346106839389701653

/-!
# A062875: Records in A046112 (or A006339).

The programs for A062875, the canonical program `A062875.P9437955210362976688` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062875 has offset 1).

The definition of A062875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102781, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062875.P9437955210362976688

`5^A102781(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062875

/-- `5^A102781(n+1)` -/
def P9437955210362976688.Spec : Prop :=
  ∀ n, P9437955210362976688.a n = (A062875 (n + 1) : ℚ)

end A062875

/-! ## A062875.P17508937605588127161

`5^(A111333(n+1)-1)`
-/

namespace A062875.P17508937605588127161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A111333 (n + 1) - 1 : ℤ)

end

end A062875.P17508937605588127161

namespace A062875

/-- `5^(A111333(n+1)-1)` -/
def P17508937605588127161.Spec : Prop :=
  ∀ n, P17508937605588127161.a n = (A062875 (n + 1) : ℚ)

end A062875

/-! ## A062875.P7449361707272048262

`A006339(A102781(n+1))`
-/

namespace A062875.P7449361707272048262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (A102781 (n + 1)).toNat

end

end A062875.P7449361707272048262

namespace A062875

/-- `A006339(A102781(n+1))` -/
def P7449361707272048262.Spec : Prop :=
  ∀ n, P7449361707272048262.a n = A062875 (n + 1)

end A062875

/-! ## A062875.P14153051945163233652

`5^lt[∑{e}[2*n+1, #], 2]`
-/

namespace A062875.P14153051945163233652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A062875.P14153051945163233652

namespace A062875

/-- `5^lt[∑{e}[2*n+1, #], 2]` -/
def P14153051945163233652.Spec : Prop :=
  ∀ n, (P14153051945163233652.a n : ℤ) = A062875 (n + 1)

end A062875

/-! ## A062875.P12876191728129063671

`5^lt[∏{e}[(2*n+1)², #], 3]`
-/

namespace A062875.P12876191728129063671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A062875.P12876191728129063671

namespace A062875

/-- `5^lt[∏{e}[(2*n+1)², #], 3]` -/
def P12876191728129063671.Spec : Prop :=
  ∀ n, (P12876191728129063671.a n : ℤ) = A062875 (n + 1)

end A062875

/-! ## A062875.P7595678747609201846

`5^eq[1, ∑{e}[2*n+1, #]!]`
-/

namespace A062875.P7595678747609201846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062875.P7595678747609201846

namespace A062875

/-- `5^eq[1, ∑{e}[2*n+1, #]!]` -/
def P7595678747609201846.Spec : Prop :=
  ∀ n, (P7595678747609201846.a n : ℤ) = A062875 (n + 1)

end A062875

/-! ## A062875.P7218390095249688154

`record[5^∑{p}[2*n+1, #-(n+1)]]`
-/

namespace A062875.P7218390095249688154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - (n + 1 : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062875.P7218390095249688154

namespace A062875

/-- `record[5^∑{p}[2*n+1, #-(n+1)]]` -/
def P7218390095249688154.Spec : Prop :=
  ∀ n, P7218390095249688154.a n = (A062875 (n + 1) : ℚ)

end A062875

/-! ## A062875.P2651322120703865684

`record[∏{p}[2*n+1, 5^(#-(n+1))]]`
-/

namespace A062875.P2651322120703865684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (5 : ℚ) ^ ((p : ℤ) - (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062875.P2651322120703865684

namespace A062875

/-- `record[∏{p}[2*n+1, 5^(#-(n+1))]]` -/
def P2651322120703865684.Spec : Prop :=
  ∀ n, P2651322120703865684.a n = (A062875 (n + 1) : ℚ)

end A062875

/-! ## A062875.P7602848895874937623

`5^eq[2*n+1, ∏{d}[2*n+1, #]]`
-/

namespace A062875.P7602848895874937623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062875.P7602848895874937623

namespace A062875

/-- `5^eq[2*n+1, ∏{d}[2*n+1, #]]` -/
def P7602848895874937623.Spec : Prop :=
  ∀ n, (P7602848895874937623.a n : ℤ) = A062875 (n + 1)

end A062875

/-! ## A062875.P14312916152356183591

`record[A006339(n)]`
-/

namespace A062875.P14312916152356183591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062875.P14312916152356183591

namespace A062875

/-- `record[A006339(n)]` -/
def P14312916152356183591.Spec : Prop :=
  ∀ n, P14312916152356183591.a n = A062875 (n + 1)

end A062875

/-!
# A062876: Numbers of lattice points corresponding to incrementally largest circle radii in A062875.

The programs for A062876, the canonical program `A062876.P12290400857756145582` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062876 has offset 1).

The definition of A062876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062876.P12290400857756145582

`8*A111333(n+1)-4`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062876

/-- `8*A111333(n+1)-4` -/
def P12290400857756145582.Spec : Prop :=
  ∀ n, P12290400857756145582.a n = A062876 (n + 1)

theorem P12290400857756145582.correct : P12290400857756145582.Spec := by
  intro n
  simp only [A062876, Nat.add_sub_cancel]

end A062876

/-! ## A062876.P14893048785380430176

`A017113(A111333(n+1)-1)`
-/

namespace A062876.P14893048785380430176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A111333 (n + 1) - 1).toNat

end

end A062876.P14893048785380430176

namespace A062876

/-- `A017113(A111333(n+1)-1)` -/
def P14893048785380430176.Spec : Prop :=
  ∀ n, P14893048785380430176.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P12482217857986823608

`lcm(4, Δ[A007504(n)])`
-/

namespace A062876.P12482217857986823608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (f1 (n + 1) - f1 n)

end

end A062876.P12482217857986823608

namespace A062876

/-- `lcm(4, Δ[A007504(n)])` -/
def P12482217857986823608.Spec : Prop :=
  ∀ n, (P12482217857986823608.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P13440024895846817885

`4*A006005(n+1)`
-/

namespace A062876.P13440024895846817885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006005 (n + 1)

end

end A062876.P13440024895846817885

namespace A062876

/-- `4*A006005(n+1)` -/
def P13440024895846817885.Spec : Prop :=
  ∀ n, P13440024895846817885.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P651826846887728330

`sqrt(lcm(16, A001248(n+1)))`
-/

namespace A062876.P651826846887728330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm 16 (A001248 (n + 1)) : ℝ)

end

end A062876.P651826846887728330

namespace A062876

/-- `sqrt(lcm(16, A001248(n+1)))` -/
def P651826846887728330.Spec : Prop :=
  ∀ n, P651826846887728330.a n = (A062876 (n + 1) : ℝ)

end A062876

/-! ## A062876.P6658408399087187284

`2*lcm(2, A000040(n+1))`
-/

namespace A062876.P6658408399087187284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm 2 (A000040 (n + 1))

end

end A062876.P6658408399087187284

namespace A062876

/-- `2*lcm(2, A000040(n+1))` -/
def P6658408399087187284.Spec : Prop :=
  ∀ n, (P6658408399087187284.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P17827027084211654938

`2*or(2, A037168(n+1))`
-/

namespace A062876.P17827027084211654938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 2 (A037168 (n + 1))

end

end A062876.P17827027084211654938

namespace A062876

/-- `2*or(2, A037168(n+1))` -/
def P17827027084211654938.Spec : Prop :=
  ∀ n, P17827027084211654938.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P8639629896657768975

`2*∏{p}[A100484(n+1), #]`
-/

namespace A062876.P8639629896657768975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A062876.P8639629896657768975

namespace A062876

/-- `2*∏{p}[A100484(n+1), #]` -/
def P8639629896657768975.Spec : Prop :=
  ∀ n, (P8639629896657768975.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P2027016322634449346

`4*A000040((n+1)%a(n-1))` with `a(0)=4`
-/

namespace A062876.P2027016322634449346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * A000040 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat

end

end A062876.P2027016322634449346

namespace A062876

/-- `4*A000040((n+1)%a(n-1))` -/
def P2027016322634449346.Spec : Prop :=
  ∀ n, P2027016322634449346.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P11379478551199150718

`A000040(n+1)*A040002(n)`
-/

namespace A062876.P11379478551199150718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A040002 n

end

end A062876.P11379478551199150718

namespace A062876

/-- `A000040(n+1)*A040002(n)` -/
def P11379478551199150718.Spec : Prop :=
  ∀ n, P11379478551199150718.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P15035645937885507049

`A001749(n+1)/A054977(n)`
-/

namespace A062876.P15035645937885507049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A062876.P15035645937885507049

namespace A062876

/-- `A001749(n+1)/A054977(n)` -/
def P15035645937885507049.Spec : Prop :=
  ∀ n, P15035645937885507049.a n = (A062876 (n + 1) : ℚ)

end A062876

/-! ## A062876.P85487498574937546

`lcm(A040002(n), A100484(n+1))`
-/

namespace A062876.P85487498574937546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040002 n) (A100484 (n + 1))

end

end A062876.P85487498574937546

namespace A062876

/-- `lcm(A040002(n), A100484(n+1))` -/
def P85487498574937546.Spec : Prop :=
  ∀ n, (P85487498574937546.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P17150574791752123317

`(A057427(n)+1)*A100484(n+1)`
-/

namespace A062876.P17150574791752123317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A100484 (n + 1)

end

end A062876.P17150574791752123317

namespace A062876

/-- `(A057427(n)+1)*A100484(n+1)` -/
def P17150574791752123317.Spec : Prop :=
  ∀ n, P17150574791752123317.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P16443889781216380128

`A000040(n+1)*A040003(2*n)`
-/

namespace A062876.P16443889781216380128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A040003 (2 * n)

end

end A062876.P16443889781216380128

namespace A062876

/-- `A000040(n+1)*A040003(2*n)` -/
def P16443889781216380128.Spec : Prop :=
  ∀ n, P16443889781216380128.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P15926037629406479203

`gcd(A001749(n+1), A138402(n+1))`
-/

namespace A062876.P15926037629406479203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001749 (n + 1)) (A138402 (n + 1))

end

end A062876.P15926037629406479203

namespace A062876

/-- `gcd(A001749(n+1), A138402(n+1))` -/
def P15926037629406479203.Spec : Prop :=
  ∀ n, (P15926037629406479203.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P13068901961522805762

`gcd(A069262(n+1), A367573(n+1))`
-/

namespace A062876.P13068901961522805762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069262 (n + 1)) (A367573 (n + 1))

end

end A062876.P13068901961522805762

namespace A062876

/-- `gcd(A069262(n+1), A367573(n+1))` -/
def P13068901961522805762.Spec : Prop :=
  ∀ n, (P13068901961522805762.a n : ℤ) = A062876 (n + 1)

end A062876

/-! ## A062876.P4918089244673570991

`2*gcd(2, A000010(n+2))*A000040(n+1)`
-/

namespace A062876.P4918089244673570991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Int.gcd 2 (A000010 (n + 2)) : ℤ) * A000040 (n + 1))

end

end A062876.P4918089244673570991

namespace A062876

/-- `2*gcd(2, A000010(n+2))*A000040(n+1)` -/
def P4918089244673570991.Spec : Prop :=
  ∀ n, P4918089244673570991.a n = A062876 (n + 1)

end A062876

/-! ## A062876.P3036039667815462331

`2*A000032(C(2, n+2))*A000040(n+1)`
-/

namespace A062876.P3036039667815462331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (Nat.choose 2 (n + 2)) * A000040 (n + 1))

end

end A062876.P3036039667815462331

namespace A062876

/-- `2*A000032(C(2, n+2))*A000040(n+1)` -/
def P3036039667815462331.Spec : Prop :=
  ∀ n, P3036039667815462331.a n = A062876 (n + 1)

end A062876

/-!
# A062877: 0 and numbers representable as a sum of distinct odd-indexed Fibonacci numbers.

The programs for A062877, the canonical program `A062877.P13716015760311910933` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062877 has offset 0).

The definition of A062877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062877.P13716015760311910933

`A036796(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062877

/-- `A036796(n)-1` -/
def P13716015760311910933.Spec : Prop :=
  ∀ n, P13716015760311910933.a n = A062877 n

theorem P13716015760311910933.correct : P13716015760311910933.Spec := by
  intro n
  simp only [A062877]

end A062877

/-! ## A062877.P17413785635088716408

`A062879(and(n, -2)/2+1)-or(1, n)+n+1`
-/

namespace A062877.P17413785635088716408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2 + 1)).toNat - (Nat.lor 1 n : ℤ) + (n : ℤ) + 1

end

end A062877.P17413785635088716408

namespace A062877

/-- `A062879(and(n, -2)/2+1)-or(1, n)+n+1` -/
def P17413785635088716408.Spec : Prop :=
  ∀ n, P17413785635088716408.a n = A062877 n

end A062877

/-! ## A062877.P6994603431608144416

`A062879(n+1)+1-A036795(n)`
-/

namespace A062877.P6994603431608144416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (1 - A036795 n)

end

end A062877.P6994603431608144416

namespace A062877

/-- `A062879(n+1)+1-A036795(n)` -/
def P6994603431608144416.Spec : Prop :=
  ∀ n, P6994603431608144416.a n = A062877 n

end A062877

/-! ## A062877.P10855798388552143679

`A171070(n+1)-(A062879(n+1)+1)`
-/

namespace A062877.P10855798388552143679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1) - (A062879 (n + 1) + 1)

end

end A062877.P10855798388552143679

namespace A062877

/-- `A171070(n+1)-(A062879(n+1)+1)` -/
def P10855798388552143679.Spec : Prop :=
  ∀ n, P10855798388552143679.a n = A062877 n

end A062877

/-! ## A062877.P17418138450405610839

`A062879(A008619(n))+Δ[A008619(n)]`
-/

namespace A062877.P17418138450405610839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A062877.P17418138450405610839

namespace A062877

/-- `A062879(A008619(n))+Δ[A008619(n)]` -/
def P17418138450405610839.Spec : Prop :=
  ∀ n, P17418138450405610839.a n = A062877 n

end A062877

/-! ## A062877.P16646574487716589393

`A073089(2*(n+1))+A062879(A110654(n+1))`
-/

namespace A062877.P16646574487716589393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * (n + 1)) + A062879 (A110654 (n + 1)).toNat

end

end A062877.P16646574487716589393

namespace A062877

/-- `A073089(2*(n+1))+A062879(A110654(n+1))` -/
def P16646574487716589393.Spec : Prop :=
  ∀ n, P16646574487716589393.a n = A062877 n

end A062877

/-! ## A062877.P5445120663602343866

`eq[0, A356326(n)]`
-/

namespace A062877.P5445120663602343866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062877.P5445120663602343866

namespace A062877

/-- `eq[0, A356326(n)]` -/
def P5445120663602343866.Spec : Prop :=
  ∀ n, (P5445120663602343866.a n : ℤ) = A062877 n

end A062877

/-! ## A062877.P10116232481720177069

`A023443(A036796(n))`
-/

namespace A062877.P10116232481720177069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036796 n).toNat

end

end A062877.P10116232481720177069

namespace A062877

/-- `A023443(A036796(n))` -/
def P10116232481720177069.Spec : Prop :=
  ∀ n, P10116232481720177069.a n = A062877 n

end A062877

/-! ## A062877.P3806891285962563484

`A005206(A005206(A062879(n+1)))`
-/

namespace A062877.P3806891285962563484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A062879 (n + 1)).toNat).toNat

end

end A062877.P3806891285962563484

namespace A062877

/-- `A005206(A005206(A062879(n+1)))` -/
def P3806891285962563484.Spec : Prop :=
  ∀ n, P3806891285962563484.a n = A062877 n

end A062877

/-! ## A062877.P2220977239400240464

`record[A309076(n)]`
-/

namespace A062877.P2220977239400240464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062877.P2220977239400240464

namespace A062877

/-- `record[A309076(n)]` -/
def P2220977239400240464.Spec : Prop :=
  ∀ n, P2220977239400240464.a n = A062877 n

end A062877

/-! ## A062877.P1797861101020523671

`A019446(A036795(n))-1`
-/

namespace A062877.P1797861101020523671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A036795 n).toNat - 1

end

end A062877.P1797861101020523671

namespace A062877

/-- `A019446(A036795(n))-1` -/
def P1797861101020523671.Spec : Prop :=
  ∀ n, P1797861101020523671.a n = A062877 n

end A062877

/-! ## A062877.P4839449355182912345

`A060065(A171070(n+1))`
-/

namespace A062877.P4839449355182912345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060065 (A171070 (n + 1)).toNat

end

end A062877.P4839449355182912345

namespace A062877

/-- `A060065(A171070(n+1))` -/
def P4839449355182912345.Spec : Prop :=
  ∀ n, P4839449355182912345.a n = A062877 n

end A062877

/-! ## A062877.P16528016787942521928

`A334415(A062879(n+1))`
-/

namespace A062877.P16528016787942521928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A062879 (n + 1)).toNat

end

end A062877.P16528016787942521928

namespace A062877

/-- `A334415(A062879(n+1))` -/
def P16528016787942521928.Spec : Prop :=
  ∀ n, P16528016787942521928.a n = A062877 n

end A062877

/-! ## A062877.P1635625722637676813

`A189663(A062879(n+1)+1)`
-/

namespace A062877.P1635625722637676813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A062879 (n + 1) + 1).toNat

end

end A062877.P1635625722637676813

namespace A062877

/-- `A189663(A062879(n+1)+1)` -/
def P1635625722637676813.Spec : Prop :=
  ∀ n, P1635625722637676813.a n = A062877 n

end A062877

/-! ## A062877.P298619991840462070

`A022290(ceil(A000695(n)/2))`
-/

namespace A062877.P298619991840462070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 ⌈(A000695 n : ℚ) / 2⌉.toNat

end

end A062877.P298619991840462070

namespace A062877

/-- `A022290(ceil(A000695(n)/2))` -/
def P298619991840462070.Spec : Prop :=
  ∀ n, P298619991840462070.a n = A062877 n

end A062877

/-! ## A062877.P5304433421247255655

`A022290(round(A000695(n)/2))`
-/

namespace A062877.P5304433421247255655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway ((A000695 n : ℚ) / 2)).toNat

end

end A062877.P5304433421247255655

namespace A062877

/-- `A022290(round(A000695(n)/2))` -/
def P5304433421247255655.Spec : Prop :=
  ∀ n, P5304433421247255655.a n = A062877 n

end A062877

/-! ## A062877.P5684705239752932937

`A022290(round(A062880(n)/4))`
-/

namespace A062877.P5684705239752932937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway ((A062880 n : ℚ) / 4)).toNat

end

end A062877.P5684705239752932937

namespace A062877

/-- `A022290(round(A062880(n)/4))` -/
def P5684705239752932937.Spec : Prop :=
  ∀ n, P5684705239752932937.a n = A062877 n

end A062877

/-! ## A062877.P5325276801794673973

`record[A356327(n)]`
-/

namespace A062877.P5325276801794673973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062877.P5325276801794673973

namespace A062877

/-- `record[A356327(n)]` -/
def P5325276801794673973.Spec : Prop :=
  ∀ n, P5325276801794673973.a n = A062877 n

end A062877

/-! ## A062877.P844945063035759771

`A356327(A000695(n))`
-/

namespace A062877.P844945063035759771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (A000695 n).toNat

end

end A062877.P844945063035759771

namespace A062877

/-- `A356327(A000695(n))` -/
def P844945063035759771.Spec : Prop :=
  ∀ n, P844945063035759771.a n = A062877 n

end A062877

/-! ## A062877.P2477544704543753408

`∑[A212804(1-A088705(n²))]`
-/

namespace A062877.P2477544704543753408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (1 - A088705 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062877.P2477544704543753408

namespace A062877

/-- `∑[A212804(1-A088705(n²))]` -/
def P2477544704543753408.Spec : Prop :=
  ∀ n, P2477544704543753408.a n = A062877 n

end A062877

/-!
# A062878: a(n) is the position of A050614(n) in A062877.

The programs for A062878, the canonical program `A062878.P13213950142571259571` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062878 has offset 0).

The definition of A062878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062878.P13213950142571259571

`3*xor(floor(a(n-1)/2), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062878

/-- `3*xor(floor(a(n-1)/2), a(n-1))` -/
def P13213950142571259571.Spec : Prop :=
  ∀ n, P13213950142571259571.a n = A062878 n

theorem P13213950142571259571.correct : P13213950142571259571.Spec := by
  intro n
  simp only [A062878]

end A062878

/-! ## A062878.P9488296843214979866

`xor(ceil(3/2*a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A062878.P9488296843214979866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ (a (n - 1))

end

end A062878.P9488296843214979866

namespace A062878

/-- `xor(ceil(3/2*a(n-1)), a(n-1))` -/
def P9488296843214979866.Spec : Prop :=
  ∀ n, P9488296843214979866.a n = A062878 n

end A062878

/-! ## A062878.P10746580633615521033

`xor(round(3*a(n-1)/2), a(n-1))` with `a(0)=1`
-/

namespace A062878.P10746580633615521033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway (3 * ((a (n - 1) : ℚ) / 2))) (a (n - 1))

end

end A062878.P10746580633615521033

namespace A062878

/-- `xor(round(3*a(n-1)/2), a(n-1))` -/
def P10746580633615521033.Spec : Prop :=
  ∀ n, P10746580633615521033.a n = A062878 n

end A062878

/-! ## A062878.P10023666731977739689

`xor(floor(a(n-1)+(a(n-1)+1)/2), a(n-1))` with `a(0)=1`
-/

namespace A062878.P10023666731977739689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋ (a (n - 1))

end

end A062878.P10023666731977739689

namespace A062878

/-- `xor(floor(a(n-1)+(a(n-1)+1)/2), a(n-1))` -/
def P10023666731977739689.Spec : Prop :=
  ∀ n, P10023666731977739689.a n = A062878 n

end A062878

/-! ## A062878.P18094442881260294927

`A288807(Δ[n²])`
-/

namespace A062878.P18094442881260294927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062878.P18094442881260294927

namespace A062878

/-- `A288807(Δ[n²])` -/
def P18094442881260294927.Spec : Prop :=
  ∀ n, P18094442881260294927.a n = A062878 n

end A062878

/-! ## A062878.P17154913619024534898

`A285479(2*n)+char[A052551(n)]`
-/

namespace A062878.P17154913619024534898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285479 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062878.P17154913619024534898

namespace A062878

/-- `A285479(2*n)+char[A052551(n)]` -/
def P17154913619024534898.Spec : Prop :=
  ∀ n, P17154913619024534898.a n = A062878 n

end A062878

/-! ## A062878.P13244609537379844344

`xor(char[A052551(2*n)], A285479(2*n))`
-/

namespace A062878.P13244609537379844344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A285479 (2 * n))

end

end A062878.P13244609537379844344

namespace A062878

/-- `xor(char[A052551(2*n)], A285479(2*n))` -/
def P13244609537379844344.Spec : Prop :=
  ∀ n, P13244609537379844344.a n = A062878 n

end A062878

/-! ## A062878.P4836733944099352591

`xor((a(n-1)%2+3*a(n-1))/2, a(n-1))` with `a(0)=1`
-/

namespace A062878.P4836733944099352591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((Int.tmod (a (n - 1)) 2 + 3 * a (n - 1) : ℚ) / 2)) (a (n - 1))

end

end A062878.P4836733944099352591

namespace A062878

/-- `xor((a(n-1)%2+3*a(n-1))/2, a(n-1))` -/
def P4836733944099352591.Spec : Prop :=
  ∀ n, P4836733944099352591.a n = A062878 n

end A062878

/-! ## A062878.P11608074350817426065

`gcd(A288807(2*n+1), A288808(2*n+1))`
-/

namespace A062878.P11608074350817426065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288807 (2 * n + 1)) (A288808 (2 * n + 1))

end

end A062878.P11608074350817426065

namespace A062878

/-- `gcd(A288807(2*n+1), A288808(2*n+1))` -/
def P11608074350817426065.Spec : Prop :=
  ∀ n, (P11608074350817426065.a n : ℤ) = A062878 n

end A062878

/-! ## A062878.P14851820702028967868

`and(A278755(2*n), A288807(2*n+1))`
-/

namespace A062878.P14851820702028967868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278755 (2 * n)) (A288807 (2 * n + 1))

end

end A062878.P14851820702028967868

namespace A062878

/-- `and(A278755(2*n), A288807(2*n+1))` -/
def P14851820702028967868.Spec : Prop :=
  ∀ n, P14851820702028967868.a n = A062878 n

end A062878

/-! ## A062878.P3975756997186588565

`floor(A001317(2*n+1)/A000079(n+1))`
-/

namespace A062878.P3975756997186588565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A062878.P3975756997186588565

namespace A062878

/-- `floor(A001317(2*n+1)/A000079(n+1))` -/
def P3975756997186588565.Spec : Prop :=
  ∀ n, P3975756997186588565.a n = A062878 n

end A062878

/-! ## A062878.P8514815753134818576

`A126646(2*n+1)-A288811(2*n+1)`
-/

namespace A062878.P8514815753134818576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * n + 1) - A288811 (2 * n + 1)

end

end A062878.P8514815753134818576

namespace A062878

/-- `A126646(2*n+1)-A288811(2*n+1)` -/
def P8514815753134818576.Spec : Prop :=
  ∀ n, P8514815753134818576.a n = A062878 n

end A062878

/-! ## A062878.P10033429643177751657

`A277936(2*n+1)-A288811(2*n+1)`
-/

namespace A062878.P10033429643177751657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 (2 * n + 1) - A288811 (2 * n + 1)

end

end A062878.P10033429643177751657

namespace A062878

/-- `A277936(2*n+1)-A288811(2*n+1)` -/
def P10033429643177751657.Spec : Prop :=
  ∀ n, P10033429643177751657.a n = A062878 n

end A062878

/-! ## A062878.P15427508550632493419

`A285475(2*n+1)-A288811(2*n+1)`
-/

namespace A062878.P15427508550632493419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (2 * n + 1) - A288811 (2 * n + 1)

end

end A062878.P15427508550632493419

namespace A062878

/-- `A285475(2*n+1)-A288811(2*n+1)` -/
def P15427508550632493419.Spec : Prop :=
  ∀ n, P15427508550632493419.a n = A062878 n

end A062878

/-! ## A062878.P8687088857760071337

`floor(A001317(2*n+1)/A060546(2*(n+1)))`
-/

namespace A062878.P8687088857760071337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 (2 * n + 1) : ℚ) / (A060546 (2 * (n + 1)) : ℚ)⌋

end

end A062878.P8687088857760071337

namespace A062878

/-- `floor(A001317(2*n+1)/A060546(2*(n+1)))` -/
def P8687088857760071337.Spec : Prop :=
  ∀ n, P8687088857760071337.a n = A062878 n

end A062878

/-!
# A062879: Integers whose Zeckendorf expansion does not contain ones at even positions.

The programs for A062879, the canonical program `A062879.P8862703960269035905` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062879 has offset 1).

The definition of A062879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062879.P13801304769020692768

`A036795(n)+A062877(n)-1`
-/

namespace A062879.P13801304769020692768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n + (A062877 n - 1)

end

end A062879.P13801304769020692768

namespace A062879

/-- `A036795(n)+A062877(n)-1` -/
def P13801304769020692768.Spec : Prop :=
  ∀ n, P13801304769020692768.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P8862703960269035905

`A171070(n+1)-A036796(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062879

/-- `A171070(n+1)-A036796(n)` -/
def P8862703960269035905.Spec : Prop :=
  ∀ n, P8862703960269035905.a n = A062879 (n + 1)

theorem P8862703960269035905.correct : P8862703960269035905.Spec := by
  intro n
  simp only [A062879, Nat.add_sub_cancel]

end A062879

/-! ## A062879.P5778691213684885389

`A036795(n)+A036796(n)-2`
-/

namespace A062879.P5778691213684885389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n + (A036796 n - 2)

end

end A062879.P5778691213684885389

namespace A062879

/-- `A036795(n)+A036796(n)-2` -/
def P5778691213684885389.Spec : Prop :=
  ∀ n, P5778691213684885389.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P5896112330684398602

`A062877(2*n)`
-/

namespace A062879.P5896112330684398602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (2 * n)

end

end A062879.P5896112330684398602

namespace A062879

/-- `A062877(2*n)` -/
def P5896112330684398602.Spec : Prop :=
  ∀ n, P5896112330684398602.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P12564922186665721196

`A036796(2*n)-1`
-/

namespace A062879.P12564922186665721196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (2 * n) - 1

end

end A062879.P12564922186665721196

namespace A062879

/-- `A036796(2*n)-1` -/
def P12564922186665721196.Spec : Prop :=
  ∀ n, P12564922186665721196.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P7192583879696441276

`A036795(2*n)-A036795(n)`
-/

namespace A062879.P7192583879696441276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 (2 * n) - A036795 n

end

end A062879.P7192583879696441276

namespace A062879

/-- `A036795(2*n)-A036795(n)` -/
def P7192583879696441276.Spec : Prop :=
  ∀ n, P7192583879696441276.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P10375817899957041173

`A062877(Δ[n²])-1`
-/

namespace A062879.P10375817899957041173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A062879.P10375817899957041173

namespace A062879

/-- `A062877(Δ[n²])-1` -/
def P10375817899957041173.Spec : Prop :=
  ∀ n, P10375817899957041173.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P14880218147830100570

`record[A309076(n)+n]`
-/

namespace A062879.P14880218147830100570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062879.P14880218147830100570

namespace A062879

/-- `record[A309076(n)+n]` -/
def P14880218147830100570.Spec : Prop :=
  ∀ n, P14880218147830100570.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P14454095529715844613

`A022342(A036795(n))`
-/

namespace A062879.P14454095529715844613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A036795 n).toNat

end

end A062879.P14454095529715844613

namespace A062879

/-- `A022342(A036795(n))` -/
def P14454095529715844613.Spec : Prop :=
  ∀ n, P14454095529715844613.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P1762726685969145060

`eq[A096270(n), A356326(n)]`
-/

namespace A062879.P1762726685969145060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P1762726685969145060

namespace A062879

/-- `eq[A096270(n), A356326(n)]` -/
def P1762726685969145060.Spec : Prop :=
  ∀ n, (P1762726685969145060.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P7153459955723662953

`A023443(A036796(2*n))`
-/

namespace A062879.P7153459955723662953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036796 (2 * n)).toNat

end

end A062879.P7153459955723662953

namespace A062879

/-- `A023443(A036796(2*n))` -/
def P7153459955723662953.Spec : Prop :=
  ∀ n, P7153459955723662953.a n = A062879 (n + 1)

end A062879

/-! ## A062879.P18301509512650089423

`eq[A022340(n), A215024(n)]`
-/

namespace A062879.P18301509512650089423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P18301509512650089423

namespace A062879

/-- `eq[A022340(n), A215024(n)]` -/
def P18301509512650089423.Spec : Prop :=
  ∀ n, (P18301509512650089423.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P13760862863808682189

`eq[A003714(n), A345291(n)]`
-/

namespace A062879.P13760862863808682189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P13760862863808682189

namespace A062879

/-- `eq[A003714(n), A345291(n)]` -/
def P13760862863808682189.Spec : Prop :=
  ∀ n, (P13760862863808682189.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P94923738787678404

`eq[A078588(n), A356326(n)]`
-/

namespace A062879.P94923738787678404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P94923738787678404

namespace A062879

/-- `eq[A078588(n), A356326(n)]` -/
def P94923738787678404.Spec : Prop :=
  ∀ n, (P94923738787678404.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P7739513301390384873

`eq[A356326(n), A356749(n)]`
-/

namespace A062879.P7739513301390384873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P7739513301390384873

namespace A062879

/-- `eq[A356326(n), A356749(n)]` -/
def P7739513301390384873.Spec : Prop :=
  ∀ n, (P7739513301390384873.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P13461877300591576520

`eq[A014677(n), A165276(n+1)]`
-/

namespace A062879.P13461877300591576520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P13461877300591576520

namespace A062879

/-- `eq[A014677(n), A165276(n+1)]` -/
def P13461877300591576520.Spec : Prop :=
  ∀ n, (P13461877300591576520.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P8415040429790774143

`eq[A189661(n+1), A356326(n)]`
-/

namespace A062879.P8415040429790774143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062879.P8415040429790774143

namespace A062879

/-- `eq[A189661(n+1), A356326(n)]` -/
def P8415040429790774143.Spec : Prop :=
  ∀ n, (P8415040429790774143.a n : ℤ) = A062879 (n + 1)

end A062879

/-! ## A062879.P17880154110972054333

`∩[A004956(n), A062877(n)]`
-/

namespace A062879.P17880154110972054333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062879.P17880154110972054333

namespace A062879

/-- `∩[A004956(n), A062877(n)]` -/
def P17880154110972054333.Spec : Prop :=
  ∀ n, (P17880154110972054333.a n : ℤ) = A062879 (n + 1)

end A062879

/-!
# A062880: Zero together with the numbers which can be written as a sum of distinct odd powers of 2.

The programs for A062880, the canonical program `A062880.P2055745413581106128` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062880 has offset 0).

The definition of A062880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062880.P2055745413581106128

`2*A000695(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062880

/-- `2*A000695(n)` -/
def P2055745413581106128.Spec : Prop :=
  ∀ n, P2055745413581106128.a n = A062880 n

theorem P2055745413581106128.correct : P2055745413581106128.Spec := by
  intro n
  simp only [A062880]

end A062880

/-! ## A062880.P1898629367298704562

`2*(2*∑[and(n, -n)²]+n)/3`
-/

namespace A062880.P1898629367298704562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)

end

end A062880.P1898629367298704562

namespace A062880

/-- `2*(2*∑[and(n, -n)²]+n)/3` -/
def P1898629367298704562.Spec : Prop :=
  ∀ n, P1898629367298704562.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P3417560284498533384

`a(n-1)+(xor(n, -n)²+2)/3` with `a(0)=0`
-/

namespace A062880.P3417560284498533384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 + 2 : ℚ) / 3

end

end A062880.P3417560284498533384

namespace A062880

/-- `a(n-1)+(xor(n, -n)²+2)/3` -/
def P3417560284498533384.Spec : Prop :=
  ∀ n, P3417560284498533384.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P7250241540331220563

`2*4*∑[ceil(xor(n, -n)²/3)]/8`
-/

namespace A062880.P7250241540331220563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 8)

end

end A062880.P7250241540331220563

namespace A062880

/-- `2*4*∑[ceil(xor(n, -n)²/3)]/8` -/
def P7250241540331220563.Spec : Prop :=
  ∀ n, P7250241540331220563.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P17382661923341672627

`A147568(n)-3`
-/

namespace A062880.P17382661923341672627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147568 n - 3

end

end A062880.P17382661923341672627

namespace A062880

/-- `A147568(n)-3` -/
def P17382661923341672627.Spec : Prop :=
  ∀ n, P17382661923341672627.a n = A062880 n

end A062880

/-! ## A062880.P1166980334627154059

`A127988(n)/4`
-/

namespace A062880.P1166980334627154059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127988 n : ℚ) / 4

end

end A062880.P1166980334627154059

namespace A062880

/-- `A127988(n)/4` -/
def P1166980334627154059.Spec : Prop :=
  ∀ n, P1166980334627154059.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P5641484251093571605

`A145812(n+1)-1`
-/

namespace A062880.P5641484251093571605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 (n + 1) - 1

end

end A062880.P5641484251093571605

namespace A062880

/-- `A145812(n+1)-1` -/
def P5641484251093571605.Spec : Prop :=
  ∀ n, P5641484251093571605.a n = A062880 n

end A062880

/-! ## A062880.P2339411887918837935

`2*(A098871(n)-1)`
-/

namespace A062880.P2339411887918837935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098871 n - 1)

end

end A062880.P2339411887918837935

namespace A062880

/-- `2*(A098871(n)-1)` -/
def P2339411887918837935.Spec : Prop :=
  ∀ n, P2339411887918837935.a n = A062880 n

end A062880

/-! ## A062880.P6302664155949803302

`2/3*A001196(n)`
-/

namespace A062880.P6302664155949803302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A001196 n : ℚ)

end

end A062880.P6302664155949803302

namespace A062880

/-- `2/3*A001196(n)` -/
def P6302664155949803302.Spec : Prop :=
  ∀ n, P6302664155949803302.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P1534594647174407789

`floor(A145818(n+1)/2)`
-/

namespace A062880.P1534594647174407789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145818 (n + 1) : ℚ) / 2⌋

end

end A062880.P1534594647174407789

namespace A062880

/-- `floor(A145818(n+1)/2)` -/
def P1534594647174407789.Spec : Prop :=
  ∀ n, P1534594647174407789.a n = A062880 n

end A062880

/-! ## A062880.P6427043326906463066

`(A145849(n+1)-1)/4`
-/

namespace A062880.P6427043326906463066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145849 (n + 1) - 1 : ℚ) / 4

end

end A062880.P6427043326906463066

namespace A062880

/-- `(A145849(n+1)-1)/4` -/
def P6427043326906463066.Spec : Prop :=
  ∀ n, P6427043326906463066.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P5344345627553719617

`A001196(n)-A000695(n)`
-/

namespace A062880.P5344345627553719617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - A000695 n

end

end A062880.P5344345627553719617

namespace A062880

/-- `A001196(n)-A000695(n)` -/
def P5344345627553719617.Spec : Prop :=
  ∀ n, P5344345627553719617.a n = A062880 n

end A062880

/-! ## A062880.P9700568262743326579

`A383976(n)-A374625(n)`
-/

namespace A062880.P9700568262743326579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383976 n - A374625 n

end

end A062880.P9700568262743326579

namespace A062880

/-- `A383976(n)-A374625(n)` -/
def P9700568262743326579.Spec : Prop :=
  ∀ n, P9700568262743326579.a n = A062880 n

end A062880

/-! ## A062880.P6111277607576762347

`xor(A010705(n), A147568(n))`
-/

namespace A062880.P6111277607576762347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010705 n) (A147568 n)

end

end A062880.P6111277607576762347

namespace A062880

/-- `xor(A010705(n), A147568(n))` -/
def P6111277607576762347.Spec : Prop :=
  ∀ n, P6111277607576762347.a n = A062880 n

end A062880

/-! ## A062880.P9694828743209033385

`A145818(n+1)%A145812(n+1)`
-/

namespace A062880.P9694828743209033385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145818 (n + 1)) (A145812 (n + 1))

end

end A062880.P9694828743209033385

namespace A062880

/-- `A145818(n+1)%A145812(n+1)` -/
def P9694828743209033385.Spec : Prop :=
  ∀ n, P9694828743209033385.a n = A062880 n

end A062880

/-! ## A062880.P3512528197028115913

`A000695(or(n, A048298(n)))+A000695(n)`
-/

namespace A062880.P3512528197028115913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (Int.lor (n : ℤ) (A048298 n)).toNat + A000695 n

end

end A062880.P3512528197028115913

namespace A062880

/-- `A000695(or(n, A048298(n)))+A000695(n)` -/
def P3512528197028115913.Spec : Prop :=
  ∀ n, P3512528197028115913.a n = A062880 n

end A062880

/-! ## A062880.P16141530838624045380

`A212591(Δ[n²])`
-/

namespace A062880.P16141530838624045380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062880.P16141530838624045380

namespace A062880

/-- `A212591(Δ[n²])` -/
def P16141530838624045380.Spec : Prop :=
  ∀ n, P16141530838624045380.a n = A062880 n

end A062880

/-! ## A062880.P4606890168885505143

`lcm(2, A212591(2*n+1))`
-/

namespace A062880.P4606890168885505143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212591 (2 * n + 1))

end

end A062880.P4606890168885505143

namespace A062880

/-- `lcm(2, A212591(2*n+1))` -/
def P4606890168885505143.Spec : Prop :=
  ∀ n, (P4606890168885505143.a n : ℤ) = A062880 n

end A062880

/-! ## A062880.P5149266195612909323

`xor(1, A098871(2*n))/2`
-/

namespace A062880.P5149266195612909323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A098871 (2 * n)) : ℚ) / 2

end

end A062880.P5149266195612909323

namespace A062880

/-- `xor(1, A098871(2*n))/2` -/
def P5149266195612909323.Spec : Prop :=
  ∀ n, P5149266195612909323.a n = (A062880 n : ℚ)

end A062880

/-! ## A062880.P2998259832400019583

`A350094(2*n)+A213673(2*n+1)`
-/

namespace A062880.P2998259832400019583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350094 (2 * n) + A213673 (2 * n + 1)

end

end A062880.P2998259832400019583

namespace A062880

/-- `A350094(2*n)+A213673(2*n+1)` -/
def P2998259832400019583.Spec : Prop :=
  ∀ n, P2998259832400019583.a n = A062880 n

end A062880

/-!
# A062881: Number of partitions of n^2 into exactly n nonzero parts, such that there are at most one 1's, two 2's, ... n-1 n-1's, n n's, n-1 n+1's, ... two 2n-2's and one 2n-1.

The programs for A062881, there is no canonical definition to state claims against.
-/

/-! ## A062881.P13659772986629962311

`∑[A099741(A099240(n))]`
-/

namespace A062881.P13659772986629962311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A099240 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062881.P13659772986629962311

/-! ## A062881.P3769292361412351204

`A260734(A027610(n+3))`
-/

namespace A062881.P3769292361412351204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A027610 (n + 3)).toNat

end

end A062881.P3769292361412351204

/-!
# A062882: a(n) = (1 - 2*cos(Pi/9))^n + (1 + 2*cos(Pi*2/9))^n + (1 + 2*cos(Pi*4/9))^n.

The programs for A062882, the canonical program `A062882.P1882399283614407691` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062882 has offset 1).

The definition of A062882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062882.P1882399283614407691

`3*(a(n-1)-a(n-3))` with `a(0)=3, a(1)=9, a(2)=18`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062882

/-- `3*(a(n-1)-a(n-3))` -/
def P1882399283614407691.Spec : Prop :=
  ∀ n, P1882399283614407691.a n = A062882 (n + 1)

theorem P1882399283614407691.correct : P1882399283614407691.Spec := by
  intro n
  simp only [A062882, Nat.add_sub_cancel]

end A062882

/-! ## A062882.P9015921275701260521

`3*A187501(3*n+4)`
-/

namespace A062882.P9015921275701260521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187501 (3 * n + 4)

end

end A062882.P9015921275701260521

namespace A062882

/-- `3*A187501(3*n+4)` -/
def P9015921275701260521.Spec : Prop :=
  ∀ n, P9015921275701260521.a n = A062882 (n + 1)

end A062882

/-! ## A062882.P1234194850212704904

`3*A187499(A112414(n))`
-/

namespace A062882.P1234194850212704904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A187499 (A112414 n).toNat

end

end A062882.P1234194850212704904

namespace A062882

/-- `3*A187499(A112414(n))` -/
def P1234194850212704904.Spec : Prop :=
  ∀ n, P1234194850212704904.a n = A062882 (n + 1)

end A062882

/-! ## A062882.P12211374343624173422

`Δ[A090400(n+3)]%Δ[A090400(n+1)]`
-/

namespace A062882.P12211374343624173422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090400 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A062882.P12211374343624173422

namespace A062882

/-- `Δ[A090400(n+3)]%Δ[A090400(n+1)]` -/
def P12211374343624173422.Spec : Prop :=
  ∀ n, P12211374343624173422.a n = A062882 (n + 1)

end A062882

/-!
# A062883: (1-2*cos(1/11*Pi))^n+(1+2*cos(2/11*Pi))^n+(1-2*cos(3/11*Pi))^n+(1+2*cos(4/11*Pi))^n+(1-2*cos(5/11*Pi))^n.

The programs for A062883, the canonical program `A062883.P17430366782360753676` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062883 has offset 1).

The definition of A062883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062883.P17430366782360753676

`A189235(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062883

/-- `A189235(n+1)` -/
def P17430366782360753676.Spec : Prop :=
  ∀ n, P17430366782360753676.a n = A062883 (n + 1)

theorem P17430366782360753676.correct : P17430366782360753676.Spec := by
  intro n
  simp only [A062883, Nat.add_sub_cancel]

end A062883

/-! ## A062883.P3848837235577550892

`record[A189235(A065648(n))]`
-/

namespace A062883.P3848837235577550892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062883.P3848837235577550892

namespace A062883

/-- `record[A189235(A065648(n))]` -/
def P3848837235577550892.Spec : Prop :=
  ∀ n, P3848837235577550892.a n = A062883 (n + 1)

end A062883

/-! ## A062883.P2350921096720281336

`ratio[A189235(n)]*A189235(n)`
-/

namespace A062883.P2350921096720281336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A189235 n : ℚ)

end

end A062883.P2350921096720281336

namespace A062883

/-- `ratio[A189235(n)]*A189235(n)` -/
def P2350921096720281336.Spec : Prop :=
  ∀ n, P2350921096720281336.a n = (A062883 (n + 1) : ℚ)

end A062883

/-! ## A062883.P8270726492334576378

`record[A189235(n)]-A000007(n)`
-/

namespace A062883.P8270726492334576378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n

end

end A062883.P8270726492334576378

namespace A062883

/-- `record[A189235(n)]-A000007(n)` -/
def P8270726492334576378.Spec : Prop :=
  ∀ n, P8270726492334576378.a n = A062883 (n + 1)

end A062883

/-! ## A062883.P9848233665430548197

`record[A189235(A020986(n))]`
-/

namespace A062883.P9848233665430548197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062883.P9848233665430548197

namespace A062883

/-- `record[A189235(A020986(n))]` -/
def P9848233665430548197.Spec : Prop :=
  ∀ n, P9848233665430548197.a n = A062883 (n + 1)

end A062883

/-! ## A062883.P8892732478295498350

`record[A189235(A028920(n))]`
-/

namespace A062883.P8892732478295498350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062883.P8892732478295498350

namespace A062883

/-- `record[A189235(A028920(n))]` -/
def P8892732478295498350.Spec : Prop :=
  ∀ n, P8892732478295498350.a n = A062883 (n + 1)

end A062883

/-!
# A062884: When expressed in base 3 and then interpreted in base 7, is a multiple of the original number.

The programs for A062884, there is no canonical definition to state claims against.
-/

/-! ## A062884.P6834370636895302193

`record[gcd(n, A037455(n))]`
-/

namespace A062884.P6834370636895302193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037455 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062884.P6834370636895302193

/-! ## A062884.P13186165341843948738

`lt[A037455(n)%A028310(n), 1]`
-/

namespace A062884.P13186165341843948738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) (A028310 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062884.P13186165341843948738

/-! ## A062884.P6619738325388721546

`record[and(A057944(n), A193899(n))]`
-/

namespace A062884.P6619738325388721546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057944 n) (A193899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062884.P6619738325388721546

/-! ## A062884.P15291380084937501524

`record[and(A229742(n), A301608(n+1))]`
-/

namespace A062884.P15291380084937501524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229742 n) (A301608 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062884.P15291380084937501524

/-! ## A062884.P3478659751783530971

`record[abs(A053985(A349465(2*n+1)))]`
-/

namespace A062884.P3478659751783530971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053985 (A349465 (2 * n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062884.P3478659751783530971

/-!
# A062886: Smallest multiple of 2n+1 with property that digits are odd and each digit is two more (mod 10) than the previous digit; or 0 if no such number exists.

The programs for A062886, there is no canonical definition to state claims against.
-/

/-! ## A062886.P11610943336717884453

`lcm(2*n+1, 1-A022564(Δ[n²]))`
-/

namespace A062886.P11610943336717884453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (1 - A022564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A062886.P11610943336717884453

/-! ## A062886.P7010270139167473745

`A014498(n^4*a(n-1)+2)-2` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A062886.P7010270139167473745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 9] fun n a =>
  A014498 ((n ^ 4 : ℤ) * a (n - 1) + 2).toNat - 2

end

end A062886.P7010270139167473745

/-!
# A062887: Smallest multiple of 2n+1 with the property that its digits are odd and each digit is two less (mod 10) than the previous digit, or 0 if no such number exists.

The programs for A062887, there is no canonical definition to state claims against.
-/

/-! ## A062887.P11638253011385193026

`or(2*n+1, A385156(2*n+1))`
-/

namespace A062887.P11638253011385193026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A385156 (2 * n + 1))

end

end A062887.P11638253011385193026

/-! ## A062887.P137883676226746092

`Δ[n²]+A139420(60*(n+1))-2`
-/

namespace A062887.P137883676226746092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A139420 (60 * (n + 1)) - 2)

end

end A062887.P137883676226746092

/-!
# A062888: Smallest palindromic multiple of n-th prime.

The programs for A062888, there is no canonical definition to state claims against.
-/

/-! ## A062888.P13288702728071498683

`A020485(Δ[A007504(n)])`
-/

namespace A062888.P13288702728071498683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (f1 (n + 1) - f1 n).toNat

end

end A062888.P13288702728071498683

/-! ## A062888.P2928323504914048901

`A020485(A000040(n+1))`
-/

namespace A062888.P2928323504914048901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A000040 (n + 1)).toNat

end

end A062888.P2928323504914048901

/-! ## A062888.P3283198132433843116

`A020485(A008578(n+2))`
-/

namespace A062888.P3283198132433843116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A008578 (n + 2)).toNat

end

end A062888.P3283198132433843116

/-! ## A062888.P8215740567370757245

`A020485(A182986(n+2))`
-/

namespace A062888.P8215740567370757245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A182986 (n + 2)).toNat

end

end A062888.P8215740567370757245

/-! ## A062888.P12890197832238686751

`A020485(eq[1, A003415(n)])`
-/

namespace A062888.P12890197832238686751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062888.P12890197832238686751

/-! ## A062888.P10793667965515750688

`A020485(record[A006530(n+2)])`
-/

namespace A062888.P10793667965515750688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062888.P10793667965515750688

/-! ## A062888.P993940901456375965

`A020485(record[A020639(n+2)])`
-/

namespace A062888.P993940901456375965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062888.P993940901456375965

/-! ## A062888.P2710320113053330808

`A062279(record[A006530(n+2)])`
-/

namespace A062888.P2710320113053330808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062888.P2710320113053330808

/-! ## A062888.P8589804189718917424

`A062279(record[A020639(n+2)])`
-/

namespace A062888.P8589804189718917424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062888.P8589804189718917424

/-! ## A062888.P1280188490637924924

`A062279(A001748(n+1)/3)`
-/

namespace A062888.P1280188490637924924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A062888.P1280188490637924924

/-! ## A062888.P14634756296008202895

`A062279(∑{d}[n+1, A007444(#)])`
-/

namespace A062888.P14634756296008202895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (∑ d ∈ Nat.divisors (f1 n), A007444 d).toNat

end

end A062888.P14634756296008202895

/-! ## A062888.P917574990649238674

`A062279(∏{d}[A000040(2*n-(n-1)), #])`
-/

namespace A062888.P917574990649238674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A062888.P917574990649238674

/-!
# A062889: When expressed in base 3 and then interpreted in base 8, is a multiple of the original number.

The programs for A062889, there is no canonical definition to state claims against.
-/

/-! ## A062889.P11308343308209090760

`record[gcd(n, A037456(n))]`
-/

namespace A062889.P11308343308209090760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062889.P11308343308209090760

/-! ## A062889.P18330425938502106176

`lt[A139251(A145731(n+1)), 17]`
-/

namespace A062889.P18330425938502106176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A145731 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062889.P18330425938502106176

/-! ## A062889.P18356516839629246451

`round(A303363(A148425(n))+sqrt(n))`
-/

namespace A062889.P18356516839629246451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A303363 (A148425 n).toNat : ℝ) + Real.sqrt (n : ℝ))

end

end A062889.P18356516839629246451

/-! ## A062889.P17587103537195066388

`∑[A003023(A000701(2*(n+1)))]`
-/

namespace A062889.P17587103537195066388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (A000701 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062889.P17587103537195066388

/-! ## A062889.P7326239198689198061

`eq[A024940(n), A033762(A333191(n))]`
-/

namespace A062889.P7326239198689198061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A333191 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062889.P7326239198689198061

/-!
# A062890: Number of quadrilaterals that can be formed with perimeter n. In other words, number of partitions of n into four parts such that the sum of any three is more than the fourth.

The programs for A062890, the canonical program `A062890.P5257979174450164167` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062890 has offset 0).

The definition of A062890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062890.P5257979174450164167

`A026810(n)-A181120(A004526(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062890

/-- `A026810(n)-A181120(A004526(n))` -/
def P5257979174450164167.Spec : Prop :=
  ∀ n, P5257979174450164167.a n = A062890 n

theorem P5257979174450164167.correct : P5257979174450164167.Spec := by
  intro n
  simp only [A062890]

end A062890

/-! ## A062890.P6942243558648361059

`A181120(A080513(n))-A005044(n)`
-/

namespace A062890.P6942243558648361059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A080513 n).toNat - A005044 n

end

end A062890.P6942243558648361059

namespace A062890

/-- `A181120(A080513(n))-A005044(n)` -/
def P6942243558648361059.Spec : Prop :=
  ∀ n, P6942243558648361059.a n = A062890 n

end A062890

/-! ## A062890.P11626214187213110654

`∑[A005044(A093178(n))]-A005044(n)`
-/

namespace A062890.P11626214187213110654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005044 n

end

end A062890.P11626214187213110654

namespace A062890

/-- `∑[A005044(A093178(n))]-A005044(n)` -/
def P11626214187213110654.Spec : Prop :=
  ∀ n, P11626214187213110654.a n = A062890 n

end A062890

/-! ## A062890.P3169746308037640775

`∑[A005044(n*A000035(n))]-A005044(n)`
-/

namespace A062890.P3169746308037640775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005044 n

end

end A062890.P3169746308037640775

namespace A062890

/-- `∑[A005044(n*A000035(n))]-A005044(n)` -/
def P3169746308037640775.Spec : Prop :=
  ∀ n, P3169746308037640775.a n = A062890 n

end A062890

/-! ## A062890.P3310622108244436681

`A026810(n)-A181120(A008615(3*n))`
-/

namespace A062890.P3310622108244436681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A181120 (A008615 (3 * n)).toNat

end

end A062890.P3310622108244436681

namespace A062890

/-- `A026810(n)-A181120(A008615(3*n))` -/
def P3310622108244436681.Spec : Prop :=
  ∀ n, P3310622108244436681.a n = A062890 n

end A062890

/-!
# A062891: When expressed in base 3 and then interpreted in base 9, is a multiple of the original number.

The programs for A062891, there is no canonical definition to state claims against.
-/

/-! ## A062891.P1551521324676372935

`record[gcd(n, A037314(n))]`
-/

namespace A062891.P1551521324676372935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037314 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062891.P1551521324676372935

/-! ## A062891.P4923944318858647574

`eq[0, A037314(n)%A028310(n)]`
-/

namespace A062891.P4923944318858647574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037314 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062891.P4923944318858647574

/-! ## A062891.P13700731914190627916

`eq[0, A338086(n)%A008574(n)]`
-/

namespace A062891.P13700731914190627916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338086 n) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062891.P13700731914190627916

/-! ## A062891.P11129981554786666238

`record[gcd(A338086(n)/4, A254667(n))]`
-/

namespace A062891.P11129981554786666238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A338086 n : ℚ) / 4)) (A254667 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062891.P11129981554786666238

/-! ## A062891.P15989368642829571581

`lt[A338086(3*n)%A008574(n), 1]`
-/

namespace A062891.P15989368642829571581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338086 (3 * n)) (A008574 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062891.P15989368642829571581

/-!
# A062892: Number of squares that can be obtained by permuting the digits of n.

The programs for A062892, there is no canonical definition to state claims against.
-/

/-! ## A062892.P18145139343672975371

`and(A118553(n+1), A239210(n+1))`
-/

namespace A062892.P18145139343672975371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118553 (n + 1)) (A239210 (n + 1))

end

end A062892.P18145139343672975371

/-! ## A062892.P5628168779883057671

`A057211(A069972(n+1))*A118553(n+1)`
-/

namespace A062892.P5628168779883057671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A069972 (n + 1)).toNat * A118553 (n + 1)

end

end A062892.P5628168779883057671

/-! ## A062892.P10509113928646643385

`A057211(A083312(n+1))*A118553(n+1)`
-/

namespace A062892.P10509113928646643385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A083312 (n + 1)).toNat * A118553 (n + 1)

end

end A062892.P10509113928646643385

/-! ## A062892.P4685849866863360294

`A000007(n²)+char[A007936(n+1)]`
-/

namespace A062892.P4685849866863360294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062892.P4685849866863360294

/-! ## A062892.P10726629653095440945

`(A000007(∑[2*n+1])+char[A007936(n+1)])^n`
-/

namespace A062892.P10726629653095440945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ n

end

end A062892.P10726629653095440945

/-! ## A062892.P10162844668007754451

`A055778(A151878(n)+char[A007936(n+1)])`
-/

namespace A062892.P10162844668007754451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A151878 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062892.P10162844668007754451

/-! ## A062892.P5485861367883406081

`A084091(A151878(n)+char[A007936(n+1)])`
-/

namespace A062892.P5485861367883406081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A151878 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062892.P5485861367883406081

/-! ## A062892.P11569513013302161344

`A101666(A151878(n)+char[A007936(n+1)])`
-/

namespace A062892.P11569513013302161344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A151878 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062892.P11569513013302161344

/-! ## A062892.P17564038759601663354

`A118759(A151878(n)+char[A007936(n+1)])`
-/

namespace A062892.P17564038759601663354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007936 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151878 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A062892.P17564038759601663354

/-! ## A062892.P4844924380018219948

`and(A118553(n+1), A166285(n))`
-/

namespace A062892.P4844924380018219948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118553 (n + 1)) (A166285 n)

end

end A062892.P4844924380018219948

/-!
# A062893: Number of squares that can be obtained by using some or all of the digits of n.

The programs for A062893, there is no canonical definition to state claims against.
-/

/-! ## A062893.P17415238791098934141

`A035222(n)/A009195(A190783(n))`
-/

namespace A062893.P17415238791098934141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035222 n : ℚ) / (A009195 (A190783 n).toNat : ℚ)

end

end A062893.P17415238791098934141

/-! ## A062893.P14823491325135586513

`A353849(A304199(n+4)%A371783(2*(n+2)))`
-/

namespace A062893.P14823491325135586513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Int.tmod (A304199 (n + 4)) (A371783 (2 * (n + 2)))).toNat

end

end A062893.P14823491325135586513

/-! ## A062893.P2059168936791017946

`and(A000700(A333488(3*(n+1))), A185102(n+2))`
-/

namespace A062893.P2059168936791017946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000700 (A333488 (3 * (n + 1))).toNat) (A185102 (n + 2))

end

end A062893.P2059168936791017946

/-! ## A062893.P7887016318975530900

`A287174(A027748(2*n+5)*A370532(3*(n+1)))`
-/

namespace A062893.P7887016318975530900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287174 (A027748 (2 * n + 5) * A370532 (3 * (n + 1))).toNat

end

end A062893.P7887016318975530900

/-! ## A062893.P17578710546903692659

`A216577(n)+A090173(3^floor(n/2))-A024153(n+1)`
-/

namespace A062893.P17578710546903692659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216577 n + A090173 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat - A024153 (n + 1)

end

end A062893.P17578710546903692659

/-!
# A062894: The prime indices of sequence A067836 (that sequence is conjectured to contain only primes).

The programs for A062894, there is no canonical definition to state claims against.
-/

/-! ## A062894.P16726589642426500084

`A000720(A067836(n+1))`
-/

namespace A062894.P16726589642426500084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067836 (n + 1)).toNat

end

end A062894.P16726589642426500084

/-! ## A062894.P15903974561780094017

`A061395(2*A067836(n+1))`
-/

namespace A062894.P15903974561780094017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A067836 (n + 1)).toNat

end

end A062894.P15903974561780094017

/-! ## A062894.P5165270318635401015

`A055396(p?[A067836(n+1)])`
-/

namespace A062894.P5165270318635401015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062894.P5165270318635401015

/-! ## A062894.P1430819635870146230

`A290103(p?[A067836(n+1)])`
-/

namespace A062894.P1430819635870146230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062894.P1430819635870146230

/-! ## A062894.P17484367432193367323

`A036234(A067836(n+1)-1)`
-/

namespace A062894.P17484367432193367323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A067836 (n + 1) - 1).toNat

end

end A062894.P17484367432193367323

/-! ## A062894.P11489938259782266818

`∑{d}[A067836(n+1), A055396(#)]`
-/

namespace A062894.P11489938259782266818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A062894.P11489938259782266818

/-! ## A062894.P16247449522191783274

`A290103(lcm(2, A067836(n+1))/2)`
-/

namespace A062894.P16247449522191783274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (SequenceMachineLib.roundAway ((Int.lcm 2 (A067836 (n + 1)) : ℚ) / 2)).toNat

end

end A062894.P16247449522191783274

/-! ## A062894.P18172798657554943548

`A290103(2*A067836(n+1)-A067836(n+1))`
-/

namespace A062894.P18172798657554943548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A067836 (n + 1) - A067836 (n + 1)).toNat

end

end A062894.P18172798657554943548

/-! ## A062894.P10111105071128789013

`A290103(2*A067836(n+1))`
-/

namespace A062894.P10111105071128789013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A067836 (n + 1)).toNat

end

end A062894.P10111105071128789013

/-! ## A062894.P10392407350472224433

`A290103(lcm(2, A067836(n+1)))`
-/

namespace A062894.P10392407350472224433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (Int.lcm 2 (A067836 (n + 1)))

end

end A062894.P10392407350472224433

/-!
# A062895: Numbers k for which d(k) = d(R(k)), where R(k) is the reversal of k and d(k) is the number of divisors of k.

The programs for A062895, there is no canonical definition to state claims against.
-/

/-! ## A062895.P3547351627533124946

`∪[A085869(n+1), A087093(n+1)]`
-/

namespace A062895.P3547351627533124946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062895.P3547351627533124946

/-! ## A062895.P5432669203704707888

`∪[A085869(n+1), A350867(n+1)]`
-/

namespace A062895.P5432669203704707888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062895.P5432669203704707888

/-! ## A062895.P16873837260614008178

`eq[A000005(n+1), A000005(A004086(n+1))]+1`
-/

namespace A062895.P16873837260614008178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062895.P16873837260614008178

/-! ## A062895.P17025229321947077646

`eq[A032741(A004086(n+1)), A032741(n+1)]+1`
-/

namespace A062895.P17025229321947077646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062895.P17025229321947077646

/-! ## A062895.P7978122455075543129

`∪[A085869(n+1), A354745(n+1)]%A354745(n+1)`
-/

namespace A062895.P7978122455075543129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A354745 (n + 1))

end

end A062895.P7978122455075543129

/-!
# A062897: Number and its reversal are both multiples of 2.

The programs for A062897, there is no canonical definition to state claims against.
-/

/-! ## A062897.P7260031213881820440

`lt[0, 1-val(A055483(n+1)+1, 2)]+1`
-/

namespace A062897.P7260031213881820440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A055483 (n + 1) + 1).toNat 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062897.P7260031213881820440

/-! ## A062897.P9266808463499716229

`2*lt[n, A107130(2*n)]`
-/

namespace A062897.P9266808463499716229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062897.P9266808463499716229

/-! ## A062897.P16486057505636507998

`eq[0, and(1, A256755(n+1))]+1`
-/

namespace A062897.P16486057505636507998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256755 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062897.P16486057505636507998

/-! ## A062897.P14323753547165767875

`eq[2, and(2, (A056524(n+1)+3)*2*n)]+1`
-/

namespace A062897.P14323753547165767875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((A056524 (n + 1) + 3) * (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062897.P14323753547165767875

/-! ## A062897.P8797671619902538816

`eq[1, A019428(A256755(n))]`
-/

namespace A062897.P8797671619902538816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062897.P8797671619902538816

/-! ## A062897.P2580760442279568778

`eq[2, A280193(gcd(n, A338827(n)))]`
-/

namespace A062897.P2580760442279568778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Int.gcd (n : ℤ) (A338827 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062897.P2580760442279568778

/-! ## A062897.P15532370829023088665

`eq[and(1, A256755(n)), A000038(n)]`
-/

namespace A062897.P15532370829023088665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256755 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P15532370829023088665

/-! ## A062897.P11746199681581973063

`eq[2, A019426(A004086(n))+A019426(n)]`
-/

namespace A062897.P11746199681581973063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A004086 n).toNat + A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062897.P11746199681581973063

/-! ## A062897.P18192227271716401469

`eq[A019425(A004086(n)+2), A019425(n)]`
-/

namespace A062897.P18192227271716401469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A004086 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P18192227271716401469

/-! ## A062897.P17224205309988551160

`eq[A266220(A004086(n)+2), A266220(n)]`
-/

namespace A062897.P17224205309988551160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A004086 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P17224205309988551160

/-! ## A062897.P11549099674219495883

`eq[A266437(A004086(n)+2), A266437(n)]`
-/

namespace A062897.P11549099674219495883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (A004086 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P11549099674219495883

/-! ## A062897.P18231273389143227399

`eq[2*A084099(A004086(n)), A084099(n)]`
-/

namespace A062897.P18231273389143227399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084099 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P18231273389143227399

/-! ## A062897.P12001346139671776211

`eq[A000007(n), A010873(2*A256755(n))]`
-/

namespace A062897.P12001346139671776211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P12001346139671776211

/-! ## A062897.P17097166038064631382

`eq[A000038(n), A010873(2*A256755(n))]`
-/

namespace A062897.P17097166038064631382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062897.P17097166038064631382

/-! ## A062897.P1476761722257661581

`A273892(A004279(n+1))`
-/

namespace A062897.P1476761722257661581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (A004279 (n + 1)).toNat

end

end A062897.P1476761722257661581

/-! ## A062897.P7982999555211562565

`A273892(A004281(n)+1)`
-/

namespace A062897.P7982999555211562565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (A004281 n + 1).toNat

end

end A062897.P7982999555211562565

/-! ## A062897.P9486042583510961653

`filter[A273892(n+2), A059841(#)]`
-/

namespace A062897.P9486042583510961653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A062897.P9486042583510961653

/-! ## A062897.P13481459141854802866

`filter[A273892(n+2), A135528(#)]`
-/

namespace A062897.P13481459141854802866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A062897.P13481459141854802866

/-! ## A062897.P5922051834190321060

`filter[A273892(n+2), A266591(#)]`
-/

namespace A062897.P5922051834190321060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A062897.P5922051834190321060

/-!
# A062898: Number and its reversal are both multiples of 4.

The programs for A062898, there is no canonical definition to state claims against.
-/

/-! ## A062898.P14956922011197810754

`eq[10, A010132(A256755(n))]`
-/

namespace A062898.P14956922011197810754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062898.P14956922011197810754

/-! ## A062898.P10849318066349790072

`eq[and(3, A256755(n)), A000038(n)]`
-/

namespace A062898.P10849318066349790072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A256755 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062898.P10849318066349790072

/-! ## A062898.P11451698859402165097

`eq[A000007(n), A010873(A256755(n))]`
-/

namespace A062898.P11451698859402165097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062898.P11451698859402165097

/-! ## A062898.P8461650485599964506

`eq[A000038(n), A010873(A256755(n))]`
-/

namespace A062898.P8461650485599964506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A256755 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062898.P8461650485599964506

/-! ## A062898.P8444160949659968480

`eq[A056594(A256755(n)), A057427(n)]`
-/

namespace A062898.P8444160949659968480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A256755 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062898.P8444160949659968480

/-!
# A062899: Number and its reversal are both multiples of 6.

The programs for A062899, there is no canonical definition to state claims against.
-/

/-! ## A062899.P13408912462611103258

`filter[A385701(n+2), A374197(#)]`
-/

namespace A062899.P13408912462611103258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A062899.P13408912462611103258

/-! ## A062899.P1900072674216758870

`filter[A385701(n+2), A079979(#)]`
-/

namespace A062899.P1900072674216758870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A062899.P1900072674216758870

/-! ## A062899.P4597320585884169800

`∩[A385701(n+1), A008458(n)]`
-/

namespace A062899.P4597320585884169800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P4597320585884169800

/-! ## A062899.P3002752191167683701

`∩[A098807(n+1), A385701(n+1)]`
-/

namespace A062899.P3002752191167683701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P3002752191167683701

/-! ## A062899.P1480653211151995351

`filter[A062897(n+1), A079979(#)]`
-/

namespace A062899.P1480653211151995351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A062899.P1480653211151995351

/-! ## A062899.P16807848867106882130

`filter[A062897(n+1), A093719(#)]`
-/

namespace A062899.P16807848867106882130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A062899.P16807848867106882130

/-! ## A062899.P3260417581105374195

`∩[A062897(n+1), A008458(n)]`
-/

namespace A062899.P3260417581105374195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P3260417581105374195

/-! ## A062899.P13805357605182490657

`∩[A062897(n+1), A008588(n)]`
-/

namespace A062899.P13805357605182490657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P13805357605182490657

/-! ## A062899.P3177989951964383144

`∩[A062897(n+1), A231960(n+1)]`
-/

namespace A062899.P3177989951964383144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P3177989951964383144

/-! ## A062899.P16424846290577840056

`∩[A062897(n+1), A256882(n+1)]`
-/

namespace A062899.P16424846290577840056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P16424846290577840056

/-! ## A062899.P15594300256651833879

`∩[A062897(n+1), A378884(n+1)]`
-/

namespace A062899.P15594300256651833879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P15594300256651833879

/-! ## A062899.P7688846269768798338

`∩[A062897(n+1), A385701(n+1)]`
-/

namespace A062899.P7688846269768798338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P7688846269768798338

/-! ## A062899.P9439019006416096747

`∩[A088723(n+1), A385701(n+1)]`
-/

namespace A062899.P9439019006416096747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P9439019006416096747

/-! ## A062899.P11448005000070886091

`∩[A094519(n+1), A385701(n+1)]`
-/

namespace A062899.P11448005000070886091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P11448005000070886091

/-! ## A062899.P17218736085746121746

`∩[A062897(n+1), A008486(n)]`
-/

namespace A062899.P17218736085746121746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P17218736085746121746

/-! ## A062899.P692344546330320729

`∩[A062897(n+1), A008585(n)]`
-/

namespace A062899.P692344546330320729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P692344546330320729

/-! ## A062899.P5564880497043627510

`∩[A062897(n+1), A319451(n)]`
-/

namespace A062899.P5564880497043627510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P5564880497043627510

/-! ## A062899.P1619396293046915644

`∩[A047225(n+1), A062897(n+1)]`
-/

namespace A062899.P1619396293046915644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P1619396293046915644

/-! ## A062899.P15448004923747800852

`∩[A047264(n+1), A062897(n+1)]`
-/

namespace A062899.P15448004923747800852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P15448004923747800852

/-! ## A062899.P6708692409900144716

`∩[A385701(n+1), A064466(n)]`
-/

namespace A062899.P6708692409900144716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062899.P6708692409900144716

