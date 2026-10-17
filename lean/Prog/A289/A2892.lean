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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A289201: Number of maximal independent vertex sets (and minimal vertex covers) in the n X n knight graph.

The programs for A289201, there is no canonical definition to state claims against.
-/

/-! ## A289201.P5189803539246629886

`A339637(A149204(n))`
-/

namespace A289201.P5189803539246629886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339637 (A149204 n).toNat

end

end A289201.P5189803539246629886

/-!
# A289202: Number of maximum matchings in the n X n knight graph.

The programs for A289202, there is no canonical definition to state claims against.
-/

/-! ## A289202.P10111162324148388624

`A139270(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A289202.P10111162324148388624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A139270 (a (n - 1) ^ 2).toNat

end

end A289202.P10111162324148388624

/-!
# A289203: Number of maximum independent vertex sets in the n X n knight graph.

The programs for A289203, there is no canonical definition to state claims against.
-/

/-! ## A289203.P12789276178671209938

`a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=6, a(5)=1, a(6)=2`
-/

namespace A289203.P12789276178671209938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 6, 1, 2] fun n a =>
  a (n - 2)

end

end A289203.P12789276178671209938

/-!
# A289204: Number of (undirected) paths in the n X n knight graph.

The programs for A289204, there is no canonical definition to state claims against.
-/

/-! ## A289204.P127206642403078820

`A307025(∑[n+1])`
-/

namespace A289204.P127206642403078820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289204.P127206642403078820

/-!
# A289205: a(1) = a(2) = a(3) = 1, a(4) = 3; a(n) = n - a(n-a(n-1)) - a(n-a(n-2)) for n > 4.

The programs for A289205, there is no canonical definition to state claims against.
-/

/-! ## A289205.P13726292154703360577

`gcd(A025581(A007088(n+2)), A325684(3*n))`
-/

namespace A289205.P13726292154703360577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 (A007088 (n + 2)).toNat) (A325684 (3 * n))

end

end A289205.P13726292154703360577

/-!
# A289206: Greedy strictly increasing sequence starting at a(1)=1 avoiding both arithmetic and geometric progressions of length 3.

The programs for A289206, there is no canonical definition to state claims against.
-/

/-! ## A289206.P10386021208146963429

`A188053(n+1)+A008620(A185293(n))`
-/

namespace A289206.P10386021208146963429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188053 (n + 1) + A008620 (A185293 n).toNat

end

end A289206.P10386021208146963429

/-! ## A289206.P15218885737624247113

`A347699(A022166(n))+A188053(n+1)`
-/

namespace A289206.P15218885737624247113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347699 (A022166 n).toNat + A188053 (n + 1)

end

end A289206.P15218885737624247113

/-! ## A289206.P2765389831790405451

`(A188053(n+1)+1)%A004023(n+1)`
-/

namespace A289206.P2765389831790405451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188053 (n + 1) + 1) (A004023 (n + 1))

end

end A289206.P2765389831790405451

/-! ## A289206.P16564795483384100031

`A188053(n+1)+A010054(C((n+1)², 2))`
-/

namespace A289206.P16564795483384100031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188053 (n + 1) + A010054 (Nat.choose ((n + 1) ^ 2) 2)

end

end A289206.P16564795483384100031

/-! ## A289206.P11347389637355968268

`A188053(n+1)+A023591(A000085(n))`
-/

namespace A289206.P11347389637355968268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188053 (n + 1) + A023591 (A000085 n).toNat

end

end A289206.P11347389637355968268

/-!
# A289207: a(n) = max(0, n-2).

The programs for A289207, the canonical program `A289207.P4353291363742306282` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289207 has offset 0).

The definition of A289207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289207.P4353291363742306282

`floor(n-atan(n))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289207

/-- `floor(n-atan(n))` -/
def P4353291363742306282.Spec : Prop :=
  ∀ n, P4353291363742306282.a n = A289207 n

theorem P4353291363742306282.correct : P4353291363742306282.Spec := by
  intro n
  simp only [A289207]

end A289207

/-!
# A289208: Number of rooted essentially 4-connected toroidal triangulations with n vertices.

The programs for A289208, there is no canonical definition to state claims against.
-/

/-! ## A289208.P453971205812849225

`∑[A057627(A370186(n)+1)]`
-/

namespace A289208.P453971205812849225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A370186 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289208.P453971205812849225

/-! ## A289208.P6070281719724867926

`A151988(A314220(a(n-1)))` with `a(0)=0`
-/

namespace A289208.P6070281719724867926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151988 (A314220 (a (n - 1)).toNat).toNat

end

end A289208.P6070281719724867926

/-!
# A289211: a(n) = n! * Laguerre(n,-5).

The programs for A289211, there is no canonical definition to state claims against.
-/

/-! ## A289211.P1889192477940278704

`n!*A160609(n)/A160610(n)`
-/

namespace A289211.P1889192477940278704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160609 n : ℚ) / (A160610 n : ℚ)

end

end A289211.P1889192477940278704

/-! ## A289211.P11698822160837360946

`A289192(eq[5, A025581(n)])`
-/

namespace A289211.P11698822160837360946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289211.P11698822160837360946

/-! ## A289211.P4258492563272548521

`A289192(Δ[A023551(n+1)])`
-/

namespace A289211.P4258492563272548521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (f1 (n + 1) - f1 n).toNat

end

end A289211.P4258492563272548521

/-! ## A289211.P9042040121258992666

`A289192(A167614(n+5)-9)`
-/

namespace A289211.P9042040121258992666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A167614 (n + 5) - 9).toNat

end

end A289211.P9042040121258992666

/-! ## A289211.P13530696202478301890

`A289192(eq[6, A004736(n+1)])`
-/

namespace A289211.P13530696202478301890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289211.P13530696202478301890

/-! ## A289211.P15864297542468771416

`A000142(n)/A160610(n)*A160609(n)`
-/

namespace A289211.P15864297542468771416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160610 n : ℚ) * (A160609 n : ℚ)

end

end A289211.P15864297542468771416

/-!
# A289212: a(n) = n! * Laguerre(n,-6).

The programs for A289212, there is no canonical definition to state claims against.
-/

/-! ## A289212.P5431095918827624321

`n!*A160607(n)/A160608(n)`
-/

namespace A289212.P5431095918827624321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160607 n : ℚ) / (A160608 n : ℚ)

end

end A289212.P5431095918827624321

/-! ## A289212.P2276402420875654548

`A289192(eq[6, A025581(n)])`
-/

namespace A289212.P2276402420875654548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289212.P2276402420875654548

/-! ## A289212.P15445452685574900969

`A289192(eq[13, A099375(n)])`
-/

namespace A289212.P15445452685574900969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289212.P15445452685574900969

/-! ## A289212.P6110689046464658182

`A289192(A000124(n+7)-8)`
-/

namespace A289212.P6110689046464658182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000124 (n + 7) - 8).toNat

end

end A289212.P6110689046464658182

/-! ## A289212.P613624330049835511

`A289192(eq[7, A004736(n+1)])`
-/

namespace A289212.P613624330049835511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289212.P613624330049835511

/-! ## A289212.P6356050234229681791

`A289192(Δ[A023551(n+2)]-1)`
-/

namespace A289212.P6356050234229681791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (f1 (n + 1) - f1 n - 1).toNat

end

end A289212.P6356050234229681791

/-! ## A289212.P6457998992403320200

`A289192(2*n+A000124(n+5)+5)`
-/

namespace A289212.P6457998992403320200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A289212.P6457998992403320200

/-! ## A289212.P1331873106302668610

`A289192(A000124(n+5)+5+n+n)`
-/

namespace A289212.P1331873106302668610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000124 (n + 5) + 5 + (n : ℤ) + (n : ℤ)).toNat

end

end A289212.P1331873106302668610

/-! ## A289212.P15531818354363154140

`A000142(n)/A160608(n)*A160607(n)`
-/

namespace A289212.P15531818354363154140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160608 n : ℚ) * (A160607 n : ℚ)

end

end A289212.P15531818354363154140

/-!
# A289213: a(n) = n! * Laguerre(n,-7).

The programs for A289213, there is no canonical definition to state claims against.
-/

/-! ## A289213.P253837198916308919

`A289192(eq[7, A025581(n)])`
-/

namespace A289213.P253837198916308919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289213.P253837198916308919

/-! ## A289213.P7276157595207917631

`A289192(eq[7, A195664(n)])`
-/

namespace A289213.P7276157595207917631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289213.P7276157595207917631

/-! ## A289213.P12801116243296540958

`A289192(eq[8, A193739(n)])`
-/

namespace A289213.P12801116243296540958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289213.P12801116243296540958

/-! ## A289213.P2700119264797478075

`A289192(eq[15, A099375(n)])`
-/

namespace A289213.P2700119264797478075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289213.P2700119264797478075

/-! ## A289213.P14993625814753592282

`A289192(eq[8, A004736(n+1)])`
-/

namespace A289213.P14993625814753592282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289213.P14993625814753592282

/-! ## A289213.P3743706540724162665

`A289192(A000124(n+7)+n-1)`
-/

namespace A289213.P3743706540724162665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A289213.P3743706540724162665

/-! ## A289213.P16114792133560407815

`A000142(n)/A160606(n)*A160605(n)`
-/

namespace A289213.P16114792133560407815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160606 n : ℚ) * (A160605 n : ℚ)

end

end A289213.P16114792133560407815

/-!
# A289214: a(n) = n! * Laguerre(n,-8).

The programs for A289214, there is no canonical definition to state claims against.
-/

/-! ## A289214.P5150349988678319738

`n!*A160603(n)/A160604(n)`
-/

namespace A289214.P5150349988678319738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160603 n : ℚ) / (A160604 n : ℚ)

end

end A289214.P5150349988678319738

/-! ## A289214.P16837954175951442896

`A289192(eq[8, A025581(n)])`
-/

namespace A289214.P16837954175951442896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289214.P16837954175951442896

/-! ## A289214.P6212195494611350495

`A289192(eq[9, A193739(n)])`
-/

namespace A289214.P6212195494611350495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289214.P6212195494611350495

/-! ## A289214.P12594083789824762254

`A289192(eq[9, A195663(n)])`
-/

namespace A289214.P12594083789824762254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289214.P12594083789824762254

/-! ## A289214.P2733795539248553770

`A289192(eq[17, A099375(n)])`
-/

namespace A289214.P2733795539248553770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289214.P2733795539248553770

/-! ## A289214.P3648404551901614393

`A289192(eq[9, A004736(n+1)])`
-/

namespace A289214.P3648404551901614393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289214.P3648404551901614393

/-! ## A289214.P3985028771902048126

`A000142(n)/A160604(n)*A160603(n)`
-/

namespace A289214.P3985028771902048126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160604 n : ℚ) * (A160603 n : ℚ)

end

end A289214.P3985028771902048126

/-!
# A289215: a(n) = n! * Laguerre(n,-9).

The programs for A289215, there is no canonical definition to state claims against.
-/

/-! ## A289215.P4152905032068111497

`n!*A160601(n)/A160602(n)`
-/

namespace A289215.P4152905032068111497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160601 n : ℚ) / (A160602 n : ℚ)

end

end A289215.P4152905032068111497

/-! ## A289215.P796306199026248329

`A000142(n)/A160602(n)*A160601(n)`
-/

namespace A289215.P796306199026248329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160602 n : ℚ) * (A160601 n : ℚ)

end

end A289215.P796306199026248329

/-! ## A289215.P11166799249136326086

`A289192(eq[9, A025581(n)])`
-/

namespace A289215.P11166799249136326086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289215.P11166799249136326086

/-! ## A289215.P244756612899888331

`A289192(eq[10, A195663(n)])`
-/

namespace A289215.P244756612899888331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289215.P244756612899888331

/-! ## A289215.P6085390461561971484

`A289192(eq[19, A099375(n)])`
-/

namespace A289215.P6085390461561971484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289215.P6085390461561971484

/-! ## A289215.P13708222826619577499

`A289192(eq[10, A004736(n+1)])`
-/

namespace A289215.P13708222826619577499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289215.P13708222826619577499

/-!
# A289216: a(n) = n! * Laguerre(n,-10).

The programs for A289216, there is no canonical definition to state claims against.
-/

/-! ## A289216.P1307359895911238614

`n!*A160587(n)/A160589(n)`
-/

namespace A289216.P1307359895911238614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160587 n : ℚ) / (A160589 n : ℚ)

end

end A289216.P1307359895911238614

/-! ## A289216.P8019435184172180899

`A000142(n)/A160589(n)*A160587(n)`
-/

namespace A289216.P8019435184172180899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160589 n : ℚ) * (A160587 n : ℚ)

end

end A289216.P8019435184172180899

/-! ## A289216.P17246181263840632576

`A289192(eq[10, A025581(n)])`
-/

namespace A289216.P17246181263840632576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289216.P17246181263840632576

/-! ## A289216.P11800949744562725632

`A289192(eq[11, A195663(n)])`
-/

namespace A289216.P11800949744562725632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289216.P11800949744562725632

/-! ## A289216.P11734202040367621752

`A289192(eq[21, A099375(n)])`
-/

namespace A289216.P11734202040367621752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289216.P11734202040367621752

/-! ## A289216.P5067907576759130549

`A289192(eq[11, A004736(n+1)])`
-/

namespace A289216.P5067907576759130549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289216.P5067907576759130549

/-!
# A289217: a(1)=1, a(n)=a(n-1) plus the second prime greater than a(n-1).

The programs for A289217, there is no canonical definition to state claims against.
-/

/-! ## A289217.P6434036489019485162

`A151800(A151800(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A289217.P6434036489019485162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A151800 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A289217.P6434036489019485162

/-! ## A289217.P18416201089202384535

`A101300(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A289217.P18416201089202384535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101300 (a (n - 1)).toNat + a (n - 1)

end

end A289217.P18416201089202384535

/-! ## A289217.P9467172624091946028

`A159477(A159477(a(n-1)+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A289217.P9467172624091946028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159477 (A159477 (a (n - 1) + 1).toNat + 1).toNat + a (n - 1)

end

end A289217.P9467172624091946028

/-!
# A289218: Areas of integer-sided triangles whose area equals twice their perimeter.

The programs for A289218, there is no canonical definition to state claims against.
-/

/-! ## A289218.P8385722139396882690

`A290451(n+6)`
-/

namespace A289218.P8385722139396882690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (n + 6)

end

end A289218.P8385722139396882690

/-! ## A289218.P7182259223732570656

`record[A290451(A020715(n))]`
-/

namespace A289218.P7182259223732570656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289218.P7182259223732570656

/-! ## A289218.P4970005499149224048

`record[4*A332922(A004736(n+1))]`
-/

namespace A289218.P4970005499149224048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332922 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289218.P4970005499149224048

/-! ## A289218.P9298198052523763818

`record[4*A332922(A056538(n+1))]`
-/

namespace A289218.P9298198052523763818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332922 (A056538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289218.P9298198052523763818

/-! ## A289218.P7216439641455502648

`A290451(A020715(n))-A185284(n)`
-/

namespace A289218.P7216439641455502648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (A020715 n).toNat - A185284 n

end

end A289218.P7216439641455502648

/-!
# A289219: Areas of integer-sided triangles whose area equals 3 times their perimeter.

The programs for A289219, there is no canonical definition to state claims against.
-/

/-! ## A289219.P10820790682882402380

`A290451(n+23)`
-/

namespace A289219.P10820790682882402380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (n + 23)

end

end A289219.P10820790682882402380

/-! ## A289219.P13315312490266416066

`record[6*A332923(A056538(n+1))]`
-/

namespace A289219.P13315312490266416066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A332923 (A056538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289219.P13315312490266416066

/-! ## A289219.P15359823462830321620

`record[6*A332923(A327666(n+1))]`
-/

namespace A289219.P15359823462830321620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A332923 (A327666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289219.P15359823462830321620

/-! ## A289219.P12352922640618404647

`record[6*A332923(A342165(n+1))]`
-/

namespace A289219.P12352922640618404647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A332923 (A342165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289219.P12352922640618404647

/-! ## A289219.P12315771460207441005

`A008458(record[A332923(A004736(n+1))])`
-/

namespace A289219.P12315771460207441005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332923 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289219.P12315771460207441005

/-!
# A289220: Areas of integer-sided triangles whose area equals 4 times their perimeter.

The programs for A289220, there is no canonical definition to state claims against.
-/

/-! ## A289220.P8658607185442687545

`A290451(n+64)`
-/

namespace A289220.P8658607185442687545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290451 (n + 64)

end

end A289220.P8658607185442687545

/-! ## A289220.P7035443337795478698

`A000027(A290451(or(64, n)))`
-/

namespace A289220.P7035443337795478698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290451 (Nat.lor 64 n)).toNat

end

end A289220.P7035443337795478698

/-! ## A289220.P381402796646630067

`A000027(A290451(xor(64, n)))`
-/

namespace A289220.P381402796646630067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290451 (Nat.xor 64 n)).toNat

end

end A289220.P381402796646630067

/-!
# A289223: Number of ways to select 2 disjoint point triples from an n X n X n triangular point grid, each point triple forming an 2 X 2 X 2 triangle.

The programs for A289223, the canonical program `A289223.P4409947525289146155` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289223 has offset 2).

The definition of A289223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289223.P4409947525289146155

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=12, a(3)=66, a(4)=204`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289223

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4409947525289146155.Spec : Prop :=
  ∀ n, P4409947525289146155.a n = A289223 (n + 2)

theorem P4409947525289146155.correct : P4409947525289146155.Spec := by
  intro n
  simp only [A289223, Nat.add_sub_cancel]

end A289223

/-! ## A289223.P2752453405933041862

`6*A328152(n+1)`
-/

namespace A289223.P2752453405933041862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A328152 (n + 1)

end

end A289223.P2752453405933041862

namespace A289223

/-- `6*A328152(n+1)` -/
def P2752453405933041862.Spec : Prop :=
  ∀ n, P2752453405933041862.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P4430023752740886224

`6*(∑[∑[n²]]-n²)`
-/

namespace A289223.P4430023752740886224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ))

end

end A289223.P4430023752740886224

namespace A289223

/-- `6*(∑[∑[n²]]-n²)` -/
def P4430023752740886224.Spec : Prop :=
  ∀ n, P4430023752740886224.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P3869143927467996186

`C((n+1)², 2)-6*n²`
-/

namespace A289223.P3869143927467996186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - (6 * n ^ 2 : ℤ)

end

end A289223.P3869143927467996186

namespace A289223

/-- `C((n+1)², 2)-6*n²` -/
def P3869143927467996186.Spec : Prop :=
  ∀ n, P3869143927467996186.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P15567129261274045643

`abs((n-n²)*A046691(n))`
-/

namespace A289223.P15567129261274045643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - (n ^ 2 : ℤ)) * A046691 n|

end

end A289223.P15567129261274045643

namespace A289223

/-- `abs((n-n²)*A046691(n))` -/
def P15567129261274045643.Spec : Prop :=
  ∀ n, P15567129261274045643.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P3236797720104203140

`A201243(n+1)-(2*n)²`
-/

namespace A289223.P3236797720104203140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201243 (n + 1) - ((2 * n) ^ 2 : ℤ)

end

end A289223.P3236797720104203140

namespace A289223

/-- `A201243(n+1)-(2*n)²` -/
def P3236797720104203140.Spec : Prop :=
  ∀ n, P3236797720104203140.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P2714660683238632964

`A172225(n+1)-n*record[lcm(2, n)]`
-/

namespace A289223.P2714660683238632964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) - (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A289223.P2714660683238632964

namespace A289223

/-- `A172225(n+1)-n*record[lcm(2, n)]` -/
def P2714660683238632964.Spec : Prop :=
  ∀ n, P2714660683238632964.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P4829476505397021037

`A172132(n+1)-(n+2)*2*n`
-/

namespace A289223.P4829476505397021037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (n + 1) - ((n + 2) * (2 * n) : ℤ)

end

end A289223.P4829476505397021037

namespace A289223

/-- `A172132(n+1)-(n+2)*2*n` -/
def P4829476505397021037.Spec : Prop :=
  ∀ n, P4829476505397021037.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P5161021906046292841

`A101374(n)+A015238(n)`
-/

namespace A289223.P5161021906046292841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 n + A015238 n

end

end A289223.P5161021906046292841

namespace A289223

/-- `A101374(n)+A015238(n)` -/
def P5161021906046292841.Spec : Prop :=
  ∀ n, P5161021906046292841.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P7308874137167695528

`∑[A055112(n)]-A033581(n)`
-/

namespace A289223.P7308874137167695528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033581 n

end

end A289223.P7308874137167695528

namespace A289223

/-- `∑[A055112(n)]-A033581(n)` -/
def P7308874137167695528.Spec : Prop :=
  ∀ n, P7308874137167695528.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P13946096281976420545

`A083374(n+1)-A033581(n)`
-/

namespace A289223.P13946096281976420545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - A033581 n

end

end A289223.P13946096281976420545

namespace A289223

/-- `A083374(n+1)-A033581(n)` -/
def P13946096281976420545.Spec : Prop :=
  ∀ n, P13946096281976420545.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P14743687720901234749

`A172225(n+1)-A002939(n)`
-/

namespace A289223.P14743687720901234749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) - A002939 n

end

end A289223.P14743687720901234749

namespace A289223

/-- `A172225(n+1)-A002939(n)` -/
def P14743687720901234749.Spec : Prop :=
  ∀ n, P14743687720901234749.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P12452821068751021572

`∑[6*(A000330(n)-A004273(n))]`
-/

namespace A289223.P12452821068751021572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000330 n - A004273 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289223.P12452821068751021572

namespace A289223

/-- `∑[6*(A000330(n)-A004273(n))]` -/
def P12452821068751021572.Spec : Prop :=
  ∀ n, P12452821068751021572.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P16064219252015491796

`A045991(n)+A212134(n)-n²`
-/

namespace A289223.P16064219252015491796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + (A212134 n - (n ^ 2 : ℤ))

end

end A289223.P16064219252015491796

namespace A289223

/-- `A045991(n)+A212134(n)-n²` -/
def P16064219252015491796.Spec : Prop :=
  ∀ n, P16064219252015491796.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P13746880764285291430

`∑[A274973(n)]-(A274973(n)+n)`
-/

namespace A289223.P13746880764285291430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A274973 n + (n : ℤ))

end

end A289223.P13746880764285291430

namespace A289223

/-- `∑[A274973(n)]-(A274973(n)+n)` -/
def P13746880764285291430.Spec : Prop :=
  ∀ n, P13746880764285291430.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P2045321115171078063

`A002061(n)*A046691(n)-A046691(n)`
-/

namespace A289223.P2045321115171078063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A046691 n - A046691 n

end

end A289223.P2045321115171078063

namespace A289223

/-- `A002061(n)*A046691(n)-A046691(n)` -/
def P2045321115171078063.Spec : Prop :=
  ∀ n, P2045321115171078063.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P16867511517910139242

`∑[∑[A032528(2*n)]]-A032528(2*n)`
-/

namespace A289223.P16867511517910139242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A032528 (2 * n)

end

end A289223.P16867511517910139242

namespace A289223

/-- `∑[∑[A032528(2*n)]]-A032528(2*n)` -/
def P16867511517910139242.Spec : Prop :=
  ∀ n, P16867511517910139242.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P10407799723574861243

`∑[∑[A354594(2*n)]]-A354594(2*n)`
-/

namespace A289223.P10407799723574861243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A354594 (2 * n)

end

end A289223.P10407799723574861243

namespace A289223

/-- `∑[∑[A354594(2*n)]]-A354594(2*n)` -/
def P10407799723574861243.Spec : Prop :=
  ∀ n, P10407799723574861243.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P10420520174155362235

`A011886(2*n)+∑[A011886(2*n)]`
-/

namespace A289223.P10420520174155362235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289223.P10420520174155362235

namespace A289223

/-- `A011886(2*n)+∑[A011886(2*n)]` -/
def P10420520174155362235.Spec : Prop :=
  ∀ n, P10420520174155362235.a n = A289223 (n + 2)

end A289223

/-! ## A289223.P7982913561003864254

`∑[∑[A249127(2*n)]]-A249127(2*n)`
-/

namespace A289223.P7982913561003864254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249127 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A249127 (2 * n)

end

end A289223.P7982913561003864254

namespace A289223

/-- `∑[∑[A249127(2*n)]]-A249127(2*n)` -/
def P7982913561003864254.Spec : Prop :=
  ∀ n, P7982913561003864254.a n = A289223 (n + 2)

end A289223

/-!
# A289230: Number of nonequivalent ways to select 3 disjoint point triples from an n X n X n triangular point grid, each point triple forming a 2 X 2 X 2 triangle.

The programs for A289230, there is no canonical definition to state claims against.
-/

/-! ## A289230.P7968094134619012658

`A081515(A081489(n+1))-A081435(n)`
-/

namespace A289230.P7968094134619012658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081515 (A081489 (n + 1)).toNat - A081435 n

end

end A289230.P7968094134619012658

/-!
# A289233: Largest number of disjoint point triples that can be chosen from an n X n X n triangular point grid, each point triple forming a 2 X 2 X 2 triangle.

The programs for A289233, the canonical program `A289233.P11314682189419640331` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289233 has offset 1).

The definition of A289233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289233.P11314682189419640331

`∑[A008611(n)]-A011655(A008624(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289233

/-- `∑[A008611(n)]-A011655(A008624(n))` -/
def P11314682189419640331.Spec : Prop :=
  ∀ n, P11314682189419640331.a n = A289233 (n + 1)

theorem P11314682189419640331.correct : P11314682189419640331.Spec := by
  intro n
  simp only [A289233, Nat.add_sub_cancel]

end A289233

/-! ## A289233.P9391520657792220461

`A001840(n)-and(A008615(n), A011655(n))`
-/

namespace A289233.P9391520657792220461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n - Int.land (A008615 n) (A011655 n)

end

end A289233.P9391520657792220461

namespace A289233

/-- `A001840(n)-and(A008615(n), A011655(n))` -/
def P9391520657792220461.Spec : Prop :=
  ∀ n, P9391520657792220461.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P3628013069092879108

`A011865(n+1)+A011865(n+3)`
-/

namespace A289233.P3628013069092879108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 1) + A011865 (n + 3)

end

end A289233.P3628013069092879108

namespace A289233

/-- `A011865(n+1)+A011865(n+3)` -/
def P3628013069092879108.Spec : Prop :=
  ∀ n, P3628013069092879108.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P18140205517451090338

`∑[A314066(n+1)%(n+1)]`
-/

namespace A289233.P18140205517451090338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314066 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289233.P18140205517451090338

namespace A289233

/-- `∑[A314066(n+1)%(n+1)]` -/
def P18140205517451090338.Spec : Prop :=
  ∀ n, P18140205517451090338.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P834925379791251976

`A001840(n)-A000035(A000217(A087509(n)))`
-/

namespace A289233.P834925379791251976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n - A000035 (A000217 (A087509 n).toNat).toNat

end

end A289233.P834925379791251976

namespace A289233

/-- `A001840(n)-A000035(A000217(A087509(n)))` -/
def P834925379791251976.Spec : Prop :=
  ∀ n, P834925379791251976.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P3788688333393173355

`A008611(∑[n+1]-A131186(n))`
-/

namespace A289233.P3788688333393173355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A131186 n).toNat

end

end A289233.P3788688333393173355

namespace A289233

/-- `A008611(∑[n+1]-A131186(n))` -/
def P3788688333393173355.Spec : Prop :=
  ∀ n, P3788688333393173355.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P10242694867904915072

`A002264(∑[n+1]-A008615(n)%2)`
-/

namespace A289233.P10242694867904915072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A008615 n) 2).toNat

end

end A289233.P10242694867904915072

namespace A289233

/-- `A002264(∑[n+1]-A008615(n)%2)` -/
def P10242694867904915072.Spec : Prop :=
  ∀ n, P10242694867904915072.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P33005127256604317

`A002264(∑[n+1]-and(1, A008615(n)))`
-/

namespace A289233.P33005127256604317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.land 1 (A008615 n)).toNat

end

end A289233.P33005127256604317

namespace A289233

/-- `A002264(∑[n+1]-and(1, A008615(n)))` -/
def P33005127256604317.Spec : Prop :=
  ∀ n, P33005127256604317.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P2373990053422886164

`A002264(∑[n+1]-A002264(∑[n])%2)`
-/

namespace A289233.P2373990053422886164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A002264 (∑ j ∈ Finset.range (n + 1), f2 j)) 2).toNat

end

end A289233.P2373990053422886164

namespace A289233

/-- `A002264(∑[n+1]-A002264(∑[n])%2)` -/
def P2373990053422886164.Spec : Prop :=
  ∀ n, P2373990053422886164.a n = A289233 (n + 1)

end A289233

/-! ## A289233.P6290796796261789651

`A008615(A028387(n)-A131186(n))`
-/

namespace A289233.P6290796796261789651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A028387 n - A131186 n).toNat

end

end A289233.P6290796796261789651

namespace A289233

/-- `A008615(A028387(n)-A131186(n))` -/
def P6290796796261789651.Spec : Prop :=
  ∀ n, P6290796796261789651.a n = A289233 (n + 1)

end A289233

/-!
# A289234: In primorial base: a(n) is obtained by replacing each nonzero digit of n with its inverse (see Comments for precise definition).

The programs for A289234, there is no canonical definition to state claims against.
-/

/-! ## A289234.P2587351624332121666

`A372576(A346101(n))`
-/

namespace A289234.P2587351624332121666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A346101 n).toNat

end

end A289234.P2587351624332121666

/-!
# A289235: Fixed point of the mapping 00->0010, 01->100, 10->000, starting with 00.

The programs for A289235, there is no canonical definition to state claims against.
-/

/-! ## A289235.P8783756769793588823

`char[A289151(n+1)-1]`
-/

namespace A289235.P8783756769793588823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289151 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289235.P8783756769793588823

/-! ## A289235.P3527505579448617126

`char[comp[A289002(n+1)-1]]`
-/

namespace A289235.P3527505579448617126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289002 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289235.P3527505579448617126

/-! ## A289235.P6742049504780524562

`1-char[A289002(xor(1, n)+1)-1]`
-/

namespace A289235.P6742049504780524562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289002 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289235.P6742049504780524562

/-! ## A289235.P4990922106043710162

`1-char[A289002(Δ[n²]-n)-1]`
-/

namespace A289235.P4990922106043710162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289235.P4990922106043710162

/-! ## A289235.P11322370951423350151

`char[abs(A289151(A028310(n))-1)]`
-/

namespace A289235.P11322370951423350151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289151 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289235.P11322370951423350151

/-! ## A289235.P17057635565703268474

`char[record[A289151(A292266(n))-1]]`
-/

namespace A289235.P17057635565703268474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289151 (A292266 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289235.P17057635565703268474

/-! ## A289235.P1097641558335591262

`char[A317950(gcd(n, n+1))+A289151(n+1)]`
-/

namespace A289235.P1097641558335591262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A289151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289235.P1097641558335591262

/-! ## A289235.P532072743049059900

`A001971(1-Δ[char[A289002(n+1)]])`
-/

namespace A289235.P532072743049059900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A289235.P532072743049059900

/-! ## A289235.P9954346298858672342

`A161680(1-Δ[char[A289002(n+1)]])`
-/

namespace A289235.P9954346298858672342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A289235.P9954346298858672342

/-! ## A289235.P6753984357826867382

`A288307(-Δ[-comp[A289151(n+1)+n]])-1`
-/

namespace A289235.P6753984357826867382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289151 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (-(f1 (n + 1) - f1 n)).toNat - 1

end

end A289235.P6753984357826867382

/-!
# A289236: Square array a(p,q) read by antidiagonals: a(p,q) = the number of line segments that constitute the trajectory of a billiard ball on a pool table with dimensions p X q, before the ball reaches a corner.

The programs for A289236, there is no canonical definition to state claims against.
-/

/-! ## A289236.P16057181592235420257

`A106448(n+1)-1`
-/

namespace A289236.P16057181592235420257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106448 (n + 1) - 1

end

end A289236.P16057181592235420257

/-! ## A289236.P6356296577123486179

`A054531(comp[∑[n]])-1`
-/

namespace A289236.P6356296577123486179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A289236.P6356296577123486179

/-! ## A289236.P2527580234861834598

`A277227(comp[∑[n]]+1)-1`
-/

namespace A289236.P2527580234861834598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A289236.P2527580234861834598

/-! ## A289236.P15457228693586984141

`abs(1-A106448(Δ[n²]-n))`
-/

namespace A289236.P15457228693586984141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A106448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A289236.P15457228693586984141

/-! ## A289236.P6694912348418908842

`abs(1-A277227(comp[C(n, 2)]+1))`
-/

namespace A289236.P6694912348418908842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A277227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)|

end

end A289236.P6694912348418908842

/-! ## A289236.P2129359493499646654

`floor(∑[char[∑[n]]]/A003989(n+1))`
-/

namespace A289236.P2129359493499646654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A003989 (n + 1) : ℚ)⌋

end

end A289236.P2129359493499646654

/-! ## A289236.P11266678615223867115

`A000401(A106448(n+1))`
-/

namespace A289236.P11266678615223867115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A106448 (n + 1)).toNat

end

end A289236.P11266678615223867115

/-! ## A289236.P11656313766815228421

`A099246(A043569(n+1))-1`
-/

namespace A289236.P11656313766815228421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A043569 (n + 1)).toNat - 1

end

end A289236.P11656313766815228421

/-! ## A289236.P4895321403346194413

`A099246(A099628(n+1))-1`
-/

namespace A289236.P4895321403346194413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A099628 (n + 1)).toNat - 1

end

end A289236.P4895321403346194413

/-! ## A289236.P16686593600829383583

`A075119(A189151(n+1))-1`
-/

namespace A289236.P16686593600829383583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A189151 (n + 1)).toNat - 1

end

end A289236.P16686593600829383583

/-!
# A289237: Find the first (maximal) string, of length exactly n, of consecutive primes that alternate between types 6*k+1 and 6*k+5 or 6*k+5 and 6*k+1. The first element is a(n).

The programs for A289237, there is no canonical definition to state claims against.
-/

/-! ## A289237.P2774256307484717666

`A007513(A163606(n+1))`
-/

namespace A289237.P2774256307484717666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007513 (A163606 (n + 1)).toNat

end

end A289237.P2774256307484717666

/-!
# A289238: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A289238, there is no canonical definition to state claims against.
-/

/-! ## A289238.P8044012065291534666

`A007088(A290520(n))`
-/

namespace A289238.P8044012065291534666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290520 n).toNat

end

end A289238.P8044012065291534666

/-! ## A289238.P15679391811101591887

`A305989(A290519(n))`
-/

namespace A289238.P15679391811101591887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290519 n).toNat

end

end A289238.P15679391811101591887

/-! ## A289238.P5608651471498731331

`A185544(2*A290520(n))`
-/

namespace A289238.P5608651471498731331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290520 n).toNat

end

end A289238.P5608651471498731331

/-! ## A289238.P5900983376131798117

`A185544(lcm(2, A290520(n)))`
-/

namespace A289238.P5900983376131798117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290520 n))

end

end A289238.P5900983376131798117

/-!
# A289239: Fixed point of the mapping 00->0010, 01->100, 10->010, starting with 00.

The programs for A289239, there is no canonical definition to state claims against.
-/

/-! ## A289239.P8181129307059481821

`char[A289241(n+1)-1]`
-/

namespace A289239.P8181129307059481821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289239.P8181129307059481821

/-! ## A289239.P12870503755899735835

`A289011(n+1-3%(n+1))`
-/

namespace A289239.P12870503755899735835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (n + 1 - 3 % (n + 1))

end

end A289239.P12870503755899735835

/-! ## A289239.P8111415954889402731

`char[(n+1)*A289011(n+1)+2]`
-/

namespace A289239.P8111415954889402731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A289011 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289239.P8111415954889402731

/-! ## A289239.P15554486830511790695

`char[A023443(A289241(n+1))]`
-/

namespace A289239.P15554486830511790695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289241 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289239.P15554486830511790695

/-!
# A289240: Positions of 0 in A289239; complement of A289241.

The programs for A289240, there is no canonical definition to state claims against.
-/

/-! ## A289240.P961299665028641721

`comp[A289241(n+1)-1]+1`
-/

namespace A289240.P961299665028641721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289240.P961299665028641721

/-! ## A289240.P2767556340170815578

`lt[A289239(n+1), 1]+1`
-/

namespace A289240.P2767556340170815578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289240.P2767556340170815578

/-! ## A289240.P6999991464763069754

`a(n-1)+A289239(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289240.P6999991464763069754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289239 (a (n - 1) + 1).toNat + 1)

end

end A289240.P6999991464763069754

/-! ## A289240.P8008656805862576144

`lt[n*A289239(A028310(n)), n]`
-/

namespace A289240.P8008656805862576144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289239 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289240.P8008656805862576144

/-! ## A289240.P4244982355791946979

`record[n+1-A261095(n)*A289239(n+1)]`
-/

namespace A289240.P4244982355791946979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A261095 n * A289239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289240.P4244982355791946979

/-! ## A289240.P4101148918871329438

`record[n+1-A006530(n+1)*A289239(n+1)]`
-/

namespace A289240.P4101148918871329438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A289239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289240.P4101148918871329438

/-! ## A289240.P3819389419459091612

`record[n+1-A164844(n)*A289239(n+1)]`
-/

namespace A289240.P3819389419459091612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A164844 n * A289239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289240.P3819389419459091612

/-!
# A289241: Positions of 1 in A289239; complement of A289240.

The programs for A289241, there is no canonical definition to state claims against.
-/

/-! ## A289241.P9972142081436404737

`filter[n+1, A289239(#)]`
-/

namespace A289241.P9972142081436404737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289239 (f1 j) = 1) n)

end

end A289241.P9972142081436404737

/-! ## A289241.P13435401349498525067

`eq[1, A289239(n+1)]+1`
-/

namespace A289241.P13435401349498525067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289241.P13435401349498525067

/-! ## A289241.P4578423176039771514

`lt[0, A289239(n+2)]+2`
-/

namespace A289241.P4578423176039771514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A289241.P4578423176039771514

/-! ## A289241.P14184214441756717493

`record[(n+3)*A289239(n+3)]`
-/

namespace A289241.P14184214441756717493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289239 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289241.P14184214441756717493

/-! ## A289241.P13090092838568132037

`lt[0, A289239(A028310(n))]`
-/

namespace A289241.P13090092838568132037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289241.P13090092838568132037

/-! ## A289241.P7660380340366168412

`eq[1, A289239(A065033(2*n))]`
-/

namespace A289241.P7660380340366168412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289241.P7660380340366168412

/-! ## A289241.P15889619533835236477

`eq[1, A289239(A233583(n+1))]`
-/

namespace A289241.P15889619533835236477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289241.P15889619533835236477

/-!
# A289242: Fixed point of the mapping 00->0010, 01->100, 10->100, starting with 00.

The programs for A289242, there is no canonical definition to state claims against.
-/

/-! ## A289242.P3791818813373194827

`char[A289244(n+1)-1]`
-/

namespace A289242.P3791818813373194827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289244 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289242.P3791818813373194827

/-! ## A289242.P17199744163430440419

`char[comp[A289243(n+1)-1]]`
-/

namespace A289242.P17199744163430440419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289243 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289242.P17199744163430440419

/-! ## A289242.P3192216882588911040

`char[comp[A289243(Δ[n²]-n)]-1]`
-/

namespace A289242.P3192216882588911040
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289243 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289242.P3192216882588911040

/-! ## A289242.P12848214826322150036

`1-char[A289243(xor(1, n)+1)-1]`
-/

namespace A289242.P12848214826322150036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289243 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289242.P12848214826322150036

/-! ## A289242.P8520363272570223784

`1-char[A289243(abs(abs(2-n)-1)+1)-1]`
-/

namespace A289242.P8520363272570223784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289243 (|(|2 - (n : ℤ)| - 1)| + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289242.P8520363272570223784

/-! ## A289242.P12878468732705688682

`char[A023443(A289244(n+1))]`
-/

namespace A289242.P12878468732705688682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289244 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289242.P12878468732705688682

/-!
# A289243: Positions of 0 in A289242; complement of A289244.

The programs for A289243, there is no canonical definition to state claims against.
-/

/-! ## A289243.P7023880293309711969

`comp[A289244(n+1)-1]+1`
-/

namespace A289243.P7023880293309711969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289244 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289243.P7023880293309711969

/-! ## A289243.P16317235520281670747

`eq[0, A289242(n+1)]+1`
-/

namespace A289243.P16317235520281670747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289243.P16317235520281670747

/-! ## A289243.P7671985444875846201

`a(n-1)+A289242(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289243.P7671985444875846201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289242 (a (n - 1) + 1).toNat + 1)

end

end A289243.P7671985444875846201

/-! ## A289243.P12920213125414933289

`record[A038722(A038722(n+1)-A289242(n+1))]`
-/

namespace A289243.P12920213125414933289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1) - A289242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289243.P12920213125414933289

/-! ## A289243.P13369339353256372730

`record[A289242(A054576(n+1))+A054576(n+1)]`
-/

namespace A289243.P13369339353256372730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A054576 (n + 1)).toNat + A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289243.P13369339353256372730

/-! ## A289243.P10154151055555240683

`record[A289242(A003963(n+1))+A003963(n+1)]`
-/

namespace A289243.P10154151055555240683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A003963 (n + 1)).toNat + A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289243.P10154151055555240683

/-! ## A289243.P11296149273639713481

`record[A289242(A138528(n+1))+A138528(n+1)]`
-/

namespace A289243.P11296149273639713481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A138528 (n + 1)).toNat + A138528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289243.P11296149273639713481

/-! ## A289243.P2170909553923410949

`record[A289242(A023190(n+1))+A023190(n+1)]`
-/

namespace A289243.P2170909553923410949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A023190 (n + 1)).toNat + A023190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289243.P2170909553923410949

/-!
# A289244: Positions of 1 in A289242; complement of A289243.

The programs for A289244, there is no canonical definition to state claims against.
-/

/-! ## A289244.P14985932341369595210

`A011655(3*n+2)+comp[A289243(n+1)-1]`
-/

namespace A289244.P14985932341369595210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289243 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A289244.P14985932341369595210

/-! ## A289244.P9810272979845808254

`filter[n+1, A289242(#)]`
-/

namespace A289244.P9810272979845808254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289242 (f1 j) = 1) n)

end

end A289244.P9810272979845808254

/-! ## A289244.P6055644630724812719

`lt[0, A289242(n+1)]+1`
-/

namespace A289244.P6055644630724812719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289244.P6055644630724812719

/-! ## A289244.P2029632646917880558

`eq[1, A289242(n^floor(atan(n)))]`
-/

namespace A289244.P2029632646917880558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289244.P2029632646917880558

/-! ## A289244.P11664312640493564874

`record[(n+3)*A289242(n+3)]`
-/

namespace A289244.P11664312640493564874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289242 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289244.P11664312640493564874

/-! ## A289244.P6144684224082378483

`A009056(eq[1, A289242(n+2)])`
-/

namespace A289244.P6144684224082378483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289244.P6144684224082378483

/-! ## A289244.P5664820512558674054

`eq[1, A289242(gcd(n, A008486(n)))]`
-/

namespace A289244.P5664820512558674054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289244.P5664820512558674054

/-! ## A289244.P6261095943958682376

`eq[1, A289242(A233583(n+1))]`
-/

namespace A289244.P6261095943958682376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289242 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289244.P6261095943958682376

/-!
# A289245: Coefficients of 1/(Sum_{k>=0} [-1 + (k+1)*r](-x)^k), where r = (3 + sqrt(5))/2 = 1 + golden ratio and [ ] = floor.

The programs for A289245, there is no canonical definition to state claims against.
-/

/-! ## A289245.P16637009981155261499

`A100196(∑[xor(2^n-1, Δ[(2^n+4^n)/2])])`
-/

namespace A289245.P16637009981155261499
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 4 ^ n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 1) (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289245.P16637009981155261499

/-! ## A289245.P17067192755697824178

`A062108(A111566(n)+1)`
-/

namespace A289245.P17067192755697824178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A111566 n + 1).toNat

end

end A289245.P17067192755697824178

/-! ## A289245.P1095859082416955391

`A194640(A018021(n+1))`
-/

namespace A289245.P1095859082416955391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A018021 (n + 1)).toNat

end

end A289245.P1095859082416955391

/-!
# A289246: Coefficients in the expansion of 1/Sum_{k >= 0} ([r*(k + 1)] + [s*(k + 1)]) * (-x)^k, where [ ] = floor, r = (1+sqrt(5))/2, s = 1/r.

The programs for A289246, there is no canonical definition to state claims against.
-/

/-! ## A289246.P3949513515914973709

`A002265(A071101(n))`
-/

namespace A289246.P3949513515914973709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A071101 n).toNat

end

end A289246.P3949513515914973709

/-! ## A289246.P2977488755455243760

`A173711(A071101(n)+1)`
-/

namespace A289246.P2977488755455243760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A071101 n + 1).toNat

end

end A289246.P2977488755455243760

/-! ## A289246.P12699448764247415478

`A110655(A071101(n)-2)`
-/

namespace A289246.P12699448764247415478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A071101 n - 2).toNat

end

end A289246.P12699448764247415478

/-! ## A289246.P10623347065967449181

`A008621(A071101(n)-3)`
-/

namespace A289246.P10623347065967449181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A071101 n - 3).toNat

end

end A289246.P10623347065967449181

/-!
# A289249: Number of compositions of n if only the order of parts 1 and 2 matters.

The programs for A289249, there is no canonical definition to state claims against.
-/

/-! ## A289249.P7507179126309569131

`a(n-1)+A008483(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A289249.P7507179126309569131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A008483 n + a (n - 2))

end

end A289249.P7507179126309569131

/-! ## A289249.P10133550101666641147

`A026819(A028304(n)+A018007(n))`
-/

namespace A289249.P10133550101666641147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A028304 n + A018007 n).toNat

end

end A289249.P10133550101666641147

/-! ## A289249.P17862237155008181684

`A046155(A028304(n)+A018007(n))`
-/

namespace A289249.P17862237155008181684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A028304 n + A018007 n).toNat

end

end A289249.P17862237155008181684

/-! ## A289249.P1755692348105406422

`A026819(A032089(n+1)+A018007(n))`
-/

namespace A289249.P1755692348105406422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A032089 (n + 1) + A018007 n).toNat

end

end A289249.P1755692348105406422

/-! ## A289249.P10039484490000539344

`A026819(A032089(n+1)+A018008(n))`
-/

namespace A289249.P10039484490000539344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A032089 (n + 1) + A018008 n).toNat

end

end A289249.P10039484490000539344

/-!
# A289250: Primes p such that p + 4 is a semiprime.

The programs for A289250, the canonical program `A289250.P3667689747352363938` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289250 has offset 1).

The definition of A289250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289250.P3667689747352363938

`p?[A001358(n+1)-4]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A289250

/-- `p?[A001358(n+1)-4]` -/
def P3667689747352363938.Spec : Prop :=
  ∀ n, P3667689747352363938.a n = A289250 (n + 1)

theorem P3667689747352363938.correct : P3667689747352363938.Spec := by
  intro n
  simp only [A289250, Nat.add_sub_cancel]

end A289250

/-! ## A289250.P11260595501266589658

`record[A020639(A001358(n+2)-4)]`
-/

namespace A289250.P11260595501266589658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001358 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289250.P11260595501266589658

namespace A289250

/-- `record[A020639(A001358(n+2)-4)]` -/
def P11260595501266589658.Spec : Prop :=
  ∀ n, P11260595501266589658.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P13775357191872679226

`p?[(n+1)*A316681(A001222(n+5)+1)]`
-/

namespace A289250.P13775357191872679226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316681 (A001222 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P13775357191872679226

namespace A289250

/-- `p?[(n+1)*A316681(A001222(n+5)+1)]` -/
def P13775357191872679226.Spec : Prop :=
  ∀ n, P13775357191872679226.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P11482387681130729150

`p?[∑[A065516(n+1)]]`
-/

namespace A289250.P11482387681130729150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P11482387681130729150

namespace A289250

/-- `p?[∑[A065516(n+1)]]` -/
def P11482387681130729150.Spec : Prop :=
  ∀ n, P11482387681130729150.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P10810690716621424384

`p?[A088707(n+1)-5]`
-/

namespace A289250.P10810690716621424384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P10810690716621424384

namespace A289250

/-- `p?[A088707(n+1)-5]` -/
def P10810690716621424384.Spec : Prop :=
  ∀ n, P10810690716621424384.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P816624358157940916

`record[A006530(∑[A065516(n+1)])]`
-/

namespace A289250.P816624358157940916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289250.P816624358157940916

namespace A289250

/-- `record[A006530(∑[A065516(n+1)])]` -/
def P816624358157940916.Spec : Prop :=
  ∀ n, P816624358157940916.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P3744300621415354893

`record[A020639(∑[A065516(n+1)])]`
-/

namespace A289250.P3744300621415354893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289250.P3744300621415354893

namespace A289250

/-- `record[A020639(∑[A065516(n+1)])]` -/
def P3744300621415354893.Spec : Prop :=
  ∀ n, P3744300621415354893.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P15280518411632282211

`p?[∑[A088707(n+2)%A088707(n+1)]]`
-/

namespace A289250.P15280518411632282211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088707 (n + 2)) (A088707 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P15280518411632282211

namespace A289250

/-- `p?[∑[A088707(n+2)%A088707(n+1)]]` -/
def P15280518411632282211.Spec : Prop :=
  ∀ n, P15280518411632282211.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P101987921326473723

`p?[(n-3)*A002620(A001222(n+1))]`
-/

namespace A289250.P101987921326473723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A002620 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P101987921326473723

namespace A289250

/-- `p?[(n-3)*A002620(A001222(n+1))]` -/
def P101987921326473723.Spec : Prop :=
  ∀ n, P101987921326473723.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P11856894533559888769

`p?[n*(1-A200927(n+4))]`
-/

namespace A289250.P11856894533559888769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A200927 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P11856894533559888769

namespace A289250

/-- `p?[n*(1-A200927(n+4))]` -/
def P11856894533559888769.Spec : Prop :=
  ∀ n, P11856894533559888769.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P2990297167801412657

`p?[2*n+1-A105700(2*n+1)²]`
-/

namespace A289250.P2990297167801412657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A105700 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289250.P2990297167801412657

namespace A289250

/-- `p?[2*n+1-A105700(2*n+1)²]` -/
def P2990297167801412657.Spec : Prop :=
  ∀ n, P2990297167801412657.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P11540992600729157401

`record[A014963(∑[A065516(n+1)])]`
-/

namespace A289250.P11540992600729157401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289250.P11540992600729157401

namespace A289250

/-- `record[A014963(∑[A065516(n+1)])]` -/
def P11540992600729157401.Spec : Prop :=
  ∀ n, P11540992600729157401.a n = A289250 (n + 1)

end A289250

/-! ## A289250.P9326690303000428603

`eq[A341702(n)²²², A200927(n+4)]`
-/

namespace A289250.P9326690303000428603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A341702 n ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200927 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289250.P9326690303000428603

namespace A289250

/-- `eq[A341702(n)²²², A200927(n+4)]` -/
def P9326690303000428603.Spec : Prop :=
  ∀ n, (P9326690303000428603.a n : ℤ) = A289250 (n + 1)

end A289250

/-!
# A289251: Triangle T(n, k), n > 0 and 0 <= k < n, read by rows; if gcd(n, k) = 1, then T(n, k) = modular inverse of k (mod n), otherwise T(n, k) = k.

The programs for A289251, there is no canonical definition to state claims against.
-/

/-! ## A289251.P17575615269407038522

`A058061(A249027(n+1))`
-/

namespace A289251.P17575615269407038522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A249027 (n + 1)).toNat

end

end A289251.P17575615269407038522

/-! ## A289251.P4972386915600437122

`A354582(A222060(n))+A326016(n+1)`
-/

namespace A289251.P4972386915600437122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A222060 n).toNat + A326016 (n + 1)

end

end A289251.P4972386915600437122

/-! ## A289251.P1461764207207265860

`xor(A002262(n), A369667(A341437(n+1)))`
-/

namespace A289251.P1461764207207265860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A369667 (A341437 (n + 1)).toNat)

end

end A289251.P1461764207207265860

/-! ## A289251.P17406240952471058891

`A178779(A235795(3*n+1))+A002262(n)`
-/

namespace A289251.P17406240952471058891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A235795 (3 * n + 1)).toNat + A002262 n

end

end A289251.P17406240952471058891

/-! ## A289251.P16934086318554478345

`A063962(A176080(n))`
-/

namespace A289251.P16934086318554478345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A176080 n).toNat

end

end A289251.P16934086318554478345

/-!
# A289254: a(n) = 4^n - 3*n - 1.

The programs for A289254, the canonical program `A289254.P7114167289169717308` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289254 has offset 1).

The definition of A289254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289254.P7114167289169717308

`∑[Δ[4^n]-3]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289254

/-- `∑[Δ[4^n]-3]` -/
def P7114167289169717308.Spec : Prop :=
  ∀ n, P7114167289169717308.a n = A289254 (n + 1)

theorem P7114167289169717308.correct : P7114167289169717308.Spec := by
  intro n
  simp only [A289254, Nat.add_sub_cancel]

end A289254

/-! ## A289254.P1015870288469936232

`4*a(n-1)+9*n` with `a(0)=0`
-/

namespace A289254.P1015870288469936232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + 9 * n

end

end A289254.P1015870288469936232

namespace A289254

/-- `4*a(n-1)+9*n` -/
def P1015870288469936232.Spec : Prop :=
  ∀ n, (P1015870288469936232.a n : ℤ) = A289254 (n + 1)

end A289254

/-! ## A289254.P14312081602131939940

`9*∑[record[round((-2)^n/3)]]`
-/

namespace A289254.P14312081602131939940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ n : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289254.P14312081602131939940

namespace A289254

/-- `9*∑[record[round((-2)^n/3)]]` -/
def P14312081602131939940.Spec : Prop :=
  ∀ n, P14312081602131939940.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P6197845796787195668

`∑[or(9, 4*a(n-1))]-2` with `a(0)=2`
-/

namespace A289254.P6197845796787195668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lor 9 (4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A289254.P6197845796787195668

namespace A289254

/-- `∑[or(9, 4*a(n-1))]-2` -/
def P6197845796787195668.Spec : Prop :=
  ∀ n, P6197845796787195668.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P6914254678165893640

`3*∑[∑[4*a(n-1)]]` with `a(0)=0, a(1)=3`
-/

namespace A289254.P6914254678165893640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289254.P6914254678165893640

namespace A289254

/-- `3*∑[∑[4*a(n-1)]]` -/
def P6914254678165893640.Spec : Prop :=
  ∀ n, (P6914254678165893640.a n : ℤ) = A289254 (n + 1)

end A289254

/-! ## A289254.P412497017938553747

`a(n-1)-3*(1-4^n)` with `a(0)=0`
-/

namespace A289254.P412497017938553747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - 3 * (1 - (4 ^ n : ℤ))

end

end A289254.P412497017938553747

namespace A289254

/-- `a(n-1)-3*(1-4^n)` -/
def P412497017938553747.Spec : Prop :=
  ∀ n, P412497017938553747.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P1899099378462524774

`3*A078904(n)`
-/

namespace A289254.P1899099378462524774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078904 n

end

end A289254.P1899099378462524774

namespace A289254

/-- `3*A078904(n)` -/
def P1899099378462524774.Spec : Prop :=
  ∀ n, P1899099378462524774.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P723621115242700369

`A175976(n+1)-2`
-/

namespace A289254.P723621115242700369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175976 (n + 1) - 2

end

end A289254.P723621115242700369

namespace A289254

/-- `A175976(n+1)-2` -/
def P723621115242700369.Spec : Prop :=
  ∀ n, P723621115242700369.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P6106988568374653469

`A107584(n+1)+n`
-/

namespace A289254.P6106988568374653469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107584 (n + 1) + (n : ℤ)

end

end A289254.P6106988568374653469

namespace A289254

/-- `A107584(n+1)+n` -/
def P6106988568374653469.Spec : Prop :=
  ∀ n, P6106988568374653469.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P1952150382841077996

`3*(A080674(n)-n)`
-/

namespace A289254.P1952150382841077996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A080674 n - (n : ℤ))

end

end A289254.P1952150382841077996

namespace A289254

/-- `3*(A080674(n)-n)` -/
def P1952150382841077996.Spec : Prop :=
  ∀ n, P1952150382841077996.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P10561703304008332075

`3*A178420(Δ[n²])`
-/

namespace A289254.P10561703304008332075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A178420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289254.P10561703304008332075

namespace A289254

/-- `3*A178420(Δ[n²])` -/
def P10561703304008332075.Spec : Prop :=
  ∀ n, P10561703304008332075.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P6641368963595364149

`A145654(Δ[n²])+n`
-/

namespace A289254.P6641368963595364149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A289254.P6641368963595364149

namespace A289254

/-- `A145654(Δ[n²])+n` -/
def P6641368963595364149.Spec : Prop :=
  ∀ n, P6641368963595364149.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P3925859523107933921

`∑[A068156(2*n)]-1`
-/

namespace A289254.P3925859523107933921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A289254.P3925859523107933921

namespace A289254

/-- `∑[A068156(2*n)]-1` -/
def P3925859523107933921.Spec : Prop :=
  ∀ n, P3925859523107933921.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P3916120522506857425

`9*∑[A001045(2*n)]`
-/

namespace A289254.P3916120522506857425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289254.P3916120522506857425

namespace A289254

/-- `9*∑[A001045(2*n)]` -/
def P3916120522506857425.Spec : Prop :=
  ∀ n, P3916120522506857425.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P1514426681311037369

`record[1-(A117902(n)+n)]`
-/

namespace A289254.P1514426681311037369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A117902 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289254.P1514426681311037369

namespace A289254

/-- `record[1-(A117902(n)+n)]` -/
def P1514426681311037369.Spec : Prop :=
  ∀ n, P1514426681311037369.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P4014129870018099878

`A289255(n+1)-(n+1)`
-/

namespace A289254.P4014129870018099878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289255 (n + 1) - (n + 1 : ℤ)

end

end A289254.P4014129870018099878

namespace A289254

/-- `A289255(n+1)-(n+1)` -/
def P4014129870018099878.Spec : Prop :=
  ∀ n, P4014129870018099878.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P15027714384922014015

`A100103(n+1)-(n+2)`
-/

namespace A289254.P15027714384922014015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100103 (n + 1) - (n + 2 : ℤ)

end

end A289254.P15027714384922014015

namespace A289254

/-- `A100103(n+1)-(n+2)` -/
def P15027714384922014015.Spec : Prop :=
  ∀ n, P15027714384922014015.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P11724986687358322811

`A005803(2*(n+1))+n`
-/

namespace A289254.P11724986687358322811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (2 * (n + 1)) + (n : ℤ)

end

end A289254.P11724986687358322811

namespace A289254

/-- `A005803(2*(n+1))+n` -/
def P11724986687358322811.Spec : Prop :=
  ∀ n, P11724986687358322811.a n = A289254 (n + 1)

end A289254

/-! ## A289254.P11699749474592655140

`A100102(n+1)-(n+3)`
-/

namespace A289254.P11699749474592655140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100102 (n + 1) - (n + 3 : ℤ)

end

end A289254.P11699749474592655140

namespace A289254

/-- `A100102(n+1)-(n+3)` -/
def P11699749474592655140.Spec : Prop :=
  ∀ n, P11699749474592655140.a n = A289254 (n + 1)

end A289254

/-!
# A289255: a(n) = 4^n - 2*n - 1.

The programs for A289255, the canonical program `A289255.P17028232858995640938` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289255 has offset 1).

The definition of A289255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289255.P17028232858995640938

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=11, a(2)=57`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289255

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P17028232858995640938.Spec : Prop :=
  ∀ n, P17028232858995640938.a n = A289255 (n + 1)

theorem P17028232858995640938.correct : P17028232858995640938.Spec := by
  intro n
  simp only [A289255, Nat.add_sub_cancel]

end A289255

/-! ## A289255.P11602420120611675695

`∑[Δ[4^n]-2]`
-/

namespace A289255.P11602420120611675695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289255.P11602420120611675695

namespace A289255

/-- `∑[Δ[4^n]-2]` -/
def P11602420120611675695.Spec : Prop :=
  ∀ n, P11602420120611675695.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P4503710223597028369

`record[2^and(n, n-1)-n]`
-/

namespace A289255.P4503710223597028369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.land (n : ℤ) ((n : ℤ) - 1) : ℤ) - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289255.P4503710223597028369

namespace A289255

/-- `record[2^and(n, n-1)-n]` -/
def P4503710223597028369.Spec : Prop :=
  ∀ n, P4503710223597028369.a n = (A289255 (n + 1) : ℚ)

end A289255

/-! ## A289255.P12307812499500526640

`floor(∑[4*a(n-1)+6])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A289255.P12307812499500526640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289255.P12307812499500526640

namespace A289255

/-- `floor(∑[4*a(n-1)+6])` -/
def P12307812499500526640.Spec : Prop :=
  ∀ n, (P12307812499500526640.a n : ℤ) = A289255 (n + 1)

end A289255

/-! ## A289255.P3499753260537412214

`record[(-2)^(n+2)-(n+3)]`
-/

namespace A289255.P3499753260537412214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289255.P3499753260537412214

namespace A289255

/-- `record[(-2)^(n+2)-(n+3)]` -/
def P3499753260537412214.Spec : Prop :=
  ∀ n, P3499753260537412214.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P6157773897152621448

`abs(∑[or(6, 4*a(n-1))])` with `a(0)=1, a(1)=10`
-/

namespace A289255.P6157773897152621448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  Nat.lor 6 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289255.P6157773897152621448

namespace A289255

/-- `abs(∑[or(6, 4*a(n-1))])` -/
def P6157773897152621448.Spec : Prop :=
  ∀ n, (P6157773897152621448.a n : ℤ) = A289255 (n + 1)

end A289255

/-! ## A289255.P4792466254596601286

`xor(2, ∑[3*4^n])-2*n`
-/

namespace A289255.P4792466254596601286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (2 * n : ℤ)

end

end A289255.P4792466254596601286

namespace A289255

/-- `xor(2, ∑[3*4^n])-2*n` -/
def P4792466254596601286.Spec : Prop :=
  ∀ n, P4792466254596601286.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P4446285148510396249

`4^(n+1)-record[xor(1, n+2)]`
-/

namespace A289255.P4446285148510396249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A289255.P4446285148510396249

namespace A289255

/-- `4^(n+1)-record[xor(1, n+2)]` -/
def P4446285148510396249.Spec : Prop :=
  ∀ n, P4446285148510396249.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P918420922086154243

`round(record[(-2)^(n-2)-(n-1)])`
-/

namespace A289255.P918420922086154243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A289255.P918420922086154243

namespace A289255

/-- `round(record[(-2)^(n-2)-(n-1)])` -/
def P918420922086154243.Spec : Prop :=
  ∀ n, P918420922086154243.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P16092051951959350629

`4^(n+1)-Δ[record[(n-1)²]]`
-/

namespace A289255.P16092051951959350629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (f1 (n + 1) - f1 n)

end

end A289255.P16092051951959350629

namespace A289255

/-- `4^(n+1)-Δ[record[(n-1)²]]` -/
def P16092051951959350629.Spec : Prop :=
  ∀ n, P16092051951959350629.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P13364554573062531077

`3*4^n+a(n-1)-2` with `a(0)=1`
-/

namespace A289255.P13364554573062531077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * 4 ^ n : ℤ) + (a (n - 1) - 2)

end

end A289255.P13364554573062531077

namespace A289255

/-- `3*4^n+a(n-1)-2` -/
def P13364554573062531077.Spec : Prop :=
  ∀ n, P13364554573062531077.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P5338262001245183387

`3*4^n-(2-a(n-1))` with `a(0)=1`
-/

namespace A289255.P5338262001245183387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * 4 ^ n : ℤ) - (2 - a (n - 1))

end

end A289255.P5338262001245183387

namespace A289255

/-- `3*4^n-(2-a(n-1))` -/
def P5338262001245183387.Spec : Prop :=
  ∀ n, P5338262001245183387.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P15195773435190114019

`∑[4*a(n-1)+3]-(n+1)` with `a(0)=2`
-/

namespace A289255.P15195773435190114019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A289255.P15195773435190114019

namespace A289255

/-- `∑[4*a(n-1)+3]-(n+1)` -/
def P15195773435190114019.Spec : Prop :=
  ∀ n, P15195773435190114019.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P2352930829052404133

`2*(2*(a(n-1)+n)+n)+1` with `a(0)=1`
-/

namespace A289255.P2352930829052404133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * (a (n - 1) + n) + n) + 1

end

end A289255.P2352930829052404133

namespace A289255

/-- `2*(2*(a(n-1)+n)+n)+1` -/
def P2352930829052404133.Spec : Prop :=
  ∀ n, (P2352930829052404133.a n : ℤ) = A289255 (n + 1)

end A289255

/-! ## A289255.P5961973905502738363

`A036295(Δ[n²])`
-/

namespace A289255.P5961973905502738363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289255.P5961973905502738363

namespace A289255

/-- `A036295(Δ[n²])` -/
def P5961973905502738363.Spec : Prop :=
  ∀ n, P5961973905502738363.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P995014397977670105

`A125128(Δ[n²])`
-/

namespace A289255.P995014397977670105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289255.P995014397977670105

namespace A289255

/-- `A125128(Δ[n²])` -/
def P995014397977670105.Spec : Prop :=
  ∀ n, P995014397977670105.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P17438460305463712270

`A100103(n+1)-1`
-/

namespace A289255.P17438460305463712270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100103 (n + 1) - 1

end

end A289255.P17438460305463712270

namespace A289255

/-- `A100103(n+1)-1` -/
def P17438460305463712270.Spec : Prop :=
  ∀ n, P17438460305463712270.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P8267999653667393122

`A100102(n+1)-2`
-/

namespace A289255.P8267999653667393122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100102 (n + 1) - 2

end

end A289255.P8267999653667393122

namespace A289255

/-- `A100102(n+1)-2` -/
def P8267999653667393122.Spec : Prop :=
  ∀ n, P8267999653667393122.a n = A289255 (n + 1)

end A289255

/-! ## A289255.P15358279627350610120

`A000295(2*(n+1))`
-/

namespace A289255.P15358279627350610120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (2 * (n + 1))

end

end A289255.P15358279627350610120

namespace A289255

/-- `A000295(2*(n+1))` -/
def P15358279627350610120.Spec : Prop :=
  ∀ n, P15358279627350610120.a n = A289255 (n + 1)

end A289255

/-!
# A289256: a(1) = a(2) = a(3) = 2; a(n) = a(n-a(n-1)) + a(n-a(n-3)-1) for n > 3.

The programs for A289256, the canonical program `A289256.P17840744404057104013` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289256 has offset 1).

The definition of A289256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-3)-1)` (program `A289256.P17840744404057104013`, by `A289256.P17840744404057104013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289256.P17840744404057104013

`a(n-a(n-1))+a(n-a(n-3)-1)` with `a(0)=2, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289256

/-- `a(n-a(n-1))+a(n-a(n-3)-1)` -/
def P17840744404057104013.Spec : Prop :=
  ∀ n, (P17840744404057104013.a n : ℤ) = A289256 (n + 1)

theorem P17840744404057104013.correct : P17840744404057104013.Spec := by
  intro n
  simp only [A289256, Nat.add_sub_cancel]

end A289256

/-! ## A289256.P4812891764018589686

`A287155(n+2)%Δ[A073720(n+1)]`
-/

namespace A289256.P4812891764018589686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287155 (n + 2)) (f1 (n + 1) - f1 n)

end

end A289256.P4812891764018589686

namespace A289256

/-- `A287155(n+2)%Δ[A073720(n+1)]` -/
def P4812891764018589686.Spec : Prop :=
  ∀ n, P4812891764018589686.a n = A289256 (n + 1)

end A289256

/-! ## A289256.P15722668085777369057

`A059841(A035597(n))*A287155(n+2)`
-/

namespace A289256.P15722668085777369057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A035597 n).toNat * A287155 (n + 2)

end

end A289256.P15722668085777369057

namespace A289256

/-- `A059841(A035597(n))*A287155(n+2)` -/
def P15722668085777369057.Spec : Prop :=
  ∀ n, P15722668085777369057.a n = A289256 (n + 1)

end A289256

/-! ## A289256.P9279722616482094568

`A287155(n+2)%A287173(A287135(n))`
-/

namespace A289256.P9279722616482094568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287155 (n + 2)) (A287173 (A287135 n).toNat)

end

end A289256.P9279722616482094568

namespace A289256

/-- `A287155(n+2)%A287173(A287135(n))` -/
def P9279722616482094568.Spec : Prop :=
  ∀ n, P9279722616482094568.a n = A289256 (n + 1)

end A289256

/-! ## A289256.P13834468588994260928

`A287155(n+2)+A000007(A059443(n+2))`
-/

namespace A289256.P13834468588994260928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287155 (n + 2) + A000007 (A059443 (n + 2)).toNat

end

end A289256.P13834468588994260928

namespace A289256

/-- `A287155(n+2)+A000007(A059443(n+2))` -/
def P13834468588994260928.Spec : Prop :=
  ∀ n, P13834468588994260928.a n = A289256 (n + 1)

end A289256

/-!
# A289257: Terms k of A006521 such that 2*k is a term of A124240.

The programs for A289257, there is no canonical definition to state claims against.
-/

/-! ## A289257.P5849044002542930597

`∩[A006521(n+1), A045588(n+1)]`
-/

namespace A289257.P5849044002542930597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289257.P5849044002542930597

/-! ## A289257.P16530763578879109608

`∩[A006521(n+1), A057239(n+1)]`
-/

namespace A289257.P16530763578879109608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289257.P16530763578879109608

/-! ## A289257.P12463352671912500944

`∩[A006521(n+1), A057493(n+1)]`
-/

namespace A289257.P12463352671912500944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289257.P12463352671912500944

/-! ## A289257.P9724662261869941215

`∩[A045588(n+1), A045599(n+1)]`
-/

namespace A289257.P9724662261869941215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289257.P9724662261869941215

/-! ## A289257.P9288479916566034553

`∩[A045599(n+1), A057239(n+1)]`
-/

namespace A289257.P9288479916566034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289257.P9288479916566034553

/-!
# A289258: Prime factors of numbers in A289257.

The programs for A289258, there is no canonical definition to state claims against.
-/

/-! ## A289258.P15726133697390209921

`A057719(∑[A341409(n+1)!])`
-/

namespace A289258.P15726133697390209921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A341409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289258.P15726133697390209921

/-! ## A289258.P15257629228706668816

`A057719(∑[∏{e}[A128123(n+1), #]])`
-/

namespace A289258.P15257629228706668816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128123 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289258.P15257629228706668816

/-!
# A289260: Coefficients in the expansion of 1/([r]-[2r]x+[3r]x^2-...); [ ]=floor, r=8/5.

The programs for A289260, the canonical program `A289260.P8475832702807769719` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289260 has offset 0).

The definition of A289260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289260.P8475832702807769719

`2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9, a(4)=17, a(5)=30, a(6)=52`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289260

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P8475832702807769719.Spec : Prop :=
  ∀ n, P8475832702807769719.a n = A289260 n

theorem P8475832702807769719.correct : P8475832702807769719.Spec := by
  intro n
  simp only [A289260]

end A289260

/-! ## A289260.P3011075132716659627

`abs(A279780(n))`
-/

namespace A289260.P3011075132716659627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279780 n|

end

end A289260.P3011075132716659627

namespace A289260

/-- `abs(A279780(n))` -/
def P3011075132716659627.Spec : Prop :=
  ∀ n, P3011075132716659627.a n = A289260 n

end A289260

/-! ## A289260.P16432439611838937236

`A033999(n)*A279780(n)`
-/

namespace A289260.P16432439611838937236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279780 n

end

end A289260.P16432439611838937236

namespace A289260

/-- `A033999(n)*A279780(n)` -/
def P16432439611838937236.Spec : Prop :=
  ∀ n, P16432439611838937236.a n = A289260 n

end A289260

/-! ## A289260.P2851095678055243335

`gcd(A000038(n), A279780(n))`
-/

namespace A289260.P2851095678055243335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279780 n)

end

end A289260.P2851095678055243335

namespace A289260

/-- `gcd(A000038(n), A279780(n))` -/
def P2851095678055243335.Spec : Prop :=
  ∀ n, (P2851095678055243335.a n : ℤ) = A289260 n

end A289260

/-! ## A289260.P3739956071678832350

`lcm(A020985(n), A279780(n))`
-/

namespace A289260.P3739956071678832350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A279780 n)

end

end A289260.P3739956071678832350

namespace A289260

/-- `lcm(A020985(n), A279780(n))` -/
def P3739956071678832350.Spec : Prop :=
  ∀ n, (P3739956071678832350.a n : ℤ) = A289260 n

end A289260

/-! ## A289260.P7860381768259290875

`gcd(-A279780(n), A010872(3*(n+1)))`
-/

namespace A289260.P7860381768259290875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A279780 n) (A010872 (3 * (n + 1)))

end

end A289260.P7860381768259290875

namespace A289260

/-- `gcd(-A279780(n), A010872(3*(n+1)))` -/
def P7860381768259290875.Spec : Prop :=
  ∀ n, (P7860381768259290875.a n : ℤ) = A289260 n

end A289260

/-!
# A289262: Coefficients in the expansion of 1/([r]-[2r]x+[3r]x^2-...); [ ]=floor, r=11/7.

The programs for A289262, there is no canonical definition to state claims against.
-/

/-! ## A289262.P5396482644667382203

`A288230(n)+A185284(2*n+1)`
-/

namespace A289262.P5396482644667382203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 n + A185284 (2 * n + 1)

end

end A289262.P5396482644667382203

/-! ## A289262.P18308215119179470209

`A288230(n)+A178798(A276011(n))`
-/

namespace A289262.P18308215119179470209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 n + A178798 (A276011 n).toNat

end

end A289262.P18308215119179470209

/-! ## A289262.P12534698501215976218

`or(A185284(A165652(n)), A288230(n))`
-/

namespace A289262.P12534698501215976218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A165652 n).toNat) (A288230 n)

end

end A289262.P12534698501215976218

/-! ## A289262.P9063254533396623685

`A288230(n)+A185238(A096503(n+1))`
-/

namespace A289262.P9063254533396623685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288230 n + A185238 (A096503 (n + 1)).toNat

end

end A289262.P9063254533396623685

/-! ## A289262.P4729781261019529653

`A288314(A288252(n+1))+A288230(n)`
-/

namespace A289262.P4729781261019529653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288314 (A288252 (n + 1)).toNat + A288230 n

end

end A289262.P4729781261019529653

/-!
# A289264: 

The programs for A289264, there is no canonical definition to state claims against.
-/

/-! ## A289264.P9082695516833429536

`or(1, ∑[10^n]-A288195(n))`
-/

namespace A289264.P9082695516833429536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A288195 n)

end

end A289264.P9082695516833429536

/-! ## A289264.P8819405583645233888

`∑[10^n]+A000007(n)-A288195(n)`
-/

namespace A289264.P8819405583645233888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000007 n - A288195 n)

end

end A289264.P8819405583645233888

/-!
# A289268: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A289268, the canonical program `A289268.P17575966914648777655` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289268 has offset 0).

The definition of A289268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289268.P1886542531472117464

`or(A277799(n), A286857(n))`
-/

namespace A289268.P1886542531472117464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277799 n) (A286857 n)

end

end A289268.P1886542531472117464

namespace A289268

/-- `or(A277799(n), A286857(n))` -/
def P1886542531472117464.Spec : Prop :=
  ∀ n, P1886542531472117464.a n = A289268 n

end A289268

/-! ## A289268.P17425717463726350812

`or(A280412(n), A286857(n))`
-/

namespace A289268.P17425717463726350812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280412 n) (A286857 n)

end

end A289268.P17425717463726350812

namespace A289268

/-- `or(A280412(n), A286857(n))` -/
def P17425717463726350812.Spec : Prop :=
  ∀ n, P17425717463726350812.a n = A289268 n

end A289268

/-! ## A289268.P13114958835483369058

`or(A286772(n), A286857(n))`
-/

namespace A289268.P13114958835483369058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286772 n) (A286857 n)

end

end A289268.P13114958835483369058

namespace A289268

/-- `or(A286772(n), A286857(n))` -/
def P13114958835483369058.Spec : Prop :=
  ∀ n, P13114958835483369058.a n = A289268 n

end A289268

/-! ## A289268.P17575966914648777655

`A095121(n)+1-A288196(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A289268

/-- `A095121(n)+1-A288196(n)` -/
def P17575966914648777655.Spec : Prop :=
  ∀ n, P17575966914648777655.a n = A289268 n

theorem P17575966914648777655.correct : P17575966914648777655.Spec := by
  intro n
  simp only [A289268]

end A289268

/-! ## A289268.P15496358753056435174

`or(xor(1, A051049(n)), A286857(n))`
-/

namespace A289268.P15496358753056435174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor 1 (A051049 n)) (A286857 n)

end

end A289268.P15496358753056435174

namespace A289268

/-- `or(xor(1, A051049(n)), A286857(n))` -/
def P15496358753056435174.Spec : Prop :=
  ∀ n, P15496358753056435174.a n = A289268 n

end A289268

/-! ## A289268.P418113357806809533

`or(xor(1, A286773(n)), A286857(n))`
-/

namespace A289268.P418113357806809533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor 1 (A286773 n)) (A286857 n)

end

end A289268.P418113357806809533

namespace A289268

/-- `or(xor(1, A286773(n)), A286857(n))` -/
def P418113357806809533.Spec : Prop :=
  ∀ n, P418113357806809533.a n = A289268 n

end A289268

/-! ## A289268.P5201137544771458114

`or(xor(1, A290863(n)), A286857(n))`
-/

namespace A289268.P5201137544771458114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor 1 (A290863 n)) (A286857 n)

end

end A289268.P5201137544771458114

namespace A289268

/-- `or(xor(1, A290863(n)), A286857(n))` -/
def P5201137544771458114.Spec : Prop :=
  ∀ n, P5201137544771458114.a n = A289268 n

end A289268

/-! ## A289268.P2206396926163555515

`A288197(n)+A289370(n)-A288196(n)`
-/

namespace A289268.P2206396926163555515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 n + (A289370 n - A288196 n)

end

end A289268.P2206396926163555515

namespace A289268

/-- `A288197(n)+A289370(n)-A288196(n)` -/
def P2206396926163555515.Spec : Prop :=
  ∀ n, P2206396926163555515.a n = A289268 n

end A289268

/-! ## A289268.P16309578775817572492

`xor(A290862(n)%A290863(n), A095121(n))`
-/

namespace A289268.P16309578775817572492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A290862 n) (A290863 n)) (A095121 n)

end

end A289268.P16309578775817572492

namespace A289268

/-- `xor(A290862(n)%A290863(n), A095121(n))` -/
def P16309578775817572492.Spec : Prop :=
  ∀ n, P16309578775817572492.a n = A289268 n

end A289268

/-!
# A289269: Number of polygonal tiles with n sides with two exits per side and n edges connecting pairs of exits, with no edges between exits on the same side and non-isomorphic under rotational and reflectional, i.e. dihedral, symmetry.

The programs for A289269, there is no canonical definition to state claims against.
-/

/-! ## A289269.P12459126081692685445

`A370164(A002110(n))-A082786(n+2)`
-/

namespace A289269.P12459126081692685445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370164 (A002110 n).toNat - A082786 (n + 2)

end

end A289269.P12459126081692685445

/-! ## A289269.P16469206517002124480

`xor(A058136(n+1), A079680(A058130(n+1)))`
-/

namespace A289269.P16469206517002124480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058136 (n + 1)) (A079680 (A058130 (n + 1)).toNat)

end

end A289269.P16469206517002124480

/-!
# A289270: Primes p such that 10*p is the sum of two consecutive primes.

The programs for A289270, there is no canonical definition to state claims against.
-/

/-! ## A289270.P17405719816548525212

`A075280(n+1)/5`
-/

namespace A289270.P17405719816548525212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075280 (n + 1) : ℚ) / 5

end

end A289270.P17405719816548525212

/-! ## A289270.P12588622773420643663

`record[A020639(A126228(n+1)/5)]`
-/

namespace A289270.P12588622773420643663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A126228 (n + 1) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289270.P12588622773420643663

/-! ## A289270.P1958681648937295687

`p?[A392111(n+1)]`
-/

namespace A289270.P1958681648937295687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289270.P1958681648937295687

/-! ## A289270.P11385577328980964387

`record[A014963(A126228(n+1)/5)]`
-/

namespace A289270.P11385577328980964387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A126228 (n + 1) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289270.P11385577328980964387

/-! ## A289270.P1132375561100647214

`record[A126800(A126228(n+1)/5)]`
-/

namespace A289270.P1132375561100647214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (SequenceMachineLib.roundAway ((A126228 (n + 1) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289270.P1132375561100647214

/-! ## A289270.P3538591058337163435

`p?[A268328(n+1)]`
-/

namespace A289270.P3538591058337163435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289270.P3538591058337163435

/-! ## A289270.P1844700182015739467

`∩[A000040(n+1), A268328(n+1)]`
-/

namespace A289270.P1844700182015739467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289270.P1844700182015739467

/-! ## A289270.P10411186117177068260

`∩[A004139(n+1), A268328(n+1)]`
-/

namespace A289270.P10411186117177068260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289270.P10411186117177068260

/-!
# A289271: A bijective binary representation of the prime factorization of a number, shown in decimal (see Comments for precise definition).

The programs for A289271, there is no canonical definition to state claims against.
-/

/-! ## A289271.P5841865755788721860

`floor(A322995(A322992(n+1))/2)`
-/

namespace A289271.P5841865755788721860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322995 (A322992 (n + 1)).toNat : ℚ) / 2⌋

end

end A289271.P5841865755788721860

/-! ## A289271.P9870628431736014585

`(A322995(A322992(Δ[n²]-n))-1)/2`
-/

namespace A289271.P9870628431736014585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322995 (A322992 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1 : ℚ) / 2

end

end A289271.P9870628431736014585

/-! ## A289271.P12599414744388723455

`ceil((A322995(A322992(2*n-(n-1)))-1)/2)`
-/

namespace A289271.P12599414744388723455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322995 (A322992 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat - 1 : ℚ) / 2⌉

end

end A289271.P12599414744388723455

/-! ## A289271.P7117238969462855800

`ceil((-1)^A000040(n+2)+A322995(A322992(n+1))/2)`
-/

namespace A289271.P7117238969462855800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-1 : ℚ) ^ (A000040 (n + 2) : ℤ) + (A322995 (A322992 (n + 1)).toNat : ℚ) / 2⌉

end

end A289271.P7117238969462855800

/-! ## A289271.P11656779947902555166

`(A322995(A322992(n+1))-1)*2^A008683(A031927(n))`
-/

namespace A289271.P11656779947902555166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322995 (A322992 (n + 1)).toNat - 1 : ℚ) * (2 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ)

end

end A289271.P11656779947902555166

/-!
# A289272: Inverse to A289271.

The programs for A289272, there is no canonical definition to state claims against.
-/

/-! ## A289272.P14712337505581619838

`A289815(A005836(n+1))`
-/

namespace A289272.P14712337505581619838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A005836 (n + 1)).toNat

end

end A289272.P14712337505581619838

/-! ## A289272.P11359934613454497807

`A289838(A186776(n+1))`
-/

namespace A289272.P11359934613454497807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A186776 (n + 1)).toNat

end

end A289272.P11359934613454497807

/-! ## A289272.P10172442495798844958

`A289815(eq[0, A262097(n)])`
-/

namespace A289272.P10172442495798844958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289272.P10172442495798844958

/-! ## A289272.P5094203563427106746

`A289815(eq[0, A273513(n)])`
-/

namespace A289272.P5094203563427106746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289272.P5094203563427106746

/-! ## A289272.P6999136296346417034

`A289815(eq[0, A273514(n)])`
-/

namespace A289272.P6999136296346417034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289272.P6999136296346417034

/-! ## A289272.P7794985234746882252

`A289815(lt[A262097(n), 1])`
-/

namespace A289272.P7794985234746882252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A289272.P7794985234746882252

/-! ## A289272.P6671755050572173651

`A289815(lt[A273513(n), 1])`
-/

namespace A289272.P6671755050572173651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A289272.P6671755050572173651

/-! ## A289272.P2591639262432099587

`A289815(lt[A273514(n), 1])`
-/

namespace A289272.P2591639262432099587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A289272.P2591639262432099587

/-! ## A289272.P12585230706248950642

`A289815(lt[A273515(n), 1])`
-/

namespace A289272.P12585230706248950642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A289272.P12585230706248950642

/-! ## A289272.P5925920678292109198

`A289838(record[A004488(n)/2])`
-/

namespace A289272.P5925920678292109198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004488 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A289272.P5925920678292109198

/-! ## A289272.P6238780915109791071

`A289838(record[n-A004488(n)])`
-/

namespace A289272.P6238780915109791071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A289272.P6238780915109791071

/-! ## A289272.P12163035611799853448

`A289815(A033162(n+1)-3)`
-/

namespace A289272.P12163035611799853448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (A033162 (n + 1) - 3).toNat

end

end A289272.P12163035611799853448

/-! ## A289272.P9068861253971642645

`A289815(eq[1, A105220(2*n)])`
-/

namespace A289272.P9068861253971642645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289272.P9068861253971642645

/-! ## A289272.P7317647654370575822

`A289815(eq[1, A105220(n)]/2)`
-/

namespace A289272.P7317647654370575822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289815 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)).toNat

end

end A289272.P7317647654370575822

/-! ## A289272.P10751240828947065176

`A289838(A005836(A004488(A004488(n+1))))`
-/

namespace A289272.P10751240828947065176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A005836 (A004488 (A004488 (n + 1)).toNat).toNat).toNat

end

end A289272.P10751240828947065176

/-! ## A289272.P7839860883385923290

`A289838(A005836(A055119(A055119(n+1))))`
-/

namespace A289272.P7839860883385923290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A005836 (A055119 (A055119 (n + 1)).toNat).toNat).toNat

end

end A289272.P7839860883385923290

/-! ## A289272.P18170252101437499863

`A289838(A005836(A055123(A055123(n+1))))`
-/

namespace A289272.P18170252101437499863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A005836 (A055123 (A055123 (n + 1)).toNat).toNat).toNat

end

end A289272.P18170252101437499863

/-! ## A289272.P3943797730023920725

`A289838(A005836(A055124(A055124(n+1))))`
-/

namespace A289272.P3943797730023920725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A005836 (A055124 (A055124 (n + 1)).toNat).toNat).toNat

end

end A289272.P3943797730023920725

/-! ## A289272.P2762369921890747915

`A289838(A082575(n+1))`
-/

namespace A289272.P2762369921890747915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A082575 (n + 1)).toNat

end

end A289272.P2762369921890747915

/-! ## A289272.P10888142631539575675

`A289838(A005836(n+2)-1)`
-/

namespace A289272.P10888142631539575675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (A005836 (n + 2) - 1).toNat

end

end A289272.P10888142631539575675

/-!
# A289273: Complement of A242410.

The programs for A289273, there is no canonical definition to state claims against.
-/

/-! ## A289273.P15468587940753860341

`lt[n*char[A242410(n+1)], n]`
-/

namespace A289273.P15468587940753860341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289273.P15468587940753860341

/-! ## A289273.P12957086950793838048

`eq[char[A242410(n+1)], A000007(n)]`
-/

namespace A289273.P12957086950793838048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289273.P12957086950793838048

/-! ## A289273.P4882642262253745875

`eq[char[A242410(n+1)], A000038(n)]`
-/

namespace A289273.P4882642262253745875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289273.P4882642262253745875

/-! ## A289273.P2532024084046457397

`eq[char[A242410(n+1)], A020761(n)]`
-/

namespace A289273.P2532024084046457397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289273.P2532024084046457397

/-! ## A289273.P11607558605669286742

`eq[char[A242410(n+1)], A151933(n)]`
-/

namespace A289273.P11607558605669286742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289273.P11607558605669286742

/-!
# A289275: Numbers k such that the deficiency of k^2 is itself a square.

The programs for A289275, there is no canonical definition to state claims against.
-/

/-! ## A289275.P12486903867040398591

`∪[A289274(n+1), A000079(n)]%A288144(n+1)`
-/

namespace A289275.P12486903867040398591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A288144 (n + 1))

end

end A289275.P12486903867040398591

/-! ## A289275.P11660452815972160100

`A124731(A334129(n+1))`
-/

namespace A289275.P11660452815972160100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124731 (A334129 (n + 1)).toNat

end

end A289275.P11660452815972160100

/-! ## A289275.P586914265210588966

`record[gcd(A007016(n), A049776(n+1))]`
-/

namespace A289275.P586914265210588966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007016 n) (A049776 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289275.P586914265210588966

/-! ## A289275.P11799824814244205841

`record[gcd(A017912(n), A159746(n+1))]`
-/

namespace A289275.P11799824814244205841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017912 n) (A159746 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289275.P11799824814244205841

/-! ## A289275.P17997364831466880862

`∩[A029447(n+1), A034036(n+1)]`
-/

namespace A289275.P17997364831466880862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289275.P17997364831466880862

/-!
# A289277: a(n) = A005259(n) mod 2*n+1.

The programs for A289277, there is no canonical definition to state claims against.
-/

/-! ## A289277.P348293596977925153

`A289278(n)%(2*n+1)`
-/

namespace A289277.P348293596977925153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289278 n) (2 * n + 1 : ℤ)

end

end A289277.P348293596977925153

/-! ## A289277.P1579082303001761760

`abs(A289278(n)%-A005408(n))`
-/

namespace A289277.P1579082303001761760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A289278 n) (-A005408 n)|

end

end A289277.P1579082303001761760

/-! ## A289277.P13429250622471735085

`abs(-A289278(n)%comp[A005843(n)])`
-/

namespace A289277.P13429250622471735085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A289278 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A289277.P13429250622471735085

/-! ## A289277.P9500228038982641635

`--A289278(A028310(n))%comp[A005843(n)]`
-/

namespace A289277.P9500228038982641635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A289278 (A028310 n).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A289277.P9500228038982641635

/-! ## A289277.P75458809096677288

`(A289278(floor(A161445(n+1)/16))%-A005408(n))%(n+1)²`
-/

namespace A289277.P75458809096677288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A289278 ⌊(A161445 (n + 1) : ℚ) / 16⌋.toNat) (-A005408 n)) ((n + 1) ^ 2 : ℤ)

end

end A289277.P75458809096677288

/-! ## A289277.P1338954489934529400

`A005259(n)%Δ[n²]`
-/

namespace A289277.P1338954489934529400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005259 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A289277.P1338954489934529400

/-! ## A289277.P8085326908518467442

`A028310(A289278(n))%A005408(n)`
-/

namespace A289277.P8085326908518467442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A289278 n).toNat) (A005408 n)

end

end A289277.P8085326908518467442

/-!
# A289278: a(n) = A005259(n) mod (2*n+1)^2.

The programs for A289278, there is no canonical definition to state claims against.
-/

/-! ## A289278.P8161021984334222138

`A005259(n)%(2*n+1)²`
-/

namespace A289278.P8161021984334222138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005259 n) ((2 * n + 1) ^ 2 : ℤ)

end

end A289278.P8161021984334222138

/-! ## A289278.P6027178181674274620

`A143007(∑[4*n])%Δ[n²]²`
-/

namespace A289278.P6027178181674274620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143007 (∑ j ∈ Finset.range (n + 1), f1 j)) (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

end

end A289278.P6027178181674274620

/-! ## A289278.P8972093658941490120

`record[A003982(n)*A143007(n)]%A005408(n)²`
-/

namespace A289278.P8972093658941490120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A143007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005408 n ^ 2)

end

end A289278.P8972093658941490120

/-! ## A289278.P9417507603540535192

`record[A143007(n*A008619(n))]%A005408(n)²`
-/

namespace A289278.P9417507603540535192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005408 n ^ 2)

end

end A289278.P9417507603540535192

/-! ## A289278.P7954615722632429988

`(A257045(n)/A059416(n))%A005408(n)²`
-/

namespace A289278.P7954615722632429988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A257045 n : ℚ) / (A059416 n : ℚ))) (A005408 n ^ 2)

end

end A289278.P7954615722632429988

/-!
# A289279: Number of odd composite numbers in ]2*(n-1)^2, 2*n^2[.

The programs for A289279, the canonical program `A289279.P13969609369031638139` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289279 has offset 1).

The definition of A289279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289279.P13969609369031638139

`Δ[n²]-A285786(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A289279

/-- `Δ[n²]-A285786(n+1)` -/
def P13969609369031638139.Spec : Prop :=
  ∀ n, P13969609369031638139.a n = A289279 (n + 1)

theorem P13969609369031638139.correct : P13969609369031638139.Spec := by
  intro n
  simp only [A289279, Nat.add_sub_cancel]

end A289279

/-! ## A289279.P16548893078565180472

`Δ[n^ceil(atan(n))]-A285269(n)`
-/

namespace A289279.P16548893078565180472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A285269 n : ℚ)

end

end A289279.P16548893078565180472

namespace A289279

/-- `Δ[n^ceil(atan(n))]-A285269(n)` -/
def P16548893078565180472.Spec : Prop :=
  ∀ n, P16548893078565180472.a n = (A289279 (n + 1) : ℚ)

end A289279

/-! ## A289279.P8852288627972525441

`2*n+1-∑{d}[A285786(n+1), A000010(#)]`
-/

namespace A289279.P8852288627972525441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d)

end

end A289279.P8852288627972525441

namespace A289279

/-- `2*n+1-∑{d}[A285786(n+1), A000010(#)]` -/
def P8852288627972525441.Spec : Prop :=
  ∀ n, P8852288627972525441.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P13492150630514169544

`2*n+1-(A285786(n+1)+A001222(C(n, n²)!))`
-/

namespace A289279.P13492150630514169544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (A285786 (n + 1) + A001222 (Nat.factorial (Nat.choose n (n ^ 2))))

end

end A289279.P13492150630514169544

namespace A289279

/-- `2*n+1-(A285786(n+1)+A001222(C(n, n²)!))` -/
def P13492150630514169544.Spec : Prop :=
  ∀ n, P13492150630514169544.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P3442919580899588519

`2*n+A014963(12*n+6)-A285786(n+1)`
-/

namespace A289279.P3442919580899588519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A014963 (12 * n + 6) - A285786 (n + 1))

end

end A289279.P3442919580899588519

namespace A289279

/-- `2*n+A014963(12*n+6)-A285786(n+1)` -/
def P3442919580899588519.Spec : Prop :=
  ∀ n, P3442919580899588519.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P5575659812447638380

`Δ[A210469(round(acot(n)+n)²)]`
-/

namespace A289279.P5575659812447638380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289279.P5575659812447638380

namespace A289279

/-- `Δ[A210469(round(acot(n)+n)²)]` -/
def P5575659812447638380.Spec : Prop :=
  ∀ n, P5575659812447638380.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P7066102668824003551

`Δ[A210469(A253909(n))]`
-/

namespace A289279.P7066102668824003551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289279.P7066102668824003551

namespace A289279

/-- `Δ[A210469(A253909(n))]` -/
def P7066102668824003551.Spec : Prop :=
  ∀ n, P7066102668824003551.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P18226875838945471703

`Δ[A224710(n²+2)]`
-/

namespace A289279.P18226875838945471703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289279.P18226875838945471703

namespace A289279

/-- `Δ[A224710(n²+2)]` -/
def P18226875838945471703.Spec : Prop :=
  ∀ n, P18226875838945471703.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P14300286477106268139

`Δ[A224708(n²+n²+3)]`
-/

namespace A289279.P14300286477106268139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (n ^ 2 + (n ^ 2 + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289279.P14300286477106268139

namespace A289279

/-- `Δ[A224708(n²+n²+3)]` -/
def P14300286477106268139.Spec : Prop :=
  ∀ n, P14300286477106268139.a n = A289279 (n + 1)

end A289279

/-! ## A289279.P9324414444472431672

`Δ[A033271(abs(A056220(n)))]`
-/

namespace A289279.P9324414444472431672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 |A056220 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289279.P9324414444472431672

namespace A289279

/-- `Δ[A033271(abs(A056220(n)))]` -/
def P9324414444472431672.Spec : Prop :=
  ∀ n, P9324414444472431672.a n = A289279 (n + 1)

end A289279

/-!
# A289280: a(n) is the least integer k > n such that any prime factor of k is also a prime factor of n.

The programs for A289280, there is no canonical definition to state claims against.
-/

/-! ## A289280.P17660874677165569830

`A003557(A065642((n+2)*A007947(n+2)))`
-/

namespace A289280.P17660874677165569830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A065642 ((n + 2 : ℤ) * A007947 (n + 2)).toNat).toNat

end

end A289280.P17660874677165569830

/-!
# A289281: Square array whose rows m >= 2 hold the limit under iterations of the morphism { x -> (x, ..., x+k-1) if k|x ; x -> x+1 otherwise }, starting with (0); read by falling antidiagonals.

The programs for A289281, there is no canonical definition to state claims against.
-/

/-! ## A289281.P2426030800043743897

`A185816(A066121(n+1))`
-/

namespace A289281.P2426030800043743897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A066121 (n + 1)).toNat

end

end A289281.P2426030800043743897

/-! ## A289281.P1625214893854652621

`A000194(A000523(A248779(n+1)²))`
-/

namespace A289281.P1625214893854652621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000523 (A248779 (n + 1) ^ 2).toNat).toNat

end

end A289281.P1625214893854652621

/-! ## A289281.P12293598820793314475

`A003056(A004233(A248779(n+1)²))`
-/

namespace A289281.P12293598820793314475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004233 (A248779 (n + 1) ^ 2).toNat).toNat

end

end A289281.P12293598820793314475

/-! ## A289281.P2182502115410464566

`A308427(A248779(n+1)*A337470(n))`
-/

namespace A289281.P2182502115410464566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A248779 (n + 1) * A337470 n).toNat

end

end A289281.P2182502115410464566

/-! ## A289281.P9832272881052455393

`A240086(A141715(n))`
-/

namespace A289281.P9832272881052455393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 (A141715 n).toNat

end

end A289281.P9832272881052455393

/-!
# A289288: Starting with a(1) = 1, a(n) = smallest nonnegative integer not yet in the sequence such that the last digit of a(n-1) plus the first digit of a(n) is equal to 10. The digit 0 is not allowed.

The programs for A289288, there is no canonical definition to state claims against.
-/

/-! ## A289288.P14230552200619866403

`filter[A277998(n+1), A168046(#)]`
-/

namespace A289288.P14230552200619866403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A289288.P14230552200619866403

/-! ## A289288.P7987234912242626258

`A277998(n+1)+A083918(A336218(n+1))`
-/

namespace A289288.P7987234912242626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277998 (n + 1) + A083918 (A336218 (n + 1)).toNat

end

end A289288.P7987234912242626258

/-! ## A289288.P4189190461729238356

`or(A277998(n+1), A355745(A000010(n+1)))`
-/

namespace A289288.P4189190461729238356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277998 (n + 1)) (A355745 (A000010 (n + 1)).toNat)

end

end A289288.P4189190461729238356

/-! ## A289288.P857460916902494094

`A326678(A277994(n+1))+A277998(n+1)`
-/

namespace A289288.P857460916902494094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 (A277994 (n + 1)).toNat + A277998 (n + 1)

end

end A289288.P857460916902494094

/-! ## A289288.P2686738986583800651

`A277998(n+1)+A185255(A046214(n+1))`
-/

namespace A289288.P2686738986583800651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277998 (n + 1) + A185255 (A046214 (n + 1)).toNat

end

end A289288.P2686738986583800651

/-! ## A289288.P3456300388720335888

`A185119(A101421(n+1))*A277998(n+1)`
-/

namespace A289288.P3456300388720335888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A101421 (n + 1)).toNat * A277998 (n + 1)

end

end A289288.P3456300388720335888

/-! ## A289288.P9337738625008031172

`A277998(n+1)+A185255(A144867(n+1))`
-/

namespace A289288.P9337738625008031172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277998 (n + 1) + A185255 (A144867 (n + 1)).toNat

end

end A289288.P9337738625008031172

/-! ## A289288.P2424884735680481510

`A179184(A293394(2*(n+2)))*A277998(n+1)`
-/

namespace A289288.P2424884735680481510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A293394 (2 * (n + 2))).toNat * A277998 (n + 1)

end

end A289288.P2424884735680481510

/-! ## A289288.P6128938254663787418

`A277998(n+1)%A002189(n)`
-/

namespace A289288.P6128938254663787418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277998 (n + 1)) (A002189 n)

end

end A289288.P6128938254663787418

/-! ## A289288.P5603024919836929518

`lcm(A008836(A277951(2*(n+2))), A277998(n+1))`
-/

namespace A289288.P5603024919836929518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (A277951 (2 * (n + 2))).toNat) (A277998 (n + 1))

end

end A289288.P5603024919836929518

/-!
# A289289: a(n) = A005259(n) mod (n+1)^3.

The programs for A289289, there is no canonical definition to state claims against.
-/

/-! ## A289289.P11184284206409715503

`A005259(n)%((n+1)^3)`
-/

namespace A289289.P11184284206409715503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005259 n) ((n + 1) ^ 3 : ℤ)

end

end A289289.P11184284206409715503

/-! ## A289289.P12506928196053372795

`A143007(∑[4*n])%A000578(n+1)`
-/

namespace A289289.P12506928196053372795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143007 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000578 (n + 1))

end

end A289289.P12506928196053372795

/-! ## A289289.P140530275593912798

`record[A143007(n*A008619(n))]%A000578(n+1)`
-/

namespace A289289.P140530275593912798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000578 (n + 1))

end

end A289289.P140530275593912798

/-! ## A289289.P2244119657356369828

`record[A143007(gcd(n, A114327(n)))]%A000578(n+1)`
-/

namespace A289289.P2244119657356369828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000578 (n + 1))

end

end A289289.P2244119657356369828

/-! ## A289289.P8644212951968335866

`(A257045(n)/A059416(n))%A000578(n+1)`
-/

namespace A289289.P8644212951968335866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A257045 n : ℚ) / (A059416 n : ℚ))) (A000578 (n + 1))

end

end A289289.P8644212951968335866

/-!
# A289296: a(n) = (n - 1)*(2*floor(n/2) + 1).

The programs for A289296, the canonical program `A289296.P6282777683544721338` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289296 has offset 0).

The definition of A289296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(2*floor(n/2)+1)` (program `A289296.P6282777683544721338`, by `A289296.P6282777683544721338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A289296.P6282777683544721338

`(n-1)*(2*floor(n/2)+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A289296

/-- `(n-1)*(2*floor(n/2)+1)` -/
def P6282777683544721338.Spec : Prop :=
  ∀ n, P6282777683544721338.a n = A289296 n

theorem P6282777683544721338.correct : P6282777683544721338.Spec := by
  intro n
  simp only [A289296]

end A289296

/-! ## A289296.P167833191761870985

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=-1, a(1)=0, a(2)=3, a(3)=6, a(4)=15`
-/

namespace A289296.P167833191761870985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 3, 6, 15] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A289296.P167833191761870985

namespace A289296

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P167833191761870985.Spec : Prop :=
  ∀ n, P167833191761870985.a n = A289296 n

end A289296

/-! ## A289296.P4230849904370075849

`n²-A093178(n)`
-/

namespace A289296.P4230849904370075849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A093178 n

end

end A289296.P4230849904370075849

namespace A289296

/-- `n²-A093178(n)` -/
def P4230849904370075849.Spec : Prop :=
  ∀ n, P4230849904370075849.a n = A289296 n

end A289296

/-! ## A289296.P17413594008007078500

`n²-n^(n%2)`
-/

namespace A289296.P17413594008007078500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n ^ (n % 2) : ℤ)

end

end A289296.P17413594008007078500

namespace A289296

/-- `n²-n^(n%2)` -/
def P17413594008007078500.Spec : Prop :=
  ∀ n, P17413594008007078500.a n = A289296 n

end A289296

/-! ## A289296.P6214724239361143721

`n²-n^and(1, n)`
-/

namespace A289296.P6214724239361143721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n ^ Nat.land 1 n : ℤ)

end

end A289296.P6214724239361143721

namespace A289296

/-- `n²-n^and(1, n)` -/
def P6214724239361143721.Spec : Prop :=
  ∀ n, P6214724239361143721.a n = A289296 n

end A289296

/-! ## A289296.P814747955686908148

`n²-gcd(n, or(1, n))`
-/

namespace A289296.P814747955686908148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.gcd n (Nat.lor 1 n) : ℤ)

end

end A289296.P814747955686908148

namespace A289296

/-- `n²-gcd(n, or(1, n))` -/
def P814747955686908148.Spec : Prop :=
  ∀ n, P814747955686908148.a n = A289296 n

end A289296

/-! ## A289296.P10608603375344388987

`n²-C(n, and(1, n))`
-/

namespace A289296.P10608603375344388987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose n (Nat.land 1 n) : ℤ)

end

end A289296.P10608603375344388987

namespace A289296

/-- `n²-C(n, and(1, n))` -/
def P10608603375344388987.Spec : Prop :=
  ∀ n, P10608603375344388987.a n = A289296 n

end A289296

/-! ## A289296.P6158182287825400303

`(n-1)/or(1, n)^-1`
-/

namespace A289296.P6158182287825400303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (Nat.lor 1 n : ℚ) ^ (-1 : ℤ)

end

end A289296.P6158182287825400303

namespace A289296

/-- `(n-1)/or(1, n)^-1` -/
def P6158182287825400303.Spec : Prop :=
  ∀ n, P6158182287825400303.a n = (A289296 n : ℚ)

end A289296

/-! ## A289296.P14232419413188640527

`∏{d}[1-a(n-1), n-2+#]` with `a(0)=3`
-/

namespace A289296.P14232419413188640527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 2 + (d : ℤ))

end

end A289296.P14232419413188640527

namespace A289296

/-- `∏{d}[1-a(n-1), n-2+#]` -/
def P14232419413188640527.Spec : Prop :=
  ∀ n, P14232419413188640527.a n = A289296 n

end A289296

/-! ## A289296.P11524922970933716886

`(n-and(1, n))*(n-1)+n-1`
-/

namespace A289296.P11524922970933716886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 1 n : ℤ)) * ((n : ℤ) - 1) + ((n : ℤ) - 1)

end

end A289296.P11524922970933716886

namespace A289296

/-- `(n-and(1, n))*(n-1)+n-1` -/
def P11524922970933716886.Spec : Prop :=
  ∀ n, P11524922970933716886.a n = A289296 n

end A289296

/-! ## A289296.P15140565280665698608

`n-1-(and(1, n)-n)*(n-1)`
-/

namespace A289296.P15140565280665698608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ((Nat.land 1 n : ℤ) - (n : ℤ)) * ((n : ℤ) - 1)

end

end A289296.P15140565280665698608

namespace A289296

/-- `n-1-(and(1, n)-n)*(n-1)` -/
def P15140565280665698608.Spec : Prop :=
  ∀ n, P15140565280665698608.a n = A289296 n

end A289296

/-! ## A289296.P3920503056126380486

`(n-1)²+(n-1)*gcd(2, n²)`
-/

namespace A289296.P3920503056126380486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + ((n : ℤ) - 1) * (Nat.gcd 2 (n ^ 2) : ℤ)

end

end A289296.P3920503056126380486

namespace A289296

/-- `(n-1)²+(n-1)*gcd(2, n²)` -/
def P3920503056126380486.Spec : Prop :=
  ∀ n, P3920503056126380486.a n = A289296 n

end A289296

/-! ## A289296.P1175279023215901772

`floor((n-1)*∑[2-a(n-1)])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A289296.P1175279023215901772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289296.P1175279023215901772

namespace A289296

/-- `floor((n-1)*∑[2-a(n-1)])` -/
def P1175279023215901772.Spec : Prop :=
  ∀ n, P1175279023215901772.a n = A289296 n

end A289296

/-! ## A289296.P13790398694594561006

`(n-1)*∑[2-a(n-1)]-(n-1)` with `a(0)=2`
-/

namespace A289296.P13790398694594561006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) - ((n : ℤ) - 1)

end

end A289296.P13790398694594561006

namespace A289296

/-- `(n-1)*∑[2-a(n-1)]-(n-1)` -/
def P13790398694594561006.Spec : Prop :=
  ∀ n, P13790398694594561006.a n = A289296 n

end A289296

/-! ## A289296.P2222702599143749392

`∪[(2*n+1)*2*n, (2*n)²-1]`
-/

namespace A289296.P2222702599143749392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289296.P2222702599143749392

namespace A289296

/-- `∪[(2*n+1)*2*n, (2*n)²-1]` -/
def P2222702599143749392.Spec : Prop :=
  ∀ n, (P2222702599143749392.a n : ℤ) = A289296 n

end A289296

/-! ## A289296.P5696074472698604493

`(n-1)*(n+1-gcd(n+1, n-1))+n-1`
-/

namespace A289296.P5696074472698604493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)) + ((n : ℤ) - 1)

end

end A289296.P5696074472698604493

namespace A289296

/-- `(n-1)*(n+1-gcd(n+1, n-1))+n-1` -/
def P5696074472698604493.Spec : Prop :=
  ∀ n, P5696074472698604493.a n = A289296 n

end A289296

/-! ## A289296.P8460469843760193048

`A325657(n)-1`
-/

namespace A289296.P8460469843760193048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n - 1

end

end A289296.P8460469843760193048

namespace A289296

/-- `A325657(n)-1` -/
def P8460469843760193048.Spec : Prop :=
  ∀ n, P8460469843760193048.a n = A289296 n

end A289296

/-! ## A289296.P8624966165576694352

`n²-abs(A009001(n))`
-/

namespace A289296.P8624966165576694352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - |A009001 n|

end

end A289296.P8624966165576694352

namespace A289296

/-- `n²-abs(A009001(n))` -/
def P8624966165576694352.Spec : Prop :=
  ∀ n, P8624966165576694352.a n = A289296 n

end A289296

/-! ## A289296.P13768928686676899898

`n²+n-A043547(n+1)`
-/

namespace A289296.P13768928686676899898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A043547 (n + 1)

end

end A289296.P13768928686676899898

namespace A289296

/-- `n²+n-A043547(n+1)` -/
def P13768928686676899898.Spec : Prop :=
  ∀ n, P13768928686676899898.a n = A289296 n

end A289296

/-! ## A289296.P3786037483767161328

`2*A031878(n+1)-(n+1)`
-/

namespace A289296.P3786037483767161328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031878 (n + 1) - (n + 1 : ℤ)

end

end A289296.P3786037483767161328

namespace A289296

/-- `2*A031878(n+1)-(n+1)` -/
def P3786037483767161328.Spec : Prop :=
  ∀ n, P3786037483767161328.a n = A289296 n

end A289296

