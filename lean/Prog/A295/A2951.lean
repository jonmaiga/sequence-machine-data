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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
# A295100: a(n) = n! * [x^n] exp(n*x)/(1 - 2*x).

The programs for A295100, there is no canonical definition to state claims against.
-/

/-! ## A295100.P1651055740529465205

`n*(A312022(a(n-1))-a(n-1))` with `a(0)=1`
-/

namespace A295100.P1651055740529465205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A312022 (a (n - 1)).toNat - a (n - 1))

end

end A295100.P1651055740529465205

/-!
# A295101: Number of squarefree sqrt(n)-smooth numbers <= n.

The programs for A295101, there is no canonical definition to state claims against.
-/

/-! ## A295101.P9001732359469456242

`A013928(n+2)-A295164(n+1)`
-/

namespace A295101.P9001732359469456242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A295164 (n + 1)

end

end A295101.P9001732359469456242

/-! ## A295101.P12070743107824476301

`∑[A008966(n+1)]-A295164(n+1)`
-/

namespace A295101.P12070743107824476301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295164 (n + 1)

end

end A295101.P12070743107824476301

/-! ## A295101.P10008497134937055494

`∑[abs(A008683(n+1))]-A295164(n+1)`
-/

namespace A295101.P10008497134937055494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295164 (n + 1)

end

end A295101.P10008497134937055494

/-! ## A295101.P6215746205525633087

`∑[1-A107078(n+1)]-A295164(n+1)`
-/

namespace A295101.P6215746205525633087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295164 (n + 1)

end

end A295101.P6215746205525633087

/-! ## A295101.P14293614573405768730

`∑[A000035(A002033(n))]-A295164(n+1)`
-/

namespace A295101.P14293614573405768730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295164 (n + 1)

end

end A295101.P14293614573405768730

/-!
# A295102: Squarefree numbers n that are sqrt(n)-smooth: if prime p|n then p^2 <= n.

The programs for A295102, the canonical program `A295102.P4057559906805914940` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295102 has offset 1).

The definition of A295102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295102.P10871941794702641979

`filter[A063539(n+1), A008966(#)]`
-/

namespace A295102.P10871941794702641979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A295102.P10871941794702641979

namespace A295102

/-- `filter[A063539(n+1), A008966(#)]` -/
def P10871941794702641979.Spec : Prop :=
  ∀ n, P10871941794702641979.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P2120947243751022933

`record[A008966(A048098(n+1))*A048098(n+1)]`
-/

namespace A295102.P2120947243751022933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A048098 (n + 1)).toNat * A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P2120947243751022933

namespace A295102

/-- `record[A008966(A048098(n+1))*A048098(n+1)]` -/
def P2120947243751022933.Spec : Prop :=
  ∀ n, P2120947243751022933.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P4057559906805914940

`∩[A048098(n+1), A365829(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A295102

/-- `∩[A048098(n+1), A365829(n+1)]` -/
def P4057559906805914940.Spec : Prop :=
  ∀ n, (P4057559906805914940.a n : ℤ) = A295102 (n + 1)

theorem P4057559906805914940.correct : P4057559906805914940.Spec := by
  intro n
  simp only [A295102, Nat.add_sub_cancel]

end A295102

/-! ## A295102.P15295852521695387124

`∩[A063539(n+1), A365829(n+1)]`
-/

namespace A295102.P15295852521695387124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P15295852521695387124

namespace A295102

/-- `∩[A063539(n+1), A365829(n+1)]` -/
def P15295852521695387124.Spec : Prop :=
  ∀ n, (P15295852521695387124.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P6283212415367409227

`∩[A000469(n+1), A048098(n+1)]`
-/

namespace A295102.P6283212415367409227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P6283212415367409227

namespace A295102

/-- `∩[A000469(n+1), A048098(n+1)]` -/
def P6283212415367409227.Spec : Prop :=
  ∀ n, (P6283212415367409227.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P7470640207738201989

`∩[A000469(n+1), A063539(n+1)]`
-/

namespace A295102.P7470640207738201989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P7470640207738201989

namespace A295102

/-- `∩[A000469(n+1), A063539(n+1)]` -/
def P7470640207738201989.Spec : Prop :=
  ∀ n, (P7470640207738201989.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P2323759655408761149

`∩[A005117(n+1), A063539(n+1)]`
-/

namespace A295102.P2323759655408761149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P2323759655408761149

namespace A295102

/-- `∩[A005117(n+1), A063539(n+1)]` -/
def P2323759655408761149.Spec : Prop :=
  ∀ n, (P2323759655408761149.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P451789139126065652

`∩[A005117(n+1), A048098(n+1)]`
-/

namespace A295102.P451789139126065652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P451789139126065652

namespace A295102

/-- `∩[A005117(n+1), A048098(n+1)]` -/
def P451789139126065652.Spec : Prop :=
  ∀ n, (P451789139126065652.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P13070741666213482077

`∩[A063539(n+1), A167207(n+1)]`
-/

namespace A295102.P13070741666213482077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P13070741666213482077

namespace A295102

/-- `∩[A063539(n+1), A167207(n+1)]` -/
def P13070741666213482077.Spec : Prop :=
  ∀ n, (P13070741666213482077.a n : ℤ) = A295102 (n + 1)

end A295102

/-! ## A295102.P8169617803796947614

`record[(A072504(n+1)-n)*A007913(n+1)]`
-/

namespace A295102.P8169617803796947614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072504 (n + 1) - (n : ℤ)) * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P8169617803796947614

namespace A295102

/-- `record[(A072504(n+1)-n)*A007913(n+1)]` -/
def P8169617803796947614.Spec : Prop :=
  ∀ n, P8169617803796947614.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P455652254518110301

`record[(A072504(n+1)-n)*A007947(n+1)]`
-/

namespace A295102.P455652254518110301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072504 (n + 1) - (n : ℤ)) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P455652254518110301

namespace A295102

/-- `record[(A072504(n+1)-n)*A007947(n+1)]` -/
def P455652254518110301.Spec : Prop :=
  ∀ n, P455652254518110301.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P17562738332204543195

`record[(A072504(n+1)-n)*A015053(n+1)]`
-/

namespace A295102.P17562738332204543195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072504 (n + 1) - (n : ℤ)) * A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P17562738332204543195

namespace A295102

/-- `record[(A072504(n+1)-n)*A015053(n+1)]` -/
def P17562738332204543195.Spec : Prop :=
  ∀ n, P17562738332204543195.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P12702932894586686624

`record[(A072504(n+1)-n)*A066069(n+1)]`
-/

namespace A295102.P12702932894586686624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072504 (n + 1) - (n : ℤ)) * A066069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P12702932894586686624

namespace A295102

/-- `record[(A072504(n+1)-n)*A066069(n+1)]` -/
def P12702932894586686624.Spec : Prop :=
  ∀ n, P12702932894586686624.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P14672381816411129050

`record[A072504(A072504(A005117(n+1)))]`
-/

namespace A295102.P14672381816411129050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A005117 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P14672381816411129050

namespace A295102

/-- `record[A072504(A072504(A005117(n+1)))]` -/
def P14672381816411129050.Spec : Prop :=
  ∀ n, P14672381816411129050.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P16430660253899865140

`record[A072504(A072504(A007913(n+1)))]`
-/

namespace A295102.P16430660253899865140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A007913 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P16430660253899865140

namespace A295102

/-- `record[A072504(A072504(A007913(n+1)))]` -/
def P16430660253899865140.Spec : Prop :=
  ∀ n, P16430660253899865140.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P1482749819640968312

`record[A072504(A072504(A007947(n+1)))]`
-/

namespace A295102.P1482749819640968312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A007947 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P1482749819640968312

namespace A295102

/-- `record[A072504(A072504(A007947(n+1)))]` -/
def P1482749819640968312.Spec : Prop :=
  ∀ n, P1482749819640968312.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P3815508454527298819

`record[A072504(A072504(A015053(n+1)))]`
-/

namespace A295102.P3815508454527298819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A015053 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P3815508454527298819

namespace A295102

/-- `record[A072504(A072504(A015053(n+1)))]` -/
def P3815508454527298819.Spec : Prop :=
  ∀ n, P3815508454527298819.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P15165463069512013714

`record[A072504(A072504(A066069(n+1)))]`
-/

namespace A295102.P15165463069512013714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A066069 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P15165463069512013714

namespace A295102

/-- `record[A072504(A072504(A066069(n+1)))]` -/
def P15165463069512013714.Spec : Prop :=
  ∀ n, P15165463069512013714.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P4173288117841834105

`record[A072504(A072504(A067535(n+1)))]`
-/

namespace A295102.P4173288117841834105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (A072504 (A067535 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P4173288117841834105

namespace A295102

/-- `record[A072504(A072504(A067535(n+1)))]` -/
def P4173288117841834105.Spec : Prop :=
  ∀ n, P4173288117841834105.a n = A295102 (n + 1)

end A295102

/-! ## A295102.P12313368285117944404

`record[A072504(A072504(n+1))/A057521(n+1)]`
-/

namespace A295102.P12313368285117944404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072504 (A072504 (n + 1)).toNat : ℚ) / (A057521 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295102.P12313368285117944404

namespace A295102

/-- `record[A072504(A072504(n+1))/A057521(n+1)]` -/
def P12313368285117944404.Spec : Prop :=
  ∀ n, P12313368285117944404.a n = (A295102 (n + 1) : ℚ)

end A295102

/-!
# A295103: a(n) = (1/n) times the n-th derivative of the third tetration of x (power tower of order 3) x^^3 at x=1.

The programs for A295103, there is no canonical definition to state claims against.
-/

/-! ## A295103.P18045635965307088280

`A179230(n+1)/(n+1)`
-/

namespace A295103.P18045635965307088280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179230 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295103.P18045635965307088280

/-! ## A295103.P6948733228790138069

`A215703(Δ[A264443(n)])/(n+1)`
-/

namespace A295103.P6948733228790138069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (f1 (n + 1) - f1 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A295103.P6948733228790138069

/-! ## A295103.P4841280481139847598

`A215703(Δ[A023545(n+1)])/(n+1)`
-/

namespace A295103.P4841280481139847598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (f1 (n + 1) - f1 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A295103.P4841280481139847598

/-! ## A295103.P15400014928931120867

`A215703(A000217(n+5)-4)/(n+1)`
-/

namespace A295103.P15400014928931120867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A000217 (n + 5) - 4).toNat : ℚ) / (n + 1 : ℚ)

end

end A295103.P15400014928931120867

/-! ## A295103.P12822593084754013093

`A295028(∑[n+3]+1)`
-/

namespace A295103.P12822593084754013093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295103.P12822593084754013093

/-! ## A295103.P4003916665185473346

`A277537(A046691(n+3))/(n+1)`
-/

namespace A295103.P4003916665185473346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277537 (A046691 (n + 3)).toNat : ℚ) / (n + 1 : ℚ)

end

end A295103.P4003916665185473346

/-!
# A295104: a(n) = (1/n) times the n-th derivative of the fourth tetration of x (power tower of order 4) x^^4 at x=1.

The programs for A295104, there is no canonical definition to state claims against.
-/

/-! ## A295104.P9366495932545819703

`A179405(n+1)/(n+1)`
-/

namespace A295104.P9366495932545819703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179405 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295104.P9366495932545819703

/-! ## A295104.P7894784032372706976

`A295028(C(n+5, 2)-3)`
-/

namespace A295104.P7894784032372706976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (Nat.choose (n + 5) 2 - 3)

end

end A295104.P7894784032372706976

/-! ## A295104.P2474514761980771869

`A295028(∑[n+1]+3*(n+2))`
-/

namespace A295104.P2474514761980771869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 2))

end

end A295104.P2474514761980771869

/-! ## A295104.P13546547203480742622

`abs(A295028(A055998(n+2)))`
-/

namespace A295104.P13546547203480742622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295028 (A055998 (n + 2)).toNat|

end

end A295104.P13546547203480742622

/-! ## A295104.P8588514051680893308

`gcd(A000038(n), A295028(A055998(n+2)))`
-/

namespace A295104.P8588514051680893308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295028 (A055998 (n + 2)).toNat)

end

end A295104.P8588514051680893308

/-! ## A295104.P8365124104417647051

`A295028(A055998(n+2))+A000038(n+2)`
-/

namespace A295104.P8365124104417647051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A055998 (n + 2)).toNat + A000038 (n + 2)

end

end A295104.P8365124104417647051

/-!
# A295105: a(n) = (1/n) times the n-th derivative of the fifth tetration of x (power tower of order 5) x^^5 at x=1.

The programs for A295105, there is no canonical definition to state claims against.
-/

/-! ## A295105.P7680533847001320204

`A295028(C(n+5, 2)+n+1)`
-/

namespace A295105.P7680533847001320204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (Nat.choose (n + 5) 2 + (n + 1))

end

end A295105.P7680533847001320204

/-! ## A295105.P3050526262638802189

`A295028(Δ[A264443(n)])`
-/

namespace A295105.P3050526262638802189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n).toNat

end

end A295105.P3050526262638802189

/-! ## A295105.P17910813512398741279

`A295028(A046691(n+3))`
-/

namespace A295105.P17910813512398741279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A046691 (n + 3)).toNat

end

end A295105.P17910813512398741279

/-! ## A295105.P684899427518890805

`A295028(eq[4, A193592(n)])`
-/

namespace A295105.P684899427518890805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295105.P684899427518890805

/-! ## A295105.P7042478629812754667

`A295028(Δ[A023545(n+1)])`
-/

namespace A295105.P7042478629812754667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n).toNat

end

end A295105.P7042478629812754667

/-! ## A295105.P17553714906715977072

`A295028(A055999(n+2)+2)`
-/

namespace A295105.P17553714906715977072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A055999 (n + 2) + 2).toNat

end

end A295105.P17553714906715977072

/-! ## A295105.P10073016645732544349

`A295028(Δ[A055831(n+4)]+1)`
-/

namespace A295105.P10073016645732544349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n + 1).toNat

end

end A295105.P10073016645732544349

/-! ## A295105.P1275768667542694474

`A295028(A264443(n+1)-A264443(n))`
-/

namespace A295105.P1275768667542694474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A264443 (n + 1) - A264443 n).toNat

end

end A295105.P1275768667542694474

/-! ## A295105.P3621698670146484352

`A179505(n+1)/(n+1)`
-/

namespace A295105.P3621698670146484352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179505 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295105.P3621698670146484352

/-!
# A295106: a(n) = (1/n) times the n-th derivative of the sixth tetration of x (power tower of order 6) x^^6 at x=1.

The programs for A295106, there is no canonical definition to state claims against.
-/

/-! ## A295106.P15451156803774377204

`A295028(A052905(n+3))`
-/

namespace A295106.P15451156803774377204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A052905 (n + 3)).toNat

end

end A295106.P15451156803774377204

/-! ## A295106.P13450985061161575549

`A295028(eq[3, A219347(n)])`
-/

namespace A295106.P13450985061161575549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295106.P13450985061161575549

/-! ## A295106.P10919867812497578156

`A295028(Δ[A055831(n+5)])`
-/

namespace A295106.P10919867812497578156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n).toNat

end

end A295106.P10919867812497578156

/-! ## A295106.P13759565373571472898

`A295028(Δ[Δ[A006504(n+1)]])`
-/

namespace A295106.P13759565373571472898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n).toNat

end

end A295106.P13759565373571472898

/-! ## A295106.P13206182664637489354

`A295028(Δ[A264443(n+1)]-1)`
-/

namespace A295106.P13206182664637489354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n - 1).toNat

end

end A295106.P13206182664637489354

/-! ## A295106.P1404499518708361965

`A295028(Δ[A023545(n+2)]-1)`
-/

namespace A295106.P1404499518708361965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (f1 (n + 1) - f1 n - 1).toNat

end

end A295106.P1404499518708361965

/-! ## A295106.P7879468501424355771

`A295028(A055831(n+6)-A055831(n+5))`
-/

namespace A295106.P7879468501424355771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A055831 (n + 6) - A055831 (n + 5)).toNat

end

end A295106.P7879468501424355771

/-! ## A295106.P14625115394536556550

`A211205(n+1)/(n+1)`
-/

namespace A295106.P14625115394536556550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211205 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295106.P14625115394536556550

/-!
# A295107: a(n) = (1/n) times the n-th derivative of the seventh tetration of x (power tower of order 7) x^^7 at x=1.

The programs for A295107, there is no canonical definition to state claims against.
-/

/-! ## A295107.P10392460913221037054

`A295028(A055999(n+4))`
-/

namespace A295107.P10392460913221037054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A055999 (n + 4)).toNat

end

end A295107.P10392460913221037054

/-! ## A295107.P15703297426084437004

`A295028(A134227(n+5))`
-/

namespace A295107.P15703297426084437004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A134227 (n + 5)).toNat

end

end A295107.P15703297426084437004

/-! ## A295107.P11364318985841569598

`A295028(eq[4, A219347(n)])`
-/

namespace A295107.P11364318985841569598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295107.P11364318985841569598

/-! ## A295107.P10243503546762600264

`A295028(A000096(n+6)-5)`
-/

namespace A295107.P10243503546762600264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A000096 (n + 6) - 5).toNat

end

end A295107.P10243503546762600264

/-! ## A295107.P6544796598051601480

`A295028(A000124(n+7)-7)`
-/

namespace A295107.P6544796598051601480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A000124 (n + 7) - 7).toNat

end

end A295107.P6544796598051601480

/-! ## A295107.P4972273630648139889

`A277538(n+1)/(n+1)`
-/

namespace A295107.P4972273630648139889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277538 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295107.P4972273630648139889

/-!
# A295108: a(n) = (1/n) times the n-th derivative of the eighth tetration of x (power tower of order 8) x^^8 at x=1.

The programs for A295108, there is no canonical definition to state claims against.
-/

/-! ## A295108.P741694936210317003

`A295028(eq[5, A219347(n)])`
-/

namespace A295108.P741694936210317003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295108.P741694936210317003

/-! ## A295108.P10141046556804714964

`A295028(eq[7, A193592(n)])`
-/

namespace A295108.P10141046556804714964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295108.P10141046556804714964

/-! ## A295108.P7802980444877909992

`A295028(eq[12, A185782(n+1)])`
-/

namespace A295108.P7802980444877909992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295108.P7802980444877909992

/-! ## A295108.P9905253886534030714

`A295028(eq[64, A057728(n+1)])`
-/

namespace A295108.P9905253886534030714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295108.P9905253886534030714

/-! ## A295108.P5370291485271859870

`A277539(n+1)/(n+1)`
-/

namespace A295108.P5370291485271859870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277539 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295108.P5370291485271859870

/-!
# A295109: a(n) = (1/n) times the n-th derivative of the ninth tetration of x (power tower of order 9) x^^9 at x=1.

The programs for A295109, there is no canonical definition to state claims against.
-/

/-! ## A295109.P12353566040626753884

`A277540(n+1)/(n+1)`
-/

namespace A295109.P12353566040626753884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277540 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295109.P12353566040626753884

/-! ## A295109.P18043323651967742904

`A295028(A155212(n+5))`
-/

namespace A295109.P18043323651967742904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A155212 (n + 5)).toNat

end

end A295109.P18043323651967742904

/-! ## A295109.P3003489544721925994

`A295028(eq[6, A219347(n)])`
-/

namespace A295109.P3003489544721925994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295109.P3003489544721925994

/-! ## A295109.P368681231969506278

`A295028(eq[8, A193592(n)])`
-/

namespace A295109.P368681231969506278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295109.P368681231969506278

/-! ## A295109.P13951456983487816024

`A295028(A000124(n+9)-9)`
-/

namespace A295109.P13951456983487816024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (A000124 (n + 9) - 9).toNat

end

end A295109.P13951456983487816024

/-!
# A295110: a(n) = (1/n) times the n-th derivative of the tenth tetration of x (power tower of order 10) x^^10 at x=1.

The programs for A295110, there is no canonical definition to state claims against.
-/

/-! ## A295110.P4593131920026926040

`A295028(eq[8, A219347(n)])`
-/

namespace A295110.P4593131920026926040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295110.P4593131920026926040

/-! ## A295110.P1766794214985360288

`A295028(eq[9, A193592(n)])`
-/

namespace A295110.P1766794214985360288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295110.P1766794214985360288

/-! ## A295110.P16571264340140388638

`A295028(eq[16, A185782(n+1)])`
-/

namespace A295110.P16571264340140388638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295110.P16571264340140388638

/-! ## A295110.P230411635425287377

`A277541(n+1)/(n+1)`
-/

namespace A295110.P230411635425287377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277541 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A295110.P230411635425287377

/-!
# A295111: Primes p such that 2^p - p is also a prime.

The programs for A295111, there is no canonical definition to state claims against.
-/

/-! ## A295111.P7336385913613561695

`p?[A048744(n+1)]`
-/

namespace A295111.P7336385913613561695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295111.P7336385913613561695

/-!
# A295112: a(n) = Sum_{k=0..n} binomial(n,2*k)*binomial(2*k,k)/(2*k-1).

The programs for A295112, the canonical program `A295112.P4111876458135597642` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295112 has offset 0).

The definition of A295112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295112.P13768538250641915027

`∑[∑[-A167022(n)]]`
-/

namespace A295112.P13768538250641915027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A167022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295112.P13768538250641915027

namespace A295112

/-- `∑[∑[-A167022(n)]]` -/
def P13768538250641915027.Spec : Prop :=
  ∀ n, P13768538250641915027.a n = A295112 n

end A295112

/-! ## A295112.P12377544895179290265

`∑[∑[A007971(n)]-1]`
-/

namespace A295112.P12377544895179290265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295112.P12377544895179290265

namespace A295112

/-- `∑[∑[A007971(n)]-1]` -/
def P12377544895179290265.Spec : Prop :=
  ∀ n, P12377544895179290265.a n = A295112 n

end A295112

/-! ## A295112.P6161528096272804139

`∑[∑[A126068(n)]]-1`
-/

namespace A295112.P6161528096272804139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295112.P6161528096272804139

namespace A295112

/-- `∑[∑[A126068(n)]]-1` -/
def P6161528096272804139.Spec : Prop :=
  ∀ n, P6161528096272804139.a n = A295112 n

end A295112

/-! ## A295112.P4111876458135597642

`n-∑[∑[A168058(n)]]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295112

/-- `n-∑[∑[A168058(n)]]` -/
def P4111876458135597642.Spec : Prop :=
  ∀ n, P4111876458135597642.a n = A295112 n

theorem P4111876458135597642.correct : P4111876458135597642.Spec := by
  intro n
  simp only [A295112]

end A295112

/-! ## A295112.P7037023459367225298

`∑[∑[A168055(n)]-1]-1`
-/

namespace A295112.P7037023459367225298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295112.P7037023459367225298

namespace A295112

/-- `∑[∑[A168055(n)]-1]-1` -/
def P7037023459367225298.Spec : Prop :=
  ∀ n, P7037023459367225298.a n = A295112 n

end A295112

/-!
# A295114: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1's.

The programs for A295114, there is no canonical definition to state claims against.
-/

/-! ## A295114.P8995594281532535180

`A295120(∑[4*n]+1)`
-/

namespace A295114.P8995594281532535180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295114.P8995594281532535180

/-! ## A295114.P6885385303442880183

`record[A295120(A330613(n+1))]`
-/

namespace A295114.P6885385303442880183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295114.P6885385303442880183

/-! ## A295114.P17553434214133056036

`record[gcd(A003987(n), A295120(n+1))]`
-/

namespace A295114.P17553434214133056036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A295120 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295114.P17553434214133056036

/-! ## A295114.P5261970375136679643

`record[char[A046092(n)]*A295120(n+1)]`
-/

namespace A295114.P5261970375136679643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A295120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295114.P5261970375136679643

/-! ## A295114.P5683856515261267245

`gcd(A000038(n), A295120(A001844(n)))`
-/

namespace A295114.P5683856515261267245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295120 (A001844 n).toNat)

end

end A295114.P5683856515261267245

/-!
# A295115: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295115, there is no canonical definition to state claims against.
-/

/-! ## A295115.P8988098142065318141

`A295120(∑[n+2]+4)`
-/

namespace A295115.P8988098142065318141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295115.P8988098142065318141

/-! ## A295115.P12866178093498181353

`A295120(A167614(n+1))%A041778(n)`
-/

namespace A295115.P12866178093498181353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295120 (A167614 (n + 1)).toNat) (A041778 n)

end

end A295115.P12866178093498181353

/-! ## A295115.P6002594548586962191

`or(A000007(n), A295120(A167614(n+1)))`
-/

namespace A295115.P6002594548586962191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295120 (A167614 (n + 1)).toNat)

end

end A295115.P6002594548586962191

/-! ## A295115.P6502728051127477363

`or(A000038(n), A295120(A167614(n+1)))`
-/

namespace A295115.P6502728051127477363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A295120 (A167614 (n + 1)).toNat)

end

end A295115.P6502728051127477363

/-! ## A295115.P13505142628820783594

`or(A151934(n), A295120(A167614(n+1)))`
-/

namespace A295115.P13505142628820783594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151934 n) (A295120 (A167614 (n + 1)).toNat)

end

end A295115.P13505142628820783594

/-!
# A295116: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295116, there is no canonical definition to state claims against.
-/

/-! ## A295116.P14162763642362620656

`A295120(A141214(n)+7)`
-/

namespace A295116.P14162763642362620656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A141214 n + 7).toNat

end

end A295116.P14162763642362620656

/-! ## A295116.P12014086592651611745

`A295120(A052905(n)+9)`
-/

namespace A295116.P12014086592651611745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A052905 n + 9).toNat

end

end A295116.P12014086592651611745

/-! ## A295116.P8111137042026016645

`A295120(A167614(n+2)+1)`
-/

namespace A295116.P8111137042026016645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A167614 (n + 2) + 1).toNat

end

end A295116.P8111137042026016645

/-! ## A295116.P16875843287118581830

`A295120(A166136(n+2)-2)`
-/

namespace A295116.P16875843287118581830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A166136 (n + 2) - 2).toNat

end

end A295116.P16875843287118581830

/-! ## A295116.P3999549731804450007

`A295120(A166136(n+1)+1+n)`
-/

namespace A295116.P3999549731804450007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A295116.P3999549731804450007

/-!
# A295117: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295117, there is no canonical definition to state claims against.
-/

/-! ## A295117.P11644039492747100551

`A295120(A167499(n+3))`
-/

namespace A295117.P11644039492747100551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A167499 (n + 3)).toNat

end

end A295117.P11644039492747100551

/-! ## A295117.P5904999898125578726

`A295120(A166136(n+3)-1)`
-/

namespace A295117.P5904999898125578726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A166136 (n + 3) - 1).toNat

end

end A295117.P5904999898125578726

/-! ## A295117.P5457258343540800627

`A295120(A000217(n+4)+5)`
-/

namespace A295117.P5457258343540800627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A000217 (n + 4) + 5).toNat

end

end A295117.P5457258343540800627

/-! ## A295117.P6068489942220337728

`A295120(A161680(n+5)+5)`
-/

namespace A295117.P6068489942220337728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A161680 (n + 5) + 5).toNat

end

end A295117.P6068489942220337728

/-! ## A295117.P139002850099393847

`A295120(C(n+5, 2)+n+1)`
-/

namespace A295117.P139002850099393847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (Nat.choose (n + 5) 2 + (n + 1))

end

end A295117.P139002850099393847

/-!
# A295118: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295118, there is no canonical definition to state claims against.
-/

/-! ## A295118.P8566162740564799684

`A295120(A166136(n+4))`
-/

namespace A295118.P8566162740564799684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A166136 (n + 4)).toNat

end

end A295118.P8566162740564799684

/-! ## A295118.P8768370268666322111

`A295120(A000124(n+5)+5)`
-/

namespace A295118.P8768370268666322111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A000124 (n + 5) + 5).toNat

end

end A295118.P8768370268666322111

/-! ## A295118.P16175154742289553080

`A295120(A000217(n+5)+6)`
-/

namespace A295118.P16175154742289553080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A000217 (n + 5) + 6).toNat

end

end A295118.P16175154742289553080

/-! ## A295118.P14538694015161646562

`A295120(A052905(n+2)+11)`
-/

namespace A295118.P14538694015161646562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A052905 (n + 2) + 11).toNat

end

end A295118.P14538694015161646562

/-! ## A295118.P15095422988028792038

`A295120(A055999(n+2)+12)`
-/

namespace A295118.P15095422988028792038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A055999 (n + 2) + 12).toNat

end

end A295118.P15095422988028792038

/-!
# A295119: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295119, there is no canonical definition to state claims against.
-/

/-! ## A295119.P11767129887468179699

`A295120(eq[8, A131818(n+1)])`
-/

namespace A295119.P11767129887468179699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295119.P11767129887468179699

/-! ## A295119.P15044783938341634742

`A295120(A374008(n+1))`
-/

namespace A295119.P15044783938341634742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A374008 (n + 1)).toNat

end

end A295119.P15044783938341634742

/-! ## A295119.P7057218512023408854

`A295120(A055999(n+4))`
-/

namespace A295119.P7057218512023408854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (A055999 (n + 4)).toNat

end

end A295119.P7057218512023408854

/-! ## A295119.P13081626450367979471

`A295120(eq[6, A193592(n)])`
-/

namespace A295119.P13081626450367979471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295119.P13081626450367979471

/-! ## A295119.P16907446571917183828

`A295120(Δ[A023551(n+2)])`
-/

namespace A295119.P16907446571917183828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (f1 (n + 1) - f1 n).toNat

end

end A295119.P16907446571917183828

/-!
# A295120: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 4 1s.

The programs for A295120, there is no canonical definition to state claims against.
-/

/-! ## A295120.P8014702981060981852

`A196436(n+1)+A186034(A022167(n))`
-/

namespace A295120.P8014702981060981852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (n + 1) + A186034 (A022167 n).toNat

end

end A295120.P8014702981060981852

/-! ## A295120.P9673227413741570278

`A197199(n+1)+A186034(A022167(n))`
-/

namespace A295120.P9673227413741570278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (n + 1) + A186034 (A022167 n).toNat

end

end A295120.P9673227413741570278

/-! ## A295120.P12390430747150981098

`A196436(n+1)+A037912(A174527(n))`
-/

namespace A295120.P12390430747150981098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196436 (n + 1) + A037912 (A174527 n).toNat

end

end A295120.P12390430747150981098

/-! ## A295120.P1442408556476370168

`A197199(n+1)+A037912(A174527(n))`
-/

namespace A295120.P1442408556476370168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197199 (n + 1) + A037912 (A174527 n).toNat

end

end A295120.P1442408556476370168

/-!
# A295124: a(n) = smallest number k with n prime factors such that 2d + k/d is prime for every d | k.

The programs for A295124, there is no canonical definition to state claims against.
-/

/-! ## A295124.P8182154085318331251

`A293756(n+1)/2`
-/

namespace A295124.P8182154085318331251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293756 (n + 1) : ℚ) / 2

end

end A295124.P8182154085318331251

/-!
# A295125: Numbers k such that (19*10^k + 521)/9 is prime.

The programs for A295125, there is no canonical definition to state claims against.
-/

/-! ## A295125.P10624325935840940180

`A065361(xor(2, A228763(n)))`
-/

namespace A295125.P10624325935840940180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (Int.xor 2 (A228763 n)).toNat

end

end A295125.P10624325935840940180

/-! ## A295125.P16695431524780598654

`A364345(A005648(n)+n)`
-/

namespace A295125.P16695431524780598654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 (A005648 n + (n : ℤ)).toNat

end

end A295125.P16695431524780598654

/-!
# A295126: Denominator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

The programs for A295126, the canonical program `A295126.P8603545562454549646` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295126 has offset 1).

The definition of A295126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295126.P8603545562454549646

`(n+1)/A126864(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295126

/-- `(n+1)/A126864(n+1)` -/
def P8603545562454549646.Spec : Prop :=
  ∀ n, P8603545562454549646.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P2964195378755599326

`(n+1)/gcd(n+1, A023900(n+1))`
-/

namespace A295126.P2964195378755599326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A023900 (n + 1)) : ℚ)

end

end A295126.P2964195378755599326

namespace A295126

/-- `(n+1)/gcd(n+1, A023900(n+1))` -/
def P2964195378755599326.Spec : Prop :=
  ∀ n, P2964195378755599326.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P3066933047653387345

`lcm(n+1, A173557(n+1))/A173557(n+1)`
-/

namespace A295126.P3066933047653387345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A173557 (n + 1)) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A295126.P3066933047653387345

namespace A295126

/-- `lcm(n+1, A173557(n+1))/A173557(n+1)` -/
def P3066933047653387345.Spec : Prop :=
  ∀ n, P3066933047653387345.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P14951181485343004291

`A000027(n+1)/gcd(A000027(n+1), A173557(n+1))`
-/

namespace A295126.P14951181485343004291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A173557 (n + 1)) : ℚ)

end

end A295126.P14951181485343004291

namespace A295126

/-- `A000027(n+1)/gcd(A000027(n+1), A173557(n+1))` -/
def P14951181485343004291.Spec : Prop :=
  ∀ n, P14951181485343004291.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P12083866778363288613

`A102631(n+1)/gcd(A000010(n+1), A102631(n+1))`
-/

namespace A295126.P12083866778363288613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A102631 (n + 1)) : ℚ)

end

end A295126.P12083866778363288613

namespace A295126

/-- `A102631(n+1)/gcd(A000010(n+1), A102631(n+1))` -/
def P12083866778363288613.Spec : Prop :=
  ∀ n, P12083866778363288613.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P8088893103936813733

`(n+1)/A322320(A064549(n+1))`
-/

namespace A295126.P8088893103936813733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322320 (A064549 (n + 1)).toNat : ℚ)

end

end A295126.P8088893103936813733

namespace A295126

/-- `(n+1)/A322320(A064549(n+1))` -/
def P8088893103936813733.Spec : Prop :=
  ∀ n, P8088893103936813733.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P15490995975323556586

`(n+1)/A322320((n+1)²/A003557(n+1))`
-/

namespace A295126.P15490995975323556586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322320 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ))).toNat : ℚ)

end

end A295126.P15490995975323556586

namespace A295126

/-- `(n+1)/A322320((n+1)²/A003557(n+1))` -/
def P15490995975323556586.Spec : Prop :=
  ∀ n, P15490995975323556586.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P7702551560903461364

`(n+1)/A322320((n+1)²/A322320(n+1))`
-/

namespace A295126.P7702551560903461364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322320 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A322320 (n + 1) : ℚ))).toNat : ℚ)

end

end A295126.P7702551560903461364

namespace A295126

/-- `(n+1)/A322320((n+1)²/A322320(n+1))` -/
def P7702551560903461364.Spec : Prop :=
  ∀ n, P7702551560903461364.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P8200795254605500261

`(n+1)/A322320(A304203(n+1))`
-/

namespace A295126.P8200795254605500261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322320 (A304203 (n + 1)).toNat : ℚ)

end

end A295126.P8200795254605500261

namespace A295126

/-- `(n+1)/A322320(A304203(n+1))` -/
def P8200795254605500261.Spec : Prop :=
  ∀ n, P8200795254605500261.a n = (A295126 (n + 1) : ℚ)

end A295126

/-! ## A295126.P11790194514497549543

`A003557(A373319(n+1))`
-/

namespace A295126.P11790194514497549543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A373319 (n + 1)).toNat

end

end A295126.P11790194514497549543

namespace A295126

/-- `A003557(A373319(n+1))` -/
def P11790194514497549543.Spec : Prop :=
  ∀ n, P11790194514497549543.a n = A295126 (n + 1)

end A295126

/-!
# A295127: Numerator of Sum_{d|n} mu(n/d)/d, where mu is the Möbius function A008683.

The programs for A295127, the canonical program `A295127.P883789148021260298` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295127 has offset 1).

The definition of A295127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295127.P883789148021260298

`A023900(n+1)/A126864(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295127

/-- `A023900(n+1)/A126864(n+1)` -/
def P883789148021260298.Spec : Prop :=
  ∀ n, P883789148021260298.a n = (A295127 (n + 1) : ℚ)

end A295127

/-! ## A295127.P12483484803042054463

`A023900(n+1)/(n+1)*A295126(n+1)`
-/

namespace A295127.P12483484803042054463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (n + 1 : ℚ) * (A295126 (n + 1) : ℚ)

end

end A295127.P12483484803042054463

namespace A295127

/-- `A023900(n+1)/(n+1)*A295126(n+1)` -/
def P12483484803042054463.Spec : Prop :=
  ∀ n, P12483484803042054463.a n = (A295127 (n + 1) : ℚ)

end A295127

/-! ## A295127.P16840584981956238003

`A023900(n+1)/gcd(n+1, A173557(n+1))`
-/

namespace A295127.P16840584981956238003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A173557 (n + 1)) : ℚ)

end

end A295127.P16840584981956238003

namespace A295127

/-- `A023900(n+1)/gcd(n+1, A173557(n+1))` -/
def P16840584981956238003.Spec : Prop :=
  ∀ n, P16840584981956238003.a n = (A295127 (n + 1) : ℚ)

end A295127

/-! ## A295127.P18086401233926753038

`(A319340(n+1)-A000010(n+1))/A126864(n+1)`
-/

namespace A295127.P18086401233926753038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319340 (n + 1) - A000010 (n + 1) : ℚ) / (A126864 (n + 1) : ℚ)

end

end A295127.P18086401233926753038

namespace A295127

/-- `(A319340(n+1)-A000010(n+1))/A126864(n+1)` -/
def P18086401233926753038.Spec : Prop :=
  ∀ n, P18086401233926753038.a n = (A295127 (n + 1) : ℚ)

end A295127

/-! ## A295127.P17057339084059008007

`A023900(n+1)/gcd(A023900(n+1), A051953(n+1))`
-/

namespace A295127.P17057339084059008007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) / (Int.gcd (A023900 (n + 1)) (A051953 (n + 1)) : ℚ)

end

end A295127.P17057339084059008007

namespace A295127

/-- `A023900(n+1)/gcd(A023900(n+1), A051953(n+1))` -/
def P17057339084059008007.Spec : Prop :=
  ∀ n, P17057339084059008007.a n = (A295127 (n + 1) : ℚ)

end A295127

/-!
# A295130: a(n) = 3*n*(64*n^2 + 1).

The programs for A295130, the canonical program `A295130.P4084812326904581494` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295130 has offset 1).

The definition of A295130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295130.P4084812326904581494

`3*((4*(n+1))^3+1+n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295130

/-- `3*((4*(n+1))^3+1+n)` -/
def P4084812326904581494.Spec : Prop :=
  ∀ n, (P4084812326904581494.a n : ℤ) = A295130 (n + 1)

theorem P4084812326904581494.correct : P4084812326904581494.Spec := by
  intro n
  simp only [A295130, Nat.add_sub_cancel]

end A295130

/-! ## A295130.P3475044799266837048

`A008585(n+1)+(n+1)/3*(24*(n+1))²`
-/

namespace A295130.P3475044799266837048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 (n + 1) : ℚ) + (n + 1 : ℚ) / 3 * ((24 * (n + 1)) ^ 2 : ℚ)

end

end A295130.P3475044799266837048

namespace A295130

/-- `A008585(n+1)+(n+1)/3*(24*(n+1))²` -/
def P3475044799266837048.Spec : Prop :=
  ∀ n, P3475044799266837048.a n = (A295130 (n + 1) : ℚ)

end A295130

/-! ## A295130.P5103933472638336928

`lcm(A055562(A005408(n)), A158686(n+1))`
-/

namespace A295130.P5103933472638336928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055562 (A005408 n).toNat) (A158686 (n + 1))

end

end A295130.P5103933472638336928

namespace A295130

/-- `lcm(A055562(A005408(n)), A158686(n+1))` -/
def P5103933472638336928.Spec : Prop :=
  ∀ n, (P5103933472638336928.a n : ℤ) = A295130 (n + 1)

end A295130

/-! ## A295130.P3062685185943822994

`A117642(4*(n+1))+3*(n+1)`
-/

namespace A295130.P3062685185943822994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (4 * (n + 1)) + (3 * (n + 1) : ℤ)

end

end A295130.P3062685185943822994

namespace A295130

/-- `A117642(4*(n+1))+3*(n+1)` -/
def P3062685185943822994.Spec : Prop :=
  ∀ n, P3062685185943822994.a n = A295130 (n + 1)

end A295130

/-! ## A295130.P10994251988070460299

`lcm(3*(n+1), A002522(Δ[A016754(n)]))`
-/

namespace A295130.P10994251988070460299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * (n + 1) : ℤ) (A002522 (f1 (n + 1) - f1 n).toNat)

end

end A295130.P10994251988070460299

namespace A295130

/-- `lcm(3*(n+1), A002522(Δ[A016754(n)]))` -/
def P10994251988070460299.Spec : Prop :=
  ∀ n, (P10994251988070460299.a n : ℤ) = A295130 (n + 1)

end A295130

/-!
# A295131: G.f. A(x) satisfies: Product_{n=-oo..+oo} [1 + (-A(x))^n * (1 - (-A(x))^n)^n] = 2*x.

The programs for A295131, there is no canonical definition to state claims against.
-/

/-! ## A295131.P14383178334391640934

`∑[∏{p}[A035009(n)², #]]+round(n²/20)`
-/

namespace A295131.P14383178334391640934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035009 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 20)

end

end A295131.P14383178334391640934

/-! ## A295131.P8041337753956078984

`A024417(A346762(n))`
-/

namespace A295131.P8041337753956078984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A346762 n).toNat

end

end A295131.P8041337753956078984

/-!
# A295133: Solution of the complementary equation a(n) = 3*a(n-1) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295133, there is no canonical definition to state claims against.
-/

/-! ## A295133.P15595610008069381963

`A079228(3*a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A295133.P15595610008069381963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079228 (3 * a (n - 1)).toNat + (n + 1 : ℤ)

end

end A295133.P15595610008069381963

/-! ## A295133.P1522958095852248818

`∑[A289440(6*a(n-1)+2)]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A295133.P1522958095852248818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8] fun n f1 =>
  A289440 (6 * f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295133.P1522958095852248818

/-! ## A295133.P2651405490925024674

`A008619(6*a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A295133.P2651405490925024674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008619 (6 * a (n - 1)).toNat + (n + 1 : ℤ)

end

end A295133.P2651405490925024674

/-! ## A295133.P16274823684202513370

`A080513(6*a(n-1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A295133.P16274823684202513370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A080513 (6 * a (n - 1)).toNat + (n + 1 : ℤ)

end

end A295133.P16274823684202513370

/-!
# A295134: Solution of the complementary equation a(n) = 3*a(n-1) + b(n-1) - 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295134, there is no canonical definition to state claims against.
-/

/-! ## A295134.P15248448064862023419

`A285760((5*3^n-3)/2-A144611(n))`
-/

namespace A295134.P15248448064862023419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (SequenceMachineLib.roundAway (((5 * 3 ^ n : ℤ) - 3 : ℚ) / 2 - (A144611 n : ℚ))).toNat

end

end A295134.P15248448064862023419

/-! ## A295134.P3981794114696634622

`A054861(or(A096019(n), A243757(n)))`
-/

namespace A295134.P3981794114696634622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lor (A096019 n) (A243757 n)).toNat

end

end A295134.P3981794114696634622

/-! ## A295134.P8319159312670001333

`A054861(or(A096019(n), A243758(n)))`
-/

namespace A295134.P8319159312670001333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lor (A096019 n) (A243758 n)).toNat

end

end A295134.P8319159312670001333

/-! ## A295134.P16636424079545923879

`A054861(or(A054861(n)², A096019(n)))`
-/

namespace A295134.P16636424079545923879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lor (A054861 n ^ 2) (A096019 n)).toNat

end

end A295134.P16636424079545923879

/-!
# A295135: Solution of the complementary equation a(n) = 3*a(n-1) + b(n-1) - 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295135, there is no canonical definition to state claims against.
-/

/-! ## A295135.P16860156503284156906

`∑[A184746(A104878(∑[n+2]+4))]`
-/

namespace A295135.P16860156503284156906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184746 (A104878 (∑ j ∈ Finset.range (n + 1), f2 j + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295135.P16860156503284156906

/-! ## A295135.P11011588790057968854

`Δ[A212445(4*a(n-1)-3*a(n-2))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A295135.P11011588790057968854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  A212445 (4 * f1 (n - 1) - 3 * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295135.P11011588790057968854

/-! ## A295135.P15595468091960464198

`comp[6-A282916(A000007(n)+n)]+3*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A295135.P15595468091960464198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A282916 (A000007 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 * a (n - 1)

end

end A295135.P15595468091960464198

/-!
# A295136: Solution of the complementary equation a(n) = 3*a(n-1) + b(n-1) - 3, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295136, there is no canonical definition to state claims against.
-/

/-! ## A295136.P14724796751094222541

`A287421(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A295136.P14724796751094222541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A287421 (a (n - 1)).toNat + (n : ℤ)

end

end A295136.P14724796751094222541

/-! ## A295136.P14836165067419621079

`A063882(6*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A295136.P14836165067419621079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A063882 (6 * a (n - 1)).toNat

end

end A295136.P14836165067419621079

/-! ## A295136.P7629929824766598258

`A285758(12*a(n-1))/2` with `a(0)=1, a(1)=2`
-/

namespace A295136.P7629929824766598258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A285758 (SequenceMachineLib.roundAway (12 * a (n - 1))).toNat : ℚ) / 2

end

end A295136.P7629929824766598258

/-! ## A295136.P5504086013787490235

`A110654(floor(24*3^n/13))-round(2*n/3)`
-/

namespace A295136.P5504086013787490235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊24 * ((3 ^ n : ℚ) / 13)⌋.toNat - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A295136.P5504086013787490235

/-!
# A295137: Solution of the complementary equation a(n) = 3*a(n-1) + b(n-1) - n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295137, there is no canonical definition to state claims against.
-/

/-! ## A295137.P9994837126663198011

`A343380(∑[2*n])+3^n-1`
-/

namespace A295137.P9994837126663198011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (∑ j ∈ Finset.range (n + 1), f1 j) + ((3 ^ n : ℤ) - 1)

end

end A295137.P9994837126663198011

/-! ## A295137.P9712388024267621754

`A367290(A048473(n))-n`
-/

namespace A295137.P9712388024267621754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367290 (A048473 n).toNat - (n : ℤ)

end

end A295137.P9712388024267621754

/-! ## A295137.P16616622295242738786

`A341944(A103517(3*a(n-1)))/2` with `a(0)=1, a(1)=2`
-/

namespace A295137.P16616622295242738786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A341944 (A103517 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat).toNat : ℚ) / 2

end

end A295137.P16616622295242738786

/-! ## A295137.P7227273390223293911

`A008619(A008619(n)+6*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A295137.P7227273390223293911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008619 (A008619 n + 6 * a (n - 1)).toNat

end

end A295137.P7227273390223293911

/-!
# A295138: Solution of the complementary equation a(n) = 3*a(n-2) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295138, there is no canonical definition to state claims against.
-/

/-! ## A295138.P2218014206936546141

`A055086(A041006(n))-A077191(n+1)`
-/

namespace A295138.P2218014206936546141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A041006 n).toNat - A077191 (n + 1)

end

end A295138.P2218014206936546141

/-! ## A295138.P12570255505668506952

`A288888(n+1)-A243055(A143917(n))`
-/

namespace A295138.P12570255505668506952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288888 (n + 1) - A243055 (A143917 n).toNat

end

end A295138.P12570255505668506952

/-!
# A295140: Solution of the complementary equation a(n) = 3*a(n-2) - b(n-2) + 4, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295140, there is no canonical definition to state claims against.
-/

/-! ## A295140.P12319636389947071551

`A000194(floor(A348615(n+3)/A196265(n+1)))`
-/

namespace A295140.P12319636389947071551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ⌊(A348615 (n + 3) : ℚ) / (A196265 (n + 1) : ℚ)⌋.toNat

end

end A295140.P12319636389947071551

/-!
# A295141: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295141, there is no canonical definition to state claims against.
-/

/-! ## A295141.P453693158368658951

`A295143(n)-A004526(A001333(n))`
-/

namespace A295141.P453693158368658951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295143 n - A004526 (A001333 n).toNat

end

end A295141.P453693158368658951

/-! ## A295141.P14955849934822579693

`A296849(n)-A029578(A001333(n))`
-/

namespace A295141.P14955849934822579693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296849 n - A029578 (A001333 n).toNat

end

end A295141.P14955849934822579693

/-! ## A295141.P7843174544942084253

`A004277(A295143(n))-A296849(n)`
-/

namespace A295141.P7843174544942084253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295143 n).toNat - A296849 n

end

end A295141.P7843174544942084253

/-!
# A295142: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295142, there is no canonical definition to state claims against.
-/

/-! ## A295142.P3785061661719432993

`∑[∑[A005374(A002203(n))]]`
-/

namespace A295142.P3785061661719432993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A002203 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295142.P3785061661719432993

/-! ## A295142.P11549832977416850407

`∑[∑[A005374(A099425(n))]]`
-/

namespace A295142.P11549832977416850407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A099425 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295142.P11549832977416850407

/-! ## A295142.P6833587493333108671

`A160544(A117585(n))`
-/

namespace A295142.P6833587493333108671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (A117585 n).toNat

end

end A295142.P6833587493333108671

/-!
# A295143: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295143, there is no canonical definition to state claims against.
-/

/-! ## A295143.P11879018812226166345

`A295141(n)+A004526(A001333(n))`
-/

namespace A295143.P11879018812226166345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295141 n + A004526 (A001333 n).toNat

end

end A295143.P11879018812226166345

/-! ## A295143.P2517898674218979610

`A296849(n)-A004526(A001333(n))`
-/

namespace A295143.P2517898674218979610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296849 n - A004526 (A001333 n).toNat

end

end A295143.P2517898674218979610

/-! ## A295143.P7530592334566584518

`A295141(n)+A029578(A001333(n)-1)`
-/

namespace A295143.P7530592334566584518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295141 n + A029578 (A001333 n - 1).toNat

end

end A295143.P7530592334566584518

/-! ## A295143.P12879934088126940649

`A295141(n)+A004526(A296849(n)-A295141(n))`
-/

namespace A295143.P12879934088126940649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295141 n + A004526 (A296849 n - A295141 n).toNat

end

end A295143.P12879934088126940649

/-! ## A295143.P5722688328468223058

`A004526(A296849(n)+A295141(n))`
-/

namespace A295143.P5722688328468223058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A296849 n + A295141 n).toNat

end

end A295143.P5722688328468223058

/-!
# A295144: Solution of the complementary equation a(n) = 2*a(n-1) + a(n-2) + b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295144, there is no canonical definition to state claims against.
-/

/-! ## A295144.P16419481325710524201

`or(A000041(3*n), A334708(A000219(n)))`
-/

namespace A295144.P16419481325710524201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (3 * n)) (A334708 (A000219 n).toNat)

end

end A295144.P16419481325710524201

/-! ## A295144.P7459532783370448313

`A289500(A362389(n)+A032308(3*n+1))`
-/

namespace A295144.P7459532783370448313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (A362389 n + A032308 (3 * n + 1)).toNat

end

end A295144.P7459532783370448313

/-! ## A295144.P15547748898614712431

`or(A213598(3*n), A240869(A265251(3*n)))`
-/

namespace A295144.P15547748898614712431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213598 (3 * n)) (A240869 (A265251 (3 * n)).toNat)

end

end A295144.P15547748898614712431

/-!
# A295145: Solution of the complementary equation a(n) = a(n-1) + 2*a(n-2) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295145, there is no canonical definition to state claims against.
-/

/-! ## A295145.P11994172441443538161

`A295147(n)-A025480(A097074(n))`
-/

namespace A295145.P11994172441443538161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295147 n - A025480 (A097074 n).toNat

end

end A295145.P11994172441443538161

/-! ## A295145.P10072487266579060834

`∑[A172471(A084214(n)²)]`
-/

namespace A295145.P10072487266579060834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A084214 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295145.P10072487266579060834

/-! ## A295145.P150832847329285434

`A293137(A072263(n))`
-/

namespace A295145.P150832847329285434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A072263 n).toNat

end

end A295145.P150832847329285434

/-!
# A295146: Solution of the complementary equation a(n) = a(n-1) + 2*a(n-2) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295146, there is no canonical definition to state claims against.
-/

/-! ## A295146.P9314163366065663937

`A194640(∑[∑[A008859(n)]])`
-/

namespace A295146.P9314163366065663937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295146.P9314163366065663937

/-! ## A295146.P3629890962493443474

`A194640(∑[∑[A208127(n)]])`
-/

namespace A295146.P3629890962493443474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295146.P3629890962493443474

/-! ## A295146.P16237972545397714553

`A131051(n+1)-A307598(A224692(n))`
-/

namespace A295146.P16237972545397714553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1) - A307598 (A224692 n).toNat

end

end A295146.P16237972545397714553

/-! ## A295146.P7568095744947895769

`A248562(A131577(n+3))-A131577(n+3)`
-/

namespace A295146.P7568095744947895769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A131577 (n + 3)).toNat - A131577 (n + 3)

end

end A295146.P7568095744947895769

/-!
# A295147: Solution of the complementary equation a(n) = a(n-1) + 2*a(n-2) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295147, there is no canonical definition to state claims against.
-/

/-! ## A295147.P8479771388681553858

`A295145(n)+A025480(A097074(n))`
-/

namespace A295147.P8479771388681553858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295145 n + A025480 (A097074 n).toNat

end

end A295147.P8479771388681553858

/-! ## A295147.P12945728094675307687

`A001045(n+3)-A346699(A014613(n+1))`
-/

namespace A295147.P12945728094675307687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) - A346699 (A014613 (n + 1)).toNat

end

end A295147.P12945728094675307687

/-!
# A295148: Solution of the complementary equation a(n) = a(n-1) + 2*a(n-2) + b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295148, there is no canonical definition to state claims against.
-/

/-! ## A295148.P161998316995222989

`A034887(A139634(n+1)-2*n)`
-/

namespace A295148.P161998316995222989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A139634 (n + 1) - (2 * n : ℤ)).toNat

end

end A295148.P161998316995222989

/-! ## A295148.P8818999883022392872

`A034887(A139634(n+1)-n-n)`
-/

namespace A295148.P8818999883022392872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A139634 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A295148.P8818999883022392872

/-! ## A295148.P10213646798179828855

`A068156(n)-A214364(A343537(n))`
-/

namespace A295148.P10213646798179828855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n - A214364 (A343537 n).toNat

end

end A295148.P10213646798179828855

/-! ## A295148.P17952161416231117662

`A033484(n)-A001221(A342225(n+1))`
-/

namespace A295148.P17952161416231117662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A001221 (A342225 (n + 1)).toNat

end

end A295148.P17952161416231117662

/-! ## A295148.P10806297230774383827

`A033484(n)-A056169(A001214(3*n+1))`
-/

namespace A295148.P10806297230774383827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A056169 (A001214 (3 * n + 1)).toNat

end

end A295148.P10806297230774383827

/-!
# A295149: Numbers n such that gcd(A002487(n), A002487(n+2)) > 1.

The programs for A295149, there is no canonical definition to state claims against.
-/

/-! ## A295149.P18114372294246647322

`lt[1, gcd(A002487(n+2), A002487(n))]`
-/

namespace A295149.P18114372294246647322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002487 (n + 2)) (A002487 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295149.P18114372294246647322

/-!
# A295151: Numbers that have exactly three representations as a sum of five nonnegative squares.

The programs for A295151, there is no canonical definition to state claims against.
-/

/-! ## A295151.P1375585288663583725

`eq[3, A000174(n)]`
-/

namespace A295151.P1375585288663583725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295151.P1375585288663583725

/-! ## A295151.P2388810522028845194

`lt[A004184(A000174(n)²), 1]`
-/

namespace A295151.P2388810522028845194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A000174 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295151.P2388810522028845194

/-! ## A295151.P8631056543688912230

`lt[1, A051340(A000174(n)²)]`
-/

namespace A295151.P8631056543688912230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A000174 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295151.P8631056543688912230

/-! ## A295151.P5302587025528118591

`lt[A143797(A000174(n)²), 2]`
-/

namespace A295151.P5302587025528118591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143797 (A000174 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295151.P5302587025528118591

/-! ## A295151.P10888183961194153693

`lt[1, A286998(A000174(n)+1)]`
-/

namespace A295151.P10888183961194153693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A000174 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295151.P10888183961194153693

/-!
# A295152: Numbers that have exactly four representations as a sum of five nonnegative squares.

The programs for A295152, there is no canonical definition to state claims against.
-/

/-! ## A295152.P2437996588913560542

`eq[4, A000174(n)]`
-/

namespace A295152.P2437996588913560542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295152.P2437996588913560542

/-! ## A295152.P8563749192882117625

`lt[A031018(A000174(n)+1), 1]`
-/

namespace A295152.P8563749192882117625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031018 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295152.P8563749192882117625

/-! ## A295152.P3850214925057098394

`lt[A143797(A000174(n)+1), 1]`
-/

namespace A295152.P3850214925057098394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143797 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295152.P3850214925057098394

/-! ## A295152.P14695675710835552170

`eq[A025430(n)+4, A000177(n)]`
-/

namespace A295152.P14695675710835552170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295152.P14695675710835552170

/-! ## A295152.P7175311005907377231

`eq[4, A025429(n)+A002635(n)]`
-/

namespace A295152.P7175311005907377231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295152.P7175311005907377231

/-!
# A295153: Numbers that have exactly five representations as a sum of five nonnegative squares.

The programs for A295153, there is no canonical definition to state claims against.
-/

/-! ## A295153.P7436023681365800400

`eq[5, A000174(n)]`
-/

namespace A295153.P7436023681365800400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295153.P7436023681365800400

/-! ## A295153.P8588537063128870852

`lt[1, A299173(A000174(n)²)]`
-/

namespace A295153.P8588537063128870852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A000174 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295153.P8588537063128870852

/-! ## A295153.P7399788907550063598

`lt[A000164(A000174(n)+2), 1]`
-/

namespace A295153.P7399788907550063598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000174 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295153.P7399788907550063598

/-! ## A295153.P13517970197837851298

`lt[A014963(A000174(n)+1), 2]`
-/

namespace A295153.P13517970197837851298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295153.P13517970197837851298

/-! ## A295153.P6627269116327841294

`eq[A025430(n)+5, A000177(n)]`
-/

namespace A295153.P6627269116327841294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295153.P6627269116327841294

/-!
# A295154: Numbers that have exactly six representations as a sum of five nonnegative squares.

The programs for A295154, there is no canonical definition to state claims against.
-/

/-! ## A295154.P8335776740229166071

`eq[6, A000174(n)]`
-/

namespace A295154.P8335776740229166071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295154.P8335776740229166071

/-! ## A295154.P15236508302122588733

`lt[A000164(A000174(n)+1), 1]`
-/

namespace A295154.P15236508302122588733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295154.P15236508302122588733

/-! ## A295154.P3367110197202857054

`lt[A143797(A000174(n)-1), 1]`
-/

namespace A295154.P3367110197202857054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143797 (A000174 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295154.P3367110197202857054

/-! ## A295154.P13184402866765769425

`lt[2, A007814(A000174(n)+2)]`
-/

namespace A295154.P13184402866765769425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000174 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295154.P13184402866765769425

/-! ## A295154.P11708703972176590985

`lt[3, A216637(A000174(n)+1)]`
-/

namespace A295154.P11708703972176590985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216637 (A000174 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295154.P11708703972176590985

/-!
# A295155: Numbers that have exactly seven representations as a sum of five nonnegative squares.

The programs for A295155, there is no canonical definition to state claims against.
-/

/-! ## A295155.P17359492605484964855

`eq[7, A000174(n)]`
-/

namespace A295155.P17359492605484964855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295155.P17359492605484964855

/-! ## A295155.P9139705269472020766

`lt[2, A007814(A000174(n)+1)]`
-/

namespace A295155.P9139705269472020766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000174 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295155.P9139705269472020766

/-! ## A295155.P15863718050240448417

`lt[A324713(A000174(n)+2), 1]`
-/

namespace A295155.P15863718050240448417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (A000174 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295155.P15863718050240448417

/-! ## A295155.P12518381072291104213

`lt[A004184(A000174(n)+2), 2]`
-/

namespace A295155.P12518381072291104213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A000174 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295155.P12518381072291104213

/-! ## A295155.P165498210537081917

`lt[1, A299173(2*A000174(n))]`
-/

namespace A295155.P165498210537081917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (2 * A000174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295155.P165498210537081917

/-!
# A295156: Numbers that have exactly eight representations as a sum of five nonnegative squares.

The programs for A295156, there is no canonical definition to state claims against.
-/

/-! ## A295156.P3240194379102584153

`eq[8, A000174(n)]`
-/

namespace A295156.P3240194379102584153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295156.P3240194379102584153

/-! ## A295156.P734868574342754920

`lt[A004184(A000174(n)+1), 1]`
-/

namespace A295156.P734868574342754920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295156.P734868574342754920

/-! ## A295156.P7159314197941669238

`lt[A324713(A000174(n)+1), 1]`
-/

namespace A295156.P7159314197941669238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (A000174 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295156.P7159314197941669238

/-! ## A295156.P13747523289211265452

`lt[A000164(A000174(n)-1), 1]`
-/

namespace A295156.P13747523289211265452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000174 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295156.P13747523289211265452

/-! ## A295156.P7948553860901747122

`eq[8, A025429(n)+A002635(n)]`
-/

namespace A295156.P7948553860901747122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295156.P7948553860901747122

/-!
# A295157: Numbers that have exactly nine representations as a sum of five nonnegative squares.

The programs for A295157, there is no canonical definition to state claims against.
-/

/-! ## A295157.P4466724161072851699

`eq[9, A000174(n)]`
-/

namespace A295157.P4466724161072851699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295157.P4466724161072851699

/-! ## A295157.P15637295646883877207

`lt[1, A043283(A000174(n)+1)]`
-/

namespace A295157.P15637295646883877207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A000174 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295157.P15637295646883877207

/-! ## A295157.P6614698834361889038

`lt[10, A051340(10*A000174(n))]`
-/

namespace A295157.P6614698834361889038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (10 * A000174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295157.P6614698834361889038

/-! ## A295157.P7483207585656089873

`eq[A025430(n)+9, A000177(n)]`
-/

namespace A295157.P7483207585656089873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295157.P7483207585656089873

/-! ## A295157.P13343107929752181256

`eq[9, A025429(n)+A002635(n)]`
-/

namespace A295157.P13343107929752181256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295157.P13343107929752181256

/-!
# A295161: Numbers m such that there are precisely 16 groups of order m.

The programs for A295161, there is no canonical definition to state claims against.
-/

/-! ## A295161.P2493524364899380175

`eq[16, A000001(n)]`
-/

namespace A295161.P2493524364899380175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295161.P2493524364899380175

/-! ## A295161.P13221903162211221916

`eq[16, sqrt(A297420(n))]`
-/

namespace A295161.P13221903162211221916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A295161.P13221903162211221916

/-!
# A295163: Max odd N reached by Collatz sequence "record setters".

The programs for A295163, there is no canonical definition to state claims against.
-/

/-! ## A295163.P14813286298766516346

`A087232(A025587(n))`
-/

namespace A295163.P14813286298766516346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (A025587 n).toNat

end

end A295163.P14813286298766516346

/-! ## A295163.P13028426500690372400

`record[A087232(A171462(n+1)+A034699(n+1))]`
-/

namespace A295163.P13028426500690372400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (A171462 (n + 1) + A034699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295163.P13028426500690372400

/-! ## A295163.P7841310829776368536

`record[A087232(A171462(n+1)+A053585(n+1))]`
-/

namespace A295163.P7841310829776368536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (A171462 (n + 1) + A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295163.P7841310829776368536

/-! ## A295163.P4008481677911461737

`record[A087232(∑[A033183(n)])]`
-/

namespace A295163.P4008481677911461737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295163.P4008481677911461737

/-!
# A295164: Number of squarefree numbers m <= n that have a prime divisor greater than sqrt(n) (i.e., A006530(m) > sqrt(n)).

The programs for A295164, there is no canonical definition to state claims against.
-/

/-! ## A295164.P8455842177261475277

`A013928(n+2)-A295101(n+1)`
-/

namespace A295164.P8455842177261475277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A295101 (n + 1)

end

end A295164.P8455842177261475277

/-! ## A295164.P10379765908445346676

`∑[A008966(n+1)]-A295101(n+1)`
-/

namespace A295164.P10379765908445346676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295101 (n + 1)

end

end A295164.P10379765908445346676

/-! ## A295164.P4824872331191152586

`A002024(A081240(n+1))-A295101(n+1)`
-/

namespace A295164.P4824872331191152586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A081240 (n + 1)).toNat - A295101 (n + 1)

end

end A295164.P4824872331191152586

/-! ## A295164.P9854277575365452299

`A107079(A070321(n+1))-A295101(n+1)`
-/

namespace A295164.P9854277575365452299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A070321 (n + 1)).toNat - A295101 (n + 1)

end

end A295164.P9854277575365452299

/-! ## A295164.P1691099069775556910

`A241419(n+1)-A185284(A000931(n))`
-/

namespace A295164.P1691099069775556910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (n + 1) - A185284 (A000931 n).toNat

end

end A295164.P1691099069775556910

/-!
# A295165: Numbers n such that !n and n!! (A000166(n) and A006882(n)) are coprime.

The programs for A295165, there is no canonical definition to state claims against.
-/

/-! ## A295165.P16302290304997494521

`eq[1, gcd(A000166(n), A006882(n))]`
-/

namespace A295165.P16302290304997494521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000166 n) (A006882 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295165.P16302290304997494521

/-! ## A295165.P11123142873873507062

`lt[A325248(A300576(n+1)), A305942(n)]`
-/

namespace A295165.P11123142873873507062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (A300576 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295165.P11123142873873507062

/-! ## A295165.P329095271321080054

`lt[A205626(n+4)%A325997(n), A319149(2*(n+2))]`
-/

namespace A295165.P329095271321080054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205626 (n + 4)) (A325997 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319149 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295165.P329095271321080054

/-! ## A295165.P13348986317494981371

`lt[A257340(A089534(n+1)), 57]`
-/

namespace A295165.P13348986317494981371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257340 (A089534 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295165.P13348986317494981371

/-! ## A295165.P10641357768860587513

`lt[A200745(n), A181187(A194842(n+2))]`
-/

namespace A295165.P10641357768860587513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A194842 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295165.P10641357768860587513

/-!
# A295166: Chromatic invariant of the n-cocktail party graph.

The programs for A295166, there is no canonical definition to state claims against.
-/

/-! ## A295166.P4143308831572608565

`A047920(A014105(n)+abs(1-n)+2)`
-/

namespace A295166.P4143308831572608565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A014105 n + (|1 - (n : ℤ)| + 2)).toNat

end

end A295166.P4143308831572608565

/-! ## A295166.P6434125701981297403

`A047920(A001844(n))+A000007(n)`
-/

namespace A295166.P6434125701981297403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A001844 n).toNat + A000007 n

end

end A295166.P6434125701981297403

/-! ## A295166.P4684222121960579136

`A047920(A001844(n)+A000038(n))`
-/

namespace A295166.P4684222121960579136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A001844 n + A000038 n).toNat

end

end A295166.P4684222121960579136

/-! ## A295166.P10681967156556607520

`A047920(or(A000038(n), A001844(n)))`
-/

namespace A295166.P10681967156556607520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (Int.lor (A000038 n) (A001844 n)).toNat

end

end A295166.P10681967156556607520

/-! ## A295166.P3546651666281800312

`A047920(or(A001844(n), A073423(n)))`
-/

namespace A295166.P3546651666281800312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (Int.lor (A001844 n) (A073423 n)).toNat

end

end A295166.P3546651666281800312

/-!
# A295168: Chromatic invariant of the 2n-crossed prism graph.

The programs for A295168, the canonical program `A295168.P3325206160208991576` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295168 has offset 1).

The definition of A295168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295168.P3325206160208991576

`9*a(n-1)-24*a(n-2)+20*a(n-3)` with `a(0)=1, a(1)=11, a(2)=85`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295168

/-- `9*a(n-1)-24*a(n-2)+20*a(n-3)` -/
def P3325206160208991576.Spec : Prop :=
  ∀ n, P3325206160208991576.a n = A295168 (n + 1)

theorem P3325206160208991576.correct : P3325206160208991576.Spec := by
  intro n
  simp only [A295168, Nat.add_sub_cancel]

end A295168

/-! ## A295168.P4693729242572231977

`A074600(n+1)-A128543(n+2)`
-/

namespace A295168.P4693729242572231977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 (n + 1) - A128543 (n + 2)

end

end A295168.P4693729242572231977

namespace A295168

/-- `A074600(n+1)-A128543(n+2)` -/
def P4693729242572231977.Spec : Prop :=
  ∀ n, P4693729242572231977.a n = A295168 (n + 1)

end A295168

/-! ## A295168.P9748624684243008289

`A056451(2*(n+1))-∑[A133086(n+1)]`
-/

namespace A295168.P9748624684243008289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295168.P9748624684243008289

namespace A295168

/-- `A056451(2*(n+1))-∑[A133086(n+1)]` -/
def P9748624684243008289.Spec : Prop :=
  ∀ n, P9748624684243008289.a n = A295168 (n + 1)

end A295168

/-! ## A295168.P2740465382649235149

`A000351(n+1)-(A008585(n)+4)*Δ[A000051(n)]`
-/

namespace A295168.P2740465382649235149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) - (A008585 n + 4) * (f1 (n + 1) - f1 n)

end

end A295168.P2740465382649235149

namespace A295168

/-- `A000351(n+1)-(A008585(n)+4)*Δ[A000051(n)]` -/
def P2740465382649235149.Spec : Prop :=
  ∀ n, P2740465382649235149.a n = A295168 (n + 1)

end A295168

/-! ## A295168.P18306400150029659409

`A056487(2*(n+1))-(A239632(2*n+1)+A239632(2*(n+1)))`
-/

namespace A295168.P18306400150029659409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * (n + 1)) - (A239632 (2 * n + 1) + A239632 (2 * (n + 1)))

end

end A295168.P18306400150029659409

namespace A295168

/-- `A056487(2*(n+1))-(A239632(2*n+1)+A239632(2*(n+1)))` -/
def P18306400150029659409.Spec : Prop :=
  ∀ n, P18306400150029659409.a n = A295168 (n + 1)

end A295168

/-!
# A295170: Chromatic invariant of the n X n black bishop graph.

The programs for A295170, there is no canonical definition to state claims against.
-/

/-! ## A295170.P1113768492855233872

`A092000(a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=8`
-/

namespace A295170.P1113768492855233872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 8] fun n a =>
  A092000 (a (n - 1)).toNat

end

end A295170.P1113768492855233872

/-!
# A295175: 

The programs for A295175, there is no canonical definition to state claims against.
-/

/-! ## A295175.P10497079407139815757

`∏{d}[(n+1)!, A000010(#)^3]`
-/

namespace A295175.P10497079407139815757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 d ^ 3

end

end A295175.P10497079407139815757

/-!
# A295176: Chromatic invariant of the n-hypercube graph.

The programs for A295176, there is no canonical definition to state claims against.
-/

/-! ## A295176.P4873906262516897354

`A008740(A177237(A177116(∑[n])))`
-/

namespace A295176.P4873906262516897354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A177237 (A177116 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A295176.P4873906262516897354

/-!
# A295179: Expansion of Product_{k>=1} 1/(1 - x^k)^(3*k*(k-1)/2+1).

The programs for A295179, there is no canonical definition to state claims against.
-/

/-! ## A295179.P17882927225424166793

`A356377(A243633(n))`
-/

namespace A295179.P17882927225424166793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356377 (A243633 n).toNat

end

end A295179.P17882927225424166793

/-! ## A295179.P6179484921556646414

`A377812(A000079(n))+A000219(n)`
-/

namespace A295179.P6179484921556646414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377812 (A000079 n).toNat + A000219 n

end

end A295179.P6179484921556646414

/-!
# A295180: Expansion of Product_{k>=1} (1 + x^k)^(3*k*(k-1)/2+1).

The programs for A295180, there is no canonical definition to state claims against.
-/

/-! ## A295180.P8787884027346333518

`A368100(A001006(n))+A055553(n+1)`
-/

namespace A295180.P8787884027346333518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368100 (A001006 n).toNat + A055553 (n + 1)

end

end A295180.P8787884027346333518

/-! ## A295180.P2787713517441007126

`A087011(A003105(3*n+4)*A131128(n)+3)`
-/

namespace A295180.P2787713517441007126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A003105 (3 * n + 4) * A131128 n + 3).toNat

end

end A295180.P2787713517441007126

/-!
# A295181: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(-k*x)/(1 - x)^k.

The programs for A295181, there is no canonical definition to state claims against.
-/

/-! ## A295181.P14351622755168183979

`A340829(A336534(n))%5`
-/

namespace A295181.P14351622755168183979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340829 (A336534 n).toNat) 5

end

end A295181.P14351622755168183979

/-! ## A295181.P5990349379452914332

`and(A177510(A098825(n)), A357681(n))`
-/

namespace A295181.P5990349379452914332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A177510 (A098825 n).toNat) (A357681 n)

end

end A295181.P5990349379452914332

/-! ## A295181.P5075055621646806173

`and(A264909(n), A303988(A098825(n)))`
-/

namespace A295181.P5075055621646806173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264909 n) (A303988 (A098825 n).toNat)

end

end A295181.P5075055621646806173

/-! ## A295181.P3564308922404986710

`A087116(A281891(n)²%A033562(n))`
-/

namespace A295181.P3564308922404986710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.tmod (A281891 n ^ 2) (A033562 n)).toNat

end

end A295181.P3564308922404986710

/-! ## A295181.P488007404028545738

`A327966(A357712(n)^A049599(n+1))`
-/

namespace A295181.P488007404028545738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (SequenceMachineLib.roundAway ((A357712 n : ℚ) ^ (A049599 (n + 1) : ℤ))).toNat

end

end A295181.P488007404028545738

/-!
# A295182: a(n) = n! * [x^n] exp(-n*x)/(1 - x)^n.

The programs for A295182, there is no canonical definition to state claims against.
-/

/-! ## A295182.P8599859518212312696

`A295181(∑[4*n])`
-/

namespace A295182.P8599859518212312696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295182.P8599859518212312696

/-! ## A295182.P3655294804710032026

`and(1-n, A295181(A046092(n)))`
-/

namespace A295182.P3655294804710032026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A295181 (A046092 n).toNat)

end

end A295182.P3655294804710032026

/-!
# A295183: a(n) = n! * [x^n] exp(n*x)/(1 - x)^n.

The programs for A295183, there is no canonical definition to state claims against.
-/

/-! ## A295183.P5877653077353999857

`A003172(A355098(n))-1`
-/

namespace A295183.P5877653077353999857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (A355098 n).toNat - 1

end

end A295183.P5877653077353999857

/-!
# A295185: a(n) is the smallest composite number whose prime divisors (with multiplicity) sum to prime(n); n >= 3.

The programs for A295185, there is no canonical definition to state claims against.
-/

/-! ## A295185.P17127955416333530399

`A288814(p?[2*n+5])`
-/

namespace A295185.P17127955416333530399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A295185.P17127955416333530399

/-! ## A295185.P16537505714162206204

`A288814(A215848(n+1))`
-/

namespace A295185.P16537505714162206204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A215848 (n + 1)).toNat

end

end A295185.P16537505714162206204

/-! ## A295185.P4647228621700582540

`A288814(A045344(n+2))`
-/

namespace A295185.P4647228621700582540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A045344 (n + 2)).toNat

end

end A295185.P4647228621700582540

/-! ## A295185.P6791470284512155258

`A288814(A065091(n+2))`
-/

namespace A295185.P6791470284512155258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A065091 (n + 2)).toNat

end

end A295185.P6791470284512155258

/-! ## A295185.P3766661263394073592

`A288814(A140475(n+2))`
-/

namespace A295185.P3766661263394073592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A140475 (n + 2)).toNat

end

end A295185.P3766661263394073592

/-! ## A295185.P12897913218348789259

`A288814(A000040(n+3))`
-/

namespace A295185.P12897913218348789259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A000040 (n + 3)).toNat

end

end A295185.P12897913218348789259

/-! ## A295185.P10408883283683619463

`A288814(A048974(n+2)-2)`
-/

namespace A295185.P10408883283683619463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A048974 (n + 2) - 2).toNat

end

end A295185.P10408883283683619463

/-! ## A295185.P6068290711814990161

`A288814(A172367(n+1)+4)`
-/

namespace A295185.P6068290711814990161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A172367 (n + 1) + 4).toNat

end

end A295185.P6068290711814990161

/-! ## A295185.P9441190838585439259

`A288814(A052147(n+3)-2)`
-/

namespace A295185.P9441190838585439259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A052147 (n + 3) - 2).toNat

end

end A295185.P9441190838585439259

/-!
# A295190: Chromatic invariant of the n-triangular grid graph.

The programs for A295190, there is no canonical definition to state claims against.
-/

/-! ## A295190.P281953402429207651

`A375785(C(A199883(n+1), A004001(n+1)))`
-/

namespace A295190.P281953402429207651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375785 (Nat.choose (A199883 (n + 1)).toNat (A004001 (n + 1)).toNat)

end

end A295190.P281953402429207651

/-!
# A295193: Number of regular simple graphs on n labeled nodes.

The programs for A295193, there is no canonical definition to state claims against.
-/

/-! ## A295193.P2346225365636289936

`∑[abs(Δ[A319612(n)])]`
-/

namespace A295193.P2346225365636289936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295193.P2346225365636289936

/-! ## A295193.P14964099585621674817

`A319612(n+1)+1`
-/

namespace A295193.P14964099585621674817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319612 (n + 1) + 1

end

end A295193.P14964099585621674817

/-! ## A295193.P5405698555442609397

`∑[Δ[A319612(n)]^A019426(2*n)]`
-/

namespace A295193.P5405698555442609397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319612 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A019426 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295193.P5405698555442609397

/-!
# A295196: Numbers n > 1 such that 2^(n-1) and (2*n-m)*2^(((n-1)/2) - floor(log_2(n))) are congruent to 1 (mod n) for at least one of m = 3, m = 7 and m = 15.

The programs for A295196, there is no canonical definition to state claims against.
-/

/-! ## A295196.P4806081778382187596

`p?[A004771(record[A336820(n+1)])]`
-/

namespace A295196.P4806081778382187596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295196.P4806081778382187596

/-! ## A295196.P10506068475199275245

`p?[(8*n+7)*A151702(n)]`
-/

namespace A295196.P10506068475199275245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) * A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295196.P10506068475199275245

/-! ## A295196.P16242739526627329645

`p?[lcm(A004771(n), A151702(n))]`
-/

namespace A295196.P16242739526627329645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004771 n) (A151702 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A295196.P16242739526627329645

/-! ## A295196.P7275979819058381067

`∩[A043449(n+1), A188713(n+1)]`
-/

namespace A295196.P7275979819058381067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295196.P7275979819058381067

/-! ## A295196.P17222834555742786676

`p?[A004771(n)*A028310(A266539(n+1))]`
-/

namespace A295196.P17222834555742786676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n * A028310 (A266539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295196.P17222834555742786676

/-!
# A295198: Number of noncrossing partitions up to rotation of an n-set without singleton blocks.

The programs for A295198, there is no canonical definition to state claims against.
-/

/-! ## A295198.P11334841265218958054

`A211357(∑[n])`
-/

namespace A295198.P11334841265218958054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295198.P11334841265218958054

/-! ## A295198.P6893028504900359068

`A211357(A000217(n))^(C(2, n)+1)`
-/

namespace A295198.P6893028504900359068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (A000217 n).toNat ^ (Nat.choose 2 n + 1)

end

end A295198.P6893028504900359068

/-! ## A295198.P5010645162914661587

`A211357(A000217(n))%A004171(n)`
-/

namespace A295198.P5010645162914661587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211357 (A000217 n).toNat) (A004171 n)

end

end A295198.P5010645162914661587

/-! ## A295198.P11573946195720627453

`A211357(A000217(n))^cos(A000007(n))`
-/

namespace A295198.P11573946195720627453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A211357 (A000217 n).toNat : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A295198.P11573946195720627453

/-! ## A295198.P8037289507235039608

`A000108(C(2, n))*A211357(A000217(n))`
-/

namespace A295198.P8037289507235039608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A211357 (A000217 n).toNat

end

end A295198.P8037289507235039608

/-! ## A295198.P4124010647092167445

`A000041(C(2, n+2))*A211357(A000217(n))`
-/

namespace A295198.P4124010647092167445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A211357 (A000217 n).toNat

end

end A295198.P4124010647092167445

/-! ## A295198.P7630323074286964701

`A211357(A000217(n))+A000007(A016825(n))`
-/

namespace A295198.P7630323074286964701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (A000217 n).toNat + A000007 (A016825 n).toNat

end

end A295198.P7630323074286964701

/-! ## A295198.P11567017725713646820

`A211357(A000217(n))+A010051(A033570(n))`
-/

namespace A295198.P11567017725713646820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (A000217 n).toNat + A010051 (A033570 n).toNat

end

end A295198.P11567017725713646820

/-! ## A295198.P11904213956379392157

`A211357(A000217(n))+A000007(A059268(n))`
-/

namespace A295198.P11904213956379392157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (A000217 n).toNat + A000007 (A059268 n).toNat

end

end A295198.P11904213956379392157

/-! ## A295198.P6140474779472671751

`A211357(A000217(n))+A000007(A101881(n))`
-/

namespace A295198.P6140474779472671751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211357 (A000217 n).toNat + A000007 (A101881 n).toNat

end

end A295198.P6140474779472671751

/-!
# A295199: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 2 or 4 1's.

The programs for A295199, there is no canonical definition to state claims against.
-/

/-! ## A295199.P17712836039626514810

`A295205(∑[4*n]+1)`
-/

namespace A295199.P17712836039626514810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295199.P17712836039626514810

/-! ## A295199.P11930569492872541589

`record[A295205(A272267(n+1))]`
-/

namespace A295199.P11930569492872541589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295205 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295199.P11930569492872541589

/-! ## A295199.P5633197035886755503

`record[A003982(n)*A295205(n+1)]`
-/

namespace A295199.P5633197035886755503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295199.P5633197035886755503

/-! ## A295199.P11273968084479490900

`record[gcd(A295205(n+1), A296339(n))]`
-/

namespace A295199.P11273968084479490900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295205 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295199.P11273968084479490900

/-! ## A295199.P1955191252439620915

`gcd(A151713(n), A295205(A001844(n)))`
-/

namespace A295199.P1955191252439620915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151713 n) (A295205 (A001844 n).toNat)

end

end A295199.P1955191252439620915

