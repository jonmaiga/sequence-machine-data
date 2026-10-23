import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A345400: Number of colored set partitions of [n] where (i mod d) identifies the color of i and d is the number of available colors such that within each block the frequency of all colors is equal.

The programs for A345400, there is no canonical definition to state claims against.
-/

/-! ## A345400.P5005943116741329282

`A046079(A186577(n))+A000110(n)`
-/

namespace A345400.P5005943116741329282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A186577 n).toNat + A000110 n

end

end A345400.P5005943116741329282

/-! ## A345400.P5849748786781646441

`A046079(A186577(n))+abs(A292935(n))`
-/

namespace A345400.P5849748786781646441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A186577 n).toNat + |A292935 n|

end

end A345400.P5849748786781646441

/-! ## A345400.P2344210914146873797

`A046079(A186577(n))+A011971(∑[n])`
-/

namespace A345400.P2344210914146873797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A186577 n).toNat + A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345400.P2344210914146873797

/-! ## A345400.P6507639743429342282

`A095149(∑[n])+A046079(A186577(n))`
-/

namespace A345400.P6507639743429342282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) + A046079 (A186577 n).toNat

end

end A345400.P6507639743429342282

/-!
# A345401: a(n) is the unique odd number h such that BCR(h*2^m-1) = 2n (except for BCR(0) = 1) where BCR is bit complement and reverse per A036044.

The programs for A345401, the canonical program `A345401.P14238453183397205627` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345401 has offset 0).

The definition of A345401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345401.P14238453183397205627

`A145341(A337909(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345401

/-- `A145341(A337909(n+1))` -/
def P14238453183397205627.Spec : Prop :=
  ∀ n, P14238453183397205627.a n = A345401 n

theorem P14238453183397205627.correct : P14238453183397205627.Spec := by
  intro n
  simp only [A345401]

end A345401

/-! ## A345401.P11954564704036472323

`xor(Δ[n²], A175920(2*n))`
-/

namespace A345401.P11954564704036472323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A175920 (2 * n))

end

end A345401.P11954564704036472323

namespace A345401

/-- `xor(Δ[n²], A175920(2*n))` -/
def P11954564704036472323.Spec : Prop :=
  ∀ n, P11954564704036472323.a n = A345401 n

end A345401

/-! ## A345401.P3514866343627947285

`A122155(A057889(2*n+1))`
-/

namespace A345401.P3514866343627947285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A057889 (2 * n + 1)).toNat

end

end A345401.P3514866343627947285

namespace A345401

/-- `A122155(A057889(2*n+1))` -/
def P3514866343627947285.Spec : Prop :=
  ∀ n, P3514866343627947285.a n = A345401 n

end A345401

/-! ## A345401.P17041959645723648938

`A057889(A122155(n+1+n))`
-/

namespace A345401.P17041959645723648938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A122155 (n + 1 + n)).toNat

end

end A345401.P17041959645723648938

namespace A345401

/-- `A057889(A122155(n+1+n))` -/
def P17041959645723648938.Spec : Prop :=
  ∀ n, P17041959645723648938.a n = A345401 n

end A345401

/-! ## A345401.P17757250676107474000

`A059894(A004761(n+2))`
-/

namespace A345401.P17757250676107474000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A004761 (n + 2)).toNat

end

end A345401.P17757250676107474000

namespace A345401

/-- `A059894(A004761(n+2))` -/
def P17757250676107474000.Spec : Prop :=
  ∀ n, P17757250676107474000.a n = A345401 n

end A345401

/-! ## A345401.P9509656606610618103

`or(1, A036044(2*n))`
-/

namespace A345401.P9509656606610618103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036044 (2 * n))

end

end A345401.P9509656606610618103

namespace A345401

/-- `or(1, A036044(2*n))` -/
def P9509656606610618103.Spec : Prop :=
  ∀ n, P9509656606610618103.a n = A345401 n

end A345401

/-! ## A345401.P17972884647530691824

`A036044(A004277(n))+1`
-/

namespace A345401.P17972884647530691824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A004277 n).toNat + 1

end

end A345401.P17972884647530691824

namespace A345401

/-- `A036044(A004277(n))+1` -/
def P17972884647530691824.Spec : Prop :=
  ∀ n, P17972884647530691824.a n = A345401 n

end A345401

/-! ## A345401.P13019600560629276824

`A000265(A036044(2*n)+1)`
-/

namespace A345401.P13019600560629276824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A036044 (2 * n) + 1).toNat

end

end A345401.P13019600560629276824

namespace A345401

/-- `A000265(A036044(2*n)+1)` -/
def P13019600560629276824.Spec : Prop :=
  ∀ n, P13019600560629276824.a n = A345401 n

end A345401

/-! ## A345401.P16354338854471200533

`A036044(A028310(2*n))+1`
-/

namespace A345401.P16354338854471200533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A028310 (2 * n)).toNat + 1

end

end A345401.P16354338854471200533

namespace A345401

/-- `A036044(A028310(2*n))+1` -/
def P16354338854471200533.Spec : Prop :=
  ∀ n, P16354338854471200533.a n = A345401 n

end A345401

/-! ## A345401.P16785252914246816414

`A057427(n)+A036044(2*n)`
-/

namespace A345401.P16785252914246816414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A036044 (2 * n)

end

end A345401.P16785252914246816414

namespace A345401

/-- `A057427(n)+A036044(2*n)` -/
def P16785252914246816414.Spec : Prop :=
  ∀ n, P16785252914246816414.a n = A345401 n

end A345401

/-! ## A345401.P17572108920679518618

`A056539(2*n)+1`
-/

namespace A345401.P17572108920679518618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (2 * n) + 1

end

end A345401.P17572108920679518618

namespace A345401

/-- `A056539(2*n)+1` -/
def P17572108920679518618.Spec : Prop :=
  ∀ n, P17572108920679518618.a n = A345401 n

end A345401

/-! ## A345401.P5852774120421149725

`A122155(A030101(2*n+1))`
-/

namespace A345401.P5852774120421149725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A030101 (2 * n + 1)).toNat

end

end A345401.P5852774120421149725

namespace A345401

/-- `A122155(A030101(2*n+1))` -/
def P5852774120421149725.Spec : Prop :=
  ∀ n, P5852774120421149725.a n = A345401 n

end A345401

/-! ## A345401.P8255240999828072076

`A062383(2*n)-A030101(n)`
-/

namespace A345401.P8255240999828072076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) - A030101 n

end

end A345401.P8255240999828072076

namespace A345401

/-- `A062383(2*n)-A030101(n)` -/
def P8255240999828072076.Spec : Prop :=
  ∀ n, P8255240999828072076.a n = A345401 n

end A345401

/-! ## A345401.P9537119306810353735

`A059894(A072376(2*n+1)+n)`
-/

namespace A345401.P9537119306810353735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A072376 (2 * n + 1) + (n : ℤ)).toNat

end

end A345401.P9537119306810353735

namespace A345401

/-- `A059894(A072376(2*n+1)+n)` -/
def P9537119306810353735.Spec : Prop :=
  ∀ n, P9537119306810353735.a n = A345401 n

end A345401

/-! ## A345401.P6636783328568357328

`A122155(A055944(2*n+1)-(2*n+1))`
-/

namespace A345401.P6636783328568357328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A055944 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A345401.P6636783328568357328

namespace A345401

/-- `A122155(A055944(2*n+1)-(2*n+1))` -/
def P6636783328568357328.Spec : Prop :=
  ∀ n, P6636783328568357328.a n = A345401 n

end A345401

/-! ## A345401.P14111856381192864893

`A092569(A145341(n+1))`
-/

namespace A345401.P14111856381192864893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A145341 (n + 1)).toNat

end

end A345401.P14111856381192864893

namespace A345401

/-- `A092569(A145341(n+1))` -/
def P14111856381192864893.Spec : Prop :=
  ∀ n, P14111856381192864893.a n = A345401 n

end A345401

/-! ## A345401.P17099572652846344004

`A006068(A341915(2*n))+1`
-/

namespace A345401.P17099572652846344004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A341915 (2 * n)).toNat + 1

end

end A345401.P17099572652846344004

namespace A345401

/-- `A006068(A341915(2*n))+1` -/
def P17099572652846344004.Spec : Prop :=
  ∀ n, P17099572652846344004.a n = A345401 n

end A345401

/-! ## A345401.P17272116706081105373

`A119608(2*(2*n+1))`
-/

namespace A345401.P17272116706081105373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (2 * (2 * n + 1))

end

end A345401.P17272116706081105373

namespace A345401

/-- `A119608(2*(2*n+1))` -/
def P17272116706081105373.Spec : Prop :=
  ∀ n, P17272116706081105373.a n = A345401 n

end A345401

/-! ## A345401.P2296809672564105357

`A341916(xor(n, 2*n))+1`
-/

namespace A345401.P2296809672564105357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (Nat.xor n (2 * n)) + 1

end

end A345401.P2296809672564105357

namespace A345401

/-- `A341916(xor(n, 2*n))+1` -/
def P2296809672564105357.Spec : Prop :=
  ∀ n, P2296809672564105357.a n = A345401 n

end A345401

/-! ## A345401.P2471577320246942886

`A004442(A056539(2*n))`
-/

namespace A345401.P2471577320246942886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A056539 (2 * n)).toNat

end

end A345401.P2471577320246942886

namespace A345401

/-- `A004442(A056539(2*n))` -/
def P2471577320246942886.Spec : Prop :=
  ∀ n, P2471577320246942886.a n = A345401 n

end A345401

/-!
# A345403: Riesel problem in base 5: a(n) is the smallest k >= 0 such that (2*n)*5^k - 1 is prime, or -1 if no such k exists.

The programs for A345403, there is no canonical definition to state claims against.
-/

/-! ## A345403.P3033335598147812967

`A007814(A261049(n)+A015631(2*(n+2)))`
-/

namespace A345403.P3033335598147812967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A261049 n + A015631 (2 * (n + 2))).toNat

end

end A345403.P3033335598147812967

/-! ## A345403.P17348547639539557867

`A010874(A285573(2*(n+2))*A345362(n+4))`
-/

namespace A345403.P17348547639539557867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A285573 (2 * (n + 2)) * A345362 (n + 4)).toNat

end

end A345403.P17348547639539557867

/-!
# A345405: Integers k such that k = (d1)_c + (d2)_c + ... + (dc)_c, where (d)_c denotes the descending factorial of d, c is the length of k and di is the i-th digit of k in base 10.

The programs for A345405, there is no canonical definition to state claims against.
-/

/-! ## A345405.P18187975164900691654

`record[gcd(A029970(n+1), A272159(2*n+1))]`
-/

namespace A345405.P18187975164900691654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029970 (n + 1)) (A272159 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345405.P18187975164900691654

/-!
# A345407: a(n) is the first semiprime that starts a sequence of n distinct semiprimes under the map A001414.

The programs for A345407, there is no canonical definition to state claims against.
-/

/-! ## A345407.P16819449992153397766

`A171095(∑[n]+1)`
-/

namespace A345407.P16819449992153397766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171095 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A345407.P16819449992153397766

/-! ## A345407.P13637937464956131869

`record[A171095(n+1)]`
-/

namespace A345407.P13637937464956131869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345407.P13637937464956131869

/-! ## A345407.P6305282391363840522

`or(char[1], A171095(A000124(n)))`
-/

namespace A345407.P6305282391363840522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A171095 (A000124 n).toNat)

end

end A345407.P6305282391363840522

/-! ## A345407.P2238194564863945781

`A007318(∑[n])*A171095(A000124(n))`
-/

namespace A345407.P2238194564863945781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A171095 (A000124 n).toNat

end

end A345407.P2238194564863945781

/-! ## A345407.P12863076362354414763

`and(1, A000045(n))!*A171095(A000124(n))`
-/

namespace A345407.P12863076362354414763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A171095 (A000124 n).toNat

end

end A345407.P12863076362354414763

/-!
# A345409: Numbers that are the sum of an emirp and its reversal.

The programs for A345409, there is no canonical definition to state claims against.
-/

/-! ## A345409.P1856010600848755845

`A001414(A083815(n+1))`
-/

namespace A345409.P1856010600848755845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A083815 (n + 1)).toNat

end

end A345409.P1856010600848755845

/-! ## A345409.P13290297076307872368

`A008472(or(1, A083815(n+1)))`
-/

namespace A345409.P13290297076307872368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.lor 1 (A083815 (n + 1))).toNat

end

end A345409.P13290297076307872368

/-!
# A345415: Table read by upward antidiagonals: Given m, n >= 1, write gcd(m,n) as d = u*m+v*n where u, v are minimal; T(m,n) = u.

The programs for A345415, there is no canonical definition to state claims against.
-/

/-! ## A345415.P11376785633474784374

`A011585(A051127(n+1)^A093101(n))`
-/

namespace A345415.P11376785633474784374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (SequenceMachineLib.roundAway ((A051127 (n + 1) : ℚ) ^ (A093101 n : ℤ))).toNat

end

end A345415.P11376785633474784374

/-! ## A345415.P1466204811479210890

`A163532(A001131(n))%A281527(n+2)`
-/

namespace A345415.P1466204811479210890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163532 (A001131 n).toNat) (A281527 (n + 2))

end

end A345415.P1466204811479210890

/-! ## A345415.P4313534591563927956

`A163532(lcm(A001131(n), A035103(n+1)))`
-/

namespace A345415.P4313534591563927956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (Int.lcm (A001131 n) (A035103 (n + 1)))

end

end A345415.P4313534591563927956

/-! ## A345415.P8827421028641826972

`A163532(and(-A051127(n+1), A001131(n)))`
-/

namespace A345415.P8827421028641826972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (Int.land (-A051127 (n + 1)) (A001131 n)).toNat

end

end A345415.P8827421028641826972

/-! ## A345415.P15454255949979357341

`A011585(A051127(n+1)^A007318(2*n))`
-/

namespace A345415.P15454255949979357341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 (SequenceMachineLib.roundAway ((A051127 (n + 1) : ℚ) ^ (A007318 (2 * n) : ℤ))).toNat

end

end A345415.P15454255949979357341

/-!
# A345416: Table read by upward antidiagonals: Given m, n >= 1, write gcd(m,n) as d = u*m+v*n where u, v are minimal; T(m,n) = v.

The programs for A345416, there is no canonical definition to state claims against.
-/

/-! ## A345416.P11557406272418001196

`A022932(A000031(n))-A231642(n+1)`
-/

namespace A345416.P11557406272418001196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A000031 n).toNat - A231642 (n + 1)

end

end A345416.P11557406272418001196

/-! ## A345416.P11804115844381408947

`A011558(A135491(n))-A231642(n+1)`
-/

namespace A345416.P11804115844381408947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A135491 n).toNat - A231642 (n + 1)

end

end A345416.P11804115844381408947

/-! ## A345416.P9805807683994141628

`A287725(A121326(n+1))-A231642(n+1)`
-/

namespace A345416.P9805807683994141628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (A121326 (n + 1)).toNat - A231642 (n + 1)

end

end A345416.P9805807683994141628

/-! ## A345416.P8410041956738773788

`A284368(A147401(n+1))-A231642(n+1)`
-/

namespace A345416.P8410041956738773788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284368 (A147401 (n + 1)).toNat - A231642 (n + 1)

end

end A345416.P8410041956738773788

/-! ## A345416.P9874330653002925484

`A293071(n)^A131536(n)`
-/

namespace A345416.P9874330653002925484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 n : ℚ) ^ (A131536 n : ℤ)

end

end A345416.P9874330653002925484

/-!
# A345418: Table read by upward antidiagonals: Given m, n >= 1, write gcd(prime(m),prime(n)) as d = u*prime(m)+v*prime(n) where u, v are minimal; T(m,n) = v.

The programs for A345418, there is no canonical definition to state claims against.
-/

/-! ## A345418.P13623995551521169516

`A345417(A286100(n+1)+A038722(n+1))`
-/

namespace A345418.P13623995551521169516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345417 (A286100 (n + 1) + A038722 (n + 1)).toNat

end

end A345418.P13623995551521169516

/-!
# A345419: Row 2 of array in A345417.

The programs for A345419, there is no canonical definition to state claims against.
-/

/-! ## A345419.P6061629778187004242

`A131358(A100484(n+1))/2`
-/

namespace A345419.P6061629778187004242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131358 (A100484 (n + 1)).toNat : ℚ) / 2

end

end A345419.P6061629778187004242

/-! ## A345419.P13194988743085114592

`A131358(A001747(n+2))/2`
-/

namespace A345419.P13194988743085114592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131358 (A001747 (n + 2)).toNat : ℚ) / 2

end

end A345419.P13194988743085114592

/-! ## A345419.P14393318334587795309

`A131358(A072055(n+1)-1)/2`
-/

namespace A345419.P14393318334587795309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131358 (A072055 (n + 1) - 1).toNat : ℚ) / 2

end

end A345419.P14393318334587795309

/-! ## A345419.P8760205561091893395

`A131358(A089241(n+1)-2)/2`
-/

namespace A345419.P8760205561091893395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131358 (A089241 (n + 1) - 2).toNat : ℚ) / 2

end

end A345419.P8760205561091893395

/-! ## A345419.P9971735272131156400

`A131358(2*A000040(n+1))/2`
-/

namespace A345419.P9971735272131156400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131358 (2 * A000040 (n + 1)).toNat : ℚ) / 2

end

end A345419.P9971735272131156400

/-! ## A345419.P3176454552346798722

`xor(1, 1-A160706(A008864(n+1)))`
-/

namespace A345419.P3176454552346798722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A160706 (A008864 (n + 1)).toNat)

end

end A345419.P3176454552346798722

/-! ## A345419.P12999288611972340158

`A323704(n+1)-A323703(n+1)`
-/

namespace A345419.P12999288611972340158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (n + 1) - A323703 (n + 1)

end

end A345419.P12999288611972340158

/-! ## A345419.P15463569374632356677

`ceil(A131667(2*A000040(n+1))/2)/2`
-/

namespace A345419.P15463569374632356677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A131667 (2 * A000040 (n + 1)).toNat : ℚ) / 2⌉ : ℚ) / 2

end

end A345419.P15463569374632356677

/-! ## A345419.P9431510520201494949

`A000038(n)-A160706(A008864(n+1))`
-/

namespace A345419.P9431510520201494949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A160706 (A008864 (n + 1)).toNat

end

end A345419.P9431510520201494949

/-! ## A345419.P2740343800436773328

`A046530(A000040(n+1))-A323703(n+1)`
-/

namespace A345419.P2740343800436773328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A000040 (n + 1)).toNat - A323703 (n + 1)

end

end A345419.P2740343800436773328

/-!
# A345423: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of u.

The programs for A345423, there is no canonical definition to state claims against.
-/

/-! ## A345423.P13396230364393005514

`A345424(n+1)-1`
-/

namespace A345423.P13396230364393005514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345424 (n + 1) - 1

end

end A345423.P13396230364393005514

/-! ## A345423.P11590427826645007543

`A362156(C(n, n²))+A345424(n+1)`
-/

namespace A345423.P11590427826645007543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362156 (Nat.choose n (n ^ 2)) + A345424 (n + 1)

end

end A345423.P11590427826645007543

/-! ## A345423.P9854824810706686010

`A001489(n+1)+A345424(n+1)+n`
-/

namespace A345423.P9854824810706686010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A345424 (n + 1) + (n : ℤ))

end

end A345423.P9854824810706686010

/-! ## A345423.P2418709969449881385

`A362156(val(3*n+1, 6))+A345424(n+1)`
-/

namespace A345423.P2418709969449881385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362156 (SequenceMachineLib.valuation (3 * n + 1) 6) + A345424 (n + 1)

end

end A345423.P2418709969449881385

/-! ## A345423.P9314104202089008875

`floor((or(-1, A000041(n))+2*A345424(n+1))/2)`
-/

namespace A345423.P9314104202089008875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor (-1) (A000041 n) + 2 * A345424 (n + 1) : ℚ) / 2⌋

end

end A345423.P9314104202089008875

/-! ## A345423.P17623754578248502865

`A349340(A002146(n))+A345424(n+1)`
-/

namespace A345423.P17623754578248502865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A002146 n).toNat + A345424 (n + 1)

end

end A345423.P17623754578248502865

/-! ## A345423.P14788210918934414713

`A349340(A060566(n))+A345424(n+1)`
-/

namespace A345423.P14788210918934414713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A060566 n).toNat + A345424 (n + 1)

end

end A345423.P14788210918934414713

/-! ## A345423.P16591047826298299453

`floor((A008683(A002148(n))+2*A345424(n+1))/2)`
-/

namespace A345423.P16591047826298299453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 (A002148 n).toNat + 2 * A345424 (n + 1) : ℚ) / 2⌋

end

end A345423.P16591047826298299453

/-! ## A345423.P11982179242063021921

`floor((A008683(A001750(n+1)/5)+2*A345424(n+1))/2)`
-/

namespace A345423.P11982179242063021921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat + 2 * A345424 (n + 1) : ℚ) / 2⌋

end

end A345423.P11982179242063021921

/-! ## A345423.P16855696000904424499

`floor(A345425(n+1)/2)`
-/

namespace A345423.P16855696000904424499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 (n + 1) : ℚ) / 2⌋

end

end A345423.P16855696000904424499

/-!
# A345424: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of v.

The programs for A345424, there is no canonical definition to state claims against.
-/

/-! ## A345424.P1554668272883884535

`A345423(n+1)+1`
-/

namespace A345424.P1554668272883884535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345423 (n + 1) + 1

end

end A345424.P1554668272883884535

/-! ## A345424.P1657434213891045562

`ceil(A345425(n+1)/2)`
-/

namespace A345424.P1657434213891045562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345425 (n + 1) : ℚ) / 2⌉

end

end A345424.P1657434213891045562

/-! ## A345424.P2885581048457808355

`floor(A345425(C(n+1, n))/2)+1`
-/

namespace A345424.P2885581048457808355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 (Nat.choose (n + 1) n) : ℚ) / 2⌋ + 1

end

end A345424.P2885581048457808355

/-! ## A345424.P13316619788383579912

`floor(A345425(2*n-n+1)/2)+1`
-/

namespace A345424.P13316619788383579912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 2⌋ + 1

end

end A345424.P13316619788383579912

/-! ## A345424.P8457330744318288534

`floor((A345425(n+1)-char[A138670(n)])/2)+1`
-/

namespace A345424.P8457330744318288534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2⌋ + 1

end

end A345424.P8457330744318288534

/-! ## A345424.P3592348272662519876

`floor((A345425(n+1)-A002385(n+1)%2)/2)+1`
-/

namespace A345424.P3592348272662519876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 (n + 1) - Int.tmod (A002385 (n + 1)) 2 : ℚ) / 2⌋ + 1

end

end A345424.P3592348272662519876

/-! ## A345424.P1050895374820702361

`floor((A345425(n+1)-A265389(n+1)%2)/2)+1`
-/

namespace A345424.P1050895374820702361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345425 (n + 1) - Int.tmod (A265389 (n + 1)) 2 : ℚ) / 2⌋ + 1

end

end A345424.P1050895374820702361

/-! ## A345424.P13799102533704945042

`(A008683(12*n+8)+1)!/2+A345425(n+1)/2`
-/

namespace A345424.P13799102533704945042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (12 * n + 8) + 1).toNat : ℚ) / 2 + (A345425 (n + 1) : ℚ) / 2

end

end A345424.P13799102533704945042

/-! ## A345424.P2712491820500909803

`A001221(A002146(n))+floor(A345425(n+1)/2)`
-/

namespace A345424.P2712491820500909803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002146 n).toNat + ⌊(A345425 (n + 1) : ℚ) / 2⌋

end

end A345424.P2712491820500909803

/-! ## A345424.P3477853205999442583

`A001221(A002148(n))+floor(A345425(n+1)/2)`
-/

namespace A345424.P3477853205999442583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002148 n).toNat + ⌊(A345425 (n + 1) : ℚ) / 2⌋

end

end A345424.P3477853205999442583

/-!
# A345425: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of u+v.

The programs for A345425, there is no canonical definition to state claims against.
-/

/-! ## A345425.P12410824171299073709

`2*A345423(n+1)+1`
-/

namespace A345425.P12410824171299073709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345423 (n + 1) + 1

end

end A345425.P12410824171299073709

/-! ## A345425.P5578236239287403632

`2*A345424(n+1)-1`
-/

namespace A345425.P5578236239287403632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345424 (n + 1) - 1

end

end A345425.P5578236239287403632

/-! ## A345425.P2840977668956682855

`A345424(n+1)+A345423(n+1)`
-/

namespace A345425.P2840977668956682855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345424 (n + 1) + A345423 (n + 1)

end

end A345425.P2840977668956682855

/-! ## A345425.P12428913780979134270

`or(-1, A000041(n))+2*A345424(n+1)`
-/

namespace A345425.P12428913780979134270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A345424 (n + 1)

end

end A345425.P12428913780979134270

/-! ## A345425.P15700856333538755807

`A008683(A002146(n))+2*A345424(n+1)`
-/

namespace A345425.P15700856333538755807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat + 2 * A345424 (n + 1)

end

end A345425.P15700856333538755807

/-! ## A345425.P5578768753803824369

`A008683(A002148(n))+2*A345424(n+1)`
-/

namespace A345425.P5578768753803824369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 2 * A345424 (n + 1)

end

end A345425.P5578768753803824369

/-! ## A345425.P16044323374148414746

`A008683(A000928(n+1))+2*A345424(n+1)`
-/

namespace A345425.P16044323374148414746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000928 (n + 1)).toNat + 2 * A345424 (n + 1)

end

end A345425.P16044323374148414746

/-! ## A345425.P3053490673441336671

`A008683(record[A014963(n+2)])+2*A345424(n+1)`
-/

namespace A345425.P3053490673441336671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A345424 (n + 1)

end

end A345425.P3053490673441336671

/-! ## A345425.P6920478501524817369

`A008683(A001750(n+1)/5)+2*A345424(n+1)`
-/

namespace A345425.P6920478501524817369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A001750 (n + 1) : ℚ) / 5)).toNat + 2 * A345424 (n + 1)

end

end A345425.P6920478501524817369

/-!
# A345426: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of u.

The programs for A345426, there is no canonical definition to state claims against.
-/

/-! ## A345426.P9371425026205309332

`A345427(n+1)-(n+1)`
-/

namespace A345426.P9371425026205309332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345427 (n + 1) - (n + 1 : ℤ)

end

end A345426.P9371425026205309332

/-! ## A345426.P15212285305568972447

`(A345428(n+1)-(n+1))/2`
-/

namespace A345426.P15212285305568972447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345428 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A345426.P15212285305568972447

/-!
# A345427: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of v.

The programs for A345427, there is no canonical definition to state claims against.
-/

/-! ## A345427.P12838465403048950026

`(A345428(n+1)+1+n)/2`
-/

namespace A345427.P12838465403048950026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345428 (n + 1) + 1 + (n : ℤ) : ℚ) / 2

end

end A345427.P12838465403048950026

/-! ## A345427.P14908137142712828109

`A345426(n+1)+1+n`
-/

namespace A345427.P14908137142712828109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345426 (n + 1) + 1 + (n : ℤ)

end

end A345427.P14908137142712828109

/-!
# A345428: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of u+v.

The programs for A345428, there is no canonical definition to state claims against.
-/

/-! ## A345428.P2348613620186360983

`2*A345427(n+1)-(n+1)`
-/

namespace A345428.P2348613620186360983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345427 (n + 1) - (n + 1 : ℤ)

end

end A345428.P2348613620186360983

/-! ## A345428.P16204034285449566350

`A001478(n+1)+2*A345427(n+1)`
-/

namespace A345428.P16204034285449566350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A345427 (n + 1)

end

end A345428.P16204034285449566350

/-! ## A345428.P10981499094813005067

`A001489(n+1)+2*A345427(n+1)`
-/

namespace A345428.P10981499094813005067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + 2 * A345427 (n + 1)

end

end A345428.P10981499094813005067

/-! ## A345428.P12826220194560587569

`A345427(n+1)+A345427(n+1)-A000027(n+1)`
-/

namespace A345428.P12826220194560587569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345427 (n + 1) + (A345427 (n + 1) - A000027 (n + 1))

end

end A345428.P12826220194560587569

/-! ## A345428.P16259515333397503657

`2*A345426(n+1)+1+n`
-/

namespace A345428.P16259515333397503657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345426 (n + 1) + 1 + (n : ℤ)

end

end A345428.P16259515333397503657

/-! ## A345428.P11560998775017586563

`A345427(n+1)+A345426(n+1)`
-/

namespace A345428.P11560998775017586563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345427 (n + 1) + A345426 (n + 1)

end

end A345428.P11560998775017586563

/-! ## A345428.P3059993578214571268

`A000027(n+1)+A345426(n+1)+A345426(n+1)`
-/

namespace A345428.P3059993578214571268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A345426 (n + 1) + A345426 (n + 1))

end

end A345428.P3059993578214571268

/-!
# A345429: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of |u|.

The programs for A345429, there is no canonical definition to state claims against.
-/

/-! ## A345429.P225991054240921493

`A345430(n+1)-1`
-/

namespace A345429.P225991054240921493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345430 (n + 1) - 1

end

end A345429.P225991054240921493

/-! ## A345429.P3035862502337976066

`A004483(A345430(n+1))`
-/

namespace A345429.P3035862502337976066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A345430 (n + 1)).toNat

end

end A345429.P3035862502337976066

/-! ## A345429.P11523341516547862805

`A023444(A345430(n+1)+1)`
-/

namespace A345429.P11523341516547862805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A345430 (n + 1) + 1).toNat

end

end A345429.P11523341516547862805

/-! ## A345429.P10126066831720148505

`A289207(A345430(n+1)+1)`
-/

namespace A345429.P10126066831720148505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A345430 (n + 1) + 1).toNat

end

end A345429.P10126066831720148505

/-! ## A345429.P18273105556352499468

`A023445(A345430(n+1)+2)`
-/

namespace A345429.P18273105556352499468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A345430 (n + 1) + 2).toNat

end

end A345429.P18273105556352499468

/-! ## A345429.P16240382267377685479

`abs(A345430(n+1)+A033999(2*n+1))`
-/

namespace A345429.P16240382267377685479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A345430 (n + 1) + A033999 (2 * n + 1)|

end

end A345429.P16240382267377685479

/-! ## A345429.P1137278233255612014

`A023443(∑{d}[A345430(n+1), A000010(#)])`
-/

namespace A345429.P1137278233255612014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A345429.P1137278233255612014

/-! ## A345429.P866000204173448805

`A007318(∑[n])*A023443(A345430(n+1))`
-/

namespace A345429.P866000204173448805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A023443 (A345430 (n + 1)).toNat

end

end A345429.P866000204173448805

/-! ## A345429.P6142285507180575162

`A023443(A345430(n+1))%A000041(n+4)`
-/

namespace A345429.P6142285507180575162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A345430 (n + 1)).toNat) (A000041 (n + 4))

end

end A345429.P6142285507180575162

/-! ## A345429.P17187477315665076698

`A023443(A345430(n+1))/A007318(C(n+1, 2))`
-/

namespace A345429.P17187477315665076698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A345430 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose (n + 1) 2) : ℚ)

end

end A345429.P17187477315665076698

/-!
# A345430: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of |v|.

The programs for A345430, there is no canonical definition to state claims against.
-/

/-! ## A345430.P12240543421292340975

`∑[A008486(A066840(n+1)%A003229(n))]`
-/

namespace A345430.P12240543421292340975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A066840 (n + 1)) (A003229 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345430.P12240543421292340975

/-! ## A345430.P14115105689636418394

`A345429(n+1)+1`
-/

namespace A345430.P14115105689636418394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345429 (n + 1) + 1

end

end A345430.P14115105689636418394

/-! ## A345430.P12937512921134363505

`A004482(A345429(n+1))`
-/

namespace A345430.P12937512921134363505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A345429 (n + 1)).toNat

end

end A345430.P12937512921134363505

/-!
# A345431: For 1<=x<=n, 1<=y<=n, with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of u^2+v^2.

The programs for A345431, there is no canonical definition to state claims against.
-/

/-! ## A345431.P6556084911344127596

`A336515(A096978(n+1))`
-/

namespace A345431.P6556084911344127596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336515 (A096978 (n + 1)).toNat

end

end A345431.P6556084911344127596

/-! ## A345431.P4757544858342613385

`A338316(A320426(n+1))`
-/

namespace A345431.P4757544858342613385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A320426 (n + 1)).toNat

end

end A345431.P4757544858342613385

/-! ## A345431.P7683200360686552965

`A338316(A276187(n+1)+1)`
-/

namespace A345431.P7683200360686552965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A276187 (n + 1) + 1).toNat

end

end A345431.P7683200360686552965

/-!
# A345432: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of |u|.

The programs for A345432, there is no canonical definition to state claims against.
-/

/-! ## A345432.P8190642024137066468

`A345433(n+1)-(n+1)`
-/

namespace A345432.P8190642024137066468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (n + 1) - (n + 1 : ℤ)

end

end A345432.P8190642024137066468

/-! ## A345432.P3494823404188484745

`record[A345433(A331300(n))]-1-n`
-/

namespace A345432.P3494823404188484745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (A331300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 - (n : ℤ)

end

end A345432.P3494823404188484745

/-! ## A345432.P17493101486625680202

`record[A345433(A344180(n))]-1-n`
-/

namespace A345432.P17493101486625680202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 - (n : ℤ)

end

end A345432.P17493101486625680202

/-! ## A345432.P6575485097726313647

`A001478(n+1)+A345433(n+1)`
-/

namespace A345432.P6575485097726313647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A345433 (n + 1)

end

end A345432.P6575485097726313647

/-! ## A345432.P1459503737141965571

`record[A345433(A263274(n))-A263274(n)]`
-/

namespace A345432.P1459503737141965571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (A263274 n).toNat - A263274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345432.P1459503737141965571

/-! ## A345432.P15389193798709514515

`record[A345433(A331300(n))-A331300(n)]`
-/

namespace A345432.P15389193798709514515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (A331300 n).toNat - A331300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345432.P15389193798709514515

/-! ## A345432.P6808452871204704766

`record[A345433(A344180(n))-A344180(n)]`
-/

namespace A345432.P6808452871204704766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345433 (A344180 n).toNat - A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345432.P6808452871204704766

/-!
# A345433: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = sum of the values of |v|.

The programs for A345433, there is no canonical definition to state claims against.
-/

/-! ## A345433.P7755119088128111651

`A345432(n+1)+1+n`
-/

namespace A345433.P7755119088128111651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345432 (n + 1) + 1 + (n : ℤ)

end

end A345433.P7755119088128111651

/-! ## A345433.P9647722794560543372

`record[A345432(A008620(n))+A008611(n)]`
-/

namespace A345433.P9647722794560543372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345432 (A008620 n).toNat + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345433.P9647722794560543372

/-! ## A345433.P3071746104619617837

`record[A345432(A193738(n))+A193738(n)]`
-/

namespace A345433.P3071746104619617837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345432 (A193738 n).toNat + A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345433.P3071746104619617837

/-! ## A345433.P5990445944731058262

`record[A345432(A263274(n))+A263274(n)]`
-/

namespace A345433.P5990445944731058262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345432 (A263274 n).toNat + A263274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345433.P5990445944731058262

/-! ## A345433.P6145671685236800195

`A061800(A345432(n+1)+n)`
-/

namespace A345433.P6145671685236800195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A345432 (n + 1) + (n : ℤ)).toNat

end

end A345433.P6145671685236800195

/-!
# A345435: Represent the ring of Eisenstein integers E = {x+y*omega: x, y rational integers, omega = exp(2*Pi*i/3)} by the cells of a hexagonal grid; number the cells of the grid along a counterclockwise hexagonal spiral, with the cells 0, 1 numbered 0, 1. Sequence lists the index numbers of the cells which are 0 or a prime in E.

The programs for A345435, there is no canonical definition to state claims against.
-/

/-! ## A345435.P9742156061396904080

`record[n*A135461(A345439(n))]`
-/

namespace A345435.P9742156061396904080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135461 (A345439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345435.P9742156061396904080

/-! ## A345435.P2271918380402980608

`eq[A057427(n), A135461(A345439(n))]`
-/

namespace A345435.P2271918380402980608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A345439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P2271918380402980608

/-! ## A345435.P11449957705083353627

`eq[A057428(n)², A135461(A345439(n))]`
-/

namespace A345435.P11449957705083353627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A345439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P11449957705083353627

/-! ## A345435.P2705113799483679994

`eq[(n*A135461(A345439(n)))², A000290(n)]`
-/

namespace A345435.P2705113799483679994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A135461 (A345439 n).toNat) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P2705113799483679994

/-! ## A345435.P2198457796147608629

`eq[n*A135461(A345439(n)), A004526(2*n+1)]`
-/

namespace A345435.P2198457796147608629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135461 (A345439 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P2198457796147608629

/-! ## A345435.P573172501047546853

`eq[A089309(n²), A135461(A345439(n))]`
-/

namespace A345435.P573172501047546853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A345439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P573172501047546853

/-! ## A345435.P5180026011183804219

`eq[A135461(A345439(n)), A178334(n)]`
-/

namespace A345435.P5180026011183804219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A345439 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345435.P5180026011183804219

/-!
# A345436: Represent the ring of Gaussian integers E = {x+y*i: x, y rational integers, i = sqrt(-1)} by the cells of a square grid; number the cells of the grid along a counterclockwise square spiral, with the cells representing the ring identities 0, 1 numbered 0, 1. Sequence lists the index numbers of the cells which are 0 or a prime in E.

The programs for A345436, there is no canonical definition to state claims against.
-/

/-! ## A345436.P10779172012111968471

`(A308412(abs(1-n)+1)-1)%(n+1)²²`
-/

namespace A345436.P10779172012111968471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308412 (|1 - (n : ℤ)| + 1).toNat - 1) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A345436.P10779172012111968471

/-! ## A345436.P1831551162034808311

`∪[A308412(n+1), A008415(n)]-1`
-/

namespace A345436.P1831551162034808311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A345436.P1831551162034808311

/-! ## A345436.P4747384648372600552

`record[(A308412(A002262(n+1)+1)-1)%(n+1)]`
-/

namespace A345436.P4747384648372600552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308412 (A002262 (n + 1) + 1).toNat - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345436.P4747384648372600552

/-! ## A345436.P17327971841598670924

`record[A308412(A123108(n+1))-1-a(n-1)]` with `a(0)=0`
-/

namespace A345436.P17327971841598670924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A308412 (A123108 (n + 1)).toNat - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345436.P17327971841598670924

/-! ## A345436.P11076808295290068155

`A023443(∪[A308412(n+1), A008415(n)])`
-/

namespace A345436.P11076808295290068155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A345436.P11076808295290068155

/-! ## A345436.P1416293466897730651

`A308412(A123108(2*n))-1-A000038(n)`
-/

namespace A345436.P1416293466897730651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308412 (A123108 (2 * n)).toNat - 1 - A000038 n

end

end A345436.P1416293466897730651

/-! ## A345436.P14932075977559383474

`(A308412(A123108(2*n))-1)*A057427(n)`
-/

namespace A345436.P14932075977559383474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308412 (A123108 (2 * n)).toNat - 1) * A057427 n

end

end A345436.P14932075977559383474

/-! ## A345436.P2655963579250030460

`A308412(A123108(2*n))%A000079(n+1)-1`
-/

namespace A345436.P2655963579250030460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308412 (A123108 (2 * n)).toNat) (A000079 (n + 1)) - 1

end

end A345436.P2655963579250030460

/-!
# A345437: Represent the ring R = {x+y*sqrt(-2): x, y rational integers} by the cells centered at the points (x,y) of a square grid; number the cells of the grid along a counterclockwise square spiral, with the cells at (0,0) and (1,0) numbered 0, 1. Sequence lists the index numbers of the cells which are 0 or a prime in R.

The programs for A345437, there is no canonical definition to state claims against.
-/

/-! ## A345437.P8434084670369001224

`eq[1, A210442(A345440(n))]`
-/

namespace A345437.P8434084670369001224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A345440 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345437.P8434084670369001224

/-! ## A345437.P2933059560583674200

`eq[A000038(n), A051699(A345440(n))]`
-/

namespace A345437.P2933059560583674200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A345440 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345437.P2933059560583674200

/-! ## A345437.P1103563107988557838

`eq[A003415(A345440(n)), A057427(n)]`
-/

namespace A345437.P1103563107988557838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A345440 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345437.P1103563107988557838

/-! ## A345437.P16105050026876224477

`eq[A057428(n), A107393(A345440(n))]`
-/

namespace A345437.P16105050026876224477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A345440 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345437.P16105050026876224477

/-! ## A345437.P16277381935019514785

`eq[A003415(A345440(n)), A178334(n)]`
-/

namespace A345437.P16277381935019514785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A345440 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345437.P16277381935019514785

/-!
# A345439: Consider the Eisenstein integers x + y*omega, x and y rational integers, represented as the cells of an hexagonal grid; draw a hexagonal spiral as in A345435; a(n) is the norm x^2-x*y+y^2 of the Eisenstein integer in the n-th cell of the spiral.

The programs for A345439, there is no canonical definition to state claims against.
-/

/-! ## A345439.P2942889860422505783

`A004218(A248772(∑[A202150(n)]))`
-/

namespace A345439.P2942889860422505783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A248772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A345439.P2942889860422505783

/-! ## A345439.P7464644960105698851

`A213911(A040001(n)+A022087(n))`
-/

namespace A345439.P7464644960105698851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A040001 n + A022087 n).toNat

end

end A345439.P7464644960105698851

/-! ## A345439.P6410050656310412032

`A213911(or(A022087(n), A040001(n)))`
-/

namespace A345439.P6410050656310412032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.lor (A022087 n) (A040001 n)).toNat

end

end A345439.P6410050656310412032

/-! ## A345439.P17796789463257861651

`A213911(xor(A022087(n), A040001(n)))`
-/

namespace A345439.P17796789463257861651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.xor (A022087 n) (A040001 n)).toNat

end

end A345439.P17796789463257861651

/-! ## A345439.P13123013144995554152

`A000051(2*n+3)%A084558(A320924(3*n+4))`
-/

namespace A345439.P13123013144995554152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (2 * n + 3)) (A084558 (A320924 (3 * n + 4)).toNat)

end

end A345439.P13123013144995554152

/-!
# A345440: Represent the ring R = {x+y*sqrt(-2): x, y rational integers} by the cells centered at the points (x,y) of a square grid, as in A345437; number the cells of the grid along a counterclockwise square spiral, with the cells at (0,0) and (1,0) numbered 0, 1; then a(n) is the norm x^2+2*y^2 of the element of R occupying the n-th cell.

The programs for A345440, the canonical program `A345440.P8597352414636635888` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345440 has offset 0).

The definition of A345440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345440.P8597352414636635888

`A174344(n+1)²+2*A274923(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345440

/-- `A174344(n+1)²+2*A274923(n+1)²` -/
def P8597352414636635888.Spec : Prop :=
  ∀ n, P8597352414636635888.a n = A345440 n

theorem P8597352414636635888.correct : P8597352414636635888.Spec := by
  intro n
  simp only [A345440]

end A345440

/-! ## A345440.P15192860630432402234

`A336336(n+1)+A268038(n+1)²`
-/

namespace A345440.P15192860630432402234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A268038 (n + 1) ^ 2

end

end A345440.P15192860630432402234

namespace A345440

/-- `A336336(n+1)+A268038(n+1)²` -/
def P15192860630432402234.Spec : Prop :=
  ∀ n, P15192860630432402234.a n = A345440 n

end A345440

/-! ## A345440.P5907003894747482599

`A336336(n+1)+A274923(n+1)²`
-/

namespace A345440.P5907003894747482599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A274923 (n + 1) ^ 2

end

end A345440.P5907003894747482599

namespace A345440

/-- `A336336(n+1)+A274923(n+1)²` -/
def P5907003894747482599.Spec : Prop :=
  ∀ n, P5907003894747482599.a n = A345440 n

end A345440

/-! ## A345440.P4715515936643782646

`2*A336336(n+1)-A174344(n+1)²`
-/

namespace A345440.P4715515936643782646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336336 (n + 1) - A174344 (n + 1) ^ 2

end

end A345440.P4715515936643782646

namespace A345440

/-- `2*A336336(n+1)-A174344(n+1)²` -/
def P4715515936643782646.Spec : Prop :=
  ∀ n, P4715515936643782646.a n = A345440 n

end A345440

/-! ## A345440.P14366375294366379159

`A336336(n+1)+A174344(A020703(n+1))²`
-/

namespace A345440.P14366375294366379159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A174344 (A020703 (n + 1)).toNat ^ 2

end

end A345440.P14366375294366379159

namespace A345440

/-- `A336336(n+1)+A174344(A020703(n+1))²` -/
def P14366375294366379159.Spec : Prop :=
  ∀ n, P14366375294366379159.a n = A345440 n

end A345440

/-! ## A345440.P323716768618901423

`A336336(n+1)-A268038(n+1)*A274923(n+1)`
-/

namespace A345440.P323716768618901423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) - A268038 (n + 1) * A274923 (n + 1)

end

end A345440.P323716768618901423

namespace A345440

/-- `A336336(n+1)-A268038(n+1)*A274923(n+1)` -/
def P323716768618901423.Spec : Prop :=
  ∀ n, P323716768618901423.a n = A345440 n

end A345440

/-! ## A345440.P845115676847759381

`A336336(n+1)+A174344(A090915(n+1))²`
-/

namespace A345440.P845115676847759381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A174344 (A090915 (n + 1)).toNat ^ 2

end

end A345440.P845115676847759381

namespace A345440

/-- `A336336(n+1)+A174344(A090915(n+1))²` -/
def P845115676847759381.Spec : Prop :=
  ∀ n, P845115676847759381.a n = A345440 n

end A345440

/-! ## A345440.P8436969777610016611

`A336336(n+1)+A174344(A090925(n+1))²`
-/

namespace A345440.P8436969777610016611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A174344 (A090925 (n + 1)).toNat ^ 2

end

end A345440.P8436969777610016611

namespace A345440

/-- `A336336(n+1)+A174344(A090925(n+1))²` -/
def P8436969777610016611.Spec : Prop :=
  ∀ n, P8436969777610016611.a n = A345440 n

end A345440

/-! ## A345440.P15138940680057886464

`A336336(n+1)+A174344(A090929(n+1))²`
-/

namespace A345440.P15138940680057886464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A174344 (A090929 (n + 1)).toNat ^ 2

end

end A345440.P15138940680057886464

namespace A345440

/-- `A336336(n+1)+A174344(A090929(n+1))²` -/
def P15138940680057886464.Spec : Prop :=
  ∀ n, P15138940680057886464.a n = A345440 n

end A345440

/-!
# A345441: Numerators of irregular triangle of fractions arising from a problem of projecting into Hilbert space.

The programs for A345441, there is no canonical definition to state claims against.
-/

/-! ## A345441.P16280067410063327674

`A039505(A134602(2*(n+1)))%A365381(n)`
-/

namespace A345441.P16280067410063327674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039505 (A134602 (2 * (n + 1))).toNat) (A365381 n)

end

end A345441.P16280067410063327674

/-! ## A345441.P10261669219831592677

`A330959(A126286(n+2))`
-/

namespace A345441.P10261669219831592677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 (A126286 (n + 2)).toNat

end

end A345441.P10261669219831592677

/-! ## A345441.P17363735280789947274

`A022500(A365381(n))%4`
-/

namespace A345441.P17363735280789947274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022500 (A365381 n).toNat) 4

end

end A345441.P17363735280789947274

/-! ## A345441.P11869822147930229465

`A338630(A232433(n+1)+1)`
-/

namespace A345441.P11869822147930229465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338630 (A232433 (n + 1) + 1).toNat

end

end A345441.P11869822147930229465

/-! ## A345441.P16650421027746217434

`A193140(2*A008784(n+2)+2)`
-/

namespace A345441.P16650421027746217434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193140 (2 * A008784 (n + 2) + 2).toNat

end

end A345441.P16650421027746217434

/-!
# A345442: Denominators of irregular triangle of fractions arising from a problem of projecting into Hilbert space.

The programs for A345442, there is no canonical definition to state claims against.
-/

/-! ## A345442.P6518591020481828402

`gcd(2^ceil(n/2), A000578(A335456(n)))`
-/

namespace A345442.P6518591020481828402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))) (A000578 (A335456 n).toNat)

end

end A345442.P6518591020481828402

/-!
# A345443: a(n) = smallest m such that for every red-blue edge-coloring of the graph K_{m,m} there exists either a red 4-cycle or a blue K_{1,n}.

The programs for A345443, there is no canonical definition to state claims against.
-/

/-! ## A345443.P1159542702834243218

`floor(∑[ratio[∏{p}[n, #]+n]])`
-/

namespace A345443.P1159542702834243218
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p + n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A345443.P1159542702834243218

/-! ## A345443.P8769754579105596831

`comp[Δ[floor(π^(n/2))]]+char[n²]`
-/

namespace A345443.P8769754579105596831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ ((n : ℚ) / 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (if ∃ j, f3 j = n then 1 else 0)

end

end A345443.P8769754579105596831

/-! ## A345443.P9080169589405249848

`A001462(∑[A290735(n+3)])`
-/

namespace A345443.P9080169589405249848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290735 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345443.P9080169589405249848

/-! ## A345443.P2019016177198642766

`A002024(A329598(n+1)+∏{p}[n+1, #])`
-/

namespace A345443.P2019016177198642766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A329598 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A345443.P2019016177198642766

/-! ## A345443.P1520543269216499012

`xor(char[A184864(2*n+5)], A135668(n+1))`
-/

namespace A345443.P1520543269216499012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184864 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A135668 (n + 1))

end

end A345443.P1520543269216499012

/-!
# A345444: a(n) = A344005(2*n+1).

The programs for A345444, there is no canonical definition to state claims against.
-/

/-! ## A345444.P6445401394738321884

`A344005(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345444.P6445401394738321884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (2 * n + 1)

end

end A345444.P6445401394738321884

/-! ## A345444.P18370798422508661186

`A354876(2*n+1)-A354875(2*n+1)`
-/

namespace A345444.P18370798422508661186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (2 * n + 1) - A354875 (2 * n + 1)

end

end A345444.P18370798422508661186

/-! ## A345444.P7164724682250788310

`A354985(2*n+1)*A354987(2*n+1)`
-/

namespace A345444.P7164724682250788310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (2 * n + 1) * A354987 (2 * n + 1)

end

end A345444.P7164724682250788310

/-! ## A345444.P15410656007595074136

`A011772(A344758(2*n+1))`
-/

namespace A345444.P15410656007595074136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A344758 (2 * n + 1)).toNat

end

end A345444.P15410656007595074136

/-! ## A345444.P17333963153389356728

`A011772(A354998(2*n+1))`
-/

namespace A345444.P17333963153389356728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A354998 (2 * n + 1)).toNat

end

end A345444.P17333963153389356728

/-! ## A345444.P796196747779775731

`A011772(Δ[n²])`
-/

namespace A345444.P796196747779775731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A345444.P796196747779775731

/-! ## A345444.P18063240525937417155

`∑{d}[2*n+1, A344767(#)]`
-/

namespace A345444.P18063240525937417155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344767 d

end

end A345444.P18063240525937417155

/-! ## A345444.P13634786792701038391

`2*n+1-A344763(2*n+1)`
-/

namespace A345444.P13634786792701038391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A344763 (2 * n + 1)

end

end A345444.P13634786792701038391

/-! ## A345444.P14326870456644054803

`A000203(2*n+1)-A344765(2*n+1)`
-/

namespace A345444.P14326870456644054803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A344765 (2 * n + 1)

end

end A345444.P14326870456644054803

/-! ## A345444.P16251130289644617808

`A005187(2*n+1)-A344769(2*n+1)`
-/

namespace A345444.P16251130289644617808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (2 * n + 1) - A344769 (2 * n + 1)

end

end A345444.P16251130289644617808

/-! ## A345444.P4561882323072388786

`A343997(2*n+1)-A343999(2*n+1)`
-/

namespace A345444.P4561882323072388786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (2 * n + 1) - A343999 (2 * n + 1)

end

end A345444.P4561882323072388786

/-! ## A345444.P8658193049269928517

`A343997(2*n+1)-A354918(2*n+1)`
-/

namespace A345444.P8658193049269928517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343997 (2 * n + 1) - A354918 (2 * n + 1)

end

end A345444.P8658193049269928517

/-! ## A345444.P8288083883264275982

`A321366(Δ[n²])-1`
-/

namespace A345444.P8288083883264275982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A345444.P8288083883264275982

/-! ## A345444.P6498314268861107951

`floor(sqrt(A345988(2*n+1)))`
-/

namespace A345444.P6498314268861107951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A345988 (2 * n + 1))

end

end A345444.P6498314268861107951

/-! ## A345444.P11768141505671449363

`A081467(2*n+1)-(2*n+1)`
-/

namespace A345444.P11768141505671449363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081467 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A345444.P11768141505671449363

/-! ## A345444.P10977757228053413994

`2*n+1-A182665(2*n+1)`
-/

namespace A345444.P10977757228053413994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A182665 (2 * n + 1)

end

end A345444.P10977757228053413994

/-! ## A345444.P18193416982102092

`A023443(A321366(2*n+1))`
-/

namespace A345444.P18193416982102092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A321366 (2 * n + 1)).toNat

end

end A345444.P18193416982102092

/-! ## A345444.P17295013286684657502

`A000593(2*n+1)-A344765(2*n+1)`
-/

namespace A345444.P17295013286684657502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A344765 (2 * n + 1)

end

end A345444.P17295013286684657502

/-!
# A345445: a(n) = n^n - (n+1)!/2.

The programs for A345445, the canonical program `A345445.P7783534770498893941` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345445 has offset 1).

The definition of A345445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345445.P7783534770498893941

`(n+1)^(n+1)-(n+2)!/2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345445

/-- `(n+1)^(n+1)-(n+2)!/2` -/
def P7783534770498893941.Spec : Prop :=
  ∀ n, P7783534770498893941.a n = (A345445 (n + 1) : ℚ)

end A345445

/-! ## A345445.P3452797915660702706

`(n+1)^(n+1)-∏[n+2]/2`
-/

namespace A345445.P3452797915660702706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A345445.P3452797915660702706

namespace A345445

/-- `(n+1)^(n+1)-∏[n+2]/2` -/
def P3452797915660702706.Spec : Prop :=
  ∀ n, P3452797915660702706.a n = (A345445 (n + 1) : ℚ)

end A345445

/-! ## A345445.P1779749341187771183

`record[A245501(n)-A142071(n)]`
-/

namespace A345445.P1779749341187771183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n - A142071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345445.P1779749341187771183

namespace A345445

/-- `record[A245501(n)-A142071(n)]` -/
def P1779749341187771183.Spec : Prop :=
  ∀ n, P1779749341187771183.a n = A345445 (n + 1)

end A345445

/-! ## A345445.P13670537338971421073

`record[A245501(n)-A226874(n)]`
-/

namespace A345445.P13670537338971421073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n - A226874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345445.P13670537338971421073

namespace A345445

/-- `record[A245501(n)-A226874(n)]` -/
def P13670537338971421073.Spec : Prop :=
  ∀ n, P13670537338971421073.a n = A345445 (n + 1)

end A345445

/-! ## A345445.P11108360787833851852

`Δ[∑[n^n]-record[A117396(n)]]`
-/

namespace A345445.P11108360787833851852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345445.P11108360787833851852

namespace A345445

/-- `Δ[∑[n^n]-record[A117396(n)]]` -/
def P11108360787833851852.Spec : Prop :=
  ∀ n, P11108360787833851852.a n = A345445 (n + 1)

end A345445

/-!
# A345446: Number of semiprime divisors of n whose square does not divide n.

The programs for A345446, the canonical program `A345446.P4602347465364053125` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345446 has offset 1).

The definition of A345446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345446.P4602347465364053125

`A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A345446

/-- `A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)])` -/
def P4602347465364053125.Spec : Prop :=
  ∀ n, P4602347465364053125.a n = A345446 (n + 1)

theorem P4602347465364053125.correct : P4602347465364053125.Spec := by
  intro n
  simp only [A345446, Nat.add_sub_cancel]

end A345446

/-! ## A345446.P18083850920576301736

`A086971(n+1)-A086971(A000188(n+1))`
-/

namespace A345446.P18083850920576301736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A086971 (A000188 (n + 1)).toNat

end

end A345446.P18083850920576301736

namespace A345446

/-- `A086971(n+1)-A086971(A000188(n+1))` -/
def P18083850920576301736.Spec : Prop :=
  ∀ n, P18083850920576301736.a n = A345446 (n + 1)

end A345446

/-! ## A345446.P6874697081068456205

`A345450(A046523(n+1))/4`
-/

namespace A345446.P6874697081068456205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345450 (A046523 (n + 1)).toNat : ℚ) / 4

end

end A345446.P6874697081068456205

namespace A345446

/-- `A345450(A046523(n+1))/4` -/
def P6874697081068456205.Spec : Prop :=
  ∀ n, P6874697081068456205.a n = (A345446 (n + 1) : ℚ)

end A345446

/-! ## A345446.P5707340932895422408

`A345450(A071364(n+1))/4`
-/

namespace A345446.P5707340932895422408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345450 (A071364 (n + 1)).toNat : ℚ) / 4

end

end A345446.P5707340932895422408

namespace A345446

/-- `A345450(A071364(n+1))/4` -/
def P5707340932895422408.Spec : Prop :=
  ∀ n, P5707340932895422408.a n = (A345446 (n + 1) : ℚ)

end A345446

/-! ## A345446.P12464589327580695507

`A345450(A097272(n+1))/4`
-/

namespace A345446.P12464589327580695507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345450 (A097272 (n + 1)).toNat : ℚ) / 4

end

end A345446.P12464589327580695507

namespace A345446

/-- `A345450(A097272(n+1))/4` -/
def P12464589327580695507.Spec : Prop :=
  ∀ n, P12464589327580695507.a n = (A345446 (n + 1) : ℚ)

end A345446

/-! ## A345446.P6300862770521855708

`A002265(A345450(A097272(n+1)))`
-/

namespace A345446.P6300862770521855708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A345450 (A097272 (n + 1)).toNat).toNat

end

end A345446.P6300862770521855708

namespace A345446

/-- `A002265(A345450(A097272(n+1)))` -/
def P6300862770521855708.Spec : Prop :=
  ∀ n, P6300862770521855708.a n = A345446 (n + 1)

end A345446

/-! ## A345446.P6001451226194805441

`A345450(n+1)/4`
-/

namespace A345446.P6001451226194805441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345450 (n + 1) : ℚ) / 4

end

end A345446.P6001451226194805441

namespace A345446

/-- `A345450(n+1)/4` -/
def P6001451226194805441.Spec : Prop :=
  ∀ n, P6001451226194805441.a n = (A345446 (n + 1) : ℚ)

end A345446

/-! ## A345446.P3248552833072827078

`A002265(A345450(n+1))`
-/

namespace A345446.P3248552833072827078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A345450 (n + 1)).toNat

end

end A345446.P3248552833072827078

namespace A345446

/-- `A002265(A345450(n+1))` -/
def P3248552833072827078.Spec : Prop :=
  ∀ n, P3248552833072827078.a n = A345446 (n + 1)

end A345446

/-!
# A345447: Numbers of the form i+j+2*i*j and 2+i+j+2*i*j for i,j >= 1.

The programs for A345447, the canonical program `A345447.P7254054826736061183` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345447 has offset 1).

The definition of A345447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345447.P16831120493492465212

`comp[A047847(n+1)-1]+3`
-/

namespace A345447.P16831120493492465212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047847 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A345447.P16831120493492465212

namespace A345447

/-- `comp[A047847(n+1)-1]+3` -/
def P16831120493492465212.Spec : Prop :=
  ∀ n, (P16831120493492465212.a n : ℤ) = A345447 (n + 1)

end A345447

/-! ## A345447.P4213507232245785487

`comp[floor(A067830(n+1)/2)-2]+2`
-/

namespace A345447.P4213507232245785487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067830 (n + 1) : ℚ) / 2⌋ - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A345447.P4213507232245785487

namespace A345447

/-- `comp[floor(A067830(n+1)/2)-2]+2` -/
def P4213507232245785487.Spec : Prop :=
  ∀ n, (P4213507232245785487.a n : ℤ) = A345447 (n + 1)

end A345447

/-! ## A345447.P17819639009124921372

`record[A322809(n+4)%A322809(n+9)]`
-/

namespace A345447.P17819639009124921372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322809 (n + 4)) (A322809 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345447.P17819639009124921372

namespace A345447

/-- `record[A322809(n+4)%A322809(n+9)]` -/
def P17819639009124921372.Spec : Prop :=
  ∀ n, P17819639009124921372.a n = A345447 (n + 1)

end A345447

/-! ## A345447.P7254054826736061183

`∪[A047845(n+2)+2, A047845(n+2)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345447

/-- `∪[A047845(n+2)+2, A047845(n+2)]` -/
def P7254054826736061183.Spec : Prop :=
  ∀ n, (P7254054826736061183.a n : ℤ) = A345447 (n + 1)

theorem P7254054826736061183.correct : P7254054826736061183.Spec := by
  intro n
  simp only [A345447, Nat.add_sub_cancel]

end A345447

/-! ## A345447.P3006018516641223882

`lt[A208645(2*n+1), 3]+3`
-/

namespace A345447.P3006018516641223882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A345447.P3006018516641223882

namespace A345447

/-- `lt[A208645(2*n+1), 3]+3` -/
def P3006018516641223882.Spec : Prop :=
  ∀ n, (P3006018516641223882.a n : ℤ) = A345447 (n + 1)

end A345447

/-! ## A345447.P7298413804047238414

`lt[2, A082467(2*n+7)]+4`
-/

namespace A345447.P7298413804047238414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (2 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A345447.P7298413804047238414

namespace A345447

/-- `lt[2, A082467(2*n+7)]+4` -/
def P7298413804047238414.Spec : Prop :=
  ∀ n, (P7298413804047238414.a n : ℤ) = A345447 (n + 1)

end A345447

/-! ## A345447.P4534333292153178473

`eq[C(2, n), A275768(abs(1-2*n))]`
-/

namespace A345447.P4534333292153178473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345447.P4534333292153178473

namespace A345447

/-- `eq[C(2, n), A275768(abs(1-2*n))]` -/
def P4534333292153178473.Spec : Prop :=
  ∀ n, (P4534333292153178473.a n : ℤ) = A345447 (n + 1)

end A345447

/-! ## A345447.P9747373062034015782

`record[A275768(n+7)+A152271(n+7)]`
-/

namespace A345447.P9747373062034015782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (n + 7) + A152271 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345447.P9747373062034015782

namespace A345447

/-- `record[A275768(n+7)+A152271(n+7)]` -/
def P9747373062034015782.Spec : Prop :=
  ∀ n, P9747373062034015782.a n = A345447 (n + 1)

end A345447

/-! ## A345447.P8320051652894039950

`lt[4, A000005(A276704(n+1))]`
-/

namespace A345447.P8320051652894039950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276704 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345447.P8320051652894039950

namespace A345447

/-- `lt[4, A000005(A276704(n+1))]` -/
def P8320051652894039950.Spec : Prop :=
  ∀ n, (P8320051652894039950.a n : ℤ) = A345447 (n + 1)

end A345447

/-!
# A345448: Number of tilings of a 2 X n rectangle with dominoes and long L-shaped 4-minoes.

The programs for A345448, the canonical program `A345448.P4938330505966610523` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345448 has offset 0).

The definition of A345448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345448.P4938330505966610523

`a(n-1)+a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345448

/-- `a(n-1)+a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P4938330505966610523.Spec : Prop :=
  ∀ n, (P4938330505966610523.a n : ℤ) = A345448 n

theorem P4938330505966610523.correct : P4938330505966610523.Spec := by
  intro n
  simp only [A345448]

end A345448

/-! ## A345448.P15964269062686078808

`ogf(-1/(-1+x+x^2+4x^3+2x^4))`
-/

namespace A345448.P15964269062686078808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, -4, -2] n

end

end A345448.P15964269062686078808

namespace A345448

/-- `ogf(-1/(-1+x+x^2+4x^3+2x^4))` -/
def P15964269062686078808.Spec : Prop :=
  ∀ n, P15964269062686078808.a n = A345448 n

end A345448

/-! ## A345448.P11705488612251437478

`A008621(lcm(1-n, A137042(n+1)))`
-/

namespace A345448.P11705488612251437478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lcm (1 - (n : ℤ)) (A137042 (n + 1)))

end

end A345448.P11705488612251437478

namespace A345448

/-- `A008621(lcm(1-n, A137042(n+1)))` -/
def P11705488612251437478.Spec : Prop :=
  ∀ n, P11705488612251437478.a n = A345448 n

end A345448

/-! ## A345448.P13063771852811543113

`A046155(or(A150087(n), A253145(n)))`
-/

namespace A345448.P13063771852811543113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor (A150087 n) (A253145 n)).toNat

end

end A345448.P13063771852811543113

namespace A345448

/-- `A046155(or(A150087(n), A253145(n)))` -/
def P13063771852811543113.Spec : Prop :=
  ∀ n, P13063771852811543113.a n = A345448 n

end A345448

/-!
# A345450: Sum of the semiprime divisors of n whose square does not divide n.

The programs for A345450, there is no canonical definition to state claims against.
-/

/-! ## A345450.P6136934826037154699

`4*A345446(n+1)`
-/

namespace A345450.P6136934826037154699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A345446 (n + 1)

end

end A345450.P6136934826037154699

/-! ## A345450.P2578966754490352509

`4*(A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)]))`
-/

namespace A345450.P2578966754490352509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A086971 (n + 1) - A086971 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A345450.P2578966754490352509

/-! ## A345450.P13720149776734336567

`4*(A007875(n+1)-A117229(A000188(n+1)))`
-/

namespace A345450.P13720149776734336567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007875 (n + 1) - A117229 (A000188 (n + 1)).toNat)

end

end A345450.P13720149776734336567

/-! ## A345450.P7939184747005393154

`A001222(A203025(∏{e}[n+1, C(#+6, 6)])²)`
-/

namespace A345450.P7939184747005393154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A203025 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 6) 6) ^ 2).toNat

end

end A345450.P7939184747005393154

/-! ## A345450.P16806334133157582238

`A356242(A342086(n+1)²²)`
-/

namespace A345450.P16806334133157582238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 ((A342086 (n + 1) ^ 2) ^ 2).toNat

end

end A345450.P16806334133157582238

/-!
# A345451: Sum of the unitary divisors of n whose square does not divide n.

The programs for A345451, the canonical program `A345451.P7254326500789221208` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345451 has offset 1).

The definition of A345451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345451.P7254326500789221208

`A034448(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A345451

/-- `A034448(n+1)-1` -/
def P7254326500789221208.Spec : Prop :=
  ∀ n, P7254326500789221208.a n = A345451 (n + 1)

theorem P7254326500789221208.correct : P7254326500789221208.Spec := by
  intro n
  simp only [A345451, Nat.add_sub_cancel]

end A345451

/-! ## A345451.P3754426577018387509

`A034460(n+1)+n`
-/

namespace A345451.P3754426577018387509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (n : ℤ)

end

end A345451.P3754426577018387509

namespace A345451

/-- `A034460(n+1)+n` -/
def P3754426577018387509.Spec : Prop :=
  ∀ n, P3754426577018387509.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P11846925835688717146

`∑{d}[n+1, A254503(#)]-1`
-/

namespace A345451.P11846925835688717146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d - 1

end

end A345451.P11846925835688717146

namespace A345451

/-- `∑{d}[n+1, A254503(#)]-1` -/
def P11846925835688717146.Spec : Prop :=
  ∀ n, P11846925835688717146.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P1141145236153745682

`A129468(n+1)+Δ[n²]`
-/

namespace A345451.P1141145236153745682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A345451.P1141145236153745682

namespace A345451

/-- `A129468(n+1)+Δ[n²]` -/
def P1141145236153745682.Spec : Prop :=
  ∀ n, P1141145236153745682.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P5254080272365731033

`A064971(n+1)/(n+1)-1`
-/

namespace A345451.P5254080272365731033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A345451.P5254080272365731033

namespace A345451

/-- `A064971(n+1)/(n+1)-1` -/
def P5254080272365731033.Spec : Prop :=
  ∀ n, P5254080272365731033.a n = (A345451 (n + 1) : ℚ)

end A345451

/-! ## A345451.P17611020419477629290

`A073757(n+1)+A063085(n+1)`
-/

namespace A345451.P17611020419477629290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + A063085 (n + 1)

end

end A345451.P17611020419477629290

namespace A345451

/-- `A073757(n+1)+A063085(n+1)` -/
def P17611020419477629290.Spec : Prop :=
  ∀ n, P17611020419477629290.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P6358853146372133549

`A109606(n+1)+A098189(n+1)`
-/

namespace A345451.P6358853146372133549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A098189 (n + 1)

end

end A345451.P6358853146372133549

namespace A345451

/-- `A109606(n+1)+A098189(n+1)` -/
def P6358853146372133549.Spec : Prop :=
  ∀ n, P6358853146372133549.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P44820203397419596

`A064212(n+1)-A088580(n+1)`
-/

namespace A345451.P44820203397419596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A088580 (n + 1)

end

end A345451.P44820203397419596

namespace A345451

/-- `A064212(n+1)-A088580(n+1)` -/
def P44820203397419596.Spec : Prop :=
  ∀ n, P44820203397419596.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P8645369360877277591

`A063919(n+1)+n-A000007(n)`
-/

namespace A345451.P8645369360877277591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) + ((n : ℤ) - A000007 n)

end

end A345451.P8645369360877277591

namespace A345451

/-- `A063919(n+1)+n-A000007(n)` -/
def P8645369360877277591.Spec : Prop :=
  ∀ n, P8645369360877277591.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P17518360307340206906

`(A063919(n+1)+n)*A057427(n)`
-/

namespace A345451.P17518360307340206906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063919 (n + 1) + (n : ℤ)) * A057427 n

end

end A345451.P17518360307340206906

namespace A345451

/-- `(A063919(n+1)+n)*A057427(n)` -/
def P17518360307340206906.Spec : Prop :=
  ∀ n, P17518360307340206906.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P5247758844246381665

`n-A057428(n)*A063919(n+1)`
-/

namespace A345451.P5247758844246381665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057428 n * A063919 (n + 1)

end

end A345451.P5247758844246381665

namespace A345451

/-- `n-A057428(n)*A063919(n+1)` -/
def P5247758844246381665.Spec : Prop :=
  ∀ n, P5247758844246381665.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P10130024067823982406

`and(A063919(n+1), A134824(n))+n`
-/

namespace A345451.P10130024067823982406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063919 (n + 1)) (A134824 n) + (n : ℤ)

end

end A345451.P10130024067823982406

namespace A345451

/-- `and(A063919(n+1), A134824(n))+n` -/
def P10130024067823982406.Spec : Prop :=
  ∀ n, P10130024067823982406.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P1827452195712384238

`A000203(n+1)-(A048146(n+1)+1)`
-/

namespace A345451.P1827452195712384238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A048146 (n + 1) + 1)

end

end A345451.P1827452195712384238

namespace A345451

/-- `A000203(n+1)-(A048146(n+1)+1)` -/
def P1827452195712384238.Spec : Prop :=
  ∀ n, P1827452195712384238.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P4664527268478237459

`A000010(n+1)+A098189(n+1)-1`
-/

namespace A345451.P4664527268478237459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A098189 (n + 1) - 1)

end

end A345451.P4664527268478237459

namespace A345451

/-- `A000010(n+1)+A098189(n+1)-1` -/
def P4664527268478237459.Spec : Prop :=
  ∀ n, P4664527268478237459.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P13322527233227470628

`A348733(n+1)*A348735(n+1)-1`
-/

namespace A345451.P13322527233227470628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (n + 1) * A348735 (n + 1) - 1

end

end A345451.P13322527233227470628

namespace A345451

/-- `A348733(n+1)*A348735(n+1)-1` -/
def P13322527233227470628.Spec : Prop :=
  ∀ n, P13322527233227470628.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P719460144013803543

`A001478(n+1)+A034448(n+1)+n`
-/

namespace A345451.P719460144013803543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A034448 (n + 1) + (n : ℤ))

end

end A345451.P719460144013803543

namespace A345451

/-- `A001478(n+1)+A034448(n+1)+n` -/
def P719460144013803543.Spec : Prop :=
  ∀ n, P719460144013803543.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P6463586020693905581

`A001065(n+1)-A048146(n+1)+n`
-/

namespace A345451.P6463586020693905581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A048146 (n + 1) + (n : ℤ)

end

end A345451.P6463586020693905581

namespace A345451

/-- `A001065(n+1)-A048146(n+1)+n` -/
def P6463586020693905581.Spec : Prop :=
  ∀ n, P6463586020693905581.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P2052319700272576754

`A074400(n+1)/2-(A048146(n+1)+1)`
-/

namespace A345451.P2052319700272576754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A048146 (n + 1) + 1 : ℚ)

end

end A345451.P2052319700272576754

namespace A345451

/-- `A074400(n+1)/2-(A048146(n+1)+1)` -/
def P2052319700272576754.Spec : Prop :=
  ∀ n, P2052319700272576754.a n = (A345451 (n + 1) : ℚ)

end A345451

/-! ## A345451.P12409385690413077684

`2*(n+1)-A033879(n+1)-(A048146(n+1)+1)`
-/

namespace A345451.P12409385690413077684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - (A048146 (n + 1) + 1)

end

end A345451.P12409385690413077684

namespace A345451

/-- `2*(n+1)-A033879(n+1)-(A048146(n+1)+1)` -/
def P12409385690413077684.Spec : Prop :=
  ∀ n, P12409385690413077684.a n = A345451 (n + 1)

end A345451

/-! ## A345451.P11131028694128597234

`A082052(n+1)+A050449(n+1)-(A048146(n+1)+1)`
-/

namespace A345451.P11131028694128597234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) + A050449 (n + 1) - (A048146 (n + 1) + 1)

end

end A345451.P11131028694128597234

namespace A345451

/-- `A082052(n+1)+A050449(n+1)-(A048146(n+1)+1)` -/
def P11131028694128597234.Spec : Prop :=
  ∀ n, P11131028694128597234.a n = A345451 (n + 1)

end A345451

/-!
# A345452: Positive integers with an even number of prime factors (counting repetitions) that sum to an even number.

The programs for A345452, the canonical program `A345452.P11898293125181713833` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345452 has offset 1).

The definition of A345452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345452.P6762956603181970257

`lt[0, A353374(n+1)]+1`
-/

namespace A345452.P6762956603181970257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A345452.P6762956603181970257

namespace A345452

/-- `lt[0, A353374(n+1)]+1` -/
def P6762956603181970257.Spec : Prop :=
  ∀ n, (P6762956603181970257.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P4140977062440323241

`lt[0, A353377(n+1)]+1`
-/

namespace A345452.P4140977062440323241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A345452.P4140977062440323241

namespace A345452

/-- `lt[0, A353377(n+1)]+1` -/
def P4140977062440323241.Spec : Prop :=
  ∀ n, (P4140977062440323241.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P10880439629773866080

`eq[1, A353374(abs(1-n)+1)]`
-/

namespace A345452.P10880439629773866080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345452.P10880439629773866080

namespace A345452

/-- `eq[1, A353374(abs(1-n)+1)]` -/
def P10880439629773866080.Spec : Prop :=
  ∀ n, (P10880439629773866080.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P1630535808976355823

`lt[0, A353377(n-a(2%n))]` with `a(0)=0`
-/

namespace A345452.P1630535808976355823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A353377 ((n : ℤ) - f2 (2 % n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345452.P1630535808976355823

namespace A345452

/-- `lt[0, A353377(n-a(2%n))]` -/
def P1630535808976355823.Spec : Prop :=
  ∀ n, (P1630535808976355823.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P15129409421568763753

`filter[A373375(n+1), A035263(#)]`
-/

namespace A345452.P15129409421568763753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A345452.P15129409421568763753

namespace A345452

/-- `filter[A373375(n+1), A035263(#)]` -/
def P15129409421568763753.Spec : Prop :=
  ∀ n, P15129409421568763753.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P13522027727494041417

`filter[A373375(n+1), A065043(#)]`
-/

namespace A345452.P13522027727494041417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A345452.P13522027727494041417

namespace A345452

/-- `filter[A373375(n+1), A065043(#)]` -/
def P13522027727494041417.Spec : Prop :=
  ∀ n, P13522027727494041417.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P9753807031541454229

`filter[A373375(n+1), A353374(#)]`
-/

namespace A345452.P9753807031541454229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A345452.P9753807031541454229

namespace A345452

/-- `filter[A373375(n+1), A353374(#)]` -/
def P9753807031541454229.Spec : Prop :=
  ∀ n, P9753807031541454229.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P9950007701963672323

`filter[A373375(n+1), A368997(#)]`
-/

namespace A345452.P9950007701963672323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A345452.P9950007701963672323

namespace A345452

/-- `filter[A373375(n+1), A368997(#)]` -/
def P9950007701963672323.Spec : Prop :=
  ∀ n, P9950007701963672323.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P17326055041238168240

`∩[A368998(n+1), A373375(n+1)]`
-/

namespace A345452.P17326055041238168240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345452.P17326055041238168240

namespace A345452

/-- `∩[A368998(n+1), A373375(n+1)]` -/
def P17326055041238168240.Spec : Prop :=
  ∀ n, (P17326055041238168240.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P12490884331596770439

`filter[A368998(n+1), A065043(#)]`
-/

namespace A345452.P12490884331596770439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A345452.P12490884331596770439

namespace A345452

/-- `filter[A368998(n+1), A065043(#)]` -/
def P12490884331596770439.Spec : Prop :=
  ∀ n, P12490884331596770439.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P9054021445999430070

`filter[A368998(n+1), A353374(#)]`
-/

namespace A345452.P9054021445999430070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A345452.P9054021445999430070

namespace A345452

/-- `filter[A368998(n+1), A353374(#)]` -/
def P9054021445999430070.Spec : Prop :=
  ∀ n, P9054021445999430070.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P11898293125181713833

`filter[A368998(n+1), A356163(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A345452

/-- `filter[A368998(n+1), A356163(#)]` -/
def P11898293125181713833.Spec : Prop :=
  ∀ n, P11898293125181713833.a n = A345452 (n + 1)

theorem P11898293125181713833.correct : P11898293125181713833.Spec := by
  intro n
  simp only [A345452, Nat.add_sub_cancel]

end A345452

/-! ## A345452.P5794952140690092915

`filter[A368998(n+1), A373374(#)]`
-/

namespace A345452.P5794952140690092915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A345452.P5794952140690092915

namespace A345452

/-- `filter[A368998(n+1), A373374(#)]` -/
def P5794952140690092915.Spec : Prop :=
  ∀ n, P5794952140690092915.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P15040890541605791885

`filter[A036349(n+1), A035263(#)]`
-/

namespace A345452.P15040890541605791885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A345452.P15040890541605791885

namespace A345452

/-- `filter[A036349(n+1), A035263(#)]` -/
def P15040890541605791885.Spec : Prop :=
  ∀ n, P15040890541605791885.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P1386405046594173780

`filter[A036349(n+1), A065043(#)]`
-/

namespace A345452.P1386405046594173780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A345452.P1386405046594173780

namespace A345452

/-- `filter[A036349(n+1), A065043(#)]` -/
def P1386405046594173780.Spec : Prop :=
  ∀ n, P1386405046594173780.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P10912990330993337771

`filter[A036349(n+1), A353374(#)]`
-/

namespace A345452.P10912990330993337771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A345452.P10912990330993337771

namespace A345452

/-- `filter[A036349(n+1), A353374(#)]` -/
def P10912990330993337771.Spec : Prop :=
  ∀ n, P10912990330993337771.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P9769422920237771013

`filter[A036349(n+1), A368997(#)]`
-/

namespace A345452.P9769422920237771013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A345452.P9769422920237771013

namespace A345452

/-- `filter[A036349(n+1), A368997(#)]` -/
def P9769422920237771013.Spec : Prop :=
  ∀ n, P9769422920237771013.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P16525645655621351205

`∩[A036349(n+1), A368998(n+1)]`
-/

namespace A345452.P16525645655621351205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345452.P16525645655621351205

namespace A345452

/-- `∩[A036349(n+1), A368998(n+1)]` -/
def P16525645655621351205.Spec : Prop :=
  ∀ n, (P16525645655621351205.a n : ℤ) = A345452 (n + 1)

end A345452

/-! ## A345452.P1016236532419165051

`filter[A235992(n+2), A353374(#)]`
-/

namespace A345452.P1016236532419165051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A345452.P1016236532419165051

namespace A345452

/-- `filter[A235992(n+2), A353374(#)]` -/
def P1016236532419165051.Spec : Prop :=
  ∀ n, P1016236532419165051.a n = A345452 (n + 1)

end A345452

/-! ## A345452.P10957257181557492516

`filter[A028260(n+1), A035263(#)]`
-/

namespace A345452.P10957257181557492516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A345452.P10957257181557492516

namespace A345452

/-- `filter[A028260(n+1), A035263(#)]` -/
def P10957257181557492516.Spec : Prop :=
  ∀ n, P10957257181557492516.a n = A345452 (n + 1)

end A345452

/-!
# A345455: a(n) = Sum_{k=0..n} binomial(5*n+1,5*k).

The programs for A345455, the canonical program `A345455.P15574942020257480669` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345455 has offset 0).

The definition of A345455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345455.P15574942020257480669

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=7, a(2)=474`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345455

/-- `21*a(n-1)+353*a(n-2)-32*a(n-3)` -/
def P15574942020257480669.Spec : Prop :=
  ∀ n, P15574942020257480669.a n = A345455 n

theorem P15574942020257480669.correct : P15574942020257480669.Spec := by
  intro n
  simp only [A345455]

end A345455

/-! ## A345455.P7844250156046460586

`A139398(5*n+1)`
-/

namespace A345455.P7844250156046460586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (5 * n + 1)

end

end A345455.P7844250156046460586

namespace A345455

/-- `A139398(5*n+1)` -/
def P7844250156046460586.Spec : Prop :=
  ∀ n, P7844250156046460586.a n = A345455 n

end A345455

/-! ## A345455.P6599824837931268802

`A052964(5*n)`
-/

namespace A345455.P6599824837931268802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (5 * n)

end

end A345455.P6599824837931268802

namespace A345455

/-- `A052964(5*n)` -/
def P6599824837931268802.Spec : Prop :=
  ∀ n, P6599824837931268802.a n = A345455 n

end A345455

/-! ## A345455.P10812047590528055958

`A133476(5*n+1)`
-/

namespace A345455.P10812047590528055958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (5 * n + 1)

end

end A345455.P10812047590528055958

namespace A345455

/-- `A133476(5*n+1)` -/
def P10812047590528055958.Spec : Prop :=
  ∀ n, P10812047590528055958.a n = A345455 n

end A345455

/-! ## A345455.P1231864456391134529

`record[gcd(A138112(n+1), A139398(n))]`
-/

namespace A345455.P1231864456391134529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138112 (n + 1)) (A139398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345455.P1231864456391134529

namespace A345455

/-- `record[gcd(A138112(n+1), A139398(n))]` -/
def P1231864456391134529.Spec : Prop :=
  ∀ n, (P1231864456391134529.a n : ℤ) = A345455 n

end A345455

/-! ## A345455.P11224896845041752794

`record[A139398(and(n, A105385(n+1)))]`
-/

namespace A345455.P11224896845041752794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (Int.land (n : ℤ) (A105385 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345455.P11224896845041752794

namespace A345455

/-- `record[A139398(and(n, A105385(n+1)))]` -/
def P11224896845041752794.Spec : Prop :=
  ∀ n, P11224896845041752794.a n = A345455 n

end A345455

/-! ## A345455.P11242919103928774420

`record[and(A105385(2*n), A139398(n))]`
-/

namespace A345455.P11242919103928774420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105385 (2 * n)) (A139398 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345455.P11242919103928774420

namespace A345455

/-- `record[and(A105385(2*n), A139398(n))]` -/
def P11242919103928774420.Spec : Prop :=
  ∀ n, P11242919103928774420.a n = A345455 n

end A345455

/-!
# A345456: a(n) = Sum_{k=0..n} binomial(5*n+2,5*k).

The programs for A345456, the canonical program `A345456.P14607025509921182894` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345456 has offset 0).

The definition of A345456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345456.P14607025509921182894

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=22, a(2)=859`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345456

/-- `21*a(n-1)+353*a(n-2)-32*a(n-3)` -/
def P14607025509921182894.Spec : Prop :=
  ∀ n, P14607025509921182894.a n = A345456 n

theorem P14607025509921182894.correct : P14607025509921182894.Spec := by
  intro n
  simp only [A345456]

end A345456

/-! ## A345456.P5888198487401162583

`A139398(5*n+2)`
-/

namespace A345456.P5888198487401162583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (5 * n + 2)

end

end A345456.P5888198487401162583

namespace A345456

/-- `A139398(5*n+2)` -/
def P5888198487401162583.Spec : Prop :=
  ∀ n, P5888198487401162583.a n = A345456 n

end A345456

/-! ## A345456.P11051421249280511487

`A139714(5*n+2)`
-/

namespace A345456.P11051421249280511487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (5 * n + 2)

end

end A345456.P11051421249280511487

namespace A345456

/-- `A139714(5*n+2)` -/
def P11051421249280511487.Spec : Prop :=
  ∀ n, P11051421249280511487.a n = A345456 n

end A345456

/-! ## A345456.P8169696030973409694

`abs(A084179(A016861(n)))`
-/

namespace A345456.P8169696030973409694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (A016861 n).toNat|

end

end A345456.P8169696030973409694

namespace A345456

/-- `abs(A084179(A016861(n)))` -/
def P8169696030973409694.Spec : Prop :=
  ∀ n, P8169696030973409694.a n = A345456 n

end A345456

/-! ## A345456.P7394444546777207954

`abs(A084179(Δ[A192136(n)]))`
-/

namespace A345456.P7394444546777207954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (f1 (n + 1) - f1 n).toNat|

end

end A345456.P7394444546777207954

namespace A345456

/-- `abs(A084179(Δ[A192136(n)]))` -/
def P7394444546777207954.Spec : Prop :=
  ∀ n, P7394444546777207954.a n = A345456 n

end A345456

/-! ## A345456.P4640945508719520225

`record[gcd(A138112(n), A139398(n))]`
-/

namespace A345456.P4640945508719520225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138112 n) (A139398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345456.P4640945508719520225

namespace A345456

/-- `record[gcd(A138112(n), A139398(n))]` -/
def P4640945508719520225.Spec : Prop :=
  ∀ n, (P4640945508719520225.a n : ℤ) = A345456 n

end A345456

/-! ## A345456.P8783966081079564203

`record[A139398(and(n, A105385(n)))]`
-/

namespace A345456.P8783966081079564203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (Int.land (n : ℤ) (A105385 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345456.P8783966081079564203

namespace A345456

/-- `record[A139398(and(n, A105385(n)))]` -/
def P8783966081079564203.Spec : Prop :=
  ∀ n, P8783966081079564203.a n = A345456 n

end A345456

/-!
# A345457: a(n) = Sum_{k=0..n} binomial(5*n+3,5*k).

The programs for A345457, the canonical program `A345457.P2480228306331378271` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345457 has offset 0).

The definition of A345457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345457.P2480228306331378271

`A139398(5*n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345457

/-- `A139398(5*n+3)` -/
def P2480228306331378271.Spec : Prop :=
  ∀ n, P2480228306331378271.a n = A345457 n

theorem P2480228306331378271.correct : P2480228306331378271.Spec := by
  intro n
  simp only [A345457]

end A345457

/-! ## A345457.P10784175914263254996

`A139748(5*n+3)`
-/

namespace A345457.P10784175914263254996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (5 * n + 3)

end

end A345457.P10784175914263254996

namespace A345457

/-- `A139748(5*n+3)` -/
def P10784175914263254996.Spec : Prop :=
  ∀ n, P10784175914263254996.a n = A345457 n

end A345457

/-! ## A345457.P15417201737461839214

`abs(A084179(5*n+2))`
-/

namespace A345457.P15417201737461839214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (5 * n + 2)|

end

end A345457.P15417201737461839214

namespace A345457

/-- `abs(A084179(5*n+2))` -/
def P15417201737461839214.Spec : Prop :=
  ∀ n, P15417201737461839214.a n = A345457 n

end A345457

/-! ## A345457.P11578891230924497225

`record[gcd(A138112(n), A139398(n+1))]`
-/

namespace A345457.P11578891230924497225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138112 n) (A139398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345457.P11578891230924497225

namespace A345457

/-- `record[gcd(A138112(n), A139398(n+1))]` -/
def P11578891230924497225.Spec : Prop :=
  ∀ n, (P11578891230924497225.a n : ℤ) = A345457 n

end A345457

/-! ## A345457.P12887640351830640308

`record[and(A105385(n), A139398(n+1))]`
-/

namespace A345457.P12887640351830640308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105385 n) (A139398 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345457.P12887640351830640308

namespace A345457

/-- `record[and(A105385(n), A139398(n+1))]` -/
def P12887640351830640308.Spec : Prop :=
  ∀ n, P12887640351830640308.a n = A345457 n

end A345457

/-! ## A345457.P8518519969747425712

`A345456(n)+A052964(A016861(n))`
-/

namespace A345457.P8518519969747425712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345456 n + A052964 (A016861 n).toNat

end

end A345457.P8518519969747425712

namespace A345457

/-- `A345456(n)+A052964(A016861(n))` -/
def P8518519969747425712.Spec : Prop :=
  ∀ n, P8518519969747425712.a n = A345457 n

end A345457

/-! ## A345457.P10760450401508554180

`A345456(n)+A139748(A016873(n))`
-/

namespace A345457.P10760450401508554180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345456 n + A139748 (A016873 n).toNat

end

end A345457.P10760450401508554180

namespace A345457

/-- `A345456(n)+A139748(A016873(n))` -/
def P10760450401508554180.Spec : Prop :=
  ∀ n, P10760450401508554180.a n = A345457 n

end A345457

/-! ## A345457.P4295049861829904161

`A000079(A016861(n))-A345455(n)`
-/

namespace A345457.P4295049861829904161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016861 n).toNat - A345455 n

end

end A345457.P4295049861829904161

namespace A345457

/-- `A000079(A016861(n))-A345455(n)` -/
def P4295049861829904161.Spec : Prop :=
  ∀ n, P4295049861829904161.a n = A345457 n

end A345457

/-! ## A345457.P1773841384458715494

`or(A000007(n), A139398(A016885(n)))`
-/

namespace A345457.P1773841384458715494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A139398 (A016885 n).toNat)

end

end A345457.P1773841384458715494

namespace A345457

/-- `or(A000007(n), A139398(A016885(n)))` -/
def P1773841384458715494.Spec : Prop :=
  ∀ n, P1773841384458715494.a n = A345457 n

end A345457

/-!
# A345458: a(n) = Sum_{k=0..n} binomial(5*n+4,5*k).

The programs for A345458, the canonical program `A345458.P7423306774526323950` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345458 has offset 0).

The definition of A345458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345458.P4059405292143459888

`A139398(5*n+4)`
-/

namespace A345458.P4059405292143459888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (5 * n + 4)

end

end A345458.P4059405292143459888

namespace A345458

/-- `A139398(5*n+4)` -/
def P4059405292143459888.Spec : Prop :=
  ∀ n, P4059405292143459888.a n = A345458 n

end A345458

/-! ## A345458.P7423306774526323950

`A070782(n+1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345458

/-- `A070782(n+1)/2` -/
def P7423306774526323950.Spec : Prop :=
  ∀ n, P7423306774526323950.a n = (A345458 n : ℚ)

end A345458

/-! ## A345458.P13634226656236982515

`A049016(5*n)`
-/

namespace A345458.P13634226656236982515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049016 (5 * n)

end

end A345458.P13634226656236982515

namespace A345458

/-- `A049016(5*n)` -/
def P13634226656236982515.Spec : Prop :=
  ∀ n, P13634226656236982515.a n = A345458 n

end A345458

/-! ## A345458.P885048265601345252

`A052964(5*n+3)`
-/

namespace A345458.P885048265601345252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (5 * n + 3)

end

end A345458.P885048265601345252

namespace A345458

/-- `A052964(5*n+3)` -/
def P885048265601345252.Spec : Prop :=
  ∀ n, P885048265601345252.a n = A345458 n

end A345458

/-! ## A345458.P9860165426747198945

`A139761(5*(n+1)-1)`
-/

namespace A345458.P9860165426747198945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (5 * (n + 1) - 1)

end

end A345458.P9860165426747198945

namespace A345458

/-- `A139761(5*(n+1)-1)` -/
def P9860165426747198945.Spec : Prop :=
  ∀ n, P9860165426747198945.a n = A345458 n

end A345458

/-! ## A345458.P1563573587139638713

`record[gcd(A139398(n+1), A139398(n))]`
-/

namespace A345458.P1563573587139638713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139398 (n + 1)) (A139398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345458.P1563573587139638713

namespace A345458

/-- `record[gcd(A139398(n+1), A139398(n))]` -/
def P1563573587139638713.Spec : Prop :=
  ∀ n, (P1563573587139638713.a n : ℤ) = A345458 n

end A345458

/-!
# A345459: Number of polygons formed when connecting all 4n points on the perimeter of an n X n square by infinite lines.

The programs for A345459, there is no canonical definition to state claims against.
-/

/-! ## A345459.P4629503833297123416

`A345648(n)+A255011(n)`
-/

namespace A345459.P4629503833297123416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345648 n + A255011 n

end

end A345459.P4629503833297123416

/-! ## A345459.P5199006857006745071

`A057427(n)+A345650(n)-A345649(n)`
-/

namespace A345459.P5199006857006745071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A345650 n - A345649 n)

end

end A345459.P5199006857006745071

/-! ## A345459.P12160751239068295855

`A178334(n)+A345650(n)-A345649(n)`
-/

namespace A345459.P12160751239068295855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + (A345650 n - A345649 n)

end

end A345459.P12160751239068295855

/-! ## A345459.P15968351722734941286

`char[A007318(n)]+A345650(n)-A345649(n)`
-/

namespace A345459.P15968351722734941286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A345650 n - A345649 n)

end

end A345459.P15968351722734941286

/-! ## A345459.P860023976954982149

`A345648(n)+A331448(n)+1-A331449(n)`
-/

namespace A345459.P860023976954982149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345648 n + (A331448 n + (1 - A331449 n))

end

end A345459.P860023976954982149

/-!
# A345460: Odd numbers k with (k-1)/2 not prime such that p-1 | k-1 or k-1 | p-1 for every prime p | 2^(k-1)-1.

The programs for A345460, there is no canonical definition to state claims against.
-/

/-! ## A345460.P10518533406239781312

`lt[A230103(n), A175479(A046310(2*(n+2)))]`
-/

namespace A345460.P10518533406239781312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175479 (A046310 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345460.P10518533406239781312

/-! ## A345460.P14229923684721502903

`record[and(2*n+1, A032379(n+1))]`
-/

namespace A345460.P14229923684721502903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A032379 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345460.P14229923684721502903

/-! ## A345460.P17068467923160071856

`∑[A057237(∑[A341365(n+4)])]`
-/

namespace A345460.P17068467923160071856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341365 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345460.P17068467923160071856

/-! ## A345460.P5635394287937481684

`∑[A124859(record[A144024(n+1)])]`
-/

namespace A345460.P5635394287937481684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345460.P5635394287937481684

/-! ## A345460.P361417998182396251

`record[and(A032379(n+1), A237292(n))]`
-/

namespace A345460.P361417998182396251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032379 (n + 1)) (A237292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345460.P361417998182396251

/-!
# A345461: Triangle T(n,k) (n >= 1, 0 <= k <= n-1) read by rows: number of distinct permutations after k steps of the "optimist" algorithm.

The programs for A345461, there is no canonical definition to state claims against.
-/

/-! ## A345461.P16447858095957541540

`(A208544(n+1)^(∑{e}[n+1, #]!/∏{e}[n+1, #!]))!`
-/

namespace A345461.P16447858095957541540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((A208544 (n + 1) : ℝ) ^ ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) : ℝ))).toNat

end

end A345461.P16447858095957541540

/-! ## A345461.P501570587784825279

`A098361(C(∑[char[∑[n]]]²-n, (n+1-C(∑[char[∑[n]]], 2))^3))`
-/

namespace A345461.P501570587784825279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (Nat.choose ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)).toNat (((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)) ^ 3).toNat)

end

end A345461.P501570587784825279

/-! ## A345461.P7855603316690462865

`A002654(A038305(n))!`
-/

namespace A345461.P7855603316690462865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002654 (A038305 n).toNat).toNat

end

end A345461.P7855603316690462865

/-! ## A345461.P6654311224751529319

`A002654(A038308(n))!`
-/

namespace A345461.P6654311224751529319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002654 (A038308 n).toNat).toNat

end

end A345461.P6654311224751529319

/-! ## A345461.P11411351036314075613

`(A208535(n+1)^A146531(n))!`
-/

namespace A345461.P11411351036314075613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((A208535 (n + 1) : ℚ) ^ (A146531 n : ℤ))).toNat

end

end A345461.P11411351036314075613

/-!
# A345462: Triangle T(n,k) (n >= 1, 0 <= k <= n-1) read by rows: number of distinct permutations after k steps of the "first transposition" algorithm.

The programs for A345462, there is no canonical definition to state claims against.
-/

/-! ## A345462.P9316116335408927

`A123513(n+1)+A208956(n+1)-A008290(n)`
-/

namespace A345462.P9316116335408927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (n + 1) + (A208956 (n + 1) - A008290 n)

end

end A345462.P9316116335408927

/-! ## A345462.P15006348807739934877

`A098862(A203092(n))+A089900(n)`
-/

namespace A345462.P15006348807739934877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098862 (A203092 n).toNat + A089900 n

end

end A345462.P15006348807739934877

/-! ## A345462.P10937249985520654068

`A173333(n+1)+A064911(A041331(n))`
-/

namespace A345462.P10937249985520654068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) + A064911 (A041331 n).toNat

end

end A345462.P10937249985520654068

/-! ## A345462.P13902539676478102432

`A173333(n+1)+A102683(A027219(n))`
-/

namespace A345462.P13902539676478102432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) + A102683 (A027219 n).toNat

end

end A345462.P13902539676478102432

/-! ## A345462.P7803581704266427415

`A173333(n+1)+A037908(A111835(n))`
-/

namespace A345462.P7803581704266427415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) + A037908 (A111835 n).toNat

end

end A345462.P7803581704266427415

/-!
# A345463: Number of n X n matrices over GF(2) whose characteristic polynomial is irreducible.

The programs for A345463, the canonical program `A345463.P16392055412775158657` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345463 has offset 1).

The definition of A345463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345463.P16392055412775158657

`A001037(n+1)*A002884(n+1)/A000225(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A345463

/-- `A001037(n+1)*A002884(n+1)/A000225(n+1)` -/
def P16392055412775158657.Spec : Prop :=
  ∀ n, P16392055412775158657.a n = (A345463 (n + 1) : ℚ)

end A345463

/-! ## A345463.P17910300010618737362

`A001037(n+1)*A028365(n)`
-/

namespace A345463.P17910300010618737362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) * A028365 n

end

end A345463.P17910300010618737362

namespace A345463

/-- `A001037(n+1)*A028365(n)` -/
def P17910300010618737362.Spec : Prop :=
  ∀ n, P17910300010618737362.a n = A345463 (n + 1)

end A345463

/-! ## A345463.P8602902332357325468

`A028365(A028310(n))*A059966(n+1)`
-/

namespace A345463.P8602902332357325468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028365 (A028310 n).toNat * A059966 (n + 1)

end

end A345463.P8602902332357325468

namespace A345463

/-- `A028365(A028310(n))*A059966(n+1)` -/
def P8602902332357325468.Spec : Prop :=
  ∀ n, P8602902332357325468.a n = A345463 (n + 1)

end A345463

/-! ## A345463.P12871315849055711111

`A001037(n+1)*A002884(n)*A000079(n)`
-/

namespace A345463.P12871315849055711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) * A002884 n * A000079 n

end

end A345463.P12871315849055711111

namespace A345463

/-- `A001037(n+1)*A002884(n)*A000079(n)` -/
def P12871315849055711111.Spec : Prop :=
  ∀ n, P12871315849055711111.a n = A345463 (n + 1)

end A345463

/-! ## A345463.P16416588522691730852

`A001037(n+1)/A011260(n+1)*A346019(n+1)`
-/

namespace A345463.P16416588522691730852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A011260 (n + 1) : ℚ) * (A346019 (n + 1) : ℚ)

end

end A345463.P16416588522691730852

namespace A345463

/-- `A001037(n+1)/A011260(n+1)*A346019(n+1)` -/
def P16416588522691730852.Spec : Prop :=
  ∀ n, P16416588522691730852.a n = (A345463 (n + 1) : ℚ)

end A345463

/-!
# A345464: Second column of A345461 - Number of distinct permutations after one step of the "optimist" sorting algorithm.

The programs for A345464, there is no canonical definition to state claims against.
-/

/-! ## A345464.P17975887460306032860

`A345461(∑[n+1]+2)`
-/

namespace A345464.P17975887460306032860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A345464.P17975887460306032860

/-! ## A345464.P10683861808509366681

`A345461(A133263(n+1))%A046955(n+4)`
-/

namespace A345464.P10683861808509366681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345461 (A133263 (n + 1)).toNat) (A046955 (n + 4))

end

end A345464.P10683861808509366681

/-!
# A345465: a(n) = Sum_{d|n} (d!)^d.

The programs for A345465, there is no canonical definition to state claims against.
-/

/-! ## A345465.P12048215289132089104

`∑{d}[n+1, #!^#]`
-/

namespace A345465.P12048215289132089104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial d ^ d

end

end A345465.P12048215289132089104

/-!
# A345466: a(n) = Product_{k=1..n} binomial(n, floor(n/k)).

The programs for A345466, there is no canonical definition to state claims against.
-/

/-! ## A345466.P1122012723417176602

`A055034(or(n, n^n))`
-/

namespace A345466.P1122012723417176602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Nat.lor n (n ^ n))

end

end A345466.P1122012723417176602

/-! ## A345466.P13330084626237002810

`∏{e}[A138534(n), C(n, #)]`
-/

namespace A345466.P13330084626237002810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n (Nat.factorization (f1 n).natAbs p)

end

end A345466.P13330084626237002810

/-!
# A345467: 

The programs for A345467, there is no canonical definition to state claims against.
-/

/-! ## A345467.P1470307075227783929

`A089303(3^n)`
-/

namespace A345467.P1470307075227783929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089303 (3 ^ n)

end

end A345467.P1470307075227783929

/-!
# A345468: a(n) is the least number k such that k^2+4*n is prime.

The programs for A345468, there is no canonical definition to state claims against.
-/

/-! ## A345468.P9997125420176995181

`A056898(4*(n+1))`
-/

namespace A345468.P9997125420176995181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (4 * (n + 1))

end

end A345468.P9997125420176995181

/-! ## A345468.P7436463726526396466

`A085099(4*(n+1))`
-/

namespace A345468.P7436463726526396466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (4 * (n + 1))

end

end A345468.P7436463726526396466

/-! ## A345468.P7109935178300462741

`sqrt(A056897(record[xor(3, n)]))`
-/

namespace A345468.P7109935178300462741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ)

end

end A345468.P7109935178300462741

/-! ## A345468.P5227541419594748464

`sqrt(A059844(4*(n+1)))`
-/

namespace A345468.P5227541419594748464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 (4 * (n + 1)) : ℝ)

end

end A345468.P5227541419594748464

/-! ## A345468.P6810138364036960248

`sqrt(A056897(4*n+3))`
-/

namespace A345468.P6810138364036960248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056897 (4 * n + 3) : ℝ)

end

end A345468.P6810138364036960248

/-! ## A345468.P12710187170975558873

`A085099(A008586(n+1))%(n+4)`
-/

namespace A345468.P12710187170975558873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085099 (A008586 (n + 1)).toNat) (n + 4 : ℤ)

end

end A345468.P12710187170975558873

/-! ## A345468.P14988747868710079634

`lcm(A085099(A008586(n+1)), A087960(n))`
-/

namespace A345468.P14988747868710079634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085099 (A008586 (n + 1)).toNat) (A087960 n)

end

end A345468.P14988747868710079634

/-!
# A345470: Number of self-complementary score sequences that are possible in an n-team round-robin tournament.

The programs for A345470, there is no canonical definition to state claims against.
-/

/-! ## A345470.P5911929635358247079

`A130148(A369082(n))`
-/

namespace A345470.P5911929635358247079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A369082 n).toNat

end

end A345470.P5911929635358247079

/-! ## A345470.P9308594802588909601

`A083023(A349818(n+1))`
-/

namespace A345470.P9308594802588909601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A349818 (n + 1)).toNat

end

end A345470.P9308594802588909601

/-! ## A345470.P8697581500830179160

`A067595(A340057(2*(n+2))+A120039(2*n+1))`
-/

namespace A345470.P8697581500830179160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A340057 (2 * (n + 2)) + A120039 (2 * n + 1)).toNat

end

end A345470.P8697581500830179160

/-!
# A345471: a(0) = a(1) = 1, a(n) is the smallest positive integer m >= a(n-1) + a(n-2) such that gcd(a(k),m) = 1 for all 1 < k <= n - 1.

The programs for A345471, there is no canonical definition to state claims against.
-/

/-! ## A345471.P11724509320694106468

`A055498(A225640(∑[n]))`
-/

namespace A345471.P11724509320694106468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (A225640 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345471.P11724509320694106468

/-! ## A345471.P3954218334648995950

`∏{d}[A055498(A062003(n)), #]`
-/

namespace A345471.P3954218334648995950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (A062003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A345471.P3954218334648995950

/-! ## A345471.P2877598621397042001

`A115350(∏{d}[A055498(n), #])`
-/

namespace A345471.P2877598621397042001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A345471.P2877598621397042001

/-! ## A345471.P17067534469151497433

`A115350(∏{p}[A055498(n), #])`
-/

namespace A345471.P17067534469151497433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A345471.P17067534469151497433

/-! ## A345471.P450860152414706938

`∏{e}[A008776(n), A055498(#)]`
-/

namespace A345471.P450860152414706938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055498 (Nat.factorization (f1 n).natAbs p)

end

end A345471.P450860152414706938

/-!
# A345475: Nonsquares k whose continued fraction for the square root of k has a periodic part that is a nondecreasing sequence.

The programs for A345475, there is no canonical definition to state claims against.
-/

/-! ## A345475.P3659935755908385189

`eq[1, A000045(A028832(n+1))]+1`
-/

namespace A345475.P3659935755908385189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028832 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345475.P3659935755908385189

/-! ## A345475.P11608284541238220290

`eq[A028832(n+1), A169695(n)]+1`
-/

namespace A345475.P11608284541238220290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345475.P11608284541238220290

/-! ## A345475.P9674578373663612776

`eq[A028832(n+2), A275437(n)]+2`
-/

namespace A345475.P9674578373663612776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A345475.P9674578373663612776

/-! ## A345475.P17954902673029034760

`∪[A320773(n+1), A331960(n+1)]`
-/

namespace A345475.P17954902673029034760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345475.P17954902673029034760

/-! ## A345475.P5758074411972730592

`eq[1, A351593(A028832(n+1)²)]+1`
-/

namespace A345475.P5758074411972730592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 (A028832 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345475.P5758074411972730592

/-! ## A345475.P1710129407675831828

`eq[2, A004736(A028832(n+1)²+1)]+1`
-/

namespace A345475.P1710129407675831828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A028832 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345475.P1710129407675831828

/-! ## A345475.P4989111615291757105

`eq[1, A000045(A028832(A028310(n)))]`
-/

namespace A345475.P4989111615291757105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028832 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345475.P4989111615291757105

/-! ## A345475.P12680385935337741316

`A020725(eq[A028832(n+1), A169695(n)])`
-/

namespace A345475.P12680385935337741316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345475.P12680385935337741316

/-! ## A345475.P8204730210575420560

`A020725(eq[A028832(n+1)!, A028832(n+1)])`
-/

namespace A345475.P8204730210575420560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A028832 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345475.P8204730210575420560

/-!
# A345476: Numbers that are the sum of six squares in nine or more ways.

The programs for A345476, there is no canonical definition to state claims against.
-/

/-! ## A345476.P12989526936008027729

`lt[35, A295752(A025430(n))]`
-/

namespace A345476.P12989526936008027729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295752 (A025430 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345476.P12989526936008027729

/-!
# A345477: Numbers that are the sum of six squares in ten or more ways.

The programs for A345477, there is no canonical definition to state claims against.
-/

/-! ## A345477.P13266405062275627129

`lt[35, A295752(A025430(n))-1]`
-/

namespace A345477.P13266405062275627129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295752 (A025430 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345477.P13266405062275627129

/-!
# A345478: Numbers that are the sum of seven squares in one or more ways.

The programs for A345478, the canonical program `A345478.P1383185937309282417` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345478 has offset 1).

The definition of A345478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345478.P1383185937309282417

`2*a(n-1)-a(n-2)` with `a(0)=7, a(1)=10, a(2)=13, a(3)=15, a(4)=16, a(5)=18, a(6)=19, a(7)=21, a(8)=22`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345478

/-- `2*a(n-1)-a(n-2)` -/
def P1383185937309282417.Spec : Prop :=
  ∀ n, P1383185937309282417.a n = A345478 (n + 1)

theorem P1383185937309282417.correct : P1383185937309282417.Spec := by
  intro n
  simp only [A345478, Nat.add_sub_cancel]

end A345478

/-!
# A345479: Numbers that are the sum of seven squares in two or more ways.

The programs for A345479, there is no canonical definition to state claims against.
-/

/-! ## A345479.P13391611299761069883

`lt[A050446(A204814(n+1)), A025431(n)]`
-/

namespace A345479.P13391611299761069883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A204814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345479.P13391611299761069883

/-!
# A345480: Numbers that are the sum of seven squares in three or more ways.

The programs for A345480, there is no canonical definition to state claims against.
-/

/-! ## A345480.P9770823980893821618

`A344806(n+4)+1`
-/

namespace A345480.P9770823980893821618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344806 (n + 4) + 1

end

end A345480.P9770823980893821618

/-!
# A345481: Numbers that are the sum of seven squares in four or more ways.

The programs for A345481, there is no canonical definition to state claims against.
-/

/-! ## A345481.P565666877743696683

`lt[A049076(A049078(n+1)), A025431(n)]`
-/

namespace A345481.P565666877743696683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A049078 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345481.P565666877743696683

/-!
# A345482: Numbers that are the sum of seven squares in five or more ways.

The programs for A345482, there is no canonical definition to state claims against.
-/

/-! ## A345482.P13155200359439445046

`lt[A349322(A078972(3*(n+1))), A025431(n)]`
-/

namespace A345482.P13155200359439445046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (A078972 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345482.P13155200359439445046

/-!
# A345483: Numbers that are the sum of seven squares in six or more ways.

The programs for A345483, the canonical program `A345483.P11989192200761921995` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345483 has offset 1).

The definition of A345483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345483.P11989192200761921995

`2*a(n-1)-a(n-2)` with `a(0)=55, a(1)=58, a(2)=61, a(3)=63, a(4)=64, a(5)=66, a(6)=67, a(7)=69, a(8)=70`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345483

/-- `2*a(n-1)-a(n-2)` -/
def P11989192200761921995.Spec : Prop :=
  ∀ n, P11989192200761921995.a n = A345483 (n + 1)

theorem P11989192200761921995.correct : P11989192200761921995.Spec := by
  intro n
  simp only [A345483, Nat.add_sub_cancel]

end A345483

/-!
# A345484: Numbers that are the sum of seven squares in seven or more ways.

The programs for A345484, there is no canonical definition to state claims against.
-/

/-! ## A345484.P17388899993428238525

`lt[11, A335455(A025431(n))]`
-/

namespace A345484.P17388899993428238525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335455 (A025431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345484.P17388899993428238525

/-!
# A345485: Numbers that are the sum of seven squares in eight or more ways.

The programs for A345485, there is no canonical definition to state claims against.
-/

/-! ## A345485.P2244803554777767961

`lt[30, A335455(A025431(n))]`
-/

namespace A345485.P2244803554777767961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335455 (A025431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345485.P2244803554777767961

/-!
# A345486: Numbers that are the sum of seven squares in nine or more ways.

The programs for A345486, there is no canonical definition to state claims against.
-/

/-! ## A345486.P5740876079465281891

`A344808(n+3)+25`
-/

namespace A345486.P5740876079465281891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344808 (n + 3) + 25

end

end A345486.P5740876079465281891

/-!
# A345487: Numbers that are the sum of seven squares in ten or more ways.

The programs for A345487, the canonical program `A345487.P5645223592236633001` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345487 has offset 1).

The definition of A345487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345487.P5645223592236633001

`2*a(n-1)-a(n-2)` with `a(0)=70, a(1)=79, a(2)=82, a(3)=85, a(4)=87, a(5)=88, a(6)=90, a(7)=91, a(8)=93, a(9)=94`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345487

/-- `2*a(n-1)-a(n-2)` -/
def P5645223592236633001.Spec : Prop :=
  ∀ n, P5645223592236633001.a n = A345487 (n + 1)

theorem P5645223592236633001.correct : P5645223592236633001.Spec := by
  intro n
  simp only [A345487, Nat.add_sub_cancel]

end A345487

/-!
# A345488: Numbers that are the sum of eight squares in one or more ways.

The programs for A345488, the canonical program `A345488.P17216432705863839094` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345488 has offset 1).

The definition of A345488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345488.P17216432705863839094

`2*a(n-1)-a(n-2)` with `a(0)=8, a(1)=11, a(2)=14, a(3)=16, a(4)=17, a(5)=19, a(6)=20, a(7)=22, a(8)=23`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345488

/-- `2*a(n-1)-a(n-2)` -/
def P17216432705863839094.Spec : Prop :=
  ∀ n, P17216432705863839094.a n = A345488 (n + 1)

theorem P17216432705863839094.correct : P17216432705863839094.Spec := by
  intro n
  simp only [A345488, Nat.add_sub_cancel]

end A345488

/-!
# A345489: Numbers that are the sum of eight squares in two or more ways.

The programs for A345489, there is no canonical definition to state claims against.
-/

/-! ## A345489.P14982266367766430900

`A345496(n+1)+A345499(n+1)-A346803(n+1)`
-/

namespace A345489.P14982266367766430900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345496 (n + 1) + (A345499 (n + 1) - A346803 (n + 1))

end

end A345489.P14982266367766430900

/-!
# A345490: Numbers that are the sum of eight squares in three or more ways.

The programs for A345490, there is no canonical definition to state claims against.
-/

/-! ## A345490.P7300828849378394333

`A345480(n+1)+1`
-/

namespace A345490.P7300828849378394333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345480 (n + 1) + 1

end

end A345490.P7300828849378394333

/-!
# A345491: Numbers that are the sum of eight squares in four or more ways.

The programs for A345491, there is no canonical definition to state claims against.
-/

/-! ## A345491.P851852889808018675

`round(∑[root(32, A120431(n+1))])`
-/

namespace A345491.P851852889808018675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (32 : ℝ) ^ (1 / (A120431 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345491.P851852889808018675

/-!
# A345492: Numbers that are the sum of eight squares in five or more ways.

The programs for A345492, there is no canonical definition to state claims against.
-/

/-! ## A345492.P8125570662998610503

`lt[3, A120053(A025432(n))]`
-/

namespace A345492.P8125570662998610503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120053 (A025432 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345492.P8125570662998610503

/-!
# A345493: Numbers that are the sum of eight squares in six or more ways.

The programs for A345493, there is no canonical definition to state claims against.
-/

/-! ## A345493.P646088248100917760

`A345482(n+3)+1`
-/

namespace A345493.P646088248100917760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345482 (n + 3) + 1

end

end A345493.P646088248100917760

/-!
# A345494: Numbers that are the sum of eight squares in seven or more ways.

The programs for A345494, the canonical program `A345494.P11227063016350519281` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345494 has offset 1).

The definition of A345494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345494.P11227063016350519281

`A345483(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345494

/-- `A345483(n+1)+1` -/
def P11227063016350519281.Spec : Prop :=
  ∀ n, P11227063016350519281.a n = A345494 (n + 1)

theorem P11227063016350519281.correct : P11227063016350519281.Spec := by
  intro n
  simp only [A345494, Nat.add_sub_cancel]

end A345494

/-!
# A345495: Numbers that are the sum of eight squares in eight or more ways.

The programs for A345495, there is no canonical definition to state claims against.
-/

/-! ## A345495.P5716563219368271896

`A345501(n+1)+23`
-/

namespace A345495.P5716563219368271896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345501 (n + 1) + 23

end

end A345495.P5716563219368271896

/-!
# A345496: Numbers that are the sum of eight squares in nine or more ways.

The programs for A345496, there is no canonical definition to state claims against.
-/

/-! ## A345496.P16019734578662065676

`A345489(n+1)+A346803(n+1)-A345499(n+1)`
-/

namespace A345496.P16019734578662065676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345489 (n + 1) + (A346803 (n + 1) - A345499 (n + 1))

end

end A345496.P16019734578662065676

/-!
# A345497: Numbers that are the sum of eight squares in ten or more ways.

The programs for A345497, there is no canonical definition to state claims against.
-/

/-! ## A345497.P14996627236382190250

`A345501(A345479(n+4))`
-/

namespace A345497.P14996627236382190250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345501 (A345479 (n + 4)).toNat

end

end A345497.P14996627236382190250

/-!
# A345498: Numbers that are the sum of nine squares in one or more ways.

The programs for A345498, the canonical program `A345498.P14492625060946877738` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345498 has offset 1).

The definition of A345498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345498.P14492625060946877738

`2*a(n-1)-a(n-2)` with `a(0)=9, a(1)=12, a(2)=15, a(3)=17, a(4)=18, a(5)=20, a(6)=21, a(7)=23, a(8)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345498

/-- `2*a(n-1)-a(n-2)` -/
def P14492625060946877738.Spec : Prop :=
  ∀ n, P14492625060946877738.a n = A345498 (n + 1)

theorem P14492625060946877738.correct : P14492625060946877738.Spec := by
  intro n
  simp only [A345498, Nat.add_sub_cancel]

end A345498

/-!
# A345499: Numbers that are the sum of nine squares in two or more ways.

The programs for A345499, the canonical program `A345499.P13652165666880009120` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345499 has offset 1).

The definition of A345499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345499.P13652165666880009120

`A345509(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345499

/-- `A345509(n+1)-1` -/
def P13652165666880009120.Spec : Prop :=
  ∀ n, P13652165666880009120.a n = A345499 (n + 1)

theorem P13652165666880009120.correct : P13652165666880009120.Spec := by
  intro n
  simp only [A345499, Nat.add_sub_cancel]

end A345499

