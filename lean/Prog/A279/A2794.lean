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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279400: Row lengths of the irregular triangle A279399.

The programs for A279400, there is no canonical definition to state claims against.
-/

/-! ## A279400.P5259381405547462211

`A048865(A033949(n+1))`
-/

namespace A279400.P5259381405547462211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A033949 (n + 1)).toNat

end

end A279400.P5259381405547462211

/-! ## A279400.P11537141434146165278

`A048865(A175594(n+2))`
-/

namespace A279400.P11537141434146165278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A175594 (n + 2)).toNat

end

end A279400.P11537141434146165278

/-! ## A279400.P3387646913363923843

`A048865(A180634(n+3))`
-/

namespace A279400.P3387646913363923843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A180634 (n + 3)).toNat

end

end A279400.P3387646913363923843

/-! ## A279400.P13085517702196193230

`A048865(A277915(∑[n+1]))`
-/

namespace A279400.P13085517702196193230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A277915 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279400.P13085517702196193230

/-! ## A279400.P326783451334378285

`A048865(comp[A160377(n+1)]+1)`
-/

namespace A279400.P326783451334378285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A279400.P326783451334378285

/-! ## A279400.P8347788863747079219

`A048865(lt[(A046146(n)+1)², n])`
-/

namespace A279400.P8347788863747079219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046146 n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279400.P8347788863747079219

/-! ## A279400.P857786947432271293

`A048865(lt[(A103310(n)+2)², n])`
-/

namespace A279400.P857786947432271293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103310 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A279400.P857786947432271293

/-! ## A279400.P13104239348487777430

`A048865(lt[0, A104194(n+1)]+1)`
-/

namespace A279400.P13104239348487777430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A279400.P13104239348487777430

/-! ## A279400.P14696535606917880392

`A048865(lt[1, A034380(n+1)]+1)`
-/

namespace A279400.P14696535606917880392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A279400.P14696535606917880392

/-! ## A279400.P14890210532403223068

`A048865(lt[1, A155828(n+1)]+1)`
-/

namespace A279400.P14890210532403223068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A279400.P14890210532403223068

/-!
# A279411: Expansion of Product_{k>0} 1/(1 + x^k)^(k*4).

The programs for A279411, there is no canonical definition to state claims against.
-/

/-! ## A279411.P15377783613175654024

`A279928(∑[n+5]+5)`
-/

namespace A279411.P15377783613175654024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A279411.P15377783613175654024

/-! ## A279411.P16719688852476588783

`A279928(A052905(n+2))%A182462(n)`
-/

namespace A279411.P16719688852476588783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279928 (A052905 (n + 2)).toNat) (A182462 n)

end

end A279411.P16719688852476588783

/-! ## A279411.P16299558145201869294

`A279928(A052905(n+2))+A000007(n+1)`
-/

namespace A279411.P16299558145201869294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A279411.P16299558145201869294

/-! ## A279411.P8147926889029327617

`A279928(A052905(n+2))+A001489(n)+n`
-/

namespace A279411.P8147926889029327617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A052905 (n + 2)).toNat + (A001489 n + (n : ℤ))

end

end A279411.P8147926889029327617

/-! ## A279411.P9451717288397884630

`A279928(A052905(n+2))+n*A000038(n)`
-/

namespace A279411.P9451717288397884630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A052905 (n + 2)).toNat + (n : ℤ) * A000038 n

end

end A279411.P9451717288397884630

/-! ## A279411.P10720586943991417850

`A057427(Δ[n²])*A279928(A052905(n+2))`
-/

namespace A279411.P10720586943991417850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A279928 (A052905 (n + 2)).toNat

end

end A279411.P10720586943991417850

/-! ## A279411.P6367490303153619128

`(A000041(n)%2)!*A279928(A052905(n+2))`
-/

namespace A279411.P6367490303153619128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A279928 (A052905 (n + 2)).toNat

end

end A279411.P6367490303153619128

/-! ## A279411.P9936858260274155113

`A279928(A052905(n+2))+char[A270799(n+1)]`
-/

namespace A279411.P9936858260274155113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270799 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A052905 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A279411.P9936858260274155113

/-! ## A279411.P4568655244313071130

`A279928(A052905(n+2))+char[A270802(n+1)]`
-/

namespace A279411.P4568655244313071130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A052905 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A279411.P4568655244313071130

/-! ## A279411.P16529839009555695117

`A279928(eq[5, A004736(n+1)])%A077250(n)`
-/

namespace A279411.P16529839009555695117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279928 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A077250 n)

end

end A279411.P16529839009555695117

/-!
# A279412: Expansion of Sum_{k>=1} prime(k)*x^prime(k)/(1 + x^prime(k)) * Product_{k>=1} (1 + x^prime(k)).

The programs for A279412, there is no canonical definition to state claims against.
-/

/-! ## A279412.P343689611768804766

`(n+1)*A000586(n+1)`
-/

namespace A279412.P343689611768804766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000586 (n + 1)

end

end A279412.P343689611768804766

/-! ## A279412.P2339010974607025778

`(n+1)*(A347419(n+1)+A010051(n+1))`
-/

namespace A279412.P2339010974607025778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A347419 (n + 1) + A010051 (n + 1))

end

end A279412.P2339010974607025778

/-! ## A279412.P452429617852982549

`(n+1)*Δ[A280271(n)]`
-/

namespace A279412.P452429617852982549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A279412.P452429617852982549

/-! ## A279412.P11248935348941887189

`Δ[A280271(n)]*A328399(2*n)`
-/

namespace A279412.P11248935348941887189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A328399 (2 * n)

end

end A279412.P11248935348941887189

/-! ## A279412.P3815961657623516030

`Δ[A280271(n)]*A008619(2*n)`
-/

namespace A279412.P3815961657623516030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A279412.P3815961657623516030

/-! ## A279412.P14786779184739307087

`A000586(A028242(2*n))*A028242(2*n)`
-/

namespace A279412.P14786779184739307087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A279412.P14786779184739307087

/-! ## A279412.P15388347655017943318

`A000586(A008620(3*n))*A008620(3*n)`
-/

namespace A279412.P15388347655017943318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A008620 (3 * n)).toNat * A008620 (3 * n)

end

end A279412.P15388347655017943318

/-! ## A279412.P5825129561413006971

`(n+1)*Δ[A184171(n)+∑[A339383(n)]]`
-/

namespace A279412.P5825129561413006971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A279412.P5825129561413006971

/-! ## A279412.P5774344243007500266

`(n+1)*Δ[A184172(n)+∑[A339382(n)]]`
-/

namespace A279412.P5774344243007500266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184172 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A279412.P5774344243007500266

/-! ## A279412.P3181959992957052045

`(n+1)*A382955(∑[n+1])`
-/

namespace A279412.P3181959992957052045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A382955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279412.P3181959992957052045

/-!
# A279413: Triangle read by rows: T(n,k), n>=k>=1, is the number of isosceles triangles with integer coordinates that have a bounding box of size n X k.

The programs for A279413, there is no canonical definition to state claims against.
-/

/-! ## A279413.P8646498292825960802

`A279415(n+1)+A280639(n+1)+A279418(n+1)`
-/

namespace A279413.P8646498292825960802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279415 (n + 1) + (A280639 (n + 1) + A279418 (n + 1))

end

end A279413.P8646498292825960802

/-! ## A279413.P15854021285047823384

`A253581(A141214(3*n))%A127778(n+1)`
-/

namespace A279413.P15854021285047823384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253581 (A141214 (3 * n)).toNat) (A127778 (n + 1))

end

end A279413.P15854021285047823384

/-!
# A279415: Triangle read by rows: T(n,k), n>=k>=1, is the number of right isosceles triangles with integral coordinates that have a bounding box of size n X k.

The programs for A279415, the canonical program `A279415.P13072635906519015695` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279415 has offset 1).

The definition of A279415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279415.P13072635906519015695

`(2-Δ[A274773(n+1)])*(1-C(n, n²))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279415

/-- `(2-Δ[A274773(n+1)])*(1-C(n, n²))` -/
def P13072635906519015695.Spec : Prop :=
  ∀ n, P13072635906519015695.a n = A279415 (n + 1)

theorem P13072635906519015695.correct : P13072635906519015695.Spec := by
  intro n
  simp only [A279415, Nat.add_sub_cancel]

end A279415

/-! ## A279415.P7628430937418314855

`2*(A068344(n)+A057427(n))`
-/

namespace A279415.P7628430937418314855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068344 n + A057427 n)

end

end A279415.P7628430937418314855

namespace A279415

/-- `2*(A068344(n)+A057427(n))` -/
def P7628430937418314855.Spec : Prop :=
  ∀ n, P7628430937418314855.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P15882534992816123094

`2*(A057427(n)-Δ[A053616(n)])`
-/

namespace A279415.P15882534992816123094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057427 n - (f1 (n + 1) - f1 n))

end

end A279415.P15882534992816123094

namespace A279415

/-- `2*(A057427(n)-Δ[A053616(n)])` -/
def P15882534992816123094.Spec : Prop :=
  ∀ n, P15882534992816123094.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P14122136142564311094

`2*(A068344(n)+char[A004488(n+1)])`
-/

namespace A279415.P14122136142564311094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068344 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A279415.P14122136142564311094

namespace A279415

/-- `2*(A068344(n)+char[A004488(n+1)])` -/
def P14122136142564311094.Spec : Prop :=
  ∀ n, P14122136142564311094.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P8047018292439062358

`(2-Δ[A274773(n+1)])%A016777(n)`
-/

namespace A279415.P8047018292439062358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - (f1 (n + 1) - f1 n)) (A016777 n)

end

end A279415.P8047018292439062358

namespace A279415

/-- `(2-Δ[A274773(n+1)])%A016777(n)` -/
def P8047018292439062358.Spec : Prop :=
  ∀ n, P8047018292439062358.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P3421041946507534325

`(1-A000007(n))*(2-Δ[A274773(n+1)])`
-/

namespace A279415.P3421041946507534325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * (2 - (f1 (n + 1) - f1 n))

end

end A279415.P3421041946507534325

namespace A279415

/-- `(1-A000007(n))*(2-Δ[A274773(n+1)])` -/
def P3421041946507534325.Spec : Prop :=
  ∀ n, P3421041946507534325.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P4069082283744175792

`A211767(n+1)%3-Δ[A274773(n+1)]`
-/

namespace A279415.P4069082283744175792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211767 (n + 1)) 3 - (f1 (n + 1) - f1 n)

end

end A279415.P4069082283744175792

namespace A279415

/-- `A211767(n+1)%3-Δ[A274773(n+1)]` -/
def P4069082283744175792.Spec : Prop :=
  ∀ n, P4069082283744175792.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P754159853820387518

`2*(A068344(n)+A008835(a(n-1)+1))` with `a(0)=0`
-/

namespace A279415.P754159853820387518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A068344 n + A008835 (a (n - 1) + 1).toNat)

end

end A279415.P754159853820387518

namespace A279415

/-- `2*(A068344(n)+A008835(a(n-1)+1))` -/
def P754159853820387518.Spec : Prop :=
  ∀ n, P754159853820387518.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P5817583096044838583

`A004092(A057427(n)-Δ[A053616(n)])`
-/

namespace A279415.P5817583096044838583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A057427 n - (f1 (n + 1) - f1 n)).toNat

end

end A279415.P5817583096044838583

namespace A279415

/-- `A004092(A057427(n)-Δ[A053616(n)])` -/
def P5817583096044838583.Spec : Prop :=
  ∀ n, P5817583096044838583.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P11040930174826771323

`A005843(A057427(n)-Δ[A053616(n)])`
-/

namespace A279415.P11040930174826771323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057427 n - (f1 (n + 1) - f1 n)).toNat

end

end A279415.P11040930174826771323

namespace A279415

/-- `A005843(A057427(n)-Δ[A053616(n)])` -/
def P11040930174826771323.Spec : Prop :=
  ∀ n, P11040930174826771323.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P15720146763710560893

`A022340(A057427(n)-Δ[A053616(n)])`
-/

namespace A279415.P15720146763710560893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (A057427 n - (f1 (n + 1) - f1 n)).toNat

end

end A279415.P15720146763710560893

namespace A279415

/-- `A022340(A057427(n)-Δ[A053616(n)])` -/
def P15720146763710560893.Spec : Prop :=
  ∀ n, P15720146763710560893.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P16837888610280113352

`A285326(A057427(n)-Δ[A053616(n)])`
-/

namespace A279415.P16837888610280113352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (A057427 n - (f1 (n + 1) - f1 n)).toNat

end

end A279415.P16837888610280113352

namespace A279415

/-- `A285326(A057427(n)-Δ[A053616(n)])` -/
def P16837888610280113352.Spec : Prop :=
  ∀ n, P16837888610280113352.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P15520560238013167060

`2*(A340507(A080036(n))+A340507(n))`
-/

namespace A279415.P15520560238013167060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A340507 (A080036 n).toNat + A340507 n)

end

end A279415.P15520560238013167060

namespace A279415

/-- `2*(A340507(A080036(n))+A340507(n))` -/
def P15520560238013167060.Spec : Prop :=
  ∀ n, P15520560238013167060.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P17684279008909292126

`A279413(n+1)-(A280639(n+1)+A279418(n+1))`
-/

namespace A279415.P17684279008909292126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279413 (n + 1) - (A280639 (n + 1) + A279418 (n + 1))

end

end A279415.P17684279008909292126

namespace A279415

/-- `A279413(n+1)-(A280639(n+1)+A279418(n+1))` -/
def P17684279008909292126.Spec : Prop :=
  ∀ n, P17684279008909292126.a n = A279415 (n + 1)

end A279415

/-! ## A279415.P17937577476161996645

`Δ[abs(1-2*n)-A110654(A253580(2*n))]`
-/

namespace A279415.P17937577476161996645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)| - A110654 (A253580 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279415.P17937577476161996645

namespace A279415

/-- `Δ[abs(1-2*n)-A110654(A253580(2*n))]` -/
def P17937577476161996645.Spec : Prop :=
  ∀ n, P17937577476161996645.a n = A279415 (n + 1)

end A279415

/-!
# A279416: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points below the diagonal of an n X k grid.

The programs for A279416, the canonical program `A279416.P2972962882282322000` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279416 has offset 1).

The definition of A279416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279416.P2972962882282322000

`((col(n)+1)*(row(n)+1)-(gcd(row(n), col(n))+1))/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279416

/-- `((col(n)+1)*(row(n)+1)-(gcd(row(n), col(n))+1))/2` -/
def P2972962882282322000.Spec : Prop :=
  ∀ n, P2972962882282322000.a n = (A279416 (n + 1) : ℚ)

end A279416

/-! ## A279416.P2725144242243004525

`((col(n)+1)*(row(n)+1)-(gcd(col(n), row(n))+1))/2`
-/

namespace A279416.P2725144242243004525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 1) : ℤ) - (Nat.gcd (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) + 1 : ℤ) : ℚ) / 2

end

end A279416.P2725144242243004525

namespace A279416

/-- `((col(n)+1)*(row(n)+1)-(gcd(col(n), row(n))+1))/2` -/
def P2725144242243004525.Spec : Prop :=
  ∀ n, P2725144242243004525.a n = (A279416 (n + 1) : ℚ)

end A279416

/-! ## A279416.P9763162876256978290

`A141419(n+1)-A049727(n)`
-/

namespace A279416.P9763162876256978290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A049727 n

end

end A279416.P9763162876256978290

namespace A279416

/-- `A141419(n+1)-A049727(n)` -/
def P9763162876256978290.Spec : Prop :=
  ∀ n, P9763162876256978290.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P3302958042948157281

`A075362(n+1)-A279417(n+1)`
-/

namespace A279416.P3302958042948157281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A279417 (n + 1)

end

end A279416.P3302958042948157281

namespace A279416

/-- `A075362(n+1)-A279417(n+1)` -/
def P3302958042948157281.Spec : Prop :=
  ∀ n, P3302958042948157281.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P9511942642178718393

`A279417(n+1)-A281726(n+1)`
-/

namespace A279416.P9511942642178718393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279417 (n + 1) - A281726 (n + 1)

end

end A279416.P9511942642178718393

namespace A279416

/-- `A279417(n+1)-A281726(n+1)` -/
def P9511942642178718393.Spec : Prop :=
  ∀ n, P9511942642178718393.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P17674469456280883618

`(A223544(n+1)-A109004(n))/2`
-/

namespace A279416.P17674469456280883618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223544 (n + 1) - A109004 n : ℚ) / 2

end

end A279416.P17674469456280883618

namespace A279416

/-- `(A223544(n+1)-A109004(n))/2` -/
def P17674469456280883618.Spec : Prop :=
  ∀ n, P17674469456280883618.a n = (A279416 (n + 1) : ℚ)

end A279416

/-! ## A279416.P10880039852574919419

`(A075362(n+1)-A281726(n+1))/2`
-/

namespace A279416.P10880039852574919419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) - A281726 (n + 1) : ℚ) / 2

end

end A279416.P10880039852574919419

namespace A279416

/-- `(A075362(n+1)-A281726(n+1))/2` -/
def P10880039852574919419.Spec : Prop :=
  ∀ n, P10880039852574919419.a n = (A279416 (n + 1) : ℚ)

end A279416

/-! ## A279416.P13408601470454537102

`A004526(A075362(n+1)-A109004(n))`
-/

namespace A279416.P13408601470454537102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075362 (n + 1) - A109004 n).toNat

end

end A279416.P13408601470454537102

namespace A279416

/-- `A004526(A075362(n+1)-A109004(n))` -/
def P13408601470454537102.Spec : Prop :=
  ∀ n, P13408601470454537102.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P15224466615529724121

`A001281(A075362(n+1)-A281726(n+1))`
-/

namespace A279416.P15224466615529724121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A075362 (n + 1) - A281726 (n + 1)).toNat

end

end A279416.P15224466615529724121

namespace A279416

/-- `A001281(A075362(n+1)-A281726(n+1))` -/
def P15224466615529724121.Spec : Prop :=
  ∀ n, P15224466615529724121.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P2540534044876543589

`A004525(A075362(n+1)-A281726(n+1))`
-/

namespace A279416.P2540534044876543589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A075362 (n + 1) - A281726 (n + 1)).toNat

end

end A279416.P2540534044876543589

namespace A279416

/-- `A004525(A075362(n+1)-A281726(n+1))` -/
def P2540534044876543589.Spec : Prop :=
  ∀ n, P2540534044876543589.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P16807785324996119121

`A004526(A075362(n+1)-A281726(n+1))`
-/

namespace A279416.P16807785324996119121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075362 (n + 1) - A281726 (n + 1)).toNat

end

end A279416.P16807785324996119121

namespace A279416

/-- `A004526(A075362(n+1)-A281726(n+1))` -/
def P16807785324996119121.Spec : Prop :=
  ∀ n, P16807785324996119121.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P17921718481005637649

`A008619(A075362(n+1)-A109004(n))-1`
-/

namespace A279416.P17921718481005637649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A075362 (n + 1) - A109004 n).toNat - 1

end

end A279416.P17921718481005637649

namespace A279416

/-- `A008619(A075362(n+1)-A109004(n))-1` -/
def P17921718481005637649.Spec : Prop :=
  ∀ n, P17921718481005637649.a n = A279416 (n + 1)

end A279416

/-! ## A279416.P916876393174757775

`A029579(A223544(n+1)-A109004(n))-1`
-/

namespace A279416.P916876393174757775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A223544 (n + 1) - A109004 n).toNat - 1

end

end A279416.P916876393174757775

namespace A279416

/-- `A029579(A223544(n+1)-A109004(n))-1` -/
def P916876393174757775.Spec : Prop :=
  ∀ n, P916876393174757775.a n = A279416 (n + 1)

end A279416

/-!
# A279417: Triangle read by rows: T(n,k), n >= k >= 1, is the number of grid points on or below the diagonal of an n X k grid.

The programs for A279417, the canonical program `A279417.P8462113972375181396` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279417 has offset 1).

The definition of A279417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279417.P8462113972375181396

`((col(n)+1)*(row(n)+1)+gcd(row(n), col(n))+1)/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279417

/-- `((col(n)+1)*(row(n)+1)+gcd(row(n), col(n))+1)/2` -/
def P8462113972375181396.Spec : Prop :=
  ∀ n, P8462113972375181396.a n = (A279417 (n + 1) : ℚ)

end A279417

/-! ## A279417.P15182280597281221658

`((col(n)+1)*(row(n)+1)+gcd(col(n), row(n))+1)/2`
-/

namespace A279417.P15182280597281221658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 1) + (Nat.gcd (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n) + 1) : ℚ) / 2

end

end A279417.P15182280597281221658

namespace A279417

/-- `((col(n)+1)*(row(n)+1)+gcd(col(n), row(n))+1)/2` -/
def P15182280597281221658.Spec : Prop :=
  ∀ n, P15182280597281221658.a n = (A279417 (n + 1) : ℚ)

end A279417

/-! ## A279417.P17402926163399653354

`A112367(n)+A049727(n)`
-/

namespace A279417.P17402926163399653354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A049727 n

end

end A279417.P17402926163399653354

namespace A279417

/-- `A112367(n)+A049727(n)` -/
def P17402926163399653354.Spec : Prop :=
  ∀ n, P17402926163399653354.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P404822138755359012

`A281726(n+1)+A279416(n+1)`
-/

namespace A279417.P404822138755359012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281726 (n + 1) + A279416 (n + 1)

end

end A279417.P404822138755359012

namespace A279417

/-- `A281726(n+1)+A279416(n+1)` -/
def P404822138755359012.Spec : Prop :=
  ∀ n, P404822138755359012.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P804341453745467672

`A075362(n+1)-A279416(n+1)`
-/

namespace A279417.P804341453745467672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A279416 (n + 1)

end

end A279417.P804341453745467672

namespace A279417

/-- `A075362(n+1)-A279416(n+1)` -/
def P804341453745467672.Spec : Prop :=
  ∀ n, P804341453745467672.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P1345159014238792508

`(A281726(n+1)+A075362(n+1))/2`
-/

namespace A279417.P1345159014238792508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281726 (n + 1) + A075362 (n + 1) : ℚ) / 2

end

end A279417.P1345159014238792508

namespace A279417

/-- `(A281726(n+1)+A075362(n+1))/2` -/
def P1345159014238792508.Spec : Prop :=
  ∀ n, P1345159014238792508.a n = (A279417 (n + 1) : ℚ)

end A279417

/-! ## A279417.P5606318159573270292

`A109004(n)+A029579(A223544(n+1)-A109004(n))`
-/

namespace A279417.P5606318159573270292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n + A029579 (A223544 (n + 1) - A109004 n).toNat

end

end A279417.P5606318159573270292

namespace A279417

/-- `A109004(n)+A029579(A223544(n+1)-A109004(n))` -/
def P5606318159573270292.Spec : Prop :=
  ∀ n, P5606318159573270292.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P13651883459856542398

`A008619(A109004(n)+A075362(n+1))`
-/

namespace A279417.P13651883459856542398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A109004 n + A075362 (n + 1)).toNat

end

end A279417.P13651883459856542398

namespace A279417

/-- `A008619(A109004(n)+A075362(n+1))` -/
def P13651883459856542398.Spec : Prop :=
  ∀ n, P13651883459856542398.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P5472004812816014349

`A029579(A223544(n+1)+A109004(n))`
-/

namespace A279417.P5472004812816014349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A223544 (n + 1) + A109004 n).toNat

end

end A279417.P5472004812816014349

namespace A279417

/-- `A029579(A223544(n+1)+A109004(n))` -/
def P5472004812816014349.Spec : Prop :=
  ∀ n, P5472004812816014349.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P5382860838037130073

`A004526(A075362(n+1)+A109004(n)+1)`
-/

namespace A279417.P5382860838037130073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075362 (n + 1) + (A109004 n + 1)).toNat

end

end A279417.P5382860838037130073

namespace A279417

/-- `A004526(A075362(n+1)+A109004(n)+1)` -/
def P5382860838037130073.Spec : Prop :=
  ∀ n, P5382860838037130073.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P15592629189807258680

`A001281(A281726(n+1)+A075362(n+1))`
-/

namespace A279417.P15592629189807258680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A281726 (n + 1) + A075362 (n + 1)).toNat

end

end A279417.P15592629189807258680

namespace A279417

/-- `A001281(A281726(n+1)+A075362(n+1))` -/
def P15592629189807258680.Spec : Prop :=
  ∀ n, P15592629189807258680.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P3676239038482736097

`A004525(A281726(n+1)+A075362(n+1))`
-/

namespace A279417.P3676239038482736097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A281726 (n + 1) + A075362 (n + 1)).toNat

end

end A279417.P3676239038482736097

namespace A279417

/-- `A004525(A281726(n+1)+A075362(n+1))` -/
def P3676239038482736097.Spec : Prop :=
  ∀ n, P3676239038482736097.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P11687166999155894793

`A004526(A281726(n+1)+A075362(n+1))`
-/

namespace A279417.P11687166999155894793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A281726 (n + 1) + A075362 (n + 1)).toNat

end

end A279417.P11687166999155894793

namespace A279417

/-- `A004526(A281726(n+1)+A075362(n+1))` -/
def P11687166999155894793.Spec : Prop :=
  ∀ n, P11687166999155894793.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P16909676943177612141

`A008611(A007494(A109004(n)+A075362(n+1)))`
-/

namespace A279417.P16909676943177612141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A007494 (A109004 n + A075362 (n + 1)).toNat).toNat

end

end A279417.P16909676943177612141

namespace A279417

/-- `A008611(A007494(A109004(n)+A075362(n+1)))` -/
def P16909676943177612141.Spec : Prop :=
  ∀ n, P16909676943177612141.a n = A279417 (n + 1)

end A279417

/-! ## A279417.P11023810311011700471

`A049727(A245300(n))`
-/

namespace A279417.P11023810311011700471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049727 (A245300 n).toNat

end

end A279417.P11023810311011700471

namespace A279417

/-- `A049727(A245300(n))` -/
def P11023810311011700471.Spec : Prop :=
  ∀ n, P11023810311011700471.a n = A279417 (n + 1)

end A279417

/-!
# A279418: Triangle read by rows: T(n,k), n>=k>=1, is the number of acute isosceles triangles with integer coordinates that have a bounding box of size n X k.

The programs for A279418, there is no canonical definition to state claims against.
-/

/-! ## A279418.P4310423580700075798

`A279413(n+1)-(A280639(n+1)+A279415(n+1))`
-/

namespace A279418.P4310423580700075798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279413 (n + 1) - (A280639 (n + 1) + A279415 (n + 1))

end

end A279418.P4310423580700075798

/-!
# A279420: Numbers k such that k^2 has an odd number of digits and the middle digit is 0.

The programs for A279420, there is no canonical definition to state claims against.
-/

/-! ## A279420.P3580115932535908345

`filter[A361926(2*n+1), A217096(#)]`
-/

namespace A279420.P3580115932535908345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361926 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A279420.P3580115932535908345

/-!
# A279423: Numbers k such that k^2 has an odd number of digits and the middle digit is 3.

The programs for A279423, there is no canonical definition to state claims against.
-/

/-! ## A279423.P5425367288037092244

`A291664(∑[A291428(3*n+2)])`
-/

namespace A279423.P5425367288037092244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291428 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291664 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A279423.P5425367288037092244

/-!
# A279424: Numbers k such that k^2 has an odd number of digits and the middle digit is 4.

The programs for A279424, there is no canonical definition to state claims against.
-/

/-! ## A279424.P2930071177193723079

`A106099(n+1)-A248891(A053287(n+1))`
-/

namespace A279424.P2930071177193723079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106099 (n + 1) - A248891 (A053287 (n + 1)).toNat

end

end A279424.P2930071177193723079

/-! ## A279424.P13411411377133194805

`A061909(3*n+4)-A034178(A284858(n))`
-/

namespace A279424.P13411411377133194805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (3 * n + 4) - A034178 (A284858 n).toNat

end

end A279424.P13411411377133194805

/-!
# A279426: Numbers k such that k^2 has an odd number of digits and the middle digit is 6.

The programs for A279426, there is no canonical definition to state claims against.
-/

/-! ## A279426.P9621900088392328692

`or(n, A166534(A285475(n)))`
-/

namespace A279426.P9621900088392328692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A166534 (A285475 n).toNat)

end

end A279426.P9621900088392328692

/-!
# A279427: Numbers k such that k^2 has an odd number of digits and the middle digit is 7.

The programs for A279427, there is no canonical definition to state claims against.
-/

/-! ## A279427.P4285845466411517533

`A137700(A272862(n+2))`
-/

namespace A279427.P4285845466411517533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137700 (A272862 (n + 2)).toNat

end

end A279427.P4285845466411517533

/-!
# A279428: Numbers k such that k^2 has an odd number of digits and the middle digit is 8.

The programs for A279428, there is no canonical definition to state claims against.
-/

/-! ## A279428.P35888939746960245

`∑[A230362(A344889(n+1))+3]+1`
-/

namespace A279428.P35888939746960245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (A344889 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A279428.P35888939746960245

/-!
# A279430: Numbers k such that k^2 has an odd number of digits in base 2 and the middle digit is 0.

The programs for A279430, there is no canonical definition to state claims against.
-/

/-! ## A279430.P1804089978872425219

`eq[A124737(n), A178334(A218616(n))]`
-/

namespace A279430.P1804089978872425219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A218616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279430.P1804089978872425219

/-! ## A279430.P13077464125912031910

`eq[A051904(A001158(n+1)), A124737(n)]`
-/

namespace A279430.P13077464125912031910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A001158 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279430.P13077464125912031910

/-! ## A279430.P7197933522306551787

`lt[A157235(A289176(n+1)), A035327(n)]`
-/

namespace A279430.P7197933522306551787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157235 (A289176 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279430.P7197933522306551787

/-! ## A279430.P17965421541754309889

`lt[A208246(A000041(n)), A035327(n)]`
-/

namespace A279430.P17965421541754309889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208246 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279430.P17965421541754309889

/-! ## A279430.P1062446038327547885

`record[A292942(n)+A163510(A292381(n+1))]`
-/

namespace A279430.P1062446038327547885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 n + A163510 (A292381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279430.P1062446038327547885

/-!
# A279431: Numbers k such that k^2 has an odd number of digits in base 2 and the middle digit is 1.

The programs for A279431, there is no canonical definition to state claims against.
-/

/-! ## A279431.P7429637700868222645

`eq[1, A173923(A159780(n²))]`
-/

namespace A279431.P7429637700868222645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173923 (A159780 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279431.P7429637700868222645

/-! ## A279431.P5840552328716396559

`lt[A000007(n), A159780(A159780(n²)²)²]`
-/

namespace A279431.P5840552328716396559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (A159780 (n ^ 2) ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279431.P5840552328716396559

/-!
# A279432: Triangle read by rows: T(n,k), n>=k>=1, is the number of triangles with integer coordinates that have a bounding box of size n X k.

The programs for A279432, there is no canonical definition to state claims against.
-/

/-! ## A279432.P7585128843148818809

`A279433(n+1)+A280653(n+1)+A280652(n+1)`
-/

namespace A279432.P7585128843148818809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279433 (n + 1) + (A280653 (n + 1) + A280652 (n + 1))

end

end A279432.P7585128843148818809

/-! ## A279432.P13838768989479375036

`and(A107348(n), A233583(A331755(n+1)))`
-/

namespace A279432.P13838768989479375036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107348 n) (A233583 (A331755 (n + 1)).toNat)

end

end A279432.P13838768989479375036

/-!
# A279433: Triangle read by rows: T(n,k), n>=k>=1, is the number of right triangles with integral coordinates that have a bounding box of size n X k.

The programs for A279433, there is no canonical definition to state claims against.
-/

/-! ## A279433.P15075635011987684245

`A279432(n+1)-(A280653(n+1)+A280652(n+1))`
-/

namespace A279433.P15075635011987684245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279432 (n + 1) - (A280653 (n + 1) + A280652 (n + 1))

end

end A279433.P15075635011987684245

/-! ## A279433.P8500997615519546760

`lcm(A000005(A244404(n+9)), A049600(n))`
-/

namespace A279433.P8500997615519546760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A244404 (n + 9)).toNat) (A049600 n)

end

end A279433.P8500997615519546760

/-! ## A279433.P6733283428645816488

`A028242((A007723(n)^A007732(n+1))!)*A108502(n+2)`
-/

namespace A279433.P6733283428645816488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.factorial (SequenceMachineLib.roundAway ((A007723 n : ℚ) ^ (A007732 (n + 1) : ℤ))).toNat) * A108502 (n + 2)

end

end A279433.P6733283428645816488

/-! ## A279433.P13618685977903917976

`A028242((A007723(n)^A007737(n+1))!)*A108502(n+2)`
-/

namespace A279433.P13618685977903917976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.factorial (SequenceMachineLib.roundAway ((A007723 n : ℚ) ^ (A007737 (n + 1) : ℤ))).toNat) * A108502 (n + 2)

end

end A279433.P13618685977903917976

/-!
# A279434: Numerators of coefficients in expansion of 1/(1 + e^x - e^(2x)).

The programs for A279434, there is no canonical definition to state claims against.
-/

/-! ## A279434.P6307033134281951754

`A000556(n)/A000142(n)*A279435(n)`
-/

namespace A279434.P6307033134281951754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n : ℚ) / (A000142 n : ℚ) * (A279435 n : ℚ)

end

end A279434.P6307033134281951754

/-! ## A279434.P14030665828669699666

`lcm(A000556(n), A133942(n))/A000142(n)`
-/

namespace A279434.P14030665828669699666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000556 n) (A133942 n) : ℚ) / (A000142 n : ℚ)

end

end A279434.P14030665828669699666

/-! ## A279434.P14213229747684011785

`A000556(n)/A322356(A093785(n+1))`
-/

namespace A279434.P14213229747684011785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n : ℚ) / (A322356 (A093785 (n + 1)).toNat : ℚ)

end

end A279434.P14213229747684011785

/-! ## A279434.P1438572277154563363

`A000556(n)/A319099(A003461(n))`
-/

namespace A279434.P1438572277154563363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n : ℚ) / (A319099 (A003461 n).toNat : ℚ)

end

end A279434.P1438572277154563363

/-! ## A279434.P7457394275484676950

`A000556(n)/A046643(A034190(n))`
-/

namespace A279434.P7457394275484676950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n : ℚ) / (A046643 (A034190 n).toNat : ℚ)

end

end A279434.P7457394275484676950

/-!
# A279435: Denominators of coefficients in expansion of 1/(1 + e^x - e^(2x)).

The programs for A279435, there is no canonical definition to state claims against.
-/

/-! ## A279435.P11336361331019256757

`A000142(n)/A000556(n)*A279434(n)`
-/

namespace A279435.P11336361331019256757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000556 n : ℚ) * (A279434 n : ℚ)

end

end A279435.P11336361331019256757

/-! ## A279435.P16358747401903067625

`lcm(A000556(n), A133942(n))/A000556(n)`
-/

namespace A279435.P16358747401903067625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000556 n) (A133942 n) : ℚ) / (A000556 n : ℚ)

end

end A279435.P16358747401903067625

/-! ## A279435.P16002664824392005780

`A000142(n)/A256690(A306234(3*n+5))`
-/

namespace A279435.P16002664824392005780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A256690 (A306234 (3 * n + 5)).toNat : ℚ)

end

end A279435.P16002664824392005780

/-! ## A279435.P6535602297855762595

`n!/A322356(A093785(n+1))`
-/

namespace A279435.P6535602297855762595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A322356 (A093785 (n + 1)).toNat : ℚ)

end

end A279435.P6535602297855762595

/-! ## A279435.P595761185271047319

`A000142(n)/A322356(A093785(n+1))`
-/

namespace A279435.P595761185271047319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A322356 (A093785 (n + 1)).toNat : ℚ)

end

end A279435.P595761185271047319

/-!
# A279436: Number of nonprimes less than or equal to n that do not divide n.

The programs for A279436, the canonical program `A279436.P15978742674708459391` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279436 has offset 1).

The definition of A279436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279436.P15978742674708459391

`A062298(n+1)-A033273(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A279436

/-- `A062298(n+1)-A033273(n+1)` -/
def P15978742674708459391.Spec : Prop :=
  ∀ n, P15978742674708459391.a n = A279436 (n + 1)

theorem P15978742674708459391.correct : P15978742674708459391.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel]

end A279436

/-! ## A279436.P18082520756214479633

`A049820(n+1)-A048865(n+1)`
-/

namespace A279436.P18082520756214479633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A048865 (n + 1)

end

end A279436.P18082520756214479633

namespace A279436

/-- `A049820(n+1)-A048865(n+1)` -/
def P18082520756214479633.Spec : Prop :=
  ∀ n, P18082520756214479633.a n = A279436 (n + 1)

theorem P18082520756214479633.correct : P18082520756214479633.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P18082520756214479633.a, A279436.P15978742674708459391.a, A033273, A033273.P18420659424697249895.a, A048865, A048865.P11145010694177444749.a, A049820, A049820.P9428372222244335888.a, A062298, A062298.P8226643735375377344.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P3362543716616657825

`A229109(n+1)-A082514(n+1)`
-/

namespace A279436.P3362543716616657825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A082514 (n + 1)

end

end A279436.P3362543716616657825

namespace A279436

/-- `A229109(n+1)-A082514(n+1)` -/
def P3362543716616657825.Spec : Prop :=
  ∀ n, P3362543716616657825.a n = A279436 (n + 1)

theorem P3362543716616657825.correct : P3362543716616657825.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P3362543716616657825.a, A279436.P15978742674708459391.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, A082514, A082514.P13229630575248176506.a, A229109, A229109.P7396241872602068631.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P16486883233854827846

`n+1-A000720(n+1)-A000005(n+1)+A001221(n+1)`
-/

namespace A279436.P16486883233854827846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (n + 1) - A000005 (n + 1) + A001221 (n + 1)

end

end A279436.P16486883233854827846

namespace A279436

/-- `n+1-A000720(n+1)-A000005(n+1)+A001221(n+1)` -/
def P16486883233854827846.Spec : Prop :=
  ∀ n, P16486883233854827846.a n = A279436 (n + 1)

theorem P16486883233854827846.correct : P16486883233854827846.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P16486883233854827846.a, A279436.P15978742674708459391.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P256563473677637350

`1-A351519(n+1)+n`
-/

namespace A279436.P256563473677637350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A351519 (n + 1) + (n : ℤ)

end

end A279436.P256563473677637350

namespace A279436

/-- `1-A351519(n+1)+n` -/
def P256563473677637350.Spec : Prop :=
  ∀ n, P256563473677637350.a n = A279436 (n + 1)

theorem P256563473677637350.correct : P256563473677637350.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P256563473677637350.a, A279436.P15978742674708459391.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P15907720504276255504

`A045763(n+1)+A036997(n+1)`
-/

namespace A279436.P15907720504276255504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + A036997 (n + 1)

end

end A279436.P15907720504276255504

namespace A279436

/-- `A045763(n+1)+A036997(n+1)` -/
def P15907720504276255504.Spec : Prop :=
  ∀ n, P15907720504276255504.a n = A279436 (n + 1)

theorem P15907720504276255504.correct : P15907720504276255504.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P15907720504276255504.a, A279436.P15978742674708459391.a, A033273, A033273.P18420659424697249895.a, A036997, A036997.P9898190539809888575.a, A045763, A045763.P9156243808986750239.a, A062298, A062298.P8226643735375377344.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P2557390342369037955

`A065855(n+1)-A055212(n+1)`
-/

namespace A279436.P2557390342369037955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A055212 (n + 1)

end

end A279436.P2557390342369037955

namespace A279436

/-- `A065855(n+1)-A055212(n+1)` -/
def P2557390342369037955.Spec : Prop :=
  ∀ n, P2557390342369037955.a n = A279436 (n + 1)

theorem P2557390342369037955.correct : P2557390342369037955.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P2557390342369037955.a, A279436.P15978742674708459391.a, A033273, A033273.P18420659424697249895.a, A055212, A055212.P14412881054625885538.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P7311878019404244193

`n-(A055212(n+1)+A000720(n+1))`
-/

namespace A279436.P7311878019404244193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055212 (n + 1) + A000720 (n + 1))

end

end A279436.P7311878019404244193

namespace A279436

/-- `n-(A055212(n+1)+A000720(n+1))` -/
def P7311878019404244193.Spec : Prop :=
  ∀ n, P7311878019404244193.a n = A279436 (n + 1)

theorem P7311878019404244193.correct : P7311878019404244193.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P7311878019404244193.a, A279436.P15978742674708459391.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033273, A033273.P18420659424697249895.a, A055212, A055212.P14412881054625885538.a, A062298, A062298.P8226643735375377344.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P5462797767709051011

`1-(A048865(n+1)+A000005(n+1))+n`
-/

namespace A279436.P5462797767709051011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A048865 (n + 1) + A000005 (n + 1)) + (n : ℤ)

end

end A279436.P5462797767709051011

namespace A279436

/-- `1-(A048865(n+1)+A000005(n+1))+n` -/
def P5462797767709051011.Spec : Prop :=
  ∀ n, P5462797767709051011.a n = A279436 (n + 1)

theorem P5462797767709051011.correct : P5462797767709051011.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P5462797767709051011.a, A279436.P15978742674708459391.a, A000005, A000005.P16091521709108585461.a, A033273, A033273.P18420659424697249895.a, A048865, A048865.P11145010694177444749.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P15614399275497833794

`A001221(n+1)+A049820(n+1)-A000720(n+1)`
-/

namespace A279436.P15614399275497833794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A049820 (n + 1) - A000720 (n + 1))

end

end A279436.P15614399275497833794

namespace A279436

/-- `A001221(n+1)+A049820(n+1)-A000720(n+1)` -/
def P15614399275497833794.Spec : Prop :=
  ∀ n, P15614399275497833794.a n = A279436 (n + 1)

theorem P15614399275497833794.correct : P15614399275497833794.Spec := by
  intro n
  simp only [A279436, Nat.add_sub_cancel, A279436.P15614399275497833794.a, A279436.P15978742674708459391.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A049820, A049820.P9428372222244335888.a, A062298, A062298.P8226643735375377344.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A279436

/-! ## A279436.P7455675788694915756

`A006590(n+1)-(A048865(n+1)+A006218(n+1))`
-/

namespace A279436.P7455675788694915756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (A048865 (n + 1) + A006218 (n + 1))

end

end A279436.P7455675788694915756

namespace A279436

/-- `A006590(n+1)-(A048865(n+1)+A006218(n+1))` -/
def P7455675788694915756.Spec : Prop :=
  ∀ n, P7455675788694915756.a n = A279436 (n + 1)

end A279436

/-! ## A279436.P3210457612960279653

`A049820(n+1)+A368641(n+1)-A368616(n+1)`
-/

namespace A279436.P3210457612960279653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A368641 (n + 1) - A368616 (n + 1))

end

end A279436.P3210457612960279653

namespace A279436

/-- `A049820(n+1)+A368641(n+1)-A368616(n+1)` -/
def P3210457612960279653.Spec : Prop :=
  ∀ n, P3210457612960279653.a n = A279436 (n + 1)

end A279436

/-!
# A279437: Number of ways to place 3 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279437, the canonical program `A279437.P13701572916165437270` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279437 has offset 1).

The definition of A279437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279437.P18190189415783018891

`ogf((4x+50x^2+66x^3+2x^4-2x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A279437.P18190189415783018891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 50, 66, 2, -2] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A279437.P18190189415783018891

namespace A279437

/-- `ogf((4x+50x^2+66x^3+2x^4-2x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P18190189415783018891.Spec : Prop :=
  ∀ n, P18190189415783018891.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P13701572916165437270

`((n+1)^6-5*(n+1)^4+6*(n+1)^3-2*(n+1)²)/6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279437

/-- `((n+1)^6-5*(n+1)^4+6*(n+1)^3-2*(n+1)²)/6` -/
def P13701572916165437270.Spec : Prop :=
  ∀ n, P13701572916165437270.a n = (A279437 (n + 1) : ℚ)

end A279437

/-! ## A279437.P10191852344145387021

`∑[n]*∑[∑[A187297(n+1)]]`
-/

namespace A279437.P10191852344145387021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A279437.P10191852344145387021

namespace A279437

/-- `∑[n]*∑[∑[A187297(n+1)]]` -/
def P10191852344145387021.Spec : Prop :=
  ∀ n, P10191852344145387021.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P8538670927951610219

`2*(A011934(n)+∑[A062393(n)])`
-/

namespace A279437.P8538670927951610219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011934 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279437.P8538670927951610219

namespace A279437

/-- `2*(A011934(n)+∑[A062393(n)])` -/
def P8538670927951610219.Spec : Prop :=
  ∀ n, P8538670927951610219.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P2453481339249955037

`∑[2*(A062393(n)+A032528(n))]`
-/

namespace A279437.P2453481339249955037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062393 n + A032528 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279437.P2453481339249955037

namespace A279437

/-- `∑[2*(A062393(n)+A032528(n))]` -/
def P2453481339249955037.Spec : Prop :=
  ∀ n, P2453481339249955037.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P494519465636325619

`n²*A033488(n)-A008911(n)`
-/

namespace A279437.P494519465636325619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A033488 n - A008911 n

end

end A279437.P494519465636325619

namespace A279437

/-- `n²*A033488(n)-A008911(n)` -/
def P494519465636325619.Spec : Prop :=
  ∀ n, P494519465636325619.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P15713004092460043089

`A178208(n+1)-A288961(n+1)`
-/

namespace A279437.P15713004092460043089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - A288961 (n + 1)

end

end A279437.P15713004092460043089

namespace A279437

/-- `A178208(n+1)-A288961(n+1)` -/
def P15713004092460043089.Spec : Prop :=
  ∀ n, P15713004092460043089.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P11502600901571898414

`(A004320(n)-A000217(n))*A002378(n)`
-/

namespace A279437.P11502600901571898414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004320 n - A000217 n) * A002378 n

end

end A279437.P11502600901571898414

namespace A279437

/-- `(A004320(n)-A000217(n))*A002378(n)` -/
def P11502600901571898414.Spec : Prop :=
  ∀ n, P11502600901571898414.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P11428080226796053336

`A179058(n+2)-A163102(n)`
-/

namespace A279437.P11428080226796053336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 2) - A163102 n

end

end A279437.P11428080226796053336

namespace A279437

/-- `A179058(n+2)-A163102(n)` -/
def P11428080226796053336.Spec : Prop :=
  ∀ n, P11428080226796053336.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P5957457758478145006

`A179058(n+2)-2*A000537(n)`
-/

namespace A279437.P5957457758478145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 2) - 2 * A000537 n

end

end A279437.P5957457758478145006

namespace A279437

/-- `A179058(n+2)-2*A000537(n)` -/
def P5957457758478145006.Spec : Prop :=
  ∀ n, P5957457758478145006.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P17439713767425342501

`(A071245(n+1)-A071239(n))*A002378(n)`
-/

namespace A279437.P17439713767425342501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071245 (n + 1) - A071239 n) * A002378 n

end

end A279437.P17439713767425342501

namespace A279437

/-- `(A071245(n+1)-A071239(n))*A002378(n)` -/
def P17439713767425342501.Spec : Prop :=
  ∀ n, P17439713767425342501.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P10134609321839662296

`(A330700(n+1)-A000217(n))*A000217(n)`
-/

namespace A279437.P10134609321839662296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330700 (n + 1) - A000217 n) * A000217 n

end

end A279437.P10134609321839662296

namespace A279437

/-- `(A330700(n+1)-A000217(n))*A000217(n)` -/
def P10134609321839662296.Spec : Prop :=
  ∀ n, P10134609321839662296.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P12626369669659605604

`(A330700(n+1)-A161680(n+1))*A161680(n+1)`
-/

namespace A279437.P12626369669659605604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330700 (n + 1) - A161680 (n + 1)) * A161680 (n + 1)

end

end A279437.P12626369669659605604

namespace A279437

/-- `(A330700(n+1)-A161680(n+1))*A161680(n+1)` -/
def P12626369669659605604.Spec : Prop :=
  ∀ n, P12626369669659605604.a n = A279437 (n + 1)

end A279437

/-! ## A279437.P14681705351184814402

`A179058(n+2)-A302647(2*n+1)`
-/

namespace A279437.P14681705351184814402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179058 (n + 2) - A302647 (2 * n + 1)

end

end A279437.P14681705351184814402

namespace A279437

/-- `A179058(n+2)-A302647(2*n+1)` -/
def P14681705351184814402.Spec : Prop :=
  ∀ n, P14681705351184814402.a n = A279437 (n + 1)

end A279437

/-!
# A279438: Number of ways to place 4 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279438, the canonical program `A279438.P8790361473619514912` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279438 has offset 1).

The definition of A279438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279438.P8790361473619514912

`((n+1)^6-14*(n+1)^4+30*(n+1)^3-17*(n+1)²-6*(n+1)+6)*(n+1)²/24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279438

/-- `((n+1)^6-14*(n+1)^4+30*(n+1)^3-17*(n+1)²-6*(n+1)+6)*(n+1)²/24` -/
def P8790361473619514912.Spec : Prop :=
  ∀ n, P8790361473619514912.a n = (A279438 (n + 1) : ℚ)

end A279438

/-!
# A279441: Number of ways to place 7 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279441, there is no canonical definition to state claims against.
-/

/-! ## A279441.P7471853385877440476

`A053506(n+1)*A089196(A251591(n))`
-/

namespace A279441.P7471853385877440476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) * A089196 (A251591 n).toNat

end

end A279441.P7471853385877440476

/-!
# A279442: Number of ways to place 8 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279442, there is no canonical definition to state claims against.
-/

/-! ## A279442.P16139241672198955161

`A001499(comp[or(n, n+3)]^floor(3*n/7))`
-/

namespace A279442.P16139241672198955161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001499 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌊3 * ((n : ℚ) / 7)⌋ : ℤ))).toNat

end

end A279442.P16139241672198955161

/-!
# A279444: Number of ways to place n points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279444, there is no canonical definition to state claims against.
-/

/-! ## A279444.P13458685620031189285

`A279445((n+1)²+n)`
-/

namespace A279444.P13458685620031189285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 ((n + 1) ^ 2 + n)

end

end A279444.P13458685620031189285

/-! ## A279444.P17162273913700031746

`record[A279445(∑[A080513(n)])]`
-/

namespace A279444.P17162273913700031746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279444.P17162273913700031746

/-! ## A279444.P8242366064684539644

`record[A279445(Δ[A005744(n)])]`
-/

namespace A279444.P8242366064684539644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279444.P8242366064684539644

/-! ## A279444.P12013611912283854790

`record[A279445(A184676(n+1))]`
-/

namespace A279444.P12013611912283854790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (A184676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279444.P12013611912283854790

/-! ## A279444.P11654855165285744204

`record[A279445(∑[A008619(n+1)])]`
-/

namespace A279444.P11654855165285744204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279444.P11654855165285744204

/-!
# A279445: Triangle read by rows: T(n, k) is the number of ways to place k points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279445, there is no canonical definition to state claims against.
-/

/-! ## A279445.P302804167648901336

`A217285(A062399(n+1))`
-/

namespace A279445.P302804167648901336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A062399 (n + 1)).toNat

end

end A279445.P302804167648901336

/-! ## A279445.P9793585356889489328

`A072088(A217285(n+1))`
-/

namespace A279445.P9793585356889489328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A217285 (n + 1)).toNat

end

end A279445.P9793585356889489328

/-! ## A279445.P746723371309960575

`A217285(A087051(n)+1)`
-/

namespace A279445.P746723371309960575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A087051 n + 1).toNat

end

end A279445.P746723371309960575

/-! ## A279445.P7010967186108138900

`A217285(A120126(n+1))`
-/

namespace A279445.P7010967186108138900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A120126 (n + 1)).toNat

end

end A279445.P7010967186108138900

/-! ## A279445.P6886293166207293970

`A217285(A351870(n+1))`
-/

namespace A279445.P6886293166207293970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A351870 (n + 1)).toNat

end

end A279445.P6886293166207293970

/-!
# A279446: Number of non-equivalent (mod D_3) ways to place 6 indistinguishable points on a triangular grid of side n so that no two of them are adjacent.

The programs for A279446, there is no canonical definition to state claims against.
-/

/-! ## A279446.P16126183859187383066

`A079692(Δ[n²]^n+2)`
-/

namespace A279446.P16126183859187383066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n + 2).toNat

end

end A279446.P16126183859187383066

/-!
# A279447: Number of nonequivalent ways to place 3 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279447, the canonical program `A279447.P16369359241833090646` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279447 has offset 1).

The definition of A279447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279447.P16369359241833090646

`ogf((x+11x^2+30x^3+79x^4+62x^5+55x^6+4x^7-x^8-x^9)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279447

/-- `ogf((x+11x^2+30x^3+79x^4+62x^5+55x^6+4x^7-x^8-x^9)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` -/
def P16369359241833090646.Spec : Prop :=
  ∀ n, P16369359241833090646.a n = A279447 (n + 1)

theorem P16369359241833090646.correct : P16369359241833090646.Spec := by
  intro n
  simp only [A279447, Nat.add_sub_cancel]

end A279447

/-!
# A279449: Number of nonequivalent ways to place 5 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279449, there is no canonical definition to state claims against.
-/

/-! ## A279449.P12870520641733757746

`A102676(A000384(n)*A134057(n))`
-/

namespace A279449.P12870520641733757746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102676 (A000384 n * A134057 n).toNat

end

end A279449.P12870520641733757746

/-!
# A279450: Number of nonequivalent ways to place 6 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279450, there is no canonical definition to state claims against.
-/

/-! ## A279450.P14779693319798704613

`A261859(3*(n+3))%A261878(A261898(n))`
-/

namespace A279450.P14779693319798704613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261859 (3 * (n + 3))) (A261878 (A261898 n).toNat)

end

end A279450.P14779693319798704613

/-!
# A279451: Number of nonequivalent ways to place 7 points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279451, there is no canonical definition to state claims against.
-/

/-! ## A279451.P9895244689370383996

`A296998(n+1)%A002967(A000032(n))`
-/

namespace A279451.P9895244689370383996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296998 (n + 1)) (A002967 (A000032 n).toNat)

end

end A279451.P9895244689370383996

/-!
# A279452: Number of nonequivalent ways to place n points on an n X n square grid so that no more than 2 points are on a vertical or horizontal straight line.

The programs for A279452, there is no canonical definition to state claims against.
-/

/-! ## A279452.P3527742719034240551

`A279453((n+1)²+n)`
-/

namespace A279452.P3527742719034240551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279453 ((n + 1) ^ 2 + n)

end

end A279452.P3527742719034240551

/-! ## A279452.P6622821035247971636

`record[A279453(∑[A080513(n)])]`
-/

namespace A279452.P6622821035247971636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279453 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279452.P6622821035247971636

/-! ## A279452.P17935042273390193192

`record[A279453(Δ[A005744(n)])]`
-/

namespace A279452.P17935042273390193192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279453 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279452.P17935042273390193192

/-! ## A279452.P14210098947699689124

`record[A279453(A184676(n+1))]`
-/

namespace A279452.P14210098947699689124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279453 (A184676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279452.P14210098947699689124

/-! ## A279452.P18399219691000747405

`record[A279453(∑[A008619(n+1)])]`
-/

namespace A279452.P18399219691000747405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279453 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279452.P18399219691000747405

/-!
# A279455: Numbers n such that the number of nonprime divisors of n divides n.

The programs for A279455, the canonical program `A279455.P2237740548424145724` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279455 has offset 1).

The definition of A279455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279455.P2237740548424145724

`lt[(n+1)%A033273(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A279455

/-- `lt[(n+1)%A033273(n+1), 1]+1` -/
def P2237740548424145724.Spec : Prop :=
  ∀ n, (P2237740548424145724.a n : ℤ) = A279455 (n + 1)

theorem P2237740548424145724.correct : P2237740548424145724.Spec := by
  intro n
  simp only [A279455, Nat.add_sub_cancel]

end A279455

/-! ## A279455.P13838908382571911110

`lt[A289165(3*(n+1)), A091255(A049997(3*(n+1)))]`
-/

namespace A279455.P13838908382571911110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A049997 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279455.P13838908382571911110

namespace A279455

/-- `lt[A289165(3*(n+1)), A091255(A049997(3*(n+1)))]` -/
def P13838908382571911110.Spec : Prop :=
  ∀ n, (P13838908382571911110.a n : ℤ) = A279455 (n + 1)

end A279455

/-! ## A279455.P6711114974882375036

`∑[A229897(A343226(A032157(n)))]`
-/

namespace A279455.P6711114974882375036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229897 (A343226 (A032157 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279455.P6711114974882375036

namespace A279455

/-- `∑[A229897(A343226(A032157(n)))]` -/
def P6711114974882375036.Spec : Prop :=
  ∀ n, P6711114974882375036.a n = A279455 (n + 1)

end A279455

/-! ## A279455.P3364667085721703248

`lt[A117888(A000203(n+5)), A032445(3*n+4)]`
-/

namespace A279455.P3364667085721703248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117888 (A000203 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279455.P3364667085721703248

namespace A279455

/-- `lt[A117888(A000203(n+5)), A032445(3*n+4)]` -/
def P3364667085721703248.Spec : Prop :=
  ∀ n, (P3364667085721703248.a n : ℤ) = A279455 (n + 1)

end A279455

/-! ## A279455.P858468952347241246

`lt[A000212(A123487(n+1)), A029470(3*n+1)]`
-/

namespace A279455.P858468952347241246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A123487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029470 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279455.P858468952347241246

namespace A279455

/-- `lt[A000212(A123487(n+1)), A029470(3*n+1)]` -/
def P858468952347241246.Spec : Prop :=
  ∀ n, (P858468952347241246.a n : ℤ) = A279455 (n + 1)

end A279455

/-!
# A279456: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is even.

The programs for A279456, the canonical program `A279456.P8910636171519638710` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279456 has offset 1).

The definition of A279456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279456.P2025491937304598071

`filter[A162645(n+1), A065043(#)]`
-/

namespace A279456.P2025491937304598071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A279456.P2025491937304598071

namespace A279456

/-- `filter[A162645(n+1), A065043(#)]` -/
def P2025491937304598071.Spec : Prop :=
  ∀ n, P2025491937304598071.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P14073915620106051433

`∩[A028260(n+1), A162645(n+1)]`
-/

namespace A279456.P14073915620106051433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279456.P14073915620106051433

namespace A279456

/-- `∩[A028260(n+1), A162645(n+1)]` -/
def P14073915620106051433.Spec : Prop :=
  ∀ n, (P14073915620106051433.a n : ℤ) = A279456 (n + 1)

end A279456

/-! ## A279456.P15091326632529840773

`filter[A030230(n+1), A065043(#)]`
-/

namespace A279456.P15091326632529840773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A279456.P15091326632529840773

namespace A279456

/-- `filter[A030230(n+1), A065043(#)]` -/
def P15091326632529840773.Spec : Prop :=
  ∀ n, P15091326632529840773.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P8910636171519638710

`∩[A028260(n+1), A030230(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A279456

/-- `∩[A028260(n+1), A030230(n+1)]` -/
def P8910636171519638710.Spec : Prop :=
  ∀ n, (P8910636171519638710.a n : ℤ) = A279456 (n + 1)

theorem P8910636171519638710.correct : P8910636171519638710.Spec := by
  intro n
  simp only [A279456, Nat.add_sub_cancel]

end A279456

/-! ## A279456.P14711469416996168096

`∩[A030230(n+1), A162645(n+1)]`
-/

namespace A279456.P14711469416996168096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279456.P14711469416996168096

namespace A279456

/-- `∩[A030230(n+1), A162645(n+1)]` -/
def P14711469416996168096.Spec : Prop :=
  ∀ n, (P14711469416996168096.a n : ℤ) = A279456 (n + 1)

end A279456

/-! ## A279456.P11842537084373464381

`eq[2, A158522(n+1)%3]+1`
-/

namespace A279456.P11842537084373464381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158522 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279456.P11842537084373464381

namespace A279456

/-- `eq[2, A158522(n+1)%3]+1` -/
def P11842537084373464381.Spec : Prop :=
  ∀ n, (P11842537084373464381.a n : ℤ) = A279456 (n + 1)

end A279456

/-! ## A279456.P17464811732888631043

`filter[A028260(n+1), A092248(#)]`
-/

namespace A279456.P17464811732888631043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279456.P17464811732888631043

namespace A279456

/-- `filter[A028260(n+1), A092248(#)]` -/
def P17464811732888631043.Spec : Prop :=
  ∀ n, P17464811732888631043.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P5971595138853100559

`filter[A162645(n+1), A092248(#)]`
-/

namespace A279456.P5971595138853100559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279456.P5971595138853100559

namespace A279456

/-- `filter[A162645(n+1), A092248(#)]` -/
def P5971595138853100559.Spec : Prop :=
  ∀ n, P5971595138853100559.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P6769425741286007321

`filter[A143691(2*n+1), A092248(#)]`
-/

namespace A279456.P6769425741286007321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279456.P6769425741286007321

namespace A279456

/-- `filter[A143691(2*n+1), A092248(#)]` -/
def P6769425741286007321.Spec : Prop :=
  ∀ n, P6769425741286007321.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P2123277220189541344

`eq[A008836(n+1), A092248(n+1)]+1`
-/

namespace A279456.P2123277220189541344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279456.P2123277220189541344

namespace A279456

/-- `eq[A008836(n+1), A092248(n+1)]+1` -/
def P2123277220189541344.Spec : Prop :=
  ∀ n, (P2123277220189541344.a n : ℤ) = A279456 (n + 1)

end A279456

/-! ## A279456.P12042730508958469408

`A020725(eq[A008836(n+1), A092248(n+1)])`
-/

namespace A279456.P12042730508958469408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279456.P12042730508958469408

namespace A279456

/-- `A020725(eq[A008836(n+1), A092248(n+1)])` -/
def P12042730508958469408.Spec : Prop :=
  ∀ n, P12042730508958469408.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P2168713002128427421

`record[A008836(A030230(n+3))*A030230(n+3)]`
-/

namespace A279456.P2168713002128427421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A030230 (n + 3)).toNat * A030230 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279456.P2168713002128427421

namespace A279456

/-- `record[A008836(A030230(n+3))*A030230(n+3)]` -/
def P2168713002128427421.Spec : Prop :=
  ∀ n, P2168713002128427421.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P13444671423045949248

`A020725(eq[A162511(n+1)+1, A066829(n+1)])`
-/

namespace A279456.P13444671423045949248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279456.P13444671423045949248

namespace A279456

/-- `A020725(eq[A162511(n+1)+1, A066829(n+1)])` -/
def P13444671423045949248.Spec : Prop :=
  ∀ n, P13444671423045949248.a n = A279456 (n + 1)

end A279456

/-! ## A279456.P4958126468677398514

`A020725(eq[A162511(n+1)+2, A092248(n+1)])`
-/

namespace A279456.P4958126468677398514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279456.P4958126468677398514

namespace A279456

/-- `A020725(eq[A162511(n+1)+2, A092248(n+1)])` -/
def P4958126468677398514.Spec : Prop :=
  ∀ n, P4958126468677398514.a n = A279456 (n + 1)

end A279456

/-!
# A279457: Numbers k such that number of distinct primes dividing k is odd and number of prime divisors (counted with multiplicity) of k is odd.

The programs for A279457, the canonical program `A279457.P2488202562983807817` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279457 has offset 1).

The definition of A279457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279457.P3581036517184921315

`filter[A030230(n+1), A066829(#)]`
-/

namespace A279457.P3581036517184921315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A279457.P3581036517184921315

namespace A279457

/-- `filter[A030230(n+1), A066829(#)]` -/
def P3581036517184921315.Spec : Prop :=
  ∀ n, P3581036517184921315.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P2488202562983807817

`∩[A026422(n+1), A030230(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A279457

/-- `∩[A026422(n+1), A030230(n+1)]` -/
def P2488202562983807817.Spec : Prop :=
  ∀ n, (P2488202562983807817.a n : ℤ) = A279457 (n + 1)

theorem P2488202562983807817.correct : P2488202562983807817.Spec := by
  intro n
  simp only [A279457, Nat.add_sub_cancel]

end A279457

/-! ## A279457.P14790174209566251939

`∩[A026424(n+1), A030230(n+1)]`
-/

namespace A279457.P14790174209566251939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279457.P14790174209566251939

namespace A279457

/-- `∩[A026424(n+1), A030230(n+1)]` -/
def P14790174209566251939.Spec : Prop :=
  ∀ n, (P14790174209566251939.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P3534599654918649910

`filter[A162644(n+1), A066829(#)]`
-/

namespace A279457.P3534599654918649910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A279457.P3534599654918649910

namespace A279457

/-- `filter[A162644(n+1), A066829(#)]` -/
def P3534599654918649910.Spec : Prop :=
  ∀ n, P3534599654918649910.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P11407655526426707239

`∩[A026424(n+1), A162644(n+1)]`
-/

namespace A279457.P11407655526426707239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279457.P11407655526426707239

namespace A279457

/-- `∩[A026424(n+1), A162644(n+1)]` -/
def P11407655526426707239.Spec : Prop :=
  ∀ n, (P11407655526426707239.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P18149822467447462547

`∩[A030230(n+1), A162644(n+1)]`
-/

namespace A279457.P18149822467447462547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279457.P18149822467447462547

namespace A279457

/-- `∩[A030230(n+1), A162644(n+1)]` -/
def P18149822467447462547.Spec : Prop :=
  ∀ n, (P18149822467447462547.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P3606223823001011920

`eq[1, and(1, A113901(n+1))]+1`
-/

namespace A279457.P3606223823001011920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113901 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279457.P3606223823001011920

namespace A279457

/-- `eq[1, and(1, A113901(n+1))]+1` -/
def P3606223823001011920.Spec : Prop :=
  ∀ n, (P3606223823001011920.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P8520768001712173371

`eq[-2, A158522(n+1)%3]+1`
-/

namespace A279457.P8520768001712173371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158522 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279457.P8520768001712173371

namespace A279457

/-- `eq[-2, A158522(n+1)%3]+1` -/
def P8520768001712173371.Spec : Prop :=
  ∀ n, (P8520768001712173371.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P7339414814805925340

`filter[A026422(n+1), A092248(#)]`
-/

namespace A279457.P7339414814805925340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279457.P7339414814805925340

namespace A279457

/-- `filter[A026422(n+1), A092248(#)]` -/
def P7339414814805925340.Spec : Prop :=
  ∀ n, P7339414814805925340.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P15291267443557315398

`filter[A026424(n+1), A092248(#)]`
-/

namespace A279457.P15291267443557315398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279457.P15291267443557315398

namespace A279457

/-- `filter[A026424(n+1), A092248(#)]` -/
def P15291267443557315398.Spec : Prop :=
  ∀ n, P15291267443557315398.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P18096151766905097679

`filter[A162644(n+1), A092248(#)]`
-/

namespace A279457.P18096151766905097679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279457.P18096151766905097679

namespace A279457

/-- `filter[A162644(n+1), A092248(#)]` -/
def P18096151766905097679.Spec : Prop :=
  ∀ n, P18096151766905097679.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P14979338823612334350

`eq[A066829(n+1), A162511(n+1)]+1`
-/

namespace A279457.P14979338823612334350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279457.P14979338823612334350

namespace A279457

/-- `eq[A066829(n+1), A162511(n+1)]+1` -/
def P14979338823612334350.Spec : Prop :=
  ∀ n, (P14979338823612334350.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P4472951121121614017

`eq[A092248(n+1), A162511(n+1)]+1`
-/

namespace A279457.P4472951121121614017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A279457.P4472951121121614017

namespace A279457

/-- `eq[A092248(n+1), A162511(n+1)]+1` -/
def P4472951121121614017.Spec : Prop :=
  ∀ n, (P4472951121121614017.a n : ℤ) = A279457 (n + 1)

end A279457

/-! ## A279457.P12538053106207031876

`A020725(eq[A066829(n+1), A162511(n+1)])`
-/

namespace A279457.P12538053106207031876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279457.P12538053106207031876

namespace A279457

/-- `A020725(eq[A066829(n+1), A162511(n+1)])` -/
def P12538053106207031876.Spec : Prop :=
  ∀ n, P12538053106207031876.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P4187428466851862173

`A020725(eq[A092248(n+1), A162511(n+1)])`
-/

namespace A279457.P4187428466851862173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279457.P4187428466851862173

namespace A279457

/-- `A020725(eq[A092248(n+1), A162511(n+1)])` -/
def P4187428466851862173.Spec : Prop :=
  ∀ n, P4187428466851862173.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P18039303848916404858

`A020725(eq[A008836(n+1)+2, A092248(n+1)])`
-/

namespace A279457.P18039303848916404858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A279457.P18039303848916404858

namespace A279457

/-- `A020725(eq[A008836(n+1)+2, A092248(n+1)])` -/
def P18039303848916404858.Spec : Prop :=
  ∀ n, P18039303848916404858.a n = A279457 (n + 1)

end A279457

/-! ## A279457.P3446401944664552057

`filter[A143691(2*(n+1)), A092248(#)]`
-/

namespace A279457.P3446401944664552057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A279457.P3446401944664552057

namespace A279457

/-- `filter[A143691(2*(n+1)), A092248(#)]` -/
def P3446401944664552057.Spec : Prop :=
  ∀ n, P3446401944664552057.a n = A279457 (n + 1)

end A279457

/-!
# A279458: Numbers k such that number of distinct primes dividing k is even and number of prime divisors (counted with multiplicity) of k is even.

The programs for A279458, the canonical program `A279458.P16976233013369130140` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279458 has offset 1).

The definition of A279458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279458.P6714861908426908089

`filter[A030231(n+1), A065043(#)]`
-/

namespace A279458.P6714861908426908089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A279458.P6714861908426908089

namespace A279458

/-- `filter[A030231(n+1), A065043(#)]` -/
def P6714861908426908089.Spec : Prop :=
  ∀ n, P6714861908426908089.a n = A279458 (n + 1)

end A279458

/-! ## A279458.P16976233013369130140

`∩[A028260(n+1), A030231(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279458

/-- `∩[A028260(n+1), A030231(n+1)]` -/
def P16976233013369130140.Spec : Prop :=
  ∀ n, (P16976233013369130140.a n : ℤ) = A279458 (n + 1)

theorem P16976233013369130140.correct : P16976233013369130140.Spec := by
  intro n
  simp only [A279458, Nat.add_sub_cancel]

end A279458

/-! ## A279458.P9886225280236209998

`filter[A162644(n+1), A065043(#)]`
-/

namespace A279458.P9886225280236209998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A279458.P9886225280236209998

namespace A279458

/-- `filter[A162644(n+1), A065043(#)]` -/
def P9886225280236209998.Spec : Prop :=
  ∀ n, P9886225280236209998.a n = A279458 (n + 1)

end A279458

/-! ## A279458.P12578872064169045804

`∩[A028260(n+1), A162644(n+1)]`
-/

namespace A279458.P12578872064169045804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P12578872064169045804

namespace A279458

/-- `∩[A028260(n+1), A162644(n+1)]` -/
def P12578872064169045804.Spec : Prop :=
  ∀ n, (P12578872064169045804.a n : ℤ) = A279458 (n + 1)

end A279458

/-! ## A279458.P3143684521180717828

`∩[A030231(n+1), A162644(n+1)]`
-/

namespace A279458.P3143684521180717828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279458.P3143684521180717828

namespace A279458

/-- `∩[A030231(n+1), A162644(n+1)]` -/
def P3143684521180717828.Spec : Prop :=
  ∀ n, (P3143684521180717828.a n : ℤ) = A279458 (n + 1)

end A279458

/-! ## A279458.P8286041415363152789

`eq[1, A158522(n+1)%3]+1`
-/

namespace A279458.P8286041415363152789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158522 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279458.P8286041415363152789

namespace A279458

/-- `eq[1, A158522(n+1)%3]+1` -/
def P8286041415363152789.Spec : Prop :=
  ∀ n, (P8286041415363152789.a n : ℤ) = A279458 (n + 1)

end A279458

/-! ## A279458.P7826085052230548796

`record[A061019(n+1)^A076479(n+1)]`
-/

namespace A279458.P7826085052230548796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061019 (n + 1) : ℚ) ^ (A076479 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279458.P7826085052230548796

namespace A279458

/-- `record[A061019(n+1)^A076479(n+1)]` -/
def P7826085052230548796.Spec : Prop :=
  ∀ n, P7826085052230548796.a n = (A279458 (n + 1) : ℚ)

end A279458

/-! ## A279458.P16935199392491439426

`record[A076479(A143691(n+1))*A143691(n+1)]`
-/

namespace A279458.P16935199392491439426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A143691 (n + 1)).toNat * A143691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279458.P16935199392491439426

namespace A279458

/-- `record[A076479(A143691(n+1))*A143691(n+1)]` -/
def P16935199392491439426.Spec : Prop :=
  ∀ n, P16935199392491439426.a n = A279458 (n + 1)

end A279458

/-!
# A279460: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279460, the canonical program `A279460.P6159126607201050944` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279460 has offset 1).

The definition of A279460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279460.P6159126607201050944

`ogf((2x-2x^2-2x^4-8x^5-4x^6-4x^7-2x^8)/(1-4x+2x^2+3x^4+14x^5+14x^6+14x^7+13x^8+6x^9+x^10))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279460

/-- `ogf((2x-2x^2-2x^4-8x^5-4x^6-4x^7-2x^8)/(1-4x+2x^2+3x^4+14x^5+14x^6+14x^7+13x^8+6x^9+x^10))` -/
def P6159126607201050944.Spec : Prop :=
  ∀ n, P6159126607201050944.a n = A279460 (n + 1)

theorem P6159126607201050944.correct : P6159126607201050944.Spec := by
  intro n
  simp only [A279460, Nat.add_sub_cancel]

end A279460

/-! ## A279460.P9845486411613157611

`A279466(∑[n+1]+2)`
-/

namespace A279460.P9845486411613157611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279460.P9845486411613157611

namespace A279460

/-- `A279466(∑[n+1]+2)` -/
def P9845486411613157611.Spec : Prop :=
  ∀ n, P9845486411613157611.a n = A279460 (n + 1)

end A279460

/-! ## A279460.P11317824210499293576

`lcm(2, A279466(A152950(n+2)-1))`
-/

namespace A279460.P11317824210499293576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279466 (A152950 (n + 2) - 1).toNat)

end

end A279460.P11317824210499293576

namespace A279460

/-- `lcm(2, A279466(A152950(n+2)-1))` -/
def P11317824210499293576.Spec : Prop :=
  ∀ n, (P11317824210499293576.a n : ℤ) = A279460 (n + 1)

end A279460

/-! ## A279460.P16567586403337486666

`A279466(A152950(n+2)-1)+A001221(1-C(n, 47))`
-/

namespace A279460.P16567586403337486666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A152950 (n + 2) - 1).toNat + A001221 (1 - Nat.choose n 47)

end

end A279460.P16567586403337486666

namespace A279460

/-- `A279466(A152950(n+2)-1)+A001221(1-C(n, 47))` -/
def P16567586403337486666.Spec : Prop :=
  ∀ n, P16567586403337486666.a n = A279460 (n + 1)

end A279460

/-! ## A279460.P14367864062672778008

`A279466(A152950(n+2)-1)/A000010(1-C(n, 47))`
-/

namespace A279460.P14367864062672778008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279466 (A152950 (n + 2) - 1).toNat : ℚ) / (A000010 (1 - Nat.choose n 47) : ℚ)

end

end A279460.P14367864062672778008

namespace A279460

/-- `A279466(A152950(n+2)-1)/A000010(1-C(n, 47))` -/
def P14367864062672778008.Spec : Prop :=
  ∀ n, P14367864062672778008.a n = (A279460 (n + 1) : ℚ)

end A279460

/-!
# A279461: Number of n X 3 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279461, there is no canonical definition to state claims against.
-/

/-! ## A279461.P3687361053950402826

`A279466(∑[n+2]+4)`
-/

namespace A279461.P3687361053950402826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279461.P3687361053950402826

/-! ## A279461.P8362580088550702560

`record[A279466(A167614(val(n+1, 2)+1))]`
-/

namespace A279461.P8362580088550702560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279461.P8362580088550702560

/-! ## A279461.P8219952022230001026

`A279466(A167614(n+1))+A185284(n)`
-/

namespace A279461.P8219952022230001026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A167614 (n + 1)).toNat + A185284 n

end

end A279461.P8219952022230001026

/-! ## A279461.P13497777854060709825

`A279466(A167614(n+1))%A016797(n)`
-/

namespace A279461.P13497777854060709825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279466 (A167614 (n + 1)).toNat) (A016797 n)

end

end A279461.P13497777854060709825

/-! ## A279461.P17206257470495535211

`lcm(A033999(n), A279466(A167614(n+1)))`
-/

namespace A279461.P17206257470495535211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279466 (A167614 (n + 1)).toNat)

end

end A279461.P17206257470495535211

/-!
# A279462: Number of n X 4 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279462, there is no canonical definition to state claims against.
-/

/-! ## A279462.P18094144331867810162

`A279466(A374004(n+1))`
-/

namespace A279462.P18094144331867810162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A374004 (n + 1)).toNat

end

end A279462.P18094144331867810162

/-! ## A279462.P17440011738870021128

`A279466(A052905(n)+9)`
-/

namespace A279462.P17440011738870021128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A052905 n + 9).toNat

end

end A279462.P17440011738870021128

/-! ## A279462.P10127891635743322971

`A279466(A167614(n+2)+1)`
-/

namespace A279462.P10127891635743322971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A167614 (n + 2) + 1).toNat

end

end A279462.P10127891635743322971

/-! ## A279462.P4829837170850636016

`A279466(A141214(n+1))`
-/

namespace A279462.P4829837170850636016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A141214 (n + 1)).toNat

end

end A279462.P4829837170850636016

/-! ## A279462.P12406457452919064943

`A279466(A155212(n)+5)`
-/

namespace A279462.P12406457452919064943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A155212 n + 5).toNat

end

end A279462.P12406457452919064943

/-!
# A279463: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279463, there is no canonical definition to state claims against.
-/

/-! ## A279463.P3045516652646289565

`A279466(A374005(n+1))`
-/

namespace A279463.P3045516652646289565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A374005 (n + 1)).toNat

end

end A279463.P3045516652646289565

/-! ## A279463.P7584764352932694610

`A279466(A155212(n)+13)`
-/

namespace A279463.P7584764352932694610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A155212 n + 13).toNat

end

end A279463.P7584764352932694610

/-! ## A279463.P9693547624340080051

`A279466(eq[7, A066657(n)])`
-/

namespace A279463.P9693547624340080051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279463.P9693547624340080051

/-! ## A279463.P12871488881827726052

`A279466(A000124(n+4)+4)`
-/

namespace A279463.P12871488881827726052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A000124 (n + 4) + 4).toNat

end

end A279463.P12871488881827726052

/-! ## A279463.P9920659551139076365

`A279466(eq[4, A193592(n)])`
-/

namespace A279463.P9920659551139076365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279463.P9920659551139076365

/-!
# A279464: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279464, there is no canonical definition to state claims against.
-/

/-! ## A279464.P11704050144970706845

`A279466(A374007(n+1))`
-/

namespace A279464.P11704050144970706845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A374007 (n + 1)).toNat

end

end A279464.P11704050144970706845

/-! ## A279464.P1655605664315174503

`A279466(A034856(n+4)+8)`
-/

namespace A279464.P1655605664315174503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A034856 (n + 4) + 8).toNat

end

end A279464.P1655605664315174503

/-! ## A279464.P4322277468612462716

`A279466(A052905(n+3))`
-/

namespace A279464.P4322277468612462716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A052905 (n + 3)).toNat

end

end A279464.P4322277468612462716

/-! ## A279464.P7467408473377749290

`A279466(eq[3, A219347(n)])`
-/

namespace A279464.P7467408473377749290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279464.P7467408473377749290

/-! ## A279464.P14089232509182735398

`A279466(eq[5, A193592(n)])`
-/

namespace A279464.P14089232509182735398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279464.P14089232509182735398

/-!
# A279465: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279465, there is no canonical definition to state claims against.
-/

/-! ## A279465.P9749447159312153629

`A279466(A374008(n+1))`
-/

namespace A279465.P9749447159312153629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A374008 (n + 1)).toNat

end

end A279465.P9749447159312153629

/-! ## A279465.P3087167060775468940

`A279466(A173036(n+6)-6)`
-/

namespace A279465.P3087167060775468940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (A173036 (n + 6) - 6).toNat

end

end A279465.P3087167060775468940

/-! ## A279465.P16161106556608182390

`A279466(eq[8, A131818(n+1)])`
-/

namespace A279465.P16161106556608182390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279465.P16161106556608182390

/-! ## A279465.P17873719968405934736

`A279466(eq[4, A219347(n)])`
-/

namespace A279465.P17873719968405934736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279465.P17873719968405934736

/-! ## A279465.P16463120033018232063

`A279466(eq[6, A193592(n)])`
-/

namespace A279465.P16463120033018232063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279465.P16463120033018232063

/-!
# A279467: Numbers k such that (14*10^k - 71) / 3 is prime.

The programs for A279467, there is no canonical definition to state claims against.
-/

/-! ## A279467.P250003114269507991

`A032741(A051281(n+1))+A000041(n)`
-/

namespace A279467.P250003114269507991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A051281 (n + 1)).toNat + A000041 n

end

end A279467.P250003114269507991

/-!
# A279468: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A279468, there is no canonical definition to state claims against.
-/

/-! ## A279468.P9189358388754449991

`A007088(A279470(n))`
-/

namespace A279468.P9189358388754449991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279470 n).toNat

end

end A279468.P9189358388754449991

/-! ## A279468.P4409170140265887800

`A185544(2*A279470(n))`
-/

namespace A279468.P4409170140265887800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279470 n).toNat

end

end A279468.P4409170140265887800

/-!
# A279469: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A279469, there is no canonical definition to state claims against.
-/

/-! ## A279469.P5994204077757421777

`A007088(A279471(n))`
-/

namespace A279469.P5994204077757421777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279471 n).toNat

end

end A279469.P5994204077757421777

/-! ## A279469.P3293566273157632571

`A185544(2*A279471(n))`
-/

namespace A279469.P3293566273157632571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279471 n).toNat

end

end A279469.P3293566273157632571

/-!
# A279470: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A279470, there is no canonical definition to state claims against.
-/

/-! ## A279470.P11377077785899838189

`A331416(A240103(n+1))+A279179(n)`
-/

namespace A279470.P11377077785899838189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A240103 (n + 1)).toNat + A279179 n

end

end A279470.P11377077785899838189

/-!
# A279472: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A279472, there is no canonical definition to state claims against.
-/

/-! ## A279472.P5348786480558574564

`A007088(A279474(n))`
-/

namespace A279472.P5348786480558574564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279474 n).toNat

end

end A279472.P5348786480558574564

/-! ## A279472.P4867674767079037193

`A007088(A279986(n)+A282952(n)-A282982(n))`
-/

namespace A279472.P4867674767079037193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279986 n + (A282952 n - A282982 n)).toNat

end

end A279472.P4867674767079037193

/-! ## A279472.P17184754374234096853

`A007088(A279986(n)-(A282982(n)-A282952(n)))`
-/

namespace A279472.P17184754374234096853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279986 n - (A282982 n - A282952 n)).toNat

end

end A279472.P17184754374234096853

/-! ## A279472.P4080460342561526767

`A007088(A126646(n)-A282982(n)%A008313(n²))`
-/

namespace A279472.P4080460342561526767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A282982 n) (A008313 (n ^ 2))).toNat

end

end A279472.P4080460342561526767

/-! ## A279472.P2949361698594591787

`A185544(2*A279474(n))`
-/

namespace A279472.P2949361698594591787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279474 n).toNat

end

end A279472.P2949361698594591787

/-!
# A279473: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A279473, there is no canonical definition to state claims against.
-/

/-! ## A279473.P4038891019649747095

`A007088(A279475(n))`
-/

namespace A279473.P4038891019649747095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279475 n).toNat

end

end A279473.P4038891019649747095

/-! ## A279473.P1492414893467244425

`A007088(A126646(n)%lcm(4, A282983(n)))`
-/

namespace A279473.P1492414893467244425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A126646 n) (Int.lcm 4 (A282983 n) : ℤ)).toNat

end

end A279473.P1492414893467244425

/-! ## A279473.P4654540443115115140

`A305989(A279474(n)/A014709(n))`
-/

namespace A279473.P4654540443115115140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279474 n : ℚ) / (A014709 n : ℚ))).toNat

end

end A279473.P4654540443115115140

/-! ## A279473.P10967744494598131884

`A305989(A279474(n)/A055642(n))`
-/

namespace A279473.P10967744494598131884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279474 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A279473.P10967744494598131884

/-! ## A279473.P6460212763950655976

`A305989(A279474(n)/A079487(n))`
-/

namespace A279473.P6460212763950655976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279474 n : ℚ) / (A079487 n : ℚ))).toNat

end

end A279473.P6460212763950655976

/-!
# A279474: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A279474, there is no canonical definition to state claims against.
-/

/-! ## A279474.P11783160966892814586

`A279986(n)+A282952(n)-A282982(n)`
-/

namespace A279474.P11783160966892814586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279986 n + (A282952 n - A282982 n)

end

end A279474.P11783160966892814586

/-! ## A279474.P2249629911183582702

`A126646(n)-A282982(n)%A282952(n+2)`
-/

namespace A279474.P2249629911183582702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282982 n) (A282952 (n + 2))

end

end A279474.P2249629911183582702

/-! ## A279474.P5373411491629101621

`A126646(n)-A282982(n)%A008313(n²)`
-/

namespace A279474.P5373411491629101621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282982 n) (A008313 (n ^ 2))

end

end A279474.P5373411491629101621

/-! ## A279474.P18049180339638382835

`A279986(A004891(n+1))`
-/

namespace A279474.P18049180339638382835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279986 (A004891 (n + 1)).toNat

end

end A279474.P18049180339638382835

/-!
# A279475: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A279475, there is no canonical definition to state claims against.
-/

/-! ## A279475.P17798333851916047922

`A126646(n)%lcm(4, A282983(n))`
-/

namespace A279475.P17798333851916047922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (Int.lcm 4 (A282983 n) : ℤ)

end

end A279475.P17798333851916047922

/-! ## A279475.P9171534273161019197

`A325401(A279474(n)/A014709(3*n+1))`
-/

namespace A279475.P9171534273161019197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A279474 n : ℚ) / (A014709 (3 * n + 1) : ℚ))).toNat

end

end A279475.P9171534273161019197

/-! ## A279475.P4549884147643421200

`A325401(A279474(n))`
-/

namespace A279475.P4549884147643421200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A279474 n).toNat

end

end A279475.P4549884147643421200

/-! ## A279475.P11276919140328637001

`A281589(lcm(2, A279474(n)))`
-/

namespace A279475.P11276919140328637001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A279474 n))

end

end A279475.P11276919140328637001

/-! ## A279475.P6287319287709643701

`A030101(A279474(n)/A014709(n))`
-/

namespace A279475.P6287319287709643701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279474 n : ℚ) / (A014709 n : ℚ))).toNat

end

end A279475.P6287319287709643701

/-!
# A279476: Expansion of phi(-x^4) / (chi(-x^12) * f(-x)^2) in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A279476, there is no canonical definition to state claims against.
-/

/-! ## A279476.P11965447063051302256

`A131945(2*n+1)`
-/

namespace A279476.P11965447063051302256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (2 * n + 1)

end

end A279476.P11965447063051302256

/-! ## A279476.P5215558629621230790

`record[A131945((n+1)%4+n)]`
-/

namespace A279476.P5215558629621230790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 ((n + 1) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279476.P5215558629621230790

/-! ## A279476.P1299347593401167497

`record[A131945(A004442(n))]`
-/

namespace A279476.P1299347593401167497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279476.P1299347593401167497

/-! ## A279476.P9717242018270593919

`record[A131945(A006257(n))]`
-/

namespace A279476.P9717242018270593919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279476.P9717242018270593919

/-! ## A279476.P17507902284699525591

`record[A131945(A141310(n))]`
-/

namespace A279476.P17507902284699525591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131945 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279476.P17507902284699525591

/-!
# A279479: Expansion of f(-x, -x^5) / f(-x^24)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A279479, there is no canonical definition to state claims against.
-/

/-! ## A279479.P16086285213741285930

`A258747(n)%A222757(A137828(n))`
-/

namespace A279479.P16086285213741285930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258747 n) (A222757 (A137828 n).toNat)

end

end A279479.P16086285213741285930

/-! ## A279479.P5271102732588429110

`and(A033999(A000217(3*n+2)), A258747(n))`
-/

namespace A279479.P5271102732588429110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (A000217 (3 * n + 2)).toNat) (A258747 n)

end

end A279479.P5271102732588429110

/-! ## A279479.P12688109786619327686

`A227696(n)%A233583(A143632(n))`
-/

namespace A279479.P12688109786619327686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227696 n) (A233583 (A143632 n).toNat)

end

end A279479.P12688109786619327686

/-! ## A279479.P18054887262676385740

`or(A089802(n), A089811(A089854(3*n)))`
-/

namespace A279479.P18054887262676385740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089802 n) (A089811 (A089854 (3 * n)).toNat)

end

end A279479.P18054887262676385740

/-!
# A279480: Numbers k such that k+1 and k^4+1 are primes.

The programs for A279480, the canonical program `A279480.P1875435745998994455` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279480 has offset 1).

The definition of A279480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279480.P14293145781585227469

`p?[A000068(n+1)+1]-1`
-/

namespace A279480.P14293145781585227469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A279480.P14293145781585227469

namespace A279480

/-- `p?[A000068(n+1)+1]-1` -/
def P14293145781585227469.Spec : Prop :=
  ∀ n, P14293145781585227469.a n = A279480 (n + 1)

end A279480

/-! ## A279480.P11097400464168025127

`∩[A000068(n+1), A006093(n+1)]`
-/

namespace A279480.P11097400464168025127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279480.P11097400464168025127

namespace A279480

/-- `∩[A000068(n+1), A006093(n+1)]` -/
def P11097400464168025127.Spec : Prop :=
  ∀ n, (P11097400464168025127.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P10559279255080152437

`∩[A000068(n+1), A068499(n+1)]`
-/

namespace A279480.P10559279255080152437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279480.P10559279255080152437

namespace A279480

/-- `∩[A000068(n+1), A068499(n+1)]` -/
def P10559279255080152437.Spec : Prop :=
  ∀ n, (P10559279255080152437.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P4222373198291856733

`A003958(p?[A000068(n+1)+1])`
-/

namespace A279480.P4222373198291856733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279480.P4222373198291856733

namespace A279480

/-- `A003958(p?[A000068(n+1)+1])` -/
def P4222373198291856733.Spec : Prop :=
  ∀ n, P4222373198291856733.a n = A279480 (n + 1)

end A279480

/-! ## A279480.P7962090216436861573

`record[A020639(A000068(n+1)+1)-1]`
-/

namespace A279480.P7962090216436861573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000068 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279480.P7962090216436861573

namespace A279480

/-- `record[A020639(A000068(n+1)+1)-1]` -/
def P7962090216436861573.Spec : Prop :=
  ∀ n, P7962090216436861573.a n = A279480 (n + 1)

end A279480

/-! ## A279480.P1875435745998994455

`p?[A180648(n+1)]-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279480

/-- `p?[A180648(n+1)]-1` -/
def P1875435745998994455.Spec : Prop :=
  ∀ n, P1875435745998994455.a n = A279480 (n + 1)

theorem P1875435745998994455.correct : P1875435745998994455.Spec := by
  intro n
  simp only [A279480, Nat.add_sub_cancel]

end A279480

/-! ## A279480.P8687186917118474333

`∩[A000068(n+1), A173919(n+1)]`
-/

namespace A279480.P8687186917118474333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A279480.P8687186917118474333

namespace A279480

/-- `∩[A000068(n+1), A173919(n+1)]` -/
def P8687186917118474333.Spec : Prop :=
  ∀ n, (P8687186917118474333.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P17841389591864185659

`A033879(p?[A000068(n+1)+1])`
-/

namespace A279480.P17841389591864185659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279480.P17841389591864185659

namespace A279480

/-- `A033879(p?[A000068(n+1)+1])` -/
def P17841389591864185659.Spec : Prop :=
  ∀ n, P17841389591864185659.a n = A279480 (n + 1)

end A279480

/-! ## A279480.P15284167757775122074

`A003958(p?[A141310(A000068(n+1))])`
-/

namespace A279480.P15284167757775122074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A000068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A279480.P15284167757775122074

namespace A279480

/-- `A003958(p?[A141310(A000068(n+1))])` -/
def P15284167757775122074.Spec : Prop :=
  ∀ n, P15284167757775122074.a n = A279480 (n + 1)

end A279480

/-! ## A279480.P5680988808085310808

`eq[A005451(n+1), A193929(n)]`
-/

namespace A279480.P5680988808085310808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P5680988808085310808

namespace A279480

/-- `eq[A005451(n+1), A193929(n)]` -/
def P5680988808085310808.Spec : Prop :=
  ∀ n, (P5680988808085310808.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P6863279745982562399

`eq[A023890(n+1), A193929(n)]`
-/

namespace A279480.P6863279745982562399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P6863279745982562399

namespace A279480

/-- `eq[A023890(n+1), A193929(n)]` -/
def P6863279745982562399.Spec : Prop :=
  ∀ n, (P6863279745982562399.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P14478309355733645630

`eq[A029934(n+1), A193929(n)]`
-/

namespace A279480.P14478309355733645630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P14478309355733645630

namespace A279480

/-- `eq[A029934(n+1), A193929(n)]` -/
def P14478309355733645630.Spec : Prop :=
  ∀ n, (P14478309355733645630.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P2058090128871881839

`eq[A050358(n+1), A193929(n)]`
-/

namespace A279480.P2058090128871881839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P2058090128871881839

namespace A279480

/-- `eq[A050358(n+1), A193929(n)]` -/
def P2058090128871881839.Spec : Prop :=
  ∀ n, (P2058090128871881839.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P6291533684370462433

`eq[A051612(n+1), A193562(n)]`
-/

namespace A279480.P6291533684370462433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P6291533684370462433

namespace A279480

/-- `eq[A051612(n+1), A193562(n)]` -/
def P6291533684370462433.Spec : Prop :=
  ∀ n, (P6291533684370462433.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P2026745035853121371

`eq[A055032(n+1), A193929(n)]`
-/

namespace A279480.P2026745035853121371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P2026745035853121371

namespace A279480

/-- `eq[A055032(n+1), A193929(n)]` -/
def P2026745035853121371.Spec : Prop :=
  ∀ n, (P2026745035853121371.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P9780434349526215284

`eq[A062967(n+1), A193929(n)]`
-/

namespace A279480.P9780434349526215284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P9780434349526215284

namespace A279480

/-- `eq[A062967(n+1), A193929(n)]` -/
def P9780434349526215284.Spec : Prop :=
  ∀ n, (P9780434349526215284.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P9153211293530151991

`eq[A072195(n+1), A193929(n)]`
-/

namespace A279480.P9153211293530151991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P9153211293530151991

namespace A279480

/-- `eq[A072195(n+1), A193929(n)]` -/
def P9153211293530151991.Spec : Prop :=
  ∀ n, (P9153211293530151991.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P16622151356577045405

`eq[A078896(n+1), A193929(n)]`
-/

namespace A279480.P16622151356577045405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P16622151356577045405

namespace A279480

/-- `eq[A078896(n+1), A193929(n)]` -/
def P16622151356577045405.Spec : Prop :=
  ∀ n, (P16622151356577045405.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P2919352719001677571

`eq[A080339(n+1), A193929(n)]`
-/

namespace A279480.P2919352719001677571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P2919352719001677571

namespace A279480

/-- `eq[A080339(n+1), A193929(n)]` -/
def P2919352719001677571.Spec : Prop :=
  ∀ n, (P2919352719001677571.a n : ℤ) = A279480 (n + 1)

end A279480

/-! ## A279480.P16677144977667711328

`eq[A082344(n+1), A193929(n)]`
-/

namespace A279480.P16677144977667711328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279480.P16677144977667711328

namespace A279480

/-- `eq[A082344(n+1), A193929(n)]` -/
def P16677144977667711328.Spec : Prop :=
  ∀ n, (P16677144977667711328.a n : ℤ) = A279480 (n + 1)

end A279480

/-!
# A279481: Count the primes appearing in each interval [p,q] where (p,q) is a Goldbach partition of 2n, and then add the results.

The programs for A279481, there is no canonical definition to state claims against.
-/

/-! ## A279481.P17682324663625862130

`Δ[A279617(round(acot(n)+n))]`
-/

namespace A279481.P17682324663625862130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279481.P17682324663625862130

/-! ## A279481.P11862278164294899425

`Δ[A279617(round(sqrt(n²+1)))]`
-/

namespace A279481.P11862278164294899425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279481.P11862278164294899425

/-! ## A279481.P7471182277639914212

`abs(Δ[A279617(A028310(n))])`
-/

namespace A279481.P7471182277639914212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A279481.P7471182277639914212

/-! ## A279481.P974414417297036479

`A279617(n+1)-A279617(round(sqrt(n²+1)))`
-/

namespace A279481.P974414417297036479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (n + 1) - A279617 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A279481.P974414417297036479

/-! ## A279481.P14881310142705845043

`(A000007(n)+1)*Δ[A279617(A028310(n))]`
-/

namespace A279481.P14881310142705845043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (f1 (n + 1) - f1 n)

end

end A279481.P14881310142705845043

/-! ## A279481.P16261224625166211940

`Δ[A279617(A028310(n))]+(A000040(n+2)+1)%2`
-/

namespace A279481.P16261224625166211940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000040 (n + 2) + 1) 2

end

end A279481.P16261224625166211940

/-! ## A279481.P7698637678089219316

`Δ[A279617(A028310(n))]%A000041(n)`
-/

namespace A279481.P7698637678089219316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 n)

end

end A279481.P7698637678089219316

/-! ## A279481.P13756798877666166860

`Δ[A279617(A028310(n))]*A010052(n²)`
-/

namespace A279481.P13756798877666166860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279617 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010052 (n ^ 2)

end

end A279481.P13756798877666166860

/-!
# A279482: Sum of the first n Lucas numbers whose indices are prime.

The programs for A279482, there is no canonical definition to state claims against.
-/

/-! ## A279482.P4276954701266279450

`∑[A180363(n+1)]`
-/

namespace A279482.P4276954701266279450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P4276954701266279450

/-! ## A279482.P5237564289933650070

`∑[A000032(p?[comp[n²]])]`
-/

namespace A279482.P5237564289933650070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P5237564289933650070

/-! ## A279482.P3291550235093233667

`∑[record[∑{p}[n+2, A000032(#)]]]`
-/

namespace A279482.P3291550235093233667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A000032 p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P3291550235093233667

/-! ## A279482.P1725465109057212157

`∑[A000032(A000040(n+1))]`
-/

namespace A279482.P1725465109057212157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P1725465109057212157

/-! ## A279482.P14942035999664230833

`∑[A000032(A008578(n+2))]`
-/

namespace A279482.P14942035999664230833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P14942035999664230833

/-! ## A279482.P18210078634737222313

`∑[A000032(record[A051664(n+1)])]`
-/

namespace A279482.P18210078634737222313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P18210078634737222313

/-! ## A279482.P1085556574716603286

`∑[A000032(record[A006530(n+2)])]`
-/

namespace A279482.P1085556574716603286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P1085556574716603286

/-! ## A279482.P1782313144075954903

`∑[A000032(record[A014963(n+2)])]`
-/

namespace A279482.P1782313144075954903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P1782313144075954903

/-! ## A279482.P14609033336927816074

`∑[A000032(record[A020639(n+2)])]`
-/

namespace A279482.P14609033336927816074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279482.P14609033336927816074

/-!
# A279483: Number of 2 X 2 matrices with entries in {0,1,...,n} and odd determinant with no entry repeated.

The programs for A279483, the canonical program `A279483.P8860780044207958791` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279483 has offset 0).

The definition of A279483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279483.P8860780044207958791

`ogf((8x^3+16x^4+88x^5+32x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A279483

/-- `ogf((8x^3+16x^4+88x^5+32x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P8860780044207958791.Spec : Prop :=
  ∀ n, P8860780044207958791.a n = A279483 n

theorem P8860780044207958791.correct : P8860780044207958791.Spec := by
  intro n
  simp only [A279483]

end A279483

/-! ## A279483.P15562013787930617830

`A330925(A153862(n+2)-A238486(n+1))`
-/

namespace A279483.P15562013787930617830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (A153862 (n + 2) - A238486 (n + 1)).toNat

end

end A279483.P15562013787930617830

namespace A279483

/-- `A330925(A153862(n+2)-A238486(n+1))` -/
def P15562013787930617830.Spec : Prop :=
  ∀ n, P15562013787930617830.a n = A279483 n

end A279483

/-! ## A279483.P15723163067646868111

`8*A230431(A000325(n))`
-/

namespace A279483.P15723163067646868111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A230431 (A000325 n).toNat

end

end A279483.P15723163067646868111

namespace A279483

/-- `8*A230431(A000325(n))` -/
def P15723163067646868111.Spec : Prop :=
  ∀ n, P15723163067646868111.a n = A279483 n

end A279483

/-!
# A279484: Expansion of Product_{k>=1} (1-x^(k^3)).

The programs for A279484, there is no canonical definition to state claims against.
-/

/-! ## A279484.P10167796277927789136

`(-A279329(n))^(A020639(A022853(n)+1)-1)`
-/

namespace A279484.P10167796277927789136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A279329 n : ℚ) ^ (A020639 (A022853 n + 1).toNat - 1 : ℤ)

end

end A279484.P10167796277927789136

/-! ## A279484.P17009789695400300620

`(-A279329(n))^A022853(n)`
-/

namespace A279484.P17009789695400300620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A279329 n : ℚ) ^ (A022853 n : ℤ)

end

end A279484.P17009789695400300620

/-! ## A279484.P933881331254806843

`A178987(A279329(n))^A007093(n+2)`
-/

namespace A279484.P933881331254806843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178987 (A279329 n).toNat : ℚ) ^ (A007093 (n + 2) : ℤ)

end

end A279484.P933881331254806843

/-! ## A279484.P7497380073751207981

`(-A324672(A331845(n)²))^dr(∑[n])`
-/

namespace A279484.P7497380073751207981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat) ^ SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279484.P7497380073751207981

/-! ## A279484.P5313005489314151889

`A000038(n)-A324672(A331845(n)²)`
-/

namespace A279484.P5313005489314151889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A324672 (A331845 n ^ 2).toNat

end

end A279484.P5313005489314151889

/-! ## A279484.P5082914921761396614

`A024936(A331845(n))^A000040(n+1)`
-/

namespace A279484.P5082914921761396614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331845 n).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A279484.P5082914921761396614

/-! ## A279484.P15048637978961356902

`A024936(A331845(n))^record[A006530(n+2)]`
-/

namespace A279484.P15048637978961356902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331845 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A279484.P15048637978961356902

/-! ## A279484.P8700210221002376606

`(-A324672(A331845(n)²))^A000040(n+1)`
-/

namespace A279484.P8700210221002376606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A279484.P8700210221002376606

/-! ## A279484.P8430851430466768553

`(-A324672(A331845(n)²))^A001248(n+1)`
-/

namespace A279484.P8430851430466768553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A001248 (n + 1) : ℤ)

end

end A279484.P8430851430466768553

/-! ## A279484.P2184933765010302250

`(-A324672(A331845(n)²))^A003631(n+1)`
-/

namespace A279484.P2184933765010302250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A003631 (n + 1) : ℤ)

end

end A279484.P2184933765010302250

/-! ## A279484.P4830909850775745049

`(-A324672(A331845(n)²))^A045967(n+1)`
-/

namespace A279484.P4830909850775745049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A045967 (n + 1) : ℤ)

end

end A279484.P4830909850775745049

/-! ## A279484.P15528046132990074574

`(-A324672(A331845(n)²))^A269230(n+1)`
-/

namespace A279484.P15528046132990074574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A269230 (n + 1) : ℤ)

end

end A279484.P15528046132990074574

/-! ## A279484.P15565933002954157041

`(-A324672(A331845(n)²))^A006530(n+2)`
-/

namespace A279484.P15565933002954157041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A006530 (n + 2) : ℤ)

end

end A279484.P15565933002954157041

/-! ## A279484.P1178267592084244402

`(-A324672(A331845(n)²))^A014963(n+2)`
-/

namespace A279484.P1178267592084244402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A014963 (n + 2) : ℤ)

end

end A279484.P1178267592084244402

/-! ## A279484.P6322690407268707377

`(-A324672(A331845(n)²))^record[A000010(n+1)+1]`
-/

namespace A279484.P6322690407268707377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A324672 (A331845 n ^ 2).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A279484.P6322690407268707377

/-!
# A279485: Expansion of Product_{k>=1} (1-x^(k^4)).

The programs for A279485, there is no canonical definition to state claims against.
-/

/-! ## A279485.P1010555685121118731

`A008683(A091186(n+3))*A298859(n)`
-/

namespace A279485.P1010555685121118731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A091186 (n + 3)).toNat * A298859 n

end

end A279485.P1010555685121118731

/-! ## A279485.P5965816272187474641

`A016398(A153152(n*A298859(n)))*A298859(n)`
-/

namespace A279485.P5965816272187474641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 (A153152 ((n : ℤ) * A298859 n).toNat).toNat * A298859 n

end

end A279485.P5965816272187474641

/-! ## A279485.P8149898109312580680

`A016398(n+1-a(floor(n/2)))%(A298859(n)+1)` with `a(0)=1`
-/

namespace A279485.P8149898109312580680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A016398 ((n + 1 : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat).toNat) (A298859 n + 1)

end

end A279485.P8149898109312580680

/-! ## A279485.P15300986032382372211

`A016398(A153152(n))*A298859(n)`
-/

namespace A279485.P15300986032382372211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 (A153152 n).toNat * A298859 n

end

end A279485.P15300986032382372211

/-! ## A279485.P8581612771495152407

`A016398(comp[A131216(n+1)])*A298859(n)`
-/

namespace A279485.P8581612771495152407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A298859 n

end

end A279485.P8581612771495152407

/-! ## A279485.P16045057758829152334

`A016398(comp[A207497(n+1)])*A298859(n)`
-/

namespace A279485.P16045057758829152334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207497 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A298859 n

end

end A279485.P16045057758829152334

/-! ## A279485.P5021967634498210579

`(A016398(A153152(n))%(A298859(n)+1))^A178334(n)`
-/

namespace A279485.P5021967634498210579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A016398 (A153152 n).toNat) (A298859 n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A279485.P5021967634498210579

/-! ## A279485.P16278141245159397869

`(-A298859(n))^A073726(n+1)`
-/

namespace A279485.P16278141245159397869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A298859 n : ℚ) ^ (A073726 (n + 1) : ℤ)

end

end A279485.P16278141245159397869

/-! ## A279485.P9058286458350278759

`A011644(n)*A298859(n)`
-/

namespace A279485.P9058286458350278759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011644 n * A298859 n

end

end A279485.P9058286458350278759

/-! ## A279485.P14240311255370372181

`A015835(A051771(n))`
-/

namespace A279485.P14240311255370372181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015835 (A051771 n).toNat

end

end A279485.P14240311255370372181

/-!
# A279486: 

The programs for A279486, there is no canonical definition to state claims against.
-/

/-! ## A279486.P9193225837025223013

`eq[0, A279484(n)]`
-/

namespace A279486.P9193225837025223013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279486.P9193225837025223013

/-! ## A279486.P16305352957812442109

`lt[(A005897(n)*A279484(n)+3)², 12]`
-/

namespace A279486.P16305352957812442109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005897 n * A279484 n + 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279486.P16305352957812442109

/-! ## A279486.P15183809064547418676

`lt[(A224334(n+1)*A279484(n)+3)², 12]`
-/

namespace A279486.P15183809064547418676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A224334 (n + 1) * A279484 n + 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279486.P15183809064547418676

/-! ## A279486.P4219893523893306832

`lt[(A000096(3*n+1)*A279484(n)+3)², 12]`
-/

namespace A279486.P4219893523893306832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (3 * n + 1) * A279484 n + 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A279486.P4219893523893306832

/-!
# A279488: Number of n X 2 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279488, there is no canonical definition to state claims against.
-/

/-! ## A279488.P298383751136626

`A279494(∑[n+1]+2)`
-/

namespace A279488.P298383751136626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279488.P298383751136626

/-! ## A279488.P10494162468608908180

`or(char[2], A279494(A000096(n)+3))`
-/

namespace A279488.P10494162468608908180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A279494 (A000096 n + 3).toNat)

end

end A279488.P10494162468608908180

/-! ## A279488.P15487393260532280629

`A279494(A000096(n)+3)%A000032(3*n)`
-/

namespace A279488.P15487393260532280629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279494 (A000096 n + 3).toNat) (A000032 (3 * n))

end

end A279488.P15487393260532280629

/-! ## A279488.P1629044848293988400

`A007318(C(2*n, 2))*A279494(A000096(n)+3)`
-/

namespace A279488.P1629044848293988400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (2 * n) 2) * A279494 (A000096 n + 3).toNat

end

end A279488.P1629044848293988400

/-! ## A279488.P8927431476392393557

`A007318(A007318(A007318(A007318(n))²))*A279494(A000096(n)+3)`
-/

namespace A279488.P8927431476392393557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (A007318 (A007318 n).toNat ^ 2).toNat).toNat * A279494 (A000096 n + 3).toNat

end

end A279488.P8927431476392393557

/-!
# A279489: Number of nX3 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279489, there is no canonical definition to state claims against.
-/

/-! ## A279489.P4456828565748008651

`A279494(∑[n+2]+4)`
-/

namespace A279489.P4456828565748008651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279489.P4456828565748008651

/-! ## A279489.P14119754609999428683

`lcm(floor(acot(n))-1, A279494(A167614(n+1)))`
-/

namespace A279489.P14119754609999428683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) (A279494 (A167614 (n + 1)).toNat)

end

end A279489.P14119754609999428683

/-! ## A279489.P15084847654726192140

`A054977(n)*A279494(A167614(n+1))`
-/

namespace A279489.P15084847654726192140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A279494 (A167614 (n + 1)).toNat

end

end A279489.P15084847654726192140

/-! ## A279489.P9070941982697333176

`A178334(n)*A279494(A167614(n+1))`
-/

namespace A279489.P9070941982697333176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A279494 (A167614 (n + 1)).toNat

end

end A279489.P9070941982697333176

/-! ## A279489.P10019624788309467111

`lcm(A033999(n), A279494(A167614(n+1)))`
-/

namespace A279489.P10019624788309467111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A279494 (A167614 (n + 1)).toNat)

end

end A279489.P10019624788309467111

/-!
# A279490: Number of nX4 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279490, there is no canonical definition to state claims against.
-/

/-! ## A279490.P8991994561353245972

`A279494(A374004(n+1))`
-/

namespace A279490.P8991994561353245972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A374004 (n + 1)).toNat

end

end A279490.P8991994561353245972

/-! ## A279490.P18158281090925713042

`A279494(A141214(n)+7)`
-/

namespace A279490.P18158281090925713042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A141214 n + 7).toNat

end

end A279490.P18158281090925713042

/-! ## A279490.P6854448326113033081

`A279494(A052905(n)+9)`
-/

namespace A279490.P6854448326113033081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A052905 n + 9).toNat

end

end A279490.P6854448326113033081

/-! ## A279490.P13439151355942379037

`A279494(A055999(n)+10)`
-/

namespace A279490.P13439151355942379037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A055999 n + 10).toNat

end

end A279490.P13439151355942379037

/-! ## A279490.P9296048199904616844

`A279494(A167614(n+2)+1)`
-/

namespace A279490.P9296048199904616844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A167614 (n + 2) + 1).toNat

end

end A279490.P9296048199904616844

/-!
# A279491: Number of nX5 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279491, there is no canonical definition to state claims against.
-/

/-! ## A279491.P5825781574281545644

`A279494(A374005(n+1))`
-/

namespace A279491.P5825781574281545644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A374005 (n + 1)).toNat

end

end A279491.P5825781574281545644

/-! ## A279491.P645121570413597664

`A279494(A056000(n)+15)`
-/

namespace A279491.P645121570413597664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A056000 n + 15).toNat

end

end A279491.P645121570413597664

/-! ## A279491.P1829909439750980664

`A279494(eq[6, A131818(n+1)])`
-/

namespace A279491.P1829909439750980664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279491.P1829909439750980664

/-! ## A279491.P9555434359248152954

`A279494(eq[4, A193592(n)])`
-/

namespace A279491.P9555434359248152954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279491.P9555434359248152954

/-! ## A279491.P9853032989775574564

`A279494(Δ[A023545(n+1)])`
-/

namespace A279491.P9853032989775574564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (f1 (n + 1) - f1 n).toNat

end

end A279491.P9853032989775574564

/-!
# A279492: Number of nX6 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279492, there is no canonical definition to state claims against.
-/

/-! ## A279492.P12079842887055621870

`A279494(A374007(n+1))`
-/

namespace A279492.P12079842887055621870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A374007 (n + 1)).toNat

end

end A279492.P12079842887055621870

/-! ## A279492.P8793131210935509454

`A279494(A034856(n+4)+8)`
-/

namespace A279492.P8793131210935509454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A034856 (n + 4) + 8).toNat

end

end A279492.P8793131210935509454

/-! ## A279492.P12842278036393279541

`A279494(eq[7, A131818(n+1)])`
-/

namespace A279492.P12842278036393279541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279492.P12842278036393279541

/-! ## A279492.P2099976022942362647

`A279494(A055999(n+4)-A005408(n))`
-/

namespace A279492.P2099976022942362647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A055999 (n + 4) - A005408 n).toNat

end

end A279492.P2099976022942362647

/-! ## A279492.P9444585004414439739

`A279494(A052905(n+3))`
-/

namespace A279492.P9444585004414439739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A052905 (n + 3)).toNat

end

end A279492.P9444585004414439739

/-!
# A279493: Number of nX7 0..1 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279493, there is no canonical definition to state claims against.
-/

/-! ## A279493.P16171228408537768489

`A279494(A374008(n+1))`
-/

namespace A279493.P16171228408537768489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A374008 (n + 1)).toNat

end

end A279493.P16171228408537768489

/-! ## A279493.P6604524458325748518

`A279494(eq[8, A131818(n+1)])`
-/

namespace A279493.P6604524458325748518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279493.P6604524458325748518

/-! ## A279493.P15479161563124213273

`A279494(A055999(n+4))`
-/

namespace A279493.P15479161563124213273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (A055999 (n + 4)).toNat

end

end A279493.P15479161563124213273

/-! ## A279493.P10867530578194950568

`A279494(eq[4, A219347(n)])`
-/

namespace A279493.P10867530578194950568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279493.P10867530578194950568

/-! ## A279493.P13821347238724397026

`A279494(eq[6, A193592(n)])`
-/

namespace A279493.P13821347238724397026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279493.P13821347238724397026

/-!
# A279495: Number of tetrahedral numbers dividing n.

The programs for A279495, the canonical program `A279495.P16641540049933314464` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279495 has offset 1).

The definition of A279495 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023533, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279495.P16641540049933314464

`∑{d}[n+1, A023533(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279495

/-- `∑{d}[n+1, A023533(#)]` -/
def P16641540049933314464.Spec : Prop :=
  ∀ n, P16641540049933314464.a n = A279495 (n + 1)

theorem P16641540049933314464.correct : P16641540049933314464.Spec := by
  intro n
  simp only [A279495, Nat.add_sub_cancel]

end A279495

/-! ## A279495.P6813018081203477458

`∑{d}[n+1, 1-A014306(#)]`
-/

namespace A279495.P6813018081203477458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A014306 d)

end

end A279495.P6813018081203477458

namespace A279495

/-- `∑{d}[n+1, 1-A014306(#)]` -/
def P6813018081203477458.Spec : Prop :=
  ∀ n, P6813018081203477458.a n = A279495 (n + 1)

end A279495

/-! ## A279495.P17288464644982376798

`∑{d}[n+1, and(1, A331919(#))]`
-/

namespace A279495.P17288464644982376798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A331919 d)

end

end A279495.P17288464644982376798

namespace A279495

/-- `∑{d}[n+1, and(1, A331919(#))]` -/
def P17288464644982376798.Spec : Prop :=
  ∀ n, P17288464644982376798.a n = A279495 (n + 1)

end A279495

/-! ## A279495.P16739260688984416597

`A183018(2*A334988(n+1))`
-/

namespace A279495.P16739260688984416597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183018 (2 * A334988 (n + 1)).toNat

end

end A279495.P16739260688984416597

namespace A279495

/-- `A183018(2*A334988(n+1))` -/
def P16739260688984416597.Spec : Prop :=
  ∀ n, P16739260688984416597.a n = A279495 (n + 1)

end A279495

/-! ## A279495.P6345796470371260200

`A335917(or(1, A334988(n+1)))`
-/

namespace A279495.P6345796470371260200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335917 (Int.lor 1 (A334988 (n + 1))).toNat

end

end A279495.P6345796470371260200

namespace A279495

/-- `A335917(or(1, A334988(n+1)))` -/
def P6345796470371260200.Spec : Prop :=
  ∀ n, P6345796470371260200.a n = A279495 (n + 1)

end A279495

/-!
# A279496: Number of square pyramidal numbers dividing n.

The programs for A279496, the canonical program `A279496.P17721157438031586069` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279496 has offset 1).

The definition of A279496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279496.P17721157438031586069

`∑{d}[n+1, A253903(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279496

/-- `∑{d}[n+1, A253903(#)]` -/
def P17721157438031586069.Spec : Prop :=
  ∀ n, P17721157438031586069.a n = A279496 (n + 1)

theorem P17721157438031586069.correct : P17721157438031586069.Spec := by
  intro n
  simp only [A279496, Nat.add_sub_cancel]

end A279496

/-! ## A279496.P4524542851125428091

`A100678(or(A063669(n+1), A228813(2*n+1)))`
-/

namespace A279496.P4524542851125428091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100678 (Int.lor (A063669 (n + 1)) (A228813 (2 * n + 1))).toNat

end

end A279496.P4524542851125428091

namespace A279496

/-- `A100678(or(A063669(n+1), A228813(2*n+1)))` -/
def P4524542851125428091.Spec : Prop :=
  ∀ n, P4524542851125428091.a n = A279496 (n + 1)

end A279496

/-! ## A279496.P116238147273908429

`A037968(A063669(n+1)^A046854(n))`
-/

namespace A279496.P116238147273908429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (SequenceMachineLib.roundAway ((A063669 (n + 1) : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A279496.P116238147273908429

namespace A279496

/-- `A037968(A063669(n+1)^A046854(n))` -/
def P116238147273908429.Spec : Prop :=
  ∀ n, P116238147273908429.a n = A279496 (n + 1)

end A279496

/-! ## A279496.P741315702349974146

`A001222(A063669(n+1)*A156221(3*n+4))`
-/

namespace A279496.P741315702349974146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063669 (n + 1) * A156221 (3 * n + 4)).toNat

end

end A279496.P741315702349974146

namespace A279496

/-- `A001222(A063669(n+1)*A156221(3*n+4))` -/
def P741315702349974146.Spec : Prop :=
  ∀ n, P741315702349974146.a n = A279496 (n + 1)

end A279496

/-! ## A279496.P9936645134674324791

`A353851(A063669(n+1))!!`
-/

namespace A279496.P9936645134674324791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A353851 (A063669 (n + 1)).toNat).toNat)

end

end A279496.P9936645134674324791

namespace A279496

/-- `A353851(A063669(n+1))!!` -/
def P9936645134674324791.Spec : Prop :=
  ∀ n, (P9936645134674324791.a n : ℤ) = A279496 (n + 1)

end A279496

/-!
# A279497: Number of pentagonal numbers dividing n.

The programs for A279497, the canonical program `A279497.P13199051140231990892` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279497 has offset 1).

The definition of A279497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255849, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279497.P13199051140231990892

`∑{d}[n+1, A255849(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A279497

/-- `∑{d}[n+1, A255849(#)]` -/
def P13199051140231990892.Spec : Prop :=
  ∀ n, P13199051140231990892.a n = A279497 (n + 1)

theorem P13199051140231990892.correct : P13199051140231990892.Spec := by
  intro n
  simp only [A279497, Nat.add_sub_cancel]

end A279497

/-! ## A279497.P8885700750122345739

`∑{d}[n+1, A332007(#)%2]`
-/

namespace A279497.P8885700750122345739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A332007 d) 2

end

end A279497.P8885700750122345739

namespace A279497

/-- `∑{d}[n+1, A332007(#)%2]` -/
def P8885700750122345739.Spec : Prop :=
  ∀ n, P8885700750122345739.a n = A279497 (n + 1)

end A279497

/-! ## A279497.P9062872959584774851

`∑{d}[n+1, A000035(A332007(#))]`
-/

namespace A279497.P9062872959584774851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A332007 d).toNat

end

end A279497.P9062872959584774851

namespace A279497

/-- `∑{d}[n+1, A000035(A332007(#))]` -/
def P9062872959584774851.Spec : Prop :=
  ∀ n, P9062872959584774851.a n = A279497 (n + 1)

end A279497

/-! ## A279497.P5315933272754965637

`∑{d}[A028310(n+1), A096268(A332007(#))]`
-/

namespace A279497.P5315933272754965637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A096268 (A332007 d).toNat

end

end A279497.P5315933272754965637

namespace A279497

/-- `∑{d}[A028310(n+1), A096268(A332007(#))]` -/
def P5315933272754965637.Spec : Prop :=
  ∀ n, P5315933272754965637.a n = A279497 (n + 1)

end A279497

/-! ## A279497.P16924948092220584332

`∑{d}[A008619(2*n), A096268(A332007(#))]`
-/

namespace A279497.P16924948092220584332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A096268 (A332007 d).toNat

end

end A279497.P16924948092220584332

namespace A279497

/-- `∑{d}[A008619(2*n), A096268(A332007(#))]` -/
def P16924948092220584332.Spec : Prop :=
  ∀ n, P16924948092220584332.a n = A279497 (n + 1)

end A279497

/-!
# A279498: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A279498, there is no canonical definition to state claims against.
-/

/-! ## A279498.P5884563291386412090

`A007088(A279500(n))`
-/

namespace A279498.P5884563291386412090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279500 n).toNat

end

end A279498.P5884563291386412090

/-! ## A279498.P17672944452572626303

`A305989(A279501(n))`
-/

namespace A279498.P17672944452572626303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A279501 n).toNat

end

end A279498.P17672944452572626303

/-! ## A279498.P9467211618618784411

`A185544(2*A279500(n))`
-/

namespace A279498.P9467211618618784411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279500 n).toNat

end

end A279498.P9467211618618784411

/-! ## A279498.P17386210029050314200

`A185544(lcm(2, A279500(n)))`
-/

namespace A279498.P17386210029050314200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A279500 n))

end

end A279498.P17386210029050314200

/-! ## A279498.P15653463633749082754

`A010052(A000244(n))*A284137(n)`
-/

namespace A279498.P15653463633749082754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000244 n).toNat * A284137 n

end

end A279498.P15653463633749082754

/-!
# A279499: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A279499, there is no canonical definition to state claims against.
-/

/-! ## A279499.P10241733864328214410

`A007088(A279501(n))`
-/

namespace A279499.P10241733864328214410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279501 n).toNat

end

end A279499.P10241733864328214410

/-! ## A279499.P4833828906384692909

`A305989(A279500(n))`
-/

namespace A279499.P4833828906384692909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A279500 n).toNat

end

end A279499.P4833828906384692909

/-! ## A279499.P8950954507474963751

`A185544(2*A279501(n))`
-/

namespace A279499.P8950954507474963751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279501 n).toNat

end

end A279499.P8950954507474963751

/-! ## A279499.P16142754744885121878

`A185544(lcm(2, A279501(n)))`
-/

namespace A279499.P16142754744885121878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A279501 n))

end

end A279499.P16142754744885121878

/-! ## A279499.P6334799876477141121

`C(A284138(n), A010681(n)!)`
-/

namespace A279499.P6334799876477141121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284138 n).toNat (Nat.factorial (A010681 n).toNat)

end

end A279499.P6334799876477141121

