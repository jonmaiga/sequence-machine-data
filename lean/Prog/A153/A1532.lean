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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153200: Decimal expansion of log_24(4).

The programs for A153200, there is no canonical definition to state claims against.
-/

/-! ## A153200.P9820305437374048808

`9-A153614(n)`
-/

namespace A153200.P9820305437374048808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153614 n

end

end A153200.P9820305437374048808

/-!
# A153201: Decimal expansion of log_4 (5).

The programs for A153201, there is no canonical definition to state claims against.
-/

/-! ## A153201.P18002690636725994503

`A154155(n-char[1])`
-/

namespace A153201.P18002690636725994503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154155 (n - (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A153201.P18002690636725994503

/-! ## A153201.P12946072270660592570

`A155183(floor(1/(n+1)+n))`
-/

namespace A153201.P12946072270660592570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155183 (⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat + 1)

end

end A153201.P12946072270660592570

/-! ## A153201.P1860700612784765450

`A155183(n)/ceil(2/(n+1))`
-/

namespace A153201.P1860700612784765450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155183 (n + 1) : ℚ) / (⌈2 / (n + 1 : ℚ)⌉ : ℚ)

end

end A153201.P1860700612784765450

/-! ## A153201.P13600232732519489142

`A154155(n)^A020513(A015919(n+1))`
-/

namespace A153201.P13600232732519489142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154155 (n + 1) : ℚ) ^ (A020513 (A015919 (n + 1)).toNat : ℤ)

end

end A153201.P13600232732519489142

/-! ## A153201.P10075023415976708199

`A154155(n)^A020513(A008578(n+1))`
-/

namespace A153201.P10075023415976708199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154155 (n + 1) : ℚ) ^ (A020513 (A008578 (n + 1)).toNat : ℤ)

end

end A153201.P10075023415976708199

/-!
# A153206: Convolution triangle by rows, T(n,k) = A153197(n-k) * A153198.

The programs for A153206, there is no canonical definition to state claims against.
-/

/-! ## A153206.P16506661922847758582

`A144155(n)-A347579(A144155(n+3))`
-/

namespace A153206.P16506661922847758582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 n - A347579 (A144155 (n + 3)).toNat

end

end A153206.P16506661922847758582

/-! ## A153206.P12782983833805226691

`A144155(n)-A025466(A081123(n))`
-/

namespace A153206.P12782983833805226691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 n - A025466 (A081123 n).toNat

end

end A153206.P12782983833805226691

/-! ## A153206.P15103545644948368703

`A144155(n)-A144194(A144159(2*n+3))`
-/

namespace A153206.P15103545644948368703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 n - A144194 (A144159 (2 * n + 3)).toNat

end

end A153206.P15103545644948368703

/-! ## A153206.P16918564364558051762

`A033306(n)/A007318(n)-A025466(A081123(n))`
-/

namespace A153206.P16918564364558051762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033306 n : ℚ) / (A007318 n : ℚ) - (A025466 (A081123 n).toNat : ℚ)

end

end A153206.P16918564364558051762

/-! ## A153206.P15295542626924328831

`A066060(11*A175840(n))`
-/

namespace A153206.P15295542626924328831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (11 * A175840 n).toNat

end

end A153206.P15295542626924328831

/-!
# A153207: Primes of the form 2*p-1 where p is prime and p-1 is squarefree.

The programs for A153207, the canonical program `A153207.P8862744067160107778` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153207 has offset 1).

The definition of A153207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153207.P8862744067160107778

`p?[2*A039787(n+1)-1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153207

/-- `p?[2*A039787(n+1)-1]` -/
def P8862744067160107778.Spec : Prop :=
  ∀ n, P8862744067160107778.a n = A153207 (n + 1)

theorem P8862744067160107778.correct : P8862744067160107778.Spec := by
  intro n
  simp only [A153207, Nat.add_sub_cancel]

end A153207

/-! ## A153207.P17979933824553665255

`p?[2*A077064(n+1)+1]`
-/

namespace A153207.P17979933824553665255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077064 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153207.P17979933824553665255

namespace A153207

/-- `p?[2*A077064(n+1)+1]` -/
def P17979933824553665255.Spec : Prop :=
  ∀ n, P17979933824553665255.a n = A153207 (n + 1)

end A153207

/-! ## A153207.P5856276775639194880

`∩[A005383(n+1), A039786(n+1)]`
-/

namespace A153207.P5856276775639194880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P5856276775639194880

namespace A153207

/-- `∩[A005383(n+1), A039786(n+1)]` -/
def P5856276775639194880.Spec : Prop :=
  ∀ n, (P5856276775639194880.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P11081417734055745554

`∩[A005383(n+1), A066651(n+1)]`
-/

namespace A153207.P11081417734055745554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P11081417734055745554

namespace A153207

/-- `∩[A005383(n+1), A066651(n+1)]` -/
def P11081417734055745554.Spec : Prop :=
  ∀ n, (P11081417734055745554.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P977828355448663254

`∩[A039786(n+1), A048968(n+1)]`
-/

namespace A153207.P977828355448663254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P977828355448663254

namespace A153207

/-- `∩[A039786(n+1), A048968(n+1)]` -/
def P977828355448663254.Spec : Prop :=
  ∀ n, (P977828355448663254.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P9267536832020543398

`∩[A039786(n+1), A057920(n+1)]`
-/

namespace A153207.P9267536832020543398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P9267536832020543398

namespace A153207

/-- `∩[A039786(n+1), A057920(n+1)]` -/
def P9267536832020543398.Spec : Prop :=
  ∀ n, (P9267536832020543398.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P3275878231270631851

`∩[A033945(n+1), A066651(n+1)]`
-/

namespace A153207.P3275878231270631851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P3275878231270631851

namespace A153207

/-- `∩[A033945(n+1), A066651(n+1)]` -/
def P3275878231270631851.Spec : Prop :=
  ∀ n, (P3275878231270631851.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P1235443634370730617

`∩[A039786(n+1), A064519(n+1)]`
-/

namespace A153207.P1235443634370730617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P1235443634370730617

namespace A153207

/-- `∩[A039786(n+1), A064519(n+1)]` -/
def P1235443634370730617.Spec : Prop :=
  ∀ n, (P1235443634370730617.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P18272334320765641793

`∩[A048968(n+1), A066651(n+1)]`
-/

namespace A153207.P18272334320765641793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P18272334320765641793

namespace A153207

/-- `∩[A048968(n+1), A066651(n+1)]` -/
def P18272334320765641793.Spec : Prop :=
  ∀ n, (P18272334320765641793.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P7445403305470123346

`∩[A057920(n+1), A066651(n+1)]`
-/

namespace A153207.P7445403305470123346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P7445403305470123346

namespace A153207

/-- `∩[A057920(n+1), A066651(n+1)]` -/
def P7445403305470123346.Spec : Prop :=
  ∀ n, (P7445403305470123346.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P11722670207113806800

`∩[A064519(n+1), A066651(n+1)]`
-/

namespace A153207.P11722670207113806800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P11722670207113806800

namespace A153207

/-- `∩[A064519(n+1), A066651(n+1)]` -/
def P11722670207113806800.Spec : Prop :=
  ∀ n, (P11722670207113806800.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P14211205142515234958

`∩[A066651(n+1), A066821(n+1)]`
-/

namespace A153207.P14211205142515234958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P14211205142515234958

namespace A153207

/-- `∩[A066651(n+1), A066821(n+1)]` -/
def P14211205142515234958.Spec : Prop :=
  ∀ n, (P14211205142515234958.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P11289232204923685309

`∩[A066651(n+1), A076274(n+1)]`
-/

namespace A153207.P11289232204923685309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P11289232204923685309

namespace A153207

/-- `∩[A066651(n+1), A076274(n+1)]` -/
def P11289232204923685309.Spec : Prop :=
  ∀ n, (P11289232204923685309.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P3075392337012197210

`∩[A066651(n+1), A079147(n+1)]`
-/

namespace A153207.P3075392337012197210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P3075392337012197210

namespace A153207

/-- `∩[A066651(n+1), A079147(n+1)]` -/
def P3075392337012197210.Spec : Prop :=
  ∀ n, (P3075392337012197210.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P2928701125934804583

`∩[A039786(n+1), A164977(n+1)]`
-/

namespace A153207.P2928701125934804583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P2928701125934804583

namespace A153207

/-- `∩[A039786(n+1), A164977(n+1)]` -/
def P2928701125934804583.Spec : Prop :=
  ∀ n, (P2928701125934804583.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P2929854133599891

`∩[A066651(n+1), A164977(n+1)]`
-/

namespace A153207.P2929854133599891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P2929854133599891

namespace A153207

/-- `∩[A066651(n+1), A164977(n+1)]` -/
def P2929854133599891.Spec : Prop :=
  ∀ n, (P2929854133599891.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P13685614973938884114

`∩[A066651(n+1), A192577(n+1)]`
-/

namespace A153207.P13685614973938884114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P13685614973938884114

namespace A153207

/-- `∩[A066651(n+1), A192577(n+1)]` -/
def P13685614973938884114.Spec : Prop :=
  ∀ n, (P13685614973938884114.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P5247109490572802212

`∩[A352908(n+1), A039786(n+1)]`
-/

namespace A153207.P5247109490572802212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P5247109490572802212

namespace A153207

/-- `∩[A352908(n+1), A039786(n+1)]` -/
def P5247109490572802212.Spec : Prop :=
  ∀ n, (P5247109490572802212.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P13516410961706877757

`∩[A039786(n+1), A175388(n+1)]`
-/

namespace A153207.P13516410961706877757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P13516410961706877757

namespace A153207

/-- `∩[A039786(n+1), A175388(n+1)]` -/
def P13516410961706877757.Spec : Prop :=
  ∀ n, (P13516410961706877757.a n : ℤ) = A153207 (n + 1)

end A153207

/-! ## A153207.P9986913362065611648

`∩[A066651(n+1), A175388(n+1)]`
-/

namespace A153207.P9986913362065611648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153207.P9986913362065611648

namespace A153207

/-- `∩[A066651(n+1), A175388(n+1)]` -/
def P9986913362065611648.Spec : Prop :=
  ∀ n, (P9986913362065611648.a n : ℤ) = A153207 (n + 1)

end A153207

/-!
# A153208: Primes of the form 2*p-1 where p is prime and p-1 is not squarefree.

The programs for A153208, there is no canonical definition to state claims against.
-/

/-! ## A153208.P9699627365098654115

`2*A244111(n+1)-1`
-/

namespace A153208.P9699627365098654115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244111 (n + 1) - 1

end

end A153208.P9699627365098654115

/-! ## A153208.P9319243417348606439

`p?[2*A145199(n+1)+1]`
-/

namespace A153208.P9319243417348606439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145199 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153208.P9319243417348606439

/-! ## A153208.P14801025206388738992

`p?[2*A049092(n+1)-1]`
-/

namespace A153208.P14801025206388738992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049092 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153208.P14801025206388738992

/-! ## A153208.P9019839872091081110

`A029935(A244111(n+1))+1`
-/

namespace A153208.P9019839872091081110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A244111 (n + 1)).toNat + 1

end

end A153208.P9019839872091081110

/-! ## A153208.P11428180307268637721

`∩[A005383(n+1), A067873(n+1)]`
-/

namespace A153208.P11428180307268637721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153208.P11428180307268637721

/-! ## A153208.P8817169943157312691

`∩[A067873(n+1), A079147(n+1)]`
-/

namespace A153208.P8817169943157312691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153208.P8817169943157312691

/-! ## A153208.P10790932848053126016

`∩[A067873(n+1), A265396(n+1)]`
-/

namespace A153208.P10790932848053126016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153208.P10790932848053126016

/-! ## A153208.P14067751465924787508

`A004273(A244111(n+1))`
-/

namespace A153208.P14067751465924787508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A244111 (n + 1)).toNat

end

end A153208.P14067751465924787508

/-! ## A153208.P13074801150032974410

`p?[A004273(A049092(n+1))]`
-/

namespace A153208.P13074801150032974410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A049092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153208.P13074801150032974410

/-! ## A153208.P18187067440817147663

`p?[A005408(A145199(n+1))]`
-/

namespace A153208.P18187067440817147663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A145199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153208.P18187067440817147663

/-! ## A153208.P10668936675792435179

`A349338(2*A244111(n+1))`
-/

namespace A153208.P10668936675792435179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (2 * A244111 (n + 1)).toNat

end

end A153208.P10668936675792435179

/-! ## A153208.P17726097710190987230

`A349338(A244111(n+1)+A244111(n+1))`
-/

namespace A153208.P17726097710190987230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349338 (A244111 (n + 1) + A244111 (n + 1)).toNat

end

end A153208.P17726097710190987230

/-!
# A153209: Primes of the form 2*p+1 where p is prime and p+1 is squarefree.

The programs for A153209, the canonical program `A153209.P6773077896277111664` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153209 has offset 1).

The definition of A153209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153209.P4606837505700070080

`p?[2*A049097(n+1)+1]`
-/

namespace A153209.P4606837505700070080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153209.P4606837505700070080

namespace A153209

/-- `p?[2*A049097(n+1)+1]` -/
def P4606837505700070080.Spec : Prop :=
  ∀ n, P4606837505700070080.a n = A153209 (n + 1)

end A153209

/-! ## A153209.P15127226079899076340

`p?[2*A077067(n+1)-1]`
-/

namespace A153209.P15127226079899076340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077067 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153209.P15127226079899076340

namespace A153209

/-- `p?[2*A077067(n+1)-1]` -/
def P15127226079899076340.Spec : Prop :=
  ∀ n, P15127226079899076340.a n = A153209 (n + 1)

end A153209

/-! ## A153209.P4739482588037485509

`∩[A005385(n+1), A269844(n+1)]`
-/

namespace A153209.P4739482588037485509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P4739482588037485509

namespace A153209

/-- `∩[A005385(n+1), A269844(n+1)]` -/
def P4739482588037485509.Spec : Prop :=
  ∀ n, (P4739482588037485509.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P6958609630391696695

`∩[A048184(n+1), A269844(n+1)]`
-/

namespace A153209.P6958609630391696695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P6958609630391696695

namespace A153209

/-- `∩[A048184(n+1), A269844(n+1)]` -/
def P6958609630391696695.Spec : Prop :=
  ∀ n, (P6958609630391696695.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P6773077896277111664

`∩[A065966(n+1), A269844(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A153209

/-- `∩[A065966(n+1), A269844(n+1)]` -/
def P6773077896277111664.Spec : Prop :=
  ∀ n, (P6773077896277111664.a n : ℤ) = A153209 (n + 1)

theorem P6773077896277111664.correct : P6773077896277111664.Spec := by
  intro n
  simp only [A153209, Nat.add_sub_cancel]

end A153209

/-! ## A153209.P7429182286280157069

`∩[A079148(n+1), A269844(n+1)]`
-/

namespace A153209.P7429182286280157069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P7429182286280157069

namespace A153209

/-- `∩[A079148(n+1), A269844(n+1)]` -/
def P7429182286280157069.Spec : Prop :=
  ∀ n, (P7429182286280157069.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P11663772519971821243

`∩[A179401(n+1), A269844(n+1)]`
-/

namespace A153209.P11663772519971821243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P11663772519971821243

namespace A153209

/-- `∩[A179401(n+1), A269844(n+1)]` -/
def P11663772519971821243.Spec : Prop :=
  ∀ n, (P11663772519971821243.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P14888869460779920474

`∩[A266233(n+1), A269844(n+1)]`
-/

namespace A153209.P14888869460779920474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P14888869460779920474

namespace A153209

/-- `∩[A266233(n+1), A269844(n+1)]` -/
def P14888869460779920474.Spec : Prop :=
  ∀ n, (P14888869460779920474.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P11631724587774908192

`∩[A269454(n+1), A269844(n+1)]`
-/

namespace A153209.P11631724587774908192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P11631724587774908192

namespace A153209

/-- `∩[A269454(n+1), A269844(n+1)]` -/
def P11631724587774908192.Spec : Prop :=
  ∀ n, (P11631724587774908192.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P6498713417965318188

`∩[A269844(n+1), A294091(n+1)]`
-/

namespace A153209.P6498713417965318188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P6498713417965318188

namespace A153209

/-- `∩[A269844(n+1), A294091(n+1)]` -/
def P6498713417965318188.Spec : Prop :=
  ∀ n, (P6498713417965318188.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P9667283829311147770

`∩[A269844(n+1), A395563(n+1)]`
-/

namespace A153209.P9667283829311147770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P9667283829311147770

namespace A153209

/-- `∩[A269844(n+1), A395563(n+1)]` -/
def P9667283829311147770.Spec : Prop :=
  ∀ n, (P9667283829311147770.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P11489096094853595632

`∩[A269844(n+1), A396478(n+1)]`
-/

namespace A153209.P11489096094853595632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P11489096094853595632

namespace A153209

/-- `∩[A269844(n+1), A396478(n+1)]` -/
def P11489096094853595632.Spec : Prop :=
  ∀ n, (P11489096094853595632.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P14120748172946131947

`∩[A269844(n+1), A396480(n+1)]`
-/

namespace A153209.P14120748172946131947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P14120748172946131947

namespace A153209

/-- `∩[A269844(n+1), A396480(n+1)]` -/
def P14120748172946131947.Spec : Prop :=
  ∀ n, (P14120748172946131947.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P13423916502037819551

`record[A023590(A120068(n+1))]`
-/

namespace A153209.P13423916502037819551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (A120068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153209.P13423916502037819551

namespace A153209

/-- `record[A023590(A120068(n+1))]` -/
def P13423916502037819551.Spec : Prop :=
  ∀ n, P13423916502037819551.a n = A153209 (n + 1)

end A153209

/-! ## A153209.P13561536187911865380

`∩[A072055(n+1), A269844(n+1)]`
-/

namespace A153209.P13561536187911865380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P13561536187911865380

namespace A153209

/-- `∩[A072055(n+1), A269844(n+1)]` -/
def P13561536187911865380.Spec : Prop :=
  ∀ n, (P13561536187911865380.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P2432063293510586221

`∩[A005385(n+1), A066652(n+1)]`
-/

namespace A153209.P2432063293510586221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P2432063293510586221

namespace A153209

/-- `∩[A005385(n+1), A066652(n+1)]` -/
def P2432063293510586221.Spec : Prop :=
  ∀ n, (P2432063293510586221.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P13490599388250479031

`∩[A065966(n+1), A066652(n+1)]`
-/

namespace A153209.P13490599388250479031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P13490599388250479031

namespace A153209

/-- `∩[A065966(n+1), A066652(n+1)]` -/
def P13490599388250479031.Spec : Prop :=
  ∀ n, (P13490599388250479031.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P3081791239800796532

`∩[A066652(n+1), A072055(n+1)]`
-/

namespace A153209.P3081791239800796532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P3081791239800796532

namespace A153209

/-- `∩[A066652(n+1), A072055(n+1)]` -/
def P3081791239800796532.Spec : Prop :=
  ∀ n, (P3081791239800796532.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P13177042769075041241

`∩[A066652(n+1), A266233(n+1)]`
-/

namespace A153209.P13177042769075041241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P13177042769075041241

namespace A153209

/-- `∩[A066652(n+1), A266233(n+1)]` -/
def P13177042769075041241.Spec : Prop :=
  ∀ n, (P13177042769075041241.a n : ℤ) = A153209 (n + 1)

end A153209

/-! ## A153209.P8715815585516089442

`∩[A066652(n+1), A269454(n+1)]`
-/

namespace A153209.P8715815585516089442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153209.P8715815585516089442

namespace A153209

/-- `∩[A066652(n+1), A269454(n+1)]` -/
def P8715815585516089442.Spec : Prop :=
  ∀ n, (P8715815585516089442.a n : ℤ) = A153209 (n + 1)

end A153209

/-!
# A153210: Primes of the form 2*p+1 where p is prime and p+1 is not squarefree.

The programs for A153210, the canonical program `A153210.P15842624019466504602` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153210 has offset 1).

The definition of A153210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153210.P15842624019466504602

`p?[2*A049098(n+1)+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153210

/-- `p?[2*A049098(n+1)+1]` -/
def P15842624019466504602.Spec : Prop :=
  ∀ n, P15842624019466504602.a n = A153210 (n + 1)

theorem P15842624019466504602.correct : P15842624019466504602.Spec := by
  intro n
  simp only [A153210, Nat.add_sub_cancel]

end A153210

/-! ## A153210.P8669590484858621490

`p?[A072055(n+1)+A008683(A278228(n+1))]`
-/

namespace A153210.P8669590484858621490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A008683 (A278228 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P8669590484858621490

namespace A153210

/-- `p?[A072055(n+1)+A008683(A278228(n+1))]` -/
def P8669590484858621490.Spec : Prop :=
  ∀ n, P8669590484858621490.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P8144098095756528456

`p?[A072055(n+1)+A008683(A008864(n+1))]`
-/

namespace A153210.P8144098095756528456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A008683 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P8144098095756528456

namespace A153210

/-- `p?[A072055(n+1)+A008683(A008864(n+1))]` -/
def P8144098095756528456.Spec : Prop :=
  ∀ n, P8144098095756528456.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P13716907402241312990

`p?[A072058(n+1)+A008683(A008864(n+1))]`
-/

namespace A153210.P13716907402241312990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072058 (n + 1) + A008683 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P13716907402241312990

namespace A153210

/-- `p?[A072058(n+1)+A008683(A008864(n+1))]` -/
def P13716907402241312990.Spec : Prop :=
  ∀ n, P13716907402241312990.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P14733801978276627005

`p?[A072055(n+1)+A008683(A055670(n+1))]`
-/

namespace A153210.P14733801978276627005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A008683 (A055670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P14733801978276627005

namespace A153210

/-- `p?[A072055(n+1)+A008683(A055670(n+1))]` -/
def P14733801978276627005.Spec : Prop :=
  ∀ n, P14733801978276627005.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P15521741182572783470

`p?[A005385(n+1)+A008683(A176045(n+1))]`
-/

namespace A153210.P15521741182572783470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) + A008683 (A176045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P15521741182572783470

namespace A153210

/-- `p?[A005385(n+1)+A008683(A176045(n+1))]` -/
def P15521741182572783470.Spec : Prop :=
  ∀ n, P15521741182572783470.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P3468028156995184524

`p?[A008683(A005384(n+1)+1)+A005385(n+1)]`
-/

namespace A153210.P3468028156995184524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005384 (n + 1) + 1).toNat + A005385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P3468028156995184524

namespace A153210

/-- `p?[A008683(A005384(n+1)+1)+A005385(n+1)]` -/
def P3468028156995184524.Spec : Prop :=
  ∀ n, P3468028156995184524.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P16419650302782953774

`∩[A005385(n+1), A067873(n+1)]`
-/

namespace A153210.P16419650302782953774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P16419650302782953774

namespace A153210

/-- `∩[A005385(n+1), A067873(n+1)]` -/
def P16419650302782953774.Spec : Prop :=
  ∀ n, (P16419650302782953774.a n : ℤ) = A153210 (n + 1)

end A153210

/-! ## A153210.P1501232348344639506

`∩[A067873(n+1), A079148(n+1)]`
-/

namespace A153210.P1501232348344639506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P1501232348344639506

namespace A153210

/-- `∩[A067873(n+1), A079148(n+1)]` -/
def P1501232348344639506.Spec : Prop :=
  ∀ n, (P1501232348344639506.a n : ℤ) = A153210 (n + 1)

end A153210

/-! ## A153210.P10845336285739629215

`p?[A005408(A049098(n+1))]`
-/

namespace A153210.P10845336285739629215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P10845336285739629215

namespace A153210

/-- `p?[A005408(A049098(n+1))]` -/
def P10845336285739629215.Spec : Prop :=
  ∀ n, P10845336285739629215.a n = A153210 (n + 1)

end A153210

/-! ## A153210.P14383783447134437210

`∩[A005385(n+1), A067197(n+1)]`
-/

namespace A153210.P14383783447134437210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P14383783447134437210

namespace A153210

/-- `∩[A005385(n+1), A067197(n+1)]` -/
def P14383783447134437210.Spec : Prop :=
  ∀ n, (P14383783447134437210.a n : ℤ) = A153210 (n + 1)

end A153210

/-! ## A153210.P8670267689552622565

`∩[A067197(n+1), A079148(n+1)]`
-/

namespace A153210.P8670267689552622565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P8670267689552622565

namespace A153210

/-- `∩[A067197(n+1), A079148(n+1)]` -/
def P8670267689552622565.Spec : Prop :=
  ∀ n, (P8670267689552622565.a n : ℤ) = A153210 (n + 1)

end A153210

/-! ## A153210.P11284756017113859295

`∩[A067197(n+1), A079149(n+1)]`
-/

namespace A153210.P11284756017113859295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P11284756017113859295

namespace A153210

/-- `∩[A067197(n+1), A079149(n+1)]` -/
def P11284756017113859295.Spec : Prop :=
  ∀ n, (P11284756017113859295.a n : ℤ) = A153210 (n + 1)

end A153210

/-! ## A153210.P4461024675432644793

`∩[A067197(n+1), A167609(n+1)]`
-/

namespace A153210.P4461024675432644793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153210.P4461024675432644793

namespace A153210

/-- `∩[A067197(n+1), A167609(n+1)]` -/
def P4461024675432644793.Spec : Prop :=
  ∀ n, (P4461024675432644793.a n : ℤ) = A153210 (n + 1)

end A153210

/-!
# A153211: Sum of digits of n, times digital reversal of sum of digits of n.

The programs for A153211, there is no canonical definition to state claims against.
-/

/-! ## A153211.P10714427530366714176

`A007953(n+1)*A004086(A007953(n+1))`
-/

namespace A153211.P10714427530366714176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A004086 (A007953 (n + 1)).toNat

end

end A153211.P10714427530366714176

/-! ## A153211.P2016980577924426394

`A061205(∑{digits}[n+1, #])`
-/

namespace A153211.P2016980577924426394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A153211.P2016980577924426394

/-! ## A153211.P3094279869102376457

`∑{digits}[n+1, #]*A004086(∑{digits}[n+1, #])`
-/

namespace A153211.P3094279869102376457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A004086 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A153211.P3094279869102376457

/-! ## A153211.P10032781489844092400

`A061205(Δ[A037123(n)])`
-/

namespace A153211.P10032781489844092400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 (f1 (n + 1) - f1 n).toNat

end

end A153211.P10032781489844092400

/-! ## A153211.P7177438695878644460

`A061205(A007953(n+1))`
-/

namespace A153211.P7177438695878644460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 (A007953 (n + 1)).toNat

end

end A153211.P7177438695878644460

/-! ## A153211.P18231128751667952795

`A061205(A037123(n+1)-A037123(n))`
-/

namespace A153211.P18231128751667952795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 (A037123 (n + 1) - A037123 n).toNat

end

end A153211.P18231128751667952795

/-!
# A153212: A permutation of the natural numbers: in the prime factorization of n, swap each prime's index difference (from the previous distinct prime that divides n) and the prime's power.

The programs for A153212, there is no canonical definition to state claims against.
-/

/-! ## A153212.P16882457303248481611

`A242419(A122111(n+1))`
-/

namespace A153212.P16882457303248481611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A122111 (n + 1)).toNat

end

end A153212.P16882457303248481611

/-! ## A153212.P4405404713580981508

`∑{d}[A242419(n+1), A329034(#)]`
-/

namespace A153212.P4405404713580981508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A153212.P4405404713580981508

/-! ## A153212.P9932260168661942050

`A122111(A242415(A069799(n+1)))`
-/

namespace A153212.P9932260168661942050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A242415 (A069799 (n + 1)).toNat).toNat

end

end A153212.P9932260168661942050

/-! ## A153212.P5093850528242536318

`A122111(A242415(A225891(n+1)))`
-/

namespace A153212.P5093850528242536318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A242415 (A225891 (n + 1)).toNat).toNat

end

end A153212.P5093850528242536318

/-! ## A153212.P8109104594888554301

`A242419(A243070(∑[4*n]+1))`
-/

namespace A153212.P8109104594888554301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A243070 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A153212.P8109104594888554301

/-!
# A153214: Primes p such that p+-2 and p+-3 are not squarefree.

The programs for A153214, there is no canonical definition to state claims against.
-/

/-! ## A153214.P5146723133115990804

`∩[A153213(n+1), A155139(n+1)]`
-/

namespace A153214.P5146723133115990804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153214.P5146723133115990804

/-!
# A153215: Primes p such that none of p-2, p-1, p+1, and p+2 is squarefree.

The programs for A153215, the canonical program `A153215.P1043252920232416462` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153215 has offset 1).

The definition of A153215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153215.P1043252920232416462

`∩[A318959(n+1), A319050(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A153215

/-- `∩[A318959(n+1), A319050(n+1)]` -/
def P1043252920232416462.Spec : Prop :=
  ∀ n, (P1043252920232416462.a n : ℤ) = A153215 (n + 1)

theorem P1043252920232416462.correct : P1043252920232416462.Spec := by
  intro n
  simp only [A153215, Nat.add_sub_cancel]

end A153215

/-! ## A153215.P18347860606984258487

`∩[A075432(n+1), A153213(n+1)]`
-/

namespace A153215.P18347860606984258487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153215.P18347860606984258487

namespace A153215

/-- `∩[A075432(n+1), A153213(n+1)]` -/
def P18347860606984258487.Spec : Prop :=
  ∀ n, (P18347860606984258487.a n : ℤ) = A153215 (n + 1)

end A153215

/-! ## A153215.P9028003538046892213

`p?[A268331(n+1)]`
-/

namespace A153215.P9028003538046892213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153215.P9028003538046892213

namespace A153215

/-- `p?[A268331(n+1)]` -/
def P9028003538046892213.Spec : Prop :=
  ∀ n, P9028003538046892213.a n = A153215 (n + 1)

end A153215

/-! ## A153215.P1970287066281316645

`p?[record[A268331(A052938(n))]]`
-/

namespace A153215.P1970287066281316645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153215.P1970287066281316645

namespace A153215

/-- `p?[record[A268331(A052938(n))]]` -/
def P1970287066281316645.Spec : Prop :=
  ∀ n, P1970287066281316645.a n = A153215 (n + 1)

end A153215

/-! ## A153215.P14557642075312520752

`p?[record[A268331(A109785(n))]]`
-/

namespace A153215.P14557642075312520752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153215.P14557642075312520752

namespace A153215

/-- `p?[record[A268331(A109785(n))]]` -/
def P14557642075312520752.Spec : Prop :=
  ∀ n, P14557642075312520752.a n = A153215 (n + 1)

end A153215

/-!
# A153217: a(n) = n^(n+3)-(n+3)^n.

The programs for A153217, the canonical program `A153217.P8887866137795617164` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153217 has offset 0).

The definition of A153217 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+3)-(n+3)^n` (program `A153217.P8887866137795617164`, by `A153217.P8887866137795617164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153217.P8887866137795617164

`n^(n+3)-(n+3)^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153217

/-- `n^(n+3)-(n+3)^n` -/
def P8887866137795617164.Spec : Prop :=
  ∀ n, P8887866137795617164.a n = A153217 n

theorem P8887866137795617164.correct : P8887866137795617164.Spec := by
  intro n
  simp only [A153217]

end A153217

/-! ## A153217.P1022172718080839509

`or(1, A008789(n)-A007830(n))`
-/

namespace A153217.P1022172718080839509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008789 n - A007830 n)

end

end A153217.P1022172718080839509

namespace A153217

/-- `or(1, A008789(n)-A007830(n))` -/
def P1022172718080839509.Spec : Prop :=
  ∀ n, P1022172718080839509.a n = A153217 n

end A153217

/-! ## A153217.P4546692060607295755

`A055651(A268581(n)+4)`
-/

namespace A153217.P4546692060607295755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A268581 n + 4).toNat

end

end A153217.P4546692060607295755

namespace A153217

/-- `A055651(A268581(n)+4)` -/
def P4546692060607295755.Spec : Prop :=
  ∀ n, P4546692060607295755.a n = A153217 n

end A153217

/-! ## A153217.P7380192826700885412

`A055651(eq[3, A056951(n+1)])`
-/

namespace A153217.P7380192826700885412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153217.P7380192826700885412

namespace A153217

/-- `A055651(eq[3, A056951(n+1)])` -/
def P7380192826700885412.Spec : Prop :=
  ∀ n, P7380192826700885412.a n = A153217 n

end A153217

/-! ## A153217.P961281435535577057

`A055651(A167614(2*(n+1))+n)`
-/

namespace A153217.P961281435535577057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055651 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A153217.P961281435535577057

namespace A153217

/-- `A055651(A167614(2*(n+1))+n)` -/
def P961281435535577057.Spec : Prop :=
  ∀ n, P961281435535577057.a n = A153217 n

end A153217

/-!
# A153218: Numbers k such that 6k + 7 is prime.

The programs for A153218, the canonical program `A153218.P3785772997736358194` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153218 has offset 1).

The definition of A153218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153218.P15245123546327716897

`((p?[3*n+1]-1)/3-2)/2`
-/

namespace A153218.P15245123546327716897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 3 - 2) / 2

end

end A153218.P15245123546327716897

namespace A153218

/-- `((p?[3*n+1]-1)/3-2)/2` -/
def P15245123546327716897.Spec : Prop :=
  ∀ n, P15245123546327716897.a n = (A153218 (n + 1) : ℚ)

end A153218

/-! ## A153218.P11859944799771645726

`A024899(n+1)-1`
-/

namespace A153218.P11859944799771645726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 1

end

end A153218.P11859944799771645726

namespace A153218

/-- `A024899(n+1)-1` -/
def P11859944799771645726.Spec : Prop :=
  ∀ n, P11859944799771645726.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P6258219082149153229

`A089953(n+1)/2`
-/

namespace A153218.P6258219082149153229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089953 (n + 1) : ℚ) / 2

end

end A153218.P6258219082149153229

namespace A153218

/-- `A089953(n+1)/2` -/
def P6258219082149153229.Spec : Prop :=
  ∀ n, P6258219082149153229.a n = (A153218 (n + 1) : ℚ)

theorem P6258219082149153229.correct : P6258219082149153229.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel, A153218.P6258219082149153229.a, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A089953, A089953.P3265903741196432824.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A034936, A034936.P1115765045630556781.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153218

/-! ## A153218.P2891469508193639878

`floor(A034936(n+1)/2)`
-/

namespace A153218.P2891469508193639878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034936 (n + 1) : ℚ) / 2⌋

end

end A153218.P2891469508193639878

namespace A153218

/-- `floor(A034936(n+1)/2)` -/
def P2891469508193639878.Spec : Prop :=
  ∀ n, P2891469508193639878.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P4639457384372769492

`A024892(n+1)/2-1`
-/

namespace A153218.P4639457384372769492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024892 (n + 1) : ℚ) / 2 - 1

end

end A153218.P4639457384372769492

namespace A153218

/-- `A024892(n+1)/2-1` -/
def P4639457384372769492.Spec : Prop :=
  ∀ n, P4639457384372769492.a n = (A153218 (n + 1) : ℚ)

theorem P4639457384372769492.correct : P4639457384372769492.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel, A153218.P4639457384372769492.a, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A024892, A024892.P16415756405401507162.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A034936, A034936.P1115765045630556781.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153218

/-! ## A153218.P15652981988719456960

`A107303(n+1)/2-2`
-/

namespace A153218.P15652981988719456960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107303 (n + 1) : ℚ) / 2 - 2

end

end A153218.P15652981988719456960

namespace A153218

/-- `A107303(n+1)/2-2` -/
def P15652981988719456960.Spec : Prop :=
  ∀ n, P15652981988719456960.a n = (A153218 (n + 1) : ℚ)

theorem P15652981988719456960.correct : P15652981988719456960.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel, A153218.P15652981988719456960.a, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A107303, A107303.P6905371674303678170.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A034936, A034936.P1115765045630556781.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153218

/-! ## A153218.P15933884502383220610

`(A153183(n+1)-3)/2`
-/

namespace A153218.P15933884502383220610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153183 (n + 1) - 3 : ℚ) / 2

end

end A153218.P15933884502383220610

namespace A153218

/-- `(A153183(n+1)-3)/2` -/
def P15933884502383220610.Spec : Prop :=
  ∀ n, P15933884502383220610.a n = (A153218 (n + 1) : ℚ)

theorem P15933884502383220610.correct : P15933884502383220610.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel, A153218.P15933884502383220610.a, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A153183, A153183.P10933182994355425075.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153218

/-! ## A153218.P15814405559232259905

`(A173177(n+1)-2)/3`
-/

namespace A153218.P15814405559232259905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173177 (n + 1) - 2 : ℚ) / 3

end

end A153218.P15814405559232259905

namespace A153218

/-- `(A173177(n+1)-2)/3` -/
def P15814405559232259905.Spec : Prop :=
  ∀ n, P15814405559232259905.a n = (A153218 (n + 1) : ℚ)

end A153218

/-! ## A153218.P3785772997736358194

`eq[1, A245838(2*(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153218

/-- `eq[1, A245838(2*(n+1))]` -/
def P3785772997736358194.Spec : Prop :=
  ∀ n, (P3785772997736358194.a n : ℤ) = A153218 (n + 1)

theorem P3785772997736358194.correct : P3785772997736358194.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel]

end A153218

/-! ## A153218.P9127894608030512070

`A014682(A089953(n+1))`
-/

namespace A153218.P9127894608030512070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A089953 (n + 1)).toNat

end

end A153218.P9127894608030512070

namespace A153218

/-- `A014682(A089953(n+1))` -/
def P9127894608030512070.Spec : Prop :=
  ∀ n, P9127894608030512070.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P13411459553533182568

`A014682(A024892(n+1))-1`
-/

namespace A153218.P13411459553533182568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024892 (n + 1)).toNat - 1

end

end A153218.P13411459553533182568

namespace A153218

/-- `A014682(A024892(n+1))-1` -/
def P13411459553533182568.Spec : Prop :=
  ∀ n, P13411459553533182568.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P9007129230855257483

`A014682(A034936(n+1)-1)`
-/

namespace A153218.P9007129230855257483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034936 (n + 1) - 1).toNat

end

end A153218.P9007129230855257483

namespace A153218

/-- `A014682(A034936(n+1)-1)` -/
def P9007129230855257483.Spec : Prop :=
  ∀ n, P9007129230855257483.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P1279610835230887229

`A139394(n+1)+A059325(n+1)`
-/

namespace A153218.P1279610835230887229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139394 (n + 1) + A059325 (n + 1)

end

end A153218.P1279610835230887229

namespace A153218

/-- `A139394(n+1)+A059325(n+1)` -/
def P1279610835230887229.Spec : Prop :=
  ∀ n, P1279610835230887229.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P4016719441220459884

`A022760(n+1)-A153134(n+1)`
-/

namespace A153218.P4016719441220459884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) - A153134 (n + 1)

end

end A153218.P4016719441220459884

namespace A153218

/-- `A022760(n+1)-A153134(n+1)` -/
def P4016719441220459884.Spec : Prop :=
  ∀ n, P4016719441220459884.a n = A153218 (n + 1)

theorem P4016719441220459884.correct : P4016719441220459884.Spec := by
  intro n
  simp only [A153218, Nat.add_sub_cancel, A153218.P4016719441220459884.a, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A022760, A022760.P12074805106371372305.a, A153134, A153134.P3803390437604555717.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A024898, A024898.P2838277204682131429.a, A007528, A007528.P3292322913023880558.f1, A007528.P3292322913023880558.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153218

/-! ## A153218.P2862838535401966265

`A173177(n+1)-A024892(n+1)`
-/

namespace A153218.P2862838535401966265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A024892 (n + 1)

end

end A153218.P2862838535401966265

namespace A153218

/-- `A173177(n+1)-A024892(n+1)` -/
def P2862838535401966265.Spec : Prop :=
  ∀ n, P2862838535401966265.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P16465448283690191625

`A034936(n+1)%A024899(n+1)`
-/

namespace A153218.P16465448283690191625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034936 (n + 1)) (A024899 (n + 1))

end

end A153218.P16465448283690191625

namespace A153218

/-- `A034936(n+1)%A024899(n+1)` -/
def P16465448283690191625.Spec : Prop :=
  ∀ n, P16465448283690191625.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P16015442065848043264

`A034936(n+1)+A034936(n+1)-A173177(n+1)`
-/

namespace A153218.P16015442065848043264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + (A034936 (n + 1) - A173177 (n + 1))

end

end A153218.P16015442065848043264

namespace A153218

/-- `A034936(n+1)+A034936(n+1)-A173177(n+1)` -/
def P16015442065848043264.Spec : Prop :=
  ∀ n, P16015442065848043264.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P9512019184852801645

`A024699(A138972(n+1))-1`
-/

namespace A153218.P9512019184852801645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (A138972 (n + 1)).toNat - 1

end

end A153218.P9512019184852801645

namespace A153218

/-- `A024699(A138972(n+1))-1` -/
def P9512019184852801645.Spec : Prop :=
  ∀ n, P9512019184852801645.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P18204652826962892786

`A116579(A091178(n+1))-1`
-/

namespace A153218.P18204652826962892786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A091178 (n + 1)).toNat - 1

end

end A153218.P18204652826962892786

namespace A153218

/-- `A116579(A091178(n+1))-1` -/
def P18204652826962892786.Spec : Prop :=
  ∀ n, P18204652826962892786.a n = A153218 (n + 1)

end A153218

/-! ## A153218.P17251091565000260181

`A173950(A091178(n+1))+A024899(n+1)`
-/

namespace A153218.P17251091565000260181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173950 (A091178 (n + 1)).toNat + A024899 (n + 1)

end

end A153218.P17251091565000260181

namespace A153218

/-- `A173950(A091178(n+1))+A024899(n+1)` -/
def P17251091565000260181.Spec : Prop :=
  ∀ n, P17251091565000260181.a n = A153218 (n + 1)

end A153218

/-!
# A153219: Numbers n such that 6*n + 7 is not prime.

The programs for A153219, the canonical program `A153219.P6113425465272514699` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153219 has offset 1).

The definition of A153219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153219.P4058177001800450886

`comp[A153218(n+1)]`
-/

namespace A153219.P4058177001800450886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153219.P4058177001800450886

namespace A153219

/-- `comp[A153218(n+1)]` -/
def P4058177001800450886.Spec : Prop :=
  ∀ n, (P4058177001800450886.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P11786499700413940339

`comp[A024899(n+1)-1]`
-/

namespace A153219.P11786499700413940339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153219.P11786499700413940339

namespace A153219

/-- `comp[A024899(n+1)-1]` -/
def P11786499700413940339.Spec : Prop :=
  ∀ n, (P11786499700413940339.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P6113425465272514699

`eq[0, A075743(2*(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153219

/-- `eq[0, A075743(2*(n+1))]` -/
def P6113425465272514699.Spec : Prop :=
  ∀ n, (P6113425465272514699.a n : ℤ) = A153219 (n + 1)

theorem P6113425465272514699.correct : P6113425465272514699.Spec := by
  intro n
  simp only [A153219, Nat.add_sub_cancel]

end A153219

/-! ## A153219.P13313472919690313990

`eq[0, A156706(2*(n+1))]`
-/

namespace A153219.P13313472919690313990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153219.P13313472919690313990

namespace A153219

/-- `eq[0, A156706(2*(n+1))]` -/
def P13313472919690313990.Spec : Prop :=
  ∀ n, (P13313472919690313990.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P13774558103063914777

`lt[1, A245838(2*(n+1))]`
-/

namespace A153219.P13774558103063914777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153219.P13774558103063914777

namespace A153219

/-- `lt[1, A245838(2*(n+1))]` -/
def P13774558103063914777.Spec : Prop :=
  ∀ n, (P13774558103063914777.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P6315621159412643306

`lt[A075743(2*n+2), 1]`
-/

namespace A153219.P6315621159412643306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153219.P6315621159412643306

namespace A153219

/-- `lt[A075743(2*n+2), 1]` -/
def P6315621159412643306.Spec : Prop :=
  ∀ n, (P6315621159412643306.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P8290161619332376788

`lt[A156706(2*n+2), 1]`
-/

namespace A153219.P8290161619332376788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153219.P8290161619332376788

namespace A153219

/-- `lt[A156706(2*n+2), 1]` -/
def P8290161619332376788.Spec : Prop :=
  ∀ n, (P8290161619332376788.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P6329010573867693580

`lt[1, A001222(6*n+7)]`
-/

namespace A153219.P6329010573867693580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153219.P6329010573867693580

namespace A153219

/-- `lt[1, A001222(6*n+7)]` -/
def P6329010573867693580.Spec : Prop :=
  ∀ n, (P6329010573867693580.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P3008107744958429461

`lt[2, A000005(6*n+7)]`
-/

namespace A153219.P3008107744958429461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153219.P3008107744958429461

namespace A153219

/-- `lt[2, A000005(6*n+7)]` -/
def P3008107744958429461.Spec : Prop :=
  ∀ n, (P3008107744958429461.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P8873463277411563236

`lt[A006530(6*n+7), 2*n]`
-/

namespace A153219.P8873463277411563236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153219.P8873463277411563236

namespace A153219

/-- `lt[A006530(6*n+7), 2*n]` -/
def P8873463277411563236.Spec : Prop :=
  ∀ n, (P8873463277411563236.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P2253388974320235452

`lt[A020639(6*n+7), 2*n]`
-/

namespace A153219.P2253388974320235452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153219.P2253388974320235452

namespace A153219

/-- `lt[A020639(6*n+7), 2*n]` -/
def P2253388974320235452.Spec : Prop :=
  ∀ n, (P2253388974320235452.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P6124762466999733323

`A059324(n+1)-A173229(n+1)`
-/

namespace A153219.P6124762466999733323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) - A173229 (n + 1)

end

end A153219.P6124762466999733323

namespace A153219

/-- `A059324(n+1)-A173229(n+1)` -/
def P6124762466999733323.Spec : Prop :=
  ∀ n, P6124762466999733323.a n = A153219 (n + 1)

end A153219

/-! ## A153219.P8405172513663920807

`A173231(n+1)-A153245(n+1)`
-/

namespace A153219.P8405172513663920807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173231 (n + 1) - A153245 (n + 1)

end

end A153219.P8405172513663920807

namespace A153219

/-- `A173231(n+1)-A153245(n+1)` -/
def P8405172513663920807.Spec : Prop :=
  ∀ n, P8405172513663920807.a n = A153219 (n + 1)

end A153219

/-! ## A153219.P3548882379825099458

`A046953(n+1)-(A173229(n+1)+1)`
-/

namespace A153219.P3548882379825099458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - (A173229 (n + 1) + 1)

end

end A153219.P3548882379825099458

namespace A153219

/-- `A046953(n+1)-(A173229(n+1)+1)` -/
def P3548882379825099458.Spec : Prop :=
  ∀ n, P3548882379825099458.a n = A153219 (n + 1)

end A153219

/-! ## A153219.P10691778302646370322

`A173231(n+1)-(A046953(n+1)+1)`
-/

namespace A153219.P10691778302646370322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173231 (n + 1) - (A046953 (n + 1) + 1)

end

end A153219.P10691778302646370322

namespace A153219

/-- `A173231(n+1)-(A046953(n+1)+1)` -/
def P10691778302646370322.Spec : Prop :=
  ∀ n, P10691778302646370322.a n = A153219 (n + 1)

end A153219

/-! ## A153219.P14712824079854344330

`eq[A156709(2*n+1), A156709(2*(n+1))]`
-/

namespace A153219.P14712824079854344330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153219.P14712824079854344330

namespace A153219

/-- `eq[A156709(2*n+1), A156709(2*(n+1))]` -/
def P14712824079854344330.Spec : Prop :=
  ∀ n, (P14712824079854344330.a n : ℤ) = A153219 (n + 1)

end A153219

/-! ## A153219.P1628072759023504582

`A046954(n+2)-1`
-/

namespace A153219.P1628072759023504582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 2) - 1

end

end A153219.P1628072759023504582

namespace A153219

/-- `A046954(n+2)-1` -/
def P1628072759023504582.Spec : Prop :=
  ∀ n, P1628072759023504582.a n = A153219 (n + 1)

end A153219

/-!
# A153228: Numbers k such that the string k is found at position 3k in the decimal digits of Pi.

The programs for A153228, there is no canonical definition to state claims against.
-/

/-! ## A153228.P2829898531561191296

`A090512(A095688(n+1))`
-/

namespace A153228.P2829898531561191296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090512 (A095688 (n + 1)).toNat

end

end A153228.P2829898531561191296

/-!
# A153229: a(0) = 0, a(1) = 1, and for n >= 2, a(n) = (n-1) * a(n-2) + (n-2) * a(n-1).

The programs for A153229, the canonical program `A153229.P10801622585969919620` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153229 has offset 0).

The definition of A153229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-2)+(n-2)*a(n-1)` (program `A153229.P10801622585969919620`, by `A153229.P10801622585969919620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153229.P10801622585969919620

`(n-1)*a(n-2)+(n-2)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153229

/-- `(n-1)*a(n-2)+(n-2)*a(n-1)` -/
def P10801622585969919620.Spec : Prop :=
  ∀ n, P10801622585969919620.a n = A153229 n

theorem P10801622585969919620.correct : P10801622585969919620.Spec := by
  intro n
  simp only [A153229]

end A153229

/-! ## A153229.P16234974774385227101

`(n-1)!-a(n-1)` with `a(0)=0`
-/

namespace A153229.P16234974774385227101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - a (n - 1)

end

end A153229.P16234974774385227101

namespace A153229

/-- `(n-1)!-a(n-1)` -/
def P16234974774385227101.Spec : Prop :=
  ∀ n, P16234974774385227101.a n = A153229 n

end A153229

/-! ## A153229.P18006906633950032313

`∏[round(sqrt((1-n)²+1))]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A153229.P18006906633950032313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A153229.P18006906633950032313

namespace A153229

/-- `∏[round(sqrt((1-n)²+1))]-a(n-1)` -/
def P18006906633950032313.Spec : Prop :=
  ∀ n, P18006906633950032313.a n = A153229 n

end A153229

/-! ## A153229.P14723276213853585897

`abs(A058006(abs(1-n)))`
-/

namespace A153229.P14723276213853585897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A058006 |1 - (n : ℤ)|.toNat)|

end

end A153229.P14723276213853585897

namespace A153229

/-- `abs(A058006(abs(1-n)))` -/
def P14723276213853585897.Spec : Prop :=
  ∀ n, P14723276213853585897.a n = A153229 n

end A153229

/-! ## A153229.P631734246722233401

`abs(∑[A048994(∑[n]+1)])`
-/

namespace A153229.P631734246722233401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A153229.P631734246722233401

namespace A153229

/-- `abs(∑[A048994(∑[n]+1)])` -/
def P631734246722233401.Spec : Prop :=
  ∀ n, P631734246722233401.a n = A153229 n

end A153229

/-! ## A153229.P15389982412680855796

`(∏[A007318(∑[n]+1)]-n*a(n-1))/n` with `a(0)=0, a(1)=1`
-/

namespace A153229.P15389982412680855796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (n : ℚ) * a (n - 1)) / (n : ℚ)

end

end A153229.P15389982412680855796

namespace A153229

/-- `(∏[A007318(∑[n]+1)]-n*a(n-1))/n` -/
def P15389982412680855796.Spec : Prop :=
  ∀ n, P15389982412680855796.a n = (A153229 n : ℚ)

end A153229

/-! ## A153229.P16798984183322682900

`A000142(n)-abs(∑[A133942(n)])`
-/

namespace A153229.P16798984183322682900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A153229.P16798984183322682900

namespace A153229

/-- `A000142(n)-abs(∑[A133942(n)])` -/
def P16798984183322682900.Spec : Prop :=
  ∀ n, P16798984183322682900.a n = A153229 n

end A153229

/-!
# A153231: a(n) = 2^n * binomial(3n,n)/(2n+1).

The programs for A153231, the canonical program `A153231.P4161722255829809210` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153231 has offset 0).

The definition of A153231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153231.P4161722255829809210

`(n+1)*A000309(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153231

/-- `(n+1)*A000309(n)` -/
def P4161722255829809210.Spec : Prop :=
  ∀ n, P4161722255829809210.a n = A153231 n

theorem P4161722255829809210.correct : P4161722255829809210.Spec := by
  intro n
  simp only [A153231]

end A153231

/-! ## A153231.P12571462376012316182

`2^n*A001764(n)`
-/

namespace A153231.P12571462376012316182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001764 n

end

end A153231.P12571462376012316182

namespace A153231

/-- `2^n*A001764(n)` -/
def P12571462376012316182.Spec : Prop :=
  ∀ n, P12571462376012316182.a n = A153231 n

end A153231

/-! ## A153231.P6876129056106675427

`2^n*C(3*n, n)/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153231.P6876129056106675427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

end

end A153231.P6876129056106675427

namespace A153231

/-- `2^n*C(3*n, n)/(2*n+1)` -/
def P6876129056106675427.Spec : Prop :=
  ∀ n, P6876129056106675427.a n = (A153231 n : ℚ)

end A153231

/-! ## A153231.P9084667785791182623

`2^n*A110616(∑[n])`
-/

namespace A153231.P9084667785791182623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153231.P9084667785791182623

namespace A153231

/-- `2^n*A110616(∑[n])` -/
def P9084667785791182623.Spec : Prop :=
  ∀ n, P9084667785791182623.a n = A153231 n

end A153231

/-! ## A153231.P256269701353852803

`2^n*A047749(2*n)`
-/

namespace A153231.P256269701353852803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A047749 (2 * n)

end

end A153231.P256269701353852803

namespace A153231

/-- `2^n*A047749(2*n)` -/
def P256269701353852803.Spec : Prop :=
  ∀ n, P256269701353852803.a n = A153231 n

end A153231

/-! ## A153231.P4994428950500558680

`(n+1)/2*A000139(n)*2^n`
-/

namespace A153231.P4994428950500558680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ) * (2 ^ n : ℚ)

end

end A153231.P4994428950500558680

namespace A153231

/-- `(n+1)/2*A000139(n)*2^n` -/
def P4994428950500558680.Spec : Prop :=
  ∀ n, P4994428950500558680.a n = (A153231 n : ℚ)

end A153231

/-! ## A153231.P7594351639707111126

`A005809(n)/(2*n+1)*2^n`
-/

namespace A153231.P7594351639707111126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (2 * n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A153231.P7594351639707111126

namespace A153231

/-- `A005809(n)/(2*n+1)*2^n` -/
def P7594351639707111126.Spec : Prop :=
  ∀ n, P7594351639707111126.a n = (A153231 n : ℚ)

end A153231

/-! ## A153231.P9802871712914836959

`A045721(n)/(3*n+1)*2^n`
-/

namespace A153231.P9802871712914836959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045721 n : ℚ) / (3 * n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A153231.P9802871712914836959

namespace A153231

/-- `A045721(n)/(3*n+1)*2^n` -/
def P9802871712914836959.Spec : Prop :=
  ∀ n, P9802871712914836959.a n = (A153231 n : ℚ)

end A153231

/-! ## A153231.P9192457573487194016

`abs(A001764(n)*A171449(n))`
-/

namespace A153231.P9192457573487194016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001764 n * A171449 n|

end

end A153231.P9192457573487194016

namespace A153231

/-- `abs(A001764(n)*A171449(n))` -/
def P9192457573487194016.Spec : Prop :=
  ∀ n, P9192457573487194016.a n = A153231 n

end A153231

/-! ## A153231.P5364350871696477053

`A001764(n)*A011782(n+1)`
-/

namespace A153231.P5364350871696477053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A011782 (n + 1)

end

end A153231.P5364350871696477053

namespace A153231

/-- `A001764(n)*A011782(n+1)` -/
def P5364350871696477053.Spec : Prop :=
  ∀ n, P5364350871696477053.a n = A153231 n

end A153231

/-!
# A153232: a(n) = Sum((-1)^(n-i)*binomial(3i,i)*binomial(n+2i,3i)*2^i/(2i+1),i=0..n).

The programs for A153232, there is no canonical definition to state claims against.
-/

/-! ## A153232.P11363203321191598253

`A129756(A180195(n+1)-comp[and(n, n+3)-1])`
-/

namespace A153232.P11363203321191598253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 3) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A180195 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A153232.P11363203321191598253

/-! ## A153232.P11920861901518810473

`A047217(A262241(n)+A053529(n))`
-/

namespace A153232.P11920861901518810473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A262241 n + A053529 n).toNat

end

end A153232.P11920861901518810473

/-!
# A153233: a(n) = sum_{i+j+k=n} (-1)^k*binomial(3*i+2*j+k,k) * (i/(2*j+i)) * binomial(2*j+i,j) *2^(i+j) * Catalan(i).

The programs for A153233, there is no canonical definition to state claims against.
-/

/-! ## A153233.P3568876835121407550

`or(1, A062300(A005809(n)))`
-/

namespace A153233.P3568876835121407550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062300 (A005809 n).toNat)

end

end A153233.P3568876835121407550

/-! ## A153233.P18417526429858776449

`or(1, A098294(A015451(n)))`
-/

namespace A153233.P18417526429858776449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098294 (A015451 n).toNat)

end

end A153233.P18417526429858776449

/-!
# A153234: a(n) = floor(2^n/9).

The programs for A153234, the canonical program `A153234.P11141160491710891728` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153234 has offset 0).

The definition of A153234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^n/9)` (program `A153234.P11141160491710891728`, by `A153234.P11141160491710891728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153234.P2922657159654184346

`a(n-6)+7*2^(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=3`
-/

namespace A153234.P2922657159654184346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 3] fun n a =>
  a (n - 6) + 7 * (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ)

end

end A153234.P2922657159654184346

namespace A153234

/-- `a(n-6)+7*2^(n-6)` -/
def P2922657159654184346.Spec : Prop :=
  ∀ n, P2922657159654184346.a n = (A153234 n : ℚ)

end A153234

/-! ## A153234.P3158162098318839571

`3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A153234.P3158162098318839571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + 3 * a (n - 4) - 2 * a (n - 5)

end

end A153234.P3158162098318839571

namespace A153234

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+3*a(n-4)-2*a(n-5)` -/
def P3158162098318839571.Spec : Prop :=
  ∀ n, P3158162098318839571.a n = A153234 n

end A153234

/-! ## A153234.P11141160491710891728

`floor(2^n/9)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153234

/-- `floor(2^n/9)` -/
def P11141160491710891728.Spec : Prop :=
  ∀ n, P11141160491710891728.a n = A153234 n

theorem P11141160491710891728.correct : P11141160491710891728.Spec := by
  intro n
  simp only [A153234]

end A153234

/-! ## A153234.P9928741024382964748

`2^n/9+(-1)^n/18-1/2+A010892(n)/3`
-/

namespace A153234.P9928741024382964748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 9 + ((-1) ^ n : ℚ) / 18 - (1 : ℚ) / 2 + (A010892 n : ℚ) / 3

end

end A153234.P9928741024382964748

namespace A153234

/-- `2^n/9+(-1)^n/18-1/2+A010892(n)/3` -/
def P9928741024382964748.Spec : Prop :=
  ∀ n, P9928741024382964748.a n = (A153234 n : ℚ)

end A153234

/-! ## A153234.P3562481472434483802

`2^(n-3)-a(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A153234.P3562481472434483802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3) - 1

end

end A153234.P3562481472434483802

namespace A153234

/-- `2^(n-3)-a(n-3)-1` -/
def P3562481472434483802.Spec : Prop :=
  ∀ n, P3562481472434483802.a n = (A153234 n : ℚ)

end A153234

/-! ## A153234.P13493991851081676334

`A131090(n)-and(1, n)`
-/

namespace A153234.P13493991851081676334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - (Nat.land 1 n : ℤ)

end

end A153234.P13493991851081676334

namespace A153234

/-- `A131090(n)-and(1, n)` -/
def P13493991851081676334.Spec : Prop :=
  ∀ n, P13493991851081676334.a n = A153234 n

end A153234

/-! ## A153234.P14261816676832454114

`∑[A113405(abs(1-n))]`
-/

namespace A153234.P14261816676832454114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153234.P14261816676832454114

namespace A153234

/-- `∑[A113405(abs(1-n))]` -/
def P14261816676832454114.Spec : Prop :=
  ∀ n, P14261816676832454114.a n = A153234 n

end A153234

/-! ## A153234.P16854491028811598894

`A113405(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A153234.P16854491028811598894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A113405 (n - 1) + a (n - 1)

end

end A153234.P16854491028811598894

namespace A153234

/-- `A113405(n-1)+a(n-1)` -/
def P16854491028811598894.Spec : Prop :=
  ∀ n, P16854491028811598894.a n = A153234 n

end A153234

/-! ## A153234.P3497694073197358718

`A131090(n)-A000035(n)`
-/

namespace A153234.P3497694073197358718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - A000035 n

end

end A153234.P3497694073197358718

namespace A153234

/-- `A131090(n)-A000035(n)` -/
def P3497694073197358718.Spec : Prop :=
  ∀ n, P3497694073197358718.a n = A153234 n

end A153234

/-! ## A153234.P8901836258612220358

`A328881(n)-A059841(n)`
-/

namespace A153234.P8901836258612220358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n - A059841 n

end

end A153234.P8901836258612220358

namespace A153234

/-- `A328881(n)-A059841(n)` -/
def P8901836258612220358.Spec : Prop :=
  ∀ n, P8901836258612220358.a n = A153234 n

end A153234

/-! ## A153234.P13256320081309495746

`A088911(n)+A113405(n)-1`
-/

namespace A153234.P13256320081309495746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n + (A113405 n - 1)

end

end A153234.P13256320081309495746

namespace A153234

/-- `A088911(n)+A113405(n)-1` -/
def P13256320081309495746.Spec : Prop :=
  ∀ n, P13256320081309495746.a n = A153234 n

end A153234

/-! ## A153234.P1224344104156484041

`A000035(n)+A328881(n)-1`
-/

namespace A153234.P1224344104156484041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A328881 n - 1)

end

end A153234.P1224344104156484041

namespace A153234

/-- `A000035(n)+A328881(n)-1` -/
def P1224344104156484041.Spec : Prop :=
  ∀ n, P1224344104156484041.a n = A153234 n

end A153234

/-! ## A153234.P9270803829915179027

`A131666(n)-char[A047245(n+1)+1]`
-/

namespace A153234.P9270803829915179027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A153234.P9270803829915179027

namespace A153234

/-- `A131666(n)-char[A047245(n+1)+1]` -/
def P9270803829915179027.Spec : Prop :=
  ∀ n, P9270803829915179027.a n = A153234 n

end A153234

/-! ## A153234.P11509616913037433644

`A131666(n)+∑[A113405(n)-A131666(n)]`
-/

namespace A153234.P11509616913037433644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - A131666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153234.P11509616913037433644

namespace A153234

/-- `A131666(n)+∑[A113405(n)-A131666(n)]` -/
def P11509616913037433644.Spec : Prop :=
  ∀ n, P11509616913037433644.a n = A153234 n

end A153234

/-! ## A153234.P1563584141612551055

`(A132780(n)-1)/2`
-/

namespace A153234.P1563584141612551055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132780 n - 1 : ℚ) / 2

end

end A153234.P1563584141612551055

namespace A153234

/-- `(A132780(n)-1)/2` -/
def P1563584141612551055.Spec : Prop :=
  ∀ n, P1563584141612551055.a n = (A153234 n : ℚ)

end A153234

/-! ## A153234.P4259574041299086528

`Δ[A178742(abs(1-n))]`
-/

namespace A153234.P4259574041299086528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178742 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153234.P4259574041299086528

namespace A153234

/-- `Δ[A178742(abs(1-n))]` -/
def P4259574041299086528.Spec : Prop :=
  ∀ n, P4259574041299086528.a n = A153234 n

end A153234

/-! ## A153234.P17080102243030201071

`Δ[A131666(n)]-and(1, n)`
-/

namespace A153234.P17080102243030201071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.land 1 n : ℤ)

end

end A153234.P17080102243030201071

namespace A153234

/-- `Δ[A131666(n)]-and(1, n)` -/
def P17080102243030201071.Spec : Prop :=
  ∀ n, P17080102243030201071.a n = A153234 n

end A153234

/-! ## A153234.P10508729403945520787

`A111927(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A153234.P10508729403945520787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111927 (n - 1) - a (n - 1)

end

end A153234.P10508729403945520787

namespace A153234

/-- `A111927(n-1)-a(n-1)` -/
def P10508729403945520787.Spec : Prop :=
  ∀ n, P10508729403945520787.a n = A153234 n

end A153234

/-! ## A153234.P9622412598401298132

`∑[A113405(n)]-A113405(n)`
-/

namespace A153234.P9622412598401298132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A113405 n

end

end A153234.P9622412598401298132

namespace A153234

/-- `∑[A113405(n)]-A113405(n)` -/
def P9622412598401298132.Spec : Prop :=
  ∀ n, P9622412598401298132.a n = A153234 n

end A153234

/-! ## A153234.P16440571233087437976

`∑[2*A139797(n)]-A139797(n)`
-/

namespace A153234.P16440571233087437976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139797 n

end

end A153234.P16440571233087437976

namespace A153234

/-- `∑[2*A139797(n)]-A139797(n)` -/
def P16440571233087437976.Spec : Prop :=
  ∀ n, P16440571233087437976.a n = A153234 n

end A153234

/-!
# A153235: Numbers n such that 8*n+7 is not prime.

The programs for A153235, the canonical program `A153235.P14619884982715841541` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153235 has offset 1).

The definition of A153235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153235.P6054548928194547494

`comp[A139487(n+1)]`
-/

namespace A153235.P6054548928194547494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153235.P6054548928194547494

namespace A153235

/-- `comp[A139487(n+1)]` -/
def P6054548928194547494.Spec : Prop :=
  ∀ n, (P6054548928194547494.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P14619884982715841541

`lt[n+1, A258835(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153235

/-- `lt[n+1, A258835(n)]` -/
def P14619884982715841541.Spec : Prop :=
  ∀ n, (P14619884982715841541.a n : ℤ) = A153235 (n + 1)

theorem P14619884982715841541.correct : P14619884982715841541.Spec := by
  intro n
  simp only [A153235, Nat.add_sub_cancel]

end A153235

/-! ## A153235.P12486658966172856316

`comp[A005122(n+1)-1]`
-/

namespace A153235.P12486658966172856316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153235.P12486658966172856316

namespace A153235

/-- `comp[A005122(n+1)-1]` -/
def P12486658966172856316.Spec : Prop :=
  ∀ n, (P12486658966172856316.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P2353015397315777871

`comp[A153766(n+1)-2]`
-/

namespace A153235.P2353015397315777871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153235.P2353015397315777871

namespace A153235

/-- `comp[A153766(n+1)-2]` -/
def P2353015397315777871.Spec : Prop :=
  ∀ n, (P2353015397315777871.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P17216364348569173564

`lt[1, A001222(8*n+7)]`
-/

namespace A153235.P17216364348569173564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P17216364348569173564

namespace A153235

/-- `lt[1, A001222(8*n+7)]` -/
def P17216364348569173564.Spec : Prop :=
  ∀ n, (P17216364348569173564.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P1205120177287738406

`lt[2, A000005(8*n+7)]`
-/

namespace A153235.P1205120177287738406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P1205120177287738406

namespace A153235

/-- `lt[2, A000005(8*n+7)]` -/
def P1205120177287738406.Spec : Prop :=
  ∀ n, (P1205120177287738406.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P11987848319331594712

`lt[A020639(4*(2*n+1)+3), n+3]`
-/

namespace A153235.P11987848319331594712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (2 * n + 1) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153235.P11987848319331594712

namespace A153235

/-- `lt[A020639(4*(2*n+1)+3), n+3]` -/
def P11987848319331594712.Spec : Prop :=
  ∀ n, (P11987848319331594712.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P13894345122758823202

`eq[1, A010051(A004771(n))+1]`
-/

namespace A153235.P13894345122758823202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004771 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153235.P13894345122758823202

namespace A153235

/-- `eq[1, A010051(A004771(n))+1]` -/
def P13894345122758823202.Spec : Prop :=
  ∀ n, (P13894345122758823202.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P3892096320300612438

`eq[1, A101264(A004767(n))+1]`
-/

namespace A153235.P3892096320300612438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004767 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153235.P3892096320300612438

namespace A153235

/-- `eq[1, A101264(A004767(n))+1]` -/
def P3892096320300612438.Spec : Prop :=
  ∀ n, (P3892096320300612438.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P16019603734677968436

`lt[A006530(8*n+7), A004767(n)]`
-/

namespace A153235.P16019603734677968436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153235.P16019603734677968436

namespace A153235

/-- `lt[A006530(8*n+7), A004767(n)]` -/
def P16019603734677968436.Spec : Prop :=
  ∀ n, (P16019603734677968436.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P3856269426620628395

`eq[0, A080909(2*n+1)]`
-/

namespace A153235.P3856269426620628395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080909 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153235.P3856269426620628395

namespace A153235

/-- `eq[0, A080909(2*n+1)]` -/
def P3856269426620628395.Spec : Prop :=
  ∀ n, (P3856269426620628395.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P3707712945730440147

`lt[1, A078703(2*(n+1))]`
-/

namespace A153235.P3707712945730440147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P3707712945730440147

namespace A153235

/-- `lt[1, A078703(2*(n+1))]` -/
def P3707712945730440147.Spec : Prop :=
  ∀ n, (P3707712945730440147.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P10768765949642832114

`lt[1, A364082(2*(n+1))]`
-/

namespace A153235.P10768765949642832114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P10768765949642832114

namespace A153235

/-- `lt[1, A364082(2*(n+1))]` -/
def P10768765949642832114.Spec : Prop :=
  ∀ n, (P10768765949642832114.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P10554462505885809619

`lt[1, A245203(2*n+1)+1]`
-/

namespace A153235.P10554462505885809619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P10554462505885809619

namespace A153235

/-- `lt[1, A245203(2*n+1)+1]` -/
def P10554462505885809619.Spec : Prop :=
  ∀ n, (P10554462505885809619.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P10202417769149157602

`eq[A000007(A245203(2*n+1)), 0]`
-/

namespace A153235.P10202417769149157602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A245203 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A153235.P10202417769149157602

namespace A153235

/-- `eq[A000007(A245203(2*n+1)), 0]` -/
def P10202417769149157602.Spec : Prop :=
  ∀ n, (P10202417769149157602.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P7042906850695436731

`eq[A000038(A245203(2*n+1)), A000038(n+1)]`
-/

namespace A153235.P7042906850695436731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A245203 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153235.P7042906850695436731

namespace A153235

/-- `eq[A000038(A245203(2*n+1)), A000038(n+1)]` -/
def P7042906850695436731.Spec : Prop :=
  ∀ n, (P7042906850695436731.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P1210245402990178100

`lt[A136019(A136019(2*n+1)), A136019(2*n+1)]`
-/

namespace A153235.P1210245402990178100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (A136019 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153235.P1210245402990178100

namespace A153235

/-- `lt[A136019(A136019(2*n+1)), A136019(2*n+1)]` -/
def P1210245402990178100.Spec : Prop :=
  ∀ n, (P1210245402990178100.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P1556761178211912063

`lt[2, A000010(A214834(2*n+3))]`
-/

namespace A153235.P1556761178211912063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A214834 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P1556761178211912063

namespace A153235

/-- `lt[2, A000010(A214834(2*n+3))]` -/
def P1556761178211912063.Spec : Prop :=
  ∀ n, (P1556761178211912063.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P13705902302934166334

`lt[A004277(2*n), n*A214834(2*n+3)]`
-/

namespace A153235.P13705902302934166334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A214834 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153235.P13705902302934166334

namespace A153235

/-- `lt[A004277(2*n), n*A214834(2*n+3)]` -/
def P13705902302934166334.Spec : Prop :=
  ∀ n, (P13705902302934166334.a n : ℤ) = A153235 (n + 1)

end A153235

/-! ## A153235.P17237462245431507318

`lt[1, A046067(2*(n+1))]`
-/

namespace A153235.P17237462245431507318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153235.P17237462245431507318

namespace A153235

/-- `lt[1, A046067(2*(n+1))]` -/
def P17237462245431507318.Spec : Prop :=
  ∀ n, (P17237462245431507318.a n : ℤ) = A153235 (n + 1)

end A153235

/-!
# A153236: Numbers n such that 8*n + 3 is not prime.

The programs for A153236, the canonical program `A153236.P9988325728927142668` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153236 has offset 1).

The definition of A153236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153236.P8006892239453086887

`comp[A005124(n+1)]`
-/

namespace A153236.P8006892239453086887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153236.P8006892239453086887

namespace A153236

/-- `comp[A005124(n+1)]` -/
def P8006892239453086887.Spec : Prop :=
  ∀ n, (P8006892239453086887.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P1437754864719099548

`lt[1, A001222(8*n+3)]`
-/

namespace A153236.P1437754864719099548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P1437754864719099548

namespace A153236

/-- `lt[1, A001222(8*n+3)]` -/
def P1437754864719099548.Spec : Prop :=
  ∀ n, (P1437754864719099548.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P13869429348543547291

`lt[2, A000005(8*n+3)]`
-/

namespace A153236.P13869429348543547291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P13869429348543547291

namespace A153236

/-- `lt[2, A000005(8*n+3)]` -/
def P13869429348543547291.Spec : Prop :=
  ∀ n, (P13869429348543547291.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P9988325728927142668

`eq[1, A156707(4*n+1)+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153236

/-- `eq[1, A156707(4*n+1)+1]` -/
def P9988325728927142668.Spec : Prop :=
  ∀ n, (P9988325728927142668.a n : ℤ) = A153236 (n + 1)

theorem P9988325728927142668.correct : P9988325728927142668.Spec := by
  intro n
  simp only [A153236, Nat.add_sub_cancel]

end A153236

/-! ## A153236.P8693214010351336323

`lt[A020639(8*n+3), n+2]`
-/

namespace A153236.P8693214010351336323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153236.P8693214010351336323

namespace A153236

/-- `lt[A020639(8*n+3), n+2]` -/
def P8693214010351336323.Spec : Prop :=
  ∀ n, (P8693214010351336323.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P13466607160505259650

`lt[3, A136027(n+1)]+1`
-/

namespace A153236.P13466607160505259650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153236.P13466607160505259650

namespace A153236

/-- `lt[3, A136027(n+1)]+1` -/
def P13466607160505259650.Spec : Prop :=
  ∀ n, (P13466607160505259650.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P17887963684293214617

`eq[1, A005171(A017077(n)+2)]`
-/

namespace A153236.P17887963684293214617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017077 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P17887963684293214617

namespace A153236

/-- `eq[1, A005171(A017077(n)+2)]` -/
def P17887963684293214617.Spec : Prop :=
  ∀ n, (P17887963684293214617.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P11519227905317451260

`eq[0, A080909(2*n)]`
-/

namespace A153236.P11519227905317451260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080909 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P11519227905317451260

namespace A153236

/-- `eq[0, A080909(2*n)]` -/
def P11519227905317451260.Spec : Prop :=
  ∀ n, (P11519227905317451260.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P9458613125178926417

`lt[1, A078703(2*n+1)]`
-/

namespace A153236.P9458613125178926417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P9458613125178926417

namespace A153236

/-- `lt[1, A078703(2*n+1)]` -/
def P9458613125178926417.Spec : Prop :=
  ∀ n, (P9458613125178926417.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P1685725159432039300

`lt[1, A245203(2*n)+1]`
-/

namespace A153236.P1685725159432039300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P1685725159432039300

namespace A153236

/-- `lt[1, A245203(2*n)+1]` -/
def P1685725159432039300.Spec : Prop :=
  ∀ n, (P1685725159432039300.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P2360785882283252398

`lt[1, A364082(2*n+1)]`
-/

namespace A153236.P2360785882283252398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P2360785882283252398

namespace A153236

/-- `lt[1, A364082(2*n+1)]` -/
def P2360785882283252398.Spec : Prop :=
  ∀ n, (P2360785882283252398.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P1832874267423739186

`lt[3, A060324(2*n+1)]`
-/

namespace A153236.P1832874267423739186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P1832874267423739186

namespace A153236

/-- `lt[3, A060324(2*n+1)]` -/
def P1832874267423739186.Spec : Prop :=
  ∀ n, (P1832874267423739186.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P8865726514366650507

`eq[2, A218831(4*n+1)]`
-/

namespace A153236.P8865726514366650507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P8865726514366650507

namespace A153236

/-- `eq[2, A218831(4*n+1)]` -/
def P8865726514366650507.Spec : Prop :=
  ∀ n, (P8865726514366650507.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P16853928426736798309

`eq[1, A089367(4*n+1)+1]`
-/

namespace A153236.P16853928426736798309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P16853928426736798309

namespace A153236

/-- `eq[1, A089367(4*n+1)+1]` -/
def P16853928426736798309.Spec : Prop :=
  ∀ n, (P16853928426736798309.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P14996402182433023233

`eq[A000007(A245203(2*n)), 0]`
-/

namespace A153236.P14996402182433023233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A245203 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A153236.P14996402182433023233

namespace A153236

/-- `eq[A000007(A245203(2*n)), 0]` -/
def P14996402182433023233.Spec : Prop :=
  ∀ n, (P14996402182433023233.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P3273787382112051139

`lt[2, A077462(A047471(2*(n+1)))]`
-/

namespace A153236.P3273787382112051139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A047471 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P3273787382112051139

namespace A153236

/-- `lt[2, A077462(A047471(2*(n+1)))]` -/
def P3273787382112051139.Spec : Prop :=
  ∀ n, (P3273787382112051139.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P2497763479436580032

`lt[2, A000010(A214834(2*(n+1)))]`
-/

namespace A153236.P2497763479436580032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A214834 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153236.P2497763479436580032

namespace A153236

/-- `lt[2, A000010(A214834(2*(n+1)))]` -/
def P2497763479436580032.Spec : Prop :=
  ∀ n, (P2497763479436580032.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P14707615168975327513

`eq[A000038(A245203(2*n)), A000038(n+1)]`
-/

namespace A153236.P14707615168975327513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A245203 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153236.P14707615168975327513

namespace A153236

/-- `eq[A000038(A245203(2*n)), A000038(n+1)]` -/
def P14707615168975327513.Spec : Prop :=
  ∀ n, (P14707615168975327513.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P4277363667895178649

`eq[1, A282026(4*n)]`
-/

namespace A153236.P4277363667895178649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P4277363667895178649

namespace A153236

/-- `eq[1, A282026(4*n)]` -/
def P4277363667895178649.Spec : Prop :=
  ∀ n, (P4277363667895178649.a n : ℤ) = A153236 (n + 1)

end A153236

/-! ## A153236.P280315631788496996

`eq[1, A282194(4*n)]`
-/

namespace A153236.P280315631788496996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153236.P280315631788496996

namespace A153236

/-- `eq[1, A282194(4*n)]` -/
def P280315631788496996.Spec : Prop :=
  ∀ n, (P280315631788496996.a n : ℤ) = A153236 (n + 1)

end A153236

/-!
# A153237: a(n) = A000079(n) - A153130(n).

The programs for A153237, the canonical program `A153237.P13424715550162330951` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153237 has offset 0).

The definition of A153237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153237.P15981840959654156663

`9*A153234(n)`
-/

namespace A153237.P15981840959654156663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A153234 n

end

end A153237.P15981840959654156663

namespace A153237

/-- `9*A153234(n)` -/
def P15981840959654156663.Spec : Prop :=
  ∀ n, P15981840959654156663.a n = A153237 n

end A153237

/-! ## A153237.P13424715550162330951

`A000079(n)-A153130(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153237

/-- `A000079(n)-A153130(n)` -/
def P13424715550162330951.Spec : Prop :=
  ∀ n, P13424715550162330951.a n = A153237 n

theorem P13424715550162330951.correct : P13424715550162330951.Spec := by
  intro n
  simp only [A153237]

end A153237

/-! ## A153237.P15585533489882059942

`9*floor(2^n/9)`
-/

namespace A153237.P15585533489882059942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(2 ^ n : ℚ) / 9⌋

end

end A153237.P15585533489882059942

namespace A153237

/-- `9*floor(2^n/9)` -/
def P15585533489882059942.Spec : Prop :=
  ∀ n, P15585533489882059942.a n = A153237 n

end A153237

/-! ## A153237.P12436810733226441309

`2^n-dr(2^n)`
-/

namespace A153237.P12436810733226441309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (SequenceMachineLib.digitalRoot (2 ^ n : ℤ) : ℤ)

end

end A153237.P12436810733226441309

namespace A153237

/-- `2^n-dr(2^n)` -/
def P12436810733226441309.Spec : Prop :=
  ∀ n, P12436810733226441309.a n = A153237 n

end A153237

/-! ## A153237.P1194565823837821530

`2^n-(2^n)%9`
-/

namespace A153237.P1194565823837821530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((2 ^ n % 9 : ℕ) : ℤ)

end

end A153237.P1194565823837821530

namespace A153237

/-- `2^n-(2^n)%9` -/
def P1194565823837821530.Spec : Prop :=
  ∀ n, P1194565823837821530.a n = A153237 n

end A153237

/-! ## A153237.P6911449520742510050

`2^n-A029898(n+1)`
-/

namespace A153237.P6911449520742510050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A029898 (n + 1)

end

end A153237.P6911449520742510050

namespace A153237

/-- `2^n-A029898(n+1)` -/
def P6911449520742510050.Spec : Prop :=
  ∀ n, P6911449520742510050.a n = A153237 n

end A153237

/-! ## A153237.P432022950645611435

`2^n-A154529(n+2)`
-/

namespace A153237.P432022950645611435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A154529 (n + 2)

end

end A153237.P432022950645611435

namespace A153237

/-- `2^n-A154529(n+2)` -/
def P432022950645611435.Spec : Prop :=
  ∀ n, P432022950645611435.a n = A153237 n

end A153237

/-! ## A153237.P15159766662489163956

`A011782(n+1)-A153130(n)`
-/

namespace A153237.P15159766662489163956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A153130 n

end

end A153237.P15159766662489163956

namespace A153237

/-- `A011782(n+1)-A153130(n)` -/
def P15159766662489163956.Spec : Prop :=
  ∀ n, P15159766662489163956.a n = A153237 n

end A153237

/-! ## A153237.P17378975548159321852

`A131577(n+1)-A153130(n)`
-/

namespace A153237.P17378975548159321852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A153130 n

end

end A153237.P17378975548159321852

namespace A153237

/-- `A131577(n+1)-A153130(n)` -/
def P17378975548159321852.Spec : Prop :=
  ∀ n, P17378975548159321852.a n = A153237 n

end A153237

/-! ## A153237.P6704275701010373764

`A000051(n)-(dr(A000079(n))+1)`
-/

namespace A153237.P6704275701010373764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (SequenceMachineLib.digitalRoot (A000079 n) + 1 : ℤ)

end

end A153237.P6704275701010373764

namespace A153237

/-- `A000051(n)-(dr(A000079(n))+1)` -/
def P6704275701010373764.Spec : Prop :=
  ∀ n, P6704275701010373764.a n = A153237 n

end A153237

/-! ## A153237.P7365390289167011484

`A000079(n)-A010888(A001370(n))`
-/

namespace A153237.P7365390289167011484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A010888 (A001370 n).toNat

end

end A153237.P7365390289167011484

namespace A153237

/-- `A000079(n)-A010888(A001370(n))` -/
def P7365390289167011484.Spec : Prop :=
  ∀ n, P7365390289167011484.a n = A153237 n

end A153237

/-! ## A153237.P5090196475580761132

`A001045(n+1)+A001045(n)-A029898(n+1)`
-/

namespace A153237.P5090196475580761132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A029898 (n + 1))

end

end A153237.P5090196475580761132

namespace A153237

/-- `A001045(n+1)+A001045(n)-A029898(n+1)` -/
def P5090196475580761132.Spec : Prop :=
  ∀ n, P5090196475580761132.a n = A153237 n

end A153237

/-! ## A153237.P17897189480607634451

`A024494(n+1)+A024495(n)-A029898(n+1)`
-/

namespace A153237.P17897189480607634451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) + (A024495 n - A029898 (n + 1))

end

end A153237.P17897189480607634451

namespace A153237

/-- `A024494(n+1)+A024495(n)-A029898(n+1)` -/
def P17897189480607634451.Spec : Prop :=
  ∀ n, P17897189480607634451.a n = A153237 n

end A153237

/-! ## A153237.P3810324182153881338

`A024495(n+1)+A024493(n)-A029898(n+1)`
-/

namespace A153237.P3810324182153881338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A024493 n - A029898 (n + 1))

end

end A153237.P3810324182153881338

namespace A153237

/-- `A024495(n+1)+A024493(n)-A029898(n+1)` -/
def P3810324182153881338.Spec : Prop :=
  ∀ n, P3810324182153881338.a n = A153237 n

end A153237

/-! ## A153237.P16539169267988920206

`A074323(2*n+1)-A153130(n)`
-/

namespace A153237.P16539169267988920206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n + 1) - A153130 n

end

end A153237.P16539169267988920206

namespace A153237

/-- `A074323(2*n+1)-A153130(n)` -/
def P16539169267988920206.Spec : Prop :=
  ∀ n, P16539169267988920206.a n = A153237 n

end A153237

/-! ## A153237.P15166953062175496803

`A185346(n+1)-(A185346(n)+A153130(n))`
-/

namespace A153237.P15166953062175496803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185346 (n + 1) - (A185346 n + A153130 n)

end

end A153237.P15166953062175496803

namespace A153237

/-- `A185346(n+1)-(A185346(n)+A153130(n))` -/
def P15166953062175496803.Spec : Prop :=
  ∀ n, P15166953062175496803.a n = A153237 n

theorem P15166953062175496803.correct : P15166953062175496803.Spec := by
  intro n
  simp only [A153237, Nat.add_sub_cancel, A153237.P15166953062175496803.a, A153237.P13424715550162330951.a, A000079, A000079.P10855139691139572931.a, A153130, A153130.P4449503062511694943.a, A185346, A185346.P8390841429819542791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153237

/-! ## A153237.P8453415601676706774

`A005009(n)-(A153130(n)+A091629(n+1))`
-/

namespace A153237.P8453415601676706774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n - (A153130 n + A091629 (n + 1))

end

end A153237.P8453415601676706774

namespace A153237

/-- `A005009(n)-(A153130(n)+A091629(n+1))` -/
def P8453415601676706774.Spec : Prop :=
  ∀ n, P8453415601676706774.a n = A153237 n

theorem P8453415601676706774.correct : P8453415601676706774.Spec := by
  intro n
  simp only [A153237, Nat.add_sub_cancel, A153237.P8453415601676706774.a, A153237.P13424715550162330951.a, A000079, A000079.P10855139691139572931.a, A005009, A005009.P8684826204732919887.a, A091629, A091629.P15422059899758948286.a, A153130, A153130.P4449503062511694943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153237

/-! ## A153237.P3742022365636965320

`A091629(n+2)-(A153130(n)+A005015(n))`
-/

namespace A153237.P3742022365636965320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 2) - (A153130 n + A005015 n)

end

end A153237.P3742022365636965320

namespace A153237

/-- `A091629(n+2)-(A153130(n)+A005015(n))` -/
def P3742022365636965320.Spec : Prop :=
  ∀ n, P3742022365636965320.a n = A153237 n

theorem P3742022365636965320.correct : P3742022365636965320.Spec := by
  intro n
  simp only [A153237, Nat.add_sub_cancel, A153237.P3742022365636965320.a, A153237.P13424715550162330951.a, A000079, A000079.P10855139691139572931.a, A005015, A005015.P14859435765551798402.a, A091629, A091629.P15422059899758948286.a, A153130, A153130.P4449503062511694943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153237

/-!
# A153238: Numbers k such that 2*k + 3 is composite.

The programs for A153238, the canonical program `A153238.P13831251492164971693` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153238 has offset 1).

The definition of A153238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153238.P15968701819897952613

`lt[1, A067760(n)]`
-/

namespace A153238.P15968701819897952613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P15968701819897952613

namespace A153238

/-- `lt[1, A067760(n)]` -/
def P15968701819897952613.Spec : Prop :=
  ∀ n, (P15968701819897952613.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P3058571030722560289

`comp[A067076(n+1)]`
-/

namespace A153238.P3058571030722560289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153238.P3058571030722560289

namespace A153238

/-- `comp[A067076(n+1)]` -/
def P3058571030722560289.Spec : Prop :=
  ∀ n, (P3058571030722560289.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P13831251492164971693

`A153052(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153238

/-- `A153052(n+1)+1` -/
def P13831251492164971693.Spec : Prop :=
  ∀ n, P13831251492164971693.a n = A153238 (n + 1)

theorem P13831251492164971693.correct : P13831251492164971693.Spec := by
  intro n
  simp only [A153238, Nat.add_sub_cancel]

end A153238

/-! ## A153238.P3049841505152392507

`A153053(n+1)+2`
-/

namespace A153238.P3049841505152392507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 2

end

end A153238.P3049841505152392507

namespace A153238

/-- `A153053(n+1)+2` -/
def P3049841505152392507.Spec : Prop :=
  ∀ n, P3049841505152392507.a n = A153238 (n + 1)

theorem P3049841505152392507.correct : P3049841505152392507.Spec := by
  intro n
  simp only [A153238, Nat.add_sub_cancel, A153238.P3049841505152392507.a, A153238.P13831251492164971693.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153053, A153053.P11375225491096847210.a, A101264, A101264.P18132826973570150985.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153238

/-! ## A153238.P13312744011263255905

`A053726(n+1)-2`
-/

namespace A153238.P13312744011263255905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 2

end

end A153238.P13312744011263255905

namespace A153238

/-- `A053726(n+1)-2` -/
def P13312744011263255905.Spec : Prop :=
  ∀ n, P13312744011263255905.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P6142921639734091161

`A155723(n+1)+3`
-/

namespace A153238.P6142921639734091161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 3

end

end A153238.P6142921639734091161

namespace A153238

/-- `A155723(n+1)+3` -/
def P6142921639734091161.Spec : Prop :=
  ∀ n, P6142921639734091161.a n = A153238 (n + 1)

theorem P6142921639734091161.correct : P6142921639734091161.Spec := by
  intro n
  simp only [A153238, Nat.add_sub_cancel, A153238.P6142921639734091161.a, A153238.P13831251492164971693.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A155723, A155723.P13840957345735942896.a, A101264, A101264.P18132826973570150985.a, A153053, A153053.P11375225491096847210.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153238

/-! ## A153238.P12420991977906636198

`A104275(n+2)-2`
-/

namespace A153238.P12420991977906636198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - 2

end

end A153238.P12420991977906636198

namespace A153238

/-- `A104275(n+2)-2` -/
def P12420991977906636198.Spec : Prop :=
  ∀ n, P12420991977906636198.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P3478403314773450415

`A146538(n+1)/2`
-/

namespace A153238.P3478403314773450415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2

end

end A153238.P3478403314773450415

namespace A153238

/-- `A146538(n+1)/2` -/
def P3478403314773450415.Spec : Prop :=
  ∀ n, P3478403314773450415.a n = (A153238 (n + 1) : ℚ)

end A153238

/-! ## A153238.P13937307260335209998

`A153040(n+1)-4`
-/

namespace A153238.P13937307260335209998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 4

end

end A153238.P13937307260335209998

namespace A153238

/-- `A153040(n+1)-4` -/
def P13937307260335209998.Spec : Prop :=
  ∀ n, P13937307260335209998.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P2681219368040360261

`A153039(n+1)-5`
-/

namespace A153238.P2681219368040360261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 5

end

end A153238.P2681219368040360261

namespace A153238

/-- `A153039(n+1)-5` -/
def P2681219368040360261.Spec : Prop :=
  ∀ n, P2681219368040360261.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P18210769755269472201

`A153045(n+1)-7`
-/

namespace A153238.P18210769755269472201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 7

end

end A153238.P18210769755269472201

namespace A153238

/-- `A153045(n+1)-7` -/
def P18210769755269472201.Spec : Prop :=
  ∀ n, P18210769755269472201.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P16051152377338800051

`A153047(n+1)-9`
-/

namespace A153238.P16051152377338800051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - 9

end

end A153238.P16051152377338800051

namespace A153238

/-- `A153047(n+1)-9` -/
def P16051152377338800051.Spec : Prop :=
  ∀ n, P16051152377338800051.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P5464942578782583793

`eq[0, A101264(n+1)]`
-/

namespace A153238.P5464942578782583793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153238.P5464942578782583793

namespace A153238

/-- `eq[0, A101264(n+1)]` -/
def P5464942578782583793.Spec : Prop :=
  ∀ n, (P5464942578782583793.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P1933791431624502951

`eq[2, A218831(n+1)]`
-/

namespace A153238.P1933791431624502951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153238.P1933791431624502951

namespace A153238

/-- `eq[2, A218831(n+1)]` -/
def P1933791431624502951.Spec : Prop :=
  ∀ n, (P1933791431624502951.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P14731035171325926218

`lt[1, A340101(n+1)]`
-/

namespace A153238.P14731035171325926218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P14731035171325926218

namespace A153238

/-- `lt[1, A340101(n+1)]` -/
def P14731035171325926218.Spec : Prop :=
  ∀ n, (P14731035171325926218.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P12839774868616051111

`lt[1, A352063(n+1)]`
-/

namespace A153238.P12839774868616051111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P12839774868616051111

namespace A153238

/-- `lt[1, A352063(n+1)]` -/
def P12839774868616051111.Spec : Prop :=
  ∀ n, (P12839774868616051111.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P2109201510057679095

`A008508(n+1)+n`
-/

namespace A153238.P2109201510057679095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + (n : ℤ)

end

end A153238.P2109201510057679095

namespace A153238

/-- `A008508(n+1)+n` -/
def P2109201510057679095.Spec : Prop :=
  ∀ n, P2109201510057679095.a n = A153238 (n + 1)

end A153238

/-! ## A153238.P16394894406975420863

`lt[1, A001222(2*n+3)]`
-/

namespace A153238.P16394894406975420863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P16394894406975420863

namespace A153238

/-- `lt[1, A001222(2*n+3)]` -/
def P16394894406975420863.Spec : Prop :=
  ∀ n, (P16394894406975420863.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P17137152044646927255

`lt[2, A000005(2*n+3)]`
-/

namespace A153238.P17137152044646927255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P17137152044646927255

namespace A153238

/-- `lt[2, A000005(2*n+3)]` -/
def P17137152044646927255.Spec : Prop :=
  ∀ n, (P17137152044646927255.a n : ℤ) = A153238 (n + 1)

end A153238

/-! ## A153238.P14261490255237174678

`lt[1, A001222(n+3+n)²]`
-/

namespace A153238.P14261490255237174678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153238.P14261490255237174678

namespace A153238

/-- `lt[1, A001222(n+3+n)²]` -/
def P14261490255237174678.Spec : Prop :=
  ∀ n, (P14261490255237174678.a n : ℤ) = A153238 (n + 1)

end A153238

/-!
# A153239: Balance of binary trees as ordered by A014486: number of vertices in the right subtree minus number of vertices in the left subtree.

The programs for A153239, there is no canonical definition to state claims against.
-/

/-! ## A153239.P2892411924863964689

`A153240(eq[n, n*A057516(n)])`
-/

namespace A153239.P2892411924863964689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153239.P2892411924863964689

/-! ## A153239.P11035341223755536519

`A153240(eq[A057427(n), A057516(n)])`
-/

namespace A153239.P11035341223755536519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153240 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A153239.P11035341223755536519

/-! ## A153239.P11494366129640548323

`A153240(A057123(n))/2`
-/

namespace A153239.P11494366129640548323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153240 (A057123 n).toNat : ℚ) / 2

end

end A153239.P11494366129640548323

/-!
# A153242: Positions of general trees in A014486 whose degree is not one.

The programs for A153242, there is no canonical definition to state claims against.
-/

/-! ## A153242.P13094044598790558746

`comp[A057548(n)]`
-/

namespace A153242.P13094044598790558746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P13094044598790558746

/-! ## A153242.P2477757519917897092

`comp[record[A057161(n+1)]]`
-/

namespace A153242.P2477757519917897092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P2477757519917897092

/-! ## A153242.P17953744076145944726

`comp[record[A069767(n+1)]]`
-/

namespace A153242.P17953744076145944726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P17953744076145944726

/-! ## A153242.P14197592493983416575

`comp[record[A074680(n+1)]]`
-/

namespace A153242.P14197592493983416575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P14197592493983416575

/-! ## A153242.P10155081141299157008

`eq[0, A083923(n)]`
-/

namespace A153242.P10155081141299157008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153242.P10155081141299157008

/-! ## A153242.P12236884471566263348

`record[(n+1)%A074679(n+1)]`
-/

namespace A153242.P12236884471566263348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A074679 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153242.P12236884471566263348

/-! ## A153242.P8989481033417660127

`record[n*floor(A074679(n)/(n+1))]`
-/

namespace A153242.P8989481033417660127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(A074679 n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153242.P8989481033417660127

/-! ## A153242.P8433053372402219063

`eq[A063524(n), A083925(n)]`
-/

namespace A153242.P8433053372402219063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153242.P8433053372402219063

/-! ## A153242.P16323915314350833783

`comp[eq[1, A057515(n)]]`
-/

namespace A153242.P16323915314350833783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153242.P16323915314350833783

/-! ## A153242.P14480362240201367878

`A074680(A081291(n))`
-/

namespace A153242.P14480362240201367878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (A081291 n).toNat

end

end A153242.P14480362240201367878

/-! ## A153242.P15441774551854285633

`A074680(lt[A074680(n), or(1, n)])`
-/

namespace A153242.P15441774551854285633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A153242.P15441774551854285633

/-! ## A153242.P307790349459340905

`eq[A339579(11*n+12), A339579(A127301(n)+1)]`
-/

namespace A153242.P307790349459340905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (11 * n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A127301 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153242.P307790349459340905

/-! ## A153242.P14455891532391201755

`comp[record[A129609(n+1)]]`
-/

namespace A153242.P14455891532391201755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P14455891532391201755

/-! ## A153242.P15213700031195380303

`comp[record[A129610(n+1)]]`
-/

namespace A153242.P15213700031195380303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P15213700031195380303

/-! ## A153242.P11431467929518001006

`comp[record[A130365(n+1)]]`
-/

namespace A153242.P11431467929518001006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P11431467929518001006

/-! ## A153242.P6617348803117707182

`comp[record[A130370(n+1)]]`
-/

namespace A153242.P6617348803117707182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153242.P6617348803117707182

/-! ## A153242.P287716130569450457

`record[n%or(1, A129609(n))]`
-/

namespace A153242.P287716130569450457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.lor 1 (A129609 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153242.P287716130569450457

/-! ## A153242.P12505357660182472524

`eq[A000007(n*A057516(n)), A000007(n)]`
-/

namespace A153242.P12505357660182472524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A057516 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153242.P12505357660182472524

/-! ## A153242.P3870647254550629312

`eq[A000038(n*A057516(n)), A000038(n)]`
-/

namespace A153242.P3870647254550629312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A057516 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153242.P3870647254550629312

/-! ## A153242.P7148960522308281979

`eq[A057427(n*A057516(n)), A057427(n)]`
-/

namespace A153242.P7148960522308281979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A057516 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153242.P7148960522308281979

/-!
# A153243: Positions of balanced binary trees in A014486, i.e., trees where number of vertices in the right subtree = number of vertices in the left subtree.

The programs for A153243, there is no canonical definition to state claims against.
-/

/-! ## A153243.P7680305486410749762

`eq[0, A153239(n)]`
-/

namespace A153243.P7680305486410749762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153243.P7680305486410749762

/-! ## A153243.P7197520841431904946

`A026741(record[gcd(2*n, A153239(n))])`
-/

namespace A153243.P7197520841431904946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A153239 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A153243.P7197520841431904946

/-!
# A153245: Numbers n>1 such that 6*n-7 is not prime.

The programs for A153245, the canonical program `A153245.P2590353044541573662` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153245 has offset 1).

The definition of A153245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153245.P3359385606074906047

`A046953(n+1)+1`
-/

namespace A153245.P3359385606074906047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + 1

end

end A153245.P3359385606074906047

namespace A153245

/-- `A046953(n+1)+1` -/
def P3359385606074906047.Spec : Prop :=
  ∀ n, P3359385606074906047.a n = A153245 (n + 1)

theorem P3359385606074906047.correct : P3359385606074906047.Spec := by
  intro n
  simp only [A153245, Nat.add_sub_cancel, A153245.P3359385606074906047.a, A153245.P2590353044541573662.a, A046953, A046953.P12772226548913626932.a, A059324, A059324.P9355351555036225255.f1, A059324.P9355351555036225255.f2, A059324.P9355351555036225255.a, A075743, A075743.P8124416718606607743.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153245

/-! ## A153245.P2590353044541573662

`A059324(n+1)+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153245

/-- `A059324(n+1)+2` -/
def P2590353044541573662.Spec : Prop :=
  ∀ n, P2590353044541573662.a n = A153245 (n + 1)

theorem P2590353044541573662.correct : P2590353044541573662.Spec := by
  intro n
  simp only [A153245, Nat.add_sub_cancel]

end A153245

/-! ## A153245.P16122001312744254272

`comp[A059325(n+1)]+2`
-/

namespace A153245.P16122001312744254272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153245.P16122001312744254272

namespace A153245

/-- `comp[A059325(n+1)]+2` -/
def P16122001312744254272.Spec : Prop :=
  ∀ n, (P16122001312744254272.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P3489815670516819247

`lt[2, A000005(6*n+5)]+2`
-/

namespace A153245.P3489815670516819247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A153245.P3489815670516819247

namespace A153245

/-- `lt[2, A000005(6*n+5)]+2` -/
def P3489815670516819247.Spec : Prop :=
  ∀ n, (P3489815670516819247.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P9862547298198044144

`lt[A020639(6*n+11), n+2]+3`
-/

namespace A153245.P9862547298198044144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A153245.P9862547298198044144

namespace A153245

/-- `lt[A020639(6*n+11), n+2]+3` -/
def P9862547298198044144.Spec : Prop :=
  ∀ n, (P9862547298198044144.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P4005302965284321826

`A173231(n+1)-A153219(n+1)`
-/

namespace A153245.P4005302965284321826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173231 (n + 1) - A153219 (n + 1)

end

end A153245.P4005302965284321826

namespace A153245

/-- `A173231(n+1)-A153219(n+1)` -/
def P4005302965284321826.Spec : Prop :=
  ∀ n, P4005302965284321826.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P3134584298023328000

`A009056(A059324(n+1))`
-/

namespace A153245.P3134584298023328000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A059324 (n + 1)).toNat

end

end A153245.P3134584298023328000

namespace A153245

/-- `A009056(A059324(n+1))` -/
def P3134584298023328000.Spec : Prop :=
  ∀ n, P3134584298023328000.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P15291624955532902338

`lt[1, A359305(n+1)]+2`
-/

namespace A153245.P15291624955532902338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A153245.P15291624955532902338

namespace A153245

/-- `lt[1, A359305(n+1)]+2` -/
def P15291624955532902338.Spec : Prop :=
  ∀ n, (P15291624955532902338.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P18399358882524976205

`A020725(A046953(n+1))`
-/

namespace A153245.P18399358882524976205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A046953 (n + 1)).toNat

end

end A153245.P18399358882524976205

namespace A153245

/-- `A020725(A046953(n+1))` -/
def P18399358882524976205.Spec : Prop :=
  ∀ n, P18399358882524976205.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P16156950014686340901

`lt[1, A001222(A016969(n))]+2`
-/

namespace A153245.P16156950014686340901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A153245.P16156950014686340901

namespace A153245

/-- `lt[1, A001222(A016969(n))]+2` -/
def P16156950014686340901.Spec : Prop :=
  ∀ n, (P16156950014686340901.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P5539078398485089653

`lt[1, A231776(2*(n+1))]+2`
-/

namespace A153245.P5539078398485089653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A153245.P5539078398485089653

namespace A153245

/-- `lt[1, A231776(2*(n+1))]+2` -/
def P5539078398485089653.Spec : Prop :=
  ∀ n, (P5539078398485089653.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P15025620914463877749

`A171088(A138685(n+1))`
-/

namespace A153245.P15025620914463877749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (A138685 (n + 1)).toNat

end

end A153245.P15025620914463877749

namespace A153245

/-- `A171088(A138685(n+1))` -/
def P15025620914463877749.Spec : Prop :=
  ∀ n, P15025620914463877749.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P16079370076923641501

`A008620(A138685(n+1)+1)+2`
-/

namespace A153245.P16079370076923641501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A138685 (n + 1) + 1).toNat + 2

end

end A153245.P16079370076923641501

namespace A153245

/-- `A008620(A138685(n+1)+1)+2` -/
def P16079370076923641501.Spec : Prop :=
  ∀ n, P16079370076923641501.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P14813408278840156664

`lt[2, A219252(3*(n+1))]+1`
-/

namespace A153245.P14813408278840156664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153245.P14813408278840156664

namespace A153245

/-- `lt[2, A219252(3*(n+1))]+1` -/
def P14813408278840156664.Spec : Prop :=
  ∀ n, (P14813408278840156664.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P16190836985805881166

`A008611((A092256(n+1)+1)/2)`
-/

namespace A153245.P16190836985805881166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A092256 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A153245.P16190836985805881166

namespace A153245

/-- `A008611((A092256(n+1)+1)/2)` -/
def P16190836985805881166.Spec : Prop :=
  ∀ n, P16190836985805881166.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P709789892472667180

`A010764(A092256(n+1)+1)+1`
-/

namespace A153245.P709789892472667180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (A092256 (n + 1) + 1).toNat + 1

end

end A153245.P709789892472667180

namespace A153245

/-- `A010764(A092256(n+1)+1)+1` -/
def P709789892472667180.Spec : Prop :=
  ∀ n, P709789892472667180.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P1353458051459338163

`lt[A014963(5*(n+1)+n), n+2]+2`
-/

namespace A153245.P1353458051459338163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A153245.P1353458051459338163

namespace A153245

/-- `lt[A014963(5*(n+1)+n), n+2]+2` -/
def P1353458051459338163.Spec : Prop :=
  ∀ n, (P1353458051459338163.a n : ℤ) = A153245 (n + 1)

end A153245

/-! ## A153245.P11461446077394116752

`A026806(A092256(n+1))`
-/

namespace A153245.P11461446077394116752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A092256 (n + 1)).toNat

end

end A153245.P11461446077394116752

namespace A153245

/-- `A026806(A092256(n+1))` -/
def P11461446077394116752.Spec : Prop :=
  ∀ n, P11461446077394116752.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P4233458855857406088

`A008612(A092256(n+1)+1)`
-/

namespace A153245.P4233458855857406088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A092256 (n + 1) + 1).toNat

end

end A153245.P4233458855857406088

namespace A153245

/-- `A008612(A092256(n+1)+1)` -/
def P4233458855857406088.Spec : Prop :=
  ∀ n, P4233458855857406088.a n = A153245 (n + 1)

end A153245

/-! ## A153245.P2322357926833026123

`A008612(A064635(n+1))`
-/

namespace A153245.P2322357926833026123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A064635 (n + 1)).toNat

end

end A153245.P2322357926833026123

namespace A153245

/-- `A008612(A064635(n+1))` -/
def P2322357926833026123.Spec : Prop :=
  ∀ n, P2322357926833026123.a n = A153245 (n + 1)

end A153245

/-!
# A153246: Number of fleeing trees computed for Catalan bijection A057164.

The programs for A153246, there is no canonical definition to state claims against.
-/

/-! ## A153246.P7469689912522725813

`floor(log(cosh(A179752(n))))`
-/

namespace A153246.P7469689912522725813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A179752 n : ℝ))⌋

end

end A153246.P7469689912522725813

/-! ## A153246.P4417572278286398701

`A179752(floor(acot(n)+n))-1`
-/

namespace A153246.P4417572278286398701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

end

end A153246.P4417572278286398701

/-! ## A153246.P3033980507980604087

`A179752(round(acot(n)+n))-1`
-/

namespace A153246.P3033980507980604087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A153246.P3033980507980604087

/-! ## A153246.P7290887501973571983

`A179752(abs(1-n)+1)-1`
-/

namespace A153246.P7290887501973571983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A153246.P7290887501973571983

/-! ## A153246.P14710282432666294645

`A179752(A126309(n))`
-/

namespace A153246.P14710282432666294645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A126309 n).toNat

end

end A153246.P14710282432666294645

/-! ## A153246.P8707960071043758509

`A108602(A126309(n)+1)`
-/

namespace A153246.P8707960071043758509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A126309 n + 1).toNat

end

end A153246.P8707960071043758509

/-! ## A153246.P8980535256148470863

`A319416(A014486(n))-1`
-/

namespace A153246.P8980535256148470863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A014486 n).toNat - 1

end

end A153246.P8980535256148470863

/-! ## A153246.P14152330365422036343

`A072643(A126309(n)+1)-1`
-/

namespace A153246.P14152330365422036343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A126309 n + 1).toNat - 1

end

end A153246.P14152330365422036343

/-! ## A153246.P1922155099553820348

`A272604(A194045(n)+1)-1`
-/

namespace A153246.P1922155099553820348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A194045 n + 1).toNat - 1

end

end A153246.P1922155099553820348

/-! ## A153246.P6127639253222302759

`A319416(A194045(n)+1)-1`
-/

namespace A153246.P6127639253222302759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A194045 n + 1).toNat - 1

end

end A153246.P6127639253222302759

/-! ## A153246.P2264613440181241446

`A036989(2*A072800(n))-1`
-/

namespace A153246.P2264613440181241446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (2 * A072800 n).toNat - 1

end

end A153246.P2264613440181241446

/-! ## A153246.P15856986378282960897

`A109082(2*A127301(n))-1`
-/

namespace A153246.P15856986378282960897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (2 * A127301 n).toNat - 1

end

end A153246.P15856986378282960897

/-! ## A153246.P14734501596097632311

`A319416(A194045(n)/2)-1`
-/

namespace A153246.P14734501596097632311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat - 1

end

end A153246.P14734501596097632311

/-! ## A153246.P9678139537249878318

`(A179752(n)-1)*A057427(n)`
-/

namespace A153246.P9678139537249878318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179752 n - 1) * A057427 n

end

end A153246.P9678139537249878318

/-! ## A153246.P11216894649192711410

`A000045(C(2, n+2))+A179752(n)-1`
-/

namespace A153246.P11216894649192711410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A179752 n - 1)

end

end A153246.P11216894649192711410

/-! ## A153246.P13611849977217669096

`A126306(n)-A126310(A126309(n))`
-/

namespace A153246.P13611849977217669096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 n - A126310 (A126309 n).toNat

end

end A153246.P13611849977217669096

/-!
# A153247: Number of fleeing trees computed for Catalan bijection A123493.

The programs for A153247, there is no canonical definition to state claims against.
-/

/-! ## A153247.P12576298981641795838

`A153248(A123493(n))`
-/

namespace A153247.P12576298981641795838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (A123493 n).toNat

end

end A153247.P12576298981641795838

/-! ## A153247.P734090243421447526

`A153248(A123494(A123494(A123494(n))))`
-/

namespace A153247.P734090243421447526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (A123494 (A123494 (A123494 n).toNat).toNat).toNat

end

end A153247.P734090243421447526

/-! ## A153247.P10970300311163789561

`A153248(A123716(n)%p?[A123716(n)])`
-/

namespace A153247.P10970300311163789561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (Int.tmod (A123716 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A153247.P10970300311163789561

/-! ## A153247.P15704831734474773037

`A153248(lcm(A123716(n), A140750(n+1)))`
-/

namespace A153247.P15704831734474773037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (Int.lcm (A123716 n) (A140750 (n + 1)))

end

end A153247.P15704831734474773037

/-! ## A153247.P14395859753954579375

`A153248(A123716(n)+A000035(2*n^3))`
-/

namespace A153247.P14395859753954579375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153248 (A123716 n + A000035 (2 * n ^ 3)).toNat

end

end A153247.P14395859753954579375

/-!
# A153248: Number of fleeing trees computed for Catalan bijection A123494.

The programs for A153248, there is no canonical definition to state claims against.
-/

/-! ## A153248.P1420880263700933624

`A153247(A123494(n)%A055741(n+1))`
-/

namespace A153248.P1420880263700933624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153247 (Int.tmod (A123494 n) (A055741 (n + 1))).toNat

end

end A153248.P1420880263700933624

/-! ## A153248.P15593202831930553902

`A153247(A123494(n))`
-/

namespace A153248.P15593202831930553902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153247 (A123494 n).toNat

end

end A153248.P15593202831930553902

/-! ## A153248.P15211305919402010547

`A153247(A123493(A123493(A123493(n))))`
-/

namespace A153248.P15211305919402010547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153247 (A123493 (A123493 (A123493 n).toNat).toNat).toNat

end

end A153248.P15211305919402010547

/-! ## A153248.P18363706583203961081

`A153247(A123716(n)%A123328(n))`
-/

namespace A153248.P18363706583203961081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153247 (Int.tmod (A123716 n) (A123328 n)).toNat

end

end A153248.P18363706583203961081

/-! ## A153248.P9067238008611554031

`A153247(A123716(n)+A000035(2*n^3))`
-/

namespace A153248.P9067238008611554031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153247 (A123716 n + A000035 (2 * n ^ 3)).toNat

end

end A153248.P9067238008611554031

/-!
# A153250: Array A(x,y): A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ... formed by growing a bud (a single V-node) on the y-th leaf of the binary tree A014486(x).

The programs for A153250, there is no canonical definition to state claims against.
-/

/-! ## A153250.P14331229814464771374

`A132921(n+1)%A132833(A132814(n))`
-/

namespace A153250.P14331229814464771374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132921 (n + 1)) (A132833 (A132814 n).toNat)

end

end A153250.P14331229814464771374

/-! ## A153250.P8035017242586263275

`A134478(n)%A271004(A232227(n+1))`
-/

namespace A153250.P8035017242586263275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 n) (A271004 (A232227 (n + 1)).toNat)

end

end A153250.P8035017242586263275

/-! ## A153250.P4779452667030096634

`A084558(A081295(n+1)*A090622(n+2))`
-/

namespace A153250.P4779452667030096634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A081295 (n + 1) * A090622 (n + 2)).toNat

end

end A153250.P4779452667030096634

/-! ## A153250.P15094456599238620681

`A134482(n+1)%A271004(A232227(n+1))`
-/

namespace A153250.P15094456599238620681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134482 (n + 1)) (A271004 (A232227 (n + 1)).toNat)

end

end A153250.P15094456599238620681

/-! ## A153250.P300584431138137080

`A084558(A099089(n)*A116406(n))`
-/

namespace A153250.P300584431138137080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A099089 n * A116406 n).toNat

end

end A153250.P300584431138137080

/-!
# A153251: Coefficients of the sixth-order mock theta function phi_{-}(q).

The programs for A153251, there is no canonical definition to state claims against.
-/

/-! ## A153251.P7372289120862341108

`A053271(2*n)`
-/

namespace A153251.P7372289120862341108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053271 (2 * n)

end

end A153251.P7372289120862341108

/-! ## A153251.P339206414959038284

`xor(1, xor(1, A053271(n+n)))`
-/

namespace A153251.P339206414959038284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A053271 (n + n)))

end

end A153251.P339206414959038284

/-! ## A153251.P345856490459733614

`(A261454(n)-A053268(n))/2`
-/

namespace A153251.P345856490459733614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261454 n - A053268 n : ℚ) / 2

end

end A153251.P345856490459733614

/-! ## A153251.P17781449279147218677

`record[A053271(n)/A053272(val(n+1, 2))]`
-/

namespace A153251.P17781449279147218677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053271 n : ℚ) / (A053272 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153251.P17781449279147218677

/-! ## A153251.P13995591725986344157

`record[A053271(n)/A262614(val(n+1, 2))]`
-/

namespace A153251.P13995591725986344157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053271 n : ℚ) / (A262614 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153251.P13995591725986344157

/-!
# A153252: Coefficients of the sixth-order mock theta function psi_{-}(q).

The programs for A153252, there is no canonical definition to state claims against.
-/

/-! ## A153252.P2456210757732568487

`floor(A053270(A004273(n))/2)`
-/

namespace A153252.P2456210757732568487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053270 (A004273 n).toNat : ℚ) / 2⌋

end

end A153252.P2456210757732568487

/-! ## A153252.P6875959260201509623

`floor(A053270(record[A026741(n)])/2)`
-/

namespace A153252.P6875959260201509623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋

end

end A153252.P6875959260201509623

/-! ## A153252.P14266451096955598811

`record[A000035(n)/2*A053270(n)]`
-/

namespace A153252.P14266451096955598811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 * (A053270 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153252.P14266451096955598811

/-! ## A153252.P831430474282136171

`A053270(A004273(n))/2*char[A116966(n)]`
-/

namespace A153252.P831430474282136171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053270 (A004273 n).toNat : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A153252.P831430474282136171

/-! ## A153252.P3144302658838080512

`A053270(A004273(n))/2*char[A246694(n)]`
-/

namespace A153252.P3144302658838080512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053270 (A004273 n).toNat : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A153252.P3144302658838080512

/-! ## A153252.P2908506031250712980

`A053270(A004273(n))/2*A052409(n²+1)`
-/

namespace A153252.P2908506031250712980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053270 (A004273 n).toNat : ℚ) / 2 * (A052409 (n ^ 2 + 1) : ℚ)

end

end A153252.P2908506031250712980

/-!
# A153253: a(n) = A000009(n!!).

The programs for A153253, there is no canonical definition to state claims against.
-/

/-! ## A153253.P14241904270302160613

`A000009(A006882(n))`
-/

namespace A153253.P14241904270302160613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A006882 n).toNat

end

end A153253.P14241904270302160613

/-! ## A153253.P8868981416420356754

`A000009(A216466(n))`
-/

namespace A153253.P8868981416420356754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A216466 n).toNat

end

end A153253.P8868981416420356754

/-! ## A153253.P5752490446002898141

`A035457(2*A006882(n))`
-/

namespace A153253.P5752490446002898141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A006882 n).toNat

end

end A153253.P5752490446002898141

/-! ## A153253.P10009226044469401755

`A172033(2*A006882(n))`
-/

namespace A153253.P10009226044469401755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * A006882 n).toNat

end

end A153253.P10009226044469401755

/-! ## A153253.P9925927488554462050

`∑{d}[A006882(n), A078374(#)]`
-/

namespace A153253.P9925927488554462050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078374 d

end

end A153253.P9925927488554462050

/-!
# A153254: Three-digit numbers with sequential digits that can be displayed on a 12-hour digital clock.

The programs for A153254, there is no canonical definition to state claims against.
-/

/-! ## A153254.P3860866192381068807

`∪[A127424(n+1), A306643(n+1)]`
-/

namespace A153254.P3860866192381068807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153254.P3860866192381068807

/-! ## A153254.P14333846154262108838

`∩[A033075(A007674(n+1)), A135643(n+1)]`
-/

namespace A153254.P14333846154262108838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (A007674 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153254.P14333846154262108838

/-! ## A153254.P4789790260235577552

`∩[A033075(A007674(n+1)), A247616(n+1)]`
-/

namespace A153254.P4789790260235577552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (A007674 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153254.P4789790260235577552

/-!
# A153255: Arises in enumerating orientable small covers over cubes.

The programs for A153255, there is no canonical definition to state claims against.
-/

/-! ## A153255.P11064665983681480703

`A311534(A095983(n))`
-/

namespace A153255.P11064665983681480703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311534 (A095983 n).toNat

end

end A153255.P11064665983681480703

/-! ## A153255.P692744923680280966

`A030102(A075834(n)²)`
-/

namespace A153255.P692744923680280966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A075834 n ^ 2).toNat

end

end A153255.P692744923680280966

/-!
# A153256: a(n) = A000041(n!!).

The programs for A153256, there is no canonical definition to state claims against.
-/

/-! ## A153256.P4358765034214779709

`A000041(A006882(n))`
-/

namespace A153256.P4358765034214779709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A006882 n).toNat

end

end A153256.P4358765034214779709

/-! ## A153256.P6121295908149291869

`A000041(∏[n/a(n-1)])` with `a(0)=1`
-/

namespace A153256.P6121295908149291869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153256.P6121295908149291869

/-! ## A153256.P5843261324936495560

`A000041(sqrt(A184877(n)))`
-/

namespace A153256.P5843261324936495560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A184877 n : ℝ))).toNat

end

end A153256.P5843261324936495560

/-! ## A153256.P3875440965258961827

`A000041(A230698(∑[n]))`
-/

namespace A153256.P3875440965258961827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153256.P3875440965258961827

/-! ## A153256.P2619788276163344646

`A000041(A128882(n)+1)`
-/

namespace A153256.P2619788276163344646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A128882 n + 1).toNat

end

end A153256.P2619788276163344646

/-!
# A153257: a(n) = n^3 - (n+1)^2.

The programs for A153257, the canonical program `A153257.P10992381773923415324` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153257 has offset 0).

The definition of A153257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-(n+1)²` (program `A153257.P10992381773923415324`, by `A153257.P10992381773923415324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153257.P10992381773923415324

`n^3-(n+1)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153257

/-- `n^3-(n+1)²` -/
def P10992381773923415324.Spec : Prop :=
  ∀ n, P10992381773923415324.a n = A153257 n

theorem P10992381773923415324.correct : P10992381773923415324.Spec := by
  intro n
  simp only [A153257]

end A153257

/-! ## A153257.P7241087404743308027

`round(n^3-(sin(11)-n)²)`
-/

namespace A153257.P7241087404743308027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 3 : ℝ) - (Real.sin (11 : ℝ) - (n : ℝ)) ^ 2)

end

end A153257.P7241087404743308027

namespace A153257

/-- `round(n^3-(sin(11)-n)²)` -/
def P7241087404743308027.Spec : Prop :=
  ∀ n, P7241087404743308027.a n = A153257 n

end A153257

/-! ## A153257.P15658963561351868984

`∑[∑[a(n-1)+6]]` with `a(0)=-1, a(1)=-1, a(2)=4`
-/

namespace A153257.P15658963561351868984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P15658963561351868984

namespace A153257

/-- `∑[∑[a(n-1)+6]]` -/
def P15658963561351868984.Spec : Prop :=
  ∀ n, P15658963561351868984.a n = A153257 n

end A153257

/-! ## A153257.P12200111152735501903

`or(1, 2*n*∑[n-1]-1)`
-/

namespace A153257.P12200111152735501903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A153257.P12200111152735501903

namespace A153257

/-- `or(1, 2*n*∑[n-1]-1)` -/
def P12200111152735501903.Spec : Prop :=
  ∀ n, P12200111152735501903.a n = A153257 n

end A153257

/-! ## A153257.P16327004991629626283

`xor(1, 2*n*∑[n-1]-2)`
-/

namespace A153257.P16327004991629626283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - 2)

end

end A153257.P16327004991629626283

namespace A153257

/-- `xor(1, 2*n*∑[n-1]-2)` -/
def P16327004991629626283.Spec : Prop :=
  ∀ n, P16327004991629626283.a n = A153257 n

end A153257

/-! ## A153257.P14938530145892077460

`∑[3*n²-A008706(n)]`
-/

namespace A153257.P14938530145892077460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P14938530145892077460

namespace A153257

/-- `∑[3*n²-A008706(n)]` -/
def P14938530145892077460.Spec : Prop :=
  ∀ n, P14938530145892077460.a n = A153257 n

end A153257

/-! ## A153257.P4238889010181857015

`∑[A077588(n)-2*(n+1)]`
-/

namespace A153257.P4238889010181857015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P4238889010181857015

namespace A153257

/-- `∑[A077588(n)-2*(n+1)]` -/
def P4238889010181857015.Spec : Prop :=
  ∀ n, P4238889010181857015.a n = A153257 n

end A153257

/-! ## A153257.P12397060763876130857

`floor(n^4/(n+1)-A008486(n))`
-/

namespace A153257.P12397060763876130857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 4 : ℚ) / (n + 1 : ℚ) - (A008486 n : ℚ)⌋

end

end A153257.P12397060763876130857

namespace A153257

/-- `floor(n^4/(n+1)-A008486(n))` -/
def P12397060763876130857.Spec : Prop :=
  ∀ n, P12397060763876130857.a n = A153257 n

end A153257

/-! ## A153257.P12382396768164394201

`∑[Δ[n*(1-n)²]-A008574(n)]`
-/

namespace A153257.P12382396768164394201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P12382396768164394201

namespace A153257

/-- `∑[Δ[n*(1-n)²]-A008574(n)]` -/
def P12382396768164394201.Spec : Prop :=
  ∀ n, P12382396768164394201.a n = A153257 n

end A153257

/-! ## A153257.P4237950502074458264

`-(A024001(n)+A005563(n))`
-/

namespace A153257.P4237950502074458264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024001 n + A005563 n)

end

end A153257.P4237950502074458264

namespace A153257

/-- `-(A024001(n)+A005563(n))` -/
def P4237950502074458264.Spec : Prop :=
  ∀ n, P4237950502074458264.a n = A153257 n

theorem P4237950502074458264.correct : P4237950502074458264.Spec := by
  intro n
  simp only [A153257, Nat.add_sub_cancel, A153257.P4237950502074458264.a, A153257.P10992381773923415324.a, A005563, A005563.P13300161655551567421.a, A024001, A024001.P5407789940977000596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153257

/-! ## A153257.P6150277784057473162

`∑[A000567(n)-A008486(n)]`
-/

namespace A153257.P6150277784057473162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P6150277784057473162

namespace A153257

/-- `∑[A000567(n)-A008486(n)]` -/
def P6150277784057473162.Spec : Prop :=
  ∀ n, P6150277784057473162.a n = A153257 n

end A153257

/-! ## A153257.P16614082813933642014

`∑[A028896(n)-A022144(n)]`
-/

namespace A153257.P16614082813933642014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n - A022144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P16614082813933642014

namespace A153257

/-- `∑[A028896(n)-A022144(n)]` -/
def P16614082813933642014.Spec : Prop :=
  ∀ n, P16614082813933642014.a n = A153257 n

end A153257

/-! ## A153257.P14245633906035244256

`∑[A000567(n)-n-A004277(n)]`
-/

namespace A153257.P14245633906035244256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153257.P14245633906035244256

namespace A153257

/-- `∑[A000567(n)-n-A004277(n)]` -/
def P14245633906035244256.Spec : Prop :=
  ∀ n, P14245633906035244256.a n = A153257 n

end A153257

/-! ## A153257.P6478268359263401692

`(A083074(n)-n)%A257049(n+1)`
-/

namespace A153257.P6478268359263401692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083074 n - (n : ℤ)) (A257049 (n + 1))

end

end A153257.P6478268359263401692

namespace A153257

/-- `(A083074(n)-n)%A257049(n+1)` -/
def P6478268359263401692.Spec : Prop :=
  ∀ n, P6478268359263401692.a n = A153257 n

end A153257

/-! ## A153257.P17227839478142403932

`Δ[C(n, 2)²-∑[n²]]`
-/

namespace A153257.P17227839478142403932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153257.P17227839478142403932

namespace A153257

/-- `Δ[C(n, 2)²-∑[n²]]` -/
def P17227839478142403932.Spec : Prop :=
  ∀ n, P17227839478142403932.a n = A153257 n

end A153257

/-! ## A153257.P12079191811930753772

`Δ[A212523(n)-∑[n]²]`
-/

namespace A153257.P12079191811930753772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153257.P12079191811930753772

namespace A153257

/-- `Δ[A212523(n)-∑[n]²]` -/
def P12079191811930753772.Spec : Prop :=
  ∀ n, P12079191811930753772.a n = A153257 n

end A153257

/-! ## A153257.P13040158462817419948

`(3*n*n²-A014255(2*n+1))/3`
-/

namespace A153257.P13040158462817419948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n * n ^ 2) : ℤ) - A014255 (2 * n + 1) : ℚ) / 3

end

end A153257.P13040158462817419948

namespace A153257

/-- `(3*n*n²-A014255(2*n+1))/3` -/
def P13040158462817419948.Spec : Prop :=
  ∀ n, P13040158462817419948.a n = (A153257 n : ℚ)

end A153257

/-! ## A153257.P1128521061515356529

`(A007588(n)-A000124(2*n+1))/2`
-/

namespace A153257.P1128521061515356529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007588 n - A000124 (2 * n + 1) : ℚ) / 2

end

end A153257.P1128521061515356529

namespace A153257

/-- `(A007588(n)-A000124(2*n+1))/2` -/
def P1128521061515356529.Spec : Prop :=
  ∀ n, P1128521061515356529.a n = (A153257 n : ℚ)

end A153257

/-! ## A153257.P12936694426900974994

`(A000578(n)-(n+1)²)*A000034(2*n)`
-/

namespace A153257.P12936694426900974994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - ((n + 1) ^ 2 : ℤ)) * A000034 (2 * n)

end

end A153257.P12936694426900974994

namespace A153257

/-- `(A000578(n)-(n+1)²)*A000034(2*n)` -/
def P12936694426900974994.Spec : Prop :=
  ∀ n, P12936694426900974994.a n = A153257 n

end A153257

/-!
# A153258: a(n) = n^3 - (n+2)^2.

The programs for A153258, the canonical program `A153258.P4097949673213874222` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153258 has offset 1).

The definition of A153258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-(n+2)²` (program `A153258.P4097949673213874222`, by `A153258.P4097949673213874222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153258.P4097949673213874222

`n^3-(n+2)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153258

/-- `n^3-(n+2)²` -/
def P4097949673213874222.Spec : Prop :=
  ∀ n, P4097949673213874222.a n = A153258 (n + 1)

theorem P4097949673213874222.correct : P4097949673213874222.Spec := by
  intro n
  simp only [A153258, Nat.add_sub_cancel]

end A153258

/-! ## A153258.P17572154856737198864

`∑[(n-2)*ceil(3/acot(n))]`
-/

namespace A153258.P17572154856737198864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ⌈3 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153258.P17572154856737198864

namespace A153258

/-- `∑[(n-2)*ceil(3/acot(n))]` -/
def P17572154856737198864.Spec : Prop :=
  ∀ n, P17572154856737198864.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P9345355318040271336

`2*(n*(C(n, 2)-2)-2)`
-/

namespace A153258.P9345355318040271336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((Nat.choose n 2 : ℤ) - 2) - 2)

end

end A153258.P9345355318040271336

namespace A153258

/-- `2*(n*(C(n, 2)-2)-2)` -/
def P9345355318040271336.Spec : Prop :=
  ∀ n, P9345355318040271336.a n = A153258 (n + 1)

theorem P9345355318040271336.correct : P9345355318040271336.Spec := by
  intro n
  simp only [A153258, Nat.add_sub_cancel, A153258.P9345355318040271336.a, A153258.P4097949673213874222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153258

/-! ## A153258.P7986215215966784519

`∑[∑[a(n-1)+6]]` with `a(0)=-4, a(1)=0, a(2)=4`
-/

namespace A153258.P7986215215966784519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4, 0, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153258.P7986215215966784519

namespace A153258

/-- `∑[∑[a(n-1)+6]]` -/
def P7986215215966784519.Spec : Prop :=
  ∀ n, P7986215215966784519.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P13192612710634071508

`xor(1, (n-3)*(n+1)²+n)`
-/

namespace A153258.P13192612710634071508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 3) * ((n + 1) ^ 2 : ℤ) + (n : ℤ))

end

end A153258.P13192612710634071508

namespace A153258

/-- `xor(1, (n-3)*(n+1)²+n)` -/
def P13192612710634071508.Spec : Prop :=
  ∀ n, P13192612710634071508.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P14930334976475318450

`2*(A341768(n)-2)`
-/

namespace A153258.P14930334976475318450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A341768 n - 2)

end

end A153258.P14930334976475318450

namespace A153258

/-- `2*(A341768(n)-2)` -/
def P14930334976475318450.Spec : Prop :=
  ∀ n, P14930334976475318450.a n = A153258 (n + 1)

theorem P14930334976475318450.correct : P14930334976475318450.Spec := by
  intro n
  simp only [A153258, Nat.add_sub_cancel, A153258.P14930334976475318450.a, A153258.P4097949673213874222.a, A341768, A341768.P17155034170055407740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153258

/-! ## A153258.P13367867560193641117

`2*(n*(A000217(abs(1-n))-2)-2)`
-/

namespace A153258.P13367867560193641117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (A000217 |1 - (n : ℤ)|.toNat - 2) - 2)

end

end A153258.P13367867560193641117

namespace A153258

/-- `2*(n*(A000217(abs(1-n))-2)-2)` -/
def P13367867560193641117.Spec : Prop :=
  ∀ n, P13367867560193641117.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P9837627827102189427

`2*(A006000(n)-Δ[A006000(n)])`
-/

namespace A153258.P9837627827102189427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006000 n - (f1 (n + 1) - f1 n))

end

end A153258.P9837627827102189427

namespace A153258

/-- `2*(A006000(n)-Δ[A006000(n)])` -/
def P9837627827102189427.Spec : Prop :=
  ∀ n, P9837627827102189427.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P2893913685506919792

`Δ[C(n, 2)²-∑[(n+1)²]]`
-/

namespace A153258.P2893913685506919792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153258.P2893913685506919792

namespace A153258

/-- `Δ[C(n, 2)²-∑[(n+1)²]]` -/
def P2893913685506919792.Spec : Prop :=
  ∀ n, P2893913685506919792.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P4849534261551832001

`∑[(n-2)*A033627(n+2)]`
-/

namespace A153258.P4849534261551832001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A033627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153258.P4849534261551832001

namespace A153258

/-- `∑[(n-2)*A033627(n+2)]` -/
def P4849534261551832001.Spec : Prop :=
  ∀ n, P4849534261551832001.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P6440123652148802848

`2*(A006003(n+1)-A058331(n+1))`
-/

namespace A153258.P6440123652148802848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006003 (n + 1) - A058331 (n + 1))

end

end A153258.P6440123652148802848

namespace A153258

/-- `2*(A006003(n+1)-A058331(n+1))` -/
def P6440123652148802848.Spec : Prop :=
  ∀ n, P6440123652148802848.a n = A153258 (n + 1)

end A153258

/-! ## A153258.P5213308645940569739

`(A122656(2*n)-2*(n+2)²)/2`
-/

namespace A153258.P5213308645940569739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122656 (2 * n) - (2 * (n + 2) ^ 2 : ℤ) : ℚ) / 2

end

end A153258.P5213308645940569739

namespace A153258

/-- `(A122656(2*n)-2*(n+2)²)/2` -/
def P5213308645940569739.Spec : Prop :=
  ∀ n, P5213308645940569739.a n = (A153258 (n + 1) : ℚ)

end A153258

/-! ## A153258.P13471471415947864625

`2*(A028724(2*n+1)-2*(n+1))`
-/

namespace A153258.P13471471415947864625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028724 (2 * n + 1) - (2 * (n + 1) : ℤ))

end

end A153258.P13471471415947864625

namespace A153258

/-- `2*(A028724(2*n+1)-2*(n+1))` -/
def P13471471415947864625.Spec : Prop :=
  ∀ n, P13471471415947864625.a n = A153258 (n + 1)

end A153258

/-!
# A153259: a(n) = n^3 - (3*(n+3))^2.

The programs for A153259, the canonical program `A153259.P3528803900567381670` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153259 has offset 1).

The definition of A153259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-(3*(n+3))²` (program `A153259.P3528803900567381670`, by `A153259.P3528803900567381670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153259.P3528803900567381670

`n^3-(3*(n+3))²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153259

/-- `n^3-(3*(n+3))²` -/
def P3528803900567381670.Spec : Prop :=
  ∀ n, P3528803900567381670.a n = A153259 (n + 1)

theorem P3528803900567381670.correct : P3528803900567381670.Spec := by
  intro n
  simp only [A153259, Nat.add_sub_cancel]

end A153259

/-!
# A153260: a(n) = n^3 - 3*(n+3)^2.

The programs for A153260, the canonical program `A153260.P17368314127115064576` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153260 has offset 0).

The definition of A153260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-3*(n+3)²` (program `A153260.P17368314127115064576`, by `A153260.P17368314127115064576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153260.P17368314127115064576

`n^3-3*(n+3)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153260

/-- `n^3-3*(n+3)²` -/
def P17368314127115064576.Spec : Prop :=
  ∀ n, P17368314127115064576.a n = A153260 n

theorem P17368314127115064576.correct : P17368314127115064576.Spec := by
  intro n
  simp only [A153260]

end A153260

/-! ## A153260.P5521618546300224514

`∑[∑[a(n-1)+6]]` with `a(0)=-27, a(1)=7, a(2)=0`
-/

namespace A153260.P5521618546300224514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-27, 7, 0] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153260.P5521618546300224514

namespace A153260

/-- `∑[∑[a(n-1)+6]]` -/
def P5521618546300224514.Spec : Prop :=
  ∀ n, P5521618546300224514.a n = A153260 n

end A153260

/-!
# A153261: Primes p such that 3*p-2 is not prime.

The programs for A153261, the canonical program `A153261.P17175385011379704487` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153261 has offset 1).

The definition of A153261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153261.P17175385011379704487

`p?[C(2, A001222(3*(n+1)+1))!+1+n]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A153261

/-- `p?[C(2, A001222(3*(n+1)+1))!+1+n]` -/
def P17175385011379704487.Spec : Prop :=
  ∀ n, (P17175385011379704487.a n : ℤ) = A153261 (n + 1)

theorem P17175385011379704487.correct : P17175385011379704487.Spec := by
  intro n
  simp only [A153261, Nat.add_sub_cancel]

end A153261

/-! ## A153261.P16734002589552646136

`record[A020639(A199593(n+2))]`
-/

namespace A153261.P16734002589552646136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A199593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153261.P16734002589552646136

namespace A153261

/-- `record[A020639(A199593(n+2))]` -/
def P16734002589552646136.Spec : Prop :=
  ∀ n, P16734002589552646136.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P13966871900720695268

`p?[comp[(2*n+1)*A001222(6*n+1)]]`
-/

namespace A153261.P13966871900720695268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001222 (6 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153261.P13966871900720695268

namespace A153261

/-- `p?[comp[(2*n+1)*A001222(6*n+1)]]` -/
def P13966871900720695268.Spec : Prop :=
  ∀ n, (P13966871900720695268.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P6001371490980292023

`p?[A153184(n+1)]`
-/

namespace A153261.P6001371490980292023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P6001371490980292023

namespace A153261

/-- `p?[A153184(n+1)]` -/
def P6001371490980292023.Spec : Prop :=
  ∀ n, P6001371490980292023.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P4842195825684941979

`p?[A153309(n+1)+1]`
-/

namespace A153261.P4842195825684941979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153309 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P4842195825684941979

namespace A153261

/-- `p?[A153309(n+1)+1]` -/
def P4842195825684941979.Spec : Prop :=
  ∀ n, P4842195825684941979.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P5296993876297653290

`p?[A153282(n+1)+2]`
-/

namespace A153261.P5296993876297653290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153282 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P5296993876297653290

namespace A153261

/-- `p?[A153282(n+1)+2]` -/
def P5296993876297653290.Spec : Prop :=
  ∀ n, P5296993876297653290.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P5707608858890645332

`∩[A000040(n+1), A153184(n+1)]`
-/

namespace A153261.P5707608858890645332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153261.P5707608858890645332

namespace A153261

/-- `∩[A000040(n+1), A153184(n+1)]` -/
def P5707608858890645332.Spec : Prop :=
  ∀ n, (P5707608858890645332.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P8153918739970321452

`∩[A045319(n+1), A153184(n+1)]`
-/

namespace A153261.P8153918739970321452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153261.P8153918739970321452

namespace A153261

/-- `∩[A045319(n+1), A153184(n+1)]` -/
def P8153918739970321452.Spec : Prop :=
  ∀ n, (P8153918739970321452.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P15228503253941313531

`∩[A045344(n+1), A153184(n+1)]`
-/

namespace A153261.P15228503253941313531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153261.P15228503253941313531

namespace A153261

/-- `∩[A045344(n+1), A153184(n+1)]` -/
def P15228503253941313531.Spec : Prop :=
  ∀ n, (P15228503253941313531.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P4960819291505310598

`∩[A153184(n+1), A182986(n+1)]`
-/

namespace A153261.P4960819291505310598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153261.P4960819291505310598

namespace A153261

/-- `∩[A153184(n+1), A182986(n+1)]` -/
def P4960819291505310598.Spec : Prop :=
  ∀ n, (P4960819291505310598.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P4635635049475939014

`p?[round(A109934(n+1)/3)]`
-/

namespace A153261.P4635635049475939014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109934 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P4635635049475939014

namespace A153261

/-- `p?[round(A109934(n+1)/3)]` -/
def P4635635049475939014.Spec : Prop :=
  ∀ n, P4635635049475939014.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P8052429128407951431

`∩[A153184(n+1), A240960(n+1)]`
-/

namespace A153261.P8052429128407951431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153261.P8052429128407951431

namespace A153261

/-- `∩[A153184(n+1), A240960(n+1)]` -/
def P8052429128407951431.Spec : Prop :=
  ∀ n, (P8052429128407951431.a n : ℤ) = A153261 (n + 1)

end A153261

/-! ## A153261.P15541266004905519979

`p?[(n+1)*A049076(3*n+1)]`
-/

namespace A153261.P15541266004905519979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049076 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P15541266004905519979

namespace A153261

/-- `p?[(n+1)*A049076(3*n+1)]` -/
def P15541266004905519979.Spec : Prop :=
  ∀ n, P15541266004905519979.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P17175339539494889270

`p?[A128615(A018252(n+1))]`
-/

namespace A153261.P17175339539494889270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P17175339539494889270

namespace A153261

/-- `p?[A128615(A018252(n+1))]` -/
def P17175339539494889270.Spec : Prop :=
  ∀ n, P17175339539494889270.a n = A153261 (n + 1)

end A153261

/-! ## A153261.P10187568731046493055

`p?[A131358(A018252(n+2))]`
-/

namespace A153261.P10187568731046493055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153261.P10187568731046493055

namespace A153261

/-- `p?[A131358(A018252(n+2))]` -/
def P10187568731046493055.Spec : Prop :=
  ∀ n, P10187568731046493055.a n = A153261 (n + 1)

end A153261

/-!
# A153262: Squares such that square+-3=primes.

The programs for A153262, there is no canonical definition to state claims against.
-/

/-! ## A153262.P5008248435794970261

`A153975(n+1)²`
-/

namespace A153262.P5008248435794970261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153975 (n + 1) ^ 2

end

end A153262.P5008248435794970261

/-! ## A153262.P11432100889996125638

`(2*A097698(n+1))²`
-/

namespace A153262.P11432100889996125638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A097698 (n + 1)) ^ 2

end

end A153262.P11432100889996125638

/-! ## A153262.P12147002407971441086

`A153975(2*(n+1)-(n+1))^2`
-/

namespace A153262.P12147002407971441086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153975 (2 * (n + 1) - (n + 1)) ^ 2

end

end A153262.P12147002407971441086

/-! ## A153262.P8340859845361805928

`2*A097698(n+1)*A153975(n+1)`
-/

namespace A153262.P8340859845361805928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097698 (n + 1) * A153975 (n + 1))

end

end A153262.P8340859845361805928

/-! ## A153262.P5393985115238159967

`A153975(A000027(n+1))*A153975(n+1)`
-/

namespace A153262.P5393985115238159967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153975 (A000027 (n + 1)).toNat * A153975 (n + 1)

end

end A153262.P5393985115238159967

/-! ## A153262.P9617777908007523325

`(A097698(A000027(n+1))+A097698(n+1))²`
-/

namespace A153262.P9617777908007523325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097698 (A000027 (n + 1)).toNat + A097698 (n + 1)) ^ 2

end

end A153262.P9617777908007523325

/-! ## A153262.P16105035413847823190

`∩[A028873(n+1), A049422(n+1)]²`
-/

namespace A153262.P16105035413847823190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A153262.P16105035413847823190

/-! ## A153262.P12840678392861225310

`(2*∩[A083022(n+1), A097697(n+1)])²`
-/

namespace A153262.P12840678392861225310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) ^ 2

end

end A153262.P12840678392861225310

/-! ## A153262.P13684649274503737738

`A016742(A097698(n+1))`
-/

namespace A153262.P13684649274503737738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A097698 (n + 1)).toNat

end

end A153262.P13684649274503737738

/-! ## A153262.P5153323294513420419

`A004277(2*A097698(n+1))*A097698(n+1)`
-/

namespace A153262.P5153323294513420419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A097698 (n + 1)).toNat * A097698 (n + 1)

end

end A153262.P5153323294513420419

/-! ## A153262.P12326347216938696891

`A005843(2*A097698(n+1))*A097698(n+1)`
-/

namespace A153262.P12326347216938696891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A097698 (n + 1)).toNat * A097698 (n + 1)

end

end A153262.P12326347216938696891

/-!
# A153263: a(n) = A014217(n+3) - A014217(n).

The programs for A153263, the canonical program `A153263.P14651380092516248509` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153263 has offset 0).

The definition of A153263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153263.P13899332067145065762

`2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=9`
-/

namespace A153263.P13899332067145065762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 9] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A153263.P13899332067145065762

namespace A153263

/-- `2*a(n-2)+a(n-3)` -/
def P13899332067145065762.Spec : Prop :=
  ∀ n, (P13899332067145065762.a n : ℤ) = A153263 n

end A153263

/-! ## A153263.P13569858165759809049

`(-1)^n+2*A000032(n+1)`
-/

namespace A153263.P13569858165759809049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2 * A000032 (n + 1)

end

end A153263.P13569858165759809049

namespace A153263

/-- `(-1)^n+2*A000032(n+1)` -/
def P13569858165759809049.Spec : Prop :=
  ∀ n, P13569858165759809049.a n = A153263 n

end A153263

/-! ## A153263.P14651380092516248509

`A014217(n+3)-A014217(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153263

/-- `A014217(n+3)-A014217(n)` -/
def P14651380092516248509.Spec : Prop :=
  ∀ n, P14651380092516248509.a n = A153263 n

theorem P14651380092516248509.correct : P14651380092516248509.Spec := by
  intro n
  simp only [A153263]

end A153263

/-! ## A153263.P5730651823605532511

`((-2)^n+(1-sqrt(5))^(1+n)+(1+sqrt(5))^(1+n))/2^n`
-/

namespace A153263.P5730651823605532511
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((-2) ^ n : ℝ) + (1 - Real.sqrt (5 : ℝ)) ^ (1 + n) + (1 + Real.sqrt (5 : ℝ)) ^ (1 + n)) / (2 ^ n : ℝ)

end

end A153263.P5730651823605532511

namespace A153263

/-- `((-2)^n+(1-sqrt(5))^(1+n)+(1+sqrt(5))^(1+n))/2^n` -/
def P5730651823605532511.Spec : Prop :=
  ∀ n, P5730651823605532511.a n = (A153263 n : ℝ)

end A153263

/-! ## A153263.P11259849877043860996

`ogf((3+5x+3x^2)/(1-2x^2-x^3))`
-/

namespace A153263.P11259849877043860996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 3] [1, 0, -2, -1] n

end

end A153263.P11259849877043860996

namespace A153263

/-- `ogf((3+5x+3x^2)/(1-2x^2-x^3))` -/
def P11259849877043860996.Spec : Prop :=
  ∀ n, P11259849877043860996.a n = A153263 n

end A153263

/-! ## A153263.P6205630699936793183

`a(n-2)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=5, a(2)=9`
-/

namespace A153263.P6205630699936793183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 9] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A153263.P6205630699936793183

namespace A153263

/-- `a(n-2)+a(n-2)+a(n-3)` -/
def P6205630699936793183.Spec : Prop :=
  ∀ n, (P6205630699936793183.a n : ℤ) = A153263 n

end A153263

/-! ## A153263.P14772453440704436174

`2*A301653(n)+3`
-/

namespace A153263.P14772453440704436174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301653 n + 3

end

end A153263.P14772453440704436174

namespace A153263

/-- `2*A301653(n)+3` -/
def P14772453440704436174.Spec : Prop :=
  ∀ n, P14772453440704436174.a n = A153263 n

end A153263

/-! ## A153263.P14130009487147193227

`abs(2*A075193(n)+1)`
-/

namespace A153263.P14130009487147193227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A075193 n + 1|

end

end A153263.P14130009487147193227

namespace A153263

/-- `abs(2*A075193(n)+1)` -/
def P14130009487147193227.Spec : Prop :=
  ∀ n, P14130009487147193227.a n = A153263 n

end A153263

/-! ## A153263.P10953931263596697705

`2*A014217(n+1)+1`
-/

namespace A153263.P10953931263596697705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014217 (n + 1) + 1

end

end A153263.P10953931263596697705

namespace A153263

/-- `2*A014217(n+1)+1` -/
def P10953931263596697705.Spec : Prop :=
  ∀ n, P10953931263596697705.a n = A153263 n

end A153263

/-! ## A153263.P5073895455148177726

`2*A062724(n+1)-1`
-/

namespace A153263.P5073895455148177726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062724 (n + 1) - 1

end

end A153263.P5073895455148177726

namespace A153263

/-- `2*A062724(n+1)-1` -/
def P5073895455148177726.Spec : Prop :=
  ∀ n, P5073895455148177726.a n = A153263 n

end A153263

/-! ## A153263.P1954068249711199281

`2*A169986(n+1)-1`
-/

namespace A153263.P1954068249711199281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169986 (n + 1) - 1

end

end A153263.P1954068249711199281

namespace A153263

/-- `2*A169986(n+1)-1` -/
def P1954068249711199281.Spec : Prop :=
  ∀ n, P1954068249711199281.a n = A153263 n

end A153263

/-! ## A153263.P15838466488898168615

`A008346(n)+A001060(n)`
-/

namespace A153263.P15838466488898168615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + A001060 n

end

end A153263.P15838466488898168615

namespace A153263

/-- `A008346(n)+A001060(n)` -/
def P15838466488898168615.Spec : Prop :=
  ∀ n, P15838466488898168615.a n = A153263 n

end A153263

/-! ## A153263.P11017768272444354736

`A033999(n)+A022112(n)`
-/

namespace A153263.P11017768272444354736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A022112 n

end

end A153263.P11017768272444354736

namespace A153263

/-- `A033999(n)+A022112(n)` -/
def P11017768272444354736.Spec : Prop :=
  ∀ n, P11017768272444354736.a n = A153263 n

end A153263

/-! ## A153263.P17691498302807529970

`A097133(n)+A020695(n)`
-/

namespace A153263.P17691498302807529970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 n + A020695 n

end

end A153263.P17691498302807529970

namespace A153263

/-- `A097133(n)+A020695(n)` -/
def P17691498302807529970.Spec : Prop :=
  ∀ n, P17691498302807529970.a n = A153263 n

end A153263

/-! ## A153263.P4633832752311378475

`A099925(n)+A022088(n)`
-/

namespace A153263.P4633832752311378475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A022088 n

end

end A153263.P4633832752311378475

namespace A153263

/-- `A099925(n)+A022088(n)` -/
def P4633832752311378475.Spec : Prop :=
  ∀ n, P4633832752311378475.a n = A153263 n

end A153263

/-! ## A153263.P5744097724488259512

`A176040(n)+A168674(n)`
-/

namespace A153263.P5744097724488259512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A168674 n

end

end A153263.P5744097724488259512

namespace A153263

/-- `A176040(n)+A168674(n)` -/
def P5744097724488259512.Spec : Prop :=
  ∀ n, P5744097724488259512.a n = A153263 n

end A153263

/-! ## A153263.P11873893207917851363

`A371843(n)+A000032(n)`
-/

namespace A153263.P11873893207917851363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 n + A000032 n

end

end A153263.P11873893207917851363

namespace A153263

/-- `A371843(n)+A000032(n)` -/
def P11873893207917851363.Spec : Prop :=
  ∀ n, P11873893207917851363.a n = A153263 n

end A153263

/-! ## A153263.P15880685601086852180

`A022095(n)+A007492(n+1)`
-/

namespace A153263.P15880685601086852180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A007492 (n + 1)

end

end A153263.P15880685601086852180

namespace A153263

/-- `A022095(n)+A007492(n+1)` -/
def P15880685601086852180.Spec : Prop :=
  ∀ n, P15880685601086852180.a n = A153263 n

end A153263

/-! ## A153263.P3906548607903804279

`A181716(n)+A000032(n+2)`
-/

namespace A153263.P3906548607903804279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A000032 (n + 2)

end

end A153263.P3906548607903804279

namespace A153263

/-- `A181716(n)+A000032(n+2)` -/
def P3906548607903804279.Spec : Prop :=
  ∀ n, P3906548607903804279.a n = A153263 n

end A153263

/-! ## A153263.P103236466759256344

`A181716(n)+A000204(n+2)`
-/

namespace A153263.P103236466759256344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A000204 (n + 2)

end

end A153263.P103236466759256344

namespace A153263

/-- `A181716(n)+A000204(n+2)` -/
def P103236466759256344.Spec : Prop :=
  ∀ n, P103236466759256344.a n = A153263 n

end A153263

/-!
# A153264: Numbers n such that 16*n+15 is not prime.

The programs for A153264, the canonical program `A153264.P6535688015430088092` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153264 has offset 1).

The definition of A153264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153264.P6535688015430088092

`comp[A127575(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153264

/-- `comp[A127575(n+1)]` -/
def P6535688015430088092.Spec : Prop :=
  ∀ n, (P6535688015430088092.a n : ℤ) = A153264 (n + 1)

theorem P6535688015430088092.correct : P6535688015430088092.Spec := by
  intro n
  simp only [A153264, Nat.add_sub_cancel]

end A153264

/-! ## A153264.P15186382383045442871

`lt[3, ∏{e}[2*(8*n+7)+1, #+1]]`
-/

namespace A153264.P15186382383045442871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (8 * n + 7) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153264.P15186382383045442871

namespace A153264

/-- `lt[3, ∏{e}[2*(8*n+7)+1, #+1]]` -/
def P15186382383045442871.Spec : Prop :=
  ∀ n, (P15186382383045442871.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P1118100585314271093

`lt[1, A001222(16*n+15)]`
-/

namespace A153264.P1118100585314271093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153264.P1118100585314271093

namespace A153264

/-- `lt[1, A001222(16*n+15)]` -/
def P1118100585314271093.Spec : Prop :=
  ∀ n, (P1118100585314271093.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P17509078497525953346

`lt[2, A000005(16*(n+1)-1)]`
-/

namespace A153264.P17509078497525953346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153264.P17509078497525953346

namespace A153264

/-- `lt[2, A000005(16*(n+1)-1)]` -/
def P17509078497525953346.Spec : Prop :=
  ∀ n, (P17509078497525953346.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P13128842061055473676

`eq[1, A101264(A004771(n))+1]`
-/

namespace A153264.P13128842061055473676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A004771 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153264.P13128842061055473676

namespace A153264

/-- `eq[1, A101264(A004771(n))+1]` -/
def P13128842061055473676.Spec : Prop :=
  ∀ n, (P13128842061055473676.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P1841787123257677161

`lt[A000010(A004771(2*n+1)), A004768(2*n)]`
-/

namespace A153264.P1841787123257677161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004771 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153264.P1841787123257677161

namespace A153264

/-- `lt[A000010(A004771(2*n+1)), A004768(2*n)]` -/
def P1841787123257677161.Spec : Prop :=
  ∀ n, (P1841787123257677161.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P5602846098581304064

`lt[A214062(4*(n+1)), 2*A001358(n+1)]`
-/

namespace A153264.P5602846098581304064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (4 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153264.P5602846098581304064

namespace A153264

/-- `lt[A214062(4*(n+1)), 2*A001358(n+1)]` -/
def P5602846098581304064.Spec : Prop :=
  ∀ n, (P5602846098581304064.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P10868423550905838997

`lt[A214062(A004767(n)+1), A004767(n)]`
-/

namespace A153264.P10868423550905838997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (A004767 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153264.P10868423550905838997

namespace A153264

/-- `lt[A214062(A004767(n)+1), A004767(n)]` -/
def P10868423550905838997.Spec : Prop :=
  ∀ n, (P10868423550905838997.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P1356980741292098420

`lt[1, A016014(A130824(2*(n+1))+1)]`
-/

namespace A153264.P1356980741292098420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (A130824 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153264.P1356980741292098420

namespace A153264

/-- `lt[1, A016014(A130824(2*(n+1))+1)]` -/
def P1356980741292098420.Spec : Prop :=
  ∀ n, (P1356980741292098420.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P12351326162780763673

`eq[1, A014963(16*(n+1)-1)]`
-/

namespace A153264.P12351326162780763673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (16 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153264.P12351326162780763673

namespace A153264

/-- `eq[1, A014963(16*(n+1)-1)]` -/
def P12351326162780763673.Spec : Prop :=
  ∀ n, (P12351326162780763673.a n : ℤ) = A153264 (n + 1)

end A153264

/-! ## A153264.P14685952945140861544

`lt[A014963((n+1)*(8/2)²-1), 3]`
-/

namespace A153264.P14685952945140861544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((8 : ℚ) / 2) ^ 2 - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153264.P14685952945140861544

namespace A153264

/-- `lt[A014963((n+1)*(8/2)²-1), 3]` -/
def P14685952945140861544.Spec : Prop :=
  ∀ n, (P14685952945140861544.a n : ℤ) = A153264 (n + 1)

end A153264

/-!
# A153265: a(n) = (-2*I)^n + (2*I)^n + (1/2 + 1/2*I*sqrt(3))^n + (1/2 - 1/2*I*sqrt(3))^n.

The programs for A153265, the canonical program `A153265.P9389263639608895521` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153265 has offset 0).

The definition of A153265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153265.P9389263639608895521

`a(n-1)-5*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=4, a(1)=1, a(2)=-9, a(3)=-2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153265

/-- `a(n-1)-5*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P9389263639608895521.Spec : Prop :=
  ∀ n, P9389263639608895521.a n = A153265 n

theorem P9389263639608895521.correct : P9389263639608895521.Spec := by
  intro n
  simp only [A153265]

end A153265

/-! ## A153265.P14255925711395996246

`A087204(n)+A009545(2*(n+1))`
-/

namespace A153265.P14255925711395996246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n + A009545 (2 * (n + 1))

end

end A153265.P14255925711395996246

namespace A153265

/-- `A087204(n)+A009545(2*(n+1))` -/
def P14255925711395996246.Spec : Prop :=
  ∀ n, P14255925711395996246.a n = A153265 n

end A153265

/-! ## A153265.P9083402639870210862

`A099087(2*n+1)+A087204(n)`
-/

namespace A153265.P9083402639870210862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (2 * n + 1) + A087204 n

end

end A153265.P9083402639870210862

namespace A153265

/-- `A099087(2*n+1)+A087204(n)` -/
def P9083402639870210862.Spec : Prop :=
  ∀ n, P9083402639870210862.a n = A153265 n

end A153265

/-! ## A153265.P3779742245305251826

`A087204(n)-A108520(2*n+1)`
-/

namespace A153265.P3779742245305251826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n - A108520 (2 * n + 1)

end

end A153265.P3779742245305251826

namespace A153265

/-- `A087204(n)-A108520(2*n+1)` -/
def P3779742245305251826.Spec : Prop :=
  ∀ n, P3779742245305251826.a n = A153265 n

end A153265

/-!
# A153266: a(n) = -4*a(n-3) + 11*a(n-2) - a(n-1), a(0) = 13, a(1) = -19, a(2) = 162.

The programs for A153266, the canonical program `A153266.P16453639625952733100` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153266 has offset 0).

The definition of A153266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-4*a(n-3)+11*a(n-2)-a(n-1)` (program `A153266.P16453639625952733100`, by `A153266.P16453639625952733100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153266.P16453639625952733100

`-4*a(n-3)+11*a(n-2)-a(n-1)` with `a(0)=13, a(1)=-19, a(2)=162`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153266

/-- `-4*a(n-3)+11*a(n-2)-a(n-1)` -/
def P16453639625952733100.Spec : Prop :=
  ∀ n, P16453639625952733100.a n = A153266 n

theorem P16453639625952733100.correct : P16453639625952733100.Spec := by
  intro n
  simp only [A153266]

end A153266

/-! ## A153266.P2116379195192827092

`A001519(n+3)+8*(-4)^n`
-/

namespace A153266.P2116379195192827092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 3) + 8 * (-4) ^ n

end

end A153266.P2116379195192827092

namespace A153266

/-- `A001519(n+3)+8*(-4)^n` -/
def P2116379195192827092.Spec : Prop :=
  ∀ n, P2116379195192827092.a n = A153266 n

end A153266

/-! ## A153266.P17983952208428478200

`ogf((13-6x)/(1+x-11x^2+4x^3))`
-/

namespace A153266.P17983952208428478200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -6] [1, 1, -11, 4] n

end

end A153266.P17983952208428478200

namespace A153266

/-- `ogf((13-6x)/(1+x-11x^2+4x^3))` -/
def P17983952208428478200.Spec : Prop :=
  ∀ n, P17983952208428478200.a n = A153266 n

end A153266

/-! ## A153266.P14988058982574733048

`A000045(2*n+5)-A099087(4*n+5)`
-/

namespace A153266.P14988058982574733048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 5) - A099087 (4 * n + 5)

end

end A153266.P14988058982574733048

namespace A153266

/-- `A000045(2*n+5)-A099087(4*n+5)` -/
def P14988058982574733048.Spec : Prop :=
  ∀ n, P14988058982574733048.a n = A153266 n

end A153266

/-! ## A153266.P5934386232947291345

`A000045(2*n+5)-A108520(4*n+6)`
-/

namespace A153266.P5934386232947291345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 5) - A108520 (4 * n + 6)

end

end A153266.P5934386232947291345

namespace A153266

/-- `A000045(2*n+5)-A108520(4*n+6)` -/
def P5934386232947291345.Spec : Prop :=
  ∀ n, P5934386232947291345.a n = A153266 n

end A153266

/-! ## A153266.P17554271087431371146

`A103609(4*n+10)-A099087(4*n+5)`
-/

namespace A153266.P17554271087431371146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (4 * n + 10) - A099087 (4 * n + 5)

end

end A153266.P17554271087431371146

namespace A153266

/-- `A103609(4*n+10)-A099087(4*n+5)` -/
def P17554271087431371146.Spec : Prop :=
  ∀ n, P17554271087431371146.a n = A153266 n

end A153266

/-!
# A153267: a(n) = -4*a(n-3) + 11*a(n-2) - a(n-1), a(0) = -5, a(1) = 39, a(2) = -110.

The programs for A153267, the canonical program `A153267.P6837733007436105427` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153267 has offset 0).

The definition of A153267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153267.P6837733007436105427

`A000032(2*(n+1))-A009117(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153267

/-- `A000032(2*(n+1))-A009117(n+2)` -/
def P6837733007436105427.Spec : Prop :=
  ∀ n, P6837733007436105427.a n = A153267 n

theorem P6837733007436105427.correct : P6837733007436105427.Spec := by
  intro n
  simp only [A153267]

end A153267

/-! ## A153267.P968574857823412490

`A099087(4*n+5)+A000032(2*(n+1))`
-/

namespace A153267.P968574857823412490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (4 * n + 5) + A000032 (2 * (n + 1))

end

end A153267.P968574857823412490

namespace A153267

/-- `A099087(4*n+5)+A000032(2*(n+1))` -/
def P968574857823412490.Spec : Prop :=
  ∀ n, P968574857823412490.a n = A153267 n

end A153267

/-! ## A153267.P478666827220533580

`A000204(2*(n+1))+A000079(n)*A122803(n+3)`
-/

namespace A153267.P478666827220533580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) + A000079 n * A122803 (n + 3)

end

end A153267.P478666827220533580

namespace A153267

/-- `A000204(2*(n+1))+A000079(n)*A122803(n+3)` -/
def P478666827220533580.Spec : Prop :=
  ∀ n, P478666827220533580.a n = A153267 n

end A153267

/-! ## A153267.P4388163234991850988

`A014217(2*(n+1))+1-A120617(2*n+3)`
-/

namespace A153267.P4388163234991850988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * (n + 1)) + 1 - A120617 (2 * n + 3)

end

end A153267.P4388163234991850988

namespace A153267

/-- `A014217(2*(n+1))+1-A120617(2*n+3)` -/
def P4388163234991850988.Spec : Prop :=
  ∀ n, P4388163234991850988.a n = A153267 n

end A153267

/-!
# A153268: Decimal expansion of log_10 (5).

The programs for A153268, there is no canonical definition to state claims against.
-/

/-! ## A153268.P10404410211454481008

`9-A007524(n)`
-/

namespace A153268.P10404410211454481008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A007524 n

end

end A153268.P10404410211454481008

/-! ## A153268.P2721327189807516441

`9-A155522(n+1)`
-/

namespace A153268.P2721327189807516441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A155522 (n + 1 + 1)

end

end A153268.P2721327189807516441

/-! ## A153268.P14791385657928859090

`9-(A155522(n)-Δ[-A155522(n)])`
-/

namespace A153268.P14791385657928859090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A155522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A155522 (n + 1) - (f1 (n + 1) - f1 n))

end

end A153268.P14791385657928859090

/-! ## A153268.P1616471757129366064

`A061601(A155522(n)-Δ[-A155522(n)])`
-/

namespace A153268.P1616471757129366064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A155522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A155522 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A153268.P1616471757129366064

/-!
# A153270: Triangle T(n, k) = Product_{j=0..k} (j*n + prime(m)), with T(n, 0) = prime(m) and m = 2, read by rows.

The programs for A153270, there is no canonical definition to state claims against.
-/

/-! ## A153270.P18157261308355818095

`lcm(3, A032741(∑[3*4^n+n+5]))`
-/

namespace A153270.P18157261308355818095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n + (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A032741 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A153270.P18157261308355818095

/-! ## A153270.P14993267314519173578

`3*A165050(A054628(n))`
-/

namespace A153270.P14993267314519173578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165050 (A054628 n).toNat

end

end A153270.P14993267314519173578

/-!
# A153273: Triangle read by rows: T(n,k) = Product_{i=0..k-2} (i*n + n - 1).

The programs for A153273, there is no canonical definition to state claims against.
-/

/-! ## A153273.P3463687693049745666

`A153187(A007401(n+1))`
-/

namespace A153273.P3463687693049745666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (A007401 (n + 1)).toNat

end

end A153273.P3463687693049745666

/-! ## A153273.P13575545410861234362

`A153187(eq[0, A153198(n)])`
-/

namespace A153273.P13575545410861234362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153273.P13575545410861234362

/-! ## A153273.P5784306620180030691

`A153187(lt[A153198(n), 1])`
-/

namespace A153273.P5784306620180030691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153198 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A153273.P5784306620180030691

/-! ## A153273.P2218642171171219426

`A153187(A014132(n+1)-1)`
-/

namespace A153273.P2218642171171219426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (A014132 (n + 1) - 1).toNat

end

end A153273.P2218642171171219426

/-! ## A153273.P9439944598553736442

`A153187(A002024(n+1)+n)`
-/

namespace A153273.P9439944598553736442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A153273.P9439944598553736442

/-! ## A153273.P13083205765168799393

`A153187(A003056(n)+1+n)`
-/

namespace A153273.P13083205765168799393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (A003056 n + 1 + (n : ℤ)).toNat

end

end A153273.P13083205765168799393

/-! ## A153273.P912793999579920576

`A153187(A002260(n+1)+A025581(n)+n)`
-/

namespace A153273.P912793999579920576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (A002260 (n + 1) + (A025581 n + (n : ℤ))).toNat

end

end A153273.P912793999579920576

/-! ## A153273.P8173573362628827975

`A153187(lt[n, A153187(n)]-1)`
-/

namespace A153273.P8173573362628827975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A153273.P8173573362628827975

/-!
# A153274: Triangle, read by rows, T(n,k) = k^(n+1) * Pochhammer(1/k, n+1).

The programs for A153274, there is no canonical definition to state claims against.
-/

/-! ## A153274.P15714841746507673486

`record[A135873(A173239(2*n+3))]`
-/

namespace A153274.P15714841746507673486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135873 (A173239 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153274.P15714841746507673486

/-! ## A153274.P2441167022869695867

`A135873(A226452(2*(n+1))+A135873(n+1))`
-/

namespace A153274.P2441167022869695867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135873 (A226452 (2 * (n + 1)) + A135873 (n + 1)).toNat

end

end A153274.P2441167022869695867

/-!
# A153275: Numbers n such that 10*n+1 is not prime.

The programs for A153275, the canonical program `A153275.P3519607136667469352` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153275 has offset 1).

The definition of A153275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053178, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153275.P3519607136667469352

`(A053178(n+1)-1)/10`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A153275

/-- `(A053178(n+1)-1)/10` -/
def P3519607136667469352.Spec : Prop :=
  ∀ n, P3519607136667469352.a n = (A153275 (n + 1) : ℚ)

end A153275

/-! ## A153275.P10453210294511629903

`comp[A024912(n+1)]`
-/

namespace A153275.P10453210294511629903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153275.P10453210294511629903

namespace A153275

/-- `comp[A024912(n+1)]` -/
def P10453210294511629903.Spec : Prop :=
  ∀ n, (P10453210294511629903.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P8218156049477761715

`comp[A126785(n+1)+1]`
-/

namespace A153275.P8218156049477761715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153275.P8218156049477761715

namespace A153275

/-- `comp[A126785(n+1)+1]` -/
def P8218156049477761715.Spec : Prop :=
  ∀ n, (P8218156049477761715.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P17789731484605745192

`lt[1, A091088(n)]`
-/

namespace A153275.P17789731484605745192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153275.P17789731484605745192

namespace A153275

/-- `lt[1, A091088(n)]` -/
def P17789731484605745192.Spec : Prop :=
  ∀ n, (P17789731484605745192.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P2406538423606736746

`eq[1, A054977(A091088(n)-1)]`
-/

namespace A153275.P2406538423606736746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A091088 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153275.P2406538423606736746

namespace A153275

/-- `eq[1, A054977(A091088(n)-1)]` -/
def P2406538423606736746.Spec : Prop :=
  ∀ n, (P2406538423606736746.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P8880260737451350524

`eq[2, A107279(A091088(n)-1)]`
-/

namespace A153275.P8880260737451350524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091088 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153275.P8880260737451350524

namespace A153275

/-- `eq[2, A107279(A091088(n)-1)]` -/
def P8880260737451350524.Spec : Prop :=
  ∀ n, (P8880260737451350524.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P8904200802429316557

`eq[0, A101264(5*n)]`
-/

namespace A153275.P8904200802429316557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153275.P8904200802429316557

namespace A153275

/-- `eq[0, A101264(5*n)]` -/
def P8904200802429316557.Spec : Prop :=
  ∀ n, (P8904200802429316557.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P1185284381232435834

`lt[A020639(10*n+1), n+2]`
-/

namespace A153275.P1185284381232435834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153275.P1185284381232435834

namespace A153275

/-- `lt[A020639(10*n+1), n+2]` -/
def P1185284381232435834.Spec : Prop :=
  ∀ n, (P1185284381232435834.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P1384670415374737365

`lt[A006530(10*n+1), A016885(n)]`
-/

namespace A153275.P1384670415374737365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153275.P1384670415374737365

namespace A153275

/-- `lt[A006530(10*n+1), A016885(n)]` -/
def P1384670415374737365.Spec : Prop :=
  ∀ n, (P1384670415374737365.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P8435268661104027121

`lt[A006530(10*n+1), A016969(n)]`
-/

namespace A153275.P8435268661104027121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153275.P8435268661104027121

namespace A153275

/-- `lt[A006530(10*n+1), A016969(n)]` -/
def P8435268661104027121.Spec : Prop :=
  ∀ n, (P8435268661104027121.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P10751138106467041907

`lt[A006530(10*n+1), 4*A109613(n)]`
-/

namespace A153275.P10751138106467041907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153275.P10751138106467041907

namespace A153275

/-- `lt[A006530(10*n+1), 4*A109613(n)]` -/
def P10751138106467041907.Spec : Prop :=
  ∀ n, (P10751138106467041907.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P15054941125299749385

`eq[1, A005171(10*n+1)]`
-/

namespace A153275.P15054941125299749385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153275.P15054941125299749385

namespace A153275

/-- `eq[1, A005171(10*n+1)]` -/
def P15054941125299749385.Spec : Prop :=
  ∀ n, (P15054941125299749385.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P15712721348612002311

`eq[1, A292438(A017281(n))]`
-/

namespace A153275.P15712721348612002311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153275.P15712721348612002311

namespace A153275

/-- `eq[1, A292438(A017281(n))]` -/
def P15712721348612002311.Spec : Prop :=
  ∀ n, (P15712721348612002311.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P10417476228599036059

`lt[A014963(10*n+1), n+2]`
-/

namespace A153275.P10417476228599036059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153275.P10417476228599036059

namespace A153275

/-- `lt[A014963(10*n+1), n+2]` -/
def P10417476228599036059.Spec : Prop :=
  ∀ n, (P10417476228599036059.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P7841334181898278324

`A008616(A053178(n+1))`
-/

namespace A153275.P7841334181898278324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A053178 (n + 1)).toNat

end

end A153275.P7841334181898278324

namespace A153275

/-- `A008616(A053178(n+1))` -/
def P7841334181898278324.Spec : Prop :=
  ∀ n, P7841334181898278324.a n = A153275 (n + 1)

end A153275

/-! ## A153275.P8694762420200730137

`eq[A055671(2*n), A055671(A017281(n))]`
-/

namespace A153275.P8694762420200730137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153275.P8694762420200730137

namespace A153275

/-- `eq[A055671(2*n), A055671(A017281(n))]` -/
def P8694762420200730137.Spec : Prop :=
  ∀ n, (P8694762420200730137.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P8258392966940422815

`eq[A055672(2*n), A055672(A017281(n))]`
-/

namespace A153275.P8258392966940422815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153275.P8258392966940422815

namespace A153275

/-- `eq[A055672(2*n), A055672(A017281(n))]` -/
def P8258392966940422815.Spec : Prop :=
  ∀ n, (P8258392966940422815.a n : ℤ) = A153275 (n + 1)

end A153275

/-! ## A153275.P3277459006890464862

`eq[A080339(2*(n+1)), A080339(A017281(n))]`
-/

namespace A153275.P3277459006890464862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153275.P3277459006890464862

namespace A153275

/-- `eq[A080339(2*(n+1)), A080339(A017281(n))]` -/
def P3277459006890464862.Spec : Prop :=
  ∀ n, (P3277459006890464862.a n : ℤ) = A153275 (n + 1)

end A153275

/-!
# A153276: Numbers n >= 0 such that 5*n+6 is not prime.

The programs for A153276, the canonical program `A153276.P18202283076938886056` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153276 has offset 1).

The definition of A153276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153276.P17579691481680692401

`comp[A081759(n+1)]`
-/

namespace A153276.P17579691481680692401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153276.P17579691481680692401

namespace A153276

/-- `comp[A081759(n+1)]` -/
def P17579691481680692401.Spec : Prop :=
  ∀ n, (P17579691481680692401.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P10176462712684915708

`comp[A024894(n+1)-1]`
-/

namespace A153276.P10176462712684915708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153276.P10176462712684915708

namespace A153276

/-- `comp[A024894(n+1)-1]` -/
def P10176462712684915708.Spec : Prop :=
  ∀ n, (P10176462712684915708.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P18202283076938886056

`eq[0, A010051(5*n+6)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153276

/-- `eq[0, A010051(5*n+6)]` -/
def P18202283076938886056.Spec : Prop :=
  ∀ n, (P18202283076938886056.a n : ℤ) = A153276 (n + 1)

theorem P18202283076938886056.correct : P18202283076938886056.Spec := by
  intro n
  simp only [A153276, Nat.add_sub_cancel]

end A153276

/-! ## A153276.P15589227064585231996

`lt[1, A001222(5*n+6)]`
-/

namespace A153276.P15589227064585231996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153276.P15589227064585231996

namespace A153276

/-- `lt[1, A001222(5*n+6)]` -/
def P15589227064585231996.Spec : Prop :=
  ∀ n, (P15589227064585231996.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P16307497483224705880

`lt[2, A000005(5*n+6)]`
-/

namespace A153276.P16307497483224705880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153276.P16307497483224705880

namespace A153276

/-- `lt[2, A000005(5*n+6)]` -/
def P16307497483224705880.Spec : Prop :=
  ∀ n, (P16307497483224705880.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P13418907942796017273

`comp[2*A024912(n+1)-1]`
-/

namespace A153276.P13418907942796017273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153276.P13418907942796017273

namespace A153276

/-- `comp[2*A024912(n+1)-1]` -/
def P13418907942796017273.Spec : Prop :=
  ∀ n, (P13418907942796017273.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P6959613273122487493

`comp[eq[1, A001222(5*n+1)]-1]`
-/

namespace A153276.P6959613273122487493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153276.P6959613273122487493

namespace A153276

/-- `comp[eq[1, A001222(5*n+1)]-1]` -/
def P6959613273122487493.Spec : Prop :=
  ∀ n, (P6959613273122487493.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P353807823344764265

`comp[eq[2, A000005(5*n+1)]-1]`
-/

namespace A153276.P353807823344764265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153276.P353807823344764265

namespace A153276

/-- `comp[eq[2, A000005(5*n+1)]-1]` -/
def P353807823344764265.Spec : Prop :=
  ∀ n, (P353807823344764265.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P5367661690905955576

`lt[A020639(5*(n+1)+1), n+3]`
-/

namespace A153276.P5367661690905955576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153276.P5367661690905955576

namespace A153276

/-- `lt[A020639(5*(n+1)+1), n+3]` -/
def P5367661690905955576.Spec : Prop :=
  ∀ n, (P5367661690905955576.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P2168378781210202584

`A153329(n+2)-1`
-/

namespace A153276.P2168378781210202584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153329 (n + 2) - 1

end

end A153276.P2168378781210202584

namespace A153276

/-- `A153329(n+2)-1` -/
def P2168378781210202584.Spec : Prop :=
  ∀ n, P2168378781210202584.a n = A153276 (n + 1)

end A153276

/-! ## A153276.P12822959803479598674

`lt[A006530(5*n+6), A016897(n)]`
-/

namespace A153276.P12822959803479598674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153276.P12822959803479598674

namespace A153276

/-- `lt[A006530(5*n+6), A016897(n)]` -/
def P12822959803479598674.Spec : Prop :=
  ∀ n, (P12822959803479598674.a n : ℤ) = A153276 (n + 1)

end A153276

/-! ## A153276.P7691738369322943008

`A023443(A153329(n+2))`
-/

namespace A153276.P7691738369322943008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153329 (n + 2)).toNat

end

end A153276.P7691738369322943008

namespace A153276

/-- `A023443(A153329(n+2))` -/
def P7691738369322943008.Spec : Prop :=
  ∀ n, P7691738369322943008.a n = A153276 (n + 1)

end A153276

/-! ## A153276.P713409795761356369

`lt[2, A000005(A016861(n))]-1`
-/

namespace A153276.P713409795761356369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A153276.P713409795761356369

namespace A153276

/-- `lt[2, A000005(A016861(n))]-1` -/
def P713409795761356369.Spec : Prop :=
  ∀ n, P713409795761356369.a n = A153276 (n + 1)

end A153276

/-! ## A153276.P11454932427726884029

`lt[A014963(5*n+6), n+2]`
-/

namespace A153276.P11454932427726884029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153276.P11454932427726884029

namespace A153276

/-- `lt[A014963(5*n+6), n+2]` -/
def P11454932427726884029.Spec : Prop :=
  ∀ n, (P11454932427726884029.a n : ℤ) = A153276 (n + 1)

end A153276

/-!
# A153277: Array read by antidiagonals of higher order Bell numbers.

The programs for A153277, there is no canonical definition to state claims against.
-/

/-! ## A153277.P9450122106098204422

`A111672(comp[∑[n]])`
-/

namespace A153277.P9450122106098204422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A153277.P9450122106098204422

/-! ## A153277.P10063759405179163188

`A144150(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A153277.P10063759405179163188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A153277.P10063759405179163188

/-! ## A153277.P14090569179615087950

`or(C(n, n²), A111672(A014132(n+1)))`
-/

namespace A153277.P14090569179615087950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A111672 (A014132 (n + 1)).toNat)

end

end A153277.P14090569179615087950

/-! ## A153277.P1201874698627840124

`or(A000007(n), A111672(A014132(n+1)))`
-/

namespace A153277.P1201874698627840124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A111672 (A014132 (n + 1)).toNat)

end

end A153277.P1201874698627840124

/-! ## A153277.P11639884042419749714

`A111672(A014132(n+1))^(A010054(n)+1)`
-/

namespace A153277.P11639884042419749714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111672 (A014132 (n + 1)).toNat : ℚ) ^ (A010054 n + 1 : ℤ)

end

end A153277.P11639884042419749714

/-! ## A153277.P3601044939219819312

`A111672(A014132(n+1))%A120875(n+1)`
-/

namespace A153277.P3601044939219819312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111672 (A014132 (n + 1)).toNat) (A120875 (n + 1))

end

end A153277.P3601044939219819312

/-! ## A153277.P15174291456509380504

`or(A010815(n²)², A111672(A014132(n+1)))`
-/

namespace A153277.P15174291456509380504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (n ^ 2) ^ 2) (A111672 (A014132 (n + 1)).toNat)

end

end A153277.P15174291456509380504

/-! ## A153277.P13047797341529270573

`A040699(Δ[n²])*A111672(A014132(n+1))`
-/

namespace A153277.P13047797341529270573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040699 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A111672 (A014132 (n + 1)).toNat

end

end A153277.P13047797341529270573

/-! ## A153277.P7111715285162409629

`A111672(A014132(n+1))+A000007(3*n+4)`
-/

namespace A153277.P7111715285162409629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (A014132 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A153277.P7111715285162409629

/-!
# A153278: Array read by antidiagonals of higher order Fubini numbers.

The programs for A153278, there is no canonical definition to state claims against.
-/

/-! ## A153278.P5007470918681315636

`A363007(lt[1, A007318(n)])`
-/

namespace A153278.P5007470918681315636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153278.P5007470918681315636

/-! ## A153278.P17025322778461285605

`A363007(lt[1, A026758(n)])`
-/

namespace A153278.P17025322778461285605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153278.P17025322778461285605

/-! ## A153278.P3064837813656443507

`A363007(lt[1, A026780(n)])`
-/

namespace A153278.P3064837813656443507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153278.P3064837813656443507

/-! ## A153278.P3799010842346965321

`A363007(lt[1, A046802(n)])`
-/

namespace A153278.P3799010842346965321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153278.P3799010842346965321

/-! ## A153278.P5223002226098369195

`A363007(lt[1, A059297(n)])`
-/

namespace A153278.P5223002226098369195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153278.P5223002226098369195

/-!
# A153279: Eigentriangle by rows, T(n,k) = A000079(n-k) * (diagonalized matrix of (1,1,3,9,27,81,...)).

The programs for A153279, the canonical program `A153279.P12459744595363898917` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153279 has offset 0).

The definition of A153279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153279.P12459744595363898917

`lcm(3, A036561(n))/3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153279

/-- `lcm(3, A036561(n))/3` -/
def P12459744595363898917.Spec : Prop :=
  ∀ n, P12459744595363898917.a n = (A153279 n : ℚ)

end A153279

/-! ## A153279.P11145683563508943429

`lcm(6, A094615(n)+1)/6`
-/

namespace A153279.P11145683563508943429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A094615 n + 1) : ℚ) / 6

end

end A153279.P11145683563508943429

namespace A153279

/-- `lcm(6, A094615(n)+1)/6` -/
def P11145683563508943429.Spec : Prop :=
  ∀ n, P11145683563508943429.a n = (A153279 n : ℚ)

end A153279

/-! ## A153279.P1975710774642977143

`A036561(∑[char[comp[∑[n]]]]-(1-round(sqrt(2*(n+1)))*char[∑[n]]))`
-/

namespace A153279.P1975710774642977143
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f5 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A153279.P1975710774642977143

namespace A153279

/-- `A036561(∑[char[comp[∑[n]]]]-(1-round(sqrt(2*(n+1)))*char[∑[n]]))` -/
def P1975710774642977143.Spec : Prop :=
  ∀ n, P1975710774642977143.a n = A153279 n

end A153279

/-! ## A153279.P18071117707344537327

`A013620(n)/A124928(n)`
-/

namespace A153279.P18071117707344537327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A124928 n : ℚ)

end

end A153279.P18071117707344537327

namespace A153279

/-- `A013620(n)/A124928(n)` -/
def P18071117707344537327.Spec : Prop :=
  ∀ n, P18071117707344537327.a n = (A153279 n : ℚ)

end A153279

/-! ## A153279.P10620015651748978489

`A247936(∑[2*n]%comp[∑[n]])`
-/

namespace A153279.P10620015651748978489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A153279.P10620015651748978489

namespace A153279

/-- `A247936(∑[2*n]%comp[∑[n]])` -/
def P10620015651748978489.Spec : Prop :=
  ∀ n, P10620015651748978489.a n = A153279 n

end A153279

/-! ## A153279.P8432457892479023415

`A247936(∑[char[∑[n]]]²-(n+1))`
-/

namespace A153279.P8432457892479023415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A153279.P8432457892479023415

namespace A153279

/-- `A247936(∑[char[∑[n]]]²-(n+1))` -/
def P8432457892479023415.Spec : Prop :=
  ∀ n, P8432457892479023415.a n = A153279 n

end A153279

/-! ## A153279.P16758229170986817407

`A341392(A048645(n+1))`
-/

namespace A153279.P16758229170986817407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A048645 (n + 1)).toNat

end

end A153279.P16758229170986817407

namespace A153279

/-- `A341392(A048645(n+1))` -/
def P16758229170986817407.Spec : Prop :=
  ∀ n, P16758229170986817407.a n = A153279 n

end A153279

/-! ## A153279.P9140193450750044436

`A340368(A276618(n))`
-/

namespace A153279.P9140193450750044436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340368 (A276618 n).toNat

end

end A153279.P9140193450750044436

namespace A153279

/-- `A340368(A276618(n))` -/
def P9140193450750044436.Spec : Prop :=
  ∀ n, P9140193450750044436.a n = A153279 n

end A153279

/-! ## A153279.P8754931913187604159

`A324873(A036561(n))`
-/

namespace A153279.P8754931913187604159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (A036561 n).toNat

end

end A153279.P8754931913187604159

namespace A153279

/-- `A324873(A036561(n))` -/
def P8754931913187604159.Spec : Prop :=
  ∀ n, P8754931913187604159.a n = A153279 n

end A153279

/-! ## A153279.P3862799978707313000

`A160595(lcm(3, A036561(n)))`
-/

namespace A153279.P3862799978707313000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (Int.lcm 3 (A036561 n))

end

end A153279.P3862799978707313000

namespace A153279

/-- `A160595(lcm(3, A036561(n)))` -/
def P3862799978707313000.Spec : Prop :=
  ∀ n, P3862799978707313000.a n = A153279 n

end A153279

/-!
# A153280: Eigensequence of triangle A153279.

The programs for A153280, there is no canonical definition to state claims against.
-/

/-! ## A153280.P14068047551568781043

`∏[3*a(n-1)-4]` with `a(0)=1, a(1)=3`
-/

namespace A153280.P14068047551568781043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153280.P14068047551568781043

/-! ## A153280.P9713805289607724570

`∏[or(1, floor(3^(n-1))+1)]`
-/

namespace A153280.P9713805289607724570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153280.P9713805289607724570

/-! ## A153280.P12224497411485395352

`(3^(n-1)+2)*a(n-1)` with `a(0)=1`
-/

namespace A153280.P12224497411485395352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2) * a (n - 1)

end

end A153280.P12224497411485395352

/-! ## A153280.P634918273947915825

`∏[ceil(sin(n)²)+floor(3^(n-1))+1]`
-/

namespace A153280.P634918273947915825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A153280.P634918273947915825

/-! ## A153280.P13856367509303011757

`∏{d}[floor(3^(n-1)), #+2]`
-/

namespace A153280.P13856367509303011757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (d + 2)

end

end A153280.P13856367509303011757

/-!
# A153281: Triangle read by rows, A130321 * A127647. Also, number of subsets of [n+2] with consecutive integers that start at k.

The programs for A153281, the canonical program `A153281.P9058196011063740068` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153281 has offset 0).

The definition of A153281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153281.P4022532411972119485

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A104763(n+1)`
-/

namespace A153281.P4022532411972119485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A104763 (n + 1) : ℚ)

end

end A153281.P4022532411972119485

namespace A153281

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A104763(n+1)` -/
def P4022532411972119485.Spec : Prop :=
  ∀ n, P4022532411972119485.a n = (A153281 n : ℚ)

end A153281

/-! ## A153281.P9058196011063740068

`A104763(n+1)*A130321(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153281

/-- `A104763(n+1)*A130321(n)` -/
def P9058196011063740068.Spec : Prop :=
  ∀ n, P9058196011063740068.a n = A153281 n

theorem P9058196011063740068.correct : P9058196011063740068.Spec := by
  intro n
  simp only [A153281]

end A153281

/-! ## A153281.P15094643580786705645

`sqrt(A262616(n))*A104763(n+1)`
-/

namespace A153281.P15094643580786705645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A104763 (n + 1) : ℝ)

end

end A153281.P15094643580786705645

namespace A153281

/-- `sqrt(A262616(n))*A104763(n+1)` -/
def P15094643580786705645.Spec : Prop :=
  ∀ n, P15094643580786705645.a n = (A153281 n : ℝ)

end A153281

/-! ## A153281.P1010572840544461266

`2^A025581(n)*A104763(n+1)`
-/

namespace A153281.P1010572840544461266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A104763 (n + 1) : ℚ)

end

end A153281.P1010572840544461266

namespace A153281

/-- `2^A025581(n)*A104763(n+1)` -/
def P1010572840544461266.Spec : Prop :=
  ∀ n, P1010572840544461266.a n = (A153281 n : ℚ)

end A153281

/-! ## A153281.P6825686346843230225

`A000045(1-C(∑[char[∑[n]]], 2)+n)*A130321(n)`
-/

namespace A153281.P6825686346843230225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A130321 n

end

end A153281.P6825686346843230225

namespace A153281

/-- `A000045(1-C(∑[char[∑[n]]], 2)+n)*A130321(n)` -/
def P6825686346843230225.Spec : Prop :=
  ∀ n, P6825686346843230225.a n = A153281 n

end A153281

/-! ## A153281.P17055556639933349215

`A000045(A002260(n+1))*A130321(n)`
-/

namespace A153281.P17055556639933349215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A130321 n

end

end A153281.P17055556639933349215

namespace A153281

/-- `A000045(A002260(n+1))*A130321(n)` -/
def P17055556639933349215.Spec : Prop :=
  ∀ n, P17055556639933349215.a n = A153281 n

end A153281

/-! ## A153281.P14075491377531109240

`A000045(A002262(n)+1)*A130321(n)`
-/

namespace A153281.P14075491377531109240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 1).toNat * A130321 n

end

end A153281.P14075491377531109240

namespace A153281

/-- `A000045(A002262(n)+1)*A130321(n)` -/
def P14075491377531109240.Spec : Prop :=
  ∀ n, P14075491377531109240.a n = A153281 n

theorem P14075491377531109240.correct : P14075491377531109240.Spec := by
  intro n
  simp only [A153281, Nat.add_sub_cancel, A153281.P14075491377531109240.a, A153281.P9058196011063740068.a, A000045, A000045.P11838749114346432762.a, A002262, A002262.P12129691700837801527.a, A104763, A104763.P5539537034161833375.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A002260, A002260.P769748059679640451.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A153281

/-! ## A153281.P9136900500467266741

`A000045(A134868(n+1))*A130321(n)`
-/

namespace A153281.P9136900500467266741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A134868 (n + 1)).toNat * A130321 n

end

end A153281.P9136900500467266741

namespace A153281

/-- `A000045(A134868(n+1))*A130321(n)` -/
def P9136900500467266741.Spec : Prop :=
  ∀ n, P9136900500467266741.a n = A153281 n

end A153281

/-! ## A153281.P5689573395487222798

`A130321(n)*A141169(comp[∑[n]])`
-/

namespace A153281.P5689573395487222798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A141169 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A153281.P5689573395487222798

namespace A153281

/-- `A130321(n)*A141169(comp[∑[n]])` -/
def P5689573395487222798.Spec : Prop :=
  ∀ n, P5689573395487222798.a n = A153281 n

end A153281

/-! ## A153281.P13900161907113667895

`A000045(A057555(Δ[n²]))*A130321(n)`
-/

namespace A153281.P13900161907113667895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A130321 n

end

end A153281.P13900161907113667895

namespace A153281

/-- `A000045(A057555(Δ[n²]))*A130321(n)` -/
def P13900161907113667895.Spec : Prop :=
  ∀ n, P13900161907113667895.a n = A153281 n

end A153281

/-!
# A153282: Numbers k such that 3*k + 4 is not prime.

The programs for A153282, the canonical program `A153282.P6158274056639244414` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153282 has offset 1).

The definition of A153282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153282.P3695281161563274534

`comp[A034936(n+1)]`
-/

namespace A153282.P3695281161563274534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153282.P3695281161563274534

namespace A153282

/-- `comp[A034936(n+1)]` -/
def P3695281161563274534.Spec : Prop :=
  ∀ n, (P3695281161563274534.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P8620700993314370767

`lt[A156706(n+1), 1]`
-/

namespace A153282.P8620700993314370767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153282.P8620700993314370767

namespace A153282

/-- `lt[A156706(n+1), 1]` -/
def P8620700993314370767.Spec : Prop :=
  ∀ n, (P8620700993314370767.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P7533540434162731820

`lt[1, A245838(n+1)]`
-/

namespace A153282.P7533540434162731820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P7533540434162731820

namespace A153282

/-- `lt[1, A245838(n+1)]` -/
def P7533540434162731820.Spec : Prop :=
  ∀ n, (P7533540434162731820.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P8854089977907237582

`comp[A089953(n+1)+1]`
-/

namespace A153282.P8854089977907237582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153282.P8854089977907237582

namespace A153282

/-- `comp[A089953(n+1)+1]` -/
def P8854089977907237582.Spec : Prop :=
  ∀ n, (P8854089977907237582.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P11680846500608888459

`comp[A024892(n+1)-1]`
-/

namespace A153282.P11680846500608888459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153282.P11680846500608888459

namespace A153282

/-- `comp[A024892(n+1)-1]` -/
def P11680846500608888459.Spec : Prop :=
  ∀ n, (P11680846500608888459.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P17208589907914752579

`eq[0, A010051(3*n+4)]`
-/

namespace A153282.P17208589907914752579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153282.P17208589907914752579

namespace A153282

/-- `eq[0, A010051(3*n+4)]` -/
def P17208589907914752579.Spec : Prop :=
  ∀ n, (P17208589907914752579.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P11134483063706878209

`eq[1, A005171(3*n+4)]`
-/

namespace A153282.P11134483063706878209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153282.P11134483063706878209

namespace A153282

/-- `eq[1, A005171(3*n+4)]` -/
def P11134483063706878209.Spec : Prop :=
  ∀ n, (P11134483063706878209.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P3028038481524672663

`lt[0, A085341(3*n+4)]`
-/

namespace A153282.P3028038481524672663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P3028038481524672663

namespace A153282

/-- `lt[0, A085341(3*n+4)]` -/
def P3028038481524672663.Spec : Prop :=
  ∀ n, (P3028038481524672663.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P16515632127844329853

`lt[1, A001222(3*n+4)]`
-/

namespace A153282.P16515632127844329853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P16515632127844329853

namespace A153282

/-- `lt[1, A001222(3*n+4)]` -/
def P16515632127844329853.Spec : Prop :=
  ∀ n, (P16515632127844329853.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P12759939859169124198

`lt[2, A000005(3*n+4)]`
-/

namespace A153282.P12759939859169124198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P12759939859169124198

namespace A153282

/-- `lt[2, A000005(3*n+4)]` -/
def P12759939859169124198.Spec : Prop :=
  ∀ n, (P12759939859169124198.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P3365873846490575694

`lt[3, A319339(3*n+4)]`
-/

namespace A153282.P3365873846490575694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319339 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P3365873846490575694

namespace A153282

/-- `lt[3, A319339(3*n+4)]` -/
def P3365873846490575694.Spec : Prop :=
  ∀ n, (P3365873846490575694.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P552902727527177936

`comp[2*A153218(n+1)+1]`
-/

namespace A153282.P552902727527177936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153282.P552902727527177936

namespace A153282

/-- `comp[2*A153218(n+1)+1]` -/
def P552902727527177936.Spec : Prop :=
  ∀ n, (P552902727527177936.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P849870461485559243

`comp[2*A024899(n+1)-1]`
-/

namespace A153282.P849870461485559243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153282.P849870461485559243

namespace A153282

/-- `comp[2*A024899(n+1)-1]` -/
def P849870461485559243.Spec : Prop :=
  ∀ n, (P849870461485559243.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P6158274056639244414

`eq[1, A066247(3*n+1)]-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153282

/-- `eq[1, A066247(3*n+1)]-1` -/
def P6158274056639244414.Spec : Prop :=
  ∀ n, P6158274056639244414.a n = A153282 (n + 1)

theorem P6158274056639244414.correct : P6158274056639244414.Spec := by
  intro n
  simp only [A153282, Nat.add_sub_cancel]

end A153282

/-! ## A153282.P5850538887468782032

`lt[A020639(3*n+4), n+3]`
-/

namespace A153282.P5850538887468782032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153282.P5850538887468782032

namespace A153282

/-- `lt[A020639(3*n+4), n+3]` -/
def P5850538887468782032.Spec : Prop :=
  ∀ n, (P5850538887468782032.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P425018848872630605

`lt[A006530(3*n+1), 2*n+1]-1`
-/

namespace A153282.P425018848872630605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A153282.P425018848872630605

namespace A153282

/-- `lt[A006530(3*n+1), 2*n+1]-1` -/
def P425018848872630605.Spec : Prop :=
  ∀ n, P425018848872630605.a n = A153282 (n + 1)

end A153282

/-! ## A153282.P7111085414529158792

`lt[3, A000040(A319355(3*n+4))]`
-/

namespace A153282.P7111085414529158792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A319355 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153282.P7111085414529158792

namespace A153282

/-- `lt[3, A000040(A319355(3*n+4))]` -/
def P7111085414529158792.Spec : Prop :=
  ∀ n, (P7111085414529158792.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P2745762860661346633

`lt[A319338(A319355(3*n+4)), A319357(3*n+4)]`
-/

namespace A153282.P2745762860661346633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319338 (A319355 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153282.P2745762860661346633

namespace A153282

/-- `lt[A319338(A319355(3*n+4)), A319357(3*n+4)]` -/
def P2745762860661346633.Spec : Prop :=
  ∀ n, (P2745762860661346633.a n : ℤ) = A153282 (n + 1)

end A153282

/-! ## A153282.P16311147646565161715

`A153309(n+2)-1`
-/

namespace A153282.P16311147646565161715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153309 (n + 2) - 1

end

end A153282.P16311147646565161715

namespace A153282

/-- `A153309(n+2)-1` -/
def P16311147646565161715.Spec : Prop :=
  ∀ n, P16311147646565161715.a n = A153282 (n + 1)

end A153282

/-! ## A153282.P10123311121976388282

`A153184(n+2)-2`
-/

namespace A153282.P10123311121976388282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 2) - 2

end

end A153282.P10123311121976388282

namespace A153282

/-- `A153184(n+2)-2` -/
def P10123311121976388282.Spec : Prop :=
  ∀ n, P10123311121976388282.a n = A153282 (n + 1)

end A153282

/-!
# A153283: A triangular sequence designed with row sums 2*3^n.

The programs for A153283, there is no canonical definition to state claims against.
-/

/-! ## A153283.P4267446621552890939

`A153288(n)-A212619(A146767(n))`
-/

namespace A153283.P4267446621552890939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153288 n - A212619 (A146767 n).toNat

end

end A153283.P4267446621552890939

/-! ## A153283.P16803475263493136349

`A153288(n)-A010894(A004201(n+1))`
-/

namespace A153283.P16803475263493136349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153288 n - A010894 ((A004201 (n + 1)).toNat + 21)

end

end A153283.P16803475263493136349

/-! ## A153283.P14441968373170708092

`A153288(n*A061653(n+1))`
-/

namespace A153283.P14441968373170708092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153288 ((n : ℤ) * A061653 (n + 1)).toNat

end

end A153283.P14441968373170708092

/-! ## A153283.P3320677564312985943

`A153288(n^A061653(n+1))`
-/

namespace A153283.P3320677564312985943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153288 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061653 (n + 1) : ℤ))).toNat

end

end A153283.P3320677564312985943

/-! ## A153283.P17074187872771731706

`A153288(n)%A219049(n+1)`
-/

namespace A153283.P17074187872771731706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153288 n) (A219049 (n + 1))

end

end A153283.P17074187872771731706

/-!
# A153285: a(1)=1; for n > 1, a(n) = n^2 + Sum_{j=1..n-1} (-1)^j*a(j).

The programs for A153285, the canonical program `A153285.P9503037648592965102` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153285 has offset 1).

The definition of A153285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153285.P9503037648592965102

`∑[14-a(n-1)]-a(n-1)-3+n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153285

/-- `∑[14-a(n-1)]-a(n-1)-3+n` -/
def P9503037648592965102.Spec : Prop :=
  ∀ n, P9503037648592965102.a n = A153285 (n + 1)

theorem P9503037648592965102.correct : P9503037648592965102.Spec := by
  intro n
  simp only [A153285, Nat.add_sub_cancel]

end A153285

/-! ## A153285.P9874854816734865351

`∑[14-a(n-1)]-a(n-1)-(3-n)` with `a(0)=1, a(1)=3`
-/

namespace A153285.P9874854816734865351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - (3 - (n : ℤ))

end

end A153285.P9874854816734865351

namespace A153285

/-- `∑[14-a(n-1)]-a(n-1)-(3-n)` -/
def P9874854816734865351.Spec : Prop :=
  ∀ n, P9874854816734865351.a n = A153285 (n + 1)

theorem P9874854816734865351.correct : P9874854816734865351.Spec := by
  intro n
  simp only [A153285, Nat.add_sub_cancel, A153285.P9874854816734865351.f1, A153285.P9874854816734865351.a, A153285.P9503037648592965102.f1, A153285.P9503037648592965102.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153285

/-! ## A153285.P9160705411771846520

`gcd(n*(12*n+4)-1, 2*((6*n+1)*round(n/2)-n))`
-/

namespace A153285.P9160705411771846520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n * (12 * n + 4) : ℤ) - 1) (2 * ((6 * n + 1 : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 2) - (n : ℤ)))

end

end A153285.P9160705411771846520

namespace A153285

/-- `gcd(n*(12*n+4)-1, 2*((6*n+1)*round(n/2)-n))` -/
def P9160705411771846520.Spec : Prop :=
  ∀ n, (P9160705411771846520.a n : ℤ) = A153285 (n + 1)

end A153285

/-! ## A153285.P3558638824720459027

`2*(A019425(n+1)+n)-1`
-/

namespace A153285.P3558638824720459027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019425 (n + 1) + (n : ℤ)) - 1

end

end A153285.P3558638824720459027

namespace A153285

/-- `2*(A019425(n+1)+n)-1` -/
def P3558638824720459027.Spec : Prop :=
  ∀ n, P3558638824720459027.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P10889604310743778827

`A062157(n)+A035877(n)`
-/

namespace A153285.P10889604310743778827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A035877 n

end

end A153285.P10889604310743778827

namespace A153285

/-- `A062157(n)+A035877(n)` -/
def P10889604310743778827.Spec : Prop :=
  ∀ n, P10889604310743778827.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P2129961054828487797

`A160912(n+1)-A123169(n+1)`
-/

namespace A153285.P2129961054828487797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) - A123169 (n + 1)

end

end A153285.P2129961054828487797

namespace A153285

/-- `A160912(n+1)-A123169(n+1)` -/
def P2129961054828487797.Spec : Prop :=
  ∀ n, P2129961054828487797.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P14155455732263978359

`A014681(n)+A028387(n)-A014681(n)²`
-/

namespace A153285.P14155455732263978359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A028387 n - A014681 n ^ 2)

end

end A153285.P14155455732263978359

namespace A153285

/-- `A014681(n)+A028387(n)-A014681(n)²` -/
def P14155455732263978359.Spec : Prop :=
  ∀ n, P14155455732263978359.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P11020632219625335990

`abs(∑[4*Δ[A266285(n)]]-1)`
-/

namespace A153285.P11020632219625335990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A153285.P11020632219625335990

namespace A153285

/-- `abs(∑[4*Δ[A266285(n)]]-1)` -/
def P11020632219625335990.Spec : Prop :=
  ∀ n, P11020632219625335990.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P7594391247109008411

`A131098(A266285(n+1))`
-/

namespace A153285.P7594391247109008411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A266285 (n + 1)).toNat

end

end A153285.P7594391247109008411

namespace A153285

/-- `A131098(A266285(n+1))` -/
def P7594391247109008411.Spec : Prop :=
  ∀ n, P7594391247109008411.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P9681213600158548778

`A141310(3*n)*A141310(n+1)-A319701(2*n+1)`
-/

namespace A153285.P9681213600158548778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (3 * n) * A141310 (n + 1) - A319701 (2 * n + 1)

end

end A153285.P9681213600158548778

namespace A153285

/-- `A141310(3*n)*A141310(n+1)-A319701(2*n+1)` -/
def P9681213600158548778.Spec : Prop :=
  ∀ n, P9681213600158548778.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P18126005845543929084

`A004273(n+1)+A000035(n+1)*A004275(2*n)`
-/

namespace A153285.P18126005845543929084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + A000035 (n + 1) * A004275 (2 * n)

end

end A153285.P18126005845543929084

namespace A153285

/-- `A004273(n+1)+A000035(n+1)*A004275(2*n)` -/
def P18126005845543929084.Spec : Prop :=
  ∀ n, P18126005845543929084.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P18302587614584089761

`A266724(2*n)+Δ[A266722(n)]`
-/

namespace A153285.P18302587614584089761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (2 * n) + (f1 (n + 1) - f1 n)

end

end A153285.P18302587614584089761

namespace A153285

/-- `A266724(2*n)+Δ[A266722(n)]` -/
def P18302587614584089761.Spec : Prop :=
  ∀ n, P18302587614584089761.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P4440502690139825416

`A267354(2*n)+A267352(n+1)-A267354(n+1)`
-/

namespace A153285.P4440502690139825416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (2 * n) + (A267352 (n + 1) - A267354 (n + 1))

end

end A153285.P4440502690139825416

namespace A153285

/-- `A267354(2*n)+A267352(n+1)-A267354(n+1)` -/
def P4440502690139825416.Spec : Prop :=
  ∀ n, P4440502690139825416.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P10633650490567187643

`A019425(A056699(2*n+1))+comp[A056699(2*n+1)]`
-/

namespace A153285.P10633650490567187643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A056699 (2 * n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A153285.P10633650490567187643

namespace A153285

/-- `A019425(A056699(2*n+1))+comp[A056699(2*n+1)]` -/
def P10633650490567187643.Spec : Prop :=
  ∀ n, P10633650490567187643.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P7901173608616551220

`A003815(2*n)+A003815(2*n+1)*A053438(2*n)`
-/

namespace A153285.P7901173608616551220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n) + A003815 (2 * n + 1) * A053438 (2 * n)

end

end A153285.P7901173608616551220

namespace A153285

/-- `A003815(2*n)+A003815(2*n+1)*A053438(2*n)` -/
def P7901173608616551220.Spec : Prop :=
  ∀ n, P7901173608616551220.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P11025735040795282316

`A257088(n)+A257088(A257088(n))-A033999(n)`
-/

namespace A153285.P11025735040795282316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + (A257088 (A257088 n).toNat - A033999 n)

end

end A153285.P11025735040795282316

namespace A153285

/-- `A257088(n)+A257088(A257088(n))-A033999(n)` -/
def P11025735040795282316.Spec : Prop :=
  ∀ n, P11025735040795282316.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P16540082613849273000

`or(A266256(n), A266258(3*n))`
-/

namespace A153285.P16540082613849273000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266256 n) (A266258 (3 * n))

end

end A153285.P16540082613849273000

namespace A153285

/-- `or(A266256(n), A266258(3*n))` -/
def P16540082613849273000.Spec : Prop :=
  ∀ n, P16540082613849273000.a n = A153285 (n + 1)

end A153285

/-! ## A153285.P11325649137100796417

`A290562(A035877(n))`
-/

namespace A153285.P11325649137100796417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 (A035877 n).toNat

end

end A153285.P11325649137100796417

namespace A153285

/-- `A290562(A035877(n))` -/
def P11325649137100796417.Spec : Prop :=
  ∀ n, P11325649137100796417.a n = A153285 (n + 1)

end A153285

/-!
# A153286: a(n) = n^3 + sum((-1)^j*a(j)); for j=1 to n-1; a(1)=1.

The programs for A153286, there is no canonical definition to state claims against.
-/

/-! ## A153286.P10053413981335397831

`A104177(A004669(n))`
-/

namespace A153286.P10053413981335397831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104177 (A004669 n).toNat

end

end A153286.P10053413981335397831

/-!
# A153287: First differences of A152738.

The programs for A153287, the canonical program `A153287.P4753606954204678473` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153287 has offset 0).

The definition of A153287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153287.P4753606954204678473

`Δ[floor(n²/ϕ)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153287

/-- `Δ[floor(n²/ϕ)]` -/
def P4753606954204678473.Spec : Prop :=
  ∀ n, P4753606954204678473.a n = A153287 n

theorem P4753606954204678473.correct : P4753606954204678473.Spec := by
  intro n
  simp only [A153287]

end A153287

/-! ## A153287.P12713745575868025677

`Δ[ceil(n²/ϕ)]%Δ[n²]`
-/

namespace A153287.P12713745575868025677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A153287.P12713745575868025677

namespace A153287

/-- `Δ[ceil(n²/ϕ)]%Δ[n²]` -/
def P12713745575868025677.Spec : Prop :=
  ∀ n, P12713745575868025677.a n = A153287 n

end A153287

/-! ## A153287.P4993738153648922182

`Δ[ceil(n²/ϕ)]*A057427(n)`
-/

namespace A153287.P4993738153648922182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A153287.P4993738153648922182

namespace A153287

/-- `Δ[ceil(n²/ϕ)]*A057427(n)` -/
def P4993738153648922182.Spec : Prop :=
  ∀ n, P4993738153648922182.a n = A153287 n

end A153287

/-! ## A153287.P7234277314531425336

`abs(Δ[A152738(n)])`
-/

namespace A153287.P7234277314531425336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A153287.P7234277314531425336

namespace A153287

/-- `abs(Δ[A152738(n)])` -/
def P7234277314531425336.Spec : Prop :=
  ∀ n, P7234277314531425336.a n = A153287 n

end A153287

/-! ## A153287.P5694310628921735008

`Δ[A293400(n)]-(2*n+1)`
-/

namespace A153287.P5694310628921735008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)

end

end A153287.P5694310628921735008

namespace A153287

/-- `Δ[A293400(n)]-(2*n+1)` -/
def P5694310628921735008.Spec : Prop :=
  ∀ n, P5694310628921735008.a n = A153287 n

end A153287

/-! ## A153287.P16199691691172608229

`Δ[A293407(n)]-A000007(n)`
-/

namespace A153287.P16199691691172608229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A153287.P16199691691172608229

namespace A153287

/-- `Δ[A293407(n)]-A000007(n)` -/
def P16199691691172608229.Spec : Prop :=
  ∀ n, P16199691691172608229.a n = A153287 n

end A153287

/-! ## A153287.P5026860689980710661

`∑{d}[Δ[A152738(n)], A000010(#)]`
-/

namespace A153287.P5026860689980710661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A153287.P5026860689980710661

namespace A153287

/-- `∑{d}[Δ[A152738(n)], A000010(#)]` -/
def P5026860689980710661.Spec : Prop :=
  ∀ n, P5026860689980710661.a n = A153287 n

end A153287

/-! ## A153287.P17474838964955579557

`A152738(n+1)-A152738(n)`
-/

namespace A153287.P17474838964955579557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152738 (n + 1) - A152738 n

end

end A153287.P17474838964955579557

namespace A153287

/-- `A152738(n+1)-A152738(n)` -/
def P17474838964955579557.Spec : Prop :=
  ∀ n, P17474838964955579557.a n = A153287 n

end A153287

/-! ## A153287.P4054965462695931194

`A293407(A057427(n)+n)-A293407(n)`
-/

namespace A153287.P4054965462695931194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 (A057427 n + (n : ℤ)).toNat - A293407 n

end

end A153287.P4054965462695931194

namespace A153287

/-- `A293407(A057427(n)+n)-A293407(n)` -/
def P4054965462695931194.Spec : Prop :=
  ∀ n, P4054965462695931194.a n = A153287 n

end A153287

/-! ## A153287.P2420406859615400139

`A293407(n-A057428(n))-A293407(n)`
-/

namespace A153287.P2420406859615400139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 ((n : ℤ) - A057428 n).toNat - A293407 n

end

end A153287.P2420406859615400139

namespace A153287

/-- `A293407(n-A057428(n))-A293407(n)` -/
def P2420406859615400139.Spec : Prop :=
  ∀ n, P2420406859615400139.a n = A153287 n

end A153287

/-! ## A153287.P13572201084614625665

`A001222(A027746(n+1))*Δ[A293407(n)]`
-/

namespace A153287.P13572201084614625665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A027746 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A153287.P13572201084614625665

namespace A153287

/-- `A001222(A027746(n+1))*Δ[A293407(n)]` -/
def P13572201084614625665.Spec : Prop :=
  ∀ n, P13572201084614625665.a n = A153287 n

end A153287

/-! ## A153287.P17104035034633395326

`abs(Δ[A060143(n²)])`
-/

namespace A153287.P17104035034633395326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A153287.P17104035034633395326

namespace A153287

/-- `abs(Δ[A060143(n²)])` -/
def P17104035034633395326.Spec : Prop :=
  ∀ n, P17104035034633395326.a n = A153287 n

end A153287

/-!
# A153288: A triangular sequence designed with row sums 2*3^n with first column A064263.

The programs for A153288, there is no canonical definition to state claims against.
-/

/-! ## A153288.P17223430911450243318

`A212619(A146767(n))+A153283(n)`
-/

namespace A153288.P17223430911450243318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A146767 n).toNat + A153283 n

end

end A153288.P17223430911450243318

/-! ## A153288.P5229780074996862471

`A153283(n)+A010894(A004201(n+1))`
-/

namespace A153288.P5229780074996862471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153283 n + A010894 ((A004201 (n + 1)).toNat + 21)

end

end A153288.P5229780074996862471

/-!
# A153289: A triangular sequence designed with row sums near 3^n: t(n,m)=If[m == 0 || m == n, Floor[3^n/2^n], Floor[(3^n/2^n)*Binomial[n, m]] + 1].

The programs for A153289, there is no canonical definition to state claims against.
-/

/-! ## A153289.P15622180041747570910

`A002487(A093893(A198155(n+1)))`
-/

namespace A153289.P15622180041747570910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A093893 (A198155 (n + 1)).toNat).toNat

end

end A153289.P15622180041747570910

/-! ## A153289.P13368936760959854043

`A216672(A000124(A183474(n+1)))`
-/

namespace A153289.P13368936760959854043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (A000124 (A183474 (n + 1)).toNat).toNat

end

end A153289.P13368936760959854043

/-! ## A153289.P5129744634275522639

`A342517(A032741(A175840(n)²))`
-/

namespace A153289.P5129744634275522639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A032741 (A175840 n ^ 2).toNat).toNat

end

end A153289.P5129744634275522639

/-! ## A153289.P15242238738397406467

`or(A016095(n), A053989(A187940(n+1)))`
-/

namespace A153289.P15242238738397406467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016095 n) (A053989 (A187940 (n + 1)).toNat)

end

end A153289.P15242238738397406467

/-!
# A153291: G.f.: A(x) = F(x*F(x)) where F(x) = 1 + x*F(x)^3 is the g.f. of A001764.

The programs for A153291, there is no canonical definition to state claims against.
-/

/-! ## A153291.P6763113613932967008

`A028310(A101478(n)+A008651(n))`
-/

namespace A153291.P6763113613932967008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A101478 n + A008651 n).toNat

end

end A153291.P6763113613932967008

/-! ## A153291.P1478230949635050794

`A101478(n)+A025426(A075155(n))`
-/

namespace A153291.P1478230949635050794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101478 n + A025426 (A075155 n).toNat

end

end A153291.P1478230949635050794

/-! ## A153291.P15365164328475624780

`A101478(n)+A010060(A151201(n))`
-/

namespace A153291.P15365164328475624780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101478 n + A010060 (A151201 n).toNat

end

end A153291.P15365164328475624780

/-!
# A153292: G.f.: A(x) = F(x*F(x)^2) where F(x) = 1 + x*F(x)^3 is the g.f. of A001764.

The programs for A153292, there is no canonical definition to state claims against.
-/

/-! ## A153292.P2015053458844612933

`A336285(A062766((1-n)²+n)-1)`
-/

namespace A153292.P2015053458844612933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (A062766 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat - 1).toNat

end

end A153292.P2015053458844612933

/-! ## A153292.P17857345620378786790

`A153392(n)-A131508(A153398(n))`
-/

namespace A153292.P17857345620378786790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153392 n - A131508 (A153398 n).toNat

end

end A153292.P17857345620378786790

/-!
# A153293: G.f.: A(x) = F(x*F(x)^3) = F(F(x)-1) where F(x) = 1 + x*F(x)^3 is the g.f. of A001764.

The programs for A153293, there is no canonical definition to state claims against.
-/

/-! ## A153293.P17434567733344987882

`A013936(A181967(n+1)+A000142(n))`
-/

namespace A153293.P17434567733344987882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (A181967 (n + 1) + A000142 n).toNat

end

end A153293.P17434567733344987882

/-! ## A153293.P17333206514114509612

`A000069(A263186(n+1))-A336490(n+1)`
-/

namespace A153293.P17333206514114509612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A263186 (n + 1)).toNat - A336490 (n + 1)

end

end A153293.P17333206514114509612

/-!
# A153294: G.f.: A(x) = F(x*F(x)^2) = F(F(x)-1) where F(x) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153294, there is no canonical definition to state claims against.
-/

/-! ## A153294.P4871731816563809115

`A121496(A249793(n))`
-/

namespace A153294.P4871731816563809115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A249793 n).toNat

end

end A153294.P4871731816563809115

/-! ## A153294.P13628080298658165403

`A028242(A249793(n)-1)`
-/

namespace A153294.P13628080298658165403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A249793 n - 1).toNat

end

end A153294.P13628080298658165403

/-! ## A153294.P11069801018301844295

`A116921(A249793(n)+2)`
-/

namespace A153294.P11069801018301844295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A249793 n + 2).toNat

end

end A153294.P11069801018301844295

/-!
# A153295: G.f.: A(x) = F(x*G(x)^2) where F(x) = G(x/F(x)) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A153295, there is no canonical definition to state claims against.
-/

/-! ## A153295.P2011889422420428005

`A271932(n+1)+A122841(A000110(n))`
-/

namespace A153295.P2011889422420428005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271932 (n + 1) + A122841 (A000110 n).toNat

end

end A153295.P2011889422420428005

/-! ## A153295.P3663372363774874977

`A307598(A293606(n))+A271932(n+1)`
-/

namespace A153295.P3663372363774874977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A293606 n).toNat + A271932 (n + 1)

end

end A153295.P3663372363774874977

/-! ## A153295.P122914973041431684

`A002839(n+1)+A000027(A271932(n+1))`
-/

namespace A153295.P122914973041431684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + A000027 (A271932 (n + 1)).toNat

end

end A153295.P122914973041431684

/-! ## A153295.P8012934964285246904

`A271932(n+1)+A137579(A271377(n+1))`
-/

namespace A153295.P8012934964285246904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271932 (n + 1) + A137579 (A271377 (n + 1)).toNat

end

end A153295.P8012934964285246904

/-!
# A153296: G.f.: A(x) = F(x*G(x)^3) = F(G(x)-1) where F(x) = G(x/F(x)) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A153296, there is no canonical definition to state claims against.
-/

/-! ## A153296.P15719819003043570943

`A110655(record[∑[A077922(n)]])`
-/

namespace A153296.P15719819003043570943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153296.P15719819003043570943

/-! ## A153296.P4195101170523024360

`A338802(∑[A340234(n+1)])`
-/

namespace A153296.P4195101170523024360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338802 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153296.P4195101170523024360

/-!
# A153297: G.f.: A(x) = F(x*G(x)^2)^2 where F(x) = G(x/F(x)) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A153297, there is no canonical definition to state claims against.
-/

/-! ## A153297.P1125950786376860900

`A084947(n)/A004879(n+1)!`
-/

namespace A153297.P1125950786376860900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084947 n : ℚ) / (Nat.factorial (A004879 (n + 1)).toNat : ℚ)

end

end A153297.P1125950786376860900

/-! ## A153297.P15646356583343224290

`A084947(n)/A124773(A000079(n))`
-/

namespace A153297.P15646356583343224290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084947 n : ℚ) / (A124773 (A000079 n).toNat : ℚ)

end

end A153297.P15646356583343224290

/-! ## A153297.P1305531635024012772

`A084947(n)/A255408(A000142(n))`
-/

namespace A153297.P1305531635024012772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084947 n : ℚ) / (A255408 (A000142 n).toNat : ℚ)

end

end A153297.P1305531635024012772

/-!
# A153298: G.f.: A(x) = F(x*G(x)^3)^2 = F(G(x)-1)^2 where F(x) = G(x/F(x)) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A153298, there is no canonical definition to state claims against.
-/

/-! ## A153298.P15358042128323442829

`A008620(∑[A061693(n+1)])`
-/

namespace A153298.P15358042128323442829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153298.P15358042128323442829

/-! ## A153298.P10904730024380176463

`or(floor(n²/12), A004525(A069835(n)))`
-/

namespace A153298.P10904730024380176463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n ^ 2 : ℚ) / 12⌋ (A004525 (A069835 n).toNat)

end

end A153298.P10904730024380176463

/-!
# A153299: G.f.: A(x) = F(x*G(x)) where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153299, there is no canonical definition to state claims against.
-/

/-! ## A153299.P12097424687864874938

`A187181(∑[A174687(n)])`
-/

namespace A153299.P12097424687864874938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153299.P12097424687864874938

/-! ## A153299.P10943583798702832344

`A252463((n+1)*A156170(n))`
-/

namespace A153299.P10943583798702832344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 ((n + 1 : ℤ) * A156170 n).toNat

end

end A153299.P10943583798702832344

