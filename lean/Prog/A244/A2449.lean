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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A244900: Number of length n 0..5 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244900, there is no canonical definition to state claims against.
-/

/-! ## A244900.P12936410074245401527

`A244903(A046691(n+3))`
-/

namespace A244900.P12936410074245401527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A046691 (n + 3)).toNat

end

end A244900.P12936410074245401527

/-! ## A244900.P3874415671343149876

`A244903(Δ[A023545(n+1)])`
-/

namespace A244900.P3874415671343149876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (f1 (n + 1) - f1 n).toNat

end

end A244900.P3874415671343149876

/-! ## A244900.P5355407443635063971

`A244903(A052905(n+2)+1)`
-/

namespace A244900.P5355407443635063971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 2) + 1).toNat

end

end A244900.P5355407443635063971

/-! ## A244900.P16563779028004241633

`A244903(A000217(n+5)-4)`
-/

namespace A244900.P16563779028004241633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (n + 5) - 4).toNat

end

end A244900.P16563779028004241633

/-! ## A244900.P8266454550527733393

`A244903(A000124(A020705(n))+n)`
-/

namespace A244900.P8266454550527733393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000124 (A020705 n).toNat + (n : ℤ)).toNat

end

end A244900.P8266454550527733393

/-!
# A244901: Number of length n 0..6 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244901, there is no canonical definition to state claims against.
-/

/-! ## A244901.P1286799597961916005

`A244903(A052905(n+3))`
-/

namespace A244901.P1286799597961916005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 3)).toNat

end

end A244901.P1286799597961916005

/-! ## A244901.P7761456645558394166

`A244903(A046691(n+4)-1)`
-/

namespace A244901.P7761456645558394166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A046691 (n + 4) - 1).toNat

end

end A244901.P7761456645558394166

/-! ## A244901.P13271501568951272665

`A244903(A000124(n+6)-6)`
-/

namespace A244901.P13271501568951272665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000124 (n + 6) - 6).toNat

end

end A244901.P13271501568951272665

/-! ## A244901.P9736684063384749975

`A244903(Δ[A023545(n+2)]-1)`
-/

namespace A244901.P9736684063384749975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (f1 (n + 1) - f1 n - 1).toNat

end

end A244901.P9736684063384749975

/-! ## A244901.P12653697496474735016

`A244903(A016957(n+2)+A000217(n))`
-/

namespace A244901.P12653697496474735016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A016957 (n + 2) + A000217 n).toNat

end

end A244901.P12653697496474735016

/-! ## A244901.P10856141507674804147

`A244903(A005843(n+3)+A000217(n+4))`
-/

namespace A244901.P10856141507674804147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A244901.P10856141507674804147

/-!
# A244902: Number of length n 0..7 arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244902, there is no canonical definition to state claims against.
-/

/-! ## A244902.P10182905825381577172

`A244903(A055999(n+4))`
-/

namespace A244902.P10182905825381577172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A055999 (n + 4)).toNat

end

end A244902.P10182905825381577172

/-! ## A244902.P6441089376745042524

`A244903(A052905(n+4)-1)`
-/

namespace A244902.P6441089376745042524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 4) - 1).toNat

end

end A244902.P6441089376745042524

/-! ## A244902.P7456009424403233634

`A244903(A046691(n+5)-2)`
-/

namespace A244902.P7456009424403233634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A046691 (n + 5) - 2).toNat

end

end A244902.P7456009424403233634

/-! ## A244902.P3863803707885824796

`A244903(A000124(n+7)-7)`
-/

namespace A244902.P3863803707885824796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000124 (n + 7) - 7).toNat

end

end A244902.P3863803707885824796

/-! ## A244902.P366619018324430485

`A244903(A167499(n)+A016957(n+2))`
-/

namespace A244902.P366619018324430485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167499 n + A016957 (n + 2)).toNat

end

end A244902.P366619018324430485

/-! ## A244902.P17056443722534968681

`A244903(A004273(n+4)+A000217(n+5))`
-/

namespace A244902.P17056443722534968681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A004273 (n + 4) + A000217 (n + 5)).toNat

end

end A244902.P17056443722534968681

/-! ## A244902.P12172556363011359884

`A244903(Δ[A052905(n+1)+A023545(n+2)])`
-/

namespace A244902.P12172556363011359884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (n + 1) + A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (f1 (n + 1) - f1 n).toNat

end

end A244902.P12172556363011359884

/-!
# A244904: Number of length 1 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244904, the canonical program `A244904.P15426718486549657250` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244904 has offset 1).

The definition of A244904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244904.P15426718486549657250

`A100795(Δ[A070333(n)])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A244904

/-- `A100795(Δ[A070333(n)])` -/
def P15426718486549657250.Spec : Prop :=
  ∀ n, P15426718486549657250.a n = A244904 (n + 1)

theorem P15426718486549657250.correct : P15426718486549657250.Spec := by
  intro n
  simp only [A244904, Nat.add_sub_cancel]

end A244904

/-! ## A244904.P8551403916538282416

`A100795(A008810(n+2))`
-/

namespace A244904.P8551403916538282416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A008810 (n + 2)).toNat

end

end A244904.P8551403916538282416

namespace A244904

/-- `A100795(A008810(n+2))` -/
def P8551403916538282416.Spec : Prop :=
  ∀ n, P8551403916538282416.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P10411729202289381381

`A100795(A032765(n+1)+1)`
-/

namespace A244904.P10411729202289381381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A032765 (n + 1) + 1).toNat

end

end A244904.P10411729202289381381

namespace A244904

/-- `A100795(A032765(n+1)+1)` -/
def P10411729202289381381.Spec : Prop :=
  ∀ n, P10411729202289381381.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P11392142821874538970

`A100795(A008806(Δ[A027692(n)]))`
-/

namespace A244904.P11392142821874538970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A008806 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244904.P11392142821874538970

namespace A244904

/-- `A100795(A008806(Δ[A027692(n)]))` -/
def P11392142821874538970.Spec : Prop :=
  ∀ n, P11392142821874538970.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P2393461027194773703

`A100795(∑[A008611(A051755(n+2))])`
-/

namespace A244904.P2393461027194773703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244904.P2393461027194773703

namespace A244904

/-- `A100795(∑[A008611(A051755(n+2))])` -/
def P2393461027194773703.Spec : Prop :=
  ∀ n, P2393461027194773703.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P284045481637161517

`A100795(A070333(n+1)-A070333(n))`
-/

namespace A244904.P284045481637161517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A070333 (n + 1) - A070333 n).toNat

end

end A244904.P284045481637161517

namespace A244904

/-- `A100795(A070333(n+1)-A070333(n))` -/
def P284045481637161517.Spec : Prop :=
  ∀ n, P284045481637161517.a n = A244904 (n + 1)

theorem P284045481637161517.correct : P284045481637161517.Spec := by
  intro n
  simp only [A244904, Nat.add_sub_cancel, A244904.P284045481637161517.a, A244904.P15426718486549657250.f1, A244904.P15426718486549657250.a, SequenceMachineLib.memo_apply]

end A244904

/-! ## A244904.P8083072390323294745

`A100795(A008806(2*n)+Δ[A008806(2*n)])`
-/

namespace A244904.P8083072390323294745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A008806 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A244904.P8083072390323294745

namespace A244904

/-- `A100795(A008806(2*n)+Δ[A008806(2*n)])` -/
def P8083072390323294745.Spec : Prop :=
  ∀ n, P8083072390323294745.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P11263336625932854214

`A100795(A001973(2*(n+1))-A001973(2*n+1))`
-/

namespace A244904.P11263336625932854214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A001973 (2 * (n + 1)) - A001973 (2 * n + 1)).toNat

end

end A244904.P11263336625932854214

namespace A244904

/-- `A100795(A001973(2*(n+1))-A001973(2*n+1))` -/
def P11263336625932854214.Spec : Prop :=
  ∀ n, P11263336625932854214.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P1016117348574430315

`A100795(A090701(n²+2+n)+n)`
-/

namespace A244904.P1016117348574430315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A090701 (n ^ 2 + 2 + n) + (n : ℤ)).toNat

end

end A244904.P1016117348574430315

namespace A244904

/-- `A100795(A090701(n²+2+n)+n)` -/
def P1016117348574430315.Spec : Prop :=
  ∀ n, P1016117348574430315.a n = A244904 (n + 1)

end A244904

/-! ## A244904.P14313414263633557842

`A256244(xor(3, A008822(n)))`
-/

namespace A244904.P14313414263633557842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256244 (Int.xor 3 (A008822 n)).toNat

end

end A244904.P14313414263633557842

namespace A244904

/-- `A256244(xor(3, A008822(n)))` -/
def P14313414263633557842.Spec : Prop :=
  ∀ n, P14313414263633557842.a n = A244904 (n + 1)

end A244904

/-!
# A244905: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244905, there is no canonical definition to state claims against.
-/

/-! ## A244905.P18393217473549977175

`A244903(∑[n+1]+2)`
-/

namespace A244905.P18393217473549977175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244905.P18393217473549977175

/-! ## A244905.P394837643023603810

`record[gcd(A122286(n), A244903(n+3))]`
-/

namespace A244905.P394837643023603810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122286 n) (A244903 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244905.P394837643023603810

/-! ## A244905.P12635629225108973054

`record[A244903(n+3)/A221499(n+1)]`
-/

namespace A244905.P12635629225108973054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244903 (n + 3) : ℚ) / (A221499 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244905.P12635629225108973054

/-! ## A244905.P16231954538354138234

`record[A244903(n+3)/A189507(n)]`
-/

namespace A244905.P16231954538354138234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244903 (n + 3) : ℚ) / (A189507 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244905.P16231954538354138234

/-!
# A244906: Number of length 3 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244906, there is no canonical definition to state claims against.
-/

/-! ## A244906.P4637421225917743272

`A244903(∑[n+2]+4)`
-/

namespace A244906.P4637421225917743272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244906.P4637421225917743272

/-! ## A244906.P15894868969750309057

`A244903(A167614(n+1))%A017138(n)`
-/

namespace A244906.P15894868969750309057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244903 (A167614 (n + 1)).toNat) (A017138 n)

end

end A244906.P15894868969750309057

/-! ## A244906.P15942475073722935111

`lcm(A131017(n), A244903(A167614(n+1)))`
-/

namespace A244906.P15942475073722935111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131017 n) (A244903 (A167614 (n + 1)).toNat)

end

end A244906.P15942475073722935111

/-! ## A244906.P2502728605273843581

`or(A000035(n), A244903(A167614(n+1)))`
-/

namespace A244906.P2502728605273843581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A244903 (A167614 (n + 1)).toNat)

end

end A244906.P2502728605273843581

/-! ## A244906.P14720846987507376240

`or(A000038(n), A244903(A167614(n+1)))`
-/

namespace A244906.P14720846987507376240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A244903 (A167614 (n + 1)).toNat)

end

end A244906.P14720846987507376240

/-! ## A244906.P14731929097366653687

`A160338(n+1)*A244903(A167614(n+1))`
-/

namespace A244906.P14731929097366653687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (n + 1) * A244903 (A167614 (n + 1)).toNat

end

end A244906.P14731929097366653687

/-!
# A244907: Number of length 4 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244907, there is no canonical definition to state claims against.
-/

/-! ## A244907.P3590329195416742437

`A244903(A052905(n)+9)`
-/

namespace A244907.P3590329195416742437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 n + 9).toNat

end

end A244907.P3590329195416742437

/-! ## A244907.P225930847162718246

`A244903(A055999(n)+10)`
-/

namespace A244907.P225930847162718246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A055999 n + 10).toNat

end

end A244907.P225930847162718246

/-! ## A244907.P3384650936689554439

`A244903(A167614(n+2)+1)`
-/

namespace A244907.P3384650936689554439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 2) + 1).toNat

end

end A244907.P3384650936689554439

/-! ## A244907.P17264181346888930422

`A244903(A166136(n+2)-2)`
-/

namespace A244907.P17264181346888930422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A166136 (n + 2) - 2).toNat

end

end A244907.P17264181346888930422

/-! ## A244907.P10235062689603866152

`A244903(A167487(n+2)-3)`
-/

namespace A244907.P10235062689603866152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167487 (n + 2) - 3).toNat

end

end A244907.P10235062689603866152

/-! ## A244907.P14583960630370542730

`A244903(A166136(n+1)+1+n)`
-/

namespace A244907.P14583960630370542730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A244907.P14583960630370542730

/-! ## A244907.P12614665246993280828

`A244903(Δ[A023545(n+1)-n²])`
-/

namespace A244907.P12614665246993280828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (f1 (n + 1) - f1 n).toNat

end

end A244907.P12614665246993280828

/-! ## A244907.P12525341770586711957

`A244903(lt[A244903(n+1), A080513(n)]-n)`
-/

namespace A244907.P12525341770586711957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - n)

end

end A244907.P12525341770586711957

/-!
# A244908: Number of length 5 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244908, there is no canonical definition to state claims against.
-/

/-! ## A244908.P16116223289520148603

`A244903(A167499(n+3))`
-/

namespace A244908.P16116223289520148603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167499 (n + 3)).toNat

end

end A244908.P16116223289520148603

/-! ## A244908.P17566008404575477022

`A244903(A167614(n+3)+2)`
-/

namespace A244908.P17566008404575477022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167614 (n + 3) + 2).toNat

end

end A244908.P17566008404575477022

/-! ## A244908.P9373332314844756525

`A244903(A000124(n+4)+4)`
-/

namespace A244908.P9373332314844756525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000124 (n + 4) + 4).toNat

end

end A244908.P9373332314844756525

/-! ## A244908.P12570684405033704543

`A244903(A000217(n+4)+5)`
-/

namespace A244908.P12570684405033704543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (n + 4) + 5).toNat

end

end A244908.P12570684405033704543

/-! ## A244908.P8957112993071908351

`A244903(A161680(n+5)+5)`
-/

namespace A244908.P8957112993071908351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A161680 (n + 5) + 5).toNat

end

end A244908.P8957112993071908351

/-! ## A244908.P8616553049153735477

`A244903(A052905(n+1)+10)`
-/

namespace A244908.P8616553049153735477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 1) + 10).toNat

end

end A244908.P8616553049153735477

/-! ## A244908.P12125544685328733709

`A244903(A038722(Δ[A023545(n+1)]))`
-/

namespace A244908.P12125544685328733709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244908.P12125544685328733709

/-!
# A244909: Number of length 6 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244909, there is no canonical definition to state claims against.
-/

/-! ## A244909.P14776231816562020236

`A244903(A166136(n+4))`
-/

namespace A244909.P14776231816562020236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A166136 (n + 4)).toNat

end

end A244909.P14776231816562020236

/-! ## A244909.P10313250417404864992

`A244903(A167499(n+4)+1)`
-/

namespace A244909.P10313250417404864992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167499 (n + 4) + 1).toNat

end

end A244909.P10313250417404864992

/-! ## A244909.P6380545610969302354

`A244903(A000217(n+5)+6)`
-/

namespace A244909.P6380545610969302354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (n + 5) + 6).toNat

end

end A244909.P6380545610969302354

/-! ## A244909.P14653186831325802200

`A244903(A161680(n+6)+6)`
-/

namespace A244909.P14653186831325802200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A161680 (n + 6) + 6).toNat

end

end A244909.P14653186831325802200

/-! ## A244909.P10151232770130552148

`A244903(A052905(n+1)+n+16)`
-/

namespace A244909.P10151232770130552148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A052905 (n + 1) + (n + 16 : ℤ)).toNat

end

end A244909.P10151232770130552148

/-!
# A244910: Number of length 7 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

The programs for A244910, there is no canonical definition to state claims against.
-/

/-! ## A244910.P7039335137583087803

`A244903(A167499(n+5)+2)`
-/

namespace A244910.P7039335137583087803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A167499 (n + 5) + 2).toNat

end

end A244910.P7039335137583087803

/-! ## A244910.P6550423432475735965

`A244903(A000124(n+6)+6)`
-/

namespace A244910.P6550423432475735965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000124 (n + 6) + 6).toNat

end

end A244910.P6550423432475735965

/-! ## A244910.P15330105869414194142

`A244903(A000096(n+5)+8)`
-/

namespace A244910.P15330105869414194142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000096 (n + 5) + 8).toNat

end

end A244910.P15330105869414194142

/-! ## A244910.P3776272407436267427

`A244903(A000217(n+6)+7)`
-/

namespace A244910.P3776272407436267427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A000217 (n + 6) + 7).toNat

end

end A244910.P3776272407436267427

/-! ## A244910.P4268713492046446573

`A244903(A161680(n+7)+7)`
-/

namespace A244910.P4268713492046446573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244903 (A161680 (n + 7) + 7).toNat

end

end A244910.P4268713492046446573

/-!
# A244911: Table read by antidiagonals: T(n,k) = n*k + T(n-1,k) for n >=1, T(0,k) = 1.

The programs for A244911, the canonical program `A244911.P2421789843677533910` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244911 has offset 0).

The definition of A244911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244911.P514306183280241617

`1+(row(n)-col(n))*C(col(n)+1, 2)`
-/

namespace A244911.P514306183280241617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ)

end

end A244911.P514306183280241617

namespace A244911

/-- `1+(row(n)-col(n))*C(col(n)+1, 2)` -/
def P514306183280241617.Spec : Prop :=
  ∀ n, P514306183280241617.a n = A244911 n

end A244911

/-! ## A244911.P16457509398308237146

`(col(n)-row(n))*(T(n-1,k-1)-(T(n,k-1)+col(n)))+1` with `a(0)=1`
-/

namespace A244911.P16457509398308237146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triLeft a n + (SequenceMachineLib.triCol n : ℤ))) + 1

end

end A244911.P16457509398308237146

namespace A244911

/-- `(col(n)-row(n))*(T(n-1,k-1)-(T(n,k-1)+col(n)))+1` -/
def P16457509398308237146.Spec : Prop :=
  ∀ n, P16457509398308237146.a n = A244911 n

end A244911

/-! ## A244911.P6630526249543948338

`(col(n)-row(n))*(T(n-2,k-1)-(T(n-1,k-1)+col(n)))+1` with `a(0)=1`
-/

namespace A244911.P6630526249543948338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ))) + 1

end

end A244911.P6630526249543948338

namespace A244911

/-- `(col(n)-row(n))*(T(n-2,k-1)-(T(n-1,k-1)+col(n)))+1` -/
def P6630526249543948338.Spec : Prop :=
  ∀ n, P6630526249543948338.a n = A244911 n

end A244911

/-! ## A244911.P9890342234375556161

`1+(row(n)-col(n))*col(n)*(col(n)+1)/2`
-/

namespace A244911.P9890342234375556161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 2

end

end A244911.P9890342234375556161

namespace A244911

/-- `1+(row(n)-col(n))*col(n)*(col(n)+1)/2` -/
def P9890342234375556161.Spec : Prop :=
  ∀ n, P9890342234375556161.a n = (A244911 n : ℚ)

end A244911

/-! ## A244911.P16763147108503454073

`A057145(n+2)-col(n)`
-/

namespace A244911.P16763147108503454073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - (SequenceMachineLib.triCol n : ℤ)

end

end A244911.P16763147108503454073

namespace A244911

/-- `A057145(n+2)-col(n)` -/
def P16763147108503454073.Spec : Prop :=
  ∀ n, P16763147108503454073.a n = A244911 n

end A244911

/-! ## A244911.P2421789843677533910

`A057145(n+2)-A002262(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244911

/-- `A057145(n+2)-A002262(n)` -/
def P2421789843677533910.Spec : Prop :=
  ∀ n, P2421789843677533910.a n = A244911 n

theorem P2421789843677533910.correct : P2421789843677533910.Spec := by
  intro n
  simp only [A244911]

end A244911

/-! ## A244911.P8807597832882670490

`A025581(n)*A112367(n)+1`
-/

namespace A244911.P8807597832882670490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A112367 n + 1

end

end A244911.P8807597832882670490

namespace A244911

/-- `A025581(n)*A112367(n)+1` -/
def P8807597832882670490.Spec : Prop :=
  ∀ n, P8807597832882670490.a n = A244911 n

end A244911

/-! ## A244911.P11770165002384963682

`A057145(n+2)+A057944(n)-n`
-/

namespace A244911.P11770165002384963682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (A057944 n - (n : ℤ))

end

end A244911.P11770165002384963682

namespace A244911

/-- `A057145(n+2)+A057944(n)-n` -/
def P11770165002384963682.Spec : Prop :=
  ∀ n, P11770165002384963682.a n = A244911 n

end A244911

/-! ## A244911.P11187217035675358517

`A057145(n+2)+1-A002260(n+1)`
-/

namespace A244911.P11187217035675358517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (1 - A002260 (n + 1))

end

end A244911.P11187217035675358517

namespace A244911

/-- `A057145(n+2)+1-A002260(n+1)` -/
def P11187217035675358517.Spec : Prop :=
  ∀ n, P11187217035675358517.a n = A244911 n

theorem P11187217035675358517.correct : P11187217035675358517.Spec := by
  intro n
  simp only [A244911, Nat.add_sub_cancel, A244911.P11187217035675358517.a, A244911.P2421789843677533910.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A057145, A057145.P9043819964988924881.a, A000217, A000217.P10269402890581615239.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244911

/-! ## A244911.P1738368135325791101

`A077028(n)+A062707(A056943(n))`
-/

namespace A244911.P1738368135325791101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A062707 (A056943 n).toNat

end

end A244911.P1738368135325791101

namespace A244911

/-- `A077028(n)+A062707(A056943(n))` -/
def P1738368135325791101.Spec : Prop :=
  ∀ n, P1738368135325791101.a n = A244911 n

end A244911

/-! ## A244911.P14073735967650046953

`A077028(n)+A139600(n)-A002262(n)`
-/

namespace A244911.P14073735967650046953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A139600 n - A002262 n)

end

end A244911.P14073735967650046953

namespace A244911

/-- `A077028(n)+A139600(n)-A002262(n)` -/
def P14073735967650046953.Spec : Prop :=
  ∀ n, P14073735967650046953.a n = A244911 n

end A244911

/-! ## A244911.P11202195956167942604

`A101321(∑[2*n]%comp[∑[n]])`
-/

namespace A244911.P11202195956167942604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A244911.P11202195956167942604

namespace A244911

/-- `A101321(∑[2*n]%comp[∑[n]])` -/
def P11202195956167942604.Spec : Prop :=
  ∀ n, P11202195956167942604.a n = A244911 n

end A244911

/-! ## A244911.P19183359143021154

`A101321(∑[char[∑[n]]]²-(n+1))`
-/

namespace A244911.P19183359143021154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A244911.P19183359143021154

namespace A244911

/-- `A101321(∑[char[∑[n]]]²-(n+1))` -/
def P19183359143021154.Spec : Prop :=
  ∀ n, P19183359143021154.a n = A244911 n

end A244911

/-! ## A244911.P2950507736010468564

`A062707(∑[char[∑[n]]]²-n-1)+1`
-/

namespace A244911.P2950507736010468564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat + 1

end

end A244911.P2950507736010468564

namespace A244911

/-- `A062707(∑[char[∑[n]]]²-n-1)+1` -/
def P2950507736010468564.Spec : Prop :=
  ∀ n, P2950507736010468564.a n = A244911 n

end A244911

/-! ## A244911.P14285402202617017189

`A139600(comp[∑[n]])-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A244911.P14285402202617017189
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

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A244911.P14285402202617017189

namespace A244911

/-- `A139600(comp[∑[n]])-(n-C(∑[char[∑[n]]], 2))` -/
def P14285402202617017189.Spec : Prop :=
  ∀ n, P14285402202617017189.a n = A244911 n

end A244911

/-! ## A244911.P5963666510097545532

`A139600(comp[∑[n]])-A002262(n)`
-/

namespace A244911.P5963666510097545532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A002262 n

end

end A244911.P5963666510097545532

namespace A244911

/-- `A139600(comp[∑[n]])-A002262(n)` -/
def P5963666510097545532.Spec : Prop :=
  ∀ n, P5963666510097545532.a n = A244911 n

end A244911

/-! ## A244911.P18158914251052285945

`A008619((n-C(∑[char[∑[n]]], 2))*∑[∑[char[∑[n]]]²]%(n+1))`
-/

namespace A244911.P18158914251052285945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ)).toNat

end

end A244911.P18158914251052285945

namespace A244911

/-- `A008619((n-C(∑[char[∑[n]]], 2))*∑[∑[char[∑[n]]]²]%(n+1))` -/
def P18158914251052285945.Spec : Prop :=
  ∀ n, P18158914251052285945.a n = A244911 n

end A244911

/-! ## A244911.P1721333505687278199

`A057145(n+2)-A001222(A059268(n))`
-/

namespace A244911.P1721333505687278199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A001222 (A059268 n).toNat

end

end A244911.P1721333505687278199

namespace A244911

/-- `A057145(n+2)-A001222(A059268(n))` -/
def P1721333505687278199.Spec : Prop :=
  ∀ n, P1721333505687278199.a n = A244911 n

end A244911

/-!
# A244912: Sum of leading digits in representations of n in bases 2,3,...,n.

The programs for A244912, there is no canonical definition to state claims against.
-/

/-! ## A244912.P17646616028665961657

`A101905(2*(n+1))-A001221(A240260(2*n+1))`
-/

namespace A244912.P17646616028665961657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101905 (2 * (n + 1)) - A001221 (A240260 (2 * n + 1)).toNat

end

end A244912.P17646616028665961657

/-! ## A244912.P5613849219635805537

`A026819(A035485(n)+∑[A077168(n)])`
-/

namespace A244912.P5613849219635805537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A035485 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244912.P5613849219635805537

/-! ## A244912.P13646809310302673520

`A333764(n+1)+A124761(A008637(n))`
-/

namespace A244912.P13646809310302673520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (n + 1) + A124761 (A008637 n).toNat

end

end A244912.P13646809310302673520

/-! ## A244912.P9464058857794464662

`A316413(n+1)-A011655(A209888(n))`
-/

namespace A244912.P9464058857794464662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1) - A011655 (A209888 n).toNat

end

end A244912.P9464058857794464662

/-! ## A244912.P2374807551101404419

`A356930(n+1)+A060838(A320574(n+1))`
-/

namespace A244912.P2374807551101404419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356930 (n + 1) + A060838 (A320574 (n + 1)).toNat

end

end A244912.P2374807551101404419

/-!
# A244916: Primes prime(k) such that 2^(k+1) + prime(k) is also prime.

The programs for A244916, there is no canonical definition to state claims against.
-/

/-! ## A244916.P4622916295929242875

`p?[A145311(n+1)-14]`
-/

namespace A244916.P4622916295929242875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145311 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244916.P4622916295929242875

/-!
# A244917: Smallest prime p such that p - 2^e is also prime in exactly n cases for nonnegative integers e.

The programs for A244917, there is no canonical definition to state claims against.
-/

/-! ## A244917.P1127443565234639805

`A097224(A009860(n))`
-/

namespace A244917.P1127443565234639805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097224 (A009860 n).toNat

end

end A244917.P1127443565234639805

/-! ## A244917.P12160320964755645936

`p?[A048334(n)+A048275(n+2)]`
-/

namespace A244917.P12160320964755645936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048334 n + A048275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244917.P12160320964755645936

/-!
# A244923: Numbers n such that the digit sum of Fibonacci(n) is equal to the digit sum of Lucas(n).

The programs for A244923, there is no canonical definition to state claims against.
-/

/-! ## A244923.P4977375050323628142

`eq[A004090(n), A139374(n)]`
-/

namespace A244923.P4977375050323628142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244923.P4977375050323628142

/-! ## A244923.P627451834899151549

`∩[2*n+1, A111366(n+1)]`
-/

namespace A244923.P627451834899151549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244923.P627451834899151549

/-! ## A244923.P11267884627257530360

`record[A009001(A111366(n+1))]`
-/

namespace A244923.P11267884627257530360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A111366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244923.P11267884627257530360

/-! ## A244923.P10788866560185710847

`record[A093178(A111366(n+2))]`
-/

namespace A244923.P10788866560185710847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A111366 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244923.P10788866560185710847

/-! ## A244923.P1250446490764090070

`filter[A111366(n+1), A000035(#)]`
-/

namespace A244923.P1250446490764090070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A244923.P1250446490764090070

/-!
# A244925: Number T(n,k) of n-node unlabeled rooted trees with every leaf at height k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A244925, there is no canonical definition to state claims against.
-/

/-! ## A244925.P4534311314027677993

`A072233(A180683(n+1))+A001222(7^A319453(n))`
-/

namespace A244925.P4534311314027677993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A180683 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A319453 n : ℤ))).toNat

end

end A244925.P4534311314027677993

/-! ## A244925.P1110099432468861808

`A073287(or(A068914(n), A151811(n)))`
-/

namespace A244925.P1110099432468861808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (Int.lor (A068914 n) (A151811 n)).toNat

end

end A244925.P1110099432468861808

/-! ## A244925.P13468866694021328815

`A073289(or(A068914(n), A151811(n)))`
-/

namespace A244925.P13468866694021328815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073289 (Int.lor (A068914 n) (A151811 n)).toNat

end

end A244925.P13468866694021328815

/-! ## A244925.P15372263512487647696

`A131173(or(A068914(n), A151811(n)))`
-/

namespace A244925.P15372263512487647696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131173 (Int.lor (A068914 n) (A151811 n)).toNat

end

end A244925.P15372263512487647696

/-! ## A244925.P17592918989292072933

`A303789(or(A068914(n), A151811(n)))`
-/

namespace A244925.P17592918989292072933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (Int.lor (A068914 n) (A151811 n)).toNat

end

end A244925.P17592918989292072933

/-!
# A244926: Numbers m such that there is an integer k with the property that antisigma(m) = k * sigma(m) + k.

The programs for A244926, there is no canonical definition to state claims against.
-/

/-! ## A244926.P12059800424993242259

`record[A118679(2*n+1)*A118679(A028310(2*n))]`
-/

namespace A244926.P12059800424993242259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118679 (2 * n + 1) * A118679 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244926.P12059800424993242259

/-!
# A244927: Least positive number k such that k*n written in base 10 is either a repunit or of the form 1111....0000.

The programs for A244927, there is no canonical definition to state claims against.
-/

/-! ## A244927.P6520987966935246629

`A244859(n+1)/(n+1)`
-/

namespace A244927.P6520987966935246629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244859 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A244927.P6520987966935246629

/-! ## A244927.P12302302466634457111

`gcd(A190301(n+1), A276348(n+1))`
-/

namespace A244927.P12302302466634457111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190301 (n + 1)) (A276348 (n + 1))

end

end A244927.P12302302466634457111

/-! ## A244927.P12514762048209012169

`gcd(A052983(n+1)/(n+1), A002275(A084681(n+1)))`
-/

namespace A244927.P12514762048209012169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A052983 (n + 1) : ℚ) / (n + 1 : ℚ))) (A002275 (A084681 (n + 1)).toNat)

end

end A244927.P12514762048209012169

/-! ## A244927.P14947363095151945625

`gcd(A244859(n+1), A276348(A328617(n+1)))`
-/

namespace A244927.P14947363095151945625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244859 (n + 1)) (A276348 (A328617 (n + 1)).toNat)

end

end A244927.P14947363095151945625

/-! ## A244927.P2101383269506460969

`gcd(A007088(A306544(n+1))/(n+1), A190301(n+1)²)`
-/

namespace A244927.P2101383269506460969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A007088 (A306544 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))) (A190301 (n + 1) ^ 2)

end

end A244927.P2101383269506460969

/-!
# A244931: Prime terms in A214831.

The programs for A244931, there is no canonical definition to state claims against.
-/

/-! ## A244931.P4778058051702749613

`A214831(A244930(n+1))`
-/

namespace A244931.P4778058051702749613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 (A244930 (n + 1)).toNat

end

end A244931.P4778058051702749613

/-!
# A244933: Number of length n 0..1 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244933, there is no canonical definition to state claims against.
-/

/-! ## A244933.P16709735159486149303

`A244940(∑[n+1])`
-/

namespace A244933.P16709735159486149303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244933.P16709735159486149303

/-! ## A244933.P3705280127736925782

`record[root(A244940(n+1), A140303(n))]`
-/

namespace A244933.P3705280127736925782
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244940 (n + 1) : ℝ) ^ (1 / (A140303 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P3705280127736925782

/-! ## A244933.P9807859542527432522

`record[gcd(A025581(n), A244940(n+1))]`
-/

namespace A244933.P9807859542527432522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A244940 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P9807859542527432522

/-! ## A244933.P8297525458134092090

`record[A244940(A000217(A003963(n+1)))]`
-/

namespace A244933.P8297525458134092090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P8297525458134092090

/-! ## A244933.P16149207300162869369

`record[A244940(A057944(A039649(n+1)))]`
-/

namespace A244933.P16149207300162869369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A057944 (A039649 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P16149207300162869369

/-! ## A244933.P15528009703579606353

`record[A244940(A057944(A075362(n+1)))]`
-/

namespace A244933.P15528009703579606353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A057944 (A075362 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P15528009703579606353

/-! ## A244933.P17143469440832611371

`record[(2-A004736(n+1))*A244940(n+1)]`
-/

namespace A244933.P17143469440832611371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A244940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244933.P17143469440832611371

/-!
# A244934: Number of length n 0..2 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244934, there is no canonical definition to state claims against.
-/

/-! ## A244934.P5142461577610978029

`A244940(∑[n+2])`
-/

namespace A244934.P5142461577610978029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244934.P5142461577610978029

/-! ## A244934.P17374004729684377238

`record[A244940(A000096(A274640(n)))]`
-/

namespace A244934.P17374004729684377238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244934.P17374004729684377238

/-! ## A244934.P3207909374404483022

`record[A244940(A000096(A002260(n+1)))]`
-/

namespace A244934.P3207909374404483022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244934.P3207909374404483022

/-! ## A244934.P10155152129450418590

`record[A244940(A000096(A004736(n+1)))]`
-/

namespace A244934.P10155152129450418590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244934.P10155152129450418590

/-! ## A244934.P12066192406446908218

`record[A244940(A000096(A245717(n+1)))]`
-/

namespace A244934.P12066192406446908218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 (A245717 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244934.P12066192406446908218

/-!
# A244935: Number of length n 0..3 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244935, there is no canonical definition to state claims against.
-/

/-! ## A244935.P2243895926828580953

`A244940(∑[n+3]+1)`
-/

namespace A244935.P2243895926828580953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244935.P2243895926828580953

/-! ## A244935.P7777055680763148336

`lcm(2, A244940(A034856(n+2)))`
-/

namespace A244935.P7777055680763148336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A244940 (A034856 (n + 2)).toNat)

end

end A244935.P7777055680763148336

/-! ## A244935.P9662210735057053598

`record[A244940(A008795(n)+3+n)]`
-/

namespace A244935.P9662210735057053598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A008795 n + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244935.P9662210735057053598

/-! ## A244935.P564743862153984241

`A244940(A034856(n+2))%A224466(n)`
-/

namespace A244935.P564743862153984241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244940 (A034856 (n + 2)).toNat) (A224466 n)

end

end A244935.P564743862153984241

/-! ## A244935.P4344627090838620609

`A241926(A000124(n))*A244940(A034856(n+2))`
-/

namespace A244935.P4344627090838620609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (A000124 n).toNat * A244940 (A034856 (n + 2)).toNat

end

end A244935.P4344627090838620609

/-!
# A244936: Number of length n 0..4 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244936, there is no canonical definition to state claims against.
-/

/-! ## A244936.P3858820668764565333

`A244940(A055998(n+2))`
-/

namespace A244936.P3858820668764565333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A055998 (n + 2)).toNat

end

end A244936.P3858820668764565333

/-! ## A244936.P7393024653875108845

`A244940(A056000(n)+7)`
-/

namespace A244936.P7393024653875108845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A056000 n + 7).toNat

end

end A244936.P7393024653875108845

/-! ## A244936.P11198246363844335317

`A244940(Δ[A006503(n+1)])`
-/

namespace A244936.P11198246363844335317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n).toNat

end

end A244936.P11198246363844335317

/-! ## A244936.P9622527036580905223

`A244940(A052905(n+1)+2)`
-/

namespace A244936.P9622527036580905223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A052905 (n + 1) + 2).toNat

end

end A244936.P9622527036580905223

/-! ## A244936.P15599331829253387548

`A244940(A055999(n+1)+3)`
-/

namespace A244936.P15599331829253387548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A055999 (n + 1) + 3).toNat

end

end A244936.P15599331829253387548

/-! ## A244936.P712610179578154162

`A244940(A167614(n+1)+Δ[n²])`
-/

namespace A244936.P712610179578154162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A244936.P712610179578154162

/-! ## A244936.P2374356211409618813

`A244940(A167499(n)+A016777(n))`
-/

namespace A244936.P2374356211409618813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167499 n + A016777 n).toNat

end

end A244936.P2374356211409618813

/-! ## A244936.P8901562851550919460

`A244940(A167614(n+1)+A005843(n)+1)`
-/

namespace A244936.P8901562851550919460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167614 (n + 1) + A005843 n + 1).toNat

end

end A244936.P8901562851550919460

/-! ## A244936.P16187335780403193264

`A244940(A317439(n+1)+A167614(n+1))`
-/

namespace A244936.P16187335780403193264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A317439 (n + 1) + A167614 (n + 1)).toNat

end

end A244936.P16187335780403193264

/-!
# A244937: Number of length n 0..5 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244937, there is no canonical definition to state claims against.
-/

/-! ## A244937.P13713367792875074273

`A244940(Δ[A264443(n)])`
-/

namespace A244937.P13713367792875074273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n).toNat

end

end A244937.P13713367792875074273

/-! ## A244937.P3433953657281353016

`A244940(A046691(n+3))`
-/

namespace A244937.P3433953657281353016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A046691 (n + 3)).toNat

end

end A244937.P3433953657281353016

/-! ## A244937.P16836780523751542221

`A244940(A060577(n+4))`
-/

namespace A244937.P16836780523751542221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A060577 (n + 4)).toNat

end

end A244937.P16836780523751542221

/-! ## A244937.P98792370315191356

`A244940(A056115(n)+11)`
-/

namespace A244937.P98792370315191356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A056115 n + 11).toNat

end

end A244937.P98792370315191356

/-! ## A244937.P6128378663113515104

`A244940(Δ[A023545(n+1)])`
-/

namespace A244937.P6128378663113515104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n).toNat

end

end A244937.P6128378663113515104

/-! ## A244937.P17686895196206091919

`A244940(A052905(n+2)+1)`
-/

namespace A244937.P17686895196206091919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A052905 (n + 2) + 1).toNat

end

end A244937.P17686895196206091919

/-! ## A244937.P6921019353825783683

`A244940(A055999(n+2)+2)`
-/

namespace A244937.P6921019353825783683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A055999 (n + 2) + 2).toNat

end

end A244937.P6921019353825783683

/-! ## A244937.P5585942822273018886

`A244940(A056000(n+1)+6)`
-/

namespace A244937.P5585942822273018886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A056000 (n + 1) + 6).toNat

end

end A244937.P5585942822273018886

/-! ## A244937.P12403865814269780042

`A244940(A000217(n+5)-4)`
-/

namespace A244937.P12403865814269780042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (n + 5) - 4).toNat

end

end A244937.P12403865814269780042

/-! ## A244937.P8711134319383366101

`A244940(A000124(n+5)-5)`
-/

namespace A244937.P8711134319383366101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 5) - 5).toNat

end

end A244937.P8711134319383366101

/-!
# A244938: Number of length n 0..6 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244938, there is no canonical definition to state claims against.
-/

/-! ## A244938.P16074768220366012853

`A244940(A052905(n+3))`
-/

namespace A244938.P16074768220366012853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A052905 (n + 3)).toNat

end

end A244938.P16074768220366012853

/-! ## A244938.P12311457194405055852

`A244940(eq[3, A219347(n)])`
-/

namespace A244938.P12311457194405055852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244938.P12311457194405055852

/-! ## A244938.P8581700088672761425

`A244940(A056000(n+2)+5)`
-/

namespace A244938.P8581700088672761425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A056000 (n + 2) + 5).toNat

end

end A244938.P8581700088672761425

/-! ## A244938.P13438030103550714734

`A244940(A000096(n+5)-4)`
-/

namespace A244938.P13438030103550714734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 (n + 5) - 4).toNat

end

end A244938.P13438030103550714734

/-! ## A244938.P797581871894485381

`A244940(A000124(n+6)-6)`
-/

namespace A244938.P797581871894485381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 6) - 6).toNat

end

end A244938.P797581871894485381

/-! ## A244938.P11272518285810852567

`A244940(A134869(n+6)-6)`
-/

namespace A244938.P11272518285810852567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A134869 (n + 6) - 6).toNat

end

end A244938.P11272518285810852567

/-! ## A244938.P11615681274696033

`A244940(A167499(n+5)-10)`
-/

namespace A244938.P11615681274696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167499 (n + 5) - 10).toNat

end

end A244938.P11615681274696033

/-! ## A244938.P6954893180707065607

`A244940(Δ[Δ[A006504(n+1)]])`
-/

namespace A244938.P6954893180707065607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n).toNat

end

end A244938.P6954893180707065607

/-! ## A244938.P15886329680331869557

`A244940(Δ[A023545(n+2)]-1)`
-/

namespace A244938.P15886329680331869557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n - 1).toNat

end

end A244938.P15886329680331869557

/-!
# A244939: Number of length n 0..7 arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244939, there is no canonical definition to state claims against.
-/

/-! ## A244939.P2798287291121488462

`A244940(A055999(n+4))`
-/

namespace A244939.P2798287291121488462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A055999 (n + 4)).toNat

end

end A244939.P2798287291121488462

/-! ## A244939.P4406764976922314692

`A244940(eq[4, A219347(n)])`
-/

namespace A244939.P4406764976922314692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244939.P4406764976922314692

/-! ## A244939.P11387379918082037667

`A244940(A000217(n+7)-6)`
-/

namespace A244939.P11387379918082037667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (n + 7) - 6).toNat

end

end A244939.P11387379918082037667

/-! ## A244939.P9071862682172798793

`A244940(A000124(n+7)-7)`
-/

namespace A244939.P9071862682172798793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 7) - 7).toNat

end

end A244939.P9071862682172798793

/-! ## A244939.P16590356187540365625

`A244940(Δ[A000125(n+6)]+n)`
-/

namespace A244939.P16590356187540365625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A244939.P16590356187540365625

/-! ## A244939.P3257961841554635831

`A244940(A161680(n+7)+n+1)`
-/

namespace A244939.P3257961841554635831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A244939.P3257961841554635831

/-!
# A244940: T(n,k)=Number of length n 0..k arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244940, there is no canonical definition to state claims against.
-/

/-! ## A244940.P17300357112118365271

`A118765(A223949(n+1))`
-/

namespace A244940.P17300357112118365271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A223949 (n + 1)).toNat

end

end A244940.P17300357112118365271

/-! ## A244940.P6209991837275674124

`A269494(n+1)-A350139(A174450(n))`
-/

namespace A244940.P6209991837275674124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) - A350139 (A174450 n).toNat

end

end A244940.P6209991837275674124

/-! ## A244940.P15428549123018999057

`A269583(n+1)-A143540(A144696(n+2))`
-/

namespace A244940.P15428549123018999057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (n + 1) - A143540 (A144696 (n + 2)).toNat

end

end A244940.P15428549123018999057

/-!
# A244941: Number of length 2 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244941, the canonical program `A244941.P15006314446011111513` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244941 has offset 1).

The definition of A244941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244941.P161348598786354787

`∑[A001951(A026249(n+1))+n+2]+1`
-/

namespace A244941.P161348598786354787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A026249 (n + 1)).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244941.P161348598786354787

namespace A244941

/-- `∑[A001951(A026249(n+1))+n+2]+1` -/
def P161348598786354787.Spec : Prop :=
  ∀ n, P161348598786354787.a n = A244941 (n + 1)

end A244941

/-! ## A244941.P15006314446011111513

`∑[A049472(A026251(n+1))+n+2]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244941

/-- `∑[A049472(A026251(n+1))+n+2]+1` -/
def P15006314446011111513.Spec : Prop :=
  ∀ n, P15006314446011111513.a n = A244941 (n + 1)

theorem P15006314446011111513.correct : P15006314446011111513.Spec := by
  intro n
  simp only [A244941, Nat.add_sub_cancel]

end A244941

/-! ## A244941.P2788542195817673134

`A244940(∑[n+1]+2)`
-/

namespace A244941.P2788542195817673134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244941.P2788542195817673134

namespace A244941

/-- `A244940(∑[n+1]+2)` -/
def P2788542195817673134.Spec : Prop :=
  ∀ n, P2788542195817673134.a n = A244941 (n + 1)

end A244941

/-! ## A244941.P12245512280550701786

`record[A244940(A008795(n)+2)]`
-/

namespace A244941.P12245512280550701786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244941.P12245512280550701786

namespace A244941

/-- `record[A244940(A008795(n)+2)]` -/
def P12245512280550701786.Spec : Prop :=
  ∀ n, P12245512280550701786.a n = A244941 (n + 1)

end A244941

/-! ## A244941.P14870757639725145604

`A244940(A000096(n)+3)%A017018(n)`
-/

namespace A244941.P14870757639725145604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244940 (A000096 n + 3).toNat) (A017018 n)

end

end A244941.P14870757639725145604

namespace A244941

/-- `A244940(A000096(n)+3)%A017018(n)` -/
def P14870757639725145604.Spec : Prop :=
  ∀ n, P14870757639725145604.a n = A244941 (n + 1)

end A244941

/-! ## A244941.P12655645942652357927

`A244940(A000096(n)+3)/A007318(C(2, n))`
-/

namespace A244941.P12655645942652357927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244940 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A244941.P12655645942652357927

namespace A244941

/-- `A244940(A000096(n)+3)/A007318(C(2, n))` -/
def P12655645942652357927.Spec : Prop :=
  ∀ n, P12655645942652357927.a n = (A244941 (n + 1) : ℚ)

end A244941

/-! ## A244941.P18154589275209943608

`A244940(A000096(n)+3)+A037912(A013632(n))`
-/

namespace A244941.P18154589275209943608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000096 n + 3).toNat + A037912 (A013632 n).toNat

end

end A244941.P18154589275209943608

namespace A244941

/-- `A244940(A000096(n)+3)+A037912(A013632(n))` -/
def P18154589275209943608.Spec : Prop :=
  ∀ n, P18154589275209943608.a n = A244941 (n + 1)

end A244941

/-! ## A244941.P8042958514553405525

`A001055(A000040(n+1))*A244940(A000096(n)+3)`
-/

namespace A244941.P8042958514553405525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000040 (n + 1)).toNat * A244940 (A000096 n + 3).toNat

end

end A244941.P8042958514553405525

namespace A244941

/-- `A001055(A000040(n+1))*A244940(A000096(n)+3)` -/
def P8042958514553405525.Spec : Prop :=
  ∀ n, P8042958514553405525.a n = A244941 (n + 1)

end A244941

/-!
# A244942: Number of length 3 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244942, there is no canonical definition to state claims against.
-/

/-! ## A244942.P17046696035138572525

`A244940(∑[n+2]+4)`
-/

namespace A244942.P17046696035138572525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244942.P17046696035138572525

/-! ## A244942.P13361637756746247733

`A244940(A167614(n+1))%A017655(n)`
-/

namespace A244942.P13361637756746247733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244940 (A167614 (n + 1)).toNat) (A017655 n)

end

end A244942.P13361637756746247733

/-! ## A244942.P13504220693742453571

`lcm(A040001(n), A244940(A167614(n+1)))`
-/

namespace A244942.P13504220693742453571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A244940 (A167614 (n + 1)).toNat)

end

end A244942.P13504220693742453571

/-! ## A244942.P10752212812149923870

`or(A063524(n), A244940(A167614(n+1)))`
-/

namespace A244942.P10752212812149923870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A244940 (A167614 (n + 1)).toNat)

end

end A244942.P10752212812149923870

/-! ## A244942.P15257819377709086914

`A040001(Δ[n²])*A244940(A167614(n+1))`
-/

namespace A244942.P15257819377709086914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A244940 (A167614 (n + 1)).toNat

end

end A244942.P15257819377709086914

/-! ## A244942.P15758034731296187277

`A014963(6*(n+1))*A244940(A167614(n+1))`
-/

namespace A244942.P15758034731296187277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A244940 (A167614 (n + 1)).toNat

end

end A244942.P15758034731296187277

/-!
# A244943: Number of length 4 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244943, there is no canonical definition to state claims against.
-/

/-! ## A244943.P1989012680202246211

`A244940(∑[abs(2-n)+3]+n+3+n)`
-/

namespace A244943.P1989012680202246211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 3 + (n : ℤ)).toNat

end

end A244943.P1989012680202246211

/-! ## A244943.P15903949243217504943

`A244940(A034856(n+2)+6)+A133944(2*n+3)`
-/

namespace A244943.P15903949243217504943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A034856 (n + 2) + 6).toNat + A133944 (2 * n + 3)

end

end A244943.P15903949243217504943

/-! ## A244943.P15211141938924746654

`A244940(A034856(n+2)+6)+A003982(A007304(n+1))`
-/

namespace A244943.P15211141938924746654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A034856 (n + 2) + 6).toNat + A003982 (A007304 (n + 1)).toNat

end

end A244943.P15211141938924746654

/-! ## A244943.P10334353150433313868

`A244940(A034856(n+2)+6)+A003982(A339657(n+1))`
-/

namespace A244943.P10334353150433313868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A034856 (n + 2) + 6).toNat + A003982 (A339657 (n + 1)).toNat

end

end A244943.P10334353150433313868

/-! ## A244943.P1763832561253433131

`A103587(2*n+3)*A244940(A034856(n+2)+6)`
-/

namespace A244943.P1763832561253433131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103587 (2 * n + 3) * A244940 (A034856 (n + 2) + 6).toNat

end

end A244943.P1763832561253433131

/-!
# A244944: Number of length 5 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244944, there is no canonical definition to state claims against.
-/

/-! ## A244944.P1853058413013332282

`A244940(A167499(n+3))`
-/

namespace A244944.P1853058413013332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167499 (n + 3)).toNat

end

end A244944.P1853058413013332282

/-! ## A244944.P7777128202246411030

`A244940(A000124(n+4)+4)`
-/

namespace A244944.P7777128202246411030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 4) + 4).toNat

end

end A244944.P7777128202246411030

/-! ## A244944.P8150322816923377675

`A244940(A000217(n+4)+5)`
-/

namespace A244944.P8150322816923377675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (n + 4) + 5).toNat

end

end A244944.P8150322816923377675

/-! ## A244944.P18179208249495885067

`A244940(A173036(n)+A016825(n))`
-/

namespace A244944.P18179208249495885067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A173036 n + A016825 n).toNat

end

end A244944.P18179208249495885067

/-! ## A244944.P667355849666868137

`A244940(A038722(Δ[A023545(n+1)]))`
-/

namespace A244944.P667355849666868137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244944.P667355849666868137

/-! ## A244944.P3642832076331268326

`A244940(A052905(n)+A023443(n+15))`
-/

namespace A244944.P3642832076331268326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A052905 n + A023443 (n + 15)).toNat

end

end A244944.P3642832076331268326

/-!
# A244945: Number of length 6 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244945, there is no canonical definition to state claims against.
-/

/-! ## A244945.P10377830118895578316

`A244940(A167499(n+4)+1)`
-/

namespace A244945.P10377830118895578316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167499 (n + 4) + 1).toNat

end

end A244945.P10377830118895578316

/-! ## A244945.P13990058612506964264

`A244940(A000124(n+5)+5)`
-/

namespace A244945.P13990058612506964264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 5) + 5).toNat

end

end A244945.P13990058612506964264

/-! ## A244945.P3413649470852752146

`A244940(A000217(n+5)+6)`
-/

namespace A244945.P3413649470852752146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (n + 5) + 6).toNat

end

end A244945.P3413649470852752146

/-! ## A244945.P17823569257360785812

`A244940(A055999(n+2)+12)`
-/

namespace A244945.P17823569257360785812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A055999 (n + 2) + 12).toNat

end

end A244945.P17823569257360785812

/-! ## A244945.P5627561480024909519

`A244940(A167614(n+2)+A004277(n+6))`
-/

namespace A244945.P5627561480024909519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167614 (n + 2) + A004277 (n + 6)).toNat

end

end A244945.P5627561480024909519

/-! ## A244945.P14890830221555760476

`A244940(A167614(n+2)+A005843(n+6))`
-/

namespace A244945.P14890830221555760476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167614 (n + 2) + A005843 (n + 6)).toNat

end

end A244945.P14890830221555760476

/-!
# A244946: Number of length 7 0..n arrays with each partial sum starting from the beginning no more than sqrt(3) standard deviations from its mean.

The programs for A244946, there is no canonical definition to state claims against.
-/

/-! ## A244946.P5442615072317855297

`A244940(A167487(n+5))`
-/

namespace A244946.P5442615072317855297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167487 (n + 5)).toNat

end

end A244946.P5442615072317855297

/-! ## A244946.P10886409652953470668

`A244940(A167499(n+5)+2)`
-/

namespace A244946.P10886409652953470668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A167499 (n + 5) + 2).toNat

end

end A244946.P10886409652953470668

/-! ## A244946.P6647312682475783092

`A244940(A000124(n+6)+6)`
-/

namespace A244946.P6647312682475783092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000124 (n + 6) + 6).toNat

end

end A244946.P6647312682475783092

/-! ## A244946.P14159204304290036326

`A244940(A000217(n+6)+7)`
-/

namespace A244946.P14159204304290036326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (A000217 (n + 6) + 7).toNat

end

end A244946.P14159204304290036326

/-! ## A244946.P961324956395337106

`A244940(eq[8, A131818(n+1)])`
-/

namespace A244946.P961324956395337106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244946.P961324956395337106

/-!
# A244952: Records in A245203 (= least k>=0 such that 4n+3 is the mean of primes 4(n-k)+3 and 4(n+k)+3).

The programs for A244952, there is no canonical definition to state claims against.
-/

/-! ## A244952.P4782999664090182669

`record[A245203(n)]`
-/

namespace A244952.P4782999664090182669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244952.P4782999664090182669

/-! ## A244952.P1512759351819797097

`A245203(A245205(n+1))`
-/

namespace A244952.P1512759351819797097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (A245205 (n + 1)).toNat

end

end A244952.P1512759351819797097

/-!
# A244953: a(n) = Sum_{i=0..n} (-i mod 4).

The programs for A244953, the canonical program `A244953.P13262749951170003773` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244953 has offset 0).

The definition of A244953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244953.P11817367581991987895

`(3*n+4-(n%4-2)²)/2`
-/

namespace A244953.P11817367581991987895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 4 : ℤ) - (((n % 4 : ℕ) : ℤ) - 2) ^ 2 : ℚ) / 2

end

end A244953.P11817367581991987895

namespace A244953

/-- `(3*n+4-(n%4-2)²)/2` -/
def P11817367581991987895.Spec : Prop :=
  ∀ n, P11817367581991987895.a n = (A244953 n : ℚ)

end A244953

/-! ## A244953.P13262749951170003773

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6, a(4)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244953

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P13262749951170003773.Spec : Prop :=
  ∀ n, P13262749951170003773.a n = A244953 n

theorem P13262749951170003773.correct : P13262749951170003773.Spec := by
  intro n
  simp only [A244953]

end A244953

/-! ## A244953.P9416547173816480776

`∑[and(3, -n)]`
-/

namespace A244953.P9416547173816480776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P9416547173816480776

namespace A244953

/-- `∑[and(3, -n)]` -/
def P9416547173816480776.Spec : Prop :=
  ∀ n, P9416547173816480776.a n = A244953 n

end A244953

/-! ## A244953.P9345054393763363129

`∑[(3*n)%4]`
-/

namespace A244953.P9345054393763363129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P9345054393763363129

namespace A244953

/-- `∑[(3*n)%4]` -/
def P9345054393763363129.Spec : Prop :=
  ∀ n, (P9345054393763363129.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P15210408942543166056

`∑[dr(and(3, 3*n))]`
-/

namespace A244953.P15210408942543166056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 3 (3 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P15210408942543166056

namespace A244953

/-- `∑[dr(and(3, 3*n))]` -/
def P15210408942543166056.Spec : Prop :=
  ∀ n, (P15210408942543166056.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P141966916022053770

`∑[3-(n+3)%4]`
-/

namespace A244953.P141966916022053770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((n + 3) % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P141966916022053770

namespace A244953

/-- `∑[3-(n+3)%4]` -/
def P141966916022053770.Spec : Prop :=
  ∀ n, P141966916022053770.a n = A244953 n

end A244953

/-! ## A244953.P7051203332996705691

`∑[3-and(3, n-1)]`
-/

namespace A244953.P7051203332996705691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 3 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P7051203332996705691

namespace A244953

/-- `∑[3-and(3, n-1)]` -/
def P7051203332996705691.Spec : Prop :=
  ∀ n, P7051203332996705691.a n = A244953 n

end A244953

/-! ## A244953.P5407406711893300883

`∑[xor(1, (n+1)%4)]`
-/

namespace A244953.P5407406711893300883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P5407406711893300883

namespace A244953

/-- `∑[xor(1, (n+1)%4)]` -/
def P5407406711893300883.Spec : Prop :=
  ∀ n, (P5407406711893300883.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P15108653327266410445

`∑[xor(1, and(3, n+1))]`
-/

namespace A244953.P15108653327266410445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.land 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P15108653327266410445

namespace A244953

/-- `∑[xor(1, and(3, n+1))]` -/
def P15108653327266410445.Spec : Prop :=
  ∀ n, (P15108653327266410445.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P7219352040502351395

`∑[xor(2, a(n-2))]` with `a(0)=0, a(1)=3`
-/

namespace A244953.P7219352040502351395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.xor 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P7219352040502351395

namespace A244953

/-- `∑[xor(2, a(n-2))]` -/
def P7219352040502351395.Spec : Prop :=
  ∀ n, (P7219352040502351395.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P14287282328362006727

`a(n-4)+6` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A244953.P14287282328362006727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 6] fun n a =>
  a (n - 4) + 6

end

end A244953.P14287282328362006727

namespace A244953

/-- `a(n-4)+6` -/
def P14287282328362006727.Spec : Prop :=
  ∀ n, (P14287282328362006727.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P16945175832488949628

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A244953.P16945175832488949628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P16945175832488949628

namespace A244953

/-- `∑[abs(a(n-4))]` -/
def P16945175832488949628.Spec : Prop :=
  ∀ n, (P16945175832488949628.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P15071625436326474707

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A244953.P15071625436326474707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P15071625436326474707

namespace A244953

/-- `∑[dr(a(n-4))]` -/
def P15071625436326474707.Spec : Prop :=
  ∀ n, (P15071625436326474707.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P4706649281958251540

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A244953.P4706649281958251540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P4706649281958251540

namespace A244953

/-- `∑[floor(a(n-4))]` -/
def P4706649281958251540.Spec : Prop :=
  ∀ n, (P4706649281958251540.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P8966839009712882936

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A244953.P8966839009712882936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P8966839009712882936

namespace A244953

/-- `∑[ceil(a(n-4))]` -/
def P8966839009712882936.Spec : Prop :=
  ∀ n, (P8966839009712882936.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P14743820033880028280

`∑[round(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A244953.P14743820033880028280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P14743820033880028280

namespace A244953

/-- `∑[round(a(n-4))]` -/
def P14743820033880028280.Spec : Prop :=
  ∀ n, (P14743820033880028280.a n : ℤ) = A244953 n

end A244953

/-! ## A244953.P16822112356968068925

`∑[or(3, n-1)+1-n]`
-/

namespace A244953.P16822112356968068925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) - 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P16822112356968068925

namespace A244953

/-- `∑[or(3, n-1)+1-n]` -/
def P16822112356968068925.Spec : Prop :=
  ∀ n, P16822112356968068925.a n = A244953 n

end A244953

/-! ## A244953.P4956264713970609820

`∑[1-(n-or(3, n-1))]`
-/

namespace A244953.P4956264713970609820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - Int.lor 3 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P4956264713970609820

namespace A244953

/-- `∑[1-(n-or(3, n-1))]` -/
def P4956264713970609820.Spec : Prop :=
  ∀ n, P4956264713970609820.a n = A244953 n

end A244953

/-! ## A244953.P8947591636373790327

`∑[(xor(3, n+3)-n)/2]`
-/

namespace A244953.P8947591636373790327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (n + 3) : ℤ) - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244953.P8947591636373790327

namespace A244953

/-- `∑[(xor(3, n+3)-n)/2]` -/
def P8947591636373790327.Spec : Prop :=
  ∀ n, P8947591636373790327.a n = (A244953 n : ℚ)

end A244953

/-! ## A244953.P16700167924449138773

`-∑[or(n+3, -4)+1]`
-/

namespace A244953.P16700167924449138773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 3 : ℤ) (-4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244953.P16700167924449138773

namespace A244953

/-- `-∑[or(n+3, -4)+1]` -/
def P16700167924449138773.Spec : Prop :=
  ∀ n, P16700167924449138773.a n = A244953 n

end A244953

/-!
# A244956: Smallest positive multiple of n whose base-5 representation contains only 0's and 1's.

The programs for A244956, there is no canonical definition to state claims against.
-/

/-! ## A244956.P8088433219794317136

`A028900(A004285(n+1))`
-/

namespace A244956.P8088433219794317136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A004285 (n + 1)).toNat

end

end A244956.P8088433219794317136

/-!
# A244961: Decimal equivalent of the binary string generated by the n X n antidiagonal matrix read by rows.

The programs for A244961, the canonical program `A244961.P7990176099212135040` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244961 has offset 1).

The definition of A244961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244961.P7990176099212135040

`∑{#}[n, 2^(n*(#+1))]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244961

/-- `∑{#}[n, 2^(n*(#+1))]` -/
def P7990176099212135040.Spec : Prop :=
  ∀ n, (P7990176099212135040.a n : ℤ) = A244961 (n + 1)

theorem P7990176099212135040.correct : P7990176099212135040.Spec := by
  intro n
  simp only [A244961, Nat.add_sub_cancel]

end A244961

/-! ## A244961.P5931259907657976877

`2^n*A344260(n)`
-/

namespace A244961.P5931259907657976877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A344260 n

end

end A244961.P5931259907657976877

namespace A244961

/-- `2^n*A344260(n)` -/
def P5931259907657976877.Spec : Prop :=
  ∀ n, P5931259907657976877.a n = A244961 (n + 1)

end A244961

/-! ## A244961.P18051222108750379130

`∑{d}[A000079(n+1), #^n]-1`
-/

namespace A244961.P18051222108750379130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n : ℕ) : ℤ) - 1

end

end A244961.P18051222108750379130

namespace A244961

/-- `∑{d}[A000079(n+1), #^n]-1` -/
def P18051222108750379130.Spec : Prop :=
  ∀ n, P18051222108750379130.a n = A244961 (n + 1)

end A244961

/-! ## A244961.P2302985081671457085

`lcm(A000079(n), A344260(n))`
-/

namespace A244961.P2302985081671457085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A344260 n)

end

end A244961.P2302985081671457085

namespace A244961

/-- `lcm(A000079(n), A344260(n))` -/
def P2302985081671457085.Spec : Prop :=
  ∀ n, (P2302985081671457085.a n : ℤ) = A244961 (n + 1)

end A244961

/-! ## A244961.P10194398693224680059

`floor(A198633(n)/2*A344260(n))`
-/

namespace A244961.P10194398693224680059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198633 n : ℚ) / 2 * (A344260 n : ℚ)⌋

end

end A244961.P10194398693224680059

namespace A244961

/-- `floor(A198633(n)/2*A344260(n))` -/
def P10194398693224680059.Spec : Prop :=
  ∀ n, P10194398693224680059.a n = A244961 (n + 1)

end A244961

/-!
# A244962: Generalized pentagonal numbers that are also partition numbers.

The programs for A244962, there is no canonical definition to state claims against.
-/

/-! ## A244962.P3682101901605534697

`filter[A001318(n), A167392(#)]`
-/

namespace A244962.P3682101901605534697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167392 (f1 j).toNat = 1) n)

end

end A244962.P3682101901605534697

/-! ## A244962.P151875516499035221

`record[abs(A147843(A000041(n)))]`
-/

namespace A244962.P151875516499035221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147843 (A000041 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244962.P151875516499035221

/-!
# A244963: a(n) = sigma(n) - n * Product_{p|n, p prime} (1 + 1/p).

The programs for A244963, the canonical program `A244963.P8812478636684031312` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244963 has offset 1).

The definition of A244963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244963.P8812478636684031312

`A000203(n+1)-A001615(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244963

/-- `A000203(n+1)-A001615(n+1)` -/
def P8812478636684031312.Spec : Prop :=
  ∀ n, P8812478636684031312.a n = A244963 (n + 1)

theorem P8812478636684031312.correct : P8812478636684031312.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel]

end A244963

/-! ## A244963.P5923341233686485365

`∑{d}[n+1, #]-∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A244963.P5923341233686485365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ)

end

end A244963.P5923341233686485365

namespace A244963

/-- `∑{d}[n+1, #]-∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P5923341233686485365.Spec : Prop :=
  ∀ n, P5923341233686485365.a n = (A244963 (n + 1) : ℚ)

end A244963

/-! ## A244963.P16636932742758896311

`∑{d}[n+1, #]%∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A244963.P16636932742758896311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ)))

end

end A244963.P16636932742758896311

namespace A244963

/-- `∑{d}[n+1, #]%∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P16636932742758896311.Spec : Prop :=
  ∀ n, P16636932742758896311.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P18131450993795012993

`∑{d}[n+1, A063658(#)]`
-/

namespace A244963.P18131450993795012993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063658 d

end

end A244963.P18131450993795012993

namespace A244963

/-- `∑{d}[n+1, A063658(#)]` -/
def P18131450993795012993.Spec : Prop :=
  ∀ n, P18131450993795012993.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P1435049801727851906

`1-A344705(n+1)+n`
-/

namespace A244963.P1435049801727851906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344705 (n + 1) + (n : ℤ)

end

end A244963.P1435049801727851906

namespace A244963

/-- `1-A344705(n+1)+n` -/
def P1435049801727851906.Spec : Prop :=
  ∀ n, P1435049801727851906.a n = A244963 (n + 1)

theorem P1435049801727851906.correct : P1435049801727851906.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P1435049801727851906.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A344705, A344705.P1217591774318848897.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P848209705367308417

`∑{d}[n+1, #]-A001615(n+1)`
-/

namespace A244963.P848209705367308417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A001615 (n + 1)

end

end A244963.P848209705367308417

namespace A244963

/-- `∑{d}[n+1, #]-A001615(n+1)` -/
def P848209705367308417.Spec : Prop :=
  ∀ n, P848209705367308417.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P14807867800219979695

`∑{d}[n+1, #*A107078((n+1)/#)]`
-/

namespace A244963.P14807867800219979695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A107078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244963.P14807867800219979695

namespace A244963

/-- `∑{d}[n+1, #*A107078((n+1)/#)]` -/
def P14807867800219979695.Spec : Prop :=
  ∀ n, P14807867800219979695.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P4064197067441644417

`∑{d}[n+1, #]-(n+1)-A306927(n+1)`
-/

namespace A244963.P4064197067441644417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A306927 (n + 1)

end

end A244963.P4064197067441644417

namespace A244963

/-- `∑{d}[n+1, #]-(n+1)-A306927(n+1)` -/
def P4064197067441644417.Spec : Prop :=
  ∀ n, P4064197067441644417.a n = A244963 (n + 1)

theorem P4064197067441644417.correct : P4064197067441644417.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P4064197067441644417.f1, A244963.P4064197067441644417.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A306927, A306927.P17814691939423950955.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P16753084214630916127

`A001065(n+1)-A306927(n+1)`
-/

namespace A244963.P16753084214630916127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A306927 (n + 1)

end

end A244963.P16753084214630916127

namespace A244963

/-- `A001065(n+1)-A306927(n+1)` -/
def P16753084214630916127.Spec : Prop :=
  ∀ n, P16753084214630916127.a n = A244963 (n + 1)

theorem P16753084214630916127.correct : P16753084214630916127.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P16753084214630916127.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A306927, A306927.P17814691939423950955.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P1310250117940404695

`A051612(n+1)-A292786(n+1)`
-/

namespace A244963.P1310250117940404695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A292786 (n + 1)

end

end A244963.P1310250117940404695

namespace A244963

/-- `A051612(n+1)-A292786(n+1)` -/
def P1310250117940404695.Spec : Prop :=
  ∀ n, P1310250117940404695.a n = A244963 (n + 1)

theorem P1310250117940404695.correct : P1310250117940404695.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P1310250117940404695.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A051612, A051612.P4135239823752248514.a, A292786, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P14024002350769886970

`A091818(n+1)-A344753(n+1)`
-/

namespace A244963.P14024002350769886970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A344753 (n + 1)

end

end A244963.P14024002350769886970

namespace A244963

/-- `A091818(n+1)-A344753(n+1)` -/
def P14024002350769886970.Spec : Prop :=
  ∀ n, P14024002350769886970.a n = A244963 (n + 1)

theorem P14024002350769886970.correct : P14024002350769886970.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P14024002350769886970.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A091818, A091818.P1536144604709334989.a, A344753, A344753.P96052968177767744.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A306927, A306927.P17814691939423950955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P2306464930857463233

`A065387(n+1)%A291784(n+1)`
-/

namespace A244963.P2306464930857463233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065387 (n + 1)) (A291784 (n + 1))

end

end A244963.P2306464930857463233

namespace A244963

/-- `A065387(n+1)%A291784(n+1)` -/
def P2306464930857463233.Spec : Prop :=
  ∀ n, P2306464930857463233.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P841969276492237738

`A245092(2*n+1)-A001615(n+1)`
-/

namespace A244963.P841969276492237738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A001615 (n + 1)

end

end A244963.P841969276492237738

namespace A244963

/-- `A245092(2*n+1)-A001615(n+1)` -/
def P841969276492237738.Spec : Prop :=
  ∀ n, P841969276492237738.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P4985215110391285497

`2*A001065(n+1)-A344753(n+1)`
-/

namespace A244963.P4985215110391285497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A344753 (n + 1)

end

end A244963.P4985215110391285497

namespace A244963

/-- `2*A001065(n+1)-A344753(n+1)` -/
def P4985215110391285497.Spec : Prop :=
  ∀ n, P4985215110391285497.a n = A244963 (n + 1)

theorem P4985215110391285497.correct : P4985215110391285497.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P4985215110391285497.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A344753, A344753.P96052968177767744.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A306927, A306927.P17814691939423950955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P7837220152446803684

`A051612(n+1)-2*A318320(n+1)`
-/

namespace A244963.P7837220152446803684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - 2 * A318320 (n + 1)

end

end A244963.P7837220152446803684

namespace A244963

/-- `A051612(n+1)-2*A318320(n+1)` -/
def P7837220152446803684.Spec : Prop :=
  ∀ n, P7837220152446803684.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P10712879454543169177

`A344753(n+1)-2*A306927(n+1)`
-/

namespace A244963.P10712879454543169177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1) - 2 * A306927 (n + 1)

end

end A244963.P10712879454543169177

namespace A244963

/-- `A344753(n+1)-2*A306927(n+1)` -/
def P10712879454543169177.Spec : Prop :=
  ∀ n, P10712879454543169177.a n = A244963 (n + 1)

theorem P10712879454543169177.correct : P10712879454543169177.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P10712879454543169177.a, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A306927, A306927.P17814691939423950955.a, A344753, A344753.P96052968177767744.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-! ## A244963.P13894696048475089630

`A000203(n+1)-∑{d}[n+1, A063659(#)]`
-/

namespace A244963.P13894696048475089630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A063659 d

end

end A244963.P13894696048475089630

namespace A244963

/-- `A000203(n+1)-∑{d}[n+1, A063659(#)]` -/
def P13894696048475089630.Spec : Prop :=
  ∀ n, P13894696048475089630.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P14049524515843050754

`∑{d}[n+1, A000010(#)*A048105((n+1)/#)]`
-/

namespace A244963.P14049524515843050754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A048105 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244963.P14049524515843050754

namespace A244963

/-- `∑{d}[n+1, A000010(#)*A048105((n+1)/#)]` -/
def P14049524515843050754.Spec : Prop :=
  ∀ n, P14049524515843050754.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P11873812324430333556

`∑{d}[n+1, A063659(#)*A071325((n+1)/#)]`
-/

namespace A244963.P11873812324430333556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A071325 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244963.P11873812324430333556

namespace A244963

/-- `∑{d}[n+1, A063659(#)*A071325((n+1)/#)]` -/
def P11873812324430333556.Spec : Prop :=
  ∀ n, P11873812324430333556.a n = A244963 (n + 1)

end A244963

/-! ## A244963.P12442378629374860264

`A000010(n+1)+A051612(n+1)-A001615(n+1)`
-/

namespace A244963.P12442378629374860264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A001615 (n + 1))

end

end A244963.P12442378629374860264

namespace A244963

/-- `A000010(n+1)+A051612(n+1)-A001615(n+1)` -/
def P12442378629374860264.Spec : Prop :=
  ∀ n, P12442378629374860264.a n = A244963 (n + 1)

theorem P12442378629374860264.correct : P12442378629374860264.Spec := by
  intro n
  simp only [A244963, Nat.add_sub_cancel, A244963.P12442378629374860264.a, A244963.P8812478636684031312.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244963

/-!
# A244964: Number of distinct generalized pentagonal numbers dividing n.

The programs for A244964, the canonical program `A244964.P3595985512889717253` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244964 has offset 1).

The definition of A244964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244964.P3595985512889717253

`∑{d}[n+1, A080995(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244964

/-- `∑{d}[n+1, A080995(#)]` -/
def P3595985512889717253.Spec : Prop :=
  ∀ n, P3595985512889717253.a n = A244964 (n + 1)

theorem P3595985512889717253.correct : P3595985512889717253.Spec := by
  intro n
  simp only [A244964, Nat.add_sub_cancel]

end A244964

/-! ## A244964.P17365700020827461827

`∑{d}[n+1, abs(A010815(#))]`
-/

namespace A244964.P17365700020827461827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A010815 d|

end

end A244964.P17365700020827461827

namespace A244964

/-- `∑{d}[n+1, abs(A010815(#))]` -/
def P17365700020827461827.Spec : Prop :=
  ∀ n, P17365700020827461827.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P3217455632289929838

`∑{d}[n+1, abs(A121373(#))]`
-/

namespace A244964.P3217455632289929838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A121373 d|

end

end A244964.P3217455632289929838

namespace A244964

/-- `∑{d}[n+1, abs(A121373(#))]` -/
def P3217455632289929838.Spec : Prop :=
  ∀ n, P3217455632289929838.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P4986630450738898749

`∑{d}[n+1, abs(A133985(#))]`
-/

namespace A244964.P4986630450738898749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A133985 d|

end

end A244964.P4986630450738898749

namespace A244964

/-- `∑{d}[n+1, abs(A133985(#))]` -/
def P4986630450738898749.Spec : Prop :=
  ∀ n, P4986630450738898749.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P2413666735589123627

`∑{d}[n+1, abs(A203568(#))]`
-/

namespace A244964.P2413666735589123627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A203568 d|

end

end A244964.P2413666735589123627

namespace A244964

/-- `∑{d}[n+1, abs(A203568(#))]` -/
def P2413666735589123627.Spec : Prop :=
  ∀ n, P2413666735589123627.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P12827684644107206363

`∑{d}[n+1, A199918(#)²]`
-/

namespace A244964.P12827684644107206363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A199918 d ^ 2

end

end A244964.P12827684644107206363

namespace A244964

/-- `∑{d}[n+1, A199918(#)²]` -/
def P12827684644107206363.Spec : Prop :=
  ∀ n, P12827684644107206363.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P2151392907877349000

`∑{d}[n+1, A257628(#)²]`
-/

namespace A244964.P2151392907877349000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257628 d ^ 2

end

end A244964.P2151392907877349000

namespace A244964

/-- `∑{d}[n+1, A257628(#)²]` -/
def P2151392907877349000.Spec : Prop :=
  ∀ n, P2151392907877349000.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P13493936534913788407

`∑{d}[n+1, A010815((n+1)/#)²]`
-/

namespace A244964.P13493936534913788407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010815 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A244964.P13493936534913788407

namespace A244964

/-- `∑{d}[n+1, A010815((n+1)/#)²]` -/
def P13493936534913788407.Spec : Prop :=
  ∀ n, P13493936534913788407.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P7819736982092043710

`∑{d}[n+1, abs(A206958(#))]`
-/

namespace A244964.P7819736982092043710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A206958 d|

end

end A244964.P7819736982092043710

namespace A244964

/-- `∑{d}[n+1, abs(A206958(#))]` -/
def P7819736982092043710.Spec : Prop :=
  ∀ n, P7819736982092043710.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P2804471274309312449

`∑{d}[n+1, A206959(#)²]`
-/

namespace A244964.P2804471274309312449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206959 d ^ 2

end

end A244964.P2804471274309312449

namespace A244964

/-- `∑{d}[n+1, A206959(#)²]` -/
def P2804471274309312449.Spec : Prop :=
  ∀ n, P2804471274309312449.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P548133951757031775

`∑{d}[2*(n+1), A089806(#)]`
-/

namespace A244964.P548133951757031775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089806 d

end

end A244964.P548133951757031775

namespace A244964

/-- `∑{d}[2*(n+1), A089806(#)]` -/
def P548133951757031775.Spec : Prop :=
  ∀ n, P548133951757031775.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P16392981004189211001

`∑{d}[n+1, A010054(3*#)]`
-/

namespace A244964.P16392981004189211001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 (3 * d)

end

end A244964.P16392981004189211001

namespace A244964

/-- `∑{d}[n+1, A010054(3*#)]` -/
def P16392981004189211001.Spec : Prop :=
  ∀ n, P16392981004189211001.a n = A244964 (n + 1)

end A244964

/-! ## A244964.P13237609569810585587

`∑{d}[n+1, A143062(#)²]`
-/

namespace A244964.P13237609569810585587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143062 d ^ 2

end

end A244964.P13237609569810585587

namespace A244964

/-- `∑{d}[n+1, A143062(#)²]` -/
def P13237609569810585587.Spec : Prop :=
  ∀ n, P13237609569810585587.a n = A244964 (n + 1)

end A244964

/-!
# A244965: Triangle read by rows: T(n,k) = sum of the k-th divisor island of n.

The programs for A244965, there is no canonical definition to state claims against.
-/

/-! ## A244965.P4429663041401455478

`A287618(A000010(A002260(A000051(n+2))+2)+1)`
-/

namespace A244965.P4429663041401455478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287618 (A000010 (A002260 (A000051 (n + 2)).toNat + 2).toNat + 1).toNat

end

end A244965.P4429663041401455478

/-!
# A244966: Triangle read by rows: T(n,k) is the difference between the largest and the smallest part of the k-th partition in the list of colexicographically ordered partitions of n, with n>=1 and 1<=k<=p(n), where p(n) is the number of partitions of n.

The programs for A244966, there is no canonical definition to state claims against.
-/

/-! ## A244966.P10373610215358149984

`A243055(A334437(n+1))`
-/

namespace A244966.P10373610215358149984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A334437 (n + 1)).toNat

end

end A244966.P10373610215358149984

/-! ## A244966.P8171519086533680144

`A111198(A278044(2*(n+2)))%A355754(n+1)`
-/

namespace A244966.P8171519086533680144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111198 (A278044 (2 * (n + 2))).toNat) (A355754 (n + 1))

end

end A244966.P8171519086533680144

/-! ## A244966.P10398710375725827224

`A355754(A316718(n))%A355754(n+1)`
-/

namespace A244966.P10398710375725827224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355754 (A316718 n).toNat) (A355754 (n + 1))

end

end A244966.P10398710375725827224

/-! ## A244966.P8177506913979905751

`A213725(A264560(n+1)-A062329(3*n+1))`
-/

namespace A244966.P8177506913979905751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (A264560 (n + 1) - A062329 (3 * n + 1)).toNat

end

end A244966.P8177506913979905751

/-!
# A244967: A141285(n) - 1.

The programs for A244967, the canonical program `A244967.P9468410199705462311` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244967 has offset 1).

The definition of A244967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244967.P9468410199705462311

`A141285(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A244967

/-- `A141285(n+1)-1` -/
def P9468410199705462311.Spec : Prop :=
  ∀ n, P9468410199705462311.a n = A244967 (n + 1)

theorem P9468410199705462311.correct : P9468410199705462311.Spec := by
  intro n
  simp only [A244967, Nat.add_sub_cancel]

end A244967

/-! ## A244967.P3419997871710360629

`val(A194602(n)+1, 2)`
-/

namespace A244967.P3419997871710360629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194602 n + 1).toNat 2

end

end A244967.P3419997871710360629

namespace A244967

/-- `val(A194602(n)+1, 2)` -/
def P3419997871710360629.Spec : Prop :=
  ∀ n, (P3419997871710360629.a n : ℤ) = A244967 (n + 1)

end A244967

/-! ## A244967.P4179355600377503675

`A186114(∑[n+1])-1`
-/

namespace A244967.P4179355600377503675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A244967.P4179355600377503675

namespace A244967

/-- `A186114(∑[n+1])-1` -/
def P4179355600377503675.Spec : Prop :=
  ∀ n, P4179355600377503675.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P10047455327683919994

`A193870(∑[n]+1)-1`
-/

namespace A244967.P10047455327683919994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A244967.P10047455327683919994

namespace A244967

/-- `A193870(∑[n]+1)-1` -/
def P10047455327683919994.Spec : Prop :=
  ∀ n, P10047455327683919994.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P12552233140604512172

`A089309(A194602(n))`
-/

namespace A244967.P12552233140604512172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A194602 n).toNat

end

end A244967.P12552233140604512172

namespace A244967

/-- `A089309(A194602(n))` -/
def P12552233140604512172.Spec : Prop :=
  ∀ n, P12552233140604512172.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P11336710589581634788

`A000401(A141285(n+1))`
-/

namespace A244967.P11336710589581634788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A141285 (n + 1)).toNat

end

end A244967.P11336710589581634788

namespace A244967

/-- `A000401(A141285(n+1))` -/
def P11336710589581634788.Spec : Prop :=
  ∀ n, P11336710589581634788.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P13746698120069084351

`A007814(A194602(n)+1)`
-/

namespace A244967.P13746698120069084351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194602 n + 1).toNat

end

end A244967.P13746698120069084351

namespace A244967

/-- `A007814(A194602(n)+1)` -/
def P13746698120069084351.Spec : Prop :=
  ∀ n, P13746698120069084351.a n = A244967 (n + 1)

theorem P13746698120069084351.correct : P13746698120069084351.Spec := by
  intro n
  simp only [A244967, Nat.add_sub_cancel, A244967.P13746698120069084351.a, A244967.P9468410199705462311.a, A007814, A007814.P13537437864234730737.a, A141285, A141285.P8203282120832387629.a, A194602, A194602.P705746156502626667.f1, A194602.P705746156502626667.f2, A194602.P705746156502626667.a, A001511, A001511.P17146462531039486101.a, A228354, A228354.P14726846839078751284.a, A326956, A326956.P17897166605498576645.a, A005940, A005940.P5942875842694471387.a, A006519, A006519.P10435570611646570274.a, A278222, A278222.P17984582888025768899.a, A006068, A006068.P433290056721054414.a, A122111, A122111.P18124015185857335041.a, A171977, A171977.P14092944863121073856.a, A253563, A253563.P8520361847049590329.a, A278219, A278219.P3825217007817809804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244967

/-! ## A244967.P15131090533670104486

`A067029(A194602(n)+1)`
-/

namespace A244967.P15131090533670104486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A194602 n + 1).toNat

end

end A244967.P15131090533670104486

namespace A244967

/-- `A067029(A194602(n)+1)` -/
def P15131090533670104486.Spec : Prop :=
  ∀ n, P15131090533670104486.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P11031549343097302037

`A087117(A194602(n)+1)`
-/

namespace A244967.P11031549343097302037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A194602 n + 1).toNat

end

end A244967.P11031549343097302037

namespace A244967

/-- `A087117(A194602(n)+1)` -/
def P11031549343097302037.Spec : Prop :=
  ∀ n, P11031549343097302037.a n = A244967 (n + 1)

end A244967

/-! ## A244967.P237816803122926796

`A285099(A194602(n)+2)`
-/

namespace A244967.P237816803122926796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A194602 n + 2).toNat

end

end A244967.P237816803122926796

namespace A244967

/-- `A285099(A194602(n)+2)` -/
def P237816803122926796.Spec : Prop :=
  ∀ n, P237816803122926796.a n = A244967 (n + 1)

end A244967

/-!
# A244968: Area between two valleys at height 0 under the infinite Dyck path related to partitions in which the k-th ascending line segment has A141285(k) steps and the k-th descending line segment has A194446(k) steps, k >= 1, multiplied by 2.

The programs for A244968, there is no canonical definition to state claims against.
-/

/-! ## A244968.P13379581461753305183

`Δ[A085411(n+1)]-∑{e}[n+1, #]`
-/

namespace A244968.P13379581461753305183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085411 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A244968.P13379581461753305183

/-!
# A244970: Total number of regions after n-th stage in the diagram of the symmetric representation of sigma on the four quadrants.

The programs for A244970, there is no canonical definition to state claims against.
-/

/-! ## A244970.P16323873273625215845

`∑[A244971(n+1)]`
-/

namespace A244970.P16323873273625215845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244970.P16323873273625215845

/-! ## A244970.P2030034747964958752

`∑[A244971(Δ[n²]-n)%13]`
-/

namespace A244970.P2030034747964958752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244970.P2030034747964958752

/-! ## A244970.P12303995470252972390

`A244971(n%(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A244970.P12303995470252972390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244971 (n % (n + 1) + 1) + a (n - 1)

end

end A244970.P12303995470252972390

/-! ## A244970.P13984901923651692524

`A244971(round(acot(n)+n)+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A244970.P13984901923651692524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A244971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat + a (n - 1)

end

end A244970.P13984901923651692524

/-! ## A244970.P7299381342523167410

`∑[A328479(A244971(-xor(n, -1)))]`
-/

namespace A244970.P7299381342523167410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A244971 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244970.P7299381342523167410

/-! ## A244970.P15620453468385711709

`A028310(∑[A244971(Δ[n²]-n)])`
-/

namespace A244970.P15620453468385711709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244970.P15620453468385711709

/-! ## A244970.P2654588890546821459

`∑[A244971(Δ[n²]-n)^A178489(n)]`
-/

namespace A244970.P2654588890546821459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ) ^ (A178489 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244970.P2654588890546821459

/-! ## A244970.P421353618153937576

`A033999(n)²*∑[A244971(Δ[n²]-n)]`
-/

namespace A244970.P421353618153937576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244970.P421353618153937576

/-! ## A244970.P9269866435352794507

`A254667(a(n-1))+A244971(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A244970.P9269866435352794507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A254667 (a (n - 1)).toNat + A244971 (n + 1)

end

end A244970.P9269866435352794507

/-! ## A244970.P16742912138969360885

`∑[A000203(((-1)^n)²)*A244971(Δ[n²]-n)]`
-/

namespace A244970.P16742912138969360885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A244971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244970.P16742912138969360885

/-!
# A244971: Number of regions in the symmetric representation of sigma(n) on the four quadrants.

The programs for A244971, there is no canonical definition to state claims against.
-/

/-! ## A244971.P5504640213714059760

`A008574(A237271(n+1)-A304042(A178334(n)))`
-/

namespace A244971.P5504640213714059760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A304042 (A178334 n).toNat).toNat

end

end A244971.P5504640213714059760

/-! ## A244971.P4641166729147686405

`A008574(A237271(n+1)-A032741(A076567(n+1)))`
-/

namespace A244971.P4641166729147686405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A032741 (A076567 (n + 1)).toNat).toNat

end

end A244971.P4641166729147686405

/-! ## A244971.P4543025688802833463

`A008574(A237271(n+1)-A178334(A069735(n+1)))`
-/

namespace A244971.P4543025688802833463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A178334 (A069735 (n + 1)).toNat).toNat

end

end A244971.P4543025688802833463

/-! ## A244971.P12813065901129410197

`A008574(A237271(n+1)-A178334(A309120(n+1)))`
-/

namespace A244971.P12813065901129410197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A178334 (A309120 (n + 1)).toNat).toNat

end

end A244971.P12813065901129410197

/-! ## A244971.P3669816804867481683

`A008574(A237271(n+1)-A178334(A227195(n+2)))`
-/

namespace A244971.P3669816804867481683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A178334 (A227195 (n + 2)).toNat).toNat

end

end A244971.P3669816804867481683

/-! ## A244971.P15699383630148458125

`A008574(A237271(n+1)-A336158(A059268(n)))`
-/

namespace A244971.P15699383630148458125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A336158 (A059268 n).toNat).toNat

end

end A244971.P15699383630148458125

/-! ## A244971.P11684829794328442997

`A008574(A237271(n+1)-A000120(A059268(n)))`
-/

namespace A244971.P11684829794328442997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A237271 (n + 1) - A000120 (A059268 n).toNat).toNat

end

end A244971.P11684829794328442997

/-! ## A244971.P6495037259411284382

`A028310(Δ[A244970(A028310(n))])`
-/

namespace A244971.P6495037259411284382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244970 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A244971.P6495037259411284382

/-!
# A244973: a(n) = Sum_{k=0..n} (-1)^k*C(n, k)^2*C(2*k, k), where C(n, k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A244973, the canonical program `A244973.P11905580561275580674` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244973 has offset 0).

The definition of A244973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n, #)²*C(2*#, #)]` (program `A244973.P11905580561275580674`, by `A244973.P11905580561275580674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244973.P2353936997625288589

`∑{#}[n, (-1)^(n-#)*C(n, 2*#)²*C(2*#, #)]`
-/

namespace A244973.P2353936997625288589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n (2 * k) ^ 2 : ℚ) * (Nat.choose (2 * k) k : ℚ)

end

end A244973.P2353936997625288589

namespace A244973

/-- `∑{#}[n, (-1)^(n-#)*C(n, 2*#)²*C(2*#, #)]` -/
def P2353936997625288589.Spec : Prop :=
  ∀ n, P2353936997625288589.a n = (A244973 n : ℚ)

end A244973

/-! ## A244973.P5978984164007727905

`∑{#}[n, (-1)^(n-#)*C(n, #)*C(n, 2*#)*C(n-#, #)]`
-/

namespace A244973.P5978984164007727905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose n (2 * k) : ℚ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ)

end

end A244973.P5978984164007727905

namespace A244973

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*C(n, 2*#)*C(n-#, #)]` -/
def P5978984164007727905.Spec : Prop :=
  ∀ n, P5978984164007727905.a n = (A244973 n : ℚ)

end A244973

/-! ## A244973.P11905580561275580674

`∑{#}[n, (-1)^#*C(n, #)²*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244973

/-- `∑{#}[n, (-1)^#*C(n, #)²*C(2*#, #)]` -/
def P11905580561275580674.Spec : Prop :=
  ∀ n, P11905580561275580674.a n = A244973 n

theorem P11905580561275580674.correct : P11905580561275580674.Spec := by
  intro n
  simp only [A244973]

end A244973

/-!
# A244974: Sum of numbers m <= n whose set of prime divisors is a subset of the set of prime divisors of n.

The programs for A244974, the canonical program `A244974.P1357491586200495620` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244974 has offset 1).

The definition of A244974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244974.P1357491586200495620

`∑{#}[n, (#+1)*(floor((n+1)^(#+1)/(#+1))-floor(((n+1)^(#+1)-1)/(#+1)))]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244974

/-- `∑{#}[n, (#+1)*(floor((n+1)^(#+1)/(#+1))-floor(((n+1)^(#+1)-1)/(#+1)))]` -/
def P1357491586200495620.Spec : Prop :=
  ∀ n, P1357491586200495620.a n = A244974 (n + 1)

theorem P1357491586200495620.correct : P1357491586200495620.Spec := by
  intro n
  simp only [A244974, Nat.add_sub_cancel]

end A244974

/-! ## A244974.P10630008826586581792

`A395300(n+1)+A000203(n+1)`
-/

namespace A244974.P10630008826586581792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + A000203 (n + 1)

end

end A244974.P10630008826586581792

namespace A244974

/-- `A395300(n+1)+A000203(n+1)` -/
def P10630008826586581792.Spec : Prop :=
  ∀ n, P10630008826586581792.a n = A244974 (n + 1)

theorem P10630008826586581792.correct : P10630008826586581792.Spec := by
  intro n
  simp only [A244974, Nat.add_sub_cancel, A244974.P10630008826586581792.a, A244974.P1357491586200495620.f1, A244974.P1357491586200495620.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A395300, A395300.P12127772645771921970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244974

/-! ## A244974.P9512210419445841789

`A395300(n+1)+A245092(Δ[n²])`
-/

namespace A244974.P9512210419445841789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244974.P9512210419445841789

namespace A244974

/-- `A395300(n+1)+A245092(Δ[n²])` -/
def P9512210419445841789.Spec : Prop :=
  ∀ n, P9512210419445841789.a n = A244974 (n + 1)

end A244974

/-! ## A244974.P14896244684530443106

`A395300(n+1)+sqrt(A072861(n+1))`
-/

namespace A244974.P14896244684530443106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A395300 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A244974.P14896244684530443106

namespace A244974

/-- `A395300(n+1)+sqrt(A072861(n+1))` -/
def P14896244684530443106.Spec : Prop :=
  ∀ n, P14896244684530443106.a n = (A244974 (n + 1) : ℝ)

end A244974

/-! ## A244974.P16423341714981725413

`A395300(n+1)+∑[A340793(n+1)]`
-/

namespace A244974.P16423341714981725413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244974.P16423341714981725413

namespace A244974

/-- `A395300(n+1)+∑[A340793(n+1)]` -/
def P16423341714981725413.Spec : Prop :=
  ∀ n, P16423341714981725413.a n = A244974 (n + 1)

end A244974

/-! ## A244974.P8174613543104151348

`A395300(n+1)+A039653(n+1)+1`
-/

namespace A244974.P8174613543104151348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + (A039653 (n + 1) + 1)

end

end A244974.P8174613543104151348

namespace A244974

/-- `A395300(n+1)+A039653(n+1)+1` -/
def P8174613543104151348.Spec : Prop :=
  ∀ n, P8174613543104151348.a n = A244974 (n + 1)

end A244974

/-! ## A244974.P16795615069828252255

`A395300(A014682(2*(n+1)))+A048250(n+1)+A162296(n+1)`
-/

namespace A244974.P16795615069828252255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (A014682 (2 * (n + 1))).toNat + (A048250 (n + 1) + A162296 (n + 1))

end

end A244974.P16795615069828252255

namespace A244974

/-- `A395300(A014682(2*(n+1)))+A048250(n+1)+A162296(n+1)` -/
def P16795615069828252255.Spec : Prop :=
  ∀ n, P16795615069828252255.a n = A244974 (n + 1)

end A244974

/-! ## A244974.P6017647358412355193

`A395300(A078898(2*(n+1)))+A048250(n+1)+A162296(n+1)`
-/

namespace A244974.P6017647358412355193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (A078898 (2 * (n + 1))).toNat + (A048250 (n + 1) + A162296 (n + 1))

end

end A244974.P6017647358412355193

namespace A244974

/-- `A395300(A078898(2*(n+1)))+A048250(n+1)+A162296(n+1)` -/
def P6017647358412355193.Spec : Prop :=
  ∀ n, P6017647358412355193.a n = A244974 (n + 1)

end A244974

/-! ## A244974.P1697127002837980316

`A395300(n+1)+∑{#}[n, A000005(gcd(n+1, #))]`
-/

namespace A244974.P1697127002837980316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395300 (n + 1) + ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (n + 1) k)

end

end A244974.P1697127002837980316

namespace A244974

/-- `A395300(n+1)+∑{#}[n, A000005(gcd(n+1, #))]` -/
def P1697127002837980316.Spec : Prop :=
  ∀ n, P1697127002837980316.a n = A244974 (n + 1)

end A244974

/-!
# A244975: a(n) = (7^n - 2*n - 1)/4.

The programs for A244975, the canonical program `A244975.P1757787604437087220` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244975 has offset 0).

The definition of A244975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n-2*n-1)/4` (program `A244975.P15429810570292166364`, by `A244975.P15429810570292166364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244975.P11293298911389228359

`ogf((x+2x^2)/(1-9x+15x^2-7x^3))`
-/

namespace A244975.P11293298911389228359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -9, 15, -7] n

end

end A244975.P11293298911389228359

namespace A244975

/-- `ogf((x+2x^2)/(1-9x+15x^2-7x^3))` -/
def P11293298911389228359.Spec : Prop :=
  ∀ n, P11293298911389228359.a n = A244975 n

end A244975

/-! ## A244975.P15429810570292166364

`(7^n-2*n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244975.P15429810570292166364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - (2 * n : ℤ) - 1 : ℚ) / 4

end

end A244975.P15429810570292166364

namespace A244975

/-- `(7^n-2*n-1)/4` -/
def P15429810570292166364.Spec : Prop :=
  ∀ n, P15429810570292166364.a n = (A244975 n : ℚ)

theorem P15429810570292166364.correct : P15429810570292166364.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A244975, Nat.add_sub_cancel, A244975.P15429810570292166364.a, A244975.P1757787604437087220.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A244975, Nat.add_sub_cancel, A244975.P15429810570292166364.a, A244975.P1757787604437087220.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A244975

/-! ## A244975.P1757787604437087220

`9*a(n-1)-15*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=1, a(2)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244975

/-- `9*a(n-1)-15*a(n-2)+7*a(n-3)` -/
def P1757787604437087220.Spec : Prop :=
  ∀ n, P1757787604437087220.a n = A244975 n

theorem P1757787604437087220.correct : P1757787604437087220.Spec := by
  intro n
  simp only [A244975]

end A244975

/-! ## A244975.P1274472351946337387

`∑[ogf((x+2x^2)/(1-8x+7x^2))]`
-/

namespace A244975.P1274472351946337387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -8, 7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P1274472351946337387

namespace A244975

/-- `∑[ogf((x+2x^2)/(1-8x+7x^2))]` -/
def P1274472351946337387.Spec : Prop :=
  ∀ n, P1274472351946337387.a n = A244975 n

end A244975

/-! ## A244975.P5793671601677191404

`∑[3+7*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A244975.P5793671601677191404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P5793671601677191404

namespace A244975

/-- `∑[3+7*a(n-1)]` -/
def P5793671601677191404.Spec : Prop :=
  ∀ n, (P5793671601677191404.a n : ℤ) = A244975 n

end A244975

/-! ## A244975.P2640337260218610588

`∑[∑[7*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A244975.P2640337260218610588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P2640337260218610588

namespace A244975

/-- `∑[∑[7*a(n-1)]]` -/
def P2640337260218610588.Spec : Prop :=
  ∀ n, (P2640337260218610588.a n : ℤ) = A244975 n

end A244975

/-! ## A244975.P3988331434297141041

`floor((A034494(n)-n)/2)`
-/

namespace A244975.P3988331434297141041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034494 n - (n : ℤ) : ℚ) / 2⌋

end

end A244975.P3988331434297141041

namespace A244975

/-- `floor((A034494(n)-n)/2)` -/
def P3988331434297141041.Spec : Prop :=
  ∀ n, P3988331434297141041.a n = A244975 n

end A244975

/-! ## A244975.P13027511432263405052

`floor((A024076(n)-n)/4)`
-/

namespace A244975.P13027511432263405052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024076 n - (n : ℤ) : ℚ) / 4⌋

end

end A244975.P13027511432263405052

namespace A244975

/-- `floor((A024076(n)-n)/4)` -/
def P13027511432263405052.Spec : Prop :=
  ∀ n, P13027511432263405052.a n = A244975 n

end A244975

/-! ## A244975.P7998133077713979972

`ceil((A120741(n)-(n+1))/2)`
-/

namespace A244975.P7998133077713979972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120741 n - (n + 1 : ℤ) : ℚ) / 2⌉

end

end A244975.P7998133077713979972

namespace A244975

/-- `ceil((A120741(n)-(n+1))/2)` -/
def P7998133077713979972.Spec : Prop :=
  ∀ n, P7998133077713979972.a n = A244975 n

end A244975

/-! ## A244975.P6758498237093381577

`A083067(n)-∑[A034494(n)]`
-/

namespace A244975.P6758498237093381577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083067 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P6758498237093381577

namespace A244975

/-- `A083067(n)-∑[A034494(n)]` -/
def P6758498237093381577.Spec : Prop :=
  ∀ n, P6758498237093381577.a n = A244975 n

end A244975

/-! ## A244975.P14312672124025397990

`∑[A120741(n)]-A125725(n+1)`
-/

namespace A244975.P14312672124025397990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A125725 (n + 1)

end

end A244975.P14312672124025397990

namespace A244975

/-- `∑[A120741(n)]-A125725(n+1)` -/
def P14312672124025397990.Spec : Prop :=
  ∀ n, P14312672124025397990.a n = A244975 n

end A244975

/-! ## A244975.P4788514920902260311

`∑[A199417(n)]-(A199417(n)+n)`
-/

namespace A244975.P4788514920902260311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A199417 n + (n : ℤ))

end

end A244975.P4788514920902260311

namespace A244975

/-- `∑[A199417(n)]-(A199417(n)+n)` -/
def P4788514920902260311.Spec : Prop :=
  ∀ n, P4788514920902260311.a n = A244975 n

end A244975

/-! ## A244975.P12455890990939554826

`A083067(n)-∑[A297180(3*n+1)]`
-/

namespace A244975.P12455890990939554826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083067 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P12455890990939554826

namespace A244975

/-- `A083067(n)-∑[A297180(3*n+1)]` -/
def P12455890990939554826.Spec : Prop :=
  ∀ n, P12455890990939554826.a n = A244975 n

end A244975

/-! ## A244975.P491327532488139539

`∑[A196661(n)-A297180(3*n+1)]`
-/

namespace A244975.P491327532488139539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 n - A297180 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P491327532488139539

namespace A244975

/-- `∑[A196661(n)-A297180(3*n+1)]` -/
def P491327532488139539.Spec : Prop :=
  ∀ n, P491327532488139539.a n = A244975 n

end A244975

/-! ## A244975.P6474870911062373889

`round(A193577(n)/6)-∑[A297180(3*n+1)]`
-/

namespace A244975.P6474870911062373889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193577 n : ℚ) / 6) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244975.P6474870911062373889

namespace A244975

/-- `round(A193577(n)/6)-∑[A297180(3*n+1)]` -/
def P6474870911062373889.Spec : Prop :=
  ∀ n, P6474870911062373889.a n = A244975 n

end A244975

/-! ## A244975.P8102204801703068726

`A297180(3*(n+1))/3-∑[A297180(3*n+1)]`
-/

namespace A244975.P8102204801703068726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297180 (3 * (n + 1)) : ℚ) / 3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A244975.P8102204801703068726

namespace A244975

/-- `A297180(3*(n+1))/3-∑[A297180(3*n+1)]` -/
def P8102204801703068726.Spec : Prop :=
  ∀ n, P8102204801703068726.a n = (A244975 n : ℚ)

end A244975

/-!
# A244981: Permutation of natural numbers: a(n) = A122111(A102750(n)) / 2.

The programs for A244981, the canonical program `A244981.P12746334963989570869` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244981 has offset 1).

The definition of A244981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102750, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244981.P12746334963989570869

`A122111(A102750(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A244981

/-- `A122111(A102750(n+1))/2` -/
def P12746334963989570869.Spec : Prop :=
  ∀ n, P12746334963989570869.a n = (A244981 (n + 1) : ℚ)

end A244981

/-! ## A244981.P14214444640169137110

`A122111(eq[1, A071178(n+1)]+1)/2`
-/

namespace A244981.P14214444640169137110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A244981.P14214444640169137110

namespace A244981

/-- `A122111(eq[1, A071178(n+1)]+1)/2` -/
def P14214444640169137110.Spec : Prop :=
  ∀ n, P14214444640169137110.a n = (A244981 (n + 1) : ℚ)

end A244981

/-! ## A244981.P16765918997999829408

`A122111(A252462(A102750(n+1)))`
-/

namespace A244981.P16765918997999829408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A252462 (A102750 (n + 1)).toNat).toNat

end

end A244981.P16765918997999829408

namespace A244981

/-- `A122111(A252462(A102750(n+1)))` -/
def P16765918997999829408.Spec : Prop :=
  ∀ n, P16765918997999829408.a n = A244981 (n + 1)

end A244981

/-! ## A244981.P5087655328465329034

`A122111(A253553(A102750(n+1)%A065091(n+1)))`
-/

namespace A244981.P5087655328465329034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253553 (Int.tmod (A102750 (n + 1)) (A065091 (n + 1))).toNat).toNat

end

end A244981.P5087655328465329034

namespace A244981

/-- `A122111(A253553(A102750(n+1)%A065091(n+1)))` -/
def P5087655328465329034.Spec : Prop :=
  ∀ n, P5087655328465329034.a n = A244981 (n + 1)

end A244981

/-! ## A244981.P10279174036534400064

`A122111(A253553(A102750(n+1))%A070003(n+1))`
-/

namespace A244981.P10279174036534400064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A253553 (A102750 (n + 1)).toNat) (A070003 (n + 1))).toNat

end

end A244981.P10279174036534400064

namespace A244981

/-- `A122111(A253553(A102750(n+1))%A070003(n+1))` -/
def P10279174036534400064.Spec : Prop :=
  ∀ n, P10279174036534400064.a n = A244981 (n + 1)

end A244981

/-!
# A244982: Permutation of natural numbers: a(n) = A243285(A122111(2*n)).

The programs for A244982, the canonical program `A244982.P14627394203374857014` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244982 has offset 1).

The definition of A244982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244982.P14627394203374857014

`A243285(A122111(2*(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A244982

/-- `A243285(A122111(2*(n+1)))` -/
def P14627394203374857014.Spec : Prop :=
  ∀ n, P14627394203374857014.a n = A244982 (n + 1)

theorem P14627394203374857014.correct : P14627394203374857014.Spec := by
  intro n
  simp only [A244982, Nat.add_sub_cancel]

end A244982

/-! ## A244982.P9059730021044745534

`A243285(A253568(n+1))`
-/

namespace A244982.P9059730021044745534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243285 (A253568 (n + 1)).toNat

end

end A244982.P9059730021044745534

namespace A244982

/-- `A243285(A253568(n+1))` -/
def P9059730021044745534.Spec : Prop :=
  ∀ n, P9059730021044745534.a n = A244982 (n + 1)

end A244982

/-! ## A244982.P3006559995576095304

`A243285(A243505(A048673(2*(n+1))))`
-/

namespace A244982.P3006559995576095304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243285 (A243505 (A048673 (2 * (n + 1))).toNat).toNat

end

end A244982.P3006559995576095304

namespace A244982

/-- `A243285(A243505(A048673(2*(n+1))))` -/
def P3006559995576095304.Spec : Prop :=
  ∀ n, P3006559995576095304.a n = A244982 (n + 1)

end A244982

/-! ## A244982.P13097019845001176405

`A243285(A354867(2*(n+1))-A354866(2*(n+1)))`
-/

namespace A244982.P13097019845001176405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243285 (A354867 (2 * (n + 1)) - A354866 (2 * (n + 1))).toNat

end

end A244982.P13097019845001176405

namespace A244982

/-- `A243285(A354867(2*(n+1))-A354866(2*(n+1)))` -/
def P13097019845001176405.Spec : Prop :=
  ∀ n, P13097019845001176405.a n = A244982 (n + 1)

end A244982

/-! ## A244982.P10367463752928105355

`A122111(2*n+2)-A243283(A122111(2*n+2))`
-/

namespace A244982.P10367463752928105355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (2 * n + 2) - A243283 (A122111 (2 * n + 2)).toNat

end

end A244982.P10367463752928105355

namespace A244982

/-- `A122111(2*n+2)-A243283(A122111(2*n+2))` -/
def P10367463752928105355.Spec : Prop :=
  ∀ n, P10367463752928105355.a n = A244982 (n + 1)

end A244982

/-!
# A244983: Permutation of natural numbers: a(1) = 1, a(n) = (1 + A122111(A070003(n-1))) / 2.

The programs for A244983, the canonical program `A244983.P13608880474615065952` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244983 has offset 1).

The definition of A244983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244983.P13608880474615065952

`ceil(A122111(record[A322820(n+1)])/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A244983

/-- `ceil(A122111(record[A322820(n+1)])/2)` -/
def P13608880474615065952.Spec : Prop :=
  ∀ n, P13608880474615065952.a n = A244983 (n + 1)

theorem P13608880474615065952.correct : P13608880474615065952.Spec := by
  intro n
  simp only [A244983, Nat.add_sub_cancel]

end A244983

/-! ## A244983.P11148780510138035870

`round(A122111(record[A322820(n+2)])/2)`
-/

namespace A244983.P11148780510138035870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2)

end

end A244983.P11148780510138035870

namespace A244983

/-- `round(A122111(record[A322820(n+2)])/2)` -/
def P11148780510138035870.Spec : Prop :=
  ∀ n, P11148780510138035870.a n = A244983 (n + 1)

end A244983

/-! ## A244983.P8536905898958517723

`floor(A122111(record[A322820(n+3)])/2)+1`
-/

namespace A244983.P8536905898958517723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2⌋ + 1

end

end A244983.P8536905898958517723

namespace A244983

/-- `floor(A122111(record[A322820(n+3)])/2)+1` -/
def P8536905898958517723.Spec : Prop :=
  ∀ n, P8536905898958517723.a n = A244983 (n + 1)

end A244983

/-! ## A244983.P4420088980929721792

`(A122111(record[A322820(abs(1-n)+1)])+1)/2`
-/

namespace A244983.P4420088980929721792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 : ℚ) / 2

end

end A244983.P4420088980929721792

namespace A244983

/-- `(A122111(record[A322820(abs(1-n)+1)])+1)/2` -/
def P4420088980929721792.Spec : Prop :=
  ∀ n, P4420088980929721792.a n = (A244983 (n + 1) : ℚ)

end A244983

/-! ## A244983.P14086910112576181853

`A008619(A122111(record[A322820(n+1)]))`
-/

namespace A244983.P14086910112576181853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A122111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A244983.P14086910112576181853

namespace A244983

/-- `A008619(A122111(record[A322820(n+1)]))` -/
def P14086910112576181853.Spec : Prop :=
  ∀ n, P14086910112576181853.a n = A244983 (n + 1)

end A244983

/-!
# A244984: Permutation of natural numbers: a(n) = A243283(A122111((2*n)-1)).

The programs for A244984, the canonical program `A244984.P5508441702658228810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244984 has offset 1).

The definition of A244984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244984.P5508441702658228810

`A243283(A122111(2*(n+1)-1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A244984

/-- `A243283(A122111(2*(n+1)-1))` -/
def P5508441702658228810.Spec : Prop :=
  ∀ n, P5508441702658228810.a n = A244984 (n + 1)

theorem P5508441702658228810.correct : P5508441702658228810.Spec := by
  intro n
  simp only [A244984, Nat.add_sub_cancel]

end A244984

/-! ## A244984.P12987537060543940959

`A243283(A105560(2*(n+1)-1)*A243505(n+1))`
-/

namespace A244984.P12987537060543940959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A105560 (2 * (n + 1) - 1) * A243505 (n + 1)).toNat

end

end A244984.P12987537060543940959

namespace A244984

/-- `A243283(A105560(2*(n+1)-1)*A243505(n+1))` -/
def P12987537060543940959.Spec : Prop :=
  ∀ n, P12987537060543940959.a n = A244984 (n + 1)

end A244984

/-! ## A244984.P9815788906423939489

`A322826(A122111(Δ[n²]))`
-/

namespace A244984.P9815788906423939489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (A122111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A244984.P9815788906423939489

namespace A244984

/-- `A322826(A122111(Δ[n²]))` -/
def P9815788906423939489.Spec : Prop :=
  ∀ n, P9815788906423939489.a n = A244984 (n + 1)

end A244984

/-! ## A244984.P15340256765919775183

`A322826(A122111(2*n+1)%A215264(n+1))`
-/

namespace A244984.P15340256765919775183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (Int.tmod (A122111 (2 * n + 1)) (A215264 (n + 1))).toNat

end

end A244984.P15340256765919775183

namespace A244984

/-- `A322826(A122111(2*n+1)%A215264(n+1))` -/
def P15340256765919775183.Spec : Prop :=
  ∀ n, P15340256765919775183.a n = A244984 (n + 1)

end A244984

/-! ## A244984.P2312149016104392150

`A322826(A122111(2*n+1))%A328589(n+1)`
-/

namespace A244984.P2312149016104392150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322826 (A122111 (2 * n + 1)).toNat) (A328589 (n + 1))

end

end A244984.P2312149016104392150

namespace A244984

/-- `A322826(A122111(2*n+1))%A328589(n+1)` -/
def P2312149016104392150.Spec : Prop :=
  ∀ n, P2312149016104392150.a n = A244984 (n + 1)

end A244984

/-!
# A244985: Position of 2^n in A070003.

The programs for A244985, there is no canonical definition to state claims against.
-/

/-! ## A244985.P4556735872997048710

`A244986(n+2)-1`
-/

namespace A244985.P4556735872997048710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 (n + 2) - 1

end

end A244985.P4556735872997048710

/-! ## A244985.P2090517615327375507

`record[A244986(n)+A057428(n)]`
-/

namespace A244985.P2090517615327375507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244985.P2090517615327375507

/-! ## A244985.P7135143146615992434

`record[A244986(n)-A057427(n)]`
-/

namespace A244985.P7135143146615992434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244985.P7135143146615992434

/-! ## A244985.P16450038019480337419

`record[A244986(n)-A157928(n)]`
-/

namespace A244985.P16450038019480337419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 n - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244985.P16450038019480337419

/-! ## A244985.P2598011368655163123

`record[A244986(n)-A178334(n)]`
-/

namespace A244985.P2598011368655163123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244986 n - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244985.P2598011368655163123

/-!
# A244986: a(n) = Position of 2^n among the numbers which are divisible by the square of their highest noncomposite factor (i.e., the union of {1} and A070003), 0 if not there.

The programs for A244986, there is no canonical definition to state claims against.
-/

/-! ## A244986.P8310838800162034543

`A244985(A233583(n+1))-A134824(n)`
-/

namespace A244986.P8310838800162034543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244985 (A233583 (n + 1)).toNat - A134824 n

end

end A244986.P8310838800162034543

/-! ## A244986.P17655501553063931412

`A322826(2^n)-char[1]`
-/

namespace A244986.P17655501553063931412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (2 ^ n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A244986.P17655501553063931412

/-! ## A244986.P5233202798021109949

`A060576(n)*A322826(2^n)`
-/

namespace A244986.P5233202798021109949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A322826 (2 ^ n)

end

end A244986.P5233202798021109949

/-! ## A244986.P17638541666512759065

`A322826(2^n)%A000032(n)`
-/

namespace A244986.P17638541666512759065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322826 (2 ^ n)) (A000032 n)

end

end A244986.P17638541666512759065

/-! ## A244986.P16530490888245878568

`A243283(2^n)-char[1]`
-/

namespace A244986.P16530490888245878568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (2 ^ n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A244986.P16530490888245878568

/-!
# A244987: Self-inverse permutation of natural numbers, A245703-conjugate of Blue code: a(n) = A245704(A193231(A245703(n))).

The programs for A244987, there is no canonical definition to state claims against.
-/

/-! ## A244987.P8620488921556459102

`A245704(A193231(A245703(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244987.P8620488921556459102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A193231 (A245703 (n + 1)).toNat).toNat

end

end A244987.P8620488921556459102

/-!
# A244988: a(n) = n - A244989(n).

The programs for A244988, the canonical program `A244988.P2587826802008743872` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244988 has offset 1).

The definition of A244988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244988.P2587826802008743872

`n+1-A244989(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A244988

/-- `n+1-A244989(n+1)` -/
def P2587826802008743872.Spec : Prop :=
  ∀ n, P2587826802008743872.a n = A244988 (n + 1)

theorem P2587826802008743872.correct : P2587826802008743872.Spec := by
  intro n
  simp only [A244988, Nat.add_sub_cancel]

end A244988

/-! ## A244988.P11886979266695881

`∑[1-A244992(n+1)]`
-/

namespace A244988.P11886979266695881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P11886979266695881

namespace A244988

/-- `∑[1-A244992(n+1)]` -/
def P11886979266695881.Spec : Prop :=
  ∀ n, P11886979266695881.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P6254927194513429000

`∑[A159081(n+1)%2]`
-/

namespace A244988.P6254927194513429000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159081 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P6254927194513429000

namespace A244988

/-- `∑[A159081(n+1)%2]` -/
def P6254927194513429000.Spec : Prop :=
  ∀ n, P6254927194513429000.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P3981476033234826158

`∑[A244321(n+1)%2]`
-/

namespace A244988.P3981476033234826158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244321 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P3981476033234826158

namespace A244988

/-- `∑[A244321(n+1)%2]` -/
def P3981476033234826158.Spec : Prop :=
  ∀ n, P3981476033234826158.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P4025913009816235837

`∑[char[A244990(n+1)-1]]`
-/

namespace A244988.P4025913009816235837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244990 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P4025913009816235837

namespace A244988

/-- `∑[char[A244990(n+1)-1]]` -/
def P4025913009816235837.Spec : Prop :=
  ∀ n, (P4025913009816235837.a n : ℤ) = A244988 (n + 1)

end A244988

/-! ## A244988.P9750402699729934966

`∑[(A061395(n+1)+1)%2]`
-/

namespace A244988.P9750402699729934966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P9750402699729934966

namespace A244988

/-- `∑[(A061395(n+1)+1)%2]` -/
def P9750402699729934966.Spec : Prop :=
  ∀ n, P9750402699729934966.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P3497545125316438234

`∑[A252735(n+1)%2]+1`
-/

namespace A244988.P3497545125316438234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252735 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A244988.P3497545125316438234

namespace A244988

/-- `∑[A252735(n+1)%2]+1` -/
def P3497545125316438234.Spec : Prop :=
  ∀ n, P3497545125316438234.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P11802716134704723558

`∑[and(1, A243291(n+1)+n)]`
-/

namespace A244988.P11802716134704723558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243291 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P11802716134704723558

namespace A244988

/-- `∑[and(1, A243291(n+1)+n)]` -/
def P11802716134704723558.Spec : Prop :=
  ∀ n, P11802716134704723558.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P10073443146217172023

`∑[1-a(A064989(n+1)-1)]` with `a(0)=1`
-/

namespace A244988.P10073443146217172023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (A064989 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P10073443146217172023

namespace A244988

/-- `∑[1-a(A064989(n+1)-1)]` -/
def P10073443146217172023.Spec : Prop :=
  ∀ n, P10073443146217172023.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P949895167738716966

`∑[A065043(A245614(n+1))]`
-/

namespace A244988.P949895167738716966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A245614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P949895167738716966

namespace A244988

/-- `∑[A065043(A245614(n+1))]` -/
def P949895167738716966.Spec : Prop :=
  ∀ n, P949895167738716966.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P4815765661009508202

`∑[A000035(A061395(n+1)+1)]`
-/

namespace A244988.P4815765661009508202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P4815765661009508202

namespace A244988

/-- `∑[A000035(A061395(n+1)+1)]` -/
def P4815765661009508202.Spec : Prop :=
  ∀ n, P4815765661009508202.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P3453915038073970621

`∑[1-A071986(A006530(n+1))]`
-/

namespace A244988.P3453915038073970621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071986 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P3453915038073970621

namespace A244988

/-- `∑[1-A071986(A006530(n+1))]` -/
def P3453915038073970621.Spec : Prop :=
  ∀ n, P3453915038073970621.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P15160823729861062629

`∑[1-A324966(A053585(n+1))]`
-/

namespace A244988.P15160823729861062629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324966 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P15160823729861062629

namespace A244988

/-- `∑[1-A324966(A053585(n+1))]` -/
def P15160823729861062629.Spec : Prop :=
  ∀ n, P15160823729861062629.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P17317744496283003353

`∑[1-A324966(A345941(n+1))]`
-/

namespace A244988.P17317744496283003353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324966 (A345941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P17317744496283003353

namespace A244988

/-- `∑[1-A324966(A345941(n+1))]` -/
def P17317744496283003353.Spec : Prop :=
  ∀ n, P17317744496283003353.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P17527940614108437921

`∑[A066829(2*A245614(n+1))]`
-/

namespace A244988.P17527940614108437921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * A245614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P17527940614108437921

namespace A244988

/-- `∑[A066829(2*A245614(n+1))]` -/
def P17527940614108437921.Spec : Prop :=
  ∀ n, P17527940614108437921.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P12972714151446551847

`∑[1-and(A057427(n), A061395(n+1))]`
-/

namespace A244988.P12972714151446551847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A057427 n) (A061395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P12972714151446551847

namespace A244988

/-- `∑[1-and(A057427(n), A061395(n+1))]` -/
def P12972714151446551847.Spec : Prop :=
  ∀ n, P12972714151446551847.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P2989201999899169310

`∑[gcd(2, A063084(A006530(n+1)+1))]-n`
-/

namespace A244988.P2989201999899169310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A063084 (A006530 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A244988.P2989201999899169310

namespace A244988

/-- `∑[gcd(2, A063084(A006530(n+1)+1))]-n` -/
def P2989201999899169310.Spec : Prop :=
  ∀ n, P2989201999899169310.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P2106951488763948457

`∑[A000035(A244321(n+1))]`
-/

namespace A244988.P2106951488763948457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244321 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P2106951488763948457

namespace A244988

/-- `∑[A000035(A244321(n+1))]` -/
def P2106951488763948457.Spec : Prop :=
  ∀ n, P2106951488763948457.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P7110632154037017194

`∑[A075160(n+1)%2]`
-/

namespace A244988.P7110632154037017194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075160 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P7110632154037017194

namespace A244988

/-- `∑[A075160(n+1)%2]` -/
def P7110632154037017194.Spec : Prop :=
  ∀ n, P7110632154037017194.a n = A244988 (n + 1)

end A244988

/-! ## A244988.P698718081786954890

`∑[A135481((A061395(n+1)+1)²)]`
-/

namespace A244988.P698718081786954890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 ((A061395 (n + 1) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244988.P698718081786954890

namespace A244988

/-- `∑[A135481((A061395(n+1)+1)²)]` -/
def P698718081786954890.Spec : Prop :=
  ∀ n, P698718081786954890.a n = A244988 (n + 1)

end A244988

/-!
# A244989: Partial sums of A244992: a(1) = 0, and for n >= 1, a(n) = A244992(n) + a(n-1); Inverse function for A244991.

The programs for A244989, the canonical program `A244989.P11146243338766296153` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244989 has offset 1).

The definition of A244989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244989.P3305847309718885710

`n+1-A244988(n+1)`
-/

namespace A244989.P3305847309718885710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A244988 (n + 1)

end

end A244989.P3305847309718885710

namespace A244989

/-- `n+1-A244988(n+1)` -/
def P3305847309718885710.Spec : Prop :=
  ∀ n, P3305847309718885710.a n = A244989 (n + 1)

theorem P3305847309718885710.correct : P3305847309718885710.Spec := by
  intro n
  simp only [A244989, Nat.add_sub_cancel, A244989.P3305847309718885710.a, A244989.P11146243338766296153.a, A244988, A244988.P2587826802008743872.a, A244992, A244992.P11847278491513242211.a, A000035, A000035.P2023072528413494694.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244989

/-! ## A244989.P11146243338766296153

`A244992(n+1)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A244989

/-- `A244992(n+1)+a(n-1)` -/
def P11146243338766296153.Spec : Prop :=
  ∀ n, P11146243338766296153.a n = A244989 (n + 1)

theorem P11146243338766296153.correct : P11146243338766296153.Spec := by
  intro n
  simp only [A244989, Nat.add_sub_cancel]

end A244989

/-! ## A244989.P12599951469068331464

`∑[A244992(n+1)]`
-/

namespace A244989.P12599951469068331464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P12599951469068331464

namespace A244989

/-- `∑[A244992(n+1)]` -/
def P12599951469068331464.Spec : Prop :=
  ∀ n, P12599951469068331464.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P8564155937976386383

`∑[A061395(1+n)%2]`
-/

namespace A244989.P8564155937976386383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (1 + n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P8564155937976386383

namespace A244989

/-- `∑[A061395(1+n)%2]` -/
def P8564155937976386383.Spec : Prop :=
  ∀ n, P8564155937976386383.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P17586983084128668094

`∑[char[A244991(n+1)-1]]`
-/

namespace A244989.P17586983084128668094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P17586983084128668094

namespace A244989

/-- `∑[char[A244991(n+1)-1]]` -/
def P17586983084128668094.Spec : Prop :=
  ∀ n, (P17586983084128668094.a n : ℤ) = A244989 (n + 1)

end A244989

/-! ## A244989.P5564140743124082040

`∑[and(1, n+1-A243291(n+1))]`
-/

namespace A244989.P5564140743124082040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) - A243291 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P5564140743124082040

namespace A244989

/-- `∑[and(1, n+1-A243291(n+1))]` -/
def P5564140743124082040.Spec : Prop :=
  ∀ n, P5564140743124082040.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P6377079560963611494

`∑[A000035(A061395(n+1))]`
-/

namespace A244989.P6377079560963611494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P6377079560963611494

namespace A244989

/-- `∑[A000035(A061395(n+1))]` -/
def P6377079560963611494.Spec : Prop :=
  ∀ n, P6377079560963611494.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P4599702780648710778

`∑[A071986(A006530(n+1))]`
-/

namespace A244989.P4599702780648710778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P4599702780648710778

namespace A244989

/-- `∑[A071986(A006530(n+1))]` -/
def P4599702780648710778.Spec : Prop :=
  ∀ n, P4599702780648710778.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P16610507834781234137

`∑[A066829(A245614(n+1))]`
-/

namespace A244989.P16610507834781234137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A245614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P16610507834781234137

namespace A244989

/-- `∑[A066829(A245614(n+1))]` -/
def P16610507834781234137.Spec : Prop :=
  ∀ n, P16610507834781234137.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P1919554321112807785

`∑[A324966(A053585(n+1))]`
-/

namespace A244989.P1919554321112807785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P1919554321112807785

namespace A244989

/-- `∑[A324966(A053585(n+1))]` -/
def P1919554321112807785.Spec : Prop :=
  ∀ n, P1919554321112807785.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P13625834546639522976

`∑[A324966(A345941(n+1))]`
-/

namespace A244989.P13625834546639522976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A345941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P13625834546639522976

namespace A244989

/-- `∑[A324966(A345941(n+1))]` -/
def P13625834546639522976.Spec : Prop :=
  ∀ n, P13625834546639522976.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P16127399810637048369

`∑[A014707(2*A061395(n+1))]`
-/

namespace A244989.P16127399810637048369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P16127399810637048369

namespace A244989

/-- `∑[A014707(2*A061395(n+1))]` -/
def P16127399810637048369.Spec : Prop :=
  ∀ n, P16127399810637048369.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P4945923605368177811

`∑[A065043(2*A245614(n+1))]`
-/

namespace A244989.P4945923605368177811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * A245614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P4945923605368177811

namespace A244989

/-- `∑[A065043(2*A245614(n+1))]` -/
def P4945923605368177811.Spec : Prop :=
  ∀ n, P4945923605368177811.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P17186601519205554963

`∑[and(A057427(n), A061395(n+1))]`
-/

namespace A244989.P17186601519205554963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A061395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P17186601519205554963

namespace A244989

/-- `∑[and(A057427(n), A061395(n+1))]` -/
def P17186601519205554963.Spec : Prop :=
  ∀ n, P17186601519205554963.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P10079985099556656295

`∑[A005563(n-A243291(n+1)+1)%2]`
-/

namespace A244989.P10079985099556656295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 ((n : ℤ) - A243291 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P10079985099556656295

namespace A244989

/-- `∑[A005563(n-A243291(n+1)+1)%2]` -/
def P10079985099556656295.Spec : Prop :=
  ∀ n, P10079985099556656295.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P7719051831669011670

`∑[A000035(A244321(n+1)+1)]`
-/

namespace A244989.P7719051831669011670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244321 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P7719051831669011670

namespace A244989

/-- `∑[A000035(A244321(n+1)+1)]` -/
def P7719051831669011670.Spec : Prop :=
  ∀ n, P7719051831669011670.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P16967776685185291206

`∑[A066829(A245604(A244321(n+1)))]`
-/

namespace A244989.P16967776685185291206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A245604 (A244321 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P16967776685185291206

namespace A244989

/-- `∑[A066829(A245604(A244321(n+1)))]` -/
def P16967776685185291206.Spec : Prop :=
  ∀ n, P16967776685185291206.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P1860065431172768688

`∑[A075158(n)%2]`
-/

namespace A244989.P1860065431172768688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075158 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P1860065431172768688

namespace A244989

/-- `∑[A075158(n)%2]` -/
def P1860065431172768688.Spec : Prop :=
  ∀ n, P1860065431172768688.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P18330959936424073708

`∑[A135481(A061395(n+1)²)]`
-/

namespace A244989.P18330959936424073708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A061395 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P18330959936424073708

namespace A244989

/-- `∑[A135481(A061395(n+1)²)]` -/
def P18330959936424073708.Spec : Prop :=
  ∀ n, P18330959936424073708.a n = A244989 (n + 1)

end A244989

/-! ## A244989.P16889691531375810829

`∑[A096268(A061395(n+1)²)]`
-/

namespace A244989.P16889691531375810829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A061395 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244989.P16889691531375810829

namespace A244989

/-- `∑[A096268(A061395(n+1)²)]` -/
def P16889691531375810829.Spec : Prop :=
  ∀ n, P16889691531375810829.a n = A244989 (n + 1)

end A244989

/-!
# A244990: After 1, numbers whose greatest prime factor is a prime with an even index; n such that A061395(n) is even.

The programs for A244990, the canonical program `A244990.P8837512019982970087` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244990 has offset 1).

The definition of A244990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244990.P16198110063282783186

`comp[A244991(n+1)-1]+1`
-/

namespace A244990.P16198110063282783186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A244990.P16198110063282783186

namespace A244990

/-- `comp[A244991(n+1)-1]+1` -/
def P16198110063282783186.Spec : Prop :=
  ∀ n, (P16198110063282783186.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P8837512019982970087

`eq[0, A061395(n+1)%2]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A244990

/-- `eq[0, A061395(n+1)%2]+1` -/
def P8837512019982970087.Spec : Prop :=
  ∀ n, (P8837512019982970087.a n : ℤ) = A244990 (n + 1)

theorem P8837512019982970087.correct : P8837512019982970087.Spec := by
  intro n
  simp only [A244990, Nat.add_sub_cancel]

end A244990

/-! ## A244990.P14239477376808252156

`eq[2, gcd(2, A061395(n*a(n-1)))]` with `a(0)=1, a(1)=2`
-/

namespace A244990.P14239477376808252156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  Int.gcd 2 (A061395 (n * f2 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244990.P14239477376808252156

namespace A244990

/-- `eq[2, gcd(2, A061395(n*a(n-1)))]` -/
def P14239477376808252156.Spec : Prop :=
  ∀ n, (P14239477376808252156.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P13609361626395599276

`eq[1, A059841(A061395(n+1))]+1`
-/

namespace A244990.P13609361626395599276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244990.P13609361626395599276

namespace A244990

/-- `eq[1, A059841(A061395(n+1))]+1` -/
def P13609361626395599276.Spec : Prop :=
  ∀ n, (P13609361626395599276.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P16565302822952857619

`lt[2, A102457(A061395(n+1)+2)]+1`
-/

namespace A244990.P16565302822952857619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (A061395 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A244990.P16565302822952857619

namespace A244990

/-- `lt[2, A102457(A061395(n+1)+2)]+1` -/
def P16565302822952857619.Spec : Prop :=
  ∀ n, (P16565302822952857619.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P16346879140440702661

`record[(n+1)/A055396(A061395(n+1)+2)]`
-/

namespace A244990.P16346879140440702661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055396 (A061395 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244990.P16346879140440702661

namespace A244990

/-- `record[(n+1)/A055396(A061395(n+1)+2)]` -/
def P16346879140440702661.Spec : Prop :=
  ∀ n, P16346879140440702661.a n = (A244990 (n + 1) : ℚ)

end A244990

/-! ## A244990.P10755425585846439360

`record[(n+1)/A055399(A061395(n+1)+4)]`
-/

namespace A244990.P10755425585846439360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055399 (A061395 (n + 1) + 4).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244990.P10755425585846439360

namespace A244990

/-- `record[(n+1)/A055399(A061395(n+1)+4)]` -/
def P10755425585846439360.Spec : Prop :=
  ∀ n, P10755425585846439360.a n = (A244990 (n + 1) : ℚ)

end A244990

/-! ## A244990.P5727291005162923217

`eq[0, A244992(n+1)]+1`
-/

namespace A244990.P5727291005162923217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244990.P5727291005162923217

namespace A244990

/-- `eq[0, A244992(n+1)]+1` -/
def P5727291005162923217.Spec : Prop :=
  ∀ n, (P5727291005162923217.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P14200119721882102172

`eq[1, A244321(n+1)%2]+1`
-/

namespace A244990.P14200119721882102172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244321 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244990.P14200119721882102172

namespace A244990

/-- `eq[1, A244321(n+1)%2]+1` -/
def P14200119721882102172.Spec : Prop :=
  ∀ n, (P14200119721882102172.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P14672078801987330372

`eq[1, A000007(a(A064989(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A244990.P14672078801987330372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000007 (f2 (A064989 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244990.P14672078801987330372

namespace A244990

/-- `eq[1, A000007(a(A064989(n)))]` -/
def P14672078801987330372.Spec : Prop :=
  ∀ n, (P14672078801987330372.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P22587600118288495

`eq[1, A008836(A245614(n+1))]+1`
-/

namespace A244990.P22587600118288495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A245614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244990.P22587600118288495

namespace A244990

/-- `eq[1, A008836(A245614(n+1))]+1` -/
def P22587600118288495.Spec : Prop :=
  ∀ n, (P22587600118288495.a n : ℤ) = A244990 (n + 1)

end A244990

/-! ## A244990.P16046507776831720770

`record[A054576(A390988(n+1))]`
-/

namespace A244990.P16046507776831720770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A390988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244990.P16046507776831720770

namespace A244990

/-- `record[A054576(A390988(n+1))]` -/
def P16046507776831720770.Spec : Prop :=
  ∀ n, P16046507776831720770.a n = A244990 (n + 1)

end A244990

/-!
# A244991: Numbers whose greatest prime factor is a prime with an odd index; n such that A006530(n) is in A031368.

The programs for A244991, the canonical program `A244991.P9429980419197300237` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244991 has offset 1).

The definition of A244991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244991.P9429980419197300237

`eq[1, A061395(n+1)%2]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A244991

/-- `eq[1, A061395(n+1)%2]+1` -/
def P9429980419197300237.Spec : Prop :=
  ∀ n, (P9429980419197300237.a n : ℤ) = A244991 (n + 1)

theorem P9429980419197300237.correct : P9429980419197300237.Spec := by
  intro n
  simp only [A244991, Nat.add_sub_cancel]

end A244991

/-! ## A244991.P13377638524130317807

`eq[1, gcd(2, A061395(n+2))]+2`
-/

namespace A244991.P13377638524130317807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A061395 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A244991.P13377638524130317807

namespace A244991

/-- `eq[1, gcd(2, A061395(n+2))]+2` -/
def P13377638524130317807.Spec : Prop :=
  ∀ n, (P13377638524130317807.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P14808027125312468703

`eq[1, A000035(A061395(n+1))]+1`
-/

namespace A244991.P14808027125312468703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P14808027125312468703

namespace A244991

/-- `eq[1, A000035(A061395(n+1))]+1` -/
def P14808027125312468703.Spec : Prop :=
  ∀ n, (P14808027125312468703.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P393674271419186225

`comp[A244990(n+1)-1]+1`
-/

namespace A244991.P393674271419186225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244990 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A244991.P393674271419186225

namespace A244991

/-- `comp[A244990(n+1)-1]+1` -/
def P393674271419186225.Spec : Prop :=
  ∀ n, (P393674271419186225.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P6311511046277002496

`eq[1, A244992(n+1)]+1`
-/

namespace A244991.P6311511046277002496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P6311511046277002496

namespace A244991

/-- `eq[1, A244992(n+1)]+1` -/
def P6311511046277002496.Spec : Prop :=
  ∀ n, (P6311511046277002496.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P16371829771395158165

`record[(n+2)*A244992(n+2)]`
-/

namespace A244991.P16371829771395158165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A244992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244991.P16371829771395158165

namespace A244991

/-- `record[(n+2)*A244992(n+2)]` -/
def P16371829771395158165.Spec : Prop :=
  ∀ n, P16371829771395158165.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P2017433272723273482

`lt[A244321(n+1)%2, 1]+1`
-/

namespace A244991.P2017433272723273482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244321 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244991.P2017433272723273482

namespace A244991

/-- `lt[A244321(n+1)%2, 1]+1` -/
def P2017433272723273482.Spec : Prop :=
  ∀ n, (P2017433272723273482.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P11573655580455511073

`filter[A344180(n), A244992(#)]`
-/

namespace A244991.P11573655580455511073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P11573655580455511073

namespace A244991

/-- `filter[A344180(n), A244992(#)]` -/
def P11573655580455511073.Spec : Prop :=
  ∀ n, P11573655580455511073.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P4817997973259181492

`A020725(eq[1, A244992(n+1)])`
-/

namespace A244991.P4817997973259181492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244991.P4817997973259181492

namespace A244991

/-- `A020725(eq[1, A244992(n+1)])` -/
def P4817997973259181492.Spec : Prop :=
  ∀ n, P4817997973259181492.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P4599478113792389775

`eq[1, A066829(A245614(n+1))]+1`
-/

namespace A244991.P4599478113792389775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A245614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A244991.P4599478113792389775

namespace A244991

/-- `eq[1, A066829(A245614(n+1))]+1` -/
def P4599478113792389775.Spec : Prop :=
  ∀ n, (P4599478113792389775.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P11645781699514545126

`eq[1, A286648(Δ[A244988(n+1)])]+2`
-/

namespace A244991.P11645781699514545126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286648 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A244991.P11645781699514545126

namespace A244991

/-- `eq[1, A286648(Δ[A244988(n+1)])]+2` -/
def P11645781699514545126.Spec : Prop :=
  ∀ n, (P11645781699514545126.a n : ℤ) = A244991 (n + 1)

end A244991

/-! ## A244991.P14799599204165838782

`A244322(2*A244321(n+1))`
-/

namespace A244991.P14799599204165838782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244322 (2 * A244321 (n + 1)).toNat

end

end A244991.P14799599204165838782

namespace A244991

/-- `A244322(2*A244321(n+1))` -/
def P14799599204165838782.Spec : Prop :=
  ∀ n, P14799599204165838782.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P12685025945757423579

`A244322(A244321(n+1)+A244321(n+1))`
-/

namespace A244991.P12685025945757423579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244322 (A244321 (n + 1) + A244321 (n + 1)).toNat

end

end A244991.P12685025945757423579

namespace A244991

/-- `A244322(A244321(n+1)+A244321(n+1))` -/
def P12685025945757423579.Spec : Prop :=
  ∀ n, P12685025945757423579.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P2535701213424700027

`filter[A092942(n+1), A244992(#)]`
-/

namespace A244991.P2535701213424700027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P2535701213424700027

namespace A244991

/-- `filter[A092942(n+1), A244992(#)]` -/
def P2535701213424700027.Spec : Prop :=
  ∀ n, P2535701213424700027.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P11018186789946174098

`filter[A152271(n), A244992(#)]`
-/

namespace A244991.P11018186789946174098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P11018186789946174098

namespace A244991

/-- `filter[A152271(n), A244992(#)]` -/
def P11018186789946174098.Spec : Prop :=
  ∀ n, P11018186789946174098.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P13648617402699604404

`filter[A158416(n), A244992(#)]`
-/

namespace A244991.P13648617402699604404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P13648617402699604404

namespace A244991

/-- `filter[A158416(n), A244992(#)]` -/
def P13648617402699604404.Spec : Prop :=
  ∀ n, P13648617402699604404.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P11863920077167361613

`filter[A282738(n), A244992(#)]`
-/

namespace A244991.P11863920077167361613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P11863920077167361613

namespace A244991

/-- `filter[A282738(n), A244992(#)]` -/
def P11863920077167361613.Spec : Prop :=
  ∀ n, P11863920077167361613.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P3611157567149831267

`filter[A133622(n+1), A244992(#)]`
-/

namespace A244991.P3611157567149831267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P3611157567149831267

namespace A244991

/-- `filter[A133622(n+1), A244992(#)]` -/
def P3611157567149831267.Spec : Prop :=
  ∀ n, P3611157567149831267.a n = A244991 (n + 1)

end A244991

/-! ## A244991.P5126629048786261903

`filter[A065682(n+2), A244992(#)]`
-/

namespace A244991.P5126629048786261903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A244991.P5126629048786261903

namespace A244991

/-- `filter[A065682(n+2), A244992(#)]` -/
def P5126629048786261903.Spec : Prop :=
  ∀ n, P5126629048786261903.a n = A244991 (n + 1)

end A244991

/-!
# A244992: Characteristic function for A244991: a(n) = A000035(A061395(n)).

The programs for A244992, the canonical program `A244992.P11847278491513242211` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244992 has offset 1).

The definition of A244992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244992.P11847278491513242211

`A000035(A061395(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A244992

/-- `A000035(A061395(n+1))` -/
def P11847278491513242211.Spec : Prop :=
  ∀ n, P11847278491513242211.a n = A244992 (n + 1)

theorem P11847278491513242211.correct : P11847278491513242211.Spec := by
  intro n
  simp only [A244992, Nat.add_sub_cancel]

end A244992

/-! ## A244992.P14586000622781993105

`1-A000035(A244321(n+1))`
-/

namespace A244992.P14586000622781993105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 (A244321 (n + 1)).toNat

end

end A244992.P14586000622781993105

namespace A244992

/-- `1-A000035(A244321(n+1))` -/
def P14586000622781993105.Spec : Prop :=
  ∀ n, P14586000622781993105.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P3590283259356619828

`A066829(A122111(n+1))`
-/

namespace A244992.P3590283259356619828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A122111 (n + 1)).toNat

end

end A244992.P3590283259356619828

namespace A244992

/-- `A066829(A122111(n+1))` -/
def P3590283259356619828.Spec : Prop :=
  ∀ n, P3590283259356619828.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P10093717331418972161

`A061395(1+n)%2`
-/

namespace A244992.P10093717331418972161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (1 + n)) 2

end

end A244992.P10093717331418972161

namespace A244992

/-- `A061395(1+n)%2` -/
def P10093717331418972161.Spec : Prop :=
  ∀ n, P10093717331418972161.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P5549719593728052595

`char[A244991(n+1)-1]`
-/

namespace A244992.P5549719593728052595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A244992.P5549719593728052595

namespace A244992

/-- `char[A244991(n+1)-1]` -/
def P5549719593728052595.Spec : Prop :=
  ∀ n, (P5549719593728052595.a n : ℤ) = A244992 (n + 1)

end A244992

/-! ## A244992.P14169398694520752093

`(1-A243291(n+1)+n)%2`
-/

namespace A244992.P14169398694520752093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A243291 (n + 1) + (n : ℤ)) 2

end

end A244992.P14169398694520752093

namespace A244992

/-- `(1-A243291(n+1)+n)%2` -/
def P14169398694520752093.Spec : Prop :=
  ∀ n, P14169398694520752093.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P16143989089634812353

`and(1, A061395(record[2-xor(1, -n)]))`
-/

namespace A244992.P16143989089634812353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244992.P16143989089634812353

namespace A244992

/-- `and(1, A061395(record[2-xor(1, -n)]))` -/
def P16143989089634812353.Spec : Prop :=
  ∀ n, P16143989089634812353.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P17654393501510814504

`A071986(A006530(n+1))`
-/

namespace A244992.P17654393501510814504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A006530 (n + 1)).toNat

end

end A244992.P17654393501510814504

namespace A244992

/-- `A071986(A006530(n+1))` -/
def P17654393501510814504.Spec : Prop :=
  ∀ n, P17654393501510814504.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P4860472211916602557

`A059841(A159081(n+1))`
-/

namespace A244992.P4860472211916602557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A159081 (n + 1)).toNat

end

end A244992.P4860472211916602557

namespace A244992

/-- `A059841(A159081(n+1))` -/
def P4860472211916602557.Spec : Prop :=
  ∀ n, P4860472211916602557.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P14793016633166750334

`A066829(A245614(n+1))`
-/

namespace A244992.P14793016633166750334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A245614 (n + 1)).toNat

end

end A244992.P14793016633166750334

namespace A244992

/-- `A066829(A245614(n+1))` -/
def P14793016633166750334.Spec : Prop :=
  ∀ n, P14793016633166750334.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P7527270242940005401

`A324966(A053585(n+1))`
-/

namespace A244992.P7527270242940005401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A053585 (n + 1)).toNat

end

end A244992.P7527270242940005401

namespace A244992

/-- `A324966(A053585(n+1))` -/
def P7527270242940005401.Spec : Prop :=
  ∀ n, P7527270242940005401.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P15137667602003421433

`A324966(A345941(n+1))`
-/

namespace A244992.P15137667602003421433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A345941 (n + 1)).toNat

end

end A244992.P15137667602003421433

namespace A244992

/-- `A324966(A345941(n+1))` -/
def P15137667602003421433.Spec : Prop :=
  ∀ n, P15137667602003421433.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P948306067146060496

`A059841(A061395(n+1)+1)`
-/

namespace A244992.P948306067146060496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A061395 (n + 1) + 1).toNat

end

end A244992.P948306067146060496

namespace A244992

/-- `A059841(A061395(n+1)+1)` -/
def P948306067146060496.Spec : Prop :=
  ∀ n, P948306067146060496.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P7912369557138216648

`A014707(2*A061395(n+1))`
-/

namespace A244992.P7912369557138216648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A061395 (n + 1)).toNat

end

end A244992.P7912369557138216648

namespace A244992

/-- `A014707(2*A061395(n+1))` -/
def P7912369557138216648.Spec : Prop :=
  ∀ n, P7912369557138216648.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P16280836573647284102

`A021913(2*A061395(n+1))`
-/

namespace A244992.P16280836573647284102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (2 * A061395 (n + 1)).toNat

end

end A244992.P16280836573647284102

namespace A244992

/-- `A021913(2*A061395(n+1))` -/
def P16280836573647284102.Spec : Prop :=
  ∀ n, P16280836573647284102.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P15768629655630751959

`A065043(2*A245614(n+1))`
-/

namespace A244992.P15768629655630751959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * A245614 (n + 1)).toNat

end

end A244992.P15768629655630751959

namespace A244992

/-- `A065043(2*A245614(n+1))` -/
def P15768629655630751959.Spec : Prop :=
  ∀ n, P15768629655630751959.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P4354018827506725906

`A087712(n+1)%A040000(n)`
-/

namespace A244992.P4354018827506725906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (n + 1)) (A040000 n)

end

end A244992.P4354018827506725906

namespace A244992

/-- `A087712(n+1)%A040000(n)` -/
def P4354018827506725906.Spec : Prop :=
  ∀ n, P4354018827506725906.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P850981222525569586

`A134451(A061395(n+1)+1)-1`
-/

namespace A244992.P850981222525569586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A061395 (n + 1) + 1).toNat - 1

end

end A244992.P850981222525569586

namespace A244992

/-- `A134451(A061395(n+1)+1)-1` -/
def P850981222525569586.Spec : Prop :=
  ∀ n, P850981222525569586.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P20533378238342062

`A021913(or(2, A061395(n+1))-1)`
-/

namespace A244992.P20533378238342062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (Int.lor 2 (A061395 (n + 1)) - 1).toNat

end

end A244992.P20533378238342062

namespace A244992

/-- `A021913(or(2, A061395(n+1))-1)` -/
def P20533378238342062.Spec : Prop :=
  ∀ n, P20533378238342062.a n = A244992 (n + 1)

end A244992

/-! ## A244992.P16590513283493101145

`A257991((n+1)/A052126(n+1))`
-/

namespace A244992.P16590513283493101145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A244992.P16590513283493101145

namespace A244992

/-- `A257991((n+1)/A052126(n+1))` -/
def P16590513283493101145.Spec : Prop :=
  ∀ n, P16590513283493101145.a n = A244992 (n + 1)

end A244992

