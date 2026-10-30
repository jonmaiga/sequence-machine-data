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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A078400: Iterated sum-of-digits of A078403(n).

The programs for A078400, the canonical program `A078400.P8887944924361904284` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078400 has offset 1).

The definition of A078400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078400.P8887944924361904284

`dr(p?[a(n-4)+9])` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078400

/-- `dr(p?[a(n-4)+9])` -/
def P8887944924361904284.Spec : Prop :=
  ∀ n, (P8887944924361904284.a n : ℤ) = A078400 (n + 1)

theorem P8887944924361904284.correct : P8887944924361904284.Spec := by
  intro n
  simp only [A078400, Nat.add_sub_cancel]

end A078400

/-! ## A078400.P15886113387310289976

`dr(A078403(1+n))`
-/

namespace A078400.P15886113387310289976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A078403 (1 + n))

end

end A078400.P15886113387310289976

namespace A078400

/-- `dr(A078403(1+n))` -/
def P15886113387310289976.Spec : Prop :=
  ∀ n, (P15886113387310289976.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P10227101360227582082

`dr(p?[2*(n+1)-dr(n)])`
-/

namespace A078400.P10227101360227582082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A078400.P10227101360227582082

namespace A078400

/-- `dr(p?[2*(n+1)-dr(n)])` -/
def P10227101360227582082.Spec : Prop :=
  ∀ n, (P10227101360227582082.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P7539436897990394627

`p?[A038194(n+1)]`
-/

namespace A078400.P7539436897990394627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078400.P7539436897990394627

namespace A078400

/-- `p?[A038194(n+1)]` -/
def P7539436897990394627.Spec : Prop :=
  ∀ n, P7539436897990394627.a n = A078400 (n + 1)

end A078400

/-! ## A078400.P6163886262239342955

`p?[dr(Δ[A007504(n)])]`
-/

namespace A078400.P6163886262239342955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P6163886262239342955

namespace A078400

/-- `p?[dr(Δ[A007504(n)])]` -/
def P6163886262239342955.Spec : Prop :=
  ∀ n, (P6163886262239342955.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P12906537337075336143

`p?[dr(A000040(n+1))]`
-/

namespace A078400.P12906537337075336143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P12906537337075336143

namespace A078400

/-- `p?[dr(A000040(n+1))]` -/
def P12906537337075336143.Spec : Prop :=
  ∀ n, (P12906537337075336143.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P14699608475404733144

`p?[dr(A004087(n+1))]`
-/

namespace A078400.P14699608475404733144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004087 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P14699608475404733144

namespace A078400

/-- `p?[dr(A004087(n+1))]` -/
def P14699608475404733144.Spec : Prop :=
  ∀ n, (P14699608475404733144.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P6932148164186886909

`p?[dr(A007605(n+1))]`
-/

namespace A078400.P6932148164186886909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P6932148164186886909

namespace A078400

/-- `p?[dr(A007605(n+1))]` -/
def P6932148164186886909.Spec : Prop :=
  ∀ n, (P6932148164186886909.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P4645405585151816068

`p?[dr(A028905(n+1))]`
-/

namespace A078400.P4645405585151816068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028905 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P4645405585151816068

namespace A078400

/-- `p?[dr(A028905(n+1))]` -/
def P4645405585151816068.Spec : Prop :=
  ∀ n, (P4645405585151816068.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P3216637210473159416

`p?[dr(A028906(n+1))]`
-/

namespace A078400.P3216637210473159416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P3216637210473159416

namespace A078400

/-- `p?[dr(A028906(n+1))]` -/
def P3216637210473159416.Spec : Prop :=
  ∀ n, (P3216637210473159416.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P10242141447457364563

`p?[dr(A008578(n+1))]`
-/

namespace A078400.P10242141447457364563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008578 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P10242141447457364563

namespace A078400

/-- `p?[dr(A008578(n+1))]` -/
def P10242141447457364563.Spec : Prop :=
  ∀ n, (P10242141447457364563.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P16305390518347965400

`p?[dr(A046022(n+1))]`
-/

namespace A078400.P16305390518347965400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046022 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P16305390518347965400

namespace A078400

/-- `p?[dr(A046022(n+1))]` -/
def P16305390518347965400.Spec : Prop :=
  ∀ n, (P16305390518347965400.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P13625222865215633663

`p?[dr(A033946(n+1))]`
-/

namespace A078400.P13625222865215633663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033946 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P13625222865215633663

namespace A078400

/-- `p?[dr(A033946(n+1))]` -/
def P13625222865215633663.Spec : Prop :=
  ∀ n, (P13625222865215633663.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P7644513530552109135

`p?[dr(A051948(n+1))]`
-/

namespace A078400.P7644513530552109135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P7644513530552109135

namespace A078400

/-- `p?[dr(A051948(n+1))]` -/
def P7644513530552109135.Spec : Prop :=
  ∀ n, (P7644513530552109135.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P7626998607746059708

`p?[dr(A067126(n+1))]`
-/

namespace A078400.P7626998607746059708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067126 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P7626998607746059708

namespace A078400

/-- `p?[dr(A067126(n+1))]` -/
def P7626998607746059708.Spec : Prop :=
  ∀ n, (P7626998607746059708.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P4082780985813367585

`p?[dr(A053813(n+1))]`
-/

namespace A078400.P4082780985813367585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A053813 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P4082780985813367585

namespace A078400

/-- `p?[dr(A053813(n+1))]` -/
def P4082780985813367585.Spec : Prop :=
  ∀ n, (P4082780985813367585.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P17098931789252883234

`p?[dr(A063884(n+1))]`
-/

namespace A078400.P17098931789252883234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A063884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P17098931789252883234

namespace A078400

/-- `p?[dr(A063884(n+1))]` -/
def P17098931789252883234.Spec : Prop :=
  ∀ n, (P17098931789252883234.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P10999578171523920219

`p?[dr(A130008(n))]`
-/

namespace A078400.P10999578171523920219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130008 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P10999578171523920219

namespace A078400

/-- `p?[dr(A130008(n))]` -/
def P10999578171523920219.Spec : Prop :=
  ∀ n, (P10999578171523920219.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P9516816351753136353

`dr(p?[A028835(n+1)])`
-/

namespace A078400.P9516816351753136353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A078400.P9516816351753136353

namespace A078400

/-- `dr(p?[A028835(n+1)])` -/
def P9516816351753136353.Spec : Prop :=
  ∀ n, (P9516816351753136353.a n : ℤ) = A078400 (n + 1)

end A078400

/-! ## A078400.P10103474167905889812

`p?[dr(A061397(n+1))]`
-/

namespace A078400.P10103474167905889812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A061397 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078400.P10103474167905889812

namespace A078400

/-- `p?[dr(A061397(n+1))]` -/
def P10103474167905889812.Spec : Prop :=
  ∀ n, (P10103474167905889812.a n : ℤ) = A078400 (n + 1)

end A078400

/-!
# A078401: Triangle read by rows: T(n,k) = number of numbers <= k that are coprime to n, 1 <= k <= n.

The programs for A078401, the canonical program `A078401.P5559632936550946514` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078401 has offset 1).

The definition of A078401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078401.P10999587522599175217

`A054521(n+1)+T(n,k-1)` with `a(0)=1`
-/

namespace A078401.P10999587522599175217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054521 (n + 1) + SequenceMachineLib.triLeft a n

end

end A078401.P10999587522599175217

namespace A078401

/-- `A054521(n+1)+T(n,k-1)` -/
def P10999587522599175217.Spec : Prop :=
  ∀ n, P10999587522599175217.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P3406474075382890769

`a(n-1)*A123110(n)+1-A349317(n+1)` with `a(0)=1`
-/

namespace A078401.P3406474075382890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A123110 n + 1 - A349317 (n + 1)

end

end A078401.P3406474075382890769

namespace A078401

/-- `a(n-1)*A123110(n)+1-A349317(n+1)` -/
def P3406474075382890769.Spec : Prop :=
  ∀ n, P3406474075382890769.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P5559632936550946514

`A054521(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078401

/-- `A054521(n+1)+a(n-1)%A002260(n+1)` -/
def P5559632936550946514.Spec : Prop :=
  ∀ n, P5559632936550946514.a n = A078401 (n + 1)

theorem P5559632936550946514.correct : P5559632936550946514.Spec := by
  intro n
  simp only [A078401, Nat.add_sub_cancel]

end A078401

/-! ## A078401.P8974118565119445014

`a(n-1)*A123110(n)+1-and(2, A046143(n+1))/2` with `a(0)=1`
-/

namespace A078401.P8974118565119445014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A123110 n : ℚ) + 1 - (Int.land 2 (A046143 (n + 1)) : ℚ) / 2

end

end A078401.P8974118565119445014

namespace A078401

/-- `a(n-1)*A123110(n)+1-and(2, A046143(n+1))/2` -/
def P8974118565119445014.Spec : Prop :=
  ∀ n, P8974118565119445014.a n = (A078401 (n + 1) : ℚ)

end A078401

/-! ## A078401.P4056576380317883833

`∑[A054521(n+1)]-A002088(A003056(n))`
-/

namespace A078401.P4056576380317883833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002088 (A003056 n).toNat

end

end A078401.P4056576380317883833

namespace A078401

/-- `∑[A054521(n+1)]-A002088(A003056(n))` -/
def P4056576380317883833.Spec : Prop :=
  ∀ n, P4056576380317883833.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P11709049068339670652

`a(n-1)*A123110(n)+1-A000007(A127449(n+1))` with `a(0)=1`
-/

namespace A078401.P11709049068339670652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A123110 n + 1 - A000007 (A127449 (n + 1)).toNat

end

end A078401.P11709049068339670652

namespace A078401

/-- `a(n-1)*A123110(n)+1-A000007(A127449(n+1))` -/
def P11709049068339670652.Spec : Prop :=
  ∀ n, P11709049068339670652.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P5973004150362080488

`a(n-1)*A123110(n)+1-A001844(n)%A050873(n+1)` with `a(0)=1`
-/

namespace A078401.P5973004150362080488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A123110 n + 1 - Int.tmod (A001844 n) (A050873 (n + 1))

end

end A078401.P5973004150362080488

namespace A078401

/-- `a(n-1)*A123110(n)+1-A001844(n)%A050873(n+1)` -/
def P5973004150362080488.Spec : Prop :=
  ∀ n, P5973004150362080488.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P17550161127829593468

`a(n-1)*A123110(n)+1-A004768(n)%A050873(n+1)` with `a(0)=1`
-/

namespace A078401.P17550161127829593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A123110 n + 1 - Int.tmod (A004768 n) (A050873 (n + 1))

end

end A078401.P17550161127829593468

namespace A078401

/-- `a(n-1)*A123110(n)+1-A004768(n)%A050873(n+1)` -/
def P17550161127829593468.Spec : Prop :=
  ∀ n, P17550161127829593468.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P10327493763763505665

`a(n-1)*A123110(n)+1-A007204(n)%A050873(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A078401.P10327493763763505665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A123110 n + 1 - Int.tmod (A007204 n) (A050873 (n + 1))

end

end A078401.P10327493763763505665

namespace A078401

/-- `a(n-1)*A123110(n)+1-A007204(n)%A050873(n+1)` -/
def P10327493763763505665.Spec : Prop :=
  ∀ n, P10327493763763505665.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P11095722999205698714

`a(n-1)*A123110(n)+1-A016838(n)%A050873(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A078401.P11095722999205698714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A123110 n + 1 - Int.tmod (A016838 n) (A050873 (n + 1))

end

end A078401.P11095722999205698714

namespace A078401

/-- `a(n-1)*A123110(n)+1-A016838(n)%A050873(n+1)` -/
def P11095722999205698714.Spec : Prop :=
  ∀ n, P11095722999205698714.a n = A078401 (n + 1)

end A078401

/-! ## A078401.P16605435819591510726

`A275257(A245300(n)+A004736(n+1))`
-/

namespace A078401.P16605435819591510726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (A245300 n + A004736 (n + 1)).toNat

end

end A078401.P16605435819591510726

namespace A078401

/-- `A275257(A245300(n)+A004736(n+1))` -/
def P16605435819591510726.Spec : Prop :=
  ∀ n, P16605435819591510726.a n = A078401 (n + 1)

end A078401

/-!
# A078402: Numbers k such that k^2 + 5 is prime.

The programs for A078402, there is no canonical definition to state claims against.
-/

/-! ## A078402.P10415222148185695709

`6*A056906(n+1)`
-/

namespace A078402.P10415222148185695709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056906 (n + 1)

end

end A078402.P10415222148185695709

/-! ## A078402.P15381187030739753315

`sqrt(A056905(n+1)-5)`
-/

namespace A078402.P15381187030739753315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056905 (n + 1) - 5 : ℝ)

end

end A078402.P15381187030739753315

/-! ## A078402.P10279966273004364455

`A008588(A056906(n+1))`
-/

namespace A078402.P10279966273004364455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A056906 (n + 1)).toNat

end

end A078402.P10279966273004364455

/-! ## A078402.P8026937806056913554

`A008458(A056906(n+1))-A000007(n)`
-/

namespace A078402.P8026937806056913554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A056906 (n + 1)).toNat - A000007 n

end

end A078402.P8026937806056913554

/-! ## A078402.P7621001631744691677

`A008458(A056906(n+1))%A081585(n)`
-/

namespace A078402.P7621001631744691677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A056906 (n + 1)).toNat) (A081585 n)

end

end A078402.P7621001631744691677

/-! ## A078402.P8764469703560370016

`A008458(A056906(n+1)+n)-A008458(n)`
-/

namespace A078402.P8764469703560370016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A056906 (n + 1) + (n : ℤ)).toNat - A008458 n

end

end A078402.P8764469703560370016

/-! ## A078402.P1674745740689568218

`A008585(A056906(n+1)+A056906(n+1))`
-/

namespace A078402.P1674745740689568218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A056906 (n + 1) + A056906 (n + 1)).toNat

end

end A078402.P1674745740689568218

/-! ## A078402.P14914027381197548363

`A005843(A056906(n+1)+A005843(A056906(n+1)))`
-/

namespace A078402.P14914027381197548363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A056906 (n + 1) + A005843 (A056906 (n + 1)).toNat).toNat

end

end A078402.P14914027381197548363

/-! ## A078402.P13519791565634998329

`eq[A168092(n), A300817(n)]`
-/

namespace A078402.P13519791565634998329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078402.P13519791565634998329

/-! ## A078402.P12264028424047286978

`eq[A300817(n), A374359(n+1)]`
-/

namespace A078402.P12264028424047286978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078402.P12264028424047286978

/-!
# A078403: Primes whose digital root (A038194) is prime.

The programs for A078403, the canonical program `A078403.P4462971799349308732` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078403 has offset 1).

The definition of A078403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078403.P4462971799349308732

`p?[a(n-4)+9]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078403

/-- `p?[a(n-4)+9]` -/
def P4462971799349308732.Spec : Prop :=
  ∀ n, (P4462971799349308732.a n : ℤ) = A078403 (n + 1)

theorem P4462971799349308732.correct : P4462971799349308732.Spec := by
  intro n
  simp only [A078403, Nat.add_sub_cancel]

end A078403

/-! ## A078403.P8397547920002702167

`p?[2*(n+1)-dr(n)]`
-/

namespace A078403.P8397547920002702167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078403.P8397547920002702167

namespace A078403

/-- `p?[2*(n+1)-dr(n)]` -/
def P8397547920002702167.Spec : Prop :=
  ∀ n, P8397547920002702167.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P2497211307484471652

`p?[2*n+1-(n-1)%9]`
-/

namespace A078403.P2497211307484471652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078403.P2497211307484471652

namespace A078403

/-- `p?[2*n+1-(n-1)%9]` -/
def P2497211307484471652.Spec : Prop :=
  ∀ n, P2497211307484471652.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P14846515856005127657

`p?[A028835(n+1)]`
-/

namespace A078403.P14846515856005127657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078403.P14846515856005127657

namespace A078403

/-- `p?[A028835(n+1)]` -/
def P14846515856005127657.Spec : Prop :=
  ∀ n, P14846515856005127657.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P6785824569637820242

`filter[A028835(n+1), A001222(#)]`
-/

namespace A078403.P6785824569637820242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A078403.P6785824569637820242

namespace A078403

/-- `filter[A028835(n+1), A001222(#)]` -/
def P6785824569637820242.Spec : Prop :=
  ∀ n, P6785824569637820242.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P1867588296904337186

`filter[A028835(n+1), A010051(#)]`
-/

namespace A078403.P1867588296904337186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078403.P1867588296904337186

namespace A078403

/-- `filter[A028835(n+1), A010051(#)]` -/
def P1867588296904337186.Spec : Prop :=
  ∀ n, P1867588296904337186.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P2933957445758638324

`filter[A028835(n+1), A323153(#)]`
-/

namespace A078403.P2933957445758638324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A078403.P2933957445758638324

namespace A078403

/-- `filter[A028835(n+1), A323153(#)]` -/
def P2933957445758638324.Spec : Prop :=
  ∀ n, P2933957445758638324.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P13900309162353023041

`p?[A047411(n+1)+A008621(n)]`
-/

namespace A078403.P13900309162353023041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1) + A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078403.P13900309162353023041

namespace A078403

/-- `p?[A047411(n+1)+A008621(n)]` -/
def P13900309162353023041.Spec : Prop :=
  ∀ n, P13900309162353023041.a n = A078403 (n + 1)

end A078403

/-! ## A078403.P8220387751934013484

`∩[A000040(n+1), A028835(n+1)]`
-/

namespace A078403.P8220387751934013484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P8220387751934013484

namespace A078403

/-- `∩[A000040(n+1), A028835(n+1)]` -/
def P8220387751934013484.Spec : Prop :=
  ∀ n, (P8220387751934013484.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P15848940777076094768

`∩[A008578(n+1), A028835(n+1)]`
-/

namespace A078403.P15848940777076094768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P15848940777076094768

namespace A078403

/-- `∩[A008578(n+1), A028835(n+1)]` -/
def P15848940777076094768.Spec : Prop :=
  ∀ n, (P15848940777076094768.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P11879178242029632987

`∩[A028835(n+1), A033946(n+1)]`
-/

namespace A078403.P11879178242029632987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P11879178242029632987

namespace A078403

/-- `∩[A028835(n+1), A033946(n+1)]` -/
def P11879178242029632987.Spec : Prop :=
  ∀ n, (P11879178242029632987.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P10280193815883731355

`∩[A028835(n+1), A046022(n+1)]`
-/

namespace A078403.P10280193815883731355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P10280193815883731355

namespace A078403

/-- `∩[A028835(n+1), A046022(n+1)]` -/
def P10280193815883731355.Spec : Prop :=
  ∀ n, (P10280193815883731355.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P13095050285829657752

`∩[A028835(n+1), A051948(n+1)]`
-/

namespace A078403.P13095050285829657752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P13095050285829657752

namespace A078403

/-- `∩[A028835(n+1), A051948(n+1)]` -/
def P13095050285829657752.Spec : Prop :=
  ∀ n, (P13095050285829657752.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P9399311546991336480

`∩[A028835(n+1), A053813(n+1)]`
-/

namespace A078403.P9399311546991336480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P9399311546991336480

namespace A078403

/-- `∩[A028835(n+1), A053813(n+1)]` -/
def P9399311546991336480.Spec : Prop :=
  ∀ n, (P9399311546991336480.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P12714066501556870553

`∩[A028835(n+1), A066050(n+1)]`
-/

namespace A078403.P12714066501556870553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P12714066501556870553

namespace A078403

/-- `∩[A028835(n+1), A066050(n+1)]` -/
def P12714066501556870553.Spec : Prop :=
  ∀ n, (P12714066501556870553.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P15943466167695391705

`∩[A028835(n+1), A067126(n+1)]`
-/

namespace A078403.P15943466167695391705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P15943466167695391705

namespace A078403

/-- `∩[A028835(n+1), A067126(n+1)]` -/
def P15943466167695391705.Spec : Prop :=
  ∀ n, (P15943466167695391705.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P5416479109749128073

`∩[A028835(n+1), A116974(n+1)]`
-/

namespace A078403.P5416479109749128073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P5416479109749128073

namespace A078403

/-- `∩[A028835(n+1), A116974(n+1)]` -/
def P5416479109749128073.Spec : Prop :=
  ∀ n, (P5416479109749128073.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P5258112616850300769

`∩[A028835(n+1), A158611(n+1)]`
-/

namespace A078403.P5258112616850300769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P5258112616850300769

namespace A078403

/-- `∩[A028835(n+1), A158611(n+1)]` -/
def P5258112616850300769.Spec : Prop :=
  ∀ n, (P5258112616850300769.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P536226358719162373

`∩[A028835(n+1), A175787(n+1)]`
-/

namespace A078403.P536226358719162373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P536226358719162373

namespace A078403

/-- `∩[A028835(n+1), A175787(n+1)]` -/
def P536226358719162373.Spec : Prop :=
  ∀ n, (P536226358719162373.a n : ℤ) = A078403 (n + 1)

end A078403

/-! ## A078403.P13140271843936058798

`∩[A028835(n+1), A182986(n+1)]`
-/

namespace A078403.P13140271843936058798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078403.P13140271843936058798

namespace A078403

/-- `∩[A028835(n+1), A182986(n+1)]` -/
def P13140271843936058798.Spec : Prop :=
  ∀ n, (P13140271843936058798.a n : ℤ) = A078403 (n + 1)

end A078403

/-!
# A078404: Expansion of Molien series for a certain 4-D group of order 192.

The programs for A078404, there is no canonical definition to state claims against.
-/

/-! ## A078404.P4154771593230406575

`A339369(A190037(n+1)^A339369(n+4))`
-/

namespace A078404.P4154771593230406575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 (SequenceMachineLib.roundAway ((A190037 (n + 1) : ℚ) ^ (A339369 (n + 4) : ℤ))).toNat

end

end A078404.P4154771593230406575

/-!
# A078405: Smallest positive integer than cannot be obtained from exactly n copies of n using parentheses and the operations +, -, /, *, ^ and concatenation.

The programs for A078405, there is no canonical definition to state claims against.
-/

/-! ## A078405.P1702514696888909597

`A238890(Δ[ceil(10^(n/2))]+ceil(10^(n/6)))`
-/

namespace A078405.P1702514696888909597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238890 (f1 (n + 1) - f1 n + ⌈(10 : ℝ) ^ ((n : ℚ) / 6 : ℝ)⌉).toNat

end

end A078405.P1702514696888909597

/-! ## A078405.P9586843766790545128

`A139555(A104447(n))+A065033(n)`
-/

namespace A078405.P9586843766790545128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A104447 n).toNat + A065033 n

end

end A078405.P9586843766790545128

/-! ## A078405.P11209642589282704012

`A213023(A283818(n)+A001109(n))`
-/

namespace A078405.P11209642589282704012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213023 (A283818 n + A001109 n).toNat

end

end A078405.P11209642589282704012

/-!
# A078406: Number of ways to partition 4*n into distinct positive integers.

The programs for A078406, there is no canonical definition to state claims against.
-/

/-! ## A078406.P4684175964065510968

`A000009(4*n)`
-/

namespace A078406.P4684175964065510968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (4 * n)

end

end A078406.P4684175964065510968

/-! ## A078406.P8066459167442624667

`A035294(2*n)`
-/

namespace A078406.P8066459167442624667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (2 * n)

end

end A078406.P8066459167442624667

/-! ## A078406.P7548410183369132918

`A282893(2*n)+A000041(2*n)`
-/

namespace A078406.P7548410183369132918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282893 (2 * n) + A000041 (2 * n)

end

end A078406.P7548410183369132918

/-! ## A078406.P3399358610593144355

`A365828(2*n)+A111133(2*n)`
-/

namespace A078406.P3399358610593144355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365828 (2 * n) + A111133 (2 * n)

end

end A078406.P3399358610593144355

/-! ## A078406.P11926791666890892182

`A081360(4*n)`
-/

namespace A078406.P11926791666890892182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (4 * n)

end

end A078406.P11926791666890892182

/-! ## A078406.P14680573092540008953

`A117409(A113127(n+1))`
-/

namespace A078406.P14680573092540008953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A113127 (n + 1)).toNat

end

end A078406.P14680573092540008953

/-! ## A078406.P12433515153293408861

`A117409(A133653(n+1))`
-/

namespace A078406.P12433515153293408861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A133653 (n + 1)).toNat

end

end A078406.P12433515153293408861

/-! ## A078406.P17185915097026413569

`A058696(2*n)-A366527(2*n)`
-/

namespace A078406.P17185915097026413569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (2 * n) - A366527 (2 * n)

end

end A078406.P17185915097026413569

/-! ## A078406.P16688705011024202874

`A035457(8*n)`
-/

namespace A078406.P16688705011024202874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (8 * n)

end

end A078406.P16688705011024202874

/-! ## A078406.P7290867211400699998

`A172033(8*n)`
-/

namespace A078406.P7290867211400699998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (8 * n)

end

end A078406.P7290867211400699998

/-! ## A078406.P3217210995487490074

`A249914(2*n)/A058696(n)`
-/

namespace A078406.P3217210995487490074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249914 (2 * n) : ℚ) / (A058696 n : ℚ)

end

end A078406.P3217210995487490074

/-! ## A078406.P11139481690306334386

`A249914(2*n)/A000041(2*n)`
-/

namespace A078406.P11139481690306334386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249914 (2 * n) : ℚ) / (A000041 (2 * n) : ℚ)

end

end A078406.P11139481690306334386

/-! ## A078406.P2209708534331531124

`sqrt(A304990(4*n))`
-/

namespace A078406.P2209708534331531124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A304990 (4 * n) : ℝ)

end

end A078406.P2209708534331531124

/-! ## A078406.P8143518847951224589

`A321142(2*n)+A237258(2*n)`
-/

namespace A078406.P8143518847951224589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321142 (2 * n) + A237258 (2 * n)

end

end A078406.P8143518847951224589

/-!
# A078407: Number of ways to partition 4*n+2 into distinct positive integers.

The programs for A078407, there is no canonical definition to state claims against.
-/

/-! ## A078407.P8322439207729140130

`A000009(4*n+2)`
-/

namespace A078407.P8322439207729140130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (4 * n + 2)

end

end A078407.P8322439207729140130

/-! ## A078407.P843618362072994379

`A035294(Δ[n²])`
-/

namespace A078407.P843618362072994379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078407.P843618362072994379

/-! ## A078407.P3442503292844787197

`record[A035294(xor(1, n))]`
-/

namespace A078407.P3442503292844787197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078407.P3442503292844787197

/-! ## A078407.P5540154157209831832

`A238479(2*n+1)+A078408(2*n)`
-/

namespace A078407.P5540154157209831832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238479 (2 * n + 1) + A078408 (2 * n)

end

end A078407.P5540154157209831832

/-! ## A078407.P3861079439815846632

`A282893(2*n+1)+A000041(2*n+1)`
-/

namespace A078407.P3861079439815846632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282893 (2 * n + 1) + A000041 (2 * n + 1)

end

end A078407.P3861079439815846632

/-! ## A078407.P8438742393168139748

`record[A000009(lcm(2, n))]`
-/

namespace A078407.P8438742393168139748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078407.P8438742393168139748

/-! ## A078407.P12083704832885890361

`record[A081360(or(2, n))]`
-/

namespace A078407.P12083704832885890361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078407.P12083704832885890361

/-! ## A078407.P7866143364475154221

`record[A081360(xor(2, n))]`
-/

namespace A078407.P7866143364475154221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (Nat.xor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078407.P7866143364475154221

/-! ## A078407.P10144259022832201523

`A117409(4*(n+1))`
-/

namespace A078407.P10144259022832201523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (4 * (n + 1))

end

end A078407.P10144259022832201523

/-! ## A078407.P8611657474099502606

`A081360(4*n+2)`
-/

namespace A078407.P8611657474099502606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (4 * n + 2)

end

end A078407.P8611657474099502606

/-! ## A078407.P6894057419751365692

`A357456(4*n+2)`
-/

namespace A078407.P6894057419751365692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 (4 * n + 2)

end

end A078407.P6894057419751365692

/-! ## A078407.P14100337731523858853

`A058696(2*n+1)-A366527(2*n+1)`
-/

namespace A078407.P14100337731523858853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (2 * n + 1) - A366527 (2 * n + 1)

end

end A078407.P14100337731523858853

/-! ## A078407.P7548741616293058998

`A035457(8*n+4)`
-/

namespace A078407.P7548741616293058998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (8 * n + 4)

end

end A078407.P7548741616293058998

/-! ## A078407.P8053394959142690060

`A172033(8*n+4)`
-/

namespace A078407.P8053394959142690060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (8 * n + 4)

end

end A078407.P8053394959142690060

/-! ## A078407.P10775781801100415262

`A249914(2*n+1)/A000041(2*n+1)`
-/

namespace A078407.P10775781801100415262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249914 (2 * n + 1) : ℚ) / (A000041 (2 * n + 1) : ℚ)

end

end A078407.P10775781801100415262

/-! ## A078407.P8297480032325485176

`A357853(A000040(2*n+2*n+1))`
-/

namespace A078407.P8297480032325485176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A000040 (2 * n + (2 * n + 1))).toNat

end

end A078407.P8297480032325485176

/-! ## A078407.P15137228435391261615

`A357853(A318871(2*n+2*n+1))`
-/

namespace A078407.P15137228435391261615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A318871 (2 * n + (2 * n + 1))).toNat

end

end A078407.P15137228435391261615

/-! ## A078407.P8733603242150011430

`A357982(A000040(2*(2*n+1)))`
-/

namespace A078407.P8733603242150011430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A000040 (2 * (2 * n + 1))).toNat

end

end A078407.P8733603242150011430

/-! ## A078407.P12088824031055838918

`A357982(A318871(2*(2*n+1)))`
-/

namespace A078407.P12088824031055838918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A318871 (2 * (2 * n + 1))).toNat

end

end A078407.P12088824031055838918

/-! ## A078407.P1910033638245557642

`A321142(2*n+1)+A237258(2*n+1)`
-/

namespace A078407.P1910033638245557642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321142 (2 * n + 1) + A237258 (2 * n + 1)

end

end A078407.P1910033638245557642

/-!
# A078408: Number of ways to partition 2n+1 into distinct positive integers.

The programs for A078408, there is no canonical definition to state claims against.
-/

/-! ## A078408.P13694526168790024060

`A282893(n+1)+A238478(n+1)`
-/

namespace A078408.P13694526168790024060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282893 (n + 1) + A238478 (n + 1)

end

end A078408.P13694526168790024060

/-! ## A078408.P9664579377930636156

`A035294(n+1)-A238479(n+1)`
-/

namespace A078408.P9664579377930636156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1) - A238479 (n + 1)

end

end A078408.P9664579377930636156

/-! ## A078408.P9842123727182809118

`A000009(2*n+1)`
-/

namespace A078408.P9842123727182809118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1)

end

end A078408.P9842123727182809118

/-! ## A078408.P18248408072862731113

`∪[A078409(n), A078410(n)]`
-/

namespace A078408.P18248408072862731113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078410 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078408.P18248408072862731113

/-! ## A078408.P6454110659834911558

`A053197(Δ[n²])`
-/

namespace A078408.P6454110659834911558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078408.P6454110659834911558

/-! ## A078408.P8893635047750616721

`A096441(Δ[n²])`
-/

namespace A078408.P8893635047750616721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078408.P8893635047750616721

/-! ## A078408.P414185649777155098

`A282892(Δ[n²])`
-/

namespace A078408.P414185649777155098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078408.P414185649777155098

/-! ## A078408.P6766279424982444993

`record[A282892(n+1)]`
-/

namespace A078408.P6766279424982444993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078408.P6766279424982444993

/-! ## A078408.P12630358931476910096

`abs(A081360(Δ[n²]))`
-/

namespace A078408.P12630358931476910096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A078408.P12630358931476910096

/-! ## A078408.P16283501297659576822

`A111133(Δ[n²])+1`
-/

namespace A078408.P16283501297659576822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A078408.P16283501297659576822

/-! ## A078408.P3534127332965182897

`A357456(Δ[n²])+1`
-/

namespace A078408.P3534127332965182897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A078408.P3534127332965182897

/-! ## A078408.P14179695676607876981

`A052839(Δ[n²])-1`
-/

namespace A078408.P14179695676607876981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A078408.P14179695676607876981

/-! ## A078408.P4372257049915126632

`A087135(Δ[n²])/2`
-/

namespace A078408.P4372257049915126632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087135 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A078408.P4372257049915126632

/-! ## A078408.P6234408377552488523

`record[-A081360(n+1)]`
-/

namespace A078408.P6234408377552488523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A081360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078408.P6234408377552488523

/-! ## A078408.P5076360776788411720

`A365827(Δ[n²])+n`
-/

namespace A078408.P5076360776788411720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365827 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A078408.P5076360776788411720

/-! ## A078408.P4772962310380119072

`record[A000009(n*n%2)]`
-/

namespace A078408.P4772962310380119072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078408.P4772962310380119072

/-! ## A078408.P10611630983416931010

`record[A000009(n*and(1, n))]`
-/

namespace A078408.P10611630983416931010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078408.P10611630983416931010

/-! ## A078408.P6794096477907948343

`∑{d}[2*n+1, A078374(#)]`
-/

namespace A078408.P6794096477907948343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078374 d

end

end A078408.P6794096477907948343

/-! ## A078408.P10323239383052806414

`ceil(A333147(2*n+1)/2)`
-/

namespace A078408.P10323239383052806414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 (2 * n + 1) : ℚ) / 2⌉

end

end A078408.P10323239383052806414

/-! ## A078408.P17855523508371075168

`A117409(2*n+3)`
-/

namespace A078408.P17855523508371075168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (2 * n + 3)

end

end A078408.P17855523508371075168

/-!
# A078409: Number of ways to partition 4*n+1 into distinct positive integers.

The programs for A078409, there is no canonical definition to state claims against.
-/

/-! ## A078409.P13248199850603653762

`A078408(2*n)`
-/

namespace A078409.P13248199850603653762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 (2 * n)

end

end A078409.P13248199850603653762

/-! ## A078409.P7005309039939918092

`A078407(n)-A238479(2*n+1)`
-/

namespace A078409.P7005309039939918092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078407 n - A238479 (2 * n + 1)

end

end A078409.P7005309039939918092

/-! ## A078409.P11152630152986325190

`A282893(2*n+1)+A238478(2*n+1)`
-/

namespace A078409.P11152630152986325190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282893 (2 * n + 1) + A238478 (2 * n + 1)

end

end A078409.P11152630152986325190

/-! ## A078409.P11367069001043146876

`A035294(2*n+1)-A238479(2*n+1)`
-/

namespace A078409.P11367069001043146876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (2 * n + 1) - A238479 (2 * n + 1)

end

end A078409.P11367069001043146876

/-! ## A078409.P3882156075037911598

`A000009(1+4*n)`
-/

namespace A078409.P3882156075037911598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (1 + 4 * n)

end

end A078409.P3882156075037911598

/-! ## A078409.P1467446642374572029

`A053197(4*n+1)`
-/

namespace A078409.P1467446642374572029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 (4 * n + 1)

end

end A078409.P1467446642374572029

/-! ## A078409.P17090892480063386344

`A117409(3+4*n)`
-/

namespace A078409.P17090892480063386344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (3 + 4 * n)

end

end A078409.P17090892480063386344

/-! ## A078409.P10118467613845875575

`A096441(3*n+n+1)`
-/

namespace A078409.P10118467613845875575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (3 * n + (n + 1))

end

end A078409.P10118467613845875575

/-! ## A078409.P7796839366919643492

`A282892(3*n+n+1)`
-/

namespace A078409.P7796839366919643492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (3 * n + (n + 1))

end

end A078409.P7796839366919643492

/-! ## A078409.P15522088515951895827

`A111133(A005408(2*n))+1`
-/

namespace A078409.P15522088515951895827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (A005408 (2 * n)).toNat + 1

end

end A078409.P15522088515951895827

/-! ## A078409.P8170898568870459031

`A035457(8*n+2)`
-/

namespace A078409.P8170898568870459031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (8 * n + 2)

end

end A078409.P8170898568870459031

/-! ## A078409.P15581363109254183847

`A172033(A017101(n))`
-/

namespace A078409.P15581363109254183847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A017101 n).toNat

end

end A078409.P15581363109254183847

/-! ## A078409.P3740439823178032972

`A172033(A304811(n))`
-/

namespace A078409.P3740439823178032972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A304811 n).toNat

end

end A078409.P3740439823178032972

/-! ## A078409.P13217464984117934811

`A172033(A004277(2*n+2*n+1))`
-/

namespace A078409.P13217464984117934811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A004277 (2 * n + (2 * n + 1))).toNat

end

end A078409.P13217464984117934811

/-! ## A078409.P12496772320429616219

`A346634(2*n)+A343942(2*n)`
-/

namespace A078409.P12496772320429616219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 (2 * n) + A343942 (2 * n)

end

end A078409.P12496772320429616219

/-! ## A078409.P4111842047076274093

`A357982(A031385(n+1))`
-/

namespace A078409.P4111842047076274093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A031385 (n + 1)).toNat

end

end A078409.P4111842047076274093

/-! ## A078409.P12943414137607801113

`A357982(A000040(2*n+2*n+1))`
-/

namespace A078409.P12943414137607801113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A000040 (2 * n + (2 * n + 1))).toNat

end

end A078409.P12943414137607801113

/-! ## A078409.P11379645832510704105

`A357982(A318871(2*n+2*n+1))`
-/

namespace A078409.P11379645832510704105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A318871 (2 * n + (2 * n + 1))).toNat

end

end A078409.P11379645832510704105

/-!
# A078410: Number of ways to partition 4*n+3 into distinct positive integers.

The programs for A078410, there is no canonical definition to state claims against.
-/

/-! ## A078410.P1994343875592177516

`A078408(Δ[n²])`
-/

namespace A078410.P1994343875592177516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078410.P1994343875592177516

/-! ## A078410.P6055526956686675299

`A078408(2*n+1)+A035457(2*n+1)`
-/

namespace A078410.P6055526956686675299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 (2 * n + 1) + A035457 (2 * n + 1)

end

end A078410.P6055526956686675299

/-! ## A078410.P4423647611296866197

`A000009(record[xor(3, n)])`
-/

namespace A078410.P4423647611296866197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078410.P4423647611296866197

/-! ## A078410.P1645037806981961104

`A096441(record[xor(3, n)])`
-/

namespace A078410.P1645037806981961104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078410.P1645037806981961104

/-! ## A078410.P1757971510816540903

`A000009(3+4*n)`
-/

namespace A078410.P1757971510816540903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 + 4 * n)

end

end A078410.P1757971510816540903

/-! ## A078410.P2468017238687726288

`A053197(4*n+3)`
-/

namespace A078410.P2468017238687726288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 (4 * n + 3)

end

end A078410.P2468017238687726288

/-! ## A078410.P4203427706595010253

`A096441(4*n+3)`
-/

namespace A078410.P4203427706595010253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (4 * n + 3)

end

end A078410.P4203427706595010253

/-! ## A078410.P404236411334227712

`A282892(4*n+3)`
-/

namespace A078410.P404236411334227712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (4 * n + 3)

end

end A078410.P404236411334227712

/-! ## A078410.P4826092462046636248

`abs(A081360(4*n+3))`
-/

namespace A078410.P4826092462046636248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (4 * n + 3)|

end

end A078410.P4826092462046636248

/-! ## A078410.P15820448302541630824

`A111133(4*n+3)+1`
-/

namespace A078410.P15820448302541630824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (4 * n + 3) + 1

end

end A078410.P15820448302541630824

/-! ## A078410.P14950610683576633448

`A117409(A004766(n+1))`
-/

namespace A078410.P14950610683576633448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A004766 (n + 1)).toNat

end

end A078410.P14950610683576633448

/-! ## A078410.P14618661595050751321

`A117409(A016813(n+1))`
-/

namespace A078410.P14618661595050751321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A016813 (n + 1)).toNat

end

end A078410.P14618661595050751321

/-! ## A078410.P10917168660625806760

`A035457(8*n+6)`
-/

namespace A078410.P10917168660625806760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (8 * n + 6)

end

end A078410.P10917168660625806760

/-! ## A078410.P12277904254066996388

`A172033(A004771(n))`
-/

namespace A078410.P12277904254066996388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A004771 n).toNat

end

end A078410.P12277904254066996388

/-! ## A078410.P14478404329362204383

`A172033(A133655(n+1))`
-/

namespace A078410.P14478404329362204383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (A133655 (n + 1)).toNat

end

end A078410.P14478404329362204383

/-! ## A078410.P6870297134036188702

`A346634(2*n+1)+A343942(2*n+1)`
-/

namespace A078410.P6870297134036188702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346634 (2 * n + 1) + A343942 (2 * n + 1)

end

end A078410.P6870297134036188702

/-! ## A078410.P7217475120878839490

`2*A346634(2*n+1)-A218173(2*n+1)`
-/

namespace A078410.P7217475120878839490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346634 (2 * n + 1) - A218173 (2 * n + 1)

end

end A078410.P7217475120878839490

/-! ## A078410.P13010018922913871687

`A357853(A031378(n+1))`
-/

namespace A078410.P13010018922913871687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A031378 (n + 1)).toNat

end

end A078410.P13010018922913871687

/-! ## A078410.P1715453485901843401

`A357982(A031370(n+1))`
-/

namespace A078410.P1715453485901843401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A031370 (n + 1)).toNat

end

end A078410.P1715453485901843401

/-! ## A078410.P1268625169410406482

`A357853(A000040(2*(2*n+1)))`
-/

namespace A078410.P1268625169410406482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A000040 (2 * (2 * n + 1))).toNat

end

end A078410.P1268625169410406482

/-!
# A078411: Expansion of Molien series for a certain 4-D group of order 48.

The programs for A078411, the canonical program `A078411.P5322989500803542836` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078411 has offset 0).

The definition of A078411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078411.P6681392303356295411

`ogf((1+x^2+x^3+2x^4+x^5+x^6+x^8)/(1-x-x^2+2x^5-x^8-x^9+x^10))`
-/

namespace A078411.P6681392303356295411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, 2, 1, 1, 0, 1] [1, -1, -1, 0, 0, 2, 0, 0, -1, -1, 1] n

end

end A078411.P6681392303356295411

namespace A078411

/-- `ogf((1+x^2+x^3+2x^4+x^5+x^6+x^8)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P6681392303356295411.Spec : Prop :=
  ∀ n, P6681392303356295411.a n = A078411 n

end A078411

/-! ## A078411.P5322989500803542836

`floor((2*n^3+6*n²+27*n+36)/36-n%2*n/4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078411

/-- `floor((2*n^3+6*n²+27*n+36)/36-n%2*n/4)` -/
def P5322989500803542836.Spec : Prop :=
  ∀ n, P5322989500803542836.a n = A078411 n

theorem P5322989500803542836.correct : P5322989500803542836.Spec := by
  intro n
  simp only [A078411]

end A078411

/-! ## A078411.P194247880700260291

`A008769(n)+∑[A000217(A004526(n))]`
-/

namespace A078411.P194247880700260291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078411.P194247880700260291

namespace A078411

/-- `A008769(n)+∑[A000217(A004526(n))]` -/
def P194247880700260291.Spec : Prop :=
  ∀ n, P194247880700260291.a n = A078411 n

end A078411

/-! ## A078411.P5490366772654397377

`∑[A008748(n)]-A110654(A026741(n))`
-/

namespace A078411.P5490366772654397377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 (A026741 n).toNat

end

end A078411.P5490366772654397377

namespace A078411

/-- `∑[A008748(n)]-A110654(A026741(n))` -/
def P5490366772654397377.Spec : Prop :=
  ∀ n, P5490366772654397377.a n = A078411 n

end A078411

/-! ## A078411.P245305792269225413

`A004657(n)+A008766(n)-A008642(n)`
-/

namespace A078411.P245305792269225413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004657 n + (A008766 n - A008642 n)

end

end A078411.P245305792269225413

namespace A078411

/-- `A004657(n)+A008766(n)-A008642(n)` -/
def P245305792269225413.Spec : Prop :=
  ∀ n, P245305792269225413.a n = A078411 n

end A078411

/-! ## A078411.P1691810866048615767

`A089597(2*n)`
-/

namespace A078411.P1691810866048615767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089597 (2 * n)

end

end A078411.P1691810866048615767

namespace A078411

/-- `A089597(2*n)` -/
def P1691810866048615767.Spec : Prop :=
  ∀ n, P1691810866048615767.a n = A078411 n

end A078411

/-! ## A078411.P7443958971229614333

`A089597(record[A046666(n+2)])%A022112(n)`
-/

namespace A078411.P7443958971229614333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A022112 n)

end

end A078411.P7443958971229614333

namespace A078411

/-- `A089597(record[A046666(n+2)])%A022112(n)` -/
def P7443958971229614333.Spec : Prop :=
  ∀ n, P7443958971229614333.a n = A078411 n

end A078411

/-! ## A078411.P11654478592530189152

`A000027(A089597(n+n))`
-/

namespace A078411.P11654478592530189152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A089597 (n + n)).toNat

end

end A078411.P11654478592530189152

namespace A078411

/-- `A000027(A089597(n+n))` -/
def P11654478592530189152.Spec : Prop :=
  ∀ n, P11654478592530189152.a n = A078411 n

end A078411

/-! ## A078411.P10872931110735493233

`A089597(n+n)+A072233(∑[n+1])`
-/

namespace A078411.P10872931110735493233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089597 (n + n) + A072233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078411.P10872931110735493233

namespace A078411

/-- `A089597(n+n)+A072233(∑[n+1])` -/
def P10872931110735493233.Spec : Prop :=
  ∀ n, P10872931110735493233.a n = A078411 n

end A078411

/-! ## A078411.P13311740710093701426

`A316675(∑[n+1])+A089597(n+n)`
-/

namespace A078411.P13311740710093701426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 (∑ j ∈ Finset.range (n + 1), f1 j) + A089597 (n + n)

end

end A078411.P13311740710093701426

namespace A078411

/-- `A316675(∑[n+1])+A089597(n+n)` -/
def P13311740710093701426.Spec : Prop :=
  ∀ n, P13311740710093701426.a n = A078411 n

end A078411

/-!
# A078412: a(0) = 5, a(1) = 8; for n > 1, a(n)=(a(n-1)+a(n-2))/3^k, where 3^k is the highest power of 3 dividing a(n-1)+a(n-2).

The programs for A078412, the canonical program `A078412.P6734117719064636493` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078412 has offset 0).

The definition of A078412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078412.P6734117719064636493

`A038502(a(n-1)+a(n-2))` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078412

/-- `A038502(a(n-1)+a(n-2))` -/
def P6734117719064636493.Spec : Prop :=
  ∀ n, P6734117719064636493.a n = A078412 n

theorem P6734117719064636493.correct : P6734117719064636493.Spec := by
  intro n
  simp only [A078412]

end A078412

/-!
# A078414: a(n) = (a(n-1)+a(n-2))/7^k, where 7^k is the highest power of 7 dividing a(n-1)+a(n-2).

The programs for A078414, the canonical program `A078414.P9815211639586840057` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078414 has offset 1).

The definition of A078414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078414.P9815211639586840057

`A242603(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078414

/-- `A242603(a(n-1)+a(n-2))` -/
def P9815211639586840057.Spec : Prop :=
  ∀ n, P9815211639586840057.a n = A078414 (n + 1)

theorem P9815211639586840057.correct : P9815211639586840057.Spec := by
  intro n
  simp only [A078414, Nat.add_sub_cancel]

end A078414

/-! ## A078414.P9223811962811093660

`A242603(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A078414.P9223811962811093660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) - (-a (n - 2))).toNat

end

end A078414.P9223811962811093660

namespace A078414

/-- `A242603(a(n-1)-floor(-a(n-2)))` -/
def P9223811962811093660.Spec : Prop :=
  ∀ n, P9223811962811093660.a n = A078414 (n + 1)

theorem P9223811962811093660.correct : P9223811962811093660.Spec := by
  intro n
  simp only [A078414, Nat.add_sub_cancel, A078414.P9223811962811093660.a, A078414.P9815211639586840057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078414

/-! ## A078414.P6792296847183410232

`A242603(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A078414.P6792296847183410232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) - (-a (n - 2))).toNat

end

end A078414.P6792296847183410232

namespace A078414

/-- `A242603(a(n-1)-ceil(-a(n-2)))` -/
def P6792296847183410232.Spec : Prop :=
  ∀ n, P6792296847183410232.a n = A078414 (n + 1)

theorem P6792296847183410232.correct : P6792296847183410232.Spec := by
  intro n
  simp only [A078414, Nat.add_sub_cancel, A078414.P6792296847183410232.a, A078414.P9815211639586840057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078414

/-! ## A078414.P4232654266673389654

`A242603(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A078414.P4232654266673389654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) - (-a (n - 2))).toNat

end

end A078414.P4232654266673389654

namespace A078414

/-- `A242603(a(n-1)-round(-a(n-2)))` -/
def P4232654266673389654.Spec : Prop :=
  ∀ n, P4232654266673389654.a n = A078414 (n + 1)

theorem P4232654266673389654.correct : P4232654266673389654.Spec := by
  intro n
  simp only [A078414, Nat.add_sub_cancel, A078414.P4232654266673389654.a, A078414.P9815211639586840057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078414

/-! ## A078414.P12083669947380434236

`A242603(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A078414.P12083669947380434236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A078414.P12083669947380434236

namespace A078414

/-- `A242603(a(n-1)-(char[1]-a(n-2)))` -/
def P12083669947380434236.Spec : Prop :=
  ∀ n, P12083669947380434236.a n = A078414 (n + 1)

end A078414

/-!
# A078415: Let f(n) = fraction of digits that are nonzero when n is written in base 2 and g(n) the same fraction for base 3. Let h(n) = max {f(n), g(n)}. Sequence gives n for which h(n) sets a new low record.

The programs for A078415, there is no canonical definition to state claims against.
-/

/-! ## A078415.P7007135824446740222

`record[gcd(A027471(n+1), A360634(3*n+1))]`
-/

namespace A078415.P7007135824446740222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027471 (n + 1)) (A360634 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078415.P7007135824446740222

/-!
# A078417: Numbers k such that h(k) = h(k+1), where h(k) is the length of k, f(k), f(f(k)), ..., 1 in the Collatz (or 3x + 1) problem. (The earliest "1" is meant.)

The programs for A078417, there is no canonical definition to state claims against.
-/

/-! ## A078417.P15191844348045972119

`lt[0, A213186(n+1)]`
-/

namespace A078417.P15191844348045972119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A078417.P15191844348045972119

/-! ## A078417.P11963725832613788505

`eq[1, A153330(n+1)+1]+1`
-/

namespace A078417.P11963725832613788505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078417.P11963725832613788505

/-! ## A078417.P9591493136108765405

`eq[A006577(n+1), A006577(n+2)]+1`
-/

namespace A078417.P9591493136108765405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078417.P9591493136108765405

/-! ## A078417.P6639572558168150533

`eq[A006666(n+1), A006666(n+2)]+1`
-/

namespace A078417.P6639572558168150533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078417.P6639572558168150533

/-! ## A078417.P1203449888235610789

`eq[A008908(n+1), A008908(n+2)]+1`
-/

namespace A078417.P1203449888235610789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078417.P1203449888235610789

/-! ## A078417.P16315676852408940974

`eq[A006666(n+1), A064433(A014682(n)+1)]`
-/

namespace A078417.P16315676852408940974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A014682 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078417.P16315676852408940974

/-! ## A078417.P2863024127839819561

`eq[A064433(n+1), A064433(A028310(n)+2)]`
-/

namespace A078417.P2863024127839819561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A028310 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078417.P2863024127839819561

/-! ## A078417.P7253507750597328835

`eq[A064433(n+2)+1, A064433(2*n+1)]`
-/

namespace A078417.P7253507750597328835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078417.P7253507750597328835

/-! ## A078417.P13949838331557424114

`eq[A064433(2*n+1), A064433(A005408(n+1))]`
-/

namespace A078417.P13949838331557424114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A005408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078417.P13949838331557424114

/-!
# A078422: a(n) = prime(n+1)^prime(n).

The programs for A078422, the canonical program `A078422.P12376503140112654654` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078422 has offset 1).

The definition of A078422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078422.P12376503140112654654

`A000040(n+2)^A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078422

/-- `A000040(n+2)^A000040(n+1)` -/
def P12376503140112654654.Spec : Prop :=
  ∀ n, P12376503140112654654.a n = (A078422 (n + 1) : ℚ)

end A078422

/-! ## A078422.P10101127714342837860

`p?[2*n+1]^comp[n^C(2, ∑{e}[n, #])!]`
-/

namespace A078422.P10101127714342837860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A078422.P10101127714342837860

namespace A078422

/-- `p?[2*n+1]^comp[n^C(2, ∑{e}[n, #])!]` -/
def P10101127714342837860.Spec : Prop :=
  ∀ n, (P10101127714342837860.a n : ℤ) = A078422 (n + 1)

end A078422

/-! ## A078422.P5758154356774102154

`p?[2*n+1]^record[A006530(n+2)]`
-/

namespace A078422.P5758154356774102154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A078422.P5758154356774102154

namespace A078422

/-- `p?[2*n+1]^record[A006530(n+2)]` -/
def P5758154356774102154.Spec : Prop :=
  ∀ n, P5758154356774102154.a n = (A078422 (n + 1) : ℚ)

end A078422

/-! ## A078422.P3403232342769169879

`p?[2*n+1]^record[A020639(n+2)]`
-/

namespace A078422.P3403232342769169879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A078422.P3403232342769169879

namespace A078422

/-- `p?[2*n+1]^record[A020639(n+2)]` -/
def P3403232342769169879.Spec : Prop :=
  ∀ n, P3403232342769169879.a n = (A078422 (n + 1) : ℚ)

end A078422

/-! ## A078422.P922809530598225072

`A077385(A261465(n+1))`
-/

namespace A078422.P922809530598225072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (A261465 (n + 1)).toNat

end

end A078422.P922809530598225072

namespace A078422

/-- `A077385(A261465(n+1))` -/
def P922809530598225072.Spec : Prop :=
  ∀ n, P922809530598225072.a n = A078422 (n + 1)

end A078422

/-!
# A078423: Group the natural numbers into clumps with increasing prime numbers of elements, then multiply the members of each clump.

The programs for A078423, there is no canonical definition to state claims against.
-/

/-! ## A078423.P15198111485976888698

`ratio[-A007504(n)!]`
-/

namespace A078423.P15198111485976888698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (A007504 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078423.P15198111485976888698

/-! ## A078423.P162523258018517944

`ratio[-∑[comp[A018252(n+1)]]!]`
-/

namespace A078423.P162523258018517944
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078423.P162523258018517944

/-! ## A078423.P15100287819078217001

`ratio[-(∑[A000040(n+1)]-A000040(n+1))!]`
-/

namespace A078423.P15100287819078217001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j - A000040 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078423.P15100287819078217001

/-!
# A078425: Primes in "Ulam's Prime sequence". A prime is in the sequence iff p+1 can be expressed in exactly 1 way as the sum of 2 previous distinct primes.

The programs for A078425, there is no canonical definition to state claims against.
-/

/-! ## A078425.P4771316611229092161

`p?[lt[A229946(n+3), 3]]`
-/

namespace A078425.P4771316611229092161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078425.P4771316611229092161

/-! ## A078425.P3517216671407061093

`record[A096918(A117144(n))]`
-/

namespace A078425.P3517216671407061093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096918 (A117144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078425.P3517216671407061093

/-! ## A078425.P8768425828746074519

`A088524(A134678(n+2))`
-/

namespace A078425.P8768425828746074519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088524 (A134678 (n + 2)).toNat

end

end A078425.P8768425828746074519

/-! ## A078425.P16888185425706407908

`p?[record[A112543(A310466(n))]]`
-/

namespace A078425.P16888185425706407908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A310466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078425.P16888185425706407908

/-! ## A078425.P9559462127095831876

`A077800(lt[A274776(n+1), A236104(n+1)])`
-/

namespace A078425.P9559462127095831876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078425.P9559462127095831876

/-!
# A078426: Numbers k such that there is no solution to the equation sigma(x) = 2^k, where sigma(x) denotes the sum of the divisors of x.

The programs for A078426, the canonical program `A078426.P8470223486056224511` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078426 has offset 1).

The definition of A078426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078426.P8470223486056224511

`record[xor(n+1, A001489(A063883(n+1)))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A078426

/-- `record[xor(n+1, A001489(A063883(n+1)))]` -/
def P8470223486056224511.Spec : Prop :=
  ∀ n, P8470223486056224511.a n = A078426 (n + 1)

theorem P8470223486056224511.correct : P8470223486056224511.Spec := by
  intro n
  simp only [A078426, Nat.add_sub_cancel]

end A078426

/-! ## A078426.P9556252383956910254

`eq[A000007(n), A063883(A028310(n))]`
-/

namespace A078426.P9556252383956910254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063883 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078426.P9556252383956910254

namespace A078426

/-- `eq[A000007(n), A063883(A028310(n))]` -/
def P9556252383956910254.Spec : Prop :=
  ∀ n, (P9556252383956910254.a n : ℤ) = A078426 (n + 1)

end A078426

/-!
# A078427: Sum of all the decimal digits of numbers from 1 to 10^n.

The programs for A078427, the canonical program `A078427.P550555891873791751` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078427 has offset 1).

The definition of A078427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078427.P7787327383693195022

`ogf((46-65x+100x^2)/(1-21x+120x^2-100x^3))`
-/

namespace A078427.P7787327383693195022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [46, -65, 100] [1, -21, 120, -100] n

end

end A078427.P7787327383693195022

namespace A078427

/-- `ogf((46-65x+100x^2)/(1-21x+120x^2-100x^3))` -/
def P7787327383693195022.Spec : Prop :=
  ∀ n, P7787327383693195022.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P550555891873791751

`45*(n+1)*10^n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078427

/-- `45*(n+1)*10^n+1` -/
def P550555891873791751.Spec : Prop :=
  ∀ n, (P550555891873791751.a n : ℤ) = A078427 (n + 1)

theorem P550555891873791751.correct : P550555891873791751.Spec := by
  intro n
  simp only [A078427, Nat.add_sub_cancel]

end A078427

/-! ## A078427.P10939407343348996947

`Δ[∑[A034967(n)]+n]`
-/

namespace A078427.P10939407343348996947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078427.P10939407343348996947

namespace A078427

/-- `Δ[∑[A034967(n)]+n]` -/
def P10939407343348996947.Spec : Prop :=
  ∀ n, P10939407343348996947.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P8438187065678541702

`Δ[∑[n*A137233(n+1)]+n]`
-/

namespace A078427.P8438187065678541702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A137233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078427.P8438187065678541702

namespace A078427

/-- `Δ[∑[n*A137233(n+1)]+n]` -/
def P8438187065678541702.Spec : Prop :=
  ∀ n, P8438187065678541702.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P9465901829223398321

`ceil(A034967(n+1)+cos(ceil(ϕ*n)%2))`
-/

namespace A078427.P9465901829223398321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034967 (n + 1) : ℝ) + Real.cos (Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ 2 : ℝ)⌉

end

end A078427.P9465901829223398321

namespace A078427

/-- `ceil(A034967(n+1)+cos(ceil(ϕ*n)%2))` -/
def P9465901829223398321.Spec : Prop :=
  ∀ n, P9465901829223398321.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P579037853665420684

`record[A034967(A057979(n))+1]`
-/

namespace A078427.P579037853665420684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 (A057979 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078427.P579037853665420684

namespace A078427

/-- `record[A034967(A057979(n))+1]` -/
def P579037853665420684.Spec : Prop :=
  ∀ n, P579037853665420684.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P11160882861510893020

`∑[A078761(n+1)+A000007(n)]`
-/

namespace A078427.P11160882861510893020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078761 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078427.P11160882861510893020

namespace A078427

/-- `∑[A078761(n+1)+A000007(n)]` -/
def P11160882861510893020.Spec : Prop :=
  ∀ n, P11160882861510893020.a n = A078427 (n + 1)

end A078427

/-! ## A078427.P13273166925893488239

`∑[A078761(n+1)+A010054(A000124(n))]`
-/

namespace A078427.P13273166925893488239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078761 (n + 1) + A010054 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078427.P13273166925893488239

namespace A078427

/-- `∑[A078761(n+1)+A010054(A000124(n))]` -/
def P13273166925893488239.Spec : Prop :=
  ∀ n, P13273166925893488239.a n = A078427 (n + 1)

end A078427

/-!
# A078428: Partial sums of A035187.

The programs for A078428, the canonical program `A078428.P16963717011837216112` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078428 has offset 0).

The definition of A078428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078428.P16963717011837216112

`∑[A035187(1+n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A078428

/-- `∑[A035187(1+n)]` -/
def P16963717011837216112.Spec : Prop :=
  ∀ n, P16963717011837216112.a n = A078428 n

theorem P16963717011837216112.correct : P16963717011837216112.Spec := by
  intro n
  simp only [A078428]

end A078428

/-! ## A078428.P18394318876029450732

`A035187(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A078428.P18394318876029450732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035187 (n + 1) + a (n - 1)

end

end A078428.P18394318876029450732

namespace A078428

/-- `A035187(n+1)+a(n-1)` -/
def P18394318876029450732.Spec : Prop :=
  ∀ n, P18394318876029450732.a n = A078428 n

end A078428

/-! ## A078428.P7085509151551990610

`∑[A035202(n+1)*A035263(n+1)]`
-/

namespace A078428.P7085509151551990610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (n + 1) * A035263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P7085509151551990610

namespace A078428

/-- `∑[A035202(n+1)*A035263(n+1)]` -/
def P7085509151551990610.Spec : Prop :=
  ∀ n, P7085509151551990610.a n = A078428 n

end A078428

/-! ## A078428.P8507110311715243950

`∑[lcm(A029883(n+1), A035202(n+1))]`
-/

namespace A078428.P8507110311715243950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A035202 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P8507110311715243950

namespace A078428

/-- `∑[lcm(A029883(n+1), A035202(n+1))]` -/
def P8507110311715243950.Spec : Prop :=
  ∀ n, (P8507110311715243950.a n : ℤ) = A078428 n

end A078428

/-! ## A078428.P12384870288757972914

`∑[and(A035202(n+1), A035227(n+1))]`
-/

namespace A078428.P12384870288757972914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035202 (n + 1)) (A035227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P12384870288757972914

namespace A078428

/-- `∑[and(A035202(n+1), A035227(n+1))]` -/
def P12384870288757972914.Spec : Prop :=
  ∀ n, P12384870288757972914.a n = A078428 n

end A078428

/-! ## A078428.P2834325902900041841

`∑[∑{d}[n+1, A080891((n+1)/#)]]`
-/

namespace A078428.P2834325902900041841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A080891 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P2834325902900041841

namespace A078428

/-- `∑[∑{d}[n+1, A080891((n+1)/#)]]` -/
def P2834325902900041841.Spec : Prop :=
  ∀ n, P2834325902900041841.a n = A078428 n

end A078428

/-! ## A078428.P927614403152736259

`∑[A035316((n+1)²)%5]`
-/

namespace A078428.P927614403152736259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035316 ((n + 1) ^ 2)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P927614403152736259

namespace A078428

/-- `∑[A035316((n+1)²)%5]` -/
def P927614403152736259.Spec : Prop :=
  ∀ n, P927614403152736259.a n = A078428 n

end A078428

/-! ## A078428.P2813392485101561295

`∑[A076752((n+1)²)%5]`
-/

namespace A078428.P2813392485101561295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076752 ((n + 1) ^ 2)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P2813392485101561295

namespace A078428

/-- `∑[A076752((n+1)²)%5]` -/
def P2813392485101561295.Spec : Prop :=
  ∀ n, P2813392485101561295.a n = A078428 n

end A078428

/-! ## A078428.P9922407857572409366

`∑[A278313(A001157(n+1))]`
-/

namespace A078428.P9922407857572409366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278313 (A001157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078428.P9922407857572409366

namespace A078428

/-- `∑[A278313(A001157(n+1))]` -/
def P9922407857572409366.Spec : Prop :=
  ∀ n, P9922407857572409366.a n = A078428 n

end A078428

/-!
# A078429: Number of integers k among 1..n for which gcd(k,n) is a cube.

The programs for A078429, the canonical program `A078429.P11983982689361826576` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078429 has offset 1).

The definition of A078429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078429.P11983982689361826576

`∑{#}[n, A010057(gcd(n+1, #))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078429

/-- `∑{#}[n, A010057(gcd(n+1, #))]` -/
def P11983982689361826576.Spec : Prop :=
  ∀ n, P11983982689361826576.a n = A078429 (n + 1)

theorem P11983982689361826576.correct : P11983982689361826576.Spec := by
  intro n
  simp only [A078429, Nat.add_sub_cancel]

end A078429

/-! ## A078429.P3517718782682471896

`∑{d}[n+1, #*A210826((n+1)/#)]`
-/

namespace A078429.P3517718782682471896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P3517718782682471896

namespace A078429

/-- `∑{d}[n+1, #*A210826((n+1)/#)]` -/
def P3517718782682471896.Spec : Prop :=
  ∀ n, P3517718782682471896.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P12186378810056165004

`∑{d}[n+1, A000010(#)*A010057((n+1)/#)]`
-/

namespace A078429.P12186378810056165004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A010057 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P12186378810056165004

namespace A078429

/-- `∑{d}[n+1, A000010(#)*A010057((n+1)/#)]` -/
def P12186378810056165004.Spec : Prop :=
  ∀ n, P12186378810056165004.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P4416588971432725786

`∑{d}[n+1, A007431(#)*A061704((n+1)/#)]`
-/

namespace A078429.P4416588971432725786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A061704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P4416588971432725786

namespace A078429

/-- `∑{d}[n+1, A007431(#)*A061704((n+1)/#)]` -/
def P4416588971432725786.Spec : Prop :=
  ∀ n, P4416588971432725786.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P13343541826004804642

`∑{d}[n+1, A008683(#)*A327626((n+1)/#)]`
-/

namespace A078429.P13343541826004804642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P13343541826004804642

namespace A078429

/-- `∑{d}[n+1, A008683(#)*A327626((n+1)/#)]` -/
def P13343541826004804642.Spec : Prop :=
  ∀ n, P13343541826004804642.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P7851776855753958950

`∑{d}[n+1, A063659(#)*A307420((n+1)/#)]`
-/

namespace A078429.P7851776855753958950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P7851776855753958950

namespace A078429

/-- `∑{d}[n+1, A063659(#)*A307420((n+1)/#)]` -/
def P7851776855753958950.Spec : Prop :=
  ∀ n, P7851776855753958950.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P16076442301338591766

`∑{d}[n+1, A074722(#)*A307421((n+1)/#)]`
-/

namespace A078429.P16076442301338591766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P16076442301338591766

namespace A078429

/-- `∑{d}[n+1, A074722(#)*A307421((n+1)/#)]` -/
def P16076442301338591766.Spec : Prop :=
  ∀ n, P16076442301338591766.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P12089137197705292761

`∑{d}[n+1, A076752(#)*A307427((n+1)/#)]`
-/

namespace A078429.P12089137197705292761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A307427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P12089137197705292761

namespace A078429

/-- `∑{d}[n+1, A076752(#)*A307427((n+1)/#)]` -/
def P12089137197705292761.Spec : Prop :=
  ∀ n, P12089137197705292761.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P11371065529360553793

`∑{d}[n+1, A130107(#)*A370256((n+1)/#)]`
-/

namespace A078429.P11371065529360553793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P11371065529360553793

namespace A078429

/-- `∑{d}[n+1, A130107(#)*A370256((n+1)/#)]` -/
def P11371065529360553793.Spec : Prop :=
  ∀ n, P11371065529360553793.a n = A078429 (n + 1)

end A078429

/-! ## A078429.P3555938836358904506

`∑{d}[n+1, A206369(#)*A307424((n+1)/#)]`
-/

namespace A078429.P3555938836358904506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A307424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P3555938836358904506

namespace A078429

/-- `∑{d}[n+1, A206369(#)*A307424((n+1)/#)]` -/
def P3555938836358904506.Spec : Prop :=
  ∀ n, P3555938836358904506.a n = A078429 (n + 1)

end A078429

/-!
# A078430: Sum of gcd(k^2,n) for 1 <= k <= n.

The programs for A078430, the canonical program `A078430.P18184114598254949560` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078430 has offset 1).

The definition of A078430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078430.P18184114598254949560

`∑{#}[n, gcd(n+1, #²)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078430

/-- `∑{#}[n, gcd(n+1, #²)]` -/
def P18184114598254949560.Spec : Prop :=
  ∀ n, (P18184114598254949560.a n : ℤ) = A078430 (n + 1)

theorem P18184114598254949560.correct : P18184114598254949560.Spec := by
  intro n
  simp only [A078430, Nat.add_sub_cancel]

end A078430

/-!
# A078431: Number of permutations p of 1,2,...,n such that both numerator and denominator of the continued fraction [p(1); p(2),...,p(n)] are primes.

The programs for A078431, there is no canonical definition to state claims against.
-/

/-! ## A078431.P3259086155627110234

`A239495(A007179(n)+8)`
-/

namespace A078431.P3259086155627110234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239495 (A007179 n + 8).toNat

end

end A078431.P3259086155627110234

/-! ## A078431.P2026149112339300726

`A245092(A331216((n+1)!))`
-/

namespace A078431.P2026149112339300726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A331216 (Nat.factorial (n + 1))).toNat

end

end A078431.P2026149112339300726

/-! ## A078431.P1758312285246422046

`A107479(A091954((2*n+1)*n!))`
-/

namespace A078431.P1758312285246422046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107479 (A091954 ((2 * n + 1) * Nat.factorial n)).toNat

end

end A078431.P1758312285246422046

/-!
# A078432: Number of permutations p of 1,2,...,n such that the denominator of the continued fraction [p(1); p(2),...,p(n)] is prime.

The programs for A078432, there is no canonical definition to state claims against.
-/

/-! ## A078432.P11707248216100001537

`A243650(A378110(n+1))`
-/

namespace A078432.P11707248216100001537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243650 (A378110 (n + 1)).toNat

end

end A078432.P11707248216100001537

/-! ## A078432.P1715641545325680764

`A313154(A119457(a(n-1)+2))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A078432.P1715641545325680764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  A313154 (A119457 (a (n - 1) + 2).toNat).toNat

end

end A078432.P1715641545325680764

/-!
# A078433: Number of permutations p of 1,2,...,n such that the numerator of the continued fraction [p(1); p(2),...,p(n)] is prime.

The programs for A078433, there is no canonical definition to state claims against.
-/

/-! ## A078433.P3312146520560447708

`Δ[A307531(A152796(n))]`
-/

namespace A078433.P3312146520560447708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A152796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078433.P3312146520560447708

/-! ## A078433.P7147498210756198041

`A191853(A322701(n+1))`
-/

namespace A078433.P7147498210756198041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191853 (A322701 (n + 1)).toNat

end

end A078433.P7147498210756198041

/-!
# A078435: Number of composites <= n^2.

The programs for A078435, the canonical program `A078435.P14345205808415751107` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078435 has offset 1).

The definition of A078435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078435.P2457796634874295884

`(n+1)²-A038107(n+1)`
-/

namespace A078435.P2457796634874295884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A038107 (n + 1)

end

end A078435.P2457796634874295884

namespace A078435

/-- `(n+1)²-A038107(n+1)` -/
def P2457796634874295884.Spec : Prop :=
  ∀ n, P2457796634874295884.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P14345205808415751107

`(n+1)²-A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078435

/-- `(n+1)²-A000720((n+1)²)` -/
def P14345205808415751107.Spec : Prop :=
  ∀ n, P14345205808415751107.a n = A078435 (n + 1)

theorem P14345205808415751107.correct : P14345205808415751107.Spec := by
  intro n
  simp only [A078435, Nat.add_sub_cancel]

end A078435

/-! ## A078435.P1584072959399707949

`∑[A161182(n+1)]`
-/

namespace A078435.P1584072959399707949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078435.P1584072959399707949

namespace A078435

/-- `∑[A161182(n+1)]` -/
def P1584072959399707949.Spec : Prop :=
  ∀ n, P1584072959399707949.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P867302158183196270

`A065893(n+1)+1`
-/

namespace A078435.P867302158183196270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065893 (n + 1) + 1

end

end A078435.P867302158183196270

namespace A078435

/-- `A065893(n+1)+1` -/
def P867302158183196270.Spec : Prop :=
  ∀ n, P867302158183196270.a n = A078435 (n + 1)

theorem P867302158183196270.correct : P867302158183196270.Spec := by
  intro n
  simp only [A078435, Nat.add_sub_cancel, A078435.P867302158183196270.a, A078435.P14345205808415751107.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065893, A065893.P532319707878863791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078435

/-! ## A078435.P17071562436204963628

`∑[Δ[n²]-A014085(n)]`
-/

namespace A078435.P17071562436204963628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078435.P17071562436204963628

namespace A078435

/-- `∑[Δ[n²]-A014085(n)]` -/
def P17071562436204963628.Spec : Prop :=
  ∀ n, P17071562436204963628.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P6020621651073001799

`n²+1-A147609(n+1)`
-/

namespace A078435.P6020621651073001799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - A147609 (n + 1)

end

end A078435.P6020621651073001799

namespace A078435

/-- `n²+1-A147609(n+1)` -/
def P6020621651073001799.Spec : Prop :=
  ∀ n, P6020621651073001799.a n = A078435 (n + 1)

theorem P6020621651073001799.correct : P6020621651073001799.Spec := by
  intro n
  simp only [A078435, Nat.add_sub_cancel, A078435.P6020621651073001799.a, A078435.P14345205808415751107.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A147609, A147609.P1573611172523087498.a, A000290, A000290.P12206242496348924484.a, A065893, A065893.P532319707878863791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078435

/-! ## A078435.P6158149663088125858

`A028387(n)+1-A161187(n+1)`
-/

namespace A078435.P6158149663088125858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A161187 (n + 1))

end

end A078435.P6158149663088125858

namespace A078435

/-- `A028387(n)+1-A161187(n+1)` -/
def P6158149663088125858.Spec : Prop :=
  ∀ n, P6158149663088125858.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P17717355449915547968

`A253909(n+1)-∑[A038107(n+1)-A038107(n)]`
-/

namespace A078435.P17717355449915547968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078435.P17717355449915547968

namespace A078435

/-- `A253909(n+1)-∑[A038107(n+1)-A038107(n)]` -/
def P17717355449915547968.Spec : Prop :=
  ∀ n, P17717355449915547968.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P9975368691384044407

`(n+1)²-A220506(2*(n+1))`
-/

namespace A078435.P9975368691384044407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A220506 (2 * (n + 1))

end

end A078435.P9975368691384044407

namespace A078435

/-- `(n+1)²-A220506(2*(n+1))` -/
def P9975368691384044407.Spec : Prop :=
  ∀ n, P9975368691384044407.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P10045375938352910216

`record[A000006(n+1)²-n]`
-/

namespace A078435.P10045375938352910216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078435.P10045375938352910216

namespace A078435

/-- `record[A000006(n+1)²-n]` -/
def P10045375938352910216.Spec : Prop :=
  ∀ n, P10045375938352910216.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P17359054161539307648

`record[floor(sqrt(A000040(n+1)))²-n]`
-/

namespace A078435.P17359054161539307648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078435.P17359054161539307648

namespace A078435

/-- `record[floor(sqrt(A000040(n+1)))²-n]` -/
def P17359054161539307648.Spec : Prop :=
  ∀ n, P17359054161539307648.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P3855462065732130298

`A305800(A132411(n+1))`
-/

namespace A078435.P3855462065732130298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A132411 (n + 1)).toNat

end

end A078435.P3855462065732130298

namespace A078435

/-- `A305800(A132411(n+1))` -/
def P3855462065732130298.Spec : Prop :=
  ∀ n, P3855462065732130298.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P12148872351427562186

`A065855((n+1)²)+1`
-/

namespace A078435.P12148872351427562186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 ((n + 1) ^ 2) + 1

end

end A078435.P12148872351427562186

namespace A078435

/-- `A065855((n+1)²)+1` -/
def P12148872351427562186.Spec : Prop :=
  ∀ n, P12148872351427562186.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P12853237508503242624

`record[A095833(n+1)-A000720(A095833(n+1))]`
-/

namespace A078435.P12853237508503242624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - A000720 (A095833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078435.P12853237508503242624

namespace A078435

/-- `record[A095833(n+1)-A000720(A095833(n+1))]` -/
def P12853237508503242624.Spec : Prop :=
  ∀ n, P12853237508503242624.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P14939859159538751926

`record[A133819(n+1)-A000720(A133819(n+1))]`
-/

namespace A078435.P14939859159538751926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) - A000720 (A133819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078435.P14939859159538751926

namespace A078435

/-- `record[A133819(n+1)-A000720(A133819(n+1))]` -/
def P14939859159538751926.Spec : Prop :=
  ∀ n, P14939859159538751926.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P2546243269880339952

`A022447((n+1)²)`
-/

namespace A078435.P2546243269880339952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 ((n + 1) ^ 2)

end

end A078435.P2546243269880339952

namespace A078435

/-- `A022447((n+1)²)` -/
def P2546243269880339952.Spec : Prop :=
  ∀ n, P2546243269880339952.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P16771227762834942922

`A026233((n+1)²)`
-/

namespace A078435.P16771227762834942922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 ((n + 1) ^ 2)

end

end A078435.P16771227762834942922

namespace A078435

/-- `A026233((n+1)²)` -/
def P16771227762834942922.Spec : Prop :=
  ∀ n, P16771227762834942922.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P14293685328478769796

`A062298((n+1)²)`
-/

namespace A078435.P14293685328478769796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 ((n + 1) ^ 2)

end

end A078435.P14293685328478769796

namespace A078435

/-- `A062298((n+1)²)` -/
def P14293685328478769796.Spec : Prop :=
  ∀ n, P14293685328478769796.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P9982894751332003892

`A086936((n+1)²)`
-/

namespace A078435.P9982894751332003892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 ((n + 1) ^ 2)

end

end A078435.P9982894751332003892

namespace A078435

/-- `A086936((n+1)²)` -/
def P9982894751332003892.Spec : Prop :=
  ∀ n, P9982894751332003892.a n = A078435 (n + 1)

end A078435

/-! ## A078435.P9017290371642153607

`A239968((n+1)²)`
-/

namespace A078435.P9017290371642153607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 ((n + 1) ^ 2)

end

end A078435.P9017290371642153607

namespace A078435

/-- `A239968((n+1)²)` -/
def P9017290371642153607.Spec : Prop :=
  ∀ n, P9017290371642153607.a n = A078435 (n + 1)

end A078435

/-!
# A078436: Triangle read by rows in which n-th row counts multisets associated with hook partitions.

The programs for A078436, the canonical program `A078436.P11254771469081347434` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078436 has offset 1).

The definition of A078436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078436.P8453409340840757176

`and(-A243081(n), A130128(n+1))`
-/

namespace A078436.P8453409340840757176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A243081 n) (A130128 (n + 1))

end

end A078436.P8453409340840757176

namespace A078436

/-- `and(-A243081(n), A130128(n+1))` -/
def P8453409340840757176.Spec : Prop :=
  ∀ n, P8453409340840757176.a n = A078436 (n + 1)

end A078436

/-! ## A078436.P4123813164191613603

`and(A130128(n+1), A154990(n+1))`
-/

namespace A078436.P4123813164191613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130128 (n + 1)) (A154990 (n + 1))

end

end A078436.P4123813164191613603

namespace A078436

/-- `and(A130128(n+1), A154990(n+1))` -/
def P4123813164191613603.Spec : Prop :=
  ∀ n, P4123813164191613603.a n = A078436 (n + 1)

end A078436

/-! ## A078436.P11254771469081347434

`A023532(A028310(n))*A130128(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078436

/-- `A023532(A028310(n))*A130128(n+1)` -/
def P11254771469081347434.Spec : Prop :=
  ∀ n, P11254771469081347434.a n = A078436 (n + 1)

theorem P11254771469081347434.correct : P11254771469081347434.Spec := by
  intro n
  simp only [A078436, Nat.add_sub_cancel]

end A078436

/-! ## A078436.P14036122576958163604

`floor(A130128(n+1)^Δ[A002262(n)])`
-/

namespace A078436.P14036122576958163604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130128 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A078436.P14036122576958163604

namespace A078436

/-- `floor(A130128(n+1)^Δ[A002262(n)])` -/
def P14036122576958163604.Spec : Prop :=
  ∀ n, P14036122576958163604.a n = A078436 (n + 1)

end A078436

/-! ## A078436.P4398518328190548018

`and(-A290216(n), A130128(n+1))`
-/

namespace A078436.P4398518328190548018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A290216 n) (A130128 (n + 1))

end

end A078436.P4398518328190548018

namespace A078436

/-- `and(-A290216(n), A130128(n+1))` -/
def P4398518328190548018.Spec : Prop :=
  ∀ n, P4398518328190548018.a n = A078436 (n + 1)

end A078436

/-! ## A078436.P7743245590993652695

`and(-A316723(n), A130128(n+1))`
-/

namespace A078436.P7743245590993652695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A316723 n) (A130128 (n + 1))

end

end A078436.P7743245590993652695

namespace A078436

/-- `and(-A316723(n), A130128(n+1))` -/
def P7743245590993652695.Spec : Prop :=
  ∀ n, P7743245590993652695.a n = A078436 (n + 1)

end A078436

/-! ## A078436.P18349107983374859788

`C((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2)), A001147(Δ[C(round(sqrt(2*(n+1))), 2)]))`
-/

namespace A078436.P18349107983374859788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat (A001147 ((f6 (n + 1) : ℤ) - (f6 n : ℤ)).toNat).toNat

end

end A078436.P18349107983374859788

namespace A078436

/-- `C((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2)), A001147(Δ[C(round(sqrt(2*(n+1))), 2)]))` -/
def P18349107983374859788.Spec : Prop :=
  ∀ n, (P18349107983374859788.a n : ℤ) = A078436 (n + 1)

end A078436

/-! ## A078436.P13751698638610247867

`C((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2)), A291846(Δ[C(round(sqrt(2*(n+1))), 2)]))`
-/

namespace A078436.P13751698638610247867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat (A291846 ((f6 (n + 1) : ℤ) - (f6 n : ℤ)).toNat).toNat

end

end A078436.P13751698638610247867

namespace A078436

/-- `C((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2)), A291846(Δ[C(round(sqrt(2*(n+1))), 2)]))` -/
def P13751698638610247867.Spec : Prop :=
  ∀ n, (P13751698638610247867.a n : ℤ) = A078436 (n + 1)

end A078436

/-! ## A078436.P3329469496770994703

`A130128(n+1)%A240223(n)`
-/

namespace A078436.P3329469496770994703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130128 (n + 1)) (A240223 n)

end

end A078436.P3329469496770994703

namespace A078436

/-- `A130128(n+1)%A240223(n)` -/
def P3329469496770994703.Spec : Prop :=
  ∀ n, P3329469496770994703.a n = A078436 (n + 1)

end A078436

/-!
# A078439: a(n) = Sum_{k=1..n} gcd(k,n)*mu(gcd(k,n))^2.

The programs for A078439, the canonical program `A078439.P978437433576510243` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078439 has offset 1).

The definition of A078439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd(#+1, n+1)*A008683(gcd(#+1, n+1))²]` (program `A078439.P978437433576510243`, by `A078439.P978437433576510243.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078439.P989473676098223965

`∑{d}[n+1, #*A008683(#)²*A000010((n+1)/#)]`
-/

namespace A078439.P989473676098223965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d ^ 2 * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P989473676098223965

namespace A078439

/-- `∑{d}[n+1, #*A008683(#)²*A000010((n+1)/#)]` -/
def P989473676098223965.Spec : Prop :=
  ∀ n, P989473676098223965.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P12586872385094589224

`∑{d}[n+1, #*2^A001221(#)*A008683((n+1)/#)]`
-/

namespace A078439.P12586872385094589224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * (2 : ℚ) ^ (A001221 d : ℤ) * (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ)

end

end A078439.P12586872385094589224

namespace A078439

/-- `∑{d}[n+1, #*2^A001221(#)*A008683((n+1)/#)]` -/
def P12586872385094589224.Spec : Prop :=
  ∀ n, P12586872385094589224.a n = (A078439 (n + 1) : ℚ)

end A078439

/-! ## A078439.P978437433576510243

`∑{#}[n, gcd(#+1, n+1)*A008683(gcd(#+1, n+1))²]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078439

/-- `∑{#}[n, gcd(#+1, n+1)*A008683(gcd(#+1, n+1))²]` -/
def P978437433576510243.Spec : Prop :=
  ∀ n, P978437433576510243.a n = A078439 (n + 1)

theorem P978437433576510243.correct : P978437433576510243.Spec := by
  intro n
  simp only [A078439, Nat.add_sub_cancel]

end A078439

/-! ## A078439.P7844647560305578061

`∑{d}[n+1, A007431(#)*A048250((n+1)/#)]`
-/

namespace A078439.P7844647560305578061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P7844647560305578061

namespace A078439

/-- `∑{d}[n+1, A007431(#)*A048250((n+1)/#)]` -/
def P7844647560305578061.Spec : Prop :=
  ∀ n, P7844647560305578061.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P13140151731632034225

`∑{d}[n+1, A007913(#)*A130107((n+1)/#)]`
-/

namespace A078439.P13140151731632034225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P13140151731632034225

namespace A078439

/-- `∑{d}[n+1, A007913(#)*A130107((n+1)/#)]` -/
def P13140151731632034225.Spec : Prop :=
  ∀ n, P13140151731632034225.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P15086975663287675147

`∑{d}[n+1, A007432(#)*A319132((n+1)/#)]`
-/

namespace A078439.P15086975663287675147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P15086975663287675147

namespace A078439

/-- `∑{d}[n+1, A007432(#)*A319132((n+1)/#)]` -/
def P15086975663287675147.Spec : Prop :=
  ∀ n, P15086975663287675147.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P16958200001042902340

`∑{d}[n+1, A000082(#)*A328502((n+1)/#)]`
-/

namespace A078439.P16958200001042902340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P16958200001042902340

namespace A078439

/-- `∑{d}[n+1, A000082(#)*A328502((n+1)/#)]` -/
def P16958200001042902340.Spec : Prop :=
  ∀ n, P16958200001042902340.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P1707715920918147385

`∑{d}[n+1, A007427(#)*A357938((n+1)/#)]`
-/

namespace A078439.P1707715920918147385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P1707715920918147385

namespace A078439

/-- `∑{d}[n+1, A007427(#)*A357938((n+1)/#)]` -/
def P1707715920918147385.Spec : Prop :=
  ∀ n, P1707715920918147385.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P6586042991326169684

`∑{d}[n+1, A254503(#)*A346612((n+1)/#)]`
-/

namespace A078439.P6586042991326169684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P6586042991326169684

namespace A078439

/-- `∑{d}[n+1, A254503(#)*A346612((n+1)/#)]` -/
def P6586042991326169684.Spec : Prop :=
  ∀ n, P6586042991326169684.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P15912206076040801593

`∑{d}[n+1, A307445(#)*A332618((n+1)/#)]`
-/

namespace A078439.P15912206076040801593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P15912206076040801593

namespace A078439

/-- `∑{d}[n+1, A307445(#)*A332618((n+1)/#)]` -/
def P15912206076040801593.Spec : Prop :=
  ∀ n, P15912206076040801593.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P5464239683887698109

`∑{d}[n+1, A347137(#)*A347238((n+1)/#)]`
-/

namespace A078439.P5464239683887698109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347137 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P5464239683887698109

namespace A078439

/-- `∑{d}[n+1, A347137(#)*A347238((n+1)/#)]` -/
def P5464239683887698109.Spec : Prop :=
  ∀ n, P5464239683887698109.a n = A078439 (n + 1)

end A078439

/-! ## A078439.P648315676721422123

`∑{d}[n+1, A334657(#)*A390262((n+1)/#)]`
-/

namespace A078439.P648315676721422123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078439.P648315676721422123

namespace A078439

/-- `∑{d}[n+1, A334657(#)*A390262((n+1)/#)]` -/
def P648315676721422123.Spec : Prop :=
  ∀ n, P648315676721422123.a n = A078439 (n + 1)

end A078439

/-!
# A078440: Numbers n with property that n is not a power of 2 and the finite sequence n, f(n), f(f(n)), ...., 1 in the Collatz (or 3x + 1) problem contains exactly one prime. (The earliest "1" is meant.)

The programs for A078440, there is no canonical definition to state claims against.
-/

/-! ## A078440.P2555676120238760054

`∩[A196871(n+1), A355406(n+1)]`
-/

namespace A078440.P2555676120238760054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078440.P2555676120238760054

/-! ## A078440.P18269790859379432362

`filter[A196871(n+1), A202238(#)]`
-/

namespace A078440.P18269790859379432362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A078440.P18269790859379432362

/-! ## A078440.P9426631962450081694

`filter[A196871(n+1), A347523(#)]`
-/

namespace A078440.P9426631962450081694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A078440.P9426631962450081694

/-! ## A078440.P3872286139421869812

`filter[A362959(n+1), A202238(#)]`
-/

namespace A078440.P3872286139421869812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A078440.P3872286139421869812

/-! ## A078440.P11377139760142756558

`∩[A196871(n+1), A225836(n+1)]`
-/

namespace A078440.P11377139760142756558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078440.P11377139760142756558

/-!
# A078441: a(n) begins the first chain of n consecutive positive integers that have equal h-values, where h(k) is the length of the finite sequence k, f(k), f(f(k)), ...., 1 in the Collatz (or 3x + 1) problem. (The earliest "1" is meant.)

The programs for A078441, there is no canonical definition to state claims against.
-/

/-! ## A078441.P5628943493426130558

`A000546(n+1)%A014614(A000110(n))`
-/

namespace A078441.P5628943493426130558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000546 (n + 1)) (A014614 (A000110 n).toNat)

end

end A078441.P5628943493426130558

/-! ## A078441.P4993924559526196584

`A351104(A094838(3*n+5)-A068937(n+1))`
-/

namespace A078441.P4993924559526196584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351104 (A094838 (3 * n + 5) - A068937 (n + 1)).toNat

end

end A078441.P4993924559526196584

/-!
# A078442: a(p) = a(n) + 1 if p is the n-th prime, prime(n); a(n)=0 if n is not prime.

The programs for A078442, the canonical program `A078442.P17307833943468967023` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078442 has offset 1).

The definition of A078442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078442.P8647227897494810871

`A049076(n+1)-1`
-/

namespace A078442.P8647227897494810871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1) - 1

end

end A078442.P8647227897494810871

namespace A078442

/-- `A049076(n+1)-1` -/
def P8647227897494810871.Spec : Prop :=
  ∀ n, P8647227897494810871.a n = A078442 (n + 1)

theorem P8647227897494810871.correct : P8647227897494810871.Spec := by
  intro n
  simp only [A078442, Nat.add_sub_cancel, A078442.P8647227897494810871.a, A078442.P17307833943468967023.f1, A078442.P17307833943468967023.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A049076, A049076.P17652482635542047239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078442

/-! ## A078442.P8504931023732323666

`A007814(A135141(n+1))`
-/

namespace A078442.P8504931023732323666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A135141 (n + 1)).toNat

end

end A078442.P8504931023732323666

namespace A078442

/-- `A007814(A135141(n+1))` -/
def P8504931023732323666.Spec : Prop :=
  ∀ n, P8504931023732323666.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P9560733378406014756

`val(A135141(1+n), 2)`
-/

namespace A078442.P9560733378406014756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135141 (1 + n)).toNat 2

end

end A078442.P9560733378406014756

namespace A078442

/-- `val(A135141(1+n), 2)` -/
def P9560733378406014756.Spec : Prop :=
  ∀ n, (P9560733378406014756.a n : ℤ) = A078442 (n + 1)

end A078442

/-! ## A078442.P15949324728396311886

`val(A246367(n+1), 2)`
-/

namespace A078442.P15949324728396311886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246367 (n + 1)).toNat 2

end

end A078442.P15949324728396311886

namespace A078442

/-- `val(A246367(n+1), 2)` -/
def P15949324728396311886.Spec : Prop :=
  ∀ n, (P15949324728396311886.a n : ℤ) = A078442 (n + 1)

end A078442

/-! ## A078442.P17165179890327488649

`val(A071574(n+1)+1, 2)`
-/

namespace A078442.P17165179890327488649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071574 (n + 1) + 1).toNat 2

end

end A078442.P17165179890327488649

namespace A078442

/-- `val(A071574(n+1)+1, 2)` -/
def P17165179890327488649.Spec : Prop :=
  ∀ n, (P17165179890327488649.a n : ℤ) = A078442 (n + 1)

end A078442

/-! ## A078442.P17307833943468967023

`Δ[a(A000720(n))+n]-1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078442

/-- `Δ[a(A000720(n))+n]-1` -/
def P17307833943468967023.Spec : Prop :=
  ∀ n, P17307833943468967023.a n = A078442 (n + 1)

theorem P17307833943468967023.correct : P17307833943468967023.Spec := by
  intro n
  simp only [A078442, Nat.add_sub_cancel]

end A078442

/-! ## A078442.P8173104856067905279

`A322027(A089026(n+1))`
-/

namespace A078442.P8173104856067905279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A089026 (n + 1)).toNat

end

end A078442.P8173104856067905279

namespace A078442

/-- `A322027(A089026(n+1))` -/
def P8173104856067905279.Spec : Prop :=
  ∀ n, P8173104856067905279.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P2084372282421712757

`A010051(n+1)*A322027(n+1)`
-/

namespace A078442.P2084372282421712757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A322027 (n + 1)

end

end A078442.P2084372282421712757

namespace A078442

/-- `A010051(n+1)*A322027(n+1)` -/
def P2084372282421712757.Spec : Prop :=
  ∀ n, P2084372282421712757.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P12308182929759073803

`A080339(n+1)*A322027(n+1)`
-/

namespace A078442.P12308182929759073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) * A322027 (n + 1)

end

end A078442.P12308182929759073803

namespace A078442

/-- `A080339(n+1)*A322027(n+1)` -/
def P12308182929759073803.Spec : Prop :=
  ∀ n, P12308182929759073803.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P4188279789005997009

`A127229(n+5)%A049076(n+1)`
-/

namespace A078442.P4188279789005997009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A049076 (n + 1))

end

end A078442.P4188279789005997009

namespace A078442

/-- `A127229(n+5)%A049076(n+1)` -/
def P4188279789005997009.Spec : Prop :=
  ∀ n, P4188279789005997009.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P106473693006552347

`Δ[A230980(n)+a(A230980(n))]` with `a(0)=1`
-/

namespace A078442.P106473693006552347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A230980 n + f1 (A230980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078442.P106473693006552347

namespace A078442

/-- `Δ[A230980(n)+a(A230980(n))]` -/
def P106473693006552347.Spec : Prop :=
  ∀ n, P106473693006552347.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P1850898200108027544

`A322027(A000040(n+1))-1`
-/

namespace A078442.P1850898200108027544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A000040 (n + 1)).toNat - 1

end

end A078442.P1850898200108027544

namespace A078442

/-- `A322027(A000040(n+1))-1` -/
def P1850898200108027544.Spec : Prop :=
  ∀ n, P1850898200108027544.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P4248893882968957455

`A322027(A008578(n+2))-1`
-/

namespace A078442.P4248893882968957455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A008578 (n + 2)).toNat - 1

end

end A078442.P4248893882968957455

namespace A078442

/-- `A322027(A008578(n+2))-1` -/
def P4248893882968957455.Spec : Prop :=
  ∀ n, P4248893882968957455.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P15121759620575161622

`A322027(record[A006530(n+2)])-1`
-/

namespace A078442.P15121759620575161622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A078442.P15121759620575161622

namespace A078442

/-- `A322027(record[A006530(n+2)])-1` -/
def P15121759620575161622.Spec : Prop :=
  ∀ n, P15121759620575161622.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P2709385252032351639

`A322027(record[A020639(n+2)])-1`
-/

namespace A078442.P2709385252032351639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A078442.P2709385252032351639

namespace A078442

/-- `A322027(record[A020639(n+2)])-1` -/
def P2709385252032351639.Spec : Prop :=
  ∀ n, P2709385252032351639.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P11004650175808114860

`A322027(p?[A322030(n+1)])-1`
-/

namespace A078442.P11004650175808114860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A078442.P11004650175808114860

namespace A078442

/-- `A322027(p?[A322030(n+1)])-1` -/
def P11004650175808114860.Spec : Prop :=
  ∀ n, P11004650175808114860.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P14452789521972738480

`val(A246363(A064989(2*n+1)), 2)`
-/

namespace A078442.P14452789521972738480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246363 (A064989 (2 * n + 1)).toNat).toNat 2

end

end A078442.P14452789521972738480

namespace A078442

/-- `val(A246363(A064989(2*n+1)), 2)` -/
def P14452789521972738480.Spec : Prop :=
  ∀ n, (P14452789521972738480.a n : ℤ) = A078442 (n + 1)

end A078442

/-! ## A078442.P17655811319062220350

`A322027(A100484(n+1))-1`
-/

namespace A078442.P17655811319062220350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A100484 (n + 1)).toNat - 1

end

end A078442.P17655811319062220350

namespace A078442

/-- `A322027(A100484(n+1))-1` -/
def P17655811319062220350.Spec : Prop :=
  ∀ n, P17655811319062220350.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P1360749796653526718

`A322027(A001747(n+2))-1`
-/

namespace A078442.P1360749796653526718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A001747 (n + 2)).toNat - 1

end

end A078442.P1360749796653526718

namespace A078442

/-- `A322027(A001747(n+2))-1` -/
def P1360749796653526718.Spec : Prop :=
  ∀ n, P1360749796653526718.a n = A078442 (n + 1)

end A078442

/-! ## A078442.P2574654844596220971

`A322027(A001749(n+1))-1`
-/

namespace A078442.P2574654844596220971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A001749 (n + 1)).toNat - 1

end

end A078442.P2574654844596220971

namespace A078442

/-- `A322027(A001749(n+1))-1` -/
def P2574654844596220971.Spec : Prop :=
  ∀ n, P2574654844596220971.a n = A078442 (n + 1)

end A078442

/-!
# A078443: Numbers which are both interprime and semiprime.

The programs for A078443, there is no canonical definition to state claims against.
-/

/-! ## A078443.P469290789691777039

`A105936(n+1)/2`
-/

namespace A078443.P469290789691777039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105936 (n + 1) : ℚ) / 2

end

end A078443.P469290789691777039

/-! ## A078443.P6813481786796780184

`∩[A001358(n+1), A162800(n)]`
-/

namespace A078443.P6813481786796780184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078443.P6813481786796780184

/-! ## A078443.P17119845274709098903

`∩[A001358(n+1), A024675(n+1)]`
-/

namespace A078443.P17119845274709098903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078443.P17119845274709098903

/-! ## A078443.P15244543836382887603

`∩[A001358(n+1), A145025(n+1)]`
-/

namespace A078443.P15244543836382887603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078443.P15244543836382887603

/-! ## A078443.P11462526624322526275

`∩[A001358(n+1), A162735(n+1)]`
-/

namespace A078443.P11462526624322526275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078443.P11462526624322526275

/-! ## A078443.P4932345559571040867

`filter[A024675(n+1), A064911(#)]`
-/

namespace A078443.P4932345559571040867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078443.P4932345559571040867

/-! ## A078443.P13495034263961984742

`filter[A024675(n+1), A101040(#)]`
-/

namespace A078443.P13495034263961984742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A078443.P13495034263961984742

/-! ## A078443.P7568467365270805031

`filter[A145025(n+1), A064911(#)]`
-/

namespace A078443.P7568467365270805031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078443.P7568467365270805031

/-! ## A078443.P3415474429011280869

`filter[A162735(n+1), A064911(#)]`
-/

namespace A078443.P3415474429011280869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078443.P3415474429011280869

/-! ## A078443.P7287465163354584246

`filter[A162800(n+1), A064911(#)]`
-/

namespace A078443.P7287465163354584246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078443.P7287465163354584246

/-! ## A078443.P4985446749560061136

`filter[A162735(n+1), A101040(#)]`
-/

namespace A078443.P4985446749560061136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A078443.P4985446749560061136

/-! ## A078443.P14712664045237410730

`filter[A024675(n+1), A353799(#)]`
-/

namespace A078443.P14712664045237410730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A078443.P14712664045237410730

/-! ## A078443.P462424725025896587

`filter[A162800(n+2), A101040(#)]`
-/

namespace A078443.P462424725025896587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A078443.P462424725025896587

/-! ## A078443.P10084147556533450481

`filter[A162735(n+2), A353799(#)]`
-/

namespace A078443.P10084147556533450481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A078443.P10084147556533450481

/-! ## A078443.P8932841121317569817

`filter[A162800(n+2), A353799(#)]`
-/

namespace A078443.P8932841121317569817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A078443.P8932841121317569817

/-! ## A078443.P7904413654510754815

`A014682(A105936(n+1))`
-/

namespace A078443.P7904413654510754815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A105936 (n + 1)).toNat

end

end A078443.P7904413654510754815

/-! ## A078443.P13789950184671099517

`A319702(A105936(n+1)-3)`
-/

namespace A078443.P13789950184671099517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A105936 (n + 1) - 3).toNat

end

end A078443.P13789950184671099517

/-! ## A078443.P1908516425172329500

`A024675(eq[3, A001222(A001043(n+1))])`
-/

namespace A078443.P1908516425172329500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078443.P1908516425172329500

/-! ## A078443.P3429310002535920810

`filter[A063934(n+1), A064911(#)]`
-/

namespace A078443.P3429310002535920810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A078443.P3429310002535920810

/-! ## A078443.P9879092276604870752

`∩[A001358(n+1), A063934(n+1)]`
-/

namespace A078443.P9879092276604870752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078443.P9879092276604870752

/-!
# A078444: Floor of geometric mean of two consecutive primes.

The programs for A078444, the canonical program `A078444.P18345850543036628727` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078444 has offset 1).

The definition of A078444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078444.P16246648017918512299

`A005097(A028310(n))+A005097(n+1)`
-/

namespace A078444.P16246648017918512299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A028310 n).toNat + A005097 (n + 1)

end

end A078444.P16246648017918512299

namespace A078444

/-- `A005097(A028310(n))+A005097(n+1)` -/
def P16246648017918512299.Spec : Prop :=
  ∀ n, P16246648017918512299.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P18345850543036628727

`A006254(A028310(n))+A067076(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078444

/-- `A006254(A028310(n))+A067076(n+1)` -/
def P18345850543036628727.Spec : Prop :=
  ∀ n, P18345850543036628727.a n = A078444 (n + 1)

theorem P18345850543036628727.correct : P18345850543036628727.Spec := by
  intro n
  simp only [A078444, Nat.add_sub_cancel]

end A078444

/-! ## A078444.P9895131216865162312

`floor(sqrt(A000040(n+1)*A000040(n+2)))`
-/

namespace A078444.P9895131216865162312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * A000040 (n + 2))

end

end A078444.P9895131216865162312

namespace A078444

/-- `floor(sqrt(A000040(n+1)*A000040(n+2)))` -/
def P9895131216865162312.Spec : Prop :=
  ∀ n, P9895131216865162312.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P10422571108768834018

`A000196(A000040(n+1)*A000040(n+2))`
-/

namespace A078444.P10422571108768834018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1) * A000040 (n + 2)).toNat

end

end A078444.P10422571108768834018

namespace A078444

/-- `A000196(A000040(n+1)*A000040(n+2))` -/
def P10422571108768834018.Spec : Prop :=
  ∀ n, P10422571108768834018.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P11043186546524431519

`floor(sqrt(A006094(n+1)))`
-/

namespace A078444.P11043186546524431519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006094 (n + 1))

end

end A078444.P11043186546524431519

namespace A078444

/-- `floor(sqrt(A006094(n+1)))` -/
def P11043186546524431519.Spec : Prop :=
  ∀ n, P11043186546524431519.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P12500625102080874242

`floor(sqrt(A037166(n+1)))`
-/

namespace A078444.P12500625102080874242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A037166 (n + 1))

end

end A078444.P12500625102080874242

namespace A078444

/-- `floor(sqrt(A037166(n+1)))` -/
def P12500625102080874242.Spec : Prop :=
  ∀ n, P12500625102080874242.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P13521035458557730988

`floor(sqrt(A391805(n+1)))`
-/

namespace A078444.P13521035458557730988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A391805 (n + 1))

end

end A078444.P13521035458557730988

namespace A078444

/-- `floor(sqrt(A391805(n+1)))` -/
def P13521035458557730988.Spec : Prop :=
  ∀ n, P13521035458557730988.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P12129697846788251867

`ceil(sqrt(A083553(n+1)))`
-/

namespace A078444.P12129697846788251867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A083553 (n + 1) : ℝ)⌉

end

end A078444.P12129697846788251867

namespace A078444

/-- `ceil(sqrt(A083553(n+1)))` -/
def P12129697846788251867.Spec : Prop :=
  ∀ n, P12129697846788251867.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P2992434199788362646

`round(sqrt(A037167(n+1)))`
-/

namespace A078444.P2992434199788362646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A037167 (n + 1) : ℝ))

end

end A078444.P2992434199788362646

namespace A078444

/-- `round(sqrt(A037167(n+1)))` -/
def P2992434199788362646.Spec : Prop :=
  ∀ n, P2992434199788362646.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P8388460175908107409

`sqrt(A076621(n+1))-1`
-/

namespace A078444.P8388460175908107409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076621 (n + 1) : ℝ) - 1

end

end A078444.P8388460175908107409

namespace A078444

/-- `sqrt(A076621(n+1))-1` -/
def P8388460175908107409.Spec : Prop :=
  ∀ n, P8388460175908107409.a n = (A078444 (n + 1) : ℝ)

end A078444

/-! ## A078444.P11470890992016639079

`floor(sqrt(sqrt(A166329(n+1))))`
-/

namespace A078444.P11470890992016639079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A166329 (n + 1) : ℝ))⌋

end

end A078444.P11470890992016639079

namespace A078444

/-- `floor(sqrt(sqrt(A166329(n+1))))` -/
def P11470890992016639079.Spec : Prop :=
  ∀ n, P11470890992016639079.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P6885976064725000139

`floor(sqrt(A286624(n+1)))-1`
-/

namespace A078444.P6885976064725000139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A286624 (n + 1)) - 1

end

end A078444.P6885976064725000139

namespace A078444

/-- `floor(sqrt(A286624(n+1)))-1` -/
def P6885976064725000139.Spec : Prop :=
  ∀ n, P6885976064725000139.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P1099443506325465267

`floor(sqrt(A292926(n+1)))-1`
-/

namespace A078444.P1099443506325465267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292926 (n + 1)) - 1

end

end A078444.P1099443506325465267

namespace A078444

/-- `floor(sqrt(A292926(n+1)))-1` -/
def P1099443506325465267.Spec : Prop :=
  ∀ n, P1099443506325465267.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P17982494130206642698

`floor(sqrt(2*A014303(n+1)))`
-/

namespace A078444.P17982494130206642698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A014303 (n + 1))

end

end A078444.P17982494130206642698

namespace A078444

/-- `floor(sqrt(2*A014303(n+1)))` -/
def P17982494130206642698.Spec : Prop :=
  ∀ n, P17982494130206642698.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P12112522622419713718

`floor((A001043(n+1)-1)/2)`
-/

namespace A078444.P12112522622419713718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (n + 1) - 1 : ℚ) / 2⌋

end

end A078444.P12112522622419713718

namespace A078444

/-- `floor((A001043(n+1)-1)/2)` -/
def P12112522622419713718.Spec : Prop :=
  ∀ n, P12112522622419713718.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P8123163425362553616

`A115061(n+1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A078444.P8123163425362553616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A115061 (n + 1) + a (n - 1)

end

end A078444.P8123163425362553616

namespace A078444

/-- `A115061(n+1)+a(n-1)` -/
def P8123163425362553616.Spec : Prop :=
  ∀ n, P8123163425362553616.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P7225073431802352804

`A162345(n+1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A078444.P7225073431802352804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A162345 (n + 1) + a (n - 1)

end

end A078444.P7225073431802352804

namespace A078444

/-- `A162345(n+1)+a(n-1)` -/
def P7225073431802352804.Spec : Prop :=
  ∀ n, P7225073431802352804.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P8787482387850844309

`A052288(n-1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A078444.P8787482387850844309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A052288 (n - 1) + a (n - 1)

end

end A078444.P8787482387850844309

namespace A078444

/-- `A052288(n-1)+a(n-1)` -/
def P8787482387850844309.Spec : Prop :=
  ∀ n, P8787482387850844309.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P12085345825705293080

`A162735(n+1)-A158388(n)`
-/

namespace A078444.P12085345825705293080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1) - A158388 n

end

end A078444.P12085345825705293080

namespace A078444

/-- `A162735(n+1)-A158388(n)` -/
def P12085345825705293080.Spec : Prop :=
  ∀ n, P12085345825705293080.a n = A078444 (n + 1)

end A078444

/-! ## A078444.P9939433984492684537

`A100820(n+1)+A000040(n+1)`
-/

namespace A078444.P9939433984492684537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1) + A000040 (n + 1)

end

end A078444.P9939433984492684537

namespace A078444

/-- `A100820(n+1)+A000040(n+1)` -/
def P9939433984492684537.Spec : Prop :=
  ∀ n, P9939433984492684537.a n = A078444 (n + 1)

end A078444

/-!
# A078445: Primes in A060620, i.e., primes which are integer parts of averages of initial primes.

The programs for A078445, the canonical program `A078445.P1959700787350412093` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078445 has offset 1).

The definition of A078445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078445.P1959700787350412093

`p?[floor(A007504(n+1)/(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078445

/-- `p?[floor(A007504(n+1)/(n+1))]` -/
def P1959700787350412093.Spec : Prop :=
  ∀ n, P1959700787350412093.a n = A078445 (n + 1)

theorem P1959700787350412093.correct : P1959700787350412093.Spec := by
  intro n
  simp only [A078445, Nat.add_sub_cancel]

end A078445

/-! ## A078445.P17927124621819810216

`p?[ceil(A007504(n+1)/(n+1))-A267084(n+1)]`
-/

namespace A078445.P17927124621819810216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - A267084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P17927124621819810216

namespace A078445

/-- `p?[ceil(A007504(n+1)/(n+1))-A267084(n+1)]` -/
def P17927124621819810216.Spec : Prop :=
  ∀ n, P17927124621819810216.a n = A078445 (n + 1)

theorem P17927124621819810216.correct : P17927124621819810216.Spec := by
  intro n
  simp only [A078445, Nat.add_sub_cancel, A078445.P17927124621819810216.f1, A078445.P17927124621819810216.a, A078445.P1959700787350412093.f1, A078445.P1959700787350412093.a, A007504, A007504.P14310834286015847203.a, A267084, A267084.P13753241132986256046.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078445

/-! ## A078445.P14849406654225348170

`p?[A060620(n+1)]`
-/

namespace A078445.P14849406654225348170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P14849406654225348170

namespace A078445

/-- `p?[A060620(n+1)]` -/
def P14849406654225348170.Spec : Prop :=
  ∀ n, P14849406654225348170.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P2203250278535561657

`p?[floor(∑[A000040(n+1)]/(n+1))]`
-/

namespace A078445.P2203250278535561657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P2203250278535561657

namespace A078445

/-- `p?[floor(∑[A000040(n+1)]/(n+1))]` -/
def P2203250278535561657.Spec : Prop :=
  ∀ n, P2203250278535561657.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P11918859473881208650

`p?[floor(A101301(n+1)/(n+1))+1]`
-/

namespace A078445.P11918859473881208650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101301 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P11918859473881208650

namespace A078445

/-- `p?[floor(A101301(n+1)/(n+1))+1]` -/
def P11918859473881208650.Spec : Prop :=
  ∀ n, P11918859473881208650.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P4938511255360154300

`filter[A060620(n+1), A010051(#)]`
-/

namespace A078445.P4938511255360154300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078445.P4938511255360154300

namespace A078445

/-- `filter[A060620(n+1), A010051(#)]` -/
def P4938511255360154300.Spec : Prop :=
  ∀ n, P4938511255360154300.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P13574054400835710185

`p?[floor(A301273(n+1)/A301274(n+1))]`
-/

namespace A078445.P13574054400835710185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301273 (n + 1) : ℚ) / (A301274 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P13574054400835710185

namespace A078445

/-- `p?[floor(A301273(n+1)/A301274(n+1))]` -/
def P13574054400835710185.Spec : Prop :=
  ∀ n, P13574054400835710185.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P9657757514478221774

`p?[A225804(n+1)-A267084(n+1)]`
-/

namespace A078445.P9657757514478221774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225804 (n + 1) - A267084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P9657757514478221774

namespace A078445

/-- `p?[A225804(n+1)-A267084(n+1)]` -/
def P9657757514478221774.Spec : Prop :=
  ∀ n, P9657757514478221774.a n = A078445 (n + 1)

theorem P9657757514478221774.correct : P9657757514478221774.Spec := by
  intro n
  simp only [A078445, Nat.add_sub_cancel, A078445.P9657757514478221774.f1, A078445.P9657757514478221774.a, A078445.P1959700787350412093.f1, A078445.P1959700787350412093.a, A007504, A007504.P14310834286015847203.a, A225804, A225804.P13090922353215695081.a, A267084, A267084.P13753241132986256046.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078445

/-! ## A078445.P17028197182374396100

`p?[A225804(n+1)-A054892(n+1)%2]`
-/

namespace A078445.P17028197182374396100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225804 (n + 1) - Int.tmod (A054892 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P17028197182374396100

namespace A078445

/-- `p?[A225804(n+1)-A054892(n+1)%2]` -/
def P17028197182374396100.Spec : Prop :=
  ∀ n, P17028197182374396100.a n = A078445 (n + 1)

end A078445

/-! ## A078445.P575139794333349024

`filter[A060620(n+1), A080339(#)]`
-/

namespace A078445.P575139794333349024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A078445.P575139794333349024

namespace A078445

/-- `filter[A060620(n+1), A080339(#)]` -/
def P575139794333349024.Spec : Prop :=
  ∀ n, P575139794333349024.a n = A078445 (n + 1)

end A078445

/-!
# A078446: a(1)=a(2)=1; a(n)=a(n-2)/2 if a(n-2) is even, a(n)=a(n-1)+a(n-2) otherwise.

The programs for A078446, the canonical program `A078446.P4984706147977569458` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078446 has offset 1).

The definition of A078446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078446.P4984706147977569458

`lcm(2, a(n-2)+2*a(n-1))/2-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078446

/-- `lcm(2, a(n-2)+2*a(n-1))/2-a(n-1)` -/
def P4984706147977569458.Spec : Prop :=
  ∀ n, P4984706147977569458.a n = (A078446 (n + 1) : ℚ)

end A078446

/-! ## A078446.P8662165229718489865

`lcm(a(n-1)+a(n-1)+a(n-2), a(n-2))/a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078446.P8662165229718489865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (a (n - 1) + (a (n - 1) + a (n - 2)))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / a (n - 2) - a (n - 1)

end

end A078446.P8662165229718489865

namespace A078446

/-- `lcm(a(n-1)+a(n-1)+a(n-2), a(n-2))/a(n-2)-a(n-1)` -/
def P8662165229718489865.Spec : Prop :=
  ∀ n, P8662165229718489865.a n = (A078446 (n + 1) : ℚ)

end A078446

/-! ## A078446.P3992325815698908754

`gcd(A195172(n), A237616(A102663(n+1)))`
-/

namespace A078446.P3992325815698908754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195172 n) (A237616 (A102663 (n + 1)).toNat)

end

end A078446.P3992325815698908754

namespace A078446

/-- `gcd(A195172(n), A237616(A102663(n+1)))` -/
def P3992325815698908754.Spec : Prop :=
  ∀ n, (P3992325815698908754.a n : ℤ) = A078446 (n + 1)

end A078446

/-!
# A078447: Final terms of rows of A078448.

The programs for A078447, there is no canonical definition to state claims against.
-/

/-! ## A078447.P9635443480204264464

`A078448(∑[n+1])`
-/

namespace A078447.P9635443480204264464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078447.P9635443480204264464

/-! ## A078447.P4381413904191022212

`∑[∑[A078680(A051049(n))]]`
-/

namespace A078447.P4381413904191022212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (A051049 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078447.P4381413904191022212

/-! ## A078447.P2968533917599530044

`∑[∑[A055076(A148331(n))]]`
-/

namespace A078447.P2968533917599530044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A148331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078447.P2968533917599530044

/-! ## A078447.P17442460566232607562

`∑[∑[A303809(A318395(n))]]`
-/

namespace A078447.P17442460566232607562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A318395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078447.P17442460566232607562

/-! ## A078447.P9763605785095273535

`A316465(A000603(n))`
-/

namespace A078447.P9763605785095273535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A000603 n).toNat

end

end A078447.P9763605785095273535

/-!
# A078448: Triangle T(n,k) for 1 <= n, 1 <= k <= n read by rows: T(1,1) = 1; for n > 1: T(n,1) = T(n-1,n-1) + 1; for n > 1 and k <=n: T(n,k) = smallest number > T(n,k-1) which is relatively prime to T(n,j) for 1 <= j < k.

The programs for A078448, there is no canonical definition to state claims against.
-/

/-! ## A078448.P6675021846532132300

`∑[A325497(A295222(n+1)²)]`
-/

namespace A078448.P6675021846532132300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325497 (A295222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078448.P6675021846532132300

/-! ## A078448.P5763107603432548078

`lt[A321665(n), A322867(n+1)]`
-/

namespace A078448.P5763107603432548078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078448.P5763107603432548078

/-! ## A078448.P1312198209419378562

`∑[A000005(A139250(A156582(n)))]`
-/

namespace A078448.P1312198209419378562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A139250 (A156582 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078448.P1312198209419378562

/-! ## A078448.P12186266464197634230

`∑[A034444(A115409(A156953(n)))]`
-/

namespace A078448.P12186266464197634230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A115409 (A156953 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078448.P12186266464197634230

/-! ## A078448.P4382664001514972158

`lt[A321665(n), A000120(A322865(n+1))]`
-/

namespace A078448.P4382664001514972158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A322865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078448.P4382664001514972158

/-!
# A078449: a(n) = sum of terms in n-th row of A078448.

The programs for A078449, there is no canonical definition to state claims against.
-/

/-! ## A078449.P93856825409988426

`∑[A095047(a(n-1)+2)]` with `a(0)=1`
-/

namespace A078449.P93856825409988426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A095047 (f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078449.P93856825409988426

/-! ## A078449.P11686652270317459002

`A350314(2^n)-log2(gcd(2, n))`
-/

namespace A078449.P11686652270317459002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A350314 (2 ^ n) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A078449.P11686652270317459002

/-!
# A078451: a(1)=1, a(n) = ceiling(n/a(a(n-1))).

The programs for A078451, the canonical program `A078451.P18268623160831132939` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078451 has offset 1).

The definition of A078451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/a(a(n-1)-1))` (program `A078451.P18268623160831132939`, by `A078451.P18268623160831132939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078451.P18268623160831132939

`ceil((n+1)/a(a(n-1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078451

/-- `ceil((n+1)/a(a(n-1)-1))` -/
def P18268623160831132939.Spec : Prop :=
  ∀ n, P18268623160831132939.a n = A078451 (n + 1)

theorem P18268623160831132939.correct : P18268623160831132939.Spec := by
  intro n
  simp only [A078451, Nat.add_sub_cancel]

end A078451

/-! ## A078451.P10286584491258695824

`floor(n/a(a(n-1)-1))+1` with `a(0)=1`
-/

namespace A078451.P10286584491258695824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a (a (n - 1) - 1).toNat : ℚ)⌋ + 1

end

end A078451.P10286584491258695824

namespace A078451

/-- `floor(n/a(a(n-1)-1))+1` -/
def P10286584491258695824.Spec : Prop :=
  ∀ n, P10286584491258695824.a n = A078451 (n + 1)

end A078451

/-! ## A078451.P3522787754270931007

`ceil(1/(a(a(n-1)-1)*acot(n)))` with `a(0)=1`
-/

namespace A078451.P3522787754270931007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈1 / ((a (a (n - 1) - 1).toNat : ℝ) * SequenceMachineLib.acot (n : ℝ))⌉

end

end A078451.P3522787754270931007

namespace A078451

/-- `ceil(1/(a(a(n-1)-1)*acot(n)))` -/
def P3522787754270931007.Spec : Prop :=
  ∀ n, P3522787754270931007.a n = A078451 (n + 1)

end A078451

/-! ## A078451.P9220257109157582090

`A000005(2^floor(n/a(a(n-1)-1)))` with `a(0)=1`
-/

namespace A078451.P9220257109157582090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / (a (a (n - 1) - 1).toNat : ℚ)⌋ : ℤ))).toNat

end

end A078451.P9220257109157582090

namespace A078451

/-- `A000005(2^floor(n/a(a(n-1)-1)))` -/
def P9220257109157582090.Spec : Prop :=
  ∀ n, P9220257109157582090.a n = A078451 (n + 1)

end A078451

/-! ## A078451.P9486477968704059086

`A331083(A022095(n)-A000035(n))`
-/

namespace A078451.P9486477968704059086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A022095 n - A000035 n).toNat

end

end A078451.P9486477968704059086

namespace A078451

/-- `A331083(A022095(n)-A000035(n))` -/
def P9486477968704059086.Spec : Prop :=
  ∀ n, P9486477968704059086.a n = A078451 (n + 1)

end A078451

/-!
# A078452: a(1)=1, a(n) = ceiling(n/a(a(a(n-1)))).

The programs for A078452, the canonical program `A078452.P8527333108874711303` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078452 has offset 1).

The definition of A078452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/a(a(a(n-1)-1)-1))` (program `A078452.P8527333108874711303`, by `A078452.P8527333108874711303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078452.P8527333108874711303

`ceil((n+1)/a(a(a(n-1)-1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078452

/-- `ceil((n+1)/a(a(a(n-1)-1)-1))` -/
def P8527333108874711303.Spec : Prop :=
  ∀ n, P8527333108874711303.a n = A078452 (n + 1)

theorem P8527333108874711303.correct : P8527333108874711303.Spec := by
  intro n
  simp only [A078452, Nat.add_sub_cancel]

end A078452

/-! ## A078452.P18008255068095992829

`floor(n/a(a(a(n-1)-1)-1))+1` with `a(0)=1`
-/

namespace A078452.P18008255068095992829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a (a (a (n - 1) - 1).toNat - 1).toNat : ℚ)⌋ + 1

end

end A078452.P18008255068095992829

namespace A078452

/-- `floor(n/a(a(a(n-1)-1)-1))+1` -/
def P18008255068095992829.Spec : Prop :=
  ∀ n, P18008255068095992829.a n = A078452 (n + 1)

end A078452

/-! ## A078452.P1927485082347277279

`ceil(A089247(n+1)/A006530(A011782(n)))`
-/

namespace A078452.P1927485082347277279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089247 (n + 1) : ℚ) / (A006530 (A011782 n).toNat : ℚ)⌉

end

end A078452.P1927485082347277279

namespace A078452

/-- `ceil(A089247(n+1)/A006530(A011782(n)))` -/
def P1927485082347277279.Spec : Prop :=
  ∀ n, P1927485082347277279.a n = A078452 (n + 1)

end A078452

/-!
# A078453: Numbers in which all the digits are coprime to each other.

The programs for A078453, there is no canonical definition to state claims against.
-/

/-! ## A078453.P2307443775668494002

`eq[A004176(n), A379512(n)]`
-/

namespace A078453.P2307443775668494002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078453.P2307443775668494002

/-! ## A078453.P13421789575978517108

`lt[A326459(n+3), A043493(A358799(n+4))]`
-/

namespace A078453.P13421789575978517108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (A358799 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078453.P13421789575978517108

/-! ## A078453.P3928016217954852321

`lt[A324572(A079000(n+2)), 6]`
-/

namespace A078453.P3928016217954852321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A079000 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078453.P3928016217954852321

/-! ## A078453.P1752224620795071212

`lt[A108618(A069532(n+1)), A250120(n)]`
-/

namespace A078453.P1752224620795071212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108618 (A069532 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078453.P1752224620795071212

/-! ## A078453.P10991496593031308584

`lt[A325735(n+1), A031955(A053818(n+1))]`
-/

namespace A078453.P10991496593031308584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (A053818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078453.P10991496593031308584

/-!
# A078456: Number of numbers less than prime(1)*...*prime(n) having exactly one prime factor among (prime(1),...,prime(n)) where prime(n) is the n-th prime.

The programs for A078456, the canonical program `A078456.P5711794782262617263` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078456 has offset 1).

The definition of A078456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078456.P5711794782262617263

`A117494(A002110(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A078456

/-- `A117494(A002110(n+1))` -/
def P5711794782262617263.Spec : Prop :=
  ∀ n, P5711794782262617263.a n = A078456 (n + 1)

theorem P5711794782262617263.correct : P5711794782262617263.Spec := by
  intro n
  simp only [A078456, Nat.add_sub_cancel]

end A078456

/-! ## A078456.P8980753444731709334

`A067549(n+1)-A005867(n+1)`
-/

namespace A078456.P8980753444731709334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067549 (n + 1) - A005867 (n + 1)

end

end A078456.P8980753444731709334

namespace A078456

/-- `A067549(n+1)-A005867(n+1)` -/
def P8980753444731709334.Spec : Prop :=
  ∀ n, P8980753444731709334.a n = A078456 (n + 1)

end A078456

/-! ## A078456.P5894810415923595001

`A120271(n+1)*A135212(n+1)`
-/

namespace A078456.P5894810415923595001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120271 (n + 1) * A135212 (n + 1)

end

end A078456.P5894810415923595001

namespace A078456

/-- `A120271(n+1)*A135212(n+1)` -/
def P5894810415923595001.Spec : Prop :=
  ∀ n, P5894810415923595001.a n = A078456 (n + 1)

end A078456

/-! ## A078456.P1935812634345732684

`A067549(n+1)-∏[A006093(n+1)]`
-/

namespace A078456.P1935812634345732684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067549 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078456.P1935812634345732684

namespace A078456

/-- `A067549(n+1)-∏[A006093(n+1)]` -/
def P1935812634345732684.Spec : Prop :=
  ∀ n, P1935812634345732684.a n = A078456 (n + 1)

end A078456

/-! ## A078456.P4826067759011289419

`A067549(n+1)-∏[record[A000010(n+1)]]`
-/

namespace A078456.P4826067759011289419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067549 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078456.P4826067759011289419

namespace A078456

/-- `A067549(n+1)-∏[record[A000010(n+1)]]` -/
def P4826067759011289419.Spec : Prop :=
  ∀ n, P4826067759011289419.a n = A078456 (n + 1)

end A078456

/-! ## A078456.P12696858296395654984

`A067549(n+1)-∏[A000040(n+1)-1]`
-/

namespace A078456.P12696858296395654984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067549 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078456.P12696858296395654984

namespace A078456

/-- `A067549(n+1)-∏[A000040(n+1)-1]` -/
def P12696858296395654984.Spec : Prop :=
  ∀ n, P12696858296395654984.a n = A078456 (n + 1)

end A078456

/-!
# A078458: Total number of factors in a factorization of n into Gaussian primes.

The programs for A078458, the canonical program `A078458.P449076157569164237` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078458 has offset 1).

The definition of A078458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078458.P449076157569164237

`2*A007814(n+1)+2*A083025(n+1)+A065339(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078458

/-- `2*A007814(n+1)+2*A083025(n+1)+A065339(n+1)` -/
def P449076157569164237.Spec : Prop :=
  ∀ n, P449076157569164237.a n = A078458 (n + 1)

theorem P449076157569164237.correct : P449076157569164237.Spec := by
  intro n
  simp only [A078458, Nat.add_sub_cancel]

end A078458

/-! ## A078458.P6586084405571681332

`A255201(n+1)-A065339(n+1)`
-/

namespace A078458.P6586084405571681332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A065339 (n + 1)

end

end A078458.P6586084405571681332

namespace A078458

/-- `A255201(n+1)-A065339(n+1)` -/
def P6586084405571681332.Spec : Prop :=
  ∀ n, P6586084405571681332.a n = A078458 (n + 1)

theorem P6586084405571681332.correct : P6586084405571681332.Spec := by
  intro n
  simp only [A078458, Nat.add_sub_cancel, A078458.P6586084405571681332.a, A078458.P449076157569164237.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A255201, A255201.P10260826747868353202.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078458

/-! ## A078458.P11382410875269985790

`2*A001222(n+1)-A065339(n+1)`
-/

namespace A078458.P11382410875269985790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A065339 (n + 1)

end

end A078458.P11382410875269985790

namespace A078458

/-- `2*A001222(n+1)-A065339(n+1)` -/
def P11382410875269985790.Spec : Prop :=
  ∀ n, P11382410875269985790.a n = A078458 (n + 1)

theorem P11382410875269985790.correct : P11382410875269985790.Spec := by
  intro n
  simp only [A078458, Nat.add_sub_cancel, A078458.P11382410875269985790.a, A078458.P449076157569164237.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078458

/-! ## A078458.P2886377723610301101

`A001222(n+1)+A001222(A072436(n+1))`
-/

namespace A078458.P2886377723610301101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A072436 (n + 1)).toNat

end

end A078458.P2886377723610301101

namespace A078458

/-- `A001222(n+1)+A001222(A072436(n+1))` -/
def P2886377723610301101.Spec : Prop :=
  ∀ n, P2886377723610301101.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P14058562525692075717

`2*A001222(n+1)-A001222(A097706(n+1))`
-/

namespace A078458.P14058562525692075717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A001222 (A097706 (n + 1)).toNat

end

end A078458.P14058562525692075717

namespace A078458

/-- `2*A001222(n+1)-A001222(A097706(n+1))` -/
def P14058562525692075717.Spec : Prop :=
  ∀ n, P14058562525692075717.a n = A078458 (n + 1)

theorem P14058562525692075717.correct : P14058562525692075717.Spec := by
  intro n
  simp only [A078458, Nat.add_sub_cancel, A078458.P14058562525692075717.a, A078458.P449076157569164237.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A097706, A097706.P6722181687817241685.a, A001511, A001511.P17146462531039486101.a, A072436, A072436.P7287158936470340465.a, A006519, A006519.P10435570611646570274.a, A170818, A170818.P6198424121185234946.a, A072438, A072438.P8372132607125939071.f1, A072438.P8372132607125939071.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078458

/-! ## A078458.P449461250665751429

`2*A001222(n+1)-A001222(A278509(n+1))`
-/

namespace A078458.P449461250665751429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A001222 (A278509 (n + 1)).toNat

end

end A078458.P449461250665751429

namespace A078458

/-- `2*A001222(n+1)-A001222(A278509(n+1))` -/
def P449461250665751429.Spec : Prop :=
  ∀ n, P449461250665751429.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P12975420827337933290

`2*A001222(n+1)-A001222(A286363(n+1))`
-/

namespace A078458.P12975420827337933290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (n + 1) - A001222 (A286363 (n + 1)).toNat

end

end A078458.P12975420827337933290

namespace A078458

/-- `2*A001222(n+1)-A001222(A286363(n+1))` -/
def P12975420827337933290.Spec : Prop :=
  ∀ n, P12975420827337933290.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P12991050150571546641

`A001222(n+1)+A083025(n+1)+A007814(n+1)`
-/

namespace A078458.P12991050150571546641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A083025 (n + 1) + A007814 (n + 1))

end

end A078458.P12991050150571546641

namespace A078458

/-- `A001222(n+1)+A083025(n+1)+A007814(n+1)` -/
def P12991050150571546641.Spec : Prop :=
  ∀ n, P12991050150571546641.a n = A078458 (n + 1)

theorem P12991050150571546641.correct : P12991050150571546641.Spec := by
  intro n
  simp only [A078458, Nat.add_sub_cancel, A078458.P12991050150571546641.a, A078458.P449076157569164237.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078458

/-! ## A078458.P5600748812813028776

`A086275(n+1)+A239626(n+1)-A239627(n+1)`
-/

namespace A078458.P5600748812813028776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (n + 1) + (A239626 (n + 1) - A239627 (n + 1))

end

end A078458.P5600748812813028776

namespace A078458

/-- `A086275(n+1)+A239626(n+1)-A239627(n+1)` -/
def P5600748812813028776.Spec : Prop :=
  ∀ n, P5600748812813028776.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P1762629682806313904

`A001222((n+1)*A072436(n+1))`
-/

namespace A078458.P1762629682806313904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A072436 (n + 1)).toNat

end

end A078458.P1762629682806313904

namespace A078458

/-- `A001222((n+1)*A072436(n+1))` -/
def P1762629682806313904.Spec : Prop :=
  ∀ n, P1762629682806313904.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P13130055102094895672

`A001222((n+1)²)-A065339(n+1)`
-/

namespace A078458.P13130055102094895672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A065339 (n + 1)

end

end A078458.P13130055102094895672

namespace A078458

/-- `A001222((n+1)²)-A065339(n+1)` -/
def P13130055102094895672.Spec : Prop :=
  ∀ n, P13130055102094895672.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P15029756537421817716

`A001222((n+1)²)-A001222(A097706(n+1))`
-/

namespace A078458.P15029756537421817716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A001222 (A097706 (n + 1)).toNat

end

end A078458.P15029756537421817716

namespace A078458

/-- `A001222((n+1)²)-A001222(A097706(n+1))` -/
def P15029756537421817716.Spec : Prop :=
  ∀ n, P15029756537421817716.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P17475131089235871964

`A001222((n+1)²)-A001222(A278509(n+1))`
-/

namespace A078458.P17475131089235871964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A001222 (A278509 (n + 1)).toNat

end

end A078458.P17475131089235871964

namespace A078458

/-- `A001222((n+1)²)-A001222(A278509(n+1))` -/
def P17475131089235871964.Spec : Prop :=
  ∀ n, P17475131089235871964.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P9152609698511879294

`A001222((n+1)²)-A001222(A286363(n+1))`
-/

namespace A078458.P9152609698511879294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2) - A001222 (A286363 (n + 1)).toNat

end

end A078458.P9152609698511879294

namespace A078458

/-- `A001222((n+1)²)-A001222(A286363(n+1))` -/
def P9152609698511879294.Spec : Prop :=
  ∀ n, P9152609698511879294.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P16188447124877838724

`A001222(A164073(A239626((n+1)²)))`
-/

namespace A078458.P16188447124877838724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A164073 (A239626 ((n + 1) ^ 2)).toNat).toNat

end

end A078458.P16188447124877838724

namespace A078458

/-- `A001222(A164073(A239626((n+1)²)))` -/
def P16188447124877838724.Spec : Prop :=
  ∀ n, P16188447124877838724.a n = A078458 (n + 1)

end A078458

/-! ## A078458.P6386742443196477684

`A007814((n+1)²)+A083025((n+1)²)+A065339(n+1)`
-/

namespace A078458.P6386742443196477684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) + A083025 ((n + 1) ^ 2) + A065339 (n + 1)

end

end A078458.P6386742443196477684

namespace A078458

/-- `A007814((n+1)²)+A083025((n+1)²)+A065339(n+1)` -/
def P6386742443196477684.Spec : Prop :=
  ∀ n, P6386742443196477684.a n = A078458 (n + 1)

end A078458

/-!
# A078459: Numbers n such that in some base b <= log n the sum of the digits of n in base b equals b.

The programs for A078459, there is no canonical definition to state claims against.
-/

/-! ## A078459.P17852676023903555419

`eq[4, A282459(A067528(n+2))]`
-/

namespace A078459.P17852676023903555419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282459 (A067528 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078459.P17852676023903555419

/-!
# A078460: Initial n digits in decimal portion of the Traveling Salesman constant (A073008) form a prime number.

The programs for A078460, there is no canonical definition to state claims against.
-/

/-! ## A078460.P17485166537636807748

`A005127(or(n, (2*n)²²))`
-/

namespace A078460.P17485166537636807748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (Nat.lor n (((2 * n) ^ 2) ^ 2))

end

end A078460.P17485166537636807748

/-!
# A078461: a(n) = 0 if n is divisible by the square of odd prime, a(n) = 1 if n is an odd squarefree number, a(n) = 2 otherwise.

The programs for A078461, the canonical program `A078461.P7800814738297369779` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078461 has offset 1).

The definition of A078461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078461.P7800814738297369779

`A008966((n+1)/2^val(n+1, 2))*(2-(n+1)%2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078461

/-- `A008966((n+1)/2^val(n+1, 2))*(2-(n+1)%2)` -/
def P7800814738297369779.Spec : Prop :=
  ∀ n, P7800814738297369779.a n = A078461 (n + 1)

theorem P7800814738297369779.correct : P7800814738297369779.Spec := by
  intro n
  simp only [A078461, Nat.add_sub_cancel]

end A078461

/-! ## A078461.P10676684271174624211

`C(2, A333842(2*(n+1))²)`
-/

namespace A078461.P10676684271174624211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A333842 (2 * (n + 1)) ^ 2).toNat

end

end A078461.P10676684271174624211

namespace A078461

/-- `C(2, A333842(2*(n+1))²)` -/
def P10676684271174624211.Spec : Prop :=
  ∀ n, (P10676684271174624211.a n : ℤ) = A078461 (n + 1)

end A078461

/-! ## A078461.P6712482256259955631

`gcd(2, n+1)*A353627(n+1)`
-/

namespace A078461.P6712482256259955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A353627 (n + 1)

end

end A078461.P6712482256259955631

namespace A078461

/-- `gcd(2, n+1)*A353627(n+1)` -/
def P6712482256259955631.Spec : Prop :=
  ∀ n, P6712482256259955631.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P9312196512813354526

`and(2-char[2*n], A003968(n+1))`
-/

namespace A078461.P9312196512813354526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A003968 (n + 1))

end

end A078461.P9312196512813354526

namespace A078461

/-- `and(2-char[2*n], A003968(n+1))` -/
def P9312196512813354526.Spec : Prop :=
  ∀ n, P9312196512813354526.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P16892154280599025423

`floor(∏{p}[n+1, #]/A000265(n+1))`
-/

namespace A078461.P16892154280599025423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A000265 (n + 1) : ℚ)⌋

end

end A078461.P16892154280599025423

namespace A078461

/-- `floor(∏{p}[n+1, #]/A000265(n+1))` -/
def P16892154280599025423.Spec : Prop :=
  ∀ n, P16892154280599025423.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P233834242832327767

`floor(2^val(n+1, 2)/A003557(n+1))`
-/

namespace A078461.P233834242832327767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / (A003557 (n + 1) : ℚ)⌋

end

end A078461.P233834242832327767

namespace A078461

/-- `floor(2^val(n+1, 2)/A003557(n+1))` -/
def P233834242832327767.Spec : Prop :=
  ∀ n, P233834242832327767.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P3532100712968757397

`A069517(A235872(n+1))`
-/

namespace A078461.P3532100712968757397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A235872 (n + 1)).toNat

end

end A078461.P3532100712968757397

namespace A078461

/-- `A069517(A235872(n+1))` -/
def P3532100712968757397.Spec : Prop :=
  ∀ n, P3532100712968757397.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P7574963253671373837

`A069517(A357689(n+1))`
-/

namespace A078461.P7574963253671373837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A357689 (n + 1)).toNat

end

end A078461.P7574963253671373837

namespace A078461

/-- `A069517(A357689(n+1))` -/
def P7574963253671373837.Spec : Prop :=
  ∀ n, P7574963253671373837.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P3011374748096306926

`A000034(n)*A353627(n+1)`
-/

namespace A078461.P3011374748096306926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A353627 (n + 1)

end

end A078461.P3011374748096306926

namespace A078461

/-- `A000034(n)*A353627(n+1)` -/
def P3011374748096306926.Spec : Prop :=
  ∀ n, P3011374748096306926.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P14388088382479771699

`A003968(n+1)%A010694(n)`
-/

namespace A078461.P14388088382479771699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003968 (n + 1)) (A010694 n)

end

end A078461.P14388088382479771699

namespace A078461

/-- `A003968(n+1)%A010694(n)` -/
def P14388088382479771699.Spec : Prop :=
  ∀ n, P14388088382479771699.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P385159668475523729

`A322857(n+1)%A010694(n)`
-/

namespace A078461.P385159668475523729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322857 (n + 1)) (A010694 n)

end

end A078461.P385159668475523729

namespace A078461

/-- `A322857(n+1)%A010694(n)` -/
def P385159668475523729.Spec : Prop :=
  ∀ n, P385159668475523729.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P10407285329510590393

`A323309(n+1)%A010694(n)`
-/

namespace A078461.P10407285329510590393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323309 (n + 1)) (A010694 n)

end

end A078461.P10407285329510590393

namespace A078461

/-- `A323309(n+1)%A010694(n)` -/
def P10407285329510590393.Spec : Prop :=
  ∀ n, P10407285329510590393.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P17967541560755253637

`A361174(n+1)%A010694(n)`
-/

namespace A078461.P17967541560755253637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361174 (n + 1)) (A010694 n)

end

end A078461.P17967541560755253637

namespace A078461

/-- `A361174(n+1)%A010694(n)` -/
def P17967541560755253637.Spec : Prop :=
  ∀ n, P17967541560755253637.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P14075083319687523136

`A361175(n+1)%A010694(n)`
-/

namespace A078461.P14075083319687523136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361175 (n + 1)) (A010694 n)

end

end A078461.P14075083319687523136

namespace A078461

/-- `A361175(n+1)%A010694(n)` -/
def P14075083319687523136.Spec : Prop :=
  ∀ n, P14075083319687523136.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P890051627430004264

`A401421(n+1)%A010694(n)`
-/

namespace A078461.P890051627430004264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A401421 (n + 1)) (A010694 n)

end

end A078461.P890051627430004264

namespace A078461

/-- `A401421(n+1)%A010694(n)` -/
def P890051627430004264.Spec : Prop :=
  ∀ n, P890051627430004264.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P16486702024532678532

`lcm(A000034(n), A209635(n+1))`
-/

namespace A078461.P16486702024532678532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A209635 (n + 1))

end

end A078461.P16486702024532678532

namespace A078461

/-- `lcm(A000034(n), A209635(n+1))` -/
def P16486702024532678532.Spec : Prop :=
  ∀ n, (P16486702024532678532.a n : ℤ) = A078461 (n + 1)

end A078461

/-! ## A078461.P767987438315955595

`and(A003968(n+1), A010684(n))`
-/

namespace A078461.P767987438315955595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003968 (n + 1)) (A010684 n)

end

end A078461.P767987438315955595

namespace A078461

/-- `and(A003968(n+1), A010684(n))` -/
def P767987438315955595.Spec : Prop :=
  ∀ n, P767987438315955595.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P17625639280270004477

`and(A003968(n+1), A084642(n))`
-/

namespace A078461.P17625639280270004477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003968 (n + 1)) (A084642 n)

end

end A078461.P17625639280270004477

namespace A078461

/-- `and(A003968(n+1), A084642(n))` -/
def P17625639280270004477.Spec : Prop :=
  ∀ n, P17625639280270004477.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P4965329657722581616

`and(A000034(n), A322857(n+1))`
-/

namespace A078461.P4965329657722581616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A322857 (n + 1))

end

end A078461.P4965329657722581616

namespace A078461

/-- `and(A000034(n), A322857(n+1))` -/
def P4965329657722581616.Spec : Prop :=
  ∀ n, P4965329657722581616.a n = A078461 (n + 1)

end A078461

/-! ## A078461.P11158436703783081658

`and(A000034(n), A323309(n+1))`
-/

namespace A078461.P11158436703783081658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A323309 (n + 1))

end

end A078461.P11158436703783081658

namespace A078461

/-- `and(A000034(n), A323309(n+1))` -/
def P11158436703783081658.Spec : Prop :=
  ∀ n, P11158436703783081658.a n = A078461 (n + 1)

end A078461

/-!
# A078462: Partial sums of A035185.

The programs for A078462, the canonical program `A078462.P6697595226897317214` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078462 has offset 1).

The definition of A078462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078462.P6697595226897317214

`∑[A035185(1+n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078462

/-- `∑[A035185(1+n)]` -/
def P6697595226897317214.Spec : Prop :=
  ∀ n, P6697595226897317214.a n = A078462 (n + 1)

theorem P6697595226897317214.correct : P6697595226897317214.Spec := by
  intro n
  simp only [A078462, Nat.add_sub_cancel]

end A078462

/-! ## A078462.P6098992012009245662

`∑[abs(A259829(1+n))]`
-/

namespace A078462.P6098992012009245662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259829 (1 + n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P6098992012009245662

namespace A078462

/-- `∑[abs(A259829(1+n))]` -/
def P6098992012009245662.Spec : Prop :=
  ∀ n, P6098992012009245662.a n = A078462 (n + 1)

end A078462

/-! ## A078462.P3141058204901023973

`A035185(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A078462.P3141058204901023973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035185 (n + 1) + a (n - 1)

end

end A078462.P3141058204901023973

namespace A078462

/-- `A035185(n+1)+a(n-1)` -/
def P3141058204901023973.Spec : Prop :=
  ∀ n, P3141058204901023973.a n = A078462 (n + 1)

end A078462

/-! ## A078462.P15049080246241479128

`∑[gcd(A000038(n), A259829(n+1))]`
-/

namespace A078462.P15049080246241479128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P15049080246241479128

namespace A078462

/-- `∑[gcd(A000038(n), A259829(n+1))]` -/
def P15049080246241479128.Spec : Prop :=
  ∀ n, (P15049080246241479128.a n : ℤ) = A078462 (n + 1)

end A078462

/-! ## A078462.P14696941650061318652

`∑[lcm(A033999(n), A259829(n+1))]`
-/

namespace A078462.P14696941650061318652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P14696941650061318652

namespace A078462

/-- `∑[lcm(A033999(n), A259829(n+1))]` -/
def P14696941650061318652.Spec : Prop :=
  ∀ n, (P14696941650061318652.a n : ℤ) = A078462 (n + 1)

end A078462

/-! ## A078462.P12105087501701590476

`∑[∑{d}[n+1, A091337(#)]]`
-/

namespace A078462.P12105087501701590476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A091337 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P12105087501701590476

namespace A078462

/-- `∑[∑{d}[n+1, A091337(#)]]` -/
def P12105087501701590476.Spec : Prop :=
  ∀ n, P12105087501701590476.a n = A078462 (n + 1)

end A078462

/-! ## A078462.P7847620140806632553

`∑[A033999(n+1)*A259829(2*(n+1))]`
-/

namespace A078462.P7847620140806632553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A259829 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P7847620140806632553

namespace A078462

/-- `∑[A033999(n+1)*A259829(2*(n+1))]` -/
def P7847620140806632553.Spec : Prop :=
  ∀ n, P7847620140806632553.a n = A078462 (n + 1)

end A078462

/-! ## A078462.P12328370504688350529

`∑[A259829(4*(n+1))]`
-/

namespace A078462.P12328370504688350529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078462.P12328370504688350529

namespace A078462

/-- `∑[A259829(4*(n+1))]` -/
def P12328370504688350529.Spec : Prop :=
  ∀ n, P12328370504688350529.a n = A078462 (n + 1)

end A078462

/-!
# A078463: a(n) = A000594(n+1) - A000594(n).

The programs for A078463, there is no canonical definition to state claims against.
-/

/-! ## A078463.P7143265194416738139

`A000594(n+2)-A000594(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078463.P7143265194416738139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 2) - A000594 (n + 1)

end

end A078463.P7143265194416738139

/-! ## A078463.P1779284534911479032

`Δ[A000594(1+n)]`
-/

namespace A078463.P1779284534911479032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078463.P1779284534911479032

/-! ## A078463.P15694104766960987992

`Δ[A145155(n)/(n+1)]`
-/

namespace A078463.P15694104766960987992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078463.P15694104766960987992

/-! ## A078463.P10918299100089584480

`Δ[∑{d}[n+1, A308492(#)]]`
-/

namespace A078463.P10918299100089584480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A308492 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078463.P10918299100089584480

/-! ## A078463.P7880147873836164197

`Δ[A292781(∑[round(sqrt(2*n))])]`
-/

namespace A078463.P7880147873836164197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078463.P7880147873836164197

/-! ## A078463.P12232108270845304295

`Δ[A055978(4*(n+1))]`
-/

namespace A078463.P12232108270845304295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078463.P12232108270845304295

/-!
# A078465: Primonacci numbers: a(n)=a(n-2)+a(n-3)+a(n-5)+a(n-7)+a(n-11)+...+a(n-p(k))+... until n <= p(k), where p(k) is the k-th prime. a(1)=a(2)=1.

The programs for A078465, there is no canonical definition to state claims against.
-/

/-! ## A078465.P12088225445478815406

`A276420(2*n)`
-/

namespace A078465.P12088225445478815406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (2 * n)

end

end A078465.P12088225445478815406

/-! ## A078465.P17692755012195009353

`lcm(A158388(n), A276420(n+n))`
-/

namespace A078465.P17692755012195009353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A276420 (n + n))

end

end A078465.P17692755012195009353

/-! ## A078465.P11517875748576815919

`A023360(abs(1-n))+A023360(n)`
-/

namespace A078465.P11517875748576815919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 |1 - (n : ℤ)|.toNat + A023360 n

end

end A078465.P11517875748576815919

/-! ## A078465.P17794408151748849035

`A276420(A004277(n))+A000007(n)`
-/

namespace A078465.P17794408151748849035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (A004277 n).toNat + A000007 n

end

end A078465.P17794408151748849035

/-! ## A078465.P10499910795905498294

`A276420(A004275(n+1))+A000007(n)`
-/

namespace A078465.P10499910795905498294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (A004275 (n + 1)).toNat + A000007 n

end

end A078465.P10499910795905498294

/-! ## A078465.P10136839810474367014

`A276420(A004275(n+1))+A035444(A001747(n+2))`
-/

namespace A078465.P10136839810474367014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (A004275 (n + 1)).toNat + A035444 (A001747 (n + 2)).toNat

end

end A078465.P10136839810474367014

/-! ## A078465.P9057297879916625716

`A276420(A004277(n))+A004530(n²+1)`
-/

namespace A078465.P9057297879916625716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276420 (A004277 n).toNat + A004530 (n ^ 2 + 1)

end

end A078465.P9057297879916625716

/-!
# A078467: a(n) = a(n-1) + a(n-4); first four terms are 0,1,2,3.

The programs for A078467, the canonical program `A078467.P469941307673899794` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078467 has offset 0).

The definition of A078467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)` (program `A078467.P469941307673899794`, by `A078467.P469941307673899794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078467.P16318770407568112249

`ogf((x+x^2+x^3)/(1-x-x^4))`
-/

namespace A078467.P16318770407568112249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -1, 0, 0, -1] n

end

end A078467.P16318770407568112249

namespace A078467

/-- `ogf((x+x^2+x^3)/(1-x-x^4))` -/
def P16318770407568112249.Spec : Prop :=
  ∀ n, P16318770407568112249.a n = A078467 n

end A078467

/-! ## A078467.P469941307673899794

`a(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078467

/-- `a(n-1)+a(n-4)` -/
def P469941307673899794.Spec : Prop :=
  ∀ n, (P469941307673899794.a n : ℤ) = A078467 n

theorem P469941307673899794.correct : P469941307673899794.Spec := by
  intro n
  simp only [A078467]

end A078467

/-! ## A078467.P7349043172546909716

`A122789(n+3)+A003269(n)`
-/

namespace A078467.P7349043172546909716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (n + 3) + A003269 n

end

end A078467.P7349043172546909716

namespace A078467

/-- `A122789(n+3)+A003269(n)` -/
def P7349043172546909716.Spec : Prop :=
  ∀ n, P7349043172546909716.a n = A078467 n

end A078467

/-! ## A078467.P9680183287855435526

`A003269(n+3)-A017898(n)`
-/

namespace A078467.P9680183287855435526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 3) - A017898 n

end

end A078467.P9680183287855435526

namespace A078467

/-- `A003269(n+3)-A017898(n)` -/
def P9680183287855435526.Spec : Prop :=
  ∀ n, P9680183287855435526.a n = A078467 n

end A078467

/-! ## A078467.P17092515260729854732

`A017898(n+6)-A017898(n)`
-/

namespace A078467.P17092515260729854732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 6) - A017898 n

end

end A078467.P17092515260729854732

namespace A078467

/-- `A017898(n+6)-A017898(n)` -/
def P17092515260729854732.Spec : Prop :=
  ∀ n, P17092515260729854732.a n = A078467 n

end A078467

/-! ## A078467.P12301599378266528856

`A003269(n+3)-Δ[A003269(n)]`
-/

namespace A078467.P12301599378266528856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 3) - (f1 (n + 1) - f1 n)

end

end A078467.P12301599378266528856

namespace A078467

/-- `A003269(n+3)-Δ[A003269(n)]` -/
def P12301599378266528856.Spec : Prop :=
  ∀ n, P12301599378266528856.a n = A078467 n

end A078467

/-! ## A078467.P8768475039982679829

`A122789(n+3)+A017898(n+3)`
-/

namespace A078467.P8768475039982679829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (n + 3) + A017898 (n + 3)

end

end A078467.P8768475039982679829

namespace A078467

/-- `A122789(n+3)+A017898(n+3)` -/
def P8768475039982679829.Spec : Prop :=
  ∀ n, P8768475039982679829.a n = A078467 n

end A078467

/-! ## A078467.P8361845867755171421

`2*a(n-1)-(a(n-1)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A078467.P8361845867755171421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  2 * a (n - 1) - (a (n - 1) - a (n - 4))

end

end A078467.P8361845867755171421

namespace A078467

/-- `2*a(n-1)-(a(n-1)-a(n-4))` -/
def P8361845867755171421.Spec : Prop :=
  ∀ n, P8361845867755171421.a n = A078467 n

end A078467

/-! ## A078467.P3310136675452220529

`A003269(n+4)-A003269(n+1)`
-/

namespace A078467.P3310136675452220529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 4) - A003269 (n + 1)

end

end A078467.P3310136675452220529

namespace A078467

/-- `A003269(n+4)-A003269(n+1)` -/
def P3310136675452220529.Spec : Prop :=
  ∀ n, P3310136675452220529.a n = A078467 n

end A078467

/-! ## A078467.P15677451717569865185

`A098578(n)+1-Δ[A098578(n)]`
-/

namespace A078467.P15677451717569865185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n + (1 - (f1 (n + 1) - f1 n))

end

end A078467.P15677451717569865185

namespace A078467

/-- `A098578(n)+1-Δ[A098578(n)]` -/
def P15677451717569865185.Spec : Prop :=
  ∀ n, P15677451717569865185.a n = A078467 n

end A078467

/-! ## A078467.P2984996675344544511

`A176508(A000217(n+5)-4)`
-/

namespace A078467.P2984996675344544511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176508 (A000217 (n + 5) - 4).toNat

end

end A078467.P2984996675344544511

namespace A078467

/-- `A176508(A000217(n+5)-4)` -/
def P2984996675344544511.Spec : Prop :=
  ∀ n, P2984996675344544511.a n = A078467 n

end A078467

/-!
# A078468: Distinct compositions of the complete graph on n+2 vertices with one edge removed (K^-_{n+2}).

The programs for A078468, the canonical program `A078468.P1693704688615918572` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078468 has offset 0).

The definition of A078468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078468.P1693704688615918572

`A000110(n+2)-A000110(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078468

/-- `A000110(n+2)-A000110(n)` -/
def P1693704688615918572.Spec : Prop :=
  ∀ n, P1693704688615918572.a n = A078468 n

theorem P1693704688615918572.correct : P1693704688615918572.Spec := by
  intro n
  simp only [A078468]

end A078468

/-! ## A078468.P6057518433194870654

`record[Δ[A123346(n)]]`
-/

namespace A078468.P6057518433194870654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078468.P6057518433194870654

namespace A078468

/-- `record[Δ[A123346(n)]]` -/
def P6057518433194870654.Spec : Prop :=
  ∀ n, P6057518433194870654.a n = A078468 n

end A078468

/-! ## A078468.P16949791759294661691

`Δ[A011968(n+1)]`
-/

namespace A078468.P16949791759294661691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P16949791759294661691

namespace A078468

/-- `Δ[A011968(n+1)]` -/
def P16949791759294661691.Spec : Prop :=
  ∀ n, P16949791759294661691.a n = A078468 n

end A078468

/-! ## A078468.P12716142498760030436

`Δ[abs(Δ[A292935(n)])]`
-/

namespace A078468.P12716142498760030436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P12716142498760030436

namespace A078468

/-- `Δ[abs(Δ[A292935(n)])]` -/
def P12716142498760030436.Spec : Prop :=
  ∀ n, P12716142498760030436.a n = A078468 n

end A078468

/-! ## A078468.P2566985960217787748

`Δ[A011972(∑[n]+1)]`
-/

namespace A078468.P2566985960217787748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P2566985960217787748

namespace A078468

/-- `Δ[A011972(∑[n]+1)]` -/
def P2566985960217787748.Spec : Prop :=
  ∀ n, P2566985960217787748.a n = A078468 n

end A078468

/-! ## A078468.P9651299911948953904

`Δ[record[A363550(n+2)]]`
-/

namespace A078468.P9651299911948953904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363550 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P9651299911948953904

namespace A078468

/-- `Δ[record[A363550(n+2)]]` -/
def P9651299911948953904.Spec : Prop :=
  ∀ n, P9651299911948953904.a n = A078468 n

end A078468

/-! ## A078468.P17029923704445671555

`A362924(∑[n+1]+2)`
-/

namespace A078468.P17029923704445671555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078468.P17029923704445671555

namespace A078468

/-- `A362924(∑[n+1]+2)` -/
def P17029923704445671555.Spec : Prop :=
  ∀ n, P17029923704445671555.a n = A078468 n

end A078468

/-! ## A078468.P8871591301620247297

`Δ[A363550(2*(n+1))]`
-/

namespace A078468.P8871591301620247297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363550 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P8871591301620247297

namespace A078468

/-- `Δ[A363550(2*(n+1))]` -/
def P8871591301620247297.Spec : Prop :=
  ∀ n, P8871591301620247297.a n = A078468 n

end A078468

/-! ## A078468.P5661309105508518440

`Δ[A011971(∑[n+1]+1)]`
-/

namespace A078468.P5661309105508518440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078468.P5661309105508518440

namespace A078468

/-- `Δ[A011971(∑[n+1]+1)]` -/
def P5661309105508518440.Spec : Prop :=
  ∀ n, P5661309105508518440.a n = A078468 n

end A078468

/-! ## A078468.P15641939924536649911

`A113547(A034856(n+2))`
-/

namespace A078468.P15641939924536649911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A034856 (n + 2)).toNat

end

end A078468.P15641939924536649911

namespace A078468

/-- `A113547(A034856(n+2))` -/
def P15641939924536649911.Spec : Prop :=
  ∀ n, P15641939924536649911.a n = A078468 n

end A078468

/-!
# A078469: Number of different compositions of the ladder graph L_n.

The programs for A078469, the canonical program `A078469.P16516907361107625573` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078469 has offset 0).

The definition of A078469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078469.P6078603259041668772

`ogf((1-4x-x^2)/(1-6x-x^2))`
-/

namespace A078469.P6078603259041668772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -1] [1, -6, -1] n

end

end A078469.P6078603259041668772

namespace A078469

/-- `ogf((1-4x-x^2)/(1-6x-x^2))` -/
def P6078603259041668772.Spec : Prop :=
  ∀ n, P6078603259041668772.a n = A078469 n

end A078469

/-! ## A078469.P16516907361107625573

`6*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=12`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078469

/-- `6*a(n-1)+a(n-2)` -/
def P16516907361107625573.Spec : Prop :=
  ∀ n, (P16516907361107625573.a n : ℤ) = A078469 n

theorem P16516907361107625573.correct : P16516907361107625573.Spec := by
  intro n
  simp only [A078469]

end A078469

/-! ## A078469.P1419232812096170994

`A295334(comp[2*(n+1)]+n)`
-/

namespace A078469.P1419232812096170994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A078469.P1419232812096170994

namespace A078469

/-- `A295334(comp[2*(n+1)]+n)` -/
def P1419232812096170994.Spec : Prop :=
  ∀ n, P1419232812096170994.a n = A078469 n

end A078469

/-! ## A078469.P17276440590615278199

`record[gcd(A139136(n), A295334(n))]`
-/

namespace A078469.P17276440590615278199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139136 n) (A295334 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078469.P17276440590615278199

namespace A078469

/-- `record[gcd(A139136(n), A295334(n))]` -/
def P17276440590615278199.Spec : Prop :=
  ∀ n, (P17276440590615278199.a n : ℤ) = A078469 n

end A078469

/-! ## A078469.P9698984411430308946

`A000007(n)+2*A005668(n)`
-/

namespace A078469.P9698984411430308946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A005668 n

end

end A078469.P9698984411430308946

namespace A078469

/-- `A000007(n)+2*A005668(n)` -/
def P9698984411430308946.Spec : Prop :=
  ∀ n, P9698984411430308946.a n = A078469 n

end A078469

/-! ## A078469.P9161824327380090994

`A005668(A000007(n)+n)+A005668(n)`
-/

namespace A078469.P9161824327380090994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (A000007 n + (n : ℤ)).toNat + A005668 n

end

end A078469.P9161824327380090994

namespace A078469

/-- `A005668(A000007(n)+n)+A005668(n)` -/
def P9161824327380090994.Spec : Prop :=
  ∀ n, P9161824327380090994.a n = A078469 n

end A078469

/-!
# A078471: Sum of all odd divisors of all positive integers <= n.

The programs for A078471, the canonical program `A078471.P966964113016564166` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078471 has offset 1).

The definition of A078471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078471.P5381098536636148179

`A093005(n+1)-A024930(n+1)`
-/

namespace A078471.P5381098536636148179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) - A024930 (n + 1)

end

end A078471.P5381098536636148179

namespace A078471

/-- `A093005(n+1)-A024930(n+1)` -/
def P5381098536636148179.Spec : Prop :=
  ∀ n, P5381098536636148179.a n = A078471 (n + 1)

theorem P5381098536636148179.correct : P5381098536636148179.Spec := by
  intro n
  simp only [A078471, Nat.add_sub_cancel, A078471.P5381098536636148179.a, A078471.P966964113016564166.a, A000217, A000217.P10269402890581615239.a, A024930, A024930.P12887729101472218413.a, A093005, A093005.P14098043965241628810.a, A333194, A333194.P8598464989280719003.f1, A333194.P8598464989280719003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078471

/-! ## A078471.P9853308887254463152

`A024916(n+1)-A271342(n+1)`
-/

namespace A078471.P9853308887254463152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A271342 (n + 1)

end

end A078471.P9853308887254463152

namespace A078471

/-- `A024916(n+1)-A271342(n+1)` -/
def P9853308887254463152.Spec : Prop :=
  ∀ n, P9853308887254463152.a n = A078471 (n + 1)

theorem P9853308887254463152.correct : P9853308887254463152.Spec := by
  intro n
  simp only [A078471, Nat.add_sub_cancel, A078471.P9853308887254463152.a, A078471.P966964113016564166.a, A000217, A000217.P10269402890581615239.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A271342, A271342.P3433703997216414430.a, A333194, A333194.P8598464989280719003.f1, A333194.P8598464989280719003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078471

/-! ## A078471.P9737714871037597679

`A326124(n+1)-A327329(n+1)`
-/

namespace A078471.P9737714871037597679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326124 (n + 1) - A327329 (n + 1)

end

end A078471.P9737714871037597679

namespace A078471

/-- `A326124(n+1)-A327329(n+1)` -/
def P9737714871037597679.Spec : Prop :=
  ∀ n, P9737714871037597679.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P960842654904767072

`(A059851(n+1)+A344720(n+1))/2`
-/

namespace A078471.P960842654904767072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059851 (n + 1) + A344720 (n + 1) : ℚ) / 2

end

end A078471.P960842654904767072

namespace A078471

/-- `(A059851(n+1)+A344720(n+1))/2` -/
def P960842654904767072.Spec : Prop :=
  ∀ n, P960842654904767072.a n = (A078471 (n + 1) : ℚ)

end A078471

/-! ## A078471.P966964113016564166

`A000217(n+2)-A333194(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078471

/-- `A000217(n+2)-A333194(n+2)` -/
def P966964113016564166.Spec : Prop :=
  ∀ n, P966964113016564166.a n = A078471 (n + 1)

theorem P966964113016564166.correct : P966964113016564166.Spec := by
  intro n
  simp only [A078471, Nat.add_sub_cancel]

end A078471

/-! ## A078471.P6262985697353153949

`∑{#}[n, round((n+1)/(2*(#+1)))²]`
-/

namespace A078471.P6262985697353153949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 * (k + 1) : ℚ)) ^ 2

end

end A078471.P6262985697353153949

namespace A078471

/-- `∑{#}[n, round((n+1)/(2*(#+1)))²]` -/
def P6262985697353153949.Spec : Prop :=
  ∀ n, P6262985697353153949.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P1542537808464621185

`∑[∑{d}[n+1, #*#%2]]`
-/

namespace A078471.P1542537808464621185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d * (d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P1542537808464621185

namespace A078471

/-- `∑[∑{d}[n+1, #*#%2]]` -/
def P1542537808464621185.Spec : Prop :=
  ∀ n, (P1542537808464621185.a n : ℤ) = A078471 (n + 1)

end A078471

/-! ## A078471.P12265793615529072089

`∑[∑{d}[n+1, lcm(2, #)-#]]`
-/

namespace A078471.P12265793615529072089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P12265793615529072089

namespace A078471

/-- `∑[∑{d}[n+1, lcm(2, #)-#]]` -/
def P12265793615529072089.Spec : Prop :=
  ∀ n, P12265793615529072089.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P8473378170449657020

`∑[∑{d}[n+1, #*and(1, #)]]`
-/

namespace A078471.P8473378170449657020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d * Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P8473378170449657020

namespace A078471

/-- `∑[∑{d}[n+1, #*and(1, #)]]` -/
def P8473378170449657020.Spec : Prop :=
  ∀ n, (P8473378170449657020.a n : ℤ) = A078471 (n + 1)

end A078471

/-! ## A078471.P18216872708261042272

`∑[∑{d}[n+1, #/xor(n, n+1)]]`
-/

namespace A078471.P18216872708261042272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P18216872708261042272

namespace A078471

/-- `∑[∑{d}[n+1, #/xor(n, n+1)]]` -/
def P18216872708261042272.Spec : Prop :=
  ∀ n, P18216872708261042272.a n = (A078471 (n + 1) : ℚ)

end A078471

/-! ## A078471.P6156026234494711371

`∑[∑{d}[(n+1)/2^val(n+1, 2), #]]`
-/

namespace A078471.P6156026234494711371
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P6156026234494711371

namespace A078471

/-- `∑[∑{d}[(n+1)/2^val(n+1, 2), #]]` -/
def P6156026234494711371.Spec : Prop :=
  ∀ n, (P6156026234494711371.a n : ℤ) = A078471 (n + 1)

end A078471

/-! ## A078471.P11753983202863887595

`∑[A000593(n+1)]`
-/

namespace A078471.P11753983202863887595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P11753983202863887595

namespace A078471

/-- `∑[A000593(n+1)]` -/
def P11753983202863887595.Spec : Prop :=
  ∀ n, P11753983202863887595.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P9920202010131981563

`∑[abs(A115607(n+1))]`
-/

namespace A078471.P9920202010131981563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115607 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P9920202010131981563

namespace A078471

/-- `∑[abs(A115607(n+1))]` -/
def P9920202010131981563.Spec : Prop :=
  ∀ n, P9920202010131981563.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P14242011224321703129

`∑[A326990(n+1)+1]`
-/

namespace A078471.P14242011224321703129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P14242011224321703129

namespace A078471

/-- `∑[A326990(n+1)+1]` -/
def P14242011224321703129.Spec : Prop :=
  ∀ n, P14242011224321703129.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P6692045078014649336

`∑[∑{d}[A000265(n+1), #]]`
-/

namespace A078471.P6692045078014649336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P6692045078014649336

namespace A078471

/-- `∑[∑{d}[A000265(n+1), #]]` -/
def P6692045078014649336.Spec : Prop :=
  ∀ n, (P6692045078014649336.a n : ℤ) = A078471 (n + 1)

end A078471

/-! ## A078471.P7261810398782302823

`∑[A326125(n+1)/(n+1)]`
-/

namespace A078471.P7261810398782302823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P7261810398782302823

namespace A078471

/-- `∑[A326125(n+1)/(n+1)]` -/
def P7261810398782302823.Spec : Prop :=
  ∀ n, P7261810398782302823.a n = (A078471 (n + 1) : ℚ)

end A078471

/-! ## A078471.P12891663406376499140

`∑[A000203(n+1)/xor(n, n+1)]`
-/

namespace A078471.P12891663406376499140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P12891663406376499140

namespace A078471

/-- `∑[A000203(n+1)/xor(n, n+1)]` -/
def P12891663406376499140.Spec : Prop :=
  ∀ n, P12891663406376499140.a n = (A078471 (n + 1) : ℚ)

end A078471

/-! ## A078471.P1428942371332589867

`∑[A000203((n+1)/(n+1-and(n, n+1)))]`
-/

namespace A078471.P1428942371332589867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P1428942371332589867

namespace A078471

/-- `∑[A000203((n+1)/(n+1-and(n, n+1)))]` -/
def P1428942371332589867.Spec : Prop :=
  ∀ n, P1428942371332589867.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P18426761724047979000

`∑[A000203(A000265(n+1))]`
-/

namespace A078471.P18426761724047979000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P18426761724047979000

namespace A078471

/-- `∑[A000203(A000265(n+1))]` -/
def P18426761724047979000.Spec : Prop :=
  ∀ n, P18426761724047979000.a n = A078471 (n + 1)

end A078471

/-! ## A078471.P8724552539865267115

`∑[A000203(A166466(n+1)/3)]`
-/

namespace A078471.P8724552539865267115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078471.P8724552539865267115

namespace A078471

/-- `∑[A000203(A166466(n+1)/3)]` -/
def P8724552539865267115.Spec : Prop :=
  ∀ n, P8724552539865267115.a n = A078471 (n + 1)

end A078471

/-!
# A078472: Partial sums of A035282.

The programs for A078472, the canonical program `A078472.P15045031413920336838` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078472 has offset 1).

The definition of A078472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078472.P15045031413920336838

`∑[A035282(1+n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078472

/-- `∑[A035282(1+n)]` -/
def P15045031413920336838.Spec : Prop :=
  ∀ n, P15045031413920336838.a n = A078472 (n + 1)

theorem P15045031413920336838.correct : P15045031413920336838.Spec := by
  intro n
  simp only [A078472, Nat.add_sub_cancel]

end A078472

/-! ## A078472.P6800201931539644959

`A035282(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A078472.P6800201931539644959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035282 (n + 1) + a (n - 1)

end

end A078472.P6800201931539644959

namespace A078472

/-- `A035282(n+1)+a(n-1)` -/
def P6800201931539644959.Spec : Prop :=
  ∀ n, P6800201931539644959.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P15913876879549985163

`record[A353997(A328399(n))]`
-/

namespace A078472.P15913876879549985163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078472.P15913876879549985163

namespace A078472

/-- `record[A353997(A328399(n))]` -/
def P15913876879549985163.Spec : Prop :=
  ∀ n, P15913876879549985163.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P2763864702542049853

`A353997(A031363(n+1))`
-/

namespace A078472.P2763864702542049853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (A031363 (n + 1)).toNat

end

end A078472.P2763864702542049853

namespace A078472

/-- `A353997(A031363(n+1))` -/
def P2763864702542049853.Spec : Prop :=
  ∀ n, P2763864702542049853.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P12889996192157446921

`record[A353997(n+1)-A178333(n)]`
-/

namespace A078472.P12889996192157446921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (n + 1) - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078472.P12889996192157446921

namespace A078472

/-- `record[A353997(n+1)-A178333(n)]` -/
def P12889996192157446921.Spec : Prop :=
  ∀ n, P12889996192157446921.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P14945788388807821856

`record[A353997(n+1)%A065383(n)]`
-/

namespace A078472.P14945788388807821856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353997 (n + 1)) (A065383 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078472.P14945788388807821856

namespace A078472

/-- `record[A353997(n+1)%A065383(n)]` -/
def P14945788388807821856.Spec : Prop :=
  ∀ n, P14945788388807821856.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P277806746715673588

`record[A353997(n+1)-A354030(3*n+2)]`
-/

namespace A078472.P277806746715673588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (n + 1) - A354030 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078472.P277806746715673588

namespace A078472

/-- `record[A353997(n+1)-A354030(3*n+2)]` -/
def P277806746715673588.Spec : Prop :=
  ∀ n, P277806746715673588.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P11608617814648209929

`∑[A078473(A031363(n+1))%A043423(n+1)]`
-/

namespace A078472.P11608617814648209929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078473 (A031363 (n + 1)).toNat) (A043423 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078472.P11608617814648209929

namespace A078472

/-- `∑[A078473(A031363(n+1))%A043423(n+1)]` -/
def P11608617814648209929.Spec : Prop :=
  ∀ n, P11608617814648209929.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P1284713871869278670

`A353997(lt[1, A031364(n+1)])`
-/

namespace A078472.P1284713871869278670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A078472.P1284713871869278670

namespace A078472

/-- `A353997(lt[1, A031364(n+1)])` -/
def P1284713871869278670.Spec : Prop :=
  ∀ n, P1284713871869278670.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P18078565371963589660

`A353997(lt[1, A078473(n+1)])`
-/

namespace A078472.P18078565371963589660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A078472.P18078565371963589660

namespace A078472

/-- `A353997(lt[1, A078473(n+1)])` -/
def P18078565371963589660.Spec : Prop :=
  ∀ n, P18078565371963589660.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P15405052135163425877

`∑[A078473(A031363(n+1)%A253367(n+1))]`
-/

namespace A078472.P15405052135163425877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (Int.tmod (A031363 (n + 1)) (A253367 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078472.P15405052135163425877

namespace A078472

/-- `∑[A078473(A031363(n+1)%A253367(n+1))]` -/
def P15405052135163425877.Spec : Prop :=
  ∀ n, P15405052135163425877.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P12839246623143198255

`record[A353997(A117910(n))]`
-/

namespace A078472.P12839246623143198255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353997 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078472.P12839246623143198255

namespace A078472

/-- `record[A353997(A117910(n))]` -/
def P12839246623143198255.Spec : Prop :=
  ∀ n, P12839246623143198255.a n = A078472 (n + 1)

end A078472

/-! ## A078472.P13077264210128415808

`a(n-1)+A109983(n²)+A078473(A031363(n+1))` with `a(0)=1`
-/

namespace A078472.P13077264210128415808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109983 (n ^ 2) + A078473 (A031363 (n + 1)).toNat)

end

end A078472.P13077264210128415808

namespace A078472

/-- `a(n-1)+A109983(n²)+A078473(A031363(n+1))` -/
def P13077264210128415808.Spec : Prop :=
  ∀ n, P13077264210128415808.a n = A078472 (n + 1)

end A078472

/-!
# A078473: Expansion of zeta function of icosian ring.

The programs for A078473, the canonical program `A078473.P9122853561466068891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078473 has offset 1).

The definition of A078473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078473.P9122853561466068891

`∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A078473

/-- `∑{d}[n+1, A053723(#-1)*A109091((n+1)/#)]` -/
def P9122853561466068891.Spec : Prop :=
  ∀ n, P9122853561466068891.a n = A078473 (n + 1)

theorem P9122853561466068891.correct : P9122853561466068891.Spec := by
  intro n
  simp only [A078473, Nat.add_sub_cancel]

end A078473

/-! ## A078473.P6567505631982713373

`A235145(A333169(5*n+3))+A031364(n+1)`
-/

namespace A078473.P6567505631982713373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A333169 (5 * n + 3)).toNat + A031364 (n + 1)

end

end A078473.P6567505631982713373

namespace A078473

/-- `A235145(A333169(5*n+3))+A031364(n+1)` -/
def P6567505631982713373.Spec : Prop :=
  ∀ n, P6567505631982713373.a n = A078473 (n + 1)

end A078473

/-! ## A078473.P9334970567148922296

`A031364(n+1)+A016389(A119502(n))`
-/

namespace A078473.P9334970567148922296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1) + A016389 (A119502 n).toNat

end

end A078473.P9334970567148922296

namespace A078473

/-- `A031364(n+1)+A016389(A119502(n))` -/
def P9334970567148922296.Spec : Prop :=
  ∀ n, P9334970567148922296.a n = A078473 (n + 1)

end A078473

/-!
# A078474: a(1)=a(2)=a(3)=1, a(n)=n-a(a(n-1))-a(a(n-2))-a(a(n-3)).

The programs for A078474, the canonical program `A078474.P10299551153779084113` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078474 has offset 1).

The definition of A078474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(n-1)-1)-a(a(n-2)-1)-a(a(n-3)-1)` (program `A078474.P10299551153779084113`, by `A078474.P10299551153779084113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078474.P10299551153779084113

`n+1-a(a(n-1)-1)-a(a(n-2)-1)-a(a(n-3)-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078474

/-- `n+1-a(a(n-1)-1)-a(a(n-2)-1)-a(a(n-3)-1)` -/
def P10299551153779084113.Spec : Prop :=
  ∀ n, P10299551153779084113.a n = A078474 (n + 1)

theorem P10299551153779084113.correct : P10299551153779084113.Spec := by
  intro n
  simp only [A078474, Nat.add_sub_cancel]

end A078474

/-! ## A078474.P9483715177149558505

`∑[A284680(n+1)]`
-/

namespace A078474.P9483715177149558505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P9483715177149558505

namespace A078474

/-- `∑[A284680(n+1)]` -/
def P9483715177149558505.Spec : Prop :=
  ∀ n, P9483715177149558505.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P283588004296070807

`∑[log2(Δ[A284746(n+1)])]`
-/

namespace A078474.P283588004296070807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P283588004296070807

namespace A078474

/-- `∑[log2(Δ[A284746(n+1)])]` -/
def P283588004296070807.Spec : Prop :=
  ∀ n, P283588004296070807.a n = (A078474 (n + 1) : ℝ)

end A078474

/-! ## A078474.P17418532229708403612

`A284746(n+2)-(n+2)`
-/

namespace A078474.P17418532229708403612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 2) - (n + 2 : ℤ)

end

end A078474.P17418532229708403612

namespace A078474

/-- `A284746(n+2)-(n+2)` -/
def P17418532229708403612.Spec : Prop :=
  ∀ n, P17418532229708403612.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P3332523119317870287

`∑[Δ[A191263(n+1)]%2]`
-/

namespace A078474.P3332523119317870287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P3332523119317870287

namespace A078474

/-- `∑[Δ[A191263(n+1)]%2]` -/
def P3332523119317870287.Spec : Prop :=
  ∀ n, P3332523119317870287.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P9651262232408885801

`∑[Δ[A191264(n+1)]%5]`
-/

namespace A078474.P9651262232408885801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P9651262232408885801

namespace A078474

/-- `∑[Δ[A191264(n+1)]%5]` -/
def P9651262232408885801.Spec : Prop :=
  ∀ n, P9651262232408885801.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P460992253095930673

`∑[A001221(Δ[A284682(n+1)])]`
-/

namespace A078474.P460992253095930673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P460992253095930673

namespace A078474

/-- `∑[A001221(Δ[A284682(n+1)])]` -/
def P460992253095930673.Spec : Prop :=
  ∀ n, P460992253095930673.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P17137314458884111121

`∑[A001221(Δ[A284746(n+1)])]`
-/

namespace A078474.P17137314458884111121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P17137314458884111121

namespace A078474

/-- `∑[A001221(Δ[A284746(n+1)])]` -/
def P17137314458884111121.Spec : Prop :=
  ∀ n, P17137314458884111121.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P740516040363369246

`∑[A001222(Δ[A284746(n+1)])]`
-/

namespace A078474.P740516040363369246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P740516040363369246

namespace A078474

/-- `∑[A001222(Δ[A284746(n+1)])]` -/
def P740516040363369246.Spec : Prop :=
  ∀ n, P740516040363369246.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P822589369888759451

`∑[A191250(Δ[A191264(n+1)])]`
-/

namespace A078474.P822589369888759451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P822589369888759451

namespace A078474

/-- `∑[A191250(Δ[A191264(n+1)])]` -/
def P822589369888759451.Spec : Prop :=
  ∀ n, P822589369888759451.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P3293405309024625187

`∑[A304577(Δ[A191263(n+1)])]`
-/

namespace A078474.P3293405309024625187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P3293405309024625187

namespace A078474

/-- `∑[A304577(Δ[A191263(n+1)])]` -/
def P3293405309024625187.Spec : Prop :=
  ∀ n, P3293405309024625187.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P7387661710389142821

`∑[A284674(Δ[A284682(n+1)])]`
-/

namespace A078474.P7387661710389142821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284674 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P7387661710389142821

namespace A078474

/-- `∑[A284674(Δ[A284682(n+1)])]` -/
def P7387661710389142821.Spec : Prop :=
  ∀ n, P7387661710389142821.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P2662675795219802403

`∑[A284688(Δ[A284682(n+1)])]`
-/

namespace A078474.P2662675795219802403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284688 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P2662675795219802403

namespace A078474

/-- `∑[A284688(Δ[A284682(n+1)])]` -/
def P2662675795219802403.Spec : Prop :=
  ∀ n, P2662675795219802403.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P4666387450379456653

`∑[A008683(Δ[2*A191263(n+1)])]`
-/

namespace A078474.P4666387450379456653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078474.P4666387450379456653

namespace A078474

/-- `∑[A008683(Δ[2*A191263(n+1)])]` -/
def P4666387450379456653.Spec : Prop :=
  ∀ n, P4666387450379456653.a n = A078474 (n + 1)

end A078474

/-! ## A078474.P8298721175378422792

`lt[A102005(n+1), 2]-n`
-/

namespace A078474.P8298721175378422792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A078474.P8298721175378422792

namespace A078474

/-- `lt[A102005(n+1), 2]-n` -/
def P8298721175378422792.Spec : Prop :=
  ∀ n, P8298721175378422792.a n = A078474 (n + 1)

end A078474

/-!
# A078476: Time taken to get n people from one side of a bridge to the other where (a) the only flashlight must be carried when crossing; (b) only one or two people may cross at the same time; (c) a pair crosses at the speed of the slowest member; and (d) the k-th person's speed requires k seconds to cross the bridge.

The programs for A078476, the canonical program `A078476.P15043509866121774640` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078476 has offset 1).

The definition of A078476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078476.P15043509866121774640

`ogf((1+2x^2+x^3-3x^4)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078476

/-- `ogf((1+2x^2+x^3-3x^4)/(1-2x+2x^3-x^4))` -/
def P15043509866121774640.Spec : Prop :=
  ∀ n, P15043509866121774640.a n = A078476 (n + 1)

theorem P15043509866121774640.correct : P15043509866121774640.Spec := by
  intro n
  simp only [A078476, Nat.add_sub_cancel]

end A078476

/-! ## A078476.P9139507966178943340

`∑[a(n-2)+1]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A078476.P9139507966178943340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 5] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P9139507966178943340

namespace A078476

/-- `∑[a(n-2)+1]` -/
def P9139507966178943340.Spec : Prop :=
  ∀ n, (P9139507966178943340.a n : ℤ) = A078476 (n + 1)

end A078476

/-! ## A078476.P16054267839347808919

`a(n-2)+6+n` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A078476.P16054267839347808919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) + 6 + n

end

end A078476.P16054267839347808919

namespace A078476

/-- `a(n-2)+6+n` -/
def P16054267839347808919.Spec : Prop :=
  ∀ n, (P16054267839347808919.a n : ℤ) = A078476 (n + 1)

end A078476

/-! ## A078476.P16081861196427675369

`∑[ceil(n/2)+3%(n+2)]`
-/

namespace A078476.P16081861196427675369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + ((3 % (n + 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P16081861196427675369

namespace A078476

/-- `∑[ceil(n/2)+3%(n+2)]` -/
def P16081861196427675369.Spec : Prop :=
  ∀ n, P16081861196427675369.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P15143443727757935925

`∑[(2*n+5)%∑[gcd(2, n)]]`
-/

namespace A078476.P15143443727757935925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P15143443727757935925

namespace A078476

/-- `∑[(2*n+5)%∑[gcd(2, n)]]` -/
def P15143443727757935925.Spec : Prop :=
  ∀ n, (P15143443727757935925.a n : ℤ) = A078476 (n + 1)

end A078476

/-! ## A078476.P15582385265045908737

`∑[∑[1-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A078476.P15582385265045908737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P15582385265045908737

namespace A078476

/-- `∑[∑[1-a(n-1)]]` -/
def P15582385265045908737.Spec : Prop :=
  ∀ n, P15582385265045908737.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P17267965333451674907

`∑[(n+2)%(2*n+1)+1]-floor((n/2)²)`
-/

namespace A078476.P17267965333451674907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A078476.P17267965333451674907

namespace A078476

/-- `∑[(n+2)%(2*n+1)+1]-floor((n/2)²)` -/
def P17267965333451674907.Spec : Prop :=
  ∀ n, P17267965333451674907.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P13657904243180322863

`abs(1-(A267531(n)+n))`
-/

namespace A078476.P13657904243180322863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A267531 n + (n : ℤ))|

end

end A078476.P13657904243180322863

namespace A078476

/-- `abs(1-(A267531(n)+n))` -/
def P13657904243180322863.Spec : Prop :=
  ∀ n, P13657904243180322863.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P15301952169062583668

`∑[A267530(n)]+abs(1-n)`
-/

namespace A078476.P15301952169062583668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + |1 - (n : ℤ)|

end

end A078476.P15301952169062583668

namespace A078476

/-- `∑[A267530(n)]+abs(1-n)` -/
def P15301952169062583668.Spec : Prop :=
  ∀ n, P15301952169062583668.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P3101813363738452949

`A056121(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A078476.P3101813363738452949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056121 (n - 1) - a (n - 1)

end

end A078476.P3101813363738452949

namespace A078476

/-- `A056121(n-1)-a(n-1)` -/
def P3101813363738452949.Spec : Prop :=
  ∀ n, P3101813363738452949.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P12412039150792599831

`∑[(∑[A000034(n)]-n+2)%∑[n+1]]+1`
-/

namespace A078476.P12412039150792599831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) + 2) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078476.P12412039150792599831

namespace A078476

/-- `∑[(∑[A000034(n)]-n+2)%∑[n+1]]+1` -/
def P12412039150792599831.Spec : Prop :=
  ∀ n, P12412039150792599831.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P11796629566577207755

`A190091(n+1)-A123932(n)`
-/

namespace A078476.P11796629566577207755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190091 (n + 1) - A123932 n

end

end A078476.P11796629566577207755

namespace A078476

/-- `A190091(n+1)-A123932(n)` -/
def P11796629566577207755.Spec : Prop :=
  ∀ n, P11796629566577207755.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P16907846127434023994

`A036573(n+3)-A040006(n)`
-/

namespace A078476.P16907846127434023994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036573 (n + 3) - A040006 n

end

end A078476.P16907846127434023994

namespace A078476

/-- `A036573(n+3)-A040006(n)` -/
def P16907846127434023994.Spec : Prop :=
  ∀ n, P16907846127434023994.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P17710382348008381629

`∑[A032742(∑[A067018(n)])]`
-/

namespace A078476.P17710382348008381629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P17710382348008381629

namespace A078476

/-- `∑[A032742(∑[A067018(n)])]` -/
def P17710382348008381629.Spec : Prop :=
  ∀ n, P17710382348008381629.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P4962285868192799440

`∑[A078898(∑[A067018(n)])]`
-/

namespace A078476.P4962285868192799440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P4962285868192799440

namespace A078476

/-- `∑[A078898(∑[A067018(n)])]` -/
def P4962285868192799440.Spec : Prop :=
  ∀ n, P4962285868192799440.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P5284134011831449009

`record[A187243(n+1)-n]`
-/

namespace A078476.P5284134011831449009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078476.P5284134011831449009

namespace A078476

/-- `record[A187243(n+1)-n]` -/
def P5284134011831449009.Spec : Prop :=
  ∀ n, P5284134011831449009.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P9720315516161708414

`record[∑[(A032766(n)+1)%A000108(n)-(n-1)]]`
-/

namespace A078476.P9720315516161708414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 n + 1) (A000108 n) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078476.P9720315516161708414

namespace A078476

/-- `record[∑[(A032766(n)+1)%A000108(n)-(n-1)]]` -/
def P9720315516161708414.Spec : Prop :=
  ∀ n, P9720315516161708414.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P15698216125595537788

`∑[A002260(A105343(n+2))]`
-/

namespace A078476.P15698216125595537788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A105343 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P15698216125595537788

namespace A078476

/-- `∑[A002260(A105343(n+2))]` -/
def P15698216125595537788.Spec : Prop :=
  ∀ n, P15698216125595537788.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P16489539621149353346

`∑[A004736(∑[or(1, n)]+n)]`
-/

namespace A078476.P16489539621149353346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P16489539621149353346

namespace A078476

/-- `∑[A004736(∑[or(1, n)]+n)]` -/
def P16489539621149353346.Spec : Prop :=
  ∀ n, P16489539621149353346.a n = A078476 (n + 1)

end A078476

/-! ## A078476.P9609564525777353784

`∑[A004736(A047838(n+2))]`
-/

namespace A078476.P9609564525777353784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A047838 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078476.P9609564525777353784

namespace A078476

/-- `∑[A004736(A047838(n+2))]` -/
def P9609564525777353784.Spec : Prop :=
  ∀ n, P9609564525777353784.a n = A078476 (n + 1)

end A078476

/-!
# A078477: Number of rational knots with n crossings and unknotting number = 1 (chiral pairs counted only once).

The programs for A078477, the canonical program `A078477.P2737672699933253609` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078477 has offset 3).

The definition of A078477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078477.P5319025728145880556

`ogf((1+x-x^2+x^3-x^5+2x^6+2x^7)/(1-2x^2-x^4+2x^6))`
-/

namespace A078477.P5319025728145880556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1, 0, -1, 2, 2] [1, 0, -2, 0, -1, 0, 2] n

end

end A078477.P5319025728145880556

namespace A078477

/-- `ogf((1+x-x^2+x^3-x^5+2x^6+2x^7)/(1-2x^2-x^4+2x^6))` -/
def P5319025728145880556.Spec : Prop :=
  ∀ n, P5319025728145880556.a n = A078477 (n + 3)

end A078477

/-! ## A078477.P2737672699933253609

`2*a(n-2)+a(n-4)-2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=6, a(6)=7, a(7)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078477

/-- `2*a(n-2)+a(n-4)-2*a(n-6)` -/
def P2737672699933253609.Spec : Prop :=
  ∀ n, P2737672699933253609.a n = A078477 (n + 3)

theorem P2737672699933253609.correct : P2737672699933253609.Spec := by
  intro n
  simp only [A078477, Nat.add_sub_cancel]

end A078477

/-! ## A078477.P1289554992029022807

`or(a(n-1)-1, a(n-2)+n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A078477.P1289554992029022807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  Int.lor (a (n - 1) - 1) (a (n - 2) + (n : ℤ) - 2)

end

end A078477.P1289554992029022807

namespace A078477

/-- `or(a(n-1)-1, a(n-2)+n-2)` -/
def P1289554992029022807.Spec : Prop :=
  ∀ n, P1289554992029022807.a n = A078477 (n + 3)

end A078477

/-! ## A078477.P11013090197026793434

`or(a(n-1)-1, n-(2-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A078477.P11013090197026793434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  Int.lor (a (n - 1) - 1) ((n : ℤ) - (2 - a (n - 2)))

end

end A078477.P11013090197026793434

namespace A078477

/-- `or(a(n-1)-1, n-(2-a(n-2)))` -/
def P11013090197026793434.Spec : Prop :=
  ∀ n, P11013090197026793434.a n = A078477 (n + 3)

end A078477

/-! ## A078477.P7937686784946933713

`or(A135318(n), A141023(A110654(n)))`
-/

namespace A078477.P7937686784946933713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135318 n) (A141023 (A110654 n).toNat)

end

end A078477.P7937686784946933713

namespace A078477

/-- `or(A135318(n), A141023(A110654(n)))` -/
def P7937686784946933713.Spec : Prop :=
  ∀ n, P7937686784946933713.a n = A078477 (n + 3)

end A078477

/-! ## A078477.P13951223135752829241

`or(A057979(n), A296965(A110654(n)))`
-/

namespace A078477.P13951223135752829241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057979 n) (A296965 (A110654 n).toNat)

end

end A078477.P13951223135752829241

namespace A078477

/-- `or(A057979(n), A296965(A110654(n)))` -/
def P13951223135752829241.Spec : Prop :=
  ∀ n, P13951223135752829241.a n = A078477 (n + 3)

end A078477

/-! ## A078477.P4335774584577495500

`or(A052126(n+1), A141023(A110654(n)))`
-/

namespace A078477.P4335774584577495500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052126 (n + 1)) (A141023 (A110654 n).toNat)

end

end A078477.P4335774584577495500

namespace A078477

/-- `or(A052126(n+1), A141023(A110654(n)))` -/
def P4335774584577495500.Spec : Prop :=
  ∀ n, P4335774584577495500.a n = A078477 (n + 3)

end A078477

/-!
# A078479: a(1)=1, a(n+1)=a(lpf(n))+a(gpf(n)), where lpf(n) and gpf(n) are the least and greatest prime factors of n (A020639, A006530).

The programs for A078479, there is no canonical definition to state claims against.
-/

/-! ## A078479.P1285824847482712070

`A106288(A269695(n))`
-/

namespace A078479.P1285824847482712070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106288 (A269695 n).toNat

end

end A078479.P1285824847482712070

/-! ## A078479.P12240724224882296359

`A000005(A038388(A269695(n)²))`
-/

namespace A078479.P12240724224882296359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038388 (A269695 n ^ 2).toNat).toNat

end

end A078479.P12240724224882296359

/-! ## A078479.P3757281033174792893

`A230849(A048883(n)^A010693(n))`
-/

namespace A078479.P3757281033174792893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (SequenceMachineLib.roundAway ((A048883 n : ℚ) ^ (A010693 n : ℤ))).toNat

end

end A078479.P3757281033174792893

/-! ## A078479.P4896682318990488530

`∑{d}[A071044(n), A010882(A136252(#))]`
-/

namespace A078479.P4896682318990488530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010882 (A136252 d).toNat

end

end A078479.P4896682318990488530

/-! ## A078479.P3081706949569784366

`∑{d}[A269695(n), A040001(A034856(#))]`
-/

namespace A078479.P3081706949569784366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A040001 (A034856 d).toNat

end

end A078479.P3081706949569784366

/-!
# A078480: Number of permutations p of {1,2,...,n} such that |p(i)-i| != 1 for all i.

The programs for A078480, the canonical program `A078480.P15840012077536578544` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078480 has offset 0).

The definition of A078480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078480.P15840012077536578544

`n*a(n-1)-(n-2)*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078480

/-- `n*a(n-1)-(n-2)*a(n-3)-a(n-4)` -/
def P15840012077536578544.Spec : Prop :=
  ∀ n, P15840012077536578544.a n = A078480 n

theorem P15840012077536578544.correct : P15840012077536578544.Spec := by
  intro n
  simp only [A078480]

end A078480

/-! ## A078480.P1207269431856539198

`∑[A000271(n)]`
-/

namespace A078480.P1207269431856539198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P1207269431856539198

namespace A078480

/-- `∑[A000271(n)]` -/
def P1207269431856539198.Spec : Prop :=
  ∀ n, P1207269431856539198.a n = A078480 n

end A078480

/-! ## A078480.P15995073567352521567

`∑[∑[A000179(n)]]`
-/

namespace A078480.P15995073567352521567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P15995073567352521567

namespace A078480

/-- `∑[∑[A000179(n)]]` -/
def P15995073567352521567.Spec : Prop :=
  ∀ n, P15995073567352521567.a n = A078480 n

end A078480

/-! ## A078480.P18013250199894797498

`∑[A156368(∑[n])]`
-/

namespace A078480.P18013250199894797498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P18013250199894797498

namespace A078480

/-- `∑[A156368(∑[n])]` -/
def P18013250199894797498.Spec : Prop :=
  ∀ n, P18013250199894797498.a n = A078480 n

end A078480

/-! ## A078480.P10564540783060244725

`∑[∑[A156996(∑[n])]]`
-/

namespace A078480.P10564540783060244725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P10564540783060244725

namespace A078480

/-- `∑[∑[A156996(∑[n])]]` -/
def P10564540783060244725.Spec : Prop :=
  ∀ n, P10564540783060244725.a n = A078480 n

end A078480

/-! ## A078480.P14083902680858794092

`∑[∑[A102761(n)]-1]`
-/

namespace A078480.P14083902680858794092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P14083902680858794092

namespace A078480

/-- `∑[∑[A102761(n)]-1]` -/
def P14083902680858794092.Spec : Prop :=
  ∀ n, P14083902680858794092.a n = A078480 n

end A078480

/-! ## A078480.P13928589276479827151

`∑[A058057(∑[n]+n)]`
-/

namespace A078480.P13928589276479827151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P13928589276479827151

namespace A078480

/-- `∑[A058057(∑[n]+n)]` -/
def P13928589276479827151.Spec : Prop :=
  ∀ n, P13928589276479827151.a n = A078480 n

end A078480

/-! ## A078480.P13711349138484197026

`A127548(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A078480.P13711349138484197026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A127548 n + a (n - 2)

end

end A078480.P13711349138484197026

namespace A078480

/-- `A127548(n)+a(n-2)` -/
def P13711349138484197026.Spec : Prop :=
  ∀ n, P13711349138484197026.a n = A078480 n

end A078480

/-! ## A078480.P13715384397631916732

`n!-A306511(n)`
-/

namespace A078480.P13715384397631916732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A306511 n

end

end A078480.P13715384397631916732

namespace A078480

/-- `n!-A306511(n)` -/
def P13715384397631916732.Spec : Prop :=
  ∀ n, P13715384397631916732.a n = A078480 n

theorem P13715384397631916732.correct : P13715384397631916732.Spec := by
  intro n
  simp only [A078480, Nat.add_sub_cancel, A078480.P13715384397631916732.a, A078480.P15840012077536578544.a, A306511, A306511.P12945767139372474350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078480

/-! ## A078480.P13284625001218180199

`∑[A047922(∑[n]+n)]`
-/

namespace A078480.P13284625001218180199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078480.P13284625001218180199

namespace A078480

/-- `∑[A047922(∑[n]+n)]` -/
def P13284625001218180199.Spec : Prop :=
  ∀ n, P13284625001218180199.a n = A078480 n

end A078480

/-!
# A078481: Expansion of (1 - x - x^2 - sqrt(1 - 2*x - 5*x^2 - 2*x^3 + x^4)) / (2*x + 2*x^2).

The programs for A078481, there is no canonical definition to state claims against.
-/

/-! ## A078481.P15745146816762614858

`A102407(n+1)-(A102406(n+1)+A102406(n))`
-/

namespace A078481.P15745146816762614858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102407 (n + 1) - (A102406 (n + 1) + A102406 n)

end

end A078481.P15745146816762614858

/-! ## A078481.P791213156349321297

`A094507(A152947(n+1))-A000007(n)`
-/

namespace A078481.P791213156349321297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094507 (A152947 (n + 1)).toNat - A000007 n

end

end A078481.P791213156349321297

/-! ## A078481.P4286903412033310254

`A094507(A000124(n)-n)-A000007(n)`
-/

namespace A078481.P4286903412033310254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094507 (A000124 n - (n : ℤ)).toNat - A000007 n

end

end A078481.P4286903412033310254

/-! ## A078481.P9058804941336438443

`A094507(A000124(n)-n)%record[A097331(n)]`
-/

namespace A078481.P9058804941336438443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094507 (A000124 n - (n : ℤ)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078481.P9058804941336438443

/-! ## A078481.P593440210371806631

`A054008(A088175(n+1))*A094507(A000124(n)-n)`
-/

namespace A078481.P593440210371806631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (A088175 (n + 1)).toNat * A094507 (A000124 n - (n : ℤ)).toNat

end

end A078481.P593440210371806631

/-! ## A078481.P10786778270426272500

`A094507(A000124(n)-n)%A002315(n)`
-/

namespace A078481.P10786778270426272500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094507 (A000124 n - (n : ℤ)).toNat) (A002315 n)

end

end A078481.P10786778270426272500

/-!
# A078482: Expansion of g.f. (1 - 3*x + x^2 - sqrt(1 - 6*x + 7*x^2 - 2*x^3 + x^4))/(2*x).

The programs for A078482, there is no canonical definition to state claims against.
-/

/-! ## A078482.P13714120739620043587

`∑[A272687(abs(1-n))]-1`
-/

namespace A078482.P13714120739620043587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A078482.P13714120739620043587

/-! ## A078482.P17441046338882532996

`abs(A272687(n)-∑[A272687(n)])`
-/

namespace A078482.P17441046338882532996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272687 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A078482.P17441046338882532996

/-! ## A078482.P9496354104925798880

`A000038(n+1)-(A272687(n)-∑[A272687(n)])`
-/

namespace A078482.P9496354104925798880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - (A272687 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078482.P9496354104925798880

/-! ## A078482.P8982805614940132243

`A260438(2*(n+1))-(A272687(n)-∑[A272687(n)]+1)`
-/

namespace A078482.P8982805614940132243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (2 * (n + 1)) - (A272687 n - ∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078482.P8982805614940132243

/-! ## A078482.P13949747483200741500

`-((A272687(n)-∑[A272687(n)])%A103137(n+1))`
-/

namespace A078482.P13949747483200741500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A272687 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A103137 (n + 1))

end

end A078482.P13949747483200741500

/-! ## A078482.P3783963988690327766

`-((A272687(n)-∑[A272687(n)])%A120106(n))`
-/

namespace A078482.P3783963988690327766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A272687 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A120106 n)

end

end A078482.P3783963988690327766

/-!
# A078483: Expansion of g.f. -2*x/(1 - 5*x - sqrt(1-4*x) + x*sqrt(1-4*x) + 2*x^2).

The programs for A078483, the canonical program `A078483.P6111359030099331564` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078483 has offset 0).

The definition of A078483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078483.P6111359030099331564

`∑{#}[floor(n/3), (5*#+1)*C(2*n-#+1, n-3*#)/(2*n-#+1)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078483

/-- `∑{#}[floor(n/3), (5*#+1)*C(2*n-#+1, n-3*#)/(2*n-#+1)]` -/
def P6111359030099331564.Spec : Prop :=
  ∀ n, P6111359030099331564.a n = (A078483 n : ℚ)

end A078483

/-! ## A078483.P7902848390490482713

`2*A360150(n)-A371773(n)`
-/

namespace A078483.P7902848390490482713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360150 n - A371773 n

end

end A078483.P7902848390490482713

namespace A078483

/-- `2*A360150(n)-A371773(n)` -/
def P7902848390490482713.Spec : Prop :=
  ∀ n, P7902848390490482713.a n = A078483 n

end A078483

/-! ## A078483.P13482031579118289691

`A028310(∑[A278026(n+1)])`
-/

namespace A078483.P13482031579118289691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078483.P13482031579118289691

namespace A078483

/-- `A028310(∑[A278026(n+1)])` -/
def P13482031579118289691.Spec : Prop :=
  ∀ n, P13482031579118289691.a n = A078483 n

end A078483

/-! ## A078483.P2516567397412772464

`A363812(n)-A099618(A000246(n))`
-/

namespace A078483.P2516567397412772464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363812 n - A099618 (A000246 n).toNat

end

end A078483.P2516567397412772464

namespace A078483

/-- `A363812(n)-A099618(A000246(n))` -/
def P2516567397412772464.Spec : Prop :=
  ∀ n, P2516567397412772464.a n = A078483 n

end A078483

/-!
# A078484: G.f.: -x*(1-2*x+2*x^2)/(2*x^3-4*x^2+4*x-1).

The programs for A078484, the canonical program `A078484.P7462744529974171622` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078484 has offset 0).

The definition of A078484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078484.P7462744529974171622

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078484

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P7462744529974171622.Spec : Prop :=
  ∀ n, P7462744529974171622.a n = A078484 n

theorem P7462744529974171622.correct : P7462744529974171622.Spec := by
  intro n
  simp only [A078484]

end A078484

/-! ## A078484.P67902855060692044

`ogf((x-2x^2+2x^3)/(1-4x+4x^2-2x^3))`
-/

namespace A078484.P67902855060692044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -4, 4, -2] n

end

end A078484.P67902855060692044

namespace A078484

/-- `ogf((x-2x^2+2x^3)/(1-4x+4x^2-2x^3))` -/
def P67902855060692044.Spec : Prop :=
  ∀ n, P67902855060692044.a n = A078484 n

end A078484

/-! ## A078484.P12776480733181696590

`∑[A115390(char[1]+n)]`
-/

namespace A078484.P12776480733181696590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078484.P12776480733181696590

namespace A078484

/-- `∑[A115390(char[1]+n)]` -/
def P12776480733181696590.Spec : Prop :=
  ∀ n, P12776480733181696590.a n = A078484 n

end A078484

/-! ## A078484.P8024580097967688538

`∑[A115390(n)]+ceil(sin(n)²)`
-/

namespace A078484.P8024580097967688538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A078484.P8024580097967688538

namespace A078484

/-- `∑[A115390(n)]+ceil(sin(n)²)` -/
def P8024580097967688538.Spec : Prop :=
  ∀ n, P8024580097967688538.a n = A078484 n

end A078484

/-! ## A078484.P5221101014502629537

`A103685(n)+A057427(n)`
-/

namespace A078484.P5221101014502629537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n + A057427 n

end

end A078484.P5221101014502629537

namespace A078484

/-- `A103685(n)+A057427(n)` -/
def P5221101014502629537.Spec : Prop :=
  ∀ n, P5221101014502629537.a n = A078484 n

end A078484

/-! ## A078484.P4707344845519944003

`A103685(n)-A057428(n)`
-/

namespace A078484.P4707344845519944003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n - A057428 n

end

end A078484.P4707344845519944003

namespace A078484

/-- `A103685(n)-A057428(n)` -/
def P4707344845519944003.Spec : Prop :=
  ∀ n, P4707344845519944003.a n = A078484 n

end A078484

/-! ## A078484.P5768704264905172297

`A057427(n)+∑[A115390(n)]`
-/

namespace A078484.P5768704264905172297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078484.P5768704264905172297

namespace A078484

/-- `A057427(n)+∑[A115390(n)]` -/
def P5768704264905172297.Spec : Prop :=
  ∀ n, P5768704264905172297.a n = A078484 n

end A078484

/-! ## A078484.P15857247785727791427

`(A103685(n)+1)%A117189(n)`
-/

namespace A078484.P15857247785727791427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103685 n + 1) (A117189 n)

end

end A078484.P15857247785727791427

namespace A078484

/-- `(A103685(n)+1)%A117189(n)` -/
def P15857247785727791427.Spec : Prop :=
  ∀ n, P15857247785727791427.a n = A078484 n

end A078484

/-! ## A078484.P11006864863128274374

`A019429(2*n)+∑[A115390(n)]`
-/

namespace A078484.P11006864863128274374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078484.P11006864863128274374

namespace A078484

/-- `A019429(2*n)+∑[A115390(n)]` -/
def P11006864863128274374.Spec : Prop :=
  ∀ n, P11006864863128274374.a n = A078484 n

end A078484

/-! ## A078484.P10648051034998456568

`A103685(n)+char[A127388(n+1)]`
-/

namespace A078484.P10648051034998456568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A078484.P10648051034998456568

namespace A078484

/-- `A103685(n)+char[A127388(n+1)]` -/
def P10648051034998456568.Spec : Prop :=
  ∀ n, P10648051034998456568.a n = A078484 n

end A078484

/-! ## A078484.P603572115471797762

`∑[gcd(A073357(n)%2, A115390(n))]`
-/

namespace A078484.P603572115471797762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A073357 n) 2) (A115390 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078484.P603572115471797762

namespace A078484

/-- `∑[gcd(A073357(n)%2, A115390(n))]` -/
def P603572115471797762.Spec : Prop :=
  ∀ n, (P603572115471797762.a n : ℤ) = A078484 n

end A078484

/-! ## A078484.P3614564629471745677

`A103685(n)+1-A063524(n+1)`
-/

namespace A078484.P3614564629471745677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n + 1 - A063524 (n + 1)

end

end A078484.P3614564629471745677

namespace A078484

/-- `A103685(n)+1-A063524(n+1)` -/
def P3614564629471745677.Spec : Prop :=
  ∀ n, P3614564629471745677.a n = A078484 n

end A078484

/-! ## A078484.P7219653085981901648

`A309026(A086342(n))+∑[A115390(n)]`
-/

namespace A078484.P7219653085981901648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 (A086342 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078484.P7219653085981901648

namespace A078484

/-- `A309026(A086342(n))+∑[A115390(n)]` -/
def P7219653085981901648.Spec : Prop :=
  ∀ n, P7219653085981901648.a n = A078484 n

end A078484

/-! ## A078484.P17326949186174791383

`A099216(n)-A099216(A028310(n)-1)`
-/

namespace A078484.P17326949186174791383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099216 n - A099216 (A028310 n - 1).toNat

end

end A078484.P17326949186174791383

namespace A078484

/-- `A099216(n)-A099216(A028310(n)-1)` -/
def P17326949186174791383.Spec : Prop :=
  ∀ n, P17326949186174791383.a n = A078484 n

end A078484

/-! ## A078484.P14770302248003350342

`(A117189(n)-A073357(n))%A117189(n)`
-/

namespace A078484.P14770302248003350342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117189 n - A073357 n) (A117189 n)

end

end A078484.P14770302248003350342

namespace A078484

/-- `(A117189(n)-A073357(n))%A117189(n)` -/
def P14770302248003350342.Spec : Prop :=
  ∀ n, P14770302248003350342.a n = A078484 n

end A078484

/-!
# A078485: Number of irreducible indecomposable permutations of degree n.

The programs for A078485, the canonical program `A078485.P15658383341369921247` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078485 has offset 0).

The definition of A078485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078485.P11095531042195639280

`ogf((x-2x^2+6x^4-4x^5)/(1-3x+2x^2))`
-/

namespace A078485.P11095531042195639280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 0, 6, -4] [1, -3, 2] n

end

end A078485.P11095531042195639280

namespace A078485

/-- `ogf((x-2x^2+6x^4-4x^5)/(1-3x+2x^2))` -/
def P11095531042195639280.Spec : Prop :=
  ∀ n, P11095531042195639280.a n = A078485 n

end A078485

/-! ## A078485.P15658383341369921247

`3*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=7, a(5)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078485

/-- `3*a(n-1)-2*a(n-2)` -/
def P15658383341369921247.Spec : Prop :=
  ∀ n, P15658383341369921247.a n = A078485 n

theorem P15658383341369921247.correct : P15658383341369921247.Spec := by
  intro n
  simp only [A078485]

end A078485

/-! ## A078485.P11950064440697483708

`2*or(2, a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A078485.P11950064440697483708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * Nat.lor 2 (a (n - 1)) + 1

end

end A078485.P11950064440697483708

namespace A078485

/-- `2*or(2, a(n-1))+1` -/
def P11950064440697483708.Spec : Prop :=
  ∀ n, (P11950064440697483708.a n : ℤ) = A078485 n

end A078485

/-! ## A078485.P4813361303929978187

`or(xor(n, 2*a(n-1)), a(n-1))` with `a(0)=0`
-/

namespace A078485.P4813361303929978187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (Nat.xor n (2 * a (n - 1))) (a (n - 1))

end

end A078485.P4813361303929978187

namespace A078485

/-- `or(xor(n, 2*a(n-1)), a(n-1))` -/
def P4813361303929978187.Spec : Prop :=
  ∀ n, (P4813361303929978187.a n : ℤ) = A078485 n

end A078485

/-! ## A078485.P6646614591808763951

`or(xor(n, lcm(2, a(n-1))), a(n-1))` with `a(0)=0`
-/

namespace A078485.P6646614591808763951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (Nat.xor n (Nat.lcm 2 (a (n - 1)))) (a (n - 1))

end

end A078485.P6646614591808763951

namespace A078485

/-- `or(xor(n, lcm(2, a(n-1))), a(n-1))` -/
def P6646614591808763951.Spec : Prop :=
  ∀ n, (P6646614591808763951.a n : ℤ) = A078485 n

end A078485

/-! ## A078485.P9822850393257217485

`or(xor(n, a(n-1)+a(n-1)), a(n-1))` with `a(0)=0`
-/

namespace A078485.P9822850393257217485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (Nat.xor n (a (n - 1) + a (n - 1))) (a (n - 1))

end

end A078485.P9822850393257217485

namespace A078485

/-- `or(xor(n, a(n-1)+a(n-1)), a(n-1))` -/
def P9822850393257217485.Spec : Prop :=
  ∀ n, (P9822850393257217485.a n : ℤ) = A078485 n

end A078485

/-! ## A078485.P16717452139533212190

`A088041(n+1)-A084099(A092533(n))`
-/

namespace A078485.P16717452139533212190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) - A084099 (A092533 n).toNat

end

end A078485.P16717452139533212190

namespace A078485

/-- `A088041(n+1)-A084099(A092533(n))` -/
def P16717452139533212190.Spec : Prop :=
  ∀ n, P16717452139533212190.a n = A078485 n

end A078485

/-! ## A078485.P2314165433668712647

`A011782(n)-A324300(C(n, A154383(n)))`
-/

namespace A078485.P2314165433668712647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A324300 (Nat.choose n (A154383 n).toNat)

end

end A078485.P2314165433668712647

namespace A078485

/-- `A011782(n)-A324300(C(n, A154383(n)))` -/
def P2314165433668712647.Spec : Prop :=
  ∀ n, P2314165433668712647.a n = A078485 n

end A078485

/-! ## A078485.P17860470369754777133

`A088041(n+1)+A084099(A092533(n)+2)`
-/

namespace A078485.P17860470369754777133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) + A084099 (A092533 n + 2).toNat

end

end A078485.P17860470369754777133

namespace A078485

/-- `A088041(n+1)+A084099(A092533(n)+2)` -/
def P17860470369754777133.Spec : Prop :=
  ∀ n, P17860470369754777133.a n = A078485 n

end A078485

/-! ## A078485.P3916944132341434941

`A000051(n)%A056469(n%A000045(n+1))`
-/

namespace A078485.P3916944132341434941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A056469 (Int.tmod (n : ℤ) (A000045 (n + 1))).toNat)

end

end A078485.P3916944132341434941

namespace A078485

/-- `A000051(n)%A056469(n%A000045(n+1))` -/
def P3916944132341434941.Spec : Prop :=
  ∀ n, P3916944132341434941.a n = A078485 n

end A078485

/-! ## A078485.P3114148651871901946

`A290683(n)%A110164(n)`
-/

namespace A078485.P3114148651871901946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290683 n) (A110164 n)

end

end A078485.P3114148651871901946

namespace A078485

/-- `A290683(n)%A110164(n)` -/
def P3114148651871901946.Spec : Prop :=
  ∀ n, P3114148651871901946.a n = A078485 n

end A078485

/-! ## A078485.P11566329986237133004

`A088041(n+1)%A327559(n+1)`
-/

namespace A078485.P11566329986237133004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088041 (n + 1)) (A327559 (n + 1))

end

end A078485.P11566329986237133004

namespace A078485

/-- `A088041(n+1)%A327559(n+1)` -/
def P11566329986237133004.Spec : Prop :=
  ∀ n, P11566329986237133004.a n = A078485 n

end A078485

/-!
# A078486: Expansion of (x-7*x^2+19*x^3-21*x^4+10*x^5-6*x^6) / (1-9*x+31*x^2-53*x^3+44*x^4-16*x^5+6*x^6).

The programs for A078486, the canonical program `A078486.P3679292448395638830` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078486 has offset 0).

The definition of A078486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-7x^2+19x^3-21x^4+10x^5-6x^6)/(1-9x+31x^2-53x^3+44x^4-16x^5+6x^6))` (program `A078486.P3679292448395638830`, by `A078486.P3679292448395638830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078486.P3679292448395638830

`ogf((x-7x^2+19x^3-21x^4+10x^5-6x^6)/(1-9x+31x^2-53x^3+44x^4-16x^5+6x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078486

/-- `ogf((x-7x^2+19x^3-21x^4+10x^5-6x^6)/(1-9x+31x^2-53x^3+44x^4-16x^5+6x^6))` -/
def P3679292448395638830.Spec : Prop :=
  ∀ n, P3679292448395638830.a n = A078486 n

theorem P3679292448395638830.correct : P3679292448395638830.Spec := by
  intro n
  simp only [A078486]

end A078486

/-! ## A078486.P1634428813208686584

`A215090(Δ[Δ[A007469(n+1)]])`
-/

namespace A078486.P1634428813208686584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (f1 (n + 1) - f1 n).toNat

end

end A078486.P1634428813208686584

namespace A078486

/-- `A215090(Δ[Δ[A007469(n+1)]])` -/
def P1634428813208686584.Spec : Prop :=
  ∀ n, P1634428813208686584.a n = A078486 n

end A078486

/-! ## A078486.P6780493490016515325

`A087010(A074324(n)+ceil(5^n/2))`
-/

namespace A078486.P6780493490016515325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (A074324 n + ⌈(5 ^ n : ℚ) / 2⌉).toNat

end

end A078486.P6780493490016515325

namespace A078486

/-- `A087010(A074324(n)+ceil(5^n/2))` -/
def P6780493490016515325.Spec : Prop :=
  ∀ n, P6780493490016515325.a n = A078486 n

end A078486

/-!
# A078487: G.f.: (1-9*x+29*x^2-30*x^3+10*x^4-x^5-(1-6*x+x^2)^(1/2)*(1-6*x+13*x^2-7*x^3+x^4))/(2*x).

The programs for A078487, there is no canonical definition to state claims against.
-/

/-! ## A078487.P5974901097662197199

`A110656(∑[A150822(n)]-1)`
-/

namespace A078487.P5974901097662197199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A078487.P5974901097662197199

/-! ## A078487.P5737722238644778290

`A195177(A150663(n)-1+n)`
-/

namespace A078487.P5737722238644778290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A150663 n - 1 + (n : ℤ)).toNat

end

end A078487.P5737722238644778290

/-! ## A078487.P10842066418540832184

`A195177(n-(1-A150663(n)))`
-/

namespace A078487.P10842066418540832184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 ((n : ℤ) - (1 - A150663 n)).toNat

end

end A078487.P10842066418540832184

/-!
# A078488: First differences of coefficients of g.f. (1-x)^24.

The programs for A078488, the canonical program `A078488.P3165912564717000144` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078488 has offset 1).

The definition of A078488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078488.P3165912564717000144

`(-1)^(n+1)*C(25, n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078488

/-- `(-1)^(n+1)*C(25, n+1)` -/
def P3165912564717000144.Spec : Prop :=
  ∀ n, P3165912564717000144.a n = A078488 (n + 1)

theorem P3165912564717000144.correct : P3165912564717000144.Spec := by
  intro n
  simp only [A078488, Nat.add_sub_cancel]

end A078488

/-!
# A078489: a(n)=j such that binomial(n,j)<binomial(n-1,j-2).

The programs for A078489, the canonical program `A078489.P12901953989768602075` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078489 has offset 1).

The definition of A078489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078489.P3230450314457988109

`floor(ϕ*(acot(acot(8))+n))-n`
-/

namespace A078489.P3230450314457988109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (SequenceMachineLib.acot (SequenceMachineLib.acot (8 : ℝ)) + (n : ℝ))⌋ - (n : ℤ)

end

end A078489.P3230450314457988109

namespace A078489

/-- `floor(ϕ*(acot(acot(8))+n))-n` -/
def P3230450314457988109.Spec : Prop :=
  ∀ n, P3230450314457988109.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P3071832677461748277

`record[floor(sqrt((n+a(n-1))*n))]-n` with `a(0)=2`
-/

namespace A078489.P3071832677461748277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.sqrt ((n + f1 (n - 1)) * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A078489.P3071832677461748277

namespace A078489

/-- `record[floor(sqrt((n+a(n-1))*n))]-n` -/
def P3071832677461748277.Spec : Prop :=
  ∀ n, P3071832677461748277.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P12901953989768602075

`n+1-floor(n-(n+1)²/(a(n-1)+n+1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078489

/-- `n+1-floor(n-(n+1)²/(a(n-1)+n+1))` -/
def P12901953989768602075.Spec : Prop :=
  ∀ n, P12901953989768602075.a n = A078489 (n + 1)

theorem P12901953989768602075.correct : P12901953989768602075.Spec := by
  intro n
  simp only [A078489, Nat.add_sub_cancel]

end A078489

/-! ## A078489.P12054392797089403325

`A003258(1+n)-n`
-/

namespace A078489.P12054392797089403325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (1 + n) - (n : ℤ)

end

end A078489.P12054392797089403325

namespace A078489

/-- `A003258(1+n)-n` -/
def P12054392797089403325.Spec : Prop :=
  ∀ n, P12054392797089403325.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P13572762279982267469

`floor(A028387(n)/floor(ϕ*(n+1)))+1`
-/

namespace A078489.P13572762279982267469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028387 n : ℚ) / (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℚ)⌋ + 1

end

end A078489.P13572762279982267469

namespace A078489

/-- `floor(A028387(n)/floor(ϕ*(n+1)))+1` -/
def P13572762279982267469.Spec : Prop :=
  ∀ n, P13572762279982267469.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P11623764991261442957

`ceil((n+1)²/(A099267(n+1)+1))+1`
-/

namespace A078489.P11623764991261442957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / (A099267 (n + 1) + 1 : ℚ)⌉ + 1

end

end A078489.P11623764991261442957

namespace A078489

/-- `ceil((n+1)²/(A099267(n+1)+1))+1` -/
def P11623764991261442957.Spec : Prop :=
  ∀ n, P11623764991261442957.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P13650195572156958275

`ceil(A199910(n+1)/A000201(2*(n+1)))`
-/

namespace A078489.P13650195572156958275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199910 (n + 1) : ℚ) / (A000201 (2 * (n + 1)) : ℚ)⌉

end

end A078489.P13650195572156958275

namespace A078489

/-- `ceil(A199910(n+1)/A000201(2*(n+1)))` -/
def P13650195572156958275.Spec : Prop :=
  ∀ n, P13650195572156958275.a n = A078489 (n + 1)

end A078489

/-! ## A078489.P16973801083793832086

`A247432(n+1)-A016789(n)`
-/

namespace A078489.P16973801083793832086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247432 (n + 1) - A016789 n

end

end A078489.P16973801083793832086

namespace A078489

/-- `A247432(n+1)-A016789(n)` -/
def P16973801083793832086.Spec : Prop :=
  ∀ n, P16973801083793832086.a n = A078489 (n + 1)

end A078489

/-!
# A078491: a(n) = lcm(1..Catalan(n)).

The programs for A078491, the canonical program `A078491.P15167737144172905274` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078491 has offset 0).

The definition of A078491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078491.P15167737144172905274

`A003418(A000108(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078491

/-- `A003418(A000108(n))` -/
def P15167737144172905274.Spec : Prop :=
  ∀ n, P15167737144172905274.a n = A078491 n

theorem P15167737144172905274.correct : P15167737144172905274.Spec := by
  intro n
  simp only [A078491]

end A078491

/-! ## A078491.P8421362032619856480

`A003418(abs(A168491(n)))`
-/

namespace A078491.P8421362032619856480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 |A168491 n|.toNat

end

end A078491.P8421362032619856480

namespace A078491

/-- `A003418(abs(A168491(n)))` -/
def P8421362032619856480.Spec : Prop :=
  ∀ n, P8421362032619856480.a n = A078491 n

end A078491

/-! ## A078491.P7081431533928415773

`A003418(A060693(∑[n]))`
-/

namespace A078491.P7081431533928415773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A060693 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078491.P7081431533928415773

namespace A078491

/-- `A003418(A060693(∑[n]))` -/
def P7081431533928415773.Spec : Prop :=
  ∀ n, P7081431533928415773.a n = A078491 n

end A078491

/-!
# A078492: No-prime decades.

The programs for A078492, there is no canonical definition to state claims against.
-/

/-! ## A078492.P11063224558165090182

`A076192(n+1)-1`
-/

namespace A078492.P11063224558165090182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076192 (n + 1) - 1

end

end A078492.P11063224558165090182

/-! ## A078492.P15725631664575780616

`10*A032352(n+1)`
-/

namespace A078492.P15725631664575780616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A032352 (n + 1)

end

end A078492.P15725631664575780616

/-! ## A078492.P17512719252723169698

`10*eq[0, A038800(n)]`
-/

namespace A078492.P17512719252723169698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078492.P17512719252723169698

/-! ## A078492.P15903237616614921670

`∩[10*n, A298008(n+1)]`
-/

namespace A078492.P15903237616614921670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P15903237616614921670

/-! ## A078492.P15613919611922272314

`A008592(A032352(n+1))`
-/

namespace A078492.P15613919611922272314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A032352 (n + 1)).toNat

end

end A078492.P15613919611922272314

/-! ## A078492.P4255387870917318317

`A008592(eq[0, A038800(n)])`
-/

namespace A078492.P4255387870917318317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078492.P4255387870917318317

/-! ## A078492.P1300508675950579756

`A008592(lt[9, A091088(n)])`
-/

namespace A078492.P1300508675950579756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A078492.P1300508675950579756

/-! ## A078492.P10509981722914812060

`∩[A298008(n+1), A008592(n)]`
-/

namespace A078492.P10509981722914812060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P10509981722914812060

/-! ## A078492.P10262576242565957805

`∩[A298008(n+1), A370532(n+1)]`
-/

namespace A078492.P10262576242565957805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P10262576242565957805

/-! ## A078492.P441157354848139456

`∩[A298008(n+1), A396948(n+1)]`
-/

namespace A078492.P441157354848139456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P441157354848139456

/-! ## A078492.P2968054762686490151

`∩[A076150(2*n+1), 10*(n+1)]`
-/

namespace A078492.P2968054762686490151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A078492.P2968054762686490151

/-! ## A078492.P14323450797666516587

`∩[A008592(n), A076150(n+1)]`
-/

namespace A078492.P14323450797666516587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P14323450797666516587

/-! ## A078492.P3828834063951169671

`∩[A118118(n+1), A008592(n)]`
-/

namespace A078492.P3828834063951169671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P3828834063951169671

/-! ## A078492.P9197915607890271579

`∩[A118118(n+1), A359841(n+1)]`
-/

namespace A078492.P9197915607890271579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P9197915607890271579

/-! ## A078492.P3468332197993610072

`∩[A118118(n+1), A370532(n+1)]`
-/

namespace A078492.P3468332197993610072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P3468332197993610072

/-! ## A078492.P16052489995120145007

`∩[A118118(n+1), A396948(n+1)]`
-/

namespace A078492.P16052489995120145007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P16052489995120145007

/-! ## A078492.P71338603842602136

`A192545(6*n+1)`
-/

namespace A078492.P71338603842602136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192545 (6 * n + 1)

end

end A078492.P71338603842602136

/-! ## A078492.P4752102094061018063

`A192545(A016921(n)+1)-2`
-/

namespace A078492.P4752102094061018063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192545 (A016921 n + 1).toNat - 2

end

end A078492.P4752102094061018063

/-! ## A078492.P2176792709500249289

`∩[A192545(n+1), A008592(n)]`
-/

namespace A078492.P2176792709500249289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P2176792709500249289

/-! ## A078492.P17975648399611714687

`∩[A192545(n+1), A359841(n+1)]`
-/

namespace A078492.P17975648399611714687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078492.P17975648399611714687

/-!
# A078493: One-prime decades.

The programs for A078493, the canonical program `A078493.P1150517547966891059` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078493 has offset 0).

The definition of A078493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078493.P1150517547966891059

`10*A216292(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078493

/-- `10*A216292(n+1)` -/
def P1150517547966891059.Spec : Prop :=
  ∀ n, P1150517547966891059.a n = A078493 n

theorem P1150517547966891059.correct : P1150517547966891059.Spec := by
  intro n
  simp only [A078493]

end A078493

/-! ## A078493.P7415027380913575471

`10*floor(A078494(n+1)/10)`
-/

namespace A078493.P7415027380913575471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A078494 (n + 1) : ℚ) / 10⌋

end

end A078493.P7415027380913575471

namespace A078493

/-- `10*floor(A078494(n+1)/10)` -/
def P7415027380913575471.Spec : Prop :=
  ∀ n, P7415027380913575471.a n = A078493 n

end A078493

/-! ## A078493.P7316260941858958395

`10*eq[1, A038800(n)]`
-/

namespace A078493.P7316260941858958395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078493.P7316260941858958395

namespace A078493

/-- `10*eq[1, A038800(n)]` -/
def P7316260941858958395.Spec : Prop :=
  ∀ n, (P7316260941858958395.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P7201584381604811586

`A008592(A216292(n+1))`
-/

namespace A078493.P7201584381604811586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A216292 (n + 1)).toNat

end

end A078493.P7201584381604811586

namespace A078493

/-- `A008592(A216292(n+1))` -/
def P7201584381604811586.Spec : Prop :=
  ∀ n, P7201584381604811586.a n = A078493 n

end A078493

/-! ## A078493.P12702862678095968746

`A008592(eq[1, A038800(n)])`
-/

namespace A078493.P12702862678095968746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078493.P12702862678095968746

namespace A078493

/-- `A008592(eq[1, A038800(n)])` -/
def P12702862678095968746.Spec : Prop :=
  ∀ n, P12702862678095968746.a n = A078493 n

end A078493

/-! ## A078493.P13568947366021742169

`∩[A050652(n+1), A008592(n)]`
-/

namespace A078493.P13568947366021742169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078493.P13568947366021742169

namespace A078493

/-- `∩[A050652(n+1), A008592(n)]` -/
def P13568947366021742169.Spec : Prop :=
  ∀ n, (P13568947366021742169.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P4561229017226027203

`∩[A050652(n+1), A359841(n+1)]`
-/

namespace A078493.P4561229017226027203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078493.P4561229017226027203

namespace A078493

/-- `∩[A050652(n+1), A359841(n+1)]` -/
def P4561229017226027203.Spec : Prop :=
  ∀ n, (P4561229017226027203.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P11567158862419646890

`∩[A050652(n+1), A370532(n+1)]`
-/

namespace A078493.P11567158862419646890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078493.P11567158862419646890

namespace A078493

/-- `∩[A050652(n+1), A370532(n+1)]` -/
def P11567158862419646890.Spec : Prop :=
  ∀ n, (P11567158862419646890.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P3248647054210835339

`∩[A050652(n+1), A396948(n+1)]`
-/

namespace A078493.P3248647054210835339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078493.P3248647054210835339

namespace A078493

/-- `∩[A050652(n+1), A396948(n+1)]` -/
def P3248647054210835339.Spec : Prop :=
  ∀ n, (P3248647054210835339.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P379494249453293466

`10*eq[1, A209252(10*n)]`
-/

namespace A078493.P379494249453293466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078493.P379494249453293466

namespace A078493

/-- `10*eq[1, A209252(10*n)]` -/
def P379494249453293466.Spec : Prop :=
  ∀ n, (P379494249453293466.a n : ℤ) = A078493 n

end A078493

/-! ## A078493.P18091172397672097529

`A169932(A078494(n+1))`
-/

namespace A078493.P18091172397672097529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 (A078494 (n + 1)).toNat

end

end A078493.P18091172397672097529

namespace A078493

/-- `A169932(A078494(n+1))` -/
def P18091172397672097529.Spec : Prop :=
  ∀ n, P18091172397672097529.a n = A078493 n

end A078493

/-!
# A078494: Primes occurring only once in their decade.

The programs for A078494, the canonical program `A078494.P14448011269337969638` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078494 has offset 1).

The definition of A078494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078494.P13517273397389393651

`A030665(A216292(n+1))`
-/

namespace A078494.P13517273397389393651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A216292 (n + 1)).toNat

end

end A078494.P13517273397389393651

namespace A078494

/-- `A030665(A216292(n+1))` -/
def P13517273397389393651.Spec : Prop :=
  ∀ n, P13517273397389393651.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P7538179155978589740

`A030665(eq[1, A038800(n)])`
-/

namespace A078494.P7538179155978589740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P7538179155978589740

namespace A078494

/-- `A030665(eq[1, A038800(n)])` -/
def P7538179155978589740.Spec : Prop :=
  ∀ n, P7538179155978589740.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P5494972080373404438

`A179816(eq[1, A038800(n)])`
-/

namespace A078494.P5494972080373404438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P5494972080373404438

namespace A078494

/-- `A179816(eq[1, A038800(n)])` -/
def P5494972080373404438.Spec : Prop :=
  ∀ n, P5494972080373404438.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P14448011269337969638

`A218255(eq[1, A038800(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078494

/-- `A218255(eq[1, A038800(n)])` -/
def P14448011269337969638.Spec : Prop :=
  ∀ n, P14448011269337969638.a n = A078494 (n + 1)

theorem P14448011269337969638.correct : P14448011269337969638.Spec := by
  intro n
  simp only [A078494, Nat.add_sub_cancel]

end A078494

/-! ## A078494.P16593905291524572557

`A122072(A216292(n+1)+1)`
-/

namespace A078494.P16593905291524572557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (A216292 (n + 1) + 1).toNat

end

end A078494.P16593905291524572557

namespace A078494

/-- `A122072(A216292(n+1)+1)` -/
def P16593905291524572557.Spec : Prop :=
  ∀ n, P16593905291524572557.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P9907468790747776052

`A122072(eq[1, A038800(n)]+1)`
-/

namespace A078494.P9907468790747776052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078494.P9907468790747776052

namespace A078494

/-- `A122072(eq[1, A038800(n)]+1)` -/
def P9907468790747776052.Spec : Prop :=
  ∀ n, P9907468790747776052.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P2260545923928656817

`p?[gcd(A122072(n+1), A218255(n))]`
-/

namespace A078494.P2260545923928656817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122072 (n + 1)) (A218255 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078494.P2260545923928656817

namespace A078494

/-- `p?[gcd(A122072(n+1), A218255(n))]` -/
def P2260545923928656817.Spec : Prop :=
  ∀ n, (P2260545923928656817.a n : ℤ) = A078494 (n + 1)

end A078494

/-! ## A078494.P1188731105128329434

`A218255(eq[1, A122072(n+1)/A218255(n)])`
-/

namespace A078494.P1188731105128329434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122072 (n + 1) : ℚ) / (A218255 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A078494.P1188731105128329434

namespace A078494

/-- `A218255(eq[1, A122072(n+1)/A218255(n)])` -/
def P1188731105128329434.Spec : Prop :=
  ∀ n, P1188731105128329434.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P14437362620179502591

`p?[eq[1, A048853(n+1)]+2]`
-/

namespace A078494.P14437362620179502591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078494.P14437362620179502591

namespace A078494

/-- `p?[eq[1, A048853(n+1)]+2]` -/
def P14437362620179502591.Spec : Prop :=
  ∀ n, (P14437362620179502591.a n : ℤ) = A078494 (n + 1)

end A078494

/-! ## A078494.P7228779974241163529

`A007918(A078493(n))`
-/

namespace A078494.P7228779974241163529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A078493 n).toNat

end

end A078494.P7228779974241163529

namespace A078494

/-- `A007918(A078493(n))` -/
def P7228779974241163529.Spec : Prop :=
  ∀ n, P7228779974241163529.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P2040442224466032855

`eq[2, A038800(A059995(n))*A327859(n)]`
-/

namespace A078494.P2040442224466032855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A059995 n).toNat * A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078494.P2040442224466032855

namespace A078494

/-- `eq[2, A038800(A059995(n))*A327859(n)]` -/
def P2040442224466032855.Spec : Prop :=
  ∀ n, (P2040442224466032855.a n : ℤ) = A078494 (n + 1)

end A078494

/-! ## A078494.P555394812028490354

`A218255(eq[A122072(n+1), A256481(n)])`
-/

namespace A078494.P555394812028490354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A078494.P555394812028490354

namespace A078494

/-- `A218255(eq[A122072(n+1), A256481(n)])` -/
def P555394812028490354.Spec : Prop :=
  ∀ n, P555394812028490354.a n = A078494 (n + 1)

end A078494

/-! ## A078494.P17610122184045366673

`A256481(eq[A122072(n+1), A256481(n)])`
-/

namespace A078494.P17610122184045366673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A078494.P17610122184045366673

namespace A078494

/-- `A256481(eq[A122072(n+1), A256481(n)])` -/
def P17610122184045366673.Spec : Prop :=
  ∀ n, P17610122184045366673.a n = A078494 (n + 1)

end A078494

/-!
# A078495: a(n) = (a(n-1) * a(n-6) + a(n-3) * a(n-4)) / a(n-7) (a variant of Somos-7).

The programs for A078495, the canonical program `A078495.P5440528365581570052` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078495 has offset 0).

The definition of A078495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078495.P5440528365581570052

`(a(n-1)*a(n-6)+a(n-3)*a(n-4))/a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078495

/-- `(a(n-1)*a(n-6)+a(n-3)*a(n-4))/a(n-7)` -/
def P5440528365581570052.Spec : Prop :=
  ∀ n, P5440528365581570052.a n = (A078495 n : ℚ)

end A078495

/-!
# A078496: Smallest prime p such that p>n and 2*n-p is also prime.

The programs for A078496, there is no canonical definition to state claims against.
-/

/-! ## A078496.P9119714308969552549

`A082467(n+4)+4+n`
-/

namespace A078496.P9119714308969552549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4) + (4 + n : ℤ)

end

end A078496.P9119714308969552549

/-! ## A078496.P8956468427654682233

`sqrt(A143697(n+4))+4+n`
-/

namespace A078496.P8956468427654682233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 (n + 4) : ℝ) + 4 + (n : ℝ)

end

end A078496.P8956468427654682233

/-! ## A078496.P12315156481107362067

`A020744(n)-A078587(n+4)`
-/

namespace A078496.P12315156481107362067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n - A078587 (n + 4)

end

end A078496.P12315156481107362067

/-! ## A078496.P1098602531255183668

`A020705(n)+sqrt(A143697(n+4))`
-/

namespace A078496.P1098602531255183668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020705 n : ℝ) + Real.sqrt (A143697 (n + 4) : ℝ)

end

end A078496.P1098602531255183668

/-! ## A078496.P10690053627404768016

`2*A020705(n)-A078587(n+4)`
-/

namespace A078496.P10690053627404768016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020705 n - A078587 (n + 4)

end

end A078496.P10690053627404768016

/-! ## A078496.P8800510049831107785

`A005843(n)+8-A078587(n+4)`
-/

namespace A078496.P8800510049831107785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (8 - A078587 (n + 4))

end

end A078496.P8800510049831107785

/-! ## A078496.P15297867184059555151

`A020705(A020705(n)-A078587(n+4))+n`
-/

namespace A078496.P15297867184059555151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A020705 n - A078587 (n + 4)).toNat + (n : ℤ)

end

end A078496.P15297867184059555151

/-! ## A078496.P12649713950126922432

`A020705(A082467(n+4)+n)`
-/

namespace A078496.P12649713950126922432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A082467 (n + 4) + (n : ℤ)).toNat

end

end A078496.P12649713950126922432

/-! ## A078496.P3870382579516460441

`A020744(n)-A241686(n+4)`
-/

namespace A078496.P3870382579516460441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n - A241686 (n + 4)

end

end A078496.P3870382579516460441

/-! ## A078496.P9627378333371385009

`A138567(n+4)+4+n`
-/

namespace A078496.P9627378333371385009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138567 (n + 4) + 4 + (n : ℤ)

end

end A078496.P9627378333371385009

/-!
# A078497: The member r of a triple of primes (p,q,r) in arithmetic progression which sum to 3*prime(n) = A001748(n) = p + q + r.

The programs for A078497, there is no canonical definition to state claims against.
-/

/-! ## A078497.P9142397470272912512

`A215848(n+1)+A078611(n+3)`
-/

namespace A078497.P9142397470272912512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + A078611 (n + 3)

end

end A078497.P9142397470272912512

/-! ## A078497.P4889237826015568537

`A078611(n+3)+A129758(n+3)+A078611(n+3)`
-/

namespace A078497.P4889237826015568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078611 (n + 3) + (A129758 (n + 3) + A078611 (n + 3))

end

end A078497.P4889237826015568537

/-! ## A078497.P6644802885413127455

`A078611(n+3)+A000040(n+3)`
-/

namespace A078497.P6644802885413127455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078611 (n + 3) + A000040 (n + 3)

end

end A078497.P6644802885413127455

/-! ## A078497.P7766511306850543894

`A078496(p?[2*n+5])`
-/

namespace A078497.P7766511306850543894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078497.P7766511306850543894

/-! ## A078497.P4994645909322242464

`A078496(A215848(n+1))`
-/

namespace A078497.P4994645909322242464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A215848 (n + 1)).toNat

end

end A078497.P4994645909322242464

/-! ## A078497.P12999335904444102217

`A078496(A045344(n+2))`
-/

namespace A078497.P12999335904444102217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A045344 (n + 2)).toNat

end

end A078497.P12999335904444102217

/-! ## A078497.P9616846084677038388

`A078496(A065091(n+2))`
-/

namespace A078497.P9616846084677038388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A065091 (n + 2)).toNat

end

end A078497.P9616846084677038388

/-! ## A078497.P11554915433369469589

`A078496(A140475(n+2))`
-/

namespace A078497.P11554915433369469589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A140475 (n + 2)).toNat

end

end A078497.P11554915433369469589

/-! ## A078497.P1122418457912796572

`A078496(A000040(n+3))`
-/

namespace A078497.P1122418457912796572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A000040 (n + 3)).toNat

end

end A078497.P1122418457912796572

/-! ## A078497.P15627312305051026114

`A078496(record[A006530(n+5)])`
-/

namespace A078497.P15627312305051026114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078497.P15627312305051026114

/-! ## A078497.P16761565183778303300

`A082467(p?[2*n+5])+p?[2*n+5]`
-/

namespace A078497.P16761565183778303300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A078497.P16761565183778303300

/-!
# A078498: Let q(n) be the prime defined in A078497; sequence gives (q(n)-prime(n))/6.

The programs for A078498, there is no canonical definition to state claims against.
-/

/-! ## A078498.P3412535250306155899

`A078611(n+5)/6`
-/

namespace A078498.P3412535250306155899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078611 (n + 5) : ℚ) / 6

end

end A078498.P3412535250306155899

/-! ## A078498.P16581702507992425852

`A268914(n+5)/12`
-/

namespace A078498.P16581702507992425852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268914 (n + 5) : ℚ) / 12

end

end A078498.P16581702507992425852

/-! ## A078498.P9397971957345073094

`A008615(A078611(n+5))`
-/

namespace A078498.P9397971957345073094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A078611 (n + 5)).toNat

end

end A078498.P9397971957345073094

/-! ## A078498.P13133018673351502256

`A051724(A268914(n+5))`
-/

namespace A078498.P13133018673351502256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A268914 (n + 5)).toNat

end

end A078498.P13133018673351502256

/-! ## A078498.P13110558785218753485

`A082467(A000040(n+5))/6`
-/

namespace A078498.P13110558785218753485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (A000040 (n + 5)).toNat : ℚ) / 6

end

end A078498.P13110558785218753485

/-! ## A078498.P16215088719510418237

`A082467(A008578(n+6))/6`
-/

namespace A078498.P16215088719510418237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082467 (A008578 (n + 6)).toNat : ℚ) / 6

end

end A078498.P16215088719510418237

/-!
# A078499: Two-prime decades.

The programs for A078499, there is no canonical definition to state claims against.
-/

/-! ## A078499.P5466573366445816056

`10*A216293(n+1)`
-/

namespace A078499.P5466573366445816056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A216293 (n + 1)

end

end A078499.P5466573366445816056

/-! ## A078499.P4112449035986339805

`A078500(2*n+1)-A078500(2*n+1)%10`
-/

namespace A078499.P4112449035986339805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078500 (2 * n + 1) - Int.tmod (A078500 (2 * n + 1)) 10

end

end A078499.P4112449035986339805

/-! ## A078499.P14720311075270433335

`10*eq[2, A038800(n)]`
-/

namespace A078499.P14720311075270433335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078499.P14720311075270433335

/-! ## A078499.P7655148414735491143

`A008592(A216293(n+1))`
-/

namespace A078499.P7655148414735491143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A216293 (n + 1)).toNat

end

end A078499.P7655148414735491143

/-! ## A078499.P7521784921285440458

`A008592(eq[2, A038800(n)])`
-/

namespace A078499.P7521784921285440458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078499.P7521784921285440458

/-! ## A078499.P13472035417509852030

`A017293(eq[2, A038800(n)])-2`
-/

namespace A078499.P13472035417509852030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A078499.P13472035417509852030

/-! ## A078499.P14056928646158429054

`∩[A298008(n+1)-2, A008592(n)]`
-/

namespace A078499.P14056928646158429054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P14056928646158429054

/-! ## A078499.P11569119637523128676

`∩[A298008(n+1)-2, A370532(n+1)]`
-/

namespace A078499.P11569119637523128676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P11569119637523128676

/-! ## A078499.P441933651301723282

`∩[A050653(n+1), A008592(n)]`
-/

namespace A078499.P441933651301723282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P441933651301723282

/-! ## A078499.P2819503121407306367

`∩[A050653(n+1), A370532(n+1)]`
-/

namespace A078499.P2819503121407306367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P2819503121407306367

/-! ## A078499.P17124793041561236363

`∩[A050653(n+1), A396948(n+1)]`
-/

namespace A078499.P17124793041561236363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P17124793041561236363

/-! ## A078499.P544829037510919579

`∩[A298008(n+1)-2, A008587(n)]`
-/

namespace A078499.P544829037510919579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P544829037510919579

/-! ## A078499.P14261675076431539365

`∩[A298008(n+1)-2, A008706(n)]`
-/

namespace A078499.P14261675076431539365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P14261675076431539365

/-! ## A078499.P718213521619813311

`∩[A298008(n+1)-2, A146951(n)]`
-/

namespace A078499.P718213521619813311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P718213521619813311

/-! ## A078499.P12554315404786494015

`∩[A298008(n+1)-2, A168101(n)]`
-/

namespace A078499.P12554315404786494015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P12554315404786494015

/-! ## A078499.P12204810576225709358

`∩[A131501(n+1), A298008(n+1)-2]`
-/

namespace A078499.P12204810576225709358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P12204810576225709358

/-! ## A078499.P2221453120810538858

`∩[A135042(n+1), A298008(n+2)-2]`
-/

namespace A078499.P2221453120810538858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078499.P2221453120810538858

/-! ## A078499.P18726571864045966

`A008706(A005843(eq[2, A038800(n)]))`
-/

namespace A078499.P18726571864045966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A078499.P18726571864045966

/-! ## A078499.P18321259791906022327

`eq[2, A070362(n)*A209252(n)]`
-/

namespace A078499.P18321259791906022327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070362 n * A209252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078499.P18321259791906022327

/-! ## A078499.P3171746222470348807

`eq[2, A194886(n+1)*A209252(n)]`
-/

namespace A078499.P3171746222470348807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194886 (n + 1) * A209252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078499.P3171746222470348807

