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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

/-!
# A098400: a(n) = 4^n*binomial(2*n+1, n).

The programs for A098400, the canonical program `A098400.P17223447756612620311` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098400 has offset 0).

The definition of A098400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098400.P17223447756612620311

`4^n*A001700(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098400

/-- `4^n*A001700(n)` -/
def P17223447756612620311.Spec : Prop :=
  ∀ n, P17223447756612620311.a n = A098400 n

theorem P17223447756612620311.correct : P17223447756612620311.Spec := by
  intro n
  simp only [A098400]

end A098400

/-! ## A098400.P12239131355407146929

`(2*n+1)*A151403(n)`
-/

namespace A098400.P12239131355407146929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A151403 n

end

end A098400.P12239131355407146929

namespace A098400

/-- `(2*n+1)*A151403(n)` -/
def P12239131355407146929.Spec : Prop :=
  ∀ n, P12239131355407146929.a n = A098400 n

end A098400

/-! ## A098400.P10019768548644512271

`4^n*(2*n+1)*A000108(n)`
-/

namespace A098400.P10019768548644512271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ((2 * n + 1 : ℤ) * A000108 n)

end

end A098400.P10019768548644512271

namespace A098400

/-- `4^n*(2*n+1)*A000108(n)` -/
def P10019768548644512271.Spec : Prop :=
  ∀ n, P10019768548644512271.a n = A098400 n

end A098400

/-! ## A098400.P2762622251296157611

`4^n*C(Δ[n²], n)`
-/

namespace A098400.P2762622251296157611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A098400.P2762622251296157611

namespace A098400

/-- `4^n*C(Δ[n²], n)` -/
def P2762622251296157611.Spec : Prop :=
  ∀ n, (P2762622251296157611.a n : ℤ) = A098400 n

end A098400

/-! ## A098400.P13576242663787429360

`∏[4-2/(n+1)]/2*4^n`
-/

namespace A098400.P13576242663787429360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * (4 ^ n : ℚ)

end

end A098400.P13576242663787429360

namespace A098400

/-- `∏[4-2/(n+1)]/2*4^n` -/
def P13576242663787429360.Spec : Prop :=
  ∀ n, P13576242663787429360.a n = (A098400 n : ℚ)

end A098400

/-! ## A098400.P9689792561877043233

`A098664(Δ[n²])`
-/

namespace A098400.P9689792561877043233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098664 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098400.P9689792561877043233

namespace A098400

/-- `A098664(Δ[n²])` -/
def P9689792561877043233.Spec : Prop :=
  ∀ n, P9689792561877043233.a n = A098400 n

end A098400

/-! ## A098400.P17318629412648975474

`A099045(n+1)/2`
-/

namespace A098400.P17318629412648975474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099045 (n + 1) : ℚ) / 2

end

end A098400.P17318629412648975474

namespace A098400

/-- `A099045(n+1)/2` -/
def P17318629412648975474.Spec : Prop :=
  ∀ n, P17318629412648975474.a n = (A098400 n : ℚ)

end A098400

/-! ## A098400.P5956063496637577693

`A098402(n+1)/4`
-/

namespace A098400.P5956063496637577693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098402 (n + 1) : ℚ) / 4

end

end A098400.P5956063496637577693

namespace A098400

/-- `A098402(n+1)/4` -/
def P5956063496637577693.Spec : Prop :=
  ∀ n, P5956063496637577693.a n = (A098400 n : ℚ)

end A098400

/-! ## A098400.P11001833261073766738

`A098430(n+1)/8`
-/

namespace A098400.P11001833261073766738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098430 (n + 1) : ℚ) / 8

end

end A098400.P11001833261073766738

namespace A098400

/-- `A098430(n+1)/8` -/
def P11001833261073766738.Spec : Prop :=
  ∀ n, P11001833261073766738.a n = (A098400 n : ℚ)

end A098400

/-! ## A098400.P5837879136008480109

`A060899(Δ[n²])/2`
-/

namespace A098400.P5837879136008480109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A098400.P5837879136008480109

namespace A098400

/-- `A060899(Δ[n²])/2` -/
def P5837879136008480109.Spec : Prop :=
  ∀ n, P5837879136008480109.a n = (A098400 n : ℚ)

end A098400

/-!
# A098401: a(n) = (0^n + 3^n*binomial(2*n,n))/2.

The programs for A098401, there is no canonical definition to state claims against.
-/

/-! ## A098401.P13917396392491815682

`3*(4-2/n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A098401.P13917396392491815682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A098401.P13917396392491815682

/-! ## A098401.P2922917001545562787

`3^n*A088218(n)`
-/

namespace A098401.P2922917001545562787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A088218 n

end

end A098401.P2922917001545562787

/-! ## A098401.P10852365809643940392

`abs(A110556(n))*3^n`
-/

namespace A098401.P10852365809643940392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110556 n| * (3 ^ n : ℤ)

end

end A098401.P10852365809643940392

/-! ## A098401.P6112404765973642763

`3^n*round(A000984(n)/2)`
-/

namespace A098401.P6112404765973642763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway ((A000984 n : ℚ) / 2)

end

end A098401.P6112404765973642763

/-! ## A098401.P10455863903615269573

`3^n*A001405(comp[2*(n+1)])`
-/

namespace A098401.P10455863903615269573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001405 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A098401.P10455863903615269573

/-! ## A098401.P4073711260830860832

`ceil(3^n*A000108(n)*(n+1)/2)`
-/

namespace A098401.P4073711260830860832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 ^ n : ℤ) * A000108 n : ℚ) * ((n + 1 : ℚ) / 2)⌉

end

end A098401.P4073711260830860832

/-! ## A098401.P14813310221034337252

`A029651(n)*A133494(n)`
-/

namespace A098401.P14813310221034337252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n * A133494 n

end

end A098401.P14813310221034337252

/-! ## A098401.P9326919556482319940

`A110556(n)*A352779(n)`
-/

namespace A098401.P9326919556482319940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A352779 n

end

end A098401.P9326919556482319940

/-! ## A098401.P5016244160803616414

`record[A056449(n)*A057977(n)]`
-/

namespace A098401.P5016244160803616414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098401.P5016244160803616414

/-! ## A098401.P12641966816952716915

`A088218(n)*A133494(n+1)`
-/

namespace A098401.P12641966816952716915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A133494 (n + 1)

end

end A098401.P12641966816952716915

/-!
# A098402: a(n) = (0^n + 4^n * binomial(2*n,n))/2.

The programs for A098402, there is no canonical definition to state claims against.
-/

/-! ## A098402.P11774117375060176281

`C(2*n, n)*ceil(4^n/2)`
-/

namespace A098402.P11774117375060176281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ⌈(4 ^ n : ℚ) / 2⌉

end

end A098402.P11774117375060176281

/-! ## A098402.P8336475890155867582

`(4-2/n)*4*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A098402.P8336475890155867582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 - 2 / (n : ℚ)) * (4 * a (n - 1))

end

end A098402.P8336475890155867582

/-! ## A098402.P12114824805429738778

`ceil(A098430(n)/2)`
-/

namespace A098402.P12114824805429738778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098430 n : ℚ) / 2⌉

end

end A098402.P12114824805429738778

/-! ## A098402.P3808179407601974431

`4^n*A088218(n)`
-/

namespace A098402.P3808179407601974431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A088218 n

end

end A098402.P3808179407601974431

/-! ## A098402.P4506824802664732692

`ceil(A060899(2*n)/2)`
-/

namespace A098402.P4506824802664732692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060899 (2 * n) : ℚ) / 2⌉

end

end A098402.P4506824802664732692

/-! ## A098402.P14240874171683158425

`lcm(2, A098664(2*n))/2`
-/

namespace A098402.P14240874171683158425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A098664 (2 * n)) : ℚ) / 2

end

end A098402.P14240874171683158425

/-! ## A098402.P11251389102897559670

`A000984(n)*A081294(n)`
-/

namespace A098402.P11251389102897559670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A081294 n

end

end A098402.P11251389102897559670

/-! ## A098402.P18004650301869744337

`A115140(n)*A144704(n)`
-/

namespace A098402.P18004650301869744337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n * A144704 n

end

end A098402.P18004650301869744337

/-! ## A098402.P2443340172065736302

`A110556(n)*A262710(n)`
-/

namespace A098402.P2443340172065736302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A262710 n

end

end A098402.P2443340172065736302

/-! ## A098402.P4882579504573430609

`A000302(n)*A034871(n²)`
-/

namespace A098402.P4882579504573430609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A034871 (n ^ 2)

end

end A098402.P4882579504573430609

/-!
# A098404: Row sums of the triangle A097883.

The programs for A098404, there is no canonical definition to state claims against.
-/

/-! ## A098404.P2372378730975292706

`A193299(A160619(n)+1)`
-/

namespace A098404.P2372378730975292706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (A160619 n + 1).toNat

end

end A098404.P2372378730975292706

/-! ## A098404.P4671972614998868246

`A193299(or(1, A160619(n)))`
-/

namespace A098404.P4671972614998868246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (Int.lor 1 (A160619 n)).toNat

end

end A098404.P4671972614998868246

/-!
# A098405: Expansion of (1-sqrt(1-8*x))/((1-x)*(4*x*sqrt(1-8*x))).

The programs for A098405, the canonical program `A098405.P7279905271536996757` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098405 has offset 0).

The definition of A098405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098405.P7279905271536996757

`∑[2^n*C(Δ[n²], n)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A098405

/-- `∑[2^n*C(Δ[n²], n)]` -/
def P7279905271536996757.Spec : Prop :=
  ∀ n, (P7279905271536996757.a n : ℤ) = A098405 n

theorem P7279905271536996757.correct : P7279905271536996757.Spec := by
  intro n
  simp only [A098405]

end A098405

/-! ## A098405.P15163218589021462112

`∑[∏[8-4/(n+1)]/4]`
-/

namespace A098405.P15163218589021462112
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 4 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098405.P15163218589021462112

namespace A098405

/-- `∑[∏[8-4/(n+1)]/4]` -/
def P15163218589021462112.Spec : Prop :=
  ∀ n, P15163218589021462112.a n = (A098405 n : ℚ)

end A098405

/-! ## A098405.P18386566352538346772

`a(n-1)+2^n*C(Δ[n²], n)` with `a(0)=1`
-/

namespace A098405.P18386566352538346772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 ^ n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n

end

end A098405.P18386566352538346772

namespace A098405

/-- `a(n-1)+2^n*C(Δ[n²], n)` -/
def P18386566352538346772.Spec : Prop :=
  ∀ n, (P18386566352538346772.a n : ℤ) = A098405 n

end A098405

/-! ## A098405.P15507653493169031315

`a(n-1)+∏[8-4/(n+1)]/4` with `a(0)=1`
-/

namespace A098405.P15507653493169031315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 - 4 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j) / 4

end

end A098405.P15507653493169031315

namespace A098405

/-- `a(n-1)+∏[8-4/(n+1)]/4` -/
def P15507653493169031315.Spec : Prop :=
  ∀ n, P15507653493169031315.a n = (A098405 n : ℚ)

end A098405

/-! ## A098405.P16423209840402995157

`or(1, ∑[2^n*C(2*(n+1)-1, n)])`
-/

namespace A098405.P16423209840402995157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098405.P16423209840402995157

namespace A098405

/-- `or(1, ∑[2^n*C(2*(n+1)-1, n)])` -/
def P16423209840402995157.Spec : Prop :=
  ∀ n, (P16423209840402995157.a n : ℤ) = A098405 n

end A098405

/-! ## A098405.P11911678467818159038

`or(1, ∑[A069720(n+1)])`
-/

namespace A098405.P11911678467818159038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098405.P11911678467818159038

namespace A098405

/-- `or(1, ∑[A069720(n+1)])` -/
def P11911678467818159038.Spec : Prop :=
  ∀ n, P11911678467818159038.a n = A098405 n

end A098405

/-! ## A098405.P12273759409768898425

`∑[C(2*n+1, n)*A155559(n)]+1`
-/

namespace A098405.P12273759409768898425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) n : ℤ) * A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098405.P12273759409768898425

namespace A098405

/-- `∑[C(2*n+1, n)*A155559(n)]+1` -/
def P12273759409768898425.Spec : Prop :=
  ∀ n, P12273759409768898425.a n = A098405 n

end A098405

/-! ## A098405.P2336848344166328605

`∑[floor(2^(n-1))*A000984(n+1)]+1`
-/

namespace A098405.P2336848344166328605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098405.P2336848344166328605

namespace A098405

/-- `∑[floor(2^(n-1))*A000984(n+1)]+1` -/
def P2336848344166328605.Spec : Prop :=
  ∀ n, P2336848344166328605.a n = A098405 n

end A098405

/-! ## A098405.P6869812942253125728

`∑[A069720(n+1)]-∏[A000040(n+1)]%2`
-/

namespace A098405.P6869812942253125728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (∏ j ∈ Finset.range (n + 1), f2 j) 2

end

end A098405.P6869812942253125728

namespace A098405

/-- `∑[A069720(n+1)]-∏[A000040(n+1)]%2` -/
def P6869812942253125728.Spec : Prop :=
  ∀ n, P6869812942253125728.a n = A098405 n

end A098405

/-!
# A098406: a(n) = (10^n + 17)/9.

The programs for A098406, the canonical program `A098406.P16729558480417905386` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098406 has offset 0).

The definition of A098406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098406.P5045569921596517851

`(10^n+17)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098406.P5045569921596517851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 17 : ℚ) / 9

end

end A098406.P5045569921596517851

namespace A098406

/-- `(10^n+17)/9` -/
def P5045569921596517851.Spec : Prop :=
  ∀ n, P5045569921596517851.a n = (A098406 n : ℚ)

end A098406

/-! ## A098406.P16729558480417905386

`10*a(n-1)-17` with `a(0)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A098406

/-- `10*a(n-1)-17` -/
def P16729558480417905386.Spec : Prop :=
  ∀ n, P16729558480417905386.a n = A098406 n

theorem P16729558480417905386.correct : P16729558480417905386.Spec := by
  intro n
  simp only [A098406]

end A098406

/-! ## A098406.P2565315218118661401

`a(n-1)+10^(n-1)` with `a(0)=2`
-/

namespace A098406.P2565315218118661401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A098406.P2565315218118661401

namespace A098406

/-- `a(n-1)+10^(n-1)` -/
def P2565315218118661401.Spec : Prop :=
  ∀ n, P2565315218118661401.a n = (A098406 n : ℚ)

end A098406

/-! ## A098406.P15670175176923669186

`A047855(n)+1`
-/

namespace A098406.P15670175176923669186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + 1

end

end A098406.P15670175176923669186

namespace A098406

/-- `A047855(n)+1` -/
def P15670175176923669186.Spec : Prop :=
  ∀ n, P15670175176923669186.a n = A098406 n

end A098406

/-! ## A098406.P8601545641846721028

`A002275(n)+2`
-/

namespace A098406.P8601545641846721028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + 2

end

end A098406.P8601545641846721028

namespace A098406

/-- `A002275(n)+2` -/
def P8601545641846721028.Spec : Prop :=
  ∀ n, P8601545641846721028.a n = A098406 n

end A098406

/-! ## A098406.P13221328394415059335

`A062397(n)-A002282(n)`
-/

namespace A098406.P13221328394415059335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n - A002282 n

end

end A098406.P13221328394415059335

namespace A098406

/-- `A062397(n)-A002282(n)` -/
def P13221328394415059335.Spec : Prop :=
  ∀ n, P13221328394415059335.a n = A098406 n

end A098406

/-! ## A098406.P11188378669810005932

`abs(xor(ceil(10^n/9), -1))`
-/

namespace A098406.P11188378669810005932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌈(10 ^ n : ℚ) / 9⌉ (-1)|

end

end A098406.P11188378669810005932

namespace A098406

/-- `abs(xor(ceil(10^n/9), -1))` -/
def P11188378669810005932.Spec : Prop :=
  ∀ n, P11188378669810005932.a n = A098406 n

end A098406

/-! ## A098406.P3345084731858401783

`-xor(ceil(10^n/9), -1)`
-/

namespace A098406.P3345084731858401783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌈(10 ^ n : ℚ) / 9⌉ (-1)

end

end A098406.P3345084731858401783

namespace A098406

/-- `-xor(ceil(10^n/9), -1)` -/
def P3345084731858401783.Spec : Prop :=
  ∀ n, P3345084731858401783.a n = A098406 n

end A098406

/-! ## A098406.P16566426704198171098

`∑[floor(10^(n-1))+floor(acot(n)²)]`
-/

namespace A098406.P16566426704198171098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098406.P16566426704198171098

namespace A098406

/-- `∑[floor(10^(n-1))+floor(acot(n)²)]` -/
def P16566426704198171098.Spec : Prop :=
  ∀ n, P16566426704198171098.a n = A098406 n

end A098406

/-! ## A098406.P16725432550348688380

`round(∑[10^((n-1)%(n+2))])+2`
-/

namespace A098406.P16725432550348688380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A098406.P16725432550348688380

namespace A098406

/-- `round(∑[10^((n-1)%(n+2))])+2` -/
def P16725432550348688380.Spec : Prop :=
  ∀ n, P16725432550348688380.a n = A098406 n

end A098406

/-! ## A098406.P12816265819729858126

`A173735(n)-1`
-/

namespace A098406.P12816265819729858126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n - 1

end

end A098406.P12816265819729858126

namespace A098406

/-- `A173735(n)-1` -/
def P12816265819729858126.Spec : Prop :=
  ∀ n, P12816265819729858126.a n = A098406 n

end A098406

/-! ## A098406.P16396756551931458195

`A071762(∑[n])+2`
-/

namespace A098406.P16396756551931458195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A098406.P16396756551931458195

namespace A098406

/-- `A071762(∑[n])+2` -/
def P16396756551931458195.Spec : Prop :=
  ∀ n, P16396756551931458195.a n = A098406 n

end A098406

/-! ## A098406.P13391958526013830905

`∑[A178501(n)]+2`
-/

namespace A098406.P13391958526013830905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A098406.P13391958526013830905

namespace A098406

/-- `∑[A178501(n)]+2` -/
def P13391958526013830905.Spec : Prop :=
  ∀ n, P13391958526013830905.a n = A098406 n

end A098406

/-! ## A098406.P5181876148368821056

`A092900(2*n)+1`
-/

namespace A098406.P5181876148368821056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 (2 * n) + 1

end

end A098406.P5181876148368821056

namespace A098406

/-- `A092900(2*n)+1` -/
def P5181876148368821056.Spec : Prop :=
  ∀ n, P5181876148368821056.a n = A098406 n

end A098406

/-! ## A098406.P2345135984906230104

`A081857(2*n)+2`
-/

namespace A098406.P2345135984906230104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n) + 2

end

end A098406.P2345135984906230104

namespace A098406

/-- `A081857(2*n)+2` -/
def P2345135984906230104.Spec : Prop :=
  ∀ n, P2345135984906230104.a n = A098406 n

end A098406

/-! ## A098406.P13234190058166390832

`A002276(n)/2+2`
-/

namespace A098406.P13234190058166390832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2 + 2

end

end A098406.P13234190058166390832

namespace A098406

/-- `A002276(n)/2+2` -/
def P13234190058166390832.Spec : Prop :=
  ∀ n, P13234190058166390832.a n = (A098406 n : ℚ)

end A098406

/-! ## A098406.P15159506269785946006

`A002277(n)/3+2`
-/

namespace A098406.P15159506269785946006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3 + 2

end

end A098406.P15159506269785946006

namespace A098406

/-- `A002277(n)/3+2` -/
def P15159506269785946006.Spec : Prop :=
  ∀ n, P15159506269785946006.a n = (A098406 n : ℚ)

end A098406

/-! ## A098406.P10197016120487660998

`A002278(n)/4+2`
-/

namespace A098406.P10197016120487660998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 4 + 2

end

end A098406.P10197016120487660998

namespace A098406

/-- `A002278(n)/4+2` -/
def P10197016120487660998.Spec : Prop :=
  ∀ n, P10197016120487660998.a n = (A098406 n : ℚ)

end A098406

/-! ## A098406.P1887950330871785323

`A002279(n)/5+2`
-/

namespace A098406.P1887950330871785323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002279 n : ℚ) / 5 + 2

end

end A098406.P1887950330871785323

namespace A098406

/-- `A002279(n)/5+2` -/
def P1887950330871785323.Spec : Prop :=
  ∀ n, P1887950330871785323.a n = (A098406 n : ℚ)

end A098406

/-!
# A098407: Number of different hierarchical orderings that can be formed from n unlabeled elements with no repetition of subhierarchies.

The programs for A098407, there is no canonical definition to state claims against.
-/

/-! ## A098407.P2440289606794493480

`A087836(xor(C(n, 2), A149739(n)))`
-/

namespace A098407.P2440289606794493480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (Int.xor (Nat.choose n 2 : ℤ) (A149739 n)).toNat

end

end A098407.P2440289606794493480

/-! ## A098407.P16214973523403494355

`A052980(n)+A024327(A000142(n))`
-/

namespace A098407.P16214973523403494355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + A024327 (A000142 n).toNat

end

end A098407.P16214973523403494355

/-! ## A098407.P15927158954470930466

`A054404(A080039(n)+A001383(n))`
-/

namespace A098407.P15927158954470930466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A080039 n + A001383 n).toNat

end

end A098407.P15927158954470930466

/-! ## A098407.P4190789455402830085

`A087836(A149739(n)+A114327(n))`
-/

namespace A098407.P4190789455402830085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A149739 n + A114327 n).toNat

end

end A098407.P4190789455402830085

/-!
# A098408: a(1) = 1; for n>1, a(n) = smallest number > a(n-1) such that last digit of a(n-1) + first digit of a(n) = 3.

The programs for A098408, there is no canonical definition to state claims against.
-/

/-! ## A098408.P16276944689184667826

`record[A098425(record[A117440(n)])]`
-/

namespace A098408.P16276944689184667826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098425 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098408.P16276944689184667826

/-! ## A098408.P5660488246117996666

`record[A098425(record[A098434(n+1)])]`
-/

namespace A098408.P5660488246117996666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098425 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098408.P5660488246117996666

/-!
# A098409: Expansion of 1/(sqrt(1-3*x)*sqrt(1-7*x)).

The programs for A098409, there is no canonical definition to state claims against.
-/

/-! ## A098409.P6007389566100405674

`record[A292627(A055999(n))]`
-/

namespace A098409.P6007389566100405674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098409.P6007389566100405674

/-! ## A098409.P17829831444312728831

`A292627(A055999(n+3))`
-/

namespace A098409.P17829831444312728831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A055999 (n + 3)).toNat

end

end A098409.P17829831444312728831

/-! ## A098409.P1742531795562567786

`record[A292627(∑[A020705(n)])]`
-/

namespace A098409.P1742531795562567786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098409.P1742531795562567786

/-! ## A098409.P4685168242765846723

`record[A292627(A004277(n)+A000096(n))]`
-/

namespace A098409.P4685168242765846723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A004277 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098409.P4685168242765846723

/-! ## A098409.P573496369083534368

`sqrt(A246906(n))`
-/

namespace A098409.P573496369083534368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246906 n : ℝ)

end

end A098409.P573496369083534368

/-!
# A098410: Expansion of 1/(sqrt(1-4*x)*sqrt(1-8*x)).

The programs for A098410, there is no canonical definition to state claims against.
-/

/-! ## A098410.P8772515714939892782

`A104498(n+1)+n*A025230(n+1)`
-/

namespace A098410.P8772515714939892782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104498 (n + 1) + (n : ℤ) * A025230 (n + 1)

end

end A098410.P8772515714939892782

/-! ## A098410.P18382723665713814839

`A292627(eq[6, A025581(n)])`
-/

namespace A098410.P18382723665713814839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098410.P18382723665713814839

/-! ## A098410.P13747061230289616025

`A292627(A161680(n+8)-7)`
-/

namespace A098410.P13747061230289616025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A161680 (n + 8) - 7).toNat

end

end A098410.P13747061230289616025

/-! ## A098410.P7478605866839590629

`A292627(eq[7, A004736(n+1)])`
-/

namespace A098410.P7478605866839590629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098410.P7478605866839590629

/-! ## A098410.P11548313954099127574

`A292627(eq[8, A130321(n)/8])`
-/

namespace A098410.P11548313954099127574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A098410.P11548313954099127574

/-! ## A098410.P6623895517078889658

`A292627(eq[6, val(A130321(n), 2)])`
-/

namespace A098410.P6623895517078889658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130321 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098410.P6623895517078889658

/-! ## A098410.P13298687631543301127

`A292627(Δ[Δ[A055832(n+5)]])`
-/

namespace A098410.P13298687631543301127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (f1 (n + 1) - f1 n).toNat

end

end A098410.P13298687631543301127

/-! ## A098410.P1810411750448781885

`A292627(A166136(n+4)+2*n)`
-/

namespace A098410.P1810411750448781885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A166136 (n + 4) + (2 * n : ℤ)).toNat

end

end A098410.P1810411750448781885

/-! ## A098410.P14584314858094731685

`A292627(A005843(n)+A034856(n+4)+8)`
-/

namespace A098410.P14584314858094731685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A005843 n + (A034856 (n + 4) + 8)).toNat

end

end A098410.P14584314858094731685

/-! ## A098410.P10859315448495726234

`A318417(n)/A000984(n)`
-/

namespace A098410.P10859315448495726234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318417 n : ℚ) / (A000984 n : ℚ)

end

end A098410.P10859315448495726234

/-!
# A098411: Expansion of 1/(sqrt(1-4x)sqrt(1-12x)).

The programs for A098411, there is no canonical definition to state claims against.
-/

/-! ## A098411.P12379256286482516452

`2^n*A081671(n)`
-/

namespace A098411.P12379256286482516452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081671 n

end

end A098411.P12379256286482516452

/-! ## A098411.P2522204812984147888

`abs(A081671(n)*A122803(n))`
-/

namespace A098411.P2522204812984147888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081671 n * A122803 n|

end

end A098411.P2522204812984147888

/-! ## A098411.P8604171474209263038

`A081671(n)*A099627(∑[n])`
-/

namespace A098411.P8604171474209263038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n * A099627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098411.P8604171474209263038

/-! ## A098411.P16103167093364499978

`A011782(n)*A081671(n)*ratio[A011782(n)]`
-/

namespace A098411.P16103167093364499978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A081671 n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A098411.P16103167093364499978

/-! ## A098411.P4846883552311886941

`sqrt(A246876(n))*2^n`
-/

namespace A098411.P4846883552311886941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246876 n : ℝ) * (2 ^ n : ℝ)

end

end A098411.P4846883552311886941

/-! ## A098411.P11714733591922595364

`A000079(n)*A272867(∑[2*n])`
-/

namespace A098411.P11714733591922595364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A272867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098411.P11714733591922595364

/-! ## A098411.P2760218780159308801

`sqrt(A000302(n))*A272867(∑[2*n])`
-/

namespace A098411.P2760218780159308801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * (A272867 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A098411.P2760218780159308801

/-! ## A098411.P7168830332424187340

`∑[A011782(n)]*A272867(∑[2*n])`
-/

namespace A098411.P7168830332424187340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A272867 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A098411.P7168830332424187340

/-! ## A098411.P2507529064491533324

`Δ[A000918(n)]*A272867(∑[2*n])`
-/

namespace A098411.P2507529064491533324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A272867 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A098411.P2507529064491533324

/-!
# A098412: Greatest members p of prime triples (p-6, p-4, p).

The programs for A098412, there is no canonical definition to state claims against.
-/

/-! ## A098412.P17347800589930056568

`4+A073648(n+1)`
-/

namespace A098412.P17347800589930056568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A073648 (n + 1)

end

end A098412.P17347800589930056568

/-! ## A098412.P5062418683604567146

`A022004(n+1)+6`
-/

namespace A098412.P5062418683604567146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) + 6

end

end A098412.P5062418683604567146

/-! ## A098412.P17503047026795672297

`(A163635(n+1)-2)/3+4`
-/

namespace A098412.P17503047026795672297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163635 (n + 1) - 2 : ℚ) / 3 + 4

end

end A098412.P17503047026795672297

/-! ## A098412.P4035026112992051621

`∩[A031505(n+1), A098415(n+1)]`
-/

namespace A098412.P4035026112992051621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P4035026112992051621

/-! ## A098412.P8288380789059079121

`∩[A046132(n+1), A098415(n+1)]`
-/

namespace A098412.P8288380789059079121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P8288380789059079121

/-! ## A098412.P1893603839107754569

`∩[A067830(n+1), A098415(n+1)]`
-/

namespace A098412.P1893603839107754569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P1893603839107754569

/-! ## A098412.P8867863732275237196

`∩[A031505(n+1), A088176(n+1)]`
-/

namespace A098412.P8867863732275237196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P8867863732275237196

/-! ## A098412.P16050096744990125827

`∩[A088176(n+1), A098415(n+1)]`
-/

namespace A098412.P16050096744990125827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P16050096744990125827

/-! ## A098412.P13906653105858983415

`p?[A006512(n+1)+4]`
-/

namespace A098412.P13906653105858983415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098412.P13906653105858983415

/-! ## A098412.P229426565569602550

`p?[A098414(n+1)+4]`
-/

namespace A098412.P229426565569602550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098412.P229426565569602550

/-! ## A098412.P15202999702355297333

`p?[A067829(n+2)+4]`
-/

namespace A098412.P15202999702355297333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098412.P15202999702355297333

/-! ## A098412.P7924381020919140189

`p?[A001359(n+1)+6]`
-/

namespace A098412.P7924381020919140189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098412.P7924381020919140189

/-! ## A098412.P8686413506383838422

`p?[A056853(n+1)+5]`
-/

namespace A098412.P8686413506383838422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098412.P8686413506383838422

/-! ## A098412.P12041217142677646452

`∩[A098415(n+1), A360542(n+1)]`
-/

namespace A098412.P12041217142677646452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P12041217142677646452

/-! ## A098412.P13543120397668485128

`∩[A031505(n+1), A046117(n+1)]`
-/

namespace A098412.P13543120397668485128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P13543120397668485128

/-! ## A098412.P2249166852822610926

`∩[A046117(n+1), A046132(n+1)]`
-/

namespace A098412.P2249166852822610926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P2249166852822610926

/-! ## A098412.P16411470268403246918

`∩[A031505(n+1), A067831(n+1)]`
-/

namespace A098412.P16411470268403246918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P16411470268403246918

/-! ## A098412.P3943370749497344304

`∩[A046117(n+1), A067830(n+1)]`
-/

namespace A098412.P3943370749497344304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P3943370749497344304

/-! ## A098412.P17896293318906331691

`∩[A031505(n+1), A172071(n+1)]`
-/

namespace A098412.P17896293318906331691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P17896293318906331691

/-! ## A098412.P5249118476916879645

`∩[A031505(n+1), A172988(n+1)]`
-/

namespace A098412.P5249118476916879645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098412.P5249118476916879645

/-!
# A098413: Greatest members p of prime triples (p-6, p-2, p).

The programs for A098413, there is no canonical definition to state claims against.
-/

/-! ## A098413.P491993176561867583

`A073649(n+1)+2`
-/

namespace A098413.P491993176561867583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1) + 2

end

end A098413.P491993176561867583

/-! ## A098413.P5794562819204426374

`A144840(n+1)+5`
-/

namespace A098413.P5794562819204426374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1) + 5

end

end A098413.P5794562819204426374

/-! ## A098413.P7252749934417543882

`A022005(n+1)+6`
-/

namespace A098413.P7252749934417543882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1) + 6

end

end A098413.P7252749934417543882

/-! ## A098413.P15858019962916909456

`∩[A006512(n+1), A098415(n+1)]`
-/

namespace A098413.P15858019962916909456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P15858019962916909456

/-! ## A098413.P2145905624996338505

`∩[A067829(n+1), A098415(n+1)]`
-/

namespace A098413.P2145905624996338505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P2145905624996338505

/-! ## A098413.P5008526396596805085

`∩[A098415(n+1), A172057(n+1)]`
-/

namespace A098413.P5008526396596805085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P5008526396596805085

/-! ## A098413.P5662352499349616249

`∩[A001359(n+1), A031505(n+1)]+2`
-/

namespace A098413.P5662352499349616249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A098413.P5662352499349616249

/-! ## A098413.P12332484089580723770

`∩[A001359(n+1), A046132(n+1)]+2`
-/

namespace A098413.P12332484089580723770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A098413.P12332484089580723770

/-! ## A098413.P463725393219612435

`∩[A031505(n+1), A054799(n+1)]+2`
-/

namespace A098413.P463725393219612435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A098413.P463725393219612435

/-! ## A098413.P12904028702912006345

`∩[A098415(n+1), A339692(n+1)]`
-/

namespace A098413.P12904028702912006345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P12904028702912006345

/-! ## A098413.P15212778166226587982

`p?[A031505(n+1)+2]`
-/

namespace A098413.P15212778166226587982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P15212778166226587982

/-! ## A098413.P5906031689972873766

`p?[A046132(n+1)+2]`
-/

namespace A098413.P5906031689972873766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P5906031689972873766

/-! ## A098413.P11569830042493356805

`p?[A098414(n+1)+2]`
-/

namespace A098413.P11569830042493356805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P11569830042493356805

/-! ## A098413.P5780725036493675016

`p?[A029708(n+1)+4]`
-/

namespace A098413.P5780725036493675016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P5780725036493675016

/-! ## A098413.P10030142391806078572

`p?[A087679(n+1)+4]`
-/

namespace A098413.P10030142391806078572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P10030142391806078572

/-! ## A098413.P1195641581022335162

`p?[A007529(n+1)+4]+2`
-/

namespace A098413.P1195641581022335162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A098413.P1195641581022335162

/-! ## A098413.P16371031843113039910

`p?[p?[A088175(n+1)+4]+2]`
-/

namespace A098413.P16371031843113039910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098413.P16371031843113039910

/-! ## A098413.P460675249977395164

`∩[A098415(n+1), A175075(n+1)]`
-/

namespace A098413.P460675249977395164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P460675249977395164

/-! ## A098413.P16617511750985892594

`∩[A098415(n+1), A320391(n+1)]`
-/

namespace A098413.P16617511750985892594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P16617511750985892594

/-! ## A098413.P9041310367151768402

`∩[A098415(n+1), A396340(n+1)]`
-/

namespace A098413.P9041310367151768402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098413.P9041310367151768402

/-!
# A098414: Middle members q of prime triples (p,q,r) with p

The programs for A098414, there is no canonical definition to state claims against.
-/

/-! ## A098414.P12139588811015665656

`∪[A073648(n+1), A073649(n+1)]`
-/

namespace A098414.P12139588811015665656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P12139588811015665656

/-! ## A098414.P10611114871530592870

`∩[A001097(n+1), A111980(n+1)]`
-/

namespace A098414.P10611114871530592870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P10611114871530592870

/-! ## A098414.P4851975715957779464

`∩[A111980(n+1), A171688(n+1)]`
-/

namespace A098414.P4851975715957779464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P4851975715957779464

/-! ## A098414.P1142203240570542241

`∩[A111980(n+1), A171821(n+1)]`
-/

namespace A098414.P1142203240570542241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P1142203240570542241

/-! ## A098414.P9427180019997016314

`∩[A111980(n+1), A265760(n+1)]`
-/

namespace A098414.P9427180019997016314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P9427180019997016314

/-! ## A098414.P5826123954282034246

`A045319(A361267(n+1))`
-/

namespace A098414.P5826123954282034246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A361267 (n + 1)).toNat

end

end A098414.P5826123954282034246

/-! ## A098414.P17036963184500881730

`A000040(A361267(n+1)+1)`
-/

namespace A098414.P17036963184500881730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A361267 (n + 1) + 1).toNat

end

end A098414.P17036963184500881730

/-! ## A098414.P11308263978571800807

`A004139(A361267(n+1)-1)`
-/

namespace A098414.P11308263978571800807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A361267 (n + 1) - 1).toNat

end

end A098414.P11308263978571800807

/-! ## A098414.P13651781407351230005

`A065091(eq[3, A162345(n+1)])`
-/

namespace A098414.P13651781407351230005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098414.P13651781407351230005

/-! ## A098414.P9288475402895442941

`A065091(eq[4, A046930(n+1)])`
-/

namespace A098414.P9288475402895442941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098414.P9288475402895442941

/-! ## A098414.P169580729538916019

`A065091(eq[4, A159461(n+1)])`
-/

namespace A098414.P169580729538916019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098414.P169580729538916019

/-! ## A098414.P17211432503111320868

`A000040(eq[3, A162345(n+1)]+1)`
-/

namespace A098414.P17211432503111320868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098414.P17211432503111320868

/-! ## A098414.P14308026858670743447

`A000040(eq[4, A046930(n+1)]+1)`
-/

namespace A098414.P14308026858670743447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098414.P14308026858670743447

/-! ## A098414.P18108804190605095365

`A008578(eq[3, A162345(n+1)]+2)`
-/

namespace A098414.P18108804190605095365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A098414.P18108804190605095365

/-! ## A098414.P286781440502246047

`A151800(A007529(n+1))`
-/

namespace A098414.P286781440502246047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007529 (n + 1)).toNat

end

end A098414.P286781440502246047

/-! ## A098414.P14001638376800594126

`A000040(A000720(A007529(n+1))+1)`
-/

namespace A098414.P14001638376800594126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A007529 (n + 1)).toNat + 1).toNat

end

end A098414.P14001638376800594126

/-! ## A098414.P8872648780802105189

`A000040(A000720(A098415(n+1)-1))`
-/

namespace A098414.P8872648780802105189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A098415 (n + 1) - 1).toNat).toNat

end

end A098414.P8872648780802105189

/-! ## A098414.P15427338133026838316

`∩[A111980(n+1), A334141(n+1)]`
-/

namespace A098414.P15427338133026838316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098414.P15427338133026838316

/-!
# A098415: Greatest members r of prime triples (p,q,r) with p

The programs for A098415, there is no canonical definition to state claims against.
-/

/-! ## A098415.P6900858983898792025

`A007529(n+1)+6`
-/

namespace A098415.P6900858983898792025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) + 6

end

end A098415.P6900858983898792025

/-! ## A098415.P16008344150228771453

`2*A098416(n+1)+3`
-/

namespace A098415.P16008344150228771453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098416 (n + 1) + 3

end

end A098415.P16008344150228771453

/-! ## A098415.P2444321712343330983

`∪[A098412(n+1), A098413(n+1)]`
-/

namespace A098415.P2444321712343330983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098415.P2444321712343330983

/-! ## A098415.P11123044319159225245

`A046117(eq[1, A104037(n+1)]+1)`
-/

namespace A098415.P11123044319159225245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098415.P11123044319159225245

/-! ## A098415.P7883669551638704509

`p?[A087695(n+1)+A104037(n+1)+2]`
-/

namespace A098415.P7883669551638704509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + (A104037 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P7883669551638704509

/-! ## A098415.P14709373394888618637

`p?[A061771(n+1)+6]`
-/

namespace A098415.P14709373394888618637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P14709373394888618637

/-! ## A098415.P10008081803569173895

`p?[A253969(n+1)+6]`
-/

namespace A098415.P10008081803569173895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P10008081803569173895

/-! ## A098415.P17430905694000592524

`∩[A046117(n+1), A175442(n+1)]`
-/

namespace A098415.P17430905694000592524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098415.P17430905694000592524

/-! ## A098415.P3457144067734621935

`∩[A172988(n+1), A175442(n+1)]`
-/

namespace A098415.P3457144067734621935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098415.P3457144067734621935

/-! ## A098415.P13989719569247700604

`p?[A175220(n+1)-1]`
-/

namespace A098415.P13989719569247700604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175220 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P13989719569247700604

/-! ## A098415.P1804950561306475839

`A004139(A361267(n+1))`
-/

namespace A098415.P1804950561306475839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A361267 (n + 1)).toNat

end

end A098415.P1804950561306475839

/-! ## A098415.P12498405220435042307

`A045319(A361267(n+1)+1)`
-/

namespace A098415.P12498405220435042307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A361267 (n + 1) + 1).toNat

end

end A098415.P12498405220435042307

/-! ## A098415.P4532482651334591823

`A000040(A361267(n+1)+2)`
-/

namespace A098415.P4532482651334591823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A361267 (n + 1) + 2).toNat

end

end A098415.P4532482651334591823

/-! ## A098415.P12623368871316756406

`∩[A139049(n+1), A175442(n+1)]`
-/

namespace A098415.P12623368871316756406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098415.P12623368871316756406

/-! ## A098415.P10600207177672485017

`A151800(A098414(n+1))`
-/

namespace A098415.P10600207177672485017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A098414 (n + 1)).toNat

end

end A098415.P10600207177672485017

/-! ## A098415.P2410683345206068466

`p?[A124589(n+1)+6]`
-/

namespace A098415.P2410683345206068466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P2410683345206068466

/-! ## A098415.P5724096603167115250

`A005818(A098416(n+1))`
-/

namespace A098415.P5724096603167115250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A098416 (n + 1)).toNat

end

end A098415.P5724096603167115250

/-! ## A098415.P697453222177378221

`p?[A018252(A014692(n+1)+3)+1]`
-/

namespace A098415.P697453222177378221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A014692 (n + 1) + 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P697453222177378221

/-! ## A098415.P2367010444150644670

`p?[A079696(A008864(n+2)-n)]`
-/

namespace A098415.P2367010444150644670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A008864 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098415.P2367010444150644670

/-!
# A098416: (A007529(n) + A098415(n)) / 4.

The programs for A098416, there is no canonical definition to state claims against.
-/

/-! ## A098416.P1415685069722163987

`(A007529(n+1)+A098415(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098416.P1415685069722163987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007529 (n + 1) + A098415 (n + 1) : ℚ) / 4

end

end A098416.P1415685069722163987

/-! ## A098416.P7859405751895690705

`(A007529(n+1)+3)/2`
-/

namespace A098416.P7859405751895690705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007529 (n + 1) + 3 : ℚ) / 2

end

end A098416.P7859405751895690705

/-! ## A098416.P14115094796885421086

`(A098415(n+1)-3)/2`
-/

namespace A098416.P14115094796885421086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098415 (n + 1) - 3 : ℚ) / 2

end

end A098416.P14115094796885421086

/-! ## A098416.P4601100271711274761

`(p?[A175220(n+1)-1]-3)/2`
-/

namespace A098416.P4601100271711274761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175220 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A098416.P4601100271711274761

/-! ## A098416.P10359807950354423279

`∩[A088763(n+1), A174047(n+1)]`
-/

namespace A098416.P10359807950354423279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098416.P10359807950354423279

/-! ## A098416.P15890253645702229116

`(p?[A124589(n+1)+6]-3)/2`
-/

namespace A098416.P15890253645702229116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1) + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 2

end

end A098416.P15890253645702229116

/-! ## A098416.P8781598352488267050

`A003971(A007529(n+1))`
-/

namespace A098416.P8781598352488267050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003971 (A007529 (n + 1)).toNat

end

end A098416.P8781598352488267050

/-! ## A098416.P10736050324816855353

`A003165(A098415(n+1))`
-/

namespace A098416.P10736050324816855353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A098415 (n + 1)).toNat

end

end A098416.P10736050324816855353

/-! ## A098416.P8346401471960763235

`A300076(A098414(n+1))`
-/

namespace A098416.P8346401471960763235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A098414 (n + 1)).toNat

end

end A098416.P8346401471960763235

/-! ## A098416.P9829084966991685356

`A030451(p?[A007529(n+1)])`
-/

namespace A098416.P9829084966991685356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098416.P9829084966991685356

/-! ## A098416.P6051497508366919699

`A060762(p?[A007529(n+1)])`
-/

namespace A098416.P6051497508366919699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098416.P6051497508366919699

/-!
# A098417: A098414(n) - (A007529(n) + A098415(n))/2.

The programs for A098417, there is no canonical definition to state claims against.
-/

/-! ## A098417.P4305941632743638665

`A098414(n+1)-(A007529(n+1)+A098415(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098417.P4305941632743638665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098414 (n + 1) : ℚ) - (A007529 (n + 1) + A098415 (n + 1) : ℚ) / 2

end

end A098417.P4305941632743638665

/-! ## A098417.P14146029136203232198

`round(sin(A098415(n+1)%6))`
-/

namespace A098417.P14146029136203232198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (A098415 (n + 1)) 6 : ℝ))

end

end A098417.P14146029136203232198

/-! ## A098417.P2069364866456843566

`(A007529(n+1)+1)%3-1`
-/

namespace A098417.P2069364866456843566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007529 (n + 1) + 1) 3 - 1

end

end A098417.P2069364866456843566

/-! ## A098417.P13357101268485930741

`1-(A098414(n+1)+1)%3`
-/

namespace A098417.P13357101268485930741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A098414 (n + 1) + 1) 3

end

end A098417.P13357101268485930741

/-! ## A098417.P17428634454849751286

`A084091(A007529(n+1))`
-/

namespace A098417.P17428634454849751286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A007529 (n + 1)).toNat

end

end A098417.P17428634454849751286

/-! ## A098417.P9472808630237807660

`A084091(A098415(n+1))`
-/

namespace A098417.P9472808630237807660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A098415 (n + 1)).toNat

end

end A098417.P9472808630237807660

/-! ## A098417.P5719692209810704685

`A130778(A098414(n+1))`
-/

namespace A098417.P5719692209810704685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130778 (A098414 (n + 1)).toNat

end

end A098417.P5719692209810704685

/-! ## A098417.P12827664560637886662

`A163804(A098416(n+1))`
-/

namespace A098417.P12827664560637886662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A098416 (n + 1)).toNat

end

end A098417.P12827664560637886662

/-! ## A098417.P14688003335479077834

`A134323(A361267(n+1))`
-/

namespace A098417.P14688003335479077834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (A361267 (n + 1)).toNat

end

end A098417.P14688003335479077834

/-! ## A098417.P12134352788292989006

`A057078(A098414(n+1)+1)`
-/

namespace A098417.P12134352788292989006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A098414 (n + 1) + 1).toNat

end

end A098417.P12134352788292989006

/-!
# A098419: Primes not occurring in prime triples (p,q,r) with p

The programs for A098419, there is no canonical definition to state claims against.
-/

/-! ## A098419.P16241423110553241114

`A000040(eq[0, A098418(n+1)]+1)`
-/

namespace A098419.P16241423110553241114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098419.P16241423110553241114

/-! ## A098419.P1589127969552706123

`A000040(lt[A098418(n+1), 1]+1)`
-/

namespace A098419.P1589127969552706123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A098419.P1589127969552706123

/-! ## A098419.P13881247764973152260

`p?[gcd(A000040(n+1), A098418(n+1))]`
-/

namespace A098419.P13881247764973152260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A098418 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A098419.P13881247764973152260

/-! ## A098419.P17764813208950189124

`p?[(A098418(n+1)+1)*Δ[A007504(n)]]`
-/

namespace A098419.P17764813208950189124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098418 (n + 1) + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098419.P17764813208950189124

/-! ## A098419.P5797962535762656883

`p?[(A098418(n+1)+1)*p?[A014681(n)]]`
-/

namespace A098419.P5797962535762656883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098418 (n + 1) + 1) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098419.P5797962535762656883

/-! ## A098419.P2555733903077126491

`p?[(A098418(n+1)+1)*A008578(n+2)]`
-/

namespace A098419.P2555733903077126491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098418 (n + 1) + 1) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098419.P2555733903077126491

/-!
# A098420: Members of prime triples (p,q,r) with p < q < r = p + 6.

The programs for A098420, there is no canonical definition to state claims against.
-/

/-! ## A098420.P5184872007545083499

`∪[A098414(n+1), A098421(n+1)]`
-/

namespace A098420.P5184872007545083499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098420.P5184872007545083499

/-! ## A098420.P15148049135778775702

`∪[A003961(A007529(n+1)), A098421(n+1)]`
-/

namespace A098420.P15148049135778775702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A007529 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098420.P15148049135778775702

/-! ## A098420.P16693873893470118772

`∪[A064989(A098415(n+1)), A098421(n+1)]`
-/

namespace A098420.P16693873893470118772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A098415 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098420.P16693873893470118772

/-! ## A098420.P6980280241380727585

`∪[A007918(A007529(n+1)+1), A098421(n+1)]`
-/

namespace A098420.P6980280241380727585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007529 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098420.P6980280241380727585

/-!
# A098421: Primes occurring in exactly one prime triple (p,q,r) with p

The programs for A098421, there is no canonical definition to state claims against.
-/

/-! ## A098421.P6946634684946141673

`A045344(eq[1, A098418(n+1)])`
-/

namespace A098421.P6946634684946141673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098421.P6946634684946141673

/-! ## A098421.P2785038591613619192

`A065091(eq[1, A098418(n+1)])`
-/

namespace A098421.P2785038591613619192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098421.P2785038591613619192

/-! ## A098421.P16757049199188957250

`A000040(eq[1, A098418(n+1)]+1)`
-/

namespace A098421.P16757049199188957250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098421.P16757049199188957250

/-! ## A098421.P4202984813653090013

`A006005(eq[1, A098418(n+1)]+1)`
-/

namespace A098421.P4202984813653090013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098421.P4202984813653090013

/-! ## A098421.P8152578779102811883

`p?[Δ[A007504(n)]*A098418(n+1)]`
-/

namespace A098421.P8152578779102811883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098421.P8152578779102811883

/-!
# A098422: Primes occurring in exactly two prime triples (p,q,r) with p

The programs for A098422, there is no canonical definition to state claims against.
-/

/-! ## A098422.P3388123429032941930

`A045319(eq[2, A098418(n+1)])`
-/

namespace A098422.P3388123429032941930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098422.P3388123429032941930

/-! ## A098422.P2207970631791911044

`A045344(eq[2, A098418(n+1)])`
-/

namespace A098422.P2207970631791911044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098422.P2207970631791911044

/-! ## A098422.P18132597412108371817

`A065091(eq[2, A098418(n+1)])`
-/

namespace A098422.P18132597412108371817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098422.P18132597412108371817

/-! ## A098422.P14573020093222267480

`A000040(eq[2, A098418(n+1)]+1)`
-/

namespace A098422.P14573020093222267480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098422.P14573020093222267480

/-! ## A098422.P12435568273212060300

`p?[(A098418(n+1)-1)*A000040(n+1)]`
-/

namespace A098422.P12435568273212060300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098418 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098422.P12435568273212060300

/-!
# A098423: Primes occurring in exactly three prime triples (p,q,r) with p

The programs for A098423, there is no canonical definition to state claims against.
-/

/-! ## A098423.P14908349565265496185

`A086140(n+1)+6`
-/

namespace A098423.P14908349565265496185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1) + 6

end

end A098423.P14908349565265496185

/-! ## A098423.P9056214026563040749

`∩[A006489(n+1), A032591(n)]`
-/

namespace A098423.P9056214026563040749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098423.P9056214026563040749

/-! ## A098423.P15317953611792395409

`∩[A087681(n+1), A032591(n)]`
-/

namespace A098423.P15317953611792395409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098423.P15317953611792395409

/-! ## A098423.P4745787686887646644

`∩[A006489(n+1), A069458(n+1)]`
-/

namespace A098423.P4745787686887646644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098423.P4745787686887646644

/-! ## A098423.P10418866253750361853

`∩[A006489(n+1), A098414(n+1)]`
-/

namespace A098423.P10418866253750361853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098423.P10418866253750361853

/-!
# A098424: Number of prime triples (p,q,r) <= n with p

The programs for A098424, there is no canonical definition to state claims against.
-/

/-! ## A098424.P4870398327642875926

`∑[char[A007529(n+1)-1]]`
-/

namespace A098424.P4870398327642875926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P4870398327642875926

/-! ## A098424.P1401570356127926199

`∑[char[A098415(n+1)-7]]`
-/

namespace A098424.P1401570356127926199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) - 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P1401570356127926199

/-! ## A098424.P11734063931019065539

`∑[char[A000010(A007529(n+1))]]`
-/

namespace A098424.P11734063931019065539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007529 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P11734063931019065539

/-! ## A098424.P715005042480859429

`∑[val(A064989(n+7), A101300(n))]`
-/

namespace A098424.P715005042480859429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064989 (n + 7)).toNat (A101300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P715005042480859429

/-! ## A098424.P17580530646339915908

`∑[val(A045968(n+1), A003961(n+7))]`
-/

namespace A098424.P17580530646339915908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045968 (n + 1)).toNat (A003961 (n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P17580530646339915908

/-! ## A098424.P15700050985024244883

`∑[val(A005843(n+7), A045966(n+1))]`
-/

namespace A098424.P15700050985024244883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005843 (n + 7)).toNat (A045966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P15700050985024244883

/-! ## A098424.P13858272102207658597

`∑[val(A003961(n+1), A349122(n+7))]`
-/

namespace A098424.P13858272102207658597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003961 (n + 1)).toNat (A349122 (n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098424.P13858272102207658597

/-!
# A098427: Order of symmetry group of the five Platonic solids sorted on the number of faces (A053016).

The programs for A098427, there is no canonical definition to state claims against.
-/

/-! ## A098427.P16275510199683325610

`24*∑[(n^n)%4]`
-/

namespace A098427.P16275510199683325610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098427.P16275510199683325610

/-!
# A098428: Number of sexy prime pairs (p, p+6) with p <= n.

The programs for A098428, the canonical program `A098428.P10066825699657563365` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098428 has offset 1).

The definition of A098428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098428.P1120195818134813439

`∑[char[A023201(n+1)-1]]`
-/

namespace A098428.P1120195818134813439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P1120195818134813439

namespace A098428

/-- `∑[char[A023201(n+1)-1]]` -/
def P1120195818134813439.Spec : Prop :=
  ∀ n, (P1120195818134813439.a n : ℤ) = A098428 (n + 1)

end A098428

/-! ## A098428.P16399876225139814452

`∑[char[A000010(A023201(n+1))]]`
-/

namespace A098428.P16399876225139814452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A023201 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P16399876225139814452

namespace A098428

/-- `∑[char[A000010(A023201(n+1))]]` -/
def P16399876225139814452.Spec : Prop :=
  ∀ n, (P16399876225139814452.a n : ℤ) = A098428 (n + 1)

end A098428

/-! ## A098428.P5778582851237259723

`∑[char[A000010(A087695(n+1)-3)]]`
-/

namespace A098428.P5778582851237259723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A087695 (n + 1) - 3).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P5778582851237259723

namespace A098428

/-- `∑[char[A000010(A087695(n+1)-3)]]` -/
def P5778582851237259723.Spec : Prop :=
  ∀ n, (P5778582851237259723.a n : ℤ) = A098428 (n + 1)

end A098428

/-! ## A098428.P13668899462487563211

`∑[char[A089265(A087695(n+1)-3)]]`
-/

namespace A098428.P13668899462487563211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (A087695 (n + 1) - 3).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P13668899462487563211

namespace A098428

/-- `∑[char[A089265(A087695(n+1)-3)]]` -/
def P13668899462487563211.Spec : Prop :=
  ∀ n, (P13668899462487563211.a n : ℤ) = A098428 (n + 1)

end A098428

/-! ## A098428.P10066825699657563365

`∑[and(A010051(n+7), A010051(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098428

/-- `∑[and(A010051(n+7), A010051(n+1))]` -/
def P10066825699657563365.Spec : Prop :=
  ∀ n, P10066825699657563365.a n = A098428 (n + 1)

theorem P10066825699657563365.correct : P10066825699657563365.Spec := by
  intro n
  simp only [A098428, Nat.add_sub_cancel]

end A098428

/-! ## A098428.P12216470293104249798

`∑[A010051(6*A010051(n+1)+n+1)]`
-/

namespace A098428.P12216470293104249798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * A010051 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P12216470293104249798

namespace A098428

/-- `∑[A010051(6*A010051(n+1)+n+1)]` -/
def P12216470293104249798.Spec : Prop :=
  ∀ n, P12216470293104249798.a n = A098428 (n + 1)

end A098428

/-! ## A098428.P9327380089255361609

`∑[A061007(n+1)*A061007(n+7)]`
-/

namespace A098428.P9327380089255361609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A061007 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P9327380089255361609

namespace A098428

/-- `∑[A061007(n+1)*A061007(n+7)]` -/
def P9327380089255361609.Spec : Prop :=
  ∀ n, P9327380089255361609.a n = A098428 (n + 1)

end A098428

/-! ## A098428.P2200060931675371825

`∑[A064911((n+4)²-9)]`
-/

namespace A098428.P2200060931675371825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 ((n + 4) ^ 2 - 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P2200060931675371825

namespace A098428

/-- `∑[A064911((n+4)²-9)]` -/
def P2200060931675371825.Spec : Prop :=
  ∀ n, P2200060931675371825.a n = A098428 (n + 1)

end A098428

/-! ## A098428.P398817559890327563

`∑[A280710(A008458(n+1)+(n+1)²)]`
-/

namespace A098428.P398817559890327563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A008458 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P398817559890327563

namespace A098428

/-- `∑[A280710(A008458(n+1)+(n+1)²)]` -/
def P398817559890327563.Spec : Prop :=
  ∀ n, P398817559890327563.a n = A098428 (n + 1)

end A098428

/-!
# A098429: Number of cousin prime pairs (p, p+4) with p <= n.

The programs for A098429, the canonical program `A098429.P10990739135687540276` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098429 has offset 1).

The definition of A098429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098429.P15185959929686583002

`∑[char[A015913(n+1)-1]]`
-/

namespace A098429.P15185959929686583002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P15185959929686583002

namespace A098429

/-- `∑[char[A015913(n+1)-1]]` -/
def P15185959929686583002.Spec : Prop :=
  ∀ n, (P15185959929686583002.a n : ℤ) = A098429 (n + 1)

end A098429

/-! ## A098429.P6906862761935715741

`∑[char[abs(3-A087679(n+1))]]`
-/

namespace A098429.P6906862761935715741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A087679 (n + 1)|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P6906862761935715741

namespace A098429

/-- `∑[char[abs(3-A087679(n+1))]]` -/
def P6906862761935715741.Spec : Prop :=
  ∀ n, (P6906862761935715741.a n : ℤ) = A098429 (n + 1)

end A098429

/-! ## A098429.P3869651692622715637

`∑[char[p?[A040976(n+1)-2]-1]]`
-/

namespace A098429.P3869651692622715637
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P3869651692622715637

namespace A098429

/-- `∑[char[p?[A040976(n+1)-2]-1]]` -/
def P3869651692622715637.Spec : Prop :=
  ∀ n, (P3869651692622715637.a n : ℤ) = A098429 (n + 1)

end A098429

/-! ## A098429.P9795370088449420151

`∑[char[p?[A000040(n+1)-4]-1]]`
-/

namespace A098429.P9795370088449420151
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P9795370088449420151

namespace A098429

/-- `∑[char[p?[A000040(n+1)-4]-1]]` -/
def P9795370088449420151.Spec : Prop :=
  ∀ n, (P9795370088449420151.a n : ℤ) = A098429 (n + 1)

end A098429

/-! ## A098429.P10418951361418621058

`∑[A010051(n+1)*A010051(n+5)]`
-/

namespace A098429.P10418951361418621058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P10418951361418621058

namespace A098429

/-- `∑[A010051(n+1)*A010051(n+5)]` -/
def P10418951361418621058.Spec : Prop :=
  ∀ n, P10418951361418621058.a n = A098429 (n + 1)

end A098429

/-! ## A098429.P10990739135687540276

`∑[A061007(4*A061007(n+1)+n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098429

/-- `∑[A061007(4*A061007(n+1)+n+1)]` -/
def P10990739135687540276.Spec : Prop :=
  ∀ n, P10990739135687540276.a n = A098429 (n + 1)

theorem P10990739135687540276.correct : P10990739135687540276.Spec := by
  intro n
  simp only [A098429, Nat.add_sub_cancel]

end A098429

/-! ## A098429.P2941553281433692653

`∑[and(A227625(n+1), A227625(n+5))]`
-/

namespace A098429.P2941553281433692653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227625 (n + 1)) (A227625 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P2941553281433692653

namespace A098429

/-- `∑[and(A227625(n+1), A227625(n+5))]` -/
def P2941553281433692653.Spec : Prop :=
  ∀ n, P2941553281433692653.a n = A098429 (n + 1)

end A098429

/-! ## A098429.P13957138299303072086

`A139789(A036234(n+1))`
-/

namespace A098429.P13957138299303072086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (A036234 (n + 1)).toNat

end

end A098429.P13957138299303072086

namespace A098429

/-- `A139789(A036234(n+1))` -/
def P13957138299303072086.Spec : Prop :=
  ∀ n, P13957138299303072086.a n = A098429 (n + 1)

end A098429

/-! ## A098429.P2051801173369847809

`A139789(A000720(n+1)+1)`
-/

namespace A098429.P2051801173369847809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139789 (A000720 (n + 1) + 1).toNat

end

end A098429.P2051801173369847809

namespace A098429

/-- `A139789(A000720(n+1)+1)` -/
def P2051801173369847809.Spec : Prop :=
  ∀ n, P2051801173369847809.a n = A098429 (n + 1)

end A098429

/-! ## A098429.P9288717496743884047

`∑[A064911(A105020(∑[n+3]))]`
-/

namespace A098429.P9288717496743884047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A105020 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P9288717496743884047

namespace A098429

/-- `∑[A064911(A105020(∑[n+3]))]` -/
def P9288717496743884047.Spec : Prop :=
  ∀ n, P9288717496743884047.a n = A098429 (n + 1)

end A098429

/-!
# A098430: a(n) = 4^n*(2*n)!/(n!)^2.

The programs for A098430, the canonical program `A098430.P1597171453298987001` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098430 has offset 0).

The definition of A098430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098430.P9599156754676031317

`A249308(2*n)`
-/

namespace A098430.P9599156754676031317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249308 (2 * n)

end

end A098430.P9599156754676031317

namespace A098430

/-- `A249308(2*n)` -/
def P9599156754676031317.Spec : Prop :=
  ∀ n, P9599156754676031317.a n = A098430 n

end A098430

/-! ## A098430.P1597171453298987001

`4^n*A000984(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098430

/-- `4^n*A000984(n)` -/
def P1597171453298987001.Spec : Prop :=
  ∀ n, P1597171453298987001.a n = A098430 n

theorem P1597171453298987001.correct : P1597171453298987001.Spec := by
  intro n
  simp only [A098430]

end A098430

/-! ## A098430.P4797879251249808333

`4^n*(2*n)!/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098430.P4797879251249808333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A098430.P4797879251249808333

namespace A098430

/-- `4^n*(2*n)!/n!²` -/
def P4797879251249808333.Spec : Prop :=
  ∀ n, P4797879251249808333.a n = (A098430 n : ℚ)

end A098430

/-! ## A098430.P1059076750464309836

`4^n*C(2*n, n)`
-/

namespace A098430.P1059076750464309836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (2 * n) n

end

end A098430.P1059076750464309836

namespace A098430

/-- `4^n*C(2*n, n)` -/
def P1059076750464309836.Spec : Prop :=
  ∀ n, (P1059076750464309836.a n : ℤ) = A098430 n

end A098430

/-! ## A098430.P17090990803858434510

`(16-8/n)*a(n-1)` with `a(0)=1`
-/

namespace A098430.P17090990803858434510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 - 8 / (n : ℚ)) * a (n - 1)

end

end A098430.P17090990803858434510

namespace A098430

/-- `(16-8/n)*a(n-1)` -/
def P17090990803858434510.Spec : Prop :=
  ∀ n, P17090990803858434510.a n = (A098430 n : ℚ)

end A098430

/-! ## A098430.P6805604709942444248

`4*2*(2-n^(-1))*a(n-1)` with `a(0)=1`
-/

namespace A098430.P6805604709942444248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A098430.P6805604709942444248

namespace A098430

/-- `4*2*(2-n^(-1))*a(n-1)` -/
def P6805604709942444248.Spec : Prop :=
  ∀ n, P6805604709942444248.a n = (A098430 n : ℚ)

end A098430

/-! ## A098430.P14402593327958596004

`A060899(2*n)`
-/

namespace A098430.P14402593327958596004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 (2 * n)

end

end A098430.P14402593327958596004

namespace A098430

/-- `A060899(2*n)` -/
def P14402593327958596004.Spec : Prop :=
  ∀ n, P14402593327958596004.a n = A098430 n

end A098430

/-! ## A098430.P2903808626994673291

`A098664(2*n)`
-/

namespace A098430.P2903808626994673291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098664 (2 * n)

end

end A098430.P2903808626994673291

namespace A098430

/-- `A098664(2*n)` -/
def P2903808626994673291.Spec : Prop :=
  ∀ n, P2903808626994673291.a n = A098430 n

end A098430

/-! ## A098430.P11732084392327215062

`A304940(2*n)`
-/

namespace A098430.P11732084392327215062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304940 (2 * n)

end

end A098430.P11732084392327215062

namespace A098430

/-- `A304940(2*n)` -/
def P11732084392327215062.Spec : Prop :=
  ∀ n, P11732084392327215062.a n = A098430 n

end A098430

/-! ## A098430.P9098313928086767344

`A389423(Δ[n²])`
-/

namespace A098430.P9098313928086767344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389423 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098430.P9098313928086767344

namespace A098430

/-- `A389423(Δ[n²])` -/
def P9098313928086767344.Spec : Prop :=
  ∀ n, P9098313928086767344.a n = A098430 n

end A098430

/-!
# A098431: Constant terms of polynomials in A098277.

The programs for A098431, there is no canonical definition to state claims against.
-/

/-! ## A098431.P17698838473735720089

`A000079(n)*A098278(n)`
-/

namespace A098431.P17698838473735720089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A098278 n

end

end A098431.P17698838473735720089

/-! ## A098431.P368037405232525256

`sqrt(A000302(n))*A098278(n)`
-/

namespace A098431.P368037405232525256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * (A098278 n : ℝ)

end

end A098431.P368037405232525256

/-! ## A098431.P689748836374499900

`∑[A011782(n)]*A098278(n)`
-/

namespace A098431.P689748836374499900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A098278 n

end

end A098431.P689748836374499900

/-! ## A098431.P16594552865087097188

`Δ[A000225(n)]*A098278(n)`
-/

namespace A098431.P16594552865087097188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A098278 n

end

end A098431.P16594552865087097188

/-! ## A098431.P7961127024257386915

`Δ[A000918(n)]*A098278(n)`
-/

namespace A098431.P7961127024257386915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A098278 n

end

end A098431.P7961127024257386915

/-!
# A098432: Coefficients of polynomials S(n,x) related to Springer numbers.

The programs for A098432, there is no canonical definition to state claims against.
-/

/-! ## A098432.P5791470224783965230

`A078881(A335026(n+1)+A010685(n))`
-/

namespace A098432.P5791470224783965230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (A335026 (n + 1) + A010685 n).toNat

end

end A098432.P5791470224783965230

/-!
# A098433: Constant terms of polynomials in A098432.

The programs for A098433, there is no canonical definition to state claims against.
-/

/-! ## A098433.P13136446771185365107

`A098432(∑[n]+n)`
-/

namespace A098433.P13136446771185365107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098432 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A098433.P13136446771185365107

/-! ## A098433.P9576868825052686659

`or(1, A098432(A000096(n)))`
-/

namespace A098433.P9576868825052686659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098432 (A000096 n).toNat)

end

end A098433.P9576868825052686659

/-!
# A098434: Triangle read by rows: coefficients of Genocchi polynomials G(n,x); n times the Euler polynomials.

The programs for A098434, there is no canonical definition to state claims against.
-/

/-! ## A098434.P5142328902135858660

`A000265(log2(A140513(n)))*A213620(n)`
-/

namespace A098434.P5142328902135858660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.logb 2 (A140513 n : ℝ))).toNat * A213620 n

end

end A098434.P5142328902135858660

/-! ## A098434.P5887376883549334600

`A000265(A002024(n+1))*A213620(n)`
-/

namespace A098434.P5887376883549334600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002024 (n + 1)).toNat * A213620 n

end

end A098434.P5887376883549334600

/-! ## A098434.P6622389099446296100

`A004175(n)/A137688(n)*∑[A010054(n)]`
-/

namespace A098434.P6622389099446296100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 n : ℚ) / (A137688 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A098434.P6622389099446296100

/-! ## A098434.P16377786929652307565

`A002024(n+1)*A004175(n)/A137688(n)`
-/

namespace A098434.P16377786929652307565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A004175 n : ℚ) / (A137688 n : ℚ)

end

end A098434.P16377786929652307565

/-! ## A098434.P9454798687714169474

`(A003057(n+2)-1)*A004175(n)/A137688(n)`
-/

namespace A098434.P9454798687714169474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - 1 : ℚ) * ((A004175 n : ℚ) / (A137688 n : ℚ))

end

end A098434.P9454798687714169474

/-!
# A098435: Triangle of Salie numbers T(n,k) for negative n,k, n < k.

The programs for A098435, there is no canonical definition to state claims against.
-/

/-! ## A098435.P15523006946501158027

`A127969(eq[0, A155998(n)])`
-/

namespace A098435.P15523006946501158027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098435.P15523006946501158027

/-! ## A098435.P15577425667621710192

`A127969(A185868(n+1)-1)`
-/

namespace A098435.P15577425667621710192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127969 (A185868 (n + 1) - 1).toNat

end

end A098435.P15577425667621710192

/-! ## A098435.P6651707683814912958

`A127969(eq[1, A167279(n+1)+1])`
-/

namespace A098435.P6651707683814912958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167279 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098435.P6651707683814912958

/-! ## A098435.P11915704280361340144

`A127969(eq[1, A189245(n+1)+1])`
-/

namespace A098435.P11915704280361340144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189245 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098435.P11915704280361340144

/-! ## A098435.P2625351433324798373

`A127969(eq[1, A221408(n+1)+1])`
-/

namespace A098435.P2625351433324798373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221408 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098435.P2625351433324798373

/-!
# A098436: Triangle of 3rd central factorial numbers T(n,k).

The programs for A098436, there is no canonical definition to state claims against.
-/

/-! ## A098436.P6392065379617292909

`A269948(comp[∑[n]])`
-/

namespace A098436.P6392065379617292909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A098436.P6392065379617292909

/-! ## A098436.P17043119820950902406

`A269948(A080036(n))+A010054(n)`
-/

namespace A098436.P17043119820950902406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269948 (A080036 n).toNat + A010054 n

end

end A098436.P17043119820950902406

/-! ## A098436.P7149983869520096070

`A269948(A014132(n+1))^A035214(n)`
-/

namespace A098436.P7149983869520096070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269948 (A014132 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A098436.P7149983869520096070

/-! ## A098436.P15416846862348342161

`gcd(A000038(n), A269948(A014132(n+1)))`
-/

namespace A098436.P15416846862348342161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269948 (A014132 (n + 1)).toNat)

end

end A098436.P15416846862348342161

/-! ## A098436.P18004598600122367188

`lcm(A057077(n), A269948(A014132(n+1)))`
-/

namespace A098436.P18004598600122367188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A269948 (A014132 (n + 1)).toNat)

end

end A098436.P18004598600122367188

/-!
# A098437: Row sums in triangle of 3rd central factorial numbers (A098436).

The programs for A098437, there is no canonical definition to state claims against.
-/

/-! ## A098437.P1335099295232067822

`A050294((n+1)*(n!+n*a(n-1)-(n-1)!))` with `a(0)=1, a(1)=2`
-/

namespace A098437.P1335099295232067822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A050294 ((n + 1 : ℤ) * ((Nat.factorial n : ℤ) + ((n : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)))).toNat

end

end A098437.P1335099295232067822

/-!
# A098438: Numbers k such that (30^k - 1)/29 is prime.

The programs for A098438, there is no canonical definition to state claims against.
-/

/-! ## A098438.P17086375727634846186

`p?[∑[∑[A089098(n+1)]+1]]`
-/

namespace A098438.P17086375727634846186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098438.P17086375727634846186

/-!
# A098439: Expansion of 1/sqrt(1-2x-47x^2).

The programs for A098439, there is no canonical definition to state claims against.
-/

/-! ## A098439.P4102382459191041916

`A110180(eq[12, A002262(n)])`
-/

namespace A098439.P4102382459191041916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098439.P4102382459191041916

/-! ## A098439.P12740551944381166075

`A110180(eq[13, A002260(n+1)])`
-/

namespace A098439.P12740551944381166075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098439.P12740551944381166075

/-! ## A098439.P3773291818144708961

`A110180(A000124(n+14)-A005843(n+8))`
-/

namespace A098439.P3773291818144708961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A000124 (n + 14) - A005843 (n + 8)).toNat

end

end A098439.P3773291818144708961

/-! ## A098439.P12826076160480950205

`A307855(eq[12, A025581(n)])`
-/

namespace A098439.P12826076160480950205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098439.P12826076160480950205

/-! ## A098439.P15686257775090589742

`A307855(A008574(n+8)+A000124(n+9))`
-/

namespace A098439.P15686257775090589742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (A008574 (n + 8) + A000124 (n + 9)).toNat

end

end A098439.P15686257775090589742

/-!
# A098440: Expansion of 1/sqrt(1-2x-59x^2).

The programs for A098440, there is no canonical definition to state claims against.
-/

/-! ## A098440.P1258405194193882883

`A110180(eq[15, A002262(n)])`
-/

namespace A098440.P1258405194193882883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098440.P1258405194193882883

/-! ## A098440.P5978804717298967272

`A110180(eq[15, A144328(n+1)])`
-/

namespace A098440.P5978804717298967272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098440.P5978804717298967272

/-! ## A098440.P5021831189024720154

`A110180(eq[16, A002260(n+1)])`
-/

namespace A098440.P5021831189024720154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098440.P5021831189024720154

/-! ## A098440.P14690529917476476936

`A307855(eq[15, A025581(n)])`
-/

namespace A098440.P14690529917476476936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098440.P14690529917476476936

/-! ## A098440.P17325181552906320397

`A307855(eq[16, A004736(n+1)])`
-/

namespace A098440.P17325181552906320397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098440.P17325181552906320397

/-!
# A098441: Expansion of 1/sqrt(1 - 2*x - 63*x^2).

The programs for A098441, there is no canonical definition to state claims against.
-/

/-! ## A098441.P2190841661112771996

`A307855(eq[16, A025581(n)])`
-/

namespace A098441.P2190841661112771996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098441.P2190841661112771996

/-! ## A098441.P531584548252164613

`A307847(2*n+∑[n+3]+7)`
-/

namespace A098441.P531584548252164613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A098441.P531584548252164613

/-! ## A098441.P2631751987589282165

`or(1, A307847(A052905(n+2)))`
-/

namespace A098441.P2631751987589282165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307847 (A052905 (n + 2)).toNat)

end

end A098441.P2631751987589282165

/-! ## A098441.P14443645065578335845

`or(1, A307847(eq[5, A193739(n)]))`
-/

namespace A098441.P14443645065578335845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A098441.P14443645065578335845

/-! ## A098441.P2586543724586359254

`abs(A097807(n))*A307847(A052905(n+2))`
-/

namespace A098441.P2586543724586359254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n| * A307847 (A052905 (n + 2)).toNat

end

end A098441.P2586543724586359254

/-! ## A098441.P1594785558603258638

`A307847(A052905(n+2))%A001025(n+1)`
-/

namespace A098441.P1594785558603258638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307847 (A052905 (n + 2)).toNat) (A001025 (n + 1))

end

end A098441.P1594785558603258638

/-!
# A098442: Expansion of 1/sqrt(1-2*x-95*x^2).

The programs for A098442, there is no canonical definition to state claims against.
-/

/-! ## A098442.P17978944543422903616

`A307855(eq[25, A004736(n+1)])`
-/

namespace A098442.P17978944543422903616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098442.P17978944543422903616

/-! ## A098442.P1740898546531420477

`A307855(eq[25, A195663(n)])`
-/

namespace A098442.P1740898546531420477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098442.P1740898546531420477

/-!
# A098443: Expansion of 1/sqrt(1-8*x-4*x^2).

The programs for A098443, there is no canonical definition to state claims against.
-/

/-! ## A098443.P11285571648073248131

`A106260(n)/2^n`
-/

namespace A098443.P11285571648073248131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106260 n : ℚ) / (2 ^ n : ℚ)

end

end A098443.P11285571648073248131

/-! ## A098443.P15363343579881745271

`floor(A106260(n)/A000079(n))`
-/

namespace A098443.P15363343579881745271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106260 n : ℚ) / (A000079 n : ℚ)⌋

end

end A098443.P15363343579881745271

/-! ## A098443.P5306388208230711631

`floor(A106260(n)/A011782(n+1))`
-/

namespace A098443.P5306388208230711631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106260 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A098443.P5306388208230711631

/-! ## A098443.P4454059905086479732

`lcm(A106260(n)/A000079(n), A033999(n))`
-/

namespace A098443.P4454059905086479732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A106260 n : ℚ) / (A000079 n : ℚ))) (A033999 n)

end

end A098443.P4454059905086479732

/-! ## A098443.P14044542406043195878

`A106260(n)/A000079(n)*char[A006370(n)]`
-/

namespace A098443.P14044542406043195878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106260 n : ℚ) / (A000079 n : ℚ) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A098443.P14044542406043195878

/-! ## A098443.P12527462725527092645

`(A106260(n)/A000079(n))%Δ[A001020(n)]`
-/

namespace A098443.P12527462725527092645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A106260 n : ℚ) / (A000079 n : ℚ))) (f1 (n + 1) - f1 n)

end

end A098443.P12527462725527092645

/-! ## A098443.P16627875050366052662

`A000007(n+1)+A106260(n)/A000079(n)`
-/

namespace A098443.P16627875050366052662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A106260 n : ℚ) / (A000079 n : ℚ)

end

end A098443.P16627875050366052662

/-! ## A098443.P3570423888599050

`A386621(∑[n+3])`
-/

namespace A098443.P3570423888599050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098443.P3570423888599050

/-! ## A098443.P5498891621833910258

`A008683(A001248(n+1))+A106260(n)/A000079(n)`
-/

namespace A098443.P5498891621833910258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A001248 (n + 1)).toNat : ℚ) + (A106260 n : ℚ) / (A000079 n : ℚ)

end

end A098443.P5498891621833910258

/-!
# A098444: Expansion of 1/sqrt(1-6x-11x^2).

The programs for A098444, there is no canonical definition to state claims against.
-/

/-! ## A098444.P10404939994449014207

`A051953(3*A119259(n))`
-/

namespace A098444.P10404939994449014207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (3 * A119259 n).toNat

end

end A098444.P10404939994449014207

/-!
# A098445: Coefficients of powers of q^5 in (q)_oo^5 == (q_5)^oo (mod 5).

The programs for A098445, the canonical program `A098445.P10491373951280653570` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098445 has offset 0).

The definition of A098445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098445.P1876933504395230926

`A049315(n)%5`
-/

namespace A098445.P1876933504395230926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049315 n) 5

end

end A098445.P1876933504395230926

namespace A098445

/-- `A049315(n)%5` -/
def P1876933504395230926.Spec : Prop :=
  ∀ n, P1876933504395230926.a n = A098445 n

end A098445

/-! ## A098445.P15392528287633733946

`A261568(n)%5`
-/

namespace A098445.P15392528287633733946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261568 n) 5

end

end A098445.P15392528287633733946

namespace A098445

/-- `A261568(n)%5` -/
def P15392528287633733946.Spec : Prop :=
  ∀ n, P15392528287633733946.a n = A098445 n

end A098445

/-! ## A098445.P15684073483174788365

`A278680(n)%5`
-/

namespace A098445.P15684073483174788365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278680 n) 5

end

end A098445.P15684073483174788365

namespace A098445

/-- `A278680(n)%5` -/
def P15684073483174788365.Spec : Prop :=
  ∀ n, P15684073483174788365.a n = A098445 n

end A098445

/-! ## A098445.P15510025467875244561

`(A006952(n)%3)²`
-/

namespace A098445.P15510025467875244561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006952 n) 3 ^ 2

end

end A098445.P15510025467875244561

namespace A098445

/-- `(A006952(n)%3)²` -/
def P15510025467875244561.Spec : Prop :=
  ∀ n, P15510025467875244561.a n = A098445 n

end A098445

/-! ## A098445.P14473430768321663532

`(A032302(n)%3)²`
-/

namespace A098445.P14473430768321663532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032302 n) 3 ^ 2

end

end A098445.P14473430768321663532

namespace A098445

/-- `(A032302(n)%3)²` -/
def P14473430768321663532.Spec : Prop :=
  ∀ n, P14473430768321663532.a n = A098445 n

end A098445

/-! ## A098445.P17003913374439881778

`(A182604(n)%3)²`
-/

namespace A098445.P17003913374439881778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182604 n) 3 ^ 2

end

end A098445.P17003913374439881778

namespace A098445

/-- `(A182604(n)%3)²` -/
def P17003913374439881778.Spec : Prop :=
  ∀ n, P17003913374439881778.a n = A098445 n

end A098445

/-! ## A098445.P4064254658586343113

`(A221578(n)%3)²`
-/

namespace A098445.P4064254658586343113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221578 n) 3 ^ 2

end

end A098445.P4064254658586343113

namespace A098445

/-- `(A221578(n)%3)²` -/
def P4064254658586343113.Spec : Prop :=
  ∀ n, P4064254658586343113.a n = A098445 n

end A098445

/-! ## A098445.P138137862898063070

`(A261569(n)%3)²`
-/

namespace A098445.P138137862898063070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261569 n) 3 ^ 2

end

end A098445.P138137862898063070

namespace A098445

/-- `(A261569(n)%3)²` -/
def P138137862898063070.Spec : Prop :=
  ∀ n, P138137862898063070.a n = A098445 n

end A098445

/-! ## A098445.P17363883084466252555

`(A278690(n)%3)²`
-/

namespace A098445.P17363883084466252555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278690 n) 3 ^ 2

end

end A098445.P17363883084466252555

namespace A098445

/-- `(A278690(n)%3)²` -/
def P17363883084466252555.Spec : Prop :=
  ∀ n, P17363883084466252555.a n = A098445 n

end A098445

/-! ## A098445.P10491373951280653570

`log2(gcd(16, A007706(n)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098445

/-- `log2(gcd(16, A007706(n)))` -/
def P10491373951280653570.Spec : Prop :=
  ∀ n, P10491373951280653570.a n = (A098445 n : ℝ)

end A098445

/-! ## A098445.P1599307197238020913

`dr(and(13, A010815(n)))`
-/

namespace A098445.P1599307197238020913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 13 (A010815 n))

end

end A098445.P1599307197238020913

namespace A098445

/-- `dr(and(13, A010815(n)))` -/
def P1599307197238020913.Spec : Prop :=
  ∀ n, (P1599307197238020913.a n : ℤ) = A098445 n

end A098445

/-! ## A098445.P7260866844182974620

`floor(sinh(A286956(n)-n))²`
-/

namespace A098445.P7260866844182974620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (A286956 n - (n : ℤ) : ℝ)⌋ ^ 2

end

end A098445.P7260866844182974620

namespace A098445

/-- `floor(sinh(A286956(n)-n))²` -/
def P7260866844182974620.Spec : Prop :=
  ∀ n, P7260866844182974620.a n = A098445 n

end A098445

/-! ## A098445.P5541129981296852827

`((A322212(∑[n])+3)%3)²`
-/

namespace A098445.P5541129981296852827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322212 (∑ j ∈ Finset.range (n + 1), f1 j) + 3) 3 ^ 2

end

end A098445.P5541129981296852827

namespace A098445

/-- `((A322212(∑[n])+3)%3)²` -/
def P5541129981296852827.Spec : Prop :=
  ∀ n, P5541129981296852827.a n = A098445 n

end A098445

/-! ## A098445.P14110476389209054731

`A080336(and(3, A080332(n)))`
-/

namespace A098445.P14110476389209054731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (Int.land 3 (A080332 n)).toNat

end

end A098445.P14110476389209054731

namespace A098445

/-- `A080336(and(3, A080332(n)))` -/
def P14110476389209054731.Spec : Prop :=
  ∀ n, P14110476389209054731.a n = A098445 n

end A098445

/-! ## A098445.P13165558861930657430

`A268631(5-A286956(n)+n)`
-/

namespace A098445.P13165558861930657430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (5 - A286956 n + (n : ℤ)).toNat

end

end A098445.P13165558861930657430

namespace A098445

/-- `A268631(5-A286956(n)+n)` -/
def P13165558861930657430.Spec : Prop :=
  ∀ n, P13165558861930657430.a n = A098445 n

end A098445

/-! ## A098445.P3247554402886836634

`A268631(5-(A286956(n)-n))`
-/

namespace A098445.P3247554402886836634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (5 - (A286956 n - (n : ℤ))).toNat

end

end A098445.P3247554402886836634

namespace A098445

/-- `A268631(5-(A286956(n)-n))` -/
def P3247554402886836634.Spec : Prop :=
  ∀ n, P3247554402886836634.a n = A098445 n

end A098445

/-! ## A098445.P13853523765568993613

`A027193(and(5, A286956(n)-n))`
-/

namespace A098445.P13853523765568993613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (Int.land 5 (A286956 n - (n : ℤ))).toNat

end

end A098445.P13853523765568993613

namespace A098445

/-- `A027193(and(5, A286956(n)-n))` -/
def P13853523765568993613.Spec : Prop :=
  ∀ n, P13853523765568993613.a n = A098445 n

end A098445

/-! ## A098445.P2037910688379567021

`∑{d}[and(3, A263501(A008585(n))), #]`
-/

namespace A098445.P2037910688379567021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A263501 (A008585 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A098445.P2037910688379567021

namespace A098445

/-- `∑{d}[and(3, A263501(A008585(n))), #]` -/
def P2037910688379567021.Spec : Prop :=
  ∀ n, (P2037910688379567021.a n : ℤ) = A098445 n

end A098445

/-! ## A098445.P9724103805980496370

`A286956((1-A286956(n)+n)²)`
-/

namespace A098445.P9724103805980496370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 ((1 - A286956 n + (n : ℤ)) ^ 2).toNat

end

end A098445.P9724103805980496370

namespace A098445

/-- `A286956((1-A286956(n)+n)²)` -/
def P9724103805980496370.Spec : Prop :=
  ∀ n, P9724103805980496370.a n = A098445 n

end A098445

/-! ## A098445.P16497657048634626588

`(2*A010815(n)-A186741(n))²`
-/

namespace A098445.P16497657048634626588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A010815 n - A186741 n) ^ 2

end

end A098445.P16497657048634626588

namespace A098445

/-- `(2*A010815(n)-A186741(n))²` -/
def P16497657048634626588.Spec : Prop :=
  ∀ n, P16497657048634626588.a n = A098445 n

end A098445

/-!
# A098446: Triangle, read by rows, such that T(n,k) equals the k-th term of the convolution of the (n-1)-th diagonal with the k-th row of this triangle.

The programs for A098446, there is no canonical definition to state claims against.
-/

/-! ## A098446.P9718685726004227750

`A091351(∑[2*n]%comp[∑[n]])`
-/

namespace A098446.P9718685726004227750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A098446.P9718685726004227750

/-! ## A098446.P9799996412039327362

`A091351(∑[char[∑[n]]]²-(n+1))`
-/

namespace A098446.P9799996412039327362
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A098446.P9799996412039327362

/-! ## A098446.P2706591295995198133

`and(-1, A091351(A061579(n)))`
-/

namespace A098446.P2706591295995198133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A091351 (A061579 n).toNat)

end

end A098446.P2706591295995198133

/-! ## A098446.P8696983513871002200

`A264668(n)+A091351(A061579(n))`
-/

namespace A098446.P8696983513871002200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A091351 (A061579 n).toNat

end

end A098446.P8696983513871002200

/-! ## A098446.P15817689198215735770

`A091351(A061579(n))^A035214(n)`
-/

namespace A098446.P15817689198215735770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091351 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A098446.P15817689198215735770

/-! ## A098446.P2877723941895082633

`A091351(A061579(n))^A178334(n)`
-/

namespace A098446.P2877723941895082633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091351 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A098446.P2877723941895082633

/-! ## A098446.P17548408081414612687

`A091351(A061579(n))%A017200(n)`
-/

namespace A098446.P17548408081414612687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091351 (A061579 n).toNat) (A017200 n)

end

end A098446.P17548408081414612687

/-! ## A098446.P8239485337132732465

`gcd(A000038(n), A091351(A061579(n)))`
-/

namespace A098446.P8239485337132732465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091351 (A061579 n).toNat)

end

end A098446.P8239485337132732465

/-! ## A098446.P11735219949382849572

`A091351(A061579(n))^(A000040(n+1)%2)`
-/

namespace A098446.P11735219949382849572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091351 (A061579 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A098446.P11735219949382849572

/-! ## A098446.P14751287838779444712

`C(A000010(n+1), n)!*A091351(A061579(n))`
-/

namespace A098446.P14751287838779444712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A091351 (A061579 n).toNat

end

end A098446.P14751287838779444712

/-!
# A098447: Triangle T, read by rows, such that diagonal n equals column 0 of T^(n+1), the (n+1)-th matrix power of T.

The programs for A098447, there is no canonical definition to state claims against.
-/

/-! ## A098447.P9421894962159995615

`A226537(A098446(n))`
-/

namespace A098447.P9421894962159995615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (A098446 n).toNat

end

end A098447.P9421894962159995615

/-! ## A098447.P8303133769255397770

`A243903(A322268(n))`
-/

namespace A098447.P8303133769255397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A322268 n).toNat

end

end A098447.P8303133769255397770

/-! ## A098447.P5916001840415657579

`A098446(n)+A033886(A208673(n))`
-/

namespace A098447.P5916001840415657579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 n + A033886 (A208673 n).toNat

end

end A098447.P5916001840415657579

/-! ## A098447.P14603961484141583387

`A102681(A320606(n+1))+A098446(n)`
-/

namespace A098447.P14603961484141583387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A320606 (n + 1)).toNat + A098446 n

end

end A098447.P14603961484141583387

/-! ## A098447.P17500438845749197672

`A091351(A061579(n))+A033886(A208673(n))`
-/

namespace A098447.P17500438845749197672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A061579 n).toNat + A033886 (A208673 n).toNat

end

end A098447.P17500438845749197672

/-!
# A098448: Row sums of triangle A098447, in which diagonal n equals column 0 of the (n+1)-th matrix power of A098447.

The programs for A098448, there is no canonical definition to state claims against.
-/

/-! ## A098448.P9931578518585406123

`record[ratio[1/A098447(n)]]`
-/

namespace A098448.P9931578518585406123
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A098447 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098448.P9931578518585406123

/-! ## A098448.P17629367647224836079

`A098447(∑[n+2]-1)`
-/

namespace A098448.P17629367647224836079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098447 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A098448.P17629367647224836079

/-! ## A098448.P13246496889695837390

`record[ratio[A098447(A056943(n))]]`
-/

namespace A098448.P13246496889695837390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098447 (A056943 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098448.P13246496889695837390

/-! ## A098448.P8856702471580947401

`record[ratio[A098447(A061579(n))]]`
-/

namespace A098448.P8856702471580947401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098447 (A061579 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098448.P8856702471580947401

/-! ## A098448.P9602841051221410661

`record[A098447(eq[1, A104445(n)])]`
-/

namespace A098448.P9602841051221410661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098447 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098448.P9602841051221410661

/-!
# A098449: Smallest n-digit semiprime.

The programs for A098449, there is no canonical definition to state claims against.
-/

/-! ## A098449.P2967356481402234306

`A174322(n+1)-A000038(n)`
-/

namespace A098449.P2967356481402234306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174322 (n + 1) - A000038 n

end

end A098449.P2967356481402234306

/-! ## A098449.P3525867142558026449

`A174322(n+1)+A002448(n²+1)`
-/

namespace A098449.P3525867142558026449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174322 (n + 1) + A002448 (n ^ 2 + 1)

end

end A098449.P3525867142558026449

/-! ## A098449.P12056670065906632445

`A174322(n+1)-A089799(2*n²)`
-/

namespace A098449.P12056670065906632445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174322 (n + 1) - A089799 (2 * n ^ 2)

end

end A098449.P12056670065906632445

/-! ## A098449.P16809154290455744681

`A174322(n+1)-A343824(A251758(2*(n+1)))`
-/

namespace A098449.P16809154290455744681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174322 (n + 1) - A343824 (A251758 (2 * (n + 1))).toNat

end

end A098449.P16809154290455744681

/-! ## A098449.P10350917607753187058

`A174322(n+1)-A000122(A284421(n))`
-/

namespace A098449.P10350917607753187058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174322 (n + 1) - A000122 (A284421 n).toNat

end

end A098449.P10350917607753187058

/-!
# A098450: Largest n-digit semiprime.

The programs for A098450, there is no canonical definition to state claims against.
-/

/-! ## A098450.P1758150277600182106

`A017934(A005843(n+1))-A119320(n+1)`
-/

namespace A098450.P1758150277600182106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (A005843 (n + 1)).toNat - A119320 (n + 1)

end

end A098450.P1758150277600182106

/-! ## A098450.P2915872620912206020

`A017934(A004275(n+2))-A119320(n+1)`
-/

namespace A098450.P2915872620912206020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (A004275 (n + 2)).toNat - A119320 (n + 1)

end

end A098450.P2915872620912206020

/-! ## A098450.P6475119733997269879

`Δ[A002275(n+1)]-A119320(n+1)`
-/

namespace A098450.P6475119733997269879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A119320 (n + 1)

end

end A098450.P6475119733997269879

/-!
# A098451: One of three ordered sets of positive integers that solves the minimal magic die puzzle.

The programs for A098451, there is no canonical definition to state claims against.
-/

/-! ## A098451.P1678881366563483654

`∑[ceil(5^(n+1)/A204408(3*n+2))]`
-/

namespace A098451.P1678881366563483654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ (n + 1) : ℚ) / (A204408 (3 * n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098451.P1678881366563483654

/-! ## A098451.P12418933158663450064

`∑[A246029(Δ[A165878(n)])]`
-/

namespace A098451.P12418933158663450064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098451.P12418933158663450064

/-! ## A098451.P4954267314788578791

`record[A060384(n)+A033665(n)]`
-/

namespace A098451.P4954267314788578791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n + A033665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098451.P4954267314788578791

/-! ## A098451.P7279123337777095835

`eq[3, A055640(A043459(n+1))]`
-/

namespace A098451.P7279123337777095835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A043459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098451.P7279123337777095835

/-! ## A098451.P6013108226037479591

`A209626(A326548(n+1))+n`
-/

namespace A098451.P6013108226037479591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209626 (A326548 (n + 1)).toNat + (n : ℤ)

end

end A098451.P6013108226037479591

/-!
# A098452: One of three ordered sets of positive integers that solves the minimal magic die puzzle.

The programs for A098452, there is no canonical definition to state claims against.
-/

/-! ## A098452.P10783115106185652419

`eq[0, A151722(A130371(n))]`
-/

namespace A098452.P10783115106185652419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 (A130371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098452.P10783115106185652419

/-! ## A098452.P8107311523974493893

`∑[A033639(A034416(n+1))]`
-/

namespace A098452.P8107311523974493893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033639 (A034416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098452.P8107311523974493893

/-! ## A098452.P13428780919167112966

`∑[A055230(A055230(n+1))]`
-/

namespace A098452.P13428780919167112966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (A055230 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098452.P13428780919167112966

/-! ## A098452.P7098915421014818372

`∑[A178252(A054908(n+3))]`
-/

namespace A098452.P7098915421014818372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (A054908 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098452.P7098915421014818372

/-! ## A098452.P4895350192599869423

`∑[A000045(∏{d}[A124750(n), #])]`
-/

namespace A098452.P4895350192599869423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098452.P4895350192599869423

/-!
# A098453: Expansion of 1/sqrt(1 - 4*x - 12*x^2).

The programs for A098453, the canonical program `A098453.P18121437596487375124` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098453 has offset 0).

The definition of A098453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098453.P18121437596487375124

`2^n*A002426(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098453

/-- `2^n*A002426(n)` -/
def P18121437596487375124.Spec : Prop :=
  ∀ n, P18121437596487375124.a n = A098453 n

theorem P18121437596487375124.correct : P18121437596487375124.Spec := by
  intro n
  simp only [A098453]

end A098453

/-! ## A098453.P5017284277824622790

`2^n*A115990(∑[n])`
-/

namespace A098453.P5017284277824622790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A115990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098453.P5017284277824622790

namespace A098453

/-- `2^n*A115990(∑[n])` -/
def P5017284277824622790.Spec : Prop :=
  ∀ n, P5017284277824622790.a n = A098453 n

end A098453

/-! ## A098453.P4029768253790433169

`2^n*A005213(2*n)`
-/

namespace A098453.P4029768253790433169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005213 (2 * n)

end

end A098453.P4029768253790433169

namespace A098453

/-- `2^n*A005213(2*n)` -/
def P4029768253790433169.Spec : Prop :=
  ∀ n, P4029768253790433169.a n = A098453 n

end A098453

/-! ## A098453.P8320948657176637875

`(2*A097861(n)+1)*2^n`
-/

namespace A098453.P8320948657176637875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A097861 n + 1) * (2 ^ n : ℤ)

end

end A098453.P8320948657176637875

namespace A098453

/-- `(2*A097861(n)+1)*2^n` -/
def P8320948657176637875.Spec : Prop :=
  ∀ n, P8320948657176637875.a n = A098453 n

end A098453

/-! ## A098453.P5983705099272877826

`lcm(2^n, A002426(round(sqrt(n²+1))))`
-/

namespace A098453.P5983705099272877826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A002426 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A098453.P5983705099272877826

namespace A098453

/-- `lcm(2^n, A002426(round(sqrt(n²+1))))` -/
def P5983705099272877826.Spec : Prop :=
  ∀ n, (P5983705099272877826.a n : ℤ) = A098453 n

end A098453

/-! ## A098453.P9051916349614993293

`A000079(n)*A346540(∑[n])`
-/

namespace A098453.P9051916349614993293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A346540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098453.P9051916349614993293

namespace A098453

/-- `A000079(n)*A346540(∑[n])` -/
def P9051916349614993293.Spec : Prop :=
  ∀ n, P9051916349614993293.a n = A098453 n

end A098453

/-! ## A098453.P3993531185072242185

`record[A005213(n)*A016116(n)]`
-/

namespace A098453.P3993531185072242185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 n * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098453.P3993531185072242185

namespace A098453

/-- `record[A005213(n)*A016116(n)]` -/
def P3993531185072242185.Spec : Prop :=
  ∀ n, P3993531185072242185.a n = A098453 n

end A098453

/-! ## A098453.P14524387982261685036

`A002426(n)*A131577(n+1)`
-/

namespace A098453.P14524387982261685036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A131577 (n + 1)

end

end A098453.P14524387982261685036

namespace A098453

/-- `A002426(n)*A131577(n+1)` -/
def P14524387982261685036.Spec : Prop :=
  ∀ n, P14524387982261685036.a n = A098453 n

end A098453

/-! ## A098453.P9762179741957585847

`A002426(n)*A016116(2*n)`
-/

namespace A098453.P9762179741957585847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A016116 (2 * n)

end

end A098453.P9762179741957585847

namespace A098453

/-- `A002426(n)*A016116(2*n)` -/
def P9762179741957585847.Spec : Prop :=
  ∀ n, P9762179741957585847.a n = A098453 n

end A098453

/-! ## A098453.P6844401377160824233

`A005213(2*n)*A016116(2*n)`
-/

namespace A098453.P6844401377160824233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) * A016116 (2 * n)

end

end A098453.P6844401377160824233

namespace A098453

/-- `A005213(2*n)*A016116(2*n)` -/
def P6844401377160824233.Spec : Prop :=
  ∀ n, P6844401377160824233.a n = A098453 n

end A098453

/-! ## A098453.P13797105943044953572

`A005213(2*n)*A074323(2*n+1)`
-/

namespace A098453.P13797105943044953572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) * A074323 (2 * n + 1)

end

end A098453.P13797105943044953572

namespace A098453

/-- `A005213(2*n)*A074323(2*n+1)` -/
def P13797105943044953572.Spec : Prop :=
  ∀ n, P13797105943044953572.a n = A098453 n

end A098453

/-! ## A098453.P10621306787215205766

`A005213(2*n)/2*A155559(n+1)`
-/

namespace A098453.P10621306787215205766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005213 (2 * n) : ℚ) / 2 * (A155559 (n + 1) : ℚ)

end

end A098453.P10621306787215205766

namespace A098453

/-- `A005213(2*n)/2*A155559(n+1)` -/
def P10621306787215205766.Spec : Prop :=
  ∀ n, P10621306787215205766.a n = (A098453 n : ℚ)

end A098453

/-! ## A098453.P4444905855652011007

`A002426(n)*A008949(A000096(n))`
-/

namespace A098453.P4444905855652011007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A008949 (A000096 n).toNat

end

end A098453.P4444905855652011007

namespace A098453

/-- `A002426(n)*A008949(A000096(n))` -/
def P4444905855652011007.Spec : Prop :=
  ∀ n, P4444905855652011007.a n = A098453 n

end A098453

/-! ## A098453.P8720353929185132602

`A002426(n)*A102363(A000217(n))`
-/

namespace A098453.P8720353929185132602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A102363 (A000217 n).toNat

end

end A098453.P8720353929185132602

namespace A098453

/-- `A002426(n)*A102363(A000217(n))` -/
def P8720353929185132602.Spec : Prop :=
  ∀ n, P8720353929185132602.a n = A098453 n

end A098453

/-! ## A098453.P13584347429470036194

`A002426(n)/A168053(n)*A168054(n)`
-/

namespace A098453.P13584347429470036194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n : ℚ) / (A168053 n : ℚ) * (A168054 n : ℚ)

end

end A098453.P13584347429470036194

namespace A098453

/-- `A002426(n)/A168053(n)*A168054(n)` -/
def P13584347429470036194.Spec : Prop :=
  ∀ n, P13584347429470036194.a n = (A098453 n : ℚ)

end A098453

/-! ## A098453.P5984367545038477186

`A002426(n)/A007971(n+1)*A103970(n)`
-/

namespace A098453.P5984367545038477186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n : ℚ) / (A007971 (n + 1) : ℚ) * (A103970 n : ℚ)

end

end A098453.P5984367545038477186

namespace A098453

/-- `A002426(n)/A007971(n+1)*A103970(n)` -/
def P5984367545038477186.Spec : Prop :=
  ∀ n, P5984367545038477186.a n = (A098453 n : ℚ)

end A098453

/-! ## A098453.P5324601774952588087

`A110135(A167614(n+2))`
-/

namespace A098453.P5324601774952588087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110135 (A167614 (n + 2)).toNat

end

end A098453.P5324601774952588087

namespace A098453

/-- `A110135(A167614(n+2))` -/
def P5324601774952588087.Spec : Prop :=
  ∀ n, P5324601774952588087.a n = A098453 n

end A098453

/-! ## A098453.P8729508547352746573

`A000079(n)*A116392(A000217(n))`
-/

namespace A098453.P8729508547352746573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A116392 (A000217 n).toNat

end

end A098453.P8729508547352746573

namespace A098453

/-- `A000079(n)*A116392(A000217(n))` -/
def P8729508547352746573.Spec : Prop :=
  ∀ n, P8729508547352746573.a n = A098453 n

end A098453

/-!
# A098455: Expansion of 1/sqrt(1-4*x-36*x^2).

The programs for A098455, there is no canonical definition to state claims against.
-/

/-! ## A098455.P1128510458091175984

`A387466(A000217(n+3)+n)`
-/

namespace A098455.P1128510458091175984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387466 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A098455.P1128510458091175984

/-!
# A098457: Farey Bisection Expansion of sqrt(7).

The programs for A098457, the canonical program `A098457.P7856151399236994957` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098457 has offset 1).

The definition of A098457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098457.P7856151399236994957

`a(n-7)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A098457

/-- `a(n-7)` -/
def P7856151399236994957.Spec : Prop :=
  ∀ n, (P7856151399236994957.a n : ℤ) = A098457 (n + 1)

theorem P7856151399236994957.correct : P7856151399236994957.Spec := by
  intro n
  simp only [A098457, Nat.add_sub_cancel]

end A098457

/-!
# A098460: Expansion of e.g.f. 1/sqrt(1-2x-2x^2).

The programs for A098460, the canonical program `A098460.P2849141228669470070` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098460 has offset 0).

The definition of A098460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098460.P2849141228669470070

`n!/2^n*A084609(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098460

/-- `n!/2^n*A084609(n)` -/
def P2849141228669470070.Spec : Prop :=
  ∀ n, P2849141228669470070.a n = (A098460 n : ℚ)

end A098460

/-! ## A098460.P18242063294730062783

`A000142(n)/A000079(n)*A084609(n)`
-/

namespace A098460.P18242063294730062783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A084609 n : ℚ)

end

end A098460.P18242063294730062783

namespace A098460

/-- `A000142(n)/A000079(n)*A084609(n)` -/
def P18242063294730062783.Spec : Prop :=
  ∀ n, P18242063294730062783.a n = (A098460 n : ℚ)

end A098460

/-! ## A098460.P11288333329599053711

`A012244(n)/A006139(n)*A084609(n)`
-/

namespace A098460.P11288333329599053711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012244 n : ℚ) / (A006139 n : ℚ) * (A084609 n : ℚ)

end

end A098460.P11288333329599053711

namespace A098460

/-- `A012244(n)/A006139(n)*A084609(n)` -/
def P11288333329599053711.Spec : Prop :=
  ∀ n, P11288333329599053711.a n = (A098460 n : ℚ)

end A098460

/-! ## A098460.P7083671412200933837

`A084609(n)/A098453(n)*A098461(n)`
-/

namespace A098460.P7083671412200933837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084609 n : ℚ) / (A098453 n : ℚ) * (A098461 n : ℚ)

end

end A098460.P7083671412200933837

namespace A098460

/-- `A084609(n)/A098453(n)*A098461(n)` -/
def P7083671412200933837.Spec : Prop :=
  ∀ n, P7083671412200933837.a n = (A098460 n : ℚ)

end A098460

/-!
# A098461: Expansion of E.g.f.: 1/sqrt(1-2*x-3*x^2).

The programs for A098461, the canonical program `A098461.P15099886996335367272` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098461 has offset 0).

The definition of A098461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098461.P15099886996335367272

`n!*A002426(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098461

/-- `n!*A002426(n)` -/
def P15099886996335367272.Spec : Prop :=
  ∀ n, P15099886996335367272.a n = A098461 n

theorem P15099886996335367272.correct : P15099886996335367272.Spec := by
  intro n
  simp only [A098461]

end A098461

/-! ## A098461.P6180752037146220580

`n!/2^n*A098453(n)`
-/

namespace A098461.P6180752037146220580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 ^ n : ℚ) * (A098453 n : ℚ)

end

end A098461.P6180752037146220580

namespace A098461

/-- `n!/2^n*A098453(n)` -/
def P6180752037146220580.Spec : Prop :=
  ∀ n, P6180752037146220580.a n = (A098461 n : ℚ)

end A098461

/-! ## A098461.P12198485517771373086

`sqrt(A168597(n))*n!`
-/

namespace A098461.P12198485517771373086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168597 n : ℝ) * (Nat.factorial n : ℝ)

end

end A098461.P12198485517771373086

namespace A098461

/-- `sqrt(A168597(n))*n!` -/
def P12198485517771373086.Spec : Prop :=
  ∀ n, P12198485517771373086.a n = (A098461 n : ℝ)

end A098461

/-! ## A098461.P10714994431129899230

`n!*A115990(∑[n])`
-/

namespace A098461.P10714994431129899230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A115990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098461.P10714994431129899230

namespace A098461

/-- `n!*A115990(∑[n])` -/
def P10714994431129899230.Spec : Prop :=
  ∀ n, P10714994431129899230.a n = A098461 n

end A098461

/-! ## A098461.P6709345673530011038

`n!*A116392(∑[n])`
-/

namespace A098461.P6709345673530011038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A116392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098461.P6709345673530011038

namespace A098461

/-- `n!*A116392(∑[n])` -/
def P6709345673530011038.Spec : Prop :=
  ∀ n, P6709345673530011038.a n = A098461 n

end A098461

/-! ## A098461.P6312450670060594217

`n!*A220178(∑[n])`
-/

namespace A098461.P6312450670060594217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A220178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098461.P6312450670060594217

namespace A098461

/-- `n!*A220178(∑[n])` -/
def P6312450670060594217.Spec : Prop :=
  ∀ n, P6312450670060594217.a n = A098461 n

end A098461

/-! ## A098461.P9710934094927814861

`n!*A005213(2*n)`
-/

namespace A098461.P9710934094927814861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005213 (2 * n)

end

end A098461.P9710934094927814861

namespace A098461

/-- `n!*A005213(2*n)` -/
def P9710934094927814861.Spec : Prop :=
  ∀ n, P9710934094927814861.a n = A098461 n

end A098461

/-! ## A098461.P3854653466238282072

`(2*A257520(n)-1)*n!`
-/

namespace A098461.P3854653466238282072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A257520 n - 1) * (Nat.factorial n : ℤ)

end

end A098461.P3854653466238282072

namespace A098461

/-- `(2*A257520(n)-1)*n!` -/
def P3854653466238282072.Spec : Prop :=
  ∀ n, P3854653466238282072.a n = A098461 n

end A098461

/-! ## A098461.P5048384197621822841

`abs(Δ[n*A099323(n)])*n!`
-/

namespace A098461.P5048384197621822841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * (Nat.factorial n : ℤ)

end

end A098461.P5048384197621822841

namespace A098461

/-- `abs(Δ[n*A099323(n)])*n!` -/
def P5048384197621822841.Spec : Prop :=
  ∀ n, P5048384197621822841.a n = A098461 n

end A098461

/-! ## A098461.P15843264881472261991

`n!*∑[(1-n)*A168058(n)]`
-/

namespace A098461.P15843264881472261991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098461.P15843264881472261991

namespace A098461

/-- `n!*∑[(1-n)*A168058(n)]` -/
def P15843264881472261991.Spec : Prop :=
  ∀ n, P15843264881472261991.a n = A098461 n

end A098461

/-!
# A098462: a(n) = n^n + (n+1)^n.

The programs for A098462, the canonical program `A098462.P16695405877558364856` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098462 has offset 0).

The definition of A098462 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+(n+1)^n` (program `A098462.P16695405877558364856`, by `A098462.P16695405877558364856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098462.P16695405877558364856

`n^n+(n+1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A098462

/-- `n^n+(n+1)^n` -/
def P16695405877558364856.Spec : Prop :=
  ∀ n, (P16695405877558364856.a n : ℤ) = A098462 n

theorem P16695405877558364856.correct : P16695405877558364856.Spec := by
  intro n
  simp only [A098462]

end A098462

/-! ## A098462.P10254219427220662339

`record[A095888(n+1)+A071207(n)]`
-/

namespace A098462.P10254219427220662339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) + A071207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098462.P10254219427220662339

namespace A098462

/-- `record[A095888(n+1)+A071207(n)]` -/
def P10254219427220662339.Spec : Prop :=
  ∀ n, P10254219427220662339.a n = A098462 n

end A098462

/-! ## A098462.P1846039396297706114

`record[A095890(n+1)+A071207(n)]`
-/

namespace A098462.P1846039396297706114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095890 (n + 1) + A071207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098462.P1846039396297706114

namespace A098462

/-- `record[A095890(n+1)+A071207(n)]` -/
def P1846039396297706114.Spec : Prop :=
  ∀ n, P1846039396297706114.a n = A098462 n

end A098462

/-! ## A098462.P3148619711114340649

`record[A201685(n+1)+A071207(n)]`
-/

namespace A098462.P3148619711114340649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) + A071207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098462.P3148619711114340649

namespace A098462

/-- `record[A201685(n+1)+A071207(n)]` -/
def P3148619711114340649.Spec : Prop :=
  ∀ n, P3148619711114340649.a n = A098462 n

end A098462

/-! ## A098462.P13254992005835350016

`(A081133(n)+A081132(n))/A000217(n+1)`
-/

namespace A098462.P13254992005835350016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081133 n + A081132 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A098462.P13254992005835350016

namespace A098462

/-- `(A081133(n)+A081132(n))/A000217(n+1)` -/
def P13254992005835350016.Spec : Prop :=
  ∀ n, P13254992005835350016.a n = (A098462 n : ℚ)

end A098462

/-! ## A098462.P5720065514416257283

`record[A128434(n)+A128433(n)]`
-/

namespace A098462.P5720065514416257283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128434 n + A128433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098462.P5720065514416257283

namespace A098462

/-- `record[A128434(n)+A128433(n)]` -/
def P5720065514416257283.Spec : Prop :=
  ∀ n, P5720065514416257283.a n = A098462 n

end A098462

/-!
# A098464: Numbers k such that lcm(1,2,3,...,k) equals the denominator of the k-th harmonic number H(k).

The programs for A098464, the canonical program `A098464.P17154748706034331019` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098464 has offset 1).

The definition of A098464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098464.P17154748706034331019

`eq[1, A110566(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A098464

/-- `eq[1, A110566(n+1)]+1` -/
def P17154748706034331019.Spec : Prop :=
  ∀ n, (P17154748706034331019.a n : ℤ) = A098464 (n + 1)

theorem P17154748706034331019.correct : P17154748706034331019.Spec := by
  intro n
  simp only [A098464, Nat.add_sub_cancel]

end A098464

/-! ## A098464.P10292302707378670524

`record[A000027(n+1)/A110566(n+1)]`
-/

namespace A098464.P10292302707378670524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P10292302707378670524

namespace A098464

/-- `record[A000027(n+1)/A110566(n+1)]` -/
def P10292302707378670524.Spec : Prop :=
  ∀ n, P10292302707378670524.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P10437529299345443355

`eq[n, A028310(n)*A110566(A028310(n))]`
-/

namespace A098464.P10437529299345443355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098464.P10437529299345443355

namespace A098464

/-- `eq[n, A028310(n)*A110566(A028310(n))]` -/
def P10437529299345443355.Spec : Prop :=
  ∀ n, (P10437529299345443355.a n : ℤ) = A098464 (n + 1)

end A098464

/-! ## A098464.P1580649177720663619

`record[A160791(2*n+1)/A110566(n+1)]`
-/

namespace A098464.P1580649177720663619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160791 (2 * n + 1) : ℚ) / (A110566 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P1580649177720663619

namespace A098464

/-- `record[A160791(2*n+1)/A110566(n+1)]` -/
def P1580649177720663619.Spec : Prop :=
  ∀ n, P1580649177720663619.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P14931757967688252610

`record[A008619(n)/A110566(A008619(n))]`
-/

namespace A098464.P14931757967688252610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A110566 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P14931757967688252610

namespace A098464

/-- `record[A008619(n)/A110566(A008619(n))]` -/
def P14931757967688252610.Spec : Prop :=
  ∀ n, P14931757967688252610.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P9632499358176201611

`record[A065033(n)/A110566(A065033(n))]`
-/

namespace A098464.P9632499358176201611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A110566 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P9632499358176201611

namespace A098464

/-- `record[A065033(n)/A110566(A065033(n))]` -/
def P9632499358176201611.Spec : Prop :=
  ∀ n, P9632499358176201611.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P6699224738267793235

`record[A026242(n+1)/A110566(A026242(n+1))]`
-/

namespace A098464.P6699224738267793235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026242 (n + 1) : ℚ) / (A110566 (A026242 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P6699224738267793235

namespace A098464

/-- `record[A026242(n+1)/A110566(A026242(n+1))]` -/
def P6699224738267793235.Spec : Prop :=
  ∀ n, P6699224738267793235.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P3850441919307193918

`record[A060973(n+2)/A110566(A060973(n+2))]`
-/

namespace A098464.P3850441919307193918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060973 (n + 2) : ℚ) / (A110566 (A060973 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P3850441919307193918

namespace A098464

/-- `record[A060973(n+2)/A110566(A060973(n+2))]` -/
def P3850441919307193918.Spec : Prop :=
  ∀ n, P3850441919307193918.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P7608732048056220148

`record[A123108(2*n)/A110566(A123108(2*n))]`
-/

namespace A098464.P7608732048056220148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n) : ℚ) / (A110566 (A123108 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P7608732048056220148

namespace A098464

/-- `record[A123108(2*n)/A110566(A123108(2*n))]` -/
def P7608732048056220148.Spec : Prop :=
  ∀ n, P7608732048056220148.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P4334464567999566950

`record[A126759(n)/A110566(A126759(n))]`
-/

namespace A098464.P4334464567999566950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126759 n : ℚ) / (A110566 (A126759 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P4334464567999566950

namespace A098464

/-- `record[A126759(n)/A110566(A126759(n))]` -/
def P4334464567999566950.Spec : Prop :=
  ∀ n, P4334464567999566950.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P14523933367385304869

`record[(n+1)/A001222(A110566(n+1)+1)]`
-/

namespace A098464.P14523933367385304869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A110566 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P14523933367385304869

namespace A098464

/-- `record[(n+1)/A001222(A110566(n+1)+1)]` -/
def P14523933367385304869.Spec : Prop :=
  ∀ n, P14523933367385304869.a n = (A098464 (n + 1) : ℚ)

end A098464

/-! ## A098464.P1736047352685261484

`record[gcd(n+1, A007953(A110566(n+1)-1))]`
-/

namespace A098464.P1736047352685261484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007953 (A110566 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098464.P1736047352685261484

namespace A098464

/-- `record[gcd(n+1, A007953(A110566(n+1)-1))]` -/
def P1736047352685261484.Spec : Prop :=
  ∀ n, (P1736047352685261484.a n : ℤ) = A098464 (n + 1)

end A098464

/-!
# A098465: Expansion of (sqrt(1+3*x)-sqrt(1-5*x))/(4*x*sqrt(1-x)).

The programs for A098465, the canonical program `A098465.P7616834246055726924` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098465 has offset 0).

The definition of A098465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098465.P14796980806731453205

`A102318(n)-A005043(n^(n%2))`
-/

namespace A098465.P14796980806731453205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102318 n - A005043 (n ^ (n % 2))

end

end A098465.P14796980806731453205

namespace A098465

/-- `A102318(n)-A005043(n^(n%2))` -/
def P14796980806731453205.Spec : Prop :=
  ∀ n, P14796980806731453205.a n = A098465 n

end A098465

/-! ## A098465.P7616834246055726924

`A102318(n)-A005043(A093178(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098465

/-- `A102318(n)-A005043(A093178(n))` -/
def P7616834246055726924.Spec : Prop :=
  ∀ n, P7616834246055726924.a n = A098465 n

theorem P7616834246055726924.correct : P7616834246055726924.Spec := by
  intro n
  simp only [A098465]

end A098465

/-! ## A098465.P14538812641041313969

`A054900(17*A047974(n))`
-/

namespace A098465.P14538812641041313969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (17 * A047974 n).toNat

end

end A098465.P14538812641041313969

namespace A098465

/-- `A054900(17*A047974(n))` -/
def P14538812641041313969.Spec : Prop :=
  ∀ n, P14538812641041313969.a n = A098465 n

end A098465

/-!
# A098469: A sequence related to the even-indexed Catalan numbers.

The programs for A098469, there is no canonical definition to state claims against.
-/

/-! ## A098469.P15168793431109739174

`(A064613(n)+A001405(n))/2`
-/

namespace A098469.P15168793431109739174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064613 n + A001405 n : ℚ) / 2

end

end A098469.P15168793431109739174

/-! ## A098469.P3871496545325689528

`A014682(A064613(n)+A001405(n))`
-/

namespace A098469.P3871496545325689528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A064613 n + A001405 n).toNat

end

end A098469.P3871496545325689528

/-! ## A098469.P997624466519192041

`(A064613(n)-A196199(A001405(n)²))/2`
-/

namespace A098469.P997624466519192041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064613 n - A196199 (A001405 n ^ 2).toNat : ℚ) / 2

end

end A098469.P997624466519192041

/-!
# A098470: Form array in which n-th row is obtained by expanding (1+x+x^2)^n and taking the 5th column from the center.

The programs for A098470, the canonical program `A098470.P690787606297198268` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098470 has offset 5).

The definition of A098470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098470.P690787606297198268

`A025182(n+6)-A014532(n+3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A098470

/-- `A025182(n+6)-A014532(n+3)` -/
def P690787606297198268.Spec : Prop :=
  ∀ n, P690787606297198268.a n = A098470 (n + 5)

theorem P690787606297198268.correct : P690787606297198268.Spec := by
  intro n
  simp only [A098470, Nat.add_sub_cancel]

end A098470

/-! ## A098470.P15463800029381649980

`A027907((n+5)²+n)`
-/

namespace A098470.P15463800029381649980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((n + 5) ^ 2 + n)

end

end A098470.P15463800029381649980

namespace A098470

/-- `A027907((n+5)²+n)` -/
def P15463800029381649980.Spec : Prop :=
  ∀ n, P15463800029381649980.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P5202596721244188541

`A078802(A090288(n+1))`
-/

namespace A098470.P5202596721244188541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A090288 (n + 1)).toNat

end

end A098470.P5202596721244188541

namespace A098470

/-- `A078802(A090288(n+1))` -/
def P5202596721244188541.Spec : Prop :=
  ∀ n, P5202596721244188541.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P15290623970383829041

`A078803(A099776(n+2)+2)`
-/

namespace A098470.P15290623970383829041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 (A099776 (n + 2) + 2).toNat

end

end A098470.P15290623970383829041

namespace A098470

/-- `A078803(A099776(n+2)+2)` -/
def P15290623970383829041.Spec : Prop :=
  ∀ n, P15290623970383829041.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P7567418429973022470

`A078802(A014105(n+2)+n)`
-/

namespace A098470.P7567418429973022470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A014105 (n + 2) + (n : ℤ)).toNat

end

end A098470.P7567418429973022470

namespace A098470

/-- `A078802(A014105(n+2)+n)` -/
def P7567418429973022470.Spec : Prop :=
  ∀ n, P7567418429973022470.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P11028726266695583778

`A082601(A268581(n+1))`
-/

namespace A098470.P11028726266695583778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A268581 (n + 1)).toNat

end

end A098470.P11028726266695583778

namespace A098470

/-- `A082601(A268581(n+1))` -/
def P11028726266695583778.Spec : Prop :=
  ∀ n, P11028726266695583778.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P2065628035643513193

`A082601(A005843((n+3)²)-3)`
-/

namespace A098470.P2065628035643513193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A005843 ((n + 3) ^ 2) - 3).toNat

end

end A098470.P2065628035643513193

namespace A098470

/-- `A082601(A005843((n+3)²)-3)` -/
def P2065628035643513193.Spec : Prop :=
  ∀ n, P2065628035643513193.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P3760169350473209688

`record[A082601(A004273(A005563(n)))]`
-/

namespace A098470.P3760169350473209688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A004273 (A005563 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098470.P3760169350473209688

namespace A098470

/-- `record[A082601(A004273(A005563(n)))]` -/
def P3760169350473209688.Spec : Prop :=
  ∀ n, P3760169350473209688.a n = A098470 (n + 5)

end A098470

/-! ## A098470.P12453015486126233322

`record[A082601(2*((n+1)²+1))]`
-/

namespace A098470.P12453015486126233322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (2 * ((n + 1) ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098470.P12453015486126233322

namespace A098470

/-- `record[A082601(2*((n+1)²+1))]` -/
def P12453015486126233322.Spec : Prop :=
  ∀ n, P12453015486126233322.a n = A098470 (n + 5)

end A098470

/-!
# A098471: Least k such that Mersenne-prime(n)*2^k+1 is prime (A000668(n)*2^k+1).

The programs for A098471, there is no canonical definition to state claims against.
-/

/-! ## A098471.P13743368732977868240

`A063008(comp[2*(n+2)]^A364240(2*(n+1)))`
-/

namespace A098471.P13743368732977868240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A364240 (2 * (n + 1)) : ℤ))).toNat

end

end A098471.P13743368732977868240

/-! ## A098471.P11655756093152080208

`A055034(A386679(n+3))*A152431(n+1)`
-/

namespace A098471.P11655756093152080208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A386679 (n + 3)).toNat * A152431 (n + 1)

end

end A098471.P11655756093152080208

/-!
# A098473: Triangle T(n,k) read by rows, T(n, k) = binomial(2*k, k)*binomial(n, k), 0<=k<=n.

The programs for A098473, the canonical program `A098473.P9829121638664480171` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098473 has offset 0).

The definition of A098473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098473.P8790054371061789963

`A117852(A061579(n))`
-/

namespace A098473.P8790054371061789963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117852 (A061579 n).toNat

end

end A098473.P8790054371061789963

namespace A098473

/-- `A117852(A061579(n))` -/
def P8790054371061789963.Spec : Prop :=
  ∀ n, P8790054371061789963.a n = A098473 n

end A098473

/-! ## A098473.P2270952554007458106

`A002260(n+1)*A098474(n)`
-/

namespace A098473.P2270952554007458106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A098474 n

end

end A098473.P2270952554007458106

namespace A098473

/-- `A002260(n+1)*A098474(n)` -/
def P2270952554007458106.Spec : Prop :=
  ∀ n, P2270952554007458106.a n = A098473 n

end A098473

/-! ## A098473.P13416766348904679238

`(A002262(n)+1)*A098474(n)`
-/

namespace A098473.P13416766348904679238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A098474 n

end

end A098473.P13416766348904679238

namespace A098473

/-- `(A002262(n)+1)*A098474(n)` -/
def P13416766348904679238.Spec : Prop :=
  ∀ n, P13416766348904679238.a n = A098473 n

end A098473

/-! ## A098473.P6392794509032778690

`A117852(A002024(n+1)²-(n+1))`
-/

namespace A098473.P6392794509032778690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117852 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A098473.P6392794509032778690

namespace A098473

/-- `A117852(A002024(n+1)²-(n+1))` -/
def P6392794509032778690.Spec : Prop :=
  ∀ n, P6392794509032778690.a n = A098473 n

end A098473

/-! ## A098473.P9829121638664480171

`A000984(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098473

/-- `A000984(A002262(n))*A007318(n)` -/
def P9829121638664480171.Spec : Prop :=
  ∀ n, P9829121638664480171.a n = A098473 n

theorem P9829121638664480171.correct : P9829121638664480171.Spec := by
  intro n
  simp only [A098473]

end A098473

/-! ## A098473.P4368360545754416991

`A367177(n)/A007318(n)`
-/

namespace A098473.P4368360545754416991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367177 n : ℚ) / (A007318 n : ℚ)

end

end A098473.P4368360545754416991

namespace A098473

/-- `A367177(n)/A007318(n)` -/
def P4368360545754416991.Spec : Prop :=
  ∀ n, P4368360545754416991.a n = (A098473 n : ℚ)

end A098473

/-! ## A098473.P10141383304225699284

`A069466(n)/A046521(n)`
-/

namespace A098473.P10141383304225699284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A046521 n : ℚ)

end

end A098473.P10141383304225699284

namespace A098473

/-- `A069466(n)/A046521(n)` -/
def P10141383304225699284.Spec : Prop :=
  ∀ n, P10141383304225699284.a n = (A098473 n : ℚ)

end A098473

/-! ## A098473.P4932521900979622006

`A098474(n)*A367177(n)/A367178(n)`
-/

namespace A098473.P4932521900979622006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098474 n * A367177 n : ℚ) / (A367178 n : ℚ)

end

end A098473.P4932521900979622006

namespace A098473

/-- `A098474(n)*A367177(n)/A367178(n)` -/
def P4932521900979622006.Spec : Prop :=
  ∀ n, P4932521900979622006.a n = (A098473 n : ℚ)

end A098473

/-!
# A098474: Triangle read by rows, T(n,k) = C(n,k)*C(2*k,k)/(k+1), n >= 0, 0 <= k <= n.

The programs for A098474, the canonical program `A098474.P5187163944970841992` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098474 has offset 0).

The definition of A098474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098474.P5187163944970841992

`A000108(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098474

/-- `A000108(A002262(n))*A007318(n)` -/
def P5187163944970841992.Spec : Prop :=
  ∀ n, P5187163944970841992.a n = A098474 n

theorem P5187163944970841992.correct : P5187163944970841992.Spec := by
  intro n
  simp only [A098474]

end A098474

/-! ## A098474.P5550865164442636080

`A000108(log2(A059268(n)))*A007318(n)`
-/

namespace A098474.P5550865164442636080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A007318 n

end

end A098474.P5550865164442636080

namespace A098474

/-- `A000108(log2(A059268(n)))*A007318(n)` -/
def P5550865164442636080.Spec : Prop :=
  ∀ n, P5550865164442636080.a n = A098474 n

end A098474

/-! ## A098474.P3320543988448264123

`A000108(A002262(n))*Δ[A102363(n)]`
-/

namespace A098474.P3320543988448264123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * (f1 (n + 1) - f1 n)

end

end A098474.P3320543988448264123

namespace A098474

/-- `A000108(A002262(n))*Δ[A102363(n)]` -/
def P3320543988448264123.Spec : Prop :=
  ∀ n, P3320543988448264123.a n = A098474 n

end A098474

/-! ## A098474.P10980118138816988711

`(A014473(n)+1)*A000108(A002262(n))`
-/

namespace A098474.P10980118138816988711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000108 (A002262 n).toNat

end

end A098474.P10980118138816988711

namespace A098474

/-- `(A014473(n)+1)*A000108(A002262(n))` -/
def P10980118138816988711.Spec : Prop :=
  ∀ n, P10980118138816988711.a n = A098474 n

end A098474

/-! ## A098474.P14951222995507036505

`A007318(n)*A057977(2*A002262(n))`
-/

namespace A098474.P14951222995507036505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (2 * A002262 n).toNat

end

end A098474.P14951222995507036505

namespace A098474

/-- `A007318(n)*A057977(2*A002262(n))` -/
def P14951222995507036505.Spec : Prop :=
  ∀ n, P14951222995507036505.a n = A098474 n

end A098474

/-! ## A098474.P1303542307922384174

`A000108(A002260(n+1)-1)*A007318(n)`
-/

namespace A098474.P1303542307922384174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1) - 1).toNat * A007318 n

end

end A098474.P1303542307922384174

namespace A098474

/-- `A000108(A002260(n+1)-1)*A007318(n)` -/
def P1303542307922384174.Spec : Prop :=
  ∀ n, P1303542307922384174.a n = A098474 n

end A098474

/-! ## A098474.P10711444673333497503

`A007318(n)*A057977(2*A144328(n+1))`
-/

namespace A098474.P10711444673333497503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A057977 (2 * A144328 (n + 1)).toNat

end

end A098474.P10711444673333497503

namespace A098474

/-- `A007318(n)*A057977(2*A144328(n+1))` -/
def P10711444673333497503.Spec : Prop :=
  ∀ n, P10711444673333497503.a n = A098474 n

end A098474

/-! ## A098474.P3916478746648673976

`A124644(A061579(n))`
-/

namespace A098474.P3916478746648673976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124644 (A061579 n).toNat

end

end A098474.P3916478746648673976

namespace A098474

/-- `A124644(A061579(n))` -/
def P3916478746648673976.Spec : Prop :=
  ∀ n, P3916478746648673976.a n = A098474 n

end A098474

/-! ## A098474.P3686481547621767846

`A124644(A038722(n+1)-1)`
-/

namespace A098474.P3686481547621767846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124644 (A038722 (n + 1) - 1).toNat

end

end A098474.P3686481547621767846

namespace A098474

/-- `A124644(A038722(n+1)-1)` -/
def P3686481547621767846.Spec : Prop :=
  ∀ n, P3686481547621767846.a n = A098474 n

end A098474

/-! ## A098474.P5860839215856917991

`A007318(n)/A085478(n)*A088617(n)`
-/

namespace A098474.P5860839215856917991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A085478 n : ℚ) * (A088617 n : ℚ)

end

end A098474.P5860839215856917991

namespace A098474

/-- `A007318(n)/A085478(n)*A088617(n)` -/
def P5860839215856917991.Spec : Prop :=
  ∀ n, P5860839215856917991.a n = (A098474 n : ℚ)

end A098474

/-! ## A098474.P1770110494177365989

`A098473(n)/A002260(n+1)`
-/

namespace A098474.P1770110494177365989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098473 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A098474.P1770110494177365989

namespace A098474

/-- `A098473(n)/A002260(n+1)` -/
def P1770110494177365989.Spec : Prop :=
  ∀ n, P1770110494177365989.a n = (A098474 n : ℚ)

end A098474

/-! ## A098474.P1542778187530992897

`A367178(n)/A007318(n)`
-/

namespace A098474.P1542778187530992897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367178 n : ℚ) / (A007318 n : ℚ)

end

end A098474.P1542778187530992897

namespace A098474

/-- `A367178(n)/A007318(n)` -/
def P1542778187530992897.Spec : Prop :=
  ∀ n, P1542778187530992897.a n = (A098474 n : ℚ)

end A098474

/-! ## A098474.P3742947076476513780

`A367177(n)/A103406(n)`
-/

namespace A098474.P3742947076476513780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367177 n : ℚ) / (A103406 n : ℚ)

end

end A098474.P3742947076476513780

namespace A098474

/-- `A367177(n)/A103406(n)` -/
def P3742947076476513780.Spec : Prop :=
  ∀ n, P3742947076476513780.a n = (A098474 n : ℚ)

end A098474

/-!
# A098475: a(n) is the smallest integer k for which sigma_n(k) <= sigma_n(k-1) where sigma_n(k) = sum of the n-th powers of the divisors of k.

The programs for A098475, there is no canonical definition to state claims against.
-/

/-! ## A098475.P12552812859424201325

`A158661(n)-or(1, -n)%2`
-/

namespace A098475.P12552812859424201325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158661 n - Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A098475.P12552812859424201325

/-! ## A098475.P5507858404112242814

`A158661(n)+A158388(n)`
-/

namespace A098475.P5507858404112242814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158661 n + A158388 n

end

end A098475.P5507858404112242814

/-! ## A098475.P3997913199629585930

`A158661(n)-A153881(n+1)`
-/

namespace A098475.P3997913199629585930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158661 n - A153881 (n + 1)

end

end A098475.P3997913199629585930

/-! ## A098475.P11150018786660092752

`A158661(n)-A008683(A027748(n+1))`
-/

namespace A098475.P11150018786660092752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158661 n - A008683 (A027748 (n + 1)).toNat

end

end A098475.P11150018786660092752

/-!
# A098478: Expansion of 1/sqrt(1-2x-11x^2+12x^3).

The programs for A098478, there is no canonical definition to state claims against.
-/

/-! ## A098478.P3500046144236424468

`A225055(A015445(n))`
-/

namespace A098478.P3500046144236424468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A015445 n).toNat

end

end A098478.P3500046144236424468

/-! ## A098478.P760261621094329200

`A166273(A166292(2*n))-2`
-/

namespace A098478.P760261621094329200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166273 (A166292 (2 * n)).toNat - 2

end

end A098478.P760261621094329200

/-!
# A098479: Expansion of 1/sqrt((1-x)^2 - 4*x^3).

The programs for A098479, there is no canonical definition to state claims against.
-/

/-! ## A098479.P10609749533911000413

`∑[A376809(n)]`
-/

namespace A098479.P10609749533911000413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098479.P10609749533911000413

/-! ## A098479.P5698124139645555108

`A182885(∑[ceil(n/2)])`
-/

namespace A098479.P5698124139645555108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098479.P5698124139645555108

/-! ## A098479.P5324518343622589977

`A191588(∑[n]+floor(acot(n)))`
-/

namespace A098479.P5324518343622589977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191588 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A098479.P5324518343622589977

/-! ## A098479.P11136321422775655806

`A191588(∑[n]+C(2, n+2))`
-/

namespace A098479.P11136321422775655806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191588 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A098479.P11136321422775655806

/-! ## A098479.P142619138344272654

`A191588(A179865(n+1))`
-/

namespace A098479.P142619138344272654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191588 (A179865 (n + 1)).toNat

end

end A098479.P142619138344272654

/-!
# A098480: Expansion of 1/sqrt((1-x)^2-8x^3).

The programs for A098480, there is no canonical definition to state claims against.
-/

/-! ## A098480.P13557501341694817951

`A049456(A052905(n)*A276308(n))`
-/

namespace A098480.P13557501341694817951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A052905 n * A276308 n).toNat

end

end A098480.P13557501341694817951

/-! ## A098480.P4780156726333325359

`A134478(xor(A054885(n), A327357(n)))`
-/

namespace A098480.P4780156726333325359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Int.xor (A054885 n) (A327357 n)).toNat

end

end A098480.P4780156726333325359

/-! ## A098480.P5522898207056854316

`A134478(xor(A054885(n), A062799(n+1)))`
-/

namespace A098480.P5522898207056854316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Int.xor (A054885 n) (A062799 (n + 1))).toNat

end

end A098480.P5522898207056854316

/-!
# A098481: Expansion of 1/sqrt((1-x)^2 - 12*x^3).

The programs for A098481, there is no canonical definition to state claims against.
-/

/-! ## A098481.P10872100411017813666

`A392707(A383528(n))`
-/

namespace A098481.P10872100411017813666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392707 (A383528 n).toNat

end

end A098481.P10872100411017813666

/-! ## A098481.P2145104212238043825

`A247424(A025048(n)²)`
-/

namespace A098481.P2145104212238043825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A025048 n ^ 2).toNat

end

end A098481.P2145104212238043825

/-! ## A098481.P869229447925038285

`A247424(A357532(n)²)`
-/

namespace A098481.P869229447925038285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247424 (A357532 n ^ 2).toNat

end

end A098481.P869229447925038285

/-!
# A098482: Expansion of 1/sqrt((1-x)^2 - 4*x^4).

The programs for A098482, there is no canonical definition to state claims against.
-/

/-! ## A098482.P17527581795970394082

`∑[A393277(n)]`
-/

namespace A098482.P17527581795970394082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098482.P17527581795970394082

/-! ## A098482.P5083936354670235303

`A331216(A026644(n+1))`
-/

namespace A098482.P5083936354670235303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A026644 (n + 1)).toNat

end

end A098482.P5083936354670235303

/-! ## A098482.P8264299072788533599

`A331216(A084170(n+1))`
-/

namespace A098482.P8264299072788533599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A084170 (n + 1)).toNat

end

end A098482.P8264299072788533599

/-! ## A098482.P11635849228981606377

`A331216(A176961(n+2))`
-/

namespace A098482.P11635849228981606377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A176961 (n + 2)).toNat

end

end A098482.P11635849228981606377

/-! ## A098482.P6879033612972301378

`A331216(A131452(∑[2^n]))`
-/

namespace A098482.P6879033612972301378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A131452 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A098482.P6879033612972301378

/-!
# A098483: Expansion of 1/sqrt((1-x)^2-8x^4).

The programs for A098483, there is no canonical definition to state claims against.
-/

/-! ## A098483.P10234675468408817369

`2*A126696(n²)+1`
-/

namespace A098483.P10234675468408817369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126696 (n ^ 2) + 1

end

end A098483.P10234675468408817369

/-! ## A098483.P13341618938187546270

`A382092(A080003(n))`
-/

namespace A098483.P13341618938187546270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382092 (A080003 n).toNat

end

end A098483.P13341618938187546270

/-! ## A098483.P15849004570328628767

`A005408(A126696(n²))`
-/

namespace A098483.P15849004570328628767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A126696 (n ^ 2)).toNat

end

end A098483.P15849004570328628767

/-! ## A098483.P1194798182666021227

`A324009(A236392(n)+1)`
-/

namespace A098483.P1194798182666021227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324009 (A236392 n + 1).toNat

end

end A098483.P1194798182666021227

/-!
# A098484: Expansion of 1/sqrt((1-x)^2-12x^4).

The programs for A098484, there is no canonical definition to state claims against.
-/

/-! ## A098484.P2456254870758045171

`A188146(A106852(n)+A006130(n))`
-/

namespace A098484.P2456254870758045171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188146 (A106852 n + A006130 n).toNat

end

end A098484.P2456254870758045171

/-!
# A098486: Odd numbers with replacement of all prime factors 3 by 2.

The programs for A098486, the canonical program `A098486.P15096063000832676447` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098486 has offset 1).

The definition of A098486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098486.P15096063000832676447

`A064614(Δ[n²])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098486

/-- `A064614(Δ[n²])` -/
def P15096063000832676447.Spec : Prop :=
  ∀ n, P15096063000832676447.a n = A098486 (n + 1)

theorem P15096063000832676447.correct : P15096063000832676447.Spec := by
  intro n
  simp only [A098486, Nat.add_sub_cancel]

end A098486

/-! ## A098486.P2309548019921107000

`xor(1, xor(1, A064614(2*n+1)))`
-/

namespace A098486.P2309548019921107000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A064614 (2 * n + 1)))

end

end A098486.P2309548019921107000

namespace A098486

/-- `xor(1, xor(1, A064614(2*n+1)))` -/
def P2309548019921107000.Spec : Prop :=
  ∀ n, P2309548019921107000.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P4622919554714902939

`A028310(A064614(comp[2*n]))`
-/

namespace A098486.P4622919554714902939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064614 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A098486.P4622919554714902939

namespace A098486

/-- `A028310(A064614(comp[2*n]))` -/
def P4622919554714902939.Spec : Prop :=
  ∀ n, P4622919554714902939.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P7135249678381173212

`A000027(A064614(2*n+1))`
-/

namespace A098486.P7135249678381173212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064614 (2 * n + 1)).toNat

end

end A098486.P7135249678381173212

namespace A098486

/-- `A000027(A064614(2*n+1))` -/
def P7135249678381173212.Spec : Prop :=
  ∀ n, P7135249678381173212.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P2875324964868356957

`gcd(A064614(2*n+1), A130706(n))`
-/

namespace A098486.P2875324964868356957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064614 (2 * n + 1)) (A130706 n)

end

end A098486.P2875324964868356957

namespace A098486

/-- `gcd(A064614(2*n+1), A130706(n))` -/
def P2875324964868356957.Spec : Prop :=
  ∀ n, (P2875324964868356957.a n : ℤ) = A098486 (n + 1)

end A098486

/-! ## A098486.P12973351498062866875

`filter[A064614(2*n+1), A011655(#)]`
-/

namespace A098486.P12973351498062866875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A098486.P12973351498062866875

namespace A098486

/-- `filter[A064614(2*n+1), A011655(#)]` -/
def P12973351498062866875.Spec : Prop :=
  ∀ n, P12973351498062866875.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P8020234438815380404

`filter[A064614(2*n+1), A014578(#)]`
-/

namespace A098486.P8020234438815380404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A098486.P8020234438815380404

namespace A098486

/-- `filter[A064614(2*n+1), A014578(#)]` -/
def P8020234438815380404.Spec : Prop :=
  ∀ n, P8020234438815380404.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P2627913049947476260

`filter[A064614(2*n+1), A097325(#)]`
-/

namespace A098486.P2627913049947476260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A098486.P2627913049947476260

namespace A098486

/-- `filter[A064614(2*n+1), A097325(#)]` -/
def P2627913049947476260.Spec : Prop :=
  ∀ n, P2627913049947476260.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P16821903761506057711

`filter[A064614(2*n+1), A168182(#)]`
-/

namespace A098486.P16821903761506057711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A098486.P16821903761506057711

namespace A098486

/-- `filter[A064614(2*n+1), A168182(#)]` -/
def P16821903761506057711.Spec : Prop :=
  ∀ n, P16821903761506057711.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P39005851228414410

`filter[A064614(2*n+1), A168185(#)]`
-/

namespace A098486.P39005851228414410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A098486.P39005851228414410

namespace A098486

/-- `filter[A064614(2*n+1), A168185(#)]` -/
def P39005851228414410.Spec : Prop :=
  ∀ n, P39005851228414410.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P5885526752961234020

`filter[A064614(2*n+1), A267208(#)]`
-/

namespace A098486.P5885526752961234020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A098486.P5885526752961234020

namespace A098486

/-- `filter[A064614(2*n+1), A267208(#)]` -/
def P5885526752961234020.Spec : Prop :=
  ∀ n, P5885526752961234020.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P2339537003294369538

`filter[A064614(2*n+1), A374039(#)]`
-/

namespace A098486.P2339537003294369538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A098486.P2339537003294369538

namespace A098486

/-- `filter[A064614(2*n+1), A374039(#)]` -/
def P2339537003294369538.Spec : Prop :=
  ∀ n, P2339537003294369538.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P15100873446432420276

`A064614(2*n+1)+A000007(n+1)`
-/

namespace A098486.P15100873446432420276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1) + A000007 (n + 1)

end

end A098486.P15100873446432420276

namespace A098486

/-- `A064614(2*n+1)+A000007(n+1)` -/
def P15100873446432420276.Spec : Prop :=
  ∀ n, P15100873446432420276.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P3557633187404284590

`A101455(2*n)+A064614(2*n+1)`
-/

namespace A098486.P3557633187404284590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n) + A064614 (2 * n + 1)

end

end A098486.P3557633187404284590

namespace A098486

/-- `A101455(2*n)+A064614(2*n+1)` -/
def P3557633187404284590.Spec : Prop :=
  ∀ n, P3557633187404284590.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P11116742024462383527

`A256480(2*n)+A064614(2*n+1)`
-/

namespace A098486.P11116742024462383527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (2 * n) + A064614 (2 * n + 1)

end

end A098486.P11116742024462383527

namespace A098486

/-- `A256480(2*n)+A064614(2*n+1)` -/
def P11116742024462383527.Spec : Prop :=
  ∀ n, P11116742024462383527.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P5320466987651564421

`A064614(2*n+1)+A007814(2*n+1)`
-/

namespace A098486.P5320466987651564421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1) + A007814 (2 * n + 1)

end

end A098486.P5320466987651564421

namespace A098486

/-- `A064614(2*n+1)+A007814(2*n+1)` -/
def P5320466987651564421.Spec : Prop :=
  ∀ n, P5320466987651564421.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P5881671565712827304

`A166698(2*(n+1))+A064614(2*n+1)`
-/

namespace A098486.P5881671565712827304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (2 * (n + 1)) + A064614 (2 * n + 1)

end

end A098486.P5881671565712827304

namespace A098486

/-- `A166698(2*(n+1))+A064614(2*n+1)` -/
def P5881671565712827304.Spec : Prop :=
  ∀ n, P5881671565712827304.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P10883620935718052224

`A064614(2*n+1)+A010051(2*(n+2))`
-/

namespace A098486.P10883620935718052224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A098486.P10883620935718052224

namespace A098486

/-- `A064614(2*n+1)+A010051(2*(n+2))` -/
def P10883620935718052224.Spec : Prop :=
  ∀ n, P10883620935718052224.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P5170509331894908060

`A035263(2*n+1)*A064614(2*n+1)`
-/

namespace A098486.P5170509331894908060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) * A064614 (2 * n + 1)

end

end A098486.P5170509331894908060

namespace A098486

/-- `A035263(2*n+1)*A064614(2*n+1)` -/
def P5170509331894908060.Spec : Prop :=
  ∀ n, P5170509331894908060.a n = A098486 (n + 1)

end A098486

/-! ## A098486.P5180131988439175884

`A064614(2*n+1)*A115364(2*n+1)`
-/

namespace A098486.P5180131988439175884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1) * A115364 (2 * n + 1)

end

end A098486.P5180131988439175884

namespace A098486

/-- `A064614(2*n+1)*A115364(2*n+1)` -/
def P5180131988439175884.Spec : Prop :=
  ∀ n, P5180131988439175884.a n = A098486 (n + 1)

end A098486

/-!
# A098488: Decimal modular Gray code for n.

The programs for A098488, the canonical program `A098488.P10933767284096351927` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098488 has offset 0).

The definition of A098488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098488.P7315438947674484167

`A066568(A118757(n)%A121149(n))+A053831(n)`
-/

namespace A098488.P7315438947674484167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (Int.tmod (A118757 n) (A121149 n)).toNat + A053831 n

end

end A098488.P7315438947674484167

namespace A098488

/-- `A066568(A118757(n)%A121149(n))+A053831(n)` -/
def P7315438947674484167.Spec : Prop :=
  ∀ n, P7315438947674484167.a n = A098488 n

end A098488

/-! ## A098488.P2401989579980017730

`A066568(A000034(n²+2-n)*A118757(n))+A053831(n)`
-/

namespace A098488.P2401989579980017730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A000034 ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat * A118757 n).toNat + A053831 n

end

end A098488.P2401989579980017730

namespace A098488

/-- `A066568(A000034(n²+2-n)*A118757(n))+A053831(n)` -/
def P2401989579980017730.Spec : Prop :=
  ∀ n, P2401989579980017730.a n = A098488 n

end A098488

/-! ## A098488.P10933767284096351927

`A037213((A066568(n)+A053831(n))²)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098488

/-- `A037213((A066568(n)+A053831(n))²)` -/
def P10933767284096351927.Spec : Prop :=
  ∀ n, P10933767284096351927.a n = A098488 n

theorem P10933767284096351927.correct : P10933767284096351927.Spec := by
  intro n
  simp only [A098488]

end A098488

/-! ## A098488.P12594544308638400721

`A088226((A066568(n)+A053831(n))²+2)`
-/

namespace A098488.P12594544308638400721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 ((A066568 n + A053831 n) ^ 2 + 2).toNat

end

end A098488.P12594544308638400721

namespace A098488

/-- `A088226((A066568(n)+A053831(n))²+2)` -/
def P12594544308638400721.Spec : Prop :=
  ∀ n, P12594544308638400721.a n = A098488 n

end A098488

/-! ## A098488.P10897551491317897163

`(A066568(n)+A053831(n))%A121149(n+1)`
-/

namespace A098488.P10897551491317897163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066568 n + A053831 n) (A121149 (n + 1))

end

end A098488.P10897551491317897163

namespace A098488

/-- `(A066568(n)+A053831(n))%A121149(n+1)` -/
def P10897551491317897163.Spec : Prop :=
  ∀ n, P10897551491317897163.a n = A098488 n

end A098488

/-! ## A098488.P11883285425794326953

`A059995(A051022(n))+A010879(A028904(n))`
-/

namespace A098488.P11883285425794326953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A051022 n).toNat + A010879 (A028904 n).toNat

end

end A098488.P11883285425794326953

namespace A098488

/-- `A059995(A051022(n))+A010879(A028904(n))` -/
def P11883285425794326953.Spec : Prop :=
  ∀ n, P11883285425794326953.a n = A098488 n

end A098488

/-!
# A098489: Triangle T(n,k) read by rows: partitions of n with parts occurring at most thrice, k parts occurring once or twice and an even number of parts.

The programs for A098489, there is no canonical definition to state claims against.
-/

/-! ## A098489.P14317110713710821918

`A029350(and(A061579(n), A353765(n+1)))`
-/

namespace A098489.P14317110713710821918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 (Int.land (A061579 n) (A353765 (n + 1))).toNat

end

end A098489.P14317110713710821918

/-! ## A098489.P7957804485363585015

`Δ[Δ[A323048(A000009(n+3))]]`
-/

namespace A098489.P7957804485363585015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A000009 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098489.P7957804485363585015

/-! ## A098489.P4430735892318556033

`(A109101(n+1)+A041773(n))%(A055254(n)+1)`
-/

namespace A098489.P4430735892318556033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109101 (n + 1) + A041773 n) (A055254 n + 1)

end

end A098489.P4430735892318556033

/-! ## A098489.P2273540537785683114

`Δ[A087897(n+4)+A087889(3*(n+1))]`
-/

namespace A098489.P2273540537785683114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (n + 4) + A087889 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098489.P2273540537785683114

/-! ## A098489.P10057369684983583594

`A065712(eq[A065716(n), A065744(3*n+5)])`
-/

namespace A098489.P10057369684983583594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A098489.P10057369684983583594

/-!
# A098490: Triangle T(n,k) read by rows: partitions of n with parts occurring at most thrice, k parts occurring once or twice and an odd number of parts.

The programs for A098490, there is no canonical definition to state claims against.
-/

/-! ## A098490.P2199131072528342226

`A352516(A001227(n+1)*A025795(2*(n+1)))`
-/

namespace A098490.P2199131072528342226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A001227 (n + 1) * A025795 (2 * (n + 1))).toNat

end

end A098490.P2199131072528342226

/-! ## A098490.P13544701093482946303

`A352822(A363723(3*n+1)%A246781(2*n+3))`
-/

namespace A098490.P13544701093482946303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (Int.tmod (A363723 (3 * n + 1)) (A246781 (2 * n + 3))).toNat

end

end A098490.P13544701093482946303

/-! ## A098490.P12646268450628427209

`A325280(A325249(∑[A325249(n+8)]))`
-/

namespace A098490.P12646268450628427209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A325249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A098490.P12646268450628427209

/-! ## A098490.P13212719444619349763

`A278522(A031367(n+1)-A278522(n))`
-/

namespace A098490.P13212719444619349763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278522 (A031367 (n + 1) - A278522 n).toNat

end

end A098490.P13212719444619349763

/-! ## A098490.P11226570544052406874

`A262827(A298338(n))%A006374(n+1)`
-/

namespace A098490.P11226570544052406874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262827 (A298338 n).toNat) (A006374 (n + 1))

end

end A098490.P11226570544052406874

/-!
# A098491: Number of partitions of n with parts occurring at most thrice and an even number of parts. Row sums of A098489.

The programs for A098491, there is no canonical definition to state claims against.
-/

/-! ## A098491.P7963152210990111946

`abs(ceil(A083365(n)/2))`
-/

namespace A098491.P7963152210990111946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A083365 n : ℚ) / 2⌉|

end

end A098491.P7963152210990111946

/-! ## A098491.P281225778553928720

`A106459(n)+A098492(n)`
-/

namespace A098491.P281225778553928720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n + A098492 n

end

end A098491.P281225778553928720

/-! ## A098491.P6298192299780550435

`A001935(n)-A098492(n)`
-/

namespace A098491.P6298192299780550435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A098492 n

end

end A098491.P6298192299780550435

/-! ## A098491.P16262696037493280408

`abs(A083365(n))-A098492(n)`
-/

namespace A098491.P16262696037493280408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| - A098492 n

end

end A098491.P16262696037493280408

/-! ## A098491.P821567962029674825

`∑[A117275(n)]-A098492(n)`
-/

namespace A098491.P821567962029674825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098492 n

end

end A098491.P821567962029674825

/-! ## A098491.P13976523285256252277

`(A106459(n)+A001935(n))/2`
-/

namespace A098491.P13976523285256252277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106459 n + A001935 n : ℚ) / 2

end

end A098491.P13976523285256252277

/-! ## A098491.P576766884466221439

`ceil(A083365(n)/2)*A033999(n)`
-/

namespace A098491.P576766884466221439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083365 n : ℚ) / 2⌉ * A033999 n

end

end A098491.P576766884466221439

/-! ## A098491.P7888558400796431347

`A098492(n)+A010054(n)*A033999(n)`
-/

namespace A098491.P7888558400796431347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098492 n + A010054 n * A033999 n

end

end A098491.P7888558400796431347

/-! ## A098491.P6893726853633793430

`A117276(n+1)-(A117276(n)+A098492(n))`
-/

namespace A098491.P6893726853633793430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117276 (n + 1) - (A117276 n + A098492 n)

end

end A098491.P6893726853633793430

/-!
# A098492: Number of partitions of n with parts occurring at most thrice and an odd number of parts. Row sums of A098490.

The programs for A098492, there is no canonical definition to state claims against.
-/

/-! ## A098492.P3584825715538172251

`abs(floor(A083365(n)/2))`
-/

namespace A098492.P3584825715538172251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A083365 n : ℚ) / 2⌋|

end

end A098492.P3584825715538172251

/-! ## A098492.P793352812537240075

`(A001935(n)-A106459(n))/2`
-/

namespace A098492.P793352812537240075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n - A106459 n : ℚ) / 2

end

end A098492.P793352812537240075

/-! ## A098492.P2471363289450895417

`floor(A083365(n)/2)*A033999(n)`
-/

namespace A098492.P2471363289450895417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083365 n : ℚ) / 2⌋ * A033999 n

end

end A098492.P2471363289450895417

/-! ## A098492.P8761609857712544301

`lcm(A057428(n)², floor(A083365(n)/2))`
-/

namespace A098492.P8761609857712544301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057428 n ^ 2) ⌊(A083365 n : ℚ) / 2⌋

end

end A098492.P8761609857712544301

/-! ## A098492.P2356475812201269570

`A001935(n)-A098491(n)`
-/

namespace A098492.P2356475812201269570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A098491 n

end

end A098492.P2356475812201269570

/-! ## A098492.P8644044773897215369

`A098491(n)-A106459(n)`
-/

namespace A098492.P8644044773897215369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098491 n - A106459 n

end

end A098492.P8644044773897215369

/-! ## A098492.P4040240940767989352

`abs(A083365(n))-A098491(n)`
-/

namespace A098492.P4040240940767989352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| - A098491 n

end

end A098492.P4040240940767989352

/-! ## A098492.P7433011520197634896

`∑[A117275(n)]-A098491(n)`
-/

namespace A098492.P7433011520197634896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098491 n

end

end A098492.P7433011520197634896

/-! ## A098492.P1219844820589127913

`A098491(n)-A010054(n)*A033999(n)`
-/

namespace A098492.P1219844820589127913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098491 n - A010054 n * A033999 n

end

end A098492.P1219844820589127913

/-!
# A098493: Triangle T(n,k) read by rows: difference between A098489 and A098490 at triangular rows.

The programs for A098493, there is no canonical definition to state claims against.
-/

/-! ## A098493.P11310420642392656987

`A062157(A002024(n+1))*A125090(A038722(n+1))`
-/

namespace A098493.P11310420642392656987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002024 (n + 1)).toNat * A125090 (A038722 (n + 1)).toNat

end

end A098493.P11310420642392656987

/-! ## A098493.P12056994985824919908

`A057428(n)^A114327(n)*A125090(A038722(n+1))`
-/

namespace A098493.P12056994985824919908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A114327 n : ℤ) * (A125090 (A038722 (n + 1)).toNat : ℚ)

end

end A098493.P12056994985824919908

/-! ## A098493.P8894771693553237399

`floor(A123973(n+1)+acot(n))`
-/

namespace A098493.P8894771693553237399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123973 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A098493.P8894771693553237399

/-! ## A098493.P2955879454125072613

`A123973(n+1)+A000007(n)`
-/

namespace A098493.P2955879454125072613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123973 (n + 1) + A000007 n

end

end A098493.P2955879454125072613

/-! ## A098493.P17835198108335935205

`A151878(n)+A123973(n+1)`
-/

namespace A098493.P17835198108335935205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A123973 (n + 1)

end

end A098493.P17835198108335935205

/-! ## A098493.P16176810000524810879

`A151909(n)+A123973(n+1)`
-/

namespace A098493.P16176810000524810879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A123973 (n + 1)

end

end A098493.P16176810000524810879

/-! ## A098493.P637488610484630182

`A151933(n)+A123973(n+1)`
-/

namespace A098493.P637488610484630182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A123973 (n + 1)

end

end A098493.P637488610484630182

/-! ## A098493.P14848335643685862317

`A123973(n+1)+A008683((n+1)²)`
-/

namespace A098493.P14848335643685862317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123973 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A098493.P14848335643685862317

/-! ## A098493.P4652807268545130423

`A123973(n+1)+A000045(C(2, n+2))`
-/

namespace A098493.P4652807268545130423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123973 (n + 1) + A000045 (Nat.choose 2 (n + 2))

end

end A098493.P4652807268545130423

/-! ## A098493.P2114495148837074568

`A123973(n+1)^(A000040(n+1)%2)`
-/

namespace A098493.P2114495148837074568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123973 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A098493.P2114495148837074568

/-!
# A098495: Array T(r,c) read by antidiagonals: values of triangle A098493 interpreted as polynomials, r >= 0.

The programs for A098495, there is no canonical definition to state claims against.
-/

/-! ## A098495.P15283964462161360576

`A292861(n)-A024360(A227940(n+1))`
-/

namespace A098495.P15283964462161360576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n - A024360 (A227940 (n + 1)).toNat

end

end A098495.P15283964462161360576

/-! ## A098495.P11286152377620961138

`A286352(n)-A358351(A107783(n))`
-/

namespace A098495.P11286152377620961138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n - A358351 (A107783 n).toNat

end

end A098495.P11286152377620961138

/-! ## A098495.P10714953076600869124

`A292133(n)+A057428(A292152(n+1))`
-/

namespace A098495.P10714953076600869124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 n + A057428 (A292152 (n + 1)).toNat

end

end A098495.P10714953076600869124

/-! ## A098495.P4348521016452998275

`A292861(n)+A057428(A292152(n+1))`
-/

namespace A098495.P4348521016452998275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n + A057428 (A292152 (n + 1)).toNat

end

end A098495.P4348521016452998275

/-! ## A098495.P11390721464486783703

`A002321(A007318(n)*A229417(n+1))`
-/

namespace A098495.P11390721464486783703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A007318 n * A229417 (n + 1)).toNat

end

end A098495.P11390721464486783703

/-!
# A098497: Main diagonal of triangle A098495.

The programs for A098497, there is no canonical definition to state claims against.
-/

/-! ## A098497.P16824076258255118237

`A033999(n)*A294099(A051890(n))`
-/

namespace A098497.P16824076258255118237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A294099 (A051890 n).toNat

end

end A098497.P16824076258255118237

/-! ## A098497.P15019269611561646527

`A157142(n)%2*A294099(A051890(n))`
-/

namespace A098497.P15019269611561646527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 2 * A294099 (A051890 n).toNat

end

end A098497.P15019269611561646527

/-! ## A098497.P15480899144446315989

`A008683(A274216(n))*A294099(A051890(n))`
-/

namespace A098497.P15480899144446315989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A274216 n).toNat * A294099 (A051890 n).toNat

end

end A098497.P15480899144446315989

/-!
# A098498: Number of squares on infinite half chessboard at <=n knight moves from a fixed point on the edge.

The programs for A098498, the canonical program `A098498.P9934280158493612758` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098498 has offset 0).

The definition of A098498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098498.P9934280158493612758

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=60, a(4)=110, a(5)=172, a(6)=248`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A098498

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9934280158493612758.Spec : Prop :=
  ∀ n, P9934280158493612758.a n = A098498 n

theorem P9934280158493612758.correct : P9934280158493612758.Spec := by
  intro n
  simp only [A098498]

end A098498

/-! ## A098498.P11401511639953412993

`A069720(a(n-2))` with `a(0)=1, a(1)=5, a(2)=23, a(3)=60, a(4)=110, a(5)=172, a(6)=248`
-/

namespace A098498.P11401511639953412993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 23, 60, 110, 172, 248] fun n a =>
  A069720 (a (n - 2)).toNat

end

end A098498.P11401511639953412993

namespace A098498

/-- `A069720(a(n-2))` -/
def P11401511639953412993.Spec : Prop :=
  ∀ n, P11401511639953412993.a n = A098498 n

end A098498

/-! ## A098498.P9382393943682397630

`A077294(a(n-2))` with `a(0)=1, a(1)=5, a(2)=23, a(3)=60, a(4)=110, a(5)=172, a(6)=248`
-/

namespace A098498.P9382393943682397630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 23, 60, 110, 172, 248] fun n a =>
  A077294 (a (n - 2)).toNat

end

end A098498.P9382393943682397630

namespace A098498

/-- `A077294(a(n-2))` -/
def P9382393943682397630.Spec : Prop :=
  ∀ n, P9382393943682397630.a n = A098498 n

end A098498

/-!
# A098499: Number of squares on infinite half chessboard at <=n knight moves from a fixed point on the diagonal.

The programs for A098499, there is no canonical definition to state claims against.
-/

/-! ## A098499.P13565219259141886723

`∩[A165705(n+1), A190708(n+1)]`
-/

namespace A098499.P13565219259141886723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098499.P13565219259141886723

/-! ## A098499.P11064125464245536548

`∑[∩[A349080(2*n+1), A047411(n+1)]]`
-/

namespace A098499.P11064125464245536548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349080 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098499.P11064125464245536548

