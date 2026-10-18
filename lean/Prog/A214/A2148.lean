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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A214801: Number of solid standard Young tableaux of shape [[2*n,n],[n]].

The programs for A214801, there is no canonical definition to state claims against.
-/

/-! ## A214801.P3187809577828197450

`A214775(∑[4*n])`
-/

namespace A214801.P3187809577828197450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214801.P3187809577828197450

/-! ## A214801.P9771097287100410333

`record[A214775(A092530(n))]`
-/

namespace A214801.P9771097287100410333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214801.P9771097287100410333

/-! ## A214801.P10858802162774739968

`record[gcd(A008482(n), A214775(n))]`
-/

namespace A214801.P10858802162774739968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A214775 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214801.P10858802162774739968

/-! ## A214801.P8674844868434108190

`lcm(A033999(n), A214775(A046092(n)))`
-/

namespace A214801.P8674844868434108190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A214775 (A046092 n).toNat)

end

end A214801.P8674844868434108190

/-! ## A214801.P648050447632893193

`or(A000007(n), A214775(A046092(n)))`
-/

namespace A214801.P648050447632893193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A214775 (A046092 n).toNat)

end

end A214801.P648050447632893193

/-!
# A214802: a(n+1) is the smallest integer m > a(n) such that all of sums (a(i))^2 + m^2, i=1..n are squarefree.

The programs for A214802, there is no canonical definition to state claims against.
-/

/-! ## A214802.P11513486927464190938

`eq[A068307(n+5), A229166(A230141(2*(n+2)))]`
-/

namespace A214802.P11513486927464190938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229166 (A230141 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214802.P11513486927464190938

/-! ## A214802.P17576281432199262393

`record[and(A002034(n+1), A330122(n+1))]`
-/

namespace A214802.P17576281432199262393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002034 (n + 1)) (A330122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214802.P17576281432199262393

/-! ## A214802.P7407103389681021091

`record[and(A006530(n+1), A330097(n+1))]`
-/

namespace A214802.P7407103389681021091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (n + 1)) (A330097 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214802.P7407103389681021091

/-! ## A214802.P15638908871037487689

`record[and(A006530(n+1), A330122(n+1))]`
-/

namespace A214802.P15638908871037487689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (n + 1)) (A330122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214802.P15638908871037487689

/-! ## A214802.P9038260112796501638

`record[and(A014963(n+1), A330122(n+1))]`
-/

namespace A214802.P9038260112796501638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A330122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214802.P9038260112796501638

/-!
# A214803: Frobenius numbers of numerators and denominators of rational numbers in order of their canonical enumeration.

The programs for A214803, the canonical program `A214803.P16704600720366373310` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214803 has offset 1).

The definition of A214803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214803.P16704600720366373310

`(A038567(n)-1)*A020652(n+1)-A038567(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A214803

/-- `(A038567(n)-1)*A020652(n+1)-A038567(n)` -/
def P16704600720366373310.Spec : Prop :=
  ∀ n, P16704600720366373310.a n = A214803 (n + 1)

theorem P16704600720366373310.correct : P16704600720366373310.Spec := by
  intro n
  simp only [A214803, Nat.add_sub_cancel]

end A214803

/-! ## A214803.P15584885830358240958

`A144204(A169581(n+2))`
-/

namespace A214803.P15584885830358240958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (A169581 (n + 2)).toNat

end

end A214803.P15584885830358240958

namespace A214803

/-- `A144204(A169581(n+2))` -/
def P15584885830358240958.Spec : Prop :=
  ∀ n, P15584885830358240958.a n = A214803 (n + 1)

end A214803

/-!
# A214804: Number of rooted maps with n vertices and 2 faces on a non-orientable surface of type 2.

The programs for A214804, there is no canonical definition to state claims against.
-/

/-! ## A214804.P6781971100059300184

`record[A214806(A143211(n+1)+2)]`
-/

namespace A214804.P6781971100059300184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214806 (A143211 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214804.P6781971100059300184

/-!
# A214805: Number of rooted maps with n vertices and 3 faces on a non-orientable surface of type 2.

The programs for A214805, there is no canonical definition to state claims against.
-/

/-! ## A214805.P7272339124462126312

`record[A214806(comp[A008281(n)])]`
-/

namespace A214805.P7272339124462126312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214806 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214805.P7272339124462126312

/-!
# A214807: Number of rooted maps with n vertices and n faces on a non-orientable surface of type 2.

The programs for A214807, there is no canonical definition to state claims against.
-/

/-! ## A214807.P2210775944291032344

`A214806(∑[n]+n)`
-/

namespace A214807.P2210775944291032344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214806 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A214807.P2210775944291032344

/-!
# A214808: Kostant partition function P(2*rho) for root system A_n, where 2*rho is the sum of the positive roots.

The programs for A214808, there is no canonical definition to state claims against.
-/

/-! ## A214808.P7160521852378747900

`or(∑[char[3*n]], A079023(n!))`
-/

namespace A214808.P7160521852378747900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A079023 (Nat.factorial n))

end

end A214808.P7160521852378747900

/-!
# A214810: Triangle read by rows: T(n,k) (n>=1, 0 <= k <= p where p = n-th prime) = Bell(k) mod p (cf. A000110).

The programs for A214810, there is no canonical definition to state claims against.
-/

/-! ## A214810.P6130243620520780799

`A140081(A223864(n+1)+A079969(n))`
-/

namespace A214810.P6130243620520780799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (A223864 (n + 1) + A079969 n).toNat

end

end A214810.P6130243620520780799

/-! ## A214810.P9377915292799953848

`A115357(A115375(2*n+1))+A076478(n)`
-/

namespace A214810.P9377915292799953848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 (A115375 (2 * n + 1)).toNat + A076478 n

end

end A214810.P9377915292799953848

/-!
# A214811: Triangle read by rows: row n lists prime factors of (p^p-1)/(p-1) where p = prime(n).

The programs for A214811, there is no canonical definition to state claims against.
-/

/-! ## A214811.P8536920617543189829

`A125135(record[(n+1)%A125135(n+1)])`
-/

namespace A214811.P8536920617543189829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A125135 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125135 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214811.P8536920617543189829

/-! ## A214811.P13543726414610639167

`p?[A248843(n+1)]`
-/

namespace A214811.P13543726414610639167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214811.P13543726414610639167

/-! ## A214811.P16297791493563715545

`A006530(record[A002260(n+1)*A125135(n+1)])`
-/

namespace A214811.P16297791493563715545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A125135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214811.P16297791493563715545

/-!
# A214812: Largest prime factor of (p^p-1)/(p-1) where p = prime(n).

The programs for A214812, there is no canonical definition to state claims against.
-/

/-! ## A214812.P295377054199964431

`A006486(p?[comp[n²]])`
-/

namespace A214812.P295377054199964431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A214812.P295377054199964431

/-! ## A214812.P12910060548981100082

`A006486(Δ[A007504(n)])`
-/

namespace A214812.P12910060548981100082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (f1 (n + 1) - f1 n).toNat

end

end A214812.P12910060548981100082

/-! ## A214812.P18126613068311296116

`A006486(A000040(n+1))`
-/

namespace A214812.P18126613068311296116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (A000040 (n + 1)).toNat

end

end A214812.P18126613068311296116

/-! ## A214812.P6150759146032242714

`A006486(record[A006530(n+2)])`
-/

namespace A214812.P6150759146032242714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214812.P6150759146032242714

/-! ## A214812.P2002065406738983572

`A006486(record[A014963(n+2)])`
-/

namespace A214812.P2002065406738983572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214812.P2002065406738983572

/-!
# A214814: Number of unsensed genus 2 maps with n edges.

The programs for A214814, there is no canonical definition to state claims against.
-/

/-! ## A214814.P14711793772382552479

`A265409(xor(n, A262305(n+1)))`
-/

namespace A214814.P14711793772382552479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265409 (Int.xor (n : ℤ) (A262305 (n + 1))).toNat

end

end A214814.P14711793772382552479

/-! ## A214814.P18374150249904585095

`A079692(A185624(n)+A058475(n))`
-/

namespace A214814.P18374150249904585095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A185624 n + A058475 n).toNat

end

end A214814.P18374150249904585095

/-!
# A214816: Number of unsensed combinatorial maps with n edges on an orientable surface of any genus.

The programs for A214816, there is no canonical definition to state claims against.
-/

/-! ## A214816.P5657346272616881334

`A170946(n)-A170948(n)`
-/

namespace A214816.P5657346272616881334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170946 n - A170948 n

end

end A214816.P5657346272616881334

/-!
# A214817: Number of genus 2 rooted hypermaps with n darts.

The programs for A214817, there is no canonical definition to state claims against.
-/

/-! ## A214817.P5426774738734306773

`A138875(A250120(n+3))%A003121(n)`
-/

namespace A214817.P5426774738734306773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138875 (A250120 (n + 3)).toNat) (A003121 n)

end

end A214817.P5426774738734306773

/-! ## A214817.P9931291319337376234

`A061816(C(2*n, 7))`
-/

namespace A214817.P9931291319337376234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (Nat.choose (2 * n) 7)

end

end A214817.P9931291319337376234

/-!
# A214818: Number of genus 3 rooted hypermaps with n darts.

The programs for A214818, there is no canonical definition to state claims against.
-/

/-! ## A214818.P6309168121638397578

`A124764(A260657(n))*A260695(n)`
-/

namespace A214818.P6309168121638397578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A260657 n).toNat * A260695 n

end

end A214818.P6309168121638397578

/-!
# A214819: Number of genus 2 sensed hypermaps with n darts.

The programs for A214819, there is no canonical definition to state claims against.
-/

/-! ## A214819.P11729536620772422423

`4*A291760(A000272(n))`
-/

namespace A214819.P11729536620772422423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291760 (A000272 n).toNat

end

end A214819.P11729536620772422423

/-! ## A214819.P1515023966836092802

`4*A343379(A102726(n))`
-/

namespace A214819.P1515023966836092802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A343379 (A102726 n).toNat

end

end A214819.P1515023966836092802

/-! ## A214819.P13452871288045530920

`4*A343379(A189076(n))`
-/

namespace A214819.P13452871288045530920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A343379 (A189076 n).toNat

end

end A214819.P13452871288045530920

/-!
# A214820: Number of genus 3 sensed hypermaps with n darts.

The programs for A214820, there is no canonical definition to state claims against.
-/

/-! ## A214820.P9816036885508820611

`5*C(n, 6)*A329577(5*C(n, 6))`
-/

namespace A214820.P9816036885508820611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose n 6 : ℤ) * A329577 (5 * Nat.choose n 6)

end

end A214820.P9816036885508820611

/-! ## A214820.P2460473571986655569

`A284693(A306575(n))`
-/

namespace A214820.P2460473571986655569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284693 (A306575 n).toNat

end

end A214820.P2460473571986655569

/-! ## A214820.P13551474901073582190

`A284693(A191789(n+1))`
-/

namespace A214820.P13551474901073582190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284693 (A191789 (n + 1)).toNat

end

end A214820.P13551474901073582190

/-! ## A214820.P4760567713297735157

`A186428(A361675(n+1))`
-/

namespace A214820.P4760567713297735157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186428 (A361675 (n + 1)).toNat

end

end A214820.P4760567713297735157

/-!
# A214821: Number of genus 0 unsensed hypermaps with n darts.

The programs for A214821, there is no canonical definition to state claims against.
-/

/-! ## A214821.P12814467424190277673

`A289813(∑{d}[A058799(n), #])`
-/

namespace A214821.P12814467424190277673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A214821.P12814467424190277673

/-! ## A214821.P13826213866765712407

`A002330(∑[∑[A060912(n)]])`
-/

namespace A214821.P13826213866765712407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214821.P13826213866765712407

/-!
# A214822: Number of genus 1 unsensed hypermaps with n darts.

The programs for A214822, there is no canonical definition to state claims against.
-/

/-! ## A214822.P18072190745361825956

`A065714(∏[n+3]/3+2)`
-/

namespace A214822.P18072190745361825956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + 2)).toNat

end

end A214822.P18072190745361825956

/-! ## A214822.P2386268844254852184

`A025443(9*floor(5^n/4))`
-/

namespace A214822.P2386268844254852184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (9 * ⌊(5 ^ n : ℚ) / 4⌋).toNat

end

end A214822.P2386268844254852184

/-!
# A214823: Number of genus 2 unsensed hypermaps with n darts.

The programs for A214823, there is no canonical definition to state claims against.
-/

/-! ## A214823.P17518737728842313542

`A281543(20^A171878(n))`
-/

namespace A214823.P17518737728842313542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (SequenceMachineLib.roundAway ((20 : ℚ) ^ (A171878 n : ℤ))).toNat

end

end A214823.P17518737728842313542

/-! ## A214823.P15245409726961856657

`A281543(20^A280242(n))`
-/

namespace A214823.P15245409726961856657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (SequenceMachineLib.roundAway ((20 : ℚ) ^ (A280242 n : ℤ))).toNat

end

end A214823.P15245409726961856657

/-! ## A214823.P1009070445741416727

`A242062(A133596(n)-n)`
-/

namespace A214823.P1009070445741416727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A133596 n - (n : ℤ)).toNat

end

end A214823.P1009070445741416727

/-!
# A214824: Number of solid standard Young tableaux of shape [[(2)^n],[2]].

The programs for A214824, the canonical program `A214824.P7114462778934576427` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214824 has offset 1).

The definition of A214824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214824.P7114462778934576427

`A000917(n)-A002057(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214824

/-- `A000917(n)-A002057(n)` -/
def P7114462778934576427.Spec : Prop :=
  ∀ n, P7114462778934576427.a n = A214824 (n + 1)

theorem P7114462778934576427.correct : P7114462778934576427.Spec := by
  intro n
  simp only [A214824, Nat.add_sub_cancel]

end A214824

/-! ## A214824.P14878133105293221105

`A000917(n)-∑[A026016(n+1)]`
-/

namespace A214824.P14878133105293221105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214824.P14878133105293221105

namespace A214824

/-- `A000917(n)-∑[A026016(n+1)]` -/
def P14878133105293221105.Spec : Prop :=
  ∀ n, P14878133105293221105.a n = A214824 (n + 1)

end A214824

/-! ## A214824.P1055971401329666992

`A000917(n)-∑[A071725(n+1)]`
-/

namespace A214824.P1055971401329666992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214824.P1055971401329666992

namespace A214824

/-- `A000917(n)-∑[A071725(n+1)]` -/
def P1055971401329666992.Spec : Prop :=
  ∀ n, P1055971401329666992.a n = A214824 (n + 1)

end A214824

/-! ## A214824.P6688247041407864407

`(n+1)*A001700(n+1)-A002057(n)`
-/

namespace A214824.P6688247041407864407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001700 (n + 1) - A002057 n

end

end A214824.P6688247041407864407

namespace A214824

/-- `(n+1)*A001700(n+1)-A002057(n)` -/
def P6688247041407864407.Spec : Prop :=
  ∀ n, P6688247041407864407.a n = A214824 (n + 1)

end A214824

/-! ## A214824.P8025925286644376392

`A002694(n+2)+(n+1)*A002054(n+1)`
-/

namespace A214824.P8025925286644376392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) + (n + 1 : ℤ) * A002054 (n + 1)

end

end A214824.P8025925286644376392

namespace A214824

/-- `A002694(n+2)+(n+1)*A002054(n+1)` -/
def P8025925286644376392.Spec : Prop :=
  ∀ n, P8025925286644376392.a n = A214824 (n + 1)

end A214824

/-! ## A214824.P15421656425776115668

`A002457(n+1)-(A002057(n)+A001700(n+1))`
-/

namespace A214824.P15421656425776115668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - (A002057 n + A001700 (n + 1))

end

end A214824.P15421656425776115668

namespace A214824

/-- `A002457(n+1)-(A002057(n)+A001700(n+1))` -/
def P15421656425776115668.Spec : Prop :=
  ∀ n, P15421656425776115668.a n = A214824 (n + 1)

end A214824

/-!
# A214825: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 3.

The programs for A214825, the canonical program `A214825.P16612928525741229313` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214825 has offset 0).

The definition of A214825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214825.P16612928525741229313`, by `A214825.P16612928525741229313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214825.P16612928525741229313

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214825

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P16612928525741229313.Spec : Prop :=
  ∀ n, (P16612928525741229313.a n : ℤ) = A214825 n

theorem P16612928525741229313.correct : P16612928525741229313.Spec := by
  intro n
  simp only [A214825]

end A214825

/-! ## A214825.P3102606957217725210

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7`
-/

namespace A214825.P3102606957217725210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 7] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A214825.P3102606957217725210

namespace A214825

/-- `2*a(n-1)-a(n-4)` -/
def P3102606957217725210.Spec : Prop :=
  ∀ n, P3102606957217725210.a n = A214825 n

end A214825

/-! ## A214825.P1696900688064031530

`∑[2*A081172(n)]-1`
-/

namespace A214825.P1696900688064031530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A214825.P1696900688064031530

namespace A214825

/-- `∑[2*A081172(n)]-1` -/
def P1696900688064031530.Spec : Prop :=
  ∀ n, P1696900688064031530.a n = A214825 n

end A214825

/-! ## A214825.P8006774484434626630

`A047081(n)+A001590(n)`
-/

namespace A214825.P8006774484434626630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + A001590 n

end

end A214825.P8006774484434626630

namespace A214825

/-- `A047081(n)+A001590(n)` -/
def P8006774484434626630.Spec : Prop :=
  ∀ n, P8006774484434626630.a n = A214825 n

end A214825

/-! ## A214825.P11760939555688791041

`A141036(n)+A100683(n)`
-/

namespace A214825.P11760939555688791041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + A100683 n

end

end A214825.P11760939555688791041

namespace A214825

/-- `A141036(n)+A100683(n)` -/
def P11760939555688791041.Spec : Prop :=
  ∀ n, P11760939555688791041.a n = A214825 n

end A214825

/-! ## A214825.P18272793009169410509

`A001590(n)+∑[A000213(n)]`
-/

namespace A214825.P18272793009169410509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214825.P18272793009169410509

namespace A214825

/-- `A001590(n)+∑[A000213(n)]` -/
def P18272793009169410509.Spec : Prop :=
  ∀ n, P18272793009169410509.a n = A214825 n

end A214825

/-! ## A214825.P11808848820608450757

`A214727(n)+∑[A001590(n)]`
-/

namespace A214825.P11808848820608450757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214825.P11808848820608450757

namespace A214825

/-- `A214727(n)+∑[A001590(n)]` -/
def P11808848820608450757.Spec : Prop :=
  ∀ n, P11808848820608450757.a n = A214825 n

end A214825

/-! ## A214825.P8955106628255879454

`A214727(n)+A000073(n+1)`
-/

namespace A214825.P8955106628255879454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A000073 (n + 1)

end

end A214825.P8955106628255879454

namespace A214825

/-- `A214727(n)+A000073(n+1)` -/
def P8955106628255879454.Spec : Prop :=
  ∀ n, P8955106628255879454.a n = A214825 n

end A214825

/-! ## A214825.P6922078352606623290

`A354784(n+1)+A000213(n)`
-/

namespace A214825.P6922078352606623290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + A000213 n

end

end A214825.P6922078352606623290

namespace A214825

/-- `A354784(n+1)+A000213(n)` -/
def P6922078352606623290.Spec : Prop :=
  ∀ n, P6922078352606623290.a n = A214825 n

end A214825

/-! ## A214825.P2209044402738849695

`A007486(n+1)-A000073(n)`
-/

namespace A214825.P2209044402738849695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) - A000073 n

end

end A214825.P2209044402738849695

namespace A214825

/-- `A007486(n+1)-A000073(n)` -/
def P2209044402738849695.Spec : Prop :=
  ∀ n, P2209044402738849695.a n = A214825 n

end A214825

/-! ## A214825.P11640792319874226502

`A020992(n)+A000073(n+2)`
-/

namespace A214825.P11640792319874226502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + A000073 (n + 2)

end

end A214825.P11640792319874226502

namespace A214825

/-- `A020992(n)+A000073(n+2)` -/
def P11640792319874226502.Spec : Prop :=
  ∀ n, P11640792319874226502.a n = A214825 n

end A214825

/-! ## A214825.P7241333203684574144

`A081172(n+2)+A081172(n)`
-/

namespace A214825.P7241333203684574144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 2) + A081172 n

end

end A214825.P7241333203684574144

namespace A214825

/-- `A081172(n+2)+A081172(n)` -/
def P7241333203684574144.Spec : Prop :=
  ∀ n, P7241333203684574144.a n = A214825 n

end A214825

/-! ## A214825.P575416978194610905

`A214826(n)-A000073(n+1)`
-/

namespace A214825.P575416978194610905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - A000073 (n + 1)

end

end A214825.P575416978194610905

namespace A214825

/-- `A214826(n)-A000073(n+1)` -/
def P575416978194610905.Spec : Prop :=
  ∀ n, P575416978194610905.a n = A214825 n

end A214825

/-! ## A214825.P5400623992074915195

`A275778(n)+A001590(n+2)`
-/

namespace A214825.P5400623992074915195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n + A001590 (n + 2)

end

end A214825.P5400623992074915195

namespace A214825

/-- `A275778(n)+A001590(n+2)` -/
def P5400623992074915195.Spec : Prop :=
  ∀ n, P5400623992074915195.a n = A214825 n

end A214825

/-! ## A214825.P9190238883597908013

`A001590(n+3)+A001590(n)`
-/

namespace A214825.P9190238883597908013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3) + A001590 n

end

end A214825.P9190238883597908013

namespace A214825

/-- `A001590(n+3)+A001590(n)` -/
def P9190238883597908013.Spec : Prop :=
  ∀ n, P9190238883597908013.a n = A214825 n

end A214825

/-! ## A214825.P5679856362281394769

`2*A214727(n)-A000213(n)`
-/

namespace A214825.P5679856362281394769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214727 n - A000213 n

end

end A214825.P5679856362281394769

namespace A214825

/-- `2*A214727(n)-A000213(n)` -/
def P5679856362281394769.Spec : Prop :=
  ∀ n, P5679856362281394769.a n = A214825 n

end A214825

/-! ## A214825.P9636565140482590625

`Δ[A000073(n)]+∑[A000213(n)]`
-/

namespace A214825.P9636565140482590625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A214825.P9636565140482590625

namespace A214825

/-- `Δ[A000073(n)]+∑[A000213(n)]` -/
def P9636565140482590625.Spec : Prop :=
  ∀ n, P9636565140482590625.a n = A214825 n

end A214825

/-! ## A214825.P9036394695565472536

`A000213(n)+Δ[A000213(n+1)]`
-/

namespace A214825.P9036394695565472536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A214825.P9036394695565472536

namespace A214825

/-- `A000213(n)+Δ[A000213(n+1)]` -/
def P9036394695565472536.Spec : Prop :=
  ∀ n, P9036394695565472536.a n = A214825 n

end A214825

/-!
# A214826: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 4.

The programs for A214826, the canonical program `A214826.P6158921752041550372` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214826 has offset 0).

The definition of A214826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214826.P6158921752041550372`, by `A214826.P6158921752041550372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214826.P6158921752041550372

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214826

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P6158921752041550372.Spec : Prop :=
  ∀ n, (P6158921752041550372.a n : ℤ) = A214826 n

theorem P6158921752041550372.correct : P6158921752041550372.Spec := by
  intro n
  simp only [A214826]

end A214826

/-! ## A214826.P4106361470124720221

`A047081(n)+A020992(n)`
-/

namespace A214826.P4106361470124720221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + A020992 n

end

end A214826.P4106361470124720221

namespace A214826

/-- `A047081(n)+A020992(n)` -/
def P4106361470124720221.Spec : Prop :=
  ∀ n, P4106361470124720221.a n = A214826 n

end A214826

/-! ## A214826.P2785249458057231479

`A354080(n)-A000073(n)`
-/

namespace A214826.P2785249458057231479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n - A000073 n

end

end A214826.P2785249458057231479

namespace A214826

/-- `A354080(n)-A000073(n)` -/
def P2785249458057231479.Spec : Prop :=
  ∀ n, P2785249458057231479.a n = A214826 n

end A214826

/-! ## A214826.P7399390405024917347

`A214825(n)+∑[A001590(n)]`
-/

namespace A214826.P7399390405024917347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214826.P7399390405024917347

namespace A214826

/-- `A214825(n)+∑[A001590(n)]` -/
def P7399390405024917347.Spec : Prop :=
  ∀ n, P7399390405024917347.a n = A214826 n

end A214826

/-! ## A214826.P4930444712863766412

`A007486(n+1)+A001590(n)`
-/

namespace A214826.P4930444712863766412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) + A001590 n

end

end A214826.P4930444712863766412

namespace A214826

/-- `A007486(n+1)+A001590(n)` -/
def P4930444712863766412.Spec : Prop :=
  ∀ n, P4930444712863766412.a n = A214826 n

end A214826

/-! ## A214826.P7759527704519972147

`A214825(n)+A000073(n+1)`
-/

namespace A214826.P7759527704519972147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + A000073 (n + 1)

end

end A214826.P7759527704519972147

namespace A214826

/-- `A214825(n)+A000073(n+1)` -/
def P7759527704519972147.Spec : Prop :=
  ∀ n, P7759527704519972147.a n = A214826 n

end A214826

/-! ## A214826.P5396071310940700323

`A354784(n+1)+A214727(n)`
-/

namespace A214826.P5396071310940700323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + A214727 n

end

end A214826.P5396071310940700323

namespace A214826

/-- `A354784(n+1)+A214727(n)` -/
def P5396071310940700323.Spec : Prop :=
  ∀ n, P5396071310940700323.a n = A214826 n

end A214826

/-! ## A214826.P17198300122583307053

`A020992(n)+A001590(n+3)`
-/

namespace A214826.P17198300122583307053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + A001590 (n + 3)

end

end A214826.P17198300122583307053

namespace A214826

/-- `A020992(n)+A001590(n+3)` -/
def P17198300122583307053.Spec : Prop :=
  ∀ n, P17198300122583307053.a n = A214826 n

end A214826

/-! ## A214826.P16257920000748849557

`A100683(n)+2*A000213(n)`
-/

namespace A214826.P16257920000748849557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 n + 2 * A000213 n

end

end A214826.P16257920000748849557

namespace A214826

/-- `A100683(n)+2*A000213(n)` -/
def P16257920000748849557.Spec : Prop :=
  ∀ n, P16257920000748849557.a n = A214826 n

end A214826

/-! ## A214826.P7208749697906819316

`A354080(n)-A354784(n)/2`
-/

namespace A214826.P7208749697906819316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354080 n : ℚ) - (A354784 n : ℚ) / 2

end

end A214826.P7208749697906819316

namespace A214826

/-- `A354080(n)-A354784(n)/2` -/
def P7208749697906819316.Spec : Prop :=
  ∀ n, P7208749697906819316.a n = (A214826 n : ℚ)

end A214826

/-! ## A214826.P252954186416405677

`A007486(n+1)+Δ[A000073(n)]`
-/

namespace A214826.P252954186416405677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) + (f1 (n + 1) - f1 n)

end

end A214826.P252954186416405677

namespace A214826

/-- `A007486(n+1)+Δ[A000073(n)]` -/
def P252954186416405677.Spec : Prop :=
  ∀ n, P252954186416405677.a n = A214826 n

end A214826

/-! ## A214826.P10698805868645944549

`A214727(n)+Δ[A000213(n+1)]`
-/

namespace A214826.P10698805868645944549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + (f1 (n + 1) - f1 n)

end

end A214826.P10698805868645944549

namespace A214826

/-- `A214727(n)+Δ[A000213(n+1)]` -/
def P10698805868645944549.Spec : Prop :=
  ∀ n, P10698805868645944549.a n = A214826 n

end A214826

/-! ## A214826.P14818255397921237261

`∑[A276658(n)+A081172(n)]-1`
-/

namespace A214826.P14818255397921237261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 n + A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A214826.P14818255397921237261

namespace A214826

/-- `∑[A276658(n)+A081172(n)]-1` -/
def P14818255397921237261.Spec : Prop :=
  ∀ n, P14818255397921237261.a n = A214826 n

end A214826

/-! ## A214826.P13847559448752970780

`A214727(n)+∑[2*A001590(n)]`
-/

namespace A214826.P13847559448752970780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214826.P13847559448752970780

namespace A214826

/-- `A214727(n)+∑[2*A001590(n)]` -/
def P13847559448752970780.Spec : Prop :=
  ∀ n, P13847559448752970780.a n = A214826 n

end A214826

/-! ## A214826.P14074265569148694253

`A081172(n+1)+2*A020992(n)`
-/

namespace A214826.P14074265569148694253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + 2 * A020992 n

end

end A214826.P14074265569148694253

namespace A214826

/-- `A081172(n+1)+2*A020992(n)` -/
def P14074265569148694253.Spec : Prop :=
  ∀ n, P14074265569148694253.a n = A214826 n

end A214826

/-! ## A214826.P10201472933443395955

`A214825(n)+A214825(n)-A214727(n)`
-/

namespace A214826.P10201472933443395955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214825 n - A214727 n)

end

end A214826.P10201472933443395955

namespace A214826

/-- `A214825(n)+A214825(n)-A214727(n)` -/
def P10201472933443395955.Spec : Prop :=
  ∀ n, P10201472933443395955.a n = A214826 n

end A214826

/-! ## A214826.P13226527636489365272

`A001590(n)+∑[A001590(n)+A000213(n)]`
-/

namespace A214826.P13226527636489365272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214826.P13226527636489365272

namespace A214826

/-- `A001590(n)+∑[A001590(n)+A000213(n)]` -/
def P13226527636489365272.Spec : Prop :=
  ∀ n, P13226527636489365272.a n = A214826 n

end A214826

/-! ## A214826.P6695820153785819471

`A100683(n+1)+A100683(n)-A000073(n)`
-/

namespace A214826.P6695820153785819471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + (A100683 n - A000073 n)

end

end A214826.P6695820153785819471

namespace A214826

/-- `A100683(n+1)+A100683(n)-A000073(n)` -/
def P6695820153785819471.Spec : Prop :=
  ∀ n, P6695820153785819471.a n = A214826 n

end A214826

/-! ## A214826.P5983446149039778114

`∑[A001590(n)]+A001590(n)+A001590(n+3)`
-/

namespace A214826.P5983446149039778114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001590 n + A001590 (n + 3))

end

end A214826.P5983446149039778114

namespace A214826

/-- `∑[A001590(n)]+A001590(n)+A001590(n+3)` -/
def P5983446149039778114.Spec : Prop :=
  ∀ n, P5983446149039778114.a n = A214826 n

end A214826

/-!
# A214827: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 5.

The programs for A214827, the canonical program `A214827.P11579946662713206379` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214827 has offset 0).

The definition of A214827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214827.P11579946662713206379`, by `A214827.P11579946662713206379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214827.P11579946662713206379

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214827

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P11579946662713206379.Spec : Prop :=
  ∀ n, (P11579946662713206379.a n : ℤ) = A214827 n

theorem P11579946662713206379.correct : P11579946662713206379.Spec := by
  intro n
  simp only [A214827]

end A214827

/-! ## A214827.P8053131496499385032

`∑[2*A276658(n)]-1`
-/

namespace A214827.P8053131496499385032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A214827.P8053131496499385032

namespace A214827

/-- `∑[2*A276658(n)]-1` -/
def P8053131496499385032.Spec : Prop :=
  ∀ n, P8053131496499385032.a n = A214827 n

end A214827

/-! ## A214827.P12050584339719981262

`A354080(n)+A001590(n)`
-/

namespace A214827.P12050584339719981262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + A001590 n

end

end A214827.P12050584339719981262

namespace A214827

/-- `A354080(n)+A001590(n)` -/
def P12050584339719981262.Spec : Prop :=
  ∀ n, P12050584339719981262.a n = A214827 n

end A214827

/-! ## A214827.P10189567679132755640

`A020992(n)+A007486(n+1)`
-/

namespace A214827.P10189567679132755640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + A007486 (n + 1)

end

end A214827.P10189567679132755640

namespace A214827

/-- `A020992(n)+A007486(n+1)` -/
def P10189567679132755640.Spec : Prop :=
  ∀ n, P10189567679132755640.a n = A214827 n

end A214827

/-! ## A214827.P6991538045012645640

`A214826(n)+A000073(n+1)`
-/

namespace A214827.P6991538045012645640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + A000073 (n + 1)

end

end A214827.P6991538045012645640

namespace A214827

/-- `A214826(n)+A000073(n+1)` -/
def P6991538045012645640.Spec : Prop :=
  ∀ n, P6991538045012645640.a n = A214827 n

end A214827

/-! ## A214827.P16497309995523651154

`A214828(n)-A000073(n+1)`
-/

namespace A214827.P16497309995523651154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 n - A000073 (n + 1)

end

end A214827.P16497309995523651154

namespace A214827

/-- `A214828(n)-A000073(n+1)` -/
def P16497309995523651154.Spec : Prop :=
  ∀ n, P16497309995523651154.a n = A214827 n

end A214827

/-! ## A214827.P3869343884255738067

`A276658(n+2)+A276658(n)`
-/

namespace A214827.P3869343884255738067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2) + A276658 n

end

end A214827.P3869343884255738067

namespace A214827

/-- `A276658(n+2)+A276658(n)` -/
def P3869343884255738067.Spec : Prop :=
  ∀ n, P3869343884255738067.a n = A214827 n

end A214827

/-! ## A214827.P13436078189997525333

`A214829(n)-A354784(n+1)`
-/

namespace A214827.P13436078189997525333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n - A354784 (n + 1)

end

end A214827.P13436078189997525333

namespace A214827

/-- `A214829(n)-A354784(n+1)` -/
def P13436078189997525333.Spec : Prop :=
  ∀ n, P13436078189997525333.a n = A214827 n

end A214827

/-! ## A214827.P3702571475686969251

`A141523(n+2)-A354784(n)`
-/

namespace A214827.P3702571475686969251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 (n + 2) - A354784 n

end

end A214827.P3702571475686969251

namespace A214827

/-- `A141523(n+2)-A354784(n)` -/
def P3702571475686969251.Spec : Prop :=
  ∀ n, P3702571475686969251.a n = A214827 n

end A214827

/-! ## A214827.P15614707183210086161

`A141523(n)+2*A100683(n)`
-/

namespace A214827.P15614707183210086161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n + 2 * A100683 n

end

end A214827.P15614707183210086161

namespace A214827

/-- `A141523(n)+2*A100683(n)` -/
def P15614707183210086161.Spec : Prop :=
  ∀ n, P15614707183210086161.a n = A214827 n

end A214827

/-! ## A214827.P17594610523997338427

`2*A214825(n)-A000213(n)`
-/

namespace A214827.P17594610523997338427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214825 n - A000213 n

end

end A214827.P17594610523997338427

namespace A214827

/-- `2*A214825(n)-A000213(n)` -/
def P17594610523997338427.Spec : Prop :=
  ∀ n, P17594610523997338427.a n = A214827 n

end A214827

/-! ## A214827.P732369081448063196

`2*A214826(n)-A214825(n)`
-/

namespace A214827.P732369081448063196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214826 n - A214825 n

end

end A214827.P732369081448063196

namespace A214827

/-- `2*A214826(n)-A214825(n)` -/
def P732369081448063196.Spec : Prop :=
  ∀ n, P732369081448063196.a n = A214827 n

end A214827

/-! ## A214827.P11275534613989112113

`A214825(n)+Δ[A000213(n+1)]`
-/

namespace A214827.P11275534613989112113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (f1 (n + 1) - f1 n)

end

end A214827.P11275534613989112113

namespace A214827

/-- `A214825(n)+Δ[A000213(n+1)]` -/
def P11275534613989112113.Spec : Prop :=
  ∀ n, P11275534613989112113.a n = A214827 n

end A214827

/-! ## A214827.P14823135485181920888

`A214829(n)-Δ[A000213(n+1)]`
-/

namespace A214827.P14823135485181920888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n - (f1 (n + 1) - f1 n)

end

end A214827.P14823135485181920888

namespace A214827

/-- `A214829(n)-Δ[A000213(n+1)]` -/
def P14823135485181920888.Spec : Prop :=
  ∀ n, P14823135485181920888.a n = A214827 n

end A214827

/-! ## A214827.P16925376781696399055

`A214825(n)+∑[2*A001590(n)]`
-/

namespace A214827.P16925376781696399055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214827.P16925376781696399055

namespace A214827

/-- `A214825(n)+∑[2*A001590(n)]` -/
def P16925376781696399055.Spec : Prop :=
  ∀ n, P16925376781696399055.a n = A214827 n

end A214827

/-! ## A214827.P8574115806491347950

`A214899(n+2)-Δ[A214727(n)]`
-/

namespace A214827.P8574115806491347950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 (n + 2) - (f1 (n + 1) - f1 n)

end

end A214827.P8574115806491347950

namespace A214827

/-- `A214899(n+2)-Δ[A214727(n)]` -/
def P8574115806491347950.Spec : Prop :=
  ∀ n, P8574115806491347950.a n = A214827 n

end A214827

/-! ## A214827.P9917237028348898785

`A000213(n+1)+2*A020992(n)`
-/

namespace A214827.P9917237028348898785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + 2 * A020992 n

end

end A214827.P9917237028348898785

namespace A214827

/-- `A000213(n+1)+2*A020992(n)` -/
def P9917237028348898785.Spec : Prop :=
  ∀ n, P9917237028348898785.a n = A214827 n

end A214827

/-! ## A214827.P10928672438124383324

`2*A145027(n+1)-A001644(n)`
-/

namespace A214827.P10928672438124383324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145027 (n + 1) - A001644 n

end

end A214827.P10928672438124383324

namespace A214827

/-- `2*A145027(n+1)-A001644(n)` -/
def P10928672438124383324.Spec : Prop :=
  ∀ n, P10928672438124383324.a n = A214827 n

end A214827

/-!
# A214828: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 6.

The programs for A214828, the canonical program `A214828.P5851753295720503904` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214828 has offset 0).

The definition of A214828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214828.P5851753295720503904`, by `A214828.P5851753295720503904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214828.P5851753295720503904

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214828

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P5851753295720503904.Spec : Prop :=
  ∀ n, (P5851753295720503904.a n : ℤ) = A214828 n

theorem P5851753295720503904.correct : P5851753295720503904.Spec := by
  intro n
  simp only [A214828]

end A214828

/-! ## A214828.P614602109526769729

`A354080(n)+A020992(n)`
-/

namespace A214828.P614602109526769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + A020992 n

end

end A214828.P614602109526769729

namespace A214828

/-- `A354080(n)+A020992(n)` -/
def P614602109526769729.Spec : Prop :=
  ∀ n, P614602109526769729.a n = A214828 n

end A214828

/-! ## A214828.P2534650089575318300

`A214827(n)+A000073(n+1)`
-/

namespace A214828.P2534650089575318300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + A000073 (n + 1)

end

end A214828.P2534650089575318300

namespace A214828

/-- `A214827(n)+A000073(n+1)` -/
def P2534650089575318300.Spec : Prop :=
  ∀ n, P2534650089575318300.a n = A214828 n

end A214828

/-! ## A214828.P15644218800362881932

`A214829(n)-A000073(n+1)`
-/

namespace A214828.P15644218800362881932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n - A000073 (n + 1)

end

end A214828.P15644218800362881932

namespace A214828

/-- `A214829(n)-A000073(n+1)` -/
def P15644218800362881932.Spec : Prop :=
  ∀ n, P15644218800362881932.a n = A214828 n

end A214828

/-! ## A214828.P1751657377207560382

`A100683(n)+2*A214727(n)`
-/

namespace A214828.P1751657377207560382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 n + 2 * A214727 n

end

end A214828.P1751657377207560382

namespace A214828

/-- `A100683(n)+2*A214727(n)` -/
def P1751657377207560382.Spec : Prop :=
  ∀ n, P1751657377207560382.a n = A214828 n

end A214828

/-! ## A214828.P1124953120123484137

`2*A214826(n)-A214727(n)`
-/

namespace A214828.P1124953120123484137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214826 n - A214727 n

end

end A214828.P1124953120123484137

namespace A214828

/-- `2*A214826(n)-A214727(n)` -/
def P1124953120123484137.Spec : Prop :=
  ∀ n, P1124953120123484137.a n = A214828 n

end A214828

/-! ## A214828.P8245896765218320705

`A214830(n)-∑[2*A001590(n)]`
-/

namespace A214828.P8245896765218320705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214828.P8245896765218320705

namespace A214828

/-- `A214830(n)-∑[2*A001590(n)]` -/
def P8245896765218320705.Spec : Prop :=
  ∀ n, P8245896765218320705.a n = A214828 n

end A214828

/-! ## A214828.P4947282013033091630

`A214727(n)+A214829(n)-A214825(n)`
-/

namespace A214828.P4947282013033091630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + (A214829 n - A214825 n)

end

end A214828.P4947282013033091630

namespace A214828

/-- `A214727(n)+A214829(n)-A214825(n)` -/
def P4947282013033091630.Spec : Prop :=
  ∀ n, P4947282013033091630.a n = A214828 n

end A214828

/-! ## A214828.P12491424422495589667

`A214727(n)+A214830(n)-A214826(n)`
-/

namespace A214828.P12491424422495589667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + (A214830 n - A214826 n)

end

end A214828.P12491424422495589667

namespace A214828

/-- `A214727(n)+A214830(n)-A214826(n)` -/
def P12491424422495589667.Spec : Prop :=
  ∀ n, P12491424422495589667.a n = A214828 n

end A214828

/-! ## A214828.P4055373282493602576

`A214825(n)+A214827(n)-A214727(n)`
-/

namespace A214828.P4055373282493602576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214827 n - A214727 n)

end

end A214828.P4055373282493602576

namespace A214828

/-- `A214825(n)+A214827(n)-A214727(n)` -/
def P4055373282493602576.Spec : Prop :=
  ∀ n, P4055373282493602576.a n = A214828 n

end A214828

/-! ## A214828.P3942254749402751038

`A214825(n)+A214829(n)-A214826(n)`
-/

namespace A214828.P3942254749402751038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214829 n - A214826 n)

end

end A214828.P3942254749402751038

namespace A214828

/-- `A214825(n)+A214829(n)-A214826(n)` -/
def P3942254749402751038.Spec : Prop :=
  ∀ n, P3942254749402751038.a n = A214828 n

end A214828

/-! ## A214828.P17862721861438702972

`A214825(n)+A214830(n)-A214827(n)`
-/

namespace A214828.P17862721861438702972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214830 n - A214827 n)

end

end A214828.P17862721861438702972

namespace A214828

/-- `A214825(n)+A214830(n)-A214827(n)` -/
def P17862721861438702972.Spec : Prop :=
  ∀ n, P17862721861438702972.a n = A214828 n

end A214828

/-! ## A214828.P5974788607890581183

`A214826(n)+A214827(n)-A214825(n)`
-/

namespace A214828.P5974788607890581183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214827 n - A214825 n)

end

end A214828.P5974788607890581183

namespace A214828

/-- `A214826(n)+A214827(n)-A214825(n)` -/
def P5974788607890581183.Spec : Prop :=
  ∀ n, P5974788607890581183.a n = A214828 n

end A214828

/-! ## A214828.P4439720920418140809

`A214826(n)+A214829(n)-A214827(n)`
-/

namespace A214828.P4439720920418140809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214829 n - A214827 n)

end

end A214828.P4439720920418140809

namespace A214828

/-- `A214826(n)+A214829(n)-A214827(n)` -/
def P4439720920418140809.Spec : Prop :=
  ∀ n, P4439720920418140809.a n = A214828 n

end A214828

/-! ## A214828.P822451706004151606

`A214827(n)+A214830(n)-A214829(n)`
-/

namespace A214828.P822451706004151606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214830 n - A214829 n)

end

end A214828.P822451706004151606

namespace A214828

/-- `A214827(n)+A214830(n)-A214829(n)` -/
def P822451706004151606.Spec : Prop :=
  ∀ n, P822451706004151606.a n = A214828 n

end A214828

/-! ## A214828.P2957228820772365383

`A214829(n)-A000073(n)-A001590(n)`
-/

namespace A214828.P2957228820772365383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n - A000073 n - A001590 n

end

end A214828.P2957228820772365383

namespace A214828

/-- `A214829(n)-A000073(n)-A001590(n)` -/
def P2957228820772365383.Spec : Prop :=
  ∀ n, P2957228820772365383.a n = A214828 n

end A214828

/-! ## A214828.P11234971570983907449

`A100683(n+1)+A100683(n)+A020992(n)`
-/

namespace A214828.P11234971570983907449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + (A100683 n + A020992 n)

end

end A214828.P11234971570983907449

namespace A214828

/-- `A100683(n+1)+A100683(n)+A020992(n)` -/
def P11234971570983907449.Spec : Prop :=
  ∀ n, P11234971570983907449.a n = A214828 n

end A214828

/-! ## A214828.P16264580894143735803

`A000073(n+1)+A354080(n)+A001590(n)`
-/

namespace A214828.P16264580894143735803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A354080 n + A001590 n)

end

end A214828.P16264580894143735803

namespace A214828

/-- `A000073(n+1)+A354080(n)+A001590(n)` -/
def P16264580894143735803.Spec : Prop :=
  ∀ n, P16264580894143735803.a n = A214828 n

end A214828

/-! ## A214828.P5228485807162973046

`A354784(n+1)+A354080(n)-A000073(n)`
-/

namespace A214828.P5228485807162973046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + (A354080 n - A000073 n)

end

end A214828.P5228485807162973046

namespace A214828

/-- `A354784(n+1)+A354080(n)-A000073(n)` -/
def P5228485807162973046.Spec : Prop :=
  ∀ n, P5228485807162973046.a n = A214828 n

end A214828

/-!
# A214829: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 7.

The programs for A214829, the canonical program `A214829.P444946295997117671` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214829 has offset 0).

The definition of A214829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214829.P444946295997117671`, by `A214829.P444946295997117671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214829.P444946295997117671

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214829

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P444946295997117671.Spec : Prop :=
  ∀ n, (P444946295997117671.a n : ℤ) = A214829 n

theorem P444946295997117671.correct : P444946295997117671.Spec := by
  intro n
  simp only [A214829]

end A214829

/-! ## A214829.P17582918681772910129

`A214830(n)-∑[A001590(n)]`
-/

namespace A214829.P17582918681772910129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214829.P17582918681772910129

namespace A214829

/-- `A214830(n)-∑[A001590(n)]` -/
def P17582918681772910129.Spec : Prop :=
  ∀ n, P17582918681772910129.a n = A214829 n

end A214829

/-! ## A214829.P12438675432653048097

`A214828(n)+A000073(n+1)`
-/

namespace A214829.P12438675432653048097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 n + A000073 (n + 1)

end

end A214829.P12438675432653048097

namespace A214829

/-- `A214828(n)+A000073(n+1)` -/
def P12438675432653048097.Spec : Prop :=
  ∀ n, P12438675432653048097.a n = A214829 n

end A214829

/-! ## A214829.P2210960583382734600

`A214830(n)-A000073(n+1)`
-/

namespace A214829.P2210960583382734600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 n - A000073 (n + 1)

end

end A214829.P2210960583382734600

namespace A214829

/-- `A214830(n)-A000073(n+1)` -/
def P2210960583382734600.Spec : Prop :=
  ∀ n, P2210960583382734600.a n = A214829 n

end A214829

/-! ## A214829.P3763534599779646526

`A183344(n+1)-A354784(n)`
-/

namespace A214829.P3763534599779646526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183344 (n + 1) - A354784 n

end

end A214829.P3763534599779646526

namespace A214829

/-- `A183344(n+1)-A354784(n)` -/
def P3763534599779646526.Spec : Prop :=
  ∀ n, P3763534599779646526.a n = A214829 n

end A214829

/-! ## A214829.P2413189888925553262

`2*A214826(n)-A000213(n)`
-/

namespace A214829.P2413189888925553262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214826 n - A000213 n

end

end A214829.P2413189888925553262

namespace A214829

/-- `2*A214826(n)-A000213(n)` -/
def P2413189888925553262.Spec : Prop :=
  ∀ n, P2413189888925553262.a n = A214829 n

end A214829

/-! ## A214829.P18294958805572309776

`A000073(n)+A214827(n)+A020992(n)`
-/

namespace A214829.P18294958805572309776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A214827 n + A020992 n)

end

end A214829.P18294958805572309776

namespace A214829

/-- `A000073(n)+A214827(n)+A020992(n)` -/
def P18294958805572309776.Spec : Prop :=
  ∀ n, P18294958805572309776.a n = A214829 n

end A214829

/-! ## A214829.P13050518527901710306

`A214727(n)+A214830(n)-A214825(n)`
-/

namespace A214829.P13050518527901710306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + (A214830 n - A214825 n)

end

end A214829.P13050518527901710306

namespace A214829

/-- `A214727(n)+A214830(n)-A214825(n)` -/
def P13050518527901710306.Spec : Prop :=
  ∀ n, P13050518527901710306.a n = A214829 n

end A214829

/-! ## A214829.P359588473153027803

`A214825(n)+A214828(n)-A214727(n)`
-/

namespace A214829.P359588473153027803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214828 n - A214727 n)

end

end A214829.P359588473153027803

namespace A214829

/-- `A214825(n)+A214828(n)-A214727(n)` -/
def P359588473153027803.Spec : Prop :=
  ∀ n, P359588473153027803.a n = A214829 n

end A214829

/-! ## A214829.P14056916430595552459

`A214826(n)+A214827(n)-A214727(n)`
-/

namespace A214829.P14056916430595552459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214827 n - A214727 n)

end

end A214829.P14056916430595552459

namespace A214829

/-- `A214826(n)+A214827(n)-A214727(n)` -/
def P14056916430595552459.Spec : Prop :=
  ∀ n, P14056916430595552459.a n = A214829 n

end A214829

/-! ## A214829.P10715656086391009873

`A214825(n)+A214830(n)-A214826(n)`
-/

namespace A214829.P10715656086391009873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214830 n - A214826 n)

end

end A214829.P10715656086391009873

namespace A214829

/-- `A214825(n)+A214830(n)-A214826(n)` -/
def P10715656086391009873.Spec : Prop :=
  ∀ n, P10715656086391009873.a n = A214829 n

end A214829

/-! ## A214829.P7029422103721539461

`A214826(n)+A214828(n)-A214825(n)`
-/

namespace A214829.P7029422103721539461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214828 n - A214825 n)

end

end A214829.P7029422103721539461

namespace A214829

/-- `A214826(n)+A214828(n)-A214825(n)` -/
def P7029422103721539461.Spec : Prop :=
  ∀ n, P7029422103721539461.a n = A214829 n

end A214829

/-! ## A214829.P12123455538321630

`A214826(n)+A214830(n)-A214827(n)`
-/

namespace A214829.P12123455538321630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214830 n - A214827 n)

end

end A214829.P12123455538321630

namespace A214829

/-- `A214826(n)+A214830(n)-A214827(n)` -/
def P12123455538321630.Spec : Prop :=
  ∀ n, P12123455538321630.a n = A214829 n

end A214829

/-! ## A214829.P12470545604951665628

`A214827(n)+A214827(n)-A214825(n)`
-/

namespace A214829.P12470545604951665628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214827 n - A214825 n)

end

end A214829.P12470545604951665628

namespace A214829

/-- `A214827(n)+A214827(n)-A214825(n)` -/
def P12470545604951665628.Spec : Prop :=
  ∀ n, P12470545604951665628.a n = A214829 n

end A214829

/-! ## A214829.P5515516290857837927

`A214827(n)+A214828(n)-A214826(n)`
-/

namespace A214829.P5515516290857837927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214828 n - A214826 n)

end

end A214829.P5515516290857837927

namespace A214829

/-- `A214827(n)+A214828(n)-A214826(n)` -/
def P5515516290857837927.Spec : Prop :=
  ∀ n, P5515516290857837927.a n = A214829 n

end A214829

/-! ## A214829.P9640650828846871830

`A214827(n)+A214830(n)-A214828(n)`
-/

namespace A214829.P9640650828846871830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214830 n - A214828 n)

end

end A214829.P9640650828846871830

namespace A214829

/-- `A214827(n)+A214830(n)-A214828(n)` -/
def P9640650828846871830.Spec : Prop :=
  ∀ n, P9640650828846871830.a n = A214829 n

end A214829

/-! ## A214829.P13405987799741299060

`A000073(n+1)+A354080(n)+A020992(n)`
-/

namespace A214829.P13405987799741299060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A354080 n + A020992 n)

end

end A214829.P13405987799741299060

namespace A214829

/-- `A000073(n+1)+A354080(n)+A020992(n)` -/
def P13405987799741299060.Spec : Prop :=
  ∀ n, P13405987799741299060.a n = A214829 n

end A214829

/-! ## A214829.P11551383850966745951

`A354080(n)+A354080(n)-A000213(n+1)`
-/

namespace A214829.P11551383850966745951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + (A354080 n - A000213 (n + 1))

end

end A214829.P11551383850966745951

namespace A214829

/-- `A354080(n)+A354080(n)-A000213(n+1)` -/
def P11551383850966745951.Spec : Prop :=
  ∀ n, P11551383850966745951.a n = A214829 n

end A214829

/-! ## A214829.P12422448624305165622

`A000073(n+1)+A214827(n)+A000073(n+1)`
-/

namespace A214829.P12422448624305165622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A214827 n + A000073 (n + 1))

end

end A214829.P12422448624305165622

namespace A214829

/-- `A000073(n+1)+A214827(n)+A000073(n+1)` -/
def P12422448624305165622.Spec : Prop :=
  ∀ n, P12422448624305165622.a n = A214829 n

end A214829

/-!
# A214830: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 8.

The programs for A214830, the canonical program `A214830.P17436138186486476104` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214830 has offset 0).

The definition of A214830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214830.P17436138186486476104`, by `A214830.P17436138186486476104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214830.P17436138186486476104

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214830

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17436138186486476104.Spec : Prop :=
  ∀ n, (P17436138186486476104.a n : ℤ) = A214830 n

theorem P17436138186486476104.correct : P17436138186486476104.Spec := by
  intro n
  simp only [A214830]

end A214830

/-! ## A214830.P10977048077941757859

`A214829(n)+A000073(n+1)`
-/

namespace A214830.P10977048077941757859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + A000073 (n + 1)

end

end A214830.P10977048077941757859

namespace A214830

/-- `A214829(n)+A000073(n+1)` -/
def P10977048077941757859.Spec : Prop :=
  ∀ n, P10977048077941757859.a n = A214830 n

end A214830

/-! ## A214830.P2377571846724860080

`A100683(n)+2*A214825(n)`
-/

namespace A214830.P2377571846724860080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 n + 2 * A214825 n

end

end A214830.P2377571846724860080

namespace A214830

/-- `A100683(n)+2*A214825(n)` -/
def P2377571846724860080.Spec : Prop :=
  ∀ n, P2377571846724860080.a n = A214830 n

end A214830

/-! ## A214830.P11386775432734204186

`A000073(n)+A214828(n)+A020992(n)`
-/

namespace A214830.P11386775432734204186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A214828 n + A020992 n)

end

end A214830.P11386775432734204186

namespace A214830

/-- `A000073(n)+A214828(n)+A020992(n)` -/
def P11386775432734204186.Spec : Prop :=
  ∀ n, P11386775432734204186.a n = A214830 n

end A214830

/-! ## A214830.P13758496987802940743

`A214825(n)+A214829(n)-A214727(n)`
-/

namespace A214830.P13758496987802940743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214829 n - A214727 n)

end

end A214830.P13758496987802940743

namespace A214830

/-- `A214825(n)+A214829(n)-A214727(n)` -/
def P13758496987802940743.Spec : Prop :=
  ∀ n, P13758496987802940743.a n = A214830 n

end A214830

/-! ## A214830.P15248107309899336135

`A214826(n)+A214828(n)-A214727(n)`
-/

namespace A214830.P15248107309899336135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214828 n - A214727 n)

end

end A214830.P15248107309899336135

namespace A214830

/-- `A214826(n)+A214828(n)-A214727(n)` -/
def P15248107309899336135.Spec : Prop :=
  ∀ n, P15248107309899336135.a n = A214830 n

end A214830

/-! ## A214830.P2589911109016124426

`A214827(n)+A214827(n)-A214727(n)`
-/

namespace A214830.P2589911109016124426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214827 n - A214727 n)

end

end A214830.P2589911109016124426

namespace A214830

/-- `A214827(n)+A214827(n)-A214727(n)` -/
def P2589911109016124426.Spec : Prop :=
  ∀ n, P2589911109016124426.a n = A214830 n

end A214830

/-! ## A214830.P8117702712817683272

`A214826(n)+A214829(n)-A214825(n)`
-/

namespace A214830.P8117702712817683272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214829 n - A214825 n)

end

end A214830.P8117702712817683272

namespace A214830

/-- `A214826(n)+A214829(n)-A214825(n)` -/
def P8117702712817683272.Spec : Prop :=
  ∀ n, P8117702712817683272.a n = A214830 n

end A214830

/-! ## A214830.P693208723799706383

`A214827(n)+A214828(n)-A214825(n)`
-/

namespace A214830.P693208723799706383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214828 n - A214825 n)

end

end A214830.P693208723799706383

namespace A214830

/-- `A214827(n)+A214828(n)-A214825(n)` -/
def P693208723799706383.Spec : Prop :=
  ∀ n, P693208723799706383.a n = A214830 n

end A214830

/-! ## A214830.P17628715910726702525

`A214827(n)+A214829(n)-A214826(n)`
-/

namespace A214830.P17628715910726702525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214829 n - A214826 n)

end

end A214830.P17628715910726702525

namespace A214830

/-- `A214827(n)+A214829(n)-A214826(n)` -/
def P17628715910726702525.Spec : Prop :=
  ∀ n, P17628715910726702525.a n = A214830 n

end A214830

/-! ## A214830.P9943953809898103877

`A214828(n)+A214829(n)-A214827(n)`
-/

namespace A214830.P9943953809898103877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 n + (A214829 n - A214827 n)

end

end A214830.P9943953809898103877

namespace A214830

/-- `A214828(n)+A214829(n)-A214827(n)` -/
def P9943953809898103877.Spec : Prop :=
  ∀ n, P9943953809898103877.a n = A214830 n

end A214830

/-! ## A214830.P10660538216544266705

`A000073(n+1)+A214828(n)+A000073(n+1)`
-/

namespace A214830.P10660538216544266705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A214828 n + A000073 (n + 1))

end

end A214830.P10660538216544266705

namespace A214830

/-- `A000073(n+1)+A214828(n)+A000073(n+1)` -/
def P10660538216544266705.Spec : Prop :=
  ∀ n, P10660538216544266705.a n = A214830 n

end A214830

/-! ## A214830.P9514854071913202719

`A000213(n+1)+A214829(n)-A081172(n+1)`
-/

namespace A214830.P9514854071913202719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A214829 n - A081172 (n + 1))

end

end A214830.P9514854071913202719

namespace A214830

/-- `A000213(n+1)+A214829(n)-A081172(n+1)` -/
def P9514854071913202719.Spec : Prop :=
  ∀ n, P9514854071913202719.a n = A214830 n

end A214830

/-! ## A214830.P10739610740935891500

`A275778(n+1)+A214829(n)-A276658(n+1)`
-/

namespace A214830.P10739610740935891500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 (n + 1) + (A214829 n - A276658 (n + 1))

end

end A214830.P10739610740935891500

namespace A214830

/-- `A275778(n+1)+A214829(n)-A276658(n+1)` -/
def P10739610740935891500.Spec : Prop :=
  ∀ n, P10739610740935891500.a n = A214830 n

end A214830

/-! ## A214830.P4855219229004315913

`A214831(n)-∑[A001590(n)]`
-/

namespace A214830.P4855219229004315913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214830.P4855219229004315913

namespace A214830

/-- `A214831(n)-∑[A001590(n)]` -/
def P4855219229004315913.Spec : Prop :=
  ∀ n, P4855219229004315913.a n = A214830 n

end A214830

/-! ## A214830.P12656324384027740064

`A214831(n)-A000073(n+1)`
-/

namespace A214830.P12656324384027740064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - A000073 (n + 1)

end

end A214830.P12656324384027740064

namespace A214830

/-- `A214831(n)-A000073(n+1)` -/
def P12656324384027740064.Spec : Prop :=
  ∀ n, P12656324384027740064.a n = A214830 n

end A214830

/-! ## A214830.P13027671600143891142

`2*A214827(n)-A214727(n)`
-/

namespace A214830.P13027671600143891142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214827 n - A214727 n

end

end A214830.P13027671600143891142

namespace A214830

/-- `2*A214827(n)-A214727(n)` -/
def P13027671600143891142.Spec : Prop :=
  ∀ n, P13027671600143891142.a n = A214830 n

end A214830

/-! ## A214830.P15971969345222922961

`2*A214828(n)-A214826(n)`
-/

namespace A214830.P15971969345222922961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214828 n - A214826 n

end

end A214830.P15971969345222922961

namespace A214830

/-- `2*A214828(n)-A214826(n)` -/
def P15971969345222922961.Spec : Prop :=
  ∀ n, P15971969345222922961.a n = A214830 n

end A214830

/-! ## A214830.P2302825477446905755

`2*A214829(n)-A214828(n)`
-/

namespace A214830.P2302825477446905755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214829 n - A214828 n

end

end A214830.P2302825477446905755

namespace A214830

/-- `2*A214829(n)-A214828(n)` -/
def P2302825477446905755.Spec : Prop :=
  ∀ n, P2302825477446905755.a n = A214830 n

end A214830

/-!
# A214831: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 9.

The programs for A214831, the canonical program `A214831.P14865355771491433293` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214831 has offset 0).

The definition of A214831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214831.P14865355771491433293`, by `A214831.P14865355771491433293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214831.P14865355771491433293

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214831

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P14865355771491433293.Spec : Prop :=
  ∀ n, (P14865355771491433293.a n : ℤ) = A214831 n

theorem P14865355771491433293.correct : P14865355771491433293.Spec := by
  intro n
  simp only [A214831]

end A214831

/-! ## A214831.P11567252800620983379

`A214830(n)+∑[A001590(n)]`
-/

namespace A214831.P11567252800620983379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214831.P11567252800620983379

namespace A214831

/-- `A214830(n)+∑[A001590(n)]` -/
def P11567252800620983379.Spec : Prop :=
  ∀ n, P11567252800620983379.a n = A214831 n

end A214831

/-! ## A214831.P1452270767241707026

`A214830(n)+A000073(n+1)`
-/

namespace A214831.P1452270767241707026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214830 n + A000073 (n + 1)

end

end A214831.P1452270767241707026

namespace A214831

/-- `A214830(n)+A000073(n+1)` -/
def P1452270767241707026.Spec : Prop :=
  ∀ n, P1452270767241707026.a n = A214831 n

end A214831

/-! ## A214831.P6774416835576992273

`A354784(n)+A186830(n+1)`
-/

namespace A214831.P6774416835576992273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A186830 (n + 1)

end

end A214831.P6774416835576992273

namespace A214831

/-- `A354784(n)+A186830(n+1)` -/
def P6774416835576992273.Spec : Prop :=
  ∀ n, P6774416835576992273.a n = A214831 n

end A214831

/-! ## A214831.P6085355171985640346

`A354784(n+1)+A214829(n)`
-/

namespace A214831.P6085355171985640346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1) + A214829 n

end

end A214831.P6085355171985640346

namespace A214831

/-- `A354784(n+1)+A214829(n)` -/
def P6085355171985640346.Spec : Prop :=
  ∀ n, P6085355171985640346.a n = A214831 n

end A214831

/-! ## A214831.P9410022762199847162

`2*A214827(n)-A000213(n)`
-/

namespace A214831.P9410022762199847162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214827 n - A000213 n

end

end A214831.P9410022762199847162

namespace A214831

/-- `2*A214827(n)-A000213(n)` -/
def P9410022762199847162.Spec : Prop :=
  ∀ n, P9410022762199847162.a n = A214831 n

end A214831

/-! ## A214831.P8586367855033373400

`2*A214828(n)-A214825(n)`
-/

namespace A214831.P8586367855033373400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214828 n - A214825 n

end

end A214831.P8586367855033373400

namespace A214831

/-- `2*A214828(n)-A214825(n)` -/
def P8586367855033373400.Spec : Prop :=
  ∀ n, P8586367855033373400.a n = A214831 n

end A214831

/-! ## A214831.P15219947912999865088

`2*A214829(n)-A214827(n)`
-/

namespace A214831.P15219947912999865088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214829 n - A214827 n

end

end A214831.P15219947912999865088

namespace A214831

/-- `2*A214829(n)-A214827(n)` -/
def P15219947912999865088.Spec : Prop :=
  ∀ n, P15219947912999865088.a n = A214831 n

end A214831

/-! ## A214831.P5832132761301672173

`2*A214830(n)-A214829(n)`
-/

namespace A214831.P5832132761301672173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214830 n - A214829 n

end

end A214831.P5832132761301672173

namespace A214831

/-- `2*A214830(n)-A214829(n)` -/
def P5832132761301672173.Spec : Prop :=
  ∀ n, P5832132761301672173.a n = A214831 n

end A214831

/-! ## A214831.P10107668621007227709

`A214829(n)+Δ[A000213(n+1)]`
-/

namespace A214831.P10107668621007227709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + (f1 (n + 1) - f1 n)

end

end A214831.P10107668621007227709

namespace A214831

/-- `A214829(n)+Δ[A000213(n+1)]` -/
def P10107668621007227709.Spec : Prop :=
  ∀ n, P10107668621007227709.a n = A214831 n

end A214831

/-! ## A214831.P6515205242609564390

`A000073(n)+A214829(n)+A020992(n)`
-/

namespace A214831.P6515205242609564390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A214829 n + A020992 n)

end

end A214831.P6515205242609564390

namespace A214831

/-- `A000073(n)+A214829(n)+A020992(n)` -/
def P6515205242609564390.Spec : Prop :=
  ∀ n, P6515205242609564390.a n = A214831 n

end A214831

/-! ## A214831.P7426749919684658352

`A214825(n)+A214830(n)-A214727(n)`
-/

namespace A214831.P7426749919684658352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (A214830 n - A214727 n)

end

end A214831.P7426749919684658352

namespace A214831

/-- `A214825(n)+A214830(n)-A214727(n)` -/
def P7426749919684658352.Spec : Prop :=
  ∀ n, P7426749919684658352.a n = A214831 n

end A214831

/-! ## A214831.P566624073715809366

`A214826(n)+A214829(n)-A214727(n)`
-/

namespace A214831.P566624073715809366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214829 n - A214727 n)

end

end A214831.P566624073715809366

namespace A214831

/-- `A214826(n)+A214829(n)-A214727(n)` -/
def P566624073715809366.Spec : Prop :=
  ∀ n, P566624073715809366.a n = A214831 n

end A214831

/-! ## A214831.P7383002501433825181

`A214827(n)+A214828(n)-A214727(n)`
-/

namespace A214831.P7383002501433825181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214828 n - A214727 n)

end

end A214831.P7383002501433825181

namespace A214831

/-- `A214827(n)+A214828(n)-A214727(n)` -/
def P7383002501433825181.Spec : Prop :=
  ∀ n, P7383002501433825181.a n = A214831 n

end A214831

/-! ## A214831.P11834316891976533743

`A214826(n)+A214830(n)-A214825(n)`
-/

namespace A214831.P11834316891976533743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n + (A214830 n - A214825 n)

end

end A214831.P11834316891976533743

namespace A214831

/-- `A214826(n)+A214830(n)-A214825(n)` -/
def P11834316891976533743.Spec : Prop :=
  ∀ n, P11834316891976533743.a n = A214831 n

end A214831

/-! ## A214831.P17603569279220813410

`A214827(n)+A214829(n)-A214825(n)`
-/

namespace A214831.P17603569279220813410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214829 n - A214825 n)

end

end A214831.P17603569279220813410

namespace A214831

/-- `A214827(n)+A214829(n)-A214825(n)` -/
def P17603569279220813410.Spec : Prop :=
  ∀ n, P17603569279220813410.a n = A214831 n

end A214831

/-! ## A214831.P6968741324561137138

`A214827(n)+A214830(n)-A214826(n)`
-/

namespace A214831.P6968741324561137138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214827 n + (A214830 n - A214826 n)

end

end A214831.P6968741324561137138

namespace A214831

/-- `A214827(n)+A214830(n)-A214826(n)` -/
def P6968741324561137138.Spec : Prop :=
  ∀ n, P6968741324561137138.a n = A214831 n

end A214831

/-! ## A214831.P5634905469744504751

`A214828(n)+A214829(n)-A214826(n)`
-/

namespace A214831.P5634905469744504751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 n + (A214829 n - A214826 n)

end

end A214831.P5634905469744504751

namespace A214831

/-- `A214828(n)+A214829(n)-A214826(n)` -/
def P5634905469744504751.Spec : Prop :=
  ∀ n, P5634905469744504751.a n = A214831 n

end A214831

/-! ## A214831.P1416837735764075345

`A214828(n)+A214830(n)-A214827(n)`
-/

namespace A214831.P1416837735764075345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214828 n + (A214830 n - A214827 n)

end

end A214831.P1416837735764075345

namespace A214831

/-- `A214828(n)+A214830(n)-A214827(n)` -/
def P1416837735764075345.Spec : Prop :=
  ∀ n, P1416837735764075345.a n = A214831 n

end A214831

/-!
# A214832: Integer part of A440 piano key frequencies, start with A0 = the 1st key.

The programs for A214832, the canonical program `A214832.P8000998644278669958` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214832 has offset 1).

The definition of A214832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214832.P8000998644278669958

`floor(2^((n-48)/12)*440)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214832

/-- `floor(2^((n-48)/12)*440)` -/
def P8000998644278669958.Spec : Prop :=
  ∀ n, P8000998644278669958.a n = A214832 (n + 1)

theorem P8000998644278669958.correct : P8000998644278669958.Spec := by
  intro n
  simp only [A214832, Nat.add_sub_cancel]

end A214832

/-! ## A214832.P11546560358005424015

`eq[A086439(n+1), A358846(n)]`
-/

namespace A214832.P11546560358005424015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214832.P11546560358005424015

namespace A214832

/-- `eq[A086439(n+1), A358846(n)]` -/
def P11546560358005424015.Spec : Prop :=
  ∀ n, (P11546560358005424015.a n : ℤ) = A214832 (n + 1)

end A214832

/-! ## A214832.P15516276629480869757

`A350254(A000217(n+2))+24`
-/

namespace A214832.P15516276629480869757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350254 (A000217 (n + 2)).toNat + 24

end

end A214832.P15516276629480869757

namespace A214832

/-- `A350254(A000217(n+2))+24` -/
def P15516276629480869757.Spec : Prop :=
  ∀ n, P15516276629480869757.a n = A214832 (n + 1)

end A214832

/-! ## A214832.P14546561336303734484

`A318700(2*n+(98-n)%90+1)`
-/

namespace A214832.P14546561336303734484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318700 ((2 * n : ℤ) + (Int.tmod (98 - (n : ℤ)) 90 + 1)).toNat

end

end A214832.P14546561336303734484

namespace A214832

/-- `A318700(2*n+(98-n)%90+1)` -/
def P14546561336303734484.Spec : Prop :=
  ∀ n, P14546561336303734484.a n = A214832 (n + 1)

end A214832

/-! ## A214832.P8091890172506741488

`A318700(A250042(n+2))`
-/

namespace A214832.P8091890172506741488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318700 (A250042 (n + 2)).toNat

end

end A214832.P8091890172506741488

namespace A214832

/-- `A318700(A250042(n+2))` -/
def P8091890172506741488.Spec : Prop :=
  ∀ n, P8091890172506741488.a n = A214832 (n + 1)

end A214832

/-!
# A214833: Number of formula representations of n using addition, multiplication and the constant 1.

The programs for A214833, there is no canonical definition to state claims against.
-/

/-! ## A214833.P2614456670555834026

`A340619(A200030(n+1))`
-/

namespace A214833.P2614456670555834026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340619 (A200030 (n + 1)).toNat

end

end A214833.P2614456670555834026

/-! ## A214833.P7442665402635162668

`ceil(A320811(n+4)/37)`
-/

namespace A214833.P7442665402635162668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320811 (n + 4) : ℚ) / 37⌉

end

end A214833.P7442665402635162668

/-! ## A214833.P1208564770884944692

`A329396(2^n-record[and(n, floor(n/2))])`
-/

namespace A214833.P1208564770884944692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 ((2 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214833.P1208564770884944692

/-!
# A214834: a(n) is the smallest prime number such that both a(n) and (4n + 2) - a(n) are prime numbers of the form 4k + 3.

The programs for A214834, there is no canonical definition to state claims against.
-/

/-! ## A214834.P1754663651156598719

`A036467(A020481(n+6))%A191923(3*n+5)`
-/

namespace A214834.P1754663651156598719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036467 (A020481 (n + 6)).toNat) (A191923 (3 * n + 5))

end

end A214834.P1754663651156598719

/-! ## A214834.P9639390839833154938

`A004273(A049716(n+5))%A112041(A016116(n))`
-/

namespace A214834.P9639390839833154938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A049716 (n + 5)).toNat) (A112041 (A016116 n).toNat)

end

end A214834.P9639390839833154938

/-! ## A214834.P18242804573142791669

`A060264(A049653(n+5)%A118747(n+1))`
-/

namespace A214834.P18242804573142791669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (Int.tmod (A049653 (n + 5)) (A118747 (n + 1))).toNat

end

end A214834.P18242804573142791669

/-! ## A214834.P4963116016001889675

`A014692(A020481(n+6))%A112898(n+1)`
-/

namespace A214834.P4963116016001889675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (A020481 (n + 6)).toNat) (A112898 (n + 1))

end

end A214834.P4963116016001889675

/-! ## A214834.P14846332326506018325

`p?[A185091(2*n+3)%A145966(n+4)]`
-/

namespace A214834.P14846332326506018325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185091 (2 * n + 3)) (A145966 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214834.P14846332326506018325

/-!
# A214835: Total sum of lengths of formula representations of n using addition, multiplication and the constant 1.

The programs for A214835, there is no canonical definition to state claims against.
-/

/-! ## A214835.P3956684855678728383

`A072154(n)*A321405(2*n)`
-/

namespace A214835.P3956684855678728383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n * A321405 (2 * n)

end

end A214835.P3956684855678728383

/-! ## A214835.P150068023615533399

`A178158(2*n+1)*A321405(2*n)`
-/

namespace A214835.P150068023615533399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (2 * n + 1) * A321405 (2 * n)

end

end A214835.P150068023615533399

/-!
# A214836: Number of formula representations of n using addition, multiplication, exponentiation and the constant 1.

The programs for A214836, there is no canonical definition to state claims against.
-/

/-! ## A214836.P2973070924353277293

`A371587(A077840(n))`
-/

namespace A214836.P2973070924353277293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A077840 n).toNat

end

end A214836.P2973070924353277293

/-! ## A214836.P17532677806646762243

`A056039(A215675((n+1)!))`
-/

namespace A214836.P17532677806646762243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (A215675 (Nat.factorial (n + 1))).toNat

end

end A214836.P17532677806646762243

/-! ## A214836.P4282939164578663289

`A321393(3*A056277(n+1))`
-/

namespace A214836.P4282939164578663289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (3 * A056277 (n + 1)).toNat

end

end A214836.P4282939164578663289

/-!
# A214837: Primes not expressible as the sum of a prime and its digit sum.

The programs for A214837, there is no canonical definition to state claims against.
-/

/-! ## A214837.P15832182994408736718

`∩[A000040(n+1), comp[A048520(n+1)]]`
-/

namespace A214837.P15832182994408736718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048520 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A214837.P15832182994408736718

/-! ## A214837.P16917434288996154432

`record[A361650(A356862(n+1))]`
-/

namespace A214837.P16917434288996154432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361650 (A356862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214837.P16917434288996154432

/-! ## A214837.P14151371724459269125

`A000040(lt[A245733(n), A377903(n+1)])`
-/

namespace A214837.P14151371724459269125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214837.P14151371724459269125

/-! ## A214837.P13983021774656033441

`eq[A003415(n), A075117(A304717(n+2))]`
-/

namespace A214837.P13983021774656033441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075117 (A304717 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214837.P13983021774656033441

/-! ## A214837.P505610097736885153

`eq[A000727(A326843(n)), A059426(2*n)]`
-/

namespace A214837.P505610097736885153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 (A326843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214837.P505610097736885153

/-!
# A214838: Triangular numbers of the form k^2 + 2.

The programs for A214838, the canonical program `A214838.P12315198182131377277` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214838 has offset 1).

The definition of A214838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214838.P12315198182131377277

`A077241(n)²+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214838

/-- `A077241(n)²+2` -/
def P12315198182131377277.Spec : Prop :=
  ∀ n, P12315198182131377277.a n = A214838 (n + 1)

theorem P12315198182131377277.correct : P12315198182131377277.Spec := by
  intro n
  simp only [A214838, Nat.add_sub_cancel]

end A214838

/-! ## A214838.P5037965649322519415

`A305292(n+1)+1`
-/

namespace A214838.P5037965649322519415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305292 (n + 1) + 1

end

end A214838.P5037965649322519415

namespace A214838

/-- `A305292(n+1)+1` -/
def P5037965649322519415.Spec : Prop :=
  ∀ n, P5037965649322519415.a n = A214838 (n + 1)

end A214838

/-! ## A214838.P14571434294807105222

`(A144797(n+1)/2)²+2`
-/

namespace A214838.P14571434294807105222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A144797 (n + 1) : ℚ) / 2) ^ 2 + 2

end

end A214838.P14571434294807105222

namespace A214838

/-- `(A144797(n+1)/2)²+2` -/
def P14571434294807105222.Spec : Prop :=
  ∀ n, P14571434294807105222.a n = (A214838 (n + 1) : ℚ)

end A214838

/-! ## A214838.P5316691651155190527

`(A143609(n+1)-A006452(n))²+2`
-/

namespace A214838.P5316691651155190527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143609 (n + 1) - A006452 n) ^ 2 + 2

end

end A214838.P5316691651155190527

namespace A214838

/-- `(A143609(n+1)-A006452(n))²+2` -/
def P5316691651155190527.Spec : Prop :=
  ∀ n, P5316691651155190527.a n = A214838 (n + 1)

end A214838

/-! ## A214838.P1847970230669492628

`(A154138(n+1)-A216134(n))²+2`
-/

namespace A214838.P1847970230669492628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154138 (n + 1) - A216134 n) ^ 2 + 2

end

end A214838.P1847970230669492628

namespace A214838

/-- `(A154138(n+1)-A216134(n))²+2` -/
def P1847970230669492628.Spec : Prop :=
  ∀ n, P1847970230669492628.a n = A214838 (n + 1)

end A214838

/-! ## A214838.P5552913486259885561

`(A133326(n+1)-A276601(n+1))²+2`
-/

namespace A214838.P5552913486259885561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133326 (n + 1) - A276601 (n + 1)) ^ 2 + 2

end

end A214838.P5552913486259885561

namespace A214838

/-- `(A133326(n+1)-A276601(n+1))²+2` -/
def P5552913486259885561.Spec : Prop :=
  ∀ n, P5552913486259885561.a n = A214838 (n + 1)

end A214838

/-! ## A214838.P1697410187586059656

`round(A077242(n)²/8)`
-/

namespace A214838.P1697410187586059656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077242 n ^ 2 : ℚ) / 8)

end

end A214838.P1697410187586059656

namespace A214838

/-- `round(A077242(n)²/8)` -/
def P1697410187586059656.Spec : Prop :=
  ∀ n, P1697410187586059656.a n = A214838 (n + 1)

end A214838

/-! ## A214838.P727444974563829896

`or(2, (A077241(n)%A077239(n))²)`
-/

namespace A214838.P727444974563829896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.tmod (A077241 n) (A077239 n) ^ 2)

end

end A214838.P727444974563829896

namespace A214838

/-- `or(2, (A077241(n)%A077239(n))²)` -/
def P727444974563829896.Spec : Prop :=
  ∀ n, P727444974563829896.a n = A214838 (n + 1)

end A214838

/-!
# A214839: Ratios of consecutive terms approach Pi alternating from below and above.

The programs for A214839, the canonical program `A214839.P17985702703642914164` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214839 has offset 1).

The definition of A214839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214839.P17985702703642914164

`floor(π*a(n-1))+log2(gcd(2, n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214839

/-- `floor(π*a(n-1))+log2(gcd(2, n))` -/
def P17985702703642914164.Spec : Prop :=
  ∀ n, P17985702703642914164.a n = (A214839 (n + 1) : ℝ)

end A214839

/-! ## A214839.P14147696365147279847

`A327139(a(n-1)+1)-n%2` with `a(0)=1`
-/

namespace A214839.P14147696365147279847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327139 (a (n - 1) + 1).toNat - ((n % 2 : ℕ) : ℤ)

end

end A214839.P14147696365147279847

namespace A214839

/-- `A327139(a(n-1)+1)-n%2` -/
def P14147696365147279847.Spec : Prop :=
  ∀ n, P14147696365147279847.a n = A214839 (n + 1)

end A214839

/-! ## A214839.P2028511877449460020

`∑[A022853(a(n-1))]-a(n-1)` with `a(0)=1`
-/

namespace A214839.P2028511877449460020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A022853 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A214839.P2028511877449460020

namespace A214839

/-- `∑[A022853(a(n-1))]-a(n-1)` -/
def P2028511877449460020.Spec : Prop :=
  ∀ n, P2028511877449460020.a n = A214839 (n + 1)

end A214839

/-! ## A214839.P6697220602249959525

`Δ[A022853(a(n-1)-1)]` with `a(0)=2`
-/

namespace A214839.P6697220602249959525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A022853 (f1 (n - 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214839.P6697220602249959525

namespace A214839

/-- `Δ[A022853(a(n-1)-1)]` -/
def P6697220602249959525.Spec : Prop :=
  ∀ n, P6697220602249959525.a n = A214839 (n + 1)

end A214839

/-!
# A214840: Averages y of twin prime pairs that satisfy y = x^2 + x - 2.

The programs for A214840, there is no canonical definition to state claims against.
-/

/-! ## A214840.P2822010761306462919

`∩[A014574(n+1), A028552(n)]`
-/

namespace A214840.P2822010761306462919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214840.P2822010761306462919

/-! ## A214840.P13694335067584995033

`∩[A217259(n+1), A028552(n)]`
-/

namespace A214840.P13694335067584995033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214840.P13694335067584995033

/-! ## A214840.P9222376916087199049

`∩[A014574(n+1), A265611(n)]`
-/

namespace A214840.P9222376916087199049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265611 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214840.P9222376916087199049

/-! ## A214840.P803176565568779875

`∩[A217259(n+1), A265611(n)]`
-/

namespace A214840.P803176565568779875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265611 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214840.P803176565568779875

/-! ## A214840.P12521684685945176621

`∩[A014574(n+1), A014616(n+1)]`
-/

namespace A214840.P12521684685945176621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214840.P12521684685945176621

/-!
# A214841: Number of ways to write n=p+q/2, where p and q are practical numbers smaller than n.

The programs for A214841, there is no canonical definition to state claims against.
-/

/-! ## A214841.P14261951830973096782

`A153246(A001567(n+1)%A016969(n))`
-/

namespace A214841.P14261951830973096782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (Int.tmod (A001567 (n + 1)) (A016969 n)).toNat

end

end A214841.P14261951830973096782

/-! ## A214841.P15398182046436040347

`A169695(A300520(n))-A133734(A265910(n+1))`
-/

namespace A214841.P15398182046436040347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A300520 n).toNat - A133734 (A265910 (n + 1)).toNat

end

end A214841.P15398182046436040347

/-! ## A214841.P7133768238576983233

`A001222(A103894(A002326(n))-1)`
-/

namespace A214841.P7133768238576983233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103894 (A002326 n).toNat - 1).toNat

end

end A214841.P7133768238576983233

/-! ## A214841.P5623480857380375836

`A169988(A169995(n+4)+A000265(n+1))`
-/

namespace A214841.P5623480857380375836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169988 (A169995 (n + 4) + A000265 (n + 1)).toNat

end

end A214841.P5623480857380375836

/-! ## A214841.P2687034814985992614

`A045373(A006748(n+1)+1)%A212625(n+1)`
-/

namespace A214841.P2687034814985992614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045373 (A006748 (n + 1) + 1).toNat) (A212625 (n + 1))

end

end A214841.P2687034814985992614

/-!
# A214843: Number of formula representations of n using addition, exponentiation and the constant 1.

The programs for A214843, there is no canonical definition to state claims against.
-/

/-! ## A214843.P4467590821435586011

`A034888(A135339(n+1))`
-/

namespace A214843.P4467590821435586011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A135339 (n + 1)).toNat

end

end A214843.P4467590821435586011

/-! ## A214843.P2350658930110200195

`A291189(n+1)+A004526(A309861(n))`
-/

namespace A214843.P2350658930110200195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291189 (n + 1) + A004526 (A309861 n).toNat

end

end A214843.P2350658930110200195

/-! ## A214843.P14686066717678918374

`A226190(A135336(n+1))+char[7]`
-/

namespace A214843.P14686066717678918374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A135336 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A214843.P14686066717678918374

/-! ## A214843.P9727978213073342682

`round(A049533(A001893(n+3)+1)/(n+3))`
-/

namespace A214843.P9727978213073342682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049533 (A001893 (n + 3) + 1).toNat : ℚ) / (n + 3 : ℚ))

end

end A214843.P9727978213073342682

/-!
# A214844: Number of partitions of 2^n into three distinct primes.

The programs for A214844, there is no canonical definition to state claims against.
-/

/-! ## A214844.P3815457034739092935

`A061357(or(1, 2^n-1))`
-/

namespace A214844.P3815457034739092935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A214844.P3815457034739092935

/-! ## A214844.P2159546976006854393

`A061357(2^n-floor(atan(n)))`
-/

namespace A214844.P2159546976006854393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 ((2 ^ n : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A214844.P2159546976006854393

/-! ## A214844.P3859984493225723969

`A061357(abs(2-2^n)+1)`
-/

namespace A214844.P3859984493225723969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (|2 - (2 ^ n : ℤ)| + 1).toNat

end

end A214844.P3859984493225723969

/-! ## A214844.P9751089992652743327

`floor(A002372(or(1, 2^n-1))/2)`
-/

namespace A214844.P9751089992652743327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002372 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat : ℚ) / 2⌋

end

end A214844.P9751089992652743327

/-! ## A214844.P13151841025776741365

`A125688(2^(n+1))`
-/

namespace A214844.P13151841025776741365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (2 ^ (n + 1))

end

end A214844.P13151841025776741365

/-!
# A214845: Triangle read by rows: T(n,m) =(n/k)^(k-1) mod k, where k is the m-th divisor of n, 1 <= m <= tau(n).

The programs for A214845, there is no canonical definition to state claims against.
-/

/-! ## A214845.P9808451515624774455

`(A056538(n+1)^A263730(n+2))%A027750(n+1)`
-/

namespace A214845.P9808451515624774455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A056538 (n + 1) : ℚ) ^ (A263730 (n + 2) : ℤ))) (A027750 (n + 1))

end

end A214845.P9808451515624774455

/-! ## A214845.P10799931795199006204

`A213919(n+1)%A027750(n+1)`
-/

namespace A214845.P10799931795199006204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213919 (n + 1)) (A027750 (n + 1))

end

end A214845.P10799931795199006204

/-! ## A214845.P649032093906676990

`A213919(C(n+1, n))%A233773(n+1)`
-/

namespace A214845.P649032093906676990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213919 (Nat.choose (n + 1) n)) (A233773 (n + 1))

end

end A214845.P649032093906676990

/-! ## A214845.P10315982508238644190

`A213919(A000027(n+1))%A233773(n+1)`
-/

namespace A214845.P10315982508238644190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213919 (A000027 (n + 1)).toNat) (A233773 (n + 1))

end

end A214845.P10315982508238644190

/-! ## A214845.P13981204444421148413

`A028310(A213919(n+1))%A233773(n+1)`
-/

namespace A214845.P13981204444421148413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A213919 (n + 1)).toNat) (A233773 (n + 1))

end

end A214845.P13981204444421148413

/-! ## A214845.P4068648908544620093

`A000027(A213919(n+1))%(A061017(n+1)/A056538(n+1))`
-/

namespace A214845.P4068648908544620093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A213919 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ)))

end

end A214845.P4068648908544620093

/-!
# A214846: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 6 or if k-n >= 6, T(k,0) = T(0,k) = 1 if 0 <= k <= 5, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A214846, there is no canonical definition to state claims against.
-/

/-! ## A214846.P9229860967532991933

`A007318(n)-A079998(A263873(n+1)%A141214(n))`
-/

namespace A214846.P9229860967532991933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A079998 (Int.tmod (A263873 (n + 1)) (A141214 n)).toNat

end

end A214846.P9229860967532991933

/-! ## A214846.P5174991618230453573

`A007318(n)-A024326(A317011(n+1))`
-/

namespace A214846.P5174991618230453573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A024326 (A317011 (n + 1)).toNat

end

end A214846.P5174991618230453573

/-! ## A214846.P10768993339865893997

`A223968(n)+A079260(A219310(n+2))`
-/

namespace A214846.P10768993339865893997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223968 n + A079260 (A219310 (n + 2)).toNat

end

end A214846.P10768993339865893997

/-! ## A214846.P10687950973989337939

`A007318(n)-A356172(A189343(n+1))`
-/

namespace A214846.P10687950973989337939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A356172 (A189343 (n + 1)).toNat

end

end A214846.P10687950973989337939

/-! ## A214846.P2792371504762849068

`A061676(n+1)%A192098(n+1)`
-/

namespace A214846.P2792371504762849068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061676 (n + 1)) (A192098 (n + 1))

end

end A214846.P2792371504762849068

/-!
# A214847: Primes that become emirps when their most-significant-digit is deleted.

The programs for A214847, there is no canonical definition to state claims against.
-/

/-! ## A214847.P1439167971501305644

`A069488(n+1)-A283666(A222444(n+1))`
-/

namespace A214847.P1439167971501305644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 1) - A283666 (A222444 (n + 1)).toNat

end

end A214847.P1439167971501305644

/-!
# A214848: First difference of A022846.

The programs for A214848, the canonical program `A214848.P11097878260776207900` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214848 has offset 0).

The definition of A214848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214848.P951878919066142304

`Δ[round(n*sqrt(2))]`
-/

namespace A214848.P951878919066142304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214848.P951878919066142304

namespace A214848

/-- `Δ[round(n*sqrt(2))]` -/
def P951878919066142304.Spec : Prop :=
  ∀ n, P951878919066142304.a n = A214848 n

end A214848

/-! ## A214848.P11747447404724798355

`A006338(n)^a(n-1)` with `a(0)=1`
-/

namespace A214848.P11747447404724798355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A006338 n : ℝ) ^ (a (n - 1))

end

end A214848.P11747447404724798355

namespace A214848

/-- `A006338(n)^a(n-1)` -/
def P11747447404724798355.Spec : Prop :=
  ∀ n, P11747447404724798355.a n = (A214848 n : ℝ)

end A214848

/-! ## A214848.P11097878260776207900

`A022846(n+1)-A022846(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214848

/-- `A022846(n+1)-A022846(n)` -/
def P11097878260776207900.Spec : Prop :=
  ∀ n, P11097878260776207900.a n = A214848 n

theorem P11097878260776207900.correct : P11097878260776207900.Spec := by
  intro n
  simp only [A214848]

end A214848

/-! ## A214848.P11155243968737356015

`A018245(n+1)-A276864(n+1)`
-/

namespace A214848.P11155243968737356015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018245 (n + 1) - A276864 (n + 1)

end

end A214848.P11155243968737356015

namespace A214848

/-- `A018245(n+1)-A276864(n+1)` -/
def P11155243968737356015.Spec : Prop :=
  ∀ n, P11155243968737356015.a n = A214848 n

end A214848

/-! ## A214848.P2599528039404718021

`and(A018245(n+1), A144611(n))+1`
-/

namespace A214848.P2599528039404718021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018245 (n + 1)) (A144611 n) + 1

end

end A214848.P2599528039404718021

namespace A214848

/-- `and(A018245(n+1), A144611(n))+1` -/
def P2599528039404718021.Spec : Prop :=
  ∀ n, P2599528039404718021.a n = A214848 n

end A214848

/-! ## A214848.P18382151882308181028

`A276858(n+1)+A001951(n)-A001951(n+1)`
-/

namespace A214848.P18382151882308181028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276858 (n + 1) + (A001951 n - A001951 (n + 1))

end

end A214848.P18382151882308181028

namespace A214848

/-- `A276858(n+1)+A001951(n)-A001951(n+1)` -/
def P18382151882308181028.Spec : Prop :=
  ∀ n, P18382151882308181028.a n = A214848 n

end A214848

/-! ## A214848.P3678381590819315386

`A104521(2*n+1)+A104521(2*n)`
-/

namespace A214848.P3678381590819315386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 (2 * n + 1) + A104521 (2 * n)

end

end A214848.P3678381590819315386

namespace A214848

/-- `A104521(2*n+1)+A104521(2*n)` -/
def P3678381590819315386.Spec : Prop :=
  ∀ n, P3678381590819315386.a n = A214848 n

end A214848

/-! ## A214848.P17181217551787292180

`A106036(A258703(2*(n+1))-A049473(2*n))`
-/

namespace A214848.P17181217551787292180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 (A258703 (2 * (n + 1)) - A049473 (2 * n)).toNat

end

end A214848.P17181217551787292180

namespace A214848

/-- `A106036(A258703(2*(n+1))-A049473(2*n))` -/
def P17181217551787292180.Spec : Prop :=
  ∀ n, P17181217551787292180.a n = A214848 n

end A214848

/-! ## A214848.P17058460823671928072

`Δ[A189573(2*n+1)]-2`
-/

namespace A214848.P17058460823671928072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A214848.P17058460823671928072

namespace A214848

/-- `Δ[A189573(2*n+1)]-2` -/
def P17058460823671928072.Spec : Prop :=
  ∀ n, P17058460823671928072.a n = A214848 n

end A214848

/-! ## A214848.P15775693155753467465

`A040001(A101438(2*n+1)+A101438(2*(n+1)))`
-/

namespace A214848.P15775693155753467465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A101438 (2 * n + 1) + A101438 (2 * (n + 1))).toNat

end

end A214848.P15775693155753467465

namespace A214848

/-- `A040001(A101438(2*n+1)+A101438(2*(n+1)))` -/
def P15775693155753467465.Spec : Prop :=
  ∀ n, P15775693155753467465.a n = A214848 n

end A214848

/-! ## A214848.P8890091896133327702

`A241575(n)+1`
-/

namespace A214848.P8890091896133327702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241575 n + 1

end

end A214848.P8890091896133327702

namespace A214848

/-- `A241575(n)+1` -/
def P8890091896133327702.Spec : Prop :=
  ∀ n, P8890091896133327702.a n = A214848 n

end A214848

/-!
# A214849: Number of n-permutations having all cycles of odd length and at most one fixed point.

The programs for A214849, there is no canonical definition to state claims against.
-/

/-! ## A214849.P18410323115269754470

`A130648(n)-A102681(A045890(n))`
-/

namespace A214849.P18410323115269754470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130648 n - A102681 (A045890 n).toNat

end

end A214849.P18410323115269754470

/-! ## A214849.P6266003042477717835

`A130648(n)-A107078(A130619(n+1))`
-/

namespace A214849.P6266003042477717835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130648 n - A107078 (A130619 (n + 1)).toNat

end

end A214849.P6266003042477717835

/-! ## A214849.P14671970242142966065

`A211312(n+2)*A329348(A304918(n))`
-/

namespace A214849.P14671970242142966065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211312 (n + 2) * A329348 (A304918 n).toNat

end

end A214849.P14671970242142966065

/-!
# A214852: Indices of Fibonacci numbers with the same number of 1's and 0's in their binary representation.

The programs for A214852, there is no canonical definition to state claims against.
-/

/-! ## A214852.P12731242297749763311

`eq[0, A350700(n)]`
-/

namespace A214852.P12731242297749763311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214852.P12731242297749763311

/-! ## A214852.P11802117519146059679

`eq[A011373(n), A059016(n)]`
-/

namespace A214852.P11802117519146059679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214852.P11802117519146059679

/-! ## A214852.P4371158883531440408

`lt[A350700(n)², A057427(n)]`
-/

namespace A214852.P4371158883531440408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214852.P4371158883531440408

/-! ## A214852.P11836428797738199255

`eq[A214923(n+1), A214923(n)]+1`
-/

namespace A214852.P11836428797738199255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A214852.P11836428797738199255

/-! ## A214852.P13447621526369379864

`lt[A350700(n)²*(n+1)², A052126(n+1)]`
-/

namespace A214852.P13447621526369379864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 n ^ 2 * ((n + 1) ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214852.P13447621526369379864

/-!
# A214855: Fibonacci numbers divisible by 10.

The programs for A214855, the canonical program `A214855.P6881747230350802381` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214855 has offset 1).

The definition of A214855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214855.P6881747230350802381

`A000045(15*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214855

/-- `A000045(15*n)` -/
def P6881747230350802381.Spec : Prop :=
  ∀ n, P6881747230350802381.a n = A214855 (n + 1)

theorem P6881747230350802381.correct : P6881747230350802381.Spec := by
  intro n
  simp only [A214855, Nat.add_sub_cancel]

end A214855

/-! ## A214855.P10784152554007549536

`A102312(3*n)`
-/

namespace A214855.P10784152554007549536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102312 (3 * n)

end

end A214855.P10784152554007549536

namespace A214855

/-- `A102312(3*n)` -/
def P10784152554007549536.Spec : Prop :=
  ∀ n, P10784152554007549536.a n = A214855 (n + 1)

end A214855

/-! ## A214855.P12014687590241099858

`A014445(5*n)`
-/

namespace A214855.P12014687590241099858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (5 * n)

end

end A214855.P12014687590241099858

namespace A214855

/-- `A014445(5*n)` -/
def P12014687590241099858.Spec : Prop :=
  ∀ n, P12014687590241099858.a n = A214855 (n + 1)

end A214855

/-! ## A214855.P11535475508801343037

`A117647(10*n)`
-/

namespace A214855.P11535475508801343037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (10 * n)

end

end A214855.P11535475508801343037

namespace A214855

/-- `A117647(10*n)` -/
def P11535475508801343037.Spec : Prop :=
  ∀ n, P11535475508801343037.a n = A214855 (n + 1)

end A214855

/-! ## A214855.P2320839137941477751

`A104221(15*n)`
-/

namespace A214855.P2320839137941477751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (15 * n)

end

end A214855.P2320839137941477751

namespace A214855

/-- `A104221(15*n)` -/
def P2320839137941477751.Spec : Prop :=
  ∀ n, P2320839137941477751.a n = A214855 (n + 1)

end A214855

/-!
# A214856: Number of triangular numbers in interval ](n-1)^2, n^2] for n>0, a(0)=1.

The programs for A214856, there is no canonical definition to state claims against.
-/

/-! ## A214856.P1242692663144610177

`abs(Δ[A003056((1-n)²)])`
-/

namespace A214856.P1242692663144610177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214856.P1242692663144610177

/-!
# A214857: Number of triangular numbers in interval [0, n^2].

The programs for A214857, the canonical program `A214857.P13673621577136797249` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214857 has offset 0).

The definition of A214857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214857.P13673621577136797249

`floor((1+sqrt(1+8*n²))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214857

/-- `floor((1+sqrt(1+8*n²))/2)` -/
def P13673621577136797249.Spec : Prop :=
  ∀ n, P13673621577136797249.a n = A214857 n

theorem P13673621577136797249.correct : P13673621577136797249.Spec := by
  intro n
  simp only [A214857]

end A214857

/-! ## A214857.P4522671657379035709

`round(sqrt(2)/acot(n))`
-/

namespace A214857.P4522671657379035709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A214857.P4522671657379035709

namespace A214857

/-- `round(sqrt(2)/acot(n))` -/
def P4522671657379035709.Spec : Prop :=
  ∀ n, P4522671657379035709.a n = A214857 n

end A214857

/-! ## A214857.P10803847522861726735

`∑[A214856(n)]`
-/

namespace A214857.P10803847522861726735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214857.P10803847522861726735

namespace A214857

/-- `∑[A214856(n)]` -/
def P10803847522861726735.Spec : Prop :=
  ∀ n, P10803847522861726735.a n = A214857 n

end A214857

/-! ## A214857.P14331469715925348072

`round(sqrt(A005893(n)))`
-/

namespace A214857.P14331469715925348072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005893 n : ℝ))

end

end A214857.P14331469715925348072

namespace A214857

/-- `round(sqrt(A005893(n)))` -/
def P14331469715925348072.Spec : Prop :=
  ∀ n, P14331469715925348072.a n = A214857 n

end A214857

/-! ## A214857.P380606716047902304

`round(sqrt(A058331(n)))`
-/

namespace A214857.P380606716047902304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058331 n : ℝ))

end

end A214857.P380606716047902304

namespace A214857

/-- `round(sqrt(A058331(n)))` -/
def P380606716047902304.Spec : Prop :=
  ∀ n, P380606716047902304.a n = A214857 n

end A214857

/-! ## A214857.P577639979161405203

`round(sqrt(A271624(n+1)))`
-/

namespace A214857.P577639979161405203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A271624 (n + 1) : ℝ))

end

end A214857.P577639979161405203

namespace A214857

/-- `round(sqrt(A271624(n+1)))` -/
def P577639979161405203.Spec : Prop :=
  ∀ n, P577639979161405203.a n = A214857 n

end A214857

/-! ## A214857.P11775209122521743914

`A361684(n+1)-Δ[n²]`
-/

namespace A214857.P11775209122521743914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361684 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A214857.P11775209122521743914

namespace A214857

/-- `A361684(n+1)-Δ[n²]` -/
def P11775209122521743914.Spec : Prop :=
  ∀ n, P11775209122521743914.a n = A214857 n

end A214857

/-! ## A214857.P15329073551334427950

`comp[ceil(sqrt(A000217(n))+n)]-n`
-/

namespace A214857.P15329073551334427950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000217 n : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A214857.P15329073551334427950

namespace A214857

/-- `comp[ceil(sqrt(A000217(n))+n)]-n` -/
def P15329073551334427950.Spec : Prop :=
  ∀ n, P15329073551334427950.a n = A214857 n

end A214857

/-! ## A214857.P10617006075135303977

`ceil(sqrt(A056220(n)-a(n-1)+2))` with `a(0)=1`
-/

namespace A214857.P10617006075135303977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (A056220 n - a (n - 1) + 2 : ℝ)⌉

end

end A214857.P10617006075135303977

namespace A214857

/-- `ceil(sqrt(A056220(n)-a(n-1)+2))` -/
def P10617006075135303977.Spec : Prop :=
  ∀ n, P10617006075135303977.a n = A214857 n

end A214857

/-! ## A214857.P7141335566063979461

`A022846(n)+A378301(n)-A214856(n+1)`
-/

namespace A214857.P7141335566063979461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n + (A378301 n - A214856 (n + 1))

end

end A214857.P7141335566063979461

namespace A214857

/-- `A022846(n)+A378301(n)-A214856(n+1)` -/
def P7141335566063979461.Spec : Prop :=
  ∀ n, P7141335566063979461.a n = A214857 n

end A214857

/-! ## A214857.P17048648769709529854

`lt[A175032(n), n+1]+1`
-/

namespace A214857.P17048648769709529854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A214857.P17048648769709529854

namespace A214857

/-- `lt[A175032(n), n+1]+1` -/
def P17048648769709529854.Spec : Prop :=
  ∀ n, (P17048648769709529854.a n : ℤ) = A214857 n

end A214857

/-! ## A214857.P9477014761758647446

`round(sqrt(A099392(2*n+1)))`
-/

namespace A214857.P9477014761758647446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A099392 (2 * n + 1) : ℝ))

end

end A214857.P9477014761758647446

namespace A214857

/-- `round(sqrt(A099392(2*n+1)))` -/
def P9477014761758647446.Spec : Prop :=
  ∀ n, P9477014761758647446.a n = A214857 n

end A214857

/-! ## A214857.P14587601504552773875

`round(sqrt(A105343(2*n)))`
-/

namespace A214857.P14587601504552773875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A105343 (2 * n) : ℝ))

end

end A214857.P14587601504552773875

namespace A214857

/-- `round(sqrt(A105343(2*n)))` -/
def P14587601504552773875.Spec : Prop :=
  ∀ n, P14587601504552773875.a n = A214857 n

end A214857

/-! ## A214857.P18335303378521811892

`round(sqrt(A061925(2*n)))`
-/

namespace A214857.P18335303378521811892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A061925 (2 * n) : ℝ))

end

end A214857.P18335303378521811892

namespace A214857

/-- `round(sqrt(A061925(2*n)))` -/
def P18335303378521811892.Spec : Prop :=
  ∀ n, P18335303378521811892.a n = A214857 n

end A214857

/-! ## A214857.P11108748289573981268

`round(sqrt(A097063(2*n)))`
-/

namespace A214857.P11108748289573981268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A097063 (2 * n) : ℝ))

end

end A214857.P11108748289573981268

namespace A214857

/-- `round(sqrt(A097063(2*n)))` -/
def P11108748289573981268.Spec : Prop :=
  ∀ n, P11108748289573981268.a n = A214857 n

end A214857

/-! ## A214857.P17035876027346416006

`round(sqrt(A330357(2*n)))`
-/

namespace A214857.P17035876027346416006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A330357 (2 * n) : ℝ))

end

end A214857.P17035876027346416006

namespace A214857

/-- `round(sqrt(A330357(2*n)))` -/
def P17035876027346416006.Spec : Prop :=
  ∀ n, P17035876027346416006.a n = A214857 n

end A214857

/-! ## A214857.P1640815610735351912

`round(sqrt(A075855(2*n+1)))`
-/

namespace A214857.P1640815610735351912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A075855 (2 * n + 1) : ℝ))

end

end A214857.P1640815610735351912

namespace A214857

/-- `round(sqrt(A075855(2*n+1)))` -/
def P1640815610735351912.Spec : Prop :=
  ∀ n, P1640815610735351912.a n = A214857 n

end A214857

/-! ## A214857.P8667893930403524406

`round(sqrt(A092534(2*n+1)))`
-/

namespace A214857.P8667893930403524406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A092534 (2 * n + 1) : ℝ))

end

end A214857.P8667893930403524406

namespace A214857

/-- `round(sqrt(A092534(2*n+1)))` -/
def P8667893930403524406.Spec : Prop :=
  ∀ n, P8667893930403524406.a n = A214857 n

end A214857

/-!
# A214858: Natural numbers missing from A214857.

The programs for A214858, there is no canonical definition to state claims against.
-/

/-! ## A214858.P12049698063383367857

`round((sqrt(8)+2)*sqrt(∑[n+1]))`
-/

namespace A214858.P12049698063383367857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A214858.P12049698063383367857

/-! ## A214858.P17805016447646416582

`comp[round(sqrt(2*(2*C(n, 2)+n+1)))-2]+2`
-/

namespace A214858.P17805016447646416582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (2 * Nat.choose n 2 + n + 1) : ℝ)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A214858.P17805016447646416582

/-! ## A214858.P11988910603573066576

`lt[n, A175032(n)]+1`
-/

namespace A214858.P11988910603573066576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A214858.P11988910603573066576

/-! ## A214858.P15769812184472581797

`comp[A214857(n)-1]+1`
-/

namespace A214858.P15769812184472581797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A214858.P15769812184472581797

/-! ## A214858.P16761125747909169530

`comp[round(sqrt(A005893(n)))-1]+1`
-/

namespace A214858.P16761125747909169530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A005893 n : ℝ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A214858.P16761125747909169530

/-! ## A214858.P8460760719406381623

`2*n+A093001(n+1)+3`
-/

namespace A214858.P8460760719406381623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A093001 (n + 1) + 3)

end

end A214858.P8460760719406381623

/-! ## A214858.P11941362391695531031

`A248231(2*n+3)+2*n+3`
-/

namespace A214858.P11941362391695531031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * n + 3) + (2 * n + 3 : ℤ)

end

end A214858.P11941362391695531031

/-! ## A214858.P18392787136544054036

`round(sqrt(A132209(n+1)))+2*n+3`
-/

namespace A214858.P18392787136544054036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A132209 (n + 1) : ℝ)) + (2 * n : ℤ) + 3

end

end A214858.P18392787136544054036

/-! ## A214858.P12832072628182173670

`A080036(∑[2*(n+1)])-∑[2*n]`
-/

namespace A214858.P12832072628182173670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A214858.P12832072628182173670

/-! ## A214858.P18276194247489749145

`A002024(∑[2*(n+1)])+2*n+3`
-/

namespace A214858.P18276194247489749145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 3 : ℤ)

end

end A214858.P18276194247489749145

/-!
# A214859: Triangle read by rows, T(n,k) = n^2 - k*(k+1)/2 if k*(k+1)/2 <= n^2.

The programs for A214859, there is no canonical definition to state claims against.
-/

/-! ## A214859.P9139348387361569959

`A299757(A094587(n))+A083920(A061579(n))`
-/

namespace A214859.P9139348387361569959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299757 (A094587 n).toNat + A083920 (A061579 n).toNat

end

end A214859.P9139348387361569959

/-!
# A214860: First differences of round(n*sqrt(3)) (A022847).

The programs for A214860, the canonical program `A214860.P3460420051766909804` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214860 has offset 1).

The definition of A214860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214860.P9926922834929637839

`Δ[round(n*sqrt(3))]`
-/

namespace A214860.P9926922834929637839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214860.P9926922834929637839

namespace A214860

/-- `Δ[round(n*sqrt(3))]` -/
def P9926922834929637839.Spec : Prop :=
  ∀ n, P9926922834929637839.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P16140565426898958915

`Δ[round(n*root(3, 2))]!`
-/

namespace A214860.P16140565426898958915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A214860.P16140565426898958915

namespace A214860

/-- `Δ[round(n*root(3, 2))]!` -/
def P16140565426898958915.Spec : Prop :=
  ∀ n, (P16140565426898958915.a n : ℤ) = A214860 (n + 1)

end A214860

/-! ## A214860.P4649145891278443610

`dr(Δ[round(n*root(3, 2))])`
-/

namespace A214860.P4649145891278443610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A214860.P4649145891278443610

namespace A214860

/-- `dr(Δ[round(n*root(3, 2))])` -/
def P4649145891278443610.Spec : Prop :=
  ∀ n, (P4649145891278443610.a n : ℤ) = A214860 (n + 1)

end A214860

/-! ## A214860.P15065040749977227770

`gcd(2, Δ[round(n*root(3, 2))])`
-/

namespace A214860.P15065040749977227770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A214860.P15065040749977227770

namespace A214860

/-- `gcd(2, Δ[round(n*root(3, 2))])` -/
def P15065040749977227770.Spec : Prop :=
  ∀ n, (P15065040749977227770.a n : ℤ) = A214860 (n + 1)

end A214860

/-! ## A214860.P11841869196258664866

`Δ[round(n*root(3, 2))]%3`
-/

namespace A214860.P11841869196258664866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A214860.P11841869196258664866

namespace A214860

/-- `Δ[round(n*root(3, 2))]%3` -/
def P11841869196258664866.Spec : Prop :=
  ∀ n, P11841869196258664866.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P4624166302443167316

`A000005(Δ[round(n*root(3, 2))])`
-/

namespace A214860.P4624166302443167316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A214860.P4624166302443167316

namespace A214860

/-- `A000005(Δ[round(n*root(3, 2))])` -/
def P4624166302443167316.Spec : Prop :=
  ∀ n, P4624166302443167316.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P16366412164845984079

`A000041(Δ[round(n*root(3, 2))])`
-/

namespace A214860.P16366412164845984079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A214860.P16366412164845984079

namespace A214860

/-- `A000041(Δ[round(n*root(3, 2))])` -/
def P16366412164845984079.Spec : Prop :=
  ∀ n, P16366412164845984079.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P15742983955487349613

`A000108(Δ[round(n*root(3, 2))])`
-/

namespace A214860.P15742983955487349613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A214860.P15742983955487349613

namespace A214860

/-- `A000108(Δ[round(n*root(3, 2))])` -/
def P15742983955487349613.Spec : Prop :=
  ∀ n, P15742983955487349613.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P5308916471545149407

`A014963(Δ[round(n*root(3, 2))])`
-/

namespace A214860.P5308916471545149407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A214860.P5308916471545149407

namespace A214860

/-- `A014963(Δ[round(n*root(3, 2))])` -/
def P5308916471545149407.Spec : Prop :=
  ∀ n, P5308916471545149407.a n = A214860 (n + 1)

end A214860

/-! ## A214860.P3460420051766909804

`A022847(n+1)-A022847(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214860

/-- `A022847(n+1)-A022847(n)` -/
def P3460420051766909804.Spec : Prop :=
  ∀ n, P3460420051766909804.a n = A214860 (n + 1)

theorem P3460420051766909804.correct : P3460420051766909804.Spec := by
  intro n
  simp only [A214860, Nat.add_sub_cancel]

end A214860

/-! ## A214860.P752892824363925549

`record[A022847(A123108(n))]-A022847(n)`
-/

namespace A214860.P752892824363925549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A022847 n

end

end A214860.P752892824363925549

namespace A214860

/-- `record[A022847(A123108(n))]-A022847(n)` -/
def P752892824363925549.Spec : Prop :=
  ∀ n, P752892824363925549.a n = A214860 (n + 1)

end A214860

/-!
# A214861: First differences of round(n*sqrt(5)) (A022848).

The programs for A214861, the canonical program `A214861.P940447429483379445` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214861 has offset 1).

The definition of A214861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214861.P8885523067707207922

`Δ[round(n*sqrt(5))]`
-/

namespace A214861.P8885523067707207922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (5 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214861.P8885523067707207922

namespace A214861

/-- `Δ[round(n*sqrt(5))]` -/
def P8885523067707207922.Spec : Prop :=
  ∀ n, P8885523067707207922.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P11369115860985103659

`dr(Δ[round(n*root(5, 2))])`
-/

namespace A214861.P11369115860985103659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A214861.P11369115860985103659

namespace A214861

/-- `dr(Δ[round(n*root(5, 2))])` -/
def P11369115860985103659.Spec : Prop :=
  ∀ n, (P11369115860985103659.a n : ℤ) = A214861 (n + 1)

end A214861

/-! ## A214861.P14643803599643563574

`Δ[round(2*n/ϕ)]!+1`
-/

namespace A214861.P14643803599643563574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℝ) / Real.goldenRatio))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat + 1

end

end A214861.P14643803599643563574

namespace A214861

/-- `Δ[round(2*n/ϕ)]!+1` -/
def P14643803599643563574.Spec : Prop :=
  ∀ n, (P14643803599643563574.a n : ℤ) = A214861 (n + 1)

end A214861

/-! ## A214861.P940447429483379445

`abs(Δ[A022848(n)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214861

/-- `abs(Δ[A022848(n)])` -/
def P940447429483379445.Spec : Prop :=
  ∀ n, P940447429483379445.a n = A214861 (n + 1)

theorem P940447429483379445.correct : P940447429483379445.Spec := by
  intro n
  simp only [A214861, Nat.add_sub_cancel]

end A214861

/-! ## A214861.P653737515931920412

`Δ[A004938(n)]-2`
-/

namespace A214861.P653737515931920412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A214861.P653737515931920412

namespace A214861

/-- `Δ[A004938(n)]-2` -/
def P653737515931920412.Spec : Prop :=
  ∀ n, P653737515931920412.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P3929677338864103562

`A000041(Δ[round(n*root(5, 2))])`
-/

namespace A214861.P3929677338864103562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A214861.P3929677338864103562

namespace A214861

/-- `A000041(Δ[round(n*root(5, 2))])` -/
def P3929677338864103562.Spec : Prop :=
  ∀ n, P3929677338864103562.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P17432695235511656392

`A000005(Δ[round(2*ϕ*n)])`
-/

namespace A214861.P17432695235511656392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio * (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A214861.P17432695235511656392

namespace A214861

/-- `A000005(Δ[round(2*ϕ*n)])` -/
def P17432695235511656392.Spec : Prop :=
  ∀ n, P17432695235511656392.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P5257757732014161903

`A005378(Δ[round(2*ϕ*n)])`
-/

namespace A214861.P5257757732014161903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio * (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (f1 (n + 1) - f1 n).toNat

end

end A214861.P5257757732014161903

namespace A214861

/-- `A005378(Δ[round(2*ϕ*n)])` -/
def P5257757732014161903.Spec : Prop :=
  ∀ n, P5257757732014161903.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P16676140617021900175

`A019446(Δ[round(2*ϕ*n)])`
-/

namespace A214861.P16676140617021900175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio * (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (f1 (n + 1) - f1 n).toNat

end

end A214861.P16676140617021900175

namespace A214861

/-- `A019446(Δ[round(2*ϕ*n)])` -/
def P16676140617021900175.Spec : Prop :=
  ∀ n, P16676140617021900175.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P10788215544315379834

`A002062(Δ[round(2*n/ϕ)])`
-/

namespace A214861.P10788215544315379834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℝ) / Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (f1 (n + 1) - f1 n).toNat

end

end A214861.P10788215544315379834

namespace A214861

/-- `A002062(Δ[round(2*n/ϕ)])` -/
def P10788215544315379834.Spec : Prop :=
  ∀ n, P10788215544315379834.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P1803055289416102637

`A006530(Δ[A022848(n)])`
-/

namespace A214861.P1803055289416102637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A214861.P1803055289416102637

namespace A214861

/-- `A006530(Δ[A022848(n)])` -/
def P1803055289416102637.Spec : Prop :=
  ∀ n, P1803055289416102637.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P7785783181807315467

`A014963(Δ[A022848(n)])`
-/

namespace A214861.P7785783181807315467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A214861.P7785783181807315467

namespace A214861

/-- `A014963(Δ[A022848(n)])` -/
def P7785783181807315467.Spec : Prop :=
  ∀ n, P7785783181807315467.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P8142199220325812887

`A020639(Δ[A022848(n)])`
-/

namespace A214861.P8142199220325812887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A214861.P8142199220325812887

namespace A214861

/-- `A020639(Δ[A022848(n)])` -/
def P8142199220325812887.Spec : Prop :=
  ∀ n, P8142199220325812887.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P9487482093616910767

`A005730(Δ[A022848(n)]²)`
-/

namespace A214861.P9487482093616910767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A214861.P9487482093616910767

namespace A214861

/-- `A005730(Δ[A022848(n)]²)` -/
def P9487482093616910767.Spec : Prop :=
  ∀ n, P9487482093616910767.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P13243809103070724713

`A022848(n+1)-A022848(n)`
-/

namespace A214861.P13243809103070724713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 (n + 1) - A022848 n

end

end A214861.P13243809103070724713

namespace A214861

/-- `A022848(n+1)-A022848(n)` -/
def P13243809103070724713.Spec : Prop :=
  ∀ n, P13243809103070724713.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P10096078379478631887

`A296469(A004938(n+1)-A004938(n))`
-/

namespace A214861.P10096078379478631887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296469 ((A004938 (n + 1) - A004938 n).toNat + 1)

end

end A214861.P10096078379478631887

namespace A214861

/-- `A296469(A004938(n+1)-A004938(n))` -/
def P10096078379478631887.Spec : Prop :=
  ∀ n, P10096078379478631887.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P17192745582808807569

`Δ[comp[A184739(n+1)]]+1`
-/

namespace A214861.P17192745582808807569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A214861.P17192745582808807569

namespace A214861

/-- `Δ[comp[A184739(n+1)]]+1` -/
def P17192745582808807569.Spec : Prop :=
  ∀ n, P17192745582808807569.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P7519673414539621693

`Δ[A007067(2*n)]-1`
-/

namespace A214861.P7519673414539621693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A214861.P7519673414539621693

namespace A214861

/-- `Δ[A007067(2*n)]-1` -/
def P7519673414539621693.Spec : Prop :=
  ∀ n, P7519673414539621693.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P15757156611519097859

`A000045(Δ[A007067(2*n)])`
-/

namespace A214861.P15757156611519097859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A214861.P15757156611519097859

namespace A214861

/-- `A000045(Δ[A007067(2*n)])` -/
def P15757156611519097859.Spec : Prop :=
  ∀ n, P15757156611519097859.a n = A214861 (n + 1)

end A214861

/-! ## A214861.P3216177146851315562

`A005206(Δ[A007067(2*n)])`
-/

namespace A214861.P3216177146851315562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (n + 1) - f1 n).toNat

end

end A214861.P3216177146851315562

namespace A214861

/-- `A005206(Δ[A007067(2*n)])` -/
def P3216177146851315562.Spec : Prop :=
  ∀ n, P3216177146851315562.a n = A214861 (n + 1)

end A214861

/-!
# A214863: Numbers n such that n XOR 11 = n - 11.

The programs for A214863, the canonical program `A214863.P7535900749094371618` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214863 has offset 1).

The definition of A214863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214863.P7535900749094371618

`1+8*(n+1)-2*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214863

/-- `1+8*(n+1)-2*(-1)^(n+1)` -/
def P7535900749094371618.Spec : Prop :=
  ∀ n, P7535900749094371618.a n = A214863 (n + 1)

theorem P7535900749094371618.correct : P7535900749094371618.Spec := by
  intro n
  simp only [A214863, Nat.add_sub_cancel]

end A214863

/-! ## A214863.P13694358197150965545

`record[or(11, n)]`
-/

namespace A214863.P13694358197150965545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214863.P13694358197150965545

namespace A214863

/-- `record[or(11, n)]` -/
def P13694358197150965545.Spec : Prop :=
  ∀ n, (P13694358197150965545.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P17946729679132544314

`record[xor(11, n)]`
-/

namespace A214863.P17946729679132544314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214863.P17946729679132544314

namespace A214863

/-- `record[xor(11, n)]` -/
def P17946729679132544314.Spec : Prop :=
  ∀ n, (P17946729679132544314.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P7708840540869254626

`∑[16-a(n-1)]` with `a(0)=11, a(1)=4`
-/

namespace A214863.P7708840540869254626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 4] fun n f1 =>
  16 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214863.P7708840540869254626

namespace A214863

/-- `∑[16-a(n-1)]` -/
def P7708840540869254626.Spec : Prop :=
  ∀ n, P7708840540869254626.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P2824762412103960398

`Δ[xor(1, (2*n+1)²+n)]`
-/

namespace A214863.P2824762412103960398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214863.P2824762412103960398

namespace A214863

/-- `Δ[xor(1, (2*n+1)²+n)]` -/
def P2824762412103960398.Spec : Prop :=
  ∀ n, P2824762412103960398.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P1636048081250452899

`record[and(10, -(2*n+1))+2*n+1]`
-/

namespace A214863.P1636048081250452899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (-(2 * n + 1 : ℤ)) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214863.P1636048081250452899

namespace A214863

/-- `record[and(10, -(2*n+1))+2*n+1]` -/
def P1636048081250452899.Spec : Prop :=
  ∀ n, P1636048081250452899.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P15249252264692081548

`∪[A106839(n), A125169(n)]`
-/

namespace A214863.P15249252264692081548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214863.P15249252264692081548

namespace A214863

/-- `∪[A106839(n), A125169(n)]` -/
def P15249252264692081548.Spec : Prop :=
  ∀ n, (P15249252264692081548.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P16191207981060947460

`Δ[A129958(n)+(n+1)²]`
-/

namespace A214863.P16191207981060947460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129958 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214863.P16191207981060947460

namespace A214863

/-- `Δ[A129958(n)+(n+1)²]` -/
def P16191207981060947460.Spec : Prop :=
  ∀ n, P16191207981060947460.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P17943782248401041090

`Δ[Δ[A007585(n)-A000034(n)]]`
-/

namespace A214863.P17943782248401041090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n - A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214863.P17943782248401041090

namespace A214863

/-- `Δ[Δ[A007585(n)-A000034(n)]]` -/
def P17943782248401041090.Spec : Prop :=
  ∀ n, P17943782248401041090.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P13163774681016530258

`record[lcm(2, A047574(n+1))+1]`
-/

namespace A214863.P13163774681016530258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A047574 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214863.P13163774681016530258

namespace A214863

/-- `record[lcm(2, A047574(n+1))+1]` -/
def P13163774681016530258.Spec : Prop :=
  ∀ n, (P13163774681016530258.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P15855041306143110244

`eq[n, or(11, n)]`
-/

namespace A214863.P15855041306143110244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214863.P15855041306143110244

namespace A214863

/-- `eq[n, or(11, n)]` -/
def P15855041306143110244.Spec : Prop :=
  ∀ n, (P15855041306143110244.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P7970617147127256166

`lt[or(11, n), n+1]`
-/

namespace A214863.P7970617147127256166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 11 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214863.P7970617147127256166

namespace A214863

/-- `lt[or(11, n), n+1]` -/
def P7970617147127256166.Spec : Prop :=
  ∀ n, (P7970617147127256166.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P14140686112156026945

`eq[8, and(7-n, n-3)]`
-/

namespace A214863.P14140686112156026945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 - (n : ℤ)) ((n : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214863.P14140686112156026945

namespace A214863

/-- `eq[8, and(7-n, n-3)]` -/
def P14140686112156026945.Spec : Prop :=
  ∀ n, (P14140686112156026945.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P13343361450676510392

`lt[5, val((n+3)²-4, 2)]`
-/

namespace A214863.P13343361450676510392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((n + 3) ^ 2 : ℤ) - 4).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214863.P13343361450676510392

namespace A214863

/-- `lt[5, val((n+3)²-4, 2)]` -/
def P13343361450676510392.Spec : Prop :=
  ∀ n, (P13343361450676510392.a n : ℤ) = A214863 (n + 1)

end A214863

/-! ## A214863.P2915719447555024200

`A214864(2*(n+1))`
-/

namespace A214863.P2915719447555024200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214864 (2 * (n + 1))

end

end A214863.P2915719447555024200

namespace A214863

/-- `A214864(2*(n+1))` -/
def P2915719447555024200.Spec : Prop :=
  ∀ n, P2915719447555024200.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P7232198359799574726

`A214865(2*(n+1))`
-/

namespace A214863.P7232198359799574726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214865 (2 * (n + 1))

end

end A214863.P7232198359799574726

namespace A214863

/-- `A214865(2*(n+1))` -/
def P7232198359799574726.Spec : Prop :=
  ∀ n, P7232198359799574726.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P10105192154020118436

`A004767(A042964(n+1))`
-/

namespace A214863.P10105192154020118436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A042964 (n + 1)).toNat

end

end A214863.P10105192154020118436

namespace A214863

/-- `A004767(A042964(n+1))` -/
def P10105192154020118436.Spec : Prop :=
  ∀ n, P10105192154020118436.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P9097654290297119570

`A004767(A053438(n+1))`
-/

namespace A214863.P9097654290297119570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A053438 (n + 1)).toNat

end

end A214863.P9097654290297119570

namespace A214863

/-- `A004767(A053438(n+1))` -/
def P9097654290297119570.Spec : Prop :=
  ∀ n, P9097654290297119570.a n = A214863 (n + 1)

end A214863

/-! ## A214863.P15667395983122260162

`A004767(A042948(n)+2)`
-/

namespace A214863.P15667395983122260162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A042948 n + 2).toNat

end

end A214863.P15667395983122260162

namespace A214863

/-- `A004767(A042948(n)+2)` -/
def P15667395983122260162.Spec : Prop :=
  ∀ n, P15667395983122260162.a n = A214863 (n + 1)

end A214863

/-!
# A214864: Numbers k such that k XOR 10 = k - 10.

The programs for A214864, the canonical program `A214864.P17378431330106288185` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214864 has offset 1).

The definition of A214864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214864.P2996553395437960178

`A016825(n+1)+A216178(n)`
-/

namespace A214864.P2996553395437960178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) + A216178 n

end

end A214864.P2996553395437960178

namespace A214864

/-- `A016825(n+1)+A216178(n)` -/
def P2996553395437960178.Spec : Prop :=
  ∀ n, P2996553395437960178.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P17378431330106288185

`record[or(10, n)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214864

/-- `record[or(10, n)]` -/
def P17378431330106288185.Spec : Prop :=
  ∀ n, (P17378431330106288185.a n : ℤ) = A214864 (n + 1)

theorem P17378431330106288185.correct : P17378431330106288185.Spec := by
  intro n
  simp only [A214864, Nat.add_sub_cancel]

end A214864

/-! ## A214864.P12217594071238089697

`record[xor(10, n)]`
-/

namespace A214864.P12217594071238089697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214864.P12217594071238089697

namespace A214864

/-- `record[xor(10, n)]` -/
def P12217594071238089697.Spec : Prop :=
  ∀ n, (P12217594071238089697.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P7124306117570757813

`eq[n, or(10, n)]`
-/

namespace A214864.P7124306117570757813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214864.P7124306117570757813

namespace A214864

/-- `eq[n, or(10, n)]` -/
def P7124306117570757813.Spec : Prop :=
  ∀ n, (P7124306117570757813.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P3221707822987759220

`comp[n%or(10, n)]`
-/

namespace A214864.P3221707822987759220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 10 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A214864.P3221707822987759220

namespace A214864

/-- `comp[n%or(10, n)]` -/
def P3221707822987759220.Spec : Prop :=
  ∀ n, (P3221707822987759220.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P15999517042063044817

`lt[or(10, n), n+1]`
-/

namespace A214864.P15999517042063044817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214864.P15999517042063044817

namespace A214864

/-- `lt[or(10, n), n+1]` -/
def P15999517042063044817.Spec : Prop :=
  ∀ n, (P15999517042063044817.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P13455828833104750719

`lt[or(10, n)-1, n]`
-/

namespace A214864.P13455828833104750719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 10 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214864.P13455828833104750719

namespace A214864

/-- `lt[or(10, n)-1, n]` -/
def P13455828833104750719.Spec : Prop :=
  ∀ n, (P13455828833104750719.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P11343527073732009621

`lt[xor(10, n)+6, n]`
-/

namespace A214864.P11343527073732009621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214864.P11343527073732009621

namespace A214864

/-- `lt[xor(10, n)+6, n]` -/
def P11343527073732009621.Spec : Prop :=
  ∀ n, (P11343527073732009621.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P17007088057954186963

`eq[10, and(n, 9-n)]`
-/

namespace A214864.P17007088057954186963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (9 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214864.P17007088057954186963

namespace A214864

/-- `eq[10, and(n, 9-n)]` -/
def P17007088057954186963.Spec : Prop :=
  ∀ n, (P17007088057954186963.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P13408090738562988504

`lt[xor(10, n), n-6]`
-/

namespace A214864.P13408090738562988504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214864.P13408090738562988504

namespace A214864

/-- `lt[xor(10, n), n-6]` -/
def P13408090738562988504.Spec : Prop :=
  ∀ n, (P13408090738562988504.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P11675719939911424828

`eq[n, xor(10, n)+10]`
-/

namespace A214864.P11675719939911424828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214864.P11675719939911424828

namespace A214864

/-- `eq[n, xor(10, n)+10]` -/
def P11675719939911424828.Spec : Prop :=
  ∀ n, (P11675719939911424828.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P2229567041381807327

`eq[10, xor(n, n-10)]`
-/

namespace A214864.P2229567041381807327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214864.P2229567041381807327

namespace A214864

/-- `eq[10, xor(n, n-10)]` -/
def P2229567041381807327.Spec : Prop :=
  ∀ n, (P2229567041381807327.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P17820279495972367249

`record[10-and(10, n)+n]`
-/

namespace A214864.P17820279495972367249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (Nat.land 10 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214864.P17820279495972367249

namespace A214864

/-- `record[10-and(10, n)+n]` -/
def P17820279495972367249.Spec : Prop :=
  ∀ n, P17820279495972367249.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P5125183726284745744

`or(10, a(n-1)+1)` with `a(0)=10`
-/

namespace A214864.P5125183726284745744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lor 10 (a (n - 1) + 1)

end

end A214864.P5125183726284745744

namespace A214864

/-- `or(10, a(n-1)+1)` -/
def P5125183726284745744.Spec : Prop :=
  ∀ n, (P5125183726284745744.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P14642221363856122115

`record[and(10, -(n+1))+n]`
-/

namespace A214864.P14642221363856122115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (-(n + 1 : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214864.P14642221363856122115

namespace A214864

/-- `record[and(10, -(n+1))+n]` -/
def P14642221363856122115.Spec : Prop :=
  ∀ n, P14642221363856122115.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P16959946631306939254

`a(n-4)+16` with `a(0)=10, a(1)=11, a(2)=14, a(3)=15`
-/

namespace A214864.P16959946631306939254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 11, 14, 15] fun n a =>
  a (n - 4) + 16

end

end A214864.P16959946631306939254

namespace A214864

/-- `a(n-4)+16` -/
def P16959946631306939254.Spec : Prop :=
  ∀ n, (P16959946631306939254.a n : ℤ) = A214864 (n + 1)

end A214864

/-! ## A214864.P3286097384226733181

`A045798(n+1)-(n+1)`
-/

namespace A214864.P3286097384226733181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1) - (n + 1 : ℤ)

end

end A214864.P3286097384226733181

namespace A214864

/-- `A045798(n+1)-(n+1)` -/
def P3286097384226733181.Spec : Prop :=
  ∀ n, P3286097384226733181.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P4572926172295308225

`A045797(n+1)+A022965(n)`
-/

namespace A214864.P4572926172295308225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1) + A022965 n

end

end A214864.P4572926172295308225

namespace A214864

/-- `A045797(n+1)+A022965(n)` -/
def P4572926172295308225.Spec : Prop :=
  ∀ n, P4572926172295308225.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P2091848077667848649

`A214865(n+1)+A059841(n)`
-/

namespace A214864.P2091848077667848649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214865 (n + 1) + A059841 n

end

end A214864.P2091848077667848649

namespace A214864

/-- `A214865(n+1)+A059841(n)` -/
def P2091848077667848649.Spec : Prop :=
  ∀ n, P2091848077667848649.a n = A214864 (n + 1)

end A214864

/-! ## A214864.P9798326016580503200

`A216178(n)+A073760(n+1)`
-/

namespace A214864.P9798326016580503200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216178 n + A073760 (n + 1)

end

end A214864.P9798326016580503200

namespace A214864

/-- `A216178(n)+A073760(n+1)` -/
def P9798326016580503200.Spec : Prop :=
  ∀ n, P9798326016580503200.a n = A214864 (n + 1)

end A214864

/-!
# A214865: n such that n XOR 9 = n - 9.

The programs for A214865, the canonical program `A214865.P12074888827728581445` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214865 has offset 1).

The definition of A214865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214865.P12074888827728581445

`4*n+6+(-1)^n+2*(-1)^((2*n+(-1)^n-1)/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214865

/-- `4*n+6+(-1)^n+2*(-1)^((2*n+(-1)^n-1)/4)` -/
def P12074888827728581445.Spec : Prop :=
  ∀ n, P12074888827728581445.a n = (A214865 (n + 1) : ℝ)

end A214865

/-! ## A214865.P571872455125673896

`record[or(9, n)]`
-/

namespace A214865.P571872455125673896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214865.P571872455125673896

namespace A214865

/-- `record[or(9, n)]` -/
def P571872455125673896.Spec : Prop :=
  ∀ n, (P571872455125673896.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P6620227502828383719

`record[xor(9, n)]`
-/

namespace A214865.P6620227502828383719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214865.P6620227502828383719

namespace A214865

/-- `record[xor(9, n)]` -/
def P6620227502828383719.Spec : Prop :=
  ∀ n, (P6620227502828383719.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P3405576327950045080

`eq[n, or(9, n)]`
-/

namespace A214865.P3405576327950045080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214865.P3405576327950045080

namespace A214865

/-- `eq[n, or(9, n)]` -/
def P3405576327950045080.Spec : Prop :=
  ∀ n, (P3405576327950045080.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P17918819904857121591

`comp[n%or(9, n)]`
-/

namespace A214865.P17918819904857121591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 9 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A214865.P17918819904857121591

namespace A214865

/-- `comp[n%or(9, n)]` -/
def P17918819904857121591.Spec : Prop :=
  ∀ n, (P17918819904857121591.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P17604434602026582243

`lt[or(9, n), n+1]`
-/

namespace A214865.P17604434602026582243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 9 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214865.P17604434602026582243

namespace A214865

/-- `lt[or(9, n), n+1]` -/
def P17604434602026582243.Spec : Prop :=
  ∀ n, (P17604434602026582243.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P11442847471993120006

`lt[or(9, n)-1, n]`
-/

namespace A214865.P11442847471993120006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 9 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A214865.P11442847471993120006

namespace A214865

/-- `lt[or(9, n)-1, n]` -/
def P11442847471993120006.Spec : Prop :=
  ∀ n, (P11442847471993120006.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P9636557299115257915

`eq[9, and(n, 8-n)]`
-/

namespace A214865.P9636557299115257915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (8 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214865.P9636557299115257915

namespace A214865

/-- `eq[9, and(n, 8-n)]` -/
def P9636557299115257915.Spec : Prop :=
  ∀ n, (P9636557299115257915.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P11858567577297951489

`lt[xor(9, n)+7, n]`
-/

namespace A214865.P11858567577297951489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 n + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214865.P11858567577297951489

namespace A214865

/-- `lt[xor(9, n)+7, n]` -/
def P11858567577297951489.Spec : Prop :=
  ∀ n, (P11858567577297951489.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P3086027228405689323

`lt[xor(9, n), n-7]`
-/

namespace A214865.P3086027228405689323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214865.P3086027228405689323

namespace A214865

/-- `lt[xor(9, n), n-7]` -/
def P3086027228405689323.Spec : Prop :=
  ∀ n, (P3086027228405689323.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P6755997831150984559

`eq[n, xor(9, n)+9]`
-/

namespace A214865.P6755997831150984559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 9 n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214865.P6755997831150984559

namespace A214865

/-- `eq[n, xor(9, n)+9]` -/
def P6755997831150984559.Spec : Prop :=
  ∀ n, (P6755997831150984559.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P2322904168537540673

`eq[9, xor(n, n-9)]`
-/

namespace A214865.P2322904168537540673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214865.P2322904168537540673

namespace A214865

/-- `eq[9, xor(n, n-9)]` -/
def P2322904168537540673.Spec : Prop :=
  ∀ n, (P2322904168537540673.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P10652823569786614842

`record[and(n, -10)+9]`
-/

namespace A214865.P10652823569786614842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-10) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214865.P10652823569786614842

namespace A214865

/-- `record[and(n, -10)+9]` -/
def P10652823569786614842.Spec : Prop :=
  ∀ n, P10652823569786614842.a n = A214865 (n + 1)

end A214865

/-! ## A214865.P16011969047324718086

`or(8, a(n-1)+2)` with `a(0)=9`
-/

namespace A214865.P16011969047324718086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 8 (a (n - 1) + 2)

end

end A214865.P16011969047324718086

namespace A214865

/-- `or(8, a(n-1)+2)` -/
def P16011969047324718086.Spec : Prop :=
  ∀ n, (P16011969047324718086.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P363519322074718466

`Δ[or(5, (n+2)²)+n²]`
-/

namespace A214865.P363519322074718466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 ((n + 2) ^ 2) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214865.P363519322074718466

namespace A214865

/-- `Δ[or(5, (n+2)²)+n²]` -/
def P363519322074718466.Spec : Prop :=
  ∀ n, P363519322074718466.a n = A214865 (n + 1)

end A214865

/-! ## A214865.P14517860656691335331

`∑[floor(a(n-4))]` with `a(0)=9, a(1)=2, a(2)=2, a(3)=2, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A214865.P14517860656691335331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 2, 2, 2, 10] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214865.P14517860656691335331

namespace A214865

/-- `∑[floor(a(n-4))]` -/
def P14517860656691335331.Spec : Prop :=
  ∀ n, (P14517860656691335331.a n : ℤ) = A214865 (n + 1)

end A214865

/-! ## A214865.P9834644731006578233

`or(8, A103127(n+1))`
-/

namespace A214865.P9834644731006578233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A103127 (n + 1))

end

end A214865.P9834644731006578233

namespace A214865

/-- `or(8, A103127(n+1))` -/
def P9834644731006578233.Spec : Prop :=
  ∀ n, P9834644731006578233.a n = A214865 (n + 1)

end A214865

/-! ## A214865.P4128341884555489669

`A115419(2*(n+1))`
-/

namespace A214865.P4128341884555489669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (2 * (n + 1))

end

end A214865.P4128341884555489669

namespace A214865

/-- `A115419(2*(n+1))` -/
def P4128341884555489669.Spec : Prop :=
  ∀ n, P4128341884555489669.a n = A214865 (n + 1)

end A214865

/-! ## A214865.P10494124364237290041

`A005818(A047425(n+1))`
-/

namespace A214865.P10494124364237290041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A047425 (n + 1)).toNat

end

end A214865.P10494124364237290041

namespace A214865

/-- `A005818(A047425(n+1))` -/
def P10494124364237290041.Spec : Prop :=
  ∀ n, P10494124364237290041.a n = A214865 (n + 1)

end A214865

/-! ## A214865.P1029472662333561676

`A020742(A047454(n+1))`
-/

namespace A214865.P1029472662333561676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A047454 (n + 1)).toNat

end

end A214865.P1029472662333561676

namespace A214865

/-- `A020742(A047454(n+1))` -/
def P1029472662333561676.Spec : Prop :=
  ∀ n, P1029472662333561676.a n = A214865 (n + 1)

end A214865

/-!
# A214866: Numbers m such that A059175(m) = 0.

The programs for A214866, there is no canonical definition to state claims against.
-/

/-! ## A214866.P3510784995204374616

`eq[0, A059175(n)]`
-/

namespace A214866.P3510784995204374616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214866.P3510784995204374616

/-! ## A214866.P10242547536455263970

`lt[A059175(n), atan(A059149(n))]`
-/

namespace A214866.P10242547536455263970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059149 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P10242547536455263970

/-! ## A214866.P3069033927466757220

`lt[A059175(n), atan(A059150(n))]`
-/

namespace A214866.P3069033927466757220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059150 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P3069033927466757220

/-! ## A214866.P10522528106784191079

`lt[A059175(n), atan(A059151(n))]`
-/

namespace A214866.P10522528106784191079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059151 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P10522528106784191079

/-! ## A214866.P2351864901628768875

`lt[A059175(n), atan(A059152(n))]`
-/

namespace A214866.P2351864901628768875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059152 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P2351864901628768875

/-! ## A214866.P8076525535794789943

`lt[A059175(n), atan(A059154(n))]`
-/

namespace A214866.P8076525535794789943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059154 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P8076525535794789943

/-! ## A214866.P5104327950511045500

`lt[A059175(n), atan(A059156(n))]`
-/

namespace A214866.P5104327950511045500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059156 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P5104327950511045500

/-! ## A214866.P9094358897720968428

`lt[A059175(n), atan(A059160(n))]`
-/

namespace A214866.P9094358897720968428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059160 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P9094358897720968428

/-! ## A214866.P5208521304946660985

`lt[A059175(n), atan(A059173(n))]`
-/

namespace A214866.P5208521304946660985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059173 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P5208521304946660985

/-! ## A214866.P6132798620883593622

`lt[A059175(n), atan(A059168(n+1))]`
-/

namespace A214866.P6132798620883593622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059175 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A059168 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A214866.P6132798620883593622

/-!
# A214867: Quotients of (first) primorial numbers and denominators of Bernoulli numbers B 0, B 1, B 2, B 4, B 6,... .

The programs for A214867, there is no canonical definition to state claims against.
-/

/-! ## A214867.P17011782320696284606

`A002110(n)/A006954(n)`
-/

namespace A214867.P17011782320696284606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A006954 n : ℚ)

end

end A214867.P17011782320696284606

/-! ## A214867.P6642468849690495748

`∏[A008578(n+1)]/A006954(n)`
-/

namespace A214867.P6642468849690495748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006954 n : ℚ)

end

end A214867.P6642468849690495748

/-! ## A214867.P8160406635551973694

`A002110(n)/A027642(eq[n, gcd(n, n%2)])`
-/

namespace A214867.P8160406635551973694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ)

end

end A214867.P8160406635551973694

/-! ## A214867.P14200848901305781293

`A002110(n)/A027642(A004275(n))`
-/

namespace A214867.P14200848901305781293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A027642 (A004275 n).toNat : ℚ)

end

end A214867.P14200848901305781293

/-! ## A214867.P9822016268618480293

`A034386(A006093(n+1))/A006954(n)`
-/

namespace A214867.P9822016268618480293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (A006093 (n + 1)).toNat : ℚ) / (A006954 n : ℚ)

end

end A214867.P9822016268618480293

/-!
# A214868: Triangle T read by rows: T(n,0) = T(n,n) = 1 for n>=0, for n>=2 and 1<=k<=n-1, T(n,k) = T(n-1,k-1) + T(n-1,k) if k = [n/2] or k = [(n+1)/2], else T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k).

The programs for A214868, there is no canonical definition to state claims against.
-/

/-! ## A214868.P11325536503989675578

`A049108(A008300(n))`
-/

namespace A214868.P11325536503989675578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A008300 n).toNat

end

end A214868.P11325536503989675578

/-! ## A214868.P11963394597184864935

`A108582(A108267(n))`
-/

namespace A214868.P11963394597184864935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A108267 n).toNat

end

end A214868.P11963394597184864935

/-! ## A214868.P10763573809364625078

`A108582(A142175(n))`
-/

namespace A214868.P10763573809364625078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A142175 n).toNat

end

end A214868.P10763573809364625078

/-! ## A214868.P10126302446031573289

`A221671(A099594(n))`
-/

namespace A214868.P10126302446031573289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A099594 n).toNat

end

end A214868.P10126302446031573289

/-! ## A214868.P15268372040529073399

`A157893(A173887(n))`
-/

namespace A214868.P15268372040529073399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (A173887 n).toNat

end

end A214868.P15268372040529073399

/-!
# A214870: Natural numbers placed in table T(n,k) layer by layer. The order of placement: at the beginning filled odd places of layer clockwise, next - even places counterclockwise. T(n,k) read by antidiagonals.

The programs for A214870, the canonical program `A214870.P14474937078078779627` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214870 has offset 1).

The definition of A214870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214870.P14474937078078779627

`A045901(A060734(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A214870

/-- `A045901(A060734(n+1))` -/
def P14474937078078779627.Spec : Prop :=
  ∀ n, P14474937078078779627.a n = A214870 (n + 1)

theorem P14474937078078779627.correct : P14474937078078779627.Spec := by
  intro n
  simp only [A214870, Nat.add_sub_cancel]

end A214870

/-! ## A214870.P7845928120214595822

`A045901(A220508(∑[2*n]%comp[∑[n]])+1)`
-/

namespace A214870.P7845928120214595822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A220508 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1).toNat

end

end A214870.P7845928120214595822

namespace A214870

/-- `A045901(A220508(∑[2*n]%comp[∑[n]])+1)` -/
def P7845928120214595822.Spec : Prop :=
  ∀ n, P7845928120214595822.a n = A214870 (n + 1)

end A214870

/-! ## A214870.P8322691912913872556

`A045901(A045901(A213922(n+1)))`
-/

namespace A214870.P8322691912913872556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 (A045901 (A213922 (n + 1)).toNat).toNat

end

end A214870.P8322691912913872556

namespace A214870

/-- `A045901(A045901(A213922(n+1)))` -/
def P8322691912913872556.Spec : Prop :=
  ∀ n, P8322691912913872556.a n = A214870 (n + 1)

end A214870

/-! ## A214870.P17666118795053571727

`A213921(A064790(A213922(A064790(A213921(n+1)))))`
-/

namespace A214870.P17666118795053571727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213921 (A064790 (A213922 (A064790 (A213921 (n + 1)).toNat).toNat).toNat).toNat

end

end A214870.P17666118795053571727

namespace A214870

/-- `A213921(A064790(A213922(A064790(A213921(n+1)))))` -/
def P17666118795053571727.Spec : Prop :=
  ∀ n, P17666118795053571727.a n = A214870 (n + 1)

end A214870

/-!
# A214871: Natural numbers placed in table T(n,k) layer by layer. The order of placement - T(n,n), T(1,n), T(n,1), T(2,n), T(n,2),...T(n-1,n), T(n,n-1). Table T(n,k) read by antidiagonals.

The programs for A214871, there is no canonical definition to state claims against.
-/

/-! ## A214871.P5986092272563147085

`A185725(A064790(A185728(n+1)))`
-/

namespace A214871.P5986092272563147085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (A064790 (A185728 (n + 1)).toNat).toNat

end

end A214871.P5986092272563147085

/-! ## A214871.P8556276515884627903

`A143052(A185725(n+1))`
-/

namespace A214871.P8556276515884627903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (A185725 (n + 1)).toNat

end

end A214871.P8556276515884627903

/-! ## A214871.P3980933495447111170

`A143052(A194959(n+1)+A003984(n)²)`
-/

namespace A214871.P3980933495447111170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (A194959 (n + 1) + A003984 n ^ 2).toNat

end

end A214871.P3980933495447111170

/-! ## A214871.P1591884825611566719

`A143052(A004739(2*n+1)+A003984(n)²)`
-/

namespace A214871.P1591884825611566719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (A004739 (2 * n + 1) + A003984 n ^ 2).toNat

end

end A214871.P1591884825611566719

/-! ## A214871.P17173435302812314417

`A143052(ceil(A004741(2*n+1)/2)+A003984(n)²)`
-/

namespace A214871.P17173435302812314417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 (⌈(A004741 (2 * n + 1) : ℚ) / 2⌉ + A003984 n ^ 2).toNat

end

end A214871.P17173435302812314417

/-!
# A214872: The number of subsets of positive integers of cardinality n, produced as the steps in a computation starting with 1 and using the operations of multiplication, addition, or subtraction.

The programs for A214872, there is no canonical definition to state claims against.
-/

/-! ## A214872.P14288701887559796353

`A037918(A052955(n²))`
-/

namespace A214872.P14288701887559796353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A052955 (n ^ 2)).toNat

end

end A214872.P14288701887559796353

/-!
# A214873: Primes p such that 2*p + 1 is also prime and p + 1 is a highly composite number (definition 1).

The programs for A214873, there is no canonical definition to state claims against.
-/

/-! ## A214873.P4278448777105557197

`record[A053447(A072828(n+1))]`
-/

namespace A214873.P4278448777105557197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A072828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214873.P4278448777105557197

/-! ## A214873.P18323434848033621051

`p?[A003970(A002182(n+1))]`
-/

namespace A214873.P18323434848033621051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A002182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214873.P18323434848033621051

/-! ## A214873.P7674386857128566001

`p?[A003970(A004394(n+1))]`
-/

namespace A214873.P7674386857128566001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A004394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214873.P7674386857128566001

/-! ## A214873.P17721495976529893301

`p?[A003970(A340637(n+1))]`
-/

namespace A214873.P17721495976529893301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A340637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214873.P17721495976529893301

/-! ## A214873.P14280028198665790182

`filter[A072828(n+1), A101264(#)]`
-/

namespace A214873.P14280028198665790182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A214873.P14280028198665790182

/-!
# A214874: Starting with Fibonacci(0), the sum of a(n) successive Fibonacci numbers is prime.

The programs for A214874, there is no canonical definition to state claims against.
-/

/-! ## A214874.P2322186486345040096

`A049653(A000005(3*(n+1))*A329914(n+4))`
-/

namespace A214874.P2322186486345040096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (A000005 (3 * (n + 1)) * A329914 (n + 4)).toNat

end

end A214874.P2322186486345040096

/-!
# A214875: Number of 4 X n nonconsecutive tableaux.

The programs for A214875, there is no canonical definition to state claims against.
-/

/-! ## A214875.P16387091807981978183

`A214021(eq[4, A002262(n)])`
-/

namespace A214875.P16387091807981978183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214875.P16387091807981978183

/-! ## A214875.P11881332387425243621

`A214021(eq[5, A140207(n)])`
-/

namespace A214875.P11881332387425243621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214875.P11881332387425243621

/-! ## A214875.P7880750614680276771

`A214021(eq[16, A059268(n)])`
-/

namespace A214875.P7880750614680276771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214875.P7880750614680276771

/-! ## A214875.P4388460022806617923

`A214021(A167499(n+3)-1)`
-/

namespace A214875.P4388460022806617923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (A167499 (n + 3) - 1).toNat

end

end A214875.P4388460022806617923

/-! ## A214875.P14239970663648807246

`A214021(eq[5, A002260(n+1)])`
-/

namespace A214875.P14239970663648807246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214875.P14239970663648807246

/-!
# A214876: Prime numbers for which there is a primitive root g for which the iteration x -> g^x (mod p) generates all nonzero residues (mod p).

The programs for A214876, there is no canonical definition to state claims against.
-/

/-! ## A214876.P4556457641332871306

`p?[(A090894(n)+1)*A292560(n)]`
-/

namespace A214876.P4556457641332871306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090894 n + 1) * A292560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214876.P4556457641332871306

/-! ## A214876.P14529790851009270748

`p?[∑[A001055(A321990(n+1)²)]]`
-/

namespace A214876.P14529790851009270748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A321990 (n + 1) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214876.P14529790851009270748

/-! ## A214876.P7394665898355679648

`∩[A360394(n+1), A390594(n+1)]`
-/

namespace A214876.P7394665898355679648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214876.P7394665898355679648

/-!
# A214877: a(n) = n ^ (last digit of n).

The programs for A214877, the canonical program `A214877.P17646241830558432894` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214877 has offset 0).

The definition of A214877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214877.P17646241830558432894

`n^(n%10)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214877

/-- `n^(n%10)` -/
def P17646241830558432894.Spec : Prop :=
  ∀ n, (P17646241830558432894.a n : ℤ) = A214877 n

theorem P17646241830558432894.correct : P17646241830558432894.Spec := by
  intro n
  simp only [A214877]

end A214877

/-! ## A214877.P15472832255258657307

`n^A010879(n)`
-/

namespace A214877.P15472832255258657307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A010879 n : ℤ)

end

end A214877.P15472832255258657307

namespace A214877

/-- `n^A010879(n)` -/
def P15472832255258657307.Spec : Prop :=
  ∀ n, P15472832255258657307.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P5471047785310755606

`n^(A010889(n)-1)`
-/

namespace A214877.P5471047785310755606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A010889 n - 1 : ℤ)

end

end A214877.P5471047785310755606

namespace A214877

/-- `n^(A010889(n)-1)` -/
def P5471047785310755606.Spec : Prop :=
  ∀ n, P5471047785310755606.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P5255247166838676300

`n^val(A054842(n), 2)`
-/

namespace A214877.P5255247166838676300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (A054842 n).toNat 2

end

end A214877.P5255247166838676300

namespace A214877

/-- `n^val(A054842(n), 2)` -/
def P5255247166838676300.Spec : Prop :=
  ∀ n, (P5255247166838676300.a n : ℤ) = A214877 n

end A214877

/-! ## A214877.P1257352143593118675

`n^(n-A169932(n))`
-/

namespace A214877.P1257352143593118675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - A169932 n : ℤ)

end

end A214877.P1257352143593118675

namespace A214877

/-- `n^(n-A169932(n))` -/
def P1257352143593118675.Spec : Prop :=
  ∀ n, P1257352143593118675.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P878365796336241189

`n^(n-10*A059995(n))`
-/

namespace A214877.P878365796336241189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) - 10 * A059995 n : ℤ)

end

end A214877.P878365796336241189

namespace A214877

/-- `n^(n-10*A059995(n))` -/
def P878365796336241189.Spec : Prop :=
  ∀ n, P878365796336241189.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P6993906134165085457

`n^A007376(A065650(n))`
-/

namespace A214877.P6993906134165085457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007376 (A065650 n).toNat : ℤ)

end

end A214877.P6993906134165085457

namespace A214877

/-- `n^A007376(A065650(n))` -/
def P6993906134165085457.Spec : Prop :=
  ∀ n, P6993906134165085457.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P10732948670581494765

`n^A033307(A261334(n))`
-/

namespace A214877.P10732948670581494765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A033307 (A261334 n).toNat : ℤ)

end

end A214877.P10732948670581494765

namespace A214877

/-- `n^A033307(A261334(n))` -/
def P10732948670581494765.Spec : Prop :=
  ∀ n, P10732948670581494765.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P2966132364875761041

`n^A054055(A355223(n))`
-/

namespace A214877.P2966132364875761041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A054055 (A355223 n).toNat : ℤ)

end

end A214877.P2966132364875761041

namespace A214877

/-- `n^A054055(A355223(n))` -/
def P2966132364875761041.Spec : Prop :=
  ∀ n, P2966132364875761041.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P4666573626431219039

`n^A054054(A355224(n))`
-/

namespace A214877.P4666573626431219039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A054054 (A355224 n).toNat : ℤ)

end

end A214877.P4666573626431219039

namespace A214877

/-- `n^A054054(A355224(n))` -/
def P4666573626431219039.Spec : Prop :=
  ∀ n, P4666573626431219039.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P14148782715890266541

`n^A171654(A042948(n))`
-/

namespace A214877.P14148782715890266541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A171654 (A042948 n).toNat : ℤ)

end

end A214877.P14148782715890266541

namespace A214877

/-- `n^A171654(A042948(n))` -/
def P14148782715890266541.Spec : Prop :=
  ∀ n, P14148782715890266541.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P3621302943311745084

`n^A144468(3*n)`
-/

namespace A214877.P3621302943311745084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A144468 (3 * n) : ℤ)

end

end A214877.P3621302943311745084

namespace A214877

/-- `n^A144468(3*n)` -/
def P3621302943311745084.Spec : Prop :=
  ∀ n, P3621302943311745084.a n = (A214877 n : ℚ)

end A214877

/-! ## A214877.P14080340651700289374

`n^A083291(∑[n])`
-/

namespace A214877.P14080340651700289374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A083291 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A214877.P14080340651700289374

namespace A214877

/-- `n^A083291(∑[n])` -/
def P14080340651700289374.Spec : Prop :=
  ∀ n, P14080340651700289374.a n = (A214877 n : ℚ)

end A214877

/-!
# A214878: Least k such that Fibonacci(n) + Fibonacci(n+1) + ... + Fibonacci(n+k-1) is prime.

The programs for A214878, there is no canonical definition to state claims against.
-/

/-! ## A214878.P3842798895201044280

`A322004(A000045(n+1))-(n+1)`
-/

namespace A214878.P3842798895201044280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322004 (A000045 (n + 1)).toNat - (n + 1 : ℤ)

end

end A214878.P3842798895201044280

/-!
# A214879: Numbers that cannot be written as sum of the squares of two primes.

The programs for A214879, there is no canonical definition to state claims against.
-/

/-! ## A214879.P7596307332545236452

`comp[A045636(n+1)]`
-/

namespace A214879.P7596307332545236452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214879.P7596307332545236452

/-! ## A214879.P11833967726493139545

`eq[0, A045698(n)]`
-/

namespace A214879.P11833967726493139545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214879.P11833967726493139545

/-! ## A214879.P6641905104811896303

`lt[A045698(n), A000041(A070176(n))]`
-/

namespace A214879.P6641905104811896303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A070176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214879.P6641905104811896303

/-! ## A214879.P8497869597970236317

`lt[A045698(n), A045698(n+2)+1]`
-/

namespace A214879.P8497869597970236317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214879.P8497869597970236317

/-! ## A214879.P11923631193912924132

`lt[A045698(n), A003415(A000040(n+1))]`
-/

namespace A214879.P11923631193912924132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214879.P11923631193912924132

/-! ## A214879.P4575292973171313049

`lt[A045698(n), A003415(A167806(n+2))]`
-/

namespace A214879.P4575292973171313049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A167806 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214879.P4575292973171313049

/-! ## A214879.P5793796675311407378

`eq[0, A279372(n)]`
-/

namespace A214879.P5793796675311407378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214879.P5793796675311407378

/-!
# A214880: 5-adic valuation of A007185.

The programs for A214880, there is no canonical definition to state claims against.
-/

/-! ## A214880.P4169629893458915874

`n+1+val(A214882(n+1), 5)`
-/

namespace A214880.P4169629893458915874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.valuation (A214882 (n + 1)).toNat 5

end

end A214880.P4169629893458915874

/-! ## A214880.P2649266887627459222

`A005496(val(A214882(n+1), 5))+n`
-/

namespace A214880.P2649266887627459222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (SequenceMachineLib.valuation (A214882 (n + 1)).toNat 5) + (n : ℤ)

end

end A214880.P2649266887627459222

/-! ## A214880.P7775373481995448522

`val(A007185(n+1), 5)`
-/

namespace A214880.P7775373481995448522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007185 (n + 1)).toNat 5

end

end A214880.P7775373481995448522

/-! ## A214880.P11362516127712952422

`A138904(A113238(n+2))+n`
-/

namespace A214880.P11362516127712952422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A113238 (n + 2)).toNat + (n : ℤ)

end

end A214880.P11362516127712952422

/-!
# A214881: 2-adic valuation of A016090.

The programs for A214881, there is no canonical definition to state claims against.
-/

/-! ## A214881.P13038234220511864844

`val(A214883(n+1), 2)+1+n`
-/

namespace A214881.P13038234220511864844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214883 (n + 1)).toNat 2 + 1 + n

end

end A214881.P13038234220511864844

/-! ## A214881.P5056490075726233738

`val(A016090(n+1), 2)`
-/

namespace A214881.P5056490075726233738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016090 (n + 1)).toNat 2

end

end A214881.P5056490075726233738

/-! ## A214881.P43461091481521640

`val(A216093(n+1)+1, 2)`
-/

namespace A214881.P43461091481521640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A216093 (n + 1) + 1).toNat 2

end

end A214881.P43461091481521640

/-! ## A214881.P4731106371543325437

`val(∑[A011557(n)*A018248(n)], 2)`
-/

namespace A214881.P4731106371543325437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A018248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A214881.P4731106371543325437

/-! ## A214881.P16026172525917822333

`val(A000533(n+1)-A007185(n+1), 2)`
-/

namespace A214881.P16026172525917822333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000533 (n + 1) - A007185 (n + 1)).toNat 2

end

end A214881.P16026172525917822333

/-!
# A214882: A007185(n)/5^n.

The programs for A214882, there is no canonical definition to state claims against.
-/

/-! ## A214882.P12487880487102529729

`A007185(n+1)/5^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214882.P12487880487102529729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007185 (n + 1) : ℚ) / (5 ^ (n + 1) : ℚ)

end

end A214882.P12487880487102529729

/-!
# A214883: a(n) = A016090(n)/2^n.

The programs for A214883, there is no canonical definition to state claims against.
-/

/-! ## A214883.P12508606885792136113

`A016090(n+1)/2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214883.P12508606885792136113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016090 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A214883.P12508606885792136113

/-! ## A214883.P5048683209877264726

`ceil(A216093(n+1)/Δ[A048578(n)])`
-/

namespace A214883.P5048683209877264726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216093 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A214883.P5048683209877264726

/-! ## A214883.P15194803515067974389

`(1+10^(n+1)-A007185(n+1))/Δ[A048578(n)]`
-/

namespace A214883.P15194803515067974389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ((10 ^ (n + 1) : ℤ) - A007185 (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A214883.P15194803515067974389

/-! ## A214883.P5609912576741985143

`(A000533(n+1)-A007185(n+1))/Δ[A048578(n)]`
-/

namespace A214883.P5609912576741985143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000533 (n + 1) - A007185 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A214883.P5609912576741985143

/-! ## A214883.P10622657417946275952

`(A000533(n+1)-A007185(n+1))/A000079(n+1)`
-/

namespace A214883.P10622657417946275952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000533 (n + 1) - A007185 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A214883.P10622657417946275952

/-!
# A214884: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+2), where F=A000045 (Fibonacci numbers).

The programs for A214884, the canonical program `A214884.P2792534514431824253` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214884 has offset 0).

The definition of A214884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214884.P15041708864576339443

`∑[∑[floor(∑[(-ϕ²)^n])]-1]`
-/

namespace A214884.P15041708864576339443
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f3 j⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214884.P15041708864576339443

namespace A214884

/-- `∑[∑[floor(∑[(-ϕ²)^n])]-1]` -/
def P15041708864576339443.Spec : Prop :=
  ∀ n, P15041708864576339443.a n = A214884 n

end A214884

/-! ## A214884.P1724759443567327623

`-(A119283(n+1)+n+1)`
-/

namespace A214884.P1724759443567327623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A119283 (n + 1) + (n + 1 : ℤ))

end

end A214884.P1724759443567327623

namespace A214884

/-- `-(A119283(n+1)+n+1)` -/
def P1724759443567327623.Spec : Prop :=
  ∀ n, P1724759443567327623.a n = A214884 n

end A214884

/-! ## A214884.P2792534514431824253

`∑[∑[A099496(n)]]+xor(n, -1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214884

/-- `∑[∑[A099496(n)]]+xor(n, -1)` -/
def P2792534514431824253.Spec : Prop :=
  ∀ n, P2792534514431824253.a n = A214884 n

theorem P2792534514431824253.correct : P2792534514431824253.Spec := by
  intro n
  simp only [A214884]

end A214884

/-! ## A214884.P13583760991298765572

`∑[A000045(n+1)²*A033999(n)]-(n+1)`
-/

namespace A214884.P13583760991298765572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A214884.P13583760991298765572

namespace A214884

/-- `∑[A000045(n+1)²*A033999(n)]-(n+1)` -/
def P13583760991298765572.Spec : Prop :=
  ∀ n, P13583760991298765572.a n = A214884 n

end A214884

/-! ## A214884.P1194614525202473685

`A119283(n+1)+A119283(n)+A077916(n)`
-/

namespace A214884.P1194614525202473685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 (n + 1) + (A119283 n + A077916 n)

end

end A214884.P1194614525202473685

namespace A214884

/-- `A119283(n+1)+A119283(n)+A077916(n)` -/
def P1194614525202473685.Spec : Prop :=
  ∀ n, P1194614525202473685.a n = A214884 n

end A214884

/-! ## A214884.P17700124609421885061

`((-1)^n*A000045(2*n+3)-3*n-2)/5`
-/

namespace A214884.P17700124609421885061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 (2 * n + 3) - (3 * n : ℤ) - 2 : ℚ) / 5

end

end A214884.P17700124609421885061

namespace A214884

/-- `((-1)^n*A000045(2*n+3)-3*n-2)/5` -/
def P17700124609421885061.Spec : Prop :=
  ∀ n, P17700124609421885061.a n = (A214884 n : ℚ)

end A214884

/-!
# A214885: a(n) = Sum_{k=0..n} (-1)^k*F(k)*F(k+3), where F=A000045 (Fibonacci numbers).

The programs for A214885, the canonical program `A214885.P14676877343203418941` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214885 has offset 0).

The definition of A214885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214885.P16903984258048222578

`∑[ceil(a(n-1)/(ϕ-2))]-(n+1)` with `a(0)=1`
-/

namespace A214885.P16903984258048222578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (Real.goldenRatio - 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A214885.P16903984258048222578

namespace A214885

/-- `∑[ceil(a(n-1)/(ϕ-2))]-(n+1)` -/
def P16903984258048222578.Spec : Prop :=
  ∀ n, P16903984258048222578.a n = A214885 n

end A214885

/-! ## A214885.P14676877343203418941

`A077916(n)-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214885

/-- `A077916(n)-(n+1)` -/
def P14676877343203418941.Spec : Prop :=
  ∀ n, P14676877343203418941.a n = A214885 n

theorem P14676877343203418941.correct : P14676877343203418941.Spec := by
  intro n
  simp only [A214885]

end A214885

/-! ## A214885.P14772811635247696973

`2*A214884(n)-A119283(n)`
-/

namespace A214885.P14772811635247696973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214884 n - A119283 n

end

end A214885.P14772811635247696973

namespace A214885

/-- `2*A214884(n)-A119283(n)` -/
def P14772811635247696973.Spec : Prop :=
  ∀ n, P14772811635247696973.a n = A214885 n

end A214885

/-! ## A214885.P3436364356286882923

`A119283(n+1)+A214884(n)+A077916(n)`
-/

namespace A214885.P3436364356286882923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119283 (n + 1) + (A214884 n + A077916 n)

end

end A214885.P3436364356286882923

namespace A214885

/-- `A119283(n+1)+A214884(n)+A077916(n)` -/
def P3436364356286882923.Spec : Prop :=
  ∀ n, P3436364356286882923.a n = A214885 n

end A214885

/-! ## A214885.P11334785679591011079

`∑[(-1)^n*Δ[A000045(n+1)²]]`
-/

namespace A214885.P11334785679591011079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214885.P11334785679591011079

namespace A214885

/-- `∑[(-1)^n*Δ[A000045(n+1)²]]` -/
def P11334785679591011079.Spec : Prop :=
  ∀ n, P11334785679591011079.a n = A214885 n

end A214885

/-!
# A214886: Primes of the form n^3-2*n^2-1.

The programs for A214886, there is no canonical definition to state claims against.
-/

/-! ## A214886.P7733981053798504645

`p?[n*(n+2)²-1]`
-/

namespace A214886.P7733981053798504645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214886.P7733981053798504645

/-! ## A214886.P11964579945682866183

`or(6, p?[(n-2)*n²-1])`
-/

namespace A214886.P11964579945682866183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A214886.P11964579945682866183

/-! ## A214886.P11524282966943245498

`∏{d}[p?[(n-2)*n²-1], #]`
-/

namespace A214886.P11524282966943245498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A214886.P11524282966943245498

/-! ## A214886.P14574120457484463082

`∑{p}[p?[floor(lcm(n+1, n²)-(n+ϕ))], #]`
-/

namespace A214886.P14574120457484463082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n ^ 2) : ℝ) - ((n : ℝ) + Real.goldenRatio)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A214886.P14574120457484463082

/-! ## A214886.P1804949004376219855

`∑{p}[p?[2*(n-1)*(2*n)²-1], #]`
-/

namespace A214886.P1804949004376219855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) - 1) * ((2 * n) ^ 2 : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A214886.P1804949004376219855

/-!
# A214887: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=7.

The programs for A214887, the canonical program `A214887.P13474345776860503768` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214887 has offset 0).

The definition of A214887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A214887.P13474345776860503768`, by `A214887.P13474345776860503768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214887.P13474345776860503768

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214887

/-- `a(n-1)*a(n-2)` -/
def P13474345776860503768.Spec : Prop :=
  ∀ n, (P13474345776860503768.a n : ℤ) = A214887 n

theorem P13474345776860503768.correct : P13474345776860503768.Spec := by
  intro n
  simp only [A214887]

end A214887

/-! ## A214887.P1047228413036721682

`7^round(ϕ^n/sqrt(5))`
-/

namespace A214887.P1047228413036721682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A214887.P1047228413036721682

namespace A214887

/-- `7^round(ϕ^n/sqrt(5))` -/
def P1047228413036721682.Spec : Prop :=
  ∀ n, P1047228413036721682.a n = (A214887 n : ℚ)

end A214887

/-! ## A214887.P8671905772943735623

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=7, a(2)=7`
-/

namespace A214887.P8671905772943735623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7, 7] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A214887.P8671905772943735623

namespace A214887

/-- `a(n-1)²/a(n-3)` -/
def P8671905772943735623.Spec : Prop :=
  ∀ n, P8671905772943735623.a n = (A214887 n : ℚ)

end A214887

/-! ## A214887.P9606973224434922093

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=7`
-/

namespace A214887.P9606973224434922093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A214887.P9606973224434922093

namespace A214887

/-- `a(n-1)/a(n-2)^(-1)` -/
def P9606973224434922093.Spec : Prop :=
  ∀ n, P9606973224434922093.a n = (A214887 n : ℚ)

end A214887

/-! ## A214887.P5677950026757232130

`or(1, 7^A000045(n))`
-/

namespace A214887.P5677950026757232130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A000045 n : ℤ)))

end

end A214887.P5677950026757232130

namespace A214887

/-- `or(1, 7^A000045(n))` -/
def P5677950026757232130.Spec : Prop :=
  ∀ n, P5677950026757232130.a n = A214887 n

end A214887

/-!
# A214888: Primes congruent to {2, 3} mod 11.

The programs for A214888, the canonical program `A214888.P4270454209454101815` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214888 has offset 1).

The definition of A214888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214888.P4270454209454101815

`∪[A090187(n+1), A141850(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214888

/-- `∪[A090187(n+1), A141850(n+1)]` -/
def P4270454209454101815.Spec : Prop :=
  ∀ n, (P4270454209454101815.a n : ℤ) = A214888 (n + 1)

theorem P4270454209454101815.correct : P4270454209454101815.Spec := by
  intro n
  simp only [A214888, Nat.add_sub_cancel]

end A214888

/-! ## A214888.P14606543508285391043

`A215374(A326178(n+1))`
-/

namespace A214888.P14606543508285391043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (A326178 (n + 1)).toNat

end

end A214888.P14606543508285391043

namespace A214888

/-- `A215374(A326178(n+1))` -/
def P14606543508285391043.Spec : Prop :=
  ∀ n, P14606543508285391043.a n = A214888 (n + 1)

end A214888

/-! ## A214888.P4449151567869410204

`p?[a(n-2)+11]` with `a(0)=2, a(1)=3`
-/

namespace A214888.P4449151567869410204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214888.P4449151567869410204

namespace A214888

/-- `p?[a(n-2)+11]` -/
def P4449151567869410204.Spec : Prop :=
  ∀ n, (P4449151567869410204.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P4068658803550069379

`∩[A215102(n+1), A215279(n+1)]`
-/

namespace A214888.P4068658803550069379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P4068658803550069379

namespace A214888

/-- `∩[A215102(n+1), A215279(n+1)]` -/
def P4068658803550069379.Spec : Prop :=
  ∀ n, (P4068658803550069379.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P13165352702013555739

`∩[A215102(n+1), A215358(n+1)]`
-/

namespace A214888.P13165352702013555739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P13165352702013555739

namespace A214888

/-- `∩[A215102(n+1), A215358(n+1)]` -/
def P13165352702013555739.Spec : Prop :=
  ∀ n, (P13165352702013555739.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P10276045220161224489

`∩[A215102(n+1), A215374(n+1)]`
-/

namespace A214888.P10276045220161224489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P10276045220161224489

namespace A214888

/-- `∩[A215102(n+1), A215374(n+1)]` -/
def P10276045220161224489.Spec : Prop :=
  ∀ n, (P10276045220161224489.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P17955698311443066016

`∩[A215102(n+1), A215386(n+1)]`
-/

namespace A214888.P17955698311443066016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P17955698311443066016

namespace A214888

/-- `∩[A215102(n+1), A215386(n+1)]` -/
def P17955698311443066016.Spec : Prop :=
  ∀ n, (P17955698311443066016.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P10850764276058143481

`∩[A215279(n+1), A215386(n+1)]`
-/

namespace A214888.P10850764276058143481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P10850764276058143481

namespace A214888

/-- `∩[A215279(n+1), A215386(n+1)]` -/
def P10850764276058143481.Spec : Prop :=
  ∀ n, (P10850764276058143481.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P14349988801069184625

`∩[A215102(n+1), A215134(n+1)]`
-/

namespace A214888.P14349988801069184625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P14349988801069184625

namespace A214888

/-- `∩[A215102(n+1), A215134(n+1)]` -/
def P14349988801069184625.Spec : Prop :=
  ∀ n, (P14349988801069184625.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P16479275126370229862

`∩[A215134(n+1), A215279(n+1)]`
-/

namespace A214888.P16479275126370229862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P16479275126370229862

namespace A214888

/-- `∩[A215134(n+1), A215279(n+1)]` -/
def P16479275126370229862.Spec : Prop :=
  ∀ n, (P16479275126370229862.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P15913810802044108828

`∩[A215134(n+1), A215358(n+1)]`
-/

namespace A214888.P15913810802044108828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P15913810802044108828

namespace A214888

/-- `∩[A215134(n+1), A215358(n+1)]` -/
def P15913810802044108828.Spec : Prop :=
  ∀ n, (P15913810802044108828.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P10483298161690326639

`∩[A215102(n+1), A215302(n+1)]`
-/

namespace A214888.P10483298161690326639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P10483298161690326639

namespace A214888

/-- `∩[A215102(n+1), A215302(n+1)]` -/
def P10483298161690326639.Spec : Prop :=
  ∀ n, (P10483298161690326639.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P8766642134411634963

`∩[A215302(n+1), A215386(n+1)]`
-/

namespace A214888.P8766642134411634963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P8766642134411634963

namespace A214888

/-- `∩[A215302(n+1), A215386(n+1)]` -/
def P8766642134411634963.Spec : Prop :=
  ∀ n, (P8766642134411634963.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P4181532216414825575

`∩[A215102(n+1), A215382(n+1)]`
-/

namespace A214888.P4181532216414825575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P4181532216414825575

namespace A214888

/-- `∩[A215102(n+1), A215382(n+1)]` -/
def P4181532216414825575.Spec : Prop :=
  ∀ n, (P4181532216414825575.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P17749432525580148207

`∩[A215279(n+1), A215306(n+1)]`
-/

namespace A214888.P17749432525580148207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P17749432525580148207

namespace A214888

/-- `∩[A215279(n+1), A215306(n+1)]` -/
def P17749432525580148207.Spec : Prop :=
  ∀ n, (P17749432525580148207.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P12468877173993837686

`∩[A215134(n+1), A215314(n+1)]`
-/

namespace A214888.P12468877173993837686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P12468877173993837686

namespace A214888

/-- `∩[A215134(n+1), A215314(n+1)]` -/
def P12468877173993837686.Spec : Prop :=
  ∀ n, (P12468877173993837686.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P15281922542007393166

`∩[A215102(n+1), A215350(n+1)]`
-/

namespace A214888.P15281922542007393166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P15281922542007393166

namespace A214888

/-- `∩[A215102(n+1), A215350(n+1)]` -/
def P15281922542007393166.Spec : Prop :=
  ∀ n, (P15281922542007393166.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P7559811100619425280

`∩[A215134(n+1), A215354(n+1)]`
-/

namespace A214888.P7559811100619425280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P7559811100619425280

namespace A214888

/-- `∩[A215134(n+1), A215354(n+1)]` -/
def P7559811100619425280.Spec : Prop :=
  ∀ n, (P7559811100619425280.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P2864134198654427315

`∩[A215350(n+1), A215134(n+1)]`
-/

namespace A214888.P2864134198654427315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P2864134198654427315

namespace A214888

/-- `∩[A215350(n+1), A215134(n+1)]` -/
def P2864134198654427315.Spec : Prop :=
  ∀ n, (P2864134198654427315.a n : ℤ) = A214888 (n + 1)

end A214888

/-! ## A214888.P8439965252448682874

`∩[A167134(n+1), A215134(n+1)]`
-/

namespace A214888.P8439965252448682874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214888.P8439965252448682874

namespace A214888

/-- `∩[A167134(n+1), A215134(n+1)]` -/
def P8439965252448682874.Spec : Prop :=
  ∀ n, (P8439965252448682874.a n : ℤ) = A214888 (n + 1)

end A214888

/-!
# A214889: Primes congruent to {2, 3} mod 13.

The programs for A214889, the canonical program `A214889.P17095536773520948583` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214889 has offset 1).

The definition of A214889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214889.P17095536773520948583

`∪[A100202(n+1), A141858(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214889

/-- `∪[A100202(n+1), A141858(n+1)]` -/
def P17095536773520948583.Spec : Prop :=
  ∀ n, (P17095536773520948583.a n : ℤ) = A214889 (n + 1)

theorem P17095536773520948583.correct : P17095536773520948583.Spec := by
  intro n
  simp only [A214889, Nat.add_sub_cancel]

end A214889

/-! ## A214889.P8290511034305899880

`A215375(A326178(n+1))`
-/

namespace A214889.P8290511034305899880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (A326178 (n + 1)).toNat

end

end A214889.P8290511034305899880

namespace A214889

/-- `A215375(A326178(n+1))` -/
def P8290511034305899880.Spec : Prop :=
  ∀ n, P8290511034305899880.a n = A214889 (n + 1)

end A214889

/-! ## A214889.P15188920122200956918

`record[A215375(n+1)%A084381(n)]`
-/

namespace A214889.P15188920122200956918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215375 (n + 1)) (A084381 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214889.P15188920122200956918

namespace A214889

/-- `record[A215375(n+1)%A084381(n)]` -/
def P15188920122200956918.Spec : Prop :=
  ∀ n, P15188920122200956918.a n = A214889 (n + 1)

end A214889

/-! ## A214889.P12893188661692550433

`p?[a(n-2)+13]` with `a(0)=2, a(1)=3`
-/

namespace A214889.P12893188661692550433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214889.P12893188661692550433

namespace A214889

/-- `p?[a(n-2)+13]` -/
def P12893188661692550433.Spec : Prop :=
  ∀ n, (P12893188661692550433.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P13103894961436261598

`∩[A215280(n+1), A215375(n+1)]`
-/

namespace A214889.P13103894961436261598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P13103894961436261598

namespace A214889

/-- `∩[A215280(n+1), A215375(n+1)]` -/
def P13103894961436261598.Spec : Prop :=
  ∀ n, (P13103894961436261598.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P8757061156826284525

`∩[A215135(n+1), A215280(n+1)]`
-/

namespace A214889.P8757061156826284525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P8757061156826284525

namespace A214889

/-- `∩[A215135(n+1), A215280(n+1)]` -/
def P8757061156826284525.Spec : Prop :=
  ∀ n, (P8757061156826284525.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P6124884943749527936

`∩[A215135(n+1), A215387(n+1)]`
-/

namespace A214889.P6124884943749527936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P6124884943749527936

namespace A214889

/-- `∩[A215135(n+1), A215387(n+1)]` -/
def P6124884943749527936.Spec : Prop :=
  ∀ n, (P6124884943749527936.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P17988543602369638289

`∩[A215103(n+1), A215135(n+1)]`
-/

namespace A214889.P17988543602369638289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P17988543602369638289

namespace A214889

/-- `∩[A215103(n+1), A215135(n+1)]` -/
def P17988543602369638289.Spec : Prop :=
  ∀ n, (P17988543602369638289.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P7853157885107297998

`∩[A215103(n+1), A215280(n+1)]`
-/

namespace A214889.P7853157885107297998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P7853157885107297998

namespace A214889

/-- `∩[A215103(n+1), A215280(n+1)]` -/
def P7853157885107297998.Spec : Prop :=
  ∀ n, (P7853157885107297998.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P5951781037999925238

`∩[A215103(n+1), A215359(n+1)]`
-/

namespace A214889.P5951781037999925238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P5951781037999925238

namespace A214889

/-- `∩[A215103(n+1), A215359(n+1)]` -/
def P5951781037999925238.Spec : Prop :=
  ∀ n, (P5951781037999925238.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P1963875940903282687

`∩[A215135(n+1), A215155(n+1)]`
-/

namespace A214889.P1963875940903282687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P1963875940903282687

namespace A214889

/-- `∩[A215135(n+1), A215155(n+1)]` -/
def P1963875940903282687.Spec : Prop :=
  ∀ n, (P1963875940903282687.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P12564089832262767248

`∩[A215155(n+1), A215280(n+1)]`
-/

namespace A214889.P12564089832262767248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P12564089832262767248

namespace A214889

/-- `∩[A215155(n+1), A215280(n+1)]` -/
def P12564089832262767248.Spec : Prop :=
  ∀ n, (P12564089832262767248.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P10081562846003835361

`∩[A215135(n+1), A215315(n+1)]`
-/

namespace A214889.P10081562846003835361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P10081562846003835361

namespace A214889

/-- `∩[A215135(n+1), A215315(n+1)]` -/
def P10081562846003835361.Spec : Prop :=
  ∀ n, (P10081562846003835361.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P4806396431790846225

`∩[A215135(n+1), A215355(n+1)]`
-/

namespace A214889.P4806396431790846225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P4806396431790846225

namespace A214889

/-- `∩[A215135(n+1), A215355(n+1)]` -/
def P4806396431790846225.Spec : Prop :=
  ∀ n, (P4806396431790846225.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P16426436886971315475

`∩[A215315(n+1), A215375(n+1)]`
-/

namespace A214889.P16426436886971315475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P16426436886971315475

namespace A214889

/-- `∩[A215315(n+1), A215375(n+1)]` -/
def P16426436886971315475.Spec : Prop :=
  ∀ n, (P16426436886971315475.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P7505096304114029789

`∩[A215371(n+1), A215135(n+1)]`
-/

namespace A214889.P7505096304114029789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P7505096304114029789

namespace A214889

/-- `∩[A215371(n+1), A215135(n+1)]` -/
def P7505096304114029789.Spec : Prop :=
  ∀ n, (P7505096304114029789.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P12454937153523380281

`∩[A215280(n+1), A215307(n+1)]`
-/

namespace A214889.P12454937153523380281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P12454937153523380281

namespace A214889

/-- `∩[A215280(n+1), A215307(n+1)]` -/
def P12454937153523380281.Spec : Prop :=
  ∀ n, (P12454937153523380281.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P10345641852321377975

`∩[A215103(n+1), A215303(n+1)]`
-/

namespace A214889.P10345641852321377975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P10345641852321377975

namespace A214889

/-- `∩[A215103(n+1), A215303(n+1)]` -/
def P10345641852321377975.Spec : Prop :=
  ∀ n, (P10345641852321377975.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P17006047601745628815

`∩[A215103(n+1), A215351(n+1)]`
-/

namespace A214889.P17006047601745628815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P17006047601745628815

namespace A214889

/-- `∩[A215103(n+1), A215351(n+1)]` -/
def P17006047601745628815.Spec : Prop :=
  ∀ n, (P17006047601745628815.a n : ℤ) = A214889 (n + 1)

end A214889

/-! ## A214889.P10501729583716902445

`∩[A215155(n+1), A215303(n+1)]`
-/

namespace A214889.P10501729583716902445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214889.P10501729583716902445

namespace A214889

/-- `∩[A215155(n+1), A215303(n+1)]` -/
def P10501729583716902445.Spec : Prop :=
  ∀ n, (P10501729583716902445.a n : ℤ) = A214889 (n + 1)

end A214889

/-!
# A214890: Primes congruent to {2, 3} mod 17.

The programs for A214890, the canonical program `A214890.P17674179342821707442` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214890 has offset 1).

The definition of A214890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214890.P17674179342821707442

`∪[A092074(n+1), A140544(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214890

/-- `∪[A092074(n+1), A140544(n+1)]` -/
def P17674179342821707442.Spec : Prop :=
  ∀ n, (P17674179342821707442.a n : ℤ) = A214890 (n + 1)

theorem P17674179342821707442.correct : P17674179342821707442.Spec := by
  intro n
  simp only [A214890, Nat.add_sub_cancel]

end A214890

/-! ## A214890.P14403362687171149080

`A215376(A326178(n+1))`
-/

namespace A214890.P14403362687171149080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (A326178 (n + 1)).toNat

end

end A214890.P14403362687171149080

namespace A214890

/-- `A215376(A326178(n+1))` -/
def P14403362687171149080.Spec : Prop :=
  ∀ n, P14403362687171149080.a n = A214890 (n + 1)

end A214890

/-! ## A214890.P5782402228098200866

`p?[a(n-2)+17]` with `a(0)=2, a(1)=3`
-/

namespace A214890.P5782402228098200866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214890.P5782402228098200866

namespace A214890

/-- `p?[a(n-2)+17]` -/
def P5782402228098200866.Spec : Prop :=
  ∀ n, (P5782402228098200866.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P4097584761147393587

`∩[A215153(n+1), A215376(n+1)]`
-/

namespace A214890.P4097584761147393587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P4097584761147393587

namespace A214890

/-- `∩[A215153(n+1), A215376(n+1)]` -/
def P4097584761147393587.Spec : Prop :=
  ∀ n, (P4097584761147393587.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P2768120854066140641

`∩[A215104(n+1), A215153(n+1)]`
-/

namespace A214890.P2768120854066140641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P2768120854066140641

namespace A214890

/-- `∩[A215104(n+1), A215153(n+1)]` -/
def P2768120854066140641.Spec : Prop :=
  ∀ n, (P2768120854066140641.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P15417215522478023675

`∩[A215104(n+1), A215376(n+1)]`
-/

namespace A214890.P15417215522478023675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P15417215522478023675

namespace A214890

/-- `∩[A215104(n+1), A215376(n+1)]` -/
def P15417215522478023675.Spec : Prop :=
  ∀ n, (P15417215522478023675.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P7577414192044455780

`∩[A215104(n+1), A215380(n+1)]`
-/

namespace A214890.P7577414192044455780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P7577414192044455780

namespace A214890

/-- `∩[A215104(n+1), A215380(n+1)]` -/
def P7577414192044455780.Spec : Prop :=
  ∀ n, (P7577414192044455780.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P8870134542231807477

`∩[A215104(n+1), A215281(n+1)]`
-/

namespace A214890.P8870134542231807477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P8870134542231807477

namespace A214890

/-- `∩[A215104(n+1), A215281(n+1)]` -/
def P8870134542231807477.Spec : Prop :=
  ∀ n, (P8870134542231807477.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P3470049112639076043

`∩[A215153(n+1), A215281(n+1)]`
-/

namespace A214890.P3470049112639076043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P3470049112639076043

namespace A214890

/-- `∩[A215153(n+1), A215281(n+1)]` -/
def P3470049112639076043.Spec : Prop :=
  ∀ n, (P3470049112639076043.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P13608598297459750318

`∩[A215104(n+1), A215360(n+1)]`
-/

namespace A214890.P13608598297459750318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P13608598297459750318

namespace A214890

/-- `∩[A215104(n+1), A215360(n+1)]` -/
def P13608598297459750318.Spec : Prop :=
  ∀ n, (P13608598297459750318.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P12795174695420751373

`∩[A215153(n+1), A215360(n+1)]`
-/

namespace A214890.P12795174695420751373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P12795174695420751373

namespace A214890

/-- `∩[A215153(n+1), A215360(n+1)]` -/
def P12795174695420751373.Spec : Prop :=
  ∀ n, (P12795174695420751373.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P7450305085167879763

`∩[A215104(n+1), A215388(n+1)]`
-/

namespace A214890.P7450305085167879763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P7450305085167879763

namespace A214890

/-- `∩[A215104(n+1), A215388(n+1)]` -/
def P7450305085167879763.Spec : Prop :=
  ∀ n, (P7450305085167879763.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P17203638092924371022

`∩[A215153(n+1), A215156(n+1)]`
-/

namespace A214890.P17203638092924371022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P17203638092924371022

namespace A214890

/-- `∩[A215153(n+1), A215156(n+1)]` -/
def P17203638092924371022.Spec : Prop :=
  ∀ n, (P17203638092924371022.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P6082995532586734235

`∩[A215156(n+1), A215281(n+1)]`
-/

namespace A214890.P6082995532586734235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P6082995532586734235

namespace A214890

/-- `∩[A215156(n+1), A215281(n+1)]` -/
def P6082995532586734235.Spec : Prop :=
  ∀ n, (P6082995532586734235.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P440734699080322827

`∩[A215156(n+1), A215360(n+1)]`
-/

namespace A214890.P440734699080322827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P440734699080322827

namespace A214890

/-- `∩[A215156(n+1), A215360(n+1)]` -/
def P440734699080322827.Spec : Prop :=
  ∀ n, (P440734699080322827.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P542805169852465807

`∩[A215153(n+1), A215372(n+1)]`
-/

namespace A214890.P542805169852465807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P542805169852465807

namespace A214890

/-- `∩[A215153(n+1), A215372(n+1)]` -/
def P542805169852465807.Spec : Prop :=
  ∀ n, (P542805169852465807.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P8257514142978558854

`∩[A215281(n+1), A215372(n+1)]`
-/

namespace A214890.P8257514142978558854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P8257514142978558854

namespace A214890

/-- `∩[A215281(n+1), A215372(n+1)]` -/
def P8257514142978558854.Spec : Prop :=
  ∀ n, (P8257514142978558854.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P14994816179369654766

`∩[A215153(n+1), A215316(n+1)]`
-/

namespace A214890.P14994816179369654766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P14994816179369654766

namespace A214890

/-- `∩[A215153(n+1), A215316(n+1)]` -/
def P14994816179369654766.Spec : Prop :=
  ∀ n, (P14994816179369654766.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P4652187126434300150

`∩[A215316(n+1), A215380(n+1)]`
-/

namespace A214890.P4652187126434300150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P4652187126434300150

namespace A214890

/-- `∩[A215316(n+1), A215380(n+1)]` -/
def P4652187126434300150.Spec : Prop :=
  ∀ n, (P4652187126434300150.a n : ℤ) = A214890 (n + 1)

end A214890

/-! ## A214890.P358707582732793129

`∩[A215104(n+1), A215352(n+1)]`
-/

namespace A214890.P358707582732793129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214890.P358707582732793129

namespace A214890

/-- `∩[A215104(n+1), A215352(n+1)]` -/
def P358707582732793129.Spec : Prop :=
  ∀ n, (P358707582732793129.a n : ℤ) = A214890 (n + 1)

end A214890

/-!
# A214892: Conway's subprime Fibonacci sequence starting with (4,1).

The programs for A214892, there is no canonical definition to state claims against.
-/

/-! ## A214892.P10773792898941841720

`A117818(a(n-1)+a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A214892.P10773792898941841720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A117818 (a (n - 1) + a (n - 2)).toNat

end

end A214892.P10773792898941841720

/-!
# A214899: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0)=2, a(1)=1, a(2)=2.

The programs for A214899, the canonical program `A214899.P7873589326808880822` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214899 has offset 0).

The definition of A214899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214899.P7873589326808880822`, by `A214899.P7873589326808880822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214899.P7873589326808880822

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A214899

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P7873589326808880822.Spec : Prop :=
  ∀ n, (P7873589326808880822.a n : ℤ) = A214899 n

theorem P7873589326808880822.correct : P7873589326808880822.Spec := by
  intro n
  simp only [A214899]

end A214899

/-! ## A214899.P15316344153038125073

`2*a(n-1)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A214899.P15316344153038125073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 5] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A214899.P15316344153038125073

namespace A214899

/-- `2*a(n-1)-a(n-4)` -/
def P15316344153038125073.Spec : Prop :=
  ∀ n, P15316344153038125073.a n = A214899 n

end A214899

/-! ## A214899.P16030874539938648355

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=2, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A214899.P16030874539938648355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A214899.P16030874539938648355

namespace A214899

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P16030874539938648355.Spec : Prop :=
  ∀ n, P16030874539938648355.a n = A214899 n

end A214899

/-! ## A214899.P17219639774775692733

`A141036(n)+A000073(n)`
-/

namespace A214899.P17219639774775692733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + A000073 n

end

end A214899.P17219639774775692733

namespace A214899

/-- `A141036(n)+A000073(n)` -/
def P17219639774775692733.Spec : Prop :=
  ∀ n, P17219639774775692733.a n = A214899 n

end A214899

/-! ## A214899.P12517786163942088846

`A001590(n+1)+A000213(n)`
-/

namespace A214899.P12517786163942088846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A000213 n

end

end A214899.P12517786163942088846

namespace A214899

/-- `A001590(n+1)+A000213(n)` -/
def P12517786163942088846.Spec : Prop :=
  ∀ n, P12517786163942088846.a n = A214899 n

end A214899

/-! ## A214899.P14618187265706852352

`A081172(n+1)+A081172(n)`
-/

namespace A214899.P14618187265706852352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + A081172 n

end

end A214899.P14618187265706852352

namespace A214899

/-- `A081172(n+1)+A081172(n)` -/
def P14618187265706852352.Spec : Prop :=
  ∀ n, P14618187265706852352.a n = A214899 n

end A214899

/-! ## A214899.P11982187494794709252

`A020992(n+1)-A000073(n)`
-/

namespace A214899.P11982187494794709252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - A000073 n

end

end A214899.P11982187494794709252

namespace A214899

/-- `A020992(n+1)-A000073(n)` -/
def P11982187494794709252.Spec : Prop :=
  ∀ n, P11982187494794709252.a n = A214899 n

end A214899

/-! ## A214899.P13721795784463690184

`2*A000213(n)-A001590(n)`
-/

namespace A214899.P13721795784463690184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - A001590 n

end

end A214899.P13721795784463690184

namespace A214899

/-- `2*A000213(n)-A001590(n)` -/
def P13721795784463690184.Spec : Prop :=
  ∀ n, P13721795784463690184.a n = A214899 n

end A214899

/-! ## A214899.P4165386232877437182

`A000213(n)+Δ[A000073(n+1)]`
-/

namespace A214899.P4165386232877437182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n)

end

end A214899.P4165386232877437182

namespace A214899

/-- `A000213(n)+Δ[A000073(n+1)]` -/
def P4165386232877437182.Spec : Prop :=
  ∀ n, P4165386232877437182.a n = A214899 n

end A214899

/-! ## A214899.P1821422780471356906

`2*A000213(n)-Δ[A000073(n)]`
-/

namespace A214899.P1821422780471356906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - (f1 (n + 1) - f1 n)

end

end A214899.P1821422780471356906

namespace A214899

/-- `2*A000213(n)-Δ[A000073(n)]` -/
def P1821422780471356906.Spec : Prop :=
  ∀ n, P1821422780471356906.a n = A214899 n

end A214899

/-! ## A214899.P3080809181166650469

`A100683(n)+A141523(n)-A020992(n)`
-/

namespace A214899.P3080809181166650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 n + (A141523 n - A020992 n)

end

end A214899.P3080809181166650469

namespace A214899

/-- `A100683(n)+A141523(n)-A020992(n)` -/
def P3080809181166650469.Spec : Prop :=
  ∀ n, P3080809181166650469.a n = A214899 n

end A214899

/-! ## A214899.P15523149350973123067

`A000213(n)-(A081172(n)-A141036(n))`
-/

namespace A214899.P15523149350973123067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - (A081172 n - A141036 n)

end

end A214899.P15523149350973123067

namespace A214899

/-- `A000213(n)-(A081172(n)-A141036(n))` -/
def P15523149350973123067.Spec : Prop :=
  ∀ n, P15523149350973123067.a n = A214899 n

end A214899

/-! ## A214899.P7067345402159243201

`∑[A001590(n)]+A141036(n)-A001590(n)`
-/

namespace A214899.P7067345402159243201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A141036 n - A001590 n)

end

end A214899.P7067345402159243201

namespace A214899

/-- `∑[A001590(n)]+A141036(n)-A001590(n)` -/
def P7067345402159243201.Spec : Prop :=
  ∀ n, P7067345402159243201.a n = A214899 n

end A214899

/-! ## A214899.P9563351234709047109

`A000213(n+1)+A020992(n)-A100683(n)`
-/

namespace A214899.P9563351234709047109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A020992 n - A100683 n)

end

end A214899.P9563351234709047109

namespace A214899

/-- `A000213(n+1)+A020992(n)-A100683(n)` -/
def P9563351234709047109.Spec : Prop :=
  ∀ n, P9563351234709047109.a n = A214899 n

end A214899

/-! ## A214899.P9931609725886938043

`A276658(n+1)+A276658(n)-A000213(n)`
-/

namespace A214899.P9931609725886938043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + (A276658 n - A000213 n)

end

end A214899.P9931609725886938043

namespace A214899

/-- `A276658(n+1)+A276658(n)-A000213(n)` -/
def P9931609725886938043.Spec : Prop :=
  ∀ n, P9931609725886938043.a n = A214899 n

end A214899

/-! ## A214899.P17365169790074829769

`A001590(n+1)+A001590(n+1)+A001590(n)`
-/

namespace A214899.P17365169790074829769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + (A001590 (n + 1) + A001590 n)

end

end A214899.P17365169790074829769

namespace A214899

/-- `A001590(n+1)+A001590(n+1)+A001590(n)` -/
def P17365169790074829769.Spec : Prop :=
  ∀ n, P17365169790074829769.a n = A214899 n

end A214899

/-! ## A214899.P17499951394066873483

`A020992(n+1)+A020992(n)-A354784(n+1)`
-/

namespace A214899.P17499951394066873483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) + (A020992 n - A354784 (n + 1))

end

end A214899.P17499951394066873483

namespace A214899

/-- `A020992(n+1)+A020992(n)-A354784(n+1)` -/
def P17499951394066873483.Spec : Prop :=
  ∀ n, P17499951394066873483.a n = A214899 n

end A214899

/-! ## A214899.P1746841397280224378

`Δ[A081172(n+2)]`
-/

namespace A214899.P1746841397280224378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214899.P1746841397280224378

namespace A214899

/-- `Δ[A081172(n+2)]` -/
def P1746841397280224378.Spec : Prop :=
  ∀ n, P1746841397280224378.a n = A214899 n

end A214899

/-! ## A214899.P4608963890651620269

`A214825(n)-a(n-1)` with `a(0)=2`
-/

namespace A214899.P4608963890651620269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A214825 n - a (n - 1)

end

end A214899.P4608963890651620269

namespace A214899

/-- `A214825(n)-a(n-1)` -/
def P4608963890651620269.Spec : Prop :=
  ∀ n, P4608963890651620269.a n = A214899 n

end A214899

