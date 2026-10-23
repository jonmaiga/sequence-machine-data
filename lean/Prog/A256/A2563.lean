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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025

/-!
# A256300: Least prime p such that p+6^k is prime for all k=0,...,n.

The programs for A256300, there is no canonical definition to state claims against.
-/

/-! ## A256300.P16371814335120621428

`A249162(A288045(n))`
-/

namespace A256300.P16371814335120621428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249162 (A288045 n).toNat

end

end A256300.P16371814335120621428

/-! ## A256300.P11992153496872150493

`A286621(2*A086346(n))`
-/

namespace A256300.P11992153496872150493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (2 * A086346 n).toNat

end

end A256300.P11992153496872150493

/-!
# A256301: Least prime p such that p + k! is prime for all k = 2..n.

The programs for A256301, there is no canonical definition to state claims against.
-/

/-! ## A256301.P9589692037453201808

`A166333(A061581(n+1))`
-/

namespace A256301.P9589692037453201808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A061581 (n + 1)).toNat

end

end A256301.P9589692037453201808

/-! ## A256301.P13510595509802103146

`p?[A084964(A033188(n+1))]`
-/

namespace A256301.P13510595509802103146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A033188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256301.P13510595509802103146

/-! ## A256301.P13772696340253851351

`p?[A266977(A056603(n+1))]`
-/

namespace A256301.P13772696340253851351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A056603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256301.P13772696340253851351

/-! ## A256301.P4743686989989877098

`A157271(A056603(n+1)+3)`
-/

namespace A256301.P4743686989989877098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A056603 (n + 1) + 3).toNat

end

end A256301.P4743686989989877098

/-!
# A256303: Apply the transformation 0 -> 1 -> 2 -> 0 to the digits of n written in base 3; do not convert back to base 10.

The programs for A256303, the canonical program `A256303.P17390221643236458087` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256303 has offset 0).

The definition of A256303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256303.P17390221643236458087

`A007089(A256293(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256303

/-- `A007089(A256293(n))` -/
def P17390221643236458087.Spec : Prop :=
  ∀ n, P17390221643236458087.a n = A256303 n

theorem P17390221643236458087.correct : P17390221643236458087.Spec := by
  intro n
  simp only [A256303]

end A256303

/-! ## A256303.P17408625017466716279

`A256304(A023713(n+1))`
-/

namespace A256303.P17408625017466716279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A023713 (n + 1)).toNat

end

end A256303.P17408625017466716279

namespace A256303

/-- `A256304(A023713(n+1))` -/
def P17408625017466716279.Spec : Prop :=
  ∀ n, P17408625017466716279.a n = A256303 n

end A256303

/-! ## A256303.P9625522155142822726

`A256305(∩[A023729(n+1), A023733(n+1)])`
-/

namespace A256303.P9625522155142822726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256305 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A256303.P9625522155142822726

namespace A256303

/-- `A256305(∩[A023729(n+1), A023733(n+1)])` -/
def P9625522155142822726.Spec : Prop :=
  ∀ n, P9625522155142822726.a n = A256303 n

end A256303

/-! ## A256303.P5805770973431529111

`A048379(eq[A102669(n), A102683(n)])`
-/

namespace A256303.P5805770973431529111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A256303.P5805770973431529111

namespace A256303

/-- `A048379(eq[A102669(n), A102683(n)])` -/
def P5805770973431529111.Spec : Prop :=
  ∀ n, P5805770973431529111.a n = A256303 n

end A256303

/-! ## A256303.P5496024215226019251

`A048379(record[A222233(n)])`
-/

namespace A256303.P5496024215226019251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256303.P5496024215226019251

namespace A256303

/-- `A048379(record[A222233(n)])` -/
def P5496024215226019251.Spec : Prop :=
  ∀ n, P5496024215226019251.a n = A256303 n

end A256303

/-! ## A256303.P13778655224086074200

`A048379(A222225(record[A222225(n)]))`
-/

namespace A256303.P13778655224086074200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256303.P13778655224086074200

namespace A256303

/-- `A048379(A222225(record[A222225(n)]))` -/
def P13778655224086074200.Spec : Prop :=
  ∀ n, P13778655224086074200.a n = A256303 n

end A256303

/-!
# A256304: Apply the transformation 0 -> 1 -> 2 -> 3 -> 0 to the digits of n written in base 4; do not convert back to base 10.

The programs for A256304, there is no canonical definition to state claims against.
-/

/-! ## A256304.P17309945383283805874

`A007090(A256294(n))`
-/

namespace A256304.P17309945383283805874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A256294 n).toNat

end

end A256304.P17309945383283805874

/-! ## A256304.P1168785958305277114

`A256305(A023733(n+1))`
-/

namespace A256304.P1168785958305277114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256305 (A023733 (n + 1)).toNat

end

end A256304.P1168785958305277114

/-! ## A256304.P12979360414607518761

`A048379(record[A222239(n)])`
-/

namespace A256304.P12979360414607518761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256304.P12979360414607518761

/-! ## A256304.P3161050754338109273

`A132387(record[A256305(n)])`
-/

namespace A256304.P3161050754338109273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132387 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256304.P3161050754338109273

/-! ## A256304.P11733505354809176533

`A048379(A222232(record[A222232(n)]))`
-/

namespace A256304.P11733505354809176533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222232 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256304.P11733505354809176533

/-!
# A256305: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 0 to the digits of n written in base 5; do not convert back to base 10.

The programs for A256305, there is no canonical definition to state claims against.
-/

/-! ## A256305.P1476202892128274202

`A007091(A256295(n))`
-/

namespace A256305.P1476202892128274202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A256295 n).toNat

end

end A256305.P1476202892128274202

/-! ## A256305.P4124840167749651644

`A048379(A048379(A014263(n+1)))/2`
-/

namespace A256305.P4124840167749651644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (A048379 (A014263 (n + 1)).toNat).toNat : ℚ) / 2

end

end A256305.P4124840167749651644

/-! ## A256305.P8331104459675092436

`A048379(record[A222244(n)])`
-/

namespace A256305.P8331104459675092436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256305.P8331104459675092436

/-! ## A256305.P11333594408611635334

`A048379(record[A306436(n)])/2`
-/

namespace A256305.P11333594408611635334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A256305.P11333594408611635334

/-! ## A256305.P8382013945379320097

`record[A306436(n)]-record[A222244(n)]`
-/

namespace A256305.P8382013945379320097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A256305.P8382013945379320097

/-! ## A256305.P17409109486723568764

`A048379(A222238(record[A222238(n)]))`
-/

namespace A256305.P17409109486723568764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222238 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256305.P17409109486723568764

/-! ## A256305.P14569880933569954274

`A306436(A014263(n+1))-A222244(A007091(n))`
-/

namespace A256305.P14569880933569954274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 (A014263 (n + 1)).toNat - A222244 (A007091 n).toNat

end

end A256305.P14569880933569954274

/-!
# A256306: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 0 to the digits of n written in base 6; do not convert back to base 10.

The programs for A256306, there is no canonical definition to state claims against.
-/

/-! ## A256306.P16190859241914327995

`A007092(A256296(n))`
-/

namespace A256306.P16190859241914327995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A256296 n).toNat

end

end A256306.P16190859241914327995

/-! ## A256306.P8246705658877590150

`A048379(record[A222248(n)])`
-/

namespace A256306.P8246705658877590150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256306.P8246705658877590150

/-! ## A256306.P2380210364539838114

`A048379(A222243(record[A222243(n)]))`
-/

namespace A256306.P2380210364539838114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222243 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256306.P2380210364539838114

/-! ## A256306.P477321906397598697

`A048379(eq[n, A222252(A222245(n))])`
-/

namespace A256306.P477321906397598697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256306.P477321906397598697

/-! ## A256306.P18354231999327154391

`A048379(eq[n, A222250(A222246(n))])`
-/

namespace A256306.P18354231999327154391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256306.P18354231999327154391

/-! ## A256306.P6540760679755511252

`A048379(eq[n, A222249(A222247(n))])`
-/

namespace A256306.P6540760679755511252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256306.P6540760679755511252

/-!
# A256307: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 0 to the digits of n written in base 7; do not convert back to base 10.

The programs for A256307, there is no canonical definition to state claims against.
-/

/-! ## A256307.P3444799446397631917

`A007093(A256297(n))`
-/

namespace A256307.P3444799446397631917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A256297 n).toNat

end

end A256307.P3444799446397631917

/-! ## A256307.P13674618065784326813

`A048379(record[A222251(n)])`
-/

namespace A256307.P13674618065784326813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256307.P13674618065784326813

/-! ## A256307.P9797456869875146422

`A048379(A222247(record[A222247(n)]))`
-/

namespace A256307.P9797456869875146422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256307.P9797456869875146422

/-! ## A256307.P13129043871532203175

`A048379(eq[n, A222250(A222249(n))])`
-/

namespace A256307.P13129043871532203175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256307.P13129043871532203175

/-! ## A256307.P12414006048546558012

`A048379(eq[n, A222252(A222249(n))])`
-/

namespace A256307.P12414006048546558012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256307.P12414006048546558012

/-! ## A256307.P14077063848540899859

`A048379(eq[n, A222252(A222250(n))])`
-/

namespace A256307.P14077063848540899859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256307.P14077063848540899859

/-!
# A256308: Apply the transformation 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 0 to the digits of n written in base 8; do not convert back to base 10.

The programs for A256308, there is no canonical definition to state claims against.
-/

/-! ## A256308.P2672579716952551381

`A007094(A256298(n))`
-/

namespace A256308.P2672579716952551381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A256298 n).toNat

end

end A256308.P2672579716952551381

/-! ## A256308.P4158529538483749223

`A048379(record[A222253(n)])`
-/

namespace A256308.P4158529538483749223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256308.P4158529538483749223

/-! ## A256308.P7526084780828285781

`A048379(eq[n, A222252(n)])`
-/

namespace A256308.P7526084780828285781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256308.P7526084780828285781

/-! ## A256308.P11606728168421858419

`A048379(record[gcd(n, A222252(n))])`
-/

namespace A256308.P11606728168421858419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A222252 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A256308.P11606728168421858419

/-! ## A256308.P13487705895578032548

`A048379(record[2*n-A222252(n)])`
-/

namespace A256308.P13487705895578032548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A222252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256308.P13487705895578032548

/-! ## A256308.P3483995770258280470

`A048379(A222250(record[A222250(n)]))`
-/

namespace A256308.P3483995770258280470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A222250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A256308.P3483995770258280470

/-! ## A256308.P12308415878575760025

`A048379(eq[n, A004183(A004182(n))])`
-/

namespace A256308.P12308415878575760025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A004182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256308.P12308415878575760025

/-!
# A256309: Number of partitions of 2n into exactly 5 parts.

The programs for A256309, the canonical program `A256309.P8235850906625870393` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256309 has offset 0).

The definition of A256309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256309.P8235850906625870393

`A091773(n)-A000601(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256309

/-- `A091773(n)-A000601(n)` -/
def P8235850906625870393.Spec : Prop :=
  ∀ n, P8235850906625870393.a n = A256309 n

theorem P8235850906625870393.correct : P8235850906625870393.Spec := by
  intro n
  simp only [A256309]

end A256309

/-! ## A256309.P13241117213828438950

`A091773(n)-(A002623(n+1)-A014126(n+1))`
-/

namespace A256309.P13241117213828438950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091773 n - (A002623 (n + 1) - A014126 (n + 1))

end

end A256309.P13241117213828438950

namespace A256309

/-- `A091773(n)-(A002623(n+1)-A014126(n+1))` -/
def P13241117213828438950.Spec : Prop :=
  ∀ n, P13241117213828438950.a n = A256309 n

end A256309

/-! ## A256309.P14119811098717978487

`A026811(2*n)`
-/

namespace A256309.P14119811098717978487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (2 * n)

end

end A256309.P14119811098717978487

namespace A256309

/-- `A026811(2*n)` -/
def P14119811098717978487.Spec : Prop :=
  ∀ n, P14119811098717978487.a n = A256309 n

end A256309

/-! ## A256309.P1144216855929906560

`A001401(2*n)-A014126(n)`
-/

namespace A256309.P1144216855929906560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (2 * n) - A014126 n

end

end A256309.P1144216855929906560

namespace A256309

/-- `A001401(2*n)-A014126(n)` -/
def P1144216855929906560.Spec : Prop :=
  ∀ n, P1144216855929906560.a n = A256309 n

end A256309

/-! ## A256309.P15724026121551029397

`A309881(2*n)+A309879(2*n)`
-/

namespace A256309.P15724026121551029397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309881 (2 * n) + A309879 (2 * n)

end

end A256309.P15724026121551029397

namespace A256309

/-- `A309881(2*n)+A309879(2*n)` -/
def P15724026121551029397.Spec : Prop :=
  ∀ n, P15724026121551029397.a n = A256309 n

end A256309

/-! ## A256309.P6166506688171387979

`A001401(2*n)-A001400(2*n)`
-/

namespace A256309.P6166506688171387979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (2 * n) - A001400 (2 * n)

end

end A256309.P6166506688171387979

namespace A256309

/-- `A001401(2*n)-A001400(2*n)` -/
def P6166506688171387979.Spec : Prop :=
  ∀ n, P6166506688171387979.a n = A256309 n

end A256309

/-! ## A256309.P8729890710178277799

`A008667(2*n)-A060024(2*n)`
-/

namespace A256309.P8729890710178277799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n) - A060024 (2 * n)

end

end A256309.P8729890710178277799

namespace A256309

/-- `A008667(2*n)-A060024(2*n)` -/
def P8729890710178277799.Spec : Prop :=
  ∀ n, P8729890710178277799.a n = A256309 n

end A256309

/-! ## A256309.P8832282526501427066

`A308822(2*n)/A028310(2*n)`
-/

namespace A256309.P8832282526501427066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 (2 * n) : ℚ) / (A028310 (2 * n) : ℚ)

end

end A256309.P8832282526501427066

namespace A256309

/-- `A308822(2*n)/A028310(2*n)` -/
def P8832282526501427066.Spec : Prop :=
  ∀ n, P8832282526501427066.a n = (A256309 n : ℚ)

end A256309

/-! ## A256309.P10294619778193142408

`A069905(n+2)-A060024(2*n+1)`
-/

namespace A256309.P10294619778193142408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 2) - A060024 (2 * n + 1)

end

end A256309.P10294619778193142408

namespace A256309

/-- `A069905(n+2)-A060024(2*n+1)` -/
def P10294619778193142408.Spec : Prop :=
  ∀ n, P10294619778193142408.a n = A256309 n

end A256309

/-! ## A256309.P9206480622589929513

`A394985(2*n+1)-A394873(2*n)`
-/

namespace A256309.P9206480622589929513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394985 (2 * n + 1) - A394873 (2 * n)

end

end A256309.P9206480622589929513

namespace A256309

/-- `A394985(2*n+1)-A394873(2*n)` -/
def P9206480622589929513.Spec : Prop :=
  ∀ n, P9206480622589929513.a n = A256309 n

end A256309

/-! ## A256309.P9958857659006941304

`A005044(2*n+1)-A060024(2*n+1)`
-/

namespace A256309.P9958857659006941304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n + 1) - A060024 (2 * n + 1)

end

end A256309.P9958857659006941304

namespace A256309

/-- `A005044(2*n+1)-A060024(2*n+1)` -/
def P9958857659006941304.Spec : Prop :=
  ∀ n, P9958857659006941304.a n = A256309 n

end A256309

/-! ## A256309.P103795599539418528

`A026810(2*n+1)+A060023(2*n+1)-A060024(2*n+1)`
-/

namespace A256309.P103795599539418528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (2 * n + 1) + (A060023 (2 * n + 1) - A060024 (2 * n + 1))

end

end A256309.P103795599539418528

namespace A256309

/-- `A026810(2*n+1)+A060023(2*n+1)-A060024(2*n+1)` -/
def P103795599539418528.Spec : Prop :=
  ∀ n, P103795599539418528.a n = A256309 n

end A256309

/-! ## A256309.P4135280702814985595

`A288166(8*n)`
-/

namespace A256309.P4135280702814985595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (8 * n)

end

end A256309.P4135280702814985595

namespace A256309

/-- `A288166(8*n)` -/
def P4135280702814985595.Spec : Prop :=
  ∀ n, P4135280702814985595.a n = A256309 n

end A256309

/-! ## A256309.P14406950668951639412

`A308822(2*n)/A233583(2*n+1)`
-/

namespace A256309.P14406950668951639412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308822 (2 * n) : ℚ) / (A233583 (2 * n + 1) : ℚ)

end

end A256309.P14406950668951639412

namespace A256309

/-- `A308822(2*n)/A233583(2*n+1)` -/
def P14406950668951639412.Spec : Prop :=
  ∀ n, P14406950668951639412.a n = (A256309 n : ℚ)

end A256309

/-!
# A256310: Number of partitions of 2n into exactly 6 parts.

The programs for A256310, the canonical program `A256310.P15154368042461958730` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256310 has offset 0).

The definition of A256310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256310.P15154368042461958730

`A026812(2*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256310

/-- `A026812(2*n)` -/
def P15154368042461958730.Spec : Prop :=
  ∀ n, P15154368042461958730.a n = A256310 n

theorem P15154368042461958730.correct : P15154368042461958730.Spec := by
  intro n
  simp only [A256310]

end A256310

/-! ## A256310.P9120016093452500296

`A026812(n+n)/A000120(A061142(n+1))`
-/

namespace A256310.P9120016093452500296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026812 (n + n) : ℚ) / (A000120 (A061142 (n + 1)).toNat : ℚ)

end

end A256310.P9120016093452500296

namespace A256310

/-- `A026812(n+n)/A000120(A061142(n+1))` -/
def P9120016093452500296.Spec : Prop :=
  ∀ n, P9120016093452500296.a n = (A256310 n : ℚ)

end A256310

/-! ## A256310.P1938210052710970701

`A026812(n+n)^A000120(A061142(n+2))`
-/

namespace A256310.P1938210052710970701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026812 (n + n) : ℚ) ^ (A000120 (A061142 (n + 2)).toNat : ℤ)

end

end A256310.P1938210052710970701

namespace A256310

/-- `A026812(n+n)^A000120(A061142(n+2))` -/
def P1938210052710970701.Spec : Prop :=
  ∀ n, P1938210052710970701.a n = (A256310 n : ℚ)

end A256310

/-! ## A256310.P14137191378022288026

`A001402(2*n)-A001401(2*n)`
-/

namespace A256310.P14137191378022288026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (2 * n) - A001401 (2 * n)

end

end A256310.P14137191378022288026

namespace A256310

/-- `A001402(2*n)-A001401(2*n)` -/
def P14137191378022288026.Spec : Prop :=
  ∀ n, P14137191378022288026.a n = A256310 n

end A256310

/-! ## A256310.P9748798783134092982

`A037145(2*n)-A060025(2*n)`
-/

namespace A256310.P9748798783134092982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n) - A060025 (2 * n)

end

end A256310.P9748798783134092982

namespace A256310

/-- `A037145(2*n)-A060025(2*n)` -/
def P9748798783134092982.Spec : Prop :=
  ∀ n, P9748798783134092982.a n = A256310 n

end A256310

/-! ## A256310.P3835168755202573039

`A001401(2*n+1)-(A060025(2*n+1)+A001401(2*n))`
-/

namespace A256310.P3835168755202573039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (2 * n + 1) - (A060025 (2 * n + 1) + A001401 (2 * n))

end

end A256310.P3835168755202573039

namespace A256310

/-- `A001401(2*n+1)-(A060025(2*n+1)+A001401(2*n))` -/
def P3835168755202573039.Spec : Prop :=
  ∀ n, P3835168755202573039.a n = A256310 n

end A256310

/-! ## A256310.P8117790549421403526

`A026811(2*n+1)+A060024(2*n+1)-A060025(2*n+1)`
-/

namespace A256310.P8117790549421403526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (2 * n + 1) + (A060024 (2 * n + 1) - A060025 (2 * n + 1))

end

end A256310.P8117790549421403526

namespace A256310

/-- `A026811(2*n+1)+A060024(2*n+1)-A060025(2*n+1)` -/
def P8117790549421403526.Spec : Prop :=
  ∀ n, P8117790549421403526.a n = A256310 n

end A256310

/-! ## A256310.P1664154459254134836

`A008636(2*n)-(A026813(2*n)+A001401(2*n))`
-/

namespace A256310.P1664154459254134836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (2 * n) - (A026813 (2 * n) + A001401 (2 * n))

end

end A256310.P1664154459254134836

namespace A256310

/-- `A008636(2*n)-(A026813(2*n)+A001401(2*n))` -/
def P1664154459254134836.Spec : Prop :=
  ∀ n, P1664154459254134836.a n = A256310 n

end A256310

/-! ## A256310.P6556949620425078681

`A026812(n+n)/A000120(A318454(n+1))`
-/

namespace A256310.P6556949620425078681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026812 (n + n) : ℚ) / (A000120 (A318454 (n + 1)).toNat : ℚ)

end

end A256310.P6556949620425078681

namespace A256310

/-- `A026812(n+n)/A000120(A318454(n+1))` -/
def P6556949620425078681.Spec : Prop :=
  ∀ n, P6556949620425078681.a n = (A256310 n : ℚ)

end A256310

/-! ## A256310.P2118127396650773546

`A308867(2*n)/A028310(2*n)`
-/

namespace A256310.P2118127396650773546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308867 (2 * n) : ℚ) / (A028310 (2 * n) : ℚ)

end

end A256310.P2118127396650773546

namespace A256310

/-- `A308867(2*n)/A028310(2*n)` -/
def P2118127396650773546.Spec : Prop :=
  ∀ n, P2118127396650773546.a n = (A256310 n : ℚ)

end A256310

/-! ## A256310.P8217695782828165288

`A308867(2*n)/A233583(2*n+1)`
-/

namespace A256310.P8217695782828165288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308867 (2 * n) : ℚ) / (A233583 (2 * n + 1) : ℚ)

end

end A256310.P8217695782828165288

namespace A256310

/-- `A308867(2*n)/A233583(2*n+1)` -/
def P8217695782828165288.Spec : Prop :=
  ∀ n, P8217695782828165288.a n = (A256310 n : ℚ)

end A256310

/-!
# A256311: Number T(n,k) of length 3n words such that all letters of the k-ary alphabet occur at least once and are introduced in ascending order and which can be built by repeatedly inserting triples of identical letters into the initially empty word; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A256311, there is no canonical definition to state claims against.
-/

/-! ## A256311.P12857509319610829892

`A382764(A304336(n))`
-/

namespace A256311.P12857509319610829892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382764 (A304336 n).toNat

end

end A256311.P12857509319610829892

/-! ## A256311.P6778615422520447242

`A023395(A135313(n)+1)`
-/

namespace A256311.P6778615422520447242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023395 (A135313 n + 1).toNat

end

end A256311.P6778615422520447242

/-! ## A256311.P15328688396608329195

`A161359(A270882(n)+1)`
-/

namespace A256311.P15328688396608329195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (A270882 n + 1).toNat

end

end A256311.P15328688396608329195

/-! ## A256311.P5275821465072403877

`A186705(A340556(n)+1)`
-/

namespace A256311.P5275821465072403877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186705 (A340556 n + 1).toNat

end

end A256311.P5275821465072403877

/-! ## A256311.P16074556154153623799

`A318058(3*A304336(n)+1)`
-/

namespace A256311.P16074556154153623799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318058 (3 * A304336 n + 1).toNat

end

end A256311.P16074556154153623799

/-!
# A256313: Number of partitions of 3n into exactly 4 parts.

The programs for A256313, the canonical program `A256313.P3101194887776980855` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256313 has offset 0).

The definition of A256313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256313.P11108939048755388108

`∑[floor(((∑[char[2*n]]-1+n)/2)²)]`
-/

namespace A256313.P11108939048755388108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 + (n : ℤ) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256313.P11108939048755388108

namespace A256313

/-- `∑[floor(((∑[char[2*n]]-1+n)/2)²)]` -/
def P11108939048755388108.Spec : Prop :=
  ∀ n, P11108939048755388108.a n = A256313 n

end A256313

/-! ## A256313.P3101194887776980855

`A256524(n)-A077043(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A256313

/-- `A256524(n)-A077043(n+1)` -/
def P3101194887776980855.Spec : Prop :=
  ∀ n, P3101194887776980855.a n = A256313 n

theorem P3101194887776980855.correct : P3101194887776980855.Spec := by
  intro n
  simp only [A256313]

end A256313

/-! ## A256313.P2041220020417091746

`A256525(n)-(A256314(n)+A077043(n+1))`
-/

namespace A256313.P2041220020417091746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256525 n - (A256314 n + A077043 (n + 1))

end

end A256313.P2041220020417091746

namespace A256313

/-- `A256525(n)-(A256314(n)+A077043(n+1))` -/
def P2041220020417091746.Spec : Prop :=
  ∀ n, P2041220020417091746.a n = A256313 n

end A256313

/-! ## A256313.P14268735740223544165

`A026810(3*n)`
-/

namespace A256313.P14268735740223544165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (3 * n)

end

end A256313.P14268735740223544165

namespace A256313

/-- `A026810(3*n)` -/
def P14268735740223544165.Spec : Prop :=
  ∀ n, P14268735740223544165.a n = A256313 n

end A256313

/-! ## A256313.P621640147387304148

`A309715(3*n)+A309712(3*n)`
-/

namespace A256313.P621640147387304148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 (3 * n) + A309712 (3 * n)

end

end A256313.P621640147387304148

namespace A256313

/-- `A309715(3*n)+A309712(3*n)` -/
def P621640147387304148.Spec : Prop :=
  ∀ n, P621640147387304148.a n = A256313 n

end A256313

/-! ## A256313.P2688021766681403326

`A309795(3*n)+A309793(3*n)`
-/

namespace A256313.P2688021766681403326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309795 (3 * n) + A309793 (3 * n)

end

end A256313.P2688021766681403326

namespace A256313

/-- `A309795(3*n)+A309793(3*n)` -/
def P2688021766681403326.Spec : Prop :=
  ∀ n, P2688021766681403326.a n = A256313 n

end A256313

/-! ## A256313.P12273101657295352575

`A001400(3*n)-A001399(3*n)`
-/

namespace A256313.P12273101657295352575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (3 * n) - A001399 (3 * n)

end

end A256313.P12273101657295352575

namespace A256313

/-- `A001400(3*n)-A001399(3*n)` -/
def P12273101657295352575.Spec : Prop :=
  ∀ n, P12273101657295352575.a n = A256313 n

end A256313

/-! ## A256313.P1891296300763678303

`A008765(3*n)-A001400(3*n)`
-/

namespace A256313.P1891296300763678303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 (3 * n) - A001400 (3 * n)

end

end A256313.P1891296300763678303

namespace A256313

/-- `A008765(3*n)-A001400(3*n)` -/
def P1891296300763678303.Spec : Prop :=
  ∀ n, P1891296300763678303.a n = A256313 n

end A256313

/-! ## A256313.P18174997619468688558

`A005232(3*n)-A266769(3*n)`
-/

namespace A256313.P18174997619468688558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (3 * n) - A266769 (3 * n)

end

end A256313.P18174997619468688558

namespace A256313

/-- `A005232(3*n)-A266769(3*n)` -/
def P18174997619468688558.Spec : Prop :=
  ∀ n, P18174997619468688558.a n = A256313 n

end A256313

/-! ## A256313.P7883853809402095914

`A266755(3*n)-A060023(3*n)`
-/

namespace A256313.P7883853809402095914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (3 * n) - A060023 (3 * n)

end

end A256313.P7883853809402095914

namespace A256313

/-- `A266755(3*n)-A060023(3*n)` -/
def P7883853809402095914.Spec : Prop :=
  ∀ n, P7883853809402095914.a n = A256313 n

end A256313

/-! ## A256313.P436514365073433018

`A266769(3*n)-A320592(3*(n+2))`
-/

namespace A256313.P436514365073433018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (3 * n) - A320592 (3 * (n + 2))

end

end A256313.P436514365073433018

namespace A256313

/-- `A266769(3*n)-A320592(3*(n+2))` -/
def P436514365073433018.Spec : Prop :=
  ∀ n, P436514365073433018.a n = A256313 n

end A256313

/-! ## A256313.P14731876744083588357

`A001401(3*n)-(A026811(3*n)+A001399(3*n))`
-/

namespace A256313.P14731876744083588357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (3 * n) - (A026811 (3 * n) + A001399 (3 * n))

end

end A256313.P14731876744083588357

namespace A256313

/-- `A001401(3*n)-(A026811(3*n)+A001399(3*n))` -/
def P14731876744083588357.Spec : Prop :=
  ∀ n, P14731876744083588357.a n = A256313 n

end A256313

/-! ## A256313.P1816518293449510223

`A288165(9*n)`
-/

namespace A256313.P1816518293449510223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (9 * n)

end

end A256313.P1816518293449510223

namespace A256313

/-- `A288165(9*n)` -/
def P1816518293449510223.Spec : Prop :=
  ∀ n, P1816518293449510223.a n = A256313 n

end A256313

/-! ## A256313.P5338097479238322571

`A029425(A298035(n))`
-/

namespace A256313.P5338097479238322571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (A298035 n).toNat

end

end A256313.P5338097479238322571

namespace A256313

/-- `A029425(A298035(n))` -/
def P5338097479238322571.Spec : Prop :=
  ∀ n, P5338097479238322571.a n = A256313 n

end A256313

/-! ## A256313.P4620677338478069050

`A029425(A161705(n))`
-/

namespace A256313.P4620677338478069050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (A161705 n).toNat

end

end A256313.P4620677338478069050

namespace A256313

/-- `A029425(A161705(n))` -/
def P4620677338478069050.Spec : Prop :=
  ∀ n, P4620677338478069050.a n = A256313 n

end A256313

/-! ## A256313.P8434666805645984119

`floor((3*(n+1)*A002265(n²)+1)/4)`
-/

namespace A256313.P8434666805645984119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * (n + 1) : ℤ) * A002265 (n ^ 2) + 1 : ℚ) / 4⌋

end

end A256313.P8434666805645984119

namespace A256313

/-- `floor((3*(n+1)*A002265(n²)+1)/4)` -/
def P8434666805645984119.Spec : Prop :=
  ∀ n, P8434666805645984119.a n = A256313 n

end A256313

/-!
# A256314: Number of partitions of 3n into exactly 5 parts.

The programs for A256314, the canonical program `A256314.P13032159642975064989` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256314 has offset 0).

The definition of A256314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256314.P13032159642975064989

`A256525(n)-A256524(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256314

/-- `A256525(n)-A256524(n)` -/
def P13032159642975064989.Spec : Prop :=
  ∀ n, P13032159642975064989.a n = A256314 n

theorem P13032159642975064989.correct : P13032159642975064989.Spec := by
  intro n
  simp only [A256314]

end A256314

/-! ## A256314.P12799605770234862041

`A256525(n)-(A256313(n)+A077043(n+1))`
-/

namespace A256314.P12799605770234862041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256525 n - (A256313 n + A077043 (n + 1))

end

end A256314.P12799605770234862041

namespace A256314

/-- `A256525(n)-(A256313(n)+A077043(n+1))` -/
def P12799605770234862041.Spec : Prop :=
  ∀ n, P12799605770234862041.a n = A256314 n

end A256314

/-! ## A256314.P6469890155513539960

`A026811(3*n)`
-/

namespace A256314.P6469890155513539960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (3 * n)

end

end A256314.P6469890155513539960

namespace A256314

/-- `A026811(3*n)` -/
def P6469890155513539960.Spec : Prop :=
  ∀ n, P6469890155513539960.a n = A256314 n

end A256314

/-! ## A256314.P18130259213689713741

`and(-1, A026811(A008585(n)))`
-/

namespace A256314.P18130259213689713741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A026811 (A008585 n).toNat)

end

end A256314.P18130259213689713741

namespace A256314

/-- `and(-1, A026811(A008585(n)))` -/
def P18130259213689713741.Spec : Prop :=
  ∀ n, P18130259213689713741.a n = A256314 n

end A256314

/-! ## A256314.P4966610433119704136

`A001401(3*n)-A001400(3*n)`
-/

namespace A256314.P4966610433119704136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (3 * n) - A001400 (3 * n)

end

end A256314.P4966610433119704136

namespace A256314

/-- `A001401(3*n)-A001400(3*n)` -/
def P4966610433119704136.Spec : Prop :=
  ∀ n, P4966610433119704136.a n = A256314 n

end A256314

/-! ## A256314.P15212466601103629182

`A008667(3*n)-A060024(3*n)`
-/

namespace A256314.P15212466601103629182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (3 * n) - A060024 (3 * n)

end

end A256314.P15212466601103629182

namespace A256314

/-- `A008667(3*n)-A060024(3*n)` -/
def P15212466601103629182.Spec : Prop :=
  ∀ n, P15212466601103629182.a n = A256314 n

end A256314

/-! ## A256314.P16609088298367756086

`A288166(12*n)`
-/

namespace A256314.P16609088298367756086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (12 * n)

end

end A256314.P16609088298367756086

namespace A256314

/-- `A288166(12*n)` -/
def P16609088298367756086.Spec : Prop :=
  ∀ n, P16609088298367756086.a n = A256314 n

end A256314

/-! ## A256314.P14260570765733980857

`A266768(A144917(n+1))`
-/

namespace A256314.P14260570765733980857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (A144917 (n + 1)).toNat

end

end A256314.P14260570765733980857

namespace A256314

/-- `A266768(A144917(n+1))` -/
def P14260570765733980857.Spec : Prop :=
  ∀ n, P14260570765733980857.a n = A256314 n

end A256314

/-!
# A256315: Number of partitions of 3n into exactly 6 parts.

The programs for A256315, the canonical program `A256315.P14419130864312344157` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256315 has offset 0).

The definition of A256315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256315.P14419130864312344157

`A026812(3*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256315

/-- `A026812(3*n)` -/
def P14419130864312344157.Spec : Prop :=
  ∀ n, P14419130864312344157.a n = A256315 n

theorem P14419130864312344157.correct : P14419130864312344157.Spec := by
  intro n
  simp only [A256315]

end A256315

/-! ## A256315.P15117645640647232771

`A001402(3*n)-A001401(3*n)`
-/

namespace A256315.P15117645640647232771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (3 * n) - A001401 (3 * n)

end

end A256315.P15117645640647232771

namespace A256315

/-- `A001402(3*n)-A001401(3*n)` -/
def P15117645640647232771.Spec : Prop :=
  ∀ n, P15117645640647232771.a n = A256315 n

end A256315

/-! ## A256315.P337396164890001056

`A026812(A008585(n))%A239426(n)`
-/

namespace A256315.P337396164890001056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026812 (A008585 n).toNat) (A239426 n)

end

end A256315.P337396164890001056

namespace A256315

/-- `A026812(A008585(n))%A239426(n)` -/
def P337396164890001056.Spec : Prop :=
  ∀ n, P337396164890001056.a n = A256315 n

end A256315

/-! ## A256315.P10666351183592867805

`A026812(A008486(n))^A000041(C(2, n))`
-/

namespace A256315.P10666351183592867805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026812 (A008486 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A256315.P10666351183592867805

namespace A256315

/-- `A026812(A008486(n))^A000041(C(2, n))` -/
def P10666351183592867805.Spec : Prop :=
  ∀ n, P10666351183592867805.a n = (A256315 n : ℚ)

end A256315

/-! ## A256315.P603745187018548371

`A336121(A014963(n+1))+A026812(A008486(n))`
-/

namespace A256315.P603745187018548371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A014963 (n + 1)).toNat + A026812 (A008486 n).toNat

end

end A256315.P603745187018548371

namespace A256315

/-- `A336121(A014963(n+1))+A026812(A008486(n))` -/
def P603745187018548371.Spec : Prop :=
  ∀ n, P603745187018548371.a n = A256315 n

end A256315

/-! ## A256315.P15749304812931413904

`A059841(A059841(n)+n)+A026812(A008585(n))`
-/

namespace A256315.P15749304812931413904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A059841 n + (n : ℤ)).toNat + A026812 (A008585 n).toNat

end

end A256315.P15749304812931413904

namespace A256315

/-- `A059841(A059841(n)+n)+A026812(A008585(n))` -/
def P15749304812931413904.Spec : Prop :=
  ∀ n, P15749304812931413904.a n = A256315 n

end A256315

/-! ## A256315.P16415737135746806371

`A026812(A008486(n))/A001222(A062326(n+1))`
-/

namespace A256315.P16415737135746806371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026812 (A008486 n).toNat : ℚ) / (A001222 (A062326 (n + 1)).toNat : ℚ)

end

end A256315.P16415737135746806371

namespace A256315

/-- `A026812(A008486(n))/A001222(A062326(n+1))` -/
def P16415737135746806371.Spec : Prop :=
  ∀ n, P16415737135746806371.a n = (A256315 n : ℚ)

end A256315

/-! ## A256315.P14095912989631651680

`A008636(3*n)-(A026813(3*n)+A001401(3*n))`
-/

namespace A256315.P14095912989631651680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (3 * n) - (A026813 (3 * n) + A001401 (3 * n))

end

end A256315.P14095912989631651680

namespace A256315

/-- `A008636(3*n)-(A026813(3*n)+A001401(3*n))` -/
def P14095912989631651680.Spec : Prop :=
  ∀ n, P14095912989631651680.a n = A256315 n

end A256315

/-! ## A256315.P4580185755972568337

`A026812(A008486(n))%A000079(n)`
-/

namespace A256315.P4580185755972568337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026812 (A008486 n).toNat) (A000079 n)

end

end A256315.P4580185755972568337

namespace A256315

/-- `A026812(A008486(n))%A000079(n)` -/
def P4580185755972568337.Spec : Prop :=
  ∀ n, P4580185755972568337.a n = A256315 n

end A256315

/-! ## A256315.P4882280538005860085

`and(A000225(n), A026812(A008486(n)))`
-/

namespace A256315.P4882280538005860085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A026812 (A008486 n).toNat)

end

end A256315.P4882280538005860085

namespace A256315

/-- `and(A000225(n), A026812(A008486(n)))` -/
def P4882280538005860085.Spec : Prop :=
  ∀ n, P4882280538005860085.a n = A256315 n

end A256315

/-!
# A256316: Number of partitions of 4n into exactly 5 parts.

The programs for A256316, the canonical program `A256316.P772244914337165841` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256316 has offset 0).

The definition of A256316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256316.P772244914337165841

`A256539(n)-A238340(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256316

/-- `A256539(n)-A238340(n+1)` -/
def P772244914337165841.Spec : Prop :=
  ∀ n, P772244914337165841.a n = A256316 n

theorem P772244914337165841.correct : P772244914337165841.Spec := by
  intro n
  simp only [A256316]

end A256316

/-! ## A256316.P775222086171259054

`A256309(2*n)`
-/

namespace A256316.P775222086171259054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256309 (2 * n)

end

end A256316.P775222086171259054

namespace A256316

/-- `A256309(2*n)` -/
def P775222086171259054.Spec : Prop :=
  ∀ n, P775222086171259054.a n = A256316 n

end A256316

/-! ## A256316.P3668035110183663656

`A091773(2*n)-A000601(2*n)`
-/

namespace A256316.P3668035110183663656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091773 (2 * n) - A000601 (2 * n)

end

end A256316.P3668035110183663656

namespace A256316

/-- `A091773(2*n)-A000601(2*n)` -/
def P3668035110183663656.Spec : Prop :=
  ∀ n, P3668035110183663656.a n = A256316 n

end A256316

/-! ## A256316.P14875063630672886019

`A026811(4*n)`
-/

namespace A256316.P14875063630672886019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (4 * n)

end

end A256316.P14875063630672886019

namespace A256316

/-- `A026811(4*n)` -/
def P14875063630672886019.Spec : Prop :=
  ∀ n, P14875063630672886019.a n = A256316 n

end A256316

/-! ## A256316.P5726594888637741479

`A001401(4*n)-A014126(2*n)`
-/

namespace A256316.P5726594888637741479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n) - A014126 (2 * n)

end

end A256316.P5726594888637741479

namespace A256316

/-- `A001401(4*n)-A014126(2*n)` -/
def P5726594888637741479.Spec : Prop :=
  ∀ n, P5726594888637741479.a n = A256316 n

end A256316

/-! ## A256316.P3716160439491227648

`A001401(4*n)-A001400(4*n)`
-/

namespace A256316.P3716160439491227648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (4 * n) - A001400 (4 * n)

end

end A256316.P3716160439491227648

namespace A256316

/-- `A001401(4*n)-A001400(4*n)` -/
def P3716160439491227648.Spec : Prop :=
  ∀ n, P3716160439491227648.a n = A256316 n

end A256316

/-! ## A256316.P13288425732386565674

`A008667(4*n)-A060024(4*n)`
-/

namespace A256316.P13288425732386565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (4 * n) - A060024 (4 * n)

end

end A256316.P13288425732386565674

namespace A256316

/-- `A008667(4*n)-A060024(4*n)` -/
def P13288425732386565674.Spec : Prop :=
  ∀ n, P13288425732386565674.a n = A256316 n

end A256316

/-! ## A256316.P14418520032474380622

`A288166(16*n)`
-/

namespace A256316.P14418520032474380622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (16 * n)

end

end A256316.P14418520032474380622

namespace A256316

/-- `A288166(16*n)` -/
def P14418520032474380622.Spec : Prop :=
  ∀ n, P14418520032474380622.a n = A256316 n

end A256316

/-!
# A256317: Number of partitions of 4n into exactly 6 parts.

The programs for A256317, the canonical program `A256317.P11855813758149970793` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256317 has offset 0).

The definition of A256317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256317.P11855813758149970793

`A256540(n)-A256539(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256317

/-- `A256540(n)-A256539(n)` -/
def P11855813758149970793.Spec : Prop :=
  ∀ n, P11855813758149970793.a n = A256317 n

theorem P11855813758149970793.correct : P11855813758149970793.Spec := by
  intro n
  simp only [A256317]

end A256317

/-! ## A256317.P2574958855967901683

`A256310(2*n)`
-/

namespace A256317.P2574958855967901683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256310 (2 * n)

end

end A256317.P2574958855967901683

namespace A256317

/-- `A256310(2*n)` -/
def P2574958855967901683.Spec : Prop :=
  ∀ n, P2574958855967901683.a n = A256317 n

end A256317

/-! ## A256317.P17257904377991747748

`A256310(n+n)/A001221(A243588(n+1))`
-/

namespace A256317.P17257904377991747748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256310 (n + n) : ℚ) / (A001221 (A243588 (n + 1)).toNat : ℚ)

end

end A256317.P17257904377991747748

namespace A256317

/-- `A256310(n+n)/A001221(A243588(n+1))` -/
def P17257904377991747748.Spec : Prop :=
  ∀ n, P17257904377991747748.a n = (A256317 n : ℚ)

end A256317

/-! ## A256317.P4378961300912757671

`A026812(4*n)`
-/

namespace A256317.P4378961300912757671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (4 * n)

end

end A256317.P4378961300912757671

namespace A256317

/-- `A026812(4*n)` -/
def P4378961300912757671.Spec : Prop :=
  ∀ n, P4378961300912757671.a n = A256317 n

end A256317

/-! ## A256317.P7358055211797952888

`A001402(4*n)-A001401(4*n)`
-/

namespace A256317.P7358055211797952888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (4 * n) - A001401 (4 * n)

end

end A256317.P7358055211797952888

namespace A256317

/-- `A001402(4*n)-A001401(4*n)` -/
def P7358055211797952888.Spec : Prop :=
  ∀ n, P7358055211797952888.a n = A256317 n

end A256317

/-! ## A256317.P11829509986503037953

`A008636(4*n)-(A026813(4*n)+A001401(4*n))`
-/

namespace A256317.P11829509986503037953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (4 * n) - (A026813 (4 * n) + A001401 (4 * n))

end

end A256317.P11829509986503037953

namespace A256317

/-- `A008636(4*n)-(A026813(4*n)+A001401(4*n))` -/
def P11829509986503037953.Spec : Prop :=
  ∀ n, P11829509986503037953.a n = A256317 n

end A256317

/-! ## A256317.P3059348585598430968

`A256310(n+n)/A055491((n+1)²)`
-/

namespace A256317.P3059348585598430968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256310 (n + n) : ℚ) / (A055491 ((n + 1) ^ 2) : ℚ)

end

end A256317.P3059348585598430968

namespace A256317

/-- `A256310(n+n)/A055491((n+1)²)` -/
def P3059348585598430968.Spec : Prop :=
  ∀ n, P3059348585598430968.a n = (A256317 n : ℚ)

end A256317

/-!
# A256320: Number of partitions of 4n into exactly 3 parts.

The programs for A256320, the canonical program `A256320.P56572884103579962` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256320 has offset 0).

The definition of A256320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256320.P13817086101797838651

`2*(6*n²+cos(2*π*n/3)-1)/9`
-/

namespace A256320.P13817086101797838651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((6 * n ^ 2 : ℝ) + Real.cos (2 * Real.pi * (n : ℝ) / 3) - 1) / 9

end

end A256320.P13817086101797838651

namespace A256320

/-- `2*(6*n²+cos(2*π*n/3)-1)/9` -/
def P13817086101797838651.Spec : Prop :=
  ∀ n, P13817086101797838651.a n = (A256320 n : ℝ)

end A256320

/-! ## A256320.P56572884103579962

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=21`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256320

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P56572884103579962.Spec : Prop :=
  ∀ n, P56572884103579962.a n = A256320 n

theorem P56572884103579962.correct : P56572884103579962.Spec := by
  intro n
  simp only [A256320]

end A256320

/-! ## A256320.P1557998518307340143

`floor((2*n)²/3)`
-/

namespace A256320.P1557998518307340143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / 3⌋

end

end A256320.P1557998518307340143

namespace A256320

/-- `floor((2*n)²/3)` -/
def P1557998518307340143.Spec : Prop :=
  ∀ n, P1557998518307340143.a n = A256320 n

end A256320

/-! ## A256320.P1720908825998343957

`round(lcm(2, (2*n)²)/3)`
-/

namespace A256320.P1720908825998343957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 ((2 * n) ^ 2) : ℚ) / 3)

end

end A256320.P1720908825998343957

namespace A256320

/-- `round(lcm(2, (2*n)²)/3)` -/
def P1720908825998343957.Spec : Prop :=
  ∀ n, P1720908825998343957.a n = A256320 n

end A256320

/-! ## A256320.P5055765074651678395

`round(and(2*n, -2)²/3)`
-/

namespace A256320.P5055765074651678395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (2 * n : ℤ) (-2) ^ 2 : ℚ) / 3)

end

end A256320.P5055765074651678395

namespace A256320

/-- `round(and(2*n, -2)²/3)` -/
def P5055765074651678395.Spec : Prop :=
  ∀ n, P5055765074651678395.a n = A256320 n

end A256320

/-! ## A256320.P9489450123479234082

`round(comp[or(1, n-2)]²/3)`
-/

namespace A256320.P9489450123479234082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℚ) / 3)

end

end A256320.P9489450123479234082

namespace A256320

/-- `round(comp[or(1, n-2)]²/3)` -/
def P9489450123479234082.Spec : Prop :=
  ∀ n, P9489450123479234082.a n = A256320 n

end A256320

/-! ## A256320.P13377045380259031804

`round(∩[(2*n)², n²]/3)`
-/

namespace A256320.P13377045380259031804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℚ) / 3)

end

end A256320.P13377045380259031804

namespace A256320

/-- `round(∩[(2*n)², n²]/3)` -/
def P13377045380259031804.Spec : Prop :=
  ∀ n, P13377045380259031804.a n = A256320 n

end A256320

/-! ## A256320.P12207907402914949950

`∑[a(n-3)+8]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A256320.P12207907402914949950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256320.P12207907402914949950

namespace A256320

/-- `∑[a(n-3)+8]` -/
def P12207907402914949950.Spec : Prop :=
  ∀ n, (P12207907402914949950.a n : ℤ) = A256320 n

end A256320

/-! ## A256320.P9690018148725263802

`round(xor(1, 2*n+1)²/3)`
-/

namespace A256320.P9690018148725263802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n + 1) ^ 2 : ℚ) / 3)

end

end A256320.P9690018148725263802

namespace A256320

/-- `round(xor(1, 2*n+1)²/3)` -/
def P9690018148725263802.Spec : Prop :=
  ∀ n, P9690018148725263802.a n = A256320 n

end A256320

/-! ## A256320.P17874414273073898830

`round(2*n/(3*acot(2*n)))`
-/

namespace A256320.P17874414273073898830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / (3 * SequenceMachineLib.acot (2 * n : ℝ)))

end

end A256320.P17874414273073898830

namespace A256320

/-- `round(2*n/(3*acot(2*n)))` -/
def P17874414273073898830.Spec : Prop :=
  ∀ n, P17874414273073898830.a n = A256320 n

end A256320

/-! ## A256320.P12763487655990009600

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A256320.P12763487655990009600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256320.P12763487655990009600

namespace A256320

/-- `∑[∑[floor(a(n-3))]]` -/
def P12763487655990009600.Spec : Prop :=
  ∀ n, (P12763487655990009600.a n : ℤ) = A256320 n

end A256320

/-! ## A256320.P16412738296686771335

`round((2*n)^gcd(2, 2*n)/3)`
-/

namespace A256320.P16412738296686771335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n) ^ Nat.gcd 2 (2 * n) : ℚ) / 3)

end

end A256320.P16412738296686771335

namespace A256320

/-- `round((2*n)^gcd(2, 2*n)/3)` -/
def P16412738296686771335.Spec : Prop :=
  ∀ n, P16412738296686771335.a n = A256320 n

end A256320

/-! ## A256320.P8446177224832379922

`round(2*n/3*lcm(n, 2*n))`
-/

namespace A256320.P8446177224832379922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / 3 * (Nat.lcm n (2 * n) : ℚ))

end

end A256320.P8446177224832379922

namespace A256320

/-- `round(2*n/3*lcm(n, 2*n))` -/
def P8446177224832379922.Spec : Prop :=
  ∀ n, P8446177224832379922.a n = A256320 n

end A256320

/-! ## A256320.P16661187652282251230

`round(∪[2*n, (2*n)²]²/3)`
-/

namespace A256320.P16661187652282251230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n ^ 2 : ℚ) / 3)

end

end A256320.P16661187652282251230

namespace A256320

/-- `round(∪[2*n, (2*n)²]²/3)` -/
def P16661187652282251230.Spec : Prop :=
  ∀ n, P16661187652282251230.a n = A256320 n

end A256320

/-! ## A256320.P17877982892989544024

`∑[∑[a(n-3)%4]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=2`
-/

namespace A256320.P17877982892989544024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 2] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256320.P17877982892989544024

namespace A256320

/-- `∑[∑[a(n-3)%4]]` -/
def P17877982892989544024.Spec : Prop :=
  ∀ n, (P17877982892989544024.a n : ℤ) = A256320 n

end A256320

/-! ## A256320.P16139397886669822846

`n²-∑[a(n-3)-2]` with `a(0)=0, a(1)=0, a(2)=-1`
-/

namespace A256320.P16139397886669822846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1] fun n f1 =>
  f1 (n - 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256320.P16139397886669822846

namespace A256320

/-- `n²-∑[a(n-3)-2]` -/
def P16139397886669822846.Spec : Prop :=
  ∀ n, P16139397886669822846.a n = A256320 n

end A256320

/-! ## A256320.P1707515004485038577

`∑[ogf((x+3x^2+3x^3+x^4)/(1-x-x^3+x^4))]`
-/

namespace A256320.P1707515004485038577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 3, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256320.P1707515004485038577

namespace A256320

/-- `∑[ogf((x+3x^2+3x^3+x^4)/(1-x-x^3+x^4))]` -/
def P1707515004485038577.Spec : Prop :=
  ∀ n, P1707515004485038577.a n = A256320 n

end A256320

/-! ## A256320.P18379823082556709786

`round(2*n*xor(1, 2*n+1)/3)`
-/

namespace A256320.P18379823082556709786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) * ((Nat.xor 1 (2 * n + 1) : ℚ) / 3))

end

end A256320.P18379823082556709786

namespace A256320

/-- `round(2*n*xor(1, 2*n+1)/3)` -/
def P18379823082556709786.Spec : Prop :=
  ∀ n, P18379823082556709786.a n = A256320 n

end A256320

/-! ## A256320.P11872157745475810321

`2*∑[comp[4*(n+1)]]-n²%3`
-/

namespace A256320.P11872157745475810321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A256320.P11872157745475810321

namespace A256320

/-- `2*∑[comp[4*(n+1)]]-n²%3` -/
def P11872157745475810321.Spec : Prop :=
  ∀ n, P11872157745475810321.a n = A256320 n

end A256320

/-! ## A256320.P1638744267270982900

`round(2*n*and(2*n+1, 2*n)/3)`
-/

namespace A256320.P1638744267270982900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) * ((Nat.land (2 * n + 1) (2 * n) : ℚ) / 3))

end

end A256320.P1638744267270982900

namespace A256320

/-- `round(2*n*and(2*n+1, 2*n)/3)` -/
def P1638744267270982900.Spec : Prop :=
  ∀ n, P1638744267270982900.a n = A256320 n

end A256320

/-!
# A256321: Number of partitions of 5n into exactly 3 parts.

The programs for A256321, the canonical program `A256321.P18025345864986434775` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256321 has offset 0).

The definition of A256321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256321.P18025345864986434775

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=19, a(4)=33, a(5)=52`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256321

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P18025345864986434775.Spec : Prop :=
  ∀ n, P18025345864986434775.a n = A256321 n

theorem P18025345864986434775.correct : P18025345864986434775.Spec := by
  intro n
  simp only [A256321]

end A256321

/-! ## A256321.P10714652310919793353

`floor(((5*n)²/3+1)/4)`
-/

namespace A256321.P10714652310919793353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((5 * n) ^ 2 : ℚ) / 3 + 1) / 4⌋

end

end A256321.P10714652310919793353

namespace A256321

/-- `floor(((5*n)²/3+1)/4)` -/
def P10714652310919793353.Spec : Prop :=
  ∀ n, P10714652310919793353.a n = A256321 n

end A256321

/-! ## A256321.P11299642016142152080

`round(A016850(n)/12)`
-/

namespace A256321.P11299642016142152080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016850 n : ℚ) / 12)

end

end A256321.P11299642016142152080

namespace A256321

/-- `round(A016850(n)/12)` -/
def P11299642016142152080.Spec : Prop :=
  ∀ n, P11299642016142152080.a n = A256321 n

end A256321

/-! ## A256321.P10945166994064499163

`A069905(n)+2*n²`
-/

namespace A256321.P10945166994064499163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + (2 * n ^ 2 : ℤ)

end

end A256321.P10945166994064499163

namespace A256321

/-- `A069905(n)+2*n²` -/
def P10945166994064499163.Spec : Prop :=
  ∀ n, P10945166994064499163.a n = A256321 n

end A256321

/-! ## A256321.P1225982385362484153

`A256322(n)-2*n²`
-/

namespace A256321.P1225982385362484153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256322 n - (2 * n ^ 2 : ℤ)

end

end A256321.P1225982385362484153

namespace A256321

/-- `A256322(n)-2*n²` -/
def P1225982385362484153.Spec : Prop :=
  ∀ n, P1225982385362484153.a n = A256321 n

end A256321

/-! ## A256321.P441598265810438026

`A056220(n)+A014591(n)`
-/

namespace A256321.P441598265810438026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + A014591 n

end

end A256321.P441598265810438026

namespace A256321

/-- `A056220(n)+A014591(n)` -/
def P441598265810438026.Spec : Prop :=
  ∀ n, P441598265810438026.a n = A256321 n

end A256321

/-! ## A256321.P15751186754356476939

`A256320(n)+A077043(n)`
-/

namespace A256321.P15751186754356476939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + A077043 n

end

end A256321.P15751186754356476939

namespace A256321

/-- `A256320(n)+A077043(n)` -/
def P15751186754356476939.Spec : Prop :=
  ∀ n, P15751186754356476939.a n = A256321 n

end A256321

/-! ## A256321.P11016970524911626436

`A330451(n)-A032527(n)`
-/

namespace A256321.P11016970524911626436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330451 n - A032527 n

end

end A256321.P11016970524911626436

namespace A256321

/-- `A330451(n)-A032527(n)` -/
def P11016970524911626436.Spec : Prop :=
  ∀ n, P11016970524911626436.a n = A256321 n

end A256321

/-! ## A256321.P7455976916272483982

`A000290(n)+A069905(n)+n²`
-/

namespace A256321.P7455976916272483982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A069905 n + (n ^ 2 : ℤ))

end

end A256321.P7455976916272483982

namespace A256321

/-- `A000290(n)+A069905(n)+n²` -/
def P7455976916272483982.Spec : Prop :=
  ∀ n, P7455976916272483982.a n = A256321 n

end A256321

/-! ## A256321.P8250740013979903389

`n²+A077043(n)+A000212(n)`
-/

namespace A256321.P8250740013979903389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A077043 n + A000212 n)

end

end A256321.P8250740013979903389

namespace A256321

/-- `n²+A077043(n)+A000212(n)` -/
def P8250740013979903389.Spec : Prop :=
  ∀ n, P8250740013979903389.a n = A256321 n

end A256321

/-! ## A256321.P10449107627995519748

`n²+A256322(n)-A033428(n)`
-/

namespace A256321.P10449107627995519748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A256322 n - A033428 n)

end

end A256321.P10449107627995519748

namespace A256321

/-- `n²+A256322(n)-A033428(n)` -/
def P10449107627995519748.Spec : Prop :=
  ∀ n, P10449107627995519748.a n = A256321 n

end A256321

/-! ## A256321.P3636843089555134358

`A211540(n+2)+2*n²`
-/

namespace A256321.P3636843089555134358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 2) + (2 * n ^ 2 : ℤ)

end

end A256321.P3636843089555134358

namespace A256321

/-- `A211540(n+2)+2*n²` -/
def P3636843089555134358.Spec : Prop :=
  ∀ n, P3636843089555134358.a n = A256321 n

end A256321

/-! ## A256321.P14556650209596555826

`A005044(2*n)+2*n²`
-/

namespace A256321.P14556650209596555826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n) + (2 * n ^ 2 : ℤ)

end

end A256321.P14556650209596555826

namespace A256321

/-- `A005044(2*n)+2*n²` -/
def P14556650209596555826.Spec : Prop :=
  ∀ n, P14556650209596555826.a n = A256321 n

end A256321

/-! ## A256321.P17042821383943644304

`A077043(n)+A000212(2*n)`
-/

namespace A256321.P17042821383943644304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A000212 (2 * n)

end

end A256321.P17042821383943644304

namespace A256321

/-- `A077043(n)+A000212(2*n)` -/
def P17042821383943644304.Spec : Prop :=
  ∀ n, P17042821383943644304.a n = A256321 n

end A256321

/-! ## A256321.P15549538824420449639

`A397972(2*n)-A249547(n)`
-/

namespace A256321.P15549538824420449639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 (2 * n) - A249547 n

end

end A256321.P15549538824420449639

namespace A256321

/-- `A397972(2*n)-A249547(n)` -/
def P15549538824420449639.Spec : Prop :=
  ∀ n, P15549538824420449639.a n = A256321 n

end A256321

/-! ## A256321.P15318210315534457778

`A007590(2*n)+A005044(2*n)`
-/

namespace A256321.P15318210315534457778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (2 * n) + A005044 (2 * n)

end

end A256321.P15318210315534457778

namespace A256321

/-- `A007590(2*n)+A005044(2*n)` -/
def P15318210315534457778.Spec : Prop :=
  ∀ n, P15318210315534457778.a n = A256321 n

end A256321

/-! ## A256321.P14649885976412121125

`A129819(2*n)+A000212(2*n)`
-/

namespace A256321.P14649885976412121125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (2 * n) + A000212 (2 * n)

end

end A256321.P14649885976412121125

namespace A256321

/-- `A129819(2*n)+A000212(2*n)` -/
def P14649885976412121125.Spec : Prop :=
  ∀ n, P14649885976412121125.a n = A256321 n

end A256321

/-! ## A256321.P12823360714627996144

`A069905(5*n)`
-/

namespace A256321.P12823360714627996144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (5 * n)

end

end A256321.P12823360714627996144

namespace A256321

/-- `A069905(5*n)` -/
def P12823360714627996144.Spec : Prop :=
  ∀ n, P12823360714627996144.a n = A256321 n

end A256321

/-! ## A256321.P8441514141035864148

`A211540(5*n+2)`
-/

namespace A256321.P8441514141035864148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (5 * n + 2)

end

end A256321.P8441514141035864148

namespace A256321

/-- `A211540(5*n+2)` -/
def P8441514141035864148.Spec : Prop :=
  ∀ n, P8441514141035864148.a n = A256321 n

end A256321

/-! ## A256321.P15321925500909884511

`record[A211540(A014682(n+1)+n)]`
-/

namespace A256321.P15321925500909884511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A014682 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256321.P15321925500909884511

namespace A256321

/-- `record[A211540(A014682(n+1)+n)]` -/
def P15321925500909884511.Spec : Prop :=
  ∀ n, P15321925500909884511.a n = A256321 n

end A256321

/-!
# A256322: Number of partitions of 7n into exactly 3 parts.

The programs for A256322, the canonical program `A256322.P1233813669141647770` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256322 has offset 0).

The definition of A256322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256322.P1233813669141647770

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=37, a(4)=65, a(5)=102`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256322

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P1233813669141647770.Spec : Prop :=
  ∀ n, P1233813669141647770.a n = A256322 n

theorem P1233813669141647770.correct : P1233813669141647770.Spec := by
  intro n
  simp only [A256322]

end A256322

/-! ## A256322.P6878082372125472670

`round((7*n)²/12)`
-/

namespace A256322.P6878082372125472670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((7 * n) ^ 2 : ℚ) / 12)

end

end A256322.P6878082372125472670

namespace A256322

/-- `round((7*n)²/12)` -/
def P6878082372125472670.Spec : Prop :=
  ∀ n, P6878082372125472670.a n = A256322 n

end A256322

/-! ## A256322.P12255519705630156470

`A069905(n)+(2*n)²`
-/

namespace A256322.P12255519705630156470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + ((2 * n) ^ 2 : ℤ)

end

end A256322.P12255519705630156470

namespace A256322

/-- `A069905(n)+(2*n)²` -/
def P12255519705630156470.Spec : Prop :=
  ∀ n, P12255519705630156470.a n = A256322 n

end A256322

/-! ## A256322.P17239531957390083188

`A256321(n)+2*n²`
-/

namespace A256322.P17239531957390083188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256321 n + (2 * n ^ 2 : ℤ)

end

end A256322.P17239531957390083188

namespace A256322

/-- `A256321(n)+2*n²` -/
def P17239531957390083188.Spec : Prop :=
  ∀ n, P17239531957390083188.a n = A256322 n

end A256322

/-! ## A256322.P11234117693599260598

`A330451(n)+ceil(3*(n/2)²)`
-/

namespace A256322.P11234117693599260598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330451 n + ⌈3 * ((n : ℚ) / 2) ^ 2⌉

end

end A256322.P11234117693599260598

namespace A256322

/-- `A330451(n)+ceil(3*(n/2)²)` -/
def P11234117693599260598.Spec : Prop :=
  ∀ n, P11234117693599260598.a n = A256322 n

end A256322

/-! ## A256322.P1464615445970810432

`A014591(n)+A000466(n)`
-/

namespace A256322.P1464615445970810432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n + A000466 n

end

end A256322.P1464615445970810432

namespace A256322

/-- `A014591(n)+A000466(n)` -/
def P1464615445970810432.Spec : Prop :=
  ∀ n, P1464615445970810432.a n = A256322 n

end A256322

/-! ## A256322.P13875833859015283207

`A001105(n)+A069905(n)+A001105(n)`
-/

namespace A256322.P13875833859015283207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + (A069905 n + A001105 n)

end

end A256322.P13875833859015283207

namespace A256322

/-- `A001105(n)+A069905(n)+A001105(n)` -/
def P13875833859015283207.Spec : Prop :=
  ∀ n, P13875833859015283207.a n = A256322 n

end A256322

/-! ## A256322.P17739437875599189430

`A211540(n+2)+(2*n)²`
-/

namespace A256322.P17739437875599189430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 2) + ((2 * n) ^ 2 : ℤ)

end

end A256322.P17739437875599189430

namespace A256322

/-- `A211540(n+2)+(2*n)²` -/
def P17739437875599189430.Spec : Prop :=
  ∀ n, P17739437875599189430.a n = A256322 n

end A256322

/-! ## A256322.P17609740226370833996

`A005044(2*n)+(2*n)²`
-/

namespace A256322.P17609740226370833996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n) + ((2 * n) ^ 2 : ℤ)

end

end A256322.P17609740226370833996

namespace A256322

/-- `A005044(2*n)+(2*n)²` -/
def P17609740226370833996.Spec : Prop :=
  ∀ n, P17609740226370833996.a n = A256322 n

end A256322

/-! ## A256322.P71671668048064651

`record[A014681(n)²]+round(n²/12)`
-/

namespace A256322.P71671668048064651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A256322.P71671668048064651

namespace A256322

/-- `record[A014681(n)²]+round(n²/12)` -/
def P71671668048064651.Spec : Prop :=
  ∀ n, P71671668048064651.a n = A256322 n

end A256322

/-! ## A256322.P13690305404807434353

`A001105(n)+A069905(5*n)`
-/

namespace A256322.P13690305404807434353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + A069905 (5 * n)

end

end A256322.P13690305404807434353

namespace A256322

/-- `A001105(n)+A069905(5*n)` -/
def P13690305404807434353.Spec : Prop :=
  ∀ n, P13690305404807434353.a n = A256322 n

end A256322

/-! ## A256322.P183130537279688437

`A069905(7*n)`
-/

namespace A256322.P183130537279688437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (7 * n)

end

end A256322.P183130537279688437

namespace A256322

/-- `A069905(7*n)` -/
def P183130537279688437.Spec : Prop :=
  ∀ n, P183130537279688437.a n = A256322 n

end A256322

/-! ## A256322.P4328952177531458570

`A211540(7*n+2)`
-/

namespace A256322.P4328952177531458570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (7 * n + 2)

end

end A256322.P4328952177531458570

namespace A256322

/-- `A211540(7*n+2)` -/
def P4328952177531458570.Spec : Prop :=
  ∀ n, P4328952177531458570.a n = A256322 n

end A256322

/-! ## A256322.P11339251755198531279

`A005044(2*7*n)`
-/

namespace A256322.P11339251755198531279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * (7 * n))

end

end A256322.P11339251755198531279

namespace A256322

/-- `A005044(2*7*n)` -/
def P11339251755198531279.Spec : Prop :=
  ∀ n, P11339251755198531279.a n = A256322 n

end A256322

/-! ## A256322.P13465956771581800539

`A256320(2*n)-A001068(n²)`
-/

namespace A256322.P13465956771581800539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 (2 * n) - A001068 (n ^ 2)

end

end A256322.P13465956771581800539

namespace A256322

/-- `A256320(2*n)-A001068(n²)` -/
def P13465956771581800539.Spec : Prop :=
  ∀ n, P13465956771581800539.a n = A256322 n

end A256322

/-!
# A256325: a(n) = Sum_{k=0..n-1} (n-k)!*exp(-k/2)*M_{k-n,1/2}(k), where M is the Whittaker function.

The programs for A256325, there is no canonical definition to state claims against.
-/

/-! ## A256325.P7016270574149220263

`∑[A074796(A073478(n))]`
-/

namespace A256325.P7016270574149220263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074796 (A073478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256325.P7016270574149220263

/-! ## A256325.P1709861511346079589

`A194220(2*A352435(n))`
-/

namespace A256325.P1709861511346079589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (2 * A352435 n).toNat

end

end A256325.P1709861511346079589

/-! ## A256325.P478572072253291772

`A002265(3*A352435(n))`
-/

namespace A256325.P478572072253291772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A352435 n).toNat

end

end A256325.P478572072253291772

/-!
# A256326: Numbers k such that 3*R_(k+2) - 2*10^k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256326, there is no canonical definition to state claims against.
-/

/-! ## A256326.P13440945983047453603

`eq[A036453(n+1), A241019(n+2)]`
-/

namespace A256326.P13440945983047453603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241019 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256326.P13440945983047453603

/-! ## A256326.P5041706139010986189

`eq[A055027(n+1), A241019(n+2)]`
-/

namespace A256326.P5041706139010986189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241019 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256326.P5041706139010986189

/-! ## A256326.P17375637553136475393

`eq[A143098(n+1), A241019(n+2)]`
-/

namespace A256326.P17375637553136475393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241019 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256326.P17375637553136475393

/-! ## A256326.P16933452996417463475

`eq[A226774(n+1), A241019(n+2)]`
-/

namespace A256326.P16933452996417463475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241019 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256326.P16933452996417463475

/-!
# A256327: Number of partitions of 5n into exactly 4 parts.

The programs for A256327, the canonical program `A256327.P1381989048257015043` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256327 has offset 0).

The definition of A256327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256327.P1381989048257015043

`A026810(5*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256327

/-- `A026810(5*n)` -/
def P1381989048257015043.Spec : Prop :=
  ∀ n, P1381989048257015043.a n = A256327 n

theorem P1381989048257015043.correct : P1381989048257015043.Spec := by
  intro n
  simp only [A256327]

end A256327

/-! ## A256327.P8003330783427014757

`A026810(A008706(n))%A212668(n+1)`
-/

namespace A256327.P8003330783427014757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026810 (A008706 n).toNat) (A212668 (n + 1))

end

end A256327.P8003330783427014757

namespace A256327

/-- `A026810(A008706(n))%A212668(n+1)` -/
def P8003330783427014757.Spec : Prop :=
  ∀ n, P8003330783427014757.a n = A256327 n

end A256327

/-! ## A256327.P7225967383827601753

`record[A026810(gcd(n, A008738(n)))]`
-/

namespace A256327.P7225967383827601753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.gcd (n : ℤ) (A008738 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256327.P7225967383827601753

namespace A256327

/-- `record[A026810(gcd(n, A008738(n)))]` -/
def P7225967383827601753.Spec : Prop :=
  ∀ n, P7225967383827601753.a n = A256327 n

end A256327

/-! ## A256327.P18097172874097707285

`record[A026810(A000292(n)%(n+1))]`
-/

namespace A256327.P18097172874097707285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.tmod (A000292 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256327.P18097172874097707285

namespace A256327

/-- `record[A026810(A000292(n)%(n+1))]` -/
def P18097172874097707285.Spec : Prop :=
  ∀ n, P18097172874097707285.a n = A256327 n

end A256327

/-! ## A256327.P8022329947174937135

`record[A026810(A008778(n)%(n+1))]`
-/

namespace A256327.P8022329947174937135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Int.tmod (A008778 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256327.P8022329947174937135

namespace A256327

/-- `record[A026810(A008778(n)%(n+1))]` -/
def P8022329947174937135.Spec : Prop :=
  ∀ n, P8022329947174937135.a n = A256327 n

end A256327

/-! ## A256327.P4452385722750013757

`A288165(3*5*n)`
-/

namespace A256327.P4452385722750013757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (3 * (5 * n))

end

end A256327.P4452385722750013757

namespace A256327

/-- `A288165(3*5*n)` -/
def P4452385722750013757.Spec : Prop :=
  ∀ n, P4452385722750013757.a n = A256327 n

end A256327

/-! ## A256327.P6585995982390233943

`A029425(A128470(n))`
-/

namespace A256327.P6585995982390233943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (A128470 n).toNat

end

end A256327.P6585995982390233943

namespace A256327

/-- `A029425(A128470(n))` -/
def P6585995982390233943.Spec : Prop :=
  ∀ n, P6585995982390233943.a n = A256327 n

end A256327

/-!
# A256328: Number of partitions of 6n into exactly 4 parts.

The programs for A256328, the canonical program `A256328.P3892145085088026217` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256328 has offset 0).

The definition of A256328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256328.P3892145085088026217

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=15, a(3)=47, a(4)=108`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256328

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3892145085088026217.Spec : Prop :=
  ∀ n, P3892145085088026217.a n = A256328 n

theorem P3892145085088026217.correct : P3892145085088026217.Spec := by
  intro n
  simp only [A256328]

end A256328

/-! ## A256328.P16487141110385669082

`floor((6*n+3)*n²/4)`
-/

namespace A256328.P16487141110385669082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 * n + 3) * n ^ 2 : ℚ) / 4⌋

end

end A256328.P16487141110385669082

namespace A256328

/-- `floor((6*n+3)*n²/4)` -/
def P16487141110385669082.Spec : Prop :=
  ∀ n, P16487141110385669082.a n = A256328 n

end A256328

/-! ## A256328.P10285623504673153328

`A011934(n)+n^3`
-/

namespace A256328.P10285623504673153328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + (n ^ 3 : ℤ)

end

end A256328.P10285623504673153328

namespace A256328

/-- `A011934(n)+n^3` -/
def P10285623504673153328.Spec : Prop :=
  ∀ n, P10285623504673153328.a n = A256328 n

end A256328

/-! ## A256328.P10731469199337486377

`n^3+abs(A232599(n))`
-/

namespace A256328.P10731469199337486377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + |A232599 n|

end

end A256328.P10731469199337486377

namespace A256328

/-- `n^3+abs(A232599(n))` -/
def P10731469199337486377.Spec : Prop :=
  ∀ n, P10731469199337486377.a n = A256328 n

end A256328

/-! ## A256328.P10093760653065093548

`round(n*A195319(n)/4)`
-/

namespace A256328.P10093760653065093548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * A195319 n : ℚ) / 4)

end

end A256328.P10093760653065093548

namespace A256328

/-- `round(n*A195319(n)/4)` -/
def P10093760653065093548.Spec : Prop :=
  ∀ n, P10093760653065093548.a n = A256328 n

end A256328

/-! ## A256328.P16807959287908370587

`∑[A032528(n)]+n*n²`
-/

namespace A256328.P16807959287908370587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * n ^ 2 : ℤ)

end

end A256328.P16807959287908370587

namespace A256328

/-- `∑[A032528(n)]+n*n²` -/
def P16807959287908370587.Spec : Prop :=
  ∀ n, P16807959287908370587.a n = A256328 n

end A256328

/-! ## A256328.P17588483315870156394

`A000578(n)+∑[n²-∑[and(1, n)-n]]`
-/

namespace A256328.P17588483315870156394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256328.P17588483315870156394

namespace A256328

/-- `A000578(n)+∑[n²-∑[and(1, n)-n]]` -/
def P17588483315870156394.Spec : Prop :=
  ∀ n, P17588483315870156394.a n = A256328 n

end A256328

/-! ## A256328.P7368064704839909807

`A006578(n)+A004188(n)`
-/

namespace A256328.P7368064704839909807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n + A004188 n

end

end A256328.P7368064704839909807

namespace A256328

/-- `A006578(n)+A004188(n)` -/
def P7368064704839909807.Spec : Prop :=
  ∀ n, P7368064704839909807.a n = A256328 n

end A256328

/-! ## A256328.P7745451953372305111

`A153257(n)+A055232(n)`
-/

namespace A256328.P7745451953372305111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153257 n + A055232 n

end

end A256328.P7745451953372305111

namespace A256328

/-- `A153257(n)+A055232(n)` -/
def P7745451953372305111.Spec : Prop :=
  ∀ n, P7745451953372305111.a n = A256328 n

end A256328

/-! ## A256328.P1171261784172306139

`A024206(n+1)+A007586(n)`
-/

namespace A256328.P1171261784172306139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + A007586 n

end

end A256328.P1171261784172306139

namespace A256328

/-- `A024206(n+1)+A007586(n)` -/
def P1171261784172306139.Spec : Prop :=
  ∀ n, P1171261784172306139.a n = A256328 n

end A256328

/-! ## A256328.P3833723160922559435

`A007202(n)-A213772(n+1)`
-/

namespace A256328.P3833723160922559435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - A213772 (n + 1)

end

end A256328.P3833723160922559435

namespace A256328

/-- `A007202(n)-A213772(n+1)` -/
def P3833723160922559435.Spec : Prop :=
  ∀ n, P3833723160922559435.a n = A256328 n

end A256328

/-! ## A256328.P16723610896718218651

`A048395(n)-A182260(n+1)`
-/

namespace A256328.P16723610896718218651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n - A182260 (n + 1)

end

end A256328.P16723610896718218651

namespace A256328

/-- `A048395(n)-A182260(n+1)` -/
def P16723610896718218651.Spec : Prop :=
  ∀ n, P16723610896718218651.a n = A256328 n

end A256328

/-! ## A256328.P14358530911453058156

`A160378(n)+2*A002717(n)`
-/

namespace A256328.P14358530911453058156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + 2 * A002717 n

end

end A256328.P14358530911453058156

namespace A256328

/-- `A160378(n)+2*A002717(n)` -/
def P14358530911453058156.Spec : Prop :=
  ∀ n, P14358530911453058156.a n = A256328 n

end A256328

/-! ## A256328.P14092735618647258348

`A002620(n)+A007586(n)+n`
-/

namespace A256328.P14092735618647258348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A007586 n + (n : ℤ))

end

end A256328.P14092735618647258348

namespace A256328

/-- `A002620(n)+A007586(n)+n` -/
def P14092735618647258348.Spec : Prop :=
  ∀ n, P14092735618647258348.a n = A256328 n

end A256328

/-! ## A256328.P9466752458325577431

`A002620(n)+n*A005449(n)`
-/

namespace A256328.P9466752458325577431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (n : ℤ) * A005449 n

end

end A256328.P9466752458325577431

namespace A256328

/-- `A002620(n)+n*A005449(n)` -/
def P9466752458325577431.Spec : Prop :=
  ∀ n, P9466752458325577431.a n = A256328 n

end A256328

/-! ## A256328.P36355765601888660

`n*A045943(n)-A077043(n)`
-/

namespace A256328.P36355765601888660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045943 n - A077043 n

end

end A256328.P36355765601888660

namespace A256328

/-- `n*A045943(n)-A077043(n)` -/
def P36355765601888660.Spec : Prop :=
  ∀ n, P36355765601888660.a n = A256328 n

end A256328

/-! ## A256328.P10046837747271620768

`∑[A004526(n)]+n*A005449(n)`
-/

namespace A256328.P10046837747271620768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A005449 n

end

end A256328.P10046837747271620768

namespace A256328

/-- `∑[A004526(n)]+n*A005449(n)` -/
def P10046837747271620768.Spec : Prop :=
  ∀ n, P10046837747271620768.a n = A256328 n

end A256328

/-! ## A256328.P17976946086642819177

`∑[∑[A109613(n)]+A004273(n)²-1]`
-/

namespace A256328.P17976946086642819177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A004273 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256328.P17976946086642819177

namespace A256328

/-- `∑[∑[A109613(n)]+A004273(n)²-1]` -/
def P17976946086642819177.Spec : Prop :=
  ∀ n, P17976946086642819177.a n = A256328 n

end A256328

/-! ## A256328.P1315654052705722427

`A131941(2*n)+A131941(n+1)-(n+1)²`
-/

namespace A256328.P1315654052705722427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 (2 * n) + (A131941 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A256328.P1315654052705722427

namespace A256328

/-- `A131941(2*n)+A131941(n+1)-(n+1)²` -/
def P1315654052705722427.Spec : Prop :=
  ∀ n, P1315654052705722427.a n = A256328 n

end A256328

/-! ## A256328.P2135804075091597725

`A256313(2*n)`
-/

namespace A256328.P2135804075091597725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256313 (2 * n)

end

end A256328.P2135804075091597725

namespace A256328

/-- `A256313(2*n)` -/
def P2135804075091597725.Spec : Prop :=
  ∀ n, P2135804075091597725.a n = A256328 n

end A256328

/-!
# A256329: Number of partitions of 7n into exactly 4 parts.

The programs for A256329, the canonical program `A256329.P16039791981313738038` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256329 has offset 0).

The definition of A256329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256329.P16039791981313738038

`A026810(7*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256329

/-- `A026810(7*n)` -/
def P16039791981313738038.Spec : Prop :=
  ∀ n, P16039791981313738038.a n = A256329 n

theorem P16039791981313738038.correct : P16039791981313738038.Spec := by
  intro n
  simp only [A256329]

end A256329

/-! ## A256329.P3917211036586295301

`record[A026810(A195159(n))]`
-/

namespace A256329.P3917211036586295301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A195159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256329.P3917211036586295301

namespace A256329

/-- `record[A026810(A195159(n))]` -/
def P3917211036586295301.Spec : Prop :=
  ∀ n, P3917211036586295301.a n = A256329 n

end A256329

/-! ## A256329.P4608190938784455443

`record[A026810(A008585(n)-A001057(n))]`
-/

namespace A256329.P4608190938784455443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008585 n - A001057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256329.P4608190938784455443

namespace A256329

/-- `record[A026810(A008585(n)-A001057(n))]` -/
def P4608190938784455443.Spec : Prop :=
  ∀ n, P4608190938784455443.a n = A256329 n

end A256329

/-! ## A256329.P13940941385619959294

`A026810(A008589(n))/A014963(A052213(n+1))`
-/

namespace A256329.P13940941385619959294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026810 (A008589 n).toNat : ℚ) / (A014963 (A052213 (n + 1)).toNat : ℚ)

end

end A256329.P13940941385619959294

namespace A256329

/-- `A026810(A008589(n))/A014963(A052213(n+1))` -/
def P13940941385619959294.Spec : Prop :=
  ∀ n, P13940941385619959294.a n = (A256329 n : ℚ)

end A256329

/-! ## A256329.P2934858578081887245

`A288165(21*n)`
-/

namespace A256329.P2934858578081887245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (21 * n)

end

end A256329.P2934858578081887245

namespace A256329

/-- `A288165(21*n)` -/
def P2934858578081887245.Spec : Prop :=
  ∀ n, P2934858578081887245.a n = A256329 n

end A256329

/-!
# A256330: Number of H&S Family matchings on n edges.

The programs for A256330, there is no canonical definition to state claims against.
-/

/-! ## A256330.P5449094152634551099

`A141206(n²*n!+1)`
-/

namespace A256330.P5449094152634551099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (n ^ 2 * Nat.factorial n + 1)

end

end A256330.P5449094152634551099

/-!
# A256331: Number of Largest Hairpin Family matchings on n edges.

The programs for A256331, there is no canonical definition to state claims against.
-/

/-! ## A256331.P14268559056707024921

`A053645(A055544(2*n+1))+1`
-/

namespace A256331.P14268559056707024921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A055544 (2 * n + 1)).toNat + 1

end

end A256331.P14268559056707024921

/-!
# A256332: Number of D&P Family matchings on n edges.

The programs for A256332, there is no canonical definition to state claims against.
-/

/-! ## A256332.P2991398898848356257

`A352706(n)+A006924(A006924(n))`
-/

namespace A256332.P2991398898848356257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352706 n + A006924 (A006924 n).toNat

end

end A256332.P2991398898848356257

/-! ## A256332.P10461792666236588595

`A352706(n)+A165656(A011782(n))`
-/

namespace A256332.P10461792666236588595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352706 n + A165656 (A011782 n).toNat

end

end A256332.P10461792666236588595

/-!
# A256333: Number of R&G Family matchings on n edges.

The programs for A256333, there is no canonical definition to state claims against.
-/

/-! ## A256333.P4684843900212903630

`A183945(n+1)+A123108(A126473(n))`
-/

namespace A256333.P4684843900212903630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183945 (n + 1) + A123108 (A126473 n).toNat

end

end A256333.P4684843900212903630

/-! ## A256333.P17389313664149784763

`A051274(A047767(2*n+3)+A005061(n))`
-/

namespace A256333.P17389313664149784763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A047767 (2 * n + 3) + A005061 n).toNat

end

end A256333.P17389313664149784763

/-!
# A256334: Number of C&C Family matchings on n edges.

The programs for A256334, there is no canonical definition to state claims against.
-/

/-! ## A256334.P10181208613223073224

`A008621(A199142(2*n+3)-A232224(n))`
-/

namespace A256334.P10181208613223073224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A199142 (2 * n + 3) - A232224 n).toNat

end

end A256334.P10181208613223073224

/-! ## A256334.P17774435703946171564

`floor(A319765(2*n)/comp[∑[n-1]])`
-/

namespace A256334.P17774435703946171564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319765 (2 * n) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ)⌋

end

end A256334.P17774435703946171564

/-!
# A256335: Number of Largest Chain Family matchings on n edges.

The programs for A256335, there is no canonical definition to state claims against.
-/

/-! ## A256335.P381253121458120249

`or(floor(n/2)!, A003159(A107026(n)))`
-/

namespace A256335.P381253121458120249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) (A003159 (A107026 n).toNat)

end

end A256335.P381253121458120249

/-! ## A256335.P10924664963853705052

`A051516(A087404(n))+A002893(n)`
-/

namespace A256335.P10924664963853705052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A087404 n).toNat + A002893 n

end

end A256335.P10924664963853705052

/-!
# A256336: Number of Largest Chain Ladder Family (LCLF) matchings on n edges.

The programs for A256336, there is no canonical definition to state claims against.
-/

/-! ## A256336.P4699501176622259161

`A276798(∏[eq[n, ∏{d}[n, #]]]+5^n+7^n)`
-/

namespace A256336.P4699501176622259161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (∏ j ∈ Finset.range (n + 1), f1 j + (5 ^ n + 7 ^ n))

end

end A256336.P4699501176622259161

/-!
# A256337: Number of R&E Family matchings on n edges.

The programs for A256337, there is no canonical definition to state claims against.
-/

/-! ## A256337.P1972186887942852679

`A220911(n+1)-A085862(A348106(n))`
-/

namespace A256337.P1972186887942852679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220911 (n + 1) - A085862 (A348106 n).toNat

end

end A256337.P1972186887942852679

/-!
# A256338: Number of A&U Family matchings on n edges.

The programs for A256338, there is no canonical definition to state claims against.
-/

/-! ## A256338.P16515041747590710037

`A008619((n+1)²*A300511(n))`
-/

namespace A256338.P16515041747590710037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (((n + 1) ^ 2 : ℤ) * A300511 n).toNat

end

end A256338.P16515041747590710037

/-! ## A256338.P11100353573264929018

`A220188(A014500(n))+A212391(n+2)`
-/

namespace A256338.P11100353573264929018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220188 (A014500 n).toNat + A212391 (n + 2)

end

end A256338.P11100353573264929018

/-!
# A256340: Numbers which have only digits 7 and 8 in base 10.

The programs for A256340, there is no canonical definition to state claims against.
-/

/-! ## A256340.P8311586897668166482

`A256292(n+1)+A256077(n+1)`
-/

namespace A256340.P8311586897668166482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) + A256077 (n + 1)

end

end A256340.P8311586897668166482

/-! ## A256340.P9823628521231708334

`A007931(n+1)+A002280(A000523(n+2))`
-/

namespace A256340.P9823628521231708334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002280 (A000523 (n + 2)).toNat

end

end A256340.P9823628521231708334

/-! ## A256340.P12155587122825214629

`A256341(n+1)-A256077(n+1)`
-/

namespace A256340.P12155587122825214629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1) - A256077 (n + 1)

end

end A256340.P12155587122825214629

/-! ## A256340.P9624608378462998954

`A256291(n+1)+2*A256077(n+1)`
-/

namespace A256340.P9624608378462998954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + 2 * A256077 (n + 1)

end

end A256340.P9624608378462998954

/-! ## A256340.P15856458742748845994

`2*A256290(n+1)-A007931(n+1)`
-/

namespace A256340.P15856458742748845994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256290 (n + 1) - A007931 (n + 1)

end

end A256340.P15856458742748845994

/-! ## A256340.P11569160936501718538

`2*A256291(n+1)-A032834(n+1)`
-/

namespace A256340.P11569160936501718538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256291 (n + 1) - A032834 (n + 1)

end

end A256340.P11569160936501718538

/-! ## A256340.P13714313448298369823

`2*A284634(n+1)-A032822(n+1)`
-/

namespace A256340.P13714313448298369823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A032822 (n + 1)

end

end A256340.P13714313448298369823

/-! ## A256340.P5417582543237582896

`2*A256292(n+1)-A256291(n+1)`
-/

namespace A256340.P5417582543237582896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256292 (n + 1) - A256291 (n + 1)

end

end A256340.P5417582543237582896

/-! ## A256340.P9120000146159960530

`A032810(n+1)+A256292(n+1)-A007931(n+1)`
-/

namespace A256340.P9120000146159960530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256292 (n + 1) - A007931 (n + 1))

end

end A256340.P9120000146159960530

/-! ## A256340.P2259375858412915805

`A032834(n+1)+A256291(n+1)-A007931(n+1)`
-/

namespace A256340.P2259375858412915805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256291 (n + 1) - A007931 (n + 1))

end

end A256340.P2259375858412915805

/-! ## A256340.P5395545168506143110

`A007931(n+1)+A256341(n+1)-A032810(n+1)`
-/

namespace A256340.P5395545168506143110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A256341 (n + 1) - A032810 (n + 1))

end

end A256340.P5395545168506143110

/-! ## A256340.P1979243046765681300

`A032834(n+1)+A256292(n+1)-A032810(n+1)`
-/

namespace A256340.P1979243046765681300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256292 (n + 1) - A032810 (n + 1))

end

end A256340.P1979243046765681300

/-! ## A256340.P14458966100211822342

`A032810(n+1)+A256341(n+1)-A032834(n+1)`
-/

namespace A256340.P14458966100211822342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256341 (n + 1) - A032834 (n + 1))

end

end A256340.P14458966100211822342

/-! ## A256340.P13240044225907749944

`A256290(n+1)+A256291(n+1)-A032810(n+1)`
-/

namespace A256340.P13240044225907749944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256291 (n + 1) - A032810 (n + 1))

end

end A256340.P13240044225907749944

/-! ## A256340.P1838453655591129489

`A256290(n+1)+A256292(n+1)-A032834(n+1)`
-/

namespace A256340.P1838453655591129489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256292 (n + 1) - A032834 (n + 1))

end

end A256340.P1838453655591129489

/-! ## A256340.P312210373251521638

`A032834(n+1)+A256341(n+1)-A256290(n+1)`
-/

namespace A256340.P312210373251521638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256341 (n + 1) - A256290 (n + 1))

end

end A256340.P312210373251521638

/-! ## A256340.P5022444076292938652

`A256290(n+1)+A284971(n+1)-A032822(n+1)`
-/

namespace A256340.P5022444076292938652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284971 (n + 1) - A032822 (n + 1))

end

end A256340.P5022444076292938652

/-! ## A256340.P7462374148040175825

`A143967(n+1)+A285011(n+1)-A284963(n+1)`
-/

namespace A256340.P7462374148040175825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) + (A285011 (n + 1) - A284963 (n + 1))

end

end A256340.P7462374148040175825

/-! ## A256340.P5066632269178447623

`A256291(n+1)+A256292(n+1)-A256290(n+1)`
-/

namespace A256340.P5066632269178447623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + (A256292 (n + 1) - A256290 (n + 1))

end

end A256340.P5066632269178447623

/-! ## A256340.P12192915757929370784

`A256290(n+1)+A256341(n+1)-A256291(n+1)`
-/

namespace A256340.P12192915757929370784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256341 (n + 1) - A256291 (n + 1))

end

end A256340.P12192915757929370784

/-!
# A256341: Numbers which have only digits 8 and 9 in base 10.

The programs for A256341, there is no canonical definition to state claims against.
-/

/-! ## A256341.P2940221544569654206

`A007931(n+1)+A002281(A000523(n+2))`
-/

namespace A256341.P2940221544569654206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + A002281 (A000523 (n + 2)).toNat

end

end A256341.P2940221544569654206

/-! ## A256341.P7974077081087620350

`A256340(n+1)+A256077(n+1)`
-/

namespace A256341.P7974077081087620350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256340 (n + 1) + A256077 (n + 1)

end

end A256341.P7974077081087620350

/-! ## A256341.P17521565645069023063

`A256292(n+1)+2*A256077(n+1)`
-/

namespace A256341.P17521565645069023063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256292 (n + 1) + 2 * A256077 (n + 1)

end

end A256341.P17521565645069023063

/-! ## A256341.P8603977866285597809

`2*A256291(n+1)-A032810(n+1)`
-/

namespace A256341.P8603977866285597809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256291 (n + 1) - A032810 (n + 1)

end

end A256341.P8603977866285597809

/-! ## A256341.P6951676914566919351

`2*A284380(n+1)-A072961(n+1)`
-/

namespace A256341.P6951676914566919351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A072961 (n + 1)

end

end A256341.P6951676914566919351

/-! ## A256341.P18265124992649400550

`2*A256292(n+1)-A256290(n+1)`
-/

namespace A256341.P18265124992649400550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256292 (n + 1) - A256290 (n + 1)

end

end A256341.P18265124992649400550

/-! ## A256341.P7043587283729449540

`2*A256340(n+1)-A256292(n+1)`
-/

namespace A256341.P7043587283729449540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256340 (n + 1) - A256292 (n + 1)

end

end A256341.P7043587283729449540

/-! ## A256341.P15689098522446101

`2*A284381(n+1)-A284921(n+1)`
-/

namespace A256341.P15689098522446101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284381 (n + 1) - A284921 (n + 1)

end

end A256341.P15689098522446101

/-! ## A256341.P15044820218982875594

`2*A284382(n+1)-A284923(n+1)`
-/

namespace A256341.P15044820218982875594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284382 (n + 1) - A284923 (n + 1)

end

end A256341.P15044820218982875594

/-! ## A256341.P17657890804135051993

`A032834(n+1)+A256292(n+1)-A007931(n+1)`
-/

namespace A256341.P17657890804135051993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256292 (n + 1) - A007931 (n + 1))

end

end A256341.P17657890804135051993

/-! ## A256341.P9561748008199536460

`A032810(n+1)+A256340(n+1)-A007931(n+1)`
-/

namespace A256341.P9561748008199536460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + (A256340 (n + 1) - A007931 (n + 1))

end

end A256341.P9561748008199536460

/-! ## A256341.P17362395925209216923

`A032834(n+1)+A256340(n+1)-A032810(n+1)`
-/

namespace A256341.P17362395925209216923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A256340 (n + 1) - A032810 (n + 1))

end

end A256341.P17362395925209216923

/-! ## A256341.P1698843263423508640

`A256290(n+1)+A256291(n+1)-A007931(n+1)`
-/

namespace A256341.P1698843263423508640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256291 (n + 1) - A007931 (n + 1))

end

end A256341.P1698843263423508640

/-! ## A256341.P343704691630433384

`A256290(n+1)+A256292(n+1)-A032810(n+1)`
-/

namespace A256341.P343704691630433384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256292 (n + 1) - A032810 (n + 1))

end

end A256341.P343704691630433384

/-! ## A256341.P5027795469307153525

`A256291(n+1)+A256292(n+1)-A032834(n+1)`
-/

namespace A256341.P5027795469307153525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + (A256292 (n + 1) - A032834 (n + 1))

end

end A256341.P5027795469307153525

/-! ## A256341.P1782980662101671727

`A256290(n+1)+A256340(n+1)-A032834(n+1)`
-/

namespace A256341.P1782980662101671727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A256340 (n + 1) - A032834 (n + 1))

end

end A256341.P1782980662101671727

/-! ## A256341.P9065835188904315100

`A284971(n+1)+A285011(n+1)-A143967(n+1)`
-/

namespace A256341.P9065835188904315100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) + (A285011 (n + 1) - A143967 (n + 1))

end

end A256341.P9065835188904315100

/-! ## A256341.P3946672041951202277

`A256291(n+1)+A256340(n+1)-A256290(n+1)`
-/

namespace A256341.P3946672041951202277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + (A256340 (n + 1) - A256290 (n + 1))

end

end A256341.P3946672041951202277

/-! ## A256341.P1859326267607430903

`A256290(n+1)+A284382(n+1)-A276037(n+1)`
-/

namespace A256341.P1859326267607430903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284382 (n + 1) - A276037 (n + 1))

end

end A256341.P1859326267607430903

/-! ## A256341.P16344490054159494250

`A256291(n+1)+A284382(n+1)-A284632(n+1)`
-/

namespace A256341.P16344490054159494250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256291 (n + 1) + (A284382 (n + 1) - A284632 (n + 1))

end

end A256341.P16344490054159494250

/-!
# A256342: Moduli n for which A248218(n) = 2 (length of the terminating cycle of 0 under x -> x^2+1 modulo n).

The programs for A256342, there is no canonical definition to state claims against.
-/

/-! ## A256342.P18185021754147083017

`eq[2, A248218(n+1)]+1`
-/

namespace A256342.P18185021754147083017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256342.P18185021754147083017

/-! ## A256342.P3978164073011020583

`eq[2, A248218(A028310(n))]`
-/

namespace A256342.P3978164073011020583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P3978164073011020583

/-! ## A256342.P7160051214787805112

`eq[2, A248218(A257088(n))]`
-/

namespace A256342.P7160051214787805112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P7160051214787805112

/-! ## A256342.P2518919167644238399

`A020725(eq[2, A248218(n+1)])`
-/

namespace A256342.P2518919167644238399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256342.P2518919167644238399

/-! ## A256342.P14854168732453660720

`eq[2, A248218(A000007(n)+n)]`
-/

namespace A256342.P14854168732453660720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P14854168732453660720

/-! ## A256342.P9961707663733725473

`eq[2, A248218(A004277(n)-n)]`
-/

namespace A256342.P9961707663733725473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P9961707663733725473

/-! ## A256342.P7919341079553900089

`eq[2, A248218(A123108(2*n))]`
-/

namespace A256342.P7919341079553900089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P7919341079553900089

/-! ## A256342.P17677888086363783115

`eq[2, A248218(A110655(A008574(n)))]`
-/

namespace A256342.P17677888086363783115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256342.P17677888086363783115

/-!
# A256343: Moduli k for which A248218(k) = 3 (length of the terminating cycle of 0 under x -> x^2+1 modulo k).

The programs for A256343, there is no canonical definition to state claims against.
-/

/-! ## A256343.P13841539204996946227

`eq[3, A248218(n+1)]+1`
-/

namespace A256343.P13841539204996946227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256343.P13841539204996946227

/-! ## A256343.P622479198772357936

`eq[3, A248218(A093178(n))]`
-/

namespace A256343.P622479198772357936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256343.P622479198772357936

/-! ## A256343.P8455253631613878879

`A005408(eq[3, A248218(A005408(n))])`
-/

namespace A256343.P8455253631613878879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256343.P8455253631613878879

/-! ## A256343.P9300533146693756544

`A267872(eq[3, A248218(A267872(n))])`
-/

namespace A256343.P9300533146693756544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A267872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256343.P9300533146693756544

/-! ## A256343.P980068832987768532

`A273670(eq[3, A248218(A273670(n))])`
-/

namespace A256343.P980068832987768532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A273670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256343.P980068832987768532

/-! ## A256343.P17269332934969947320

`eq[3, A248218(A257088(n))]`
-/

namespace A256343.P17269332934969947320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256343.P17269332934969947320

/-! ## A256343.P10917255428815429559

`eq[1, A248218(A028310(n))-2]`
-/

namespace A256343.P10917255428815429559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256343.P10917255428815429559

/-! ## A256343.P3900092132078788686

`A079097(eq[3, A248218(n+1)])`
-/

namespace A256343.P3900092132078788686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256343.P3900092132078788686

/-! ## A256343.P5318686790983971499

`eq[3, A248218(A233583(n+1))]`
-/

namespace A256343.P5318686790983971499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256343.P5318686790983971499

/-!
# A256344: Moduli n for which A248218(n) = 4 (length of the terminating cycle of 0 under x -> x^2+1 modulo n).

The programs for A256344, there is no canonical definition to state claims against.
-/

/-! ## A256344.P11818405805397656940

`eq[4, A248218(n+1)]+1`
-/

namespace A256344.P11818405805397656940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256344.P11818405805397656940

/-! ## A256344.P12121633040368601498

`eq[4, A248218(A004277(n))]`
-/

namespace A256344.P12121633040368601498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P12121633040368601498

/-! ## A256344.P9365314374645582900

`eq[4, A248218(A008574(n))]`
-/

namespace A256344.P9365314374645582900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P9365314374645582900

/-! ## A256344.P1893404553700969839

`eq[4, A248218(A028310(n))]`
-/

namespace A256344.P1893404553700969839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P1893404553700969839

/-! ## A256344.P2547705443190253195

`eq[4, A248218(A257088(n))]`
-/

namespace A256344.P2547705443190253195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P2547705443190253195

/-! ## A256344.P17366333255990906236

`A020725(eq[4, A248218(n+1)])`
-/

namespace A256344.P17366333255990906236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256344.P17366333255990906236

/-! ## A256344.P7406360745507928636

`eq[2, A248218(A022144(n))-2]`
-/

namespace A256344.P7406360745507928636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A022144 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P7406360745507928636

/-! ## A256344.P4709555685707555477

`eq[4, A248218(A060000(n+1))]`
-/

namespace A256344.P4709555685707555477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P4709555685707555477

/-! ## A256344.P9331568000100324023

`A153152(eq[4, A248218(n+1)])`
-/

namespace A256344.P9331568000100324023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256344.P9331568000100324023

/-! ## A256344.P12485721967007327098

`eq[4, A248218(A233583(n+1))]`
-/

namespace A256344.P12485721967007327098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256344.P12485721967007327098

/-!
# A256345: Moduli n for which A248218(n) = 5 (length of the terminating cycle of 0 under x -> x^2+1 modulo n).

The programs for A256345, there is no canonical definition to state claims against.
-/

/-! ## A256345.P14836347223442884105

`eq[5, A248218(n+1)]+1`
-/

namespace A256345.P14836347223442884105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256345.P14836347223442884105

/-! ## A256345.P11795862497949693980

`eq[5, A248218(A093178(n))]`
-/

namespace A256345.P11795862497949693980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256345.P11795862497949693980

/-! ## A256345.P1907260511354564777

`eq[5, A248218(A028310(n))]`
-/

namespace A256345.P1907260511354564777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256345.P1907260511354564777

/-! ## A256345.P5764525184155493742

`eq[5, A248218(A257088(n))]`
-/

namespace A256345.P5764525184155493742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256345.P5764525184155493742

/-! ## A256345.P3471691328526412729

`A020725(eq[5, A248218(n+1)])`
-/

namespace A256345.P3471691328526412729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256345.P3471691328526412729

/-!
# A256346: Moduli n for which A248218(n) = 6.

The programs for A256346, there is no canonical definition to state claims against.
-/

/-! ## A256346.P1824200055181298717

`eq[6, A248218(n+1)]+1`
-/

namespace A256346.P1824200055181298717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256346.P1824200055181298717

/-! ## A256346.P5887913547719900414

`A065475(eq[6, A248218(n+1)])`
-/

namespace A256346.P5887913547719900414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256346.P5887913547719900414

/-! ## A256346.P15590496946958439610

`A153152(eq[6, A248218(n+1)])`
-/

namespace A256346.P15590496946958439610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256346.P15590496946958439610

/-! ## A256346.P1764015263521478493

`eq[6, A248218(A000038(n)+n)]`
-/

namespace A256346.P1764015263521478493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256346.P1764015263521478493

/-! ## A256346.P1852912058887650972

`eq[6, A248218(A257088(n))]`
-/

namespace A256346.P1852912058887650972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256346.P1852912058887650972

/-! ## A256346.P2264397726337109473

`eq[6, A248218(A138153(n+1))]`
-/

namespace A256346.P2264397726337109473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256346.P2264397726337109473

/-! ## A256346.P7016541374421275923

`eq[6, A248218(A000007(n)+n)]`
-/

namespace A256346.P7016541374421275923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256346.P7016541374421275923

/-! ## A256346.P17891766552494794175

`eq[6, A248218(A233583(n+1))]`
-/

namespace A256346.P17891766552494794175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256346.P17891766552494794175

/-!
# A256347: Moduli n for which A248218(n) = 7.

The programs for A256347, there is no canonical definition to state claims against.
-/

/-! ## A256347.P15497053465977311561

`eq[7, A248218(A028310(n))]`
-/

namespace A256347.P15497053465977311561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256347.P15497053465977311561

/-! ## A256347.P5025414380742443167

`eq[7, A248218(A257088(n))]`
-/

namespace A256347.P5025414380742443167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256347.P5025414380742443167

/-! ## A256347.P2676032045170893628

`A020725(eq[7, A248218(n+1)])`
-/

namespace A256347.P2676032045170893628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256347.P2676032045170893628

/-! ## A256347.P14271410738117304703

`eq[7, A248218(A103889(n+1))]`
-/

namespace A256347.P14271410738117304703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256347.P14271410738117304703

/-! ## A256347.P16574594930694246563

`A263449(eq[7, A248218(n+1)])`
-/

namespace A256347.P16574594930694246563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256347.P16574594930694246563

/-!
# A256348: Moduli n for which A248218(n) = 8.

The programs for A256348, there is no canonical definition to state claims against.
-/

/-! ## A256348.P5093506736396560144

`eq[8, A248218(A004277(n))]`
-/

namespace A256348.P5093506736396560144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256348.P5093506736396560144

/-! ## A256348.P3910078453471419516

`eq[8, A248218(A008574(n))]`
-/

namespace A256348.P3910078453471419516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256348.P3910078453471419516

/-! ## A256348.P3564613746701077456

`eq[8, A248218(A022144(n))]`
-/

namespace A256348.P3564613746701077456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256348.P3564613746701077456

/-! ## A256348.P9916134187686273241

`eq[8, A248218(A028310(n))]`
-/

namespace A256348.P9916134187686273241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256348.P9916134187686273241

/-! ## A256348.P13230721457516167460

`eq[8, A248218(A257088(n))]`
-/

namespace A256348.P13230721457516167460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256348.P13230721457516167460

/-!
# A256349: Moduli n for which A248218(n) = 9.

The programs for A256349, there is no canonical definition to state claims against.
-/

/-! ## A256349.P18095520484226681293

`eq[9, A248218(A093178(n))]`
-/

namespace A256349.P18095520484226681293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256349.P18095520484226681293

/-! ## A256349.P3701618275295073911

`eq[9, A248218(A028310(n))]`
-/

namespace A256349.P3701618275295073911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256349.P3701618275295073911

/-! ## A256349.P16835067785894002883

`eq[9, A248218(A257088(n))]`
-/

namespace A256349.P16835067785894002883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256349.P16835067785894002883

/-! ## A256349.P13785302266721471695

`eq[9, A248218(A103889(n+1))]`
-/

namespace A256349.P13785302266721471695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256349.P13785302266721471695

/-!
# A256350: Composites in base 10 that remain composite in exactly eight bases b, 2 <= b <= 10, expansions interpreted as decimal numbers.

The programs for A256350, there is no canonical definition to state claims against.
-/

/-! ## A256350.P13161942367829143914

`eq[1, A319858(n+1)]+1`
-/

namespace A256350.P13161942367829143914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256350.P13161942367829143914

/-! ## A256350.P8890132303279427490

`eq[1, A319858(A028310(n))]`
-/

namespace A256350.P8890132303279427490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256350.P8890132303279427490

/-! ## A256350.P9174251599216077279

`A020725(eq[1, A319858(n+1)])`
-/

namespace A256350.P9174251599216077279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256350.P9174251599216077279

/-! ## A256350.P12358845858527518962

`A065475(eq[1, A319858(n+1)])`
-/

namespace A256350.P12358845858527518962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256350.P12358845858527518962

/-! ## A256350.P12567576467346207849

`A113484(eq[1, A319858(n+1)])`
-/

namespace A256350.P12567576467346207849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256350.P12567576467346207849

/-!
# A256351: Composites in base 10 that remain composite in exactly seven bases b, 2 <= b <= 10, expansions interpreted as decimal numbers.

The programs for A256351, there is no canonical definition to state claims against.
-/

/-! ## A256351.P9507236604719571005

`A031285(eq[2, A319858(n+1)])`
-/

namespace A256351.P9507236604719571005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256351.P9507236604719571005

/-! ## A256351.P11459096289685910177

`A018252(eq[A067157(2*(n+2)), A084301(n+1)])`
-/

namespace A256351.P11459096289685910177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067157 (2 * (n + 2) + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A256351.P11459096289685910177

/-!
# A256359: Numbers n such that there is at least one base b in which n is a multiple-digit narcissistic number.

The programs for A256359, there is no canonical definition to state claims against.
-/

/-! ## A256359.P17518456940738030017

`A065043(A255732(n+1))+A013929(n+1)`
-/

namespace A256359.P17518456940738030017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A255732 (n + 1)).toNat + A013929 (n + 1)

end

end A256359.P17518456940738030017

/-! ## A256359.P1859863621646265767

`A156728(A326181(n+1))+A013929(n+1)`
-/

namespace A256359.P1859863621646265767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A326181 (n + 1)).toNat + A013929 (n + 1)

end

end A256359.P1859863621646265767

/-! ## A256359.P9100490966284768028

`A013929(n+1)+A008966(A291058(n+3))`
-/

namespace A256359.P9100490966284768028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + A008966 (A291058 (n + 3)).toNat

end

end A256359.P9100490966284768028

/-! ## A256359.P18445423664500501829

`lt[A323305(A158652(n+5)), A063691(n+1)]`
-/

namespace A256359.P18445423664500501829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323305 (A158652 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256359.P18445423664500501829

/-! ## A256359.P8384378948891523413

`A244250(A339213(2*(n+2)))+A013929(n+1)`
-/

namespace A256359.P8384378948891523413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (A339213 (2 * (n + 2))).toNat + A013929 (n + 1)

end

end A256359.P8384378948891523413

/-!
# A256360: Numbers that are multiple-digit narcissistic numbers in exactly one base.

The programs for A256360, there is no canonical definition to state claims against.
-/

/-! ## A256360.P16427526543139066728

`A256359(A330060(n+1)%A071984(3*(n+1)))`
-/

namespace A256360.P16427526543139066728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256359 (Int.tmod (A330060 (n + 1)) (A071984 (3 * (n + 1) + 32))).toNat

end

end A256360.P16427526543139066728

/-! ## A256360.P5508733409005494257

`A289037(n+1)+A036586(A004812(n+1))`
-/

namespace A256360.P5508733409005494257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1) + A036586 (A004812 (n + 1)).toNat

end

end A256360.P5508733409005494257

/-! ## A256360.P9249502441085522036

`A008836(A000108(n))+A007095(3*n+4)`
-/

namespace A256360.P9249502441085522036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000108 n).toNat + A007095 (3 * n + 4)

end

end A256360.P9249502441085522036

/-! ## A256360.P6082630251621376101

`A355936(A000110(n))+A007095(3*n+4)`
-/

namespace A256360.P6082630251621376101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355936 (A000110 n).toNat + A007095 (3 * n + 4)

end

end A256360.P6082630251621376101

/-! ## A256360.P9036740804052806655

`A057077(A293736(n))+A052382(3*n+4)`
-/

namespace A256360.P9036740804052806655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A293736 n).toNat + A052382 (3 * n + 4)

end

end A256360.P9036740804052806655

/-!
# A256366: Primes arising in A=A256189 as gcd(A(n-2), A(n)), n > 3.

The programs for A256366, there is no canonical definition to state claims against.
-/

/-! ## A256366.P11637157267870783182

`gcd(A256189(n+2), A256189(n+4))`
-/

namespace A256366.P11637157267870783182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256189 (n + 2)) (A256189 (n + 4))

end

end A256366.P11637157267870783182

/-! ## A256366.P8495495527297635145

`A218279(A270784(n))`
-/

namespace A256366.P8495495527297635145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218279 (A270784 n).toNat

end

end A256366.P8495495527297635145

/-! ## A256366.P14785662093096722673

`p?[A169945(A211357(n))]`
-/

namespace A256366.P14785662093096722673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A211357 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256366.P14785662093096722673

/-! ## A256366.P11975419347615369385

`p?[A263485(n+2)+A263444(2*(n+1))]`
-/

namespace A256366.P11975419347615369385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263485 (n + 2) + A263444 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256366.P11975419347615369385

/-! ## A256366.P5679067411019231380

`A254862(A358134(n+1)^A119999(n))`
-/

namespace A256366.P5679067411019231380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (SequenceMachineLib.roundAway ((A358134 (n + 1) : ℚ) ^ (A119999 n : ℤ))).toNat

end

end A256366.P5679067411019231380

/-!
# A256368: Primes arising from A098550(n), n >= 2, as smallest prime factor of gcd(A098550(n), A098550(n+2)).

The programs for A256368, there is no canonical definition to state claims against.
-/

/-! ## A256368.P12982183974606367806

`A020639(A251102(n+2))`
-/

namespace A256368.P12982183974606367806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A251102 (n + 2)).toNat

end

end A256368.P12982183974606367806

/-! ## A256368.P1800859164054209251

`A014673(2*A251102(n+2))`
-/

namespace A256368.P1800859164054209251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A251102 (n + 2)).toNat

end

end A256368.P1800859164054209251

/-! ## A256368.P3029023366449904292

`A020639(gcd(A098550(n+2), A098550(n+4)))`
-/

namespace A256368.P3029023366449904292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A098550 (n + 2)) (A098550 (n + 4)))

end

end A256368.P3029023366449904292

/-! ## A256368.P15493538045628282862

`A074828(A251102(n+2)²)`
-/

namespace A256368.P15493538045628282862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A251102 (n + 2) ^ 2).toNat

end

end A256368.P15493538045628282862

/-! ## A256368.P18390139395458955781

`A107286(A251102(n+2)²)`
-/

namespace A256368.P18390139395458955781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A251102 (n + 2) ^ 2).toNat

end

end A256368.P18390139395458955781

/-! ## A256368.P1754147145671143127

`A014673(A251102(n+2)²)`
-/

namespace A256368.P1754147145671143127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A251102 (n + 2) ^ 2).toNat

end

end A256368.P1754147145671143127

/-!
# A256370: Positive integers n such that n^4 + (n+1)^4 + (n+2)^4 + (n+3)^4 + (n+4)^4 is prime.

The programs for A256370, there is no canonical definition to state claims against.
-/

/-! ## A256370.P1914985843580319385

`A099375(A201704(n+1)-A060797(n))`
-/

namespace A256370.P1914985843580319385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A201704 (n + 1) - A060797 n).toNat

end

end A256370.P1914985843580319385

/-!
# A256372: Fixed points of permutations A256210 and A256371.

The programs for A256372, there is no canonical definition to state claims against.
-/

/-! ## A256372.P12546122588234619406

`eq[n, A256210(round(sqrt(n²+1)))]`
-/

namespace A256372.P12546122588234619406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256210 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256372.P12546122588234619406

/-! ## A256372.P3089542629458725466

`eq[n+1, A256210(n+1)]+1`
-/

namespace A256372.P3089542629458725466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256372.P3089542629458725466

/-! ## A256372.P1410835956632877550

`eq[n+1, A256371(n+1)]+1`
-/

namespace A256372.P1410835956632877550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256372.P1410835956632877550

/-! ## A256372.P8175108133496724453

`eq[n, A256371(A065033(2*n))]`
-/

namespace A256372.P8175108133496724453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256371 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256372.P8175108133496724453

/-!
# A256374: Primes of the form 7*k^2 + 7*k + 17.

The programs for A256374, the canonical program `A256374.P9351060722926020104` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256374 has offset 1).

The definition of A256374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256374.P9351060722926020104

`p?[∑[14*n]+17]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256374

/-- `p?[∑[14*n]+17]` -/
def P9351060722926020104.Spec : Prop :=
  ∀ n, (P9351060722926020104.a n : ℤ) = A256374 (n + 1)

theorem P9351060722926020104.correct : P9351060722926020104.Spec := by
  intro n
  simp only [A256374, Nat.add_sub_cancel]

end A256374

/-! ## A256374.P1664065186745003241

`or(p?[7*(n²+n)+17], char[2])`
-/

namespace A256374.P1664065186745003241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n ^ 2 + n) + 17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (if ∃ j, f2 j = n then 1 else 0)

end

end A256374.P1664065186745003241

namespace A256374

/-- `or(p?[7*(n²+n)+17], char[2])` -/
def P1664065186745003241.Spec : Prop :=
  ∀ n, (P1664065186745003241.a n : ℤ) = A256374 (n + 1)

end A256374

/-! ## A256374.P5868397131978023164

`or(1, p?[A163756(n)+17])`
-/

namespace A256374.P5868397131978023164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A256374.P5868397131978023164

namespace A256374

/-- `or(1, p?[A163756(n)+17])` -/
def P5868397131978023164.Spec : Prop :=
  ∀ n, P5868397131978023164.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P13604133895402255008

`or(1, p?[A069127(n+1)+16])`
-/

namespace A256374.P13604133895402255008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A256374.P13604133895402255008

namespace A256374

/-- `or(1, p?[A069127(n+1)+16])` -/
def P13604133895402255008.Spec : Prop :=
  ∀ n, P13604133895402255008.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P2153287430613401825

`A007318(C(2, n))*p?[A163756(n)+17]`
-/

namespace A256374.P2153287430613401825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P2153287430613401825

namespace A256374

/-- `A007318(C(2, n))*p?[A163756(n)+17]` -/
def P2153287430613401825.Spec : Prop :=
  ∀ n, P2153287430613401825.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P6973565991474295071

`A000007(n+1)+p?[A069127(n+1)+16]`
-/

namespace A256374.P6973565991474295071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P6973565991474295071

namespace A256374

/-- `A000007(n+1)+p?[A069127(n+1)+16]` -/
def P6973565991474295071.Spec : Prop :=
  ∀ n, P6973565991474295071.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P12824777056731452916

`A000038(n+1)+p?[A069127(n+1)+16]`
-/

namespace A256374.P12824777056731452916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P12824777056731452916

namespace A256374

/-- `A000038(n+1)+p?[A069127(n+1)+16]` -/
def P12824777056731452916.Spec : Prop :=
  ∀ n, P12824777056731452916.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P7298984543620461098

`A000035(2*n)+p?[A069127(n+1)+16]`
-/

namespace A256374.P7298984543620461098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P7298984543620461098

namespace A256374

/-- `A000035(2*n)+p?[A069127(n+1)+16]` -/
def P7298984543620461098.Spec : Prop :=
  ∀ n, P7298984543620461098.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P2806273815685907401

`p?[A163756(n)+17]+A008683(4*(n+1))`
-/

namespace A256374.P2806273815685907401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 n + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A256374.P2806273815685907401

namespace A256374

/-- `p?[A163756(n)+17]+A008683(4*(n+1))` -/
def P2806273815685907401.Spec : Prop :=
  ∀ n, P2806273815685907401.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P2240243552465916256

`A007318(C(2, n))*p?[A069127(n+1)+16]`
-/

namespace A256374.P2240243552465916256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P2240243552465916256

namespace A256374

/-- `A007318(C(2, n))*p?[A069127(n+1)+16]` -/
def P2240243552465916256.Spec : Prop :=
  ∀ n, P2240243552465916256.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P5901216799081721823

`p?[A069127(n+1)+16]%A000217(n+5)²`
-/

namespace A256374.P5901216799081721823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000217 (n + 5) ^ 2)

end

end A256374.P5901216799081721823

namespace A256374

/-- `p?[A069127(n+1)+16]%A000217(n+5)²` -/
def P5901216799081721823.Spec : Prop :=
  ∀ n, P5901216799081721823.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P5006350849065183089

`A000108(and(1, -n))*p?[A069127(n+1)+16]`
-/

namespace A256374.P5006350849065183089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P5006350849065183089

namespace A256374

/-- `A000108(and(1, -n))*p?[A069127(n+1)+16]` -/
def P5006350849065183089.Spec : Prop :=
  ∀ n, P5006350849065183089.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P13501872065094877839

`p?[A069127(n+1)+16]+A008683(4*(n+1))`
-/

namespace A256374.P13501872065094877839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A256374.P13501872065094877839

namespace A256374

/-- `p?[A069127(n+1)+16]+A008683(4*(n+1))` -/
def P13501872065094877839.Spec : Prop :=
  ∀ n, P13501872065094877839.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P816678484303696679

`A014963(4*n+6)*p?[A069127(n+1)+16]`
-/

namespace A256374.P816678484303696679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P816678484303696679

namespace A256374

/-- `A014963(4*n+6)*p?[A069127(n+1)+16]` -/
def P816678484303696679.Spec : Prop :=
  ∀ n, P816678484303696679.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P7655128216799514041

`A000032(gcd(n, n+1))*p?[A069127(n+1)+16]`
-/

namespace A256374.P7655128216799514041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P7655128216799514041

namespace A256374

/-- `A000032(gcd(n, n+1))*p?[A069127(n+1)+16]` -/
def P7655128216799514041.Spec : Prop :=
  ∀ n, P7655128216799514041.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P18212639295754620627

`A001221((-1)^n+3)*p?[A069127(n+1)+16]`
-/

namespace A256374.P18212639295754620627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((-1) ^ n + 3).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256374.P18212639295754620627

namespace A256374

/-- `A001221((-1)^n+3)*p?[A069127(n+1)+16]` -/
def P18212639295754620627.Spec : Prop :=
  ∀ n, P18212639295754620627.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P15148126768184488411

`sqrt(p?[A069127(n+1)+16]^A020639(2*(n+1)))`
-/

namespace A256374.P15148126768184488411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A256374.P15148126768184488411

namespace A256374

/-- `sqrt(p?[A069127(n+1)+16]^A020639(2*(n+1)))` -/
def P15148126768184488411.Spec : Prop :=
  ∀ n, P15148126768184488411.a n = (A256374 (n + 1) : ℝ)

end A256374

/-! ## A256374.P3241510966101952476

`A020639(2*n+2)+p?[A069127(n+1)+16]-2`
-/

namespace A256374.P3241510966101952476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 2) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)

end

end A256374.P3241510966101952476

namespace A256374

/-- `A020639(2*n+2)+p?[A069127(n+1)+16]-2` -/
def P3241510966101952476.Spec : Prop :=
  ∀ n, P3241510966101952476.a n = A256374 (n + 1)

end A256374

/-! ## A256374.P12498375787823087824

`p?[A069127(n+1)+16]+C(2, n+2)*A001221(n+1)`
-/

namespace A256374.P12498375787823087824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose 2 (n + 2) : ℤ) * A001221 (n + 1)

end

end A256374.P12498375787823087824

namespace A256374

/-- `p?[A069127(n+1)+16]+C(2, n+2)*A001221(n+1)` -/
def P12498375787823087824.Spec : Prop :=
  ∀ n, P12498375787823087824.a n = A256374 (n + 1)

end A256374

/-!
# A256376: Primes of the form 10n^2 - 90n + 163.

The programs for A256376, the canonical program `A256376.P1644900933062267932` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256376 has offset 1).

The definition of A256376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256376.P1644900933062267932

`p?[10*(n²+n)-37]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256376

/-- `p?[10*(n²+n)-37]` -/
def P1644900933062267932.Spec : Prop :=
  ∀ n, P1644900933062267932.a n = A256376 (n + 1)

theorem P1644900933062267932.correct : P1644900933062267932.Spec := by
  intro n
  simp only [A256376, Nat.add_sub_cancel]

end A256376

/-! ## A256376.P9713720536057587120

`∏{d}[p?[(n+1)*10*n-37], #]`
-/

namespace A256376.P9713720536057587120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (10 * n) : ℤ) - 37

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256376.P9713720536057587120

namespace A256376

/-- `∏{d}[p?[(n+1)*10*n-37], #]` -/
def P9713720536057587120.Spec : Prop :=
  ∀ n, (P9713720536057587120.a n : ℤ) = A256376 (n + 1)

end A256376

/-! ## A256376.P7663509671914706212

`record[A006530((n+5)*10*n+23)]`
-/

namespace A256376.P7663509671914706212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 5) * (10 * n) + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256376.P7663509671914706212

namespace A256376

/-- `record[A006530((n+5)*10*n+23)]` -/
def P7663509671914706212.Spec : Prop :=
  ∀ n, P7663509671914706212.a n = A256376 (n + 1)

end A256376

/-! ## A256376.P13529052286935325455

`record[A020639(∑[A063226(n+5)])]`
-/

namespace A256376.P13529052286935325455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256376.P13529052286935325455

namespace A256376

/-- `record[A020639(∑[A063226(n+5)])]` -/
def P13529052286935325455.Spec : Prop :=
  ∀ n, P13529052286935325455.a n = A256376 (n + 1)

end A256376

/-! ## A256376.P8820854642818524872

`A000265(p?[∑[A063226(n+5)]])`
-/

namespace A256376.P8820854642818524872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256376.P8820854642818524872

namespace A256376

/-- `A000265(p?[∑[A063226(n+5)]])` -/
def P8820854642818524872.Spec : Prop :=
  ∀ n, P8820854642818524872.a n = A256376 (n + 1)

end A256376

/-!
# A256377: Primes of the form 3p^4-4 with p prime.

The programs for A256377, there is no canonical definition to state claims against.
-/

/-! ## A256377.P9421331948308387967

`A256378(∑[A256384(3*n+2)!])`
-/

namespace A256377.P9421331948308387967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A256384 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256377.P9421331948308387967

/-!
# A256378: Primes of the form 3m^4-4.

The programs for A256378, there is no canonical definition to state claims against.
-/

/-! ## A256378.P17967564666266107632

`p?[3*n²²-4]`
-/

namespace A256378.P17967564666266107632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n ^ 2) ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256378.P17967564666266107632

/-!
# A256379: Cumulative sum for n in base 10 when alternately adding and subtracting each digit of a particular value.

The programs for A256379, there is no canonical definition to state claims against.
-/

/-! ## A256379.P3616054197261790194

`∑[A256851(n+1)]`
-/

namespace A256379.P3616054197261790194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256379.P3616054197261790194

/-! ## A256379.P5555309885776841756

`A256851(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A256379.P5555309885776841756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256851 (n + 1) + a (A023443 n).toNat

end

end A256379.P5555309885776841756

/-! ## A256379.P8408533852805895147

`a(n-1)+A256851(n+1)%A000040(n+1)` with `a(0)=1`
-/

namespace A256379.P8408533852805895147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A256851 (n + 1)) (A000040 (n + 1))

end

end A256379.P8408533852805895147

/-! ## A256379.P11934155644688394987

`(A256851(n+1)+a(n-1))*A133707(a(n-1)+1)` with `a(0)=1`
-/

namespace A256379.P11934155644688394987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A256851 (n + 1) + a (n - 1)) * A133707 (a (n - 1) + 1).toNat

end

end A256379.P11934155644688394987

/-! ## A256379.P835052277511582163

`A256851(n+1)+A061579(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A256379.P835052277511582163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256851 (n + 1) + A061579 (A061579 (a (n - 1)).toNat).toNat

end

end A256379.P835052277511582163

/-!
# A256381: Numbers n such that n-3 and n+3 are semiprimes.

The programs for A256381, there is no canonical definition to state claims against.
-/

/-! ## A256381.P8904931345490289697

`∩[A186621(n+1)+4, A065516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A256381.P8904931345490289697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256381.P8904931345490289697

/-! ## A256381.P9958123556177527457

`∩[A001358(n+1), A065516(n)+a(n-1)]-3` with `a(0)=10`
-/

namespace A256381.P9958123556177527457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 3

end

end A256381.P9958123556177527457

/-! ## A256381.P18243192969220736346

`∩[A088707(n+1)-1, A065516(n)+a(n-1)]-3` with `a(0)=10`
-/

namespace A256381.P18243192969220736346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 3

end

end A256381.P18243192969220736346

/-! ## A256381.P1224967128013617246

`∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]-3` with `a(0)=10`
-/

namespace A256381.P1224967128013617246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 3

end

end A256381.P1224967128013617246

/-! ## A256381.P1367494265944872605

`∩[A100493(n+1)-(n+1), A065516(n)+a(n-1)]-3` with `a(0)=10`
-/

namespace A256381.P1367494265944872605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 3

end

end A256381.P1367494265944872605

/-!
# A256382: Numbers n such that n-4 and n+4 are semiprimes.

The programs for A256382, the canonical program `A256382.P15358548957851326504` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256382 has offset 1).

The definition of A256382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256382.P15358548957851326504

`∩[A001358(n+1), A065516(n)+a(n-1)]-4` with `a(0)=12`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A256382

/-- `∩[A001358(n+1), A065516(n)+a(n-1)]-4` -/
def P15358548957851326504.Spec : Prop :=
  ∀ n, P15358548957851326504.a n = A256382 (n + 1)

theorem P15358548957851326504.correct : P15358548957851326504.Spec := by
  intro n
  simp only [A256382, Nat.add_sub_cancel]

end A256382

/-! ## A256382.P7729784021847159073

`∩[A088707(n+1)-1, A065516(n)+a(n-1)]-4` with `a(0)=12`
-/

namespace A256382.P7729784021847159073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 4

end

end A256382.P7729784021847159073

namespace A256382

/-- `∩[A088707(n+1)-1, A065516(n)+a(n-1)]-4` -/
def P7729784021847159073.Spec : Prop :=
  ∀ n, P7729784021847159073.a n = A256382 (n + 1)

end A256382

/-! ## A256382.P13959960609870277724

`∩[A186621(n+1)+4, A065516(n)+a(n-1)]+1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A256382.P13959960609870277724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A256382.P13959960609870277724

namespace A256382

/-- `∩[A186621(n+1)+4, A065516(n)+a(n-1)]+1` -/
def P13959960609870277724.Spec : Prop :=
  ∀ n, (P13959960609870277724.a n : ℤ) = A256382 (n + 1)

end A256382

/-! ## A256382.P4590139584315617800

`∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]-4` with `a(0)=12`
-/

namespace A256382.P4590139584315617800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 4

end

end A256382.P4590139584315617800

namespace A256382

/-- `∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]-4` -/
def P4590139584315617800.Spec : Prop :=
  ∀ n, P4590139584315617800.a n = A256382 (n + 1)

end A256382

/-!
# A256384: Number A(n,k) of factorizations of m^n into at most n factors, where m is a product of exactly k distinct primes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A256384, there is no canonical definition to state claims against.
-/

/-! ## A256384.P12529456600363972489

`A371216(A321312(n))`
-/

namespace A256384.P12529456600363972489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371216 (A321312 n).toNat

end

end A256384.P12529456600363972489

/-! ## A256384.P971921804842352643

`or(A203986(n), A362093(A347615(n)))`
-/

namespace A256384.P971921804842352643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A203986 n) (A362093 (A347615 n).toNat)

end

end A256384.P971921804842352643

/-! ## A256384.P14888362772430349331

`A048817(A321312(n))%A194603(n+1)`
-/

namespace A256384.P14888362772430349331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048817 (A321312 n).toNat) (A194603 (n + 1))

end

end A256384.P14888362772430349331

/-! ## A256384.P12794029144813876638

`A173239(A347615(n))%A188078(n+1)`
-/

namespace A256384.P12794029144813876638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173239 (A347615 n).toNat) (A188078 (n + 1))

end

end A256384.P12794029144813876638

/-!
# A256385: Numbers n such that 2n^2+2n+1, 3n^2+6n+5, 6n^2+30n+55 are all composite.

The programs for A256385, there is no canonical definition to state claims against.
-/

/-! ## A256385.P17736148946344723387

`eq[0, A256503(n+1)]+1`
-/

namespace A256385.P17736148946344723387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256385.P17736148946344723387

/-! ## A256385.P17687960642601306137

`lt[A256503(n+3), 1]+3`
-/

namespace A256385.P17687960642601306137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256503 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A256385.P17687960642601306137

/-! ## A256385.P16775607519518503312

`eq[0, A256503(A028310(n))]`
-/

namespace A256385.P16775607519518503312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256503 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256385.P16775607519518503312

/-! ## A256385.P6615014496574041449

`A020725(eq[0, A256503(n+1)])`
-/

namespace A256385.P6615014496574041449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256385.P6615014496574041449

/-! ## A256385.P491164440170430929

`A065475(eq[0, A256503(n+1)])`
-/

namespace A256385.P491164440170430929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256385.P491164440170430929

/-!
# A256387: Numbers n such that no prime can be the arithmetic mean of 2 semiprimes whose difference is 2*n.

The programs for A256387, the canonical program `A256387.P2495670137866599394` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256387 has offset 1).

The definition of A256387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256387.P2495670137866599394

`A100319(n+1)-3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256387

/-- `A100319(n+1)-3` -/
def P2495670137866599394.Spec : Prop :=
  ∀ n, P2495670137866599394.a n = A256387 (n + 1)

theorem P2495670137866599394.correct : P2495670137866599394.Spec := by
  intro n
  simp only [A256387, Nat.add_sub_cancel]

end A256387

/-! ## A256387.P4043281987689457967

`2*comp[A243811(n+1)]+1`
-/

namespace A256387.P4043281987689457967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A256387.P4043281987689457967

namespace A256387

/-- `2*comp[A243811(n+1)]+1` -/
def P4043281987689457967.Spec : Prop :=
  ∀ n, (P4043281987689457967.a n : ℤ) = A256387 (n + 1)

end A256387

/-! ## A256387.P6743300702599299587

`eq[A114567(n+1), A292438(n+1)]-2`
-/

namespace A256387.P6743300702599299587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P6743300702599299587

namespace A256387

/-- `eq[A114567(n+1), A292438(n+1)]-2` -/
def P6743300702599299587.Spec : Prop :=
  ∀ n, P6743300702599299587.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P5554537083921769697

`eq[A292438(n+1), A328570(n+1)]-2`
-/

namespace A256387.P5554537083921769697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P5554537083921769697

namespace A256387

/-- `eq[A292438(n+1), A328570(n+1)]-2` -/
def P5554537083921769697.Spec : Prop :=
  ∀ n, P5554537083921769697.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P2743308612819019499

`ceil(sqrt(A123754(n+2)))-3`
-/

namespace A256387.P2743308612819019499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A123754 (n + 2) : ℝ)⌉ - 3

end

end A256387.P2743308612819019499

namespace A256387

/-- `ceil(sqrt(A123754(n+2)))-3` -/
def P2743308612819019499.Spec : Prop :=
  ∀ n, P2743308612819019499.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P16015488405258443013

`eq[A019426(n), A292438(n)]-3`
-/

namespace A256387.P16015488405258443013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 3

end

end A256387.P16015488405258443013

namespace A256387

/-- `eq[A019426(n), A292438(n)]-3` -/
def P16015488405258443013.Spec : Prop :=
  ∀ n, P16015488405258443013.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P4944457336250211741

`eq[A019427(n+1), A292438(n+1)]-2`
-/

namespace A256387.P4944457336250211741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P4944457336250211741

namespace A256387

/-- `eq[A019427(n+1), A292438(n+1)]-2` -/
def P4944457336250211741.Spec : Prop :=
  ∀ n, P4944457336250211741.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P9945506748649477023

`eq[A019428(n+1), A292438(n+1)]-2`
-/

namespace A256387.P9945506748649477023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P9945506748649477023

namespace A256387

/-- `eq[A019428(n+1), A292438(n+1)]-2` -/
def P9945506748649477023.Spec : Prop :=
  ∀ n, P9945506748649477023.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P4984375170727624691

`eq[A019429(n+1), A292438(n+1)]-2`
-/

namespace A256387.P4984375170727624691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P4984375170727624691

namespace A256387

/-- `eq[A019429(n+1), A292438(n+1)]-2` -/
def P4984375170727624691.Spec : Prop :=
  ∀ n, P4984375170727624691.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P5861979165058750732

`eq[A019430(n+1), A292438(n+1)]-2`
-/

namespace A256387.P5861979165058750732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P5861979165058750732

namespace A256387

/-- `eq[A019430(n+1), A292438(n+1)]-2` -/
def P5861979165058750732.Spec : Prop :=
  ∀ n, P5861979165058750732.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P11354803869687290858

`eq[A019431(n+1), A292438(n+1)]-2`
-/

namespace A256387.P11354803869687290858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P11354803869687290858

namespace A256387

/-- `eq[A019431(n+1), A292438(n+1)]-2` -/
def P11354803869687290858.Spec : Prop :=
  ∀ n, P11354803869687290858.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P1026928576388665626

`eq[A019432(n+1), A292438(n+1)]-2`
-/

namespace A256387.P1026928576388665626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P1026928576388665626

namespace A256387

/-- `eq[A019432(n+1), A292438(n+1)]-2` -/
def P1026928576388665626.Spec : Prop :=
  ∀ n, P1026928576388665626.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P12173397403677834784

`eq[A019433(n+1), A292438(n+1)]-2`
-/

namespace A256387.P12173397403677834784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P12173397403677834784

namespace A256387

/-- `eq[A019433(n+1), A292438(n+1)]-2` -/
def P12173397403677834784.Spec : Prop :=
  ∀ n, P12173397403677834784.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P2161154826627943262

`eq[A075180(n+1), A292438(n+1)]-2`
-/

namespace A256387.P2161154826627943262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P2161154826627943262

namespace A256387

/-- `eq[A075180(n+1), A292438(n+1)]-2` -/
def P2161154826627943262.Spec : Prop :=
  ∀ n, P2161154826627943262.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P5367411734871498001

`eq[A165886(n+1), A292438(n+1)]-2`
-/

namespace A256387.P5367411734871498001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P5367411734871498001

namespace A256387

/-- `eq[A165886(n+1), A292438(n+1)]-2` -/
def P5367411734871498001.Spec : Prop :=
  ∀ n, P5367411734871498001.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P9401943916148210693

`lt[A002374(n+3), A026741(n)+1]`
-/

namespace A256387.P9401943916148210693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256387.P9401943916148210693

namespace A256387

/-- `lt[A002374(n+3), A026741(n)+1]` -/
def P9401943916148210693.Spec : Prop :=
  ∀ n, (P9401943916148210693.a n : ℤ) = A256387 (n + 1)

end A256387

/-! ## A256387.P11296010218941360356

`lt[A110560(A110560(n)), n*A000035(n)]`
-/

namespace A256387.P11296010218941360356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A110560 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256387.P11296010218941360356

namespace A256387

/-- `lt[A110560(A110560(n)), n*A000035(n)]` -/
def P11296010218941360356.Spec : Prop :=
  ∀ n, (P11296010218941360356.a n : ℤ) = A256387 (n + 1)

end A256387

/-! ## A256387.P417128999337388945

`eq[A053381(n+1), A292438(n+1)]-2`
-/

namespace A256387.P417128999337388945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P417128999337388945

namespace A256387

/-- `eq[A053381(n+1), A292438(n+1)]-2` -/
def P417128999337388945.Spec : Prop :=
  ∀ n, P417128999337388945.a n = A256387 (n + 1)

end A256387

/-! ## A256387.P6958367307133500111

`eq[A056753(n+1), A292438(n+1)]-2`
-/

namespace A256387.P6958367307133500111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A256387.P6958367307133500111

namespace A256387

/-- `eq[A056753(n+1), A292438(n+1)]-2` -/
def P6958367307133500111.Spec : Prop :=
  ∀ n, P6958367307133500111.a n = A256387 (n + 1)

end A256387

/-!
# A256388: Numbers n such that a single prime is the arithmetic mean of 2 semiprimes whose difference is 2*n.

The programs for A256388, there is no canonical definition to state claims against.
-/

/-! ## A256388.P8359452547139588059

`p?[p?[2*n+1]-2]-2`
-/

namespace A256388.P8359452547139588059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A256388.P8359452547139588059

/-! ## A256388.P297879194354580177

`A144834(n+1)-1`
-/

namespace A256388.P297879194354580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) - 1

end

end A256388.P297879194354580177

/-! ## A256388.P15151306447909989258

`A001359(n+1)-2`
-/

namespace A256388.P15151306447909989258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 2

end

end A256388.P15151306447909989258

/-! ## A256388.P7701939044268977405

`A014574(n+1)-3`
-/

namespace A256388.P7701939044268977405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 3

end

end A256388.P7701939044268977405

/-! ## A256388.P10043827324534104739

`A124588(n+2)-2`
-/

namespace A256388.P10043827324534104739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2) - 2

end

end A256388.P10043827324534104739

/-! ## A256388.P1079927836720945537

`A181747(n+2)-2`
-/

namespace A256388.P1079927836720945537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2) - 2

end

end A256388.P1079927836720945537

/-! ## A256388.P11593312452183425756

`A006512(n+1)-4`
-/

namespace A256388.P11593312452183425756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 4

end

end A256388.P11593312452183425756

/-! ## A256388.P12652488482967934364

`A067829(n+2)-4`
-/

namespace A256388.P12652488482967934364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) - 4

end

end A256388.P12652488482967934364

/-! ## A256388.P16299783056751144028

`A094743(n+2)-4`
-/

namespace A256388.P16299783056751144028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 2) - 4

end

end A256388.P16299783056751144028

/-!
# A256389: Numbers n such that one or more primes can be the arithmetic mean of 2 semiprimes whose difference is 2*n.

The programs for A256389, there is no canonical definition to state claims against.
-/

/-! ## A256389.P16516299481082399423

`comp[A256387(n+1)-1]+1`
-/

namespace A256389.P16516299481082399423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256387 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A256389.P16516299481082399423

/-! ## A256389.P8464471606708994150

`comp[A100319(n+1)-4]+1`
-/

namespace A256389.P8464471606708994150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A256389.P8464471606708994150

/-! ## A256389.P3494280660053402996

`comp[or(1, n-3)*A292438(n)]`
-/

namespace A256389.P3494280660053402996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 3) * A292438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256389.P3494280660053402996

/-! ## A256389.P8114048712880067716

`comp[2*comp[A243811(n+1)]]+1`
-/

namespace A256389.P8114048712880067716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243811 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A256389.P8114048712880067716

/-! ## A256389.P17736522426320677350

`∪[2*(n+1), A001359(n+1)-2]`
-/

namespace A256389.P17736522426320677350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256389.P17736522426320677350

/-! ## A256389.P17063294204962550057

`∪[2*(n+1), A001838(n+1)-2]`
-/

namespace A256389.P17063294204962550057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256389.P17063294204962550057

/-! ## A256389.P3129158468850529610

`∪[2*(n+1), A014574(n+1)-3]`
-/

namespace A256389.P3129158468850529610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256389.P3129158468850529610

/-! ## A256389.P7407998279268667419

`eq[A010673(n), A096500(n+1)]`
-/

namespace A256389.P7407998279268667419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256389.P7407998279268667419

/-! ## A256389.P9526332438842872114

`∪[A004277(n), A256388(n+1)]`
-/

namespace A256389.P9526332438842872114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256389.P9526332438842872114

/-! ## A256389.P16438501992309385299

`∪[A004278(n+1), A256388(n+1)]`
-/

namespace A256389.P16438501992309385299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256389.P16438501992309385299

/-!
# A256390: a(n) = number of triples (a,b,c) of natural numbers a,b,c <= n with gcd(a,b)=gcd(b,c)=gcd(c,a)=1.

The programs for A256390, there is no canonical definition to state claims against.
-/

/-! ## A256390.P5735044393155743690

`3*n+1+6*A015617(n+1)`
-/

namespace A256390.P5735044393155743690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) + 6 * A015617 (n + 1)

end

end A256390.P5735044393155743690

/-! ## A256390.P5108476468359161128

`3*n+A016921(A015617(n+1))`
-/

namespace A256390.P5108476468359161128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A016921 (A015617 (n + 1)).toNat

end

end A256390.P5108476468359161128

/-! ## A256390.P14001438080738414385

`A016921(A015617(n+1))+A008585(n)`
-/

namespace A256390.P14001438080738414385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A015617 (n + 1)).toNat + A008585 n

end

end A256390.P14001438080738414385

/-! ## A256390.P17298439894988457408

`A016921(A015617(n+1))+A005843(n)+n`
-/

namespace A256390.P17298439894988457408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A015617 (n + 1)).toNat + (A005843 n + (n : ℤ))

end

end A256390.P17298439894988457408

/-! ## A256390.P6338332696182858479

`A016921(A015617(n+1))+A008586(n)-n`
-/

namespace A256390.P6338332696182858479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A015617 (n + 1)).toNat + A008586 n - (n : ℤ)

end

end A256390.P6338332696182858479

/-! ## A256390.P6036091393507826155

`A016921(A015617(n+1))+A016825(n)-(n+2)`
-/

namespace A256390.P6036091393507826155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A015617 (n + 1)).toNat + (A016825 n - (n + 2 : ℤ))

end

end A256390.P6036091393507826155

/-!
# A256391: a(n) = number of tuples (a,b,c,d) of natural numbers a,b,c,d <= n with gcd(a,b)=gcd(b,c)=gcd(c,d)=gcd(d,a)=1.

The programs for A256391, there is no canonical definition to state claims against.
-/

/-! ## A256391.P15767577447929284139

`or(A057124(2*n+1), A374518(A107046(n)))`
-/

namespace A256391.P15767577447929284139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057124 (2 * n + 1)) (A374518 (A107046 n).toNat)

end

end A256391.P15767577447929284139

/-!
# A256393: Start from a(1) = 2, then alternately add either the largest (if n is even), or the smallest (if n is odd) prime factor of the preceding term a(n-1) to get a(n).

The programs for A256393, there is no canonical definition to state claims against.
-/

/-! ## A256393.P6622766747139089954

`A257244(n)+a(n-1)` with `a(0)=2`
-/

namespace A256393.P6622766747139089954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A257244 n + a (n - 1)

end

end A256393.P6622766747139089954

/-! ## A256393.P8512524093037791039

`∑[A257244(abs(1-n)+1)]`
-/

namespace A256393.P8512524093037791039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256393.P8512524093037791039

/-! ## A256393.P1762594017051382266

`∑[A257244(n+1)]+2-A257244(n+1)`
-/

namespace A256393.P1762594017051382266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A257244 (n + 1))

end

end A256393.P1762594017051382266

/-! ## A256393.P3552732900448312204

`∑[p?[A257244(A028310(n))]]`
-/

namespace A256393.P3552732900448312204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256393.P3552732900448312204

/-! ## A256393.P13438711616375686903

`∑[p?[A257244(A019590(n+1)+n)]]`
-/

namespace A256393.P13438711616375686903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (A019590 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256393.P13438711616375686903

/-! ## A256393.P15184501410889013641

`∑[p?[A257244(A233583(n+1))]]`
-/

namespace A256393.P15184501410889013641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256393.P15184501410889013641

/-! ## A256393.P15149948875805150357

`∑[A130065(A257244(C(2, n+2)+n))]`
-/

namespace A256393.P15149948875805150357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (A257244 (Nat.choose 2 (n + 2) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256393.P15149948875805150357

/-! ## A256393.P1728894574072543727

`A276269(a(n-1))` with `a(0)=2`
-/

namespace A256393.P1728894574072543727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A276269 (a (n - 1)).toNat

end

end A256393.P1728894574072543727

/-!
# A256394: Prime values of pi(n) that divide n.

The programs for A256394, there is no canonical definition to state claims against.
-/

/-! ## A256394.P16287433289104593834

`A000720(A071394(n+1))`
-/

namespace A256394.P16287433289104593834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071394 (n + 1)).toNat

end

end A256394.P16287433289104593834

/-! ## A256394.P12294094257969623808

`p?[A000720(A058011(n))]`
-/

namespace A256394.P12294094257969623808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A058011 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256394.P12294094257969623808

/-!
# A256395: Composite Markoff numbers.

The programs for A256395, there is no canonical definition to state claims against.
-/

/-! ## A256395.P7667505065320490903

`∩[A002559(n+1), A174051(n+1)]`
-/

namespace A256395.P7667505065320490903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256395.P7667505065320490903

/-! ## A256395.P15465734437454472670

`filter[A002559(n+1), A066247(#)]`
-/

namespace A256395.P15465734437454472670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A256395.P15465734437454472670

/-! ## A256395.P13700120830102875707

`filter[A002559(n+1), A202238(#)]`
-/

namespace A256395.P13700120830102875707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A256395.P13700120830102875707

/-! ## A256395.P8642593252673943362

`filter[A002559(n+2), A005171(#)]`
-/

namespace A256395.P8642593252673943362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A256395.P8642593252673943362

/-! ## A256395.P1748635584154452411

`filter[A002559(n+2), A292438(#)]`
-/

namespace A256395.P1748635584154452411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A256395.P1748635584154452411

/-!
# A256396: Primes p such that p divides 3*2^k + 1 for some k >= 0.

The programs for A256396, there is no canonical definition to state claims against.
-/

/-! ## A256396.P6187221982800198659

`p?[A123883(record[A002326(n)])]`
-/

namespace A256396.P6187221982800198659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256396.P6187221982800198659

/-! ## A256396.P840745587931369295

`p?[A167482(record[A002326(n)])]`
-/

namespace A256396.P840745587931369295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167482 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256396.P840745587931369295

/-! ## A256396.P9268849055413404580

`p?[A293754(record[A002326(n)])]`
-/

namespace A256396.P9268849055413404580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256396.P9268849055413404580

/-! ## A256396.P8110769974384831134

`record[A121289(A204987(n+1))]`
-/

namespace A256396.P8110769974384831134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A204987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256396.P8110769974384831134

/-! ## A256396.P13754225671724943635

`record[A352520(A249351(n+1)+A007733(n+1))]`
-/

namespace A256396.P13754225671724943635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352520 (A249351 (n + 1) + A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256396.P13754225671724943635

/-!
# A256397: Primes congruent to {17, 23} mod 24.

The programs for A256397, the canonical program `A256397.P17612323268492235205` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256397 has offset 1).

The definition of A256397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256397.P17612323268492235205

`p?[or(4, 6*n)-13]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256397

/-- `p?[or(4, 6*n)-13]` -/
def P17612323268492235205.Spec : Prop :=
  ∀ n, P17612323268492235205.a n = A256397 (n + 1)

theorem P17612323268492235205.correct : P17612323268492235205.Spec := by
  intro n
  simp only [A256397, Nat.add_sub_cancel]

end A256397

/-! ## A256397.P12184596069714273206

`p?[a(n-2)+24]` with `a(0)=17, a(1)=23`
-/

namespace A256397.P12184596069714273206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 23] fun n f1 =>
  f1 (n - 2) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256397.P12184596069714273206

namespace A256397

/-- `p?[a(n-2)+24]` -/
def P12184596069714273206.Spec : Prop :=
  ∀ n, (P12184596069714273206.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P4614238157446590876

`p?[8*n+n%3-1]`
-/

namespace A256397.P4614238157446590876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) + (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256397.P4614238157446590876

namespace A256397

/-- `p?[8*n+n%3-1]` -/
def P4614238157446590876.Spec : Prop :=
  ∀ n, P4614238157446590876.a n = A256397 (n + 1)

end A256397

/-! ## A256397.P574518926473037622

`p?[8*n+2-gcd(3, n)]`
-/

namespace A256397.P574518926473037622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 2 : ℤ) - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256397.P574518926473037622

namespace A256397

/-- `p?[8*n+2-gcd(3, n)]` -/
def P574518926473037622.Spec : Prop :=
  ∀ n, P574518926473037622.a n = A256397 (n + 1)

end A256397

/-! ## A256397.P12518000376850030693

`∪[A107181(n+1), A134517(n+1)]`
-/

namespace A256397.P12518000376850030693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P12518000376850030693

namespace A256397

/-- `∪[A107181(n+1), A134517(n+1)]` -/
def P12518000376850030693.Spec : Prop :=
  ∀ n, (P12518000376850030693.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P15665340620762196188

`p?[xor(4, 3*n)+10]`
-/

namespace A256397.P15665340620762196188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (3 * n) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256397.P15665340620762196188

namespace A256397

/-- `p?[xor(4, 3*n)+10]` -/
def P15665340620762196188.Spec : Prop :=
  ∀ n, (P15665340620762196188.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P9633894686049814282

`p?[3*(n+2)-and(4, n)]`
-/

namespace A256397.P9633894686049814282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - (Nat.land 4 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256397.P9633894686049814282

namespace A256397

/-- `p?[3*(n+2)-and(4, n)]` -/
def P9633894686049814282.Spec : Prop :=
  ∀ n, P9633894686049814282.a n = A256397 (n + 1)

end A256397

/-! ## A256397.P15135158651121247848

`∩[A191059(n+1), A001132(n+1)]`
-/

namespace A256397.P15135158651121247848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P15135158651121247848

namespace A256397

/-- `∩[A191059(n+1), A001132(n+1)]` -/
def P15135158651121247848.Spec : Prop :=
  ∀ n, (P15135158651121247848.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P6496755757120478053

`∩[A001132(n+1), A003627(n+1)]`
-/

namespace A256397.P6496755757120478053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P6496755757120478053

namespace A256397

/-- `∩[A001132(n+1), A003627(n+1)]` -/
def P6496755757120478053.Spec : Prop :=
  ∀ n, (P6496755757120478053.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P4912389656995552552

`∩[A001132(n+1), A007528(n+1)]`
-/

namespace A256397.P4912389656995552552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P4912389656995552552

namespace A256397

/-- `∩[A001132(n+1), A007528(n+1)]` -/
def P4912389656995552552.Spec : Prop :=
  ∀ n, (P4912389656995552552.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P964697872740080144

`∩[A007528(n+1), A038873(n+1)]`
-/

namespace A256397.P964697872740080144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P964697872740080144

namespace A256397

/-- `∩[A007528(n+1), A038873(n+1)]` -/
def P964697872740080144.Spec : Prop :=
  ∀ n, (P964697872740080144.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P13618607274989394205

`∩[A001132(n+1), A045410(n+1)]`
-/

namespace A256397.P13618607274989394205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P13618607274989394205

namespace A256397

/-- `∩[A001132(n+1), A045410(n+1)]` -/
def P13618607274989394205.Spec : Prop :=
  ∀ n, (P13618607274989394205.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P11504095379497919575

`∩[A007528(n+1), A040992(n+1)]`
-/

namespace A256397.P11504095379497919575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P11504095379497919575

namespace A256397

/-- `∩[A007528(n+1), A040992(n+1)]` -/
def P11504095379497919575.Spec : Prop :=
  ∀ n, (P11504095379497919575.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P17455681464650401306

`∩[A001132(n+1), A056955(n+1)]`
-/

namespace A256397.P17455681464650401306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P17455681464650401306

namespace A256397

/-- `∩[A001132(n+1), A056955(n+1)]` -/
def P17455681464650401306.Spec : Prop :=
  ∀ n, (P17455681464650401306.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P6456617615695791368

`∩[A038873(n+1), A045410(n+1)]`
-/

namespace A256397.P6456617615695791368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P6456617615695791368

namespace A256397

/-- `∩[A038873(n+1), A045410(n+1)]` -/
def P6456617615695791368.Spec : Prop :=
  ∀ n, (P6456617615695791368.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P16344817863393478379

`∩[A038873(n+1), A056955(n+1)]`
-/

namespace A256397.P16344817863393478379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P16344817863393478379

namespace A256397

/-- `∩[A038873(n+1), A056955(n+1)]` -/
def P16344817863393478379.Spec : Prop :=
  ∀ n, (P16344817863393478379.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P4362315301513195446

`∩[A003627(n+1), A097958(n+1)]`
-/

namespace A256397.P4362315301513195446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P4362315301513195446

namespace A256397

/-- `∩[A003627(n+1), A097958(n+1)]` -/
def P4362315301513195446.Spec : Prop :=
  ∀ n, (P4362315301513195446.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P6129561237256049498

`∩[A056955(n+1), A097958(n+1)]`
-/

namespace A256397.P6129561237256049498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P6129561237256049498

namespace A256397

/-- `∩[A056955(n+1), A097958(n+1)]` -/
def P6129561237256049498.Spec : Prop :=
  ∀ n, (P6129561237256049498.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P3302469376747654289

`∩[A001132(n+1), A045309(n+1)]`
-/

namespace A256397.P3302469376747654289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P3302469376747654289

namespace A256397

/-- `∩[A001132(n+1), A045309(n+1)]` -/
def P3302469376747654289.Spec : Prop :=
  ∀ n, (P3302469376747654289.a n : ℤ) = A256397 (n + 1)

end A256397

/-! ## A256397.P9032551325172592896

`∩[A007528(n+1), A055673(n+1)]`
-/

namespace A256397.P9032551325172592896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256397.P9032551325172592896

namespace A256397

/-- `∩[A007528(n+1), A055673(n+1)]` -/
def P9032551325172592896.Spec : Prop :=
  ∀ n, (P9032551325172592896.a n : ℤ) = A256397 (n + 1)

end A256397

/-!
# A256398: Palindromes of the form i^2 + reverse(i)^2.

The programs for A256398, there is no canonical definition to state claims against.
-/

/-! ## A256398.P14497535189651928518

`A088169(A290527(n))`
-/

namespace A256398.P14497535189651928518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088169 (A290527 n).toNat

end

end A256398.P14497535189651928518

/-!
# A256399: First differences of A256219.

The programs for A256399, there is no canonical definition to state claims against.
-/

/-! ## A256399.P2546663263585023376

`Δ[A256219(n+1)]`
-/

namespace A256399.P2546663263585023376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P2546663263585023376

/-! ## A256399.P14978385974704781795

`A256219(n+2)-A256219(n+1)`
-/

namespace A256399.P14978385974704781795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256219 (n + 2) - A256219 (n + 1)

end

end A256399.P14978385974704781795

/-! ## A256399.P13720815074089164973

`Δ[A225047(Δ[A007504(n)])]`
-/

namespace A256399.P13720815074089164973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P13720815074089164973

/-! ## A256399.P6767360894881793203

`Δ[A225047(A000040(n+1))]`
-/

namespace A256399.P6767360894881793203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P6767360894881793203

/-! ## A256399.P3925385559072068665

`Δ[A225047(A008578(n+2))]`
-/

namespace A256399.P3925385559072068665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P3925385559072068665

/-! ## A256399.P8888559255649913463

`Δ[A225047(sqrt(A001248(n+1)))]`
-/

namespace A256399.P8888559255649913463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P8888559255649913463

/-! ## A256399.P12349193670133000081

`Δ[A225047(A006093(n+1)+1)]`
-/

namespace A256399.P12349193670133000081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P12349193670133000081

/-! ## A256399.P3308245001227948211

`Δ[A225047(root(A001248(n+1), 2))]`
-/

namespace A256399.P3308245001227948211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (SequenceMachineLib.roundAway ((A001248 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P3308245001227948211

/-! ## A256399.P5681386159334905669

`Δ[A225047(record[A000010(n+1)+1])]`
-/

namespace A256399.P5681386159334905669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P5681386159334905669

/-! ## A256399.P9973955698080194929

`Δ[A225047(p?[A001057(n)])]`
-/

namespace A256399.P9973955698080194929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256399.P9973955698080194929

