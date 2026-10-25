import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A395100: Zeroless primes having digit sum 10.

The programs for A395100, there is no canonical definition to state claims against.
-/

/-! ## A395100.P6180004324385144454

`∩[A107579(n+1), A179955(n+1)]`
-/

namespace A395100.P6180004324385144454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P6180004324385144454

/-! ## A395100.P14998695509479103360

`∩[A117674(n+1), A179955(n+1)]`
-/

namespace A395100.P14998695509479103360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P14998695509479103360

/-! ## A395100.P12737387814379399069

`p?[A179955(n+1)]`
-/

namespace A395100.P12737387814379399069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A395100.P12737387814379399069

/-! ## A395100.P2569840754446388700

`∩[A061237(n+1), A179955(n+1)]`
-/

namespace A395100.P2569840754446388700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P2569840754446388700

/-! ## A395100.P3056227723600330721

`∩[A062340(n+1), A179955(n+1)]`
-/

namespace A395100.P3056227723600330721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P3056227723600330721

/-! ## A395100.P9907980280778844156

`∩[A166561(n+1), A179955(n+1)]`
-/

namespace A395100.P9907980280778844156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P9907980280778844156

/-! ## A395100.P17226416997342480085

`∩[A179955(n+1), A243587(n+1)]`
-/

namespace A395100.P17226416997342480085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P17226416997342480085

/-! ## A395100.P17674918867168592225

`∩[A079130(n+1), A179955(n+1)]`
-/

namespace A395100.P17674918867168592225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P17674918867168592225

/-! ## A395100.P11602430616889068372

`∩[A129805(n+1), A179955(n+1)]`
-/

namespace A395100.P11602430616889068372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P11602430616889068372

/-! ## A395100.P612096424083174382

`∩[A179955(n+1), A243588(n+1)]`
-/

namespace A395100.P612096424083174382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395100.P612096424083174382

/-!
# A395101: Indices k such that A080764(k) = 1.

The programs for A395101, the canonical program `A395101.P16581405830071828920` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395101 has offset 1).

The definition of A395101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395101.P9874427445476079308

`floor((n+1)*sqrt(2))-1`
-/

namespace A395101.P9874427445476079308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

end

end A395101.P9874427445476079308

namespace A395101

/-- `floor((n+1)*sqrt(2))-1` -/
def P9874427445476079308.Spec : Prop :=
  ∀ n, P9874427445476079308.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P16168796975024637532

`comp[A184922(n+1)]`
-/

namespace A395101.P16168796975024637532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395101.P16168796975024637532

namespace A395101

/-- `comp[A184922(n+1)]` -/
def P16168796975024637532.Spec : Prop :=
  ∀ n, (P16168796975024637532.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P16581405830071828920

`A016777(n)%A182770(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395101

/-- `A016777(n)%A182770(n+1)` -/
def P16581405830071828920.Spec : Prop :=
  ∀ n, P16581405830071828920.a n = A395101 (n + 1)

theorem P16581405830071828920.correct : P16581405830071828920.Spec := by
  intro n
  simp only [A395101, Nat.add_sub_cancel]

end A395101

/-! ## A395101.P5358871967882942583

`A184922(n+1)%A103517(n)`
-/

namespace A395101.P5358871967882942583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184922 (n + 1)) (A103517 n)

end

end A395101.P5358871967882942583

namespace A395101

/-- `A184922(n+1)%A103517(n)` -/
def P5358871967882942583.Spec : Prop :=
  ∀ n, P5358871967882942583.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P9341466242772063114

`A004767(n)%A286988(n+1)`
-/

namespace A395101.P9341466242772063114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A286988 (n + 1))

end

end A395101.P9341466242772063114

namespace A395101

/-- `A004767(n)%A286988(n+1)` -/
def P9341466242772063114.Spec : Prop :=
  ∀ n, P9341466242772063114.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P617955437908995001

`A001952(n+1)%A144396(n+1)`
-/

namespace A395101.P617955437908995001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1)) (A144396 (n + 1))

end

end A395101.P617955437908995001

namespace A395101

/-- `A001952(n+1)%A144396(n+1)` -/
def P617955437908995001.Spec : Prop :=
  ∀ n, P617955437908995001.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P17502135524906136844

`A189380(n+1)%A080754(n+1)`
-/

namespace A395101.P17502135524906136844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189380 (n + 1)) (A080754 (n + 1))

end

end A395101.P17502135524906136844

namespace A395101

/-- `A189380(n+1)%A080754(n+1)` -/
def P17502135524906136844.Spec : Prop :=
  ∀ n, P17502135524906136844.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P10638574138102540778

`A190329(n+1)%A080755(n+1)`
-/

namespace A395101.P10638574138102540778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190329 (n + 1)) (A080755 (n + 1))

end

end A395101.P10638574138102540778

namespace A395101

/-- `A190329(n+1)%A080755(n+1)` -/
def P10638574138102540778.Spec : Prop :=
  ∀ n, P10638574138102540778.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P6498007674922294069

`A140868(n+1)%A187338(n+1)`
-/

namespace A395101.P6498007674922294069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140868 (n + 1)) (A187338 (n + 1))

end

end A395101.P6498007674922294069

namespace A395101

/-- `A140868(n+1)%A187338(n+1)` -/
def P6498007674922294069.Spec : Prop :=
  ∀ n, P6498007674922294069.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P2163887962741585371

`A359351(n+1)%A001952(n+1)`
-/

namespace A395101.P2163887962741585371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359351 (n + 1)) (A001952 (n + 1))

end

end A395101.P2163887962741585371

namespace A395101

/-- `A359351(n+1)%A001952(n+1)` -/
def P2163887962741585371.Spec : Prop :=
  ∀ n, P2163887962741585371.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P10021235361970795945

`A286909(n+1)%A087057(n+1)`
-/

namespace A395101.P10021235361970795945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286909 (n + 1)) (A087057 (n + 1))

end

end A395101.P10021235361970795945

namespace A395101

/-- `A286909(n+1)%A087057(n+1)` -/
def P10021235361970795945.Spec : Prop :=
  ∀ n, P10021235361970795945.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P12086405591562730305

`eq[1, A099501(n+1)]`
-/

namespace A395101.P12086405591562730305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395101.P12086405591562730305

namespace A395101

/-- `eq[1, A099501(n+1)]` -/
def P12086405591562730305.Spec : Prop :=
  ∀ n, (P12086405591562730305.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P12974359822156078052

`eq[2, A261865(n+1)]`
-/

namespace A395101.P12974359822156078052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395101.P12974359822156078052

namespace A395101

/-- `eq[2, A261865(n+1)]` -/
def P12974359822156078052.Spec : Prop :=
  ∀ n, (P12974359822156078052.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P9205235350192015625

`A023443(A001951(n+1))`
-/

namespace A395101.P9205235350192015625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001951 (n + 1)).toNat

end

end A395101.P9205235350192015625

namespace A395101

/-- `A023443(A001951(n+1))` -/
def P9205235350192015625.Spec : Prop :=
  ∀ n, P9205235350192015625.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P11904307663481622037

`eq[A080764(n), A329684(n)]`
-/

namespace A395101.P11904307663481622037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395101.P11904307663481622037

namespace A395101

/-- `eq[A080764(n), A329684(n)]` -/
def P11904307663481622037.Spec : Prop :=
  ∀ n, (P11904307663481622037.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P5716873764869285161

`eq[A026249(n+1), A181534(n+1)]`
-/

namespace A395101.P5716873764869285161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395101.P5716873764869285161

namespace A395101

/-- `eq[A026249(n+1), A181534(n+1)]` -/
def P5716873764869285161.Spec : Prop :=
  ∀ n, (P5716873764869285161.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P14322148247034763930

`eq[A026250(n+1), A188299(n+1)]`
-/

namespace A395101.P14322148247034763930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395101.P14322148247034763930

namespace A395101

/-- `eq[A026250(n+1), A188299(n+1)]` -/
def P14322148247034763930.Spec : Prop :=
  ∀ n, (P14322148247034763930.a n : ℤ) = A395101 (n + 1)

end A395101

/-! ## A395101.P9246385004994102687

`A023444(A087057(n+1))`
-/

namespace A395101.P9246385004994102687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A087057 (n + 1)).toNat

end

end A395101.P9246385004994102687

namespace A395101

/-- `A023444(A087057(n+1))` -/
def P9246385004994102687.Spec : Prop :=
  ∀ n, P9246385004994102687.a n = A395101 (n + 1)

end A395101

/-! ## A395101.P6992790845157636872

`A329849(Δ[n²])`
-/

namespace A395101.P6992790845157636872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329849 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A395101.P6992790845157636872

namespace A395101

/-- `A329849(Δ[n²])` -/
def P6992790845157636872.Spec : Prop :=
  ∀ n, P6992790845157636872.a n = A395101 (n + 1)

end A395101

/-!
# A395103: Numbers with exactly k prime factors, counting repeats, with k>1, that are formed by concatenating k primes.

The programs for A395103, there is no canonical definition to state claims against.
-/

/-! ## A395103.P15001227016590021893

`∩[A066737(n+1), A131457(n+1)]`
-/

namespace A395103.P15001227016590021893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395103.P15001227016590021893

/-! ## A395103.P16726968949046558236

`∩[A106582(n+1), A131457(n+1)]`
-/

namespace A395103.P16726968949046558236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395103.P16726968949046558236

/-! ## A395103.P11301013840828112265

`∩[A121609(n+1), A131457(n+1)]`
-/

namespace A395103.P11301013840828112265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395103.P11301013840828112265

/-! ## A395103.P13558614271785599672

`∩[A131457(n+1), A152242(n+1)]`
-/

namespace A395103.P13558614271785599672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395103.P13558614271785599672

/-! ## A395103.P58055080839726058

`∩[A066737(n+1), A103607(n+1)]`
-/

namespace A395103.P58055080839726058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395103.P58055080839726058

/-!
# A395108: Number of points covered by a minimal level n H-Tree on a square lattice.

The programs for A395108, the canonical program `A395108.P9114937873138834343` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395108 has offset 0).

The definition of A395108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395108.P9114937873138834343

`2*A135094(n)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395108

/-- `2*A135094(n)+1` -/
def P9114937873138834343.Spec : Prop :=
  ∀ n, P9114937873138834343.a n = A395108 n

theorem P9114937873138834343.correct : P9114937873138834343.Spec := by
  intro n
  simp only [A395108]

end A395108

/-! ## A395108.P5011739131998479903

`A274230(n+1)+2^n`
-/

namespace A395108.P5011739131998479903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 1) + (2 ^ n : ℤ)

end

end A395108.P5011739131998479903

namespace A395108

/-- `A274230(n+1)+2^n` -/
def P5011739131998479903.Spec : Prop :=
  ∀ n, P5011739131998479903.a n = A395108 n

end A395108

/-! ## A395108.P4173547851984161225

`A126646(n)+A027556(n)`
-/

namespace A395108.P4173547851984161225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A027556 n

end

end A395108.P4173547851984161225

namespace A395108

/-- `A126646(n)+A027556(n)` -/
def P4173547851984161225.Spec : Prop :=
  ∀ n, P4173547851984161225.a n = A395108 n

end A395108

/-! ## A395108.P16181693918796543637

`A107659(n)-A000225(n)`
-/

namespace A395108.P16181693918796543637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n - A000225 n

end

end A395108.P16181693918796543637

namespace A395108

/-- `A107659(n)-A000225(n)` -/
def P16181693918796543637.Spec : Prop :=
  ∀ n, P16181693918796543637.a n = A395108 n

end A395108

/-! ## A395108.P6018388259470865256

`A153893(n)-A027383(n)`
-/

namespace A395108.P6018388259470865256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A027383 n

end

end A395108.P6018388259470865256

namespace A395108

/-- `A153893(n)-A027383(n)` -/
def P6018388259470865256.Spec : Prop :=
  ∀ n, P6018388259470865256.a n = A395108 n

end A395108

/-! ## A395108.P3068045189663421002

`A276918(n)-A014236(n)`
-/

namespace A395108.P3068045189663421002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276918 n - A014236 n

end

end A395108.P3068045189663421002

namespace A395108

/-- `A276918(n)-A014236(n)` -/
def P3068045189663421002.Spec : Prop :=
  ∀ n, P3068045189663421002.a n = A395108 n

end A395108

/-! ## A395108.P693243140442949999

`A033484(n)-A354788(n)`
-/

namespace A395108.P693243140442949999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A354788 n

end

end A395108.P693243140442949999

namespace A395108

/-- `A033484(n)-A354788(n)` -/
def P693243140442949999.Spec : Prop :=
  ∀ n, P693243140442949999.a n = A395108 n

end A395108

/-! ## A395108.P9384448000767642311

`A007283(n)-A052955(n+1)`
-/

namespace A395108.P9384448000767642311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A052955 (n + 1)

end

end A395108.P9384448000767642311

namespace A395108

/-- `A007283(n)-A052955(n+1)` -/
def P9384448000767642311.Spec : Prop :=
  ∀ n, P9384448000767642311.a n = A395108 n

end A395108

/-! ## A395108.P5554111052194022344

`A181565(n)-A163978(n+1)`
-/

namespace A395108.P5554111052194022344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n - A163978 (n + 1)

end

end A395108.P5554111052194022344

namespace A395108

/-- `A181565(n)-A163978(n+1)` -/
def P5554111052194022344.Spec : Prop :=
  ∀ n, P5554111052194022344.a n = A395108 n

end A395108

/-! ## A395108.P7924471143546421881

`A027383(2*n)-A354788(n)`
-/

namespace A395108.P7924471143546421881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n) - A354788 n

end

end A395108.P7924471143546421881

namespace A395108

/-- `A027383(2*n)-A354788(n)` -/
def P7924471143546421881.Spec : Prop :=
  ∀ n, P7924471143546421881.a n = A395108 n

end A395108

/-! ## A395108.P16930149735134061634

`A052955(2*n+1)-A027383(n)`
-/

namespace A395108.P16930149735134061634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n + 1) - A027383 n

end

end A395108.P16930149735134061634

namespace A395108

/-- `A052955(2*n+1)-A027383(n)` -/
def P16930149735134061634.Spec : Prop :=
  ∀ n, P16930149735134061634.a n = A395108 n

end A395108

/-! ## A395108.P5919821264325825100

`A063759(2*n+1)-A052955(n+1)`
-/

namespace A395108.P5919821264325825100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n + 1) - A052955 (n + 1)

end

end A395108.P5919821264325825100

namespace A395108

/-- `A063759(2*n+1)-A052955(n+1)` -/
def P5919821264325825100.Spec : Prop :=
  ∀ n, P5919821264325825100.a n = A395108 n

end A395108

/-! ## A395108.P16523849483767877812

`A163978(2*n+1)-A052955(n+1)`
-/

namespace A395108.P16523849483767877812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (2 * n + 1) - A052955 (n + 1)

end

end A395108.P16523849483767877812

namespace A395108

/-- `A163978(2*n+1)-A052955(n+1)` -/
def P16523849483767877812.Spec : Prop :=
  ∀ n, P16523849483767877812.a n = A395108 n

end A395108

/-! ## A395108.P16940021760129626752

`A164090(2*(n+1))-A052955(n+1)`
-/

namespace A395108.P16940021760129626752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (2 * (n + 1)) - A052955 (n + 1)

end

end A395108.P16940021760129626752

namespace A395108

/-- `A164090(2*(n+1))-A052955(n+1)` -/
def P16940021760129626752.Spec : Prop :=
  ∀ n, P16940021760129626752.a n = A395108 n

end A395108

/-! ## A395108.P10175130915072765063

`A209721(2*(n+1))-A163978(n+1)`
-/

namespace A395108.P10175130915072765063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (2 * (n + 1)) - A163978 (n + 1)

end

end A395108.P10175130915072765063

namespace A395108

/-- `A209721(2*(n+1))-A163978(n+1)` -/
def P10175130915072765063.Spec : Prop :=
  ∀ n, P10175130915072765063.a n = A395108 n

end A395108

/-! ## A395108.P7523733586057919884

`A209722(2*(n+1))-A209721(n+2)`
-/

namespace A395108.P7523733586057919884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (2 * (n + 1)) - A209721 (n + 2)

end

end A395108.P7523733586057919884

namespace A395108

/-- `A209722(2*(n+1))-A209721(n+2)` -/
def P7523733586057919884.Spec : Prop :=
  ∀ n, P7523733586057919884.a n = A395108 n

end A395108

/-! ## A395108.P6557770260813870769

`A343177(2*n+1)-A209722(n+2)`
-/

namespace A395108.P6557770260813870769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (2 * n + 1) - A209722 (n + 2)

end

end A395108.P6557770260813870769

namespace A395108

/-- `A343177(2*n+1)-A209722(n+2)` -/
def P6557770260813870769.Spec : Prop :=
  ∀ n, P6557770260813870769.a n = A395108 n

end A395108

/-! ## A395108.P11541938948736771746

`A209721(2*(n+1))-A029744(n+3)`
-/

namespace A395108.P11541938948736771746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (2 * (n + 1)) - A029744 (n + 3)

end

end A395108.P11541938948736771746

namespace A395108

/-- `A209721(2*(n+1))-A029744(n+3)` -/
def P11541938948736771746.Spec : Prop :=
  ∀ n, P11541938948736771746.a n = A395108 n

end A395108

/-! ## A395108.P6138922871089793295

`A007283(n)-A016116(n)-A052955(n)`
-/

namespace A395108.P6138922871089793295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A016116 n - A052955 n

end

end A395108.P6138922871089793295

namespace A395108

/-- `A007283(n)-A016116(n)-A052955(n)` -/
def P6138922871089793295.Spec : Prop :=
  ∀ n, P6138922871089793295.a n = A395108 n

end A395108

/-! ## A395108.P3056881411883903948

`A000079(n+1)+A000079(n)-A052955(n+1)`
-/

namespace A395108.P3056881411883903948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A000079 n - A052955 (n + 1))

end

end A395108.P3056881411883903948

namespace A395108

/-- `A000079(n+1)+A000079(n)-A052955(n+1)` -/
def P3056881411883903948.Spec : Prop :=
  ∀ n, P3056881411883903948.a n = A395108 n

end A395108

/-!
# A395109: Number of points covered by a regular level n H-Tree on a square lattice.

The programs for A395109, there is no canonical definition to state claims against.
-/

/-! ## A395109.P6648318702718313567

`A082226(A166952(n))`
-/

namespace A395109.P6648318702718313567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A166952 n).toNat

end

end A395109.P6648318702718313567

/-! ## A395109.P10596020146951336420

`A003132(A261006(n))+A002378(n)`
-/

namespace A395109.P10596020146951336420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A261006 n).toNat + A002378 n

end

end A395109.P10596020146951336420

/-!
# A395110: Number of functions on the grid [0,n+1]^2 which are zero on the boundary and satisfy f(i,j) = ceiling((f(i-1,j)+f(i,j-1)+f(i+1,j)+f(i,j+1))/4) for 1<=i,j<=n.

The programs for A395110, there is no canonical definition to state claims against.
-/

/-! ## A395110.P8549257505595082117

`A123050(A042225(n))`
-/

namespace A395110.P8549257505595082117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A042225 n).toNat

end

end A395110.P8549257505595082117

/-!
# A395111: a(n) is the number of partitions of n into distinct parts such that the sum of rad(k) over the parts k equals rad(n).

The programs for A395111, there is no canonical definition to state claims against.
-/

/-! ## A395111.P4203568923866956032

`A007318(n+1)+A001899(A326595(3*n))`
-/

namespace A395111.P4203568923866956032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + A001899 (A326595 (3 * n)).toNat

end

end A395111.P4203568923866956032

/-!
# A395112: Number of distinct Smith normal forms of 3 X 3 matrices with entries from {0, 1, ..., n}.

The programs for A395112, there is no canonical definition to state claims against.
-/

/-! ## A395112.P14182582166289948807

`A181625(A095121(n))`
-/

namespace A395112.P14182582166289948807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181625 (A095121 n).toNat

end

end A395112.P14182582166289948807

/-!
# A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

The programs for A395114, the canonical program `A395114.P18219317400035454050` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395114 has offset 1).

The definition of A395114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395114.P18219317400035454050

`A005590(A103354(n+2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A395114

/-- `A005590(A103354(n+2))` -/
def P18219317400035454050.Spec : Prop :=
  ∀ n, P18219317400035454050.a n = A395114 (n + 1)

theorem P18219317400035454050.correct : P18219317400035454050.Spec := by
  intro n
  simp only [A395114, Nat.add_sub_cancel]

end A395114

/-!
# A395118: Given e.g.f. A(x), the coefficients of x^n in the n-th power of A(x) and in the n-th iteration of x*A(x) are equal for n >= 1.

The programs for A395118, there is no canonical definition to state claims against.
-/

/-! ## A395118.P1704844285747685600

`A332333(n!)`
-/

namespace A395118.P1704844285747685600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332333 (Nat.factorial n)

end

end A395118.P1704844285747685600

/-!
# A395119: E.g.f. satisfies A(x) = G(x*A(x)), where G(x) is the e.g.f. of A395118.

The programs for A395119, there is no canonical definition to state claims against.
-/

/-! ## A395119.P14853843409391438291

`A306470(∏[n!])`
-/

namespace A395119.P14853843409391438291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306470 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A395119.P14853843409391438291

/-!
# A395120: E.g.f. satisfies A(x) = Sum_{n>=0} A^n(x) * x^n/n!, where A^n(x) denotes the n-th iteration of A(x) with A^0(x) = x.

The programs for A395120, there is no canonical definition to state claims against.
-/

/-! ## A395120.P7297062252608779967

`(n+1)*A395121(n)`
-/

namespace A395120.P7297062252608779967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395121 n

end

end A395120.P7297062252608779967

/-! ## A395120.P3215144680902003971

`A073093(A002110(n))*A230320(n)`
-/

namespace A395120.P3215144680902003971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A002110 n).toNat * A230320 n

end

end A395120.P3215144680902003971

/-!
# A395121: a(n) = A395120(n+1)/(n+1) for n >= 0.

The programs for A395121, there is no canonical definition to state claims against.
-/

/-! ## A395121.P4733086583825927189

`A395120(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395121.P4733086583825927189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395120 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A395121.P4733086583825927189

/-!
# A395126: a(n) = fourth coordinate d of the n-th P-position (a,b,c,d) of 4 X n Chomp in lexicographic order, where a>=b>=c>=d>=0 gives row lengths.

The programs for A395126, there is no canonical definition to state claims against.
-/

/-! ## A395126.P10104914553966576247

`A037909(A340215(n+2))`
-/

namespace A395126.P10104914553966576247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037909 (A340215 (n + 2)).toNat

end

end A395126.P10104914553966576247

/-! ## A395126.P16286669091324571245

`A072769(A072809(3*n+4)*A196729(n+1))`
-/

namespace A395126.P16286669091324571245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072769 (A072809 (3 * n + 4) * A196729 (n + 1)).toNat

end

end A395126.P16286669091324571245

/-! ## A395126.P13868159311089286437

`A086014(A121984(n+1))`
-/

namespace A395126.P13868159311089286437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 (A121984 (n + 1)).toNat

end

end A395126.P13868159311089286437

/-! ## A395126.P15444490758591175748

`A324252(A283234(n+2))`
-/

namespace A395126.P15444490758591175748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324252 (A283234 (n + 2)).toNat

end

end A395126.P15444490758591175748

/-! ## A395126.P10507036600676820875

`A065770(A269303(2*(n+1)))%A271778(n)`
-/

namespace A395126.P10507036600676820875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A269303 (2 * (n + 1))).toNat) (A271778 n)

end

end A395126.P10507036600676820875

/-!
# A395127: Number of distinct integers appearing in Collatz sequences with starting values <= n.

The programs for A395127, there is no canonical definition to state claims against.
-/

/-! ## A395127.P14575333537381850233

`∑[A222118(n+1)]`
-/

namespace A395127.P14575333537381850233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395127.P14575333537381850233

/-!
# A395128: Numbers k that are the concatenation of three divisors of k.

The programs for A395128, there is no canonical definition to state claims against.
-/

/-! ## A395128.P1497292897319492564

`∩[A002796(n+1), A359651(n+1)]`
-/

namespace A395128.P1497292897319492564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395128.P1497292897319492564

/-! ## A395128.P11495419433869572751

`∩[A034838(n+1), A359651(n+1)]`
-/

namespace A395128.P11495419433869572751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395128.P11495419433869572751

/-!
# A395129: Numbers k that are the concatenation of three distinct divisors of k.

The programs for A395129, there is no canonical definition to state claims against.
-/

/-! ## A395129.P17034477937417514581

`∩[A031962(n+1), A115569(n+1)]`
-/

namespace A395129.P17034477937417514581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395129.P17034477937417514581

/-! ## A395129.P17580775119361869226

`∩[A043639(n+1), A115569(n+1)]`
-/

namespace A395129.P17580775119361869226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395129.P17580775119361869226

/-! ## A395129.P3617445531257424446

`∩[A187516(n+1), A277694(n+1)]`
-/

namespace A395129.P3617445531257424446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395129.P3617445531257424446

/-! ## A395129.P5677311575952734024

`∩[A115569(n+1), A359651(n+1)]`
-/

namespace A395129.P5677311575952734024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395129.P5677311575952734024

/-!
# A395130: In the '3x+1' problem, take the sequence of starting values which set new records for the highest point of the trajectory before reaching 1 (A006884); sequence gives the number of halving and tripling steps with which the maximal value is reached in the trajectory with that start.

The programs for A395130, there is no canonical definition to state claims against.
-/

/-! ## A395130.P7478327733000353971

`A220421(A006884(n+1))`
-/

namespace A395130.P7478327733000353971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (A006884 (n + 1)).toNat

end

end A395130.P7478327733000353971

/-!
# A395133: Number of monotone and order decreasing transformations on an n-chain.

The programs for A395133, the canonical program `A395133.P17198686885299587289` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395133 has offset 1).

The definition of A395133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395133.P17198686885299587289

`1+n+1-2^(n+2)+A122367(n+1)+A006318(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A395133

/-- `1+n+1-2^(n+2)+A122367(n+1)+A006318(n+1)` -/
def P17198686885299587289.Spec : Prop :=
  ∀ n, P17198686885299587289.a n = A395133 (n + 1)

theorem P17198686885299587289.correct : P17198686885299587289.Spec := by
  intro n
  simp only [A395133, Nat.add_sub_cancel]

end A395133

/-! ## A395133.P6635565499434177141

`1+n+1-2^(n+2)+A000045(2*(n+1)+1)+A006318(n+1)`
-/

namespace A395133.P6635565499434177141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + A000045 (2 * (n + 1) + 1) + A006318 (n + 1)

end

end A395133.P6635565499434177141

namespace A395133

/-- `1+n+1-2^(n+2)+A000045(2*(n+1)+1)+A006318(n+1)` -/
def P6635565499434177141.Spec : Prop :=
  ∀ n, P6635565499434177141.a n = A395133 (n + 1)

end A395133

/-!
# A395140: Triangle read by rows: T(n,k) is the number of length n words over the alphabet [4] with c(1) = k such that all prefixes satisfy c(1) >= c(2), c(1) >= c(3), c(2) >= c(4), and c(3) >= c(4), where c(i) is the number of occurrences of the letter i.

The programs for A395140, there is no canonical definition to state claims against.
-/

/-! ## A395140.P16590010977132901222

`A350272(A172288(n))`
-/

namespace A395140.P16590010977132901222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350272 (A172288 n).toNat

end

end A395140.P16590010977132901222

/-! ## A395140.P10380420253315412532

`A161564(A355172(n+1))`
-/

namespace A395140.P10380420253315412532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161564 (A355172 (n + 1)).toNat

end

end A395140.P10380420253315412532

/-!
# A395141: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] C(x)^k and C(x) satisfies C(x) = cosh( Integral C(x)^3 dx ).

The programs for A395141, there is no canonical definition to state claims against.
-/

/-! ## A395141.P9088160597647590163

`A012265(A394320(n))`
-/

namespace A395141.P9088160597647590163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A394320 n).toNat

end

end A395141.P9088160597647590163

/-! ## A395141.P2790456828430751884

`A216394(A249250(n))`
-/

namespace A395141.P2790456828430751884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216394 (A249250 n).toNat

end

end A395141.P2790456828430751884

/-!
# A395143: Numbers with no representation as the quotient of two fibbinary numbers (A003714).

The programs for A395143, there is no canonical definition to state claims against.
-/

/-! ## A395143.P1614072443628155950

`lt[A121238(n), A026492(A352227(n+1))]`
-/

namespace A395143.P1614072443628155950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A352227 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395143.P1614072443628155950

/-!
# A395145: Maximum number of ISO A(n) sheets that fit orthogonally without overlap into a single ISO A0 sheet.

The programs for A395145, there is no canonical definition to state claims against.
-/

/-! ## A395145.P6782292457088636567

`A265725(n)+A164154(n)`
-/

namespace A395145.P6782292457088636567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 n + A164154 n

end

end A395145.P6782292457088636567

/-! ## A395145.P4805311252134582449

`A085854(A000598(n))+A000079(n)`
-/

namespace A395145.P4805311252134582449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 (A000598 n).toNat + A000079 n

end

end A395145.P4805311252134582449

/-! ## A395145.P4403338716801026574

`A367411(A367411(n+4))+A000079(n)`
-/

namespace A395145.P4403338716801026574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367411 (A367411 (n + 4)).toNat + A000079 n

end

end A395145.P4403338716801026574

/-! ## A395145.P16963782436008706246

`A350139(A006498(n+1))+A131577(n+1)`
-/

namespace A395145.P16963782436008706246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A006498 (n + 1)).toNat + A131577 (n + 1)

end

end A395145.P16963782436008706246

/-! ## A395145.P5493399199571782916

`A093415(A119468(2*n+3))+A000225(n)`
-/

namespace A395145.P5493399199571782916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093415 (A119468 (2 * n + 3)).toNat + A000225 n

end

end A395145.P5493399199571782916

/-!
# A395146: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] C(x)^k and C(x) satisfies C(x) = cosh( Integral C(x)^4 dx ).

The programs for A395146, there is no canonical definition to state claims against.
-/

/-! ## A395146.P14254443605196597929

`A102705(A395141(n))`
-/

namespace A395146.P14254443605196597929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A395141 n).toNat

end

end A395146.P14254443605196597929

/-! ## A395146.P1421554068794630595

`A116575(A396503(n))`
-/

namespace A395146.P1421554068794630595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116575 (A396503 n).toNat

end

end A395146.P1421554068794630595

/-!
# A395148: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] 1/(1 - x^2)^(k/2).

The programs for A395148, there is no canonical definition to state claims against.
-/

/-! ## A395148.P12214653246394071602

`A294849(A118354(n))`
-/

namespace A395148.P12214653246394071602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 (A118354 n).toNat

end

end A395148.P12214653246394071602

/-! ## A395148.P11274060121854270289

`A396502(A055648(n))`
-/

namespace A395148.P11274060121854270289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396502 (A055648 n).toNat

end

end A395148.P11274060121854270289

/-! ## A395148.P1790442573720333455

`A055572(A396588(n))`
-/

namespace A395148.P1790442573720333455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A396588 n).toNat

end

end A395148.P1790442573720333455

/-! ## A395148.P11665672251072898699

`A072088(A396502(n))`
-/

namespace A395148.P11665672251072898699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A396502 n).toNat

end

end A395148.P11665672251072898699

/-! ## A395148.P4656813792415791147

`A113219(A384987(n))`
-/

namespace A395148.P4656813792415791147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A384987 n).toNat

end

end A395148.P4656813792415791147

/-!
# A395149: Triangle of coefficients of characteristic polynomial of negative Pascal matrix with (i+1,j+1)-th entry -C(i+j+2,j).

The programs for A395149, there is no canonical definition to state claims against.
-/

/-! ## A395149.P13671862702903672715

`A003056(A022178(n))`
-/

namespace A395149.P13671862702903672715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A022178 n).toNat

end

end A395149.P13671862702903672715

/-! ## A395149.P17473699657529859611

`A051162(A022174(n))`
-/

namespace A395149.P17473699657529859611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A022174 n).toNat

end

end A395149.P17473699657529859611

/-! ## A395149.P17743656427385357867

`A106801(A056940(n))`
-/

namespace A395149.P17743656427385357867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A056940 n).toNat

end

end A395149.P17743656427385357867

/-! ## A395149.P8566426769822916675

`A020640(A157221(n))`
-/

namespace A395149.P8566426769822916675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020640 (A157221 n).toNat

end

end A395149.P8566426769822916675

/-! ## A395149.P12782085600061118715

`A020640(A174036(n))`
-/

namespace A395149.P12782085600061118715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020640 (A174036 n).toNat

end

end A395149.P12782085600061118715

/-!
# A395150: Triangle of coefficients of the characteristic polynomial of the negative Pascal matrix with (i+1,j+1)-th entry -C(i+j+1,j).

The programs for A395150, there is no canonical definition to state claims against.
-/

/-! ## A395150.P10400139840715315851

`A000194(A022177(n))`
-/

namespace A395150.P10400139840715315851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A022177 n).toNat

end

end A395150.P10400139840715315851

/-! ## A395150.P1063071406613567467

`A023128(A022180(n))`
-/

namespace A395150.P1063071406613567467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (A022180 n).toNat

end

end A395150.P1063071406613567467

/-! ## A395150.P9796200910807082393

`A078129(A022167(n))`
-/

namespace A395150.P9796200910807082393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A022167 n).toNat

end

end A395150.P9796200910807082393

/-! ## A395150.P17037280072210678007

`A095047(A045912(n))`
-/

namespace A395150.P17037280072210678007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (A045912 n).toNat

end

end A395150.P17037280072210678007

/-! ## A395150.P6861985372586377095

`A115928(A099759(n))`
-/

namespace A395150.P6861985372586377095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115928 (A099759 n).toNat

end

end A395150.P6861985372586377095

/-!
# A395151: Number of compositions covered by the n-th composition in standard order.

The programs for A395151, there is no canonical definition to state claims against.
-/

/-! ## A395151.P13478961777658310289

`A019569(A284573(n))`
-/

namespace A395151.P13478961777658310289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019569 (A284573 n).toNat

end

end A395151.P13478961777658310289

/-! ## A395151.P8173800152239769818

`A318322(A284573(n)+A000007(n))`
-/

namespace A395151.P8173800152239769818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (A284573 n + A000007 n).toNat

end

end A395151.P8173800152239769818

/-! ## A395151.P7692977679637492391

`A318322(A284573(n))^A178334(n)`
-/

namespace A395151.P7692977679637492391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318322 (A284573 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A395151.P7692977679637492391

/-! ## A395151.P11488278919504857948

`A318322(A284573(n))%A000051(n)`
-/

namespace A395151.P11488278919504857948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318322 (A284573 n).toNat) (A000051 n)

end

end A395151.P11488278919504857948

/-! ## A395151.P3735621600543145956

`A318322(A284573(n)%A002805(n+4))`
-/

namespace A395151.P3735621600543145956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (Int.tmod (A284573 n) (A002805 (n + 4))).toNat

end

end A395151.P3735621600543145956

/-!
# A395156: Square array read by antidiagonals upwards: T(n,k) is the n-th number j with the property that the symmetric representation of sigma(j) has 2*k parts and two parts meet at the center of the Dyck paths, n >= 1, k >= 1, j >= 1.

The programs for A395156, there is no canonical definition to state claims against.
-/

/-! ## A395156.P12490134777880701840

`A014105(A330928(n+1)+A227819(3*n+5))`
-/

namespace A395156.P12490134777880701840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A330928 (n + 1) + A227819 (3 * n + 5)).toNat

end

end A395156.P12490134777880701840

/-!
# A395159: a(n) = 2*(sum of elements of n-th run)/(length of n-th run)^2 using 1 and 2 starting with 1,1.

The programs for A395159, the canonical program `A395159.P17454811225797631171` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395159 has offset 1).

The definition of A395159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395159.P474714683526206268

`A386385(log2(A157196(n+2))^n)`
-/

namespace A395159.P474714683526206268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386385 (SequenceMachineLib.roundAway (Real.logb 2 (A157196 (n + 2) : ℝ) ^ n)).toNat

end

end A395159.P474714683526206268

namespace A395159

/-- `A386385(log2(A157196(n+2))^n)` -/
def P474714683526206268.Spec : Prop :=
  ∀ n, P474714683526206268.a n = A395159 (n + 1)

end A395159

/-! ## A395159.P5267707172541647165

`A386385((A157196(n+2)-1)^n)`
-/

namespace A395159.P5267707172541647165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386385 ((A157196 (n + 2) - 1) ^ n).toNat

end

end A395159.P5267707172541647165

namespace A395159

/-- `A386385((A157196(n+2)-1)^n)` -/
def P5267707172541647165.Spec : Prop :=
  ∀ n, P5267707172541647165.a n = A395159 (n + 1)

end A395159

/-! ## A395159.P17454811225797631171

`A000034(A157196(n+2)+A046523(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A395159

/-- `A000034(A157196(n+2)+A046523(n+1))` -/
def P17454811225797631171.Spec : Prop :=
  ∀ n, P17454811225797631171.a n = A395159 (n + 1)

theorem P17454811225797631171.correct : P17454811225797631171.Spec := by
  intro n
  simp only [A395159, Nat.add_sub_cancel]

end A395159

/-! ## A395159.P5143313122323180682

`A000005(A020639(n+1))/A157196(n+2)`
-/

namespace A395159.P5143313122323180682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A020639 (n + 1)).toNat : ℚ) / (A157196 (n + 2) : ℚ)

end

end A395159.P5143313122323180682

namespace A395159

/-- `A000005(A020639(n+1))/A157196(n+2)` -/
def P5143313122323180682.Spec : Prop :=
  ∀ n, P5143313122323180682.a n = (A395159 (n + 1) : ℚ)

end A395159

/-! ## A395159.P5955312825120936075

`A020639(A006093(n+1))/A157196(n+2)`
-/

namespace A395159.P5955312825120936075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A006093 (n + 1)).toNat : ℚ) / (A157196 (n + 2) : ℚ)

end

end A395159.P5955312825120936075

namespace A395159

/-- `A020639(A006093(n+1))/A157196(n+2)` -/
def P5955312825120936075.Spec : Prop :=
  ∀ n, P5955312825120936075.a n = (A395159 (n + 1) : ℚ)

end A395159

/-! ## A395159.P12274663442222252321

`A000034(A106116(n+1)*A157196(n+2))`
-/

namespace A395159.P12274663442222252321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A106116 (n + 1) * A157196 (n + 2)).toNat

end

end A395159.P12274663442222252321

namespace A395159

/-- `A000034(A106116(n+1)*A157196(n+2))` -/
def P12274663442222252321.Spec : Prop :=
  ∀ n, P12274663442222252321.a n = A395159 (n + 1)

end A395159

/-! ## A395159.P12126829535242448566

`A020639(A007782(n))/A157196(n+2)`
-/

namespace A395159.P12126829535242448566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A007782 n).toNat : ℚ) / (A157196 (n + 2) : ℚ)

end

end A395159.P12126829535242448566

namespace A395159

/-- `A020639(A007782(n))/A157196(n+2)` -/
def P12126829535242448566.Spec : Prop :=
  ∀ n, P12126829535242448566.a n = (A395159 (n + 1) : ℚ)

end A395159

/-!
# A395172: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where A(n,k) = (2*n)! * [x^(2*n)] C(x)^k and C(x) satisfies C(x) = cosh( Integral C(x)^5 dx ).

The programs for A395172, there is no canonical definition to state claims against.
-/

/-! ## A395172.P2821040684639697742

`A171458(A384721(n))`
-/

namespace A395172.P2821040684639697742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171458 (A384721 n).toNat

end

end A395172.P2821040684639697742

/-! ## A395172.P11328607288588897012

`A171458(A384751(n))`
-/

namespace A395172.P11328607288588897012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171458 (A384751 n).toNat

end

end A395172.P11328607288588897012

/-! ## A395172.P16099540868233049439

`A361952(n*A361955(A361953(n)))`
-/

namespace A395172.P16099540868233049439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361952 ((n : ℤ) * A361955 (A361953 n).toNat).toNat

end

end A395172.P16099540868233049439

/-! ## A395172.P7850253172618740657

`A397000((n+1)*A233335(A396999(n)))`
-/

namespace A395172.P7850253172618740657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397000 ((n + 1 : ℤ) * A233335 (A396999 n).toNat).toNat

end

end A395172.P7850253172618740657

/-! ## A395172.P9638793624801527176

`A397000((n+1)*A233335(A397001(n)))`
-/

namespace A395172.P9638793624801527176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397000 ((n + 1 : ℤ) * A233335 (A397001 n).toNat).toNat

end

end A395172.P9638793624801527176

/-!
# A395173: a(n) = (2*n)! * [x^(2*n)] C(x)^2, where C(x) satisfies C(x) = cosh( Integral C(x)^5 dx ).

The programs for A395173, there is no canonical definition to state claims against.
-/

/-! ## A395173.P7948867463611248395

`A395172(∑[n+3])`
-/

namespace A395173.P7948867463611248395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395172 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395173.P7948867463611248395

/-!
# A395178: Squares of Mersenne prime exponents A000043.

The programs for A395178, there is no canonical definition to state claims against.
-/

/-! ## A395178.P3973389291053681969

`A000043(n+1)²`
-/

namespace A395178.P3973389291053681969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) ^ 2

end

end A395178.P3973389291053681969

/-! ## A395178.P1102628782417987795

`p?[A285929(n+1)]²`
-/

namespace A395178.P1102628782417987795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A395178.P1102628782417987795

/-! ## A395178.P12841240027743887755

`(A090748(n+1)+1)²`
-/

namespace A395178.P12841240027743887755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090748 (n + 1) + 1) ^ 2

end

end A395178.P12841240027743887755

/-! ## A395178.P3863459303813403028

`(1-A050475(n+1))²`
-/

namespace A395178.P3863459303813403028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A050475 (n + 1)) ^ 2

end

end A395178.P3863459303813403028

/-! ## A395178.P16493745502825260804

`(A153798(n+1)+2)²`
-/

namespace A395178.P16493745502825260804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153798 (n + 1) + 2) ^ 2

end

end A395178.P16493745502825260804

/-!
# A395179: Maximum number of runs in the binary expansion of integers obtained by changing a single 0-bit to 1 in the binary representation of n considering bits up to and including the first leading 0.

The programs for A395179, there is no canonical definition to state claims against.
-/

/-! ## A395179.P6677807679658010942

`A182321(A308695(n))`
-/

namespace A395179.P6677807679658010942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182321 (A308695 n).toNat

end

end A395179.P6677807679658010942

/-! ## A395179.P1539827468555614089

`A294081(A335587(n+1))`
-/

namespace A395179.P1539827468555614089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294081 (A335587 (n + 1)).toNat

end

end A395179.P1539827468555614089

/-! ## A395179.P12142328916057838018

`A245325(A245327(A052913(A245325(A063946(n+1)))))`
-/

namespace A395179.P12142328916057838018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A245327 (A052913 (A245325 (A063946 (n + 1)).toNat).toNat).toNat).toNat

end

end A395179.P12142328916057838018

/-! ## A395179.P11374499127710502200

`A206483(A093005(n+2))`
-/

namespace A395179.P11374499127710502200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A093005 (n + 2)).toNat

end

end A395179.P11374499127710502200

/-! ## A395179.P10260250662643214481

`A162642(A019565(2*(n+1))*A019565(n))`
-/

namespace A395179.P10260250662643214481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A019565 (2 * (n + 1)) * A019565 n).toNat

end

end A395179.P10260250662643214481

/-!
# A395181: Values taken by Jordan's totient function J_2, A007434.

The programs for A395181, there is no canonical definition to state claims against.
-/

/-! ## A395181.P9024389560339752218

`A000005(A086921(A061799(A002183(n+1))))`
-/

namespace A395181.P9024389560339752218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086921 (A061799 (A002183 (n + 1)).toNat).toNat).toNat

end

end A395181.P9024389560339752218

/-!
# A395184: Totals of the base-3 run-length transform of the Jacobsthal numbers.

The programs for A395184, the canonical program `A395184.P8852498894924238411` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395184 has offset 0).

The definition of A395184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395184.P8852498894924238411

`3*a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A395184

/-- `3*a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P8852498894924238411.Spec : Prop :=
  ∀ n, P8852498894924238411.a n = A395184 n

theorem P8852498894924238411.correct : P8852498894924238411.Spec := by
  intro n
  simp only [A395184]

end A395184

/-! ## A395184.P15510399910681333587

`ogf((1-8x^2)/(1-3x-8x^2+8x^3))`
-/

namespace A395184.P15510399910681333587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -8] [1, -3, -8, 8] n

end

end A395184.P15510399910681333587

namespace A395184

/-- `ogf((1-8x^2)/(1-3x-8x^2+8x^3))` -/
def P15510399910681333587.Spec : Prop :=
  ∀ n, P15510399910681333587.a n = A395184 n

end A395184

/-!
# A395185: A triangle read by rows: T(n,k) = T(n-1,k-1) * T(n-1,k) for n >= 3, 1 <= k <= n-1, with T(n,0) = T(n,n) = 1 and T(2,1) = 2.

The programs for A395185, there is no canonical definition to state claims against.
-/

/-! ## A395185.P13530672015457015008

`2^(A323211(n)-1)`
-/

namespace A395185.P13530672015457015008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A323211 n - 1 : ℤ)

end

end A395185.P13530672015457015008

/-! ## A395185.P14147300706368488889

`(2-char[∑[n]])^A144225(n+1)`
-/

namespace A395185.P14147300706368488889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A144225 (n + 1) : ℤ)

end

end A395185.P14147300706368488889

/-! ## A395185.P16784714852330918530

`A011782(A323211(n))`
-/

namespace A395185.P16784714852330918530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A323211 n).toNat

end

end A395185.P16784714852330918530

/-! ## A395185.P15467956564618926949

`A000079(A028262(n)-A007318(n))`
-/

namespace A395185.P15467956564618926949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A028262 n - A007318 n).toNat

end

end A395185.P15467956564618926949

/-! ## A395185.P17440534732292479793

`A000079(A028262(n)%A007318(n))`
-/

namespace A395185.P17440534732292479793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A028262 n) (A007318 n)).toNat

end

end A395185.P17440534732292479793

/-!
# A395186: a(n) is the number of pairwise incongruent triangles with distinct integer sides and positive integer area and longest side of length n.

The programs for A395186, there is no canonical definition to state claims against.
-/

/-! ## A395186.P16868831663227539879

`A236533(A215041(n+1))`
-/

namespace A395186.P16868831663227539879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236533 (A215041 (n + 1)).toNat

end

end A395186.P16868831663227539879

/-! ## A395186.P15981878968761803987

`A392705(A127264(n+1)-A082886(3*n+5))`
-/

namespace A395186.P15981878968761803987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (A127264 (n + 1) - A082886 (3 * n + 5)).toNat

end

end A395186.P15981878968761803987

/-! ## A395186.P1375433982418840549

`A373954(char[∏{p}[n, #]-1]*A375133(n))`
-/

namespace A395186.P1375433982418840549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A375133 n).toNat

end

end A395186.P1375433982418840549

/-! ## A395186.P8044602152425502188

`and(A048957(A106108(n+1)), A324938(n+2))`
-/

namespace A395186.P8044602152425502188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048957 (A106108 (n + 1)).toNat) (A324938 (n + 2))

end

end A395186.P8044602152425502188

/-! ## A395186.P7192426952825028224

`A046080(n+1)*A095684(A000203(3*n+2))`
-/

namespace A395186.P7192426952825028224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) * A095684 (A000203 (3 * n + 2)).toNat

end

end A395186.P7192426952825028224

/-!
# A395187: Number of unlabeled minimally 5-rigid graphs on n vertices.

The programs for A395187, there is no canonical definition to state claims against.
-/

/-! ## A395187.P6591735002437600329

`A183202(A026644(n))`
-/

namespace A395187.P6591735002437600329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183202 (A026644 n).toNat

end

end A395187.P6591735002437600329

/-!
# A395188: Triangular array T(n, k) read by rows: Row n > 0 gives the coefficient of x^k in the expansion of f_n(x) = Sum_{k=0..n} T(n, k)*x^k, where T(n, n) and T(0, n) = 1 for any n. The n-th falling diagonal has the ordinary generating function: 1/f_n(x).

The programs for A395188, there is no canonical definition to state claims against.
-/

/-! ## A395188.P1952567399783588922

`A395191(n)^3^n`
-/

namespace A395188.P1952567399783588922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395191 n ^ 3 ^ n

end

end A395188.P1952567399783588922

/-! ## A395188.P11194112982736598495

`A395191(n)%A002907(n)`
-/

namespace A395188.P11194112982736598495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395191 n) (A002907 n)

end

end A395188.P11194112982736598495

/-! ## A395188.P17952273930658274060

`A008683(C(A006512(n+1), A004198(n)))`
-/

namespace A395188.P17952273930658274060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (A006512 (n + 1)).toNat (A004198 n).toNat)

end

end A395188.P17952273930658274060

/-! ## A395188.P5122519772368320390

`A080891(A294950(n+1))`
-/

namespace A395188.P5122519772368320390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A294950 (n + 1)).toNat

end

end A395188.P5122519772368320390

/-!
# A395192: a(n) is the least k with the largest abundancy where k is a proper divisor of n.

The programs for A395192, there is no canonical definition to state claims against.
-/

/-! ## A395192.P13839718699716009157

`A049265(A396079(n+2))`
-/

namespace A395192.P13839718699716009157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049265 (A396079 (n + 2)).toNat

end

end A395192.P13839718699716009157

/-! ## A395192.P2784855759431924127

`A373352(A064279(n+2))`
-/

namespace A395192.P2784855759431924127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373352 (A064279 (n + 2)).toNat

end

end A395192.P2784855759431924127

/-! ## A395192.P11855010375282031674

`A001222(A263653(A328964(n+2)))`
-/

namespace A395192.P11855010375282031674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A263653 (A328964 (n + 2)).toNat).toNat

end

end A395192.P11855010375282031674

/-! ## A395192.P4711371073175653945

`gcd(n+2, A274986(n+1))`
-/

namespace A395192.P4711371073175653945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A274986 (n + 1))

end

end A395192.P4711371073175653945

/-! ## A395192.P14873496754872783897

`A346703(A264859(n+2))`
-/

namespace A395192.P14873496754872783897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (A264859 (n + 2)).toNat

end

end A395192.P14873496754872783897

/-!
# A395193: Area of the n-th convex polyiamond formed by winding spirals of incrementing strips of polyiamonds.

The programs for A395193, there is no canonical definition to state claims against.
-/

/-! ## A395193.P10200510645518370880

`∩[∑[n+1], A069813(n+3)]`
-/

namespace A395193.P10200510645518370880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A395193.P10200510645518370880

/-! ## A395193.P10148526340456189970

`∩[A069813(n+3), A000217(n)]`
-/

namespace A395193.P10148526340456189970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395193.P10148526340456189970

/-! ## A395193.P8968662929200284000

`∩[A069813(n+3), A109811(n+1)]`
-/

namespace A395193.P8968662929200284000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395193.P8968662929200284000

/-!
# A395194: Number of unlabeled minimally 3-rigid graphs on n vertices obtained from 0-extensions.

The programs for A395194, there is no canonical definition to state claims against.
-/

/-! ## A395194.P12093313167187200770

`A111854(A179420(n)+2)`
-/

namespace A395194.P12093313167187200770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (A179420 n + 2).toNat

end

end A395194.P12093313167187200770

/-! ## A395194.P9371319474225339402

`filter[A366592(2*n), A159637(#)]`
-/

namespace A395194.P9371319474225339402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366592 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159637 (f1 j).toNat = 1) n)

end

end A395194.P9371319474225339402

/-!
# A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

The programs for A395196, the canonical program `A395196.P17729750059770065000` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395196 has offset 1).

The definition of A395196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395196.P3775779716772652022

`(2*(n+1)^3+7*(n+1)-9-3*(-1)^(n+1))/3`
-/

namespace A395196.P3775779716772652022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 + 7 * (n + 1) : ℤ) - 9 - 3 * (-1) ^ (n + 1) : ℚ) / 3

end

end A395196.P3775779716772652022

namespace A395196

/-- `(2*(n+1)^3+7*(n+1)-9-3*(-1)^(n+1))/3` -/
def P3775779716772652022.Spec : Prop :=
  ∀ n, P3775779716772652022.a n = (A395196 (n + 1) : ℚ)

end A395196

/-! ## A395196.P17729750059770065000

`4*A110611(n+1)-2*(n+1)*(n+2)+n+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395196

/-- `4*A110611(n+1)-2*(n+1)*(n+2)+n+1` -/
def P17729750059770065000.Spec : Prop :=
  ∀ n, P17729750059770065000.a n = A395196 (n + 1)

theorem P17729750059770065000.correct : P17729750059770065000.Spec := by
  intro n
  simp only [A395196, Nat.add_sub_cancel]

end A395196

/-! ## A395196.P11171667205337858448

`A179783(n)+3*n`
-/

namespace A395196.P11171667205337858448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179783 n + (3 * n : ℤ)

end

end A395196.P11171667205337858448

namespace A395196

/-- `A179783(n)+3*n` -/
def P11171667205337858448.Spec : Prop :=
  ∀ n, P11171667205337858448.a n = A395196 (n + 1)

end A395196

/-! ## A395196.P13510369048053702611

`A210440(n)+A047239(n+1)`
-/

namespace A395196.P13510369048053702611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A047239 (n + 1)

end

end A395196.P13510369048053702611

namespace A395196

/-- `A210440(n)+A047239(n+1)` -/
def P13510369048053702611.Spec : Prop :=
  ∀ n, P13510369048053702611.a n = A395196 (n + 1)

end A395196

/-! ## A395196.P13996000803870939085

`A047667(n+1)-A010694(n)`
-/

namespace A395196.P13996000803870939085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047667 (n + 1) - A010694 n

end

end A395196.P13996000803870939085

namespace A395196

/-- `A047667(n+1)-A010694(n)` -/
def P13996000803870939085.Spec : Prop :=
  ∀ n, P13996000803870939085.a n = A395196 (n + 1)

end A395196

/-! ## A395196.P1926805446066202986

`A112524(n+1)-A248825(n)`
-/

namespace A395196.P1926805446066202986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112524 (n + 1) - A248825 n

end

end A395196.P1926805446066202986

namespace A395196

/-- `A112524(n+1)-A248825(n)` -/
def P1926805446066202986.Spec : Prop :=
  ∀ n, P1926805446066202986.a n = A395196 (n + 1)

end A395196

/-! ## A395196.P13347594901398145405

`A056640(n+1)+A008851(n+1)`
-/

namespace A395196.P13347594901398145405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056640 (n + 1) + A008851 (n + 1)

end

end A395196.P13347594901398145405

namespace A395196

/-- `A056640(n+1)+A008851(n+1)` -/
def P13347594901398145405.Spec : Prop :=
  ∀ n, P13347594901398145405.a n = A395196 (n + 1)

end A395196

/-! ## A395196.P7163323879969758734

`A394241(n+2)-2`
-/

namespace A395196.P7163323879969758734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394241 (n + 2) - 2

end

end A395196.P7163323879969758734

namespace A395196

/-- `A394241(n+2)-2` -/
def P7163323879969758734.Spec : Prop :=
  ∀ n, P7163323879969758734.a n = A395196 (n + 1)

end A395196

/-!
# A395197: Noncubefree powerful numbers divisible by more than 2 distinct primes.

The programs for A395197, there is no canonical definition to state claims against.
-/

/-! ## A395197.P5893194521528804190

`∩[A372404(n+1), A390950(n+1)]`
-/

namespace A395197.P5893194521528804190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P5893194521528804190

/-! ## A395197.P765487737969574500

`∩[A320966(n+1), A390950(n+1)]`
-/

namespace A395197.P765487737969574500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P765487737969574500

/-! ## A395197.P17987444849442810195

`∩[A318720(n+1), A320966(n+1)]`
-/

namespace A395197.P17987444849442810195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P17987444849442810195

/-! ## A395197.P8939182576849867287

`∩[A318720(n+1), A372404(n+1)]`
-/

namespace A395197.P8939182576849867287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P8939182576849867287

/-! ## A395197.P4724204931380486997

`∩[A389528(n+1), A390950(n+1)]`
-/

namespace A395197.P4724204931380486997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P4724204931380486997

/-! ## A395197.P13924259747307577929

`∩[A059172(n+1), A390950(n+1)]`
-/

namespace A395197.P13924259747307577929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P13924259747307577929

/-! ## A395197.P5479527896708334719

`∩[A320966(n+1), A378430(n+1)]`
-/

namespace A395197.P5479527896708334719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P5479527896708334719

/-! ## A395197.P9903110090188455540

`∩[A372404(n+1), A378430(n+1)]`
-/

namespace A395197.P9903110090188455540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395197.P9903110090188455540

/-! ## A395197.P497391310220774584

`filter[A390950(n+1), A380439(#)]`
-/

namespace A395197.P497391310220774584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A395197.P497391310220774584

/-!
# A395198: Numbers k such that 2*k +- 1 and 5*k +- 1 are twin prime pairs.

The programs for A395198, there is no canonical definition to state claims against.
-/

/-! ## A395198.P15758815059401918637

`∩[A040040(n+1), A153877(n+1)]`
-/

namespace A395198.P15758815059401918637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395198.P15758815059401918637

/-! ## A395198.P16593989107443333041

`∩[A153877(n+1), A168497(n+1)]`
-/

namespace A395198.P16593989107443333041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395198.P16593989107443333041

/-! ## A395198.P7605050961566399212

`∩[A153877(n+1), A241557(n+1)]`
-/

namespace A395198.P7605050961566399212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395198.P7605050961566399212

/-! ## A395198.P6475265648818480627

`∩[A153877(n+1), A272766(n+1)]`
-/

namespace A395198.P6475265648818480627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395198.P6475265648818480627

/-!
# A395199: Approximations up to 2^n for the 2-adic integer Product_{k>=1} (2^k-1)!!.

The programs for A395199, there is no canonical definition to state claims against.
-/

/-! ## A395199.P8358639515431480018

`∑[and(A115595(3*n+1), A131577(n))]`
-/

namespace A395199.P8358639515431480018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115595 (3 * n + 1)) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395199.P8358639515431480018

/-! ## A395199.P12999835386508047250

`A072639(A072660(n)+A056965(n))`
-/

namespace A395199.P12999835386508047250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072639 (A072660 n + A056965 n).toNat

end

end A395199.P12999835386508047250

/-! ## A395199.P12470331302590149585

`A072639(A072660(A072643(A072637(A296689(n)))))`
-/

namespace A395199.P12470331302590149585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072639 (A072660 (A072643 (A072637 (A296689 n).toNat).toNat).toNat).toNat

end

end A395199.P12470331302590149585

/-! ## A395199.P3783913304503220841

`A072639(A071673(n)^A228572(n))`
-/

namespace A395199.P3783913304503220841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072639 (SequenceMachineLib.roundAway ((A071673 n : ℚ) ^ (A228572 n : ℤ))).toNat

end

end A395199.P3783913304503220841

/-! ## A395199.P12758434408133524340

`A116059(A332762(n))%A000079(n)`
-/

namespace A395199.P12758434408133524340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116059 (A332762 n).toNat) (A000079 n)

end

end A395199.P12758434408133524340

