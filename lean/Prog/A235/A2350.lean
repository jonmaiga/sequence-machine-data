import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A235000: Primes which become palindromic primes when the digits are rotated once to the right.

The programs for A235000, there is no canonical definition to state claims against.
-/

/-! ## A235000.P7995968556883661346

`∩[A129621(n+1), A048307(n)]`
-/

namespace A235000.P7995968556883661346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235000.P7995968556883661346

/-! ## A235000.P8673831475332134949

`∩[A238647(n+1), A048307(n)]`
-/

namespace A235000.P8673831475332134949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235000.P8673831475332134949

/-!
# A235001: Odious squares.

The programs for A235001, the canonical program `A235001.P4979446370708647522` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235001 has offset 1).

The definition of A235001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235001.P5386256768261346497

`A235331(n+1)²`
-/

namespace A235001.P5386256768261346497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1) ^ 2

end

end A235001.P5386256768261346497

namespace A235001

/-- `A235331(n+1)²` -/
def P5386256768261346497.Spec : Prop :=
  ∀ n, P5386256768261346497.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P4979446370708647522

`lt[0, A228039(n)]²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235001

/-- `lt[0, A228039(n)]²` -/
def P4979446370708647522.Spec : Prop :=
  ∀ n, (P4979446370708647522.a n : ℤ) = A235001 (n + 1)

theorem P4979446370708647522.correct : P4979446370708647522.Spec := by
  intro n
  simp only [A235001, Nat.add_sub_cancel]

end A235001

/-! ## A235001.P6822451664786961993

`record[((n+1)*A228039(n+1))²]`
-/

namespace A235001.P6822451664786961993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A228039 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235001.P6822451664786961993

namespace A235001

/-- `record[((n+1)*A228039(n+1))²]` -/
def P6822451664786961993.Spec : Prop :=
  ∀ n, P6822451664786961993.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P17113869360333925586

`A235331(A000027(n+1))*A235331(n+1)`
-/

namespace A235001.P17113869360333925586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (A000027 (n + 1)).toNat * A235331 (n + 1)

end

end A235001.P17113869360333925586

namespace A235001

/-- `A235331(A000027(n+1))*A235331(n+1)` -/
def P17113869360333925586.Spec : Prop :=
  ∀ n, P17113869360333925586.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P4421475304248438570

`A000290(eq[1, A228039(n)])`
-/

namespace A235001.P4421475304248438570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235001.P4421475304248438570

namespace A235001

/-- `A000290(eq[1, A228039(n)])` -/
def P4421475304248438570.Spec : Prop :=
  ∀ n, P4421475304248438570.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P8420356814415622263

`eq[0, A059841(A159918(n))]²`
-/

namespace A235001.P8420356814415622263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235001.P8420356814415622263

namespace A235001

/-- `eq[0, A059841(A159918(n))]²` -/
def P8420356814415622263.Spec : Prop :=
  ∀ n, (P8420356814415622263.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P3710766869040578625

`∩[A230745(n+1), n²]`
-/

namespace A235001.P3710766869040578625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235001.P3710766869040578625

namespace A235001

/-- `∩[A230745(n+1), n²]` -/
def P3710766869040578625.Spec : Prop :=
  ∀ n, (P3710766869040578625.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P8483692311561481085

`∩[A000290(n), A230745(n+1)]`
-/

namespace A235001.P8483692311561481085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P8483692311561481085

namespace A235001

/-- `∩[A000290(n), A230745(n+1)]` -/
def P8483692311561481085.Spec : Prop :=
  ∀ n, (P8483692311561481085.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P2634688807967275912

`∩[A188915(n), A230745(n+1)]`
-/

namespace A235001.P2634688807967275912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P2634688807967275912

namespace A235001

/-- `∩[A188915(n), A230745(n+1)]` -/
def P2634688807967275912.Spec : Prop :=
  ∀ n, (P2634688807967275912.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P8205729394716687584

`∩[A028982(n+1), A230745(n+1)]`
-/

namespace A235001.P8205729394716687584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P8205729394716687584

namespace A235001

/-- `∩[A028982(n+1), A230745(n+1)]` -/
def P8205729394716687584.Spec : Prop :=
  ∀ n, (P8205729394716687584.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P16835630765098705231

`∩[A138326(n+1), A230745(n+1)]`
-/

namespace A235001.P16835630765098705231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P16835630765098705231

namespace A235001

/-- `∩[A138326(n+1), A230745(n+1)]` -/
def P16835630765098705231.Spec : Prop :=
  ∀ n, (P16835630765098705231.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P11591602580212192501

`filter[A230745(n+1), A053866(#)]`
-/

namespace A235001.P11591602580212192501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A235001.P11591602580212192501

namespace A235001

/-- `filter[A230745(n+1), A053866(#)]` -/
def P11591602580212192501.Spec : Prop :=
  ∀ n, P11591602580212192501.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P15088387841296941790

`eq[1, A010060(A004652(n))]²`
-/

namespace A235001.P15088387841296941790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235001.P15088387841296941790

namespace A235001

/-- `eq[1, A010060(A004652(n))]²` -/
def P15088387841296941790.Spec : Prop :=
  ∀ n, (P15088387841296941790.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P5760398175239900712

`eq[2, A001285(A008811(n))]²`
-/

namespace A235001.P5760398175239900712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A008811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235001.P5760398175239900712

namespace A235001

/-- `eq[2, A001285(A008811(n))]²` -/
def P5760398175239900712.Spec : Prop :=
  ∀ n, (P5760398175239900712.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P3179512429689334777

`eq[1, A010060(A000982(n))]²`
-/

namespace A235001.P3179512429689334777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000982 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A235001.P3179512429689334777

namespace A235001

/-- `eq[1, A010060(A000982(n))]²` -/
def P3179512429689334777.Spec : Prop :=
  ∀ n, (P3179512429689334777.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P13681697458614686334

`∩[A091855(n+1), n²]`
-/

namespace A235001.P13681697458614686334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235001.P13681697458614686334

namespace A235001

/-- `∩[A091855(n+1), n²]` -/
def P13681697458614686334.Spec : Prop :=
  ∀ n, (P13681697458614686334.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P14317339929995057248

`filter[A091855(n+1), A053866(#)]`
-/

namespace A235001.P14317339929995057248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A235001.P14317339929995057248

namespace A235001

/-- `filter[A091855(n+1), A053866(#)]` -/
def P14317339929995057248.Spec : Prop :=
  ∀ n, P14317339929995057248.a n = A235001 (n + 1)

end A235001

/-! ## A235001.P18081875170523976020

`∩[A000290(n), A091855(n+1)]`
-/

namespace A235001.P18081875170523976020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P18081875170523976020

namespace A235001

/-- `∩[A000290(n), A091855(n+1)]` -/
def P18081875170523976020.Spec : Prop :=
  ∀ n, (P18081875170523976020.a n : ℤ) = A235001 (n + 1)

end A235001

/-! ## A235001.P12860483319780818646

`∩[A028982(n+1), A091855(n+1)]`
-/

namespace A235001.P12860483319780818646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235001.P12860483319780818646

namespace A235001

/-- `∩[A028982(n+1), A091855(n+1)]` -/
def P12860483319780818646.Spec : Prop :=
  ∀ n, (P12860483319780818646.a n : ℤ) = A235001 (n + 1)

end A235001

/-!
# A235002: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235002, there is no canonical definition to state claims against.
-/

/-! ## A235002.P2213221201910463850

`A235007(∑[n]+1)`
-/

namespace A235002.P2213221201910463850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235002.P2213221201910463850

/-! ## A235002.P5243920041164570693

`lcm(2, A235007(A000124(n)))`
-/

namespace A235002.P5243920041164570693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235007 (A000124 n).toNat)

end

end A235002.P5243920041164570693

/-! ## A235002.P17899342018928347789

`record[A235007(A072735(n)+1)]`
-/

namespace A235002.P17899342018928347789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A072735 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235002.P17899342018928347789

/-! ## A235002.P11156191381879320848

`record[A235007(A114091(n+1))]`
-/

namespace A235002.P11156191381879320848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235002.P11156191381879320848

/-! ## A235002.P14209968933942139179

`record[A235007(A267104(n+1))]`
-/

namespace A235002.P14209968933942139179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235002.P14209968933942139179

/-!
# A235003: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235003, there is no canonical definition to state claims against.
-/

/-! ## A235003.P4001003825002657675

`A235007(∑[n+1]+2)`
-/

namespace A235003.P4001003825002657675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235003.P4001003825002657675

/-! ## A235003.P15463032939271313058

`record[A235007(A114091(n+1)+1)]`
-/

namespace A235003.P15463032939271313058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235003.P15463032939271313058

/-! ## A235003.P15308062723134442954

`record[A010054(n)*A235007(n+2)]`
-/

namespace A235003.P15308062723134442954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235007 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235003.P15308062723134442954

/-! ## A235003.P2803975261915901270

`A235007(A000096(n)+3)+A185284(n)`
-/

namespace A235003.P2803975261915901270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A000096 n + 3).toNat + A185284 n

end

end A235003.P2803975261915901270

/-! ## A235003.P6191786386902128386

`record[A235007(A072735(n+2))]`
-/

namespace A235003.P6191786386902128386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A072735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235003.P6191786386902128386

/-!
# A235004: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235004, there is no canonical definition to state claims against.
-/

/-! ## A235004.P17142742517408714913

`A235007(∑[n+2]+4)`
-/

namespace A235004.P17142742517408714913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235004.P17142742517408714913

/-! ## A235004.P8133315386020285007

`lcm(2, A235007(A167614(n+1)))`
-/

namespace A235004.P8133315386020285007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235007 (A167614 (n + 1)).toNat)

end

end A235004.P8133315386020285007

/-! ## A235004.P358980811243128546

`A235007(A167614(n+1))+A025469(n)`
-/

namespace A235004.P358980811243128546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A167614 (n + 1)).toNat + A025469 n

end

end A235004.P358980811243128546

/-! ## A235004.P132454947927987907

`A235007(A167614(n+1))+A107846(n)`
-/

namespace A235004.P132454947927987907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A167614 (n + 1)).toNat + A107846 n

end

end A235004.P132454947927987907

/-! ## A235004.P15638759565746913598

`A235007(A167614(n+1))+A185245(n)`
-/

namespace A235004.P15638759565746913598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A167614 (n + 1)).toNat + A185245 n

end

end A235004.P15638759565746913598

/-!
# A235005: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235005, there is no canonical definition to state claims against.
-/

/-! ## A235005.P13750967573029901770

`A235007(A374004(n+1))`
-/

namespace A235005.P13750967573029901770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A374004 (n + 1)).toNat

end

end A235005.P13750967573029901770

/-! ## A235005.P2307824358345652049

`A235007(A141214(n)+7)`
-/

namespace A235005.P2307824358345652049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A141214 n + 7).toNat

end

end A235005.P2307824358345652049

/-! ## A235005.P7580559677996255092

`A235007(A052905(n)+9)`
-/

namespace A235005.P7580559677996255092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A052905 n + 9).toNat

end

end A235005.P7580559677996255092

/-! ## A235005.P13093993377262511474

`A235007(A055999(n)+10)`
-/

namespace A235005.P13093993377262511474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A055999 n + 10).toNat

end

end A235005.P13093993377262511474

/-! ## A235005.P14739371439442373551

`A235007(eq[5, A066657(n)])`
-/

namespace A235005.P14739371439442373551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235005.P14739371439442373551

/-!
# A235006: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235006, there is no canonical definition to state claims against.
-/

/-! ## A235006.P7217171798685527440

`A235007(A374005(n+1))`
-/

namespace A235006.P7217171798685527440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A374005 (n + 1)).toNat

end

end A235006.P7217171798685527440

/-! ## A235006.P4518216510930213154

`A235007(A167499(n+3))`
-/

namespace A235006.P4518216510930213154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A167499 (n + 3)).toNat

end

end A235006.P4518216510930213154

/-! ## A235006.P17459921345118279751

`A235007(A155212(n)+13)`
-/

namespace A235006.P17459921345118279751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A155212 n + 13).toNat

end

end A235006.P17459921345118279751

/-! ## A235006.P17780319246601152272

`A235007(eq[7, A066657(n)])`
-/

namespace A235006.P17780319246601152272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235006.P17780319246601152272

/-! ## A235006.P12778724570910880376

`A235007(A167614(n+3)+2)`
-/

namespace A235006.P12778724570910880376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235007 (A167614 (n + 3) + 2).toNat

end

end A235006.P12778724570910880376

/-!
# A235010: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235010, there is no canonical definition to state claims against.
-/

/-! ## A235010.P5934026666322977211

`A235017(∑[4*n]+1)`
-/

namespace A235010.P5934026666322977211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235010.P5934026666322977211

/-! ## A235010.P6087434106444544680

`lcm(2, A235017(A001844(n)))`
-/

namespace A235010.P6087434106444544680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235017 (A001844 n).toNat)

end

end A235010.P6087434106444544680

/-! ## A235010.P11840451904669830552

`record[A235017(A003602((n+1)²))]`
-/

namespace A235010.P11840451904669830552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235010.P11840451904669830552

/-! ## A235010.P8005769981017497999

`record[A003982(n)*A235017(n+1)]`
-/

namespace A235010.P8005769981017497999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235010.P8005769981017497999

/-! ## A235010.P10028472545356672553

`record[A214505(n)*A235017(n+1)]`
-/

namespace A235010.P10028472545356672553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A235017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235010.P10028472545356672553

/-!
# A235011: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235011, there is no canonical definition to state claims against.
-/

/-! ## A235011.P3314427284464203684

`A235017(∑[n+1]+2)`
-/

namespace A235011.P3314427284464203684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235011.P3314427284464203684

/-! ## A235011.P4040050121462276282

`lcm(2, A235017(A133263(n+1)))`
-/

namespace A235011.P4040050121462276282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235017 (A133263 (n + 1)).toNat)

end

end A235011.P4040050121462276282

/-! ## A235011.P11996428299190839175

`record[A010054(n)*A235017(n+2)]`
-/

namespace A235011.P11996428299190839175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235011.P11996428299190839175

/-! ## A235011.P12398757527356708466

`record[gcd(A002262(n), A235017(n+2))]`
-/

namespace A235011.P12398757527356708466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235017 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235011.P12398757527356708466

/-! ## A235011.P13443035075566001917

`A000027(A235017(∑[n+2]))`
-/

namespace A235011.P13443035075566001917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A235017 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A235011.P13443035075566001917

/-!
# A235012: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235012, there is no canonical definition to state claims against.
-/

/-! ## A235012.P10608722356856557585

`A235017(∑[n+2]+4)`
-/

namespace A235012.P10608722356856557585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235012.P10608722356856557585

/-! ## A235012.P9832841825781829023

`lcm(2, A235017(A167614(n+1)))`
-/

namespace A235012.P9832841825781829023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235017 (A167614 (n + 1)).toNat)

end

end A235012.P9832841825781829023

/-! ## A235012.P14530127601846239374

`A235017(A167614(n+1))+A025438(n)`
-/

namespace A235012.P14530127601846239374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A167614 (n + 1)).toNat + A025438 n

end

end A235012.P14530127601846239374

/-! ## A235012.P15980056143189164611

`A243834(n)+A235017(A167614(n+1))`
-/

namespace A235012.P15980056143189164611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A235017 (A167614 (n + 1)).toNat

end

end A235012.P15980056143189164611

/-! ## A235012.P12994767119621939425

`A235017(A167614(n+1))%A235298(n+1)`
-/

namespace A235012.P12994767119621939425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235017 (A167614 (n + 1)).toNat) (A235298 (n + 1))

end

end A235012.P12994767119621939425

/-!
# A235013: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235013, there is no canonical definition to state claims against.
-/

/-! ## A235013.P9853405362259893125

`A235017(∑[n+3]+7)`
-/

namespace A235013.P9853405362259893125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235013.P9853405362259893125

/-! ## A235013.P5773803314827158764

`lcm(2, A235017(Δ[A005586(n)]+5))`
-/

namespace A235013.P5773803314827158764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235017 (f1 (n + 1) - f1 n + 5).toNat)

end

end A235013.P5773803314827158764

/-! ## A235013.P9368068910016143251

`A014963(6*(n+1))*A235017(Δ[A005586(n)]+5)`
-/

namespace A235013.P9368068910016143251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A235017 (f1 (n + 1) - f1 n + 5).toNat

end

end A235013.P9368068910016143251

/-! ## A235013.P15745997114694697234

`A000040(n+2)%2*A235017(Δ[A005586(n)]+5)`
-/

namespace A235013.P15745997114694697234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A235017 (f1 (n + 1) - f1 n + 5).toNat

end

end A235013.P15745997114694697234

/-! ## A235013.P4112694638820226197

`A235017(Δ[A005586(n)]+5)+A008683(25*(n+1))`
-/

namespace A235013.P4112694638820226197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (f1 (n + 1) - f1 n + 5).toNat + A008683 (25 * (n + 1))

end

end A235013.P4112694638820226197

/-!
# A235014: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235014, there is no canonical definition to state claims against.
-/

/-! ## A235014.P7994678055552393480

`A235017(∑[n+2]+13+n+n)`
-/

namespace A235014.P7994678055552393480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 13 + n + n)

end

end A235014.P7994678055552393480

/-! ## A235014.P16346999247917711133

`A336355(A087749(n+1))+A235017(A155212(n)+13)`
-/

namespace A235014.P16346999247917711133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A087749 (n + 1)).toNat + A235017 (A155212 n + 13).toNat

end

end A235014.P16346999247917711133

/-! ## A235014.P3993514119494531600

`A336355(A235017(n+1))+A235017(A155212(n)+13)`
-/

namespace A235014.P3993514119494531600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A235017 (n + 1)).toNat + A235017 (A155212 n + 13).toNat

end

end A235014.P3993514119494531600

/-! ## A235014.P10743570389520996722

`A060398(A135191(n+1))*A235017(A155212(n)+13)`
-/

namespace A235014.P10743570389520996722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A135191 (n + 1)).toNat * A235017 (A155212 n + 13).toNat

end

end A235014.P10743570389520996722

/-! ## A235014.P17858421362828791071

`A336355(A087749(n+1))+A235017(A000217(n+4)+5)`
-/

namespace A235014.P17858421362828791071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A087749 (n + 1)).toNat + A235017 (A000217 (n + 4) + 5).toNat

end

end A235014.P17858421362828791071

/-!
# A235015: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235015, there is no canonical definition to state claims against.
-/

/-! ## A235015.P7749196951400897983

`A235017(A374007(n+1))`
-/

namespace A235015.P7749196951400897983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A374007 (n + 1)).toNat

end

end A235015.P7749196951400897983

/-! ## A235015.P1675972121721188103

`A235017(∑[A020710(n)]+16)`
-/

namespace A235015.P1675972121721188103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A235015.P1675972121721188103

/-! ## A235015.P7776192734423581518

`A235017(A167499(n+4)+1)`
-/

namespace A235015.P7776192734423581518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A167499 (n + 4) + 1).toNat

end

end A235015.P7776192734423581518

/-! ## A235015.P7871287845948326325

`A235017(A167614(n+4)+3)`
-/

namespace A235015.P7871287845948326325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A167614 (n + 4) + 3).toNat

end

end A235015.P7871287845948326325

/-! ## A235015.P15476075841548898918

`A235017(A000124(n+5)+5)`
-/

namespace A235015.P15476075841548898918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A000124 (n + 5) + 5).toNat

end

end A235015.P15476075841548898918

/-!
# A235016: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235016, there is no canonical definition to state claims against.
-/

/-! ## A235016.P16635357045831401015

`A235017(A374008(n+1))`
-/

namespace A235016.P16635357045831401015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A374008 (n + 1)).toNat

end

end A235016.P16635357045831401015

/-! ## A235016.P7499201543741440872

`A235017(A167487(n+5))`
-/

namespace A235016.P7499201543741440872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A167487 (n + 5)).toNat

end

end A235016.P7499201543741440872

/-! ## A235016.P11799413190579895595

`A235017(A056119(n)+28)`
-/

namespace A235016.P11799413190579895595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A056119 n + 28).toNat

end

end A235016.P11799413190579895595

/-! ## A235016.P5667250283586574280

`A235017(A000124(n+6)+6)`
-/

namespace A235016.P5667250283586574280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A000124 (n + 6) + 6).toNat

end

end A235016.P5667250283586574280

/-! ## A235016.P9009286310411364393

`A235017(A000096(n+5)+8)`
-/

namespace A235016.P9009286310411364393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235017 (A000096 (n + 5) + 8).toNat

end

end A235016.P9009286310411364393

/-!
# A235017: T(n,k) is the number of (n+1) X (k+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235017, there is no canonical definition to state claims against.
-/

/-! ## A235017.P7688908615050245827

`A235301(n+1)-A000120(A186962(n+1))`
-/

namespace A235017.P7688908615050245827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (n + 1) - A000120 (A186962 (n + 1)).toNat

end

end A235017.P7688908615050245827

/-!
# A235018: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235018, there is no canonical definition to state claims against.
-/

/-! ## A235018.P18288493868149315068

`A235026(∑[4*n]+1)`
-/

namespace A235018.P18288493868149315068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235018.P18288493868149315068

/-! ## A235018.P713620764087573612

`lcm(2, A235026(A001844(n)))`
-/

namespace A235018.P713620764087573612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235026 (A001844 n).toNat)

end

end A235018.P713620764087573612

/-! ## A235018.P4309399017406691695

`record[A235026(A330613(n+1))]`
-/

namespace A235018.P4309399017406691695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235018.P4309399017406691695

/-! ## A235018.P13154083310084830982

`record[A003982(n)*A235026(n+1)]`
-/

namespace A235018.P13154083310084830982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235018.P13154083310084830982

/-! ## A235018.P3771826123108567097

`record[gcd(A003987(n), A235026(n+1))]`
-/

namespace A235018.P3771826123108567097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A235026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235018.P3771826123108567097

/-!
# A235019: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235019, there is no canonical definition to state claims against.
-/

/-! ## A235019.P9047903268744203694

`A235026(∑[n]+1)`
-/

namespace A235019.P9047903268744203694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235019.P9047903268744203694

/-! ## A235019.P17597855570084837546

`record[A235026(n+1)]`
-/

namespace A235019.P17597855570084837546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235019.P17597855570084837546

/-! ## A235019.P13260109362269503230

`lcm(2, A235026(A000124(n)))`
-/

namespace A235019.P13260109362269503230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235026 (A000124 n).toNat)

end

end A235019.P13260109362269503230

/-! ## A235019.P14931697049752254460

`A235026(A000124(n))+A025469(n)`
-/

namespace A235019.P14931697049752254460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A000124 n).toNat + A025469 n

end

end A235019.P14931697049752254460

/-! ## A235019.P10212226713842835933

`A235026(A000124(n))*A326307(n)`
-/

namespace A235019.P10212226713842835933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A000124 n).toNat * A326307 n

end

end A235019.P10212226713842835933

/-!
# A235020: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235020, there is no canonical definition to state claims against.
-/

/-! ## A235020.P13491201061518952336

`A235026(∑[n+1]+2)`
-/

namespace A235020.P13491201061518952336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235020.P13491201061518952336

/-! ## A235020.P501928690294765049

`lcm(2, A235026(A133263(n+1)))`
-/

namespace A235020.P501928690294765049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235026 (A133263 (n + 1)).toNat)

end

end A235020.P501928690294765049

/-! ## A235020.P18040491279972982819

`record[A010054(n)*A235026(n+2)]`
-/

namespace A235020.P18040491279972982819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235020.P18040491279972982819

/-! ## A235020.P12937541706035702852

`A033999(2*n)*A235026(A133263(n+1))`
-/

namespace A235020.P12937541706035702852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A235026 (A133263 (n + 1)).toNat

end

end A235020.P12937541706035702852

/-! ## A235020.P17997805631115255679

`A235026(A133263(n+1))+A003982(2*n+1)`
-/

namespace A235020.P17997805631115255679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A133263 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A235020.P17997805631115255679

/-!
# A235021: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235021, there is no canonical definition to state claims against.
-/

/-! ## A235021.P5662182233618580816

`A235026(∑[n+2]+4)`
-/

namespace A235021.P5662182233618580816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235021.P5662182233618580816

/-! ## A235021.P5034561525651623355

`lcm(2, A235026(A167614(n+1)))`
-/

namespace A235021.P5034561525651623355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235026 (A167614 (n + 1)).toNat)

end

end A235021.P5034561525651623355

/-! ## A235021.P18042112493225676690

`record[A235026(A198455(n+1)+4)]`
-/

namespace A235021.P18042112493225676690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235021.P18042112493225676690

/-! ## A235021.P16315471232535660477

`A235026(A167614(n+1))+A025469(n)`
-/

namespace A235021.P16315471232535660477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A167614 (n + 1)).toNat + A025469 n

end

end A235021.P16315471232535660477

/-! ## A235021.P1467651432846320110

`A235044(n)+A235026(A167614(n+1))`
-/

namespace A235021.P1467651432846320110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A235026 (A167614 (n + 1)).toNat

end

end A235021.P1467651432846320110

/-!
# A235022: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235022, there is no canonical definition to state claims against.
-/

/-! ## A235022.P4659022699928135977

`A235026(∑[n+3]+7)`
-/

namespace A235022.P4659022699928135977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235022.P4659022699928135977

/-! ## A235022.P17855790895652708379

`lcm(2, A235026(eq[5, A131818(n+1)]))`
-/

namespace A235022.P17855790895652708379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A235022.P17855790895652708379

/-! ## A235022.P8696596296005512129

`A235026(eq[5, A131818(n+1)])+A025438(n)`
-/

namespace A235022.P8696596296005512129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A025438 n

end

end A235022.P8696596296005512129

/-! ## A235022.P10293928105114264688

`A235026(eq[5, A131818(n+1)])+A025469(n)`
-/

namespace A235022.P10293928105114264688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A025469 n

end

end A235022.P10293928105114264688

/-! ## A235022.P15750010760745904841

`A235044(n)+A235026(eq[5, A131818(n+1)])`
-/

namespace A235022.P15750010760745904841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235022.P15750010760745904841

/-!
# A235023: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235023, there is no canonical definition to state claims against.
-/

/-! ## A235023.P16968643349235971784

`A235026(∑[n+4]+11)`
-/

namespace A235023.P16968643349235971784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235023.P16968643349235971784

/-!
# A235024: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235024, there is no canonical definition to state claims against.
-/

/-! ## A235024.P11297102949478812208

`A235026(A167499(n+4)+1)`
-/

namespace A235024.P11297102949478812208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A167499 (n + 4) + 1).toNat

end

end A235024.P11297102949478812208

/-! ## A235024.P8246855043737806386

`A235026(A056000(n+1)+16)`
-/

namespace A235024.P8246855043737806386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A056000 (n + 1) + 16).toNat

end

end A235024.P8246855043737806386

/-! ## A235024.P3361405512591604135

`A235026(eq[7, A131818(n+1)])`
-/

namespace A235024.P3361405512591604135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235024.P3361405512591604135

/-! ## A235024.P11594522723818158569

`A235026(A000124(n+6)-(n+1))`
-/

namespace A235024.P11594522723818158569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A235024.P11594522723818158569

/-! ## A235024.P12834274109152268721

`A235026(A374007(n+1))`
-/

namespace A235024.P12834274109152268721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A374007 (n + 1)).toNat

end

end A235024.P12834274109152268721

/-!
# A235025: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235025, there is no canonical definition to state claims against.
-/

/-! ## A235025.P14127649117256502100

`A235026(A167487(n+5))`
-/

namespace A235025.P14127649117256502100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A167487 (n + 5)).toNat

end

end A235025.P14127649117256502100

/-! ## A235025.P11830747748743130658

`A235026(eq[11, A066657(n)])`
-/

namespace A235025.P11830747748743130658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235025.P11830747748743130658

/-! ## A235025.P859048408719171027

`A235026(A166136(n+5)+1)`
-/

namespace A235025.P859048408719171027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A166136 (n + 5) + 1).toNat

end

end A235025.P859048408719171027

/-! ## A235025.P6414676659553030516

`A235026(A167499(n+5)+2)`
-/

namespace A235025.P6414676659553030516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A167499 (n + 5) + 2).toNat

end

end A235025.P6414676659553030516

/-! ## A235025.P2463313905267148596

`A235026(A161680(n+7)+7)`
-/

namespace A235025.P2463313905267148596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235026 (A161680 (n + 7) + 7).toNat

end

end A235025.P2463313905267148596

/-!
# A235027: Reverse the bits of prime divisors of n (with 2 -> 2), and multiply together: a(0)=0, a(1)=1, a(2)=2, a(p) = revbits(p) for odd primes p, a(u*v) = a(u) * a(v) for composites.

The programs for A235027, there is no canonical definition to state claims against.
-/

/-! ## A235027.P14291777647997572280

`A056539(A020639(n))*a(n/A020639(n))` with `a(0)=0, a(1)=1`
-/

namespace A235027.P14291777647997572280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A056539 (A020639 n).toNat * a (SequenceMachineLib.roundAway ((n : ℚ) / (A020639 n : ℚ))).toNat

end

end A235027.P14291777647997572280

/-!
# A235028: Fixed points of A235027.

The programs for A235028, there is no canonical definition to state claims against.
-/

/-! ## A235028.P17084068919913851831

`eq[n, A235027(n)]`
-/

namespace A235028.P17084068919913851831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235028.P17084068919913851831

/-! ## A235028.P7694549028468995173

`lt[xor(n, A235027(A028310(n))), 2]`
-/

namespace A235028.P7694549028468995173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A235027 (A028310 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235028.P7694549028468995173

/-! ## A235028.P3783135143761547848

`record[A235027(n)%A000027(n+1)]`
-/

namespace A235028.P3783135143761547848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235027 n) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235028.P3783135143761547848

/-! ## A235028.P5732303696261801759

`record[gcd(n, A235027(3*n))]`
-/

namespace A235028.P5732303696261801759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A235027 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235028.P5732303696261801759

/-! ## A235028.P10868052925631607357

`lt[A039813(A141256(n)), A118662(n)]`
-/

namespace A235028.P10868052925631607357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039813 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118662 (n + 1900)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235028.P10868052925631607357

/-!
# A235030: Numbers such that A235027(A235027(n)) <> n; Numbers which are divisible by any of the odd terms of A204219.

The programs for A235030, there is no canonical definition to state claims against.
-/

/-! ## A235030.P725307936395683230

`lt[0, A235145(n)]`
-/

namespace A235030.P725307936395683230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235030.P725307936395683230

/-! ## A235030.P6024158476480719735

`eq[3, A000040(a(A235145(n)))]` with `a(0)=1`
-/

namespace A235030.P6024158476480719735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A235145 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235030.P6024158476480719735

/-! ## A235030.P15511468297155443090

`eq[3, A234741(a(A235145(n))+1)]` with `a(0)=1`
-/

namespace A235030.P15511468297155443090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A234741 (f2 (A235145 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235030.P15511468297155443090

/-! ## A235030.P5744629212663641589

`eq[0, A000038(n)^A235145(n)]`
-/

namespace A235030.P5744629212663641589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A235145 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A235030.P5744629212663641589

/-! ## A235030.P12205495294132708965

`eq[A235145(A235027(n))+1, A235145(n)]`
-/

namespace A235030.P12205495294132708965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A235027 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235030.P12205495294132708965

/-!
# A235032: Numbers which are factored to the same set of primes in Z as to the binary codes of irreducible polynomials in GF(2)[X].

The programs for A235032, there is no canonical definition to state claims against.
-/

/-! ## A235032.P17328279927024696780

`∩[A235034(n+1), A235035(n+1)]`
-/

namespace A235032.P17328279927024696780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235032.P17328279927024696780

/-! ## A235032.P17659792981948732867

`∩[A235034(n+1), A236860(n+1)]`
-/

namespace A235032.P17659792981948732867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235032.P17659792981948732867

/-! ## A235032.P15433822942691147180

`∩[A235034(n+1), A236842(n+1)]`
-/

namespace A235032.P15433822942691147180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235032.P15433822942691147180

/-! ## A235032.P15720465619228907074

`∩[A235035(n+1), A236850(n+1)]`
-/

namespace A235032.P15720465619228907074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235032.P15720465619228907074

/-! ## A235032.P13046977320363244434

`∩[A235035(n+1), A236841(n+1)]`
-/

namespace A235032.P13046977320363244434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235032.P13046977320363244434

/-! ## A235032.P12834853938306914689

`comp[A235033(n+1)]`
-/

namespace A235032.P12834853938306914689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235032.P12834853938306914689

/-! ## A235032.P4557451451781879888

`eq[A234742(n), A236851(n)]`
-/

namespace A235032.P4557451451781879888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P4557451451781879888

/-! ## A235032.P18135843812001669060

`eq[A235042(n), A236851(n)]`
-/

namespace A235032.P18135843812001669060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P18135843812001669060

/-! ## A235032.P12071287147462611064

`eq[A236836(n), A236852(n)]`
-/

namespace A235032.P12071287147462611064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P12071287147462611064

/-! ## A235032.P7037747220095872927

`eq[A236846(n), A236852(n)]`
-/

namespace A235032.P7037747220095872927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P7037747220095872927

/-! ## A235032.P2442196226017375124

`filter[A235034(n+1), A236862(#)]`
-/

namespace A235032.P2442196226017375124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A235032.P2442196226017375124

/-! ## A235032.P13744572223020670291

`filter[A235035(n+1), A236861(#)]`
-/

namespace A235032.P13744572223020670291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A235032.P13744572223020670291

/-! ## A235032.P5593306864341912340

`filter[A235045(n+1), A236862(#)]`
-/

namespace A235032.P5593306864341912340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A235032.P5593306864341912340

/-! ## A235032.P8568282774434282824

`eq[n, A234742(n)*A236833(n)]`
-/

namespace A235032.P8568282774434282824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n * A236833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235032.P8568282774434282824

/-! ## A235032.P4371609071824392481

`eq[0, A235046(n)]`
-/

namespace A235032.P4371609071824392481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235032.P4371609071824392481

/-! ## A235032.P9982218739121939093

`eq[0, A236380(n)]`
-/

namespace A235032.P9982218739121939093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235032.P9982218739121939093

/-! ## A235032.P13096223423778812088

`eq[A236378(n)², A236379(n)]`
-/

namespace A235032.P13096223423778812088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P13096223423778812088

/-! ## A235032.P16686623466135625796

`eq[n, A236378(n)+A234742(n)]`
-/

namespace A235032.P16686623466135625796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235032.P16686623466135625796

/-! ## A235032.P10397943606736873325

`eq[A236837(2*n), A236851(2*n)]`
-/

namespace A235032.P10397943606736873325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P10397943606736873325

/-! ## A235032.P13605851576424965962

`eq[A236378(2*n), A236379(n)]`
-/

namespace A235032.P13605851576424965962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235032.P13605851576424965962

/-!
# A235033: Numbers which are factored to a different set of primes in Z as to the irreducible polynomials in GF(2)[X].

The programs for A235033, there is no canonical definition to state claims against.
-/

/-! ## A235033.P17313765881242494232

`comp[A235032(n+1)]`
-/

namespace A235033.P17313765881242494232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A235033.P17313765881242494232

/-! ## A235033.P4846773527780147042

`lt[0, A235046(n)]`
-/

namespace A235033.P4846773527780147042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235033.P4846773527780147042

/-! ## A235033.P1227969033168561120

`lt[0, A236380(n)]`
-/

namespace A235033.P1227969033168561120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235033.P1227969033168561120

/-! ## A235033.P10171608198909857538

`eq[A054977(n), A235046(n)]`
-/

namespace A235033.P10171608198909857538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P10171608198909857538

/-! ## A235033.P1575801266633317960

`eq[A141044(n), A235046(n)]`
-/

namespace A235033.P1575801266633317960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P1575801266633317960

/-! ## A235033.P17643498209926292702

`eq[A158388(n), A235046(n)]`
-/

namespace A235033.P17643498209926292702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P17643498209926292702

/-! ## A235033.P16293865137460474562

`eq[A235046(n), A261143(n)]`
-/

namespace A235033.P16293865137460474562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P16293865137460474562

/-! ## A235033.P6667551833126271814

`eq[A235046(n), A293668(n)]`
-/

namespace A235033.P6667551833126271814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P6667551833126271814

/-! ## A235033.P14833665815116314591

`eq[A235046(n), A329684(n)]`
-/

namespace A235033.P14833665815116314591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P14833665815116314591

/-! ## A235033.P4497322329555695127

`eq[A235046(n), A373565(n)]`
-/

namespace A235033.P4497322329555695127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P4497322329555695127

/-! ## A235033.P4691028184709701776

`eq[A008461(n+1), A235046(n)]`
-/

namespace A235033.P4691028184709701776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P4691028184709701776

/-! ## A235033.P7492036275798234760

`eq[A121273(n+1), A235046(n)]`
-/

namespace A235033.P7492036275798234760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P7492036275798234760

/-! ## A235033.P11186925768411134780

`eq[A171624(n+1), A235046(n)]`
-/

namespace A235033.P11186925768411134780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P11186925768411134780

/-! ## A235033.P17512581724993052374

`eq[A235046(n), A358691(n+1)]`
-/

namespace A235033.P17512581724993052374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235033.P17512581724993052374

/-! ## A235033.P232487871784022054

`lt[1, (A236836(n)-A236852(n))²]`
-/

namespace A235033.P232487871784022054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236836 n - A236852 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A235033.P232487871784022054

/-! ## A235033.P4040816722074277812

`lt[A235042(n), A236379(n)²+n]`
-/

namespace A235033.P4040816722074277812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235033.P4040816722074277812

/-! ## A235033.P696344633003458616

`lt[A236837(n), A236379(n)²+n]`
-/

namespace A235033.P696344633003458616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235033.P696344633003458616

/-! ## A235033.P17137969612680477824

`lt[n*A235042(n), A234742(n)²]`
-/

namespace A235033.P17137969612680477824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A235042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235033.P17137969612680477824

/-! ## A235033.P17665313561655108989

`lt[n*A236837(n), A234742(n)²]`
-/

namespace A235033.P17665313561655108989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A236837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235033.P17665313561655108989

/-!
# A235034: Numbers whose prime divisors, when multiplied together without carry-bits (as encodings of polynomials over GF(2), with A048720), produce the original number; numbers for which A234741(n) = n.

The programs for A235034, there is no canonical definition to state claims against.
-/

/-! ## A235034.P1848720736113625441

`lt[A325562(gcd(n, C(2, n))+n), 1]`
-/

namespace A235034.P1848720736113625441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325562 (Nat.gcd n (Nat.choose 2 n) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235034.P1848720736113625441

/-! ## A235034.P5178124133586353755

`eq[A028310(n), A234741(A028310(n))]`
-/

namespace A235034.P5178124133586353755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235034.P5178124133586353755

/-! ## A235034.P9697766314072385095

`eq[n, A236836(n)]`
-/

namespace A235034.P9697766314072385095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235034.P9697766314072385095

/-! ## A235034.P4489543950787123520

`record[A236836(gcd(n, A236836(n)))]`
-/

namespace A235034.P4489543950787123520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (Int.gcd (n : ℤ) (A236836 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235034.P4489543950787123520

/-! ## A235034.P15319494204139958478

`eq[0, A236378(n)]`
-/

namespace A235034.P15319494204139958478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235034.P15319494204139958478

/-! ## A235034.P13447559406385600289

`eq[A236379(n), A236380(n)]`
-/

namespace A235034.P13447559406385600289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235034.P13447559406385600289

/-! ## A235034.P2673183917061813299

`eq[A236380(n)+n, A234742(n)]`
-/

namespace A235034.P2673183917061813299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235034.P2673183917061813299

/-! ## A235034.P3059887921713778968

`record[A236836(n)%A000463(A005408(n))]`
-/

namespace A235034.P3059887921713778968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236836 n) (A000463 (A005408 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235034.P3059887921713778968

/-! ## A235034.P13511245164914921965

`record[n-A236378(A005843(n))]`
-/

namespace A235034.P13511245164914921965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236378 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235034.P13511245164914921965

/-!
# A235035: Numbers n for which A234742(n) = n: numbers n whose binary representation encodes a GF(2)[X]-polynomial such that when its irreducible factors are multiplied together as ordinary integers (with carry-bits), the result is n.

The programs for A235035, there is no canonical definition to state claims against.
-/

/-! ## A235035.P743118005343417720

`eq[n, A234742(n)]`
-/

namespace A235035.P743118005343417720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235035.P743118005343417720

/-! ## A235035.P17532807527001643416

`eq[n, A236847(n)]`
-/

namespace A235035.P17532807527001643416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235035.P17532807527001643416

/-! ## A235035.P31470020081541134

`lt[A234742(n), A000027(n+1)]`
-/

namespace A235035.P31470020081541134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235035.P31470020081541134

/-! ## A235035.P7591641315598577298

`A234742(lt[A234742(n), n+1])`
-/

namespace A235035.P7591641315598577298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235035.P7591641315598577298

/-! ## A235035.P4068457389422049888

`A236847(lt[n, A236847(n)+1])`
-/

namespace A235035.P4068457389422049888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A235035.P4068457389422049888

/-! ## A235035.P15490255041114053956

`A234742(lt[A234742(n)-1, n])`
-/

namespace A235035.P15490255041114053956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235035.P15490255041114053956

/-! ## A235035.P17815885751091423903

`A236847(lt[n-1, A236847(n)])`
-/

namespace A235035.P17815885751091423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A235035.P17815885751091423903

/-! ## A235035.P10708558544639175147

`A234742(lt[xor(n, A234742(n)), 1])`
-/

namespace A235035.P10708558544639175147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234742 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234742 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A235035.P10708558544639175147

/-! ## A235035.P16414067324691021228

`eq[0, A236379(n)]`
-/

namespace A235035.P16414067324691021228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235035.P16414067324691021228

/-! ## A235035.P2592594109072412547

`eq[A236378(n), A236380(n)]`
-/

namespace A235035.P2592594109072412547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235035.P2592594109072412547

/-! ## A235035.P12790410773129648830

`lt[A000045(n)*A236379(n), 1]`
-/

namespace A235035.P12790410773129648830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A236379 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235035.P12790410773129648830

/-! ## A235035.P7848379509830636006

`lt[A000700(A236379(2*n)), 2]`
-/

namespace A235035.P7848379509830636006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A236379 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235035.P7848379509830636006

/-!
# A235036: Nonprime numbers which are factored to the same set of primes in Z as to the irreducible polynomials in GF(2)[X].

The programs for A235036, there is no canonical definition to state claims against.
-/

/-! ## A235036.P6824935291494390512

`filter[A235032(n+2), A005171(#)]`
-/

namespace A235036.P6824935291494390512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A235036.P6824935291494390512

/-! ## A235036.P11983895666225286178

`∩[A205783(n+1), A235032(n+1)]`
-/

namespace A235036.P11983895666225286178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235036.P11983895666225286178

/-! ## A235036.P5119682563120749714

`∩[A018252(n+1), A235032(n+1)]`
-/

namespace A235036.P5119682563120749714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235036.P5119682563120749714

/-! ## A235036.P7184889640510181019

`eq[A049084(n+1), A236380(n+1)]+1`
-/

namespace A235036.P7184889640510181019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A235036.P7184889640510181019

/-! ## A235036.P7847672361268586136

`eq[A055671(n+1), A235046(n+1)]+1`
-/

namespace A235036.P7847672361268586136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A235036.P7847672361268586136

/-! ## A235036.P11177991555056827597

`eq[A055671(n+1), A236380(n+1)]+1`
-/

namespace A235036.P11177991555056827597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A235036.P11177991555056827597

/-! ## A235036.P2100356531714150607

`eq[A055671(A000038(n)+n), A235046(n)]`
-/

namespace A235036.P2100356531714150607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P2100356531714150607

/-! ## A235036.P7419861012003600112

`eq[A055671(A000038(n)+n), A236380(n)]`
-/

namespace A235036.P7419861012003600112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P7419861012003600112

/-! ## A235036.P14791069492801332761

`eq[A055671(A063667(n)+n), A235046(n)]`
-/

namespace A235036.P14791069492801332761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A063667 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P14791069492801332761

/-! ## A235036.P9351145122599796719

`eq[A055671(A063667(n)+n), A236380(n)]`
-/

namespace A235036.P9351145122599796719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A063667 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P9351145122599796719

/-! ## A235036.P13887007223697472649

`eq[A000038(n)-A055671(n), A235046(n)]`
-/

namespace A235036.P13887007223697472649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P13887007223697472649

/-! ## A235036.P17424923214954493265

`eq[A000038(n)-A055671(n), A236380(n)]`
-/

namespace A235036.P17424923214954493265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P17424923214954493265

/-! ## A235036.P17101259399142583269

`eq[A063667(n)-A055671(n), A235046(n)]`
-/

namespace A235036.P17101259399142583269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n - A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P17101259399142583269

/-! ## A235036.P6022200215466484523

`eq[A063667(n)-A055671(n), A236380(n)]`
-/

namespace A235036.P6022200215466484523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n - A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235036.P6022200215466484523

/-!
# A235037: Number of terms of A014847 that are not greater than n.

The programs for A235037, the canonical program `A235037.P2716469781095852394` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235037 has offset 1).

The definition of A235037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235037.P2716469781095852394

`∑[C(2, A059288(n+1)²)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235037

/-- `∑[C(2, A059288(n+1)²)]` -/
def P2716469781095852394.Spec : Prop :=
  ∀ n, (P2716469781095852394.a n : ℤ) = A235037 (n + 1)

theorem P2716469781095852394.correct : P2716469781095852394.Spec := by
  intro n
  simp only [A235037, Nat.add_sub_cancel]

end A235037

/-! ## A235037.P13640472060848362032

`∑[char[A014847(n+1)-1]]`
-/

namespace A235037.P13640472060848362032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P13640472060848362032

namespace A235037

/-- `∑[char[A014847(n+1)-1]]` -/
def P13640472060848362032.Spec : Prop :=
  ∀ n, (P13640472060848362032.a n : ℤ) = A235037 (n + 1)

end A235037

/-! ## A235037.P13537225990214082906

`∑[C(A071416(n+1), n+1)]`
-/

namespace A235037.P13537225990214082906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071416 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P13537225990214082906

namespace A235037

/-- `∑[C(A071416(n+1), n+1)]` -/
def P13537225990214082906.Spec : Prop :=
  ∀ n, (P13537225990214082906.a n : ℤ) = A235037 (n + 1)

end A235037

/-! ## A235037.P3185722708369271589

`∑[A000007(A059288(n+1))]`
-/

namespace A235037.P3185722708369271589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A059288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P3185722708369271589

namespace A235037

/-- `∑[A000007(A059288(n+1))]` -/
def P3185722708369271589.Spec : Prop :=
  ∀ n, P3185722708369271589.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P10027011518756389399

`∑[A000217(C(2, 2*A059288(n+1)))]`
-/

namespace A235037.P10027011518756389399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.choose 2 (2 * A059288 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P10027011518756389399

namespace A235037

/-- `∑[A000217(C(2, 2*A059288(n+1)))]` -/
def P10027011518756389399.Spec : Prop :=
  ∀ n, P10027011518756389399.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P14456823146460420838

`∑[A001318(C(2, 2*A059288(n+1)))]`
-/

namespace A235037.P14456823146460420838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (Nat.choose 2 (2 * A059288 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P14456823146460420838

namespace A235037

/-- `∑[A001318(C(2, 2*A059288(n+1)))]` -/
def P14456823146460420838.Spec : Prop :=
  ∀ n, P14456823146460420838.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P1515341307280623254

`∑[A030106(C(2, 2*A059288(n+1)))]`
-/

namespace A235037.P1515341307280623254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (Nat.choose 2 (2 * A059288 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P1515341307280623254

namespace A235037

/-- `∑[A030106(C(2, 2*A059288(n+1)))]` -/
def P1515341307280623254.Spec : Prop :=
  ∀ n, P1515341307280623254.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P16023160211707760812

`∑[C(2, A059288(n+1)*A246593(n))]`
-/

namespace A235037.P16023160211707760812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A059288 (n + 1) * A246593 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P16023160211707760812

namespace A235037

/-- `∑[C(2, A059288(n+1)*A246593(n))]` -/
def P16023160211707760812.Spec : Prop :=
  ∀ n, (P16023160211707760812.a n : ℤ) = A235037 (n + 1)

end A235037

/-! ## A235037.P15062935995348958442

`∑[A000217(C(n, A059288(n+1)+n))]`
-/

namespace A235037.P15062935995348958442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.choose n (A059288 (n + 1) + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P15062935995348958442

namespace A235037

/-- `∑[A000217(C(n, A059288(n+1)+n))]` -/
def P15062935995348958442.Spec : Prop :=
  ∀ n, P15062935995348958442.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P3554159318523246826

`∑[A067770(A104635(A059289(n+1)))]`
-/

namespace A235037.P3554159318523246826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (A104635 (A059289 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P3554159318523246826

namespace A235037

/-- `∑[A067770(A104635(A059289(n+1)))]` -/
def P3554159318523246826.Spec : Prop :=
  ∀ n, P3554159318523246826.a n = A235037 (n + 1)

end A235037

/-! ## A235037.P16226758483631138584

`∑[A067770(A059289(n+1)²-1)]`
-/

namespace A235037.P16226758483631138584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (A059289 (n + 1) ^ 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P16226758483631138584

namespace A235037

/-- `∑[A067770(A059289(n+1)²-1)]` -/
def P16226758483631138584.Spec : Prop :=
  ∀ n, P16226758483631138584.a n = A235037 (n + 1)

end A235037

/-!
# A235038: E.g.f. satisfies: A(x) = sinh(x + Integral A(x) dx).

The programs for A235038, there is no canonical definition to state claims against.
-/

/-! ## A235038.P17283969999882055307

`A014085(A070960(n+1))-A000048(n)`
-/

namespace A235038.P17283969999882055307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A070960 (n + 1)).toNat - A000048 n

end

end A235038.P17283969999882055307

/-! ## A235038.P17025793620029809461

`A008616(A148441(n)*A187219(2*(n+2)))`
-/

namespace A235038.P17025793620029809461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A148441 n * A187219 (2 * (n + 2))).toNat

end

end A235038.P17025793620029809461

/-! ## A235038.P7017323291546113439

`A002620(A130578(n+1))+n!+A209899(A055775(n))²`
-/

namespace A235038.P7017323291546113439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A130578 (n + 1)).toNat + ((Nat.factorial n : ℤ) + A209899 (A055775 n).toNat ^ 2)

end

end A235038.P7017323291546113439

/-!
# A235039: Odd numbers which are factored to the same set of primes in Z as to the irreducible polynomials in GF(2)[X]; odd terms of A235036.

The programs for A235039, there is no canonical definition to state claims against.
-/

/-! ## A235039.P9395417234359499341

`∩[2*n+1, A235036(n)]`
-/

namespace A235039.P9395417234359499341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235039.P9395417234359499341

/-! ## A235039.P18197830379747669096

`∩[A235036(n), A235040(n)]`
-/

namespace A235039.P18197830379747669096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235039.P18197830379747669096

/-! ## A235039.P8205278734285789312

`∩[A235032(n+1), A235040(n)]`
-/

namespace A235039.P8205278734285789312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235039.P8205278734285789312

/-! ## A235039.P7907218280934521349

`∩[A235036(n), A257691(n+1)]`
-/

namespace A235039.P7907218280934521349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235039.P7907218280934521349

/-! ## A235039.P1863150023034766460

`∩[A235036(n), A359080(n+1)]`
-/

namespace A235039.P1863150023034766460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235039.P1863150023034766460

/-!
# A235040: After 1, composite odd numbers, whose prime divisors, when multiplied together without carry-bits (as codes for GF(2)[X]-polynomials, with A048720), yield the same number back.

The programs for A235040, there is no canonical definition to state claims against.
-/

/-! ## A235040.P13253820142501417018

`∩[A067800(n+1), A235034(n+1)]`
-/

namespace A235040.P13253820142501417018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235040.P13253820142501417018

/-! ## A235040.P16993490006038890493

`∩[A014076(n+1), A235034(n+1)]`
-/

namespace A235040.P16993490006038890493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235040.P16993490006038890493

/-! ## A235040.P16744898867595451802

`eq[A236378(n), A370482(n)]`
-/

namespace A235040.P16744898867595451802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235040.P16744898867595451802

/-! ## A235040.P13381681562137396980

`eq[n, A236836(A014683(A093178(n)))]`
-/

namespace A235040.P13381681562137396980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (A014683 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235040.P13381681562137396980

/-! ## A235040.P2999305880790261896

`eq[n, A236836(A063928(A008486(n)))]`
-/

namespace A235040.P2999305880790261896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (A063928 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235040.P2999305880790261896

/-!
# A235042: Factorization-preserving bijection from GF(2)[X]-polynomials to nonnegative integers, version which fixes the elements that are irreducible in both semirings.

The programs for A235042, there is no canonical definition to state claims against.
-/

/-! ## A235042.P9898866757605209823

`A234742(n)%Δ[A014580(A264354(n+1))]`
-/

namespace A235042.P9898866757605209823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (A264354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234742 n) (f1 (n + 1) - f1 n)

end

end A235042.P9898866757605209823

/-! ## A235042.P14604712477000441064

`gcd(A045840(A207908(n+1)), A234742(n))`
-/

namespace A235042.P14604712477000441064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045840 (A207908 (n + 1)).toNat) (A234742 n)

end

end A235042.P14604712477000441064

/-! ## A235042.P16673510236322721687

`A000196(A236837(n)²+n)`
-/

namespace A235042.P16673510236322721687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A236837 n ^ 2 + (n : ℤ)).toNat

end

end A235042.P16673510236322721687

/-! ## A235042.P6810327653930015655

`A000196(or(n, A236837(n)²))`
-/

namespace A235042.P6810327653930015655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (n : ℤ) (A236837 n ^ 2)).toNat

end

end A235042.P6810327653930015655

/-! ## A235042.P10565163135295120714

`A234742(n)%A095702(A228167(n))`
-/

namespace A235042.P10565163135295120714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234742 n) (A095702 (A228167 n).toNat)

end

end A235042.P10565163135295120714

/-!
# A235043: Partial sums of the characteristic function of A091209.

The programs for A235043, there is no canonical definition to state claims against.
-/

/-! ## A235043.P13934008965749394437

`∑[char[A091209(n+1)]]`
-/

namespace A235043.P13934008965749394437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091209 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P13934008965749394437

/-! ## A235043.P17169489983310675889

`∑[char[p?[A091242(n+1)]]]`
-/

namespace A235043.P17169489983310675889
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P17169489983310675889

/-! ## A235043.P15721347825425008352

`∑[char[p?[A235033(n+1)]]]`
-/

namespace A235043.P15721347825425008352
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P15721347825425008352

/-! ## A235043.P9667126711954873663

`∑[char[p?[A236844(n+1)]]]`
-/

namespace A235043.P9667126711954873663
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P9667126711954873663

/-! ## A235043.P2071900564363587575

`∑[char[p?[A236848(n+1)]]]`
-/

namespace A235043.P2071900564363587575
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P2071900564363587575

/-! ## A235043.P15704187700636940810

`∑[char[p?[A246156(n+1)]]]`
-/

namespace A235043.P15704187700636940810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235043.P15704187700636940810

/-!
# A235044: Partial sums of the characteristic function of A091214.

The programs for A235044, there is no canonical definition to state claims against.
-/

/-! ## A235044.P7457859058849879786

`∑[char[A091214(n+1)]]`
-/

namespace A235044.P7457859058849879786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091214 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P7457859058849879786

/-! ## A235044.P15401572913738311083

`∑[char[A235041(A091209(n+1))]]`
-/

namespace A235044.P15401572913738311083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235041 (A091209 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P15401572913738311083

/-! ## A235044.P8609248941994773498

`∑[A091225(n)*A323162(n+1)]`
-/

namespace A235044.P8609248941994773498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 n * A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P8609248941994773498

/-! ## A235044.P17196314230772053192

`∑[A235046(n*A091225(n))]`
-/

namespace A235044.P17196314230772053192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235046 ((n : ℤ) * A091225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P17196314230772053192

/-! ## A235044.P5540634819471234739

`∑[and(A091225(n), A235046(n))]`
-/

namespace A235044.P5540634819471234739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091225 n) (A235046 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P5540634819471234739

/-! ## A235044.P13582852077225277403

`∑[A091225(n*A008683(A030664(n)))]`
-/

namespace A235044.P13582852077225277403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 ((n : ℤ) * A008683 (A030664 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P13582852077225277403

/-! ## A235044.P46376672427151766

`∑[A000035(C(n, A236836(n)+1)²)]`
-/

namespace A235044.P46376672427151766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose n (A236836 n + 1).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P46376672427151766

/-! ## A235044.P6783327419912133851

`∑[A010052(A024645(2*n+3))]`
-/

namespace A235044.P6783327419912133851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A024645 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P6783327419912133851

/-! ## A235044.P1400175502233192454

`∑[A232747(n+1)²%A089608(n+1)]`
-/

namespace A235044.P1400175502233192454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232747 (n + 1) ^ 2) (A089608 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235044.P1400175502233192454

/-! ## A235044.P18383085415695791627

`val(A025505(A025510(n+3)), 3)`
-/

namespace A235044.P18383085415695791627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025505 (A025510 (n + 3)).toNat).toNat 3

end

end A235044.P18383085415695791627

/-!
# A235045: Fixed points of permutations A235041/A235042.

The programs for A235045, there is no canonical definition to state claims against.
-/

/-! ## A235045.P11623564016803594607

`eq[n, A235041(n)]`
-/

namespace A235045.P11623564016803594607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235045.P11623564016803594607

/-! ## A235045.P1242687664573642751

`eq[n, A235042(n)]`
-/

namespace A235045.P1242687664573642751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235045.P1242687664573642751

/-! ## A235045.P2510203260977612514

`A235042(record[gcd(n, A235042(n))])`
-/

namespace A235045.P2510203260977612514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A235042 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A235045.P2510203260977612514

/-! ## A235045.P16227699796745469950

`A235042(record[n/(1-A235042(n)+n)])`
-/

namespace A235045.P16227699796745469950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A235042 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A235045.P16227699796745469950

/-! ## A235045.P3205858810842611898

`lt[(A235042(n)%A065033(2*n))^3, 2]`
-/

namespace A235045.P3205858810842611898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235042 n) (A065033 (2 * n)) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235045.P3205858810842611898

/-! ## A235045.P14165788117102022540

`record[A235042(n)%A233583(n+2)]`
-/

namespace A235045.P14165788117102022540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235042 n) (A233583 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235045.P14165788117102022540

/-!
# A235046: Characteristic function for A235033.

The programs for A235046, there is no canonical definition to state claims against.
-/

/-! ## A235046.P8797512552524071131

`char[A235033(n+1)]`
-/

namespace A235046.P8797512552524071131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A235046.P8797512552524071131

/-! ## A235046.P13976404976448266013

`1-C(2, A236380(n))`
-/

namespace A235046.P13976404976448266013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A236380 n).toNat : ℤ)

end

end A235046.P13976404976448266013

/-! ## A235046.P12734450040756732474

`char[comp[A235032(n+1)]]`
-/

namespace A235046.P12734450040756732474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235032 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A235046.P12734450040756732474

/-! ## A235046.P12147036605392791715

`A126869(C(2, A236380(n)))`
-/

namespace A235046.P12147036605392791715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (Nat.choose 2 (A236380 n).toNat)

end

end A235046.P12147036605392791715

/-! ## A235046.P14860849371583109571

`ceil(A236380(n)/A038764(n))`
-/

namespace A235046.P14860849371583109571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236380 n : ℚ) / (A038764 n : ℚ)⌉

end

end A235046.P14860849371583109571

/-! ## A235046.P1457138307624314052

`ceil(A236380(n)/A299263(n))`
-/

namespace A235046.P1457138307624314052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236380 n : ℚ) / (A299263 n : ℚ)⌉

end

end A235046.P1457138307624314052

/-! ## A235046.P14232818321253495905

`ceil(A236380(n)/A299272(n))`
-/

namespace A235046.P14232818321253495905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236380 n : ℚ) / (A299272 n : ℚ)⌉

end

end A235046.P14232818321253495905

/-! ## A235046.P14351914733656985608

`A010060(C(2, A236380(n))+2)`
-/

namespace A235046.P14351914733656985608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose 2 (A236380 n).toNat + 2)

end

end A235046.P14351914733656985608

/-! ## A235046.P15887412859002250831

`A033264(C(2, A236380(n))+2)`
-/

namespace A235046.P15887412859002250831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Nat.choose 2 (A236380 n).toNat + 2)

end

end A235046.P15887412859002250831

/-! ## A235046.P16036866924187846148

`1-C(A236851(n), A234742(n))`
-/

namespace A235046.P16036866924187846148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A236851 n).toNat (A234742 n).toNat : ℤ)

end

end A235046.P16036866924187846148

/-! ## A235046.P6469699773269990475

`C(4, A003349(C(2, A236380(n))+1))`
-/

namespace A235046.P6469699773269990475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A003349 (Nat.choose 2 (A236380 n).toNat + 1)).toNat

end

end A235046.P6469699773269990475

/-! ## A235046.P2068230978666292599

`A001222(A001222(C(2, A236380(n))+4))`
-/

namespace A235046.P2068230978666292599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (Nat.choose 2 (A236380 n).toNat + 4)).toNat

end

end A235046.P2068230978666292599

/-! ## A235046.P8006491559679010465

`A006530(A236380(n)+2)%2`
-/

namespace A235046.P8006491559679010465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A236380 n + 2).toNat) 2

end

end A235046.P8006491559679010465

/-! ## A235046.P3431436865830260044

`A019425(A236380(n)/2)`
-/

namespace A235046.P3431436865830260044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (SequenceMachineLib.roundAway ((A236380 n : ℚ) / 2)).toNat

end

end A235046.P3431436865830260044

/-! ## A235046.P6842877521072311709

`A019425(A236380(n))`
-/

namespace A235046.P6842877521072311709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A236380 n).toNat

end

end A235046.P6842877521072311709

/-! ## A235046.P6000500598449791860

`2-A014963(A236380(n)+2)`
-/

namespace A235046.P6000500598449791860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014963 (A236380 n + 2).toNat

end

end A235046.P6000500598449791860

/-! ## A235046.P2995263430194549199

`(A023634(A236380(n)+1)+5)%3`
-/

namespace A235046.P2995263430194549199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023634 (A236380 n + 1).toNat + 5) 3

end

end A235046.P2995263430194549199

/-!
# A235047: Permutation of nonnegative integers: a(n) = A235199(A234840(n+1)-1).

The programs for A235047, there is no canonical definition to state claims against.
-/

/-! ## A235047.P16812563391310230354

`A235199(A234840(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235047.P16812563391310230354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A234840 (n + 1) - 1).toNat

end

end A235047.P16812563391310230354

/-! ## A235047.P6244856547356701862

`A235199(A235048(A235199(n)))`
-/

namespace A235047.P6244856547356701862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A235048 (A235199 n).toNat).toNat

end

end A235047.P6244856547356701862

/-! ## A235047.P9055995292174276002

`A235199(A000720(A234840(A008578(n+1))))`
-/

namespace A235047.P9055995292174276002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000720 (A234840 (A008578 (n + 1)).toNat).toNat).toNat

end

end A235047.P9055995292174276002

/-! ## A235047.P4717335730941655706

`A235199(A000720(A008578(A235199(A234743(n+1)))))`
-/

namespace A235047.P4717335730941655706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000720 (A008578 (A235199 (A234743 (n + 1)).toNat).toNat).toNat).toNat

end

end A235047.P4717335730941655706

/-! ## A235047.P13701258313226068418

`A235199(A000720(A008578(A234744(A235199(n+1)))))`
-/

namespace A235047.P13701258313226068418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A000720 (A008578 (A234744 (A235199 (n + 1)).toNat).toNat).toNat).toNat

end

end A235047.P13701258313226068418

/-!
# A235048: Permutation of nonnegative integers: a(n) = A234840(A235199(n)+1) - 1.

The programs for A235048, there is no canonical definition to state claims against.
-/

/-! ## A235048.P2927421053401927672

`A234840(A235199(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235048.P2927421053401927672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (A235199 n + 1).toNat - 1

end

end A235048.P2927421053401927672

/-! ## A235048.P13769585067826792759

`A325970(p?[2*n+1])+A234840(A235199(n)+1)`
-/

namespace A235048.P13769585067826792759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A234840 (A235199 n + 1).toNat

end

end A235048.P13769585067826792759

/-! ## A235048.P1039707868763264297

`A325970(A185269(n+1))+A234840(A235199(n)+1)`
-/

namespace A235048.P1039707868763264297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A185269 (n + 1)).toNat + A234840 (A235199 n + 1).toNat

end

end A235048.P1039707868763264297

/-! ## A235048.P8075454505351928092

`A325970(A198175(n+1))+A234840(A235199(n)+1)`
-/

namespace A235048.P8075454505351928092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A198175 (n + 1)).toNat + A234840 (A235199 n + 1).toNat

end

end A235048.P8075454505351928092

/-! ## A235048.P13984207939984918283

`A325970(A204894(n+1))+A234840(A235199(n)+1)`
-/

namespace A235048.P13984207939984918283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A204894 (n + 1)).toNat + A234840 (A235199 n + 1).toNat

end

end A235048.P13984207939984918283

/-! ## A235048.P14760485092098508517

`A325970(A005846(n+1))+A234840(A235199(n)+1)`
-/

namespace A235048.P14760485092098508517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A005846 (n + 1)).toNat + A234840 (A235199 n + 1).toNat

end

end A235048.P14760485092098508517

/-! ## A235048.P9418148483419436876

`A235199(A235047(A235199(n)))`
-/

namespace A235048.P9418148483419436876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A235047 (A235199 n).toNat).toNat

end

end A235048.P9418148483419436876

/-!
# A235049: Subtract one from each nonzero digit in decimal representation of n.

The programs for A235049, there is no canonical definition to state claims against.
-/

/-! ## A235049.P12792651378615168677

`n-A136400(n)`
-/

namespace A235049.P12792651378615168677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

end

end A235049.P12792651378615168677

/-! ## A235049.P9706088558076906997

`n-A064770(A064770(n))`
-/

namespace A235049.P9706088558076906997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 (A064770 n).toNat

end

end A235049.P9706088558076906997

/-! ## A235049.P17335878013749870251

`-(A136400(n)+A001489(n))`
-/

namespace A235049.P17335878013749870251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A136400 n + A001489 n)

end

end A235049.P17335878013749870251

/-! ## A235049.P16363605567734753057

`A061601(A136400(n)+A061601(n))`
-/

namespace A235049.P16363605567734753057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A136400 n + A061601 n).toNat

end

end A235049.P16363605567734753057

/-! ## A235049.P1511689757075303373

`A016777(n)%(A136400(n)+A005408(n))`
-/

namespace A235049.P1511689757075303373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A136400 n + A005408 n)

end

end A235049.P1511689757075303373

/-! ## A235049.P12095942442202112289

`n-A059995(A055120(n)+n)`
-/

namespace A235049.P12095942442202112289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059995 (A055120 n + (n : ℤ)).toNat

end

end A235049.P12095942442202112289

/-! ## A235049.P13233749190813728420

`n-A261684(A000124(n+1))`
-/

namespace A235049.P13233749190813728420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261684 (A000124 (n + 1)).toNat

end

end A235049.P13233749190813728420

/-! ## A235049.P255735309830344767

`n-A261684(A034856(n+1))`
-/

namespace A235049.P255735309830344767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261684 (A034856 (n + 1)).toNat

end

end A235049.P255735309830344767

/-! ## A235049.P4457239685421687836

`n-A261684(A134869(n+1))`
-/

namespace A235049.P4457239685421687836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261684 (A134869 (n + 1)).toNat

end

end A235049.P4457239685421687836

/-!
# A235050: Squarefree numbers such that none of their prime factors share common 1-bits in the same bit-position of their binary representations.

The programs for A235050, the canonical program `A235050.P8647976439226390156` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235050 has offset 1).

The definition of A235050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235050.P8647976439226390156

`∪[A000040(n+1), A281292(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A235050

/-- `∪[A000040(n+1), A281292(n+1)]` -/
def P8647976439226390156.Spec : Prop :=
  ∀ n, (P8647976439226390156.a n : ℤ) = A235050 (n + 1)

theorem P8647976439226390156.correct : P8647976439226390156.Spec := by
  intro n
  simp only [A235050, Nat.add_sub_cancel]

end A235050

/-! ## A235050.P13364689338703539024

`∪[A002145(n+1), A281292(n+1)]`
-/

namespace A235050.P13364689338703539024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P13364689338703539024

namespace A235050

/-- `∪[A002145(n+1), A281292(n+1)]` -/
def P13364689338703539024.Spec : Prop :=
  ∀ n, (P13364689338703539024.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P4422078507873594346

`∪[A004139(n+1), A281292(n+1)]`
-/

namespace A235050.P4422078507873594346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P4422078507873594346

namespace A235050

/-- `∪[A004139(n+1), A281292(n+1)]` -/
def P4422078507873594346.Spec : Prop :=
  ∀ n, (P4422078507873594346.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P3349484392161929329

`∪[A006005(n+1), A281292(n+1)]`
-/

namespace A235050.P3349484392161929329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P3349484392161929329

namespace A235050

/-- `∪[A006005(n+1), A281292(n+1)]` -/
def P3349484392161929329.Spec : Prop :=
  ∀ n, (P3349484392161929329.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P785060999393454461

`∪[A008578(n+1), A281292(n+1)]`
-/

namespace A235050.P785060999393454461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P785060999393454461

namespace A235050

/-- `∪[A008578(n+1), A281292(n+1)]` -/
def P785060999393454461.Spec : Prop :=
  ∀ n, (P785060999393454461.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P16317399773461543577

`∪[A040116(n+1), A281292(n+1)]`
-/

namespace A235050.P16317399773461543577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P16317399773461543577

namespace A235050

/-- `∪[A040116(n+1), A281292(n+1)]` -/
def P16317399773461543577.Spec : Prop :=
  ∀ n, (P16317399773461543577.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P4189244152181578084

`∪[A042987(n+1), A281292(n+1)]`
-/

namespace A235050.P4189244152181578084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P4189244152181578084

namespace A235050

/-- `∪[A042987(n+1), A281292(n+1)]` -/
def P4189244152181578084.Spec : Prop :=
  ∀ n, (P4189244152181578084.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P207599538901758061

`∪[A045319(n+1), A281292(n+1)]`
-/

namespace A235050.P207599538901758061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P207599538901758061

namespace A235050

/-- `∪[A045319(n+1), A281292(n+1)]` -/
def P207599538901758061.Spec : Prop :=
  ∀ n, (P207599538901758061.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P8138907824852580650

`∪[A045323(n+1), A281292(n+1)]`
-/

namespace A235050.P8138907824852580650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P8138907824852580650

namespace A235050

/-- `∪[A045323(n+1), A281292(n+1)]` -/
def P8138907824852580650.Spec : Prop :=
  ∀ n, (P8138907824852580650.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P8547233870895550443

`∪[A045326(n+1), A281292(n+1)]`
-/

namespace A235050.P8547233870895550443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P8547233870895550443

namespace A235050

/-- `∪[A045326(n+1), A281292(n+1)]` -/
def P8547233870895550443.Spec : Prop :=
  ∀ n, (P8547233870895550443.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P9712424316287350727

`∪[A045395(n+1), A281292(n+1)]`
-/

namespace A235050.P9712424316287350727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P9712424316287350727

namespace A235050

/-- `∪[A045395(n+1), A281292(n+1)]` -/
def P9712424316287350727.Spec : Prop :=
  ∀ n, (P9712424316287350727.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P18077316676249366450

`∪[A045419(n+1), A281292(n+1)]`
-/

namespace A235050.P18077316676249366450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P18077316676249366450

namespace A235050

/-- `∪[A045419(n+1), A281292(n+1)]` -/
def P18077316676249366450.Spec : Prop :=
  ∀ n, (P18077316676249366450.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P2420526500788668173

`∪[A049098(n+1), A281292(n+1)]`
-/

namespace A235050.P2420526500788668173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P2420526500788668173

namespace A235050

/-- `∪[A049098(n+1), A281292(n+1)]` -/
def P2420526500788668173.Spec : Prop :=
  ∀ n, (P2420526500788668173.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P1009591788894018723

`∪[A065091(n+1), A281292(n+1)]`
-/

namespace A235050.P1009591788894018723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P1009591788894018723

namespace A235050

/-- `∪[A065091(n+1), A281292(n+1)]` -/
def P1009591788894018723.Spec : Prop :=
  ∀ n, (P1009591788894018723.a n : ℤ) = A235050 (n + 1)

end A235050

/-! ## A235050.P12699896510497570383

`filter[A342081(n+1), A353491(#)]`
-/

namespace A235050.P12699896510497570383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A235050.P12699896510497570383

namespace A235050

/-- `filter[A342081(n+1), A353491(#)]` -/
def P12699896510497570383.Spec : Prop :=
  ∀ n, P12699896510497570383.a n = A235050 (n + 1)

end A235050

/-! ## A235050.P17395187106953252742

`filter[A365406(n+1), A353491(#)]`
-/

namespace A235050.P17395187106953252742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A235050.P17395187106953252742

namespace A235050

/-- `filter[A365406(n+1), A353491(#)]` -/
def P17395187106953252742.Spec : Prop :=
  ∀ n, P17395187106953252742.a n = A235050 (n + 1)

end A235050

/-! ## A235050.P8043194904542314943

`filter[A093641(n+1), A353491(#)]`
-/

namespace A235050.P8043194904542314943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A235050.P8043194904542314943

namespace A235050

/-- `filter[A093641(n+1), A353491(#)]` -/
def P8043194904542314943.Spec : Prop :=
  ∀ n, P8043194904542314943.a n = A235050 (n + 1)

end A235050

/-! ## A235050.P5523761575042678201

`filter[A196499(n+1), A340371(#)]`
-/

namespace A235050.P5523761575042678201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A235050.P5523761575042678201

namespace A235050

/-- `filter[A196499(n+1), A340371(#)]` -/
def P5523761575042678201.Spec : Prop :=
  ∀ n, P5523761575042678201.a n = A235050 (n + 1)

end A235050

/-! ## A235050.P16058444997527017741

`filter[A196499(n+1), A365716(#)]`
-/

namespace A235050.P16058444997527017741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A235050.P16058444997527017741

namespace A235050

/-- `filter[A196499(n+1), A365716(#)]` -/
def P16058444997527017741.Spec : Prop :=
  ∀ n, P16058444997527017741.a n = A235050 (n + 1)

end A235050

/-! ## A235050.P284240367935187694

`∩[A066522(n+1), A196499(n+1)]`
-/

namespace A235050.P284240367935187694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235050.P284240367935187694

namespace A235050

/-- `∩[A066522(n+1), A196499(n+1)]` -/
def P284240367935187694.Spec : Prop :=
  ∀ n, (P284240367935187694.a n : ℤ) = A235050 (n + 1)

end A235050

/-!
# A235053: Numbers k of the form p^2 + 1 (for prime p) where k^2 + 1 is also prime.

The programs for A235053, there is no canonical definition to state claims against.
-/

/-! ## A235053.P8914425092527858884

`A236068(n+1)²+1`
-/

namespace A235053.P8914425092527858884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236068 (n + 1) ^ 2 + 1

end

end A235053.P8914425092527858884

/-! ## A235053.P559929725549894991

`A001157(A236068(n+1))`
-/

namespace A235053.P559929725549894991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A236068 (n + 1)).toNat

end

end A235053.P559929725549894991

/-! ## A235053.P17362657029869175634

`A246447(A236068(n+1)-2)`
-/

namespace A235053.P17362657029869175634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246447 (A236068 (n + 1) - 2).toNat

end

end A235053.P17362657029869175634

/-! ## A235053.P6128085413133529588

`∑{d}[A236068(n+1), A000290(#)]`
-/

namespace A235053.P6128085413133529588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000290 d

end

end A235053.P6128085413133529588

/-! ## A235053.P13837930152063871798

`A006519(2*n+5)+A000290(A236068(n+1))`
-/

namespace A235053.P13837930152063871798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) + A000290 (A236068 (n + 1)).toNat

end

end A235053.P13837930152063871798

/-! ## A235053.P1375527295906755170

`A087279(2*A236068(n+1))`
-/

namespace A235053.P1375527295906755170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * A236068 (n + 1)).toNat

end

end A235053.P1375527295906755170

/-!
# A235054: The greedy sequence of real numbers at least 1 that do not contain any 3-term geometric progressions with integer ratio.

The programs for A235054, there is no canonical definition to state claims against.
-/

/-! ## A235054.P16094642332383878365

`∩[A051234(n+1), A191285(n+1)]`
-/

namespace A235054.P16094642332383878365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235054.P16094642332383878365

/-! ## A235054.P10523926259414458933

`eq[Δ[A195868(n+2)], A025428(2*n)]`
-/

namespace A235054.P10523926259414458933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195868 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A235054.P10523926259414458933

/-! ## A235054.P8296060994124353186

`lt[A002415(A133058(n)), A307403(n)]`
-/

namespace A235054.P8296060994124353186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (A133058 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235054.P8296060994124353186

/-! ## A235054.P372646308302093069

`lt[A169707(A133058(n)), A126007(n+1)]`
-/

namespace A235054.P372646308302093069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (A133058 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235054.P372646308302093069

/-! ## A235054.P1367543506232858608

`A191285(n+3)%A101911(A057030(n+1))`
-/

namespace A235054.P1367543506232858608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191285 (n + 3)) (A101911 (A057030 (n + 1)).toNat)

end

end A235054.P1367543506232858608

/-!
# A235056: The greedy sequence of real numbers at least 1 that do not contain any 5-term geometric progressions with integer ratio.

The programs for A235056, there is no canonical definition to state claims against.
-/

/-! ## A235056.P16552942028065418354

`A340852(A369612(n+1))`
-/

namespace A235056.P16552942028065418354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340852 (A369612 (n + 1)).toNat

end

end A235056.P16552942028065418354

/-! ## A235056.P8352935503627482989

`A000005(A021354(n))*A311625(n)`
-/

namespace A235056.P8352935503627482989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A021354 n).toNat * A311625 n

end

end A235056.P8352935503627482989

/-!
# A235057: The greedy sequence of real numbers at least 1 that do not contain any 6-term geometric progressions with integer ratio.

The programs for A235057, there is no canonical definition to state claims against.
-/

/-! ## A235057.P5714709610988340169

`A008833(A107676(n))*A036966(n+1)`
-/

namespace A235057.P5714709610988340169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A107676 n).toNat * A036966 (n + 1)

end

end A235057.P5714709610988340169

/-!
# A235058: The greedy sequence of real numbers at least 1 that do not contain any 7-term geometric progressions with integer ratio.

The programs for A235058, there is no canonical definition to state claims against.
-/

/-! ## A235058.P13915517589325830290

`A038572(A235059(n+1))`
-/

namespace A235058.P13915517589325830290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A235059 (n + 1)).toNat

end

end A235058.P13915517589325830290

/-! ## A235058.P13418553030462950356

`A235059(n+1)/A020639(A001813(n))`
-/

namespace A235058.P13418553030462950356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235059 (n + 1) : ℚ) / (A020639 (A001813 n).toNat : ℚ)

end

end A235058.P13418553030462950356

/-!
# A235059: The greedy sequence of real numbers at least 1 that do not contain any 8-term geometric progressions with integer ratio.

The programs for A235059, there is no canonical definition to state claims against.
-/

/-! ## A235059.P4517887916673131744

`A019425(A235058(n+1)+1)`
-/

namespace A235059.P4517887916673131744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A235058 (n + 1) + 1).toNat

end

end A235059.P4517887916673131744

/-! ## A235059.P6146224758947088595

`A101921(A235058(n+1)+1)`
-/

namespace A235059.P6146224758947088595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101921 (A235058 (n + 1) + 1).toNat

end

end A235059.P6146224758947088595

/-!
# A235060: The greedy sequence of real numbers at least 1 that do not contain any 9-term geometric progressions with integer ratio.

The programs for A235060, there is no canonical definition to state claims against.
-/

/-! ## A235060.P9799477045203134231

`A326690(A235057(n+1)²/A235054(n+1))`
-/

namespace A235060.P9799477045203134231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (SequenceMachineLib.roundAway ((A235057 (n + 1) ^ 2 : ℚ) / (A235054 (n + 1) : ℚ))).toNat

end

end A235060.P9799477045203134231

/-!
# A235061: Number of ways to write n = k*(k+1)/2 + m with k > 0 and m > 0 such that prime(k*(k+1)/2) + phi(m) is prime, where phi(.) is Euler's totient function.

The programs for A235061, there is no canonical definition to state claims against.
-/

/-! ## A235061.P14398412228854753285

`A008611(A008611(n)-A053867(A028495(n)))`
-/

namespace A235061.P14398412228854753285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008611 n - A053867 (A028495 n).toNat).toNat

end

end A235061.P14398412228854753285

/-! ## A235061.P4853133317362726950

`A088205(xor(A014535(n), A102671(n)))`
-/

namespace A235061.P4853133317362726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (Int.xor (A014535 n) (A102671 n)).toNat

end

end A235061.P4853133317362726950

/-! ## A235061.P17534291477425415952

`A035232(eq[A008611(n), A230980(n)])`
-/

namespace A235061.P17534291477425415952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A235061.P17534291477425415952

/-! ## A235061.P15922356418732752156

`A039995(eq[A008611(n), A230980(n)])`
-/

namespace A235061.P15922356418732752156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039995 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A235061.P15922356418732752156

/-!
# A235062: Odd part of n-th superfactorial (A000178).

The programs for A235062, the canonical program `A235062.P12767841605931254477` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235062 has offset 1).

The definition of A235062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A235062.P12767841605931254477

`A000178(n+1)/2^A174605(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235062

/-- `A000178(n+1)/2^A174605(n+1)` -/
def P12767841605931254477.Spec : Prop :=
  ∀ n, P12767841605931254477.a n = (A235062 (n + 1) : ℚ)

end A235062

/-! ## A235062.P13946867204892425326

`∏[gcd((n+1)!, ∏[2*n+1])]`
-/

namespace A235062.P13946867204892425326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235062.P13946867204892425326

namespace A235062

/-- `∏[gcd((n+1)!, ∏[2*n+1])]` -/
def P13946867204892425326.Spec : Prop :=
  ∀ n, (P13946867204892425326.a n : ℤ) = A235062 (n + 1)

end A235062

/-! ## A235062.P11037942696321411021

`∏[∏[gcd(n+1, ∏[n+1+n])]]`
-/

namespace A235062.P11037942696321411021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235062.P11037942696321411021

namespace A235062

/-- `∏[∏[gcd(n+1, ∏[n+1+n])]]` -/
def P11037942696321411021.Spec : Prop :=
  ∀ n, (P11037942696321411021.a n : ℤ) = A235062 (n + 1)

end A235062

/-! ## A235062.P18183729754359932346

`∏[∏[(n+1)/2^val(n+1, 2)]]`
-/

namespace A235062.P18183729754359932346
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235062.P18183729754359932346

namespace A235062

/-- `∏[∏[(n+1)/2^val(n+1, 2)]]` -/
def P18183729754359932346.Spec : Prop :=
  ∀ n, P18183729754359932346.a n = (A235062 (n + 1) : ℚ)

end A235062

/-! ## A235062.P8328489756568542038

`∏[A049606(n+1)]`
-/

namespace A235062.P8328489756568542038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A235062.P8328489756568542038

namespace A235062

/-- `∏[A049606(n+1)]` -/
def P8328489756568542038.Spec : Prop :=
  ∀ n, P8328489756568542038.a n = A235062 (n + 1)

end A235062

/-!
# A235063: Continued fraction expansion of Sum(i=1..inf, 1/2^(2^i+1) ).

The programs for A235063, there is no canonical definition to state claims against.
-/

/-! ## A235063.P15608312159026900990

`A007400(n+1)/ratio[gcd(2, n)]`
-/

namespace A235063.P15608312159026900990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007400 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A235063.P15608312159026900990

/-! ## A235063.P12009794740038003440

`ratio[A000034(n)]*A007400(n+1)`
-/

namespace A235063.P12009794740038003440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A007400 (n + 1) : ℚ)

end

end A235063.P12009794740038003440

/-! ## A235063.P17111868827040910724

`Δ[A073088(n+1)]*ratio[A000034(n)]`
-/

namespace A235063.P17111868827040910724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A235063.P17111868827040910724

/-! ## A235063.P14384701168638447982

`A007400(n+1)/ratio[A000034(n+1)]`
-/

namespace A235063.P14384701168638447982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007400 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A235063.P14384701168638447982

/-! ## A235063.P8974824331475879331

`2*A007400(n+1)/A040005(n+1)`
-/

namespace A235063.P8974824331475879331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A007400 (n + 1) : ℚ) / (A040005 (n + 1) : ℚ))

end

end A235063.P8974824331475879331

/-! ## A235063.P9005619414928288958

`A007400(n+1)*A007400(n)/a(n-1)` with `a(0)=2`
-/

namespace A235063.P9005619414928288958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A007400 (n + 1) * A007400 n : ℚ) / a (n - 1)

end

end A235063.P9005619414928288958

/-! ## A235063.P8585759124236108244

`A040001(n)²*A088431(A028310(n))`
-/

namespace A235063.P8585759124236108244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2 * A088431 (A028310 n).toNat

end

end A235063.P8585759124236108244

/-!
# A235064: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235064, there is no canonical definition to state claims against.
-/

/-! ## A235064.P18014766359375210754

`A235071(∑[n]+1)`
-/

namespace A235064.P18014766359375210754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235064.P18014766359375210754

/-! ## A235064.P453059039058326666

`lcm(2, A235071(A000124(n)))`
-/

namespace A235064.P453059039058326666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235071 (A000124 n).toNat)

end

end A235064.P453059039058326666

/-! ## A235064.P5777123403223152186

`lcm(4, A235071(∑[A028310(n)]))`
-/

namespace A235064.P5777123403223152186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A235064.P5777123403223152186

/-! ## A235064.P8233796591285051733

`record[A010054(n)*A235071(n+1)]`
-/

namespace A235064.P8233796591285051733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235064.P8233796591285051733

/-! ## A235064.P17724928728496031249

`record[A235071(n+1)/A007318(n)]`
-/

namespace A235064.P17724928728496031249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235071 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235064.P17724928728496031249

/-!
# A235065: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235065, there is no canonical definition to state claims against.
-/

/-! ## A235065.P4716910982193609803

`A235071(∑[n+1]+2)`
-/

namespace A235065.P4716910982193609803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235065.P4716910982193609803

/-! ## A235065.P1593704947200322422

`record[A010054(n)*A235071(n+2)]`
-/

namespace A235065.P1593704947200322422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235065.P1593704947200322422

/-! ## A235065.P4333069943693362407

`record[A235071(n+3)/A008275(n+1)]`
-/

namespace A235065.P4333069943693362407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235071 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235065.P4333069943693362407

/-! ## A235065.P7977400960185671456

`record[and(A167374(n+1), A235071(n+2))]`
-/

namespace A235065.P7977400960185671456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 (n + 1)) (A235071 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235065.P7977400960185671456

/-!
# A235066: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235066, there is no canonical definition to state claims against.
-/

/-! ## A235066.P11621120189304033603

`A235071(∑[n+2]+4)`
-/

namespace A235066.P11621120189304033603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235066.P11621120189304033603

/-! ## A235066.P10224547455633930531

`lcm(2, A235071(A167614(n+1)))`
-/

namespace A235066.P10224547455633930531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235071 (A167614 (n + 1)).toNat)

end

end A235066.P10224547455633930531

/-! ## A235066.P12295768562928062610

`record[A235071(A167614(val(n+1, 2)+1))]`
-/

namespace A235066.P12295768562928062610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235066.P12295768562928062610

/-! ## A235066.P12384135021044881311

`A235071(A167614(n+1))+A178798(n)`
-/

namespace A235066.P12384135021044881311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A167614 (n + 1)).toNat + A178798 n

end

end A235066.P12384135021044881311

/-! ## A235066.P9789477196013610332

`A235071(A167614(n+1))+A185245(n)`
-/

namespace A235066.P9789477196013610332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A167614 (n + 1)).toNat + A185245 n

end

end A235066.P9789477196013610332

/-!
# A235067: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235067, there is no canonical definition to state claims against.
-/

/-! ## A235067.P13039742990503730760

`A235071(∑[a(n-1)+1]+2)` with `a(0)=8, a(1)=4`
-/

namespace A235067.P13039742990503730760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235067.P13039742990503730760

/-! ## A235067.P8656171408118561488

`A235071(A374004(n+1))`
-/

namespace A235067.P8656171408118561488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A374004 (n + 1)).toNat

end

end A235067.P8656171408118561488

/-! ## A235067.P8568925184705242154

`A235071(A141214(n)+7)`
-/

namespace A235067.P8568925184705242154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A141214 n + 7).toNat

end

end A235067.P8568925184705242154

/-! ## A235067.P7460613607075679160

`A235071(A052905(n)+9)`
-/

namespace A235067.P7460613607075679160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A052905 n + 9).toNat

end

end A235067.P7460613607075679160

/-! ## A235067.P8274943418974570519

`A235071(A055999(n)+10)`
-/

namespace A235067.P8274943418974570519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A055999 n + 10).toNat

end

end A235067.P8274943418974570519

/-!
# A235068: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235068, there is no canonical definition to state claims against.
-/

/-! ## A235068.P5038210364626376344

`A235071(∑[a(n-1)+1]+2)` with `a(0)=13, a(1)=5`
-/

namespace A235068.P5038210364626376344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235068.P5038210364626376344

/-! ## A235068.P11523389334111117224

`A235071(A374005(n+1))`
-/

namespace A235068.P11523389334111117224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A374005 (n + 1)).toNat

end

end A235068.P11523389334111117224

/-! ## A235068.P10604313444833165509

`A235071(A167499(n+3))`
-/

namespace A235068.P10604313444833165509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A167499 (n + 3)).toNat

end

end A235068.P10604313444833165509

/-! ## A235068.P9854609915872811323

`A235071(A155212(n)+13)`
-/

namespace A235068.P9854609915872811323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A155212 n + 13).toNat

end

end A235068.P9854609915872811323

/-! ## A235068.P6955983017547652862

`A235071(eq[7, A066657(n)])`
-/

namespace A235068.P6955983017547652862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235068.P6955983017547652862

/-!
# A235069: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235069, there is no canonical definition to state claims against.
-/

/-! ## A235069.P4109800928657181049

`A235071(A374007(n+1))`
-/

namespace A235069.P4109800928657181049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A374007 (n + 1)).toNat

end

end A235069.P4109800928657181049

/-! ## A235069.P10715460504359188774

`A235071(A056115(n)+21)`
-/

namespace A235069.P10715460504359188774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A056115 n + 21).toNat

end

end A235069.P10715460504359188774

/-! ## A235069.P7710849622389015916

`A235071(A167499(n+4)+1)`
-/

namespace A235069.P7710849622389015916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A167499 (n + 4) + 1).toNat

end

end A235069.P7710849622389015916

/-! ## A235069.P2386078286306987371

`A235071(A141214(n+2)+9)`
-/

namespace A235069.P2386078286306987371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A141214 (n + 2) + 9).toNat

end

end A235069.P2386078286306987371

/-! ## A235069.P9821123371349574758

`A235071(A046691(n+3)+10)`
-/

namespace A235069.P9821123371349574758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A046691 (n + 3) + 10).toNat

end

end A235069.P9821123371349574758

/-!
# A235070: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235070, there is no canonical definition to state claims against.
-/

/-! ## A235070.P216853770016194682

`A235071(A374008(n+1))`
-/

namespace A235070.P216853770016194682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A374008 (n + 1)).toNat

end

end A235070.P216853770016194682

/-! ## A235070.P10318093437641603799

`A235071(A056119(n)+28)`
-/

namespace A235070.P10318093437641603799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A056119 n + 28).toNat

end

end A235070.P10318093437641603799

/-! ## A235070.P110118207903949810

`A235071(eq[11, A066657(n)])`
-/

namespace A235070.P110118207903949810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235070.P110118207903949810

/-! ## A235070.P6012343455422289266

`A235071(A166136(n+5)+1)`
-/

namespace A235070.P6012343455422289266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A166136 (n + 5) + 1).toNat

end

end A235070.P6012343455422289266

/-! ## A235070.P16999188352220852617

`A235071(A246172(n+2)+21)`
-/

namespace A235070.P16999188352220852617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235071 (A246172 (n + 2) + 21).toNat

end

end A235070.P16999188352220852617

/-!
# A235072: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235072, there is no canonical definition to state claims against.
-/

/-! ## A235072.P12694132121690301291

`A235078(∑[n]+1)`
-/

namespace A235072.P12694132121690301291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235072.P12694132121690301291

/-! ## A235072.P12402166631178042199

`lcm(2, A235078(A000124(n)))`
-/

namespace A235072.P12402166631178042199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235078 (A000124 n).toNat)

end

end A235072.P12402166631178042199

/-! ## A235072.P11609663031778645663

`record[A235078(A056536(n+1))]`
-/

namespace A235072.P11609663031778645663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235072.P11609663031778645663

/-! ## A235072.P4734482038222704282

`record[A235078(abs(A285732(n+1)))]`
-/

namespace A235072.P4734482038222704282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 |A285732 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235072.P4734482038222704282

/-! ## A235072.P15920237145794439495

`record[A010054(n)*A235078(n+1)]`
-/

namespace A235072.P15920237145794439495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235072.P15920237145794439495

/-!
# A235073: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235073, there is no canonical definition to state claims against.
-/

/-! ## A235073.P1456926153345313658

`A235078(∑[n+1]+2)`
-/

namespace A235073.P1456926153345313658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235073.P1456926153345313658

/-! ## A235073.P8029040026827254544

`record[A235078(A056536(n+1)+1)]`
-/

namespace A235073.P8029040026827254544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235073.P8029040026827254544

/-! ## A235073.P6151321758557675019

`A235078(A000096(n+1))+A000035(2*n)`
-/

namespace A235073.P6151321758557675019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A235073.P6151321758557675019

/-! ## A235073.P14606838770467271075

`A235078(A000096(n+1))%A235077(n+1)`
-/

namespace A235073.P14606838770467271075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235078 (A000096 (n + 1)).toNat) (A235077 (n + 1))

end

end A235073.P14606838770467271075

/-!
# A235074: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235074, there is no canonical definition to state claims against.
-/

/-! ## A235074.P5568064420614371678

`A235078(∑[n+2]+4)`
-/

namespace A235074.P5568064420614371678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235074.P5568064420614371678

/-! ## A235074.P980749763652329951

`lcm(2, A235078(A167614(n+1)))`
-/

namespace A235074.P980749763652329951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235078 (A167614 (n + 1)).toNat)

end

end A235074.P980749763652329951

/-! ## A235074.P16012227457158708207

`A235078(A167614(n+1))+A011731(n)`
-/

namespace A235074.P16012227457158708207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A167614 (n + 1)).toNat + A011731 n

end

end A235074.P16012227457158708207

/-! ## A235074.P5073735986657294506

`A235078(A167614(n+1))+A025466(n)`
-/

namespace A235074.P5073735986657294506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A167614 (n + 1)).toNat + A025466 n

end

end A235074.P5073735986657294506

/-! ## A235074.P15753241782726048479

`A235078(A167614(n+1))+A025469(n)`
-/

namespace A235074.P15753241782726048479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A167614 (n + 1)).toNat + A025469 n

end

end A235074.P15753241782726048479

/-!
# A235075: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235075, there is no canonical definition to state claims against.
-/

/-! ## A235075.P7081951482279988274

`A235078(A374004(n+1))`
-/

namespace A235075.P7081951482279988274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A374004 (n + 1)).toNat

end

end A235075.P7081951482279988274

/-! ## A235075.P16466227286186619919

`A235078(A141214(n)+7)`
-/

namespace A235075.P16466227286186619919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A141214 n + 7).toNat

end

end A235075.P16466227286186619919

/-! ## A235075.P4149054262285447940

`A235078(A052905(n)+9)`
-/

namespace A235075.P4149054262285447940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A052905 n + 9).toNat

end

end A235075.P4149054262285447940

/-! ## A235075.P4092816197590922259

`A235078(A055999(n)+10)`
-/

namespace A235075.P4092816197590922259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A055999 n + 10).toNat

end

end A235075.P4092816197590922259

/-! ## A235075.P5307948156706887101

`A235078(eq[5, A066657(n)])`
-/

namespace A235075.P5307948156706887101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235075.P5307948156706887101

/-!
# A235076: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235076, there is no canonical definition to state claims against.
-/

/-! ## A235076.P7490842062810770477

`A235078(∑[n+4]+11)`
-/

namespace A235076.P7490842062810770477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235076.P7490842062810770477

/-!
# A235077: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235077, there is no canonical definition to state claims against.
-/

/-! ## A235077.P13848548540335474454

`A235078(A374007(n+1))`
-/

namespace A235077.P13848548540335474454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A374007 (n + 1)).toNat

end

end A235077.P13848548540335474454

/-! ## A235077.P17855332244658014352

`A235078(A167614(n+4)+3)`
-/

namespace A235077.P17855332244658014352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A167614 (n + 4) + 3).toNat

end

end A235077.P17855332244658014352

/-! ## A235077.P17930752471967153080

`A235078(A000124(n+5)+5)`
-/

namespace A235077.P17930752471967153080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A000124 (n + 5) + 5).toNat

end

end A235077.P17930752471967153080

/-! ## A235077.P17426922877421129769

`A235078(A000096(n+4)+7)`
-/

namespace A235077.P17426922877421129769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235078 (A000096 (n + 4) + 7).toNat

end

end A235077.P17426922877421129769

/-!
# A235079: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235079, there is no canonical definition to state claims against.
-/

/-! ## A235079.P8227533761776572141

`A235087(∑[4*n]+1)`
-/

namespace A235079.P8227533761776572141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235079.P8227533761776572141

/-! ## A235079.P18366727184403291925

`lcm(2, A235087(A001844(n)))`
-/

namespace A235079.P18366727184403291925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235087 (A001844 n).toNat)

end

end A235079.P18366727184403291925

/-! ## A235079.P9946164694699944333

`record[A235087(A330613(n+1))]`
-/

namespace A235079.P9946164694699944333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235079.P9946164694699944333

/-! ## A235079.P4682751954588993279

`record[A003982(n)*A235087(n+1)]`
-/

namespace A235079.P4682751954588993279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235079.P4682751954588993279

/-! ## A235079.P1207232961719071967

`A235087(A001844(n))+A025469(n)`
-/

namespace A235079.P1207232961719071967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A001844 n).toNat + A025469 n

end

end A235079.P1207232961719071967

/-!
# A235080: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235080, the canonical program `A235080.P14937879198440639663` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235080 has offset 1).

The definition of A235080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235080.P14937879198440639663

`2*a(n-1)+6*a(n-2)-10*a(n-3)-5*a(n-4)` with `a(0)=38, a(1)=90, a(2)=202, a(3)=478`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235080

/-- `2*a(n-1)+6*a(n-2)-10*a(n-3)-5*a(n-4)` -/
def P14937879198440639663.Spec : Prop :=
  ∀ n, P14937879198440639663.a n = A235080 (n + 1)

theorem P14937879198440639663.correct : P14937879198440639663.Spec := by
  intro n
  simp only [A235080, Nat.add_sub_cancel]

end A235080

/-! ## A235080.P11632998872579620569

`A235087(∑[n]+1)`
-/

namespace A235080.P11632998872579620569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235080.P11632998872579620569

namespace A235080

/-- `A235087(∑[n]+1)` -/
def P11632998872579620569.Spec : Prop :=
  ∀ n, P11632998872579620569.a n = A235080 (n + 1)

end A235080

/-! ## A235080.P12405908724177412046

`record[A235087(n+1)]`
-/

namespace A235080.P12405908724177412046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235080.P12405908724177412046

namespace A235080

/-- `record[A235087(n+1)]` -/
def P12405908724177412046.Spec : Prop :=
  ∀ n, P12405908724177412046.a n = A235080 (n + 1)

end A235080

/-! ## A235080.P10544895432447635625

`lcm(2, A235087(A000124(n)))`
-/

namespace A235080.P10544895432447635625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235087 (A000124 n).toNat)

end

end A235080.P10544895432447635625

namespace A235080

/-- `lcm(2, A235087(A000124(n)))` -/
def P10544895432447635625.Spec : Prop :=
  ∀ n, (P10544895432447635625.a n : ℤ) = A235080 (n + 1)

end A235080

/-! ## A235080.P12855478597932310727

`A235087(A000124(n))+A025469(n)`
-/

namespace A235080.P12855478597932310727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000124 n).toNat + A025469 n

end

end A235080.P12855478597932310727

namespace A235080

/-- `A235087(A000124(n))+A025469(n)` -/
def P12855478597932310727.Spec : Prop :=
  ∀ n, P12855478597932310727.a n = A235080 (n + 1)

end A235080

/-!
# A235081: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235081, there is no canonical definition to state claims against.
-/

/-! ## A235081.P17743949467526816303

`A235087(∑[n+1]+2)`
-/

namespace A235081.P17743949467526816303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235081.P17743949467526816303

/-! ## A235081.P5333156992310662297

`lcm(2, A235087(A133263(n+1)))`
-/

namespace A235081.P5333156992310662297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235087 (A133263 (n + 1)).toNat)

end

end A235081.P5333156992310662297

/-! ## A235081.P1539228399465828434

`A235087(A133263(n+1))+A000045(n)%-1`
-/

namespace A235081.P1539228399465828434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A133263 (n + 1)).toNat + Int.tmod (A000045 n) (-1)

end

end A235081.P1539228399465828434

/-! ## A235081.P5308077487430153386

`A000041(C(2, n+2))*A235087(A133263(n+1))`
-/

namespace A235081.P5308077487430153386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A235087 (A133263 (n + 1)).toNat

end

end A235081.P5308077487430153386

/-! ## A235081.P888602914062981658

`or(2, A235087(A000096(n+1)))`
-/

namespace A235081.P888602914062981658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235087 (A000096 (n + 1)).toNat)

end

end A235081.P888602914062981658

/-!
# A235082: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235082, there is no canonical definition to state claims against.
-/

/-! ## A235082.P17876220134992509417

`A235087(∑[n+2]+4)`
-/

namespace A235082.P17876220134992509417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235082.P17876220134992509417

/-! ## A235082.P1396766118399762263

`lcm(2, A235087(A167614(n+1)))`
-/

namespace A235082.P1396766118399762263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235087 (A167614 (n + 1)).toNat)

end

end A235082.P1396766118399762263

/-! ## A235082.P15812006580219104382

`or(2, A235087(A055998(n)+6))`
-/

namespace A235082.P15812006580219104382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235087 (A055998 n + 6).toNat)

end

end A235082.P15812006580219104382

/-! ## A235082.P7497590685313170135

`or(2, A235087(A046691(n)+7))`
-/

namespace A235082.P7497590685313170135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235087 (A046691 n + 7).toNat)

end

end A235082.P7497590685313170135

/-! ## A235082.P2073542967279434291

`record[A235087(n+4)/A126954(n)]`
-/

namespace A235082.P2073542967279434291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235087 (n + 4) : ℚ) / (A126954 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235082.P2073542967279434291

/-!
# A235083: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235083, there is no canonical definition to state claims against.
-/

/-! ## A235083.P13023442764009735267

`A235087(∑[n+3]+7)`
-/

namespace A235083.P13023442764009735267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235083.P13023442764009735267

/-! ## A235083.P12593115533792720472

`lcm(2, A235087(Δ[A005586(n)]+5))`
-/

namespace A235083.P12593115533792720472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235087 (f1 (n + 1) - f1 n + 5).toNat)

end

end A235083.P12593115533792720472

/-! ## A235083.P9994576699408646904

`or(2, A235087(A167614(n+2)+1))`
-/

namespace A235083.P9994576699408646904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235087 (A167614 (n + 2) + 1).toNat)

end

end A235083.P9994576699408646904

/-! ## A235083.P6742694575955960580

`or(2, A235087(A000124(n+3)+3))`
-/

namespace A235083.P6742694575955960580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235087 (A000124 (n + 3) + 3).toNat)

end

end A235083.P6742694575955960580

/-! ## A235083.P12467390217999440131

`A000108(n*char[1])*A235087(A000124(n+3)+3)`
-/

namespace A235083.P12467390217999440131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A235087 (A000124 (n + 3) + 3).toNat

end

end A235083.P12467390217999440131

/-!
# A235084: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235084, there is no canonical definition to state claims against.
-/

/-! ## A235084.P6866135254507559849

`A235087(A167499(n+3))`
-/

namespace A235084.P6866135254507559849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A167499 (n + 3)).toNat

end

end A235084.P6866135254507559849

/-! ## A235084.P14629446755665399639

`A235087(A155212(n)+13)`
-/

namespace A235084.P14629446755665399639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A155212 n + 13).toNat

end

end A235084.P14629446755665399639

/-! ## A235084.P14363828206622296058

`A235087(A056000(n)+15)`
-/

namespace A235084.P14363828206622296058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A056000 n + 15).toNat

end

end A235084.P14363828206622296058

/-! ## A235084.P15880775378537854428

`A235087(A000217(n+4)+5)`
-/

namespace A235084.P15880775378537854428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000217 (n + 4) + 5).toNat

end

end A235084.P15880775378537854428

/-! ## A235084.P10489916252859605035

`A235087(A027379(n+2)+8)`
-/

namespace A235084.P10489916252859605035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A027379 (n + 2) + 8).toNat

end

end A235084.P10489916252859605035

/-!
# A235085: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235085, there is no canonical definition to state claims against.
-/

/-! ## A235085.P6727452961330197913

`A235087(A056115(n)+21)`
-/

namespace A235085.P6727452961330197913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A056115 n + 21).toNat

end

end A235085.P6727452961330197913

/-! ## A235085.P11526742439659925074

`A235087(A167499(n+4)+1)`
-/

namespace A235085.P11526742439659925074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A167499 (n + 4) + 1).toNat

end

end A235085.P11526742439659925074

/-! ## A235085.P2815671677914690797

`A235087(A167614(n+4)+3)`
-/

namespace A235085.P2815671677914690797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A167614 (n + 4) + 3).toNat

end

end A235085.P2815671677914690797

/-! ## A235085.P7668699578734056589

`A235087(A000124(n+5)+5)`
-/

namespace A235085.P7668699578734056589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000124 (n + 5) + 5).toNat

end

end A235085.P7668699578734056589

/-! ## A235085.P7318008897799584789

`A235087(A000096(n+4)+7)`
-/

namespace A235085.P7318008897799584789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000096 (n + 4) + 7).toNat

end

end A235085.P7318008897799584789

/-!
# A235086: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235086, there is no canonical definition to state claims against.
-/

/-! ## A235086.P3758613706870295820

`A235087(A167487(n+5))`
-/

namespace A235086.P3758613706870295820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A167487 (n + 5)).toNat

end

end A235086.P3758613706870295820

/-! ## A235086.P1706950777929835424

`A235087(A056119(n)+28)`
-/

namespace A235086.P1706950777929835424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A056119 n + 28).toNat

end

end A235086.P1706950777929835424

/-! ## A235086.P1931372890787662407

`A235087(A000124(n+6)+6)`
-/

namespace A235086.P1931372890787662407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000124 (n + 6) + 6).toNat

end

end A235086.P1931372890787662407

/-! ## A235086.P459048342987340714

`A235087(A000096(n+5)+8)`
-/

namespace A235086.P459048342987340714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000096 (n + 5) + 8).toNat

end

end A235086.P459048342987340714

/-! ## A235086.P3510234963308247642

`A235087(A000217(n+6)+7)`
-/

namespace A235086.P3510234963308247642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235087 (A000217 (n + 6) + 7).toNat

end

end A235086.P3510234963308247642

/-!
# A235088: a(n)*Pi is the total length of irregular spiral (center points: 1, 2, 3, 4) after n rotations.

The programs for A235088, the canonical program `A235088.P15003846086016300947` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235088 has offset 1).

The definition of A235088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235088.P15003846086016300947

`∑[and(record[xor(3, n)], -5)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235088

/-- `∑[and(record[xor(3, n)], -5)]` -/
def P15003846086016300947.Spec : Prop :=
  ∀ n, P15003846086016300947.a n = A235088 (n + 1)

theorem P15003846086016300947.correct : P15003846086016300947.Spec := by
  intro n
  simp only [A235088, Nat.add_sub_cancel]

end A235088

/-! ## A235088.P1685133589462901719

`∑[or(3, record[and(n, -6)])]`
-/

namespace A235088.P1685133589462901719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P1685133589462901719

namespace A235088

/-- `∑[or(3, record[and(n, -6)])]` -/
def P1685133589462901719.Spec : Prop :=
  ∀ n, P1685133589462901719.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P17767276028489031100

`∑[4*or(1, n)-1]`
-/

namespace A235088.P17767276028489031100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P17767276028489031100

namespace A235088

/-- `∑[4*or(1, n)-1]` -/
def P17767276028489031100.Spec : Prop :=
  ∀ n, P17767276028489031100.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P3146457743637065645

`∑[lcm(4, or(1, n))-1]`
-/

namespace A235088.P3146457743637065645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (Nat.lor 1 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P3146457743637065645

namespace A235088

/-- `∑[lcm(4, or(1, n))-1]` -/
def P3146457743637065645.Spec : Prop :=
  ∀ n, P3146457743637065645.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P16719218734006991881

`∑[xor(7, 4*or(1, n))]`
-/

namespace A235088.P16719218734006991881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (4 * Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P16719218734006991881

namespace A235088

/-- `∑[xor(7, 4*or(1, n))]` -/
def P16719218734006991881.Spec : Prop :=
  ∀ n, (P16719218734006991881.a n : ℤ) = A235088 (n + 1)

end A235088

/-! ## A235088.P10991199540184426463

`∑[a(n-2)+8]` with `a(0)=3, a(1)=3`
-/

namespace A235088.P10991199540184426463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P10991199540184426463

namespace A235088

/-- `∑[a(n-2)+8]` -/
def P10991199540184426463.Spec : Prop :=
  ∀ n, (P10991199540184426463.a n : ℤ) = A235088 (n + 1)

end A235088

/-! ## A235088.P18374897532323990735

`∑[8*floor(n/2)+3]`
-/

namespace A235088.P18374897532323990735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊(n : ℚ) / 2⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P18374897532323990735

namespace A235088

/-- `∑[8*floor(n/2)+3]` -/
def P18374897532323990735.Spec : Prop :=
  ∀ n, P18374897532323990735.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P13289139208992976064

`xor(1, ∑[4*n+1]+1)`
-/

namespace A235088.P13289139208992976064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235088.P13289139208992976064

namespace A235088

/-- `xor(1, ∑[4*n+1]+1)` -/
def P13289139208992976064.Spec : Prop :=
  ∀ n, (P13289139208992976064.a n : ℤ) = A235088 (n + 1)

end A235088

/-! ## A235088.P12525281497224696593

`xor(3, n²)+n*(n+3)`
-/

namespace A235088.P12525281497224696593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n ^ 2) + n * (n + 3)

end

end A235088.P12525281497224696593

namespace A235088

/-- `xor(3, n²)+n*(n+3)` -/
def P12525281497224696593.Spec : Prop :=
  ∀ n, (P12525281497224696593.a n : ℤ) = A235088 (n + 1)

end A235088

/-! ## A235088.P17807826763904182605

`ogf((3+5x^2)/(1-2x+2x^3-x^4))`
-/

namespace A235088.P17807826763904182605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 5] [1, -2, 0, 2, -1] n

end

end A235088.P17807826763904182605

namespace A235088

/-- `ogf((3+5x^2)/(1-2x+2x^3-x^4))` -/
def P17807826763904182605.Spec : Prop :=
  ∀ n, P17807826763904182605.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P3014251344609497583

`or(3, (n+2)*2*n)-n`
-/

namespace A235088.P3014251344609497583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 ((n + 2) * (2 * n)) : ℤ) - (n : ℤ)

end

end A235088.P3014251344609497583

namespace A235088

/-- `or(3, (n+2)*2*n)-n` -/
def P3014251344609497583.Spec : Prop :=
  ∀ n, P3014251344609497583.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P10732382455438324538

`8*n+a(n-2)-2` with `a(0)=3, a(1)=6`
-/

namespace A235088.P10732382455438324538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 2)

end

end A235088.P10732382455438324538

namespace A235088

/-- `8*n+a(n-2)-2` -/
def P10732382455438324538.Spec : Prop :=
  ∀ n, P10732382455438324538.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P2355604416106786260

`8*n-(2-a(n-2))` with `a(0)=3, a(1)=6`
-/

namespace A235088.P2355604416106786260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  (8 * n : ℤ) - (2 - a (n - 2))

end

end A235088.P2355604416106786260

namespace A235088

/-- `8*n-(2-a(n-2))` -/
def P2355604416106786260.Spec : Prop :=
  ∀ n, P2355604416106786260.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P4481389710057568565

`floor(∑[∑[8-a(n-1)]-5])` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A235088.P4481389710057568565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235088.P4481389710057568565

namespace A235088

/-- `floor(∑[∑[8-a(n-1)]-5])` -/
def P4481389710057568565.Spec : Prop :=
  ∀ n, P4481389710057568565.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P9447627452719739828

`1-xor(1, -((2*n+1)*(n+1)))`
-/

namespace A235088.P9447627452719739828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 1 (-((2 * n + 1) * (n + 1) : ℤ))

end

end A235088.P9447627452719739828

namespace A235088

/-- `1-xor(1, -((2*n+1)*(n+1)))` -/
def P9447627452719739828.Spec : Prop :=
  ∀ n, P9447627452719739828.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P15519156557448062101

`and(2, gcd(2, n))+(2*n+1)*(n+1)`
-/

namespace A235088.P15519156557448062101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd 2 n) + (2 * n + 1) * (n + 1)

end

end A235088.P15519156557448062101

namespace A235088

/-- `and(2, gcd(2, n))+(2*n+1)*(n+1)` -/
def P15519156557448062101.Spec : Prop :=
  ∀ n, (P15519156557448062101.a n : ℤ) = A235088 (n + 1)

end A235088

/-! ## A235088.P5311352865551647248

`abs(xor(1, (2*n+1)*(n+2)-2*n))`
-/

namespace A235088.P5311352865551647248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (((2 * n + 1) * (n + 2) : ℤ) - (2 * n : ℤ))|

end

end A235088.P5311352865551647248

namespace A235088

/-- `abs(xor(1, (2*n+1)*(n+2)-2*n))` -/
def P5311352865551647248.Spec : Prop :=
  ∀ n, P5311352865551647248.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P15344293574835430227

`Δ[or(1, n+1)]+(2*n+1)*(n+1)`
-/

namespace A235088.P15344293574835430227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((2 * n + 1) * (n + 1) : ℤ)

end

end A235088.P15344293574835430227

namespace A235088

/-- `Δ[or(1, n+1)]+(2*n+1)*(n+1)` -/
def P15344293574835430227.Spec : Prop :=
  ∀ n, P15344293574835430227.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P6898583774874921995

`record[2*xor(2, n)]+(2*n+1)*(n-1)`
-/

namespace A235088.P6898583774874921995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + (2 * n + 1 : ℤ) * ((n : ℤ) - 1)

end

end A235088.P6898583774874921995

namespace A235088

/-- `record[2*xor(2, n)]+(2*n+1)*(n-1)` -/
def P6898583774874921995.Spec : Prop :=
  ∀ n, P6898583774874921995.a n = A235088 (n + 1)

end A235088

/-! ## A235088.P8513070267023181663

`2*and(1, n+1)+(2*n+1)*(n+1)`
-/

namespace A235088.P8513070267023181663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 (n + 1) + (2 * n + 1) * (n + 1)

end

end A235088.P8513070267023181663

namespace A235088

/-- `2*and(1, n+1)+(2*n+1)*(n+1)` -/
def P8513070267023181663.Spec : Prop :=
  ∀ n, (P8513070267023181663.a n : ℤ) = A235088 (n + 1)

end A235088

/-!
# A235089: a(n)*Pi is the total length of irregular spiral (center points: 2, 1, 3, 4) after n rotations.

The programs for A235089, the canonical program `A235089.P997155930788155875` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235089 has offset 1).

The definition of A235089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235089.P997155930788155875

`∑[floor(7/gcd(2, n))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A235089

/-- `∑[floor(7/gcd(2, n))]` -/
def P997155930788155875.Spec : Prop :=
  ∀ n, P997155930788155875.a n = A235089 (n + 1)

theorem P997155930788155875.correct : P997155930788155875.Spec := by
  intro n
  simp only [A235089, Nat.add_sub_cancel]

end A235089

/-! ## A235089.P17954617320907875589

`∑[Δ[xor(1, n)]+4]`
-/

namespace A235089.P17954617320907875589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P17954617320907875589

namespace A235089

/-- `∑[Δ[xor(1, n)]+4]` -/
def P17954617320907875589.Spec : Prop :=
  ∀ n, P17954617320907875589.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P7043841925396909005

`∑[record[xor(3, n)]%8]`
-/

namespace A235089.P7043841925396909005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P7043841925396909005

namespace A235089

/-- `∑[record[xor(3, n)]%8]` -/
def P7043841925396909005.Spec : Prop :=
  ∀ n, (P7043841925396909005.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P16148734335254316464

`∑[and(7, record[xor(3, n)])]`
-/

namespace A235089.P16148734335254316464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P16148734335254316464

namespace A235089

/-- `∑[and(7, record[xor(3, n)])]` -/
def P16148734335254316464.Spec : Prop :=
  ∀ n, (P16148734335254316464.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P4377839934521628444

`∑[record[or(11, n)]%8]`
-/

namespace A235089.P4377839934521628444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P4377839934521628444

namespace A235089

/-- `∑[record[or(11, n)]%8]` -/
def P4377839934521628444.Spec : Prop :=
  ∀ n, (P4377839934521628444.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P7996085533468973011

`∑[and(7, record[or(11, n)])]`
-/

namespace A235089.P7996085533468973011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P7996085533468973011

namespace A235089

/-- `∑[and(7, record[or(11, n)])]` -/
def P7996085533468973011.Spec : Prop :=
  ∀ n, (P7996085533468973011.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P12096589096432701757

`a(n-2)+10` with `a(0)=3, a(1)=10`
-/

namespace A235089.P12096589096432701757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  a (n - 2) + 10

end

end A235089.P12096589096432701757

namespace A235089

/-- `a(n-2)+10` -/
def P12096589096432701757.Spec : Prop :=
  ∀ n, (P12096589096432701757.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P5005106490007795960

`4-xor(1, -(5*n))`
-/

namespace A235089.P5005106490007795960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.xor 1 (-(5 * n : ℤ))

end

end A235089.P5005106490007795960

namespace A235089

/-- `4-xor(1, -(5*n))` -/
def P5005106490007795960.Spec : Prop :=
  ∀ n, P5005106490007795960.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P4950791863318498218

`∑[4*n%2+3]`
-/

namespace A235089.P4950791863318498218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n % 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P4950791863318498218

namespace A235089

/-- `∑[4*n%2+3]` -/
def P4950791863318498218.Spec : Prop :=
  ∀ n, (P4950791863318498218.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P15552900839180379439

`∑[4*and(1, n)+3]`
-/

namespace A235089.P15552900839180379439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P15552900839180379439

namespace A235089

/-- `∑[4*and(1, n)+3]` -/
def P15552900839180379439.Spec : Prop :=
  ∀ n, (P15552900839180379439.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P4153476041499010646

`∑[5^and(1, n)+2]`
-/

namespace A235089.P4153476041499010646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P4153476041499010646

namespace A235089

/-- `∑[5^and(1, n)+2]` -/
def P4153476041499010646.Spec : Prop :=
  ∀ n, (P4153476041499010646.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P8927366180022231359

`∑[10-a(n-1)]` with `a(0)=3`
-/

namespace A235089.P8927366180022231359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P8927366180022231359

namespace A235089

/-- `∑[10-a(n-1)]` -/
def P8927366180022231359.Spec : Prop :=
  ∀ n, P8927366180022231359.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P897907156713075009

`∑[or(3, and(1, n)+3)]`
-/

namespace A235089.P897907156713075009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (Nat.land 1 n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P897907156713075009

namespace A235089

/-- `∑[or(3, and(1, n)+3)]` -/
def P897907156713075009.Spec : Prop :=
  ∀ n, (P897907156713075009.a n : ℤ) = A235089 (n + 1)

end A235089

/-! ## A235089.P6922306830040976218

`∑[Δ[or(1, n)]²+3]`
-/

namespace A235089.P6922306830040976218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P6922306830040976218

namespace A235089

/-- `∑[Δ[or(1, n)]²+3]` -/
def P6922306830040976218.Spec : Prop :=
  ∀ n, P6922306830040976218.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P10736045368501809755

`∑[or(3, Δ[or(1, n)]²)]`
-/

namespace A235089.P10736045368501809755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P10736045368501809755

namespace A235089

/-- `∑[or(3, Δ[or(1, n)]²)]` -/
def P10736045368501809755.Spec : Prop :=
  ∀ n, P10736045368501809755.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P913596727715675983

`∑[∑[ogf((3+7x)/(1+x))]]`
-/

namespace A235089.P913596727715675983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P913596727715675983

namespace A235089

/-- `∑[∑[ogf((3+7x)/(1+x))]]` -/
def P913596727715675983.Spec : Prop :=
  ∀ n, P913596727715675983.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P12039707789667824437

`∑[5-2*(-1)^n]`
-/

namespace A235089.P12039707789667824437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235089.P12039707789667824437

namespace A235089

/-- `∑[5-2*(-1)^n]` -/
def P12039707789667824437.Spec : Prop :=
  ∀ n, P12039707789667824437.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P7947753241499311336

`ogf((3+7x)/(1-x-x^2+x^3))`
-/

namespace A235089.P7947753241499311336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7] [1, -1, -1, 1] n

end

end A235089.P7947753241499311336

namespace A235089

/-- `ogf((3+7x)/(1-x-x^2+x^3))` -/
def P7947753241499311336.Spec : Prop :=
  ∀ n, P7947753241499311336.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P12428980895027307627

`xor(1, 5*(n+1))-1`
-/

namespace A235089.P12428980895027307627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 * (n + 1)) : ℤ) - 1

end

end A235089.P12428980895027307627

namespace A235089

/-- `xor(1, 5*(n+1))-1` -/
def P12428980895027307627.Spec : Prop :=
  ∀ n, P12428980895027307627.a n = A235089 (n + 1)

end A235089

/-! ## A235089.P231253799619496924

`10-floor(-a(n-2))` with `a(0)=3, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A235089.P231253799619496924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  10 - (-a (n - 2))

end

end A235089.P231253799619496924

namespace A235089

/-- `10-floor(-a(n-2))` -/
def P231253799619496924.Spec : Prop :=
  ∀ n, P231253799619496924.a n = A235089 (n + 1)

end A235089

/-!
# A235090: Number of (n+1) X (n+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235090, there is no canonical definition to state claims against.
-/

/-! ## A235090.P10603456270944757386

`A235098(∑[4*n]+1)`
-/

namespace A235090.P10603456270944757386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235090.P10603456270944757386

/-! ## A235090.P13533185187192634774

`lcm(2, A235098(A001844(n)))`
-/

namespace A235090.P13533185187192634774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235098 (A001844 n).toNat)

end

end A235090.P13533185187192634774

/-! ## A235090.P3206212436249184988

`record[A003982(n)*A235098(n+1)]`
-/

namespace A235090.P3206212436249184988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235090.P3206212436249184988

/-! ## A235090.P7612836690953394572

`A235098(A001844(n))+A011736(n)`
-/

namespace A235090.P7612836690953394572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A001844 n).toNat + A011736 n

end

end A235090.P7612836690953394572

/-! ## A235090.P16067113839119684692

`A235098(A001844(n))+A061649(n)`
-/

namespace A235090.P16067113839119684692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A001844 n).toNat + A061649 n

end

end A235090.P16067113839119684692

/-!
# A235091: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235091, there is no canonical definition to state claims against.
-/

/-! ## A235091.P15222546575126620597

`A235098(∑[n]+1)`
-/

namespace A235091.P15222546575126620597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235091.P15222546575126620597

/-! ## A235091.P4655482703832599901

`record[A235098(n+1)]`
-/

namespace A235091.P4655482703832599901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235091.P4655482703832599901

/-! ## A235091.P4114691545730911767

`lcm(2, A235098(A000124(n)))`
-/

namespace A235091.P4114691545730911767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235098 (A000124 n).toNat)

end

end A235091.P4114691545730911767

/-! ## A235091.P12404930254454734416

`A235098(A000124(n))+A025438(n)`
-/

namespace A235091.P12404930254454734416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A000124 n).toNat + A025438 n

end

end A235091.P12404930254454734416

/-! ## A235091.P8134173736462876878

`A007318(∑[n])*A235098(A000124(n))`
-/

namespace A235091.P8134173736462876878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A235098 (A000124 n).toNat

end

end A235091.P8134173736462876878

/-!
# A235092: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235092, there is no canonical definition to state claims against.
-/

/-! ## A235092.P5243326381886443026

`A235098(∑[n+1]+2)`
-/

namespace A235092.P5243326381886443026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235092.P5243326381886443026

/-! ## A235092.P9097566553686129850

`lcm(2, A235098(A000096(n)+3))`
-/

namespace A235092.P9097566553686129850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235098 (A000096 n + 3).toNat)

end

end A235092.P9097566553686129850

/-! ## A235092.P11720663830554156643

`A235098(A089071(n+3))+A185246(n)`
-/

namespace A235092.P11720663830554156643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A089071 (n + 3)).toNat + A185246 n

end

end A235092.P11720663830554156643

/-! ## A235092.P7973228160537826808

`A007318(C(2, n))*A235098(A000096(n)+3)`
-/

namespace A235092.P7973228160537826808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235098 (A000096 n + 3).toNat

end

end A235092.P7973228160537826808

/-! ## A235092.P13574357626247728204

`A235098(A089071(n+3))+A024155(2*n+5)`
-/

namespace A235092.P13574357626247728204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A089071 (n + 3)).toNat + A024155 (2 * n + 5)

end

end A235092.P13574357626247728204

/-!
# A235093: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235093, there is no canonical definition to state claims against.
-/

/-! ## A235093.P7596395133391186271

`A235098(∑[n+2]+4)`
-/

namespace A235093.P7596395133391186271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235093.P7596395133391186271

/-! ## A235093.P6923122526564111464

`lcm(2, A235098(A167614(n+1)))`
-/

namespace A235093.P6923122526564111464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235098 (A167614 (n + 1)).toNat)

end

end A235093.P6923122526564111464

/-! ## A235093.P17083518688410494409

`record[A235098(n+4)/A135224(n)]`
-/

namespace A235093.P17083518688410494409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235098 (n + 4) : ℚ) / (A135224 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235093.P17083518688410494409

/-! ## A235093.P6745729064573033072

`A235098(A167614(n+1))+A011736(n)`
-/

namespace A235093.P6745729064573033072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167614 (n + 1)).toNat + A011736 n

end

end A235093.P6745729064573033072

/-! ## A235093.P10467613419887775185

`A235098(A167614(n+1))+A070206(n+1)`
-/

namespace A235093.P10467613419887775185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167614 (n + 1)).toNat + A070206 (n + 1)

end

end A235093.P10467613419887775185

/-!
# A235094: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235094, there is no canonical definition to state claims against.
-/

/-! ## A235094.P3371496017445513215

`A235098(∑[n+3]+7)`
-/

namespace A235094.P3371496017445513215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235094.P3371496017445513215

/-! ## A235094.P3372609865844021209

`lcm(2, A235098(A141214(n)+7))`
-/

namespace A235094.P3372609865844021209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235098 (A141214 n + 7).toNat)

end

end A235094.P3372609865844021209

/-! ## A235094.P11761771481493750339

`lcm(4, A235098(A167614(n+2)+1))`
-/

namespace A235094.P11761771481493750339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235098 (A167614 (n + 2) + 1).toNat)

end

end A235094.P11761771481493750339

/-! ## A235094.P6331736770274110957

`A007318(C(2, n))*A235098(A141214(n)+7)`
-/

namespace A235094.P6331736770274110957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235098 (A141214 n + 7).toNat

end

end A235094.P6331736770274110957

/-! ## A235094.P9201206972158953695

`A007318(floor(n/10))*A235098(A141214(n)+7)`
-/

namespace A235094.P9201206972158953695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 10⌋.toNat * A235098 (A141214 n + 7).toNat

end

end A235094.P9201206972158953695

/-!
# A235095: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235095, there is no canonical definition to state claims against.
-/

/-! ## A235095.P16487279835689333245

`A235098(C(n+6, 2)-n)`
-/

namespace A235095.P16487279835689333245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (Nat.choose (n + 6) 2 - n)

end

end A235095.P16487279835689333245

/-! ## A235095.P2950969275550539184

`A235098(A155212(n)+13)`
-/

namespace A235095.P2950969275550539184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A155212 n + 13).toNat

end

end A235095.P2950969275550539184

/-! ## A235095.P7745912330007622016

`A235098(A056000(n)+15)`
-/

namespace A235095.P7745912330007622016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A056000 n + 15).toNat

end

end A235095.P7745912330007622016

/-! ## A235095.P273978794653166474

`A235098(eq[7, A066657(n)])`
-/

namespace A235095.P273978794653166474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235095.P273978794653166474

/-! ## A235095.P12885520366169093243

`A235098(A167614(n+3)+2)`
-/

namespace A235095.P12885520366169093243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167614 (n + 3) + 2).toNat

end

end A235095.P12885520366169093243

/-!
# A235096: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235096, there is no canonical definition to state claims against.
-/

/-! ## A235096.P18124677845907938217

`A235098(A056115(n)+21)`
-/

namespace A235096.P18124677845907938217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A056115 n + 21).toNat

end

end A235096.P18124677845907938217

/-! ## A235096.P15976879017432158054

`A235098(A167499(n+4)+1)`
-/

namespace A235096.P15976879017432158054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167499 (n + 4) + 1).toNat

end

end A235096.P15976879017432158054

/-! ## A235096.P11152401961474880527

`A235098(A167614(n+4)+3)`
-/

namespace A235096.P11152401961474880527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167614 (n + 4) + 3).toNat

end

end A235096.P11152401961474880527

/-! ## A235096.P10723845486365638154

`A235098(A000124(n+5)+5)`
-/

namespace A235096.P10723845486365638154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A000124 (n + 5) + 5).toNat

end

end A235096.P10723845486365638154

/-! ## A235096.P15322174092006455223

`A235098(A000217(n+5)+6)`
-/

namespace A235096.P15322174092006455223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A000217 (n + 5) + 6).toNat

end

end A235096.P15322174092006455223

/-!
# A235097: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235097, there is no canonical definition to state claims against.
-/

/-! ## A235097.P2042475656370395570

`A235098(A167487(n+5))`
-/

namespace A235097.P2042475656370395570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167487 (n + 5)).toNat

end

end A235097.P2042475656370395570

/-! ## A235097.P18086853909211874131

`A235098(A167614(n+5)+4)`
-/

namespace A235097.P18086853909211874131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A167614 (n + 5) + 4).toNat

end

end A235097.P18086853909211874131

/-! ## A235097.P17949519342150755874

`A235098(A000124(n+6)+6)`
-/

namespace A235097.P17949519342150755874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A000124 (n + 6) + 6).toNat

end

end A235097.P17949519342150755874

/-! ## A235097.P1336330152319583973

`A235098(A000217(n+6)+7)`
-/

namespace A235097.P1336330152319583973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A000217 (n + 6) + 7).toNat

end

end A235097.P1336330152319583973

/-! ## A235097.P8120003388441600405

`A235098(A141214(n+3)+10)`
-/

namespace A235097.P8120003388441600405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235098 (A141214 (n + 3) + 10).toNat

end

end A235097.P8120003388441600405

/-!
# A235099: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235099, there is no canonical definition to state claims against.
-/

/-! ## A235099.P1072619250513894551

`A235107(∑[4*n]+1)`
-/

namespace A235099.P1072619250513894551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235099.P1072619250513894551

/-! ## A235099.P14569417884911641686

`lcm(2, A235107(A001844(n)))`
-/

namespace A235099.P14569417884911641686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235107 (A001844 n).toNat)

end

end A235099.P14569417884911641686

/-! ## A235099.P13845562032832428827

`record[A003982(n)*A235107(n+1)]`
-/

namespace A235099.P13845562032832428827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235099.P13845562032832428827

/-! ## A235099.P12101077742804460870

`record[A214505(n)*A235107(n+1)]`
-/

namespace A235099.P12101077742804460870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A235107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235099.P12101077742804460870

/-! ## A235099.P1341832434683077463

`record[gcd(A049581(n), A235107(n+1))]`
-/

namespace A235099.P1341832434683077463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A235107 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235099.P1341832434683077463

