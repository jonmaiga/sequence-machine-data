import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A055003: a(n) = prime(prime(n)-1).

The programs for A055003, the canonical program `A055003.P16368500312500081187` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055003 has offset 1).

The definition of A055003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055003.P9371837158321913968

`A140853(n+1)+1`
-/

namespace A055003.P9371837158321913968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (n + 1) + 1

end

end A055003.P9371837158321913968

namespace A055003

/-- `A140853(n+1)+1` -/
def P9371837158321913968.Spec : Prop :=
  ∀ n, P9371837158321913968.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P694854280705185770

`A275990(n+1)+A000040(n+1)`
-/

namespace A055003.P694854280705185770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + A000040 (n + 1)

end

end A055003.P694854280705185770

namespace A055003

/-- `A275990(n+1)+A000040(n+1)` -/
def P694854280705185770.Spec : Prop :=
  ∀ n, P694854280705185770.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P13066873613069312771

`A275990(n+1)+A008864(n+1)-1`
-/

namespace A055003.P13066873613069312771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + (A008864 (n + 1) - 1)

end

end A055003.P13066873613069312771

namespace A055003

/-- `A275990(n+1)+A008864(n+1)-1` -/
def P13066873613069312771.Spec : Prop :=
  ∀ n, P13066873613069312771.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P8250152891445156384

`A275990(n+1)+A040976(n+1)+2`
-/

namespace A055003.P8250152891445156384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275990 (n + 1) + (A040976 (n + 1) + 2)

end

end A055003.P8250152891445156384

namespace A055003

/-- `A275990(n+1)+A040976(n+1)+2` -/
def P8250152891445156384.Spec : Prop :=
  ∀ n, P8250152891445156384.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P8711023649711464330

`A006450(n+1)+A275990(n+1)-A168152(n+1)`
-/

namespace A055003.P8711023649711464330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A275990 (n + 1) - A168152 (n + 1))

end

end A055003.P8711023649711464330

namespace A055003

/-- `A006450(n+1)+A275990(n+1)-A168152(n+1)` -/
def P8711023649711464330.Spec : Prop :=
  ∀ n, P8711023649711464330.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P16368500312500081187

`A175248(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055003

/-- `A175248(n+2)` -/
def P16368500312500081187.Spec : Prop :=
  ∀ n, P16368500312500081187.a n = A055003 (n + 1)

theorem P16368500312500081187.correct : P16368500312500081187.Spec := by
  intro n
  simp only [A055003, Nat.add_sub_cancel]

end A055003

/-! ## A055003.P13847519569049392966

`A001748(A006093(n+1))/3`
-/

namespace A055003.P13847519569049392966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A006093 (n + 1)).toNat : ℚ) / 3

end

end A055003.P13847519569049392966

namespace A055003

/-- `A001748(A006093(n+1))/3` -/
def P13847519569049392966.Spec : Prop :=
  ∀ n, P13847519569049392966.a n = (A055003 (n + 1) : ℚ)

end A055003

/-! ## A055003.P16965604280222710342

`record[A048848(n+1)]`
-/

namespace A055003.P16965604280222710342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055003.P16965604280222710342

namespace A055003

/-- `record[A048848(n+1)]` -/
def P16965604280222710342.Spec : Prop :=
  ∀ n, P16965604280222710342.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P9430004939441541775

`p?[A290641(n+1)]`
-/

namespace A055003.P9430004939441541775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055003.P9430004939441541775

namespace A055003

/-- `p?[A290641(n+1)]` -/
def P9430004939441541775.Spec : Prop :=
  ∀ n, P9430004939441541775.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P1305746620362034714

`A008578(p?[comp[n²]])`
-/

namespace A055003.P1305746620362034714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A055003.P1305746620362034714

namespace A055003

/-- `A008578(p?[comp[n²]])` -/
def P1305746620362034714.Spec : Prop :=
  ∀ n, P1305746620362034714.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P4214390101095532857

`A182986(p?[comp[n²]])`
-/

namespace A055003.P4214390101095532857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A055003.P4214390101095532857

namespace A055003

/-- `A182986(p?[comp[n²]])` -/
def P4214390101095532857.Spec : Prop :=
  ∀ n, P4214390101095532857.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P13701799333019535088

`p?[record[A143444(n+1)]]`
-/

namespace A055003.P13701799333019535088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055003.P13701799333019535088

namespace A055003

/-- `p?[record[A143444(n+1)]]` -/
def P13701799333019535088.Spec : Prop :=
  ∀ n, P13701799333019535088.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P8513640839216579871

`A008578(Δ[A007504(n)])`
-/

namespace A055003.P8513640839216579871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n).toNat

end

end A055003.P8513640839216579871

namespace A055003

/-- `A008578(Δ[A007504(n)])` -/
def P8513640839216579871.Spec : Prop :=
  ∀ n, P8513640839216579871.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P2021300903592285019

`A182986(Δ[A007504(n)])`
-/

namespace A055003.P2021300903592285019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (n + 1) - f1 n).toNat

end

end A055003.P2021300903592285019

namespace A055003

/-- `A182986(Δ[A007504(n)])` -/
def P2021300903592285019.Spec : Prop :=
  ∀ n, P2021300903592285019.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P5073155865967814170

`A000040(record[A037225(n)])`
-/

namespace A055003.P5073155865967814170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055003.P5073155865967814170

namespace A055003

/-- `A000040(record[A037225(n)])` -/
def P5073155865967814170.Spec : Prop :=
  ∀ n, P5073155865967814170.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P5326648175879683339

`A008578(record[A162753(n)])`
-/

namespace A055003.P5326648175879683339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055003.P5326648175879683339

namespace A055003

/-- `A008578(record[A162753(n)])` -/
def P5326648175879683339.Spec : Prop :=
  ∀ n, P5326648175879683339.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P14361271973714520891

`p?[A158611(A028815(n))]`
-/

namespace A055003.P14361271973714520891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055003.P14361271973714520891

namespace A055003

/-- `p?[A158611(A028815(n))]` -/
def P14361271973714520891.Spec : Prop :=
  ∀ n, P14361271973714520891.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P3961089775891470133

`A000040(A006093(n+1))`
-/

namespace A055003.P3961089775891470133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006093 (n + 1)).toNat

end

end A055003.P3961089775891470133

namespace A055003

/-- `A000040(A006093(n+1))` -/
def P3961089775891470133.Spec : Prop :=
  ∀ n, P3961089775891470133.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P17756795991642166327

`A008578(A000040(n+1))`
-/

namespace A055003.P17756795991642166327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000040 (n + 1)).toNat

end

end A055003.P17756795991642166327

namespace A055003

/-- `A008578(A000040(n+1))` -/
def P17756795991642166327.Spec : Prop :=
  ∀ n, P17756795991642166327.a n = A055003 (n + 1)

end A055003

/-! ## A055003.P10148195333687467848

`A048848(A006005(n+1))`
-/

namespace A055003.P10148195333687467848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (A006005 (n + 1)).toNat

end

end A055003.P10148195333687467848

namespace A055003

/-- `A048848(A006005(n+1))` -/
def P10148195333687467848.Spec : Prop :=
  ∀ n, P10148195333687467848.a n = A055003 (n + 1)

end A055003

/-!
# A055004: Boris Stechkin's function.

The programs for A055004, there is no canonical definition to state claims against.
-/

/-! ## A055004.P3280788566435965297

`A301506(A150725(n))`
-/

namespace A055004.P3280788566435965297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A150725 n).toNat

end

end A055004.P3280788566435965297

/-! ## A055004.P5069107772719578613

`A301506(A150726(n))`
-/

namespace A055004.P5069107772719578613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A150726 n).toNat

end

end A055004.P5069107772719578613

/-! ## A055004.P12100470471885783983

`A060354(n)-A294883(A232097(n+1))`
-/

namespace A055004.P12100470471885783983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n - A294883 (A232097 (n + 1)).toNat

end

end A055004.P12100470471885783983

/-!
# A055005: Number of nonnegative integer 3 X 3 matrices with no zero rows or columns and with sum of elements equal to n.

The programs for A055005, there is no canonical definition to state claims against.
-/

/-! ## A055005.P10153695428723964072

`A110963(A359705(n))-A000045(n)`
-/

namespace A055005.P10153695428723964072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A359705 n).toNat - A000045 n

end

end A055005.P10153695428723964072

/-! ## A055005.P10744019417269744005

`A004991(n)%A246655(A122674(n+1))`
-/

namespace A055005.P10744019417269744005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004991 n) (A246655 (A122674 (n + 1)).toNat)

end

end A055005.P10744019417269744005

/-!
# A055006: a(n) is the least multiple of n such that a(n) = 1 mod k for all integers k with 1 < k < n and k relatively prime to n.

The programs for A055006, there is no canonical definition to state claims against.
-/

/-! ## A055006.P8821221035683654374

`(A322403(A322149(n))+1)*(n+1)`
-/

namespace A055006.P8821221035683654374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322403 (A322149 n).toNat + 1) * (n + 1 : ℤ)

end

end A055006.P8821221035683654374

/-! ## A055006.P11318079866754817690

`(n+1)*A008288(A099463(A059446(n)))`
-/

namespace A055006.P11318079866754817690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008288 (A099463 (A059446 n).toNat).toNat

end

end A055006.P11318079866754817690

/-! ## A055006.P18021768342654642086

`A085098(A059576(n))*A325360(n+1)`
-/

namespace A055006.P18021768342654642086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085098 (A059576 n).toNat * A325360 (n + 1)

end

end A055006.P18021768342654642086

/-!
# A055007: Number of nonnegative integer 4 X 4 matrices with no zero rows or columns and with sum of elements equal to n.

The programs for A055007, there is no canonical definition to state claims against.
-/

/-! ## A055007.P3107687260663702152

`A162979(ceil(n²/5)²)`
-/

namespace A055007.P3107687260663702152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162979 (⌈(n ^ 2 : ℚ) / 5⌉ ^ 2).toNat

end

end A055007.P3107687260663702152

/-! ## A055007.P15678047800461464156

`A339408(A151352(n+1))`
-/

namespace A055007.P15678047800461464156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339408 (A151352 (n + 1)).toNat

end

end A055007.P15678047800461464156

/-!
# A055008: Numbers k such that gcd(phi(k), sigma(k)) = 1 with phi = A000010, sigma = A000203.

The programs for A055008, the canonical program `A055008.P18081575249762395183` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055008 has offset 1).

The definition of A055008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055008.P18081575249762395183

`record[(n+1)/A082055(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055008

/-- `record[(n+1)/A082055(n+1)]` -/
def P18081575249762395183.Spec : Prop :=
  ∀ n, P18081575249762395183.a n = (A055008 (n + 1) : ℚ)

end A055008

/-! ## A055008.P10316506220648049463

`eq[1, A082070(n+1)]+1`
-/

namespace A055008.P10316506220648049463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055008.P10316506220648049463

namespace A055008

/-- `eq[1, A082070(n+1)]+1` -/
def P10316506220648049463.Spec : Prop :=
  ∀ n, (P10316506220648049463.a n : ℤ) = A055008 (n + 1)

end A055008

/-! ## A055008.P14603936651302268482

`record[(n+1)/A082064(n+1)]`
-/

namespace A055008.P14603936651302268482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082064 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055008.P14603936651302268482

namespace A055008

/-- `record[(n+1)/A082064(n+1)]` -/
def P14603936651302268482.Spec : Prop :=
  ∀ n, P14603936651302268482.a n = (A055008 (n + 1) : ℚ)

end A055008

/-! ## A055008.P1374759431523109470

`eq[1, A009223(n+1)]+1`
-/

namespace A055008.P1374759431523109470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055008.P1374759431523109470

namespace A055008

/-- `eq[1, A009223(n+1)]+1` -/
def P1374759431523109470.Spec : Prop :=
  ∀ n, (P1374759431523109470.a n : ℤ) = A055008 (n + 1)

end A055008

/-! ## A055008.P1408779818041554675

`lt[A073812(n+1), 2]+1`
-/

namespace A055008.P1408779818041554675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073812 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A055008.P1408779818041554675

namespace A055008

/-- `lt[A073812(n+1), 2]+1` -/
def P1408779818041554675.Spec : Prop :=
  ∀ n, (P1408779818041554675.a n : ℤ) = A055008 (n + 1)

end A055008

/-! ## A055008.P2526754161731060472

`record[A000027(n+1)/A009223(n+1)]`
-/

namespace A055008.P2526754161731060472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055008.P2526754161731060472

namespace A055008

/-- `record[A000027(n+1)/A009223(n+1)]` -/
def P2526754161731060472.Spec : Prop :=
  ∀ n, P2526754161731060472.a n = (A055008 (n + 1) : ℚ)

end A055008

/-! ## A055008.P13612419076082616790

`record[(2-A082064(n+1))*A017666(n+1)]`
-/

namespace A055008.P13612419076082616790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A082064 (n + 1)) * A017666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055008.P13612419076082616790

namespace A055008

/-- `record[(2-A082064(n+1))*A017666(n+1)]` -/
def P13612419076082616790.Spec : Prop :=
  ∀ n, P13612419076082616790.a n = A055008 (n + 1)

end A055008

/-!
# A055010: a(0) = 0; for n > 0, a(n) = 3*2^(n-1) - 1.

The programs for A055010, the canonical program `A055010.P5809687151668349460` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055010 has offset 0).

The definition of A055010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055010.P5809687151668349460

`2*a(n-1)+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055010

/-- `2*a(n-1)+1` -/
def P5809687151668349460.Spec : Prop :=
  ∀ n, (P5809687151668349460.a n : ℤ) = A055010 n

theorem P5809687151668349460.correct : P5809687151668349460.Spec := by
  intro n
  simp only [A055010]

end A055010

/-! ## A055010.P13579352490043808491

`floor(A033484(n)/2)`
-/

namespace A055010.P13579352490043808491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033484 n : ℚ) / 2⌋

end

end A055010.P13579352490043808491

namespace A055010

/-- `floor(A033484(n)/2)` -/
def P13579352490043808491.Spec : Prop :=
  ∀ n, P13579352490043808491.a n = A055010 n

end A055010

/-! ## A055010.P14981745308809762455

`floor(∑[3*2^(n-2)])`
-/

namespace A055010.P14981745308809762455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A055010.P14981745308809762455

namespace A055010

/-- `floor(∑[3*2^(n-2)])` -/
def P14981745308809762455.Spec : Prop :=
  ∀ n, P14981745308809762455.a n = A055010 n

end A055010

/-! ## A055010.P618199179107976645

`or(1, 2*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A055010.P618199179107976645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A055010.P618199179107976645

namespace A055010

/-- `or(1, 2*a(n-1))` -/
def P618199179107976645.Spec : Prop :=
  ∀ n, (P618199179107976645.a n : ℤ) = A055010 n

end A055010

/-! ## A055010.P9900278167383700433

`xor(1, 2*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A055010.P9900278167383700433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A055010.P9900278167383700433

namespace A055010

/-- `xor(1, 2*a(n-1))` -/
def P9900278167383700433.Spec : Prop :=
  ∀ n, (P9900278167383700433.a n : ℤ) = A055010 n

end A055010

/-! ## A055010.P12011013018561021279

`∑[2*a(n-1)]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A055010.P12011013018561021279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055010.P12011013018561021279

namespace A055010

/-- `∑[2*a(n-1)]` -/
def P12011013018561021279.Spec : Prop :=
  ∀ n, (P12011013018561021279.a n : ℤ) = A055010 n

end A055010

/-! ## A055010.P10140853511570118003

`lcm(2, a(n-1))+1` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A055010.P10140853511570118003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A055010.P10140853511570118003

namespace A055010

/-- `lcm(2, a(n-1))+1` -/
def P10140853511570118003.Spec : Prop :=
  ∀ n, (P10140853511570118003.a n : ℤ) = A055010 n

end A055010

/-! ## A055010.P11333458800606277532

`record[2*a(n-2)]-1` with `a(0)=1, a(1)=3`
-/

namespace A055010.P11333458800606277532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A055010.P11333458800606277532

namespace A055010

/-- `record[2*a(n-2)]-1` -/
def P11333458800606277532.Spec : Prop :=
  ∀ n, P11333458800606277532.a n = A055010 n

end A055010

/-! ## A055010.P3988981173811808430

`3-2*(1-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A055010.P3988981173811808430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A055010.P3988981173811808430

namespace A055010

/-- `3-2*(1-a(n-1))` -/
def P3988981173811808430.Spec : Prop :=
  ∀ n, P3988981173811808430.a n = A055010 n

end A055010

/-! ## A055010.P6190087576348841882

`a(n-1)+a(n-1)+1` with `a(0)=0, a(1)=2`
-/

namespace A055010.P6190087576348841882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A055010.P6190087576348841882

namespace A055010

/-- `a(n-1)+a(n-1)+1` -/
def P6190087576348841882.Spec : Prop :=
  ∀ n, (P6190087576348841882.a n : ℤ) = A055010 n

theorem P6190087576348841882.correct : P6190087576348841882.Spec := by
  intro n
  simp only [A055010, Nat.add_sub_cancel, A055010.P6190087576348841882.a, A055010.P5809687151668349460.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055010

/-! ## A055010.P1930620968996134005

`1-a(n-1)/(1/2-1)` with `a(0)=0, a(1)=2`
-/

namespace A055010.P1930620968996134005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A055010.P1930620968996134005

namespace A055010

/-- `1-a(n-1)/(1/2-1)` -/
def P1930620968996134005.Spec : Prop :=
  ∀ n, P1930620968996134005.a n = (A055010 n : ℚ)

end A055010

/-! ## A055010.P18335971612049555478

`2-floor(1-a(n-1)-a(n-1))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A055010.P18335971612049555478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1))

end

end A055010.P18335971612049555478

namespace A055010

/-- `2-floor(1-a(n-1)-a(n-1))` -/
def P18335971612049555478.Spec : Prop :=
  ∀ n, P18335971612049555478.a n = A055010 n

end A055010

/-! ## A055010.P9160519876018823380

`2-((1-a(n-1))%a(n-1)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A055010.P9160519876018823380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 1))

end

end A055010.P9160519876018823380

namespace A055010

/-- `2-((1-a(n-1))%a(n-1)-a(n-1))` -/
def P9160519876018823380.Spec : Prop :=
  ∀ n, P9160519876018823380.a n = A055010 n

end A055010

/-! ## A055010.P17219894630652686775

`a(n-1)-(gcd(3, a(n-1))-2-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A055010.P17219894630652686775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - ((Int.gcd 3 (a (n - 1)) : ℤ) - 2 - a (n - 1))

end

end A055010.P17219894630652686775

namespace A055010

/-- `a(n-1)-(gcd(3, a(n-1))-2-a(n-1))` -/
def P17219894630652686775.Spec : Prop :=
  ∀ n, P17219894630652686775.a n = A055010 n

end A055010

/-! ## A055010.P838611268287682046

`A003945(n)-1`
-/

namespace A055010.P838611268287682046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - 1

end

end A055010.P838611268287682046

namespace A055010

/-- `A003945(n)-1` -/
def P838611268287682046.Spec : Prop :=
  ∀ n, P838611268287682046.a n = A055010 n

end A055010

/-! ## A055010.P4602852473872097109

`record[∑[A137206(n)]]`
-/

namespace A055010.P4602852473872097109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055010.P4602852473872097109

namespace A055010

/-- `record[∑[A137206(n)]]` -/
def P4602852473872097109.Spec : Prop :=
  ∀ n, P4602852473872097109.a n = A055010 n

end A055010

/-! ## A055010.P12026405394215985104

`record[A074323(n)-1]`
-/

namespace A055010.P12026405394215985104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055010.P12026405394215985104

namespace A055010

/-- `record[A074323(n)-1]` -/
def P12026405394215985104.Spec : Prop :=
  ∀ n, P12026405394215985104.a n = A055010 n

end A055010

/-! ## A055010.P1347629238721514138

`A103204(n+1)-2`
-/

namespace A055010.P1347629238721514138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - 2

end

end A055010.P1347629238721514138

namespace A055010

/-- `A103204(n+1)-2` -/
def P1347629238721514138.Spec : Prop :=
  ∀ n, P1347629238721514138.a n = A055010 n

end A055010

/-! ## A055010.P15322607187330242928

`A122391(n+2)-1`
-/

namespace A055010.P15322607187330242928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 2) - 1

end

end A055010.P15322607187330242928

namespace A055010

/-- `A122391(n+2)-1` -/
def P15322607187330242928.Spec : Prop :=
  ∀ n, P15322607187330242928.a n = A055010 n

end A055010

/-!
# A055011: a(n+1) = next smallest prime beginning with a(n) when written in binary, starting with 2.

The programs for A055011, there is no canonical definition to state claims against.
-/

/-! ## A055011.P12841468625873789082

`A261201(n+2)`
-/

namespace A055011.P12841468625873789082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261201 (n + 2)

end

end A055011.P12841468625873789082

/-! ## A055011.P4405239678355474732

`record[A261201(xor(n, A000038(n)))]`
-/

namespace A055011.P4405239678355474732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261201 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055011.P4405239678355474732

/-! ## A055011.P16113284485660773939

`record[A261201(A137735(2*or(1, n)))]`
-/

namespace A055011.P16113284485660773939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261201 (A137735 (2 * Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055011.P16113284485660773939

/-! ## A055011.P269671080608463233

`record[A261201(A137735(2*Δ[n²]))]`
-/

namespace A055011.P269671080608463233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261201 (A137735 (2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055011.P269671080608463233

/-! ## A055011.P2282644080261441883

`record[A261201(A328578(n))]`
-/

namespace A055011.P2282644080261441883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261201 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055011.P2282644080261441883

/-!
# A055012: Sum of cubes of the digits of n written in base 10.

The programs for A055012, the canonical program `A055012.P4592185717369733238` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055012 has offset 0).

The definition of A055012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055012.P4592185717369733238

`∑{digits}[n, #^3]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055012

/-- `∑{digits}[n, #^3]` -/
def P4592185717369733238.Spec : Prop :=
  ∀ n, (P4592185717369733238.a n : ℤ) = A055012 n

theorem P4592185717369733238.correct : P4592185717369733238.Spec := by
  intro n
  simp only [A055012]

end A055012

/-! ## A055012.P7163600230330910868

`A225051(n)-n^3`
-/

namespace A055012.P7163600230330910868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225051 n - (n ^ 3 : ℤ)

end

end A055012.P7163600230330910868

namespace A055012

/-- `A225051(n)-n^3` -/
def P7163600230330910868.Spec : Prop :=
  ∀ n, P7163600230330910868.a n = A055012 n

end A055012

/-! ## A055012.P10499892392694630174

`or(char[1], ∑{digits}[n, A000578(#)])`
-/

namespace A055012.P10499892392694630174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A000578 x).sum

end

end A055012.P10499892392694630174

namespace A055012

/-- `or(char[1], ∑{digits}[n, A000578(#)])` -/
def P10499892392694630174.Spec : Prop :=
  ∀ n, P10499892392694630174.a n = A055012 n

end A055012

/-! ## A055012.P3231956965039969759

`∑{d}[∑{digits}[n, #*#²], A000010(#)]`
-/

namespace A055012.P3231956965039969759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x * x ^ 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A055012.P3231956965039969759

namespace A055012

/-- `∑{d}[∑{digits}[n, #*#²], A000010(#)]` -/
def P3231956965039969759.Spec : Prop :=
  ∀ n, P3231956965039969759.a n = A055012 n

end A055012

/-! ## A055012.P4817431116046595904

`A065137(n)-A007953(n)`
-/

namespace A055012.P4817431116046595904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n - A007953 n

end

end A055012.P4817431116046595904

namespace A055012

/-- `A065137(n)-A007953(n)` -/
def P4817431116046595904.Spec : Prop :=
  ∀ n, P4817431116046595904.a n = A055012 n

end A055012

/-! ## A055012.P15429158412797614391

`A118880(n)-A069958(n)`
-/

namespace A055012.P15429158412797614391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - A069958 n

end

end A055012.P15429158412797614391

namespace A055012

/-- `A118880(n)-A069958(n)` -/
def P15429158412797614391.Spec : Prop :=
  ∀ n, P15429158412797614391.a n = A055012 n

end A055012

/-! ## A055012.P2170603480067659649

`A065137(n)-sqrt(A118881(n))`
-/

namespace A055012.P2170603480067659649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065137 n : ℝ) - Real.sqrt (A118881 n : ℝ)

end

end A055012.P2170603480067659649

namespace A055012

/-- `A065137(n)-sqrt(A118881(n))` -/
def P2170603480067659649.Spec : Prop :=
  ∀ n, P2170603480067659649.a n = (A055012 n : ℝ)

end A055012

/-! ## A055012.P16261990810933765810

`A065137(n)-A169805(n)/2`
-/

namespace A055012.P16261990810933765810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065137 n : ℚ) - (A169805 n : ℚ) / 2

end

end A055012.P16261990810933765810

namespace A055012

/-- `A065137(n)-A169805(n)/2` -/
def P16261990810933765810.Spec : Prop :=
  ∀ n, P16261990810933765810.a n = (A055012 n : ℚ)

end A055012

/-! ## A055012.P5483354213561415339

`A065137(n)+n-A062028(n)`
-/

namespace A055012.P5483354213561415339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n + ((n : ℤ) - A062028 n)

end

end A055012.P5483354213561415339

namespace A055012

/-- `A065137(n)+n-A062028(n)` -/
def P5483354213561415339.Spec : Prop :=
  ∀ n, P5483354213561415339.a n = A055012 n

end A055012

/-! ## A055012.P11419256762123936026

`∑{digits}[n, A000578(#)]%A001747(n+1)²`
-/

namespace A055012.P11419256762123936026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000578 x).sum (A001747 (n + 1) ^ 2)

end

end A055012.P11419256762123936026

namespace A055012

/-- `∑{digits}[n, A000578(#)]%A001747(n+1)²` -/
def P11419256762123936026.Spec : Prop :=
  ∀ n, P11419256762123936026.a n = A055012 n

end A055012

/-! ## A055012.P10513351550489970462

`A000007(n+6)+∑{digits}[n, #*#²]`
-/

namespace A055012.P10513351550489970462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 6) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x * x ^ 2).sum : ℕ) : ℤ)

end

end A055012.P10513351550489970462

namespace A055012

/-- `A000007(n+6)+∑{digits}[n, #*#²]` -/
def P10513351550489970462.Spec : Prop :=
  ∀ n, P10513351550489970462.a n = A055012 n

end A055012

/-! ## A055012.P797456886784751229

`A065137(n)-A053831(A171397(n))`
-/

namespace A055012.P797456886784751229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n - A053831 (A171397 n).toNat

end

end A055012.P797456886784751229

namespace A055012

/-- `A065137(n)-A053831(A171397(n))` -/
def P797456886784751229.Spec : Prop :=
  ∀ n, P797456886784751229.a n = A055012 n

end A055012

/-! ## A055012.P15444060495418639247

`A065137(n)-A053832(A102487(n+1))`
-/

namespace A055012.P15444060495418639247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n - A053832 (A102487 (n + 1)).toNat

end

end A055012.P15444060495418639247

namespace A055012

/-- `A065137(n)-A053832(A102487(n+1))` -/
def P15444060495418639247.Spec : Prop :=
  ∀ n, P15444060495418639247.a n = A055012 n

end A055012

/-! ## A055012.P13134235785626200195

`A065137(n)-A053836(A102489(n))`
-/

namespace A055012.P13134235785626200195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n - A053836 (A102489 n).toNat

end

end A055012.P13134235785626200195

namespace A055012

/-- `A065137(n)-A053836(A102489(n))` -/
def P13134235785626200195.Spec : Prop :=
  ∀ n, P13134235785626200195.a n = A055012 n

end A055012

/-!
# A055013: Sum of 4th powers of digits of n.

The programs for A055013, the canonical program `A055013.P18131107479962781787` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055013 has offset 0).

The definition of A055013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055013.P18131107479962781787

`∑{digits}[n, #^4]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055013

/-- `∑{digits}[n, #^4]` -/
def P18131107479962781787.Spec : Prop :=
  ∀ n, (P18131107479962781787.a n : ℤ) = A055013 n

theorem P18131107479962781787.correct : P18131107479962781787.Spec := by
  intro n
  simp only [A055013]

end A055013

/-! ## A055013.P10754316875444769036

`or(char[1], ∑{digits}[n, #²²])`
-/

namespace A055013.P10754316875444769036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (x ^ 2) ^ 2).sum

end

end A055013.P10754316875444769036

namespace A055013

/-- `or(char[1], ∑{digits}[n, #²²])` -/
def P10754316875444769036.Spec : Prop :=
  ∀ n, (P10754316875444769036.a n : ℤ) = A055013 n

end A055013

/-! ## A055013.P12630629495997099463

`xor(-1, ∑{digits}[n, -#²²])+1`
-/

namespace A055013.P12630629495997099463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -((x ^ 2) ^ 2 : ℤ)).sum + 1

end

end A055013.P12630629495997099463

namespace A055013

/-- `xor(-1, ∑{digits}[n, -#²²])+1` -/
def P12630629495997099463.Spec : Prop :=
  ∀ n, P12630629495997099463.a n = A055013 n

end A055013

/-! ## A055013.P12790421191897580980

`gcd(n, n+1)*∑{digits}[n, #²²]`
-/

namespace A055013.P12790421191897580980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2) ^ 2).sum

end

end A055013.P12790421191897580980

namespace A055013

/-- `gcd(n, n+1)*∑{digits}[n, #²²]` -/
def P12790421191897580980.Spec : Prop :=
  ∀ n, (P12790421191897580980.a n : ℤ) = A055013 n

theorem P12790421191897580980.correct : P12790421191897580980.Spec := by
  intro n
  simp only [A055013, Nat.add_sub_cancel, A055013.P12790421191897580980.f1, A055013.P12790421191897580980.a, A055013.P18131107479962781787.f1, A055013.P18131107479962781787.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A055013

/-! ## A055013.P8519323449949205587

`∑{d}[∑{digits}[n, #²²], A000010(#)]`
-/

namespace A055013.P8519323449949205587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (x ^ 2) ^ 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A055013.P8519323449949205587

namespace A055013

/-- `∑{d}[∑{digits}[n, #²²], A000010(#)]` -/
def P8519323449949205587.Spec : Prop :=
  ∀ n, P8519323449949205587.a n = A055013 n

end A055013

/-! ## A055013.P107768504155308926

`∑{digits}[n, #²²]/or(1, A284944(n+1))`
-/

namespace A055013.P107768504155308926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2) ^ 2).sum : ℕ) : ℚ) / (Int.lor 1 (A284944 (n + 1)) : ℚ)

end

end A055013.P107768504155308926

namespace A055013

/-- `∑{digits}[n, #²²]/or(1, A284944(n+1))` -/
def P107768504155308926.Spec : Prop :=
  ∀ n, P107768504155308926.a n = (A055013 n : ℚ)

end A055013

/-! ## A055013.P9564082117018472821

`∑{e}[A054842(n), #²²]`
-/

namespace A055013.P9564082117018472821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p ^ 2) ^ 2

end

end A055013.P9564082117018472821

namespace A055013

/-- `∑{e}[A054842(n), #²²]` -/
def P9564082117018472821.Spec : Prop :=
  ∀ n, (P9564082117018472821.a n : ℤ) = A055013 n

end A055013

/-! ## A055013.P12661159869873602013

`∑{e}[A069877(n), #²²]`
-/

namespace A055013.P12661159869873602013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p ^ 2) ^ 2

end

end A055013.P12661159869873602013

namespace A055013

/-- `∑{e}[A069877(n), #²²]` -/
def P12661159869873602013.Spec : Prop :=
  ∀ n, (P12661159869873602013.a n : ℤ) = A055013 n

end A055013

/-! ## A055013.P6116205559478117653

`∑{e}[A061509(n), #²²]`
-/

namespace A055013.P6116205559478117653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p ^ 2) ^ 2

end

end A055013.P6116205559478117653

namespace A055013

/-- `∑{e}[A061509(n), #²²]` -/
def P6116205559478117653.Spec : Prop :=
  ∀ n, (P6116205559478117653.a n : ℤ) = A055013 n

end A055013

/-!
# A055014: Sum of 5th powers of digits of n.

The programs for A055014, the canonical program `A055014.P11815424911729429670` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055014 has offset 0).

The definition of A055014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055014.P11815424911729429670

`∑{digits}[n, #^5]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055014

/-- `∑{digits}[n, #^5]` -/
def P11815424911729429670.Spec : Prop :=
  ∀ n, (P11815424911729429670.a n : ℤ) = A055014 n

theorem P11815424911729429670.correct : P11815424911729429670.Spec := by
  intro n
  simp only [A055014]

end A055014

/-! ## A055014.P17366593713655882596

`A000584(A007953(n))-A069965(n)`
-/

namespace A055014.P17366593713655882596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A007953 n).toNat - A069965 n

end

end A055014.P17366593713655882596

namespace A055014

/-- `A000584(A007953(n))-A069965(n)` -/
def P17366593713655882596.Spec : Prop :=
  ∀ n, P17366593713655882596.a n = A055014 n

end A055014

/-! ## A055014.P8879261956327837080

`∑{e}[A054842(n), #^5]`
-/

namespace A055014.P8879261956327837080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 5

end

end A055014.P8879261956327837080

namespace A055014

/-- `∑{e}[A054842(n), #^5]` -/
def P8879261956327837080.Spec : Prop :=
  ∀ n, (P8879261956327837080.a n : ℤ) = A055014 n

end A055014

/-! ## A055014.P15072556946250611368

`∑{e}[A069877(n), #^5]`
-/

namespace A055014.P15072556946250611368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 5

end

end A055014.P15072556946250611368

namespace A055014

/-- `∑{e}[A069877(n), #^5]` -/
def P15072556946250611368.Spec : Prop :=
  ∀ n, (P15072556946250611368.a n : ℤ) = A055014 n

end A055014

/-! ## A055014.P905888189222142621

`∑{e}[A061509(n), #^5]`
-/

namespace A055014.P905888189222142621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 5

end

end A055014.P905888189222142621

namespace A055014

/-- `∑{e}[A061509(n), #^5]` -/
def P905888189222142621.Spec : Prop :=
  ∀ n, (P905888189222142621.a n : ℤ) = A055014 n

end A055014

/-!
# A055015: Sum of 6th powers of digits of n.

The programs for A055015, the canonical program `A055015.P18238357698712625375` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055015 has offset 0).

The definition of A055015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055015.P18238357698712625375

`∑{digits}[n, #^6]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055015

/-- `∑{digits}[n, #^6]` -/
def P18238357698712625375.Spec : Prop :=
  ∀ n, (P18238357698712625375.a n : ℤ) = A055015 n

theorem P18238357698712625375.correct : P18238357698712625375.Spec := by
  intro n
  simp only [A055015]

end A055015

/-! ## A055015.P12182541920700982813

`or(char[1], ∑{digits}[n, A001014(#)])`
-/

namespace A055015.P12182541920700982813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A001014 x).sum

end

end A055015.P12182541920700982813

namespace A055015

/-- `or(char[1], ∑{digits}[n, A001014(#)])` -/
def P12182541920700982813.Spec : Prop :=
  ∀ n, P12182541920700982813.a n = A055015 n

end A055015

/-! ## A055015.P15046395867918556851

`∑{digits}[n, A131472(#)]-∑{digits}[n, #]`
-/

namespace A055015.P15046395867918556851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A131472 x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A055015.P15046395867918556851

namespace A055015

/-- `∑{digits}[n, A131472(#)]-∑{digits}[n, #]` -/
def P15046395867918556851.Spec : Prop :=
  ∀ n, P15046395867918556851.a n = A055015 n

end A055015

/-! ## A055015.P15074398867266138004

`n/A028310(n)*∑{digits}[n, A001014(#)]`
-/

namespace A055015.P15074398867266138004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n : ℚ) * ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001014 x).sum : ℤ) : ℚ)

end

end A055015.P15074398867266138004

namespace A055015

/-- `n/A028310(n)*∑{digits}[n, A001014(#)]` -/
def P15074398867266138004.Spec : Prop :=
  ∀ n, P15074398867266138004.a n = (A055015 n : ℚ)

end A055015

/-! ## A055015.P11550952649818584827

`∑{digits}[n, A001014(#)]*A303280(A006530(n+1))`
-/

namespace A055015.P11550952649818584827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001014 x).sum * A303280 (A006530 (n + 1)).toNat

end

end A055015.P11550952649818584827

namespace A055015

/-- `∑{digits}[n, A001014(#)]*A303280(A006530(n+1))` -/
def P11550952649818584827.Spec : Prop :=
  ∀ n, P11550952649818584827.a n = A055015 n

end A055015

/-! ## A055015.P1664301349952803047

`∑{e}[A054842(n), A001014(#)]`
-/

namespace A055015.P1664301349952803047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001014 (Nat.factorization (f1 n).natAbs p)

end

end A055015.P1664301349952803047

namespace A055015

/-- `∑{e}[A054842(n), A001014(#)]` -/
def P1664301349952803047.Spec : Prop :=
  ∀ n, P1664301349952803047.a n = A055015 n

end A055015

/-! ## A055015.P16278014860220685515

`∑{e}[A054842(n), A001015(#)/#]`
-/

namespace A055015.P16278014860220685515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001015 (Nat.factorization (f1 n).natAbs p) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A055015.P16278014860220685515

namespace A055015

/-- `∑{e}[A054842(n), A001015(#)/#]` -/
def P16278014860220685515.Spec : Prop :=
  ∀ n, P16278014860220685515.a n = (A055015 n : ℚ)

end A055015

/-! ## A055015.P11468969085424166016

`∑{e}[A069877(n), A001015(#)/#]`
-/

namespace A055015.P11468969085424166016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001015 (Nat.factorization (f1 n).natAbs p) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A055015.P11468969085424166016

namespace A055015

/-- `∑{e}[A069877(n), A001015(#)/#]` -/
def P11468969085424166016.Spec : Prop :=
  ∀ n, P11468969085424166016.a n = (A055015 n : ℚ)

end A055015

/-! ## A055015.P11828724062749695851

`∑{e}[A061509(n), A001014(#)]`
-/

namespace A055015.P11828724062749695851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001014 (Nat.factorization (f1 n).natAbs p)

end

end A055015.P11828724062749695851

namespace A055015

/-- `∑{e}[A061509(n), A001014(#)]` -/
def P11828724062749695851.Spec : Prop :=
  ∀ n, P11828724062749695851.a n = A055015 n

end A055015

/-!
# A055016: Smallest number whose sum of squares of digits is n.

The programs for A055016, there is no canonical definition to state claims against.
-/

/-! ## A055016.P10637661488648829779

`A259372(A000194(n²))`
-/

namespace A055016.P10637661488648829779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A000194 (n ^ 2)).toNat

end

end A055016.P10637661488648829779

/-! ## A055016.P8045356926038489359

`A259372(A053615(n²))`
-/

namespace A055016.P8045356926038489359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A053615 (n ^ 2)).toNat

end

end A055016.P8045356926038489359

/-! ## A055016.P2466973598697988975

`A259372(A279211(∑[n]))`
-/

namespace A055016.P2466973598697988975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A279211 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055016.P2466973598697988975

/-! ## A055016.P13070013414012734966

`A259372(lcm(n, A118759(n)))`
-/

namespace A055016.P13070013414012734966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (Int.lcm (n : ℤ) (A118759 n))

end

end A055016.P13070013414012734966

/-! ## A055016.P6593132103283076885

`A259372(A259361((n+1)²))`
-/

namespace A055016.P6593132103283076885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A259361 ((n + 1) ^ 2)).toNat

end

end A055016.P6593132103283076885

/-! ## A055016.P15252372298202069718

`A259372(A000196(∑[2*n]))`
-/

namespace A055016.P15252372298202069718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055016.P15252372298202069718

/-! ## A055016.P14552295660994602411

`A259372(A053186(∑[2*n]))`
-/

namespace A055016.P14552295660994602411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 (A053186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055016.P14552295660994602411

/-! ## A055016.P13505613019466040663

`A259372(n)%A005994(n²)`
-/

namespace A055016.P13505613019466040663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259372 n) (A005994 (n ^ 2))

end

end A055016.P13505613019466040663

/-! ## A055016.P15679638987892331617

`A259372(n)+A000038(n²+1)`
-/

namespace A055016.P15679638987892331617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 n + A000038 (n ^ 2 + 1)

end

end A055016.P15679638987892331617

/-! ## A055016.P16660778467728677569

`A259372(n)+A005369((n+1)²)`
-/

namespace A055016.P16660778467728677569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259372 n + A005369 ((n + 1) ^ 2)

end

end A055016.P16660778467728677569

/-! ## A055016.P4791432720508819537

`lcm(A020985(A002378(n)), A259372(n))`
-/

namespace A055016.P4791432720508819537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A002378 n).toNat) (A259372 n)

end

end A055016.P4791432720508819537

/-!
# A055017: Difference between sums of alternate digits of n starting with the last, i.e., (sum of ultimate digit of n, antepenultimate digit of n, ...) - (sum of penultimate digit of n, preantepenultimate digit of n, ...).

The programs for A055017, the canonical program `A055017.P306124200527846902` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055017 has offset 0).

The definition of A055017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055017.P306124200527846902

`n%10-a(A059995(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055017

/-- `n%10-a(A059995(n))` -/
def P306124200527846902.Spec : Prop :=
  ∀ n, P306124200527846902.a n = A055017 n

theorem P306124200527846902.correct : P306124200527846902.Spec := by
  intro n
  simp only [A055017]

end A055017

/-! ## A055017.P3987278757833730910

`A010879(n)-a(A059995(n))` with `a(0)=0`
-/

namespace A055017.P3987278757833730910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010879 n - a (A059995 n).toNat

end

end A055017.P3987278757833730910

namespace A055017

/-- `A010879(n)-a(A059995(n))` -/
def P3987278757833730910.Spec : Prop :=
  ∀ n, P3987278757833730910.a n = A055017 n

end A055017

/-! ## A055017.P17652596151384545401

`∑{digits}[n, #]+n-(2*comp[98-11*n]-n)`
-/

namespace A055017.P17652596151384545401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n : ℕ) : ℤ) - ((2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A055017.P17652596151384545401

namespace A055017

/-- `∑{digits}[n, #]+n-(2*comp[98-11*n]-n)` -/
def P17652596151384545401.Spec : Prop :=
  ∀ n, P17652596151384545401.a n = A055017 n

end A055017

/-! ## A055017.P1473290205294358053

`(11*floor(n/10)-n)*or(n, ∑{p}[n^3, val(#, 11)]-1)`
-/

namespace A055017.P1473290205294358053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * Int.lor (n : ℤ) (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℤ) - 1)

end

end A055017.P1473290205294358053

namespace A055017

/-- `(11*floor(n/10)-n)*or(n, ∑{p}[n^3, val(#, 11)]-1)` -/
def P1473290205294358053.Spec : Prop :=
  ∀ n, P1473290205294358053.a n = A055017 n

end A055017

/-! ## A055017.P8439083029659045224

`A053615(∑[2*n])-(11*floor(n/10)-n)`
-/

namespace A055017.P8439083029659045224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (∑ j ∈ Finset.range (n + 1), f1 j) - (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

end

end A055017.P8439083029659045224

namespace A055017

/-- `A053615(∑[2*n])-(11*floor(n/10)-n)` -/
def P8439083029659045224.Spec : Prop :=
  ∀ n, P8439083029659045224.a n = A055017 n

end A055017

/-! ## A055017.P1491345058513394399

`A215530(n-∑{digits}[n, #])-(11*floor(n/10)-n)`
-/

namespace A055017.P1491345058513394399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215530 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) - (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

end

end A055017.P1491345058513394399

namespace A055017

/-- `A215530(n-∑{digits}[n, #])-(11*floor(n/10)-n)` -/
def P1491345058513394399.Spec : Prop :=
  ∀ n, P1491345058513394399.a n = A055017 n

end A055017

/-! ## A055017.P1186208678279213039

`A214411(∑[2*n]+11)-(11*floor(n/10)-n)`
-/

namespace A055017.P1186208678279213039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (∑ j ∈ Finset.range (n + 1), f1 j + 11) - (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

end

end A055017.P1186208678279213039

namespace A055017

/-- `A214411(∑[2*n]+11)-(11*floor(n/10)-n)` -/
def P1186208678279213039.Spec : Prop :=
  ∀ n, P1186208678279213039.a n = A055017 n

end A055017

/-! ## A055017.P3574678219441099773

`A076313(A096582(n+2))`
-/

namespace A055017.P3574678219441099773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A096582 (n + 2)).toNat

end

end A055017.P3574678219441099773

namespace A055017

/-- `A076313(A096582(n+2))` -/
def P3574678219441099773.Spec : Prop :=
  ∀ n, P3574678219441099773.a n = A055017 n

end A055017

/-! ## A055017.P6530963314549543432

`n-A059995(A056143(n))`
-/

namespace A055017.P6530963314549543432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059995 (A056143 n).toNat

end

end A055017.P6530963314549543432

namespace A055017

/-- `n-A059995(A056143(n))` -/
def P6530963314549543432.Spec : Prop :=
  ∀ n, P6530963314549543432.a n = A055017 n

end A055017

/-!
# A055018: Numbers k such that k and k+1 are modest (cf. A054986).

The programs for A055018, there is no canonical definition to state claims against.
-/

/-! ## A055018.P13929286854601999161

`∩[A054986(n+1)-1, A054986(n+1)]`
-/

namespace A055018.P13929286854601999161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055018.P13929286854601999161

/-!
# A055019: Numbers n such that A051885(p_n) is prime, where p_n=A000040(n) is the n-th prime.

The programs for A055019, there is no canonical definition to state claims against.
-/

/-! ## A055019.P3781868068633320188

`A000720(A129990(n+1))`
-/

namespace A055019.P3781868068633320188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129990 (n + 1)).toNat

end

end A055019.P3781868068633320188

/-! ## A055019.P7564649204343937950

`A061395(p?[A129990(n+1)])`
-/

namespace A055019.P7564649204343937950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A055019.P7564649204343937950

/-! ## A055019.P6583473422379616364

`∑{d}[A129990(n+1), A061395(#)]`
-/

namespace A055019.P6583473422379616364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A055019.P6583473422379616364

/-! ## A055019.P12613053982680400368

`A061395(∏{p}[A129990(n+1), #])`
-/

namespace A055019.P12613053982680400368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A055019.P12613053982680400368

/-! ## A055019.P6298153708871438358

`A061395(A129990(n+1)%A020712(n))`
-/

namespace A055019.P6298153708871438358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A129990 (n + 1)) (A020712 n)).toNat

end

end A055019.P6298153708871438358

/-!
# A055020: Number of iterations of sigma() required until 2n (or greater) is reached.

The programs for A055020, there is no canonical definition to state claims against.
-/

/-! ## A055020.P11455947402302189485

`A322794(A098733(2*(n+2))-A322794(n+1))`
-/

namespace A055020.P11455947402302189485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A098733 (2 * (n + 2)) - A322794 (n + 1)).toNat

end

end A055020.P11455947402302189485

/-! ## A055020.P14361154909138044867

`A194334(A166911(n)-A059893(n+1))`
-/

namespace A055020.P14361154909138044867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194334 (A166911 n - A059893 (n + 1)).toNat

end

end A055020.P14361154909138044867

/-! ## A055020.P11918381565804422006

`A136165(A073941(n+1)+A066421(n+1))`
-/

namespace A055020.P11918381565804422006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136165 (A073941 (n + 1) + A066421 (n + 1)).toNat

end

end A055020.P11918381565804422006

/-! ## A055020.P13229746435626505319

`A054868(A158011(n+1)-A085985(A019554(n+1)))`
-/

namespace A055020.P13229746435626505319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A158011 (n + 1) - A085985 (A019554 (n + 1)).toNat).toNat

end

end A055020.P13229746435626505319

/-! ## A055020.P6133693218511025552

`A214713(A390349(n))`
-/

namespace A055020.P6133693218511025552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214713 (A390349 n).toNat

end

end A055020.P6133693218511025552

/-!
# A055022: Number of 1-punctured staircase polygons (by perimeter) with a hole of perimeter 4.

The programs for A055022, there is no canonical definition to state claims against.
-/

/-! ## A055022.P12180899268355655784

`round(A133237(n+2)/886)`
-/

namespace A055022.P12180899268355655784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133237 (n + 2) : ℚ) / 886)

end

end A055022.P12180899268355655784

/-! ## A055022.P1056189525337070919

`A003056(C(round(lcm(n+2, n+3)/10), 11))`
-/

namespace A055022.P1056189525337070919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (SequenceMachineLib.roundAway ((Nat.lcm (n + 2) (n + 3) : ℚ) / 10)).toNat 11)

end

end A055022.P1056189525337070919

/-! ## A055022.P6671930188505678100

`A003056(C(round(record[(n-2)*(n-3)/10]), 11))`
-/

namespace A055022.P6671930188505678100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 3) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat 11)

end

end A055022.P6671930188505678100

/-! ## A055022.P10021033664907330325

`A003056(C(round((n+2)/(10*acot(n+3))), 11))`
-/

namespace A055022.P10021033664907330325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (SequenceMachineLib.roundAway ((n + 2 : ℝ) / (10 * SequenceMachineLib.acot (n + 3 : ℝ)))).toNat 11)

end

end A055022.P10021033664907330325

/-! ## A055022.P11682020337192536235

`floor(n!%(n^n)/A094543(3*n+4))`
-/

namespace A055022.P11682020337192536235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial n % n ^ n : ℕ) : ℚ) / (A094543 (3 * n + 4) : ℚ)⌋

end

end A055022.P11682020337192536235

/-!
# A055023: a(n) = n/A055032(n).

The programs for A055023, the canonical program `A055023.P1172270921470838562` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055023 has offset 1).

The definition of A055023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055032, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055023.P1172270921470838562

`(n+1)/A055032(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A055023

/-- `(n+1)/A055032(n+1)` -/
def P1172270921470838562.Spec : Prop :=
  ∀ n, P1172270921470838562.a n = (A055023 (n + 1) : ℚ)

end A055023

/-! ## A055023.P12381013480138162384

`gcd(n+1, A201560(n+1))`
-/

namespace A055023.P12381013480138162384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A201560 (n + 1))

end

end A055023.P12381013480138162384

namespace A055023

/-- `gcd(n+1, A201560(n+1))` -/
def P12381013480138162384.Spec : Prop :=
  ∀ n, (P12381013480138162384.a n : ℤ) = A055023 (n + 1)

end A055023

/-! ## A055023.P481834554268262705

`gcd(A204187(n+1)+1, A000027(n+1))`
-/

namespace A055023.P481834554268262705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204187 (n + 1) + 1) (A000027 (n + 1))

end

end A055023.P481834554268262705

namespace A055023

/-- `gcd(A204187(n+1)+1, A000027(n+1))` -/
def P481834554268262705.Spec : Prop :=
  ∀ n, (P481834554268262705.a n : ℤ) = A055023 (n + 1)

end A055023

/-! ## A055023.P7667312312823169429

`gcd(A164869(A326584(n+1)), A326691(n+1))`
-/

namespace A055023.P7667312312823169429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164869 (A326584 (n + 1)).toNat) (A326691 (n + 1))

end

end A055023.P7667312312823169429

namespace A055023

/-- `gcd(A164869(A326584(n+1)), A326691(n+1))` -/
def P7667312312823169429.Spec : Prop :=
  ∀ n, (P7667312312823169429.a n : ℤ) = A055023 (n + 1)

end A055023

/-! ## A055023.P12474522841984060533

`A326691(gcd(A014844(n), A326691(n+1)))`
-/

namespace A055023.P12474522841984060533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (Int.gcd (A014844 n) (A326691 (n + 1)))

end

end A055023.P12474522841984060533

namespace A055023

/-- `A326691(gcd(A014844(n), A326691(n+1)))` -/
def P12474522841984060533.Spec : Prop :=
  ∀ n, P12474522841984060533.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P5608806472310584690

`A007913((n+1)*A055032(n+1))`
-/

namespace A055023.P5608806472310584690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A055032 (n + 1)).toNat

end

end A055023.P5608806472310584690

namespace A055023

/-- `A007913((n+1)*A055032(n+1))` -/
def P5608806472310584690.Spec : Prop :=
  ∀ n, P5608806472310584690.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P14338184276107779543

`gcd(A092438(n), A326691(n+1))`
-/

namespace A055023.P14338184276107779543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092438 n) (A326691 (n + 1))

end

end A055023.P14338184276107779543

namespace A055023

/-- `gcd(A092438(n), A326691(n+1))` -/
def P14338184276107779543.Spec : Prop :=
  ∀ n, (P14338184276107779543.a n : ℤ) = A055023 (n + 1)

end A055023

/-! ## A055023.P9711269332517504274

`A326691((n+1)*A055032(n+1))`
-/

namespace A055023.P9711269332517504274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 ((n + 1 : ℤ) * A055032 (n + 1)).toNat

end

end A055023.P9711269332517504274

namespace A055023

/-- `A326691((n+1)*A055032(n+1))` -/
def P9711269332517504274.Spec : Prop :=
  ∀ n, P9711269332517504274.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P4055749983458092871

`A050873(A000217(n+1)-A201560(n+1))`
-/

namespace A055023.P4055749983458092871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A000217 (n + 1) - A201560 (n + 1)).toNat

end

end A055023.P4055749983458092871

namespace A055023

/-- `A050873(A000217(n+1)-A201560(n+1))` -/
def P4055749983458092871.Spec : Prop :=
  ∀ n, P4055749983458092871.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P5361196211711606518

`A054531(A055032(n+1)+A000217(n))`
-/

namespace A055023.P5361196211711606518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A055032 (n + 1) + A000217 n).toNat

end

end A055023.P5361196211711606518

namespace A055023

/-- `A054531(A055032(n+1)+A000217(n))` -/
def P5361196211711606518.Spec : Prop :=
  ∀ n, P5361196211711606518.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P6686636437040365590

`A126988(A055032(n+1)+A000217(n))`
-/

namespace A055023.P6686636437040365590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A055032 (n + 1) + A000217 n).toNat

end

end A055023.P6686636437040365590

namespace A055023

/-- `A126988(A055032(n+1)+A000217(n))` -/
def P6686636437040365590.Spec : Prop :=
  ∀ n, P6686636437040365590.a n = A055023 (n + 1)

end A055023

/-! ## A055023.P10977777277174355976

`gcd(A004442((n+1)/A214606(n+1)), A214606((n+1)²))`
-/

namespace A055023.P10977777277174355976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A214606 (n + 1) : ℚ))).toNat) (A214606 ((n + 1) ^ 2))

end

end A055023.P10977777277174355976

namespace A055023

/-- `gcd(A004442((n+1)/A214606(n+1)), A214606((n+1)²))` -/
def P10977777277174355976.Spec : Prop :=
  ∀ n, (P10977777277174355976.a n : ℤ) = A055023 (n + 1)

end A055023

/-!
# A055024: Number of 1-punctured staircase polygons (by perimeter) with a hole of perimeter 6.

The programs for A055024, there is no canonical definition to state claims against.
-/

/-! ## A055024.P10761240048927802652

`A101359(C(n, 10))`
-/

namespace A055024.P10761240048927802652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101359 (Nat.choose n 10)

end

end A055024.P10761240048927802652

/-! ## A055024.P18095072984292204681

`A211000(C(n, 9)²)`
-/

namespace A055024.P18095072984292204681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211000 (Nat.choose n 9 ^ 2)

end

end A055024.P18095072984292204681

/-! ## A055024.P3950240129771523133

`A337498(C(n+6, 16))`
-/

namespace A055024.P3950240129771523133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337498 (Nat.choose (n + 6) 16)

end

end A055024.P3950240129771523133

/-! ## A055024.P1612661321395551352

`floor(A007032(n+1)/47)`
-/

namespace A055024.P1612661321395551352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007032 (n + 1) : ℚ) / 47⌋

end

end A055024.P1612661321395551352

/-! ## A055024.P10288589670335655936

`lcm(2, A126203(2^∑{digits}[n, #%C(n, #)]))`
-/

namespace A055024.P10288589670335655936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A126203 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum))

end

end A055024.P10288589670335655936

/-!
# A055025: Norms of Gaussian primes.

The programs for A055025, the canonical program `A055025.P1840419419277559172` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055025 has offset 1).

The definition of A055025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055025.P13806856469571011150

`A185271(n)+a(n-1)` with `a(0)=2`
-/

namespace A055025.P13806856469571011150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A185271 n + a (n - 1)

end

end A055025.P13806856469571011150

namespace A055025

/-- `A185271(n)+a(n-1)` -/
def P13806856469571011150.Spec : Prop :=
  ∀ n, P13806856469571011150.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P1840419419277559172

`∪[A002313(n+1), A087691(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055025

/-- `∪[A002313(n+1), A087691(n+1)]` -/
def P1840419419277559172.Spec : Prop :=
  ∀ n, (P1840419419277559172.a n : ℤ) = A055025 (n + 1)

theorem P1840419419277559172.correct : P1840419419277559172.Spec := by
  intro n
  simp only [A055025, Nat.add_sub_cancel]

end A055025

/-! ## A055025.P13440198304427636376

`∑[A185271(n+1)]+2-A185271(n+1)`
-/

namespace A055025.P13440198304427636376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A185271 (n + 1))

end

end A055025.P13440198304427636376

namespace A055025

/-- `∑[A185271(n+1)]+2-A185271(n+1)` -/
def P13440198304427636376.Spec : Prop :=
  ∀ n, P13440198304427636376.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P7341751207720265730

`∪[A002313(n+1), (A281664(n+2)+1)²]`
-/

namespace A055025.P7341751207720265730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A281664 (n + 2) + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P7341751207720265730

namespace A055025

/-- `∪[A002313(n+1), (A281664(n+2)+1)²]` -/
def P7341751207720265730.Spec : Prop :=
  ∀ n, (P7341751207720265730.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P5728815405098566288

`∪[A002313(n+1), (A190105(n+1)+A005099(n+1))²]`
-/

namespace A055025.P5728815405098566288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) + A005099 (n + 1)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P5728815405098566288

namespace A055025

/-- `∪[A002313(n+1), (A190105(n+1)+A005099(n+1))²]` -/
def P5728815405098566288.Spec : Prop :=
  ∀ n, (P5728815405098566288.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P1420571120467368216

`A239621(2*n+1)²+A239621(2*(n+1))²`
-/

namespace A055025.P1420571120467368216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (2 * n + 1) ^ 2 + A239621 (2 * (n + 1)) ^ 2

end

end A055025.P1420571120467368216

namespace A055025

/-- `A239621(2*n+1)²+A239621(2*(n+1))²` -/
def P1420571120467368216.Spec : Prop :=
  ∀ n, P1420571120467368216.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P7207251782006797642

`∩[A082664(n+1), A125022(n+1)]`
-/

namespace A055025.P7207251782006797642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P7207251782006797642

namespace A055025

/-- `∩[A082664(n+1), A125022(n+1)]` -/
def P7207251782006797642.Spec : Prop :=
  ∀ n, (P7207251782006797642.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P3825339831323724514

`∩[A125022(n+1), A136327(n+1)]`
-/

namespace A055025.P3825339831323724514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P3825339831323724514

namespace A055025

/-- `∩[A125022(n+1), A136327(n+1)]` -/
def P3825339831323724514.Spec : Prop :=
  ∀ n, (P3825339831323724514.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P2711466239829777849

`A120119(A000040(n+1))`
-/

namespace A055025.P2711466239829777849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120119 (A000040 (n + 1)).toNat

end

end A055025.P2711466239829777849

namespace A055025

/-- `A120119(A000040(n+1))` -/
def P2711466239829777849.Spec : Prop :=
  ∀ n, P2711466239829777849.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P13932486531580810752

`A120119(A008578(n+2))`
-/

namespace A055025.P13932486531580810752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120119 (A008578 (n + 2)).toNat

end

end A055025.P13932486531580810752

namespace A055025

/-- `A120119(A008578(n+2))` -/
def P13932486531580810752.Spec : Prop :=
  ∀ n, P13932486531580810752.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P10973695246346606813

`A120119(A182986(n+2))`
-/

namespace A055025.P10973695246346606813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120119 (A182986 (n + 2)).toNat

end

end A055025.P10973695246346606813

namespace A055025

/-- `A120119(A182986(n+2))` -/
def P10973695246346606813.Spec : Prop :=
  ∀ n, P10973695246346606813.a n = A055025 (n + 1)

end A055025

/-! ## A055025.P521131890567522964

`lt[0, A055028(n)]`
-/

namespace A055025.P521131890567522964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055025.P521131890567522964

namespace A055025

/-- `lt[0, A055028(n)]` -/
def P521131890567522964.Spec : Prop :=
  ∀ n, (P521131890567522964.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P15584828422267083346

`lt[0, A055029(n)]`
-/

namespace A055025.P15584828422267083346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055025.P15584828422267083346

namespace A055025

/-- `lt[0, A055029(n)]` -/
def P15584828422267083346.Spec : Prop :=
  ∀ n, (P15584828422267083346.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P15619928128310611176

`eq[A055029(n), A063014(n)]`
-/

namespace A055025.P15619928128310611176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055025.P15619928128310611176

namespace A055025

/-- `eq[A055029(n), A063014(n)]` -/
def P15619928128310611176.Spec : Prop :=
  ∀ n, (P15619928128310611176.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P1621934734327711754

`eq[(1-A032741(n))², A001842(n)]`
-/

namespace A055025.P1621934734327711754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A032741 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055025.P1621934734327711754

namespace A055025

/-- `eq[(1-A032741(n))², A001842(n)]` -/
def P1621934734327711754.Spec : Prop :=
  ∀ n, (P1621934734327711754.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P1586707170906106806

`eq[A001511(A001842(n)+1), A032741(n)]`
-/

namespace A055025.P1586707170906106806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001842 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055025.P1586707170906106806

namespace A055025

/-- `eq[A001511(A001842(n)+1), A032741(n)]` -/
def P1586707170906106806.Spec : Prop :=
  ∀ n, (P1586707170906106806.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P7770557156140661650

`eq[A032741(n), A057021(A001842(n)+1)]`
-/

namespace A055025.P7770557156140661650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A001842 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055025.P7770557156140661650

namespace A055025

/-- `eq[A032741(n), A057021(A001842(n)+1)]` -/
def P7770557156140661650.Spec : Prop :=
  ∀ n, (P7770557156140661650.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P12312321595752150424

`eq[A055028(n+1)^A055028(n), A055028(n+1)]`
-/

namespace A055025.P12312321595752150424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055028 (n + 1) : ℚ) ^ (A055028 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A055025.P12312321595752150424

namespace A055025

/-- `eq[A055028(n+1)^A055028(n), A055028(n+1)]` -/
def P12312321595752150424.Spec : Prop :=
  ∀ n, (P12312321595752150424.a n : ℤ) = A055025 (n + 1)

end A055025

/-! ## A055025.P8323858479254173505

`eq[1, A178334(A055028(n)*A178334(n))]`
-/

namespace A055025.P8323858479254173505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A055028 n * A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055025.P8323858479254173505

namespace A055025

/-- `eq[1, A178334(A055028(n)*A178334(n))]` -/
def P8323858479254173505.Spec : Prop :=
  ∀ n, (P8323858479254173505.a n : ℤ) = A055025 (n + 1)

end A055025

/-!
# A055026: Number of Gaussian primes of successive norms (indexed by A055025).

The programs for A055026, there is no canonical definition to state claims against.
-/

/-! ## A055026.P746605329836992492

`4*A055027(n+1)`
-/

namespace A055026.P746605329836992492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055027 (n + 1)

end

end A055026.P746605329836992492

/-! ## A055026.P8740649964816320747

`p?[A055028(n)-1]+1`
-/

namespace A055026.P8740649964816320747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A055026.P8740649964816320747

/-! ## A055026.P1395977043970054517

`A004018(A055025(n+1))`
-/

namespace A055026.P1395977043970054517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A055025 (n + 1)).toNat

end

end A055026.P1395977043970054517

/-! ## A055026.P10981601533375382699

`∑{d}[A055025(n+1), A055028(#)]`
-/

namespace A055026.P10981601533375382699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055028 d

end

end A055026.P10981601533375382699

/-! ## A055026.P3238571781293715318

`A055028(A120119(A000040(n+1)))`
-/

namespace A055026.P3238571781293715318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (A120119 (A000040 (n + 1)).toNat).toNat

end

end A055026.P3238571781293715318

/-! ## A055026.P6760893347089181319

`lcm(A000034(n), A055028(A055025(n+1)))`
-/

namespace A055026.P6760893347089181319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A055028 (A055025 (n + 1)).toNat)

end

end A055026.P6760893347089181319

/-! ## A055026.P1743657000174449482

`A055028(A055025(n+1)%(A000217(n+5)-4))`
-/

namespace A055026.P1743657000174449482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (Int.tmod (A055025 (n + 1)) (A000217 (n + 5) - 4)).toNat

end

end A055026.P1743657000174449482

/-!
# A055027: Number of inequivalent Gaussian primes of successive norms (indexed by A055025).

The programs for A055027, there is no canonical definition to state claims against.
-/

/-! ## A055027.P6288078597308502379

`A055026(n+1)/4`
-/

namespace A055027.P6288078597308502379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055026 (n + 1) : ℚ) / 4

end

end A055027.P6288078597308502379

/-! ## A055027.P2475834924097272095

`A055026(comp[2*n]-n)%3`
-/

namespace A055027.P2475834924097272095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) 3

end

end A055027.P2475834924097272095

/-! ## A055027.P8796600310958742463

`A057427(A300588(n+1))+A057427(n)`
-/

namespace A055027.P8796600310958742463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A300588 (n + 1)).toNat + A057427 n

end

end A055027.P8796600310958742463

/-! ## A055027.P13027946999503467806

`A104614(A055026(n+1)+A001511(2*n+3))`
-/

namespace A055027.P13027946999503467806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104614 (A055026 (n + 1) + A001511 (2 * n + 3)).toNat

end

end A055027.P13027946999503467806

/-! ## A055027.P1443024317458928053

`A109697(A055026(n+1)+A001511(2*n+3))`
-/

namespace A055027.P1443024317458928053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 (A055026 (n + 1) + A001511 (2 * n + 3)).toNat

end

end A055027.P1443024317458928053

/-! ## A055027.P7384195886141308868

`gcd(2, A000203(A055025(n+1)))`
-/

namespace A055027.P7384195886141308868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000203 (A055025 (n + 1)).toNat)

end

end A055027.P7384195886141308868

/-! ## A055027.P10419790137944692547

`gcd(A000005(A055025(n+1)), A046644(n+1))`
-/

namespace A055027.P10419790137944692547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A055025 (n + 1)).toNat) (A046644 (n + 1))

end

end A055027.P10419790137944692547

/-! ## A055027.P6983014586635493213

`2-(A000203(A055025(n+1))%2)^A256320(n)`
-/

namespace A055027.P6983014586635493213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (Int.tmod (A000203 (A055025 (n + 1)).toNat) 2 : ℚ) ^ (A256320 n : ℤ)

end

end A055027.P6983014586635493213

/-! ## A055027.P11377435870344462801

`A007318(∑{d}[2*A055025(n+1), A001222(#)])`
-/

namespace A055027.P11377435870344462801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 d).toNat

end

end A055027.P11377435870344462801

/-! ## A055027.P5106037519821243055

`p?[A055029(n)+1]-1`
-/

namespace A055027.P5106037519821243055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A055027.P5106037519821243055

/-! ## A055027.P4682034946621734311

`A002654(A055025(n+1))`
-/

namespace A055027.P4682034946621734311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A055025 (n + 1)).toNat

end

end A055027.P4682034946621734311

/-! ## A055027.P1205530920547402970

`A055029(A055025(2*n+1-n))`
-/

namespace A055027.P1205530920547402970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A055025 (2 * n + 1 - n)).toNat

end

end A055027.P1205530920547402970

/-! ## A055027.P8791005219909656504

`A000161(5*A055025(n+1))`
-/

namespace A055027.P8791005219909656504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (5 * A055025 (n + 1)).toNat

end

end A055027.P8791005219909656504

/-!
# A055028: Number of Gaussian primes of norm n.

The programs for A055028, the canonical program `A055028.P9559815972415415958` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055028 has offset 0).

The definition of A055028 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055029, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055028.P9559815972415415958

`4*A055029(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055028

/-- `4*A055029(n)` -/
def P9559815972415415958.Spec : Prop :=
  ∀ n, P9559815972415415958.a n = A055028 n

theorem P9559815972415415958.correct : P9559815972415415958.Spec := by
  intro n
  simp only [A055028]

end A055028

/-! ## A055028.P16679994907620040217

`lcm(A004018(n), A055029(n))`
-/

namespace A055028.P16679994907620040217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004018 n) (A055029 n)

end

end A055028.P16679994907620040217

namespace A055028

/-- `lcm(A004018(n), A055029(n))` -/
def P16679994907620040217.Spec : Prop :=
  ∀ n, (P16679994907620040217.a n : ℤ) = A055028 n

end A055028

/-! ## A055028.P16688455506298569907

`char[A055025(n+1)]*A004018(n)`
-/

namespace A055028.P16688455506298569907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004018 n

end

end A055028.P16688455506298569907

namespace A055028

/-- `char[A055025(n+1)]*A004018(n)` -/
def P16688455506298569907.Spec : Prop :=
  ∀ n, P16688455506298569907.a n = A055028 n

end A055028

/-! ## A055028.P1147468706013175638

`A055029(n)/(A306694(n+1)/2)²`
-/

namespace A055028.P1147468706013175638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055029 n : ℚ) / ((A306694 (n + 1) : ℚ) / 2) ^ 2

end

end A055028.P1147468706013175638

namespace A055028

/-- `A055029(n)/(A306694(n+1)/2)²` -/
def P1147468706013175638.Spec : Prop :=
  ∀ n, P1147468706013175638.a n = (A055028 n : ℚ)

end A055028

/-! ## A055028.P7238110045497488124

`A172326(A055029(n)^A166333(n))`
-/

namespace A055028.P7238110045497488124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172326 (SequenceMachineLib.roundAway ((A055029 n : ℚ) ^ (A166333 n : ℤ))).toNat

end

end A055028.P7238110045497488124

namespace A055028

/-- `A172326(A055029(n)^A166333(n))` -/
def P7238110045497488124.Spec : Prop :=
  ∀ n, P7238110045497488124.a n = A055028 n

end A055028

/-! ## A055028.P2318113810023350977

`A008586(A055029(n)^A046206(n+1))`
-/

namespace A055028.P2318113810023350977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A055029 n : ℚ) ^ (A046206 (n + 1) : ℤ))).toNat

end

end A055028.P2318113810023350977

namespace A055028

/-- `A008586(A055029(n)^A046206(n+1))` -/
def P2318113810023350977.Spec : Prop :=
  ∀ n, P2318113810023350977.a n = A055028 n

end A055028

/-! ## A055028.P16341328128999761739

`A008586(A055029(n)+n)-A008586(n)`
-/

namespace A055028.P16341328128999761739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A055029 n + (n : ℤ)).toNat - A008586 n

end

end A055028.P16341328128999761739

namespace A055028

/-- `A008586(A055029(n)+n)-A008586(n)` -/
def P16341328128999761739.Spec : Prop :=
  ∀ n, P16341328128999761739.a n = A055028 n

end A055028

/-! ## A055028.P3562001033297089684

`A008586(n)-A008586(n-A055029(n))`
-/

namespace A055028.P3562001033297089684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n - A008586 ((n : ℤ) - A055029 n).toNat

end

end A055028.P3562001033297089684

namespace A055028

/-- `A008586(n)-A008586(n-A055029(n))` -/
def P3562001033297089684.Spec : Prop :=
  ∀ n, P3562001033297089684.a n = A055028 n

end A055028

/-! ## A055028.P12929760156593833462

`A055029(n)/(A227481(n)/2)²`
-/

namespace A055028.P12929760156593833462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055029 n : ℚ) / ((A227481 n : ℚ) / 2) ^ 2

end

end A055028.P12929760156593833462

namespace A055028

/-- `A055029(n)/(A227481(n)/2)²` -/
def P12929760156593833462.Spec : Prop :=
  ∀ n, P12929760156593833462.a n = (A055028 n : ℚ)

end A055028

/-! ## A055028.P2729536834473569479

`A008586(A055029(n)/A227481(n))`
-/

namespace A055028.P2729536834473569479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A055029 n : ℚ) / (A227481 n : ℚ))).toNat

end

end A055028.P2729536834473569479

namespace A055028

/-- `A008586(A055029(n)/A227481(n))` -/
def P2729536834473569479.Spec : Prop :=
  ∀ n, P2729536834473569479.a n = A055028 n

end A055028

/-!
# A055029: Number of inequivalent Gaussian primes of norm n.

The programs for A055029, the canonical program `A055029.P8500131277876422925` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055029 has offset 0).

The definition of A055029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055029.P7140648871712189260

`A055028(n)/4`
-/

namespace A055029.P7140648871712189260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055028 n : ℚ) / 4

end

end A055029.P7140648871712189260

namespace A055029

/-- `A055028(n)/4` -/
def P7140648871712189260.Spec : Prop :=
  ∀ n, P7140648871712189260.a n = (A055029 n : ℚ)

end A055029

/-! ## A055029.P954082446489855101

`A055028(2*n-n)%3`
-/

namespace A055029.P954082446489855101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055028 (2 * n - n)) 3

end

end A055029.P954082446489855101

namespace A055029

/-- `A055028(2*n-n)%3` -/
def P954082446489855101.Spec : Prop :=
  ∀ n, P954082446489855101.a n = A055029 n

end A055029

/-! ## A055029.P8500131277876422925

`char[A002144(n+1)]+char[A055025(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055029

/-- `char[A002144(n+1)]+char[A055025(n+1)]` -/
def P8500131277876422925.Spec : Prop :=
  ∀ n, (P8500131277876422925.a n : ℤ) = A055029 n

theorem P8500131277876422925.correct : P8500131277876422925.Spec := by
  intro n
  simp only [A055029]

end A055029

/-! ## A055029.P3346381209795719334

`A285030(A055028(n)+A020639(2*(n+1)))`
-/

namespace A055029.P3346381209795719334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285030 (A055028 n + A020639 (2 * (n + 1))).toNat

end

end A055029.P3346381209795719334

namespace A055029

/-- `A285030(A055028(n)+A020639(2*(n+1)))` -/
def P3346381209795719334.Spec : Prop :=
  ∀ n, P3346381209795719334.a n = A055029 n

end A055029

/-! ## A055029.P14823079325164537032

`A001222(A055028(n)+A036606(A325226(n+1)))`
-/

namespace A055029.P14823079325164537032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055028 n + A036606 (A325226 (n + 1)).toNat).toNat

end

end A055029.P14823079325164537032

namespace A055029

/-- `A001222(A055028(n)+A036606(A325226(n+1)))` -/
def P14823079325164537032.Spec : Prop :=
  ∀ n, P14823079325164537032.a n = A055029 n

end A055029

/-! ## A055029.P14131360349743049864

`char[A055025(n+1)]*A000161(n²)`
-/

namespace A055029.P14131360349743049864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000161 (n ^ 2)

end

end A055029.P14131360349743049864

namespace A055029

/-- `char[A055025(n+1)]*A000161(n²)` -/
def P14131360349743049864.Spec : Prop :=
  ∀ n, P14131360349743049864.a n = A055029 n

end A055029

/-!
# A055030: (Sum(m^(p-1),m=1..p-1)+1)/p as p runs through the primes.

The programs for A055030, there is no canonical definition to state claims against.
-/

/-! ## A055030.P9534812478128432612

`(1+A225578(n+1))/A000040(n+1)`
-/

namespace A055030.P9534812478128432612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A225578 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A055030.P9534812478128432612

/-! ## A055030.P7906908572578428856

`A055031(A000040(n+1))`
-/

namespace A055030.P7906908572578428856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055031 (A000040 (n + 1)).toNat

end

end A055030.P7906908572578428856

/-! ## A055030.P9029702835931490546

`record[A055031(A006530(n+1))]`
-/

namespace A055030.P9029702835931490546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055031 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055030.P9029702835931490546

/-! ## A055030.P9474867660408835485

`record[A055031(A014963(n+1))]`
-/

namespace A055030.P9474867660408835485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055031 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055030.P9474867660408835485

/-! ## A055030.P4761210178584101302

`A055031(eq[2, A000005(n+1)]+1)`
-/

namespace A055030.P4761210178584101302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055030.P4761210178584101302

/-!
# A055032: Denominator of (Sum(m^(n-1),m=1..n-1)+1)/n.

The programs for A055032, the canonical program `A055032.P14368911295060882671` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055032 has offset 1).

The definition of A055032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055032.P1800507631731136867

`(n+1)/gcd(n+1, A201560(n+1))`
-/

namespace A055032.P1800507631731136867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A201560 (n + 1)) : ℚ)

end

end A055032.P1800507631731136867

namespace A055032

/-- `(n+1)/gcd(n+1, A201560(n+1))` -/
def P1800507631731136867.Spec : Prop :=
  ∀ n, P1800507631731136867.a n = (A055032 (n + 1) : ℚ)

end A055032

/-! ## A055032.P12419667102476854419

`gcd(A257942(n), A309132(n+1))`
-/

namespace A055032.P12419667102476854419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257942 n) (A309132 (n + 1))

end

end A055032.P12419667102476854419

namespace A055032

/-- `gcd(A257942(n), A309132(n+1))` -/
def P12419667102476854419.Spec : Prop :=
  ∀ n, (P12419667102476854419.a n : ℤ) = A055032 (n + 1)

end A055032

/-! ## A055032.P14368911295060882671

`lcm(A226040(n), A326690(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A055032

/-- `lcm(A226040(n), A326690(n+1))` -/
def P14368911295060882671.Spec : Prop :=
  ∀ n, (P14368911295060882671.a n : ℤ) = A055032 (n + 1)

theorem P14368911295060882671.correct : P14368911295060882671.Spec := by
  intro n
  simp only [A055032, Nat.add_sub_cancel]

end A055032

/-! ## A055032.P3311844446770251216

`gcd(A309132(n+1)+A002378(n), A079097(n))`
-/

namespace A055032.P3311844446770251216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A309132 (n + 1) + A002378 n) (A079097 n)

end

end A055032.P3311844446770251216

namespace A055032

/-- `gcd(A309132(n+1)+A002378(n), A079097(n))` -/
def P3311844446770251216.Spec : Prop :=
  ∀ n, (P3311844446770251216.a n : ℤ) = A055032 (n + 1)

end A055032

/-! ## A055032.P4413101090413284394

`gcd(A226040(n)*A326690(n+1), A131738(n))`
-/

namespace A055032.P4413101090413284394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226040 n * A326690 (n + 1)) (A131738 n)

end

end A055032.P4413101090413284394

namespace A055032

/-- `gcd(A226040(n)*A326690(n+1), A131738(n))` -/
def P4413101090413284394.Spec : Prop :=
  ∀ n, (P4413101090413284394.a n : ℤ) = A055032 (n + 1)

end A055032

/-! ## A055032.P13996406124021657098

`(n+1)/A055023(n+1)`
-/

namespace A055032.P13996406124021657098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055023 (n + 1) : ℚ)

end

end A055032.P13996406124021657098

namespace A055032

/-- `(n+1)/A055023(n+1)` -/
def P13996406124021657098.Spec : Prop :=
  ∀ n, P13996406124021657098.a n = (A055032 (n + 1) : ℚ)

end A055032

/-! ## A055032.P6395593926089184518

`gcd(A002378(n), A309132(A079097(n)))`
-/

namespace A055032.P6395593926089184518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A309132 (A079097 n).toNat)

end

end A055032.P6395593926089184518

namespace A055032

/-- `gcd(A002378(n), A309132(A079097(n)))` -/
def P6395593926089184518.Spec : Prop :=
  ∀ n, (P6395593926089184518.a n : ℤ) = A055032 (n + 1)

end A055032

/-! ## A055032.P15228594776871172090

`A054531(A055023(n+1)+∑[n])`
-/

namespace A055032.P15228594776871172090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A055023 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A055032.P15228594776871172090

namespace A055032

/-- `A054531(A055023(n+1)+∑[n])` -/
def P15228594776871172090.Spec : Prop :=
  ∀ n, P15228594776871172090.a n = A055032 (n + 1)

end A055032

/-! ## A055032.P15980183223306635529

`gcd(A079097(n), A174342(n))`
-/

namespace A055032.P15980183223306635529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079097 n) (A174342 n)

end

end A055032.P15980183223306635529

namespace A055032

/-- `gcd(A079097(n), A174342(n))` -/
def P15980183223306635529.Spec : Prop :=
  ∀ n, (P15980183223306635529.a n : ℤ) = A055032 (n + 1)

end A055032

/-! ## A055032.P15108347314575060046

`gcd(n+1, A326582(n))`
-/

namespace A055032.P15108347314575060046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326582 n)

end

end A055032.P15108347314575060046

namespace A055032

/-- `gcd(n+1, A326582(n))` -/
def P15108347314575060046.Spec : Prop :=
  ∀ n, (P15108347314575060046.a n : ℤ) = A055032 (n + 1)

end A055032

/-!
# A055033: a(n) = usigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448).

The programs for A055033, the canonical program `A055033.P5372904485544142447` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055033 has offset 1).

The definition of A055033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055033.P5372904485544142447

`A034448(A034448(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055033

/-- `A034448(A034448(n+1))` -/
def P5372904485544142447.Spec : Prop :=
  ∀ n, P5372904485544142447.a n = A055033 (n + 1)

theorem P5372904485544142447.correct : P5372904485544142447.Spec := by
  intro n
  simp only [A055033, Nat.add_sub_cancel]

end A055033

/-! ## A055033.P8773999180674051703

`A034460(A345451(n+1)+1)+A345451(n+1)+1`
-/

namespace A055033.P8773999180674051703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A345451 (n + 1) + 1).toNat + (A345451 (n + 1) + 1)

end

end A055033.P8773999180674051703

namespace A055033

/-- `A034460(A345451(n+1)+1)+A345451(n+1)+1` -/
def P8773999180674051703.Spec : Prop :=
  ∀ n, P8773999180674051703.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P9778397575506480897

`n+1+A034460(A034460(n+1)+n+1)+A034460(n+1)`
-/

namespace A055033.P9778397575506480897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A034460 (A034460 (n + 1) + (n + 1 : ℤ)).toNat + A034460 (n + 1))

end

end A055033.P9778397575506480897

namespace A055033

/-- `n+1+A034460(A034460(n+1)+n+1)+A034460(n+1)` -/
def P9778397575506480897.Spec : Prop :=
  ∀ n, P9778397575506480897.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P16746527376999308485

`A345451(A345451(n+1)+1)+1`
-/

namespace A055033.P16746527376999308485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A345451 (n + 1) + 1).toNat + 1

end

end A055033.P16746527376999308485

namespace A055033

/-- `A345451(A345451(n+1)+1)+1` -/
def P16746527376999308485.Spec : Prop :=
  ∀ n, P16746527376999308485.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P11563060507801667767

`∑{d}[∑{d}[n+1, A254503(#)], A254503(#)]`
-/

namespace A055033.P11563060507801667767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A254503 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A254503 d

end

end A055033.P11563060507801667767

namespace A055033

/-- `∑{d}[∑{d}[n+1, A254503(#)], A254503(#)]` -/
def P11563060507801667767.Spec : Prop :=
  ∀ n, P11563060507801667767.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P11579734023540731175

`∑{d}[A117658(A064549(n+1)), A254503(#)]`
-/

namespace A055033.P11579734023540731175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A254503 d

end

end A055033.P11579734023540731175

namespace A055033

/-- `∑{d}[A117658(A064549(n+1)), A254503(#)]` -/
def P11579734023540731175.Spec : Prop :=
  ∀ n, P11579734023540731175.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P3941965674455577738

`A305461(A305461((n+1)²)²)`
-/

namespace A055033.P3941965674455577738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A305461 ((n + 1) ^ 2) ^ 2).toNat

end

end A055033.P3941965674455577738

namespace A055033

/-- `A305461(A305461((n+1)²)²)` -/
def P3941965674455577738.Spec : Prop :=
  ∀ n, P3941965674455577738.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P9632667990992920149

`A360162(A360162((n+1)²)²)`
-/

namespace A055033.P9632667990992920149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A360162 ((n + 1) ^ 2) ^ 2).toNat

end

end A055033.P9632667990992920149

namespace A055033

/-- `A360162(A360162((n+1)²)²)` -/
def P9632667990992920149.Spec : Prop :=
  ∀ n, P9632667990992920149.a n = A055033 (n + 1)

end A055033

/-! ## A055033.P12597927278000063790

`A365404(A365404((n+1)²)²)`
-/

namespace A055033.P12597927278000063790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (A365404 ((n + 1) ^ 2) ^ 2).toNat

end

end A055033.P12597927278000063790

namespace A055033

/-- `A365404(A365404((n+1)²)²)` -/
def P12597927278000063790.Spec : Prop :=
  ∀ n, P12597927278000063790.a n = A055033 (n + 1)

end A055033

/-!
# A055034: a(1) = 1, a(n) = phi(2*n)/2 for n > 1.

The programs for A055034, the canonical program `A055034.P626743345724303552` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055034 has offset 1).

The definition of A055034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055034.P14090169203295776730

`Δ[ceil(A049690(n)/2)]`
-/

namespace A055034.P14090169203295776730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049690 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055034.P14090169203295776730

namespace A055034

/-- `Δ[ceil(A049690(n)/2)]` -/
def P14090169203295776730.Spec : Prop :=
  ∀ n, P14090169203295776730.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P12663564154709227431

`ceil(A062570(n+1)/2)`
-/

namespace A055034.P12663564154709227431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062570 (n + 1) : ℚ) / 2⌉

end

end A055034.P12663564154709227431

namespace A055034

/-- `ceil(A062570(n+1)/2)` -/
def P12663564154709227431.Spec : Prop :=
  ∀ n, P12663564154709227431.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P3174201009977773822

`ceil(A000010(2*(n+1))/2)`
-/

namespace A055034.P3174201009977773822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉

end

end A055034.P3174201009977773822

namespace A055034

/-- `ceil(A000010(2*(n+1))/2)` -/
def P3174201009977773822.Spec : Prop :=
  ∀ n, P3174201009977773822.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P14548990347986988973

`round(A000010(2*n+2)/2)`
-/

namespace A055034.P14548990347986988973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (2 * n + 2) : ℚ) / 2)

end

end A055034.P14548990347986988973

namespace A055034

/-- `round(A000010(2*n+2)/2)` -/
def P14548990347986988973.Spec : Prop :=
  ∀ n, P14548990347986988973.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P11805157762163703933

`A000010(ceil(Δ[cot(acot(n)²)]))/2`
-/

namespace A055034.P11805157762163703933
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.acot (n : ℝ) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ⌈f1 (n + 1) - f1 n⌉.toNat : ℚ) / 2

end

end A055034.P11805157762163703933

namespace A055034

/-- `A000010(ceil(Δ[cot(acot(n)²)]))/2` -/
def P11805157762163703933.Spec : Prop :=
  ∀ n, P11805157762163703933.a n = (A055034 (n + 1) : ℚ)

end A055034

/-! ## A055034.P3747426441631948895

`lcm(4, A000010(4*(n+1)))/4`
-/

namespace A055034.P3747426441631948895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A000010 (4 * (n + 1))) : ℚ) / 4

end

end A055034.P3747426441631948895

namespace A055034

/-- `lcm(4, A000010(4*(n+1)))/4` -/
def P3747426441631948895.Spec : Prop :=
  ∀ n, P3747426441631948895.a n = (A055034 (n + 1) : ℚ)

end A055034

/-! ## A055034.P12255945844504802009

`A000010(abs(1-n)+n+3)/2`
-/

namespace A055034.P12255945844504802009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (|1 - (n : ℤ)| + (n + 3 : ℤ)).toNat : ℚ) / 2

end

end A055034.P12255945844504802009

namespace A055034

/-- `A000010(abs(1-n)+n+3)/2` -/
def P12255945844504802009.Spec : Prop :=
  ∀ n, P12255945844504802009.a n = (A055034 (n + 1) : ℚ)

end A055034

/-! ## A055034.P3086349389077068276

`floor((A000010(n+2+n)+1)/2)`
-/

namespace A055034.P3086349389077068276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 2 + n) + 1 : ℚ) / 2⌋

end

end A055034.P3086349389077068276

namespace A055034

/-- `floor((A000010(n+2+n)+1)/2)` -/
def P3086349389077068276.Spec : Prop :=
  ∀ n, P3086349389077068276.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P9914186283442948938

`ceil((A000010(Δ[n²]+1)-2)/2)+1`
-/

namespace A055034.P9914186283442948938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 2 : ℚ) / 2⌉ + 1

end

end A055034.P9914186283442948938

namespace A055034

/-- `ceil((A000010(Δ[n²]+1)-2)/2)+1` -/
def P9914186283442948938.Spec : Prop :=
  ∀ n, P9914186283442948938.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P15428866712867724235

`Δ[a(n-1)+A000010(2*n)/2]` with `a(0)=0, a(1)=1`
-/

namespace A055034.P15428866712867724235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000010 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055034.P15428866712867724235

namespace A055034

/-- `Δ[a(n-1)+A000010(2*n)/2]` -/
def P15428866712867724235.Spec : Prop :=
  ∀ n, P15428866712867724235.a n = (A055034 (n + 1) : ℚ)

end A055034

/-! ## A055034.P7335448293641644733

`A004525(A062570(n+1))`
-/

namespace A055034.P7335448293641644733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A062570 (n + 1)).toNat

end

end A055034.P7335448293641644733

namespace A055034

/-- `A004525(A062570(n+1))` -/
def P7335448293641644733.Spec : Prop :=
  ∀ n, P7335448293641644733.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P14580129487030741798

`A004525(A000010(2*(n+1)))`
-/

namespace A055034.P14580129487030741798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (2 * (n + 1))).toNat

end

end A055034.P14580129487030741798

namespace A055034

/-- `A004525(A000010(2*(n+1)))` -/
def P14580129487030741798.Spec : Prop :=
  ∀ n, P14580129487030741798.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P16364686498953612771

`A032742(A000010(2*n+2))`
-/

namespace A055034.P16364686498953612771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000010 (2 * n + 2)).toNat

end

end A055034.P16364686498953612771

namespace A055034

/-- `A032742(A000010(2*n+2))` -/
def P16364686498953612771.Spec : Prop :=
  ∀ n, P16364686498953612771.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P2879430310876425104

`A078898(A000010(n+2+n))`
-/

namespace A055034.P2879430310876425104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000010 (n + 2 + n)).toNat

end

end A055034.P2879430310876425104

namespace A055034

/-- `A078898(A000010(n+2+n))` -/
def P2879430310876425104.Spec : Prop :=
  ∀ n, P2879430310876425104.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P626743345724303552

`A065033(n)-A219839(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A055034

/-- `A065033(n)-A219839(n+1)` -/
def P626743345724303552.Spec : Prop :=
  ∀ n, P626743345724303552.a n = A055034 (n + 1)

theorem P626743345724303552.correct : P626743345724303552.Spec := by
  intro n
  simp only [A055034, Nat.add_sub_cancel]

end A055034

/-! ## A055034.P1097699081279413126

`A200905(n+1)/A040007(n)`
-/

namespace A055034.P1097699081279413126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / (A040007 n : ℚ)

end

end A055034.P1097699081279413126

namespace A055034

/-- `A200905(n+1)/A040007(n)` -/
def P1097699081279413126.Spec : Prop :=
  ∀ n, P1097699081279413126.a n = (A055034 (n + 1) : ℚ)

end A055034

/-! ## A055034.P18048667382470132309

`∑{d}[A062570(n+1), A326305(#)]`
-/

namespace A055034.P18048667382470132309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326305 d

end

end A055034.P18048667382470132309

namespace A055034

/-- `∑{d}[A062570(n+1), A326305(#)]` -/
def P18048667382470132309.Spec : Prop :=
  ∀ n, P18048667382470132309.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P14869030917005706769

`A004526(A000010(2*(n+1))+1)`
-/

namespace A055034.P14869030917005706769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (2 * (n + 1)) + 1).toNat

end

end A055034.P14869030917005706769

namespace A055034

/-- `A004526(A000010(2*(n+1))+1)` -/
def P14869030917005706769.Spec : Prop :=
  ∀ n, P14869030917005706769.a n = A055034 (n + 1)

end A055034

/-! ## A055034.P3593364438872695130

`A057979(A000010(2*(n+1))+1)`
-/

namespace A055034.P3593364438872695130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (2 * (n + 1)) + 1).toNat

end

end A055034.P3593364438872695130

namespace A055034

/-- `A057979(A000010(2*(n+1))+1)` -/
def P3593364438872695130.Spec : Prop :=
  ∀ n, P3593364438872695130.a n = A055034 (n + 1)

end A055034

/-!
# A055035: Degree of minimal polynomial of sin(Pi/n) over the rationals.

The programs for A055035, the canonical program `A055035.P11736500335197539708` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055035 has offset 1).

The definition of A055035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055035.P11736500335197539708

`A093819(2*(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A055035

/-- `A093819(2*(n+1))` -/
def P11736500335197539708.Spec : Prop :=
  ∀ n, P11736500335197539708.a n = A055035 (n + 1)

theorem P11736500335197539708.correct : P11736500335197539708.Spec := by
  intro n
  simp only [A055035, Nat.add_sub_cancel]

end A055035

/-! ## A055035.P5639412930833085548

`ceil(A000010(n+1)/gcd(n+1, C(n, 2)))`
-/

namespace A055035.P5639412930833085548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / (Nat.gcd (n + 1) (Nat.choose n 2) : ℚ)⌉

end

end A055035.P5639412930833085548

namespace A055035

/-- `ceil(A000010(n+1)/gcd(n+1, C(n, 2)))` -/
def P5639412930833085548.Spec : Prop :=
  ∀ n, P5639412930833085548.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P8290446623706971850

`A000010(n+1)/A040001(A057979(n))`
-/

namespace A055035.P8290446623706971850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A040001 (A057979 n).toNat : ℚ)

end

end A055035.P8290446623706971850

namespace A055035

/-- `A000010(n+1)/A040001(A057979(n))` -/
def P8290446623706971850.Spec : Prop :=
  ∀ n, P8290446623706971850.a n = (A055035 (n + 1) : ℚ)

end A055035

/-! ## A055035.P9111094391316480244

`A000010(2*(n+1))/gcd(A335024(2*n+1), A335024(n+2))`
-/

namespace A055035.P9111094391316480244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (Int.gcd (A335024 (2 * n + 1)) (A335024 (n + 2)) : ℚ)

end

end A055035.P9111094391316480244

namespace A055035

/-- `A000010(2*(n+1))/gcd(A335024(2*n+1), A335024(n+2))` -/
def P9111094391316480244.Spec : Prop :=
  ∀ n, P9111094391316480244.a n = (A055035 (n + 1) : ℚ)

end A055035

/-! ## A055035.P15225177362398432751

`A110654(A000010(n+1)-A080736(n+1))+A080736(n+1)`
-/

namespace A055035.P15225177362398432751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000010 (n + 1) - A080736 (n + 1)).toNat + A080736 (n + 1)

end

end A055035.P15225177362398432751

namespace A055035

/-- `A110654(A000010(n+1)-A080736(n+1))+A080736(n+1)` -/
def P15225177362398432751.Spec : Prop :=
  ∀ n, P15225177362398432751.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P8343267622351175286

`A110654(A080736(n+1)+A000010(n+1))`
-/

namespace A055035.P8343267622351175286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A080736 (n + 1) + A000010 (n + 1)).toNat

end

end A055035.P8343267622351175286

namespace A055035

/-- `A110654(A080736(n+1)+A000010(n+1))` -/
def P8343267622351175286.Spec : Prop :=
  ∀ n, P8343267622351175286.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P17395030425239972809

`A000010(2*(n+1))/gcd(A057544(2*n), A057544(n+1))`
-/

namespace A055035.P17395030425239972809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) : ℚ) / (Int.gcd (A057544 (2 * n)) (A057544 (n + 1)) : ℚ)

end

end A055035.P17395030425239972809

namespace A055035

/-- `A000010(2*(n+1))/gcd(A057544(2*n), A057544(n+1))` -/
def P17395030425239972809.Spec : Prop :=
  ∀ n, P17395030425239972809.a n = (A055035 (n + 1) : ℚ)

end A055035

/-! ## A055035.P2379673022432799262

`A055034(A225975(2*(n+1)))`
-/

namespace A055035.P2379673022432799262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (2 * (n + 1))).toNat

end

end A055035.P2379673022432799262

namespace A055035

/-- `A055034(A225975(2*(n+1)))` -/
def P2379673022432799262.Spec : Prop :=
  ∀ n, P2379673022432799262.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P4358432393567579325

`A232626(A195161(n+1))`
-/

namespace A055035.P4358432393567579325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (A195161 (n + 1)).toNat

end

end A055035.P4358432393567579325

namespace A055035

/-- `A232626(A195161(n+1))` -/
def P4358432393567579325.Spec : Prop :=
  ∀ n, P4358432393567579325.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P15557954187029094589

`A232626(4*(n+1))`
-/

namespace A055035.P15557954187029094589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (4 * (n + 1))

end

end A055035.P15557954187029094589

namespace A055035

/-- `A232626(4*(n+1))` -/
def P15557954187029094589.Spec : Prop :=
  ∀ n, P15557954187029094589.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P14345395890135350675

`A023022(A227043(n+1))`
-/

namespace A055035.P14345395890135350675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A227043 (n + 1)).toNat

end

end A055035.P14345395890135350675

namespace A055035

/-- `A023022(A227043(n+1))` -/
def P14345395890135350675.Spec : Prop :=
  ∀ n, P14345395890135350675.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P13665768295666699035

`A023022(lcm(2, A178182(2*(n+1))))`
-/

namespace A055035.P13665768295666699035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Int.lcm 2 (A178182 (2 * (n + 1))))

end

end A055035.P13665768295666699035

namespace A055035

/-- `A023022(lcm(2, A178182(2*(n+1))))` -/
def P13665768295666699035.Spec : Prop :=
  ∀ n, P13665768295666699035.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P16214641461395945849

`A023022(A178182(2*(n+1))+char[1])`
-/

namespace A055035.P16214641461395945849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A178182 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A055035.P16214641461395945849

namespace A055035

/-- `A023022(A178182(2*(n+1))+char[1])` -/
def P16214641461395945849.Spec : Prop :=
  ∀ n, P16214641461395945849.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P17562777108531845462

`A093819(A103517(n))%(n+2)`
-/

namespace A055035.P17562777108531845462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093819 (A103517 n).toNat) (n + 2 : ℤ)

end

end A055035.P17562777108531845462

namespace A055035

/-- `A093819(A103517(n))%(n+2)` -/
def P17562777108531845462.Spec : Prop :=
  ∀ n, P17562777108531845462.a n = A055035 (n + 1)

end A055035

/-! ## A055035.P15171473604279001001

`A000010(n+1)/A091090(A006578(n))`
-/

namespace A055035.P15171473604279001001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A091090 (A006578 n).toNat : ℚ)

end

end A055035.P15171473604279001001

namespace A055035

/-- `A000010(n+1)/A091090(A006578(n))` -/
def P15171473604279001001.Spec : Prop :=
  ∀ n, P15171473604279001001.a n = (A055035 (n + 1) : ℚ)

end A055035

/-!
# A055037: Number of numbers <= n with an even number of prime factors (counted with multiplicity).

The programs for A055037, the canonical program `A055037.P14780885943729951893` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055037 has offset 1).

The definition of A055037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055037.P15952826687234701656

`∑[log2(gcd(2, ∑{e}[n+1, #]))]`
-/

namespace A055037.P15952826687234701656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P15952826687234701656

namespace A055037

/-- `∑[log2(gcd(2, ∑{e}[n+1, #]))]` -/
def P15952826687234701656.Spec : Prop :=
  ∀ n, P15952826687234701656.a n = (A055037 (n + 1) : ℝ)

end A055037

/-! ## A055037.P14780885943729951893

`∑[(∑{e}[n+1, #]+1)%2]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055037

/-- `∑[(∑{e}[n+1, #]+1)%2]` -/
def P14780885943729951893.Spec : Prop :=
  ∀ n, (P14780885943729951893.a n : ℤ) = A055037 (n + 1)

theorem P14780885943729951893.correct : P14780885943729951893.Spec := by
  intro n
  simp only [A055037, Nat.add_sub_cancel]

end A055037

/-! ## A055037.P12394864516013027264

`∑[and(1, ∑{e}[n+1, #]+1)]`
-/

namespace A055037.P12394864516013027264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P12394864516013027264

namespace A055037

/-- `∑[and(1, ∑{e}[n+1, #]+1)]` -/
def P12394864516013027264.Spec : Prop :=
  ∀ n, (P12394864516013027264.a n : ℤ) = A055037 (n + 1)

theorem P12394864516013027264.correct : P12394864516013027264.Spec := by
  intro n
  simp only [A055037, Nat.add_sub_cancel, A055037.P12394864516013027264.f2, A055037.P12394864516013027264.f1, A055037.P12394864516013027264.a, A055037.P14780885943729951893.f2, A055037.P14780885943729951893.f1, A055037.P14780885943729951893.a, SequenceMachineLib.memo_apply]
  try simp

end A055037

/-! ## A055037.P3320555805987430210

`∑[A065043(n+1)]`
-/

namespace A055037.P3320555805987430210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P3320555805987430210

namespace A055037

/-- `∑[A065043(n+1)]` -/
def P3320555805987430210.Spec : Prop :=
  ∀ n, P3320555805987430210.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P15616559980105684175

`∑[log2(A007421(n+1))]`
-/

namespace A055037.P15616559980105684175
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007421 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P15616559980105684175

namespace A055037

/-- `∑[log2(A007421(n+1))]` -/
def P15616559980105684175.Spec : Prop :=
  ∀ n, P15616559980105684175.a n = (A055037 (n + 1) : ℝ)

end A055037

/-! ## A055037.P4775993121284401636

`∑[1-A066829(n+1)]`
-/

namespace A055037.P4775993121284401636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P4775993121284401636

namespace A055037

/-- `∑[1-A066829(n+1)]` -/
def P4775993121284401636.Spec : Prop :=
  ∀ n, P4775993121284401636.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P13975828694064478422

`∑[A066829(2*(n+1))]`
-/

namespace A055037.P13975828694064478422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P13975828694064478422

namespace A055037

/-- `∑[A066829(2*(n+1))]` -/
def P13975828694064478422.Spec : Prop :=
  ∀ n, P13975828694064478422.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P5126072665648909469

`∑[A353556(2*(n+1))]`
-/

namespace A055037.P5126072665648909469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P5126072665648909469

namespace A055037

/-- `∑[A353556(2*(n+1))]` -/
def P5126072665648909469.Spec : Prop :=
  ∀ n, P5126072665648909469.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P5151134269646627164

`∑[A359770(2*(n+1))]`
-/

namespace A055037.P5151134269646627164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P5151134269646627164

namespace A055037

/-- `∑[A359770(2*(n+1))]` -/
def P5151134269646627164.Spec : Prop :=
  ∀ n, P5151134269646627164.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P944481278337735880

`∑[A353555(4*(n+1))]`
-/

namespace A055037.P944481278337735880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P944481278337735880

namespace A055037

/-- `∑[A353555(4*(n+1))]` -/
def P944481278337735880.Spec : Prop :=
  ∀ n, P944481278337735880.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P11729040263968531911

`∑[A015996(n+1)%2]`
-/

namespace A055037.P11729040263968531911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015996 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P11729040263968531911

namespace A055037

/-- `∑[A015996(n+1)%2]` -/
def P11729040263968531911.Spec : Prop :=
  ∀ n, P11729040263968531911.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P4817500679582366036

`∑[and(1, A016003(n+1))]`
-/

namespace A055037.P4817500679582366036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016003 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P4817500679582366036

namespace A055037

/-- `∑[and(1, A016003(n+1))]` -/
def P4817500679582366036.Spec : Prop :=
  ∀ n, P4817500679582366036.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P8568210767584490603

`∑[and(1, A016008(n+1))]`
-/

namespace A055037.P8568210767584490603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016008 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P8568210767584490603

namespace A055037

/-- `∑[and(1, A016008(n+1))]` -/
def P8568210767584490603.Spec : Prop :=
  ∀ n, P8568210767584490603.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P14118406744247762544

`1-A055038(n+1)+n`
-/

namespace A055037.P14118406744247762544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055038 (n + 1) + (n : ℤ)

end

end A055037.P14118406744247762544

namespace A055037

/-- `1-A055038(n+1)+n` -/
def P14118406744247762544.Spec : Prop :=
  ∀ n, P14118406744247762544.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P2278975493809977156

`∑[log2(gcd(2, A001222(n+1)))]`
-/

namespace A055037.P2278975493809977156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A001222 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P2278975493809977156

namespace A055037

/-- `∑[log2(gcd(2, A001222(n+1)))]` -/
def P2278975493809977156.Spec : Prop :=
  ∀ n, P2278975493809977156.a n = (A055037 (n + 1) : ℝ)

end A055037

/-! ## A055037.P16778624569096112878

`∑[char[n*A008836(n+1)]]`
-/

namespace A055037.P16778624569096112878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P16778624569096112878

namespace A055037

/-- `∑[char[n*A008836(n+1)]]` -/
def P16778624569096112878.Spec : Prop :=
  ∀ n, (P16778624569096112878.a n : ℤ) = A055037 (n + 1)

end A055037

/-! ## A055037.P7970310796369563841

`∑[A001222(2*(n+1))%2]`
-/

namespace A055037.P7970310796369563841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P7970310796369563841

namespace A055037

/-- `∑[A001222(2*(n+1))%2]` -/
def P7970310796369563841.Spec : Prop :=
  ∀ n, P7970310796369563841.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P13796322369709379716

`∑[and(1, A001222(2*n+2))]`
-/

namespace A055037.P13796322369709379716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (2 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P13796322369709379716

namespace A055037

/-- `∑[and(1, A001222(2*n+2))]` -/
def P13796322369709379716.Spec : Prop :=
  ∀ n, P13796322369709379716.a n = A055037 (n + 1)

end A055037

/-! ## A055037.P12270380387901363076

`(A002819(n+1)+n+1)/2`
-/

namespace A055037.P12270380387901363076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002819 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A055037.P12270380387901363076

namespace A055037

/-- `(A002819(n+1)+n+1)/2` -/
def P12270380387901363076.Spec : Prop :=
  ∀ n, P12270380387901363076.a n = (A055037 (n + 1) : ℚ)

end A055037

/-! ## A055037.P6921591057274526374

`∑[and(1, A001222(n+2+n)²)]`
-/

namespace A055037.P6921591057274526374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (n + 2 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055037.P6921591057274526374

namespace A055037

/-- `∑[and(1, A001222(n+2+n)²)]` -/
def P6921591057274526374.Spec : Prop :=
  ∀ n, P6921591057274526374.a n = A055037 (n + 1)

end A055037

/-!
# A055038: Number of numbers <= n with an odd number of prime factors (counted with multiplicity).

The programs for A055038, the canonical program `A055038.P2548781884814120835` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055038 has offset 1).

The definition of A055038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055038.P2548781884814120835

`∑[∑{e}[n+1, #]%2]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055038

/-- `∑[∑{e}[n+1, #]%2]` -/
def P2548781884814120835.Spec : Prop :=
  ∀ n, (P2548781884814120835.a n : ℤ) = A055038 (n + 1)

theorem P2548781884814120835.correct : P2548781884814120835.Spec := by
  intro n
  simp only [A055038, Nat.add_sub_cancel]

end A055038

/-! ## A055038.P5768519385907874379

`∑[and(1, ∑{e}[n+1, #])]`
-/

namespace A055038.P5768519385907874379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P5768519385907874379

namespace A055038

/-- `∑[and(1, ∑{e}[n+1, #])]` -/
def P5768519385907874379.Spec : Prop :=
  ∀ n, (P5768519385907874379.a n : ℤ) = A055038 (n + 1)

theorem P5768519385907874379.correct : P5768519385907874379.Spec := by
  intro n
  simp only [A055038, Nat.add_sub_cancel, A055038.P5768519385907874379.f2, A055038.P5768519385907874379.f1, A055038.P5768519385907874379.a, A055038.P2548781884814120835.f2, A055038.P2548781884814120835.f1, A055038.P2548781884814120835.a, SequenceMachineLib.memo_apply]
  try simp

end A055038

/-! ## A055038.P3408875057645821124

`∑[2-gcd(2, ∑{e}[n+1, #])]`
-/

namespace A055038.P3408875057645821124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P3408875057645821124

namespace A055038

/-- `∑[2-gcd(2, ∑{e}[n+1, #])]` -/
def P3408875057645821124.Spec : Prop :=
  ∀ n, P3408875057645821124.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P10219841174547266055

`∑[A066829(n+1)]`
-/

namespace A055038.P10219841174547266055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P10219841174547266055

namespace A055038

/-- `∑[A066829(n+1)]` -/
def P10219841174547266055.Spec : Prop :=
  ∀ n, P10219841174547266055.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P7539513639804563215

`∑[Δ[A022559(n)]%2]`
-/

namespace A055038.P7539513639804563215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P7539513639804563215

namespace A055038

/-- `∑[Δ[A022559(n)]%2]` -/
def P7539513639804563215.Spec : Prop :=
  ∀ n, P7539513639804563215.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P7094085232540369152

`∑[1-A065043(n+1)]`
-/

namespace A055038.P7094085232540369152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P7094085232540369152

namespace A055038

/-- `∑[1-A065043(n+1)]` -/
def P7094085232540369152.Spec : Prop :=
  ∀ n, P7094085232540369152.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P6513602505136063618

`∑[2-A007421(n+1)]`
-/

namespace A055038.P6513602505136063618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P6513602505136063618

namespace A055038

/-- `∑[2-A007421(n+1)]` -/
def P6513602505136063618.Spec : Prop :=
  ∀ n, P6513602505136063618.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P14891299979658069444

`∑[A065043(2*(n+1))]`
-/

namespace A055038.P14891299979658069444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P14891299979658069444

namespace A055038

/-- `∑[A065043(2*(n+1))]` -/
def P14891299979658069444.Spec : Prop :=
  ∀ n, P14891299979658069444.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P11203340110641786385

`∑[A353555(2*(n+1))]`
-/

namespace A055038.P11203340110641786385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P11203340110641786385

namespace A055038

/-- `∑[A353555(2*(n+1))]` -/
def P11203340110641786385.Spec : Prop :=
  ∀ n, P11203340110641786385.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P14919266238244103867

`∑[A353556(4*(n+1))]`
-/

namespace A055038.P14919266238244103867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P14919266238244103867

namespace A055038

/-- `∑[A353556(4*(n+1))]` -/
def P14919266238244103867.Spec : Prop :=
  ∀ n, P14919266238244103867.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P3336815768687129366

`∑[A359770(4*(n+1))]`
-/

namespace A055038.P3336815768687129366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P3336815768687129366

namespace A055038

/-- `∑[A359770(4*(n+1))]` -/
def P3336815768687129366.Spec : Prop :=
  ∀ n, P3336815768687129366.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P1003470636564777531

`∑[A001222(n+1)%2]`
-/

namespace A055038.P1003470636564777531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P1003470636564777531

namespace A055038

/-- `∑[A001222(n+1)%2]` -/
def P1003470636564777531.Spec : Prop :=
  ∀ n, P1003470636564777531.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P6233122816835063305

`∑[A008476(n+1)%2]`
-/

namespace A055038.P6233122816835063305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008476 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P6233122816835063305

namespace A055038

/-- `∑[A008476(n+1)%2]` -/
def P6233122816835063305.Spec : Prop :=
  ∀ n, P6233122816835063305.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P8908578022494263911

`1-A055037(n+1)+n`
-/

namespace A055038.P8908578022494263911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055037 (n + 1) + (n : ℤ)

end

end A055038.P8908578022494263911

namespace A055038

/-- `1-A055037(n+1)+n` -/
def P8908578022494263911.Spec : Prop :=
  ∀ n, P8908578022494263911.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P10212894642528782048

`(A072203(n+1)+n)/2`
-/

namespace A055038.P10212894642528782048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072203 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A055038.P10212894642528782048

namespace A055038

/-- `(A072203(n+1)+n)/2` -/
def P10212894642528782048.Spec : Prop :=
  ∀ n, P10212894642528782048.a n = (A055038 (n + 1) : ℚ)

end A055038

/-! ## A055038.P15938899469878061491

`(n+1-A002819(n+1))/2`
-/

namespace A055038.P15938899469878061491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A002819 (n + 1) : ℚ) / 2

end

end A055038.P15938899469878061491

namespace A055038

/-- `(n+1-A002819(n+1))/2` -/
def P15938899469878061491.Spec : Prop :=
  ∀ n, P15938899469878061491.a n = (A055038 (n + 1) : ℚ)

end A055038

/-! ## A055038.P15089881237540905463

`∑[1-and(1, A001222(2*(n+1)))]`
-/

namespace A055038.P15089881237540905463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (A001222 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P15089881237540905463

namespace A055038

/-- `∑[1-and(1, A001222(2*(n+1)))]` -/
def P15089881237540905463.Spec : Prop :=
  ∀ n, P15089881237540905463.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P14990625194247220347

`∑[and(1, A001222(1-(n-2*n)))]`
-/

namespace A055038.P14990625194247220347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P14990625194247220347

namespace A055038

/-- `∑[and(1, A001222(1-(n-2*n)))]` -/
def P14990625194247220347.Spec : Prop :=
  ∀ n, P14990625194247220347.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P4361435137673174438

`∑[A000035(A001222(n+1))]`
-/

namespace A055038.P4361435137673174438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P4361435137673174438

namespace A055038

/-- `∑[A000035(A001222(n+1))]` -/
def P4361435137673174438.Spec : Prop :=
  ∀ n, P4361435137673174438.a n = A055038 (n + 1)

end A055038

/-! ## A055038.P8154395563324407147

`∑[A046978(A001222(n+1)²)]`
-/

namespace A055038.P8154395563324407147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055038.P8154395563324407147

namespace A055038

/-- `∑[A046978(A001222(n+1)²)]` -/
def P8154395563324407147.Spec : Prop :=
  ∀ n, P8154395563324407147.a n = A055038 (n + 1)

end A055038

/-!
# A055039: Numbers of the form 2^(2i+1)*(8j+7).

The programs for A055039, there is no canonical definition to state claims against.
-/

/-! ## A055039.P17546753558635071137

`2*A004215(n+1)`
-/

namespace A055039.P17546753558635071137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004215 (n + 1)

end

end A055039.P17546753558635071137

/-! ## A055039.P8097907603642977359

`∪[A044075(n+1), A124169(n+1)]`
-/

namespace A055039.P8097907603642977359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P8097907603642977359

/-! ## A055039.P364380727084532276

`A004215(C(n+1, n))+A004215(n+1)`
-/

namespace A055039.P364380727084532276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (Nat.choose (n + 1) n) + A004215 (n + 1)

end

end A055039.P364380727084532276

/-! ## A055039.P6674776244661640283

`A004215(n+1)+A004215(Δ[n²]-n)`
-/

namespace A055039.P6674776244661640283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1) + A004215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A055039.P6674776244661640283

/-! ## A055039.P17885768291328877955

`2*∩[A004436(n+1), A055052(n+1)]`
-/

namespace A055039.P17885768291328877955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P17885768291328877955

/-! ## A055039.P10796706732195066573

`2*∩[A055052(n+1), A214328(n+1)]`
-/

namespace A055039.P10796706732195066573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P10796706732195066573

/-! ## A055039.P13761811186585672208

`A004215(n+1)+∩[A004436(n+1), A055052(n+1)]`
-/

namespace A055039.P13761811186585672208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A055039.P13761811186585672208

/-! ## A055039.P8612308931220196116

`2*∩[A004214(n+1), A055050(n+1)]`
-/

namespace A055039.P8612308931220196116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P8612308931220196116

/-! ## A055039.P2131977874960752979

`2*∩[A055050(n+1), A055052(n+1)]`
-/

namespace A055039.P2131977874960752979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P2131977874960752979

/-! ## A055039.P13552318023795992301

`2*∩[A055050(n+1), A214328(n+1)]`
-/

namespace A055039.P13552318023795992301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P13552318023795992301

/-! ## A055039.P6056916991746909686

`2*∩[A004214(n+1), A091067(n+1)]`
-/

namespace A055039.P6056916991746909686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P6056916991746909686

/-! ## A055039.P7757407940313937839

`2*∩[A055052(n+1), A091067(n+1)]`
-/

namespace A055039.P7757407940313937839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P7757407940313937839

/-! ## A055039.P7534009566170085879

`2*∩[A055053(n+1), A214328(n+1)]`
-/

namespace A055039.P7534009566170085879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P7534009566170085879

/-! ## A055039.P16705467303396490251

`2*lt[3, A002828(n)]`
-/

namespace A055039.P16705467303396490251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055039.P16705467303396490251

/-! ## A055039.P4335596708691652353

`2*eq[A002828(n), A040002(n)]`
-/

namespace A055039.P4335596708691652353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055039.P4335596708691652353

/-! ## A055039.P3484355299926873691

`2*∩[A055052(n+1), A338691(n+1)]`
-/

namespace A055039.P3484355299926873691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P3484355299926873691

/-! ## A055039.P14281598037370854508

`2*∩[A003273(n+1), A214328(n+1)]`
-/

namespace A055039.P14281598037370854508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P14281598037370854508

/-! ## A055039.P15932367848278457460

`2*∩[A004781(n+1), A214328(n+1)]`
-/

namespace A055039.P15932367848278457460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P15932367848278457460

/-! ## A055039.P8905241243686482265

`2*∩[A004436(n+1), A097700(n+1)]`
-/

namespace A055039.P8905241243686482265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P8905241243686482265

/-! ## A055039.P3328385957684094949

`2*∩[A029597(n+1), A055052(n+1)]`
-/

namespace A055039.P3328385957684094949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055039.P3328385957684094949

/-!
# A055040: Numbers of the form 3^(2i+1)*(3*j+2).

The programs for A055040, the canonical program `A055040.P4027519978801195908` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055040 has offset 1).

The definition of A055040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055040.P13502613693970938005

`3*A055048(n+1)`
-/

namespace A055040.P13502613693970938005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055048 (n + 1)

end

end A055040.P13502613693970938005

namespace A055040

/-- `3*A055048(n+1)` -/
def P13502613693970938005.Spec : Prop :=
  ∀ n, P13502613693970938005.a n = A055040 (n + 1)

end A055040

/-! ## A055040.P4027519978801195908

`eq[6, dr(A007913(n+1))]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055040

/-- `eq[6, dr(A007913(n+1))]+1` -/
def P4027519978801195908.Spec : Prop :=
  ∀ n, (P4027519978801195908.a n : ℤ) = A055040 (n + 1)

theorem P4027519978801195908.correct : P4027519978801195908.Spec := by
  intro n
  simp only [A055040, Nat.add_sub_cancel]

end A055040

/-! ## A055040.P115304136156555475

`3*eq[0, A224822(n)]`
-/

namespace A055040.P115304136156555475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P115304136156555475

namespace A055040

/-- `3*eq[0, A224822(n)]` -/
def P115304136156555475.Spec : Prop :=
  ∀ n, (P115304136156555475.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P8865045594326307497

`3*eq[0, A246927(n)]`
-/

namespace A055040.P8865045594326307497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P8865045594326307497

namespace A055040

/-- `3*eq[0, A246927(n)]` -/
def P8865045594326307497.Spec : Prop :=
  ∀ n, (P8865045594326307497.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P7858100246173762021

`A008486(A055048(n+1))`
-/

namespace A055040.P7858100246173762021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A055048 (n + 1)).toNat

end

end A055040.P7858100246173762021

namespace A055040

/-- `A008486(A055048(n+1))` -/
def P7858100246173762021.Spec : Prop :=
  ∀ n, P7858100246173762021.a n = A055040 (n + 1)

end A055040

/-! ## A055040.P10730445871443060773

`filter[A026179(n+1), A182581(#)]`
-/

namespace A055040.P10730445871443060773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055040.P10730445871443060773

namespace A055040

/-- `filter[A026179(n+1), A182581(#)]` -/
def P10730445871443060773.Spec : Prop :=
  ∀ n, P10730445871443060773.a n = A055040 (n + 1)

end A055040

/-! ## A055040.P6522917633475130416

`filter[A189715(n+1), A182581(#)]`
-/

namespace A055040.P6522917633475130416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055040.P6522917633475130416

namespace A055040

/-- `filter[A189715(n+1), A182581(#)]` -/
def P6522917633475130416.Spec : Prop :=
  ∀ n, P6522917633475130416.a n = A055040 (n + 1)

end A055040

/-! ## A055040.P8030442207934759480

`∩[A026179(n+1), A145204(n+1)]`
-/

namespace A055040.P8030442207934759480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P8030442207934759480

namespace A055040

/-- `∩[A026179(n+1), A145204(n+1)]` -/
def P8030442207934759480.Spec : Prop :=
  ∀ n, (P8030442207934759480.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P7889909165348483819

`∩[A026179(n+1), A189634(n+1)]`
-/

namespace A055040.P7889909165348483819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P7889909165348483819

namespace A055040

/-- `∩[A026179(n+1), A189634(n+1)]` -/
def P7889909165348483819.Spec : Prop :=
  ∀ n, (P7889909165348483819.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P8373423864358835064

`∩[A026344(n+1), A189715(n+1)]`
-/

namespace A055040.P8373423864358835064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P8373423864358835064

namespace A055040

/-- `∩[A026344(n+1), A189715(n+1)]` -/
def P8373423864358835064.Spec : Prop :=
  ∀ n, (P8373423864358835064.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P10921482665671329566

`∩[A145204(n+1), A189715(n+1)]`
-/

namespace A055040.P10921482665671329566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P10921482665671329566

namespace A055040

/-- `∩[A145204(n+1), A189715(n+1)]` -/
def P10921482665671329566.Spec : Prop :=
  ∀ n, (P10921482665671329566.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P15883670165876316578

`∩[A026179(n+1), A325430(n+1)]`
-/

namespace A055040.P15883670165876316578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P15883670165876316578

namespace A055040

/-- `∩[A026179(n+1), A325430(n+1)]` -/
def P15883670165876316578.Spec : Prop :=
  ∀ n, (P15883670165876316578.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P492944321037801166

`∩[A189715(n+1), A028966(n)]`
-/

namespace A055040.P492944321037801166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P492944321037801166

namespace A055040

/-- `∩[A189715(n+1), A028966(n)]` -/
def P492944321037801166.Spec : Prop :=
  ∀ n, (P492944321037801166.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P5965546244943344751

`3*eq[0, A028967(2*n)]`
-/

namespace A055040.P5965546244943344751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P5965546244943344751

namespace A055040

/-- `3*eq[0, A028967(2*n)]` -/
def P5965546244943344751.Spec : Prop :=
  ∀ n, (P5965546244943344751.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P3710640233453273905

`∩[A189630(2*(n+1)), A155504(n+2)]/2`
-/

namespace A055040.P3710640233453273905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A055040.P3710640233453273905

namespace A055040

/-- `∩[A189630(2*(n+1)), A155504(n+2)]/2` -/
def P3710640233453273905.Spec : Prop :=
  ∀ n, P3710640233453273905.a n = (A055040 (n + 1) : ℚ)

end A055040

/-! ## A055040.P4603341406969400091

`∩[A189729(2*n+1)+2, A026179(n+2)]`
-/

namespace A055040.P4603341406969400091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055040.P4603341406969400091

namespace A055040

/-- `∩[A189729(2*n+1)+2, A026179(n+2)]` -/
def P4603341406969400091.Spec : Prop :=
  ∀ n, (P4603341406969400091.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P16954071689388761165

`eq[0, A014453(n)]`
-/

namespace A055040.P16954071689388761165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P16954071689388761165

namespace A055040

/-- `eq[0, A014453(n)]` -/
def P16954071689388761165.Spec : Prop :=
  ∀ n, (P16954071689388761165.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P10580917186235870986

`eq[0, A034933(n)]`
-/

namespace A055040.P10580917186235870986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P10580917186235870986

namespace A055040

/-- `eq[0, A034933(n)]` -/
def P10580917186235870986.Spec : Prop :=
  ∀ n, (P10580917186235870986.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P11357567214613824996

`eq[0, A224821(n)]`
-/

namespace A055040.P11357567214613824996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P11357567214613824996

namespace A055040

/-- `eq[0, A224821(n)]` -/
def P11357567214613824996.Spec : Prop :=
  ∀ n, (P11357567214613824996.a n : ℤ) = A055040 (n + 1)

end A055040

/-! ## A055040.P2793375013282655085

`eq[0, A329955(n)]`
-/

namespace A055040.P2793375013282655085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055040.P2793375013282655085

namespace A055040

/-- `eq[0, A329955(n)]` -/
def P2793375013282655085.Spec : Prop :=
  ∀ n, (P2793375013282655085.a n : ℤ) = A055040 (n + 1)

end A055040

/-!
# A055041: Numbers of the form 3^(2i+1)*(3*j+1).

The programs for A055041, the canonical program `A055041.P17568345596612921113` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055041 has offset 1).

The definition of A055041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055041.P7936884160052668724

`A055047(n+1)*3`
-/

namespace A055041.P7936884160052668724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1) * 3

end

end A055041.P7936884160052668724

namespace A055041

/-- `A055047(n+1)*3` -/
def P7936884160052668724.Spec : Prop :=
  ∀ n, P7936884160052668724.a n = A055041 (n + 1)

end A055041

/-! ## A055041.P17568345596612921113

`filter[A155504(n+1), A182581(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055041

/-- `filter[A155504(n+1), A182581(#)]` -/
def P17568345596612921113.Spec : Prop :=
  ∀ n, P17568345596612921113.a n = A055041 (n + 1)

theorem P17568345596612921113.correct : P17568345596612921113.Spec := by
  intro n
  simp only [A055041, Nat.add_sub_cancel]

end A055041

/-! ## A055041.P13395512106182990714

`∩[A145204(n+1), A155504(n+1)]`
-/

namespace A055041.P13395512106182990714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P13395512106182990714

namespace A055041

/-- `∩[A145204(n+1), A155504(n+1)]` -/
def P13395512106182990714.Spec : Prop :=
  ∀ n, (P13395512106182990714.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P13767561125984848522

`A008486(A055047(n+1))`
-/

namespace A055041.P13767561125984848522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A055047 (n + 1)).toNat

end

end A055041.P13767561125984848522

namespace A055041

/-- `A008486(A055047(n+1))` -/
def P13767561125984848522.Spec : Prop :=
  ∀ n, P13767561125984848522.a n = A055041 (n + 1)

end A055041

/-! ## A055041.P15644944251478520244

`∩[A155504(n+1), A189630(n+1)]`
-/

namespace A055041.P15644944251478520244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P15644944251478520244

namespace A055041

/-- `∩[A155504(n+1), A189630(n+1)]` -/
def P15644944251478520244.Spec : Prop :=
  ∀ n, (P15644944251478520244.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P7070017365024939276

`3*eq[0, A028967(n)]`
-/

namespace A055041.P7070017365024939276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055041.P7070017365024939276

namespace A055041

/-- `3*eq[0, A028967(n)]` -/
def P7070017365024939276.Spec : Prop :=
  ∀ n, (P7070017365024939276.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P16166952646211309747

`∩[A155504(n+1), A189818(n+1)]`
-/

namespace A055041.P16166952646211309747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P16166952646211309747

namespace A055041

/-- `∩[A155504(n+1), A189818(n+1)]` -/
def P16166952646211309747.Spec : Prop :=
  ∀ n, (P16166952646211309747.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P13022831710563765168

`∩[A155504(n+1), A325430(n+1)]`
-/

namespace A055041.P13022831710563765168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P13022831710563765168

namespace A055041

/-- `∩[A155504(n+1), A325430(n+1)]` -/
def P13022831710563765168.Spec : Prop :=
  ∀ n, (P13022831710563765168.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P3476690860404188163

`filter[A026225(n+1), A182581(#)]`
-/

namespace A055041.P3476690860404188163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055041.P3476690860404188163

namespace A055041

/-- `filter[A026225(n+1), A182581(#)]` -/
def P3476690860404188163.Spec : Prop :=
  ∀ n, P3476690860404188163.a n = A055041 (n + 1)

end A055041

/-! ## A055041.P8955308222099251356

`filter[A189716(n+1), A182581(#)]`
-/

namespace A055041.P8955308222099251356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055041.P8955308222099251356

namespace A055041

/-- `filter[A189716(n+1), A182581(#)]` -/
def P8955308222099251356.Spec : Prop :=
  ∀ n, P8955308222099251356.a n = A055041 (n + 1)

end A055041

/-! ## A055041.P16335664816768057007

`filter[A026140(n+2), A182581(#)]`
-/

namespace A055041.P16335664816768057007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A055041.P16335664816768057007

namespace A055041

/-- `filter[A026140(n+2), A182581(#)]` -/
def P16335664816768057007.Spec : Prop :=
  ∀ n, P16335664816768057007.a n = A055041 (n + 1)

end A055041

/-! ## A055041.P4826726782698073812

`∩[A189716(n+1), A072757(n)]`
-/

namespace A055041.P4826726782698073812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P4826726782698073812

namespace A055041

/-- `∩[A189716(n+1), A072757(n)]` -/
def P4826726782698073812.Spec : Prop :=
  ∀ n, (P4826726782698073812.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P756569711962406693

`∩[A026225(n+1), A145204(n+1)]`
-/

namespace A055041.P756569711962406693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P756569711962406693

namespace A055041

/-- `∩[A026225(n+1), A145204(n+1)]` -/
def P756569711962406693.Spec : Prop :=
  ∀ n, (P756569711962406693.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P17563139991840324152

`∩[A026140(n+1), A189630(n+1)]`
-/

namespace A055041.P17563139991840324152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P17563139991840324152

namespace A055041

/-- `∩[A026140(n+1), A189630(n+1)]` -/
def P17563139991840324152.Spec : Prop :=
  ∀ n, (P17563139991840324152.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P14833394650451145341

`∩[A026140(n+1), A189716(n+1)]`
-/

namespace A055041.P14833394650451145341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P14833394650451145341

namespace A055041

/-- `∩[A026140(n+1), A189716(n+1)]` -/
def P14833394650451145341.Spec : Prop :=
  ∀ n, (P14833394650451145341.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P15520292601250369602

`∩[A026225(n+1), A189630(n+1)]`
-/

namespace A055041.P15520292601250369602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P15520292601250369602

namespace A055041

/-- `∩[A026225(n+1), A189630(n+1)]` -/
def P15520292601250369602.Spec : Prop :=
  ∀ n, (P15520292601250369602.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P6462445182545911025

`∩[A026225(n+1), A189716(n+1)]`
-/

namespace A055041.P6462445182545911025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P6462445182545911025

namespace A055041

/-- `∩[A026225(n+1), A189716(n+1)]` -/
def P6462445182545911025.Spec : Prop :=
  ∀ n, (P6462445182545911025.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P14174983305920209974

`∩[A026140(n+1), A189818(n+1)]`
-/

namespace A055041.P14174983305920209974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P14174983305920209974

namespace A055041

/-- `∩[A026140(n+1), A189818(n+1)]` -/
def P14174983305920209974.Spec : Prop :=
  ∀ n, (P14174983305920209974.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P37602408418624736

`∩[A026225(n+1), A189818(n+1)]`
-/

namespace A055041.P37602408418624736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P37602408418624736

namespace A055041

/-- `∩[A026225(n+1), A189818(n+1)]` -/
def P37602408418624736.Spec : Prop :=
  ∀ n, (P37602408418624736.a n : ℤ) = A055041 (n + 1)

end A055041

/-! ## A055041.P16665107759719056621

`∩[A145204(n+1), A189716(n+1)]`
-/

namespace A055041.P16665107759719056621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055041.P16665107759719056621

namespace A055041

/-- `∩[A145204(n+1), A189716(n+1)]` -/
def P16665107759719056621.Spec : Prop :=
  ∀ n, (P16665107759719056621.a n : ℤ) = A055041 (n + 1)

end A055041

/-!
# A055042: Numbers of the form 2^(2i+1)*(8*j+5).

The programs for A055042, there is no canonical definition to state claims against.
-/

/-! ## A055042.P10331705956602904492

`2*A055045(n+1)`
-/

namespace A055042.P10331705956602904492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055045 (n + 1)

end

end A055042.P10331705956602904492

/-! ## A055042.P3937248738505427437

`A055045(A000027(n+1))+A055045(n+1)`
-/

namespace A055042.P3937248738505427437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (A000027 (n + 1)).toNat + A055045 (n + 1)

end

end A055042.P3937248738505427437

/-! ## A055042.P1117787185016821533

`A055045(n+1)+A055045((n+1)%A004215(n+1))`
-/

namespace A055042.P1117787185016821533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1) + A055045 (Int.tmod (n + 1 : ℤ) (A004215 (n + 1))).toNat

end

end A055042.P1117787185016821533

/-! ## A055042.P16580077119102229302

`A055039(n+1)-A055039(n+1)%A055045(n+1)`
-/

namespace A055042.P16580077119102229302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055039 (n + 1) - Int.tmod (A055039 (n + 1)) (A055045 (n + 1))

end

end A055042.P16580077119102229302

/-! ## A055042.P14715911808055042040

`2*∩[A055052(n+1), A277549(n+1)]`
-/

namespace A055042.P14715911808055042040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P14715911808055042040

/-! ## A055042.P9904458829816887713

`2*∩[A055052(n+1), A225836(n+1)]`
-/

namespace A055042.P9904458829816887713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P9904458829816887713

/-! ## A055042.P13750255303881248069

`2*∩[A055052(n+1), A338692(n+1)]`
-/

namespace A055042.P13750255303881248069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P13750255303881248069

/-! ## A055042.P9024514674723015343

`2*∩[A055052(n+1), A091072(n+1)]`
-/

namespace A055042.P9024514674723015343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P9024514674723015343

/-! ## A055042.P14373428218046448675

`2*∩[A001974(n+1), A055052(n+1)]`
-/

namespace A055042.P14373428218046448675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P14373428218046448675

/-! ## A055042.P8024906418154578984

`2*∩[A055052(n+1), A267312(n+1)]`
-/

namespace A055042.P8024906418154578984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P8024906418154578984

/-! ## A055042.P4571022273139345099

`2*∩[A055052(n+1), A214329(n+1)]`
-/

namespace A055042.P4571022273139345099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P4571022273139345099

/-! ## A055042.P3552793541998922242

`2*∩[A028962(n+1), A277549(n+1)]`
-/

namespace A055042.P3552793541998922242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P3552793541998922242

/-! ## A055042.P14641180726295925858

`2*∩[A000378(n+1), A055052(n+1)]`
-/

namespace A055042.P14641180726295925858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P14641180726295925858

/-! ## A055042.P17133724472899998746

`2*eq[0, A014452(n)]`
-/

namespace A055042.P17133724472899998746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055042.P17133724472899998746

/-! ## A055042.P9541955429615939637

`2*eq[0, A261394(n)]`
-/

namespace A055042.P9541955429615939637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055042.P9541955429615939637

/-! ## A055042.P9270449316846442071

`A004277(A055045(n+1))`
-/

namespace A055042.P9270449316846442071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055045 (n + 1)).toNat

end

end A055042.P9270449316846442071

/-! ## A055042.P13215573146514355292

`∩[2*A055052(n+1), A338691(n+1)]`
-/

namespace A055042.P13215573146514355292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055042.P13215573146514355292

/-! ## A055042.P6862166212893610760

`eq[0, A029594(n)]`
-/

namespace A055042.P6862166212893610760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055042.P6862166212893610760

/-! ## A055042.P14856838087898852575

`eq[0, A298421(n)]`
-/

namespace A055042.P14856838087898852575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298421 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055042.P14856838087898852575

/-! ## A055042.P13927716027784923047

`eq[0, A366091(n)]`
-/

namespace A055042.P13927716027784923047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055042.P13927716027784923047

/-!
# A055043: Numbers of the form 2^(2i+1)*(8*j+3).

The programs for A055043, there is no canonical definition to state claims against.
-/

/-! ## A055043.P15598848274504591580

`2*A055046(n+1)`
-/

namespace A055043.P15598848274504591580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055046 (n + 1)

end

end A055043.P15598848274504591580

/-! ## A055043.P6627422150270388176

`A055046(A000027(n+1))+A055046(n+1)`
-/

namespace A055043.P6627422150270388176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (A000027 (n + 1)).toNat + A055046 (n + 1)

end

end A055043.P6627422150270388176

/-! ## A055043.P15644305121955272186

`2*∩[A055050(n+1), A004014(n)]`
-/

namespace A055043.P15644305121955272186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P15644305121955272186

/-! ## A055043.P18015427552708156767

`2*∩[A000419(n+1), A055050(n+1)]`
-/

namespace A055043.P18015427552708156767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P18015427552708156767

/-! ## A055043.P4051663134647134143

`2*∩[A000408(n+1), A055050(n+1)]`
-/

namespace A055043.P4051663134647134143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P4051663134647134143

/-! ## A055043.P916598370738999233

`2*∩[A055050(n+1), A267312(n+1)]`
-/

namespace A055043.P916598370738999233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P916598370738999233

/-! ## A055043.P17191003362288754739

`2*∩[A055050(n+1), A214329(n+1)]`
-/

namespace A055043.P17191003362288754739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P17191003362288754739

/-! ## A055043.P1388031340713836308

`2*∩[A000378(n+1), A055050(n+1)]`
-/

namespace A055043.P1388031340713836308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055043.P1388031340713836308

/-! ## A055043.P12512360586255549021

`2*eq[0, A169784(n)]`
-/

namespace A055043.P12512360586255549021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055043.P12512360586255549021

/-! ## A055043.P8672221721495218476

`A004277(A055046(n+1))`
-/

namespace A055043.P8672221721495218476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055046 (n + 1)).toNat

end

end A055043.P8672221721495218476

/-! ## A055043.P5164033275032293122

`A004278(A055046(n+1)+2)`
-/

namespace A055043.P5164033275032293122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A055046 (n + 1) + 2).toNat

end

end A055043.P5164033275032293122

/-! ## A055043.P6764539067720484647

`A103517(eq[3, A072400(n+1)])`
-/

namespace A055043.P6764539067720484647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055043.P6764539067720484647

/-! ## A055043.P16899657791422683751

`lt[A169784(2*n), 1]`
-/

namespace A055043.P16899657791422683751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055043.P16899657791422683751

/-! ## A055043.P17669202117008054111

`record[A025480(A055046(n+3))]`
-/

namespace A055043.P17669202117008054111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055046 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055043.P17669202117008054111

/-! ## A055043.P3411803002251467971

`eq[2*A285384(2*n+1), A089309(n)]`
-/

namespace A055043.P3411803002251467971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285384 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055043.P3411803002251467971

/-! ## A055043.P3185649830888481035

`eq[4, A002828(10*n)]`
-/

namespace A055043.P3185649830888481035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055043.P3185649830888481035

/-! ## A055043.P4028413353081018173

`A055046(n+1)+record[A055046(A002260(n+1))]`
-/

namespace A055043.P4028413353081018173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055043.P4028413353081018173

/-!
# A055044: Numbers of the form 2^(2i+1)*(8*j+1).

The programs for A055044, there is no canonical definition to state claims against.
-/

/-! ## A055044.P1867352837039868414

`2*A234000(n+1)`
-/

namespace A055044.P1867352837039868414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234000 (n + 1)

end

end A055044.P1867352837039868414

/-! ## A055044.P13767471391253006556

`A234000(A000027(n+1))+A234000(n+1)`
-/

namespace A055044.P13767471391253006556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (A000027 (n + 1)).toNat + A234000 (n + 1)

end

end A055044.P13767471391253006556

/-! ## A055044.P17133355697129507635

`2/A234000(n+1)^A008683(A000040(n+1))`
-/

namespace A055044.P17133355697129507635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A234000 (n + 1) : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ)

end

end A055044.P17133355697129507635

/-! ## A055044.P1383484086317187539

`record[2*(n+1)/A072400(n+1)]`
-/

namespace A055044.P1383484086317187539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A072400 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055044.P1383484086317187539

/-! ## A055044.P14376225319641143122

`A004277(A234000(n+1))`
-/

namespace A055044.P14376225319641143122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A234000 (n + 1)).toNat

end

end A055044.P14376225319641143122

/-! ## A055044.P7297468498767513891

`2*eq[0, A028963(n)]`
-/

namespace A055044.P7297468498767513891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055044.P7297468498767513891

/-! ## A055044.P13227875017083838534

`2*eq[0, A029681(n)]`
-/

namespace A055044.P13227875017083838534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055044.P13227875017083838534

/-! ## A055044.P8295766047352358870

`eq[1, A072400(2*(n+1))]+1`
-/

namespace A055044.P8295766047352358870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055044.P8295766047352358870

/-! ## A055044.P11495015601591809773

`lt[A028963(2*n), 1]`
-/

namespace A055044.P11495015601591809773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055044.P11495015601591809773

/-! ## A055044.P4964606129916162983

`lt[A029681(2*n), 1]`
-/

namespace A055044.P4964606129916162983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055044.P4964606129916162983

/-! ## A055044.P2640690239681317654

`lt[4*A014455(7*n), 3]`
-/

namespace A055044.P2640690239681317654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014455 (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055044.P2640690239681317654

/-!
# A055045: Numbers of the form 4^i*(8*j+5).

The programs for A055045, there is no canonical definition to state claims against.
-/

/-! ## A055045.P7134340662327562539

`A055042(n+1)/2`
-/

namespace A055045.P7134340662327562539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055042 (n + 1) : ℚ) / 2

end

end A055045.P7134340662327562539

/-! ## A055045.P4458942342931905584

`∩[A055052(n+1), A277549(n+1)]`
-/

namespace A055045.P4458942342931905584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P4458942342931905584

/-! ## A055045.P7499337269755317500

`∩[A055052(n+1), A225836(n+1)]`
-/

namespace A055045.P7499337269755317500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P7499337269755317500

/-! ## A055045.P15063090319604537269

`∩[A055052(n+1), A338692(n+1)]`
-/

namespace A055045.P15063090319604537269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P15063090319604537269

/-! ## A055045.P14989761594874461696

`∩[A055052(n+1), A091072(n+1)]`
-/

namespace A055045.P14989761594874461696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P14989761594874461696

/-! ## A055045.P12931497337385838446

`∩[A001974(n+1), A055052(n+1)]`
-/

namespace A055045.P12931497337385838446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P12931497337385838446

/-! ## A055045.P12336695652181613943

`∩[A055052(n+1), A267312(n+1)]`
-/

namespace A055045.P12336695652181613943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P12336695652181613943

/-! ## A055045.P2546730070995999809

`∩[A055052(n+1), A214329(n+1)]`
-/

namespace A055045.P2546730070995999809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P2546730070995999809

/-! ## A055045.P15971858254380874563

`∩[A028962(n+1), A277549(n+1)]`
-/

namespace A055045.P15971858254380874563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P15971858254380874563

/-! ## A055045.P398983295196121169

`∩[A000378(n+1), A055052(n+1)]`
-/

namespace A055045.P398983295196121169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055045.P398983295196121169

/-! ## A055045.P12737446734676360504

`eq[0, A014452(n)]`
-/

namespace A055045.P12737446734676360504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055045.P12737446734676360504

/-! ## A055045.P5060748829644210523

`eq[0, A261394(n)]`
-/

namespace A055045.P5060748829644210523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055045.P5060748829644210523

/-! ## A055045.P11230073162043857382

`filter[A055052(n+1), A071374(#)]`
-/

namespace A055045.P11230073162043857382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A055045.P11230073162043857382

/-! ## A055045.P3684363388877477021

`filter[A277549(n+1), A086483(#)]`
-/

namespace A055045.P3684363388877477021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055045.P3684363388877477021

/-! ## A055045.P15939143006346418645

`lt[3, A002828(3*n)]`
-/

namespace A055045.P15939143006346418645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055045.P15939143006346418645

/-! ## A055045.P688366690489338278

`eq[0, A029594(2*n)]`
-/

namespace A055045.P688366690489338278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055045.P688366690489338278

/-! ## A055045.P3433484427850079479

`eq[0, A298421(2*n)]`
-/

namespace A055045.P3433484427850079479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298421 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055045.P3433484427850079479

/-! ## A055045.P17229743089363329039

`eq[0, A366091(2*n)]`
-/

namespace A055045.P17229743089363329039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366091 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055045.P17229743089363329039

/-! ## A055045.P2730478116430394792

`lt[A029594(n), 1]/2`
-/

namespace A055045.P2730478116430394792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A055045.P2730478116430394792

/-! ## A055045.P6491174423617124403

`A001281(A055042(n+1))`
-/

namespace A055045.P6491174423617124403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055042 (n + 1)).toNat

end

end A055045.P6491174423617124403

/-!
# A055046: Numbers of the form 4^i*(8*j+3).

The programs for A055046, there is no canonical definition to state claims against.
-/

/-! ## A055046.P2670782479169267236

`A055043(n+1)/2`
-/

namespace A055046.P2670782479169267236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055043 (n + 1) : ℚ) / 2

end

end A055046.P2670782479169267236

/-! ## A055046.P8114646356717630468

`∩[A055050(n+1), A004014(n)]`
-/

namespace A055046.P8114646356717630468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P8114646356717630468

/-! ## A055046.P8912618429156978739

`∩[A000419(n+1), A055050(n+1)]`
-/

namespace A055046.P8912618429156978739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P8912618429156978739

/-! ## A055046.P14861992329029461589

`filter[A055050(n+1), A342892(#)]`
-/

namespace A055046.P14861992329029461589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A055046.P14861992329029461589

/-! ## A055046.P3097139492276401659

`∩[A000408(n+1), A055050(n+1)]`
-/

namespace A055046.P3097139492276401659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P3097139492276401659

/-! ## A055046.P530748717711830360

`∩[A055050(n+1), A267312(n+1)]`
-/

namespace A055046.P530748717711830360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P530748717711830360

/-! ## A055046.P17042738367404925923

`∩[A055050(n+1), A214329(n+1)]`
-/

namespace A055046.P17042738367404925923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P17042738367404925923

/-! ## A055046.P3166843042087007547

`∩[A000378(n+1), A055050(n+1)]`
-/

namespace A055046.P3166843042087007547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055046.P3166843042087007547

/-! ## A055046.P7480712746523605045

`eq[0, A169784(n)]`
-/

namespace A055046.P7480712746523605045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055046.P7480712746523605045

/-! ## A055046.P17479256279991611689

`filter[A055050(n+1), A071374(#)]`
-/

namespace A055046.P17479256279991611689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A055046.P17479256279991611689

/-! ## A055046.P1035866611780581932

`eq[2*A285384(n+1), A089309(n)]`
-/

namespace A055046.P1035866611780581932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055046.P1035866611780581932

/-! ## A055046.P7349180102216740131

`lt[2, A136480(A007913(n+1)+4)]+1`
-/

namespace A055046.P7349180102216740131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A007913 (n + 1) + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A055046.P7349180102216740131

/-! ## A055046.P16376658615815869821

`A001281(A055043(n+1))`
-/

namespace A055046.P16376658615815869821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055043 (n + 1)).toNat

end

end A055046.P16376658615815869821

/-! ## A055046.P1822327407868239096

`eq[0, A029681(3*n)]`
-/

namespace A055046.P1822327407868239096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055046.P1822327407868239096

/-! ## A055046.P4605457299635784802

`lt[A169784(2*n), 1]/2`
-/

namespace A055046.P4605457299635784802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A055046.P4605457299635784802

/-! ## A055046.P2750067749475674821

`eq[2, A220779(A007913(n+1))]+1`
-/

namespace A055046.P2750067749475674821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220779 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055046.P2750067749475674821

/-! ## A055046.P10764131677763047616

`lt[A005875(A008574(n)+n), 1]`
-/

namespace A055046.P10764131677763047616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A008574 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055046.P10764131677763047616

/-! ## A055046.P2321744548406883731

`eq[1, A000203(A000164(5*n)+1)]`
-/

namespace A055046.P2321744548406883731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000164 (5 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055046.P2321744548406883731

/-! ## A055046.P16115260258878864902

`eq[1, A008574(A002102(A008574(n)+n))]`
-/

namespace A055046.P16115260258878864902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A002102 (A008574 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055046.P16115260258878864902

/-!
# A055047: Numbers of the form 9^i*(3*j+1).

The programs for A055047, the canonical program `A055047.P16912633908431000685` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055047 has offset 1).

The definition of A055047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055047.P16912633908431000685

`A055041(n+1)/3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A055047

/-- `A055041(n+1)/3` -/
def P16912633908431000685.Spec : Prop :=
  ∀ n, P16912633908431000685.a n = (A055047 (n + 1) : ℚ)

end A055047

/-! ## A055047.P17405130959671966337

`filter[A189715(n+1), A014578(#)]`
-/

namespace A055047.P17405130959671966337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055047.P17405130959671966337

namespace A055047

/-- `filter[A189715(n+1), A014578(#)]` -/
def P17405130959671966337.Spec : Prop :=
  ∀ n, P17405130959671966337.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P17523951018659573753

`filter[A026225(n+1), A014578(#)]`
-/

namespace A055047.P17523951018659573753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055047.P17523951018659573753

namespace A055047

/-- `filter[A026225(n+1), A014578(#)]` -/
def P17523951018659573753.Spec : Prop :=
  ∀ n, P17523951018659573753.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P4958692180739302647

`∩[A026225(n+1), A189715(n+1)]`
-/

namespace A055047.P4958692180739302647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P4958692180739302647

namespace A055047

/-- `∩[A026225(n+1), A189715(n+1)]` -/
def P4958692180739302647.Spec : Prop :=
  ∀ n, (P4958692180739302647.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P16846788657767305791

`filter[A026140(n+1), A014578(#)]`
-/

namespace A055047.P16846788657767305791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055047.P16846788657767305791

namespace A055047

/-- `filter[A026140(n+1), A014578(#)]` -/
def P16846788657767305791.Spec : Prop :=
  ∀ n, P16846788657767305791.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P10349924184562064247

`∩[A026140(n+1), A189715(n+1)]`
-/

namespace A055047.P10349924184562064247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P10349924184562064247

namespace A055047

/-- `∩[A026140(n+1), A189715(n+1)]` -/
def P10349924184562064247.Spec : Prop :=
  ∀ n, (P10349924184562064247.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P18263928136165226699

`∩[A026140(n+1), A189817(n+1)]`
-/

namespace A055047.P18263928136165226699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P18263928136165226699

namespace A055047

/-- `∩[A026140(n+1), A189817(n+1)]` -/
def P18263928136165226699.Spec : Prop :=
  ∀ n, (P18263928136165226699.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P2777422162093399802

`∩[A026225(n+1), A189817(n+1)]`
-/

namespace A055047.P2777422162093399802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P2777422162093399802

namespace A055047

/-- `∩[A026225(n+1), A189817(n+1)]` -/
def P2777422162093399802.Spec : Prop :=
  ∀ n, (P2777422162093399802.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P1260188059523596212

`∩[A026343(n+1), A189715(n+1)]`
-/

namespace A055047.P1260188059523596212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P1260188059523596212

namespace A055047

/-- `∩[A026343(n+1), A189715(n+1)]` -/
def P1260188059523596212.Spec : Prop :=
  ∀ n, (P1260188059523596212.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P15667576336852079947

`∩[A026140(n+1), A189629(n+1)]`
-/

namespace A055047.P15667576336852079947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P15667576336852079947

namespace A055047

/-- `∩[A026140(n+1), A189629(n+1)]` -/
def P15667576336852079947.Spec : Prop :=
  ∀ n, (P15667576336852079947.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P8782810425004649746

`∩[A026225(n+1), A189629(n+1)]`
-/

namespace A055047.P8782810425004649746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P8782810425004649746

namespace A055047

/-- `∩[A026225(n+1), A189629(n+1)]` -/
def P8782810425004649746.Spec : Prop :=
  ∀ n, (P8782810425004649746.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P15035770928709241271

`∩[A007417(n+1), A026140(n+1)]`
-/

namespace A055047.P15035770928709241271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P15035770928709241271

namespace A055047

/-- `∩[A007417(n+1), A026140(n+1)]` -/
def P15035770928709241271.Spec : Prop :=
  ∀ n, (P15035770928709241271.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P12686266499144079348

`∩[A007417(n+1), A026225(n+1)]`
-/

namespace A055047.P12686266499144079348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P12686266499144079348

namespace A055047

/-- `∩[A007417(n+1), A026225(n+1)]` -/
def P12686266499144079348.Spec : Prop :=
  ∀ n, (P12686266499144079348.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P1198033917684272496

`∩[A007417(n+1), A189715(n+1)]`
-/

namespace A055047.P1198033917684272496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055047.P1198033917684272496

namespace A055047

/-- `∩[A007417(n+1), A189715(n+1)]` -/
def P1198033917684272496.Spec : Prop :=
  ∀ n, (P1198033917684272496.a n : ℤ) = A055047 (n + 1)

end A055047

/-! ## A055047.P12706860236318554565

`comp[A028966(n)]%A028957(2*n+3)`
-/

namespace A055047.P12706860236318554565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028957 (2 * n + 3))

end

end A055047.P12706860236318554565

namespace A055047

/-- `comp[A028966(n)]%A028957(2*n+3)` -/
def P12706860236318554565.Spec : Prop :=
  ∀ n, P12706860236318554565.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P16834404145278337593

`filter[A007417(n+1), A137893(#)]`
-/

namespace A055047.P16834404145278337593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A055047.P16834404145278337593

namespace A055047

/-- `filter[A007417(n+1), A137893(#)]` -/
def P16834404145278337593.Spec : Prop :=
  ∀ n, P16834404145278337593.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P17030279274259862033

`filter[A189629(n+1), A137893(#)]`
-/

namespace A055047.P17030279274259862033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A055047.P17030279274259862033

namespace A055047

/-- `filter[A189629(n+1), A137893(#)]` -/
def P17030279274259862033.Spec : Prop :=
  ∀ n, P17030279274259862033.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P342373078832117333

`filter[A189715(n+1), A137893(#)]`
-/

namespace A055047.P342373078832117333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A055047.P342373078832117333

namespace A055047

/-- `filter[A189715(n+1), A137893(#)]` -/
def P342373078832117333.Spec : Prop :=
  ∀ n, P342373078832117333.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P3083282761172825517

`filter[A189817(n+1), A137893(#)]`
-/

namespace A055047.P3083282761172825517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A055047.P3083282761172825517

namespace A055047

/-- `filter[A189817(n+1), A137893(#)]` -/
def P3083282761172825517.Spec : Prop :=
  ∀ n, P3083282761172825517.a n = A055047 (n + 1)

end A055047

/-! ## A055047.P14800923413453361715

`filter[A189715(n+1), A357518(#)]`
-/

namespace A055047.P14800923413453361715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357518 (f1 j).toNat = 1) n)

end

end A055047.P14800923413453361715

namespace A055047

/-- `filter[A189715(n+1), A357518(#)]` -/
def P14800923413453361715.Spec : Prop :=
  ∀ n, P14800923413453361715.a n = A055047 (n + 1)

end A055047

/-!
# A055048: Numbers of the form 9^i*(3*j+2).

The programs for A055048, the canonical program `A055048.P15109314482782834928` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055048 has offset 1).

The definition of A055048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055048.P15109314482782834928

`A055040(n+1)/3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055048

/-- `A055040(n+1)/3` -/
def P15109314482782834928.Spec : Prop :=
  ∀ n, P15109314482782834928.a n = (A055048 (n + 1) : ℚ)

end A055048

/-! ## A055048.P3380556777052729036

`filter[A026179(n+2), A014578(#)]`
-/

namespace A055048.P3380556777052729036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055048.P3380556777052729036

namespace A055048

/-- `filter[A026179(n+2), A014578(#)]` -/
def P3380556777052729036.Spec : Prop :=
  ∀ n, P3380556777052729036.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P8246304844888127533

`filter[A189716(n+1), A014578(#)]`
-/

namespace A055048.P8246304844888127533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055048.P8246304844888127533

namespace A055048

/-- `filter[A189716(n+1), A014578(#)]` -/
def P8246304844888127533.Spec : Prop :=
  ∀ n, P8246304844888127533.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P2306691308902481947

`∩[A026179(n+1), A189716(n+1)]`
-/

namespace A055048.P2306691308902481947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P2306691308902481947

namespace A055048

/-- `∩[A026179(n+1), A189716(n+1)]` -/
def P2306691308902481947.Spec : Prop :=
  ∀ n, (P2306691308902481947.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P13906104864253833996

`∩[A189716(n+1), A325429(n+1)]`
-/

namespace A055048.P13906104864253833996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P13906104864253833996

namespace A055048

/-- `∩[A189716(n+1), A325429(n+1)]` -/
def P13906104864253833996.Spec : Prop :=
  ∀ n, (P13906104864253833996.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P7696279096910490211

`∩[A189716(n+1), A072756(n)]`
-/

namespace A055048.P7696279096910490211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072756 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P7696279096910490211

namespace A055048

/-- `∩[A189716(n+1), A072756(n)]` -/
def P7696279096910490211.Spec : Prop :=
  ∀ n, (P7696279096910490211.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P15664481183999193191

`filter[A028966(n), A014578(#)]`
-/

namespace A055048.P15664481183999193191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A055048.P15664481183999193191

namespace A055048

/-- `filter[A028966(n), A014578(#)]` -/
def P15664481183999193191.Spec : Prop :=
  ∀ n, P15664481183999193191.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P16574152740042173802

`∩[A325429(n+1), A028966(n)]`
-/

namespace A055048.P16574152740042173802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P16574152740042173802

namespace A055048

/-- `∩[A325429(n+1), A028966(n)]` -/
def P16574152740042173802.Spec : Prop :=
  ∀ n, (P16574152740042173802.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P7582522376011220236

`∩[A026179(n+1), A189729(n+1)]`
-/

namespace A055048.P7582522376011220236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P7582522376011220236

namespace A055048

/-- `∩[A026179(n+1), A189729(n+1)]` -/
def P7582522376011220236.Spec : Prop :=
  ∀ n, (P7582522376011220236.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P15376637948825469272

`∩[A007417(n+1), A028966(n)]`
-/

namespace A055048.P15376637948825469272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P15376637948825469272

namespace A055048

/-- `∩[A007417(n+1), A028966(n)]` -/
def P15376637948825469272.Spec : Prop :=
  ∀ n, (P15376637948825469272.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P17071766571731959032

`∩[A007417(n+1), A189716(n+1)]`
-/

namespace A055048.P17071766571731959032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055048.P17071766571731959032

namespace A055048

/-- `∩[A007417(n+1), A189716(n+1)]` -/
def P17071766571731959032.Spec : Prop :=
  ∀ n, (P17071766571731959032.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P16928411991346696903

`eq[0, A224822(n)]`
-/

namespace A055048.P16928411991346696903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055048.P16928411991346696903

namespace A055048

/-- `eq[0, A224822(n)]` -/
def P16928411991346696903.Spec : Prop :=
  ∀ n, (P16928411991346696903.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P17616434688204641300

`eq[0, A246927(n)]`
-/

namespace A055048.P17616434688204641300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055048.P17616434688204641300

namespace A055048

/-- `eq[0, A246927(n)]` -/
def P17616434688204641300.Spec : Prop :=
  ∀ n, (P17616434688204641300.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P9408910959494218842

`eq[0, A246928(n)]`
-/

namespace A055048.P9408910959494218842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055048.P9408910959494218842

namespace A055048

/-- `eq[0, A246928(n)]` -/
def P9408910959494218842.Spec : Prop :=
  ∀ n, (P9408910959494218842.a n : ℤ) = A055048 (n + 1)

end A055048

/-! ## A055048.P451193339921502024

`filter[A007417(n+1), A080846(#)]`
-/

namespace A055048.P451193339921502024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A055048.P451193339921502024

namespace A055048

/-- `filter[A007417(n+1), A080846(#)]` -/
def P451193339921502024.Spec : Prop :=
  ∀ n, P451193339921502024.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P15288344568703730838

`filter[A026179(n+1), A189727(#)]`
-/

namespace A055048.P15288344568703730838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j).toNat = 1) n)

end

end A055048.P15288344568703730838

namespace A055048

/-- `filter[A026179(n+1), A189727(#)]` -/
def P15288344568703730838.Spec : Prop :=
  ∀ n, P15288344568703730838.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P2564049635849569

`filter[A189633(n+1), A080846(#)]`
-/

namespace A055048.P2564049635849569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A055048.P2564049635849569

namespace A055048

/-- `filter[A189633(n+1), A080846(#)]` -/
def P2564049635849569.Spec : Prop :=
  ∀ n, P2564049635849569.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P5113324038462355511

`filter[A189716(n+1), A080846(#)]`
-/

namespace A055048.P5113324038462355511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A055048.P5113324038462355511

namespace A055048

/-- `filter[A189716(n+1), A080846(#)]` -/
def P5113324038462355511.Spec : Prop :=
  ∀ n, P5113324038462355511.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P1845419574877706835

`filter[A189729(n+1), A080846(#)]`
-/

namespace A055048.P1845419574877706835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A055048.P1845419574877706835

namespace A055048

/-- `filter[A189729(n+1), A080846(#)]` -/
def P1845419574877706835.Spec : Prop :=
  ∀ n, P1845419574877706835.a n = A055048 (n + 1)

end A055048

/-! ## A055048.P5855444683697514922

`filter[A325429(n+1), A080846(#)]`
-/

namespace A055048.P5855444683697514922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A055048.P5855444683697514922

namespace A055048

/-- `filter[A325429(n+1), A080846(#)]` -/
def P5855444683697514922.Spec : Prop :=
  ∀ n, P5855444683697514922.a n = A055048 (n + 1)

end A055048

/-!
# A055049: Numbers of the form 5^(2*i+1)*(5*j+-2).

The programs for A055049, there is no canonical definition to state claims against.
-/

/-! ## A055049.P2461283140888733598

`eq[0, A029673(n)]`
-/

namespace A055049.P2461283140888733598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055049.P2461283140888733598

/-! ## A055049.P2373617697858352801

`eq[A028973(A047412(n+1)), A244895(n)]`
-/

namespace A055049.P2373617697858352801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A047412 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055049.P2373617697858352801

/-! ## A055049.P16002541006053112877

`eq[A028973(A047486(n+1)), A244895(n)]`
-/

namespace A055049.P16002541006053112877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A047486 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055049.P16002541006053112877

/-! ## A055049.P8699966126363145399

`eq[A028973(A047486(n+1)), A330025(n)]`
-/

namespace A055049.P8699966126363145399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A047486 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055049.P8699966126363145399

/-! ## A055049.P4653284189584717602

`eq[0, A029595(2*n)]`
-/

namespace A055049.P4653284189584717602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055049.P4653284189584717602

/-! ## A055049.P17647405996309383514

`eq[0, A029680(2*n)]`
-/

namespace A055049.P17647405996309383514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029680 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055049.P17647405996309383514

/-! ## A055049.P3657662891800512997

`eq[0, A029682(2*n)]`
-/

namespace A055049.P3657662891800512997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029682 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055049.P3657662891800512997

/-! ## A055049.P185504127152863160

`eq[A019425(n), A029595(A029595(n))]/2`
-/

namespace A055049.P185504127152863160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (A029595 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A055049.P185504127152863160

/-! ## A055049.P14934197583535036704

`lt[A029680(3*n), 1]`
-/

namespace A055049.P14934197583535036704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029680 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055049.P14934197583535036704

/-! ## A055049.P14387237185390792792

`eq[0, A320239(A008574(n))]`
-/

namespace A055049.P14387237185390792792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055049.P14387237185390792792

/-!
# A055050: Numbers of the form 4^i*(8*j+3) or 4^i*(8*j+7).

The programs for A055050, the canonical program `A055050.P594376311552955695` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055050 has offset 1).

The definition of A055050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055050.P594376311552955695

`eq[3, and(3, A007913(n+1))]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055050

/-- `eq[3, and(3, A007913(n+1))]+1` -/
def P594376311552955695.Spec : Prop :=
  ∀ n, (P594376311552955695.a n : ℤ) = A055050 (n + 1)

theorem P594376311552955695.correct : P594376311552955695.Spec := by
  intro n
  simp only [A055050, Nat.add_sub_cancel]

end A055050

/-! ## A055050.P7316280246496970348

`eq[A292371(n+1), A292371(n)]+1`
-/

namespace A055050.P7316280246496970348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055050.P7316280246496970348

namespace A055050

/-- `eq[A292371(n+1), A292371(n)]+1` -/
def P7316280246496970348.Spec : Prop :=
  ∀ n, (P7316280246496970348.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P13568351103777515050

`lt[A292372(n+1), A292372(n)]+1`
-/

namespace A055050.P13568351103777515050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055050.P13568351103777515050

namespace A055050

/-- `lt[A292372(n+1), A292372(n)]+1` -/
def P13568351103777515050.Spec : Prop :=
  ∀ n, (P13568351103777515050.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P4833954944616945395

`∪[A004215(n+1), A055046(n+1)]`
-/

namespace A055050.P4833954944616945395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055050.P4833954944616945395

namespace A055050

/-- `∪[A004215(n+1), A055046(n+1)]` -/
def P4833954944616945395.Spec : Prop :=
  ∀ n, (P4833954944616945395.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P12353919521247197197

`filter[A091067(n+1), A035263(#)]`
-/

namespace A055050.P12353919521247197197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A055050.P12353919521247197197

namespace A055050

/-- `filter[A091067(n+1), A035263(#)]` -/
def P12353919521247197197.Spec : Prop :=
  ∀ n, P12353919521247197197.a n = A055050 (n + 1)

end A055050

/-! ## A055050.P5751677499159618172

`filter[A338691(n+1), A035263(#)]`
-/

namespace A055050.P5751677499159618172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A055050.P5751677499159618172

namespace A055050

/-- `filter[A338691(n+1), A035263(#)]` -/
def P5751677499159618172.Spec : Prop :=
  ∀ n, P5751677499159618172.a n = A055050 (n + 1)

end A055050

/-! ## A055050.P777089496661383919

`∩[A091067(n+1), A338691(n+1)]`
-/

namespace A055050.P777089496661383919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055050.P777089496661383919

namespace A055050

/-- `∩[A091067(n+1), A338691(n+1)]` -/
def P777089496661383919.Spec : Prop :=
  ∀ n, (P777089496661383919.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P7792988704771489667

`∩[A003159(n+1), A091067(n+1)]`
-/

namespace A055050.P7792988704771489667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055050.P7792988704771489667

namespace A055050

/-- `∩[A003159(n+1), A091067(n+1)]` -/
def P7792988704771489667.Spec : Prop :=
  ∀ n, (P7792988704771489667.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P17375540247332944289

`∩[A053661(n+1), A091067(n+1)]`
-/

namespace A055050.P17375540247332944289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055050.P17375540247332944289

namespace A055050

/-- `∩[A053661(n+1), A091067(n+1)]` -/
def P17375540247332944289.Spec : Prop :=
  ∀ n, (P17375540247332944289.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P3167103414722204393

`∩[A003159(n+1), A338691(n+1)]`
-/

namespace A055050.P3167103414722204393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055050.P3167103414722204393

namespace A055050

/-- `∩[A003159(n+1), A338691(n+1)]` -/
def P3167103414722204393.Spec : Prop :=
  ∀ n, (P3167103414722204393.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P5876047505226567133

`eq[0, Δ[A160381(n)]]+1`
-/

namespace A055050.P5876047505226567133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055050.P5876047505226567133

namespace A055050

/-- `eq[0, Δ[A160381(n)]]+1` -/
def P5876047505226567133.Spec : Prop :=
  ∀ n, (P5876047505226567133.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P237927913331837409

`eq[3, A065882(n+1)]+1`
-/

namespace A055050.P237927913331837409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055050.P237927913331837409

namespace A055050

/-- `eq[3, A065882(n+1)]+1` -/
def P237927913331837409.Spec : Prop :=
  ∀ n, (P237927913331837409.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P8007306120983432275

`lt[Δ[A160382(abs(1-n))]+7, 7]`
-/

namespace A055050.P8007306120983432275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A055050.P8007306120983432275

namespace A055050

/-- `lt[Δ[A160382(abs(1-n))]+7, 7]` -/
def P8007306120983432275.Spec : Prop :=
  ∀ n, (P8007306120983432275.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P1304750493224347587

`lt[1, val(Δ[A069891(n)]+1, 2)]+1`
-/

namespace A055050.P1304750493224347587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f3 (n + 1) - f3 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A055050.P1304750493224347587

namespace A055050

/-- `lt[1, val(Δ[A069891(n)]+1, 2)]+1` -/
def P1304750493224347587.Spec : Prop :=
  ∀ n, (P1304750493224347587.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P10933866304172280385

`lt[Δ[(A160382(n)+1+n)²], 3]+1`
-/

namespace A055050.P10933866304172280385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160382 n + 1 + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A055050.P10933866304172280385

namespace A055050

/-- `lt[Δ[(A160382(n)+1+n)²], 3]+1` -/
def P10933866304172280385.Spec : Prop :=
  ∀ n, (P10933866304172280385.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P9544892956220955705

`lt[5^(val(n+1, 2)%2), ((n+1)%A166466(n+1))%4]+1`
-/

namespace A055050.P9544892956220955705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (SequenceMachineLib.valuation (n + 1) 2 % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (A166466 (n + 1))) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A055050.P9544892956220955705

namespace A055050

/-- `lt[5^(val(n+1, 2)%2), ((n+1)%A166466(n+1))%4]+1` -/
def P9544892956220955705.Spec : Prop :=
  ∀ n, (P9544892956220955705.a n : ℤ) = A055050 (n + 1)

end A055050

/-! ## A055050.P17151513026974733697

`filter[A003159(n+1), A038189(#)]`
-/

namespace A055050.P17151513026974733697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A055050.P17151513026974733697

namespace A055050

/-- `filter[A003159(n+1), A038189(#)]` -/
def P17151513026974733697.Spec : Prop :=
  ∀ n, P17151513026974733697.a n = A055050 (n + 1)

end A055050

/-! ## A055050.P2010541544777693014

`filter[A053661(n+1), A038189(#)]`
-/

namespace A055050.P2010541544777693014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A055050.P2010541544777693014

namespace A055050

/-- `filter[A053661(n+1), A038189(#)]` -/
def P2010541544777693014.Spec : Prop :=
  ∀ n, P2010541544777693014.a n = A055050 (n + 1)

end A055050

/-! ## A055050.P11124990363108741108

`filter[A003159(n+1), A089013(#)]`
-/

namespace A055050.P11124990363108741108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A055050.P11124990363108741108

namespace A055050

/-- `filter[A003159(n+1), A089013(#)]` -/
def P11124990363108741108.Spec : Prop :=
  ∀ n, P11124990363108741108.a n = A055050 (n + 1)

end A055050

/-!
# A055052: Numbers of the form 4^i*(8j+7) or 4^i*(8j+5).

The programs for A055052, there is no canonical definition to state claims against.
-/

/-! ## A055052.P10240419049445191291

`∪[A004215(n+1), A055045(n+1)]`
-/

namespace A055052.P10240419049445191291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055052.P10240419049445191291

/-! ## A055052.P4234649007038049379

`filter[A003159(n+1), A086483(#)]`
-/

namespace A055052.P4234649007038049379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055052.P4234649007038049379

/-! ## A055052.P3902926120927999705

`filter[A053661(n+1), A086483(#)]`
-/

namespace A055052.P3902926120927999705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055052.P3902926120927999705

/-! ## A055052.P1961775399250502355

`filter[A175880(n+1), A086483(#)]`
-/

namespace A055052.P1961775399250502355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055052.P1961775399250502355

/-! ## A055052.P17452974974871434178

`eq[0, A000164(n)*A014452(n)]`
-/

namespace A055052.P17452974974871434178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n * A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P17452974974871434178

/-! ## A055052.P7172288454149415790

`eq[0, A002102(n)*A014452(n)]`
-/

namespace A055052.P7172288454149415790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n * A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P7172288454149415790

/-! ## A055052.P3515518114826953880

`eq[0, A005875(n)*A014452(n)]`
-/

namespace A055052.P3515518114826953880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A014452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P3515518114826953880

/-! ## A055052.P9837361328145452592

`eq[0, A014452(n)*A080917(n)]`
-/

namespace A055052.P9837361328145452592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n * A080917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P9837361328145452592

/-! ## A055052.P15453200593090485662

`eq[0, A014452(n)*A213384(n)]`
-/

namespace A055052.P15453200593090485662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n * A213384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P15453200593090485662

/-! ## A055052.P9667482942062583119

`eq[0, A014452(n)*A245668(n)]`
-/

namespace A055052.P9667482942062583119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n * A245668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P9667482942062583119

/-! ## A055052.P13551354046221465077

`eq[0, A014452(n)*A246631(n)]`
-/

namespace A055052.P13551354046221465077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n * A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P13551354046221465077

/-! ## A055052.P17302618798250307647

`eq[0, A014452(n)*A283273(n)]`
-/

namespace A055052.P17302618798250307647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 n * A283273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P17302618798250307647

/-! ## A055052.P5785730186788813053

`filter[A036552(2*n+1), A086483(#)]`
-/

namespace A055052.P5785730186788813053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055052.P5785730186788813053

/-! ## A055052.P15971961942230172782

`eq[5, and(5, A030103(A030103(n)))]`
-/

namespace A055052.P15971961942230172782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A030103 (A030103 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055052.P15971961942230172782

/-! ## A055052.P11860360648868290489

`filter[A034701(2*(n+1)), A086483(#)]`
-/

namespace A055052.P11860360648868290489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034701 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086483 (f1 j).toNat = 1) n)

end

end A055052.P11860360648868290489

/-! ## A055052.P6641014322884992381

`lt[A000164(3*n)*A000164(n), 1]`
-/

namespace A055052.P6641014322884992381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (3 * n) * A000164 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055052.P6641014322884992381

/-! ## A055052.P2092287583709659268

`lt[A138202(A130724(n))*A138202(n), 1]`
-/

namespace A055052.P2092287583709659268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138202 (A130724 n).toNat * A138202 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055052.P2092287583709659268

/-! ## A055052.P17587566652248766078

`eq[A004016(A061393(n)), A342892(n)]`
-/

namespace A055052.P17587566652248766078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A061393 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055052.P17587566652248766078

/-!
# A055053: Numbers of the form 4^i*(8j+7) or 4^i*(5j+-2).

The programs for A055053, there is no canonical definition to state claims against.
-/

/-! ## A055053.P2152002843995937523

`∪[A004215(n+1), A047221(n+1)]`
-/

namespace A055053.P2152002843995937523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055053.P2152002843995937523

/-! ## A055053.P3133842075430907805

`eq[A001204(n)*A005875(n), A005875(n)]`
-/

namespace A055053.P3133842075430907805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n * A005875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055053.P3133842075430907805

/-! ## A055053.P947733890191861184

`eq[A005875(n)*A010158(n), A005875(n)]`
-/

namespace A055053.P947733890191861184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A010158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055053.P947733890191861184

/-! ## A055053.P17249856977303967901

`eq[A001204(n)*A246631(n), A246631(n)]`
-/

namespace A055053.P17249856977303967901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n * A246631 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055053.P17249856977303967901

/-! ## A055053.P3142598414289411390

`eq[A004015(2*n)*A010205(2*n), A004015(2*n)]`
-/

namespace A055053.P3142598414289411390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n) * A010205 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055053.P3142598414289411390

/-! ## A055053.P16828409637306636495

`eq[0, A033737(5*n)]`
-/

namespace A055053.P16828409637306636495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055053.P16828409637306636495

/-!
# A055054: Numbers of the form 4^i*(8j+7) or 4^i*(3j+1).

The programs for A055054, there is no canonical definition to state claims against.
-/

/-! ## A055054.P9069331900934968916

`∪[A004215(n+1), A016777(n)]`
-/

namespace A055054.P9069331900934968916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055054.P9069331900934968916

/-! ## A055054.P1117058570867196245

`∪[A214328(n+1), A016777(n)]`
-/

namespace A055054.P1117058570867196245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055054.P1117058570867196245

/-! ## A055054.P15090218853228310839

`∪[A214328(n+1), A112414(n)]`
-/

namespace A055054.P15090218853228310839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055054.P15090218853228310839

/-! ## A055054.P9596997249673868550

`∪[A004215(n+1), Δ[A000326(n)]]`
-/

namespace A055054.P9596997249673868550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055054.P9596997249673868550

/-! ## A055054.P887877434881700762

`eq[1, (n%3)^A000164(n)]`
-/

namespace A055054.P887877434881700762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℚ) ^ (A000164 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A055054.P887877434881700762

/-! ## A055054.P12862215893359723884

`eq[0, A257653(n)]`
-/

namespace A055054.P12862215893359723884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055054.P12862215893359723884

/-! ## A055054.P13040079011509408927

`record[1-A257653(n+1)²+n]`
-/

namespace A055054.P13040079011509408927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A257653 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055054.P13040079011509408927

/-! ## A055054.P9618124976452870510

`lt[A257653(n)², A257669(n+1)]`
-/

namespace A055054.P9618124976452870510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055054.P9618124976452870510

/-! ## A055054.P2748735677138822542

`eq[0, A213618(4*n)]`
-/

namespace A055054.P2748735677138822542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055054.P2748735677138822542

/-! ## A055054.P11826928087325087129

`eq[A213618(A008574(n))², A000007(n)]`
-/

namespace A055054.P11826928087325087129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055054.P11826928087325087129

/-! ## A055054.P9001234980691597701

`eq[A213618(A008574(n))², A000038(n)]`
-/

namespace A055054.P9001234980691597701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055054.P9001234980691597701

/-! ## A055054.P1091905107338592436

`lt[A006918(A257653(n)²)², 1]`
-/

namespace A055054.P1091905107338592436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A257653 n ^ 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055054.P1091905107338592436

/-!
# A055056: Number of smooth basic magic carpets on n points.

The programs for A055056, there is no canonical definition to state claims against.
-/

/-! ## A055056.P9604710453953851694

`or(∑{d}[n+1, #]^floor((n/2)²), ∑[n])`
-/

namespace A055056.P9604710453953851694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A055056.P9604710453953851694

/-!
# A055058: Primes in A054632.

The programs for A055058, there is no canonical definition to state claims against.
-/

/-! ## A055058.P5304794275701237679

`record[A020639(A054632(n+2))]`
-/

namespace A055058.P5304794275701237679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054632 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055058.P5304794275701237679

/-! ## A055058.P8381581388434904410

`p?[A054632(n)%A054632(n+1)]`
-/

namespace A055058.P8381581388434904410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054632 n) (A054632 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055058.P8381581388434904410

/-! ## A055058.P1747118094782618538

`p?[record[A054632(A026233(n+1))]]`
-/

namespace A055058.P1747118094782618538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A026233 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055058.P1747118094782618538

/-! ## A055058.P13297650486267056289

`p?[record[A054632(A008616(n))]]`
-/

namespace A055058.P13297650486267056289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055058.P13297650486267056289

/-!
# A055059: Positions in A007376 where the partial sums (A054632) yield primes (A055058).

The programs for A055059, there is no canonical definition to state claims against.
-/

/-! ## A055059.P15567998347543736524

`eq[1, ∑{e}[∑[A007376(n)], #]]+1`
-/

namespace A055059.P15567998347543736524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055059.P15567998347543736524

/-! ## A055059.P15256456770449279169

`eq[1, 3%∏{e}[A054632(n), (2*#)!]]+1`
-/

namespace A055059.P15256456770449279169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorial (2 * Nat.factorization (f3 n).natAbs p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055059.P15256456770449279169

/-! ## A055059.P2411689768960391597

`eq[2, A000005(A054632(n+1))]+2`
-/

namespace A055059.P2411689768960391597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A055059.P2411689768960391597

/-! ## A055059.P875851626568966359

`eq[1, A001222(A054632(A000007(n)+n))]+1`
-/

namespace A055059.P875851626568966359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054632 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055059.P875851626568966359

/-! ## A055059.P5202659468263788797

`lt[A289113(n+1), A359663(n+1)]+2`
-/

namespace A055059.P5202659468263788797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A055059.P5202659468263788797

/-!
# A055062: Primes in A054636.

The programs for A055062, there is no canonical definition to state claims against.
-/

/-! ## A055062.P12070932387285763709

`record[A020639(A054636(n+2))]`
-/

namespace A055062.P12070932387285763709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054636 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P12070932387285763709

/-! ## A055062.P13903653658604123045

`p?[record[A054636(A286579(n+1))]]`
-/

namespace A055062.P13903653658604123045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A286579 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P13903653658604123045

/-! ## A055062.P5216088841661777751

`record[p?[A054636(n)]*A060576(n)]`
-/

namespace A055062.P5216088841661777751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P5216088841661777751

/-! ## A055062.P14884600566534319919

`p?[record[A054636(A066136(n+1))]]`
-/

namespace A055062.P14884600566534319919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A066136 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P14884600566534319919

/-! ## A055062.P3045441807876413046

`p?[record[A054636(A003603(n+1))]]`
-/

namespace A055062.P3045441807876413046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A003603 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P3045441807876413046

/-! ## A055062.P14067992138050487440

`record[p?[A054636(A078898(n)+1)]]`
-/

namespace A055062.P14067992138050487440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A078898 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P14067992138050487440

/-! ## A055062.P11222573870077504741

`record[p?[A054636(A028242(n)+2)]]`
-/

namespace A055062.P11222573870077504741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A028242 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P11222573870077504741

/-! ## A055062.P4148785775885529502

`record[p?[A054636(A003602(n+1)+1)]]`
-/

namespace A055062.P4148785775885529502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A003602 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P4148785775885529502

/-! ## A055062.P1468017435982081197

`record[p?[A054636(A032742(n+1)+1)]]`
-/

namespace A055062.P1468017435982081197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A032742 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055062.P1468017435982081197

/-! ## A055062.P16230848370021957270

`p?[record[A054636(A028242(n))]]`
-/

namespace A055062.P16230848370021957270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P16230848370021957270

/-! ## A055062.P5093914744491741444

`p?[record[A054636(A078898(n))]]`
-/

namespace A055062.P5093914744491741444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A078898 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P5093914744491741444

/-! ## A055062.P5971725961614275514

`p?[record[A054636(A003602(n+1))]]`
-/

namespace A055062.P5971725961614275514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A003602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P5971725961614275514

/-! ## A055062.P14545370897680503905

`p?[record[A054636(A032742(n+1))]]`
-/

namespace A055062.P14545370897680503905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P14545370897680503905

/-! ## A055062.P6750472372307436691

`p?[record[A054636(A286603(n+1))]]`
-/

namespace A055062.P6750472372307436691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054636 (A286603 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P6750472372307436691

/-! ## A055062.P15865667969582864873

`p?[record[A029579(A054636(n))]]`
-/

namespace A055062.P15865667969582864873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A054636 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055062.P15865667969582864873

/-!
# A055063: Positions of primes in A054636 with offset 1.

The programs for A055063, there is no canonical definition to state claims against.
-/

/-! ## A055063.P14611721453024207276

`lt[n+1, A020639(A054636(n+2))]+3`
-/

namespace A055063.P14611721453024207276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054636 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A055063.P14611721453024207276

/-!
# A055064: a(n) = A004125(2^n) = A004125(2^n-1).

The programs for A055064, the canonical program `A055064.P8614903045957376733` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055064 has offset 1).

The definition of A055064 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055064.P8614903045957376733

`A004125(2^(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055064

/-- `A004125(2^(n+1))` -/
def P8614903045957376733.Spec : Prop :=
  ∀ n, P8614903045957376733.a n = A055064 (n + 1)

theorem P8614903045957376733.correct : P8614903045957376733.Spec := by
  intro n
  simp only [A055064, Nat.add_sub_cancel]

end A055064

/-! ## A055064.P14406757448727165680

`A004125(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055064.P14406757448727165680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (2 ^ (n + 1) - 1)

end

end A055064.P14406757448727165680

namespace A055064

/-- `A004125(2^(n+1)-1)` -/
def P14406757448727165680.Spec : Prop :=
  ∀ n, P14406757448727165680.a n = A055064 (n + 1)

end A055064

/-! ## A055064.P4174405632652274782

`4^(n+1)-A244824(n+1)`
-/

namespace A055064.P4174405632652274782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A244824 (n + 1)

end

end A055064.P4174405632652274782

namespace A055064

/-- `4^(n+1)-A244824(n+1)` -/
def P4174405632652274782.Spec : Prop :=
  ∀ n, P4174405632652274782.a n = A055064 (n + 1)

end A055064

/-! ## A055064.P7017563310275225518

`∑[A164346(n)-Δ[A244824(n)]]`
-/

namespace A055064.P7017563310275225518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055064.P7017563310275225518

namespace A055064

/-- `∑[A164346(n)-Δ[A244824(n)]]` -/
def P7017563310275225518.Spec : Prop :=
  ∀ n, P7017563310275225518.a n = A055064 (n + 1)

end A055064

/-! ## A055064.P6192567755817173484

`and(-A244824(n+1), A198693(n))`
-/

namespace A055064.P6192567755817173484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A244824 (n + 1)) (A198693 n)

end

end A055064.P6192567755817173484

namespace A055064

/-- `and(-A244824(n+1), A198693(n))` -/
def P6192567755817173484.Spec : Prop :=
  ∀ n, P6192567755817173484.a n = A055064 (n + 1)

end A055064

/-! ## A055064.P13948225735479119707

`A000302(n+1)%A244824(n+1)`
-/

namespace A055064.P13948225735479119707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 (n + 1)) (A244824 (n + 1))

end

end A055064.P13948225735479119707

namespace A055064

/-- `A000302(n+1)%A244824(n+1)` -/
def P13948225735479119707.Spec : Prop :=
  ∀ n, P13948225735479119707.a n = A055064 (n + 1)

end A055064

/-!
# A055065: Smallest even number that is the sum of distinct primes in exactly n ways.

The programs for A055065, there is no canonical definition to state claims against.
-/

/-! ## A055065.P14635066365456452095

`2*A298990(2*(n+1))`
-/

namespace A055065.P14635066365456452095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (2 * (n + 1))

end

end A055065.P14635066365456452095

/-! ## A055065.P17804712119407564453

`2*A072511(n+1)`
-/

namespace A055065.P17804712119407564453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072511 (n + 1)

end

end A055065.P17804712119407564453

/-! ## A055065.P9661399958380567006

`A087747(n+1)+A014197(record[A014963(n+2)])`
-/

namespace A055065.P9661399958380567006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + A014197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A055065.P9661399958380567006

/-! ## A055065.P3314153932327238489

`A087747(n+1)+A311222(A000007(n)+n)-A311222(n)`
-/

namespace A055065.P3314153932327238489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + (A311222 (A000007 n + (n : ℤ)).toNat - A311222 n)

end

end A055065.P3314153932327238489

/-! ## A055065.P17763197267340022979

`A087747(n+1)+A014197(A038879(n+1))`
-/

namespace A055065.P17763197267340022979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + A014197 (A038879 (n + 1)).toNat

end

end A055065.P17763197267340022979

/-! ## A055065.P5309290370549731956

`A087747(n+1)+A014197(A038874(n+1))`
-/

namespace A055065.P5309290370549731956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + A014197 (A038874 (n + 1)).toNat

end

end A055065.P5309290370549731956

/-! ## A055065.P6921224541709743425

`A087747(n+1)+A014197(A038876(n+1))`
-/

namespace A055065.P6921224541709743425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + A014197 (A038876 (n + 1)).toNat

end

end A055065.P6921224541709743425

/-! ## A055065.P15261270744534230035

`A004277(A072511(n+1))`
-/

namespace A055065.P15261270744534230035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A072511 (n + 1)).toNat

end

end A055065.P15261270744534230035

/-! ## A055065.P7971136922917030589

`A103517(A072511(n+1)-1)`
-/

namespace A055065.P7971136922917030589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A072511 (n + 1) - 1).toNat

end

end A055065.P7971136922917030589

/-! ## A055065.P10973327597145393934

`A005843(A298990(2*(n+1)))`
-/

namespace A055065.P10973327597145393934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A298990 (2 * (n + 1))).toNat

end

end A055065.P10973327597145393934

/-! ## A055065.P5042286694910545496

`A222256(A087747(n+1))`
-/

namespace A055065.P5042286694910545496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222256 (A087747 (n + 1)).toNat

end

end A055065.P5042286694910545496

/-!
# A055066: Number of 7-covers of an unlabeled n-set.

The programs for A055066, there is no canonical definition to state claims against.
-/

/-! ## A055066.P9739453701890047482

`A055080(A056119(n)+28)`
-/

namespace A055066.P9739453701890047482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A056119 n + 28).toNat

end

end A055066.P9739453701890047482

/-! ## A055066.P89939704285066544

`A055080(A077169(n+7)+2)`
-/

namespace A055066.P89939704285066544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A077169 (n + 7) + 2).toNat

end

end A055066.P89939704285066544

/-! ## A055066.P14190256024216008402

`A055080(A167614(n+5)+4)`
-/

namespace A055066.P14190256024216008402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (A167614 (n + 5) + 4).toNat

end

end A055066.P14190256024216008402

/-! ## A055066.P14701915212194270623

`A055080(eq[6, A002262(n)]+1)`
-/

namespace A055066.P14701915212194270623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055066.P14701915212194270623

/-! ## A055066.P7033664221165860887

`A055080(eq[8, A131818(n+1)])`
-/

namespace A055066.P7033664221165860887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055066.P7033664221165860887

/-!
# A055067: Product of numbers < n which do not divide n (or 1 if no such numbers exist).

The programs for A055067, the canonical program `A055067.P4337884994625751527` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055067 has offset 1).

The definition of A055067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055067.P4337884994625751527

`A000142(n+1)/A007955(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055067

/-- `A000142(n+1)/A007955(n+1)` -/
def P4337884994625751527.Spec : Prop :=
  ∀ n, P4337884994625751527.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P13882277985631587288

`(n+1)/∏{d}[n+1, #]*n!`
-/

namespace A055067.P13882277985631587288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A055067.P13882277985631587288

namespace A055067

/-- `(n+1)/∏{d}[n+1, #]*n!` -/
def P13882277985631587288.Spec : Prop :=
  ∀ n, P13882277985631587288.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P6552844978162441285

`n!/floor(∏{d}[n+1, #]/(n+1))`
-/

namespace A055067.P6552844978162441285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (⌊((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)⌋ : ℚ)

end

end A055067.P6552844978162441285

namespace A055067

/-- `n!/floor(∏{d}[n+1, #]/(n+1))` -/
def P6552844978162441285.Spec : Prop :=
  ∀ n, P6552844978162441285.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P325249822058358004

`n!/round(∏{d}[n+1, #]/(n+1))`
-/

namespace A055067.P325249822058358004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)) : ℚ)

end

end A055067.P325249822058358004

namespace A055067

/-- `n!/round(∏{d}[n+1, #]/(n+1))` -/
def P325249822058358004.Spec : Prop :=
  ∀ n, P325249822058358004.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P1935715275704643039

`n!/A007956(n+1)`
-/

namespace A055067.P1935715275704643039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A007956 (n + 1) : ℚ)

end

end A055067.P1935715275704643039

namespace A055067

/-- `n!/A007956(n+1)` -/
def P1935715275704643039.Spec : Prop :=
  ∀ n, P1935715275704643039.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P13492699989013965751

`A000142(n)/A007956(n+1)`
-/

namespace A055067.P13492699989013965751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007956 (n + 1) : ℚ)

end

end A055067.P13492699989013965751

namespace A055067

/-- `A000142(n)/A007956(n+1)` -/
def P13492699989013965751.Spec : Prop :=
  ∀ n, P13492699989013965751.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P3088643393788800410

`∏[A028310(n)]/A007956(n+1)`
-/

namespace A055067.P3088643393788800410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A055067.P3088643393788800410

namespace A055067

/-- `∏[A028310(n)]/A007956(n+1)` -/
def P3088643393788800410.Spec : Prop :=
  ∀ n, P3088643393788800410.a n = (A055067 (n + 1) : ℚ)

end A055067

/-! ## A055067.P17509392205280046523

`A001783(n+1)*A070251(n+1)`
-/

namespace A055067.P17509392205280046523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1) * A070251 (n + 1)

end

end A055067.P17509392205280046523

namespace A055067

/-- `A001783(n+1)*A070251(n+1)` -/
def P17509392205280046523.Spec : Prop :=
  ∀ n, P17509392205280046523.a n = A055067 (n + 1)

end A055067

/-! ## A055067.P14395763194588114727

`A076000(n+1)*A076891(n+1)`
-/

namespace A055067.P14395763194588114727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076000 (n + 1) * A076891 (n + 1)

end

end A055067.P14395763194588114727

namespace A055067

/-- `A076000(n+1)*A076891(n+1)` -/
def P14395763194588114727.Spec : Prop :=
  ∀ n, P14395763194588114727.a n = A055067 (n + 1)

end A055067

/-! ## A055067.P459516562642607219

`A002944(n+1)/A007956(n+1)*A025527(n+1)`
-/

namespace A055067.P459516562642607219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ) * (A025527 (n + 1) : ℚ)

end

end A055067.P459516562642607219

namespace A055067

/-- `A002944(n+1)/A007956(n+1)*A025527(n+1)` -/
def P459516562642607219.Spec : Prop :=
  ∀ n, P459516562642607219.a n = (A055067 (n + 1) : ℚ)

end A055067

/-!
# A055068: Triangular array for David G. Cantor's sigma function.

The programs for A055068, there is no canonical definition to state claims against.
-/

/-! ## A055068.P11606211566822264036

`A073165(n)*A073306(A002262(n))`
-/

namespace A055068.P11606211566822264036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073165 n * A073306 (A002262 n).toNat

end

end A055068.P11606211566822264036

/-! ## A055068.P7437796420156808805

`lcm(A137153(n), A334028(A297802(n+4)))`
-/

namespace A055068.P7437796420156808805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137153 n) (A334028 (A297802 (n + 4)).toNat)

end

end A055068.P7437796420156808805

/-!
# A055070: Third column of triangle A055864.

The programs for A055070, there is no canonical definition to state claims against.
-/

/-! ## A055070.P1374735631118664697

`(n+1)²*floor((n+2)^(n-2))`
-/

namespace A055070.P1374735631118664697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A055070.P1374735631118664697

/-! ## A055070.P7545142313745384965

`lcm((n+1)², floor((n+2)^(n-2)))`
-/

namespace A055070.P7545142313745384965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A055070.P7545142313745384965

/-! ## A055070.P11567633625178647973

`A055862(n+1)/(n+2)`
-/

namespace A055070.P11567633625178647973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055862 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A055070.P11567633625178647973

/-!
# A055071: Largest square dividing n!.

The programs for A055071, the canonical program `A055071.P16321007213921378376` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055071 has offset 1).

The definition of A055071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055071.P16587813380636607993

`A055772(n+1)²`
-/

namespace A055071.P16587813380636607993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055772 (n + 1) ^ 2

end

end A055071.P16587813380636607993

namespace A055071

/-- `A055772(n+1)²` -/
def P16587813380636607993.Spec : Prop :=
  ∀ n, P16587813380636607993.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P16321007213921378376

`A008833((n+1)!)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055071

/-- `A008833((n+1)!)` -/
def P16321007213921378376.Spec : Prop :=
  ∀ n, P16321007213921378376.a n = A055071 (n + 1)

theorem P16321007213921378376.correct : P16321007213921378376.Spec := by
  intro n
  simp only [A055071, Nat.add_sub_cancel]

end A055071

/-! ## A055071.P2282436795714998390

`(A065033(n)!*A056043(n+1))²`
-/

namespace A055071.P2282436795714998390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A065033 n).toNat : ℤ) * A056043 (n + 1)) ^ 2

end

end A055071.P2282436795714998390

namespace A055071

/-- `(A065033(n)!*A056043(n+1))²` -/
def P2282436795714998390.Spec : Prop :=
  ∀ n, P2282436795714998390.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P14176478364506501544

`(A055230(n+1)*A056627(n+1))²`
-/

namespace A055071.P14176478364506501544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055230 (n + 1) * A056627 (n + 1)) ^ 2

end

end A055071.P14176478364506501544

namespace A055071

/-- `(A055230(n+1)*A056627(n+1))²` -/
def P14176478364506501544.Spec : Prop :=
  ∀ n, P14176478364506501544.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P15479515921354859346

`A055230(n+1)²*A056628(n+1)`
-/

namespace A055071.P15479515921354859346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055230 (n + 1) ^ 2 * A056628 (n + 1)

end

end A055071.P15479515921354859346

namespace A055071

/-- `A055230(n+1)²*A056628(n+1)` -/
def P15479515921354859346.Spec : Prop :=
  ∀ n, P15479515921354859346.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P16735383267878879625

`A055772(n+1)^gcd(2, A000010(n+2))`
-/

namespace A055071.P16735383267878879625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055772 (n + 1) ^ Int.gcd 2 (A000010 (n + 2))

end

end A055071.P16735383267878879625

namespace A055071

/-- `A055772(n+1)^gcd(2, A000010(n+2))` -/
def P16735383267878879625.Spec : Prop :=
  ∀ n, P16735383267878879625.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P12559790131940823556

`(A248765(n+1)²*A240505(n+1))²`
-/

namespace A055071.P12559790131940823556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A248765 (n + 1) ^ 2 * A240505 (n + 1)) ^ 2

end

end A055071.P12559790131940823556

namespace A055071

/-- `(A248765(n+1)²*A240505(n+1))²` -/
def P12559790131940823556.Spec : Prop :=
  ∀ n, P12559790131940823556.a n = A055071 (n + 1)

end A055071

/-! ## A055071.P2799073323928522647

`A055772(n+1)^A020639(A017089(n))`
-/

namespace A055071.P2799073323928522647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) ^ (A020639 (A017089 n).toNat : ℤ)

end

end A055071.P2799073323928522647

namespace A055071

/-- `A055772(n+1)^A020639(A017089(n))` -/
def P2799073323928522647.Spec : Prop :=
  ∀ n, P2799073323928522647.a n = (A055071 (n + 1) : ℚ)

end A055071

/-! ## A055071.P7051150887877430110

`A055772(n+1)^A001616(A000040(n+1))`
-/

namespace A055071.P7051150887877430110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) ^ (A001616 (A000040 (n + 1)).toNat : ℤ)

end

end A055071.P7051150887877430110

namespace A055071

/-- `A055772(n+1)^A001616(A000040(n+1))` -/
def P7051150887877430110.Spec : Prop :=
  ∀ n, P7051150887877430110.a n = (A055071 (n + 1) : ℚ)

end A055071

/-! ## A055071.P1492352530454700408

`A055772(n+1)^A000005(A055769(n+1))`
-/

namespace A055071.P1492352530454700408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) ^ (A000005 (A055769 (n + 1)).toNat : ℤ)

end

end A055071.P1492352530454700408

namespace A055071

/-- `A055772(n+1)^A000005(A055769(n+1))` -/
def P1492352530454700408.Spec : Prop :=
  ∀ n, P1492352530454700408.a n = (A055071 (n + 1) : ℚ)

end A055071

/-!
# A055072: Primes in A054637.

The programs for A055072, there is no canonical definition to state claims against.
-/

/-! ## A055072.P9334925151146407999

`record[A006530(A054637(n+2))]`
-/

namespace A055072.P9334925151146407999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054637 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055072.P9334925151146407999

/-! ## A055072.P14749195464282692864

`p?[record[A054637(A277564(n+1))]]`
-/

namespace A055072.P14749195464282692864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A277564 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055072.P14749195464282692864

/-! ## A055072.P12488928455520438696

`p?[record[A054637(A066136(n+1))]]`
-/

namespace A055072.P12488928455520438696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A066136 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055072.P12488928455520438696

/-! ## A055072.P13275092523919561842

`record[p?[A054637(A052938(n))]]`
-/

namespace A055072.P13275092523919561842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055072.P13275092523919561842

/-! ## A055072.P10306517498156901835

`record[p?[A054637(A078898(n)+1)]]`
-/

namespace A055072.P10306517498156901835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A078898 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055072.P10306517498156901835

/-! ## A055072.P4779160246016243456

`record[p?[A054637(A028242(n)+2)]]`
-/

namespace A055072.P4779160246016243456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A028242 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055072.P4779160246016243456

/-! ## A055072.P7979239647969774066

`record[p?[A054637(A032742(n+1)+1)]]`
-/

namespace A055072.P7979239647969774066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A032742 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055072.P7979239647969774066

/-! ## A055072.P6216097857909824592

`p?[record[A054637(A028242(n))]]`
-/

namespace A055072.P6216097857909824592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055072.P6216097857909824592

/-! ## A055072.P9167744797257957558

`p?[record[A054637(A078898(n))]]`
-/

namespace A055072.P9167744797257957558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A078898 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055072.P9167744797257957558

/-! ## A055072.P16851038342465075635

`p?[record[A054637(A032742(n+1))]]`
-/

namespace A055072.P16851038342465075635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055072.P16851038342465075635

/-!
# A055073: Positions in A054635 where the partial sums (A054637) yield primes (A055072).

The programs for A055073, there is no canonical definition to state claims against.
-/

/-! ## A055073.P7876113550213643947

`eq[2, A256750(A054637(n))]+1`
-/

namespace A055073.P7876113550213643947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A054637 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055073.P7876113550213643947

/-! ## A055073.P18123026706202656817

`eq[2, A256750(A054637(abs(1-n)))]`
-/

namespace A055073.P18123026706202656817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A054637 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055073.P18123026706202656817

/-!
# A055075: Numbers expressible as the sum of no more than 5 squares of composite numbers, allowing repetitions.

The programs for A055075, there is no canonical definition to state claims against.
-/

/-! ## A055075.P16704385814265381128

`comp[A337138(n+1)-1]+1`
-/

namespace A055075.P16704385814265381128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337138 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A055075.P16704385814265381128

/-!
# A055076: Multiplicity of Max{gcd(d, n/d)} when d runs over divisors of n.

The programs for A055076, the canonical program `A055076.P11566696520778035390` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055076 has offset 1).

The definition of A055076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055076.P11566696520778035390

`2^A162642(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055076

/-- `2^A162642(n+1)` -/
def P11566696520778035390.Spec : Prop :=
  ∀ n, P11566696520778035390.a n = (A055076 (n + 1) : ℚ)

end A055076

/-! ## A055076.P14617269076327419611

`A034444(A007913(n+1))`
-/

namespace A055076.P14617269076327419611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A007913 (n + 1)).toNat

end

end A055076.P14617269076327419611

namespace A055076

/-- `A034444(A007913(n+1))` -/
def P14617269076327419611.Spec : Prop :=
  ∀ n, P14617269076327419611.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P779828518453816483

`A034444(A350389(n+1))`
-/

namespace A055076.P779828518453816483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A350389 (n + 1)).toNat

end

end A055076.P779828518453816483

namespace A055076

/-- `A034444(A350389(n+1))` -/
def P779828518453816483.Spec : Prop :=
  ∀ n, P779828518453816483.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P17770271623465356634

`∏{e}[n+1, #%2+1]`
-/

namespace A055076.P17770271623465356634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p % 2 + 1)

end

end A055076.P17770271623465356634

namespace A055076

/-- `∏{e}[n+1, #%2+1]` -/
def P17770271623465356634.Spec : Prop :=
  ∀ n, (P17770271623465356634.a n : ℤ) = A055076 (n + 1)

end A055076

/-! ## A055076.P12284678166128348482

`∏{e}[n+1, gcd(2, #+1)]`
-/

namespace A055076.P12284678166128348482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorization (f1 n) p + 1)

end

end A055076.P12284678166128348482

namespace A055076

/-- `∏{e}[n+1, gcd(2, #+1)]` -/
def P12284678166128348482.Spec : Prop :=
  ∀ n, (P12284678166128348482.a n : ℤ) = A055076 (n + 1)

end A055076

/-! ## A055076.P6425603379535728325

`∏{e}[n+1, and(1, #)+1]`
-/

namespace A055076.P6425603379535728325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land 1 (Nat.factorization (f1 n) p) + 1)

end

end A055076.P6425603379535728325

namespace A055076

/-- `∏{e}[n+1, and(1, #)+1]` -/
def P6425603379535728325.Spec : Prop :=
  ∀ n, (P6425603379535728325.a n : ℤ) = A055076 (n + 1)

end A055076

/-! ## A055076.P5383091982624627312

`2^∑{e}[n+1, and(1, #)]`
-/

namespace A055076.P5383091982624627312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 (Nat.factorization (f1 n) p))

end

end A055076.P5383091982624627312

namespace A055076

/-- `2^∑{e}[n+1, and(1, #)]` -/
def P5383091982624627312.Spec : Prop :=
  ∀ n, (P5383091982624627312.a n : ℤ) = A055076 (n + 1)

end A055076

/-! ## A055076.P2747846284694822895

`∏{e}[n+1, lcm(2, #)/#]`
-/

namespace A055076.P2747846284694822895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm 2 (Nat.factorization (f1 n) p) : ℚ) / (Nat.factorization (f1 n) p : ℚ)

end

end A055076.P2747846284694822895

namespace A055076

/-- `∏{e}[n+1, lcm(2, #)/#]` -/
def P2747846284694822895.Spec : Prop :=
  ∀ n, P2747846284694822895.a n = (A055076 (n + 1) : ℚ)

end A055076

/-! ## A055076.P6231062586515773978

`2^∑{e}[n+1, #²%2]`
-/

namespace A055076.P6231062586515773978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 % 2)

end

end A055076.P6231062586515773978

namespace A055076

/-- `2^∑{e}[n+1, #²%2]` -/
def P6231062586515773978.Spec : Prop :=
  ∀ n, (P6231062586515773978.a n : ℤ) = A055076 (n + 1)

end A055076

/-! ## A055076.P9690892879198070898

`∏{e}[n+1, or(#, -2)+3]`
-/

namespace A055076.P9690892879198070898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.lor (Nat.factorization (f1 n) p : ℤ) (-2) + 3)

end

end A055076.P9690892879198070898

namespace A055076

/-- `∏{e}[n+1, or(#, -2)+3]` -/
def P9690892879198070898.Spec : Prop :=
  ∀ n, P9690892879198070898.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P1045924226296149651

`∑{d}[n+1, A162511(#)]`
-/

namespace A055076.P1045924226296149651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162511 d

end

end A055076.P1045924226296149651

namespace A055076

/-- `∑{d}[n+1, A162511(#)]` -/
def P1045924226296149651.Spec : Prop :=
  ∀ n, P1045924226296149651.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P15096271991161095433

`∏{e}[n+1, A000034(#)]`
-/

namespace A055076.P15096271991161095433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000034 (Nat.factorization (f1 n) p)

end

end A055076.P15096271991161095433

namespace A055076

/-- `∏{e}[n+1, A000034(#)]` -/
def P15096271991161095433.Spec : Prop :=
  ∀ n, P15096271991161095433.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P8240937257159790863

`∏{e}[A066990(n+1), 2/#]`
-/

namespace A055076.P8240937257159790863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A055076.P8240937257159790863

namespace A055076

/-- `∏{e}[A066990(n+1), 2/#]` -/
def P8240937257159790863.Spec : Prop :=
  ∀ n, P8240937257159790863.a n = (A055076 (n + 1) : ℚ)

end A055076

/-! ## A055076.P1160486116155558010

`∏{e}[n+1, A020639(3*#)-1]`
-/

namespace A055076.P1160486116155558010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A020639 (3 * Nat.factorization (f1 n) p) - 1)

end

end A055076.P1160486116155558010

namespace A055076

/-- `∏{e}[n+1, A020639(3*#)-1]` -/
def P1160486116155558010.Spec : Prop :=
  ∀ n, P1160486116155558010.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P17229321295490173676

`A000005(Δ[A069891(n)])`
-/

namespace A055076.P17229321295490173676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A055076.P17229321295490173676

namespace A055076

/-- `A000005(Δ[A069891(n)])` -/
def P17229321295490173676.Spec : Prop :=
  ∀ n, P17229321295490173676.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P1117305173640190457

`A048106(A038387(n+1))`
-/

namespace A055076.P1117305173640190457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048106 (A038387 (n + 1)).toNat

end

end A055076.P1117305173640190457

namespace A055076

/-- `A048106(A038387(n+1))` -/
def P1117305173640190457.Spec : Prop :=
  ∀ n, P1117305173640190457.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P12548898078249395742

`A034444(A071975(n+1))`
-/

namespace A055076.P12548898078249395742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A071975 (n + 1)).toNat

end

end A055076.P12548898078249395742

namespace A055076

/-- `A034444(A071975(n+1))` -/
def P12548898078249395742.Spec : Prop :=
  ∀ n, P12548898078249395742.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P14239111306817462625

`A056671(A066990(n+1))`
-/

namespace A055076.P14239111306817462625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A066990 (n + 1)).toNat

end

end A055076.P14239111306817462625

namespace A055076

/-- `A056671(A066990(n+1))` -/
def P14239111306817462625.Spec : Prop :=
  ∀ n, P14239111306817462625.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P10450578030270948373

`A006519(A293442(n+1))`
-/

namespace A055076.P10450578030270948373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A293442 (n + 1)).toNat

end

end A055076.P10450578030270948373

namespace A055076

/-- `A006519(A293442(n+1))` -/
def P10450578030270948373.Spec : Prop :=
  ∀ n, P10450578030270948373.a n = A055076 (n + 1)

end A055076

/-! ## A055076.P3048401538983330780

`A061142(A295878(n+1))`
-/

namespace A055076.P3048401538983330780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A295878 (n + 1)).toNat

end

end A055076.P3048401538983330780

namespace A055076

/-- `A061142(A295878(n+1))` -/
def P3048401538983330780.Spec : Prop :=
  ∀ n, P3048401538983330780.a n = A055076 (n + 1)

end A055076

/-!
# A055077: Multiplicity of Max{gcd(d, n!/d)} when d runs over the divisors of n!.

The programs for A055077, the canonical program `A055077.P10178039189112641336` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055077 has offset 1).

The definition of A055077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055077.P18009199238344778810

`2^A055460(n+1)`
-/

namespace A055077.P18009199238344778810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055460 (n + 1) : ℤ)

end

end A055077.P18009199238344778810

namespace A055077

/-- `2^A055460(n+1)` -/
def P18009199238344778810.Spec : Prop :=
  ∀ n, P18009199238344778810.a n = (A055077 (n + 1) : ℚ)

end A055077

/-! ## A055077.P10178039189112641336

`A000079(A055460(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055077

/-- `A000079(A055460(n+1))` -/
def P10178039189112641336.Spec : Prop :=
  ∀ n, P10178039189112641336.a n = A055077 (n + 1)

theorem P10178039189112641336.correct : P10178039189112641336.Spec := by
  intro n
  simp only [A055077, Nat.add_sub_cancel]

end A055077

/-! ## A055077.P4472670085094624406

`A011782(A055460(n+1)+1)`
-/

namespace A055077.P4472670085094624406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A055460 (n + 1) + 1).toNat

end

end A055077.P4472670085094624406

namespace A055077

/-- `A011782(A055460(n+1)+1)` -/
def P4472670085094624406.Spec : Prop :=
  ∀ n, P4472670085094624406.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P15728641808944071071

`A016116(2*A055460(n+1))`
-/

namespace A055077.P15728641808944071071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A055460 (n + 1)).toNat

end

end A055077.P15728641808944071071

namespace A055077

/-- `A016116(2*A055460(n+1))` -/
def P15728641808944071071.Spec : Prop :=
  ∀ n, P15728641808944071071.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P10015400235994609029

`A016116(A055460(n+1)+A055460(n+1)+1)`
-/

namespace A055077.P10015400235994609029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A055460 (n + 1) + (A055460 (n + 1) + 1)).toNat

end

end A055077.P10015400235994609029

namespace A055077

/-- `A016116(A055460(n+1)+A055460(n+1)+1)` -/
def P10015400235994609029.Spec : Prop :=
  ∀ n, P10015400235994609029.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P4482396483282536657

`A000051(A055460(n+1))-A028234(A020639(n+1))`
-/

namespace A055077.P4482396483282536657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A055460 (n + 1)).toNat - A028234 (A020639 (n + 1)).toNat

end

end A055077.P4482396483282536657

namespace A055077

/-- `A000051(A055460(n+1))-A028234(A020639(n+1))` -/
def P4482396483282536657.Spec : Prop :=
  ∀ n, P4482396483282536657.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P7248197864253433195

`A057079(A016969(n))+A000051(A055460(n+1))`
-/

namespace A055077.P7248197864253433195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A016969 n).toNat + A000051 (A055460 (n + 1)).toNat

end

end A055077.P7248197864253433195

namespace A055077

/-- `A057079(A016969(n))+A000051(A055460(n+1))` -/
def P7248197864253433195.Spec : Prop :=
  ∀ n, P7248197864253433195.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P9620391275680921053

`A000051(A055460(n+1))-A007318(A000217(n))`
-/

namespace A055077.P9620391275680921053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A055460 (n + 1)).toNat - A007318 (A000217 n).toNat

end

end A055077.P9620391275680921053

namespace A055077

/-- `A000051(A055460(n+1))-A007318(A000217(n))` -/
def P9620391275680921053.Spec : Prop :=
  ∀ n, P9620391275680921053.a n = A055077 (n + 1)

end A055077

/-! ## A055077.P1180964631113321518

`A001316(A336510(n+1))`
-/

namespace A055077.P1180964631113321518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A336510 (n + 1)).toNat

end

end A055077.P1180964631113321518

namespace A055077

/-- `A001316(A336510(n+1))` -/
def P1180964631113321518.Spec : Prop :=
  ∀ n, P1180964631113321518.a n = A055077 (n + 1)

end A055077

/-!
# A055078: Write n as a sum of terms of the form (p^2-1)/24 where p is a prime > 4; sequence gives those n which require at least 4 terms.

The programs for A055078, there is no canonical definition to state claims against.
-/

/-! ## A055078.P17871733963319993533

`A183147(A109996(n+1))+A164097(n+1)`
-/

namespace A055078.P17871733963319993533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A109996 (n + 1)).toNat + A164097 (n + 1)

end

end A055078.P17871733963319993533

/-!
# A055079: Smallest number with exactly n nonprime divisors.

The programs for A055079, there is no canonical definition to state claims against.
-/

/-! ## A055079.P5269870536228626625

`A046523(A287661(n+1))`
-/

namespace A055079.P5269870536228626625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A287661 (n + 1)).toNat

end

end A055079.P5269870536228626625

/-! ## A055079.P12781892568035895399

`A283463(A287661(n+1)+1)`
-/

namespace A055079.P12781892568035895399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A287661 (n + 1) + 1).toNat

end

end A055079.P12781892568035895399

/-! ## A055079.P1280044316610987006

`A299200(2*A287661(n+1))`
-/

namespace A055079.P1280044316610987006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (2 * A287661 (n + 1)).toNat

end

end A055079.P1280044316610987006

/-! ## A055079.P17037352268926036929

`A299200(lcm(2, A287661(n+1)))`
-/

namespace A055079.P17037352268926036929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (Int.lcm 2 (A287661 (n + 1)))

end

end A055079.P17037352268926036929

/-! ## A055079.P1687339953334426837

`A071364(or(1, A287661(n+1)))`
-/

namespace A055079.P1687339953334426837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.lor 1 (A287661 (n + 1))).toNat

end

end A055079.P1687339953334426837

/-!
# A055080: Triangle T(n,k) read by rows, giving number of k-member minimal covers of an unlabeled n-set, k=1..n.

The programs for A055080, there is no canonical definition to state claims against.
-/

/-! ## A055080.P440874483189605709

`A285524(A114188(n)+4)`
-/

namespace A055080.P440874483189605709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285524 (A114188 n + 4).toNat

end

end A055080.P440874483189605709

/-! ## A055080.P10404890826966912881

`A034367(n+1)-A340998(A108625(n))`
-/

namespace A055080.P10404890826966912881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (n + 1) - A340998 ((A108625 n).toNat + 140)

end

end A055080.P10404890826966912881

/-! ## A055080.P15308368491769080976

`A347699(n+2)`
-/

namespace A055080.P15308368491769080976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347699 (n + 2)

end

end A055080.P15308368491769080976

/-! ## A055080.P1739071080652557158

`A335607(A114123(n))`
-/

namespace A055080.P1739071080652557158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335607 (A114123 n).toNat

end

end A055080.P1739071080652557158

/-! ## A055080.P13477359512854310117

`A235492(A242598(n))`
-/

namespace A055080.P13477359512854310117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A242598 n).toNat

end

end A055080.P13477359512854310117

/-!
# A055081: Number of positive integers whose harmonic mean with n is a positive integer.

The programs for A055081, there is no canonical definition to state claims against.
-/

/-! ## A055081.P3462836336709596571

`A270417(n+1)+A078644(n+1)`
-/

namespace A055081.P3462836336709596571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + A078644 (n + 1)

end

end A055081.P3462836336709596571

/-! ## A055081.P8258214526925395707

`A078644(n+1)+∑{d}[n+1, A078926(#)]`
-/

namespace A055081.P8258214526925395707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A078926 d

end

end A055081.P8258214526925395707

/-! ## A055081.P15706111835881394829

`A270417(n+1)+A029578(A361689(n+1))`
-/

namespace A055081.P15706111835881394829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + A029578 (A361689 (n + 1)).toNat

end

end A055081.P15706111835881394829

/-! ## A055081.P18412858621448037077

`A156688(n+1)+A270417(n+1)-A275367(n+1)`
-/

namespace A055081.P18412858621448037077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156688 (n + 1) + (A270417 (n + 1) - A275367 (n + 1))

end

end A055081.P18412858621448037077

/-! ## A055081.P7381294208865111721

`A078644(n+1)+A024155(2*(n+1))`
-/

namespace A055081.P7381294208865111721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) + A024155 (2 * (n + 1))

end

end A055081.P7381294208865111721

/-! ## A055081.P3475350250027514916

`∏{e}[2*(n+1)², #+1]-(A108920(n+1)+1)`
-/

namespace A055081.P3475350250027514916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (A108920 (n + 1) + 1)

end

end A055081.P3475350250027514916

/-! ## A055081.P14334606892897593847

`∑{d}[n+1, A100008(#)]-(A108920(n+1)+1)`
-/

namespace A055081.P14334606892897593847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100008 d - (A108920 (n + 1) + 1)

end

end A055081.P14334606892897593847

/-! ## A055081.P16514720003710008439

`A108920(n+1)+A005408(A270417(n+1))`
-/

namespace A055081.P16514720003710008439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (n + 1) + A005408 (A270417 (n + 1)).toNat

end

end A055081.P16514720003710008439

/-! ## A055081.P17786514798565344620

`A004273(A078644(n+1))-A108920(n+1)`
-/

namespace A055081.P17786514798565344620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A078644 (n + 1)).toNat - A108920 (n + 1)

end

end A055081.P17786514798565344620

/-! ## A055081.P10040021780606906328

`A361689(n+1)-A361687(n+1)`
-/

namespace A055081.P10040021780606906328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - A361687 (n + 1)

end

end A055081.P10040021780606906328

/-!
# A055082: Number of 4 X n binary matrices with no zero rows or columns, up to row and column permutation.

The programs for A055082, there is no canonical definition to state claims against.
-/

/-! ## A055082.P15649023092235985173

`Δ[A006148(n)-A002727(n)]`
-/

namespace A055082.P15649023092235985173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 n - A002727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055082.P15649023092235985173

/-! ## A055082.P15240957078738403941

`Δ[∑[A005784(n)]-A002727(n)]`
-/

namespace A055082.P15240957078738403941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055082.P15240957078738403941

/-! ## A055082.P9921567635501116341

`A005784(n+1)-Δ[A002727(n)]`
-/

namespace A055082.P9921567635501116341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055082.P9921567635501116341

/-! ## A055082.P1569445664424459107

`A005784(n+1)-A005783(n+1)`
-/

namespace A055082.P1569445664424459107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 (n + 1) - A005783 (n + 1)

end

end A055082.P1569445664424459107

/-! ## A055082.P15916720771286563457

`A000007(n)+Δ[A005746(A028310(n))]`
-/

namespace A055082.P15916720771286563457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A055082.P15916720771286563457

/-! ## A055082.P12084077309459461338

`Δ[A057427(n)+A005746(A028310(n))]`
-/

namespace A055082.P12084077309459461338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055082.P12084077309459461338

/-! ## A055082.P17478576320120465002

`Δ[A036453(n+1)+A005746(A028310(n))]`
-/

namespace A055082.P17478576320120465002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A005746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055082.P17478576320120465002

/-! ## A055082.P1684805136497739184

`A005746(n+1)+A002727(n)-A006148(n)`
-/

namespace A055082.P1684805136497739184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005746 (n + 1) + (A002727 n - A006148 n)

end

end A055082.P1684805136497739184

/-! ## A055082.P18311926226759258374

`A010051(2*(n+1))+Δ[A005746(A028310(n))]`
-/

namespace A055082.P18311926226759258374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005746 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A055082.P18311926226759258374

/-! ## A055082.P10269737342942668396

`A005784(n+1)+A002727(n)-A002727(n+1)`
-/

namespace A055082.P10269737342942668396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005784 (n + 1) + (A002727 n - A002727 (n + 1))

end

end A055082.P10269737342942668396

/-! ## A055082.P7950119117266386291

`A006148(n+1)-(A006148(n)+A005783(n+1))`
-/

namespace A055082.P7950119117266386291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 (n + 1) - (A006148 n + A005783 (n + 1))

end

end A055082.P7950119117266386291

/-! ## A055082.P16151955999090440705

`A005746(n+1)+A000007(n)-A005746(A028310(n))`
-/

namespace A055082.P16151955999090440705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005746 (n + 1) + (A000007 n - A005746 (A028310 n).toNat)

end

end A055082.P16151955999090440705

/-! ## A055082.P13803627794616173196

`A005746(n+1)-A005746(A028310(n))*A057427(n)`
-/

namespace A055082.P13803627794616173196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005746 (n + 1) - A005746 (A028310 n).toNat * A057427 n

end

end A055082.P13803627794616173196

/-!
# A055083: Number of 5 X n binary matrices with no zero rows or columns, up to row and column permutation.

The programs for A055083, there is no canonical definition to state claims against.
-/

/-! ## A055083.P225325337931519168

`Δ[A052264(n)-A006148(n)]`
-/

namespace A055083.P225325337931519168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052264 n - A006148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055083.P225325337931519168

/-! ## A055083.P3194877599447389834

`Δ[∑[A005785(n)]-A006148(n)]`
-/

namespace A055083.P3194877599447389834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A006148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055083.P3194877599447389834

/-! ## A055083.P15300489626475099258

`A005785(n+1)-Δ[A006148(n)]`
-/

namespace A055083.P15300489626475099258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055083.P15300489626475099258

/-! ## A055083.P657077265378780734

`A005785(n+1)-A005784(n+1)`
-/

namespace A055083.P657077265378780734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 (n + 1) - A005784 (n + 1)

end

end A055083.P657077265378780734

/-! ## A055083.P11535514250414797797

`A005771(n+1)+A006148(n)-A052264(n)`
-/

namespace A055083.P11535514250414797797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005771 (n + 1) + (A006148 n - A052264 n)

end

end A055083.P11535514250414797797

/-! ## A055083.P8979291632368169553

`A005785(n+1)+A006148(n)-A006148(n+1)`
-/

namespace A055083.P8979291632368169553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005785 (n + 1) + (A006148 n - A006148 (n + 1))

end

end A055083.P8979291632368169553

/-! ## A055083.P11159395453814491233

`A052264(n+1)-(A052264(n)+A005784(n+1))`
-/

namespace A055083.P11159395453814491233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052264 (n + 1) - (A052264 n + A005784 (n + 1))

end

end A055083.P11159395453814491233

/-!
# A055084: Number of 6 X n binary matrices with no zero rows or columns, up to row and column permutation.

The programs for A055084, there is no canonical definition to state claims against.
-/

/-! ## A055084.P6382344044092817582

`A005786(n+1)-Δ[A052264(n)]`
-/

namespace A055084.P6382344044092817582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005786 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055084.P6382344044092817582

/-! ## A055084.P10560056613514024821

`A005786(n+1)-A005785(n+1)`
-/

namespace A055084.P10560056613514024821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005786 (n + 1) - A005785 (n + 1)

end

end A055084.P10560056613514024821

/-! ## A055084.P4903913938245493092

`A005786(n+1)+A052264(n)-A052264(n+1)`
-/

namespace A055084.P4903913938245493092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005786 (n + 1) + (A052264 n - A052264 (n + 1))

end

end A055084.P4903913938245493092

/-! ## A055084.P2032975295650559357

`A005786(n+1)-(A055083(n+1)+A005784(n+1))`
-/

namespace A055084.P2032975295650559357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005786 (n + 1) - (A055083 (n + 1) + A005784 (n + 1))

end

end A055084.P2032975295650559357

/-! ## A055084.P10696406435034439817

`A005786(n+1)-Δ[A028657(A167499(n+4))]`
-/

namespace A055084.P10696406435034439817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A167499 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005786 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055084.P10696406435034439817

/-!
# A055086: n appears 1+[n/2] times.

The programs for A055086, the canonical program `A055086.P18168198331367643999` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055086 has offset 0).

The definition of A055086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055086.P18168198331367643999

`ceil(2*sqrt(n+1))-2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055086

/-- `ceil(2*sqrt(n+1))-2` -/
def P18168198331367643999.Spec : Prop :=
  ∀ n, P18168198331367643999.a n = A055086 n

theorem P18168198331367643999.correct : P18168198331367643999.Spec := by
  intro n
  simp only [A055086]

end A055086

/-! ## A055086.P5067063724193674125

`∑[char[∑[∑[(n+1)%2]]]]`
-/

namespace A055086.P5067063724193674125
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P5067063724193674125

namespace A055086

/-- `∑[char[∑[∑[(n+1)%2]]]]` -/
def P5067063724193674125.Spec : Prop :=
  ∀ n, (P5067063724193674125.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P77387765651106239

`∑[char[∑[∑[1-n%2]]]]`
-/

namespace A055086.P77387765651106239
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P77387765651106239

namespace A055086

/-- `∑[char[∑[∑[1-n%2]]]]` -/
def P77387765651106239.Spec : Prop :=
  ∀ n, (P77387765651106239.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P2535857415351257447

`xor(-floor(1/Δ[sqrt(n)]), -1)`
-/

namespace A055086.P2535857415351257447
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊1 / (f1 (n + 1) - f1 n)⌋) (-1)

end

end A055086.P2535857415351257447

namespace A055086

/-- `xor(-floor(1/Δ[sqrt(n)]), -1)` -/
def P2535857415351257447.Spec : Prop :=
  ∀ n, P2535857415351257447.a n = A055086 n

end A055086

/-! ## A055086.P15259991224454796759

`∑[char[a(n-2)+n]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A055086.P15259991224454796759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 2) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P15259991224454796759

namespace A055086

/-- `∑[char[a(n-2)+n]]` -/
def P15259991224454796759.Spec : Prop :=
  ∀ n, (P15259991224454796759.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P4381226677105115572

`∑[char[∑[n]-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A055086.P4381226677105115572
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P4381226677105115572

namespace A055086

/-- `∑[char[∑[n]-a(n-1)]]` -/
def P4381226677105115572.Spec : Prop :=
  ∀ n, (P4381226677105115572.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P6021027054366851162

`∑[char[A008642(n)]]`
-/

namespace A055086.P6021027054366851162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P6021027054366851162

namespace A055086

/-- `∑[char[A008642(n)]]` -/
def P6021027054366851162.Spec : Prop :=
  ∀ n, (P6021027054366851162.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P8310710866266331137

`∑[char[A086159(n)]]`
-/

namespace A055086.P8310710866266331137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P8310710866266331137

namespace A055086

/-- `∑[char[A086159(n)]]` -/
def P8310710866266331137.Spec : Prop :=
  ∀ n, (P8310710866266331137.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P16121927611905373751

`∑[char[A092532(n)]]`
-/

namespace A055086.P16121927611905373751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P16121927611905373751

namespace A055086

/-- `∑[char[A092532(n)]]` -/
def P16121927611905373751.Spec : Prop :=
  ∀ n, (P16121927611905373751.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P4278759594924633721

`∑[char[A187243(n)]]`
-/

namespace A055086.P4278759594924633721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187243 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P4278759594924633721

namespace A055086

/-- `∑[char[A187243(n)]]` -/
def P4278759594924633721.Spec : Prop :=
  ∀ n, (P4278759594924633721.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P11262586090924736535

`∑[char[∑[A008619(n)]]]`
-/

namespace A055086.P11262586090924736535
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P11262586090924736535

namespace A055086

/-- `∑[char[∑[A008619(n)]]]` -/
def P11262586090924736535.Spec : Prop :=
  ∀ n, (P11262586090924736535.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P11352723605001267945

`floor(log2(A181666(n+1)))`
-/

namespace A055086.P11352723605001267945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A181666 (n + 1)).toNat

end

end A055086.P11352723605001267945

namespace A055086

/-- `floor(log2(A181666(n+1)))` -/
def P11352723605001267945.Spec : Prop :=
  ∀ n, (P11352723605001267945.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P3575679804510378182

`floor(log2(A319423(n+1)))`
-/

namespace A055086.P3575679804510378182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A319423 (n + 1)).toNat

end

end A055086.P3575679804510378182

namespace A055086

/-- `floor(log2(A319423(n+1)))` -/
def P3575679804510378182.Spec : Prop :=
  ∀ n, (P3575679804510378182.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P17555674828628811252

`ceil(log2(A175381(n+1)))`
-/

namespace A055086.P17555674828628811252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175381 (n + 1) : ℝ)⌉

end

end A055086.P17555674828628811252

namespace A055086

/-- `ceil(log2(A175381(n+1)))` -/
def P17555674828628811252.Spec : Prop :=
  ∀ n, P17555674828628811252.a n = A055086 n

end A055086

/-! ## A055086.P18365933362888177598

`∑[char[A087811(n+1)]]`
-/

namespace A055086.P18365933362888177598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P18365933362888177598

namespace A055086

/-- `∑[char[A087811(n+1)]]` -/
def P18365933362888177598.Spec : Prop :=
  ∀ n, (P18365933362888177598.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P13442086031178162657

`∑[char[A002620(n+2)]]`
-/

namespace A055086.P13442086031178162657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P13442086031178162657

namespace A055086

/-- `∑[char[A002620(n+2)]]` -/
def P13442086031178162657.Spec : Prop :=
  ∀ n, (P13442086031178162657.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P12268522795750606193

`∑[char[A008733(n+2)]]`
-/

namespace A055086.P12268522795750606193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055086.P12268522795750606193

namespace A055086

/-- `∑[char[A008733(n+2)]]` -/
def P12268522795750606193.Spec : Prop :=
  ∀ n, (P12268522795750606193.a n : ℤ) = A055086 n

end A055086

/-! ## A055086.P10445944493049806250

`A078633(n+1)%(n+2)`
-/

namespace A055086.P10445944493049806250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078633 (n + 1)) (n + 2 : ℤ)

end

end A055086.P10445944493049806250

namespace A055086

/-- `A078633(n+1)%(n+2)` -/
def P10445944493049806250.Spec : Prop :=
  ∀ n, P10445944493049806250.a n = A055086 n

end A055086

/-!
# A055087: Integers 0..n then 0..n then 0..n+1 then 0..n+1 etc.

The programs for A055087, the canonical program `A055087.P17964067358640094815` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055087 has offset 0).

The definition of A055087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055087.P17964067358640094815

`n%floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055087

/-- `n%floor(sqrt(n+1))` -/
def P17964067358640094815.Spec : Prop :=
  ∀ n, (P17964067358640094815.a n : ℤ) = A055087 n

theorem P17964067358640094815.correct : P17964067358640094815.Spec := by
  intro n
  simp only [A055087]

end A055087

/-! ## A055087.P11725620343026219980

`abs(-n%round(sqrt(n+1)))`
-/

namespace A055087.P11725620343026219980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(n : ℤ)) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)))|

end

end A055087.P11725620343026219980

namespace A055087

/-- `abs(-n%round(sqrt(n+1)))` -/
def P11725620343026219980.Spec : Prop :=
  ∀ n, P11725620343026219980.a n = A055087 n

end A055087

/-! ## A055087.P13973503243832314112

`n-floor(sqrt(n))*round(sqrt(n+1))`
-/

namespace A055087.P13973503243832314112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

end

end A055087.P13973503243832314112

namespace A055087

/-- `n-floor(sqrt(n))*round(sqrt(n+1))` -/
def P13973503243832314112.Spec : Prop :=
  ∀ n, P13973503243832314112.a n = A055087 n

end A055087

/-! ## A055087.P15734149396777610079

`-(n-2*n)%round(sqrt(n+1))`
-/

namespace A055087.P15734149396777610079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n : ℤ) - (2 * n : ℤ)) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)))

end

end A055087.P15734149396777610079

namespace A055087

/-- `-(n-2*n)%round(sqrt(n+1))` -/
def P15734149396777610079.Spec : Prop :=
  ∀ n, P15734149396777610079.a n = A055087 n

end A055087

/-! ## A055087.P14099638112759315407

`abs(1-A122197(n+1))`
-/

namespace A055087.P14099638112759315407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A122197 (n + 1)|

end

end A055087.P14099638112759315407

namespace A055087

/-- `abs(1-A122197(n+1))` -/
def P14099638112759315407.Spec : Prop :=
  ∀ n, P14099638112759315407.a n = A055087 n

end A055087

/-! ## A055087.P17257840589646797917

`A004526(A384688(n))`
-/

namespace A055087.P17257840589646797917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A384688 n).toNat

end

end A055087.P17257840589646797917

namespace A055087

/-- `A004526(A384688(n))` -/
def P17257840589646797917.Spec : Prop :=
  ∀ n, P17257840589646797917.a n = A055087 n

end A055087

/-! ## A055087.P18045996278264175257

`A057918(A126114(n+1))`
-/

namespace A055087.P18045996278264175257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A126114 (n + 1)).toNat

end

end A055087.P18045996278264175257

namespace A055087

/-- `A057918(A126114(n+1))` -/
def P18045996278264175257.Spec : Prop :=
  ∀ n, P18045996278264175257.a n = A055087 n

end A055087

/-! ## A055087.P6456641705969636389

`A000194((1-A122197(n+1))²)`
-/

namespace A055087.P6456641705969636389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((1 - A122197 (n + 1)) ^ 2).toNat

end

end A055087.P6456641705969636389

namespace A055087

/-- `A000194((1-A122197(n+1))²)` -/
def P6456641705969636389.Spec : Prop :=
  ∀ n, P6456641705969636389.a n = A055087 n

end A055087

/-! ## A055087.P1823447042167300040

`A000196((1-A122197(n+1))²)`
-/

namespace A055087.P1823447042167300040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((1 - A122197 (n + 1)) ^ 2).toNat

end

end A055087.P1823447042167300040

namespace A055087

/-- `A000196((1-A122197(n+1))²)` -/
def P1823447042167300040.Spec : Prop :=
  ∀ n, P1823447042167300040.a n = A055087 n

end A055087

/-! ## A055087.P12540281002784484114

`A004524(2*A122197(n+1)-1)`
-/

namespace A055087.P12540281002784484114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A122197 (n + 1) - 1).toNat

end

end A055087.P12540281002784484114

namespace A055087

/-- `A004524(2*A122197(n+1)-1)` -/
def P12540281002784484114.Spec : Prop :=
  ∀ n, P12540281002784484114.a n = A055087 n

end A055087

/-! ## A055087.P6146784861497474149

`A005843(A122197(n+1)-1)/2`
-/

namespace A055087.P6146784861497474149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A122197 (n + 1) - 1).toNat : ℚ) / 2

end

end A055087.P6146784861497474149

namespace A055087

/-- `A005843(A122197(n+1)-1)/2` -/
def P6146784861497474149.Spec : Prop :=
  ∀ n, P6146784861497474149.a n = (A055087 n : ℚ)

end A055087

/-! ## A055087.P11962501405293142837

`A002262(n-A000217(A000196(n)))`
-/

namespace A055087.P11962501405293142837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A000217 (A000196 n).toNat).toNat

end

end A055087.P11962501405293142837

namespace A055087

/-- `A002262(n-A000217(A000196(n)))` -/
def P11962501405293142837.Spec : Prop :=
  ∀ n, P11962501405293142837.a n = A055087 n

end A055087

/-! ## A055087.P9125341151677433399

`A000194(A056847(A122197(n+1)²))`
-/

namespace A055087.P9125341151677433399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056847 (A122197 (n + 1) ^ 2).toNat).toNat

end

end A055087.P9125341151677433399

namespace A055087

/-- `A000194(A056847(A122197(n+1)²))` -/
def P9125341151677433399.Spec : Prop :=
  ∀ n, P9125341151677433399.a n = A055087 n

end A055087

/-! ## A055087.P2056974941873411397

`A004526(A000267(n)-ceil(A152204(n)/2))`
-/

namespace A055087.P2056974941873411397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000267 n - ⌈(A152204 n : ℚ) / 2⌉).toNat

end

end A055087.P2056974941873411397

namespace A055087

/-- `A004526(A000267(n)-ceil(A152204(n)/2))` -/
def P2056974941873411397.Spec : Prop :=
  ∀ n, P2056974941873411397.a n = A055087 n

end A055087

/-! ## A055087.P15149928909846600272

`A014682(A000267(n)-ceil(A152204(n)/2))`
-/

namespace A055087.P15149928909846600272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000267 n - ⌈(A152204 n : ℚ) / 2⌉).toNat

end

end A055087.P15149928909846600272

namespace A055087

/-- `A014682(A000267(n)-ceil(A152204(n)/2))` -/
def P15149928909846600272.Spec : Prop :=
  ∀ n, P15149928909846600272.a n = A055087 n

end A055087

/-! ## A055087.P9521952927407361769

`val(A173195(n+1), 4)`
-/

namespace A055087.P9521952927407361769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat 4

end

end A055087.P9521952927407361769

namespace A055087

/-- `val(A173195(n+1), 4)` -/
def P9521952927407361769.Spec : Prop :=
  ∀ n, (P9521952927407361769.a n : ℤ) = A055087 n

end A055087

/-! ## A055087.P1717817300436448323

`A079644(A037213(n+1)+n)`
-/

namespace A055087.P1717817300436448323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079644 (A037213 (n + 1) + (n : ℤ)).toNat

end

end A055087.P1717817300436448323

namespace A055087

/-- `A079644(A037213(n+1)+n)` -/
def P1717817300436448323.Spec : Prop :=
  ∀ n, P1717817300436448323.a n = A055087 n

end A055087

/-! ## A055087.P8024455318267455886

`val(A155890(n+2), 5)`
-/

namespace A055087.P8024455318267455886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A155890 (n + 2)).toNat 5

end

end A055087.P8024455318267455886

namespace A055087

/-- `val(A155890(n+2), 5)` -/
def P8024455318267455886.Spec : Prop :=
  ∀ n, (P8024455318267455886.a n : ℤ) = A055087 n

end A055087

/-! ## A055087.P6298630498507761484

`A079644(A164514(n+1))`
-/

namespace A055087.P6298630498507761484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079644 (A164514 (n + 1)).toNat

end

end A055087.P6298630498507761484

namespace A055087

/-- `A079644(A164514(n+1))` -/
def P6298630498507761484.Spec : Prop :=
  ∀ n, P6298630498507761484.a n = A055087 n

end A055087

/-! ## A055087.P2948436531172363395

`A079644(A183299(n+1))`
-/

namespace A055087.P2948436531172363395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079644 (A183299 (n + 1)).toNat

end

end A055087.P2948436531172363395

namespace A055087

/-- `A079644(A183299(n+1))` -/
def P2948436531172363395.Spec : Prop :=
  ∀ n, P2948436531172363395.a n = A055087 n

end A055087

/-!
# A055088: Triangle of generalized Legendre symbols L(a/b) read by rows, with 1's for quadratic residues and 0's for quadratic non-residues.

The programs for A055088, there is no canonical definition to state claims against.
-/

/-! ## A055088.P12791633590069285550

`A025435(lcm(A010892(n), A293985(n)))`
-/

namespace A055088.P12791633590069285550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (Int.lcm (A010892 n) (A293985 n))

end

end A055088.P12791633590069285550

/-! ## A055088.P1804158388722971021

`lcm(A025435(A293985(n)), A049347(n))`
-/

namespace A055088.P1804158388722971021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025435 (A293985 n).toNat) (A049347 n)

end

end A055088.P1804158388722971021

/-! ## A055088.P12727291717666626232

`and(A001519(n), A025435(A293985(n)))`
-/

namespace A055088.P12727291717666626232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001519 n) (A025435 (A293985 n).toNat)

end

end A055088.P12727291717666626232

/-! ## A055088.P17265945728268691536

`A025435(A010892(n)²*A293985(n))`
-/

namespace A055088.P17265945728268691536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A010892 n ^ 2 * A293985 n).toNat

end

end A055088.P17265945728268691536

/-! ## A055088.P10311414991440209438

`A025435(A049347(n)²*A293985(n))`
-/

namespace A055088.P10311414991440209438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A049347 n ^ 2 * A293985 n).toNat

end

end A055088.P10311414991440209438

/-!
# A055089: List of all finite permutations in reversed colexicographic ordering.

The programs for A055089, there is no canonical definition to state claims against.
-/

/-! ## A055089.P2638538503846518694

`A362867(n)+1`
-/

namespace A055089.P2638538503846518694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362867 n + 1

end

end A055089.P2638538503846518694

/-! ## A055089.P690362941317575378

`A138960(gcd(A072946(n), A167614(n+4)))`
-/

namespace A055089.P690362941317575378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (Int.gcd (A072946 n) (A167614 (n + 4)))

end

end A055089.P690362941317575378

/-! ## A055089.P13679219221461327422

`A060135(comp[3*(n+1)])`
-/

namespace A055089.P13679219221461327422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060135 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A055089.P13679219221461327422

/-! ## A055089.P6342028713720885037

`A179542(A154322(n))`
-/

namespace A055089.P6342028713720885037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179542 (A154322 n).toNat

end

end A055089.P6342028713720885037

/-! ## A055089.P17076360666156443752

`gcd(A035608(3*n), A163904(A000079(n)))`
-/

namespace A055089.P17076360666156443752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035608 (3 * n)) (A163904 (A000079 n).toNat)

end

end A055089.P17076360666156443752

/-!
# A055090: Number of cycles (excluding fixed points) of the n-th finite permutation in reversed colexicographic ordering (A055089).

The programs for A055090, there is no canonical definition to state claims against.
-/

/-! ## A055090.P5740122194827469508

`A060128(A060126(n))`
-/

namespace A055090.P5740122194827469508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A060126 n).toNat

end

end A055090.P5740122194827469508

/-! ## A055090.P6285894138307861837

`A055093(n)-A055091(n)`
-/

namespace A055090.P6285894138307861837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A055091 n

end

end A055090.P6285894138307861837

/-! ## A055090.P7767052476203090763

`A056170(A290095(n))`
-/

namespace A055090.P7767052476203090763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A290095 n).toNat

end

end A055090.P7767052476203090763

/-! ## A055090.P15580040601139578338

`A060128(A060127(n))`
-/

namespace A055090.P15580040601139578338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A060127 n).toNat

end

end A055090.P15580040601139578338

/-! ## A055090.P1862735821563034826

`A055093(n)-A060130(A060126(n))`
-/

namespace A055090.P1862735821563034826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A060130 (A060126 n).toNat

end

end A055090.P1862735821563034826

/-! ## A055090.P17528598024197562537

`A060129(A060126(n))-A055091(n)`
-/

namespace A055090.P17528598024197562537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 (A060126 n).toNat - A055091 n

end

end A055090.P17528598024197562537

/-! ## A055090.P11661458311977780461

`A194548(A198380(n)+1)`
-/

namespace A055090.P11661458311977780461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (A198380 n + 1).toNat

end

end A055090.P11661458311977780461

/-! ## A055090.P3102049873911894500

`A056170(A290096(n))`
-/

namespace A055090.P3102049873911894500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A290096 n).toNat

end

end A055090.P3102049873911894500

/-! ## A055090.P14038728724571490550

`A055093(n)-A046660(A290095(n))`
-/

namespace A055090.P14038728724571490550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A046660 (A290095 n).toNat

end

end A055090.P14038728724571490550

/-! ## A055090.P12205430402555390931

`A275812(A290095(n))-A055091(n)`
-/

namespace A055090.P12205430402555390931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A290095 n).toNat - A055091 n

end

end A055090.P12205430402555390931

/-!
# A055091: Minimum number of transpositions needed to represent each permutation given in reversed colexicographic ordering A055089.

The programs for A055091, there is no canonical definition to state claims against.
-/

/-! ## A055091.P2397677340103249564

`A060130(A060126(n))`
-/

namespace A055091.P2397677340103249564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A060126 n).toNat

end

end A055091.P2397677340103249564

/-! ## A055091.P1265235523674013250

`A055093(n)-A055090(n)`
-/

namespace A055091.P1265235523674013250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A055090 n

end

end A055091.P1265235523674013250

/-! ## A055091.P3883768898108765162

`A046660(A290095(n))`
-/

namespace A055091.P3883768898108765162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A290095 n).toNat

end

end A055091.P3883768898108765162

/-! ## A055091.P8423864511067276939

`A060130(A060127(n))`
-/

namespace A055091.P8423864511067276939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A060127 n).toNat

end

end A055091.P8423864511067276939

/-! ## A055091.P15004450552392671670

`A060130(A065181(n))`
-/

namespace A055091.P15004450552392671670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A065181 n).toNat

end

end A055091.P15004450552392671670

/-! ## A055091.P17956640194797171707

`A055093(n)-A060128(A060126(n))`
-/

namespace A055091.P17956640194797171707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A060128 (A060126 n).toNat

end

end A055091.P17956640194797171707

/-! ## A055091.P13008995928516677095

`A060129(A060126(n))-A055090(n)`
-/

namespace A055091.P13008995928516677095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 (A060126 n).toNat - A055090 n

end

end A055091.P13008995928516677095

/-! ## A055091.P6495109231681461579

`∑{digits}[A007623(A060126(n)), A055090(#)]`
-/

namespace A055091.P6495109231681461579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A060126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055090 x).sum

end

end A055091.P6495109231681461579

/-! ## A055091.P11557990319810480568

`∑{e}[A290096(n), #-1]`
-/

namespace A055091.P11557990319810480568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A055091.P11557990319810480568

/-! ## A055091.P6950958885214882417

`A207034(A198380(n)+1)`
-/

namespace A055091.P6950958885214882417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (A198380 n + 1).toNat

end

end A055091.P6950958885214882417

/-! ## A055091.P4907663096995195470

`A046660(A290096(n))`
-/

namespace A055091.P4907663096995195470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A290096 n).toNat

end

end A055091.P4907663096995195470

/-! ## A055091.P8578099901266272801

`A055093(n)-A056170(A290095(n))`
-/

namespace A055091.P8578099901266272801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A056170 (A290095 n).toNat

end

end A055091.P8578099901266272801

/-!
# A055092: Order of each permutation given in reversed colexicographic ordering A055089, i.e., the least common multiple of their cycle lengths.

The programs for A055092, there is no canonical definition to state claims against.
-/

/-! ## A055092.P14045680260911552536

`A060131(A060126(n))`
-/

namespace A055092.P14045680260911552536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A060126 n).toNat

end

end A055092.P14045680260911552536

/-! ## A055092.P1939641178990058028

`A072411(A290095(n))`
-/

namespace A055092.P1939641178990058028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A290095 n).toNat

end

end A055092.P1939641178990058028

/-! ## A055092.P3247317891669594943

`A060131(A060127(n))`
-/

namespace A055092.P3247317891669594943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A060127 n).toNat

end

end A055092.P3247317891669594943

/-! ## A055092.P11296835113314400479

`A290103(∏{e}[A290095(n), A000040(#)])`
-/

namespace A055092.P11296835113314400479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A055092.P11296835113314400479

/-! ## A055092.P14447973230864171595

`A072411(A290096(n))`
-/

namespace A055092.P14447973230864171595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A290096 n).toNat

end

end A055092.P14447973230864171595

/-! ## A055092.P17435218249273096647

`A290107(lcm(A290096(n), A329601(n+1)))`
-/

namespace A055092.P17435218249273096647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lcm (A290096 n) (A329601 (n + 1)))

end

end A055092.P17435218249273096647

/-! ## A055092.P18429830393081642350

`A290107(lcm(11, A290096(n)))`
-/

namespace A055092.P18429830393081642350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lcm 11 (A290096 n))

end

end A055092.P18429830393081642350

/-! ## A055092.P17018765218797968821

`A290107(7*A290096(n))`
-/

namespace A055092.P17018765218797968821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (7 * A290096 n).toNat

end

end A055092.P17018765218797968821

/-! ## A055092.P12764038914806741819

`A157754(lcm(2, A290095(n)))`
-/

namespace A055092.P12764038914806741819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (Int.lcm 2 (A290095 n))

end

end A055092.P12764038914806741819

/-! ## A055092.P13724024473976075682

`A290107(or(1, A290095(n))-1)`
-/

namespace A055092.P13724024473976075682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lor 1 (A290095 n) - 1).toNat

end

end A055092.P13724024473976075682

/-! ## A055092.P16098294747188954240

`A157754(A290095(2*n-n))`
-/

namespace A055092.P16098294747188954240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (A290095 (2 * n - n)).toNat

end

end A055092.P16098294747188954240

/-! ## A055092.P1730056374907733449

`A000188(A290107(A290095(n))²)`
-/

namespace A055092.P1730056374907733449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A290107 (A290095 n).toNat ^ 2).toNat

end

end A055092.P1730056374907733449

/-! ## A055092.P14707377553932765751

`A290107(A290095(n)+A000007(n))`
-/

namespace A055092.P14707377553932765751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (A290095 n + A000007 n).toNat

end

end A055092.P14707377553932765751

/-! ## A055092.P9927464457297616871

`A290107(or(A000007(n), A290095(n)))`
-/

namespace A055092.P9927464457297616871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (Int.lor (A000007 n) (A290095 n)).toNat

end

end A055092.P9927464457297616871

/-! ## A055092.P7252821575889330492

`A290107(2*A290095(n)-A290095(n))`
-/

namespace A055092.P7252821575889330492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (2 * A290095 n - A290095 n).toNat

end

end A055092.P7252821575889330492

/-! ## A055092.P18301679163358950518

`A290101(2*(n+1))*A290107(A290095(n))`
-/

namespace A055092.P18301679163358950518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290101 (2 * (n + 1)) * A290107 (A290095 n).toNat

end

end A055092.P18301679163358950518

/-! ## A055092.P7810227986383955768

`A072411(A275725(A060126(n)))%A275725(n)`
-/

namespace A055092.P7810227986383955768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (A275725 (A060126 n).toNat).toNat) (A275725 n)

end

end A055092.P7810227986383955768

/-!
# A055093: Number of moved (non-fixed) elements in each permutation given in reversed colexicographic ordering A055089, i.e., the sum of their cycle lengths (excluding the 1-cycles, i.e., fixed elements).

The programs for A055093, there is no canonical definition to state claims against.
-/

/-! ## A055093.P927929670875320899

`A060129(A060126(n))`
-/

namespace A055093.P927929670875320899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 (A060126 n).toNat

end

end A055093.P927929670875320899

/-! ## A055093.P5380611860833885661

`A055090(n)+A055091(n)`
-/

namespace A055093.P5380611860833885661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n + A055091 n

end

end A055093.P5380611860833885661

/-! ## A055093.P4088883559559966420

`A275812(A290095(n))`
-/

namespace A055093.P4088883559559966420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A290095 n).toNat

end

end A055093.P4088883559559966420

/-! ## A055093.P11390721923217942522

`A060129(A060127(n))`
-/

namespace A055093.P11390721923217942522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 (A060127 n).toNat

end

end A055093.P11390721923217942522

/-! ## A055093.P12620130391221867580

`A369377(n)+A369376(n)`
-/

namespace A055093.P12620130391221867580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 n + A369376 n

end

end A055093.P12620130391221867580

/-! ## A055093.P12880313807674733132

`A060128(A060126(n))+A055091(n)`
-/

namespace A055093.P12880313807674733132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A060126 n).toNat + A055091 n

end

end A055093.P12880313807674733132

/-! ## A055093.P523248340624163312

`A060130(A060126(n))+A055090(n)`
-/

namespace A055093.P523248340624163312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A060126 n).toNat + A055090 n

end

end A055093.P523248340624163312

/-! ## A055093.P15902450940369024767

`A369376(A056019(n))+A369376(n)`
-/

namespace A055093.P15902450940369024767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A056019 n).toNat + A369376 n

end

end A055093.P15902450940369024767

/-! ## A055093.P15761000047535789385

`A369377(A056019(n))+A369377(n)`
-/

namespace A055093.P15761000047535789385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 (A056019 n).toNat + A369377 n

end

end A055093.P15761000047535789385

/-! ## A055093.P15135040149317269608

`A056556(8*A198380(n))`
-/

namespace A055093.P15135040149317269608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (8 * A198380 n).toNat

end

end A055093.P15135040149317269608

/-! ## A055093.P17408506143297112425

`A275812(A290096(n))`
-/

namespace A055093.P17408506143297112425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A290096 n).toNat

end

end A055093.P17408506143297112425

/-! ## A055093.P11444277368586824212

`A055090(n)+A046660(A290095(n))`
-/

namespace A055093.P11444277368586824212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n + A046660 (A290095 n).toNat

end

end A055093.P11444277368586824212

/-! ## A055093.P1072763234035747508

`A056170(A290095(n))+A055091(n)`
-/

namespace A055093.P1072763234035747508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A290095 n).toNat + A055091 n

end

end A055093.P1072763234035747508

/-!
# A055094: Binary encoding of quadratic residue set of n. L(1/n) is the most significant bit, L(n-1/n) is the least significant bit, i.e., the rows of A055088 interpreted as binary numbers.

The programs for A055094, there is no canonical definition to state claims against.
-/

/-! ## A055094.P8887328646556228612

`A280109(n+1)-2^n`
-/

namespace A055094.P8887328646556228612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280109 (n + 1) - (2 ^ n : ℤ)

end

end A055094.P8887328646556228612

/-! ## A055094.P2497572105626354928

`A280109(n+1)%A000079(n)`
-/

namespace A055094.P2497572105626354928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280109 (n + 1)) (A000079 n)

end

end A055094.P2497572105626354928

/-! ## A055094.P5215113602178752250

`and(A000225(n), A280109(n+1))`
-/

namespace A055094.P5215113602178752250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A280109 (n + 1))

end

end A055094.P5215113602178752250

/-! ## A055094.P6452977117855459807

`and(-A000051(n), A280109(n+1))`
-/

namespace A055094.P6452977117855459807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000051 n) (A280109 (n + 1))

end

end A055094.P6452977117855459807

/-! ## A055094.P9216580093443804670

`and(A280109(n+1), A303611(n+2))`
-/

namespace A055094.P9216580093443804670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280109 (n + 1)) (A303611 (n + 2))

end

end A055094.P9216580093443804670

/-! ## A055094.P3325433577319073803

`and(A140683(n), A280109(n+1))`
-/

namespace A055094.P3325433577319073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A280109 (n + 1))

end

end A055094.P3325433577319073803

/-! ## A055094.P510669068424959149

`and(A153893(n), A280109(n+1))`
-/

namespace A055094.P510669068424959149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A280109 (n + 1))

end

end A055094.P510669068424959149

/-! ## A055094.P17150039598812092586

`and(A086224(n), A280109(n+1))`
-/

namespace A055094.P17150039598812092586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A280109 (n + 1))

end

end A055094.P17150039598812092586

/-! ## A055094.P18296482770660694815

`and(A153894(n), A280109(n+1))`
-/

namespace A055094.P18296482770660694815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A280109 (n + 1))

end

end A055094.P18296482770660694815

/-! ## A055094.P4347908772460391032

`and(A086225(n), A280109(n+1))`
-/

namespace A055094.P4347908772460391032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A280109 (n + 1))

end

end A055094.P4347908772460391032

/-! ## A055094.P1420227895578824596

`and(A196305(n), A280109(n+1))`
-/

namespace A055094.P1420227895578824596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A280109 (n + 1))

end

end A055094.P1420227895578824596

/-! ## A055094.P7149831743251880814

`and(A198274(n), A280109(n+1))`
-/

namespace A055094.P7149831743251880814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198274 n) (A280109 (n + 1))

end

end A055094.P7149831743251880814

/-! ## A055094.P10527792302351619472

`and(A198275(n), A280109(n+1))`
-/

namespace A055094.P10527792302351619472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A280109 (n + 1))

end

end A055094.P10527792302351619472

/-! ## A055094.P9633514446498183066

`and(A171389(n), A280109(n+1))`
-/

namespace A055094.P9633514446498183066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A280109 (n + 1))

end

end A055094.P9633514446498183066

/-! ## A055094.P10063108179310738270

`and(A198276(n), A280109(n+1))`
-/

namespace A055094.P10063108179310738270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A280109 (n + 1))

end

end A055094.P10063108179310738270

/-! ## A055094.P1631045236096330760

`and(A280109(n+1), A291557(n))`
-/

namespace A055094.P1631045236096330760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280109 (n + 1)) (A291557 n)

end

end A055094.P1631045236096330760

/-! ## A055094.P14266377622371249730

`and(A171390(n+1), A280109(n+1))`
-/

namespace A055094.P14266377622371249730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A280109 (n + 1))

end

end A055094.P14266377622371249730

/-! ## A055094.P11356797634289740097

`and(A201914(n), A280109(n+1))`
-/

namespace A055094.P11356797634289740097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201914 n) (A280109 (n + 1))

end

end A055094.P11356797634289740097

/-! ## A055094.P12927924501261025104

`and(A129868(n), A280109(n+1))`
-/

namespace A055094.P12927924501261025104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129868 n) (A280109 (n + 1))

end

end A055094.P12927924501261025104

/-! ## A055094.P17743311868934965642

`and(A187560(n), A280109(n+1))`
-/

namespace A055094.P17743311868934965642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187560 n) (A280109 (n + 1))

end

end A055094.P17743311868934965642

/-!
# A055095: a(n) = 2*A000120(A003188(A055094(n))) - (n-1) = 2*A005811(A055094(n)) - (n-1).

The programs for A055095, there is no canonical definition to state claims against.
-/

/-! ## A055095.P2641617575515728052

`2*A005811(A055094(n+1))-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055095.P2641617575515728052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005811 (A055094 (n + 1)).toNat - (n : ℤ)

end

end A055095.P2641617575515728052

/-! ## A055095.P14912123958977946261

`gcd(A053735(n), A085185(A178521(n)))`
-/

namespace A055095.P14912123958977946261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053735 n) (A085185 (A178521 n).toNat)

end

end A055095.P14912123958977946261

/-! ## A055095.P9555774811728905344

`A381596(A307437(n+1)-A381596(n+1))`
-/

namespace A055095.P9555774811728905344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381596 (A307437 (n + 1) - A381596 (n + 1)).toNat

end

end A055095.P9555774811728905344

/-! ## A055095.P7446243038625680195

`A246568(A104842(n+1))%A086374(n+1)`
-/

namespace A055095.P7446243038625680195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246568 (A104842 (n + 1)).toNat) (A086374 (n + 1))

end

end A055095.P7446243038625680195

/-!
# A055096: Triangle read by rows, sums of 2 distinct nonzero squares: T(n,k) = k^2+n^2, (n>=2, 1 <= k <= n-1).

The programs for A055096, the canonical program `A055096.P12036012889937996553` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055096 has offset 2).

The definition of A055096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055096.P5484763077934971922

`A133819(n+1)+(n-comp[∑[n]])²`
-/

namespace A055096.P5484763077934971922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2

end

end A055096.P5484763077934971922

namespace A055096

/-- `A133819(n+1)+(n-comp[∑[n]])²` -/
def P5484763077934971922.Spec : Prop :=
  ∀ n, P5484763077934971922.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P1720657984917670007

`A002260(n+1)²+(n-comp[∑[n]])²`
-/

namespace A055096.P1720657984917670007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2

end

end A055096.P1720657984917670007

namespace A055096

/-- `A002260(n+1)²+(n-comp[∑[n]])²` -/
def P1720657984917670007.Spec : Prop :=
  ∀ n, P1720657984917670007.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P10860423767492174986

`A063930(n+1)+A063929(n+1)`
-/

namespace A055096.P10860423767492174986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063930 (n + 1) + A063929 (n + 1)

end

end A055096.P10860423767492174986

namespace A055096

/-- `A063930(n+1)+A063929(n+1)` -/
def P10860423767492174986.Spec : Prop :=
  ∀ n, P10860423767492174986.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P15522316150741331269

`A144650(n+1)+A095832(n+1)`
-/

namespace A055096.P15522316150741331269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + A095832 (n + 1)

end

end A055096.P15522316150741331269

namespace A055096

/-- `A144650(n+1)+A095832(n+1)` -/
def P15522316150741331269.Spec : Prop :=
  ∀ n, P15522316150741331269.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P13279732346162134348

`A140978(n+1)+A133819(n+1)`
-/

namespace A055096.P13279732346162134348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A133819 (n + 1)

end

end A055096.P13279732346162134348

namespace A055096

/-- `A140978(n+1)+A133819(n+1)` -/
def P13279732346162134348.Spec : Prop :=
  ∀ n, P13279732346162134348.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P12036012889937996553

`A001283(n+2)-A003991(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A055096

/-- `A001283(n+2)-A003991(n+1)` -/
def P12036012889937996553.Spec : Prop :=
  ∀ n, P12036012889937996553.a n = A055096 (n + 2)

theorem P12036012889937996553.correct : P12036012889937996553.Spec := by
  intro n
  simp only [A055096, Nat.add_sub_cancel]

end A055096

/-! ## A055096.P15701173423841896880

`A256560(n+2)-A256497(n+1)`
-/

namespace A055096.P15701173423841896880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256560 (n + 2) - A256497 (n + 1)

end

end A055096.P15701173423841896880

namespace A055096

/-- `A256560(n+2)-A256497(n+1)` -/
def P15701173423841896880.Spec : Prop :=
  ∀ n, P15701173423841896880.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P12045707845335347766

`A140978(n+1)+A002260(n+1)²`
-/

namespace A055096.P12045707845335347766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + A002260 (n + 1) ^ 2

end

end A055096.P12045707845335347766

namespace A055096

/-- `A140978(n+1)+A002260(n+1)²` -/
def P12045707845335347766.Spec : Prop :=
  ∀ n, P12045707845335347766.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P12133273041982448959

`A140978(n+1)+sqrt(A133821(n+1))`
-/

namespace A055096.P12133273041982448959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℝ) + Real.sqrt (A133821 (n + 1) : ℝ)

end

end A055096.P12133273041982448959

namespace A055096

/-- `A140978(n+1)+sqrt(A133821(n+1))` -/
def P12133273041982448959.Spec : Prop :=
  ∀ n, P12133273041982448959.a n = (A055096 (n + 2) : ℝ)

end A055096

/-! ## A055096.P2909763131168241284

`A185910(n+1)+A217575(n+1)+2`
-/

namespace A055096.P2909763131168241284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + (A217575 (n + 1) + 2)

end

end A055096.P2909763131168241284

namespace A055096

/-- `A185910(n+1)+A217575(n+1)+2` -/
def P2909763131168241284.Spec : Prop :=
  ∀ n, P2909763131168241284.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P13074182918394703951

`A057105(n+1)+2*A063929(n+1)`
-/

namespace A055096.P13074182918394703951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057105 (n + 1) + 2 * A063929 (n + 1)

end

end A055096.P13074182918394703951

namespace A055096

/-- `A057105(n+1)+2*A063929(n+1)` -/
def P13074182918394703951.Spec : Prop :=
  ∀ n, P13074182918394703951.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P4656380073534930558

`A056203(n+1)-2*A003991(n+1)`
-/

namespace A055096.P4656380073534930558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - 2 * A003991 (n + 1)

end

end A055096.P4656380073534930558

namespace A055096

/-- `A056203(n+1)-2*A003991(n+1)` -/
def P4656380073534930558.Spec : Prop :=
  ∀ n, P4656380073534930558.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P7735456505639671619

`2*A063930(n+1)-A057105(n+1)`
-/

namespace A055096.P7735456505639671619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063930 (n + 1) - A057105 (n + 1)

end

end A055096.P7735456505639671619

namespace A055096

/-- `2*A063930(n+1)-A057105(n+1)` -/
def P7735456505639671619.Spec : Prop :=
  ∀ n, P7735456505639671619.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P16950479710115979959

`A120070(n+2)+2*A133819(n+1)`
-/

namespace A055096.P16950479710115979959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + 2 * A133819 (n + 1)

end

end A055096.P16950479710115979959

namespace A055096

/-- `A120070(n+2)+2*A133819(n+1)` -/
def P16950479710115979959.Spec : Prop :=
  ∀ n, P16950479710115979959.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P8908396778082836304

`(A338432(n+1)+A056203(n+1))/2`
-/

namespace A055096.P8908396778082836304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338432 (n + 1) + A056203 (n + 1) : ℚ) / 2

end

end A055096.P8908396778082836304

namespace A055096

/-- `(A338432(n+1)+A056203(n+1))/2` -/
def P8908396778082836304.Spec : Prop :=
  ∀ n, P8908396778082836304.a n = (A055096 (n + 2) : ℚ)

end A055096

/-! ## A055096.P14831291653319054085

`A338432(n+1)+A098352(n+1)/2`
-/

namespace A055096.P14831291653319054085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338432 (n + 1) : ℚ) + (A098352 (n + 1) : ℚ) / 2

end

end A055096.P14831291653319054085

namespace A055096

/-- `A338432(n+1)+A098352(n+1)/2` -/
def P14831291653319054085.Spec : Prop :=
  ∀ n, P14831291653319054085.a n = (A055096 (n + 2) : ℚ)

end A055096

/-! ## A055096.P16587014704549340618

`2*A001283(n+2)-A056203(n+1)`
-/

namespace A055096.P16587014704549340618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001283 (n + 2) - A056203 (n + 1)

end

end A055096.P16587014704549340618

namespace A055096

/-- `2*A001283(n+2)-A056203(n+1)` -/
def P16587014704549340618.Spec : Prop :=
  ∀ n, P16587014704549340618.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P4571043694071935523

`A056203(n+1)-A098352(n+1)/2`
-/

namespace A055096.P4571043694071935523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056203 (n + 1) : ℚ) - (A098352 (n + 1) : ℚ) / 2

end

end A055096.P4571043694071935523

namespace A055096

/-- `A056203(n+1)-A098352(n+1)/2` -/
def P4571043694071935523.Spec : Prop :=
  ∀ n, P4571043694071935523.a n = (A055096 (n + 2) : ℚ)

end A055096

/-! ## A055096.P17041125603835703996

`2*A140978(n+1)-A120070(n+2)`
-/

namespace A055096.P17041125603835703996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140978 (n + 1) - A120070 (n + 2)

end

end A055096.P17041125603835703996

namespace A055096

/-- `2*A140978(n+1)-A120070(n+2)` -/
def P17041125603835703996.Spec : Prop :=
  ∀ n, P17041125603835703996.a n = A055096 (n + 2)

end A055096

/-! ## A055096.P8399091212159330934

`A140978(n+1)+A133820(n+1)/A002260(n+1)`
-/

namespace A055096.P8399091212159330934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℚ) + (A133820 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A055096.P8399091212159330934

namespace A055096

/-- `A140978(n+1)+A133820(n+1)/A002260(n+1)` -/
def P8399091212159330934.Spec : Prop :=
  ∀ n, P8399091212159330934.a n = (A055096 (n + 2) : ℚ)

end A055096

/-!
# A055097: Number of divisors for each term in the triangle A055096. It is 2 for primes (all of the form 4k+1).

The programs for A055097, the canonical program `A055097.P7629506041412364577` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055097 has offset 1).

The definition of A055097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055097.P7629506041412364577

`A000005(A055096(n+2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055097

/-- `A000005(A055096(n+2))` -/
def P7629506041412364577.Spec : Prop :=
  ∀ n, P7629506041412364577.a n = A055097 (n + 1)

theorem P7629506041412364577.correct : P7629506041412364577.Spec := by
  intro n
  simp only [A055097, Nat.add_sub_cancel]

end A055097

/-! ## A055097.P295279418057657407

`A000005(A002260(n+1)²+(n-comp[∑[n]])²)`
-/

namespace A055097.P295279418057657407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1) ^ 2 + ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2).toNat

end

end A055097.P295279418057657407

namespace A055097

/-- `A000005(A002260(n+1)²+(n-comp[∑[n]])²)` -/
def P295279418057657407.Spec : Prop :=
  ∀ n, P295279418057657407.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P466547259538543240

`A000005(A140978(n+1)+A133819(n+1))`
-/

namespace A055097.P466547259538543240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140978 (n + 1) + A133819 (n + 1)).toNat

end

end A055097.P466547259538543240

namespace A055097

/-- `A000005(A140978(n+1)+A133819(n+1))` -/
def P466547259538543240.Spec : Prop :=
  ∀ n, P466547259538543240.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P5412556113270786184

`A000005(A001283(n+2)-A003991(n+1))`
-/

namespace A055097.P5412556113270786184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001283 (n + 2) - A003991 (n + 1)).toNat

end

end A055097.P5412556113270786184

namespace A055097

/-- `A000005(A001283(n+2)-A003991(n+1))` -/
def P5412556113270786184.Spec : Prop :=
  ∀ n, P5412556113270786184.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P9083875299722113687

`A000005(A256560(n+2)-A256497(n+1))`
-/

namespace A055097.P9083875299722113687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A256560 (n + 2) - A256497 (n + 1)).toNat

end

end A055097.P9083875299722113687

namespace A055097

/-- `A000005(A256560(n+2)-A256497(n+1))` -/
def P9083875299722113687.Spec : Prop :=
  ∀ n, P9083875299722113687.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P10987003333860956390

`A000005(A256560(n+2)%A256497(n+1))`
-/

namespace A055097.P10987003333860956390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A256560 (n + 2)) (A256497 (n + 1))).toNat

end

end A055097.P10987003333860956390

namespace A055097

/-- `A000005(A256560(n+2)%A256497(n+1))` -/
def P10987003333860956390.Spec : Prop :=
  ∀ n, P10987003333860956390.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P5983460547568001930

`A000005(A070216(∑[A035214(n)]))`
-/

namespace A055097.P5983460547568001930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A070216 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A055097.P5983460547568001930

namespace A055097

/-- `A000005(A070216(∑[A035214(n)]))` -/
def P5983460547568001930.Spec : Prop :=
  ∀ n, P5983460547568001930.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P5738375120452635500

`A000005(A070216(A014132(n+1)))`
-/

namespace A055097.P5738375120452635500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A070216 (A014132 (n + 1)).toNat).toNat

end

end A055097.P5738375120452635500

namespace A055097

/-- `A000005(A070216(A014132(n+1)))` -/
def P5738375120452635500.Spec : Prop :=
  ∀ n, P5738375120452635500.a n = A055097 (n + 1)

end A055097

/-! ## A055097.P5807719888059844368

`A000005(A008935(A018900(n+1)))`
-/

namespace A055097.P5807719888059844368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008935 (A018900 (n + 1)).toNat).toNat

end

end A055097.P5807719888059844368

namespace A055097

/-- `A000005(A008935(A018900(n+1)))` -/
def P5807719888059844368.Spec : Prop :=
  ∀ n, P5807719888059844368.a n = A055097 (n + 1)

end A055097

/-!
# A055098: Number of distinct anagrams of digits of n without leading zeros.

The programs for A055098, there is no canonical definition to state claims against.
-/

/-! ## A055098.P35572668257586745

`A326307(A004186(n+1))`
-/

namespace A055098.P35572668257586745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 (A004186 (n + 1)).toNat

end

end A055098.P35572668257586745

/-! ## A055098.P1641227030634944349

`A262190(2^floor(A061487(n+1)/A061500(n+1)))`
-/

namespace A055098.P1641227030634944349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(A061487 (n + 1) : ℚ) / (A061500 (n + 1) : ℚ)⌋ : ℤ))).toNat

end

end A055098.P1641227030634944349

/-! ## A055098.P2686648128856744639

`A013632(A360391(n+1)^8)`
-/

namespace A055098.P2686648128856744639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A360391 (n + 1) ^ 8).toNat

end

end A055098.P2686648128856744639

/-! ## A055098.P1042420335839849225

`A360387(A360391(n+1)^8)`
-/

namespace A055098.P1042420335839849225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360387 (A360391 (n + 1) ^ 8).toNat

end

end A055098.P1042420335839849225

/-! ## A055098.P8492841914460645105

`A360419(A360391(n+1)!)!`
-/

namespace A055098.P8492841914460645105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A360419 (Nat.factorial (A360391 (n + 1)).toNat)).toNat

end

end A055098.P8492841914460645105

/-! ## A055098.P16027839850925457824

`A360421(A360391(n+1)!)!`
-/

namespace A055098.P16027839850925457824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A360421 (Nat.factorial (A360391 (n + 1)).toNat)).toNat

end

end A055098.P16027839850925457824

/-! ## A055098.P3349252207731175253

`A088192(A123895(n+1)²)`
-/

namespace A055098.P3349252207731175253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088192 (A123895 (n + 1) ^ 2).toNat

end

end A055098.P3349252207731175253

/-! ## A055098.P10185835820709671179

`A123895(A123895(n+1)²)%3`
-/

namespace A055098.P10185835820709671179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123895 (A123895 (n + 1) ^ 2).toNat) 3

end

end A055098.P10185835820709671179

/-! ## A055098.P12606727834925604329

`A000124(A256824(n+1)%A047726(n+1))`
-/

namespace A055098.P12606727834925604329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Int.tmod (A256824 (n + 1)) (A047726 (n + 1))).toNat

end

end A055098.P12606727834925604329

/-!
# A055099: Expansion of g.f.: (1 + x)/(1 - 3*x - 2*x^2).

The programs for A055099, the canonical program `A055099.P1156977057372395403` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055099 has offset 0).

The definition of A055099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055099.P1156977057372395403

`3*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A055099

/-- `3*a(n-1)+2*a(n-2)` -/
def P1156977057372395403.Spec : Prop :=
  ∀ n, (P1156977057372395403.a n : ℤ) = A055099 n

theorem P1156977057372395403.correct : P1156977057372395403.Spec := by
  intro n
  simp only [A055099]

end A055099

/-! ## A055099.P16786227557916461728

`2*a(n-1)+2*A007482(n-1)` with `a(0)=1`
-/

namespace A055099.P16786227557916461728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 2 * A007482 (n - 1)

end

end A055099.P16786227557916461728

namespace A055099

/-- `2*a(n-1)+2*A007482(n-1)` -/
def P16786227557916461728.Spec : Prop :=
  ∀ n, P16786227557916461728.a n = A055099 n

end A055099

/-! ## A055099.P7833706773540446579

`2*A007482(n)-A104934(n)`
-/

namespace A055099.P7833706773540446579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007482 n - A104934 n

end

end A055099.P7833706773540446579

namespace A055099

/-- `2*A007482(n)-A104934(n)` -/
def P7833706773540446579.Spec : Prop :=
  ∀ n, P7833706773540446579.a n = A055099 n

end A055099

/-! ## A055099.P16508184555687372205

`A007481(2*n+1)-A007481(2*n)`
-/

namespace A055099.P16508184555687372205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (2 * n + 1) - A007481 (2 * n)

end

end A055099.P16508184555687372205

namespace A055099

/-- `A007481(2*n+1)-A007481(2*n)` -/
def P16508184555687372205.Spec : Prop :=
  ∀ n, P16508184555687372205.a n = A055099 n

end A055099

/-! ## A055099.P11353155554291227862

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A055099.P11353155554291227862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A055099.P11353155554291227862

namespace A055099

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P11353155554291227862.Spec : Prop :=
  ∀ n, P11353155554291227862.a n = A055099 n

end A055099

/-! ## A055099.P13454972268129885299

`a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A055099.P13454972268129885299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A055099.P13454972268129885299

namespace A055099

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P13454972268129885299.Spec : Prop :=
  ∀ n, (P13454972268129885299.a n : ℤ) = A055099 n

theorem P13454972268129885299.correct : P13454972268129885299.Spec := by
  intro n
  simp only [A055099, Nat.add_sub_cancel, A055099.P13454972268129885299.a, A055099.P1156977057372395403.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055099

/-! ## A055099.P5215699518169603958

`record[A000034(n)*A007481(n)]`
-/

namespace A055099.P5215699518169603958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A007481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055099.P5215699518169603958

namespace A055099

/-- `record[A000034(n)*A007481(n)]` -/
def P5215699518169603958.Spec : Prop :=
  ∀ n, P5215699518169603958.a n = A055099 n

end A055099

/-! ## A055099.P9095581421353860916

`A106434(n+1)+A104934(n)`
-/

namespace A055099.P9095581421353860916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A104934 n

end

end A055099.P9095581421353860916

namespace A055099

/-- `A106434(n+1)+A104934(n)` -/
def P9095581421353860916.Spec : Prop :=
  ∀ n, P9095581421353860916.a n = A055099 n

end A055099

/-! ## A055099.P10265723797731068082

`A180143(n)-A230269(n+1)`
-/

namespace A055099.P10265723797731068082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180143 n - A230269 (n + 1)

end

end A055099.P10265723797731068082

namespace A055099

/-- `A180143(n)-A230269(n+1)` -/
def P10265723797731068082.Spec : Prop :=
  ∀ n, P10265723797731068082.a n = A055099 n

end A055099

/-! ## A055099.P14301330057631154955

`A230269(n+2)+A193653(n)`
-/

namespace A055099.P14301330057631154955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 2) + A193653 n

end

end A055099.P14301330057631154955

namespace A055099

/-- `A230269(n+2)+A193653(n)` -/
def P14301330057631154955.Spec : Prop :=
  ∀ n, P14301330057631154955.a n = A055099 n

end A055099

/-! ## A055099.P17789423290138197497

`A007482(n)+A106434(n+1)/2`
-/

namespace A055099.P17789423290138197497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007482 n : ℚ) + (A106434 (n + 1) : ℚ) / 2

end

end A055099.P17789423290138197497

namespace A055099

/-- `A007482(n)+A106434(n+1)/2` -/
def P17789423290138197497.Spec : Prop :=
  ∀ n, P17789423290138197497.a n = (A055099 n : ℚ)

end A055099

/-! ## A055099.P15097803895287315929

`A007483(n)-A106434(n+1)/2`
-/

namespace A055099.P15097803895287315929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007483 n : ℚ) - (A106434 (n + 1) : ℚ) / 2

end

end A055099.P15097803895287315929

namespace A055099

/-- `A007483(n)-A106434(n+1)/2` -/
def P15097803895287315929.Spec : Prop :=
  ∀ n, P15097803895287315929.a n = (A055099 n : ℚ)

end A055099

/-! ## A055099.P455802122135322583

`A007483(n)-(A007482(n)-A104934(n))`
-/

namespace A055099.P455802122135322583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - (A007482 n - A104934 n)

end

end A055099.P455802122135322583

namespace A055099

/-- `A007483(n)-(A007482(n)-A104934(n))` -/
def P455802122135322583.Spec : Prop :=
  ∀ n, P455802122135322583.a n = A055099 n

end A055099

/-! ## A055099.P7681388803366880908

`A206776(n)+A206776(n)-A189736(n+1)`
-/

namespace A055099.P7681388803366880908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n + (A206776 n - A189736 (n + 1))

end

end A055099.P7681388803366880908

namespace A055099

/-- `A206776(n)+A206776(n)-A189736(n+1)` -/
def P7681388803366880908.Spec : Prop :=
  ∀ n, P7681388803366880908.a n = A055099 n

end A055099

/-! ## A055099.P6105321148730663937

`Δ[A193653(n)]`
-/

namespace A055099.P6105321148730663937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055099.P6105321148730663937

namespace A055099

/-- `Δ[A193653(n)]` -/
def P6105321148730663937.Spec : Prop :=
  ∀ n, P6105321148730663937.a n = A055099 n

end A055099

/-! ## A055099.P10837358529425205690

`Δ[A007482(n)/2]`
-/

namespace A055099.P10837358529425205690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007482 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055099.P10837358529425205690

namespace A055099

/-- `Δ[A007482(n)/2]` -/
def P10837358529425205690.Spec : Prop :=
  ∀ n, P10837358529425205690.a n = (A055099 n : ℚ)

end A055099

/-! ## A055099.P3574823329931077264

`Δ[A180143(n)/3]`
-/

namespace A055099.P3574823329931077264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180143 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055099.P3574823329931077264

namespace A055099

/-- `Δ[A180143(n)/3]` -/
def P3574823329931077264.Spec : Prop :=
  ∀ n, P3574823329931077264.a n = (A055099 n : ℚ)

end A055099

/-! ## A055099.P1348029430369113541

`A104934(n+1)/2`
-/

namespace A055099.P1348029430369113541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104934 (n + 1) : ℚ) / 2

end

end A055099.P1348029430369113541

namespace A055099

/-- `A104934(n+1)/2` -/
def P1348029430369113541.Spec : Prop :=
  ∀ n, P1348029430369113541.a n = (A055099 n : ℚ)

end A055099

/-! ## A055099.P15812025855257864819

`A322940(n+2)/4`
-/

namespace A055099.P15812025855257864819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322940 (n + 2) : ℚ) / 4

end

end A055099.P15812025855257864819

namespace A055099

/-- `A322940(n+2)/4` -/
def P15812025855257864819.Spec : Prop :=
  ∀ n, P15812025855257864819.a n = (A055099 n : ℚ)

end A055099

